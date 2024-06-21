; ModuleID = 'samples/696.bc'
source_filename = "src/extended/luaserialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [297 x i8] c"Assertion failed: (%s), function %s, file %s, line %d.\0AThis is a bug, please report it at\0Ahttps://github.com/genometools/genometools/issues\0APlease make sure you are running the latest release which can be found at\0Ahttp://genometools.org/pub/\0AYou can check your version number with `gt -version`.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [30 x i8] c"!err || !gt_error_is_set(err)\00", align 1, !dbg !7
@__func__.gt_lua_table_to_str = private unnamed_addr constant [20 x i8] c"gt_lua_table_to_str\00", align 1, !dbg !12
@.str.2 = private unnamed_addr constant [28 x i8] c"src/extended/luaserialize.c\00", align 1, !dbg !18
@.str.3 = private unnamed_addr constant [34 x i8] c"L && out && lua_istable(L, index)\00", align 1, !dbg !23
@.str.4 = private unnamed_addr constant [28 x i8] c"lua_gettop(L) == stack_size\00", align 1, !dbg !28
@__const.gt_lua_serializer_unit_test.testtable = private unnamed_addr constant [631 x i8] c"config =\0A{\0A  gene = {\0A    -- Color definitions\0A    stroke             = {red=0.0, green=0.0, blue=0.0},\0A    stroke_marked      = {red=1.0, green=0.0, blue=0.0},\0A    fill               = {red=0.9, green=0.9, blue=1.0},\0A    style              = \22box\22,\0A    -- Collapsing options\0A    collapse_to_parent = false,\0A    split_lines        = true,\0A    -- Caption options\0A    max_capt_show_width= nil,\0A    -- Display this track only if the viewport is not wider than this\0A    -- number of nucleotides. Set to 0 to disable type track.\0A    max_show_width     = nil,\0A    -- Limit the number of tracks\0A    --    max_num_lines      = 10,\0A  },\0A}\0A\00", align 16
@__func__.gt_lua_serializer_unit_test = private unnamed_addr constant [28 x i8] c"gt_lua_serializer_unit_test\00", align 1, !dbg !30
@.str.5 = private unnamed_addr constant [145 x i8] c"gt_ensure(%s) failed: function %s, file %s, line %d.\0AThis is probably a bug, please report at https://github.com/genometools/genometools/issues.\00", align 1, !dbg !33
@.str.6 = private unnamed_addr constant [2 x i8] c"L\00", align 1, !dbg !38
@.str.7 = private unnamed_addr constant [2 x i8] c"t\00", align 1, !dbg !43
@.str.8 = private unnamed_addr constant [7 x i8] c"config\00", align 1, !dbg !45
@.str.9 = private unnamed_addr constant [12 x i8] c"config = {\0A\00", align 1, !dbg !50
@.str.10 = private unnamed_addr constant [2 x i8] c"}\00", align 1, !dbg !55
@.str.11 = private unnamed_addr constant [3 x i8] c"t2\00", align 1, !dbg !57
@.str.12 = private unnamed_addr constant [26 x i8] c"gt_str_length(outstr) > 0\00", align 1, !dbg !62
@.str.13 = private unnamed_addr constant [19 x i8] c"lua_istable(L, -1)\00", align 1, !dbg !67
@.str.14 = private unnamed_addr constant [5 x i8] c"gene\00", align 1, !dbg !72
@.str.15 = private unnamed_addr constant [14 x i8] c"stroke_marked\00", align 1, !dbg !77
@.str.16 = private unnamed_addr constant [4 x i8] c"red\00", align 1, !dbg !82
@.str.17 = private unnamed_addr constant [20 x i8] c"lua_isnumber(L, -1)\00", align 1, !dbg !87
@.str.18 = private unnamed_addr constant [27 x i8] c"1.0 == lua_tonumber(L, -1)\00", align 1, !dbg !90
@.str.19 = private unnamed_addr constant [5 x i8] c"blue\00", align 1, !dbg !95
@.str.20 = private unnamed_addr constant [27 x i8] c"0.0 == lua_tonumber(L, -1)\00", align 1, !dbg !97
@.str.21 = private unnamed_addr constant [6 x i8] c"style\00", align 1, !dbg !99
@.str.22 = private unnamed_addr constant [20 x i8] c"lua_isstring(L, -1)\00", align 1, !dbg !104
@.str.23 = private unnamed_addr constant [4 x i8] c"box\00", align 1, !dbg !106
@.str.24 = private unnamed_addr constant [39 x i8] c"strcmp(\22box\22,lua_tostring(L, -1)) == 0\00", align 1, !dbg !108
@.str.25 = private unnamed_addr constant [19 x i8] c"collapse_to_parent\00", align 1, !dbg !113
@.str.26 = private unnamed_addr constant [21 x i8] c"lua_isboolean(L, -1)\00", align 1, !dbg !115
@.str.27 = private unnamed_addr constant [30 x i8] c"lua_toboolean(L, -1) == false\00", align 1, !dbg !120
@.str.28 = private unnamed_addr constant [15 x i8] c"max_show_width\00", align 1, !dbg !122
@.str.29 = private unnamed_addr constant [17 x i8] c"lua_isnil(L, -1)\00", align 1, !dbg !127
@__func__.parse_table = private unnamed_addr constant [12 x i8] c"parse_table\00", align 1, !dbg !132
@.str.30 = private unnamed_addr constant [22 x i8] c"lua_istable(L, index)\00", align 1, !dbg !135
@.str.31 = private unnamed_addr constant [3 x i8] c"  \00", align 1, !dbg !140
@.str.32 = private unnamed_addr constant [6 x i8] c"!rval\00", align 1, !dbg !142
@.str.33 = private unnamed_addr constant [4 x i8] c" = \00", align 1, !dbg !144
@.str.34 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1, !dbg !146
@.str.35 = private unnamed_addr constant [4 x i8] c"},\0A\00", align 1, !dbg !148
@.str.36 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1, !dbg !150
@__func__.format_scalar = private unnamed_addr constant [14 x i8] c"format_scalar\00", align 1, !dbg !152
@.str.37 = private unnamed_addr constant [23 x i8] c"!lua_istable(L, index)\00", align 1, !dbg !155
@.str.38 = private unnamed_addr constant [5 x i8] c"true\00", align 1, !dbg !160
@.str.39 = private unnamed_addr constant [6 x i8] c"false\00", align 1, !dbg !162
@.str.40 = private unnamed_addr constant [7 x i8] c"string\00", align 1, !dbg !164
@.str.41 = private unnamed_addr constant [7 x i8] c"format\00", align 1, !dbg !166
@.str.42 = private unnamed_addr constant [3 x i8] c"%q\00", align 1, !dbg !168
@.str.43 = private unnamed_addr constant [2 x i8] c"[\00", align 1, !dbg !170
@.str.44 = private unnamed_addr constant [2 x i8] c"]\00", align 1, !dbg !172
@.str.45 = private unnamed_addr constant [36 x i8] c"expected boolean, number, or string\00", align 1, !dbg !174

; Function Attrs: nounwind uwtable
define i32 @gt_lua_table_to_str(ptr noundef %L, ptr noundef %out, i32 noundef %index, ptr noundef %err) #0 !dbg !187 {
entry:
  %L.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  %err.addr = alloca ptr, align 8
  %had_err = alloca i32, align 4
  %stack_size = alloca i32, align 4
  store ptr %L, ptr %L.addr, align 8, !tbaa !210
  tail call void @llvm.dbg.declare(metadata ptr %L.addr, metadata !204, metadata !DIExpression()), !dbg !214
  store ptr %out, ptr %out.addr, align 8, !tbaa !210
  tail call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !205, metadata !DIExpression()), !dbg !215
  store i32 %index, ptr %index.addr, align 4, !tbaa !216
  tail call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !206, metadata !DIExpression()), !dbg !218
  store ptr %err, ptr %err.addr, align 8, !tbaa !210
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !207, metadata !DIExpression()), !dbg !219
  call void @llvm.lifetime.start.p0(i64 4, ptr %had_err) #7, !dbg !220
  tail call void @llvm.dbg.declare(metadata ptr %had_err, metadata !208, metadata !DIExpression()), !dbg !221
  call void @llvm.lifetime.start.p0(i64 4, ptr %stack_size) #7, !dbg !222
  tail call void @llvm.dbg.declare(metadata ptr %stack_size, metadata !209, metadata !DIExpression()), !dbg !223
  %0 = load ptr, ptr %L.addr, align 8, !dbg !224, !tbaa !210
  %call = call i32 @lua_gettop(ptr noundef %0), !dbg !225
  store i32 %call, ptr %stack_size, align 4, !dbg !223, !tbaa !216
  br label %do.body, !dbg !226

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %err.addr, align 8, !dbg !227, !tbaa !210
  %tobool = icmp ne ptr %1, null, !dbg !227
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !227

lor.lhs.false:                                    ; preds = %do.body
  %2 = load ptr, ptr %err.addr, align 8, !dbg !227, !tbaa !210
  %call1 = call zeroext i1 @gt_error_is_set(ptr noundef %2), !dbg !227
  br i1 %call1, label %if.then, label %if.end, !dbg !230

if.then:                                          ; preds = %lor.lhs.false
  %3 = load ptr, ptr @stderr, align 8, !dbg !231, !tbaa !210
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @__func__.gt_lua_table_to_str, ptr noundef @.str.2, i32 noundef 117), !dbg !231
  call void @abort() #8, !dbg !231
  unreachable, !dbg !231

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.cond, !dbg !230

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !230

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !233

do.body3:                                         ; preds = %do.end
  %4 = load ptr, ptr %L.addr, align 8, !dbg !234, !tbaa !210
  %tobool4 = icmp ne ptr %4, null, !dbg !234
  br i1 %tobool4, label %land.lhs.true, label %if.then8, !dbg !234

land.lhs.true:                                    ; preds = %do.body3
  %5 = load ptr, ptr %out.addr, align 8, !dbg !234, !tbaa !210
  %tobool5 = icmp ne ptr %5, null, !dbg !234
  br i1 %tobool5, label %land.lhs.true6, label %if.then8, !dbg !234

land.lhs.true6:                                   ; preds = %land.lhs.true
  %6 = load ptr, ptr %L.addr, align 8, !dbg !234, !tbaa !210
  %7 = load i32, ptr %index.addr, align 4, !dbg !234, !tbaa !216
  %call7 = call i32 @lua_type(ptr noundef %6, i32 noundef %7), !dbg !234
  %cmp = icmp eq i32 %call7, 5, !dbg !234
  br i1 %cmp, label %if.end10, label %if.then8, !dbg !237

if.then8:                                         ; preds = %land.lhs.true6, %land.lhs.true, %do.body3
  %8 = load ptr, ptr @stderr, align 8, !dbg !238, !tbaa !210
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str, ptr noundef @.str.3, ptr noundef @__func__.gt_lua_table_to_str, ptr noundef @.str.2, i32 noundef 118), !dbg !238
  call void @abort() #8, !dbg !238
  unreachable, !dbg !238

if.end10:                                         ; preds = %land.lhs.true6
  br label %do.cond11, !dbg !237

do.cond11:                                        ; preds = %if.end10
  br label %do.end12, !dbg !237

do.end12:                                         ; preds = %do.cond11
  %9 = load ptr, ptr %L.addr, align 8, !dbg !240, !tbaa !210
  %10 = load ptr, ptr %out.addr, align 8, !dbg !241, !tbaa !210
  %11 = load i32, ptr %index.addr, align 4, !dbg !242, !tbaa !216
  %12 = load ptr, ptr %err.addr, align 8, !dbg !243, !tbaa !210
  %call13 = call i32 @parse_table(ptr noundef %9, ptr noundef %10, i32 noundef %11, i32 noundef 1, ptr noundef %12), !dbg !244
  store i32 %call13, ptr %had_err, align 4, !dbg !245, !tbaa !216
  br label %do.body14, !dbg !246

do.body14:                                        ; preds = %do.end12
  %13 = load ptr, ptr %L.addr, align 8, !dbg !247, !tbaa !210
  %call15 = call i32 @lua_gettop(ptr noundef %13), !dbg !247
  %14 = load i32, ptr %stack_size, align 4, !dbg !247, !tbaa !216
  %cmp16 = icmp eq i32 %call15, %14, !dbg !247
  br i1 %cmp16, label %if.end19, label %if.then17, !dbg !250

if.then17:                                        ; preds = %do.body14
  %15 = load ptr, ptr @stderr, align 8, !dbg !251, !tbaa !210
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @__func__.gt_lua_table_to_str, ptr noundef @.str.2, i32 noundef 120), !dbg !251
  call void @abort() #8, !dbg !251
  unreachable, !dbg !251

if.end19:                                         ; preds = %do.body14
  br label %do.cond20, !dbg !250

do.cond20:                                        ; preds = %if.end19
  br label %do.end21, !dbg !250

do.end21:                                         ; preds = %do.cond20
  %16 = load i32, ptr %had_err, align 4, !dbg !253, !tbaa !216
  call void @llvm.lifetime.end.p0(i64 4, ptr %stack_size) #7, !dbg !254
  call void @llvm.lifetime.end.p0(i64 4, ptr %had_err) #7, !dbg !254
  ret i32 %16, !dbg !255
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !256 i32 @lua_gettop(ptr noundef) #2

declare !dbg !259 zeroext i1 @gt_error_is_set(ptr noundef) #2

declare !dbg !265 i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn nounwind
declare !dbg !330 void @abort() #3

declare !dbg !334 i32 @lua_type(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @parse_table(ptr noundef %L, ptr noundef %out, i32 noundef %index, i32 noundef %level, ptr noundef %err) #0 !dbg !337 {
entry:
  %L.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  %level.addr = alloca i32, align 4
  %err.addr = alloca ptr, align 8
  %rval = alloca i32, align 4
  %had_err = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %L, ptr %L.addr, align 8, !tbaa !210
  tail call void @llvm.dbg.declare(metadata ptr %L.addr, metadata !341, metadata !DIExpression()), !dbg !350
  store ptr %out, ptr %out.addr, align 8, !tbaa !210
  tail call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !342, metadata !DIExpression()), !dbg !351
  store i32 %index, ptr %index.addr, align 4, !tbaa !216
  tail call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !343, metadata !DIExpression()), !dbg !352
  store i32 %level, ptr %level.addr, align 4, !tbaa !216
  tail call void @llvm.dbg.declare(metadata ptr %level.addr, metadata !344, metadata !DIExpression()), !dbg !353
  store ptr %err, ptr %err.addr, align 8, !tbaa !210
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !345, metadata !DIExpression()), !dbg !354
  call void @llvm.lifetime.start.p0(i64 4, ptr %rval) #7, !dbg !355
  tail call void @llvm.dbg.declare(metadata ptr %rval, metadata !346, metadata !DIExpression()), !dbg !356
  call void @llvm.lifetime.start.p0(i64 4, ptr %had_err) #7, !dbg !355
  tail call void @llvm.dbg.declare(metadata ptr %had_err, metadata !347, metadata !DIExpression()), !dbg !357
  store i32 0, ptr %had_err, align 4, !dbg !357, !tbaa !216
  br label %do.body, !dbg !358

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %err.addr, align 8, !dbg !359, !tbaa !210
  %tobool = icmp ne ptr %0, null, !dbg !359
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !359

lor.lhs.false:                                    ; preds = %do.body
  %1 = load ptr, ptr %err.addr, align 8, !dbg !359, !tbaa !210
  %call = call zeroext i1 @gt_error_is_set(ptr noundef %1), !dbg !359
  br i1 %call, label %if.then, label %if.end, !dbg !362

if.then:                                          ; preds = %lor.lhs.false
  %2 = load ptr, ptr @stderr, align 8, !dbg !363, !tbaa !210
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @__func__.parse_table, ptr noundef @.str.2, i32 noundef 80), !dbg !363
  call void @abort() #8, !dbg !363
  unreachable, !dbg !363

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.cond, !dbg !362

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !362

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !365

do.body2:                                         ; preds = %do.end
  %3 = load ptr, ptr %L.addr, align 8, !dbg !366, !tbaa !210
  %4 = load i32, ptr %index.addr, align 4, !dbg !366, !tbaa !216
  %call3 = call i32 @lua_type(ptr noundef %3, i32 noundef %4), !dbg !366
  %cmp = icmp eq i32 %call3, 5, !dbg !366
  br i1 %cmp, label %if.end6, label %if.then4, !dbg !369

if.then4:                                         ; preds = %do.body2
  %5 = load ptr, ptr @stderr, align 8, !dbg !370, !tbaa !210
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str, ptr noundef @.str.30, ptr noundef @__func__.parse_table, ptr noundef @.str.2, i32 noundef 81), !dbg !370
  call void @abort() #8, !dbg !370
  unreachable, !dbg !370

if.end6:                                          ; preds = %do.body2
  br label %do.cond7, !dbg !369

do.cond7:                                         ; preds = %if.end6
  br label %do.end8, !dbg !369

do.end8:                                          ; preds = %do.cond7
  %6 = load ptr, ptr %L.addr, align 8, !dbg !372, !tbaa !210
  call void @lua_pushnil(ptr noundef %6), !dbg !373
  %7 = load i32, ptr %index.addr, align 4, !dbg !374, !tbaa !216
  %cmp9 = icmp slt i32 %7, 0, !dbg !376
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !377

if.then10:                                        ; preds = %do.end8
  %8 = load i32, ptr %index.addr, align 4, !dbg !378, !tbaa !216
  %dec = add nsw i32 %8, -1, !dbg !378
  store i32 %dec, ptr %index.addr, align 4, !dbg !378, !tbaa !216
  br label %if.end11, !dbg !379

if.end11:                                         ; preds = %if.then10, %do.end8
  br label %while.cond, !dbg !380

while.cond:                                       ; preds = %if.end35, %if.end11
  %9 = load i32, ptr %had_err, align 4, !dbg !381, !tbaa !216
  %tobool12 = icmp ne i32 %9, 0, !dbg !381
  br i1 %tobool12, label %land.end, label %land.rhs, !dbg !382

land.rhs:                                         ; preds = %while.cond
  %10 = load ptr, ptr %L.addr, align 8, !dbg !383, !tbaa !210
  %11 = load i32, ptr %index.addr, align 4, !dbg !384, !tbaa !216
  %call13 = call i32 @lua_next(ptr noundef %10, i32 noundef %11), !dbg !385
  %cmp14 = icmp ne i32 %call13, 0, !dbg !386
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %cmp14, %land.rhs ], !dbg !387
  br i1 %12, label %while.body, label %while.end, !dbg !380

while.body:                                       ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !388
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !348, metadata !DIExpression()), !dbg !389
  store i32 0, ptr %i, align 4, !dbg !390, !tbaa !216
  br label %for.cond, !dbg !392

for.cond:                                         ; preds = %for.inc, %while.body
  %13 = load i32, ptr %i, align 4, !dbg !393, !tbaa !216
  %14 = load i32, ptr %level.addr, align 4, !dbg !395, !tbaa !216
  %cmp15 = icmp slt i32 %13, %14, !dbg !396
  br i1 %cmp15, label %for.body, label %for.end, !dbg !397

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %out.addr, align 8, !dbg !398, !tbaa !210
  call void @gt_str_append_cstr(ptr noundef %15, ptr noundef @.str.31), !dbg !399
  br label %for.inc, !dbg !399

for.inc:                                          ; preds = %for.body
  %16 = load i32, ptr %i, align 4, !dbg !400, !tbaa !216
  %inc = add nsw i32 %16, 1, !dbg !400
  store i32 %inc, ptr %i, align 4, !dbg !400, !tbaa !216
  br label %for.cond, !dbg !401, !llvm.loop !402

for.end:                                          ; preds = %for.cond
  %17 = load ptr, ptr %L.addr, align 8, !dbg !405, !tbaa !210
  %18 = load ptr, ptr %out.addr, align 8, !dbg !406, !tbaa !210
  %call16 = call i32 @format_scalar(ptr noundef %17, ptr noundef %18, i32 noundef -2, i1 noundef zeroext true, ptr noundef null), !dbg !407
  store i32 %call16, ptr %rval, align 4, !dbg !408, !tbaa !216
  br label %do.body17, !dbg !409

do.body17:                                        ; preds = %for.end
  %19 = load i32, ptr %rval, align 4, !dbg !410, !tbaa !216
  %tobool18 = icmp ne i32 %19, 0, !dbg !410
  br i1 %tobool18, label %if.then19, label %if.end21, !dbg !413

if.then19:                                        ; preds = %do.body17
  %20 = load ptr, ptr @stderr, align 8, !dbg !414, !tbaa !210
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str, ptr noundef @.str.32, ptr noundef @__func__.parse_table, ptr noundef @.str.2, i32 noundef 91), !dbg !414
  call void @abort() #8, !dbg !414
  unreachable, !dbg !414

if.end21:                                         ; preds = %do.body17
  br label %do.cond22, !dbg !413

do.cond22:                                        ; preds = %if.end21
  br label %do.end23, !dbg !413

do.end23:                                         ; preds = %do.cond22
  %21 = load ptr, ptr %out.addr, align 8, !dbg !416, !tbaa !210
  call void @gt_str_append_cstr(ptr noundef %21, ptr noundef @.str.33), !dbg !417
  %22 = load ptr, ptr %L.addr, align 8, !dbg !418, !tbaa !210
  %call24 = call i32 @lua_type(ptr noundef %22, i32 noundef -1), !dbg !418
  %cmp25 = icmp eq i32 %call24, 5, !dbg !418
  br i1 %cmp25, label %if.then26, label %if.else, !dbg !420

if.then26:                                        ; preds = %do.end23
  %23 = load ptr, ptr %out.addr, align 8, !dbg !421, !tbaa !210
  call void @gt_str_append_cstr(ptr noundef %23, ptr noundef @.str.34), !dbg !423
  %24 = load ptr, ptr %L.addr, align 8, !dbg !424, !tbaa !210
  %25 = load ptr, ptr %out.addr, align 8, !dbg !425, !tbaa !210
  %26 = load i32, ptr %level.addr, align 4, !dbg !426, !tbaa !216
  %add = add nsw i32 %26, 1, !dbg !427
  %27 = load ptr, ptr %err.addr, align 8, !dbg !428, !tbaa !210
  %call27 = call i32 @parse_table(ptr noundef %24, ptr noundef %25, i32 noundef -1, i32 noundef %add, ptr noundef %27), !dbg !429
  store i32 %call27, ptr %had_err, align 4, !dbg !430, !tbaa !216
  store i32 0, ptr %i, align 4, !dbg !431, !tbaa !216
  br label %for.cond28, !dbg !433

for.cond28:                                       ; preds = %for.inc31, %if.then26
  %28 = load i32, ptr %i, align 4, !dbg !434, !tbaa !216
  %29 = load i32, ptr %level.addr, align 4, !dbg !436, !tbaa !216
  %cmp29 = icmp slt i32 %28, %29, !dbg !437
  br i1 %cmp29, label %for.body30, label %for.end33, !dbg !438

for.body30:                                       ; preds = %for.cond28
  %30 = load ptr, ptr %out.addr, align 8, !dbg !439, !tbaa !210
  call void @gt_str_append_cstr(ptr noundef %30, ptr noundef @.str.31), !dbg !440
  br label %for.inc31, !dbg !440

for.inc31:                                        ; preds = %for.body30
  %31 = load i32, ptr %i, align 4, !dbg !441, !tbaa !216
  %inc32 = add nsw i32 %31, 1, !dbg !441
  store i32 %inc32, ptr %i, align 4, !dbg !441, !tbaa !216
  br label %for.cond28, !dbg !442, !llvm.loop !443

for.end33:                                        ; preds = %for.cond28
  %32 = load ptr, ptr %out.addr, align 8, !dbg !445, !tbaa !210
  call void @gt_str_append_cstr(ptr noundef %32, ptr noundef @.str.35), !dbg !446
  br label %if.end35, !dbg !447

if.else:                                          ; preds = %do.end23
  %33 = load ptr, ptr %L.addr, align 8, !dbg !448, !tbaa !210
  %34 = load ptr, ptr %out.addr, align 8, !dbg !450, !tbaa !210
  %35 = load ptr, ptr %err.addr, align 8, !dbg !451, !tbaa !210
  %call34 = call i32 @format_scalar(ptr noundef %33, ptr noundef %34, i32 noundef -1, i1 noundef zeroext false, ptr noundef %35), !dbg !452
  store i32 %call34, ptr %had_err, align 4, !dbg !453, !tbaa !216
  %36 = load ptr, ptr %out.addr, align 8, !dbg !454, !tbaa !210
  call void @gt_str_append_cstr(ptr noundef %36, ptr noundef @.str.36), !dbg !455
  br label %if.end35

if.end35:                                         ; preds = %if.else, %for.end33
  %37 = load ptr, ptr %L.addr, align 8, !dbg !456, !tbaa !210
  call void @lua_settop(ptr noundef %37, i32 noundef -2), !dbg !456
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !457
  br label %while.cond, !dbg !380, !llvm.loop !458

while.end:                                        ; preds = %land.end
  %38 = load i32, ptr %had_err, align 4, !dbg !459, !tbaa !216
  call void @llvm.lifetime.end.p0(i64 4, ptr %had_err) #7, !dbg !460
  call void @llvm.lifetime.end.p0(i64 4, ptr %rval) #7, !dbg !460
  ret i32 %38, !dbg !461
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @gt_lua_serializer_unit_test(ptr noundef %err) #0 !dbg !462 {
entry:
  %err.addr = alloca ptr, align 8
  %had_err = alloca i32, align 4
  %L = alloca ptr, align 8
  %outstr = alloca ptr, align 8
  %testtable = alloca [631 x i8], align 16
  store ptr %err, ptr %err.addr, align 8, !tbaa !210
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !466, metadata !DIExpression()), !dbg !474
  call void @llvm.lifetime.start.p0(i64 4, ptr %had_err) #7, !dbg !475
  tail call void @llvm.dbg.declare(metadata ptr %had_err, metadata !467, metadata !DIExpression()), !dbg !476
  store i32 0, ptr %had_err, align 4, !dbg !476, !tbaa !216
  call void @llvm.lifetime.start.p0(i64 8, ptr %L) #7, !dbg !477
  tail call void @llvm.dbg.declare(metadata ptr %L, metadata !468, metadata !DIExpression()), !dbg !478
  call void @llvm.lifetime.start.p0(i64 8, ptr %outstr) #7, !dbg !479
  tail call void @llvm.dbg.declare(metadata ptr %outstr, metadata !469, metadata !DIExpression()), !dbg !480
  %call = call ptr @gt_str_new(), !dbg !481
  store ptr %call, ptr %outstr, align 8, !dbg !480, !tbaa !210
  call void @llvm.lifetime.start.p0(i64 631, ptr %testtable) #7, !dbg !482
  tail call void @llvm.dbg.declare(metadata ptr %testtable, metadata !470, metadata !DIExpression()), !dbg !483
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %testtable, ptr align 16 @__const.gt_lua_serializer_unit_test.testtable, i64 631, i1 false), !dbg !483
  br label %do.body, !dbg !484

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %err.addr, align 8, !dbg !485, !tbaa !210
  %tobool = icmp ne ptr %0, null, !dbg !485
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !485

lor.lhs.false:                                    ; preds = %do.body
  %1 = load ptr, ptr %err.addr, align 8, !dbg !485, !tbaa !210
  %call1 = call zeroext i1 @gt_error_is_set(ptr noundef %1), !dbg !485
  br i1 %call1, label %if.then, label %if.end, !dbg !488

if.then:                                          ; preds = %lor.lhs.false
  %2 = load ptr, ptr @stderr, align 8, !dbg !489, !tbaa !210
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @__func__.gt_lua_serializer_unit_test, ptr noundef @.str.2, i32 noundef 150), !dbg !489
  call void @abort() #8, !dbg !489
  unreachable, !dbg !489

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.cond, !dbg !488

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !488

do.end:                                           ; preds = %do.cond
  %call3 = call ptr @luaL_newstate(), !dbg !491
  store ptr %call3, ptr %L, align 8, !dbg !492, !tbaa !210
  br label %do.body4, !dbg !493

do.body4:                                         ; preds = %do.end
  %3 = load i32, ptr %had_err, align 4, !dbg !494, !tbaa !216
  %tobool5 = icmp ne i32 %3, 0, !dbg !494
  br i1 %tobool5, label %if.end10, label %if.then6, !dbg !497

if.then6:                                         ; preds = %do.body4
  %4 = load ptr, ptr %L, align 8, !dbg !498, !tbaa !210
  %tobool7 = icmp ne ptr %4, null, !dbg !498
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !501

if.then8:                                         ; preds = %if.then6
  %5 = load ptr, ptr %err.addr, align 8, !dbg !502, !tbaa !210
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %5, ptr noundef @.str.5, ptr noundef @.str.6, ptr noundef @__func__.gt_lua_serializer_unit_test, ptr noundef @.str.2, i32 noundef 153), !dbg !502
  store i32 -1, ptr %had_err, align 4, !dbg !502, !tbaa !216
  br label %if.end9, !dbg !502

if.end9:                                          ; preds = %if.then8, %if.then6
  br label %if.end10, !dbg !501

if.end10:                                         ; preds = %if.end9, %do.body4
  br label %do.cond11, !dbg !497

do.cond11:                                        ; preds = %if.end10
  br label %do.end12, !dbg !497

do.end12:                                         ; preds = %do.cond11
  %6 = load ptr, ptr %L, align 8, !dbg !504, !tbaa !210
  call void @luaL_openlibs(ptr noundef %6), !dbg !505
  %7 = load ptr, ptr %L, align 8, !dbg !506, !tbaa !210
  %arraydecay = getelementptr inbounds [631 x i8], ptr %testtable, i64 0, i64 0, !dbg !507
  %call13 = call i32 @luaL_loadbuffer(ptr noundef %7, ptr noundef %arraydecay, i64 noundef 630, ptr noundef @.str.7), !dbg !508
  %tobool14 = icmp ne i32 %call13, 0, !dbg !508
  br i1 %tobool14, label %lor.end, label %lor.rhs, !dbg !509

lor.rhs:                                          ; preds = %do.end12
  %8 = load ptr, ptr %L, align 8, !dbg !510, !tbaa !210
  %call15 = call i32 @lua_pcall(ptr noundef %8, i32 noundef 0, i32 noundef 0, i32 noundef 0), !dbg !511
  %tobool16 = icmp ne i32 %call15, 0, !dbg !509
  br label %lor.end, !dbg !509

lor.end:                                          ; preds = %lor.rhs, %do.end12
  %9 = phi i1 [ true, %do.end12 ], [ %tobool16, %lor.rhs ]
  %lor.ext = zext i1 %9 to i32, !dbg !509
  store i32 %lor.ext, ptr %had_err, align 4, !dbg !512, !tbaa !216
  %10 = load i32, ptr %had_err, align 4, !dbg !513, !tbaa !216
  %tobool17 = icmp ne i32 %10, 0, !dbg !513
  br i1 %tobool17, label %if.end162, label %if.then18, !dbg !515

if.then18:                                        ; preds = %lor.end
  %11 = load ptr, ptr %L, align 8, !dbg !516, !tbaa !210
  call void @lua_getfield(ptr noundef %11, i32 noundef -10002, ptr noundef @.str.8), !dbg !516
  %12 = load ptr, ptr %outstr, align 8, !dbg !518, !tbaa !210
  call void @gt_str_append_cstr(ptr noundef %12, ptr noundef @.str.9), !dbg !519
  %13 = load ptr, ptr %L, align 8, !dbg !520, !tbaa !210
  %14 = load ptr, ptr %outstr, align 8, !dbg !521, !tbaa !210
  %15 = load ptr, ptr %err.addr, align 8, !dbg !522, !tbaa !210
  %call19 = call i32 @gt_lua_table_to_str(ptr noundef %13, ptr noundef %14, i32 noundef -1, ptr noundef %15), !dbg !523
  %16 = load ptr, ptr %outstr, align 8, !dbg !524, !tbaa !210
  call void @gt_str_append_cstr(ptr noundef %16, ptr noundef @.str.10), !dbg !525
  %17 = load ptr, ptr %L, align 8, !dbg !526, !tbaa !210
  %18 = load ptr, ptr %outstr, align 8, !dbg !527, !tbaa !210
  %call20 = call ptr @gt_str_get(ptr noundef %18), !dbg !528
  %19 = load ptr, ptr %outstr, align 8, !dbg !529, !tbaa !210
  %call21 = call i64 @gt_str_length(ptr noundef %19), !dbg !530
  %call22 = call i32 @luaL_loadbuffer(ptr noundef %17, ptr noundef %call20, i64 noundef %call21, ptr noundef @.str.11), !dbg !531
  %tobool23 = icmp ne i32 %call22, 0, !dbg !531
  br i1 %tobool23, label %lor.end27, label %lor.rhs24, !dbg !532

lor.rhs24:                                        ; preds = %if.then18
  %20 = load ptr, ptr %L, align 8, !dbg !533, !tbaa !210
  %call25 = call i32 @lua_pcall(ptr noundef %20, i32 noundef 0, i32 noundef 0, i32 noundef 0), !dbg !534
  %tobool26 = icmp ne i32 %call25, 0, !dbg !532
  br label %lor.end27, !dbg !532

lor.end27:                                        ; preds = %lor.rhs24, %if.then18
  %21 = phi i1 [ true, %if.then18 ], [ %tobool26, %lor.rhs24 ]
  %lor.ext28 = zext i1 %21 to i32, !dbg !532
  store i32 %lor.ext28, ptr %had_err, align 4, !dbg !535, !tbaa !216
  %22 = load i32, ptr %had_err, align 4, !dbg !536, !tbaa !216
  %tobool29 = icmp ne i32 %22, 0, !dbg !536
  br i1 %tobool29, label %if.end161, label %if.then30, !dbg !538

if.then30:                                        ; preds = %lor.end27
  br label %do.body31, !dbg !539

do.body31:                                        ; preds = %if.then30
  %23 = load i32, ptr %had_err, align 4, !dbg !541, !tbaa !216
  %tobool32 = icmp ne i32 %23, 0, !dbg !541
  br i1 %tobool32, label %if.end37, label %if.then33, !dbg !544

if.then33:                                        ; preds = %do.body31
  %24 = load ptr, ptr %outstr, align 8, !dbg !545, !tbaa !210
  %call34 = call i64 @gt_str_length(ptr noundef %24), !dbg !545
  %cmp = icmp ugt i64 %call34, 0, !dbg !545
  br i1 %cmp, label %if.end36, label %if.then35, !dbg !548

if.then35:                                        ; preds = %if.then33
  %25 = load ptr, ptr %err.addr, align 8, !dbg !549, !tbaa !210
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %25, ptr noundef @.str.5, ptr noundef @.str.12, ptr noundef @__func__.gt_lua_serializer_unit_test, ptr noundef @.str.2, i32 noundef 168), !dbg !549
  store i32 -1, ptr %had_err, align 4, !dbg !549, !tbaa !216
  br label %if.end36, !dbg !549

if.end36:                                         ; preds = %if.then35, %if.then33
  br label %if.end37, !dbg !548

if.end37:                                         ; preds = %if.end36, %do.body31
  br label %do.cond38, !dbg !544

do.cond38:                                        ; preds = %if.end37
  br label %do.end39, !dbg !544

do.end39:                                         ; preds = %do.cond38
  %26 = load ptr, ptr %L, align 8, !dbg !551, !tbaa !210
  call void @lua_getfield(ptr noundef %26, i32 noundef -10002, ptr noundef @.str.8), !dbg !551
  br label %do.body40, !dbg !552

do.body40:                                        ; preds = %do.end39
  %27 = load i32, ptr %had_err, align 4, !dbg !553, !tbaa !216
  %tobool41 = icmp ne i32 %27, 0, !dbg !553
  br i1 %tobool41, label %if.end47, label %if.then42, !dbg !556

if.then42:                                        ; preds = %do.body40
  %28 = load ptr, ptr %L, align 8, !dbg !557, !tbaa !210
  %call43 = call i32 @lua_type(ptr noundef %28, i32 noundef -1), !dbg !557
  %cmp44 = icmp eq i32 %call43, 5, !dbg !557
  br i1 %cmp44, label %if.end46, label %if.then45, !dbg !560

if.then45:                                        ; preds = %if.then42
  %29 = load ptr, ptr %err.addr, align 8, !dbg !561, !tbaa !210
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %29, ptr noundef @.str.5, ptr noundef @.str.13, ptr noundef @__func__.gt_lua_serializer_unit_test, ptr noundef @.str.2, i32 noundef 170), !dbg !561
  store i32 -1, ptr %had_err, align 4, !dbg !561, !tbaa !216
  br label %if.end46, !dbg !561

if.end46:                                         ; preds = %if.then45, %if.then42
  br label %if.end47, !dbg !560

if.end47:                                         ; preds = %if.end46, %do.body40
  br label %do.cond48, !dbg !556

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !556

do.end49:                                         ; preds = %do.cond48
  %30 = load ptr, ptr %L, align 8, !dbg !563, !tbaa !210
  call void @lua_getfield(ptr noundef %30, i32 noundef -1, ptr noundef @.str.14), !dbg !564
  br label %do.body50, !dbg !565

do.body50:                                        ; preds = %do.end49
  %31 = load i32, ptr %had_err, align 4, !dbg !566, !tbaa !216
  %tobool51 = icmp ne i32 %31, 0, !dbg !566
  br i1 %tobool51, label %if.end57, label %if.then52, !dbg !569

if.then52:                                        ; preds = %do.body50
  %32 = load ptr, ptr %L, align 8, !dbg !570, !tbaa !210
  %call53 = call i32 @lua_type(ptr noundef %32, i32 noundef -1), !dbg !570
  %cmp54 = icmp eq i32 %call53, 5, !dbg !570
  br i1 %cmp54, label %if.end56, label %if.then55, !dbg !573

if.then55:                                        ; preds = %if.then52
  %33 = load ptr, ptr %err.addr, align 8, !dbg !574, !tbaa !210
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %33, ptr noundef @.str.5, ptr noundef @.str.13, ptr noundef @__func__.gt_lua_serializer_unit_test, ptr noundef @.str.2, i32 noundef 172), !dbg !574
  store i32 -1, ptr %had_err, align 4, !dbg !574, !tbaa !216
  br label %if.end56, !dbg !574

if.end56:                                         ; preds = %if.then55, %if.then52
  br label %if.end57, !dbg !573

if.end57:                                         ; preds = %if.end56, %do.body50
  br label %do.cond58, !dbg !569

do.cond58:                                        ; preds = %if.end57
  br label %do.end59, !dbg !569

do.end59:                                         ; preds = %do.cond58
  %34 = load ptr, ptr %L, align 8, !dbg !576, !tbaa !210
  call void @lua_getfield(ptr noundef %34, i32 noundef -1, ptr noundef @.str.15), !dbg !577
  br label %do.body60, !dbg !578

do.body60:                                        ; preds = %do.end59
  %35 = load i32, ptr %had_err, align 4, !dbg !579, !tbaa !216
  %tobool61 = icmp ne i32 %35, 0, !dbg !579
  br i1 %tobool61, label %if.end67, label %if.then62, !dbg !582

if.then62:                                        ; preds = %do.body60
  %36 = load ptr, ptr %L, align 8, !dbg !583, !tbaa !210
  %call63 = call i32 @lua_type(ptr noundef %36, i32 noundef -1), !dbg !583
  %cmp64 = icmp eq i32 %call63, 5, !dbg !583
  br i1 %cmp64, label %if.end66, label %if.then65, !dbg !586

if.then65:                                        ; preds = %if.then62
  %37 = load ptr, ptr %err.addr, align 8, !dbg !587, !tbaa !210
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %37, ptr noundef @.str.5, ptr noundef @.str.13, ptr noundef @__func__.gt_lua_serializer_unit_test, ptr noundef @.str.2, i32 noundef 174), !dbg !587
  store i32 -1, ptr %had_err, align 4, !dbg !587, !tbaa !216
  br label %if.end66, !dbg !587

if.end66:                                         ; preds = %if.then65, %if.then62
  br label %if.end67, !dbg !586

if.end67:                                         ; preds = %if.end66, %do.body60
  br label %do.cond68, !dbg !582

do.cond68:                                        ; preds = %if.end67
  br label %do.end69, !dbg !582

do.end69:                                         ; preds = %do.cond68
  %38 = load ptr, ptr %L, align 8, !dbg !589, !tbaa !210
  call void @lua_getfield(ptr noundef %38, i32 noundef -1, ptr noundef @.str.16), !dbg !590
  br label %do.body70, !dbg !591

do.body70:                                        ; preds = %do.end69
  %39 = load i32, ptr %had_err, align 4, !dbg !592, !tbaa !216
  %tobool71 = icmp ne i32 %39, 0, !dbg !592
  br i1 %tobool71, label %if.end77, label %if.then72, !dbg !595

if.then72:                                        ; preds = %do.body70
  %40 = load ptr, ptr %L, align 8, !dbg !596, !tbaa !210
  %call73 = call i32 @lua_isnumber(ptr noundef %40, i32 noundef -1), !dbg !596
  %tobool74 = icmp ne i32 %call73, 0, !dbg !596
  br i1 %tobool74, label %if.end76, label %if.then75, !dbg !599

if.then75:                                        ; preds = %if.then72
  %41 = load ptr, ptr %err.addr, align 8, !dbg !600, !tbaa !210
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %41, ptr noundef @.str.5, ptr noundef @.str.17, ptr noundef @__func__.gt_lua_serializer_unit_test, ptr noundef @.str.2, i32 noundef 176), !dbg !600
  store i32 -1, ptr %had_err, align 4, !dbg !600, !tbaa !216
  br label %if.end76, !dbg !600

if.end76:                                         ; preds = %if.then75, %if.then72
  br label %if.end77, !dbg !599

if.end77:                                         ; preds = %if.end76, %do.body70
  br label %do.cond78, !dbg !595

do.cond78:                                        ; preds = %if.end77
  br label %do.end79, !dbg !595

do.end79:                                         ; preds = %do.cond78
  br label %do.body80, !dbg !602

do.body80:                                        ; preds = %do.end79
  %42 = load i32, ptr %had_err, align 4, !dbg !603, !tbaa !216
  %tobool81 = icmp ne i32 %42, 0, !dbg !603
  br i1 %tobool81, label %if.end87, label %if.then82, !dbg !606

if.then82:                                        ; preds = %do.body80
  %43 = load ptr, ptr %L, align 8, !dbg !607, !tbaa !210
  %call83 = call double @lua_tonumber(ptr noundef %43, i32 noundef -1), !dbg !607
  %cmp84 = fcmp oeq double 1.000000e+00, %call83, !dbg !607
  br i1 %cmp84, label %if.end86, label %if.then85, !dbg !610

if.then85:                                        ; preds = %if.then82
  %44 = load ptr, ptr %err.addr, align 8, !dbg !611, !tbaa !210
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %44, ptr noundef @.str.5, ptr noundef @.str.18, ptr noundef @__func__.gt_lua_serializer_unit_test, ptr noundef @.str.2, i32 noundef 177), !dbg !611
  store i32 -1, ptr %had_err, align 4, !dbg !611, !tbaa !216
  br label %if.end86, !dbg !611

if.end86:                                         ; preds = %if.then85, %if.then82
  br label %if.end87, !dbg !610

if.end87:                                         ; preds = %if.end86, %do.body80
  br label %do.cond88, !dbg !606

do.cond88:                                        ; preds = %if.end87
  br label %do.end89, !dbg !606

do.end89:                                         ; preds = %do.cond88
  %45 = load ptr, ptr %L, align 8, !dbg !613, !tbaa !210
  call void @lua_settop(ptr noundef %45, i32 noundef -2), !dbg !613
  %46 = load ptr, ptr %L, align 8, !dbg !614, !tbaa !210
  call void @lua_getfield(ptr noundef %46, i32 noundef -1, ptr noundef @.str.19), !dbg !615
  br label %do.body90, !dbg !616

do.body90:                                        ; preds = %do.end89
  %47 = load i32, ptr %had_err, align 4, !dbg !617, !tbaa !216
  %tobool91 = icmp ne i32 %47, 0, !dbg !617
  br i1 %tobool91, label %if.end97, label %if.then92, !dbg !620

if.then92:                                        ; preds = %do.body90
  %48 = load ptr, ptr %L, align 8, !dbg !621, !tbaa !210
  %call93 = call i32 @lua_isnumber(ptr noundef %48, i32 noundef -1), !dbg !621
  %tobool94 = icmp ne i32 %call93, 0, !dbg !621
  br i1 %tobool94, label %if.end96, label %if.then95, !dbg !624

if.then95:                                        ; preds = %if.then92
  %49 = load ptr, ptr %err.addr, align 8, !dbg !625, !tbaa !210
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %49, ptr noundef @.str.5, ptr noundef @.str.17, ptr noundef @__func__.gt_lua_serializer_unit_test, ptr noundef @.str.2, i32 noundef 180), !dbg !625
  store i32 -1, ptr %had_err, align 4, !dbg !625, !tbaa !216
  br label %if.end96, !dbg !625

if.end96:                                         ; preds = %if.then95, %if.then92
  br label %if.end97, !dbg !624

if.end97:                                         ; preds = %if.end96, %do.body90
  br label %do.cond98, !dbg !620

do.cond98:                                        ; preds = %if.end97
  br label %do.end99, !dbg !620

do.end99:                                         ; preds = %do.cond98
  br label %do.body100, !dbg !627

do.body100:                                       ; preds = %do.end99
  %50 = load i32, ptr %had_err, align 4, !dbg !628, !tbaa !216
  %tobool101 = icmp ne i32 %50, 0, !dbg !628
  br i1 %tobool101, label %if.end107, label %if.then102, !dbg !631

if.then102:                                       ; preds = %do.body100
  %51 = load ptr, ptr %L, align 8, !dbg !632, !tbaa !210
  %call103 = call double @lua_tonumber(ptr noundef %51, i32 noundef -1), !dbg !632
  %cmp104 = fcmp oeq double 0.000000e+00, %call103, !dbg !632
  br i1 %cmp104, label %if.end106, label %if.then105, !dbg !635

if.then105:                                       ; preds = %if.then102
  %52 = load ptr, ptr %err.addr, align 8, !dbg !636, !tbaa !210
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %52, ptr noundef @.str.5, ptr noundef @.str.20, ptr noundef @__func__.gt_lua_serializer_unit_test, ptr noundef @.str.2, i32 noundef 181), !dbg !636
  store i32 -1, ptr %had_err, align 4, !dbg !636, !tbaa !216
  br label %if.end106, !dbg !636

if.end106:                                        ; preds = %if.then105, %if.then102
  br label %if.end107, !dbg !635

if.end107:                                        ; preds = %if.end106, %do.body100
  br label %do.cond108, !dbg !631

do.cond108:                                       ; preds = %if.end107
  br label %do.end109, !dbg !631

do.end109:                                        ; preds = %do.cond108
  %53 = load ptr, ptr %L, align 8, !dbg !638, !tbaa !210
  call void @lua_settop(ptr noundef %53, i32 noundef -3), !dbg !638
  %54 = load ptr, ptr %L, align 8, !dbg !639, !tbaa !210
  call void @lua_getfield(ptr noundef %54, i32 noundef -1, ptr noundef @.str.21), !dbg !640
  br label %do.body110, !dbg !641

do.body110:                                       ; preds = %do.end109
  %55 = load i32, ptr %had_err, align 4, !dbg !642, !tbaa !216
  %tobool111 = icmp ne i32 %55, 0, !dbg !642
  br i1 %tobool111, label %if.end117, label %if.then112, !dbg !645

if.then112:                                       ; preds = %do.body110
  %56 = load ptr, ptr %L, align 8, !dbg !646, !tbaa !210
  %call113 = call i32 @lua_isstring(ptr noundef %56, i32 noundef -1), !dbg !646
  %tobool114 = icmp ne i32 %call113, 0, !dbg !646
  br i1 %tobool114, label %if.end116, label %if.then115, !dbg !649

if.then115:                                       ; preds = %if.then112
  %57 = load ptr, ptr %err.addr, align 8, !dbg !650, !tbaa !210
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %57, ptr noundef @.str.5, ptr noundef @.str.22, ptr noundef @__func__.gt_lua_serializer_unit_test, ptr noundef @.str.2, i32 noundef 184), !dbg !650
  store i32 -1, ptr %had_err, align 4, !dbg !650, !tbaa !216
  br label %if.end116, !dbg !650

if.end116:                                        ; preds = %if.then115, %if.then112
  br label %if.end117, !dbg !649

if.end117:                                        ; preds = %if.end116, %do.body110
  br label %do.cond118, !dbg !645

do.cond118:                                       ; preds = %if.end117
  br label %do.end119, !dbg !645

do.end119:                                        ; preds = %do.cond118
  br label %do.body120, !dbg !652

do.body120:                                       ; preds = %do.end119
  %58 = load i32, ptr %had_err, align 4, !dbg !653, !tbaa !216
  %tobool121 = icmp ne i32 %58, 0, !dbg !653
  br i1 %tobool121, label %if.end128, label %if.then122, !dbg !656

if.then122:                                       ; preds = %do.body120
  %59 = load ptr, ptr %L, align 8, !dbg !657, !tbaa !210
  %call123 = call ptr @lua_tolstring(ptr noundef %59, i32 noundef -1, ptr noundef null), !dbg !657
  %call124 = call i32 @strcmp(ptr noundef @.str.23, ptr noundef %call123) #9, !dbg !657
  %cmp125 = icmp eq i32 %call124, 0, !dbg !657
  br i1 %cmp125, label %if.end127, label %if.then126, !dbg !660

if.then126:                                       ; preds = %if.then122
  %60 = load ptr, ptr %err.addr, align 8, !dbg !661, !tbaa !210
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %60, ptr noundef @.str.5, ptr noundef @.str.24, ptr noundef @__func__.gt_lua_serializer_unit_test, ptr noundef @.str.2, i32 noundef 185), !dbg !661
  store i32 -1, ptr %had_err, align 4, !dbg !661, !tbaa !216
  br label %if.end127, !dbg !661

if.end127:                                        ; preds = %if.then126, %if.then122
  br label %if.end128, !dbg !660

if.end128:                                        ; preds = %if.end127, %do.body120
  br label %do.cond129, !dbg !656

do.cond129:                                       ; preds = %if.end128
  br label %do.end130, !dbg !656

do.end130:                                        ; preds = %do.cond129
  %61 = load ptr, ptr %L, align 8, !dbg !663, !tbaa !210
  call void @lua_settop(ptr noundef %61, i32 noundef -2), !dbg !663
  %62 = load ptr, ptr %L, align 8, !dbg !664, !tbaa !210
  call void @lua_getfield(ptr noundef %62, i32 noundef -1, ptr noundef @.str.25), !dbg !665
  br label %do.body131, !dbg !666

do.body131:                                       ; preds = %do.end130
  %63 = load i32, ptr %had_err, align 4, !dbg !667, !tbaa !216
  %tobool132 = icmp ne i32 %63, 0, !dbg !667
  br i1 %tobool132, label %if.end138, label %if.then133, !dbg !670

if.then133:                                       ; preds = %do.body131
  %64 = load ptr, ptr %L, align 8, !dbg !671, !tbaa !210
  %call134 = call i32 @lua_type(ptr noundef %64, i32 noundef -1), !dbg !671
  %cmp135 = icmp eq i32 %call134, 1, !dbg !671
  br i1 %cmp135, label %if.end137, label %if.then136, !dbg !674

if.then136:                                       ; preds = %if.then133
  %65 = load ptr, ptr %err.addr, align 8, !dbg !675, !tbaa !210
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %65, ptr noundef @.str.5, ptr noundef @.str.26, ptr noundef @__func__.gt_lua_serializer_unit_test, ptr noundef @.str.2, i32 noundef 188), !dbg !675
  store i32 -1, ptr %had_err, align 4, !dbg !675, !tbaa !216
  br label %if.end137, !dbg !675

if.end137:                                        ; preds = %if.then136, %if.then133
  br label %if.end138, !dbg !674

if.end138:                                        ; preds = %if.end137, %do.body131
  br label %do.cond139, !dbg !670

do.cond139:                                       ; preds = %if.end138
  br label %do.end140, !dbg !670

do.end140:                                        ; preds = %do.cond139
  br label %do.body141, !dbg !677

do.body141:                                       ; preds = %do.end140
  %66 = load i32, ptr %had_err, align 4, !dbg !678, !tbaa !216
  %tobool142 = icmp ne i32 %66, 0, !dbg !678
  br i1 %tobool142, label %if.end148, label %if.then143, !dbg !681

if.then143:                                       ; preds = %do.body141
  %67 = load ptr, ptr %L, align 8, !dbg !682, !tbaa !210
  %call144 = call i32 @lua_toboolean(ptr noundef %67, i32 noundef -1), !dbg !682
  %cmp145 = icmp eq i32 %call144, 0, !dbg !682
  br i1 %cmp145, label %if.end147, label %if.then146, !dbg !685

if.then146:                                       ; preds = %if.then143
  %68 = load ptr, ptr %err.addr, align 8, !dbg !686, !tbaa !210
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %68, ptr noundef @.str.5, ptr noundef @.str.27, ptr noundef @__func__.gt_lua_serializer_unit_test, ptr noundef @.str.2, i32 noundef 189), !dbg !686
  store i32 -1, ptr %had_err, align 4, !dbg !686, !tbaa !216
  br label %if.end147, !dbg !686

if.end147:                                        ; preds = %if.then146, %if.then143
  br label %if.end148, !dbg !685

if.end148:                                        ; preds = %if.end147, %do.body141
  br label %do.cond149, !dbg !681

do.cond149:                                       ; preds = %if.end148
  br label %do.end150, !dbg !681

do.end150:                                        ; preds = %do.cond149
  %69 = load ptr, ptr %L, align 8, !dbg !688, !tbaa !210
  call void @lua_settop(ptr noundef %69, i32 noundef -2), !dbg !688
  %70 = load ptr, ptr %L, align 8, !dbg !689, !tbaa !210
  call void @lua_getfield(ptr noundef %70, i32 noundef -1, ptr noundef @.str.28), !dbg !690
  br label %do.body151, !dbg !691

do.body151:                                       ; preds = %do.end150
  %71 = load i32, ptr %had_err, align 4, !dbg !692, !tbaa !216
  %tobool152 = icmp ne i32 %71, 0, !dbg !692
  br i1 %tobool152, label %if.end158, label %if.then153, !dbg !695

if.then153:                                       ; preds = %do.body151
  %72 = load ptr, ptr %L, align 8, !dbg !696, !tbaa !210
  %call154 = call i32 @lua_type(ptr noundef %72, i32 noundef -1), !dbg !696
  %cmp155 = icmp eq i32 %call154, 0, !dbg !696
  br i1 %cmp155, label %if.end157, label %if.then156, !dbg !699

if.then156:                                       ; preds = %if.then153
  %73 = load ptr, ptr %err.addr, align 8, !dbg !700, !tbaa !210
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %73, ptr noundef @.str.5, ptr noundef @.str.29, ptr noundef @__func__.gt_lua_serializer_unit_test, ptr noundef @.str.2, i32 noundef 192), !dbg !700
  store i32 -1, ptr %had_err, align 4, !dbg !700, !tbaa !216
  br label %if.end157, !dbg !700

if.end157:                                        ; preds = %if.then156, %if.then153
  br label %if.end158, !dbg !699

if.end158:                                        ; preds = %if.end157, %do.body151
  br label %do.cond159, !dbg !695

do.cond159:                                       ; preds = %if.end158
  br label %do.end160, !dbg !695

do.end160:                                        ; preds = %do.cond159
  %74 = load ptr, ptr %L, align 8, !dbg !702, !tbaa !210
  call void @lua_settop(ptr noundef %74, i32 noundef -4), !dbg !702
  br label %if.end161, !dbg !703

if.end161:                                        ; preds = %do.end160, %lor.end27
  br label %if.end162, !dbg !704

if.end162:                                        ; preds = %if.end161, %lor.end
  %75 = load ptr, ptr %outstr, align 8, !dbg !705, !tbaa !210
  call void @gt_str_delete(ptr noundef %75), !dbg !706
  %76 = load ptr, ptr %L, align 8, !dbg !707, !tbaa !210
  call void @lua_close(ptr noundef %76), !dbg !708
  %77 = load i32, ptr %had_err, align 4, !dbg !709, !tbaa !216
  call void @llvm.lifetime.end.p0(i64 631, ptr %testtable) #7, !dbg !710
  call void @llvm.lifetime.end.p0(i64 8, ptr %outstr) #7, !dbg !710
  call void @llvm.lifetime.end.p0(i64 8, ptr %L) #7, !dbg !710
  call void @llvm.lifetime.end.p0(i64 4, ptr %had_err) #7, !dbg !710
  ret i32 %77, !dbg !711
}

declare !dbg !712 ptr @gt_str_new() #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare !dbg !715 ptr @luaL_newstate() #2

declare !dbg !719 void @gt_error_set(ptr noundef, ptr noundef, ...) #2

declare !dbg !722 void @luaL_openlibs(ptr noundef) #2

declare !dbg !726 i32 @luaL_loadbuffer(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare !dbg !729 i32 @lua_pcall(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare !dbg !732 void @lua_getfield(ptr noundef, i32 noundef, ptr noundef) #2

declare !dbg !735 void @gt_str_append_cstr(ptr noundef, ptr noundef) #2

declare !dbg !738 ptr @gt_str_get(ptr noundef) #2

declare !dbg !743 i64 @gt_str_length(ptr noundef) #2

declare !dbg !748 i32 @lua_isnumber(ptr noundef, i32 noundef) #2

declare !dbg !749 double @lua_tonumber(ptr noundef, i32 noundef) #2

declare !dbg !754 void @lua_settop(ptr noundef, i32 noundef) #2

declare !dbg !757 i32 @lua_isstring(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !758 i32 @strcmp(ptr noundef, ptr noundef) #5

declare !dbg !762 ptr @lua_tolstring(ptr noundef, i32 noundef, ptr noundef) #2

declare !dbg !766 i32 @lua_toboolean(ptr noundef, i32 noundef) #2

declare !dbg !767 void @gt_str_delete(ptr noundef) #2

declare !dbg !770 void @lua_close(ptr noundef) #2

declare !dbg !771 void @lua_pushnil(ptr noundef) #2

declare !dbg !772 i32 @lua_next(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @format_scalar(ptr noundef %L, ptr noundef %out, i32 noundef %index, i1 noundef zeroext %table_key, ptr noundef %err) #0 !dbg !773 {
entry:
  %L.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  %table_key.addr = alloca i8, align 1
  %err.addr = alloca ptr, align 8
  %had_err = alloca i32, align 4
  %val = alloca i32, align 4
  %val20 = alloca double, align 8
  %str = alloca ptr, align 8
  store ptr %L, ptr %L.addr, align 8, !tbaa !210
  tail call void @llvm.dbg.declare(metadata ptr %L.addr, metadata !777, metadata !DIExpression()), !dbg !792
  store ptr %out, ptr %out.addr, align 8, !tbaa !210
  tail call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !778, metadata !DIExpression()), !dbg !793
  store i32 %index, ptr %index.addr, align 4, !tbaa !216
  tail call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !779, metadata !DIExpression()), !dbg !794
  %frombool = zext i1 %table_key to i8
  store i8 %frombool, ptr %table_key.addr, align 1, !tbaa !795
  tail call void @llvm.dbg.declare(metadata ptr %table_key.addr, metadata !780, metadata !DIExpression()), !dbg !797
  store ptr %err, ptr %err.addr, align 8, !tbaa !210
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !781, metadata !DIExpression()), !dbg !798
  call void @llvm.lifetime.start.p0(i64 4, ptr %had_err) #7, !dbg !799
  tail call void @llvm.dbg.declare(metadata ptr %had_err, metadata !782, metadata !DIExpression()), !dbg !800
  store i32 0, ptr %had_err, align 4, !dbg !800, !tbaa !216
  br label %do.body, !dbg !801

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %err.addr, align 8, !dbg !802, !tbaa !210
  %tobool = icmp ne ptr %0, null, !dbg !802
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !802

lor.lhs.false:                                    ; preds = %do.body
  %1 = load ptr, ptr %err.addr, align 8, !dbg !802, !tbaa !210
  %call = call zeroext i1 @gt_error_is_set(ptr noundef %1), !dbg !802
  br i1 %call, label %if.then, label %if.end, !dbg !805

if.then:                                          ; preds = %lor.lhs.false
  %2 = load ptr, ptr @stderr, align 8, !dbg !806, !tbaa !210
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @__func__.format_scalar, ptr noundef @.str.2, i32 noundef 31), !dbg !806
  call void @abort() #8, !dbg !806
  unreachable, !dbg !806

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.cond, !dbg !805

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !805

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !808

do.body2:                                         ; preds = %do.end
  %3 = load ptr, ptr %L.addr, align 8, !dbg !809, !tbaa !210
  %4 = load i32, ptr %index.addr, align 4, !dbg !809, !tbaa !216
  %call3 = call i32 @lua_type(ptr noundef %3, i32 noundef %4), !dbg !809
  %cmp = icmp eq i32 %call3, 5, !dbg !809
  br i1 %cmp, label %if.then4, label %if.end6, !dbg !812

if.then4:                                         ; preds = %do.body2
  %5 = load ptr, ptr @stderr, align 8, !dbg !813, !tbaa !210
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str, ptr noundef @.str.37, ptr noundef @__func__.format_scalar, ptr noundef @.str.2, i32 noundef 32), !dbg !813
  call void @abort() #8, !dbg !813
  unreachable, !dbg !813

if.end6:                                          ; preds = %do.body2
  br label %do.cond7, !dbg !812

do.cond7:                                         ; preds = %if.end6
  br label %do.end8, !dbg !812

do.end8:                                          ; preds = %do.cond7
  %6 = load ptr, ptr %L.addr, align 8, !dbg !815, !tbaa !210
  %7 = load i32, ptr %index.addr, align 4, !dbg !815, !tbaa !216
  %call9 = call i32 @lua_type(ptr noundef %6, i32 noundef %7), !dbg !815
  %cmp10 = icmp eq i32 %call9, 1, !dbg !815
  br i1 %cmp10, label %if.then11, label %if.else16, !dbg !816

if.then11:                                        ; preds = %do.end8
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #7, !dbg !817
  tail call void @llvm.dbg.declare(metadata ptr %val, metadata !783, metadata !DIExpression()), !dbg !818
  %8 = load ptr, ptr %L.addr, align 8, !dbg !819, !tbaa !210
  %9 = load i32, ptr %index.addr, align 4, !dbg !820, !tbaa !216
  %call12 = call i32 @lua_toboolean(ptr noundef %8, i32 noundef %9), !dbg !821
  store i32 %call12, ptr %val, align 4, !dbg !822, !tbaa !216
  %10 = load i32, ptr %val, align 4, !dbg !823, !tbaa !216
  %tobool13 = icmp ne i32 %10, 0, !dbg !823
  br i1 %tobool13, label %if.then14, label %if.else, !dbg !825

if.then14:                                        ; preds = %if.then11
  %11 = load ptr, ptr %out.addr, align 8, !dbg !826, !tbaa !210
  call void @gt_str_append_cstr(ptr noundef %11, ptr noundef @.str.38), !dbg !827
  br label %if.end15, !dbg !827

if.else:                                          ; preds = %if.then11
  %12 = load ptr, ptr %out.addr, align 8, !dbg !828, !tbaa !210
  call void @gt_str_append_cstr(ptr noundef %12, ptr noundef @.str.39), !dbg !829
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then14
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #7, !dbg !830
  br label %if.end37, !dbg !831

if.else16:                                        ; preds = %do.end8
  %13 = load ptr, ptr %L.addr, align 8, !dbg !832, !tbaa !210
  %14 = load i32, ptr %index.addr, align 4, !dbg !833, !tbaa !216
  %call17 = call i32 @lua_isnumber(ptr noundef %13, i32 noundef %14), !dbg !834
  %tobool18 = icmp ne i32 %call17, 0, !dbg !834
  br i1 %tobool18, label %if.then19, label %if.else22, !dbg !835

if.then19:                                        ; preds = %if.else16
  call void @llvm.lifetime.start.p0(i64 8, ptr %val20) #7, !dbg !836
  tail call void @llvm.dbg.declare(metadata ptr %val20, metadata !786, metadata !DIExpression()), !dbg !837
  %15 = load ptr, ptr %L.addr, align 8, !dbg !838, !tbaa !210
  %16 = load i32, ptr %index.addr, align 4, !dbg !839, !tbaa !216
  %call21 = call double @lua_tonumber(ptr noundef %15, i32 noundef %16), !dbg !840
  store double %call21, ptr %val20, align 8, !dbg !841, !tbaa !842
  %17 = load ptr, ptr %out.addr, align 8, !dbg !844, !tbaa !210
  %18 = load double, ptr %val20, align 8, !dbg !845, !tbaa !842
  call void @gt_str_append_double(ptr noundef %17, double noundef %18, i32 noundef 10), !dbg !846
  call void @llvm.lifetime.end.p0(i64 8, ptr %val20) #7, !dbg !847
  br label %if.end36, !dbg !848

if.else22:                                        ; preds = %if.else16
  %19 = load ptr, ptr %L.addr, align 8, !dbg !849, !tbaa !210
  %20 = load i32, ptr %index.addr, align 4, !dbg !850, !tbaa !216
  %call23 = call i32 @lua_isstring(ptr noundef %19, i32 noundef %20), !dbg !851
  %tobool24 = icmp ne i32 %call23, 0, !dbg !851
  br i1 %tobool24, label %if.then25, label %if.else34, !dbg !852

if.then25:                                        ; preds = %if.else22
  call void @llvm.lifetime.start.p0(i64 8, ptr %str) #7, !dbg !853
  tail call void @llvm.dbg.declare(metadata ptr %str, metadata !789, metadata !DIExpression()), !dbg !854
  %21 = load ptr, ptr %L.addr, align 8, !dbg !855, !tbaa !210
  %22 = load i32, ptr %index.addr, align 4, !dbg !855, !tbaa !216
  %call26 = call ptr @lua_tolstring(ptr noundef %21, i32 noundef %22, ptr noundef null), !dbg !855
  store ptr %call26, ptr %str, align 8, !dbg !856, !tbaa !210
  %23 = load ptr, ptr %L.addr, align 8, !dbg !857, !tbaa !210
  call void @lua_getfield(ptr noundef %23, i32 noundef -10002, ptr noundef @.str.40), !dbg !857
  %24 = load ptr, ptr %L.addr, align 8, !dbg !858, !tbaa !210
  call void @lua_pushlstring(ptr noundef %24, ptr noundef @.str.41, i64 noundef 6), !dbg !858
  %25 = load ptr, ptr %L.addr, align 8, !dbg !859, !tbaa !210
  call void @lua_gettable(ptr noundef %25, i32 noundef -2), !dbg !860
  %26 = load ptr, ptr %L.addr, align 8, !dbg !861, !tbaa !210
  call void @lua_pushstring(ptr noundef %26, ptr noundef @.str.42), !dbg !862
  %27 = load ptr, ptr %L.addr, align 8, !dbg !863, !tbaa !210
  %28 = load ptr, ptr %str, align 8, !dbg !864, !tbaa !210
  call void @lua_pushstring(ptr noundef %27, ptr noundef %28), !dbg !865
  %29 = load ptr, ptr %L.addr, align 8, !dbg !866, !tbaa !210
  call void @lua_call(ptr noundef %29, i32 noundef 2, i32 noundef 1), !dbg !867
  %30 = load ptr, ptr %L.addr, align 8, !dbg !868, !tbaa !210
  %call27 = call ptr @lua_tolstring(ptr noundef %30, i32 noundef -1, ptr noundef null), !dbg !868
  store ptr %call27, ptr %str, align 8, !dbg !869, !tbaa !210
  %31 = load ptr, ptr %L.addr, align 8, !dbg !870, !tbaa !210
  call void @lua_settop(ptr noundef %31, i32 noundef -3), !dbg !870
  %32 = load i8, ptr %table_key.addr, align 1, !dbg !871, !tbaa !795, !range !873, !noundef !874
  %tobool28 = trunc i8 %32 to i1, !dbg !871
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !875

if.then29:                                        ; preds = %if.then25
  %33 = load ptr, ptr %out.addr, align 8, !dbg !876, !tbaa !210
  call void @gt_str_append_cstr(ptr noundef %33, ptr noundef @.str.43), !dbg !877
  br label %if.end30, !dbg !877

if.end30:                                         ; preds = %if.then29, %if.then25
  %34 = load ptr, ptr %out.addr, align 8, !dbg !878, !tbaa !210
  %35 = load ptr, ptr %str, align 8, !dbg !879, !tbaa !210
  call void @gt_str_append_cstr(ptr noundef %34, ptr noundef %35), !dbg !880
  %36 = load i8, ptr %table_key.addr, align 1, !dbg !881, !tbaa !795, !range !873, !noundef !874
  %tobool31 = trunc i8 %36 to i1, !dbg !881
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !883

if.then32:                                        ; preds = %if.end30
  %37 = load ptr, ptr %out.addr, align 8, !dbg !884, !tbaa !210
  call void @gt_str_append_cstr(ptr noundef %37, ptr noundef @.str.44), !dbg !885
  br label %if.end33, !dbg !885

if.end33:                                         ; preds = %if.then32, %if.end30
  call void @llvm.lifetime.end.p0(i64 8, ptr %str) #7, !dbg !886
  br label %if.end35, !dbg !887

if.else34:                                        ; preds = %if.else22
  %38 = load ptr, ptr %L.addr, align 8, !dbg !888, !tbaa !210
  call void @lua_settop(ptr noundef %38, i32 noundef -3), !dbg !888
  %39 = load ptr, ptr %err.addr, align 8, !dbg !890, !tbaa !210
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %39, ptr noundef @.str.45), !dbg !891
  store i32 -1, ptr %had_err, align 4, !dbg !892, !tbaa !216
  br label %if.end35

if.end35:                                         ; preds = %if.else34, %if.end33
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then19
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end15
  %40 = load i32, ptr %had_err, align 4, !dbg !893, !tbaa !216
  call void @llvm.lifetime.end.p0(i64 4, ptr %had_err) #7, !dbg !894
  ret i32 %40, !dbg !895
}

declare !dbg !896 void @gt_str_append_double(ptr noundef, double noundef, i32 noundef) #2

declare !dbg !899 void @lua_pushlstring(ptr noundef, ptr noundef, i64 noundef) #2

declare !dbg !902 void @lua_gettable(ptr noundef, i32 noundef) #2

declare !dbg !903 void @lua_pushstring(ptr noundef, ptr noundef) #2

declare !dbg !906 void @lua_call(ptr noundef, i32 noundef, i32 noundef) #2

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

!llvm.dbg.cu = !{!179}
!llvm.module.flags = !{!181, !182, !183, !184, !185}
!llvm.ident = !{!186}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 117, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/extended/luaserialize.c", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "e344bcdb26a38b6f735edc052acb7524")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2376, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 297)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 117, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 30)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 117, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 160, elements: !16)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!16 = !{!17}
!17 = !DISubrange(count: 20)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 117, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 28)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 118, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 34)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 120, type: !20, isLocal: true, isDefinition: true)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(scope: null, file: !2, line: 150, type: !32, isLocal: true, isDefinition: true)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 224, elements: !21)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 153, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1160, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 145)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 153, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 2)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 155, type: !40, isLocal: true, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !2, line: 159, type: !47, isLocal: true, isDefinition: true)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 7)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(scope: null, file: !2, line: 160, type: !52, isLocal: true, isDefinition: true)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 12)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(scope: null, file: !2, line: 162, type: !40, isLocal: true, isDefinition: true)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 164, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 3)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 168, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 26)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !2, line: 170, type: !69, isLocal: true, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 19)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !2, line: 171, type: !74, isLocal: true, isDefinition: true)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 5)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(scope: null, file: !2, line: 173, type: !79, isLocal: true, isDefinition: true)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 14)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(scope: null, file: !2, line: 175, type: !84, isLocal: true, isDefinition: true)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 4)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(scope: null, file: !2, line: 176, type: !89, isLocal: true, isDefinition: true)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !16)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(scope: null, file: !2, line: 177, type: !92, isLocal: true, isDefinition: true)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 27)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(scope: null, file: !2, line: 179, type: !74, isLocal: true, isDefinition: true)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(scope: null, file: !2, line: 181, type: !92, isLocal: true, isDefinition: true)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(scope: null, file: !2, line: 183, type: !101, isLocal: true, isDefinition: true)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 6)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(scope: null, file: !2, line: 184, type: !89, isLocal: true, isDefinition: true)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(scope: null, file: !2, line: 185, type: !84, isLocal: true, isDefinition: true)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(scope: null, file: !2, line: 185, type: !110, isLocal: true, isDefinition: true)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 39)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(scope: null, file: !2, line: 187, type: !69, isLocal: true, isDefinition: true)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(scope: null, file: !2, line: 188, type: !117, isLocal: true, isDefinition: true)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 21)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(scope: null, file: !2, line: 189, type: !9, isLocal: true, isDefinition: true)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(scope: null, file: !2, line: 191, type: !124, isLocal: true, isDefinition: true)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !125)
!125 = !{!126}
!126 = !DISubrange(count: 15)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(scope: null, file: !2, line: 192, type: !129, isLocal: true, isDefinition: true)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 17)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(scope: null, file: !2, line: 80, type: !134, isLocal: true, isDefinition: true)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 96, elements: !53)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(scope: null, file: !2, line: 81, type: !137, isLocal: true, isDefinition: true)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 22)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !59, isLocal: true, isDefinition: true)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(scope: null, file: !2, line: 91, type: !101, isLocal: true, isDefinition: true)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(scope: null, file: !2, line: 92, type: !84, isLocal: true, isDefinition: true)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(scope: null, file: !2, line: 95, type: !59, isLocal: true, isDefinition: true)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(scope: null, file: !2, line: 99, type: !84, isLocal: true, isDefinition: true)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !59, isLocal: true, isDefinition: true)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(scope: null, file: !2, line: 31, type: !154, isLocal: true, isDefinition: true)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 112, elements: !80)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(scope: null, file: !2, line: 32, type: !157, isLocal: true, isDefinition: true)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !158)
!158 = !{!159}
!159 = !DISubrange(count: 23)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(scope: null, file: !2, line: 38, type: !74, isLocal: true, isDefinition: true)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(scope: null, file: !2, line: 40, type: !101, isLocal: true, isDefinition: true)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(scope: null, file: !2, line: 53, type: !47, isLocal: true, isDefinition: true)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(scope: null, file: !2, line: 54, type: !47, isLocal: true, isDefinition: true)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(scope: null, file: !2, line: 56, type: !59, isLocal: true, isDefinition: true)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(scope: null, file: !2, line: 63, type: !40, isLocal: true, isDefinition: true)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !40, isLocal: true, isDefinition: true)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !176, isLocal: true, isDefinition: true)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 36)
!179 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !180, splitDebugInlining: false, nameTableKind: None)
!180 = !{!0, !7, !12, !18, !23, !28, !30, !33, !38, !43, !45, !50, !55, !57, !62, !67, !72, !77, !82, !87, !90, !95, !97, !99, !104, !106, !108, !113, !115, !120, !122, !127, !132, !135, !140, !142, !144, !146, !148, !150, !152, !155, !160, !162, !164, !166, !168, !170, !172, !174}
!181 = !{i32 7, !"Dwarf Version", i32 5}
!182 = !{i32 2, !"Debug Info Version", i32 3}
!183 = !{i32 1, !"wchar_size", i32 4}
!184 = !{i32 8, !"PIC Level", i32 2}
!185 = !{i32 7, !"uwtable", i32 2}
!186 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!187 = distinct !DISubprogram(name: "gt_lua_table_to_str", scope: !2, file: !2, line: 111, type: !188, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !179, retainedNodes: !203)
!188 = !DISubroutineType(types: !189)
!189 = !{!190, !191, !195, !190, !199}
!190 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_State", file: !193, line: 51, baseType: !194)
!193 = !DIFile(filename: "src/external/lua-5.1.5/src/lua.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "2408a5fa419905bcba8aacae60bcacdf")
!194 = !DICompositeType(tag: DW_TAG_structure_type, name: "lua_State", file: !193, line: 51, flags: DIFlagFwdDecl)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtStr", file: !197, line: 27, baseType: !198)
!197 = !DIFile(filename: "src/core/str_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "654ceffd2f9ff17a42a8522fe21401e1")
!198 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtStr", file: !197, line: 27, flags: DIFlagFwdDecl)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtError", file: !201, line: 44, baseType: !202)
!201 = !DIFile(filename: "src/core/error_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "0ad6f2e2c3b3d359d3ae1d5a6962bc56")
!202 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtError", file: !201, line: 44, flags: DIFlagFwdDecl)
!203 = !{!204, !205, !206, !207, !208, !209}
!204 = !DILocalVariable(name: "L", arg: 1, scope: !187, file: !2, line: 111, type: !191)
!205 = !DILocalVariable(name: "out", arg: 2, scope: !187, file: !2, line: 111, type: !195)
!206 = !DILocalVariable(name: "index", arg: 3, scope: !187, file: !2, line: 111, type: !190)
!207 = !DILocalVariable(name: "err", arg: 4, scope: !187, file: !2, line: 111, type: !199)
!208 = !DILocalVariable(name: "had_err", scope: !187, file: !2, line: 113, type: !190)
!209 = !DILocalVariable(name: "stack_size", scope: !187, file: !2, line: 115, type: !190)
!210 = !{!211, !211, i64 0}
!211 = !{!"any pointer", !212, i64 0}
!212 = !{!"omnipotent char", !213, i64 0}
!213 = !{!"Simple C/C++ TBAA"}
!214 = !DILocation(line: 111, column: 36, scope: !187)
!215 = !DILocation(line: 111, column: 46, scope: !187)
!216 = !{!217, !217, i64 0}
!217 = !{!"int", !212, i64 0}
!218 = !DILocation(line: 111, column: 55, scope: !187)
!219 = !DILocation(line: 111, column: 71, scope: !187)
!220 = !DILocation(line: 113, column: 3, scope: !187)
!221 = !DILocation(line: 113, column: 7, scope: !187)
!222 = !DILocation(line: 115, column: 3, scope: !187)
!223 = !DILocation(line: 115, column: 7, scope: !187)
!224 = !DILocation(line: 115, column: 31, scope: !187)
!225 = !DILocation(line: 115, column: 20, scope: !187)
!226 = !DILocation(line: 117, column: 3, scope: !187)
!227 = !DILocation(line: 117, column: 3, scope: !228)
!228 = distinct !DILexicalBlock(scope: !229, file: !2, line: 117, column: 3)
!229 = distinct !DILexicalBlock(scope: !187, file: !2, line: 117, column: 3)
!230 = !DILocation(line: 117, column: 3, scope: !229)
!231 = !DILocation(line: 117, column: 3, scope: !232)
!232 = distinct !DILexicalBlock(scope: !228, file: !2, line: 117, column: 3)
!233 = !DILocation(line: 118, column: 3, scope: !187)
!234 = !DILocation(line: 118, column: 3, scope: !235)
!235 = distinct !DILexicalBlock(scope: !236, file: !2, line: 118, column: 3)
!236 = distinct !DILexicalBlock(scope: !187, file: !2, line: 118, column: 3)
!237 = !DILocation(line: 118, column: 3, scope: !236)
!238 = !DILocation(line: 118, column: 3, scope: !239)
!239 = distinct !DILexicalBlock(scope: !235, file: !2, line: 118, column: 3)
!240 = !DILocation(line: 119, column: 25, scope: !187)
!241 = !DILocation(line: 119, column: 28, scope: !187)
!242 = !DILocation(line: 119, column: 33, scope: !187)
!243 = !DILocation(line: 119, column: 43, scope: !187)
!244 = !DILocation(line: 119, column: 13, scope: !187)
!245 = !DILocation(line: 119, column: 11, scope: !187)
!246 = !DILocation(line: 120, column: 3, scope: !187)
!247 = !DILocation(line: 120, column: 3, scope: !248)
!248 = distinct !DILexicalBlock(scope: !249, file: !2, line: 120, column: 3)
!249 = distinct !DILexicalBlock(scope: !187, file: !2, line: 120, column: 3)
!250 = !DILocation(line: 120, column: 3, scope: !249)
!251 = !DILocation(line: 120, column: 3, scope: !252)
!252 = distinct !DILexicalBlock(scope: !248, file: !2, line: 120, column: 3)
!253 = !DILocation(line: 121, column: 10, scope: !187)
!254 = !DILocation(line: 122, column: 1, scope: !187)
!255 = !DILocation(line: 121, column: 3, scope: !187)
!256 = !DISubprogram(name: "lua_gettop", scope: !193, file: !193, line: 121, type: !257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!257 = !DISubroutineType(types: !258)
!258 = !{!190, !191}
!259 = !DISubprogram(name: "gt_error_is_set", scope: !201, file: !201, line: 64, type: !260, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!260 = !DISubroutineType(types: !261)
!261 = !{!262, !263}
!262 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!265 = !DISubprogram(name: "fprintf", scope: !266, file: !266, line: 350, type: !267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!266 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!267 = !DISubroutineType(types: !268)
!268 = !{!190, !269, !328, null}
!269 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !272, line: 7, baseType: !273)
!272 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !274, line: 49, size: 1728, elements: !275)
!274 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!275 = !{!276, !277, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !292, !294, !295, !296, !300, !302, !304, !308, !311, !313, !316, !319, !320, !322, !326, !327}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !273, file: !274, line: 51, baseType: !190, size: 32)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !273, file: !274, line: 54, baseType: !278, size: 64, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !273, file: !274, line: 55, baseType: !278, size: 64, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !273, file: !274, line: 56, baseType: !278, size: 64, offset: 192)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !273, file: !274, line: 57, baseType: !278, size: 64, offset: 256)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !273, file: !274, line: 58, baseType: !278, size: 64, offset: 320)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !273, file: !274, line: 59, baseType: !278, size: 64, offset: 384)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !273, file: !274, line: 60, baseType: !278, size: 64, offset: 448)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !273, file: !274, line: 61, baseType: !278, size: 64, offset: 512)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !273, file: !274, line: 64, baseType: !278, size: 64, offset: 576)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !273, file: !274, line: 65, baseType: !278, size: 64, offset: 640)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !273, file: !274, line: 66, baseType: !278, size: 64, offset: 704)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !273, file: !274, line: 68, baseType: !290, size: 64, offset: 768)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !274, line: 36, flags: DIFlagFwdDecl)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !273, file: !274, line: 70, baseType: !293, size: 64, offset: 832)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !273, file: !274, line: 72, baseType: !190, size: 32, offset: 896)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !273, file: !274, line: 73, baseType: !190, size: 32, offset: 928)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !273, file: !274, line: 74, baseType: !297, size: 64, offset: 960)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !298, line: 152, baseType: !299)
!298 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!299 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !273, file: !274, line: 77, baseType: !301, size: 16, offset: 1024)
!301 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !273, file: !274, line: 78, baseType: !303, size: 8, offset: 1040)
!303 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !273, file: !274, line: 79, baseType: !305, size: 8, offset: 1048)
!305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !306)
!306 = !{!307}
!307 = !DISubrange(count: 1)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !273, file: !274, line: 81, baseType: !309, size: 64, offset: 1088)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !274, line: 43, baseType: null)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !273, file: !274, line: 89, baseType: !312, size: 64, offset: 1152)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !298, line: 153, baseType: !299)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !273, file: !274, line: 91, baseType: !314, size: 64, offset: 1216)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !274, line: 37, flags: DIFlagFwdDecl)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !273, file: !274, line: 92, baseType: !317, size: 64, offset: 1280)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !274, line: 38, flags: DIFlagFwdDecl)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !273, file: !274, line: 93, baseType: !293, size: 64, offset: 1344)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !273, file: !274, line: 94, baseType: !321, size: 64, offset: 1408)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !273, file: !274, line: 95, baseType: !323, size: 64, offset: 1472)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !324, line: 70, baseType: !325)
!324 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!325 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !273, file: !274, line: 96, baseType: !190, size: 32, offset: 1536)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !273, file: !274, line: 98, baseType: !89, size: 160, offset: 1568)
!328 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!330 = !DISubprogram(name: "abort", scope: !331, file: !331, line: 598, type: !332, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!331 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!332 = !DISubroutineType(types: !333)
!333 = !{null}
!334 = !DISubprogram(name: "lua_type", scope: !193, file: !193, line: 140, type: !335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!335 = !DISubroutineType(types: !336)
!336 = !{!190, !191, !190}
!337 = distinct !DISubprogram(name: "parse_table", scope: !2, file: !2, line: 76, type: !338, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !179, retainedNodes: !340)
!338 = !DISubroutineType(types: !339)
!339 = !{!190, !191, !195, !190, !190, !199}
!340 = !{!341, !342, !343, !344, !345, !346, !347, !348}
!341 = !DILocalVariable(name: "L", arg: 1, scope: !337, file: !2, line: 76, type: !191)
!342 = !DILocalVariable(name: "out", arg: 2, scope: !337, file: !2, line: 76, type: !195)
!343 = !DILocalVariable(name: "index", arg: 3, scope: !337, file: !2, line: 76, type: !190)
!344 = !DILocalVariable(name: "level", arg: 4, scope: !337, file: !2, line: 76, type: !190)
!345 = !DILocalVariable(name: "err", arg: 5, scope: !337, file: !2, line: 77, type: !199)
!346 = !DILocalVariable(name: "rval", scope: !337, file: !2, line: 79, type: !190)
!347 = !DILocalVariable(name: "had_err", scope: !337, file: !2, line: 79, type: !190)
!348 = !DILocalVariable(name: "i", scope: !349, file: !2, line: 87, type: !190)
!349 = distinct !DILexicalBlock(scope: !337, file: !2, line: 86, column: 3)
!350 = !DILocation(line: 76, column: 35, scope: !337)
!351 = !DILocation(line: 76, column: 45, scope: !337)
!352 = !DILocation(line: 76, column: 54, scope: !337)
!353 = !DILocation(line: 76, column: 65, scope: !337)
!354 = !DILocation(line: 77, column: 33, scope: !337)
!355 = !DILocation(line: 79, column: 3, scope: !337)
!356 = !DILocation(line: 79, column: 17, scope: !337)
!357 = !DILocation(line: 79, column: 23, scope: !337)
!358 = !DILocation(line: 80, column: 3, scope: !337)
!359 = !DILocation(line: 80, column: 3, scope: !360)
!360 = distinct !DILexicalBlock(scope: !361, file: !2, line: 80, column: 3)
!361 = distinct !DILexicalBlock(scope: !337, file: !2, line: 80, column: 3)
!362 = !DILocation(line: 80, column: 3, scope: !361)
!363 = !DILocation(line: 80, column: 3, scope: !364)
!364 = distinct !DILexicalBlock(scope: !360, file: !2, line: 80, column: 3)
!365 = !DILocation(line: 81, column: 3, scope: !337)
!366 = !DILocation(line: 81, column: 3, scope: !367)
!367 = distinct !DILexicalBlock(scope: !368, file: !2, line: 81, column: 3)
!368 = distinct !DILexicalBlock(scope: !337, file: !2, line: 81, column: 3)
!369 = !DILocation(line: 81, column: 3, scope: !368)
!370 = !DILocation(line: 81, column: 3, scope: !371)
!371 = distinct !DILexicalBlock(scope: !367, file: !2, line: 81, column: 3)
!372 = !DILocation(line: 82, column: 15, scope: !337)
!373 = !DILocation(line: 82, column: 3, scope: !337)
!374 = !DILocation(line: 83, column: 7, scope: !375)
!375 = distinct !DILexicalBlock(scope: !337, file: !2, line: 83, column: 7)
!376 = !DILocation(line: 83, column: 13, scope: !375)
!377 = !DILocation(line: 83, column: 7, scope: !337)
!378 = !DILocation(line: 84, column: 10, scope: !375)
!379 = !DILocation(line: 84, column: 5, scope: !375)
!380 = !DILocation(line: 85, column: 3, scope: !337)
!381 = !DILocation(line: 85, column: 11, scope: !337)
!382 = !DILocation(line: 85, column: 19, scope: !337)
!383 = !DILocation(line: 85, column: 32, scope: !337)
!384 = !DILocation(line: 85, column: 35, scope: !337)
!385 = !DILocation(line: 85, column: 23, scope: !337)
!386 = !DILocation(line: 85, column: 42, scope: !337)
!387 = !DILocation(line: 0, scope: !337)
!388 = !DILocation(line: 87, column: 5, scope: !349)
!389 = !DILocation(line: 87, column: 9, scope: !349)
!390 = !DILocation(line: 88, column: 11, scope: !391)
!391 = distinct !DILexicalBlock(scope: !349, file: !2, line: 88, column: 5)
!392 = !DILocation(line: 88, column: 10, scope: !391)
!393 = !DILocation(line: 88, column: 14, scope: !394)
!394 = distinct !DILexicalBlock(scope: !391, file: !2, line: 88, column: 5)
!395 = !DILocation(line: 88, column: 16, scope: !394)
!396 = !DILocation(line: 88, column: 15, scope: !394)
!397 = !DILocation(line: 88, column: 5, scope: !391)
!398 = !DILocation(line: 89, column: 26, scope: !394)
!399 = !DILocation(line: 89, column: 7, scope: !394)
!400 = !DILocation(line: 88, column: 23, scope: !394)
!401 = !DILocation(line: 88, column: 5, scope: !394)
!402 = distinct !{!402, !397, !403, !404}
!403 = !DILocation(line: 89, column: 35, scope: !391)
!404 = !{!"llvm.loop.mustprogress"}
!405 = !DILocation(line: 90, column: 26, scope: !349)
!406 = !DILocation(line: 90, column: 29, scope: !349)
!407 = !DILocation(line: 90, column: 12, scope: !349)
!408 = !DILocation(line: 90, column: 10, scope: !349)
!409 = !DILocation(line: 91, column: 5, scope: !349)
!410 = !DILocation(line: 91, column: 5, scope: !411)
!411 = distinct !DILexicalBlock(scope: !412, file: !2, line: 91, column: 5)
!412 = distinct !DILexicalBlock(scope: !349, file: !2, line: 91, column: 5)
!413 = !DILocation(line: 91, column: 5, scope: !412)
!414 = !DILocation(line: 91, column: 5, scope: !415)
!415 = distinct !DILexicalBlock(scope: !411, file: !2, line: 91, column: 5)
!416 = !DILocation(line: 92, column: 24, scope: !349)
!417 = !DILocation(line: 92, column: 5, scope: !349)
!418 = !DILocation(line: 93, column: 9, scope: !419)
!419 = distinct !DILexicalBlock(scope: !349, file: !2, line: 93, column: 9)
!420 = !DILocation(line: 93, column: 9, scope: !349)
!421 = !DILocation(line: 95, column: 26, scope: !422)
!422 = distinct !DILexicalBlock(scope: !419, file: !2, line: 94, column: 5)
!423 = !DILocation(line: 95, column: 7, scope: !422)
!424 = !DILocation(line: 96, column: 29, scope: !422)
!425 = !DILocation(line: 96, column: 32, scope: !422)
!426 = !DILocation(line: 96, column: 41, scope: !422)
!427 = !DILocation(line: 96, column: 46, scope: !422)
!428 = !DILocation(line: 96, column: 50, scope: !422)
!429 = !DILocation(line: 96, column: 17, scope: !422)
!430 = !DILocation(line: 96, column: 15, scope: !422)
!431 = !DILocation(line: 97, column: 13, scope: !432)
!432 = distinct !DILexicalBlock(scope: !422, file: !2, line: 97, column: 7)
!433 = !DILocation(line: 97, column: 12, scope: !432)
!434 = !DILocation(line: 97, column: 16, scope: !435)
!435 = distinct !DILexicalBlock(scope: !432, file: !2, line: 97, column: 7)
!436 = !DILocation(line: 97, column: 18, scope: !435)
!437 = !DILocation(line: 97, column: 17, scope: !435)
!438 = !DILocation(line: 97, column: 7, scope: !432)
!439 = !DILocation(line: 98, column: 28, scope: !435)
!440 = !DILocation(line: 98, column: 9, scope: !435)
!441 = !DILocation(line: 97, column: 25, scope: !435)
!442 = !DILocation(line: 97, column: 7, scope: !435)
!443 = distinct !{!443, !438, !444, !404}
!444 = !DILocation(line: 98, column: 37, scope: !432)
!445 = !DILocation(line: 99, column: 26, scope: !422)
!446 = !DILocation(line: 99, column: 7, scope: !422)
!447 = !DILocation(line: 100, column: 5, scope: !422)
!448 = !DILocation(line: 103, column: 31, scope: !449)
!449 = distinct !DILexicalBlock(scope: !419, file: !2, line: 102, column: 5)
!450 = !DILocation(line: 103, column: 34, scope: !449)
!451 = !DILocation(line: 103, column: 50, scope: !449)
!452 = !DILocation(line: 103, column: 17, scope: !449)
!453 = !DILocation(line: 103, column: 15, scope: !449)
!454 = !DILocation(line: 104, column: 26, scope: !449)
!455 = !DILocation(line: 104, column: 7, scope: !449)
!456 = !DILocation(line: 106, column: 5, scope: !349)
!457 = !DILocation(line: 107, column: 3, scope: !337)
!458 = distinct !{!458, !380, !457, !404}
!459 = !DILocation(line: 108, column: 10, scope: !337)
!460 = !DILocation(line: 109, column: 1, scope: !337)
!461 = !DILocation(line: 108, column: 3, scope: !337)
!462 = distinct !DISubprogram(name: "gt_lua_serializer_unit_test", scope: !2, file: !2, line: 124, type: !463, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !179, retainedNodes: !465)
!463 = !DISubroutineType(types: !464)
!464 = !{!190, !199}
!465 = !{!466, !467, !468, !469, !470}
!466 = !DILocalVariable(name: "err", arg: 1, scope: !462, file: !2, line: 124, type: !199)
!467 = !DILocalVariable(name: "had_err", scope: !462, file: !2, line: 126, type: !190)
!468 = !DILocalVariable(name: "L", scope: !462, file: !2, line: 127, type: !191)
!469 = !DILocalVariable(name: "outstr", scope: !462, file: !2, line: 128, type: !195)
!470 = !DILocalVariable(name: "testtable", scope: !462, file: !2, line: 129, type: !471)
!471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 5048, elements: !472)
!472 = !{!473}
!473 = !DISubrange(count: 631)
!474 = !DILocation(line: 124, column: 42, scope: !462)
!475 = !DILocation(line: 126, column: 3, scope: !462)
!476 = !DILocation(line: 126, column: 7, scope: !462)
!477 = !DILocation(line: 127, column: 3, scope: !462)
!478 = !DILocation(line: 127, column: 14, scope: !462)
!479 = !DILocation(line: 128, column: 3, scope: !462)
!480 = !DILocation(line: 128, column: 10, scope: !462)
!481 = !DILocation(line: 128, column: 20, scope: !462)
!482 = !DILocation(line: 129, column: 3, scope: !462)
!483 = !DILocation(line: 129, column: 14, scope: !462)
!484 = !DILocation(line: 150, column: 3, scope: !462)
!485 = !DILocation(line: 150, column: 3, scope: !486)
!486 = distinct !DILexicalBlock(scope: !487, file: !2, line: 150, column: 3)
!487 = distinct !DILexicalBlock(scope: !462, file: !2, line: 150, column: 3)
!488 = !DILocation(line: 150, column: 3, scope: !487)
!489 = !DILocation(line: 150, column: 3, scope: !490)
!490 = distinct !DILexicalBlock(scope: !486, file: !2, line: 150, column: 3)
!491 = !DILocation(line: 152, column: 7, scope: !462)
!492 = !DILocation(line: 152, column: 5, scope: !462)
!493 = !DILocation(line: 153, column: 3, scope: !462)
!494 = !DILocation(line: 153, column: 3, scope: !495)
!495 = distinct !DILexicalBlock(scope: !496, file: !2, line: 153, column: 3)
!496 = distinct !DILexicalBlock(scope: !462, file: !2, line: 153, column: 3)
!497 = !DILocation(line: 153, column: 3, scope: !496)
!498 = !DILocation(line: 153, column: 3, scope: !499)
!499 = distinct !DILexicalBlock(scope: !500, file: !2, line: 153, column: 3)
!500 = distinct !DILexicalBlock(scope: !495, file: !2, line: 153, column: 3)
!501 = !DILocation(line: 153, column: 3, scope: !500)
!502 = !DILocation(line: 153, column: 3, scope: !503)
!503 = distinct !DILexicalBlock(scope: !499, file: !2, line: 153, column: 3)
!504 = !DILocation(line: 154, column: 17, scope: !462)
!505 = !DILocation(line: 154, column: 3, scope: !462)
!506 = !DILocation(line: 155, column: 29, scope: !462)
!507 = !DILocation(line: 155, column: 32, scope: !462)
!508 = !DILocation(line: 155, column: 13, scope: !462)
!509 = !DILocation(line: 155, column: 70, scope: !462)
!510 = !DILocation(line: 156, column: 25, scope: !462)
!511 = !DILocation(line: 156, column: 15, scope: !462)
!512 = !DILocation(line: 155, column: 11, scope: !462)
!513 = !DILocation(line: 157, column: 8, scope: !514)
!514 = distinct !DILexicalBlock(scope: !462, file: !2, line: 157, column: 7)
!515 = !DILocation(line: 157, column: 7, scope: !462)
!516 = !DILocation(line: 159, column: 5, scope: !517)
!517 = distinct !DILexicalBlock(scope: !514, file: !2, line: 158, column: 3)
!518 = !DILocation(line: 160, column: 24, scope: !517)
!519 = !DILocation(line: 160, column: 5, scope: !517)
!520 = !DILocation(line: 161, column: 25, scope: !517)
!521 = !DILocation(line: 161, column: 28, scope: !517)
!522 = !DILocation(line: 161, column: 40, scope: !517)
!523 = !DILocation(line: 161, column: 5, scope: !517)
!524 = !DILocation(line: 162, column: 24, scope: !517)
!525 = !DILocation(line: 162, column: 5, scope: !517)
!526 = !DILocation(line: 163, column: 31, scope: !517)
!527 = !DILocation(line: 163, column: 45, scope: !517)
!528 = !DILocation(line: 163, column: 34, scope: !517)
!529 = !DILocation(line: 164, column: 45, scope: !517)
!530 = !DILocation(line: 164, column: 31, scope: !517)
!531 = !DILocation(line: 163, column: 15, scope: !517)
!532 = !DILocation(line: 164, column: 60, scope: !517)
!533 = !DILocation(line: 165, column: 25, scope: !517)
!534 = !DILocation(line: 165, column: 15, scope: !517)
!535 = !DILocation(line: 163, column: 13, scope: !517)
!536 = !DILocation(line: 166, column: 10, scope: !537)
!537 = distinct !DILexicalBlock(scope: !517, file: !2, line: 166, column: 9)
!538 = !DILocation(line: 166, column: 9, scope: !517)
!539 = !DILocation(line: 168, column: 7, scope: !540)
!540 = distinct !DILexicalBlock(scope: !537, file: !2, line: 167, column: 5)
!541 = !DILocation(line: 168, column: 7, scope: !542)
!542 = distinct !DILexicalBlock(scope: !543, file: !2, line: 168, column: 7)
!543 = distinct !DILexicalBlock(scope: !540, file: !2, line: 168, column: 7)
!544 = !DILocation(line: 168, column: 7, scope: !543)
!545 = !DILocation(line: 168, column: 7, scope: !546)
!546 = distinct !DILexicalBlock(scope: !547, file: !2, line: 168, column: 7)
!547 = distinct !DILexicalBlock(scope: !542, file: !2, line: 168, column: 7)
!548 = !DILocation(line: 168, column: 7, scope: !547)
!549 = !DILocation(line: 168, column: 7, scope: !550)
!550 = distinct !DILexicalBlock(scope: !546, file: !2, line: 168, column: 7)
!551 = !DILocation(line: 169, column: 7, scope: !540)
!552 = !DILocation(line: 170, column: 7, scope: !540)
!553 = !DILocation(line: 170, column: 7, scope: !554)
!554 = distinct !DILexicalBlock(scope: !555, file: !2, line: 170, column: 7)
!555 = distinct !DILexicalBlock(scope: !540, file: !2, line: 170, column: 7)
!556 = !DILocation(line: 170, column: 7, scope: !555)
!557 = !DILocation(line: 170, column: 7, scope: !558)
!558 = distinct !DILexicalBlock(scope: !559, file: !2, line: 170, column: 7)
!559 = distinct !DILexicalBlock(scope: !554, file: !2, line: 170, column: 7)
!560 = !DILocation(line: 170, column: 7, scope: !559)
!561 = !DILocation(line: 170, column: 7, scope: !562)
!562 = distinct !DILexicalBlock(scope: !558, file: !2, line: 170, column: 7)
!563 = !DILocation(line: 171, column: 20, scope: !540)
!564 = !DILocation(line: 171, column: 7, scope: !540)
!565 = !DILocation(line: 172, column: 7, scope: !540)
!566 = !DILocation(line: 172, column: 7, scope: !567)
!567 = distinct !DILexicalBlock(scope: !568, file: !2, line: 172, column: 7)
!568 = distinct !DILexicalBlock(scope: !540, file: !2, line: 172, column: 7)
!569 = !DILocation(line: 172, column: 7, scope: !568)
!570 = !DILocation(line: 172, column: 7, scope: !571)
!571 = distinct !DILexicalBlock(scope: !572, file: !2, line: 172, column: 7)
!572 = distinct !DILexicalBlock(scope: !567, file: !2, line: 172, column: 7)
!573 = !DILocation(line: 172, column: 7, scope: !572)
!574 = !DILocation(line: 172, column: 7, scope: !575)
!575 = distinct !DILexicalBlock(scope: !571, file: !2, line: 172, column: 7)
!576 = !DILocation(line: 173, column: 20, scope: !540)
!577 = !DILocation(line: 173, column: 7, scope: !540)
!578 = !DILocation(line: 174, column: 7, scope: !540)
!579 = !DILocation(line: 174, column: 7, scope: !580)
!580 = distinct !DILexicalBlock(scope: !581, file: !2, line: 174, column: 7)
!581 = distinct !DILexicalBlock(scope: !540, file: !2, line: 174, column: 7)
!582 = !DILocation(line: 174, column: 7, scope: !581)
!583 = !DILocation(line: 174, column: 7, scope: !584)
!584 = distinct !DILexicalBlock(scope: !585, file: !2, line: 174, column: 7)
!585 = distinct !DILexicalBlock(scope: !580, file: !2, line: 174, column: 7)
!586 = !DILocation(line: 174, column: 7, scope: !585)
!587 = !DILocation(line: 174, column: 7, scope: !588)
!588 = distinct !DILexicalBlock(scope: !584, file: !2, line: 174, column: 7)
!589 = !DILocation(line: 175, column: 20, scope: !540)
!590 = !DILocation(line: 175, column: 7, scope: !540)
!591 = !DILocation(line: 176, column: 7, scope: !540)
!592 = !DILocation(line: 176, column: 7, scope: !593)
!593 = distinct !DILexicalBlock(scope: !594, file: !2, line: 176, column: 7)
!594 = distinct !DILexicalBlock(scope: !540, file: !2, line: 176, column: 7)
!595 = !DILocation(line: 176, column: 7, scope: !594)
!596 = !DILocation(line: 176, column: 7, scope: !597)
!597 = distinct !DILexicalBlock(scope: !598, file: !2, line: 176, column: 7)
!598 = distinct !DILexicalBlock(scope: !593, file: !2, line: 176, column: 7)
!599 = !DILocation(line: 176, column: 7, scope: !598)
!600 = !DILocation(line: 176, column: 7, scope: !601)
!601 = distinct !DILexicalBlock(scope: !597, file: !2, line: 176, column: 7)
!602 = !DILocation(line: 177, column: 7, scope: !540)
!603 = !DILocation(line: 177, column: 7, scope: !604)
!604 = distinct !DILexicalBlock(scope: !605, file: !2, line: 177, column: 7)
!605 = distinct !DILexicalBlock(scope: !540, file: !2, line: 177, column: 7)
!606 = !DILocation(line: 177, column: 7, scope: !605)
!607 = !DILocation(line: 177, column: 7, scope: !608)
!608 = distinct !DILexicalBlock(scope: !609, file: !2, line: 177, column: 7)
!609 = distinct !DILexicalBlock(scope: !604, file: !2, line: 177, column: 7)
!610 = !DILocation(line: 177, column: 7, scope: !609)
!611 = !DILocation(line: 177, column: 7, scope: !612)
!612 = distinct !DILexicalBlock(scope: !608, file: !2, line: 177, column: 7)
!613 = !DILocation(line: 178, column: 7, scope: !540)
!614 = !DILocation(line: 179, column: 20, scope: !540)
!615 = !DILocation(line: 179, column: 7, scope: !540)
!616 = !DILocation(line: 180, column: 7, scope: !540)
!617 = !DILocation(line: 180, column: 7, scope: !618)
!618 = distinct !DILexicalBlock(scope: !619, file: !2, line: 180, column: 7)
!619 = distinct !DILexicalBlock(scope: !540, file: !2, line: 180, column: 7)
!620 = !DILocation(line: 180, column: 7, scope: !619)
!621 = !DILocation(line: 180, column: 7, scope: !622)
!622 = distinct !DILexicalBlock(scope: !623, file: !2, line: 180, column: 7)
!623 = distinct !DILexicalBlock(scope: !618, file: !2, line: 180, column: 7)
!624 = !DILocation(line: 180, column: 7, scope: !623)
!625 = !DILocation(line: 180, column: 7, scope: !626)
!626 = distinct !DILexicalBlock(scope: !622, file: !2, line: 180, column: 7)
!627 = !DILocation(line: 181, column: 7, scope: !540)
!628 = !DILocation(line: 181, column: 7, scope: !629)
!629 = distinct !DILexicalBlock(scope: !630, file: !2, line: 181, column: 7)
!630 = distinct !DILexicalBlock(scope: !540, file: !2, line: 181, column: 7)
!631 = !DILocation(line: 181, column: 7, scope: !630)
!632 = !DILocation(line: 181, column: 7, scope: !633)
!633 = distinct !DILexicalBlock(scope: !634, file: !2, line: 181, column: 7)
!634 = distinct !DILexicalBlock(scope: !629, file: !2, line: 181, column: 7)
!635 = !DILocation(line: 181, column: 7, scope: !634)
!636 = !DILocation(line: 181, column: 7, scope: !637)
!637 = distinct !DILexicalBlock(scope: !633, file: !2, line: 181, column: 7)
!638 = !DILocation(line: 182, column: 7, scope: !540)
!639 = !DILocation(line: 183, column: 20, scope: !540)
!640 = !DILocation(line: 183, column: 7, scope: !540)
!641 = !DILocation(line: 184, column: 7, scope: !540)
!642 = !DILocation(line: 184, column: 7, scope: !643)
!643 = distinct !DILexicalBlock(scope: !644, file: !2, line: 184, column: 7)
!644 = distinct !DILexicalBlock(scope: !540, file: !2, line: 184, column: 7)
!645 = !DILocation(line: 184, column: 7, scope: !644)
!646 = !DILocation(line: 184, column: 7, scope: !647)
!647 = distinct !DILexicalBlock(scope: !648, file: !2, line: 184, column: 7)
!648 = distinct !DILexicalBlock(scope: !643, file: !2, line: 184, column: 7)
!649 = !DILocation(line: 184, column: 7, scope: !648)
!650 = !DILocation(line: 184, column: 7, scope: !651)
!651 = distinct !DILexicalBlock(scope: !647, file: !2, line: 184, column: 7)
!652 = !DILocation(line: 185, column: 7, scope: !540)
!653 = !DILocation(line: 185, column: 7, scope: !654)
!654 = distinct !DILexicalBlock(scope: !655, file: !2, line: 185, column: 7)
!655 = distinct !DILexicalBlock(scope: !540, file: !2, line: 185, column: 7)
!656 = !DILocation(line: 185, column: 7, scope: !655)
!657 = !DILocation(line: 185, column: 7, scope: !658)
!658 = distinct !DILexicalBlock(scope: !659, file: !2, line: 185, column: 7)
!659 = distinct !DILexicalBlock(scope: !654, file: !2, line: 185, column: 7)
!660 = !DILocation(line: 185, column: 7, scope: !659)
!661 = !DILocation(line: 185, column: 7, scope: !662)
!662 = distinct !DILexicalBlock(scope: !658, file: !2, line: 185, column: 7)
!663 = !DILocation(line: 186, column: 7, scope: !540)
!664 = !DILocation(line: 187, column: 20, scope: !540)
!665 = !DILocation(line: 187, column: 7, scope: !540)
!666 = !DILocation(line: 188, column: 7, scope: !540)
!667 = !DILocation(line: 188, column: 7, scope: !668)
!668 = distinct !DILexicalBlock(scope: !669, file: !2, line: 188, column: 7)
!669 = distinct !DILexicalBlock(scope: !540, file: !2, line: 188, column: 7)
!670 = !DILocation(line: 188, column: 7, scope: !669)
!671 = !DILocation(line: 188, column: 7, scope: !672)
!672 = distinct !DILexicalBlock(scope: !673, file: !2, line: 188, column: 7)
!673 = distinct !DILexicalBlock(scope: !668, file: !2, line: 188, column: 7)
!674 = !DILocation(line: 188, column: 7, scope: !673)
!675 = !DILocation(line: 188, column: 7, scope: !676)
!676 = distinct !DILexicalBlock(scope: !672, file: !2, line: 188, column: 7)
!677 = !DILocation(line: 189, column: 7, scope: !540)
!678 = !DILocation(line: 189, column: 7, scope: !679)
!679 = distinct !DILexicalBlock(scope: !680, file: !2, line: 189, column: 7)
!680 = distinct !DILexicalBlock(scope: !540, file: !2, line: 189, column: 7)
!681 = !DILocation(line: 189, column: 7, scope: !680)
!682 = !DILocation(line: 189, column: 7, scope: !683)
!683 = distinct !DILexicalBlock(scope: !684, file: !2, line: 189, column: 7)
!684 = distinct !DILexicalBlock(scope: !679, file: !2, line: 189, column: 7)
!685 = !DILocation(line: 189, column: 7, scope: !684)
!686 = !DILocation(line: 189, column: 7, scope: !687)
!687 = distinct !DILexicalBlock(scope: !683, file: !2, line: 189, column: 7)
!688 = !DILocation(line: 190, column: 7, scope: !540)
!689 = !DILocation(line: 191, column: 20, scope: !540)
!690 = !DILocation(line: 191, column: 7, scope: !540)
!691 = !DILocation(line: 192, column: 7, scope: !540)
!692 = !DILocation(line: 192, column: 7, scope: !693)
!693 = distinct !DILexicalBlock(scope: !694, file: !2, line: 192, column: 7)
!694 = distinct !DILexicalBlock(scope: !540, file: !2, line: 192, column: 7)
!695 = !DILocation(line: 192, column: 7, scope: !694)
!696 = !DILocation(line: 192, column: 7, scope: !697)
!697 = distinct !DILexicalBlock(scope: !698, file: !2, line: 192, column: 7)
!698 = distinct !DILexicalBlock(scope: !693, file: !2, line: 192, column: 7)
!699 = !DILocation(line: 192, column: 7, scope: !698)
!700 = !DILocation(line: 192, column: 7, scope: !701)
!701 = distinct !DILexicalBlock(scope: !697, file: !2, line: 192, column: 7)
!702 = !DILocation(line: 193, column: 7, scope: !540)
!703 = !DILocation(line: 194, column: 5, scope: !540)
!704 = !DILocation(line: 195, column: 3, scope: !517)
!705 = !DILocation(line: 196, column: 17, scope: !462)
!706 = !DILocation(line: 196, column: 3, scope: !462)
!707 = !DILocation(line: 197, column: 13, scope: !462)
!708 = !DILocation(line: 197, column: 3, scope: !462)
!709 = !DILocation(line: 198, column: 10, scope: !462)
!710 = !DILocation(line: 199, column: 1, scope: !462)
!711 = !DILocation(line: 198, column: 3, scope: !462)
!712 = !DISubprogram(name: "gt_str_new", scope: !197, file: !197, line: 30, type: !713, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!713 = !DISubroutineType(types: !714)
!714 = !{!195}
!715 = !DISubprogram(name: "luaL_newstate", scope: !716, file: !716, line: 82, type: !717, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!716 = !DIFile(filename: "src/external/lua-5.1.5/src/lauxlib.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "9ee455010892bdf666d56ba254ef06e5")
!717 = !DISubroutineType(types: !718)
!718 = !{!191}
!719 = !DISubprogram(name: "gt_error_set", scope: !201, file: !201, line: 56, type: !720, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!720 = !DISubroutineType(types: !721)
!721 = !{null, !199, !329, null}
!722 = !DISubprogram(name: "luaL_openlibs", scope: !723, file: !723, line: 44, type: !724, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!723 = !DIFile(filename: "src/external/lua-5.1.5/src/lualib.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "03b9f9c3f7a82bee2f7eab03315eae7d")
!724 = !DISubroutineType(types: !725)
!725 = !{null, !191}
!726 = !DISubprogram(name: "luaL_loadbuffer", scope: !716, file: !716, line: 78, type: !727, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!727 = !DISubroutineType(types: !728)
!728 = !{!190, !191, !329, !323, !329}
!729 = !DISubprogram(name: "lua_pcall", scope: !193, file: !193, line: 203, type: !730, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!730 = !DISubroutineType(types: !731)
!731 = !{!190, !191, !190, !190, !190}
!732 = !DISubprogram(name: "lua_getfield", scope: !193, file: !193, line: 179, type: !733, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!733 = !DISubroutineType(types: !734)
!734 = !{null, !191, !190, !329}
!735 = !DISubprogram(name: "gt_str_append_cstr", scope: !197, file: !197, line: 46, type: !736, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!736 = !DISubroutineType(types: !737)
!737 = !{null, !195, !329}
!738 = !DISubprogram(name: "gt_str_get", scope: !197, file: !197, line: 40, type: !739, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!739 = !DISubroutineType(types: !740)
!740 = !{!278, !741}
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!743 = !DISubprogram(name: "gt_str_length", scope: !197, file: !197, line: 74, type: !744, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!744 = !DISubroutineType(types: !745)
!745 = !{!746, !741}
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtUword", file: !747, line: 83, baseType: !325)
!747 = !DIFile(filename: "src/core/types_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "c1165644814b09ecabcfbfd3bda28077")
!748 = !DISubprogram(name: "lua_isnumber", scope: !193, file: !193, line: 136, type: !335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!749 = !DISubprogram(name: "lua_tonumber", scope: !193, file: !193, line: 147, type: !750, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!750 = !DISubroutineType(types: !751)
!751 = !{!752, !191, !190}
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Number", file: !193, line: 100, baseType: !753)
!753 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!754 = !DISubprogram(name: "lua_settop", scope: !193, file: !193, line: 122, type: !755, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!755 = !DISubroutineType(types: !756)
!756 = !{null, !191, !190}
!757 = !DISubprogram(name: "lua_isstring", scope: !193, file: !193, line: 137, type: !335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!758 = !DISubprogram(name: "strcmp", scope: !759, file: !759, line: 156, type: !760, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!759 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!760 = !DISubroutineType(types: !761)
!761 = !{!190, !329, !329}
!762 = !DISubprogram(name: "lua_tolstring", scope: !193, file: !193, line: 150, type: !763, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!763 = !DISubroutineType(types: !764)
!764 = !{!329, !191, !190, !765}
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!766 = !DISubprogram(name: "lua_toboolean", scope: !193, file: !193, line: 149, type: !335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!767 = !DISubprogram(name: "gt_str_delete", scope: !197, file: !197, line: 90, type: !768, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!768 = !DISubroutineType(types: !769)
!769 = !{null, !195}
!770 = !DISubprogram(name: "lua_close", scope: !193, file: !193, line: 112, type: !724, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!771 = !DISubprogram(name: "lua_pushnil", scope: !193, file: !193, line: 161, type: !724, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!772 = !DISubprogram(name: "lua_next", scope: !193, file: !193, line: 240, type: !335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!773 = distinct !DISubprogram(name: "format_scalar", scope: !2, file: !2, line: 27, type: !774, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !179, retainedNodes: !776)
!774 = !DISubroutineType(types: !775)
!775 = !{!190, !191, !195, !190, !262, !199}
!776 = !{!777, !778, !779, !780, !781, !782, !783, !786, !789}
!777 = !DILocalVariable(name: "L", arg: 1, scope: !773, file: !2, line: 27, type: !191)
!778 = !DILocalVariable(name: "out", arg: 2, scope: !773, file: !2, line: 27, type: !195)
!779 = !DILocalVariable(name: "index", arg: 3, scope: !773, file: !2, line: 27, type: !190)
!780 = !DILocalVariable(name: "table_key", arg: 4, scope: !773, file: !2, line: 27, type: !262)
!781 = !DILocalVariable(name: "err", arg: 5, scope: !773, file: !2, line: 28, type: !199)
!782 = !DILocalVariable(name: "had_err", scope: !773, file: !2, line: 30, type: !190)
!783 = !DILocalVariable(name: "val", scope: !784, file: !2, line: 35, type: !190)
!784 = distinct !DILexicalBlock(scope: !785, file: !2, line: 34, column: 3)
!785 = distinct !DILexicalBlock(scope: !773, file: !2, line: 33, column: 7)
!786 = !DILocalVariable(name: "val", scope: !787, file: !2, line: 44, type: !753)
!787 = distinct !DILexicalBlock(scope: !788, file: !2, line: 43, column: 3)
!788 = distinct !DILexicalBlock(scope: !785, file: !2, line: 42, column: 12)
!789 = !DILocalVariable(name: "str", scope: !790, file: !2, line: 50, type: !329)
!790 = distinct !DILexicalBlock(scope: !791, file: !2, line: 49, column: 3)
!791 = distinct !DILexicalBlock(scope: !788, file: !2, line: 48, column: 12)
!792 = !DILocation(line: 27, column: 37, scope: !773)
!793 = !DILocation(line: 27, column: 47, scope: !773)
!794 = !DILocation(line: 27, column: 56, scope: !773)
!795 = !{!796, !796, i64 0}
!796 = !{!"_Bool", !212, i64 0}
!797 = !DILocation(line: 27, column: 68, scope: !773)
!798 = !DILocation(line: 28, column: 35, scope: !773)
!799 = !DILocation(line: 30, column: 3, scope: !773)
!800 = !DILocation(line: 30, column: 7, scope: !773)
!801 = !DILocation(line: 31, column: 3, scope: !773)
!802 = !DILocation(line: 31, column: 3, scope: !803)
!803 = distinct !DILexicalBlock(scope: !804, file: !2, line: 31, column: 3)
!804 = distinct !DILexicalBlock(scope: !773, file: !2, line: 31, column: 3)
!805 = !DILocation(line: 31, column: 3, scope: !804)
!806 = !DILocation(line: 31, column: 3, scope: !807)
!807 = distinct !DILexicalBlock(scope: !803, file: !2, line: 31, column: 3)
!808 = !DILocation(line: 32, column: 3, scope: !773)
!809 = !DILocation(line: 32, column: 3, scope: !810)
!810 = distinct !DILexicalBlock(scope: !811, file: !2, line: 32, column: 3)
!811 = distinct !DILexicalBlock(scope: !773, file: !2, line: 32, column: 3)
!812 = !DILocation(line: 32, column: 3, scope: !811)
!813 = !DILocation(line: 32, column: 3, scope: !814)
!814 = distinct !DILexicalBlock(scope: !810, file: !2, line: 32, column: 3)
!815 = !DILocation(line: 33, column: 7, scope: !785)
!816 = !DILocation(line: 33, column: 7, scope: !773)
!817 = !DILocation(line: 35, column: 5, scope: !784)
!818 = !DILocation(line: 35, column: 9, scope: !784)
!819 = !DILocation(line: 36, column: 25, scope: !784)
!820 = !DILocation(line: 36, column: 28, scope: !784)
!821 = !DILocation(line: 36, column: 11, scope: !784)
!822 = !DILocation(line: 36, column: 9, scope: !784)
!823 = !DILocation(line: 37, column: 9, scope: !824)
!824 = distinct !DILexicalBlock(scope: !784, file: !2, line: 37, column: 9)
!825 = !DILocation(line: 37, column: 9, scope: !784)
!826 = !DILocation(line: 38, column: 26, scope: !824)
!827 = !DILocation(line: 38, column: 7, scope: !824)
!828 = !DILocation(line: 40, column: 26, scope: !824)
!829 = !DILocation(line: 40, column: 7, scope: !824)
!830 = !DILocation(line: 41, column: 3, scope: !785)
!831 = !DILocation(line: 41, column: 3, scope: !784)
!832 = !DILocation(line: 42, column: 25, scope: !788)
!833 = !DILocation(line: 42, column: 28, scope: !788)
!834 = !DILocation(line: 42, column: 12, scope: !788)
!835 = !DILocation(line: 42, column: 12, scope: !785)
!836 = !DILocation(line: 44, column: 5, scope: !787)
!837 = !DILocation(line: 44, column: 12, scope: !787)
!838 = !DILocation(line: 45, column: 24, scope: !787)
!839 = !DILocation(line: 45, column: 27, scope: !787)
!840 = !DILocation(line: 45, column: 11, scope: !787)
!841 = !DILocation(line: 45, column: 9, scope: !787)
!842 = !{!843, !843, i64 0}
!843 = !{!"double", !212, i64 0}
!844 = !DILocation(line: 46, column: 26, scope: !787)
!845 = !DILocation(line: 46, column: 31, scope: !787)
!846 = !DILocation(line: 46, column: 5, scope: !787)
!847 = !DILocation(line: 47, column: 3, scope: !788)
!848 = !DILocation(line: 47, column: 3, scope: !787)
!849 = !DILocation(line: 48, column: 25, scope: !791)
!850 = !DILocation(line: 48, column: 28, scope: !791)
!851 = !DILocation(line: 48, column: 12, scope: !791)
!852 = !DILocation(line: 48, column: 12, scope: !788)
!853 = !DILocation(line: 50, column: 5, scope: !790)
!854 = !DILocation(line: 50, column: 17, scope: !790)
!855 = !DILocation(line: 51, column: 11, scope: !790)
!856 = !DILocation(line: 51, column: 9, scope: !790)
!857 = !DILocation(line: 53, column: 5, scope: !790)
!858 = !DILocation(line: 54, column: 5, scope: !790)
!859 = !DILocation(line: 55, column: 18, scope: !790)
!860 = !DILocation(line: 55, column: 5, scope: !790)
!861 = !DILocation(line: 56, column: 20, scope: !790)
!862 = !DILocation(line: 56, column: 5, scope: !790)
!863 = !DILocation(line: 57, column: 20, scope: !790)
!864 = !DILocation(line: 57, column: 23, scope: !790)
!865 = !DILocation(line: 57, column: 5, scope: !790)
!866 = !DILocation(line: 58, column: 14, scope: !790)
!867 = !DILocation(line: 58, column: 5, scope: !790)
!868 = !DILocation(line: 59, column: 11, scope: !790)
!869 = !DILocation(line: 59, column: 9, scope: !790)
!870 = !DILocation(line: 60, column: 5, scope: !790)
!871 = !DILocation(line: 62, column: 9, scope: !872)
!872 = distinct !DILexicalBlock(scope: !790, file: !2, line: 62, column: 9)
!873 = !{i8 0, i8 2}
!874 = !{}
!875 = !DILocation(line: 62, column: 9, scope: !790)
!876 = !DILocation(line: 63, column: 26, scope: !872)
!877 = !DILocation(line: 63, column: 7, scope: !872)
!878 = !DILocation(line: 64, column: 24, scope: !790)
!879 = !DILocation(line: 64, column: 29, scope: !790)
!880 = !DILocation(line: 64, column: 5, scope: !790)
!881 = !DILocation(line: 65, column: 9, scope: !882)
!882 = distinct !DILexicalBlock(scope: !790, file: !2, line: 65, column: 9)
!883 = !DILocation(line: 65, column: 9, scope: !790)
!884 = !DILocation(line: 66, column: 26, scope: !882)
!885 = !DILocation(line: 66, column: 7, scope: !882)
!886 = !DILocation(line: 67, column: 3, scope: !791)
!887 = !DILocation(line: 67, column: 3, scope: !790)
!888 = !DILocation(line: 69, column: 5, scope: !889)
!889 = distinct !DILexicalBlock(scope: !791, file: !2, line: 68, column: 8)
!890 = !DILocation(line: 70, column: 18, scope: !889)
!891 = !DILocation(line: 70, column: 5, scope: !889)
!892 = !DILocation(line: 71, column: 13, scope: !889)
!893 = !DILocation(line: 73, column: 10, scope: !773)
!894 = !DILocation(line: 74, column: 1, scope: !773)
!895 = !DILocation(line: 73, column: 3, scope: !773)
!896 = !DISubprogram(name: "gt_str_append_double", scope: !197, file: !197, line: 53, type: !897, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!897 = !DISubroutineType(types: !898)
!898 = !{null, !195, !753, !190}
!899 = !DISubprogram(name: "lua_pushlstring", scope: !193, file: !193, line: 164, type: !900, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!900 = !DISubroutineType(types: !901)
!901 = !{null, !191, !329, !323}
!902 = !DISubprogram(name: "lua_gettable", scope: !193, file: !193, line: 178, type: !755, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!903 = !DISubprogram(name: "lua_pushstring", scope: !193, file: !193, line: 165, type: !904, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!904 = !DISubroutineType(types: !905)
!905 = !{null, !191, !329}
!906 = !DISubprogram(name: "lua_call", scope: !193, file: !193, line: 202, type: !907, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!907 = !DISubroutineType(types: !908)
!908 = !{null, !191, !190, !190}

; ModuleID = 'samples/27.bc'
source_filename = "/local-ssd/duckdb-2yf7npukr2iavk33jc4ewnzpbnznwfqd-build/aidengro/spack-stage-duckdb-0.8.1-2yf7npukr2iavk33jc4ewnzpbnznwfqd/spack-src/tools/sqlite3_api_wrapper/sqlite3/printf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et_info = type { i8, i8, i8, i8, i8, i8 }
%struct.StrAccum = type { ptr, ptr, i32, i32, i32, i8, i8 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [2 x i8] c"%\00", align 1
@fmtinfo = internal constant [23 x %struct.et_info] [%struct.et_info { i8 100, i8 10, i8 1, i8 16, i8 0, i8 0 }, %struct.et_info { i8 115, i8 0, i8 4, i8 5, i8 0, i8 0 }, %struct.et_info { i8 103, i8 0, i8 1, i8 3, i8 30, i8 0 }, %struct.et_info { i8 122, i8 0, i8 4, i8 6, i8 0, i8 0 }, %struct.et_info { i8 113, i8 0, i8 4, i8 9, i8 0, i8 0 }, %struct.et_info { i8 81, i8 0, i8 4, i8 10, i8 0, i8 0 }, %struct.et_info { i8 119, i8 0, i8 4, i8 14, i8 0, i8 0 }, %struct.et_info { i8 99, i8 0, i8 0, i8 8, i8 0, i8 0 }, %struct.et_info { i8 111, i8 8, i8 0, i8 0, i8 0, i8 2 }, %struct.et_info { i8 117, i8 10, i8 0, i8 16, i8 0, i8 0 }, %struct.et_info { i8 120, i8 16, i8 0, i8 0, i8 16, i8 1 }, %struct.et_info { i8 88, i8 16, i8 0, i8 0, i8 0, i8 4 }, %struct.et_info { i8 102, i8 0, i8 1, i8 1, i8 0, i8 0 }, %struct.et_info { i8 101, i8 0, i8 1, i8 2, i8 30, i8 0 }, %struct.et_info { i8 69, i8 0, i8 1, i8 2, i8 14, i8 0 }, %struct.et_info { i8 71, i8 0, i8 1, i8 3, i8 14, i8 0 }, %struct.et_info { i8 105, i8 10, i8 1, i8 16, i8 0, i8 0 }, %struct.et_info { i8 110, i8 0, i8 0, i8 4, i8 0, i8 0 }, %struct.et_info { i8 37, i8 0, i8 0, i8 7, i8 0, i8 0 }, %struct.et_info { i8 112, i8 16, i8 0, i8 13, i8 0, i8 1 }, %struct.et_info { i8 84, i8 0, i8 0, i8 11, i8 0, i8 0 }, %struct.et_info { i8 83, i8 0, i8 0, i8 12, i8 0, i8 0 }, %struct.et_info { i8 114, i8 10, i8 1, i8 15, i8 0, i8 0 }], align 16
@duckdb_shell_sqlite3VXPrintf.zOrd = internal constant [9 x i8] c"thstndrd\00", align 1
@aDigits = internal constant [33 x i8] c"0123456789ABCDEF0123456789abcdef\00", align 16
@aPrefix = internal constant [7 x i8] c"-x0\00X0\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Inf\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"(NULL)\00", align 1

; Function Attrs: nounwind uwtable
define void @duckdb_shell_sqlite3VXPrintf(ptr noundef %pAccum, ptr noundef %fmt, ptr noundef %ap) #0 {
entry:
  %pAccum.addr = alloca ptr, align 8
  %fmt.addr = alloca ptr, align 8
  %ap.addr = alloca ptr, align 8
  %c = alloca i32, align 4
  %bufpt = alloca ptr, align 8
  %precision = alloca i32, align 4
  %length = alloca i32, align 4
  %idx = alloca i32, align 4
  %width = alloca i32, align 4
  %flag_leftjustify = alloca i8, align 1
  %flag_prefix = alloca i8, align 1
  %flag_alternateform = alloca i8, align 1
  %flag_altform2 = alloca i8, align 1
  %flag_zeropad = alloca i8, align 1
  %flag_long = alloca i8, align 1
  %done = alloca i8, align 1
  %cThousand = alloca i8, align 1
  %xtype = alloca i8, align 1
  %bArgList = alloca i8, align 1
  %prefix = alloca i8, align 1
  %longvalue = alloca i64, align 8
  %realvalue = alloca x86_fp80, align 16
  %infop = alloca ptr, align 8
  %zOut = alloca ptr, align 8
  %nOut = alloca i32, align 4
  %zExtra = alloca ptr, align 8
  %exp = alloca i32, align 4
  %e2 = alloca i32, align 4
  %nsd = alloca i32, align 4
  %rounder = alloca double, align 8
  %flag_dp = alloca i8, align 1
  %flag_rtz = alloca i8, align 1
  %buf = alloca [70 x i8], align 16
  %wx = alloca i32, align 4
  %px = alloca i32, align 4
  %v = alloca i64, align 8
  %n = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %x = alloca i32, align 4
  %cset = alloca ptr, align 8
  %base = alloca i8, align 1
  %nn = alloca i32, align 4
  %ix = alloca i32, align 4
  %pre = alloca ptr, align 8
  %x389 = alloca i8, align 1
  %scale = alloca x86_fp80, align 16
  %i = alloca i32, align 4
  %nPad = alloca i32, align 4
  %ch = alloca i32, align 4
  %z = alloca ptr, align 8
  %ii = alloca i32, align 4
  %i989 = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %n990 = alloca i32, align 4
  %isnull = alloca i32, align 4
  %needQuote = alloca i32, align 4
  %ch991 = alloca i8, align 1
  %q = alloca i8, align 1
  %escarg = alloca ptr, align 8
  store ptr %pAccum, ptr %pAccum.addr, align 8, !tbaa !4
  store ptr %fmt, ptr %fmt.addr, align 8, !tbaa !4
  store ptr %ap, ptr %ap.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %bufpt) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %precision) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %width) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr %flag_leftjustify) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr %flag_prefix) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr %flag_alternateform) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr %flag_altform2) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr %flag_zeropad) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr %flag_long) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr %done) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr %cThousand) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr %xtype) #9
  store i8 17, ptr %xtype, align 1, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 1, ptr %bArgList) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr %prefix) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %longvalue) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr %realvalue) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %infop) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %zOut) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %nOut) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %zExtra) #9
  store ptr null, ptr %zExtra, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %exp) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %e2) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %nsd) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %rounder) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr %flag_dp) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr %flag_rtz) #9
  call void @llvm.lifetime.start.p0(i64 70, ptr %buf) #9
  store ptr null, ptr %bufpt, align 8, !tbaa !4
  %0 = load ptr, ptr %pAccum.addr, align 8, !tbaa !4
  %printfFlags = getelementptr inbounds %struct.StrAccum, ptr %0, i32 0, i32 6
  %1 = load i8, ptr %printfFlags, align 1, !tbaa !9
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 2
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  store i8 0, ptr %bArgList, align 1, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.cond

for.cond:                                         ; preds = %for.inc1147, %if.end
  %2 = load ptr, ptr %fmt.addr, align 8, !tbaa !4
  %3 = load i8, ptr %2, align 1, !tbaa !8
  %conv2 = sext i8 %3 to i32
  store i32 %conv2, ptr %c, align 4, !tbaa !12
  %cmp3 = icmp ne i32 %conv2, 0
  br i1 %cmp3, label %for.body, label %for.end1149

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %c, align 4, !tbaa !12
  %cmp5 = icmp ne i32 %4, 37
  br i1 %cmp5, label %if.then7, label %if.end18

if.then7:                                         ; preds = %for.body
  %5 = load ptr, ptr %fmt.addr, align 8, !tbaa !4
  store ptr %5, ptr %bufpt, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then7
  %6 = load ptr, ptr %fmt.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %fmt.addr, align 8, !tbaa !4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %7 = load ptr, ptr %fmt.addr, align 8, !tbaa !4
  %8 = load i8, ptr %7, align 1, !tbaa !8
  %conv8 = sext i8 %8 to i32
  %tobool = icmp ne i32 %conv8, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %9 = load ptr, ptr %fmt.addr, align 8, !tbaa !4
  %10 = load i8, ptr %9, align 1, !tbaa !8
  %conv9 = sext i8 %10 to i32
  %cmp10 = icmp ne i32 %conv9, 37
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %11 = phi i1 [ false, %do.cond ], [ %cmp10, %land.rhs ]
  br i1 %11, label %do.body, label %do.end, !llvm.loop !13

do.end:                                           ; preds = %land.end
  %12 = load ptr, ptr %pAccum.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %bufpt, align 8, !tbaa !4
  %14 = load ptr, ptr %fmt.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %bufpt, align 8, !tbaa !4
  %sub.ptr.lhs.cast = ptrtoint ptr %14 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %15 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv12 = trunc i64 %sub.ptr.sub to i32
  call void @duckdb_shell_sqlite3StrAccumAppend(ptr noundef %12, ptr noundef %13, i32 noundef %conv12)
  %16 = load ptr, ptr %fmt.addr, align 8, !tbaa !4
  %17 = load i8, ptr %16, align 1, !tbaa !8
  %conv13 = sext i8 %17 to i32
  %cmp14 = icmp eq i32 %conv13, 0
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %do.end
  br label %for.end1149

if.end17:                                         ; preds = %do.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %for.body
  %18 = load ptr, ptr %fmt.addr, align 8, !tbaa !4
  %incdec.ptr19 = getelementptr inbounds i8, ptr %18, i32 1
  store ptr %incdec.ptr19, ptr %fmt.addr, align 8, !tbaa !4
  %19 = load i8, ptr %incdec.ptr19, align 1, !tbaa !8
  %conv20 = sext i8 %19 to i32
  store i32 %conv20, ptr %c, align 4, !tbaa !12
  %cmp21 = icmp eq i32 %conv20, 0
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end18
  %20 = load ptr, ptr %pAccum.addr, align 8, !tbaa !4
  call void @duckdb_shell_sqlite3StrAccumAppend(ptr noundef %20, ptr noundef @.str, i32 noundef 1)
  br label %for.end1149

if.end24:                                         ; preds = %if.end18
  store i8 0, ptr %flag_zeropad, align 1, !tbaa !8
  store i8 0, ptr %flag_altform2, align 1, !tbaa !8
  store i8 0, ptr %flag_alternateform, align 1, !tbaa !8
  store i8 0, ptr %cThousand, align 1, !tbaa !8
  store i8 0, ptr %flag_prefix, align 1, !tbaa !8
  store i8 0, ptr %flag_leftjustify, align 1, !tbaa !8
  store i8 0, ptr %done, align 1, !tbaa !8
  br label %do.body25

do.body25:                                        ; preds = %land.end39, %if.end24
  %21 = load i32, ptr %c, align 4, !tbaa !12
  switch i32 %21, label %sw.default [
    i32 45, label %sw.bb
    i32 43, label %sw.bb26
    i32 32, label %sw.bb27
    i32 35, label %sw.bb28
    i32 33, label %sw.bb29
    i32 48, label %sw.bb30
    i32 44, label %sw.bb31
  ]

sw.bb:                                            ; preds = %do.body25
  store i8 1, ptr %flag_leftjustify, align 1, !tbaa !8
  br label %sw.epilog

sw.bb26:                                          ; preds = %do.body25
  store i8 43, ptr %flag_prefix, align 1, !tbaa !8
  br label %sw.epilog

sw.bb27:                                          ; preds = %do.body25
  store i8 32, ptr %flag_prefix, align 1, !tbaa !8
  br label %sw.epilog

sw.bb28:                                          ; preds = %do.body25
  store i8 1, ptr %flag_alternateform, align 1, !tbaa !8
  br label %sw.epilog

sw.bb29:                                          ; preds = %do.body25
  store i8 1, ptr %flag_altform2, align 1, !tbaa !8
  br label %sw.epilog

sw.bb30:                                          ; preds = %do.body25
  store i8 1, ptr %flag_zeropad, align 1, !tbaa !8
  br label %sw.epilog

sw.bb31:                                          ; preds = %do.body25
  store i8 44, ptr %cThousand, align 1, !tbaa !8
  br label %sw.epilog

sw.default:                                       ; preds = %do.body25
  store i8 1, ptr %done, align 1, !tbaa !8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb31, %sw.bb30, %sw.bb29, %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb
  br label %do.cond32

do.cond32:                                        ; preds = %sw.epilog
  %22 = load i8, ptr %done, align 1, !tbaa !8
  %tobool33 = icmp ne i8 %22, 0
  br i1 %tobool33, label %land.end39, label %land.rhs34

land.rhs34:                                       ; preds = %do.cond32
  %23 = load ptr, ptr %fmt.addr, align 8, !tbaa !4
  %incdec.ptr35 = getelementptr inbounds i8, ptr %23, i32 1
  store ptr %incdec.ptr35, ptr %fmt.addr, align 8, !tbaa !4
  %24 = load i8, ptr %incdec.ptr35, align 1, !tbaa !8
  %conv36 = sext i8 %24 to i32
  store i32 %conv36, ptr %c, align 4, !tbaa !12
  %cmp37 = icmp ne i32 %conv36, 0
  br label %land.end39

land.end39:                                       ; preds = %land.rhs34, %do.cond32
  %25 = phi i1 [ false, %do.cond32 ], [ %cmp37, %land.rhs34 ]
  br i1 %25, label %do.body25, label %do.end40, !llvm.loop !15

do.end40:                                         ; preds = %land.end39
  %26 = load i32, ptr %c, align 4, !tbaa !12
  %cmp41 = icmp eq i32 %26, 42
  br i1 %cmp41, label %if.then43, label %if.else56

if.then43:                                        ; preds = %do.end40
  %27 = load i8, ptr %bArgList, align 1, !tbaa !8
  %tobool44 = icmp ne i8 %27, 0
  br i1 %tobool44, label %if.then45, label %if.else46

if.then45:                                        ; preds = %if.then43
  br label %if.end47

if.else46:                                        ; preds = %if.then43
  %28 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, ptr %28, i32 0, i32 0
  %gp_offset = load i32, ptr %gp_offset_p, align 8
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %if.else46
  %29 = getelementptr inbounds %struct.__va_list_tag, ptr %28, i32 0, i32 3
  %reg_save_area = load ptr, ptr %29, align 8
  %30 = getelementptr i8, ptr %reg_save_area, i32 %gp_offset
  %31 = add i32 %gp_offset, 8
  store i32 %31, ptr %gp_offset_p, align 8
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %if.else46
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, ptr %28, i32 0, i32 2
  %overflow_arg_area = load ptr, ptr %overflow_arg_area_p, align 8
  %overflow_arg_area.next = getelementptr i8, ptr %overflow_arg_area, i32 8
  store ptr %overflow_arg_area.next, ptr %overflow_arg_area_p, align 8
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi ptr [ %30, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %32 = load i32, ptr %vaarg.addr, align 4
  store i32 %32, ptr %width, align 4, !tbaa !12
  br label %if.end47

if.end47:                                         ; preds = %vaarg.end, %if.then45
  %33 = load i32, ptr %width, align 4, !tbaa !12
  %cmp48 = icmp slt i32 %33, 0
  br i1 %cmp48, label %if.then50, label %if.end53

if.then50:                                        ; preds = %if.end47
  store i8 1, ptr %flag_leftjustify, align 1, !tbaa !8
  %34 = load i32, ptr %width, align 4, !tbaa !12
  %cmp51 = icmp sge i32 %34, -2147483647
  br i1 %cmp51, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then50
  %35 = load i32, ptr %width, align 4, !tbaa !12
  %sub = sub nsw i32 0, %35
  br label %cond.end

cond.false:                                       ; preds = %if.then50
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, ptr %width, align 4, !tbaa !12
  br label %if.end53

if.end53:                                         ; preds = %cond.end, %if.end47
  %36 = load ptr, ptr %fmt.addr, align 8, !tbaa !4
  %incdec.ptr54 = getelementptr inbounds i8, ptr %36, i32 1
  store ptr %incdec.ptr54, ptr %fmt.addr, align 8, !tbaa !4
  %37 = load i8, ptr %incdec.ptr54, align 1, !tbaa !8
  %conv55 = sext i8 %37 to i32
  store i32 %conv55, ptr %c, align 4, !tbaa !12
  br label %if.end67

if.else56:                                        ; preds = %do.end40
  call void @llvm.lifetime.start.p0(i64 4, ptr %wx) #9
  store i32 0, ptr %wx, align 4, !tbaa !12
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else56
  %38 = load i32, ptr %c, align 4, !tbaa !12
  %cmp57 = icmp sge i32 %38, 48
  br i1 %cmp57, label %land.rhs59, label %land.end62

land.rhs59:                                       ; preds = %while.cond
  %39 = load i32, ptr %c, align 4, !tbaa !12
  %cmp60 = icmp sle i32 %39, 57
  br label %land.end62

land.end62:                                       ; preds = %land.rhs59, %while.cond
  %40 = phi i1 [ false, %while.cond ], [ %cmp60, %land.rhs59 ]
  br i1 %40, label %while.body, label %while.end

while.body:                                       ; preds = %land.end62
  %41 = load i32, ptr %wx, align 4, !tbaa !12
  %mul = mul i32 %41, 10
  %42 = load i32, ptr %c, align 4, !tbaa !12
  %add = add i32 %mul, %42
  %sub63 = sub i32 %add, 48
  store i32 %sub63, ptr %wx, align 4, !tbaa !12
  %43 = load ptr, ptr %fmt.addr, align 8, !tbaa !4
  %incdec.ptr64 = getelementptr inbounds i8, ptr %43, i32 1
  store ptr %incdec.ptr64, ptr %fmt.addr, align 8, !tbaa !4
  %44 = load i8, ptr %incdec.ptr64, align 1, !tbaa !8
  %conv65 = sext i8 %44 to i32
  store i32 %conv65, ptr %c, align 4, !tbaa !12
  br label %while.cond, !llvm.loop !16

while.end:                                        ; preds = %land.end62
  %45 = load i32, ptr %wx, align 4, !tbaa !12
  %and66 = and i32 %45, 2147483647
  store i32 %and66, ptr %width, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 4, ptr %wx) #9
  br label %if.end67

if.end67:                                         ; preds = %while.end, %if.end53
  %46 = load i32, ptr %c, align 4, !tbaa !12
  %cmp68 = icmp eq i32 %46, 46
  br i1 %cmp68, label %if.then70, label %if.else121

if.then70:                                        ; preds = %if.end67
  %47 = load ptr, ptr %fmt.addr, align 8, !tbaa !4
  %incdec.ptr71 = getelementptr inbounds i8, ptr %47, i32 1
  store ptr %incdec.ptr71, ptr %fmt.addr, align 8, !tbaa !4
  %48 = load i8, ptr %incdec.ptr71, align 1, !tbaa !8
  %conv72 = sext i8 %48 to i32
  store i32 %conv72, ptr %c, align 4, !tbaa !12
  %49 = load i32, ptr %c, align 4, !tbaa !12
  %cmp73 = icmp eq i32 %49, 42
  br i1 %cmp73, label %if.then75, label %if.else104

if.then75:                                        ; preds = %if.then70
  %50 = load i8, ptr %bArgList, align 1, !tbaa !8
  %tobool76 = icmp ne i8 %50, 0
  br i1 %tobool76, label %if.then77, label %if.else78

if.then77:                                        ; preds = %if.then75
  br label %if.end90

if.else78:                                        ; preds = %if.then75
  %51 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %gp_offset_p79 = getelementptr inbounds %struct.__va_list_tag, ptr %51, i32 0, i32 0
  %gp_offset80 = load i32, ptr %gp_offset_p79, align 8
  %fits_in_gp81 = icmp ule i32 %gp_offset80, 40
  br i1 %fits_in_gp81, label %vaarg.in_reg82, label %vaarg.in_mem84

vaarg.in_reg82:                                   ; preds = %if.else78
  %52 = getelementptr inbounds %struct.__va_list_tag, ptr %51, i32 0, i32 3
  %reg_save_area83 = load ptr, ptr %52, align 8
  %53 = getelementptr i8, ptr %reg_save_area83, i32 %gp_offset80
  %54 = add i32 %gp_offset80, 8
  store i32 %54, ptr %gp_offset_p79, align 8
  br label %vaarg.end88

vaarg.in_mem84:                                   ; preds = %if.else78
  %overflow_arg_area_p85 = getelementptr inbounds %struct.__va_list_tag, ptr %51, i32 0, i32 2
  %overflow_arg_area86 = load ptr, ptr %overflow_arg_area_p85, align 8
  %overflow_arg_area.next87 = getelementptr i8, ptr %overflow_arg_area86, i32 8
  store ptr %overflow_arg_area.next87, ptr %overflow_arg_area_p85, align 8
  br label %vaarg.end88

vaarg.end88:                                      ; preds = %vaarg.in_mem84, %vaarg.in_reg82
  %vaarg.addr89 = phi ptr [ %53, %vaarg.in_reg82 ], [ %overflow_arg_area86, %vaarg.in_mem84 ]
  %55 = load i32, ptr %vaarg.addr89, align 4
  store i32 %55, ptr %precision, align 4, !tbaa !12
  br label %if.end90

if.end90:                                         ; preds = %vaarg.end88, %if.then77
  %56 = load ptr, ptr %fmt.addr, align 8, !tbaa !4
  %incdec.ptr91 = getelementptr inbounds i8, ptr %56, i32 1
  store ptr %incdec.ptr91, ptr %fmt.addr, align 8, !tbaa !4
  %57 = load i8, ptr %incdec.ptr91, align 1, !tbaa !8
  %conv92 = sext i8 %57 to i32
  store i32 %conv92, ptr %c, align 4, !tbaa !12
  %58 = load i32, ptr %precision, align 4, !tbaa !12
  %cmp93 = icmp slt i32 %58, 0
  br i1 %cmp93, label %if.then95, label %if.end103

if.then95:                                        ; preds = %if.end90
  %59 = load i32, ptr %precision, align 4, !tbaa !12
  %cmp96 = icmp sge i32 %59, -2147483647
  br i1 %cmp96, label %cond.true98, label %cond.false100

cond.true98:                                      ; preds = %if.then95
  %60 = load i32, ptr %precision, align 4, !tbaa !12
  %sub99 = sub nsw i32 0, %60
  br label %cond.end101

cond.false100:                                    ; preds = %if.then95
  br label %cond.end101

cond.end101:                                      ; preds = %cond.false100, %cond.true98
  %cond102 = phi i32 [ %sub99, %cond.true98 ], [ -1, %cond.false100 ]
  store i32 %cond102, ptr %precision, align 4, !tbaa !12
  br label %if.end103

if.end103:                                        ; preds = %cond.end101, %if.end90
  br label %if.end120

if.else104:                                       ; preds = %if.then70
  call void @llvm.lifetime.start.p0(i64 4, ptr %px) #9
  store i32 0, ptr %px, align 4, !tbaa !12
  br label %while.cond105

while.cond105:                                    ; preds = %while.body112, %if.else104
  %61 = load i32, ptr %c, align 4, !tbaa !12
  %cmp106 = icmp sge i32 %61, 48
  br i1 %cmp106, label %land.rhs108, label %land.end111

land.rhs108:                                      ; preds = %while.cond105
  %62 = load i32, ptr %c, align 4, !tbaa !12
  %cmp109 = icmp sle i32 %62, 57
  br label %land.end111

land.end111:                                      ; preds = %land.rhs108, %while.cond105
  %63 = phi i1 [ false, %while.cond105 ], [ %cmp109, %land.rhs108 ]
  br i1 %63, label %while.body112, label %while.end118

while.body112:                                    ; preds = %land.end111
  %64 = load i32, ptr %px, align 4, !tbaa !12
  %mul113 = mul i32 %64, 10
  %65 = load i32, ptr %c, align 4, !tbaa !12
  %add114 = add i32 %mul113, %65
  %sub115 = sub i32 %add114, 48
  store i32 %sub115, ptr %px, align 4, !tbaa !12
  %66 = load ptr, ptr %fmt.addr, align 8, !tbaa !4
  %incdec.ptr116 = getelementptr inbounds i8, ptr %66, i32 1
  store ptr %incdec.ptr116, ptr %fmt.addr, align 8, !tbaa !4
  %67 = load i8, ptr %incdec.ptr116, align 1, !tbaa !8
  %conv117 = sext i8 %67 to i32
  store i32 %conv117, ptr %c, align 4, !tbaa !12
  br label %while.cond105, !llvm.loop !17

while.end118:                                     ; preds = %land.end111
  %68 = load i32, ptr %px, align 4, !tbaa !12
  %and119 = and i32 %68, 2147483647
  store i32 %and119, ptr %precision, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 4, ptr %px) #9
  br label %if.end120

if.end120:                                        ; preds = %while.end118, %if.end103
  br label %if.end122

if.else121:                                       ; preds = %if.end67
  store i32 -1, ptr %precision, align 4, !tbaa !12
  br label %if.end122

if.end122:                                        ; preds = %if.else121, %if.end120
  %69 = load i32, ptr %c, align 4, !tbaa !12
  %cmp123 = icmp eq i32 %69, 108
  br i1 %cmp123, label %if.then125, label %if.else134

if.then125:                                       ; preds = %if.end122
  store i8 1, ptr %flag_long, align 1, !tbaa !8
  %70 = load ptr, ptr %fmt.addr, align 8, !tbaa !4
  %incdec.ptr126 = getelementptr inbounds i8, ptr %70, i32 1
  store ptr %incdec.ptr126, ptr %fmt.addr, align 8, !tbaa !4
  %71 = load i8, ptr %incdec.ptr126, align 1, !tbaa !8
  %conv127 = sext i8 %71 to i32
  store i32 %conv127, ptr %c, align 4, !tbaa !12
  %72 = load i32, ptr %c, align 4, !tbaa !12
  %cmp128 = icmp eq i32 %72, 108
  br i1 %cmp128, label %if.then130, label %if.end133

if.then130:                                       ; preds = %if.then125
  store i8 2, ptr %flag_long, align 1, !tbaa !8
  %73 = load ptr, ptr %fmt.addr, align 8, !tbaa !4
  %incdec.ptr131 = getelementptr inbounds i8, ptr %73, i32 1
  store ptr %incdec.ptr131, ptr %fmt.addr, align 8, !tbaa !4
  %74 = load i8, ptr %incdec.ptr131, align 1, !tbaa !8
  %conv132 = sext i8 %74 to i32
  store i32 %conv132, ptr %c, align 4, !tbaa !12
  br label %if.end133

if.end133:                                        ; preds = %if.then130, %if.then125
  br label %if.end135

if.else134:                                       ; preds = %if.end122
  store i8 0, ptr %flag_long, align 1, !tbaa !8
  br label %if.end135

if.end135:                                        ; preds = %if.else134, %if.end133
  store ptr @fmtinfo, ptr %infop, align 8, !tbaa !4
  store i8 17, ptr %xtype, align 1, !tbaa !8
  store i32 0, ptr %idx, align 4, !tbaa !12
  br label %for.cond136

for.cond136:                                      ; preds = %for.inc, %if.end135
  %75 = load i32, ptr %idx, align 4, !tbaa !12
  %cmp137 = icmp slt i32 %75, 23
  br i1 %cmp137, label %for.body139, label %for.end

for.body139:                                      ; preds = %for.cond136
  %76 = load i32, ptr %c, align 4, !tbaa !12
  %77 = load i32, ptr %idx, align 4, !tbaa !12
  %idxprom = sext i32 %77 to i64
  %arrayidx = getelementptr inbounds [23 x %struct.et_info], ptr @fmtinfo, i64 0, i64 %idxprom
  %fmttype = getelementptr inbounds %struct.et_info, ptr %arrayidx, i32 0, i32 0
  %78 = load i8, ptr %fmttype, align 2, !tbaa !18
  %conv140 = sext i8 %78 to i32
  %cmp141 = icmp eq i32 %76, %conv140
  br i1 %cmp141, label %if.then143, label %if.end146

if.then143:                                       ; preds = %for.body139
  %79 = load i32, ptr %idx, align 4, !tbaa !12
  %idxprom144 = sext i32 %79 to i64
  %arrayidx145 = getelementptr inbounds [23 x %struct.et_info], ptr @fmtinfo, i64 0, i64 %idxprom144
  store ptr %arrayidx145, ptr %infop, align 8, !tbaa !4
  %80 = load ptr, ptr %infop, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.et_info, ptr %80, i32 0, i32 3
  %81 = load i8, ptr %type, align 1, !tbaa !20
  store i8 %81, ptr %xtype, align 1, !tbaa !8
  br label %for.end

if.end146:                                        ; preds = %for.body139
  br label %for.inc

for.inc:                                          ; preds = %if.end146
  %82 = load i32, ptr %idx, align 4, !tbaa !12
  %inc = add nsw i32 %82, 1
  store i32 %inc, ptr %idx, align 4, !tbaa !12
  br label %for.cond136, !llvm.loop !21

for.end:                                          ; preds = %if.then143, %for.cond136
  %83 = load i8, ptr %xtype, align 1, !tbaa !8
  %conv147 = zext i8 %83 to i32
  switch i32 %conv147, label %sw.default1130 [
    i32 13, label %sw.bb148
    i32 15, label %sw.bb149
    i32 0, label %sw.bb149
    i32 16, label %sw.bb150
    i32 1, label %sw.bb410
    i32 2, label %sw.bb410
    i32 3, label %sw.bb410
    i32 4, label %sw.bb753
    i32 7, label %sw.bb768
    i32 8, label %sw.bb771
    i32 5, label %sw.bb885
    i32 6, label %sw.bb885
    i32 9, label %sw.bb988
    i32 10, label %sw.bb988
    i32 14, label %sw.bb988
    i32 11, label %sw.bb1128
    i32 12, label %sw.bb1129
  ]

sw.bb148:                                         ; preds = %for.end
  store i8 2, ptr %flag_long, align 1, !tbaa !8
  br label %sw.bb149

sw.bb149:                                         ; preds = %for.end, %for.end, %sw.bb148
  store i8 0, ptr %cThousand, align 1, !tbaa !8
  br label %sw.bb150

sw.bb150:                                         ; preds = %for.end, %sw.bb149
  %84 = load ptr, ptr %infop, align 8, !tbaa !4
  %flags = getelementptr inbounds %struct.et_info, ptr %84, i32 0, i32 2
  %85 = load i8, ptr %flags, align 1, !tbaa !22
  %conv151 = zext i8 %85 to i32
  %and152 = and i32 %conv151, 1
  %tobool153 = icmp ne i32 %and152, 0
  br i1 %tobool153, label %if.then154, label %if.else214

if.then154:                                       ; preds = %sw.bb150
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #9
  %86 = load i8, ptr %bArgList, align 1, !tbaa !8
  %tobool155 = icmp ne i8 %86, 0
  br i1 %tobool155, label %if.then156, label %if.else157

if.then156:                                       ; preds = %if.then154
  br label %if.end202

if.else157:                                       ; preds = %if.then154
  %87 = load i8, ptr %flag_long, align 1, !tbaa !8
  %tobool158 = icmp ne i8 %87, 0
  br i1 %tobool158, label %if.then159, label %if.else188

if.then159:                                       ; preds = %if.else157
  %88 = load i8, ptr %flag_long, align 1, !tbaa !8
  %conv160 = zext i8 %88 to i32
  %cmp161 = icmp eq i32 %conv160, 2
  br i1 %cmp161, label %if.then163, label %if.else175

if.then163:                                       ; preds = %if.then159
  %89 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %gp_offset_p164 = getelementptr inbounds %struct.__va_list_tag, ptr %89, i32 0, i32 0
  %gp_offset165 = load i32, ptr %gp_offset_p164, align 8
  %fits_in_gp166 = icmp ule i32 %gp_offset165, 40
  br i1 %fits_in_gp166, label %vaarg.in_reg167, label %vaarg.in_mem169

vaarg.in_reg167:                                  ; preds = %if.then163
  %90 = getelementptr inbounds %struct.__va_list_tag, ptr %89, i32 0, i32 3
  %reg_save_area168 = load ptr, ptr %90, align 8
  %91 = getelementptr i8, ptr %reg_save_area168, i32 %gp_offset165
  %92 = add i32 %gp_offset165, 8
  store i32 %92, ptr %gp_offset_p164, align 8
  br label %vaarg.end173

vaarg.in_mem169:                                  ; preds = %if.then163
  %overflow_arg_area_p170 = getelementptr inbounds %struct.__va_list_tag, ptr %89, i32 0, i32 2
  %overflow_arg_area171 = load ptr, ptr %overflow_arg_area_p170, align 8
  %overflow_arg_area.next172 = getelementptr i8, ptr %overflow_arg_area171, i32 8
  store ptr %overflow_arg_area.next172, ptr %overflow_arg_area_p170, align 8
  br label %vaarg.end173

vaarg.end173:                                     ; preds = %vaarg.in_mem169, %vaarg.in_reg167
  %vaarg.addr174 = phi ptr [ %91, %vaarg.in_reg167 ], [ %overflow_arg_area171, %vaarg.in_mem169 ]
  %93 = load i64, ptr %vaarg.addr174, align 8
  store i64 %93, ptr %v, align 8, !tbaa !23
  br label %if.end187

if.else175:                                       ; preds = %if.then159
  %94 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %gp_offset_p176 = getelementptr inbounds %struct.__va_list_tag, ptr %94, i32 0, i32 0
  %gp_offset177 = load i32, ptr %gp_offset_p176, align 8
  %fits_in_gp178 = icmp ule i32 %gp_offset177, 40
  br i1 %fits_in_gp178, label %vaarg.in_reg179, label %vaarg.in_mem181

vaarg.in_reg179:                                  ; preds = %if.else175
  %95 = getelementptr inbounds %struct.__va_list_tag, ptr %94, i32 0, i32 3
  %reg_save_area180 = load ptr, ptr %95, align 8
  %96 = getelementptr i8, ptr %reg_save_area180, i32 %gp_offset177
  %97 = add i32 %gp_offset177, 8
  store i32 %97, ptr %gp_offset_p176, align 8
  br label %vaarg.end185

vaarg.in_mem181:                                  ; preds = %if.else175
  %overflow_arg_area_p182 = getelementptr inbounds %struct.__va_list_tag, ptr %94, i32 0, i32 2
  %overflow_arg_area183 = load ptr, ptr %overflow_arg_area_p182, align 8
  %overflow_arg_area.next184 = getelementptr i8, ptr %overflow_arg_area183, i32 8
  store ptr %overflow_arg_area.next184, ptr %overflow_arg_area_p182, align 8
  br label %vaarg.end185

vaarg.end185:                                     ; preds = %vaarg.in_mem181, %vaarg.in_reg179
  %vaarg.addr186 = phi ptr [ %96, %vaarg.in_reg179 ], [ %overflow_arg_area183, %vaarg.in_mem181 ]
  %98 = load i64, ptr %vaarg.addr186, align 8
  store i64 %98, ptr %v, align 8, !tbaa !23
  br label %if.end187

if.end187:                                        ; preds = %vaarg.end185, %vaarg.end173
  br label %if.end201

if.else188:                                       ; preds = %if.else157
  %99 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %gp_offset_p189 = getelementptr inbounds %struct.__va_list_tag, ptr %99, i32 0, i32 0
  %gp_offset190 = load i32, ptr %gp_offset_p189, align 8
  %fits_in_gp191 = icmp ule i32 %gp_offset190, 40
  br i1 %fits_in_gp191, label %vaarg.in_reg192, label %vaarg.in_mem194

vaarg.in_reg192:                                  ; preds = %if.else188
  %100 = getelementptr inbounds %struct.__va_list_tag, ptr %99, i32 0, i32 3
  %reg_save_area193 = load ptr, ptr %100, align 8
  %101 = getelementptr i8, ptr %reg_save_area193, i32 %gp_offset190
  %102 = add i32 %gp_offset190, 8
  store i32 %102, ptr %gp_offset_p189, align 8
  br label %vaarg.end198

vaarg.in_mem194:                                  ; preds = %if.else188
  %overflow_arg_area_p195 = getelementptr inbounds %struct.__va_list_tag, ptr %99, i32 0, i32 2
  %overflow_arg_area196 = load ptr, ptr %overflow_arg_area_p195, align 8
  %overflow_arg_area.next197 = getelementptr i8, ptr %overflow_arg_area196, i32 8
  store ptr %overflow_arg_area.next197, ptr %overflow_arg_area_p195, align 8
  br label %vaarg.end198

vaarg.end198:                                     ; preds = %vaarg.in_mem194, %vaarg.in_reg192
  %vaarg.addr199 = phi ptr [ %101, %vaarg.in_reg192 ], [ %overflow_arg_area196, %vaarg.in_mem194 ]
  %103 = load i32, ptr %vaarg.addr199, align 4
  %conv200 = sext i32 %103 to i64
  store i64 %conv200, ptr %v, align 8, !tbaa !23
  br label %if.end201

if.end201:                                        ; preds = %vaarg.end198, %if.end187
  br label %if.end202

if.end202:                                        ; preds = %if.end201, %if.then156
  %104 = load i64, ptr %v, align 8, !tbaa !23
  %cmp203 = icmp slt i64 %104, 0
  br i1 %cmp203, label %if.then205, label %if.else212

if.then205:                                       ; preds = %if.end202
  %105 = load i64, ptr %v, align 8, !tbaa !23
  %cmp206 = icmp eq i64 %105, -9223372036854775808
  br i1 %cmp206, label %if.then208, label %if.else209

if.then208:                                       ; preds = %if.then205
  store i64 -9223372036854775808, ptr %longvalue, align 8, !tbaa !23
  br label %if.end211

if.else209:                                       ; preds = %if.then205
  %106 = load i64, ptr %v, align 8, !tbaa !23
  %sub210 = sub nsw i64 0, %106
  store i64 %sub210, ptr %longvalue, align 8, !tbaa !23
  br label %if.end211

if.end211:                                        ; preds = %if.else209, %if.then208
  store i8 45, ptr %prefix, align 1, !tbaa !8
  br label %if.end213

if.else212:                                       ; preds = %if.end202
  %107 = load i64, ptr %v, align 8, !tbaa !23
  store i64 %107, ptr %longvalue, align 8, !tbaa !23
  %108 = load i8, ptr %flag_prefix, align 1, !tbaa !8
  store i8 %108, ptr %prefix, align 1, !tbaa !8
  br label %if.end213

if.end213:                                        ; preds = %if.else212, %if.end211
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #9
  br label %if.end263

if.else214:                                       ; preds = %sw.bb150
  %109 = load i8, ptr %bArgList, align 1, !tbaa !8
  %tobool215 = icmp ne i8 %109, 0
  br i1 %tobool215, label %if.then216, label %if.else217

if.then216:                                       ; preds = %if.else214
  br label %if.end262

if.else217:                                       ; preds = %if.else214
  %110 = load i8, ptr %flag_long, align 1, !tbaa !8
  %tobool218 = icmp ne i8 %110, 0
  br i1 %tobool218, label %if.then219, label %if.else248

if.then219:                                       ; preds = %if.else217
  %111 = load i8, ptr %flag_long, align 1, !tbaa !8
  %conv220 = zext i8 %111 to i32
  %cmp221 = icmp eq i32 %conv220, 2
  br i1 %cmp221, label %if.then223, label %if.else235

if.then223:                                       ; preds = %if.then219
  %112 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %gp_offset_p224 = getelementptr inbounds %struct.__va_list_tag, ptr %112, i32 0, i32 0
  %gp_offset225 = load i32, ptr %gp_offset_p224, align 8
  %fits_in_gp226 = icmp ule i32 %gp_offset225, 40
  br i1 %fits_in_gp226, label %vaarg.in_reg227, label %vaarg.in_mem229

vaarg.in_reg227:                                  ; preds = %if.then223
  %113 = getelementptr inbounds %struct.__va_list_tag, ptr %112, i32 0, i32 3
  %reg_save_area228 = load ptr, ptr %113, align 8
  %114 = getelementptr i8, ptr %reg_save_area228, i32 %gp_offset225
  %115 = add i32 %gp_offset225, 8
  store i32 %115, ptr %gp_offset_p224, align 8
  br label %vaarg.end233

vaarg.in_mem229:                                  ; preds = %if.then223
  %overflow_arg_area_p230 = getelementptr inbounds %struct.__va_list_tag, ptr %112, i32 0, i32 2
  %overflow_arg_area231 = load ptr, ptr %overflow_arg_area_p230, align 8
  %overflow_arg_area.next232 = getelementptr i8, ptr %overflow_arg_area231, i32 8
  store ptr %overflow_arg_area.next232, ptr %overflow_arg_area_p230, align 8
  br label %vaarg.end233

vaarg.end233:                                     ; preds = %vaarg.in_mem229, %vaarg.in_reg227
  %vaarg.addr234 = phi ptr [ %114, %vaarg.in_reg227 ], [ %overflow_arg_area231, %vaarg.in_mem229 ]
  %116 = load i64, ptr %vaarg.addr234, align 8
  store i64 %116, ptr %longvalue, align 8, !tbaa !23
  br label %if.end247

if.else235:                                       ; preds = %if.then219
  %117 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %gp_offset_p236 = getelementptr inbounds %struct.__va_list_tag, ptr %117, i32 0, i32 0
  %gp_offset237 = load i32, ptr %gp_offset_p236, align 8
  %fits_in_gp238 = icmp ule i32 %gp_offset237, 40
  br i1 %fits_in_gp238, label %vaarg.in_reg239, label %vaarg.in_mem241

vaarg.in_reg239:                                  ; preds = %if.else235
  %118 = getelementptr inbounds %struct.__va_list_tag, ptr %117, i32 0, i32 3
  %reg_save_area240 = load ptr, ptr %118, align 8
  %119 = getelementptr i8, ptr %reg_save_area240, i32 %gp_offset237
  %120 = add i32 %gp_offset237, 8
  store i32 %120, ptr %gp_offset_p236, align 8
  br label %vaarg.end245

vaarg.in_mem241:                                  ; preds = %if.else235
  %overflow_arg_area_p242 = getelementptr inbounds %struct.__va_list_tag, ptr %117, i32 0, i32 2
  %overflow_arg_area243 = load ptr, ptr %overflow_arg_area_p242, align 8
  %overflow_arg_area.next244 = getelementptr i8, ptr %overflow_arg_area243, i32 8
  store ptr %overflow_arg_area.next244, ptr %overflow_arg_area_p242, align 8
  br label %vaarg.end245

vaarg.end245:                                     ; preds = %vaarg.in_mem241, %vaarg.in_reg239
  %vaarg.addr246 = phi ptr [ %119, %vaarg.in_reg239 ], [ %overflow_arg_area243, %vaarg.in_mem241 ]
  %121 = load i64, ptr %vaarg.addr246, align 8
  store i64 %121, ptr %longvalue, align 8, !tbaa !23
  br label %if.end247

if.end247:                                        ; preds = %vaarg.end245, %vaarg.end233
  br label %if.end261

if.else248:                                       ; preds = %if.else217
  %122 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %gp_offset_p249 = getelementptr inbounds %struct.__va_list_tag, ptr %122, i32 0, i32 0
  %gp_offset250 = load i32, ptr %gp_offset_p249, align 8
  %fits_in_gp251 = icmp ule i32 %gp_offset250, 40
  br i1 %fits_in_gp251, label %vaarg.in_reg252, label %vaarg.in_mem254

vaarg.in_reg252:                                  ; preds = %if.else248
  %123 = getelementptr inbounds %struct.__va_list_tag, ptr %122, i32 0, i32 3
  %reg_save_area253 = load ptr, ptr %123, align 8
  %124 = getelementptr i8, ptr %reg_save_area253, i32 %gp_offset250
  %125 = add i32 %gp_offset250, 8
  store i32 %125, ptr %gp_offset_p249, align 8
  br label %vaarg.end258

vaarg.in_mem254:                                  ; preds = %if.else248
  %overflow_arg_area_p255 = getelementptr inbounds %struct.__va_list_tag, ptr %122, i32 0, i32 2
  %overflow_arg_area256 = load ptr, ptr %overflow_arg_area_p255, align 8
  %overflow_arg_area.next257 = getelementptr i8, ptr %overflow_arg_area256, i32 8
  store ptr %overflow_arg_area.next257, ptr %overflow_arg_area_p255, align 8
  br label %vaarg.end258

vaarg.end258:                                     ; preds = %vaarg.in_mem254, %vaarg.in_reg252
  %vaarg.addr259 = phi ptr [ %124, %vaarg.in_reg252 ], [ %overflow_arg_area256, %vaarg.in_mem254 ]
  %126 = load i32, ptr %vaarg.addr259, align 4
  %conv260 = zext i32 %126 to i64
  store i64 %conv260, ptr %longvalue, align 8, !tbaa !23
  br label %if.end261

if.end261:                                        ; preds = %vaarg.end258, %if.end247
  br label %if.end262

if.end262:                                        ; preds = %if.end261, %if.then216
  store i8 0, ptr %prefix, align 1, !tbaa !8
  br label %if.end263

if.end263:                                        ; preds = %if.end262, %if.end213
  %127 = load i64, ptr %longvalue, align 8, !tbaa !23
  %cmp264 = icmp eq i64 %127, 0
  br i1 %cmp264, label %if.then266, label %if.end267

if.then266:                                       ; preds = %if.end263
  store i8 0, ptr %flag_alternateform, align 1, !tbaa !8
  br label %if.end267

if.end267:                                        ; preds = %if.then266, %if.end263
  %128 = load i8, ptr %flag_zeropad, align 1, !tbaa !8
  %conv268 = zext i8 %128 to i32
  %tobool269 = icmp ne i32 %conv268, 0
  br i1 %tobool269, label %land.lhs.true, label %if.end281

land.lhs.true:                                    ; preds = %if.end267
  %129 = load i32, ptr %precision, align 4, !tbaa !12
  %130 = load i32, ptr %width, align 4, !tbaa !12
  %131 = load i8, ptr %prefix, align 1, !tbaa !8
  %conv270 = sext i8 %131 to i32
  %cmp271 = icmp ne i32 %conv270, 0
  %conv272 = zext i1 %cmp271 to i32
  %sub273 = sub nsw i32 %130, %conv272
  %cmp274 = icmp slt i32 %129, %sub273
  br i1 %cmp274, label %if.then276, label %if.end281

if.then276:                                       ; preds = %land.lhs.true
  %132 = load i32, ptr %width, align 4, !tbaa !12
  %133 = load i8, ptr %prefix, align 1, !tbaa !8
  %conv277 = sext i8 %133 to i32
  %cmp278 = icmp ne i32 %conv277, 0
  %conv279 = zext i1 %cmp278 to i32
  %sub280 = sub nsw i32 %132, %conv279
  store i32 %sub280, ptr %precision, align 4, !tbaa !12
  br label %if.end281

if.end281:                                        ; preds = %if.then276, %land.lhs.true, %if.end267
  %134 = load i32, ptr %precision, align 4, !tbaa !12
  %cmp282 = icmp slt i32 %134, 37
  br i1 %cmp282, label %if.then284, label %if.else285

if.then284:                                       ; preds = %if.end281
  store i32 70, ptr %nOut, align 4, !tbaa !12
  %arraydecay = getelementptr inbounds [70 x i8], ptr %buf, i64 0, i64 0
  store ptr %arraydecay, ptr %zOut, align 8, !tbaa !4
  br label %if.end295

if.else285:                                       ; preds = %if.end281
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #9
  %135 = load i32, ptr %precision, align 4, !tbaa !12
  %conv286 = sext i32 %135 to i64
  %add287 = add i64 %conv286, 10
  %136 = load i32, ptr %precision, align 4, !tbaa !12
  %div = sdiv i32 %136, 3
  %conv288 = sext i32 %div to i64
  %add289 = add i64 %add287, %conv288
  store i64 %add289, ptr %n, align 8, !tbaa !23
  %137 = load i64, ptr %n, align 8, !tbaa !23
  %call = call noalias ptr @malloc(i64 noundef %137) #10
  store ptr %call, ptr %zExtra, align 8, !tbaa !4
  store ptr %call, ptr %zOut, align 8, !tbaa !4
  %138 = load ptr, ptr %zOut, align 8, !tbaa !4
  %cmp290 = icmp eq ptr %138, null
  br i1 %cmp290, label %if.then292, label %if.end293

if.then292:                                       ; preds = %if.else285
  %139 = load ptr, ptr %pAccum.addr, align 8, !tbaa !4
  call void @setStrAccumError(ptr noundef %139, i8 noundef zeroext 1)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end293:                                        ; preds = %if.else285
  %140 = load i64, ptr %n, align 8, !tbaa !23
  %conv294 = trunc i64 %140 to i32
  store i32 %conv294, ptr %nOut, align 4, !tbaa !12
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end293, %if.then292
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #9
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup1150 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end295

if.end295:                                        ; preds = %cleanup.cont, %if.then284
  %141 = load ptr, ptr %zOut, align 8, !tbaa !4
  %142 = load i32, ptr %nOut, align 4, !tbaa !12
  %sub296 = sub nsw i32 %142, 1
  %idxprom297 = sext i32 %sub296 to i64
  %arrayidx298 = getelementptr inbounds i8, ptr %141, i64 %idxprom297
  store ptr %arrayidx298, ptr %bufpt, align 8, !tbaa !4
  %143 = load i8, ptr %xtype, align 1, !tbaa !8
  %conv299 = zext i8 %143 to i32
  %cmp300 = icmp eq i32 %conv299, 15
  br i1 %cmp300, label %if.then302, label %if.end321

if.then302:                                       ; preds = %if.end295
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #9
  %144 = load i64, ptr %longvalue, align 8, !tbaa !23
  %rem = urem i64 %144, 10
  %conv303 = trunc i64 %rem to i32
  store i32 %conv303, ptr %x, align 4, !tbaa !12
  %145 = load i32, ptr %x, align 4, !tbaa !12
  %cmp304 = icmp sge i32 %145, 4
  br i1 %cmp304, label %if.then310, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then302
  %146 = load i64, ptr %longvalue, align 8, !tbaa !23
  %div306 = udiv i64 %146, 10
  %rem307 = urem i64 %div306, 10
  %cmp308 = icmp eq i64 %rem307, 1
  br i1 %cmp308, label %if.then310, label %if.end311

if.then310:                                       ; preds = %lor.lhs.false, %if.then302
  store i32 0, ptr %x, align 4, !tbaa !12
  br label %if.end311

if.end311:                                        ; preds = %if.then310, %lor.lhs.false
  %147 = load i32, ptr %x, align 4, !tbaa !12
  %mul312 = mul nsw i32 %147, 2
  %add313 = add nsw i32 %mul312, 1
  %idxprom314 = sext i32 %add313 to i64
  %arrayidx315 = getelementptr inbounds [9 x i8], ptr @duckdb_shell_sqlite3VXPrintf.zOrd, i64 0, i64 %idxprom314
  %148 = load i8, ptr %arrayidx315, align 1, !tbaa !8
  %149 = load ptr, ptr %bufpt, align 8, !tbaa !4
  %incdec.ptr316 = getelementptr inbounds i8, ptr %149, i32 -1
  store ptr %incdec.ptr316, ptr %bufpt, align 8, !tbaa !4
  store i8 %148, ptr %incdec.ptr316, align 1, !tbaa !8
  %150 = load i32, ptr %x, align 4, !tbaa !12
  %mul317 = mul nsw i32 %150, 2
  %idxprom318 = sext i32 %mul317 to i64
  %arrayidx319 = getelementptr inbounds [9 x i8], ptr @duckdb_shell_sqlite3VXPrintf.zOrd, i64 0, i64 %idxprom318
  %151 = load i8, ptr %arrayidx319, align 1, !tbaa !8
  %152 = load ptr, ptr %bufpt, align 8, !tbaa !4
  %incdec.ptr320 = getelementptr inbounds i8, ptr %152, i32 -1
  store ptr %incdec.ptr320, ptr %bufpt, align 8, !tbaa !4
  store i8 %151, ptr %incdec.ptr320, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #9
  br label %if.end321

if.end321:                                        ; preds = %if.end311, %if.end295
  call void @llvm.lifetime.start.p0(i64 8, ptr %cset) #9
  %153 = load ptr, ptr %infop, align 8, !tbaa !4
  %charset = getelementptr inbounds %struct.et_info, ptr %153, i32 0, i32 4
  %154 = load i8, ptr %charset, align 1, !tbaa !25
  %idxprom322 = zext i8 %154 to i64
  %arrayidx323 = getelementptr inbounds [33 x i8], ptr @aDigits, i64 0, i64 %idxprom322
  store ptr %arrayidx323, ptr %cset, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %base) #9
  %155 = load ptr, ptr %infop, align 8, !tbaa !4
  %base324 = getelementptr inbounds %struct.et_info, ptr %155, i32 0, i32 1
  %156 = load i8, ptr %base324, align 1, !tbaa !26
  store i8 %156, ptr %base, align 1, !tbaa !8
  br label %do.body325

do.body325:                                       ; preds = %do.cond332, %if.end321
  %157 = load ptr, ptr %cset, align 8, !tbaa !4
  %158 = load i64, ptr %longvalue, align 8, !tbaa !23
  %159 = load i8, ptr %base, align 1, !tbaa !8
  %conv326 = zext i8 %159 to i64
  %rem327 = urem i64 %158, %conv326
  %arrayidx328 = getelementptr inbounds i8, ptr %157, i64 %rem327
  %160 = load i8, ptr %arrayidx328, align 1, !tbaa !8
  %161 = load ptr, ptr %bufpt, align 8, !tbaa !4
  %incdec.ptr329 = getelementptr inbounds i8, ptr %161, i32 -1
  store ptr %incdec.ptr329, ptr %bufpt, align 8, !tbaa !4
  store i8 %160, ptr %incdec.ptr329, align 1, !tbaa !8
  %162 = load i64, ptr %longvalue, align 8, !tbaa !23
  %163 = load i8, ptr %base, align 1, !tbaa !8
  %conv330 = zext i8 %163 to i64
  %div331 = udiv i64 %162, %conv330
  store i64 %div331, ptr %longvalue, align 8, !tbaa !23
  br label %do.cond332

do.cond332:                                       ; preds = %do.body325
  %164 = load i64, ptr %longvalue, align 8, !tbaa !23
  %cmp333 = icmp ugt i64 %164, 0
  br i1 %cmp333, label %do.body325, label %do.end335, !llvm.loop !27

do.end335:                                        ; preds = %do.cond332
  call void @llvm.lifetime.end.p0(i64 1, ptr %base) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %cset) #9
  %165 = load ptr, ptr %zOut, align 8, !tbaa !4
  %166 = load i32, ptr %nOut, align 4, !tbaa !12
  %sub336 = sub nsw i32 %166, 1
  %idxprom337 = sext i32 %sub336 to i64
  %arrayidx338 = getelementptr inbounds i8, ptr %165, i64 %idxprom337
  %167 = load ptr, ptr %bufpt, align 8, !tbaa !4
  %sub.ptr.lhs.cast339 = ptrtoint ptr %arrayidx338 to i64
  %sub.ptr.rhs.cast340 = ptrtoint ptr %167 to i64
  %sub.ptr.sub341 = sub i64 %sub.ptr.lhs.cast339, %sub.ptr.rhs.cast340
  %conv342 = trunc i64 %sub.ptr.sub341 to i32
  store i32 %conv342, ptr %length, align 4, !tbaa !12
  br label %while.cond343

while.cond343:                                    ; preds = %while.body346, %do.end335
  %168 = load i32, ptr %precision, align 4, !tbaa !12
  %169 = load i32, ptr %length, align 4, !tbaa !12
  %cmp344 = icmp sgt i32 %168, %169
  br i1 %cmp344, label %while.body346, label %while.end349

while.body346:                                    ; preds = %while.cond343
  %170 = load ptr, ptr %bufpt, align 8, !tbaa !4
  %incdec.ptr347 = getelementptr inbounds i8, ptr %170, i32 -1
  store ptr %incdec.ptr347, ptr %bufpt, align 8, !tbaa !4
  store i8 48, ptr %incdec.ptr347, align 1, !tbaa !8
  %171 = load i32, ptr %length, align 4, !tbaa !12
  %inc348 = add nsw i32 %171, 1
  store i32 %inc348, ptr %length, align 4, !tbaa !12
  br label %while.cond343, !llvm.loop !28

while.end349:                                     ; preds = %while.cond343
  %172 = load i8, ptr %cThousand, align 1, !tbaa !8
  %tobool350 = icmp ne i8 %172, 0
  br i1 %tobool350, label %if.then351, label %if.end377

if.then351:                                       ; preds = %while.end349
  call void @llvm.lifetime.start.p0(i64 4, ptr %nn) #9
  %173 = load i32, ptr %length, align 4, !tbaa !12
  %sub352 = sub nsw i32 %173, 1
  %div353 = sdiv i32 %sub352, 3
  store i32 %div353, ptr %nn, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %ix) #9
  %174 = load i32, ptr %length, align 4, !tbaa !12
  %sub354 = sub nsw i32 %174, 1
  %rem355 = srem i32 %sub354, 3
  %add356 = add nsw i32 %rem355, 1
  store i32 %add356, ptr %ix, align 4, !tbaa !12
  %175 = load i32, ptr %nn, align 4, !tbaa !12
  %176 = load ptr, ptr %bufpt, align 8, !tbaa !4
  %idx.ext = sext i32 %175 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, ptr %176, i64 %idx.neg
  store ptr %add.ptr, ptr %bufpt, align 8, !tbaa !4
  store i32 0, ptr %idx, align 4, !tbaa !12
  br label %for.cond357

for.cond357:                                      ; preds = %for.inc374, %if.then351
  %177 = load i32, ptr %nn, align 4, !tbaa !12
  %cmp358 = icmp sgt i32 %177, 0
  br i1 %cmp358, label %for.body360, label %for.end376

for.body360:                                      ; preds = %for.cond357
  %178 = load ptr, ptr %bufpt, align 8, !tbaa !4
  %179 = load i32, ptr %idx, align 4, !tbaa !12
  %180 = load i32, ptr %nn, align 4, !tbaa !12
  %add361 = add nsw i32 %179, %180
  %idxprom362 = sext i32 %add361 to i64
  %arrayidx363 = getelementptr inbounds i8, ptr %178, i64 %idxprom362
  %181 = load i8, ptr %arrayidx363, align 1, !tbaa !8
  %182 = load ptr, ptr %bufpt, align 8, !tbaa !4
  %183 = load i32, ptr %idx, align 4, !tbaa !12
  %idxprom364 = sext i32 %183 to i64
  %arrayidx365 = getelementptr inbounds i8, ptr %182, i64 %idxprom364
  store i8 %181, ptr %arrayidx365, align 1, !tbaa !8
  %184 = load i32, ptr %ix, align 4, !tbaa !12
  %dec = add nsw i32 %184, -1
  store i32 %dec, ptr %ix, align 4, !tbaa !12
  %185 = load i32, ptr %ix, align 4, !tbaa !12
  %cmp366 = icmp eq i32 %185, 0
  br i1 %cmp366, label %if.then368, label %if.end373

if.then368:                                       ; preds = %for.body360
  %186 = load i8, ptr %cThousand, align 1, !tbaa !8
  %187 = load ptr, ptr %bufpt, align 8, !tbaa !4
  %188 = load i32, ptr %idx, align 4, !tbaa !12
  %inc369 = add nsw i32 %188, 1
  store i32 %inc369, ptr %idx, align 4, !tbaa !12
  %idxprom370 = sext i32 %inc369 to i64
  %arrayidx371 = getelementptr inbounds i8, ptr %187, i64 %idxprom370
  store i8 %186, ptr %arrayidx371, align 1, !tbaa !8
  %189 = load i32, ptr %nn, align 4, !tbaa !12
  %dec372 = add nsw i32 %189, -1
  store i32 %dec372, ptr %nn, align 4, !tbaa !12
  store i32 3, ptr %ix, align 4, !tbaa !12
  br label %if.end373

if.end373:                                        ; preds = %if.then368, %for.body360
  br label %for.inc374

for.inc374:                                       ; preds = %if.end373
  %190 = load i32, ptr %idx, align 4, !tbaa !12
  %inc375 = add nsw i32 %190, 1
  store i32 %inc375, ptr %idx, align 4, !tbaa !12
  br label %for.cond357, !llvm.loop !29

for.end376:                                       ; preds = %for.cond357
  call void @llvm.lifetime.end.p0(i64 4, ptr %ix) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %nn) #9
  br label %if.end377

if.end377:                                        ; preds = %for.end376, %while.end349
  %191 = load i8, ptr %prefix, align 1, !tbaa !8
  %tobool378 = icmp ne i8 %191, 0
  br i1 %tobool378, label %if.then379, label %if.end381

if.then379:                                       ; preds = %if.end377
  %192 = load i8, ptr %prefix, align 1, !tbaa !8
  %193 = load ptr, ptr %bufpt, align 8, !tbaa !4
  %incdec.ptr380 = getelementptr inbounds i8, ptr %193, i32 -1
  store ptr %incdec.ptr380, ptr %bufpt, align 8, !tbaa !4
  store i8 %192, ptr %incdec.ptr380, align 1, !tbaa !8
  br label %if.end381

if.end381:                                        ; preds = %if.then379, %if.end377
  %194 = load i8, ptr %flag_alternateform, align 1, !tbaa !8
  %conv382 = zext i8 %194 to i32
  %tobool383 = icmp ne i32 %conv382, 0
  br i1 %tobool383, label %land.lhs.true384, label %if.end402

land.lhs.true384:                                 ; preds = %if.end381
  %195 = load ptr, ptr %infop, align 8, !tbaa !4
  %prefix385 = getelementptr inbounds %struct.et_info, ptr %195, i32 0, i32 5
  %196 = load i8, ptr %prefix385, align 1, !tbaa !30
  %conv386 = zext i8 %196 to i32
  %tobool387 = icmp ne i32 %conv386, 0
  br i1 %tobool387, label %if.then388, label %if.end402

if.then388:                                       ; preds = %land.lhs.true384
  call void @llvm.lifetime.start.p0(i64 8, ptr %pre) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr %x389) #9
  %197 = load ptr, ptr %infop, align 8, !tbaa !4
  %prefix390 = getelementptr inbounds %struct.et_info, ptr %197, i32 0, i32 5
  %198 = load i8, ptr %prefix390, align 1, !tbaa !30
  %idxprom391 = zext i8 %198 to i64
  %arrayidx392 = getelementptr inbounds [7 x i8], ptr @aPrefix, i64 0, i64 %idxprom391
  store ptr %arrayidx392, ptr %pre, align 8, !tbaa !4
  br label %for.cond393

for.cond393:                                      ; preds = %for.inc399, %if.then388
  %199 = load ptr, ptr %pre, align 8, !tbaa !4
  %200 = load i8, ptr %199, align 1, !tbaa !8
  store i8 %200, ptr %x389, align 1, !tbaa !8
  %conv394 = sext i8 %200 to i32
  %cmp395 = icmp ne i32 %conv394, 0
  br i1 %cmp395, label %for.body397, label %for.end401

for.body397:                                      ; preds = %for.cond393
  %201 = load i8, ptr %x389, align 1, !tbaa !8
  %202 = load ptr, ptr %bufpt, align 8, !tbaa !4
  %incdec.ptr398 = getelementptr inbounds i8, ptr %202, i32 -1
  store ptr %incdec.ptr398, ptr %bufpt, align 8, !tbaa !4
  store i8 %201, ptr %incdec.ptr398, align 1, !tbaa !8
  br label %for.inc399

for.inc399:                                       ; preds = %for.body397
  %203 = load ptr, ptr %pre, align 8, !tbaa !4
  %incdec.ptr400 = getelementptr inbounds i8, ptr %203, i32 1
  store ptr %incdec.ptr400, ptr %pre, align 8, !tbaa !4
  br label %for.cond393, !llvm.loop !31

for.end401:                                       ; preds = %for.cond393
  call void @llvm.lifetime.end.p0(i64 1, ptr %x389) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %pre) #9
  br label %if.end402

if.end402:                                        ; preds = %for.end401, %land.lhs.true384, %if.end381
  %204 = load ptr, ptr %zOut, align 8, !tbaa !4
  %205 = load i32, ptr %nOut, align 4, !tbaa !12
  %sub403 = sub nsw i32 %205, 1
  %idxprom404 = sext i32 %sub403 to i64
  %arrayidx405 = getelementptr inbounds i8, ptr %204, i64 %idxprom404
  %206 = load ptr, ptr %bufpt, align 8, !tbaa !4
  %sub.ptr.lhs.cast406 = ptrtoint ptr %arrayidx405 to i64
  %sub.ptr.rhs.cast407 = ptrtoint ptr %206 to i64
  %sub.ptr.sub408 = sub i64 %sub.ptr.lhs.cast406, %sub.ptr.rhs.cast407
  %conv409 = trunc i64 %sub.ptr.sub408 to i32
  store i32 %conv409, ptr %length, align 4, !tbaa !12
  br label %sw.epilog1131

sw.bb410:                                         ; preds = %for.end, %for.end, %for.end
  %207 = load i8, ptr %bArgList, align 1, !tbaa !8
  %tobool411 = icmp ne i8 %207, 0
  br i1 %tobool411, label %if.then412, label %if.else413

if.then412:                                       ; preds = %sw.bb410
  br label %if.end423

if.else413:                                       ; preds = %sw.bb410
  %208 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %fp_offset_p = getelementptr inbounds %struct.__va_list_tag, ptr %208, i32 0, i32 1
  %fp_offset = load i32, ptr %fp_offset_p, align 4
  %fits_in_fp = icmp ule i32 %fp_offset, 160
  br i1 %fits_in_fp, label %vaarg.in_reg414, label %vaarg.in_mem416

vaarg.in_reg414:                                  ; preds = %if.else413
  %209 = getelementptr inbounds %struct.__va_list_tag, ptr %208, i32 0, i32 3
  %reg_save_area415 = load ptr, ptr %209, align 8
  %210 = getelementptr i8, ptr %reg_save_area415, i32 %fp_offset
  %211 = add i32 %fp_offset, 16
  store i32 %211, ptr %fp_offset_p, align 4
  br label %vaarg.end420

vaarg.in_mem416:                                  ; preds = %if.else413
  %overflow_arg_area_p417 = getelementptr inbounds %struct.__va_list_tag, ptr %208, i32 0, i32 2
  %overflow_arg_area418 = load ptr, ptr %overflow_arg_area_p417, align 8
  %overflow_arg_area.next419 = getelementptr i8, ptr %overflow_arg_area418, i32 8
  store ptr %overflow_arg_area.next419, ptr %overflow_arg_area_p417, align 8
  br label %vaarg.end420

vaarg.end420:                                     ; preds = %vaarg.in_mem416, %vaarg.in_reg414
  %vaarg.addr421 = phi ptr [ %210, %vaarg.in_reg414 ], [ %overflow_arg_area418, %vaarg.in_mem416 ]
  %212 = load double, ptr %vaarg.addr421, align 8
  %conv422 = fpext double %212 to x86_fp80
  store x86_fp80 %conv422, ptr %realvalue, align 16, !tbaa !32
  br label %if.end423

if.end423:                                        ; preds = %vaarg.end420, %if.then412
  %213 = load i32, ptr %precision, align 4, !tbaa !12
  %cmp424 = icmp slt i32 %213, 0
  br i1 %cmp424, label %if.then426, label %if.end427

if.then426:                                       ; preds = %if.end423
  store i32 6, ptr %precision, align 4, !tbaa !12
  br label %if.end427

if.end427:                                        ; preds = %if.then426, %if.end423
  %214 = load x86_fp80, ptr %realvalue, align 16, !tbaa !32
  %cmp428 = fcmp olt x86_fp80 %214, 0xK00000000000000000000
  br i1 %cmp428, label %if.then430, label %if.else431

if.then430:                                       ; preds = %if.end427
  %215 = load x86_fp80, ptr %realvalue, align 16, !tbaa !32
  %fneg = fneg x86_fp80 %215
  store x86_fp80 %fneg, ptr %realvalue, align 16, !tbaa !32
  store i8 45, ptr %prefix, align 1, !tbaa !8
  br label %if.end432

if.else431:                                       ; preds = %if.end427
  %216 = load i8, ptr %flag_prefix, align 1, !tbaa !8
  store i8 %216, ptr %prefix, align 1, !tbaa !8
  br label %if.end432

if.end432:                                        ; preds = %if.else431, %if.then430
  %217 = load i8, ptr %xtype, align 1, !tbaa !8
  %conv433 = zext i8 %217 to i32
  %cmp434 = icmp eq i32 %conv433, 3
  br i1 %cmp434, label %land.lhs.true436, label %if.end441

land.lhs.true436:                                 ; preds = %if.end432
  %218 = load i32, ptr %precision, align 4, !tbaa !12
  %cmp437 = icmp sgt i32 %218, 0
  br i1 %cmp437, label %if.then439, label %if.end441

if.then439:                                       ; preds = %land.lhs.true436
  %219 = load i32, ptr %precision, align 4, !tbaa !12
  %dec440 = add nsw i32 %219, -1
  store i32 %dec440, ptr %precision, align 4, !tbaa !12
  br label %if.end441

if.end441:                                        ; preds = %if.then439, %land.lhs.true436, %if.end432
  %220 = load i32, ptr %precision, align 4, !tbaa !12
  %and442 = and i32 %220, 4095
  store i32 %and442, ptr %idx, align 4, !tbaa !12
  store double 5.000000e-01, ptr %rounder, align 8, !tbaa !34
  br label %for.cond443

for.cond443:                                      ; preds = %for.inc447, %if.end441
  %221 = load i32, ptr %idx, align 4, !tbaa !12
  %cmp444 = icmp sgt i32 %221, 0
  br i1 %cmp444, label %for.body446, label %for.end450

for.body446:                                      ; preds = %for.cond443
  br label %for.inc447

for.inc447:                                       ; preds = %for.body446
  %222 = load i32, ptr %idx, align 4, !tbaa !12
  %dec448 = add nsw i32 %222, -1
  store i32 %dec448, ptr %idx, align 4, !tbaa !12
  %223 = load double, ptr %rounder, align 8, !tbaa !34
  %mul449 = fmul double %223, 1.000000e-01
  store double %mul449, ptr %rounder, align 8, !tbaa !34
  br label %for.cond443, !llvm.loop !36

for.end450:                                       ; preds = %for.cond443
  %224 = load i8, ptr %xtype, align 1, !tbaa !8
  %conv451 = zext i8 %224 to i32
  %cmp452 = icmp eq i32 %conv451, 1
  br i1 %cmp452, label %if.then454, label %if.end457

if.then454:                                       ; preds = %for.end450
  %225 = load double, ptr %rounder, align 8, !tbaa !34
  %conv455 = fpext double %225 to x86_fp80
  %226 = load x86_fp80, ptr %realvalue, align 16, !tbaa !32
  %add456 = fadd x86_fp80 %226, %conv455
  store x86_fp80 %add456, ptr %realvalue, align 16, !tbaa !32
  br label %if.end457

if.end457:                                        ; preds = %if.then454, %for.end450
  store i32 0, ptr %exp, align 4, !tbaa !12
  %227 = load x86_fp80, ptr %realvalue, align 16, !tbaa !32
  %conv458 = fptrunc x86_fp80 %227 to double
  %228 = call i1 @llvm.is.fpclass.f64(double %conv458, i32 3)
  br i1 %228, label %if.then459, label %if.end460

if.then459:                                       ; preds = %if.end457
  store ptr @.str.1, ptr %bufpt, align 8, !tbaa !4
  store i32 3, ptr %length, align 4, !tbaa !12
  br label %sw.epilog1131

if.end460:                                        ; preds = %if.end457
  %229 = load x86_fp80, ptr %realvalue, align 16, !tbaa !32
  %cmp461 = fcmp ogt x86_fp80 %229, 0xK00000000000000000000
  br i1 %cmp461, label %if.then463, label %if.end534

if.then463:                                       ; preds = %if.end460
  call void @llvm.lifetime.start.p0(i64 16, ptr %scale) #9
  store x86_fp80 0xK3FFF8000000000000000, ptr %scale, align 16, !tbaa !32
  br label %while.cond464

while.cond464:                                    ; preds = %while.body472, %if.then463
  %230 = load x86_fp80, ptr %realvalue, align 16, !tbaa !32
  %231 = load x86_fp80, ptr %scale, align 16, !tbaa !32
  %mul465 = fmul x86_fp80 0xK414B924D692CA61BE800, %231
  %cmp466 = fcmp oge x86_fp80 %230, %mul465
  br i1 %cmp466, label %land.rhs468, label %land.end471

land.rhs468:                                      ; preds = %while.cond464
  %232 = load i32, ptr %exp, align 4, !tbaa !12
  %cmp469 = icmp sle i32 %232, 350
  br label %land.end471

land.end471:                                      ; preds = %land.rhs468, %while.cond464
  %233 = phi i1 [ false, %while.cond464 ], [ %cmp469, %land.rhs468 ]
  br i1 %233, label %while.body472, label %while.end475

while.body472:                                    ; preds = %land.end471
  %234 = load x86_fp80, ptr %scale, align 16, !tbaa !32
  %mul473 = fmul x86_fp80 %234, 0xK414B924D692CA61BE800
  store x86_fp80 %mul473, ptr %scale, align 16, !tbaa !32
  %235 = load i32, ptr %exp, align 4, !tbaa !12
  %add474 = add nsw i32 %235, 100
  store i32 %add474, ptr %exp, align 4, !tbaa !12
  br label %while.cond464, !llvm.loop !37

while.end475:                                     ; preds = %land.end471
  br label %while.cond476

while.cond476:                                    ; preds = %while.body484, %while.end475
  %236 = load x86_fp80, ptr %realvalue, align 16, !tbaa !32
  %237 = load x86_fp80, ptr %scale, align 16, !tbaa !32
  %mul477 = fmul x86_fp80 0xK40209502F90000000000, %237
  %cmp478 = fcmp oge x86_fp80 %236, %mul477
  br i1 %cmp478, label %land.rhs480, label %land.end483

land.rhs480:                                      ; preds = %while.cond476
  %238 = load i32, ptr %exp, align 4, !tbaa !12
  %cmp481 = icmp sle i32 %238, 350
  br label %land.end483

land.end483:                                      ; preds = %land.rhs480, %while.cond476
  %239 = phi i1 [ false, %while.cond476 ], [ %cmp481, %land.rhs480 ]
  br i1 %239, label %while.body484, label %while.end487

while.body484:                                    ; preds = %land.end483
  %240 = load x86_fp80, ptr %scale, align 16, !tbaa !32
  %mul485 = fmul x86_fp80 %240, 0xK40209502F90000000000
  store x86_fp80 %mul485, ptr %scale, align 16, !tbaa !32
  %241 = load i32, ptr %exp, align 4, !tbaa !12
  %add486 = add nsw i32 %241, 10
  store i32 %add486, ptr %exp, align 4, !tbaa !12
  br label %while.cond476, !llvm.loop !38

while.end487:                                     ; preds = %land.end483
  br label %while.cond488

while.cond488:                                    ; preds = %while.body496, %while.end487
  %242 = load x86_fp80, ptr %realvalue, align 16, !tbaa !32
  %243 = load x86_fp80, ptr %scale, align 16, !tbaa !32
  %mul489 = fmul x86_fp80 0xK4002A000000000000000, %243
  %cmp490 = fcmp oge x86_fp80 %242, %mul489
  br i1 %cmp490, label %land.rhs492, label %land.end495

land.rhs492:                                      ; preds = %while.cond488
  %244 = load i32, ptr %exp, align 4, !tbaa !12
  %cmp493 = icmp sle i32 %244, 350
  br label %land.end495

land.end495:                                      ; preds = %land.rhs492, %while.cond488
  %245 = phi i1 [ false, %while.cond488 ], [ %cmp493, %land.rhs492 ]
  br i1 %245, label %while.body496, label %while.end499

while.body496:                                    ; preds = %land.end495
  %246 = load x86_fp80, ptr %scale, align 16, !tbaa !32
  %mul497 = fmul x86_fp80 %246, 0xK4002A000000000000000
  store x86_fp80 %mul497, ptr %scale, align 16, !tbaa !32
  %247 = load i32, ptr %exp, align 4, !tbaa !12
  %inc498 = add nsw i32 %247, 1
  store i32 %inc498, ptr %exp, align 4, !tbaa !12
  br label %while.cond488, !llvm.loop !39

while.end499:                                     ; preds = %land.end495
  %248 = load x86_fp80, ptr %scale, align 16, !tbaa !32
  %249 = load x86_fp80, ptr %realvalue, align 16, !tbaa !32
  %div500 = fdiv x86_fp80 %249, %248
  store x86_fp80 %div500, ptr %realvalue, align 16, !tbaa !32
  br label %while.cond501

while.cond501:                                    ; preds = %while.body504, %while.end499
  %250 = load x86_fp80, ptr %realvalue, align 16, !tbaa !32
  %cmp502 = fcmp olt x86_fp80 %250, 0xK3FE4ABCC77118461D000
  br i1 %cmp502, label %while.body504, label %while.end507

while.body504:                                    ; preds = %while.cond501
  %251 = load x86_fp80, ptr %realvalue, align 16, !tbaa !32
  %mul505 = fmul x86_fp80 %251, 0xK4019BEBC200000000000
  store x86_fp80 %mul505, ptr %realvalue, align 16, !tbaa !32
  %252 = load i32, ptr %exp, align 4, !tbaa !12
  %sub506 = sub nsw i32 %252, 8
  store i32 %sub506, ptr %exp, align 4, !tbaa !12
  br label %while.cond501, !llvm.loop !40

while.end507:                                     ; preds = %while.cond501
  br label %while.cond508

while.cond508:                                    ; preds = %while.body511, %while.end507
  %253 = load x86_fp80, ptr %realvalue, align 16, !tbaa !32
  %cmp509 = fcmp olt x86_fp80 %253, 0xK3FFF8000000000000000
  br i1 %cmp509, label %while.body511, label %while.end514

while.body511:                                    ; preds = %while.cond508
  %254 = load x86_fp80, ptr %realvalue, align 16, !tbaa !32
  %mul512 = fmul x86_fp80 %254, 0xK4002A000000000000000
  store x86_fp80 %mul512, ptr %realvalue, align 16, !tbaa !32
  %255 = load i32, ptr %exp, align 4, !tbaa !12
  %dec513 = add nsw i32 %255, -1
  store i32 %dec513, ptr %exp, align 4, !tbaa !12
  br label %while.cond508, !llvm.loop !41

while.end514:                                     ; preds = %while.cond508
  %256 = load i32, ptr %exp, align 4, !tbaa !12
  %cmp515 = icmp sgt i32 %256, 350
  br i1 %cmp515, label %if.then517, label %if.end530

if.then517:                                       ; preds = %while.end514
  %arraydecay518 = getelementptr inbounds [70 x i8], ptr %buf, i64 0, i64 0
  store ptr %arraydecay518, ptr %bufpt, align 8, !tbaa !4
  %257 = load i8, ptr %prefix, align 1, !tbaa !8
  %arrayidx519 = getelementptr inbounds [70 x i8], ptr %buf, i64 0, i64 0
  store i8 %257, ptr %arrayidx519, align 16, !tbaa !8
  %arraydecay520 = getelementptr inbounds [70 x i8], ptr %buf, i64 0, i64 0
  %258 = load i8, ptr %prefix, align 1, !tbaa !8
  %conv521 = sext i8 %258 to i32
  %cmp522 = icmp ne i32 %conv521, 0
  %conv523 = zext i1 %cmp522 to i32
  %idx.ext524 = sext i32 %conv523 to i64
  %add.ptr525 = getelementptr inbounds i8, ptr %arraydecay520, i64 %idx.ext524
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr525, ptr align 1 @.str.2, i64 4, i1 false)
  %259 = load i8, ptr %prefix, align 1, !tbaa !8
  %conv526 = sext i8 %259 to i32
  %cmp527 = icmp ne i32 %conv526, 0
  %conv528 = zext i1 %cmp527 to i32
  %add529 = add nsw i32 3, %conv528
  store i32 %add529, ptr %length, align 4, !tbaa !12
  store i32 17, ptr %cleanup.dest.slot, align 4
  br label %cleanup531

if.end530:                                        ; preds = %while.end514
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup531

cleanup531:                                       ; preds = %if.end530, %if.then517
  call void @llvm.lifetime.end.p0(i64 16, ptr %scale) #9
  %cleanup.dest532 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest532, label %unreachable [
    i32 0, label %cleanup.cont533
    i32 17, label %sw.epilog1131
  ]

cleanup.cont533:                                  ; preds = %cleanup531
  br label %if.end534

if.end534:                                        ; preds = %cleanup.cont533, %if.end460
  %arraydecay535 = getelementptr inbounds [70 x i8], ptr %buf, i64 0, i64 0
  store ptr %arraydecay535, ptr %bufpt, align 8, !tbaa !4
  %260 = load i8, ptr %xtype, align 1, !tbaa !8
  %conv536 = zext i8 %260 to i32
  %cmp537 = icmp ne i32 %conv536, 1
  br i1 %cmp537, label %if.then539, label %if.end548

if.then539:                                       ; preds = %if.end534
  %261 = load double, ptr %rounder, align 8, !tbaa !34
  %conv540 = fpext double %261 to x86_fp80
  %262 = load x86_fp80, ptr %realvalue, align 16, !tbaa !32
  %add541 = fadd x86_fp80 %262, %conv540
  store x86_fp80 %add541, ptr %realvalue, align 16, !tbaa !32
  %263 = load x86_fp80, ptr %realvalue, align 16, !tbaa !32
  %cmp542 = fcmp oge x86_fp80 %263, 0xK4002A000000000000000
  br i1 %cmp542, label %if.then544, label %if.end547

if.then544:                                       ; preds = %if.then539
  %264 = load x86_fp80, ptr %realvalue, align 16, !tbaa !32
  %mul545 = fmul x86_fp80 %264, 0xK3FFBCCCCCCCCCCCCD000
  store x86_fp80 %mul545, ptr %realvalue, align 16, !tbaa !32
  %265 = load i32, ptr %exp, align 4, !tbaa !12
  %inc546 = add nsw i32 %265, 1
  store i32 %inc546, ptr %exp, align 4, !tbaa !12
  br label %if.end547

if.end547:                                        ; preds = %if.then544, %if.then539
  br label %if.end548

if.end548:                                        ; preds = %if.end547, %if.end534
  %266 = load i8, ptr %xtype, align 1, !tbaa !8
  %conv549 = zext i8 %266 to i32
  %cmp550 = icmp eq i32 %conv549, 3
  br i1 %cmp550, label %if.then552, label %if.else564

if.then552:                                       ; preds = %if.end548
  %267 = load i8, ptr %flag_alternateform, align 1, !tbaa !8
  %tobool553 = icmp ne i8 %267, 0
  %lnot = xor i1 %tobool553, true
  %lnot.ext = zext i1 %lnot to i32
  %conv554 = trunc i32 %lnot.ext to i8
  store i8 %conv554, ptr %flag_rtz, align 1, !tbaa !8
  %268 = load i32, ptr %exp, align 4, !tbaa !12
  %cmp555 = icmp slt i32 %268, -4
  br i1 %cmp555, label %if.then560, label %lor.lhs.false557

lor.lhs.false557:                                 ; preds = %if.then552
  %269 = load i32, ptr %exp, align 4, !tbaa !12
  %270 = load i32, ptr %precision, align 4, !tbaa !12
  %cmp558 = icmp sgt i32 %269, %270
  br i1 %cmp558, label %if.then560, label %if.else561

if.then560:                                       ; preds = %lor.lhs.false557, %if.then552
  store i8 2, ptr %xtype, align 1, !tbaa !8
  br label %if.end563

if.else561:                                       ; preds = %lor.lhs.false557
  %271 = load i32, ptr %precision, align 4, !tbaa !12
  %272 = load i32, ptr %exp, align 4, !tbaa !12
  %sub562 = sub nsw i32 %271, %272
  store i32 %sub562, ptr %precision, align 4, !tbaa !12
  store i8 1, ptr %xtype, align 1, !tbaa !8
  br label %if.end563

if.end563:                                        ; preds = %if.else561, %if.then560
  br label %if.end565

if.else564:                                       ; preds = %if.end548
  %273 = load i8, ptr %flag_altform2, align 1, !tbaa !8
  store i8 %273, ptr %flag_rtz, align 1, !tbaa !8
  br label %if.end565

if.end565:                                        ; preds = %if.else564, %if.end563
  %274 = load i8, ptr %xtype, align 1, !tbaa !8
  %conv566 = zext i8 %274 to i32
  %cmp567 = icmp eq i32 %conv566, 2
  br i1 %cmp567, label %if.then569, label %if.else570

if.then569:                                       ; preds = %if.end565
  store i32 0, ptr %e2, align 4, !tbaa !12
  br label %if.end571

if.else570:                                       ; preds = %if.end565
  %275 = load i32, ptr %exp, align 4, !tbaa !12
  store i32 %275, ptr %e2, align 4, !tbaa !12
  br label %if.end571

if.end571:                                        ; preds = %if.else570, %if.then569
  %276 = load i32, ptr %e2, align 4, !tbaa !12
  %cmp572 = icmp sgt i32 %276, 0
  br i1 %cmp572, label %cond.true574, label %cond.false575

cond.true574:                                     ; preds = %if.end571
  %277 = load i32, ptr %e2, align 4, !tbaa !12
  br label %cond.end576

cond.false575:                                    ; preds = %if.end571
  br label %cond.end576

cond.end576:                                      ; preds = %cond.false575, %cond.true574
  %cond577 = phi i32 [ %277, %cond.true574 ], [ 0, %cond.false575 ]
  %conv578 = sext i32 %cond577 to i64
  %278 = load i32, ptr %precision, align 4, !tbaa !12
  %conv579 = sext i32 %278 to i64
  %add580 = add nsw i64 %conv578, %conv579
  %279 = load i32, ptr %width, align 4, !tbaa !12
  %conv581 = sext i32 %279 to i64
  %add582 = add nsw i64 %add580, %conv581
  %cmp583 = icmp sgt i64 %add582, 55
  br i1 %cmp583, label %if.then585, label %if.end603

if.then585:                                       ; preds = %cond.end576
  %280 = load i32, ptr %e2, align 4, !tbaa !12
  %cmp586 = icmp sgt i32 %280, 0
  br i1 %cmp586, label %cond.true588, label %cond.false589

cond.true588:                                     ; preds = %if.then585
  %281 = load i32, ptr %e2, align 4, !tbaa !12
  br label %cond.end590

cond.false589:                                    ; preds = %if.then585
  br label %cond.end590

cond.end590:                                      ; preds = %cond.false589, %cond.true588
  %cond591 = phi i32 [ %281, %cond.true588 ], [ 0, %cond.false589 ]
  %conv592 = sext i32 %cond591 to i64
  %282 = load i32, ptr %precision, align 4, !tbaa !12
  %conv593 = sext i32 %282 to i64
  %add594 = add nsw i64 %conv592, %conv593
  %283 = load i32, ptr %width, align 4, !tbaa !12
  %conv595 = sext i32 %283 to i64
  %add596 = add nsw i64 %add594, %conv595
  %add597 = add nsw i64 %add596, 15
  %call598 = call noalias ptr @malloc(i64 noundef %add597) #10
  store ptr %call598, ptr %zExtra, align 8, !tbaa !4
  store ptr %call598, ptr %bufpt, align 8, !tbaa !4
  %284 = load ptr, ptr %bufpt, align 8, !tbaa !4
  %cmp599 = icmp eq ptr %284, null
  br i1 %cmp599, label %if.then601, label %if.end602

if.then601:                                       ; preds = %cond.end590
  %285 = load ptr, ptr %pAccum.addr, align 8, !tbaa !4
  call void @setStrAccumError(ptr noundef %285, i8 noundef zeroext 1)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup1150

if.end602:                                        ; preds = %cond.end590
  br label %if.end603

if.end603:                                        ; preds = %if.end602, %cond.end576
  %286 = load ptr, ptr %bufpt, align 8, !tbaa !4
  store ptr %286, ptr %zOut, align 8, !tbaa !4
  %287 = load i8, ptr %flag_altform2, align 1, !tbaa !8
  %conv604 = zext i8 %287 to i32
  %mul605 = mul nsw i32 %conv604, 10
  %add606 = add nsw i32 16, %mul605
  store i32 %add606, ptr %nsd, align 4, !tbaa !12
  %288 = load i32, ptr %precision, align 4, !tbaa !12
  %cmp607 = icmp sgt i32 %288, 0
  %289 = zext i1 %cmp607 to i64
  %cond609 = select i1 %cmp607, i32 1, i32 0
  %290 = load i8, ptr %flag_alternateform, align 1, !tbaa !8
  %conv610 = zext i8 %290 to i32
  %or = or i32 %cond609, %conv610
  %291 = load i8, ptr %flag_altform2, align 1, !tbaa !8
  %conv611 = zext i8 %291 to i32
  %or612 = or i32 %or, %conv611
  %conv613 = trunc i32 %or612 to i8
  store i8 %conv613, ptr %flag_dp, align 1, !tbaa !8
  %292 = load i8, ptr %prefix, align 1, !tbaa !8
  %tobool614 = icmp ne i8 %292, 0
  br i1 %tobool614, label %if.then615, label %if.end617

if.then615:                                       ; preds = %if.end603
  %293 = load i8, ptr %prefix, align 1, !tbaa !8
  %294 = load ptr, ptr %bufpt, align 8, !tbaa !4
  %incdec.ptr616 = getelementptr inbounds i8, ptr %294, i32 1
  store ptr %incdec.ptr616, ptr %bufpt, align 8, !tbaa !4
  store i8 %293, ptr %294, align 1, !tbaa !8
  br label %if.end617

if.end617:                                        ; preds = %if.then615, %if.end603
  %295 = load i32, ptr %e2, align 4, !tbaa !12
  %cmp618 = icmp slt i32 %295, 0
  br i1 %cmp618, label %if.then620, label %if.else622

if.then620:                                       ; preds = %if.end617
  %296 = load ptr, ptr %bufpt, align 8, !tbaa !4
  %incdec.ptr621 = getelementptr inbounds i8, ptr %296, i32 1
  store ptr %incdec.ptr621, ptr %bufpt, align 8, !tbaa !4
  store i8 48, ptr %296, align 1, !tbaa !8
  br label %if.end632

if.else622:                                       ; preds = %if.end617
  br label %for.cond623

for.cond623:                                      ; preds = %for.inc629, %if.else622
  %297 = load i32, ptr %e2, align 4, !tbaa !12
  %cmp624 = icmp sge i32 %297, 0
  br i1 %cmp624, label %for.body626, label %for.end631

for.body626:                                      ; preds = %for.cond623
  %call627 = call signext i8 @et_getdigit(ptr noundef %realvalue, ptr noundef %nsd)
  %298 = load ptr, ptr %bufpt, align 8, !tbaa !4
  %incdec.ptr628 = getelementptr inbounds i8, ptr %298, i32 1
  store ptr %incdec.ptr628, ptr %bufpt, align 8, !tbaa !4
  store i8 %call627, ptr %298, align 1, !tbaa !8
  br label %for.inc629

for.inc629:                                       ; preds = %for.body626
  %299 = load i32, ptr %e2, align 4, !tbaa !12
  %dec630 = add nsw i32 %299, -1
  store i32 %dec630, ptr %e2, align 4, !tbaa !12
  br label %for.cond623, !llvm.loop !42

for.end631:                                       ; preds = %for.cond623
  br label %if.end632

if.end632:                                        ; preds = %for.end631, %if.then620
  %300 = load i8, ptr %flag_dp, align 1, !tbaa !8
  %tobool633 = icmp ne i8 %300, 0
  br i1 %tobool633, label %if.then634, label %if.end636

if.then634:                                       ; preds = %if.end632
  %301 = load ptr, ptr %bufpt, align 8, !tbaa !4
  %incdec.ptr635 = getelementptr inbounds i8, ptr %301, i32 1
  store ptr %incdec.ptr635, ptr %bufpt, align 8, !tbaa !4
  store i8 46, ptr %301, align 1, !tbaa !8
  br label %if.end636

if.end636:                                        ; preds = %if.then634, %if.end632
  %302 = load i32, ptr %e2, align 4, !tbaa !12
  %inc637 = add nsw i32 %302, 1
  store i32 %inc637, ptr %e2, align 4, !tbaa !12
  br label %for.cond638

for.cond638:                                      ; preds = %for.inc643, %if.end636
  %303 = load i32, ptr %e2, align 4, !tbaa !12
  %cmp639 = icmp slt i32 %303, 0
  br i1 %cmp639, label %for.body641, label %for.end646

for.body641:                                      ; preds = %for.cond638
  %304 = load ptr, ptr %bufpt, align 8, !tbaa !4
  %incdec.ptr642 = getelementptr inbounds i8, ptr %304, i32 1
  store ptr %incdec.ptr642, ptr %bufpt, align 8, !tbaa !4
  store i8 48, ptr %304, align 1, !tbaa !8
  br label %for.inc643

for.inc643:                                       ; preds = %for.body641
  %305 = load i32, ptr %precision, align 4, !tbaa !12
  %dec644 = add nsw i32 %305, -1
  store i32 %dec644, ptr %precision, align 4, !tbaa !12
  %306 = load i32, ptr %e2, align 4, !tbaa !12
  %inc645 = add nsw i32 %306, 1
  store i32 %inc645, ptr %e2, align 4, !tbaa !12
  br label %for.cond638, !llvm.loop !43

for.end646:                                       ; preds = %for.cond638
  br label %while.cond647

while.cond647:                                    ; preds = %while.body651, %for.end646
  %307 = load i32, ptr %precision, align 4, !tbaa !12
  %dec648 = add nsw i32 %307, -1
  store i32 %dec648, ptr %precision, align 4, !tbaa !12
  %cmp649 = icmp sgt i32 %307, 0
  br i1 %cmp649, label %while.body651, label %while.end654

while.body651:                                    ; preds = %while.cond647
  %call652 = call signext i8 @et_getdigit(ptr noundef %realvalue, ptr noundef %nsd)
  %308 = load ptr, ptr %bufpt, align 8, !tbaa !4
  %incdec.ptr653 = getelementptr inbounds i8, ptr %308, i32 1
  store ptr %incdec.ptr653, ptr %bufpt, align 8, !tbaa !4
  store i8 %call652, ptr %308, align 1, !tbaa !8
  br label %while.cond647, !llvm.loop !44

while.end654:                                     ; preds = %while.cond647
  %309 = load i8, ptr %flag_rtz, align 1, !tbaa !8
  %conv655 = zext i8 %309 to i32
  %tobool656 = icmp ne i32 %conv655, 0
  br i1 %tobool656, label %land.lhs.true657, label %if.end681

land.lhs.true657:                                 ; preds = %while.end654
  %310 = load i8, ptr %flag_dp, align 1, !tbaa !8
  %conv658 = zext i8 %310 to i32
  %tobool659 = icmp ne i32 %conv658, 0
  br i1 %tobool659, label %if.then660, label %if.end681

if.then660:                                       ; preds = %land.lhs.true657
  br label %while.cond661

while.cond661:                                    ; preds = %while.body666, %if.then660
  %311 = load ptr, ptr %bufpt, align 8, !tbaa !4
  %arrayidx662 = getelementptr inbounds i8, ptr %311, i64 -1
  %312 = load i8, ptr %arrayidx662, align 1, !tbaa !8
  %conv663 = sext i8 %312 to i32
  %cmp664 = icmp eq i32 %conv663, 48
  br i1 %cmp664, label %while.body666, label %while.end668

while.body666:                                    ; preds = %while.cond661
  %313 = load ptr, ptr %bufpt, align 8, !tbaa !4
  %incdec.ptr667 = getelementptr inbounds i8, ptr %313, i32 -1
  store ptr %incdec.ptr667, ptr %bufpt, align 8, !tbaa !4
  store i8 0, ptr %incdec.ptr667, align 1, !tbaa !8
  br label %while.cond661, !llvm.loop !45

while.end668:                                     ; preds = %while.cond661
  %314 = load ptr, ptr %bufpt, align 8, !tbaa !4
  %arrayidx669 = getelementptr inbounds i8, ptr %314, i64 -1
  %315 = load i8, ptr %arrayidx669, align 1, !tbaa !8
  %conv670 = sext i8 %315 to i32
  %cmp671 = icmp eq i32 %conv670, 46
  br i1 %cmp671, label %if.then673, label %if.end680

if.then673:                                       ; preds = %while.end668
  %316 = load i8, ptr %flag_altform2, align 1, !tbaa !8
  %tobool674 = icmp ne i8 %316, 0
  br i1 %tobool674, label %if.then675, label %if.else677

if.then675:                                       ; preds = %if.then673
  %317 = load ptr, ptr %bufpt, align 8, !tbaa !4
  %incdec.ptr676 = getelementptr inbounds i8, ptr %317, i32 1
  store ptr %incdec.ptr676, ptr %bufpt, align 8, !tbaa !4
  store i8 48, ptr %317, align 1, !tbaa !8
  br label %if.end679

if.else677:                                       ; preds = %if.then673
  %318 = load ptr, ptr %bufpt, align 8, !tbaa !4
  %incdec.ptr678 = getelementptr inbounds i8, ptr %318, i32 -1
  store ptr %incdec.ptr678, ptr %bufpt, align 8, !tbaa !4
  store i8 0, ptr %incdec.ptr678, align 1, !tbaa !8
  br label %if.end679

if.end679:                                        ; preds = %if.else677, %if.then675
  br label %if.end680

if.end680:                                        ; preds = %if.end679, %while.end668
  br label %if.end681

if.end681:                                        ; preds = %if.end680, %land.lhs.true657, %while.end654
  %319 = load i8, ptr %xtype, align 1, !tbaa !8
  %conv682 = zext i8 %319 to i32
  %cmp683 = icmp eq i32 %conv682, 2
  br i1 %cmp683, label %if.then685, label %if.end715

if.then685:                                       ; preds = %if.end681
  %320 = load ptr, ptr %infop, align 8, !tbaa !4
  %charset686 = getelementptr inbounds %struct.et_info, ptr %320, i32 0, i32 4
  %321 = load i8, ptr %charset686, align 1, !tbaa !25
  %idxprom687 = zext i8 %321 to i64
  %arrayidx688 = getelementptr inbounds [33 x i8], ptr @aDigits, i64 0, i64 %idxprom687
  %322 = load i8, ptr %arrayidx688, align 1, !tbaa !8
  %323 = load ptr, ptr %bufpt, align 8, !tbaa !4
  %incdec.ptr689 = getelementptr inbounds i8, ptr %323, i32 1
  store ptr %incdec.ptr689, ptr %bufpt, align 8, !tbaa !4
  store i8 %322, ptr %323, align 1, !tbaa !8
  %324 = load i32, ptr %exp, align 4, !tbaa !12
  %cmp690 = icmp slt i32 %324, 0
  br i1 %cmp690, label %if.then692, label %if.else695

if.then692:                                       ; preds = %if.then685
  %325 = load ptr, ptr %bufpt, align 8, !tbaa !4
  %incdec.ptr693 = getelementptr inbounds i8, ptr %325, i32 1
  store ptr %incdec.ptr693, ptr %bufpt, align 8, !tbaa !4
  store i8 45, ptr %325, align 1, !tbaa !8
  %326 = load i32, ptr %exp, align 4, !tbaa !12
  %sub694 = sub nsw i32 0, %326
  store i32 %sub694, ptr %exp, align 4, !tbaa !12
  br label %if.end697

if.else695:                                       ; preds = %if.then685
  %327 = load ptr, ptr %bufpt, align 8, !tbaa !4
  %incdec.ptr696 = getelementptr inbounds i8, ptr %327, i32 1
  store ptr %incdec.ptr696, ptr %bufpt, align 8, !tbaa !4
  store i8 43, ptr %327, align 1, !tbaa !8
  br label %if.end697

if.end697:                                        ; preds = %if.else695, %if.then692
  %328 = load i32, ptr %exp, align 4, !tbaa !12
  %cmp698 = icmp sge i32 %328, 100
  br i1 %cmp698, label %if.then700, label %if.end706

if.then700:                                       ; preds = %if.end697
  %329 = load i32, ptr %exp, align 4, !tbaa !12
  %div701 = sdiv i32 %329, 100
  %add702 = add nsw i32 %div701, 48
  %conv703 = trunc i32 %add702 to i8
  %330 = load ptr, ptr %bufpt, align 8, !tbaa !4
  %incdec.ptr704 = getelementptr inbounds i8, ptr %330, i32 1
  store ptr %incdec.ptr704, ptr %bufpt, align 8, !tbaa !4
  store i8 %conv703, ptr %330, align 1, !tbaa !8
  %331 = load i32, ptr %exp, align 4, !tbaa !12
  %rem705 = srem i32 %331, 100
  store i32 %rem705, ptr %exp, align 4, !tbaa !12
  br label %if.end706

if.end706:                                        ; preds = %if.then700, %if.end697
  %332 = load i32, ptr %exp, align 4, !tbaa !12
  %div707 = sdiv i32 %332, 10
  %add708 = add nsw i32 %div707, 48
  %conv709 = trunc i32 %add708 to i8
  %333 = load ptr, ptr %bufpt, align 8, !tbaa !4
  %incdec.ptr710 = getelementptr inbounds i8, ptr %333, i32 1
  store ptr %incdec.ptr710, ptr %bufpt, align 8, !tbaa !4
  store i8 %conv709, ptr %333, align 1, !tbaa !8
  %334 = load i32, ptr %exp, align 4, !tbaa !12
  %rem711 = srem i32 %334, 10
  %add712 = add nsw i32 %rem711, 48
  %conv713 = trunc i32 %add712 to i8
  %335 = load ptr, ptr %bufpt, align 8, !tbaa !4
  %incdec.ptr714 = getelementptr inbounds i8, ptr %335, i32 1
  store ptr %incdec.ptr714, ptr %bufpt, align 8, !tbaa !4
  store i8 %conv713, ptr %335, align 1, !tbaa !8
  br label %if.end715

if.end715:                                        ; preds = %if.end706, %if.end681
  %336 = load ptr, ptr %bufpt, align 8, !tbaa !4
  store i8 0, ptr %336, align 1, !tbaa !8
  %337 = load ptr, ptr %bufpt, align 8, !tbaa !4
  %338 = load ptr, ptr %zOut, align 8, !tbaa !4
  %sub.ptr.lhs.cast716 = ptrtoint ptr %337 to i64
  %sub.ptr.rhs.cast717 = ptrtoint ptr %338 to i64
  %sub.ptr.sub718 = sub i64 %sub.ptr.lhs.cast716, %sub.ptr.rhs.cast717
  %conv719 = trunc i64 %sub.ptr.sub718 to i32
  store i32 %conv719, ptr %length, align 4, !tbaa !12
  %339 = load ptr, ptr %zOut, align 8, !tbaa !4
  store ptr %339, ptr %bufpt, align 8, !tbaa !4
  %340 = load i8, ptr %flag_zeropad, align 1, !tbaa !8
  %conv720 = zext i8 %340 to i32
  %tobool721 = icmp ne i32 %conv720, 0
  br i1 %tobool721, label %land.lhs.true722, label %if.end752

land.lhs.true722:                                 ; preds = %if.end715
  %341 = load i8, ptr %flag_leftjustify, align 1, !tbaa !8
  %tobool723 = icmp ne i8 %341, 0
  br i1 %tobool723, label %if.end752, label %land.lhs.true724

land.lhs.true724:                                 ; preds = %land.lhs.true722
  %342 = load i32, ptr %length, align 4, !tbaa !12
  %343 = load i32, ptr %width, align 4, !tbaa !12
  %cmp725 = icmp slt i32 %342, %343
  br i1 %cmp725, label %if.then727, label %if.end752

if.then727:                                       ; preds = %land.lhs.true724
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %nPad) #9
  %344 = load i32, ptr %width, align 4, !tbaa !12
  %345 = load i32, ptr %length, align 4, !tbaa !12
  %sub728 = sub nsw i32 %344, %345
  store i32 %sub728, ptr %nPad, align 4, !tbaa !12
  %346 = load i32, ptr %width, align 4, !tbaa !12
  store i32 %346, ptr %i, align 4, !tbaa !12
  br label %for.cond729

for.cond729:                                      ; preds = %for.inc738, %if.then727
  %347 = load i32, ptr %i, align 4, !tbaa !12
  %348 = load i32, ptr %nPad, align 4, !tbaa !12
  %cmp730 = icmp sge i32 %347, %348
  br i1 %cmp730, label %for.body732, label %for.end740

for.body732:                                      ; preds = %for.cond729
  %349 = load ptr, ptr %bufpt, align 8, !tbaa !4
  %350 = load i32, ptr %i, align 4, !tbaa !12
  %351 = load i32, ptr %nPad, align 4, !tbaa !12
  %sub733 = sub nsw i32 %350, %351
  %idxprom734 = sext i32 %sub733 to i64
  %arrayidx735 = getelementptr inbounds i8, ptr %349, i64 %idxprom734
  %352 = load i8, ptr %arrayidx735, align 1, !tbaa !8
  %353 = load ptr, ptr %bufpt, align 8, !tbaa !4
  %354 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom736 = sext i32 %354 to i64
  %arrayidx737 = getelementptr inbounds i8, ptr %353, i64 %idxprom736
  store i8 %352, ptr %arrayidx737, align 1, !tbaa !8
  br label %for.inc738

for.inc738:                                       ; preds = %for.body732
  %355 = load i32, ptr %i, align 4, !tbaa !12
  %dec739 = add nsw i32 %355, -1
  store i32 %dec739, ptr %i, align 4, !tbaa !12
  br label %for.cond729, !llvm.loop !46

for.end740:                                       ; preds = %for.cond729
  %356 = load i8, ptr %prefix, align 1, !tbaa !8
  %conv741 = sext i8 %356 to i32
  %cmp742 = icmp ne i32 %conv741, 0
  %conv743 = zext i1 %cmp742 to i32
  store i32 %conv743, ptr %i, align 4, !tbaa !12
  br label %while.cond744

while.cond744:                                    ; preds = %while.body747, %for.end740
  %357 = load i32, ptr %nPad, align 4, !tbaa !12
  %dec745 = add nsw i32 %357, -1
  store i32 %dec745, ptr %nPad, align 4, !tbaa !12
  %tobool746 = icmp ne i32 %357, 0
  br i1 %tobool746, label %while.body747, label %while.end751

while.body747:                                    ; preds = %while.cond744
  %358 = load ptr, ptr %bufpt, align 8, !tbaa !4
  %359 = load i32, ptr %i, align 4, !tbaa !12
  %inc748 = add nsw i32 %359, 1
  store i32 %inc748, ptr %i, align 4, !tbaa !12
  %idxprom749 = sext i32 %359 to i64
  %arrayidx750 = getelementptr inbounds i8, ptr %358, i64 %idxprom749
  store i8 48, ptr %arrayidx750, align 1, !tbaa !8
  br label %while.cond744, !llvm.loop !47

while.end751:                                     ; preds = %while.cond744
  %360 = load i32, ptr %width, align 4, !tbaa !12
  store i32 %360, ptr %length, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 4, ptr %nPad) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9
  br label %if.end752

if.end752:                                        ; preds = %while.end751, %land.lhs.true724, %land.lhs.true722, %if.end715
  br label %sw.epilog1131

sw.bb753:                                         ; preds = %for.end
  %361 = load i8, ptr %bArgList, align 1, !tbaa !8
  %tobool754 = icmp ne i8 %361, 0
  br i1 %tobool754, label %if.end767, label %if.then755

if.then755:                                       ; preds = %sw.bb753
  %362 = load ptr, ptr %pAccum.addr, align 8, !tbaa !4
  %nChar = getelementptr inbounds %struct.StrAccum, ptr %362, i32 0, i32 4
  %363 = load i32, ptr %nChar, align 8, !tbaa !48
  %364 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %gp_offset_p756 = getelementptr inbounds %struct.__va_list_tag, ptr %364, i32 0, i32 0
  %gp_offset757 = load i32, ptr %gp_offset_p756, align 8
  %fits_in_gp758 = icmp ule i32 %gp_offset757, 40
  br i1 %fits_in_gp758, label %vaarg.in_reg759, label %vaarg.in_mem761

vaarg.in_reg759:                                  ; preds = %if.then755
  %365 = getelementptr inbounds %struct.__va_list_tag, ptr %364, i32 0, i32 3
  %reg_save_area760 = load ptr, ptr %365, align 8
  %366 = getelementptr i8, ptr %reg_save_area760, i32 %gp_offset757
  %367 = add i32 %gp_offset757, 8
  store i32 %367, ptr %gp_offset_p756, align 8
  br label %vaarg.end765

vaarg.in_mem761:                                  ; preds = %if.then755
  %overflow_arg_area_p762 = getelementptr inbounds %struct.__va_list_tag, ptr %364, i32 0, i32 2
  %overflow_arg_area763 = load ptr, ptr %overflow_arg_area_p762, align 8
  %overflow_arg_area.next764 = getelementptr i8, ptr %overflow_arg_area763, i32 8
  store ptr %overflow_arg_area.next764, ptr %overflow_arg_area_p762, align 8
  br label %vaarg.end765

vaarg.end765:                                     ; preds = %vaarg.in_mem761, %vaarg.in_reg759
  %vaarg.addr766 = phi ptr [ %366, %vaarg.in_reg759 ], [ %overflow_arg_area763, %vaarg.in_mem761 ]
  %368 = load ptr, ptr %vaarg.addr766, align 8
  store i32 %363, ptr %368, align 4, !tbaa !12
  br label %if.end767

if.end767:                                        ; preds = %vaarg.end765, %sw.bb753
  store i32 0, ptr %width, align 4, !tbaa !12
  store i32 0, ptr %length, align 4, !tbaa !12
  br label %sw.epilog1131

sw.bb768:                                         ; preds = %for.end
  %arrayidx769 = getelementptr inbounds [70 x i8], ptr %buf, i64 0, i64 0
  store i8 37, ptr %arrayidx769, align 16, !tbaa !8
  %arraydecay770 = getelementptr inbounds [70 x i8], ptr %buf, i64 0, i64 0
  store ptr %arraydecay770, ptr %bufpt, align 8, !tbaa !4
  store i32 1, ptr %length, align 4, !tbaa !12
  br label %sw.epilog1131

sw.bb771:                                         ; preds = %for.end
  %369 = load i8, ptr %bArgList, align 1, !tbaa !8
  %tobool772 = icmp ne i8 %369, 0
  br i1 %tobool772, label %if.then773, label %if.else774

if.then773:                                       ; preds = %sw.bb771
  br label %if.end863

if.else774:                                       ; preds = %sw.bb771
  call void @llvm.lifetime.start.p0(i64 4, ptr %ch) #9
  %370 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %gp_offset_p775 = getelementptr inbounds %struct.__va_list_tag, ptr %370, i32 0, i32 0
  %gp_offset776 = load i32, ptr %gp_offset_p775, align 8
  %fits_in_gp777 = icmp ule i32 %gp_offset776, 40
  br i1 %fits_in_gp777, label %vaarg.in_reg778, label %vaarg.in_mem780

vaarg.in_reg778:                                  ; preds = %if.else774
  %371 = getelementptr inbounds %struct.__va_list_tag, ptr %370, i32 0, i32 3
  %reg_save_area779 = load ptr, ptr %371, align 8
  %372 = getelementptr i8, ptr %reg_save_area779, i32 %gp_offset776
  %373 = add i32 %gp_offset776, 8
  store i32 %373, ptr %gp_offset_p775, align 8
  br label %vaarg.end784

vaarg.in_mem780:                                  ; preds = %if.else774
  %overflow_arg_area_p781 = getelementptr inbounds %struct.__va_list_tag, ptr %370, i32 0, i32 2
  %overflow_arg_area782 = load ptr, ptr %overflow_arg_area_p781, align 8
  %overflow_arg_area.next783 = getelementptr i8, ptr %overflow_arg_area782, i32 8
  store ptr %overflow_arg_area.next783, ptr %overflow_arg_area_p781, align 8
  br label %vaarg.end784

vaarg.end784:                                     ; preds = %vaarg.in_mem780, %vaarg.in_reg778
  %vaarg.addr785 = phi ptr [ %372, %vaarg.in_reg778 ], [ %overflow_arg_area782, %vaarg.in_mem780 ]
  %374 = load i32, ptr %vaarg.addr785, align 4
  store i32 %374, ptr %ch, align 4, !tbaa !12
  %375 = load i32, ptr %ch, align 4, !tbaa !12
  %cmp786 = icmp ult i32 %375, 128
  br i1 %cmp786, label %if.then788, label %if.else792

if.then788:                                       ; preds = %vaarg.end784
  %376 = load i32, ptr %ch, align 4, !tbaa !12
  %and789 = and i32 %376, 255
  %conv790 = trunc i32 %and789 to i8
  %arrayidx791 = getelementptr inbounds [70 x i8], ptr %buf, i64 0, i64 0
  store i8 %conv790, ptr %arrayidx791, align 16, !tbaa !8
  store i32 1, ptr %length, align 4, !tbaa !12
  br label %if.end862

if.else792:                                       ; preds = %vaarg.end784
  %377 = load i32, ptr %ch, align 4, !tbaa !12
  %cmp793 = icmp ult i32 %377, 2048
  br i1 %cmp793, label %if.then795, label %if.else808

if.then795:                                       ; preds = %if.else792
  %378 = load i32, ptr %ch, align 4, !tbaa !12
  %shr = lshr i32 %378, 6
  %and796 = and i32 %shr, 31
  %conv797 = trunc i32 %and796 to i8
  %conv798 = zext i8 %conv797 to i32
  %add799 = add nsw i32 192, %conv798
  %conv800 = trunc i32 %add799 to i8
  %arrayidx801 = getelementptr inbounds [70 x i8], ptr %buf, i64 0, i64 0
  store i8 %conv800, ptr %arrayidx801, align 16, !tbaa !8
  %379 = load i32, ptr %ch, align 4, !tbaa !12
  %and802 = and i32 %379, 63
  %conv803 = trunc i32 %and802 to i8
  %conv804 = zext i8 %conv803 to i32
  %add805 = add nsw i32 128, %conv804
  %conv806 = trunc i32 %add805 to i8
  %arrayidx807 = getelementptr inbounds [70 x i8], ptr %buf, i64 0, i64 1
  store i8 %conv806, ptr %arrayidx807, align 1, !tbaa !8
  store i32 2, ptr %length, align 4, !tbaa !12
  br label %if.end861

if.else808:                                       ; preds = %if.else792
  %380 = load i32, ptr %ch, align 4, !tbaa !12
  %cmp809 = icmp ult i32 %380, 65536
  br i1 %cmp809, label %if.then811, label %if.else832

if.then811:                                       ; preds = %if.else808
  %381 = load i32, ptr %ch, align 4, !tbaa !12
  %shr812 = lshr i32 %381, 12
  %and813 = and i32 %shr812, 15
  %conv814 = trunc i32 %and813 to i8
  %conv815 = zext i8 %conv814 to i32
  %add816 = add nsw i32 224, %conv815
  %conv817 = trunc i32 %add816 to i8
  %arrayidx818 = getelementptr inbounds [70 x i8], ptr %buf, i64 0, i64 0
  store i8 %conv817, ptr %arrayidx818, align 16, !tbaa !8
  %382 = load i32, ptr %ch, align 4, !tbaa !12
  %shr819 = lshr i32 %382, 6
  %and820 = and i32 %shr819, 63
  %conv821 = trunc i32 %and820 to i8
  %conv822 = zext i8 %conv821 to i32
  %add823 = add nsw i32 128, %conv822
  %conv824 = trunc i32 %add823 to i8
  %arrayidx825 = getelementptr inbounds [70 x i8], ptr %buf, i64 0, i64 1
  store i8 %conv824, ptr %arrayidx825, align 1, !tbaa !8
  %383 = load i32, ptr %ch, align 4, !tbaa !12
  %and826 = and i32 %383, 63
  %conv827 = trunc i32 %and826 to i8
  %conv828 = zext i8 %conv827 to i32
  %add829 = add nsw i32 128, %conv828
  %conv830 = trunc i32 %add829 to i8
  %arrayidx831 = getelementptr inbounds [70 x i8], ptr %buf, i64 0, i64 2
  store i8 %conv830, ptr %arrayidx831, align 2, !tbaa !8
  store i32 3, ptr %length, align 4, !tbaa !12
  br label %if.end860

if.else832:                                       ; preds = %if.else808
  %384 = load i32, ptr %ch, align 4, !tbaa !12
  %shr833 = lshr i32 %384, 18
  %and834 = and i32 %shr833, 7
  %conv835 = trunc i32 %and834 to i8
  %conv836 = zext i8 %conv835 to i32
  %add837 = add nsw i32 240, %conv836
  %conv838 = trunc i32 %add837 to i8
  %arrayidx839 = getelementptr inbounds [70 x i8], ptr %buf, i64 0, i64 0
  store i8 %conv838, ptr %arrayidx839, align 16, !tbaa !8
  %385 = load i32, ptr %ch, align 4, !tbaa !12
  %shr840 = lshr i32 %385, 12
  %and841 = and i32 %shr840, 63
  %conv842 = trunc i32 %and841 to i8
  %conv843 = zext i8 %conv842 to i32
  %add844 = add nsw i32 128, %conv843
  %conv845 = trunc i32 %add844 to i8
  %arrayidx846 = getelementptr inbounds [70 x i8], ptr %buf, i64 0, i64 1
  store i8 %conv845, ptr %arrayidx846, align 1, !tbaa !8
  %386 = load i32, ptr %ch, align 4, !tbaa !12
  %shr847 = lshr i32 %386, 6
  %and848 = and i32 %shr847, 63
  %conv849 = trunc i32 %and848 to i8
  %conv850 = zext i8 %conv849 to i32
  %add851 = add nsw i32 128, %conv850
  %conv852 = trunc i32 %add851 to i8
  %arrayidx853 = getelementptr inbounds [70 x i8], ptr %buf, i64 0, i64 2
  store i8 %conv852, ptr %arrayidx853, align 2, !tbaa !8
  %387 = load i32, ptr %ch, align 4, !tbaa !12
  %and854 = and i32 %387, 63
  %conv855 = trunc i32 %and854 to i8
  %conv856 = zext i8 %conv855 to i32
  %add857 = add nsw i32 128, %conv856
  %conv858 = trunc i32 %add857 to i8
  %arrayidx859 = getelementptr inbounds [70 x i8], ptr %buf, i64 0, i64 3
  store i8 %conv858, ptr %arrayidx859, align 1, !tbaa !8
  store i32 4, ptr %length, align 4, !tbaa !12
  br label %if.end860

if.end860:                                        ; preds = %if.else832, %if.then811
  br label %if.end861

if.end861:                                        ; preds = %if.end860, %if.then795
  br label %if.end862

if.end862:                                        ; preds = %if.end861, %if.then788
  call void @llvm.lifetime.end.p0(i64 4, ptr %ch) #9
  br label %if.end863

if.end863:                                        ; preds = %if.end862, %if.then773
  %388 = load i32, ptr %precision, align 4, !tbaa !12
  %cmp864 = icmp sgt i32 %388, 1
  br i1 %cmp864, label %if.then866, label %if.end883

if.then866:                                       ; preds = %if.end863
  %389 = load i32, ptr %precision, align 4, !tbaa !12
  %sub867 = sub nsw i32 %389, 1
  %390 = load i32, ptr %width, align 4, !tbaa !12
  %sub868 = sub nsw i32 %390, %sub867
  store i32 %sub868, ptr %width, align 4, !tbaa !12
  %391 = load i32, ptr %width, align 4, !tbaa !12
  %cmp869 = icmp sgt i32 %391, 1
  br i1 %cmp869, label %land.lhs.true871, label %if.end875

land.lhs.true871:                                 ; preds = %if.then866
  %392 = load i8, ptr %flag_leftjustify, align 1, !tbaa !8
  %tobool872 = icmp ne i8 %392, 0
  br i1 %tobool872, label %if.end875, label %if.then873

if.then873:                                       ; preds = %land.lhs.true871
  %393 = load ptr, ptr %pAccum.addr, align 8, !tbaa !4
  %394 = load i32, ptr %width, align 4, !tbaa !12
  %sub874 = sub nsw i32 %394, 1
  call void @duckdb_shell_sqlite3AppendChar(ptr noundef %393, i32 noundef %sub874, i8 noundef signext 32)
  store i32 0, ptr %width, align 4, !tbaa !12
  br label %if.end875

if.end875:                                        ; preds = %if.then873, %land.lhs.true871, %if.then866
  br label %while.cond876

while.cond876:                                    ; preds = %while.body880, %if.end875
  %395 = load i32, ptr %precision, align 4, !tbaa !12
  %dec877 = add nsw i32 %395, -1
  store i32 %dec877, ptr %precision, align 4, !tbaa !12
  %cmp878 = icmp sgt i32 %395, 1
  br i1 %cmp878, label %while.body880, label %while.end882

while.body880:                                    ; preds = %while.cond876
  %396 = load ptr, ptr %pAccum.addr, align 8, !tbaa !4
  %arraydecay881 = getelementptr inbounds [70 x i8], ptr %buf, i64 0, i64 0
  %397 = load i32, ptr %length, align 4, !tbaa !12
  call void @duckdb_shell_sqlite3StrAccumAppend(ptr noundef %396, ptr noundef %arraydecay881, i32 noundef %397)
  br label %while.cond876, !llvm.loop !49

while.end882:                                     ; preds = %while.cond876
  br label %if.end883

if.end883:                                        ; preds = %while.end882, %if.end863
  %arraydecay884 = getelementptr inbounds [70 x i8], ptr %buf, i64 0, i64 0
  store ptr %arraydecay884, ptr %bufpt, align 8, !tbaa !4
  store i8 1, ptr %flag_altform2, align 1, !tbaa !8
  br label %adjust_width_for_utf8

sw.bb885:                                         ; preds = %for.end, %for.end
  %398 = load i8, ptr %bArgList, align 1, !tbaa !8
  %tobool886 = icmp ne i8 %398, 0
  br i1 %tobool886, label %if.then887, label %if.else888

if.then887:                                       ; preds = %sw.bb885
  br label %if.end900

if.else888:                                       ; preds = %sw.bb885
  %399 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %gp_offset_p889 = getelementptr inbounds %struct.__va_list_tag, ptr %399, i32 0, i32 0
  %gp_offset890 = load i32, ptr %gp_offset_p889, align 8
  %fits_in_gp891 = icmp ule i32 %gp_offset890, 40
  br i1 %fits_in_gp891, label %vaarg.in_reg892, label %vaarg.in_mem894

vaarg.in_reg892:                                  ; preds = %if.else888
  %400 = getelementptr inbounds %struct.__va_list_tag, ptr %399, i32 0, i32 3
  %reg_save_area893 = load ptr, ptr %400, align 8
  %401 = getelementptr i8, ptr %reg_save_area893, i32 %gp_offset890
  %402 = add i32 %gp_offset890, 8
  store i32 %402, ptr %gp_offset_p889, align 8
  br label %vaarg.end898

vaarg.in_mem894:                                  ; preds = %if.else888
  %overflow_arg_area_p895 = getelementptr inbounds %struct.__va_list_tag, ptr %399, i32 0, i32 2
  %overflow_arg_area896 = load ptr, ptr %overflow_arg_area_p895, align 8
  %overflow_arg_area.next897 = getelementptr i8, ptr %overflow_arg_area896, i32 8
  store ptr %overflow_arg_area.next897, ptr %overflow_arg_area_p895, align 8
  br label %vaarg.end898

vaarg.end898:                                     ; preds = %vaarg.in_mem894, %vaarg.in_reg892
  %vaarg.addr899 = phi ptr [ %401, %vaarg.in_reg892 ], [ %overflow_arg_area896, %vaarg.in_mem894 ]
  %403 = load ptr, ptr %vaarg.addr899, align 8
  store ptr %403, ptr %bufpt, align 8, !tbaa !4
  br label %if.end900

if.end900:                                        ; preds = %vaarg.end898, %if.then887
  %404 = load ptr, ptr %bufpt, align 8, !tbaa !4
  %cmp901 = icmp eq ptr %404, null
  br i1 %cmp901, label %if.then903, label %if.else904

if.then903:                                       ; preds = %if.end900
  store ptr @.str.3, ptr %bufpt, align 8, !tbaa !4
  br label %if.end910

if.else904:                                       ; preds = %if.end900
  %405 = load i8, ptr %xtype, align 1, !tbaa !8
  %conv905 = zext i8 %405 to i32
  %cmp906 = icmp eq i32 %conv905, 6
  br i1 %cmp906, label %if.then908, label %if.end909

if.then908:                                       ; preds = %if.else904
  %406 = load ptr, ptr %bufpt, align 8, !tbaa !4
  store ptr %406, ptr %zExtra, align 8, !tbaa !4
  br label %if.end909

if.end909:                                        ; preds = %if.then908, %if.else904
  br label %if.end910

if.end910:                                        ; preds = %if.end909, %if.then903
  %407 = load i32, ptr %precision, align 4, !tbaa !12
  %cmp911 = icmp sge i32 %407, 0
  br i1 %cmp911, label %if.then913, label %if.else960

if.then913:                                       ; preds = %if.end910
  %408 = load i8, ptr %flag_altform2, align 1, !tbaa !8
  %tobool914 = icmp ne i8 %408, 0
  br i1 %tobool914, label %if.then915, label %if.else945

if.then915:                                       ; preds = %if.then913
  call void @llvm.lifetime.start.p0(i64 8, ptr %z) #9
  %409 = load ptr, ptr %bufpt, align 8, !tbaa !4
  store ptr %409, ptr %z, align 8, !tbaa !4
  br label %while.cond916

while.cond916:                                    ; preds = %if.end939, %if.then915
  %410 = load i32, ptr %precision, align 4, !tbaa !12
  %dec917 = add nsw i32 %410, -1
  store i32 %dec917, ptr %precision, align 4, !tbaa !12
  %cmp918 = icmp sgt i32 %410, 0
  br i1 %cmp918, label %land.rhs920, label %land.end924

land.rhs920:                                      ; preds = %while.cond916
  %411 = load ptr, ptr %z, align 8, !tbaa !4
  %arrayidx921 = getelementptr inbounds i8, ptr %411, i64 0
  %412 = load i8, ptr %arrayidx921, align 1, !tbaa !8
  %conv922 = zext i8 %412 to i32
  %tobool923 = icmp ne i32 %conv922, 0
  br label %land.end924

land.end924:                                      ; preds = %land.rhs920, %while.cond916
  %413 = phi i1 [ false, %while.cond916 ], [ %tobool923, %land.rhs920 ]
  br i1 %413, label %while.body925, label %while.end940

while.body925:                                    ; preds = %land.end924
  %414 = load ptr, ptr %z, align 8, !tbaa !4
  %incdec.ptr926 = getelementptr inbounds i8, ptr %414, i32 1
  store ptr %incdec.ptr926, ptr %z, align 8, !tbaa !4
  %415 = load i8, ptr %414, align 1, !tbaa !8
  %conv927 = zext i8 %415 to i32
  %cmp928 = icmp sge i32 %conv927, 192
  br i1 %cmp928, label %if.then930, label %if.end939

if.then930:                                       ; preds = %while.body925
  br label %while.cond931

while.cond931:                                    ; preds = %while.body936, %if.then930
  %416 = load ptr, ptr %z, align 8, !tbaa !4
  %417 = load i8, ptr %416, align 1, !tbaa !8
  %conv932 = zext i8 %417 to i32
  %and933 = and i32 %conv932, 192
  %cmp934 = icmp eq i32 %and933, 128
  br i1 %cmp934, label %while.body936, label %while.end938

while.body936:                                    ; preds = %while.cond931
  %418 = load ptr, ptr %z, align 8, !tbaa !4
  %incdec.ptr937 = getelementptr inbounds i8, ptr %418, i32 1
  store ptr %incdec.ptr937, ptr %z, align 8, !tbaa !4
  br label %while.cond931, !llvm.loop !50

while.end938:                                     ; preds = %while.cond931
  br label %if.end939

if.end939:                                        ; preds = %while.end938, %while.body925
  br label %while.cond916, !llvm.loop !51

while.end940:                                     ; preds = %land.end924
  %419 = load ptr, ptr %z, align 8, !tbaa !4
  %420 = load ptr, ptr %bufpt, align 8, !tbaa !4
  %sub.ptr.lhs.cast941 = ptrtoint ptr %419 to i64
  %sub.ptr.rhs.cast942 = ptrtoint ptr %420 to i64
  %sub.ptr.sub943 = sub i64 %sub.ptr.lhs.cast941, %sub.ptr.rhs.cast942
  %conv944 = trunc i64 %sub.ptr.sub943 to i32
  store i32 %conv944, ptr %length, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 8, ptr %z) #9
  br label %if.end959

if.else945:                                       ; preds = %if.then913
  store i32 0, ptr %length, align 4, !tbaa !12
  br label %for.cond946

for.cond946:                                      ; preds = %for.inc956, %if.else945
  %421 = load i32, ptr %length, align 4, !tbaa !12
  %422 = load i32, ptr %precision, align 4, !tbaa !12
  %cmp947 = icmp slt i32 %421, %422
  br i1 %cmp947, label %land.rhs949, label %land.end954

land.rhs949:                                      ; preds = %for.cond946
  %423 = load ptr, ptr %bufpt, align 8, !tbaa !4
  %424 = load i32, ptr %length, align 4, !tbaa !12
  %idxprom950 = sext i32 %424 to i64
  %arrayidx951 = getelementptr inbounds i8, ptr %423, i64 %idxprom950
  %425 = load i8, ptr %arrayidx951, align 1, !tbaa !8
  %conv952 = sext i8 %425 to i32
  %tobool953 = icmp ne i32 %conv952, 0
  br label %land.end954

land.end954:                                      ; preds = %land.rhs949, %for.cond946
  %426 = phi i1 [ false, %for.cond946 ], [ %tobool953, %land.rhs949 ]
  br i1 %426, label %for.body955, label %for.end958

for.body955:                                      ; preds = %land.end954
  br label %for.inc956

for.inc956:                                       ; preds = %for.body955
  %427 = load i32, ptr %length, align 4, !tbaa !12
  %inc957 = add nsw i32 %427, 1
  store i32 %inc957, ptr %length, align 4, !tbaa !12
  br label %for.cond946, !llvm.loop !52

for.end958:                                       ; preds = %land.end954
  br label %if.end959

if.end959:                                        ; preds = %for.end958, %while.end940
  br label %if.end964

if.else960:                                       ; preds = %if.end910
  %428 = load ptr, ptr %bufpt, align 8, !tbaa !4
  %call961 = call i64 @strlen(ptr noundef %428) #11
  %conv962 = trunc i64 %call961 to i32
  %and963 = and i32 2147483647, %conv962
  store i32 %and963, ptr %length, align 4, !tbaa !12
  br label %if.end964

if.end964:                                        ; preds = %if.else960, %if.end959
  br label %adjust_width_for_utf8

adjust_width_for_utf8:                            ; preds = %cleanup1118, %if.end964, %if.end883
  %429 = load i8, ptr %flag_altform2, align 1, !tbaa !8
  %conv965 = zext i8 %429 to i32
  %tobool966 = icmp ne i32 %conv965, 0
  br i1 %tobool966, label %land.lhs.true967, label %if.end987

land.lhs.true967:                                 ; preds = %adjust_width_for_utf8
  %430 = load i32, ptr %width, align 4, !tbaa !12
  %cmp968 = icmp sgt i32 %430, 0
  br i1 %cmp968, label %if.then970, label %if.end987

if.then970:                                       ; preds = %land.lhs.true967
  call void @llvm.lifetime.start.p0(i64 4, ptr %ii) #9
  %431 = load i32, ptr %length, align 4, !tbaa !12
  %sub971 = sub nsw i32 %431, 1
  store i32 %sub971, ptr %ii, align 4, !tbaa !12
  br label %while.cond972

while.cond972:                                    ; preds = %if.end985, %if.then970
  %432 = load i32, ptr %ii, align 4, !tbaa !12
  %cmp973 = icmp sge i32 %432, 0
  br i1 %cmp973, label %while.body975, label %while.end986

while.body975:                                    ; preds = %while.cond972
  %433 = load ptr, ptr %bufpt, align 8, !tbaa !4
  %434 = load i32, ptr %ii, align 4, !tbaa !12
  %dec976 = add nsw i32 %434, -1
  store i32 %dec976, ptr %ii, align 4, !tbaa !12
  %idxprom977 = sext i32 %434 to i64
  %arrayidx978 = getelementptr inbounds i8, ptr %433, i64 %idxprom977
  %435 = load i8, ptr %arrayidx978, align 1, !tbaa !8
  %conv979 = sext i8 %435 to i32
  %and980 = and i32 %conv979, 192
  %cmp981 = icmp eq i32 %and980, 128
  br i1 %cmp981, label %if.then983, label %if.end985

if.then983:                                       ; preds = %while.body975
  %436 = load i32, ptr %width, align 4, !tbaa !12
  %inc984 = add nsw i32 %436, 1
  store i32 %inc984, ptr %width, align 4, !tbaa !12
  br label %if.end985

if.end985:                                        ; preds = %if.then983, %while.body975
  br label %while.cond972, !llvm.loop !53

while.end986:                                     ; preds = %while.cond972
  call void @llvm.lifetime.end.p0(i64 4, ptr %ii) #9
  br label %if.end987

if.end987:                                        ; preds = %while.end986, %land.lhs.true967, %adjust_width_for_utf8
  br label %sw.epilog1131

sw.bb988:                                         ; preds = %for.end, %for.end, %for.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %i989) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %n990) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %isnull) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %needQuote) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr %ch991) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr %q) #9
  %437 = load i8, ptr %xtype, align 1, !tbaa !8
  %conv992 = zext i8 %437 to i32
  %cmp993 = icmp eq i32 %conv992, 14
  %438 = zext i1 %cmp993 to i64
  %cond995 = select i1 %cmp993, i32 34, i32 39
  %conv996 = trunc i32 %cond995 to i8
  store i8 %conv996, ptr %q, align 1, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %escarg) #9
  %439 = load i8, ptr %bArgList, align 1, !tbaa !8
  %tobool997 = icmp ne i8 %439, 0
  br i1 %tobool997, label %if.then998, label %if.else999

if.then998:                                       ; preds = %sw.bb988
  br label %if.end1011

if.else999:                                       ; preds = %sw.bb988
  %440 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %gp_offset_p1000 = getelementptr inbounds %struct.__va_list_tag, ptr %440, i32 0, i32 0
  %gp_offset1001 = load i32, ptr %gp_offset_p1000, align 8
  %fits_in_gp1002 = icmp ule i32 %gp_offset1001, 40
  br i1 %fits_in_gp1002, label %vaarg.in_reg1003, label %vaarg.in_mem1005

vaarg.in_reg1003:                                 ; preds = %if.else999
  %441 = getelementptr inbounds %struct.__va_list_tag, ptr %440, i32 0, i32 3
  %reg_save_area1004 = load ptr, ptr %441, align 8
  %442 = getelementptr i8, ptr %reg_save_area1004, i32 %gp_offset1001
  %443 = add i32 %gp_offset1001, 8
  store i32 %443, ptr %gp_offset_p1000, align 8
  br label %vaarg.end1009

vaarg.in_mem1005:                                 ; preds = %if.else999
  %overflow_arg_area_p1006 = getelementptr inbounds %struct.__va_list_tag, ptr %440, i32 0, i32 2
  %overflow_arg_area1007 = load ptr, ptr %overflow_arg_area_p1006, align 8
  %overflow_arg_area.next1008 = getelementptr i8, ptr %overflow_arg_area1007, i32 8
  store ptr %overflow_arg_area.next1008, ptr %overflow_arg_area_p1006, align 8
  br label %vaarg.end1009

vaarg.end1009:                                    ; preds = %vaarg.in_mem1005, %vaarg.in_reg1003
  %vaarg.addr1010 = phi ptr [ %442, %vaarg.in_reg1003 ], [ %overflow_arg_area1007, %vaarg.in_mem1005 ]
  %444 = load ptr, ptr %vaarg.addr1010, align 8
  store ptr %444, ptr %escarg, align 8, !tbaa !4
  br label %if.end1011

if.end1011:                                       ; preds = %vaarg.end1009, %if.then998
  %445 = load ptr, ptr %escarg, align 8, !tbaa !4
  %cmp1012 = icmp eq ptr %445, null
  %conv1013 = zext i1 %cmp1012 to i32
  store i32 %conv1013, ptr %isnull, align 4, !tbaa !12
  %446 = load i32, ptr %isnull, align 4, !tbaa !12
  %tobool1014 = icmp ne i32 %446, 0
  br i1 %tobool1014, label %if.then1015, label %if.end1020

if.then1015:                                      ; preds = %if.end1011
  %447 = load i8, ptr %xtype, align 1, !tbaa !8
  %conv1016 = zext i8 %447 to i32
  %cmp1017 = icmp eq i32 %conv1016, 10
  %448 = zext i1 %cmp1017 to i64
  %cond1019 = select i1 %cmp1017, ptr @.str.4, ptr @.str.5
  store ptr %cond1019, ptr %escarg, align 8, !tbaa !4
  br label %if.end1020

if.end1020:                                       ; preds = %if.then1015, %if.end1011
  %449 = load i32, ptr %precision, align 4, !tbaa !12
  store i32 %449, ptr %k, align 4, !tbaa !12
  store i32 0, ptr %n990, align 4, !tbaa !12
  store i32 0, ptr %i989, align 4, !tbaa !12
  br label %for.cond1021

for.cond1021:                                     ; preds = %for.inc1059, %if.end1020
  %450 = load i32, ptr %k, align 4, !tbaa !12
  %cmp1022 = icmp ne i32 %450, 0
  br i1 %cmp1022, label %land.rhs1024, label %land.end1030

land.rhs1024:                                     ; preds = %for.cond1021
  %451 = load ptr, ptr %escarg, align 8, !tbaa !4
  %452 = load i32, ptr %i989, align 4, !tbaa !12
  %idxprom1025 = sext i32 %452 to i64
  %arrayidx1026 = getelementptr inbounds i8, ptr %451, i64 %idxprom1025
  %453 = load i8, ptr %arrayidx1026, align 1, !tbaa !8
  store i8 %453, ptr %ch991, align 1, !tbaa !8
  %conv1027 = sext i8 %453 to i32
  %cmp1028 = icmp ne i32 %conv1027, 0
  br label %land.end1030

land.end1030:                                     ; preds = %land.rhs1024, %for.cond1021
  %454 = phi i1 [ false, %for.cond1021 ], [ %cmp1028, %land.rhs1024 ]
  br i1 %454, label %for.body1031, label %for.end1062

for.body1031:                                     ; preds = %land.end1030
  %455 = load i8, ptr %ch991, align 1, !tbaa !8
  %conv1032 = sext i8 %455 to i32
  %456 = load i8, ptr %q, align 1, !tbaa !8
  %conv1033 = sext i8 %456 to i32
  %cmp1034 = icmp eq i32 %conv1032, %conv1033
  br i1 %cmp1034, label %if.then1036, label %if.end1038

if.then1036:                                      ; preds = %for.body1031
  %457 = load i32, ptr %n990, align 4, !tbaa !12
  %inc1037 = add nsw i32 %457, 1
  store i32 %inc1037, ptr %n990, align 4, !tbaa !12
  br label %if.end1038

if.end1038:                                       ; preds = %if.then1036, %for.body1031
  %458 = load i8, ptr %flag_altform2, align 1, !tbaa !8
  %conv1039 = zext i8 %458 to i32
  %tobool1040 = icmp ne i32 %conv1039, 0
  br i1 %tobool1040, label %land.lhs.true1041, label %if.end1058

land.lhs.true1041:                                ; preds = %if.end1038
  %459 = load i8, ptr %ch991, align 1, !tbaa !8
  %conv1042 = sext i8 %459 to i32
  %and1043 = and i32 %conv1042, 192
  %cmp1044 = icmp eq i32 %and1043, 192
  br i1 %cmp1044, label %if.then1046, label %if.end1058

if.then1046:                                      ; preds = %land.lhs.true1041
  br label %while.cond1047

while.cond1047:                                   ; preds = %while.body1055, %if.then1046
  %460 = load ptr, ptr %escarg, align 8, !tbaa !4
  %461 = load i32, ptr %i989, align 4, !tbaa !12
  %add1048 = add nsw i32 %461, 1
  %idxprom1049 = sext i32 %add1048 to i64
  %arrayidx1050 = getelementptr inbounds i8, ptr %460, i64 %idxprom1049
  %462 = load i8, ptr %arrayidx1050, align 1, !tbaa !8
  %conv1051 = sext i8 %462 to i32
  %and1052 = and i32 %conv1051, 192
  %cmp1053 = icmp eq i32 %and1052, 128
  br i1 %cmp1053, label %while.body1055, label %while.end1057

while.body1055:                                   ; preds = %while.cond1047
  %463 = load i32, ptr %i989, align 4, !tbaa !12
  %inc1056 = add nsw i32 %463, 1
  store i32 %inc1056, ptr %i989, align 4, !tbaa !12
  br label %while.cond1047, !llvm.loop !54

while.end1057:                                    ; preds = %while.cond1047
  br label %if.end1058

if.end1058:                                       ; preds = %while.end1057, %land.lhs.true1041, %if.end1038
  br label %for.inc1059

for.inc1059:                                      ; preds = %if.end1058
  %464 = load i32, ptr %i989, align 4, !tbaa !12
  %inc1060 = add nsw i32 %464, 1
  store i32 %inc1060, ptr %i989, align 4, !tbaa !12
  %465 = load i32, ptr %k, align 4, !tbaa !12
  %dec1061 = add nsw i32 %465, -1
  store i32 %dec1061, ptr %k, align 4, !tbaa !12
  br label %for.cond1021, !llvm.loop !55

for.end1062:                                      ; preds = %land.end1030
  %466 = load i32, ptr %isnull, align 4, !tbaa !12
  %tobool1063 = icmp ne i32 %466, 0
  br i1 %tobool1063, label %land.end1068, label %land.rhs1064

land.rhs1064:                                     ; preds = %for.end1062
  %467 = load i8, ptr %xtype, align 1, !tbaa !8
  %conv1065 = zext i8 %467 to i32
  %cmp1066 = icmp eq i32 %conv1065, 10
  br label %land.end1068

land.end1068:                                     ; preds = %land.rhs1064, %for.end1062
  %468 = phi i1 [ false, %for.end1062 ], [ %cmp1066, %land.rhs1064 ]
  %land.ext = zext i1 %468 to i32
  store i32 %land.ext, ptr %needQuote, align 4, !tbaa !12
  %469 = load i32, ptr %i989, align 4, !tbaa !12
  %add1069 = add nsw i32 %469, 3
  %470 = load i32, ptr %n990, align 4, !tbaa !12
  %add1070 = add nsw i32 %470, %add1069
  store i32 %add1070, ptr %n990, align 4, !tbaa !12
  %471 = load i32, ptr %n990, align 4, !tbaa !12
  %cmp1071 = icmp sgt i32 %471, 70
  br i1 %cmp1071, label %if.then1073, label %if.else1080

if.then1073:                                      ; preds = %land.end1068
  %472 = load i32, ptr %n990, align 4, !tbaa !12
  %conv1074 = sext i32 %472 to i64
  %call1075 = call noalias ptr @malloc(i64 noundef %conv1074) #10
  store ptr %call1075, ptr %zExtra, align 8, !tbaa !4
  store ptr %call1075, ptr %bufpt, align 8, !tbaa !4
  %473 = load ptr, ptr %bufpt, align 8, !tbaa !4
  %cmp1076 = icmp eq ptr %473, null
  br i1 %cmp1076, label %if.then1078, label %if.end1079

if.then1078:                                      ; preds = %if.then1073
  %474 = load ptr, ptr %pAccum.addr, align 8, !tbaa !4
  call void @setStrAccumError(ptr noundef %474, i8 noundef zeroext 1)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup1118

if.end1079:                                       ; preds = %if.then1073
  br label %if.end1082

if.else1080:                                      ; preds = %land.end1068
  %arraydecay1081 = getelementptr inbounds [70 x i8], ptr %buf, i64 0, i64 0
  store ptr %arraydecay1081, ptr %bufpt, align 8, !tbaa !4
  br label %if.end1082

if.end1082:                                       ; preds = %if.else1080, %if.end1079
  store i32 0, ptr %j, align 4, !tbaa !12
  %475 = load i32, ptr %needQuote, align 4, !tbaa !12
  %tobool1083 = icmp ne i32 %475, 0
  br i1 %tobool1083, label %if.then1084, label %if.end1088

if.then1084:                                      ; preds = %if.end1082
  %476 = load i8, ptr %q, align 1, !tbaa !8
  %477 = load ptr, ptr %bufpt, align 8, !tbaa !4
  %478 = load i32, ptr %j, align 4, !tbaa !12
  %inc1085 = add nsw i32 %478, 1
  store i32 %inc1085, ptr %j, align 4, !tbaa !12
  %idxprom1086 = sext i32 %478 to i64
  %arrayidx1087 = getelementptr inbounds i8, ptr %477, i64 %idxprom1086
  store i8 %476, ptr %arrayidx1087, align 1, !tbaa !8
  br label %if.end1088

if.end1088:                                       ; preds = %if.then1084, %if.end1082
  %479 = load i32, ptr %i989, align 4, !tbaa !12
  store i32 %479, ptr %k, align 4, !tbaa !12
  store i32 0, ptr %i989, align 4, !tbaa !12
  br label %for.cond1089

for.cond1089:                                     ; preds = %for.inc1107, %if.end1088
  %480 = load i32, ptr %i989, align 4, !tbaa !12
  %481 = load i32, ptr %k, align 4, !tbaa !12
  %cmp1090 = icmp slt i32 %480, %481
  br i1 %cmp1090, label %for.body1092, label %for.end1109

for.body1092:                                     ; preds = %for.cond1089
  %482 = load ptr, ptr %escarg, align 8, !tbaa !4
  %483 = load i32, ptr %i989, align 4, !tbaa !12
  %idxprom1093 = sext i32 %483 to i64
  %arrayidx1094 = getelementptr inbounds i8, ptr %482, i64 %idxprom1093
  %484 = load i8, ptr %arrayidx1094, align 1, !tbaa !8
  store i8 %484, ptr %ch991, align 1, !tbaa !8
  %485 = load ptr, ptr %bufpt, align 8, !tbaa !4
  %486 = load i32, ptr %j, align 4, !tbaa !12
  %inc1095 = add nsw i32 %486, 1
  store i32 %inc1095, ptr %j, align 4, !tbaa !12
  %idxprom1096 = sext i32 %486 to i64
  %arrayidx1097 = getelementptr inbounds i8, ptr %485, i64 %idxprom1096
  store i8 %484, ptr %arrayidx1097, align 1, !tbaa !8
  %487 = load i8, ptr %ch991, align 1, !tbaa !8
  %conv1098 = sext i8 %487 to i32
  %488 = load i8, ptr %q, align 1, !tbaa !8
  %conv1099 = sext i8 %488 to i32
  %cmp1100 = icmp eq i32 %conv1098, %conv1099
  br i1 %cmp1100, label %if.then1102, label %if.end1106

if.then1102:                                      ; preds = %for.body1092
  %489 = load i8, ptr %ch991, align 1, !tbaa !8
  %490 = load ptr, ptr %bufpt, align 8, !tbaa !4
  %491 = load i32, ptr %j, align 4, !tbaa !12
  %inc1103 = add nsw i32 %491, 1
  store i32 %inc1103, ptr %j, align 4, !tbaa !12
  %idxprom1104 = sext i32 %491 to i64
  %arrayidx1105 = getelementptr inbounds i8, ptr %490, i64 %idxprom1104
  store i8 %489, ptr %arrayidx1105, align 1, !tbaa !8
  br label %if.end1106

if.end1106:                                       ; preds = %if.then1102, %for.body1092
  br label %for.inc1107

for.inc1107:                                      ; preds = %if.end1106
  %492 = load i32, ptr %i989, align 4, !tbaa !12
  %inc1108 = add nsw i32 %492, 1
  store i32 %inc1108, ptr %i989, align 4, !tbaa !12
  br label %for.cond1089, !llvm.loop !56

for.end1109:                                      ; preds = %for.cond1089
  %493 = load i32, ptr %needQuote, align 4, !tbaa !12
  %tobool1110 = icmp ne i32 %493, 0
  br i1 %tobool1110, label %if.then1111, label %if.end1115

if.then1111:                                      ; preds = %for.end1109
  %494 = load i8, ptr %q, align 1, !tbaa !8
  %495 = load ptr, ptr %bufpt, align 8, !tbaa !4
  %496 = load i32, ptr %j, align 4, !tbaa !12
  %inc1112 = add nsw i32 %496, 1
  store i32 %inc1112, ptr %j, align 4, !tbaa !12
  %idxprom1113 = sext i32 %496 to i64
  %arrayidx1114 = getelementptr inbounds i8, ptr %495, i64 %idxprom1113
  store i8 %494, ptr %arrayidx1114, align 1, !tbaa !8
  br label %if.end1115

if.end1115:                                       ; preds = %if.then1111, %for.end1109
  %497 = load ptr, ptr %bufpt, align 8, !tbaa !4
  %498 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom1116 = sext i32 %498 to i64
  %arrayidx1117 = getelementptr inbounds i8, ptr %497, i64 %idxprom1116
  store i8 0, ptr %arrayidx1117, align 1, !tbaa !8
  %499 = load i32, ptr %j, align 4, !tbaa !12
  store i32 %499, ptr %length, align 4, !tbaa !12
  store i32 58, ptr %cleanup.dest.slot, align 4
  br label %cleanup1118

cleanup1118:                                      ; preds = %if.end1115, %if.then1078
  call void @llvm.lifetime.end.p0(i64 8, ptr %escarg) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr %q) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr %ch991) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %needQuote) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %isnull) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %n990) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %i989) #9
  %cleanup.dest1127 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest1127, label %cleanup1150 [
    i32 58, label %adjust_width_for_utf8
  ]

sw.bb1128:                                        ; preds = %for.end
  br label %sw.epilog1131

sw.bb1129:                                        ; preds = %for.end
  br label %sw.epilog1131

sw.default1130:                                   ; preds = %for.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup1150

sw.epilog1131:                                    ; preds = %sw.bb1129, %sw.bb1128, %if.end987, %sw.bb768, %if.end767, %if.end752, %cleanup531, %if.then459, %if.end402
  %500 = load i32, ptr %length, align 4, !tbaa !12
  %501 = load i32, ptr %width, align 4, !tbaa !12
  %sub1132 = sub nsw i32 %501, %500
  store i32 %sub1132, ptr %width, align 4, !tbaa !12
  %502 = load i32, ptr %width, align 4, !tbaa !12
  %cmp1133 = icmp sgt i32 %502, 0
  br i1 %cmp1133, label %if.then1135, label %if.else1142

if.then1135:                                      ; preds = %sw.epilog1131
  %503 = load i8, ptr %flag_leftjustify, align 1, !tbaa !8
  %tobool1136 = icmp ne i8 %503, 0
  br i1 %tobool1136, label %if.end1138, label %if.then1137

if.then1137:                                      ; preds = %if.then1135
  %504 = load ptr, ptr %pAccum.addr, align 8, !tbaa !4
  %505 = load i32, ptr %width, align 4, !tbaa !12
  call void @duckdb_shell_sqlite3AppendChar(ptr noundef %504, i32 noundef %505, i8 noundef signext 32)
  br label %if.end1138

if.end1138:                                       ; preds = %if.then1137, %if.then1135
  %506 = load ptr, ptr %pAccum.addr, align 8, !tbaa !4
  %507 = load ptr, ptr %bufpt, align 8, !tbaa !4
  %508 = load i32, ptr %length, align 4, !tbaa !12
  call void @duckdb_shell_sqlite3StrAccumAppend(ptr noundef %506, ptr noundef %507, i32 noundef %508)
  %509 = load i8, ptr %flag_leftjustify, align 1, !tbaa !8
  %tobool1139 = icmp ne i8 %509, 0
  br i1 %tobool1139, label %if.then1140, label %if.end1141

if.then1140:                                      ; preds = %if.end1138
  %510 = load ptr, ptr %pAccum.addr, align 8, !tbaa !4
  %511 = load i32, ptr %width, align 4, !tbaa !12
  call void @duckdb_shell_sqlite3AppendChar(ptr noundef %510, i32 noundef %511, i8 noundef signext 32)
  br label %if.end1141

if.end1141:                                       ; preds = %if.then1140, %if.end1138
  br label %if.end1143

if.else1142:                                      ; preds = %sw.epilog1131
  %512 = load ptr, ptr %pAccum.addr, align 8, !tbaa !4
  %513 = load ptr, ptr %bufpt, align 8, !tbaa !4
  %514 = load i32, ptr %length, align 4, !tbaa !12
  call void @duckdb_shell_sqlite3StrAccumAppend(ptr noundef %512, ptr noundef %513, i32 noundef %514)
  br label %if.end1143

if.end1143:                                       ; preds = %if.else1142, %if.end1141
  %515 = load ptr, ptr %zExtra, align 8, !tbaa !4
  %tobool1144 = icmp ne ptr %515, null
  br i1 %tobool1144, label %if.then1145, label %if.end1146

if.then1145:                                      ; preds = %if.end1143
  %516 = load ptr, ptr %zExtra, align 8, !tbaa !4
  call void @free(ptr noundef %516) #9
  store ptr null, ptr %zExtra, align 8, !tbaa !4
  br label %if.end1146

if.end1146:                                       ; preds = %if.then1145, %if.end1143
  br label %for.inc1147

for.inc1147:                                      ; preds = %if.end1146
  %517 = load ptr, ptr %fmt.addr, align 8, !tbaa !4
  %incdec.ptr1148 = getelementptr inbounds i8, ptr %517, i32 1
  store ptr %incdec.ptr1148, ptr %fmt.addr, align 8, !tbaa !4
  br label %for.cond, !llvm.loop !57

for.end1149:                                      ; preds = %if.then23, %if.then16, %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup1150

cleanup1150:                                      ; preds = %for.end1149, %sw.default1130, %cleanup1118, %if.then601, %cleanup
  call void @llvm.lifetime.end.p0(i64 70, ptr %buf) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr %flag_rtz) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr %flag_dp) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %rounder) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %nsd) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %e2) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %exp) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %zExtra) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %nOut) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %zOut) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %infop) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr %realvalue) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %longvalue) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr %prefix) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr %bArgList) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr %xtype) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr %cThousand) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr %done) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr %flag_long) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr %flag_zeropad) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr %flag_altform2) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr %flag_alternateform) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr %flag_prefix) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr %flag_leftjustify) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %width) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %precision) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %bufpt) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #9
  %cleanup.dest1180 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest1180, label %unreachable [
    i32 0, label %cleanup.cont1181
    i32 1, label %cleanup.cont1181
  ]

cleanup.cont1181:                                 ; preds = %cleanup1150, %cleanup1150
  ret void

unreachable:                                      ; preds = %cleanup1150, %cleanup531
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define void @duckdb_shell_sqlite3StrAccumAppend(ptr noundef %p, ptr noundef %z, i32 noundef %N) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  %N.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  store ptr %z, ptr %z.addr, align 8, !tbaa !4
  store i32 %N, ptr %N.addr, align 4, !tbaa !12
  %0 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %nChar = getelementptr inbounds %struct.StrAccum, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %nChar, align 8, !tbaa !48
  %2 = load i32, ptr %N.addr, align 4, !tbaa !12
  %add = add i32 %1, %2
  %3 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %nAlloc = getelementptr inbounds %struct.StrAccum, ptr %3, i32 0, i32 2
  %4 = load i32, ptr %nAlloc, align 8, !tbaa !58
  %cmp = icmp uge i32 %add, %4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %z.addr, align 8, !tbaa !4
  %7 = load i32, ptr %N.addr, align 4, !tbaa !12
  call void @enlargeAndAppend(ptr noundef %5, ptr noundef %6, i32 noundef %7)
  br label %if.end5

if.else:                                          ; preds = %entry
  %8 = load i32, ptr %N.addr, align 4, !tbaa !12
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.else
  %9 = load i32, ptr %N.addr, align 4, !tbaa !12
  %10 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %nChar2 = getelementptr inbounds %struct.StrAccum, ptr %10, i32 0, i32 4
  %11 = load i32, ptr %nChar2, align 8, !tbaa !48
  %add3 = add i32 %11, %9
  store i32 %add3, ptr %nChar2, align 8, !tbaa !48
  %12 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %zText = getelementptr inbounds %struct.StrAccum, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %zText, align 8, !tbaa !59
  %14 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %nChar4 = getelementptr inbounds %struct.StrAccum, ptr %14, i32 0, i32 4
  %15 = load i32, ptr %nChar4, align 8, !tbaa !48
  %16 = load i32, ptr %N.addr, align 4, !tbaa !12
  %sub = sub i32 %15, %16
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds i8, ptr %13, i64 %idxprom
  %17 = load ptr, ptr %z.addr, align 8, !tbaa !4
  %18 = load i32, ptr %N.addr, align 4, !tbaa !12
  %conv = sext i32 %18 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx, ptr align 1 %17, i64 %conv, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.else
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #2

; Function Attrs: nounwind uwtable
define internal void @setStrAccumError(ptr noundef %p, i8 noundef zeroext %eError) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %eError.addr = alloca i8, align 1
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  store i8 %eError, ptr %eError.addr, align 1, !tbaa !8
  %0 = load i8, ptr %eError.addr, align 1, !tbaa !8
  %1 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %accError = getelementptr inbounds %struct.StrAccum, ptr %1, i32 0, i32 5
  store i8 %0, ptr %accError, align 4, !tbaa !60
  %2 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %nAlloc = getelementptr inbounds %struct.StrAccum, ptr %2, i32 0, i32 2
  store i32 0, ptr %nAlloc, align 8, !tbaa !58
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal signext i8 @et_getdigit(ptr noundef %val, ptr noundef %cnt) #0 {
entry:
  %retval = alloca i8, align 1
  %val.addr = alloca ptr, align 8
  %cnt.addr = alloca ptr, align 8
  %digit = alloca i32, align 4
  %d = alloca x86_fp80, align 16
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  store ptr %cnt, ptr %cnt.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %digit) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr %d) #9
  %0 = load ptr, ptr %cnt.addr, align 8, !tbaa !4
  %1 = load i32, ptr %0, align 4, !tbaa !12
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 48, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %cnt.addr, align 8, !tbaa !4
  %3 = load i32, ptr %2, align 4, !tbaa !12
  %dec = add nsw i32 %3, -1
  store i32 %dec, ptr %2, align 4, !tbaa !12
  %4 = load ptr, ptr %val.addr, align 8, !tbaa !4
  %5 = load x86_fp80, ptr %4, align 16, !tbaa !32
  %conv = fptosi x86_fp80 %5 to i32
  store i32 %conv, ptr %digit, align 4, !tbaa !12
  %6 = load i32, ptr %digit, align 4, !tbaa !12
  %conv1 = sitofp i32 %6 to x86_fp80
  store x86_fp80 %conv1, ptr %d, align 16, !tbaa !32
  %7 = load i32, ptr %digit, align 4, !tbaa !12
  %add = add nsw i32 %7, 48
  store i32 %add, ptr %digit, align 4, !tbaa !12
  %8 = load ptr, ptr %val.addr, align 8, !tbaa !4
  %9 = load x86_fp80, ptr %8, align 16, !tbaa !32
  %10 = load x86_fp80, ptr %d, align 16, !tbaa !32
  %sub = fsub x86_fp80 %9, %10
  %mul = fmul x86_fp80 %sub, 0xK4002A000000000000000
  %11 = load ptr, ptr %val.addr, align 8, !tbaa !4
  store x86_fp80 %mul, ptr %11, align 16, !tbaa !32
  %12 = load i32, ptr %digit, align 4, !tbaa !12
  %conv2 = trunc i32 %12 to i8
  store i8 %conv2, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %d) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %digit) #9
  %13 = load i8, ptr %retval, align 1
  ret i8 %13
}

; Function Attrs: nounwind uwtable
define void @duckdb_shell_sqlite3AppendChar(ptr noundef %p, i32 noundef %N, i8 noundef signext %c) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %N.addr = alloca i32, align 4
  %c.addr = alloca i8, align 1
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  store i32 %N, ptr %N.addr, align 4, !tbaa !12
  store i8 %c, ptr %c.addr, align 1, !tbaa !8
  %0 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %nChar = getelementptr inbounds %struct.StrAccum, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %nChar, align 8, !tbaa !48
  %conv = zext i32 %1 to i64
  %2 = load i32, ptr %N.addr, align 4, !tbaa !12
  %conv1 = sext i32 %2 to i64
  %add = add nsw i64 %conv, %conv1
  %3 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %nAlloc = getelementptr inbounds %struct.StrAccum, ptr %3, i32 0, i32 2
  %4 = load i32, ptr %nAlloc, align 8, !tbaa !58
  %conv2 = zext i32 %4 to i64
  %cmp = icmp sge i64 %add, %conv2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %6 = load i32, ptr %N.addr, align 4, !tbaa !12
  %call = call i32 @sqlite3StrAccumEnlarge(ptr noundef %5, i32 noundef %6)
  store i32 %call, ptr %N.addr, align 4, !tbaa !12
  %cmp4 = icmp sle i32 %call, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %while.end

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %7 = load i32, ptr %N.addr, align 4, !tbaa !12
  %dec = add nsw i32 %7, -1
  store i32 %dec, ptr %N.addr, align 4, !tbaa !12
  %cmp6 = icmp sgt i32 %7, 0
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i8, ptr %c.addr, align 1, !tbaa !8
  %9 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %zText = getelementptr inbounds %struct.StrAccum, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %zText, align 8, !tbaa !59
  %11 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %nChar8 = getelementptr inbounds %struct.StrAccum, ptr %11, i32 0, i32 4
  %12 = load i32, ptr %nChar8, align 8, !tbaa !48
  %inc = add i32 %12, 1
  store i32 %inc, ptr %nChar8, align 8, !tbaa !48
  %idxprom = zext i32 %12 to i64
  %arrayidx = getelementptr inbounds i8, ptr %10, i64 %idxprom
  store i8 %8, ptr %arrayidx, align 1, !tbaa !8
  br label %while.cond, !llvm.loop !61

while.end:                                        ; preds = %if.then, %while.cond
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #5

; Function Attrs: nounwind
declare void @free(ptr noundef) #6

; Function Attrs: nounwind uwtable
define internal i32 @sqlite3StrAccumEnlarge(ptr noundef %p, i32 noundef %N) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %N.addr = alloca i32, align 4
  %zNew = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %zOld = alloca ptr, align 8
  %szNew = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  store i32 %N, ptr %N.addr, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %zNew) #9
  %0 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %accError = getelementptr inbounds %struct.StrAccum, ptr %0, i32 0, i32 5
  %1 = load i8, ptr %accError, align 4, !tbaa !60
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup59

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %mxAlloc = getelementptr inbounds %struct.StrAccum, ptr %2, i32 0, i32 3
  %3 = load i32, ptr %mxAlloc, align 4, !tbaa !62
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %4 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %nAlloc = getelementptr inbounds %struct.StrAccum, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %nAlloc, align 8, !tbaa !58
  %6 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %nChar = getelementptr inbounds %struct.StrAccum, ptr %6, i32 0, i32 4
  %7 = load i32, ptr %nChar, align 8, !tbaa !48
  %sub = sub i32 %5, %7
  %sub2 = sub i32 %sub, 1
  store i32 %sub2, ptr %N.addr, align 4, !tbaa !12
  %8 = load ptr, ptr %p.addr, align 8, !tbaa !4
  call void @setStrAccumError(ptr noundef %8, i8 noundef zeroext 2)
  %9 = load i32, ptr %N.addr, align 4, !tbaa !12
  store i32 %9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup59

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %zOld) #9
  %10 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %printfFlags = getelementptr inbounds %struct.StrAccum, ptr %10, i32 0, i32 6
  %11 = load i8, ptr %printfFlags, align 1, !tbaa !9
  %conv = zext i8 %11 to i32
  %and = and i32 %conv, 4
  %cmp3 = icmp ne i32 %and, 0
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %12 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %zText = getelementptr inbounds %struct.StrAccum, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %zText, align 8, !tbaa !59
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %13, %cond.true ], [ null, %cond.false ]
  store ptr %cond, ptr %zOld, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %szNew) #9
  %14 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %nChar5 = getelementptr inbounds %struct.StrAccum, ptr %14, i32 0, i32 4
  %15 = load i32, ptr %nChar5, align 8, !tbaa !48
  %conv6 = zext i32 %15 to i64
  store i64 %conv6, ptr %szNew, align 8, !tbaa !23
  %16 = load i32, ptr %N.addr, align 4, !tbaa !12
  %add = add nsw i32 %16, 1
  %conv7 = sext i32 %add to i64
  %17 = load i64, ptr %szNew, align 8, !tbaa !23
  %add8 = add nsw i64 %17, %conv7
  store i64 %add8, ptr %szNew, align 8, !tbaa !23
  %18 = load i64, ptr %szNew, align 8, !tbaa !23
  %19 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %nChar9 = getelementptr inbounds %struct.StrAccum, ptr %19, i32 0, i32 4
  %20 = load i32, ptr %nChar9, align 8, !tbaa !48
  %conv10 = zext i32 %20 to i64
  %add11 = add nsw i64 %18, %conv10
  %21 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %mxAlloc12 = getelementptr inbounds %struct.StrAccum, ptr %21, i32 0, i32 3
  %22 = load i32, ptr %mxAlloc12, align 4, !tbaa !62
  %conv13 = zext i32 %22 to i64
  %cmp14 = icmp sle i64 %add11, %conv13
  br i1 %cmp14, label %if.then16, label %if.end20

if.then16:                                        ; preds = %cond.end
  %23 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %nChar17 = getelementptr inbounds %struct.StrAccum, ptr %23, i32 0, i32 4
  %24 = load i32, ptr %nChar17, align 8, !tbaa !48
  %conv18 = zext i32 %24 to i64
  %25 = load i64, ptr %szNew, align 8, !tbaa !23
  %add19 = add nsw i64 %25, %conv18
  store i64 %add19, ptr %szNew, align 8, !tbaa !23
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %cond.end
  %26 = load i64, ptr %szNew, align 8, !tbaa !23
  %27 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %mxAlloc21 = getelementptr inbounds %struct.StrAccum, ptr %27, i32 0, i32 3
  %28 = load i32, ptr %mxAlloc21, align 4, !tbaa !62
  %conv22 = zext i32 %28 to i64
  %cmp23 = icmp sgt i64 %26, %conv22
  br i1 %cmp23, label %if.then25, label %if.else26

if.then25:                                        ; preds = %if.end20
  %29 = load ptr, ptr %p.addr, align 8, !tbaa !4
  call void @duckdb_shell_sqlite3StrAccumReset(ptr noundef %29)
  %30 = load ptr, ptr %p.addr, align 8, !tbaa !4
  call void @setStrAccumError(ptr noundef %30, i8 noundef zeroext 2)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else26:                                        ; preds = %if.end20
  %31 = load i64, ptr %szNew, align 8, !tbaa !23
  %conv27 = trunc i64 %31 to i32
  %32 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %nAlloc28 = getelementptr inbounds %struct.StrAccum, ptr %32, i32 0, i32 2
  store i32 %conv27, ptr %nAlloc28, align 8, !tbaa !58
  br label %if.end29

if.end29:                                         ; preds = %if.else26
  %33 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %db = getelementptr inbounds %struct.StrAccum, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %db, align 8, !tbaa !63
  %tobool30 = icmp ne ptr %34, null
  br i1 %tobool30, label %if.then31, label %if.else32

if.then31:                                        ; preds = %if.end29
  br label %if.end35

if.else32:                                        ; preds = %if.end29
  %35 = load ptr, ptr %zOld, align 8, !tbaa !4
  %36 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %nAlloc33 = getelementptr inbounds %struct.StrAccum, ptr %36, i32 0, i32 2
  %37 = load i32, ptr %nAlloc33, align 8, !tbaa !58
  %conv34 = zext i32 %37 to i64
  %call = call ptr @duckdb_shell_sqlite3_realloc64(ptr noundef %35, i64 noundef %conv34)
  store ptr %call, ptr %zNew, align 8, !tbaa !4
  br label %if.end35

if.end35:                                         ; preds = %if.else32, %if.then31
  %38 = load ptr, ptr %zNew, align 8, !tbaa !4
  %tobool36 = icmp ne ptr %38, null
  br i1 %tobool36, label %if.then37, label %if.else55

if.then37:                                        ; preds = %if.end35
  %39 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %printfFlags38 = getelementptr inbounds %struct.StrAccum, ptr %39, i32 0, i32 6
  %40 = load i8, ptr %printfFlags38, align 1, !tbaa !9
  %conv39 = zext i8 %40 to i32
  %and40 = and i32 %conv39, 4
  %cmp41 = icmp ne i32 %and40, 0
  br i1 %cmp41, label %if.end50, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then37
  %41 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %nChar43 = getelementptr inbounds %struct.StrAccum, ptr %41, i32 0, i32 4
  %42 = load i32, ptr %nChar43, align 8, !tbaa !48
  %cmp44 = icmp ugt i32 %42, 0
  br i1 %cmp44, label %if.then46, label %if.end50

if.then46:                                        ; preds = %land.lhs.true
  %43 = load ptr, ptr %zNew, align 8, !tbaa !4
  %44 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %zText47 = getelementptr inbounds %struct.StrAccum, ptr %44, i32 0, i32 1
  %45 = load ptr, ptr %zText47, align 8, !tbaa !59
  %46 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %nChar48 = getelementptr inbounds %struct.StrAccum, ptr %46, i32 0, i32 4
  %47 = load i32, ptr %nChar48, align 8, !tbaa !48
  %conv49 = zext i32 %47 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %43, ptr align 1 %45, i64 %conv49, i1 false)
  br label %if.end50

if.end50:                                         ; preds = %if.then46, %land.lhs.true, %if.then37
  %48 = load ptr, ptr %zNew, align 8, !tbaa !4
  %49 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %zText51 = getelementptr inbounds %struct.StrAccum, ptr %49, i32 0, i32 1
  store ptr %48, ptr %zText51, align 8, !tbaa !59
  %50 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %printfFlags52 = getelementptr inbounds %struct.StrAccum, ptr %50, i32 0, i32 6
  %51 = load i8, ptr %printfFlags52, align 1, !tbaa !9
  %conv53 = zext i8 %51 to i32
  %or = or i32 %conv53, 4
  %conv54 = trunc i32 %or to i8
  store i8 %conv54, ptr %printfFlags52, align 1, !tbaa !9
  br label %if.end56

if.else55:                                        ; preds = %if.end35
  %52 = load ptr, ptr %p.addr, align 8, !tbaa !4
  call void @duckdb_shell_sqlite3StrAccumReset(ptr noundef %52)
  %53 = load ptr, ptr %p.addr, align 8, !tbaa !4
  call void @setStrAccumError(ptr noundef %53, i8 noundef zeroext 1)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end56:                                         ; preds = %if.end50
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %if.else55, %if.then25
  call void @llvm.lifetime.end.p0(i64 8, ptr %szNew) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %zOld) #9
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup59 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end58

if.end58:                                         ; preds = %cleanup.cont
  %54 = load i32, ptr %N.addr, align 4, !tbaa !12
  store i32 %54, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup59

cleanup59:                                        ; preds = %if.end58, %cleanup, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %zNew) #9
  %55 = load i32, ptr %retval, align 4
  ret i32 %55
}

; Function Attrs: nounwind uwtable
define internal void @enlargeAndAppend(ptr noundef %p, ptr noundef %z, i32 noundef %N) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  %N.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  store ptr %z, ptr %z.addr, align 8, !tbaa !4
  store i32 %N, ptr %N.addr, align 4, !tbaa !12
  %0 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %1 = load i32, ptr %N.addr, align 4, !tbaa !12
  %call = call i32 @sqlite3StrAccumEnlarge(ptr noundef %0, i32 noundef %1)
  store i32 %call, ptr %N.addr, align 4, !tbaa !12
  %2 = load i32, ptr %N.addr, align 4, !tbaa !12
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %zText = getelementptr inbounds %struct.StrAccum, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %zText, align 8, !tbaa !59
  %5 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %nChar = getelementptr inbounds %struct.StrAccum, ptr %5, i32 0, i32 4
  %6 = load i32, ptr %nChar, align 8, !tbaa !48
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %idxprom
  %7 = load ptr, ptr %z.addr, align 8, !tbaa !4
  %8 = load i32, ptr %N.addr, align 4, !tbaa !12
  %conv = sext i32 %8 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx, ptr align 1 %7, i64 %conv, i1 false)
  %9 = load i32, ptr %N.addr, align 4, !tbaa !12
  %10 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %nChar1 = getelementptr inbounds %struct.StrAccum, ptr %10, i32 0, i32 4
  %11 = load i32, ptr %nChar1, align 8, !tbaa !48
  %add = add i32 %11, %9
  store i32 %add, ptr %nChar1, align 8, !tbaa !48
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @duckdb_shell_sqlite3StrAccumAppendAll(ptr noundef %p, ptr noundef %z) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  store ptr %z, ptr %z.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %z.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %z.addr, align 8, !tbaa !4
  %call = call i64 @strlen(ptr noundef %2) #11
  %conv = trunc i64 %call to i32
  call void @duckdb_shell_sqlite3StrAccumAppend(ptr noundef %0, ptr noundef %1, i32 noundef %conv)
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @duckdb_shell_sqlite3StrAccumFinish(ptr noundef %p) #0 {
entry:
  %retval = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %zText = getelementptr inbounds %struct.StrAccum, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %zText, align 8, !tbaa !59
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %zText1 = getelementptr inbounds %struct.StrAccum, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %zText1, align 8, !tbaa !59
  %4 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %nChar = getelementptr inbounds %struct.StrAccum, ptr %4, i32 0, i32 4
  %5 = load i32, ptr %nChar, align 8, !tbaa !48
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 %idxprom
  store i8 0, ptr %arrayidx, align 1, !tbaa !8
  %6 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %mxAlloc = getelementptr inbounds %struct.StrAccum, ptr %6, i32 0, i32 3
  %7 = load i32, ptr %mxAlloc, align 4, !tbaa !62
  %cmp = icmp ugt i32 %7, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %8 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %printfFlags = getelementptr inbounds %struct.StrAccum, ptr %8, i32 0, i32 6
  %9 = load i8, ptr %printfFlags, align 1, !tbaa !9
  %conv = zext i8 %9 to i32
  %and = and i32 %conv, 4
  %cmp2 = icmp ne i32 %and, 0
  br i1 %cmp2, label %if.end, label %if.then4

if.then4:                                         ; preds = %land.lhs.true
  %10 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %call = call ptr @strAccumFinishRealloc(ptr noundef %10)
  store ptr %call, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %11 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %zText6 = getelementptr inbounds %struct.StrAccum, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %zText6, align 8, !tbaa !59
  store ptr %12, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end5, %if.then4
  %13 = load ptr, ptr %retval, align 8
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define internal ptr @strAccumFinishRealloc(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %zText = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %zText) #9
  %0 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %nChar = getelementptr inbounds %struct.StrAccum, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %nChar, align 8, !tbaa !48
  %add = add i32 %1, 1
  %conv = zext i32 %add to i64
  %call = call noalias ptr @malloc(i64 noundef %conv) #10
  store ptr %call, ptr %zText, align 8, !tbaa !4
  %2 = load ptr, ptr %zText, align 8, !tbaa !4
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %zText, align 8, !tbaa !4
  %4 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %zText1 = getelementptr inbounds %struct.StrAccum, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %zText1, align 8, !tbaa !59
  %6 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %nChar2 = getelementptr inbounds %struct.StrAccum, ptr %6, i32 0, i32 4
  %7 = load i32, ptr %nChar2, align 8, !tbaa !48
  %add3 = add i32 %7, 1
  %conv4 = zext i32 %add3 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %5, i64 %conv4, i1 false)
  %8 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %printfFlags = getelementptr inbounds %struct.StrAccum, ptr %8, i32 0, i32 6
  %9 = load i8, ptr %printfFlags, align 1, !tbaa !9
  %conv5 = zext i8 %9 to i32
  %or = or i32 %conv5, 4
  %conv6 = trunc i32 %or to i8
  store i8 %conv6, ptr %printfFlags, align 1, !tbaa !9
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load ptr, ptr %p.addr, align 8, !tbaa !4
  call void @setStrAccumError(ptr noundef %10, i8 noundef zeroext 1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load ptr, ptr %zText, align 8, !tbaa !4
  %12 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %zText7 = getelementptr inbounds %struct.StrAccum, ptr %12, i32 0, i32 1
  store ptr %11, ptr %zText7, align 8, !tbaa !59
  %13 = load ptr, ptr %zText, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %zText) #9
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define void @duckdb_shell_sqlite3StrAccumReset(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %printfFlags = getelementptr inbounds %struct.StrAccum, ptr %0, i32 0, i32 6
  %1 = load i8, ptr %printfFlags, align 1, !tbaa !9
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 4
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %zText = getelementptr inbounds %struct.StrAccum, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %zText, align 8, !tbaa !59
  call void @free(ptr noundef %3) #9
  %4 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %printfFlags2 = getelementptr inbounds %struct.StrAccum, ptr %4, i32 0, i32 6
  %5 = load i8, ptr %printfFlags2, align 1, !tbaa !9
  %conv3 = zext i8 %5 to i32
  %and4 = and i32 %conv3, -5
  %conv5 = trunc i32 %and4 to i8
  store i8 %conv5, ptr %printfFlags2, align 1, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %zText6 = getelementptr inbounds %struct.StrAccum, ptr %6, i32 0, i32 1
  store ptr null, ptr %zText6, align 8, !tbaa !59
  ret void
}

; Function Attrs: nounwind uwtable
define void @duckdb_shell_sqlite3StrAccumInit(ptr noundef %p, ptr noundef %db, ptr noundef %zBase, i32 noundef %n, i32 noundef %mx) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %db.addr = alloca ptr, align 8
  %zBase.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %mx.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  store ptr %db, ptr %db.addr, align 8, !tbaa !4
  store ptr %zBase, ptr %zBase.addr, align 8, !tbaa !4
  store i32 %n, ptr %n.addr, align 4, !tbaa !12
  store i32 %mx, ptr %mx.addr, align 4, !tbaa !12
  %0 = load ptr, ptr %zBase.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %zText = getelementptr inbounds %struct.StrAccum, ptr %1, i32 0, i32 1
  store ptr %0, ptr %zText, align 8, !tbaa !59
  %2 = load ptr, ptr %db.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %db1 = getelementptr inbounds %struct.StrAccum, ptr %3, i32 0, i32 0
  store ptr %2, ptr %db1, align 8, !tbaa !63
  %4 = load i32, ptr %n.addr, align 4, !tbaa !12
  %5 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %nAlloc = getelementptr inbounds %struct.StrAccum, ptr %5, i32 0, i32 2
  store i32 %4, ptr %nAlloc, align 8, !tbaa !58
  %6 = load i32, ptr %mx.addr, align 4, !tbaa !12
  %7 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %mxAlloc = getelementptr inbounds %struct.StrAccum, ptr %7, i32 0, i32 3
  store i32 %6, ptr %mxAlloc, align 4, !tbaa !62
  %8 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %nChar = getelementptr inbounds %struct.StrAccum, ptr %8, i32 0, i32 4
  store i32 0, ptr %nChar, align 8, !tbaa !48
  %9 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %accError = getelementptr inbounds %struct.StrAccum, ptr %9, i32 0, i32 5
  store i8 0, ptr %accError, align 4, !tbaa !60
  %10 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %printfFlags = getelementptr inbounds %struct.StrAccum, ptr %10, i32 0, i32 6
  store i8 0, ptr %printfFlags, align 1, !tbaa !9
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @duckdb_shell_sqlite3_vmprintf(ptr noundef %zFormat, ptr noundef %ap) #0 {
entry:
  %zFormat.addr = alloca ptr, align 8
  %ap.addr = alloca ptr, align 8
  %z = alloca ptr, align 8
  %zBase = alloca [70 x i8], align 16
  %acc = alloca %struct.StrAccum, align 8
  store ptr %zFormat, ptr %zFormat.addr, align 8, !tbaa !4
  store ptr %ap, ptr %ap.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %z) #9
  call void @llvm.lifetime.start.p0(i64 70, ptr %zBase) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr %acc) #9
  %arraydecay = getelementptr inbounds [70 x i8], ptr %zBase, i64 0, i64 0
  call void @duckdb_shell_sqlite3StrAccumInit(ptr noundef %acc, ptr noundef null, ptr noundef %arraydecay, i32 noundef 70, i32 noundef 1000000000)
  %0 = load ptr, ptr %zFormat.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  call void @duckdb_shell_sqlite3VXPrintf(ptr noundef %acc, ptr noundef %0, ptr noundef %1)
  %call = call ptr @duckdb_shell_sqlite3StrAccumFinish(ptr noundef %acc)
  store ptr %call, ptr %z, align 8, !tbaa !4
  %2 = load ptr, ptr %z, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 32, ptr %acc) #9
  call void @llvm.lifetime.end.p0(i64 70, ptr %zBase) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %z) #9
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define ptr @duckdb_shell_sqlite3_mprintf(ptr noundef %zFormat, ...) #0 {
entry:
  %zFormat.addr = alloca ptr, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %z = alloca ptr, align 8
  store ptr %zFormat, ptr %zFormat.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 24, ptr %ap) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %z) #9
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %arraydecay)
  %0 = load ptr, ptr %zFormat.addr, align 8, !tbaa !4
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %call = call ptr @duckdb_shell_sqlite3_vmprintf(ptr noundef %0, ptr noundef %arraydecay1)
  store ptr %call, ptr %z, align 8, !tbaa !4
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %arraydecay2)
  %1 = load ptr, ptr %z, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %z) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr %ap) #9
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define ptr @duckdb_shell_sqlite3_vsnprintf(i32 noundef %n, ptr noundef %zBuf, ptr noundef %zFormat, ptr noundef %ap) #0 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %zBuf.addr = alloca ptr, align 8
  %zFormat.addr = alloca ptr, align 8
  %ap.addr = alloca ptr, align 8
  %acc = alloca %struct.StrAccum, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4, !tbaa !12
  store ptr %zBuf, ptr %zBuf.addr, align 8, !tbaa !4
  store ptr %zFormat, ptr %zFormat.addr, align 8, !tbaa !4
  store ptr %ap, ptr %ap.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 32, ptr %acc) #9
  %0 = load i32, ptr %n.addr, align 4, !tbaa !12
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %zBuf.addr, align 8, !tbaa !4
  store ptr %1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %zBuf.addr, align 8, !tbaa !4
  %3 = load i32, ptr %n.addr, align 4, !tbaa !12
  call void @duckdb_shell_sqlite3StrAccumInit(ptr noundef %acc, ptr noundef null, ptr noundef %2, i32 noundef %3, i32 noundef 0)
  %4 = load ptr, ptr %zFormat.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  call void @duckdb_shell_sqlite3VXPrintf(ptr noundef %acc, ptr noundef %4, ptr noundef %5)
  %6 = load ptr, ptr %zBuf.addr, align 8, !tbaa !4
  %nChar = getelementptr inbounds %struct.StrAccum, ptr %acc, i32 0, i32 4
  %7 = load i32, ptr %nChar, align 8, !tbaa !48
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 %idxprom
  store i8 0, ptr %arrayidx, align 1, !tbaa !8
  %8 = load ptr, ptr %zBuf.addr, align 8, !tbaa !4
  store ptr %8, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 32, ptr %acc) #9
  %9 = load ptr, ptr %retval, align 8
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define ptr @duckdb_shell_sqlite3_snprintf(i32 noundef %n, ptr noundef %zBuf, ptr noundef %zFormat, ...) #0 {
entry:
  %n.addr = alloca i32, align 4
  %zBuf.addr = alloca ptr, align 8
  %zFormat.addr = alloca ptr, align 8
  %z = alloca ptr, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %n, ptr %n.addr, align 4, !tbaa !12
  store ptr %zBuf, ptr %zBuf.addr, align 8, !tbaa !4
  store ptr %zFormat, ptr %zFormat.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %z) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr %ap) #9
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %arraydecay)
  %0 = load i32, ptr %n.addr, align 4, !tbaa !12
  %1 = load ptr, ptr %zBuf.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %zFormat.addr, align 8, !tbaa !4
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %call = call ptr @duckdb_shell_sqlite3_vsnprintf(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %arraydecay1)
  store ptr %call, ptr %z, align 8, !tbaa !4
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %arraydecay2)
  %3 = load ptr, ptr %z, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 24, ptr %ap) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %z) #9
  ret ptr %3
}

declare ptr @duckdb_shell_sqlite3_realloc64(ptr noundef, i64 noundef) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind willreturn memory(read) }

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
!8 = !{!6, !6, i64 0}
!9 = !{!10, !6, i64 29}
!10 = !{!"StrAccum", !5, i64 0, !5, i64 8, !11, i64 16, !11, i64 20, !11, i64 24, !6, i64 28, !6, i64 29}
!11 = !{!"int", !6, i64 0}
!12 = !{!11, !11, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
!18 = !{!19, !6, i64 0}
!19 = !{!"et_info", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3, !6, i64 4, !6, i64 5}
!20 = !{!19, !6, i64 3}
!21 = distinct !{!21, !14}
!22 = !{!19, !6, i64 2}
!23 = !{!24, !24, i64 0}
!24 = !{!"long", !6, i64 0}
!25 = !{!19, !6, i64 4}
!26 = !{!19, !6, i64 1}
!27 = distinct !{!27, !14}
!28 = distinct !{!28, !14}
!29 = distinct !{!29, !14}
!30 = !{!19, !6, i64 5}
!31 = distinct !{!31, !14}
!32 = !{!33, !33, i64 0}
!33 = !{!"long double", !6, i64 0}
!34 = !{!35, !35, i64 0}
!35 = !{!"double", !6, i64 0}
!36 = distinct !{!36, !14}
!37 = distinct !{!37, !14}
!38 = distinct !{!38, !14}
!39 = distinct !{!39, !14}
!40 = distinct !{!40, !14}
!41 = distinct !{!41, !14}
!42 = distinct !{!42, !14}
!43 = distinct !{!43, !14}
!44 = distinct !{!44, !14}
!45 = distinct !{!45, !14}
!46 = distinct !{!46, !14}
!47 = distinct !{!47, !14}
!48 = !{!10, !11, i64 24}
!49 = distinct !{!49, !14}
!50 = distinct !{!50, !14}
!51 = distinct !{!51, !14}
!52 = distinct !{!52, !14}
!53 = distinct !{!53, !14}
!54 = distinct !{!54, !14}
!55 = distinct !{!55, !14}
!56 = distinct !{!56, !14}
!57 = distinct !{!57, !14}
!58 = !{!10, !11, i64 16}
!59 = !{!10, !5, i64 8}
!60 = !{!10, !6, i64 28}
!61 = distinct !{!61, !14}
!62 = !{!10, !11, i64 20}
!63 = !{!10, !5, i64 0}

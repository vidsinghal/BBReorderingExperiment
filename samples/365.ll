; ModuleID = 'samples/365.bc'
source_filename = "f77data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Generator = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.NCConstant = type { i32, i32, i32, %union.Constvalue, i32 }
%union.Constvalue = type { %struct.Stringv }
%struct.Stringv = type { i32, ptr }

@f77_uid = global i32 0, align 4
@f77_generator_singleton = internal global %struct.Generator { ptr null, ptr @f77_charconstant, ptr @f77_constant, ptr @f77_listbegin, ptr @f77_list, ptr @f77_listend, ptr @f77_vlendecl, ptr @f77_vlenstring }, align 8
@f77_generator = global ptr @f77_generator_singleton, align 8
@.str = private unnamed_addr constant [5 x i8] c"'\\''\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"'%c'\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%hhd\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%hd\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%.8g\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%.16g\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"f77data: bad type code: %d\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"panic(\22f77data: bad type code: %d\22,ci->nctype)\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"f77data.c\00", align 1
@__PRETTY_FUNCTION__.f77_constant = private unnamed_addr constant [73 x i8] c"int f77_constant(Generator *, Symbol *, NCConstant *, Bytebuffer *, ...)\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c", \00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @f77_charconstant(ptr noundef %generator, ptr noundef %sym, ptr noundef %codebuf, ...) #0 {
entry:
  %generator.addr = alloca ptr, align 8
  %sym.addr = alloca ptr, align 8
  %codebuf.addr = alloca ptr, align 8
  %charbuf = alloca ptr, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %generator, ptr %generator.addr, align 8
  store ptr %sym, ptr %sym.addr, align 8
  store ptr %codebuf, ptr %codebuf.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %charbuf) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr %ap) #6
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %arraydecay)
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay1, i32 0, i32 0
  %gp_offset = load i32, ptr %gp_offset_p, align 16
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %entry
  %0 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay1, i32 0, i32 3
  %reg_save_area = load ptr, ptr %0, align 16
  %1 = getelementptr i8, ptr %reg_save_area, i32 %gp_offset
  %2 = add i32 %gp_offset, 8
  store i32 %2, ptr %gp_offset_p, align 16
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %entry
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay1, i32 0, i32 2
  %overflow_arg_area = load ptr, ptr %overflow_arg_area_p, align 8
  %overflow_arg_area.next = getelementptr i8, ptr %overflow_arg_area, i32 8
  store ptr %overflow_arg_area.next, ptr %overflow_arg_area_p, align 8
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi ptr [ %1, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %3 = load ptr, ptr %vaarg.addr, align 8
  store ptr %3, ptr %charbuf, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %arraydecay2)
  %4 = load ptr, ptr %charbuf, align 8
  %call = call i32 @bbNull(ptr noundef %4)
  %5 = load ptr, ptr %codebuf.addr, align 8
  %6 = load ptr, ptr %charbuf, align 8
  %call3 = call i32 @bbCatbuf(ptr noundef %5, ptr noundef %6)
  call void @llvm.lifetime.end.p0(i64 24, ptr %ap) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %charbuf) #6
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @f77_constant(ptr noundef %generator, ptr noundef %sym, ptr noundef %ci, ptr noundef %codebuf, ...) #0 {
entry:
  %generator.addr = alloca ptr, align 8
  %sym.addr = alloca ptr, align 8
  %ci.addr = alloca ptr, align 8
  %codebuf.addr = alloca ptr, align 8
  %tmp = alloca [64 x i8], align 16
  %special = alloca ptr, align 8
  %p = alloca ptr, align 8
  %buf = alloca ptr, align 8
  store ptr %generator, ptr %generator.addr, align 8
  store ptr %sym, ptr %sym.addr, align 8
  store ptr %ci, ptr %ci.addr, align 8
  store ptr %codebuf, ptr %codebuf.addr, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr %tmp) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %special) #6
  store ptr null, ptr %special, align 8
  %0 = load ptr, ptr %ci.addr, align 8
  %nctype = getelementptr inbounds %struct.NCConstant, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %nctype, align 8
  switch i32 %1, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb6
    i32 3, label %sw.bb11
    i32 4, label %sw.bb16
    i32 5, label %sw.bb20
    i32 6, label %sw.bb25
    i32 12, label %sw.bb38
  ]

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %ci.addr, align 8
  %value = getelementptr inbounds %struct.NCConstant, ptr %2, i32 0, i32 3
  %3 = load i8, ptr %value, align 8
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 39
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %arraydecay = getelementptr inbounds [64 x i8], ptr %tmp, i64 0, i64 0
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay, ptr noundef @.str) #6
  br label %if.end

if.else:                                          ; preds = %sw.bb
  %arraydecay2 = getelementptr inbounds [64 x i8], ptr %tmp, i64 0, i64 0
  %4 = load ptr, ptr %ci.addr, align 8
  %value3 = getelementptr inbounds %struct.NCConstant, ptr %4, i32 0, i32 3
  %5 = load i8, ptr %value3, align 8
  %conv4 = sext i8 %5 to i32
  %call5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay2, ptr noundef @.str.1, i32 noundef %conv4) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %arraydecay7 = getelementptr inbounds [64 x i8], ptr %tmp, i64 0, i64 0
  %6 = load ptr, ptr %ci.addr, align 8
  %value8 = getelementptr inbounds %struct.NCConstant, ptr %6, i32 0, i32 3
  %7 = load i8, ptr %value8, align 8
  %conv9 = sext i8 %7 to i32
  %call10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay7, ptr noundef @.str.2, i32 noundef %conv9) #6
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  %arraydecay12 = getelementptr inbounds [64 x i8], ptr %tmp, i64 0, i64 0
  %8 = load ptr, ptr %ci.addr, align 8
  %value13 = getelementptr inbounds %struct.NCConstant, ptr %8, i32 0, i32 3
  %9 = load i16, ptr %value13, align 8
  %conv14 = sext i16 %9 to i32
  %call15 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay12, ptr noundef @.str.3, i32 noundef %conv14) #6
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  %arraydecay17 = getelementptr inbounds [64 x i8], ptr %tmp, i64 0, i64 0
  %10 = load ptr, ptr %ci.addr, align 8
  %value18 = getelementptr inbounds %struct.NCConstant, ptr %10, i32 0, i32 3
  %11 = load i32, ptr %value18, align 8
  %call19 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay17, ptr noundef @.str.4, i32 noundef %11) #6
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  %arraydecay21 = getelementptr inbounds [64 x i8], ptr %tmp, i64 0, i64 0
  %12 = load ptr, ptr %ci.addr, align 8
  %value22 = getelementptr inbounds %struct.NCConstant, ptr %12, i32 0, i32 3
  %13 = load float, ptr %value22, align 8
  %conv23 = fpext float %13 to double
  %call24 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay21, ptr noundef @.str.5, double noundef %conv23) #6
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #6
  %arraydecay26 = getelementptr inbounds [64 x i8], ptr %tmp, i64 0, i64 0
  store ptr %arraydecay26, ptr %p, align 8
  %arraydecay27 = getelementptr inbounds [64 x i8], ptr %tmp, i64 0, i64 0
  %14 = load ptr, ptr %ci.addr, align 8
  %value28 = getelementptr inbounds %struct.NCConstant, ptr %14, i32 0, i32 3
  %15 = load double, ptr %value28, align 8
  %call29 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay27, ptr noundef @.str.6, double noundef %15) #6
  br label %while.cond

while.cond:                                       ; preds = %if.end37, %sw.bb25
  %16 = load ptr, ptr %p, align 8
  %17 = load i8, ptr %16, align 1
  %tobool = icmp ne i8 %17, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load ptr, ptr %p, align 8
  %19 = load i8, ptr %18, align 1
  %conv30 = sext i8 %19 to i32
  %cmp31 = icmp eq i32 %conv30, 101
  br i1 %cmp31, label %if.then36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %20 = load ptr, ptr %p, align 8
  %21 = load i8, ptr %20, align 1
  %conv33 = sext i8 %21 to i32
  %cmp34 = icmp eq i32 %conv33, 69
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %lor.lhs.false, %while.body
  %22 = load ptr, ptr %p, align 8
  store i8 68, ptr %22, align 1
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %lor.lhs.false
  %23 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %23, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #6
  br label %sw.epilog

sw.bb38:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #6
  %call39 = call ptr @bbNew()
  store ptr %call39, ptr %buf, align 8
  %24 = load ptr, ptr %buf, align 8
  %25 = load ptr, ptr %ci.addr, align 8
  %value40 = getelementptr inbounds %struct.NCConstant, ptr %25, i32 0, i32 3
  %stringv = getelementptr inbounds %struct.Stringv, ptr %value40, i32 0, i32 1
  %26 = load ptr, ptr %stringv, align 8
  %27 = load ptr, ptr %ci.addr, align 8
  %value41 = getelementptr inbounds %struct.NCConstant, ptr %27, i32 0, i32 3
  %len = getelementptr inbounds %struct.Stringv, ptr %value41, i32 0, i32 0
  %28 = load i32, ptr %len, align 8
  %call42 = call i32 @bbAppendn(ptr noundef %24, ptr noundef %26, i32 noundef %28)
  %29 = load ptr, ptr %buf, align 8
  call void @f77quotestring(ptr noundef %29)
  %30 = load ptr, ptr %buf, align 8
  %call43 = call ptr @bbDup(ptr noundef %30)
  store ptr %call43, ptr %special, align 8
  %31 = load ptr, ptr %buf, align 8
  call void @bbFree(ptr noundef %31)
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #6
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %32 = load ptr, ptr %ci.addr, align 8
  %nctype44 = getelementptr inbounds %struct.NCConstant, ptr %32, i32 0, i32 0
  %33 = load i32, ptr %nctype44, align 8
  %call45 = call i32 (ptr, ...) @panic(ptr noundef @.str.7, i32 noundef %33)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then47, label %if.else48

if.then47:                                        ; preds = %sw.default
  br label %if.end49

if.else48:                                        ; preds = %sw.default
  call void @__assert_fail(ptr noundef @.str.8, ptr noundef @.str.9, i32 noundef 70, ptr noundef @__PRETTY_FUNCTION__.f77_constant) #7
  unreachable

if.end49:                                         ; preds = %if.then47
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end49, %sw.bb38, %while.end, %sw.bb20, %sw.bb16, %sw.bb11, %sw.bb6, %if.end
  %34 = load ptr, ptr %special, align 8
  %cmp50 = icmp ne ptr %34, null
  br i1 %cmp50, label %if.then52, label %if.else54

if.then52:                                        ; preds = %sw.epilog
  %35 = load ptr, ptr %codebuf.addr, align 8
  %36 = load ptr, ptr %special, align 8
  %call53 = call i32 @bbCat(ptr noundef %35, ptr noundef %36)
  br label %if.end57

if.else54:                                        ; preds = %sw.epilog
  %37 = load ptr, ptr %codebuf.addr, align 8
  %arraydecay55 = getelementptr inbounds [64 x i8], ptr %tmp, i64 0, i64 0
  %call56 = call i32 @bbCat(ptr noundef %37, ptr noundef %arraydecay55)
  br label %if.end57

if.end57:                                         ; preds = %if.else54, %if.then52
  call void @llvm.lifetime.end.p0(i64 8, ptr %special) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr %tmp) #6
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @f77_listbegin(ptr noundef %generator, ptr noundef %sym, ptr noundef %liststate, i32 noundef %lc, i64 noundef %size, ptr noundef %codebuf, ptr noundef %uidp, ...) #0 {
entry:
  %generator.addr = alloca ptr, align 8
  %sym.addr = alloca ptr, align 8
  %liststate.addr = alloca ptr, align 8
  %lc.addr = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %codebuf.addr = alloca ptr, align 8
  %uidp.addr = alloca ptr, align 8
  store ptr %generator, ptr %generator.addr, align 8
  store ptr %sym, ptr %sym.addr, align 8
  store ptr %liststate, ptr %liststate.addr, align 8
  store i32 %lc, ptr %lc.addr, align 4
  store i64 %size, ptr %size.addr, align 8
  store ptr %codebuf, ptr %codebuf.addr, align 8
  store ptr %uidp, ptr %uidp.addr, align 8
  %0 = load ptr, ptr %uidp.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr @f77_uid, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr @f77_uid, align 4
  %2 = load ptr, ptr %uidp.addr, align 8
  store i32 %inc, ptr %2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @f77_list(ptr noundef %generator, ptr noundef %sym, ptr noundef %liststate, i32 noundef %lc, i32 noundef %uid, i64 noundef %count, ptr noundef %codebuf, ...) #0 {
entry:
  %generator.addr = alloca ptr, align 8
  %sym.addr = alloca ptr, align 8
  %liststate.addr = alloca ptr, align 8
  %lc.addr = alloca i32, align 4
  %uid.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  %codebuf.addr = alloca ptr, align 8
  store ptr %generator, ptr %generator.addr, align 8
  store ptr %sym, ptr %sym.addr, align 8
  store ptr %liststate, ptr %liststate.addr, align 8
  store i32 %lc, ptr %lc.addr, align 4
  store i32 %uid, ptr %uid.addr, align 4
  store i64 %count, ptr %count.addr, align 8
  store ptr %codebuf, ptr %codebuf.addr, align 8
  %0 = load i32, ptr %lc.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb1
    i32 2, label %sw.bb3
    i32 3, label %sw.bb3
    i32 4, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i64, ptr %count.addr, align 8
  %cmp = icmp ugt i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %2 = load ptr, ptr %codebuf.addr, align 8
  %call = call i32 @bbCat(ptr noundef %2, ptr noundef @.str.10)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %3 = load ptr, ptr %codebuf.addr, align 8
  %call2 = call i32 @bbAppend(ptr noundef %3, i8 noundef signext 32)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry, %entry, %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb3, %sw.bb1, %if.end
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @f77_listend(ptr noundef %generator, ptr noundef %sym, ptr noundef %liststate, i32 noundef %lc, i32 noundef %uid, i64 noundef %count, ptr noundef %buf, ...) #0 {
entry:
  %generator.addr = alloca ptr, align 8
  %sym.addr = alloca ptr, align 8
  %liststate.addr = alloca ptr, align 8
  %lc.addr = alloca i32, align 4
  %uid.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %generator, ptr %generator.addr, align 8
  store ptr %sym, ptr %sym.addr, align 8
  store ptr %liststate, ptr %liststate.addr, align 8
  store i32 %lc, ptr %lc.addr, align 4
  store i32 %uid, ptr %uid.addr, align 4
  store i64 %count, ptr %count.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @f77_vlendecl(ptr noundef %generator, ptr noundef %tsym, ptr noundef %codebuf, i32 noundef %uid, i64 noundef %count, ...) #0 {
entry:
  %generator.addr = alloca ptr, align 8
  %tsym.addr = alloca ptr, align 8
  %codebuf.addr = alloca ptr, align 8
  %uid.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store ptr %generator, ptr %generator.addr, align 8
  store ptr %tsym, ptr %tsym.addr, align 8
  store ptr %codebuf, ptr %codebuf.addr, align 8
  store i32 %uid, ptr %uid.addr, align 4
  store i64 %count, ptr %count.addr, align 8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @f77_vlenstring(ptr noundef %generator, ptr noundef %sym, ptr noundef %vlenmem, ptr noundef %uidp, ptr noundef %countp, ...) #0 {
entry:
  %generator.addr = alloca ptr, align 8
  %sym.addr = alloca ptr, align 8
  %vlenmem.addr = alloca ptr, align 8
  %uidp.addr = alloca ptr, align 8
  %countp.addr = alloca ptr, align 8
  store ptr %generator, ptr %generator.addr, align 8
  store ptr %sym, ptr %sym.addr, align 8
  store ptr %vlenmem, ptr %vlenmem.addr, align 8
  store ptr %uidp, ptr %uidp.addr, align 8
  store ptr %countp, ptr %countp.addr, align 8
  %0 = load ptr, ptr %uidp.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr @f77_uid, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr @f77_uid, align 4
  %2 = load ptr, ptr %uidp.addr, align 8
  store i32 %inc, ptr %2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @bbNull(ptr noundef) #2

declare i32 @bbCatbuf(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare i32 @sprintf(ptr noundef, ptr noundef, ...) #3

declare ptr @bbNew() #2

declare i32 @bbAppendn(ptr noundef, ptr noundef, i32 noundef) #2

declare void @f77quotestring(ptr noundef) #2

declare ptr @bbDup(ptr noundef) #2

declare void @bbFree(ptr noundef) #2

declare i32 @panic(ptr noundef, ...) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

declare i32 @bbCat(ptr noundef, ptr noundef) #2

declare i32 @bbAppend(ptr noundef, i8 noundef signext) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}

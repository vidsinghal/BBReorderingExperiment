; ModuleID = 'samples/93.bc'
source_filename = "escapes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8, ptr }
%struct.Bytebuffer = type { i32, i32, i32, ptr }

@.str = private unnamed_addr constant [3 x i8] c"\\b\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\\f\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\\v\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@l_flag = external global i32, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"escapes.c\00", align 1
@__PRETTY_FUNCTION__.codify = private unnamed_addr constant [27 x i8] c"char *codify(const char *)\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"Cannot convert UTF8 string to UTF16: %s\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"//char(%u)\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"char(0)\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"//'\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"_SLASH_\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"_DOT_\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"0123456789abcdefABCDEF\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"01234567\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"Bad octal constant: %s\00", align 1
@init = internal global i32 0, align 4
@newname = internal global ptr null, align 8
@.str.18 = private unnamed_addr constant [10 x i8] c"DIGIT_%c_\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"assertion failure: %s\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"c <= 256\00", align 1
@repls = internal global [256 x ptr] zeroinitializer, align 16
@idtlen = internal global i32 0, align 4
@hexlen = internal global i32 0, align 4
@ctable = internal global [32 x %struct.anon] [%struct.anon { i8 32, ptr @.str.22 }, %struct.anon { i8 33, ptr @.str.23 }, %struct.anon { i8 34, ptr @.str.24 }, %struct.anon { i8 35, ptr @.str.25 }, %struct.anon { i8 36, ptr @.str.26 }, %struct.anon { i8 37, ptr @.str.27 }, %struct.anon { i8 38, ptr @.str.28 }, %struct.anon { i8 39, ptr @.str.29 }, %struct.anon { i8 40, ptr @.str.30 }, %struct.anon { i8 41, ptr @.str.31 }, %struct.anon { i8 42, ptr @.str.32 }, %struct.anon { i8 43, ptr @.str.33 }, %struct.anon { i8 44, ptr @.str.34 }, %struct.anon { i8 45, ptr @.str.35 }, %struct.anon { i8 46, ptr @.str.36 }, %struct.anon { i8 58, ptr @.str.37 }, %struct.anon { i8 59, ptr @.str.38 }, %struct.anon { i8 60, ptr @.str.39 }, %struct.anon { i8 61, ptr @.str.40 }, %struct.anon { i8 62, ptr @.str.41 }, %struct.anon { i8 63, ptr @.str.42 }, %struct.anon { i8 64, ptr @.str.43 }, %struct.anon { i8 91, ptr @.str.44 }, %struct.anon { i8 92, ptr @.str.45 }, %struct.anon { i8 93, ptr @.str.46 }, %struct.anon { i8 94, ptr @.str.47 }, %struct.anon { i8 96, ptr @.str.48 }, %struct.anon { i8 123, ptr @.str.49 }, %struct.anon { i8 124, ptr @.str.50 }, %struct.anon { i8 125, ptr @.str.51 }, %struct.anon { i8 126, ptr @.str.52 }, %struct.anon { i8 47, ptr @.str.13 }], align 16
@.str.21 = private unnamed_addr constant [8 x i8] c"_X%2.2X\00", align 1
@lens = internal global [256 x i32] zeroinitializer, align 16
@.str.22 = private unnamed_addr constant [8 x i8] c"_SPACE_\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"_EXCLAMATION_\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"_QUOTATION_\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"_HASH_\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"_DOLLAR_\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"_PERCENT_\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"_AMPERSAND_\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"_APOSTROPHE_\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"_LEFTPAREN_\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"_RIGHTPAREN_\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"_ASTERISK_\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"_PLUS_\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"_COMMA_\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"_MINUS_\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"_PERIOD_\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"_COLON_\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"_SEMICOLON_\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"_LESSTHAN_\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"_EQUALS_\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"_GREATERTHAN_\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"_QUESTION_\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"_ATSIGN_\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"_LEFTBRACKET_\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"_BACKSLASH_\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"_RIGHTBRACKET_\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"_CIRCUMFLEX_\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"_BACKQUOTE_\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"_LEFTCURLY_\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"_VERTICALBAR_\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"_RIGHTCURLY_\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"_TILDE_\00", align 1
@printescapable = internal global [5 x i8] c"\22&<>\00", align 1
@printescape = internal global [4 x ptr] [ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57], align 16
@.str.53 = private unnamed_addr constant [3 x i8] c"&#\00", align 1
@hexdigits = internal global [17 x i8] c"0123456789ABCDEF\00", align 16
@.str.54 = private unnamed_addr constant [5 x i8] c"quot\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"amp\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"lt\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"gt\00", align 1

; Function Attrs: nounwind uwtable
define ptr @escapifychar(i32 noundef %c, ptr noundef %s0, i32 noundef %quote) #0 {
entry:
  %c.addr = alloca i32, align 4
  %s0.addr = alloca ptr, align 8
  %quote.addr = alloca i32, align 4
  %s = alloca ptr, align 8
  %oct1 = alloca i32, align 4
  %oct2 = alloca i32, align 4
  %oct3 = alloca i32, align 4
  store i32 %c, ptr %c.addr, align 4
  store ptr %s0, ptr %s0.addr, align 8
  store i32 %quote, ptr %quote.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #7
  %0 = load ptr, ptr %s0.addr, align 8
  store ptr %0, ptr %s, align 8
  %1 = load i32, ptr %c.addr, align 4
  %cmp = icmp eq i32 %1, 92
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %s, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %s, align 8
  store i8 92, ptr %2, align 1
  %3 = load ptr, ptr %s, align 8
  %incdec.ptr1 = getelementptr inbounds i8, ptr %3, i32 1
  store ptr %incdec.ptr1, ptr %s, align 8
  store i8 92, ptr %3, align 1
  br label %if.end51

if.else:                                          ; preds = %entry
  %4 = load i32, ptr %c.addr, align 4
  %5 = load i32, ptr %quote.addr, align 4
  %cmp2 = icmp eq i32 %4, %5
  br i1 %cmp2, label %if.then3, label %if.else6

if.then3:                                         ; preds = %if.else
  %6 = load ptr, ptr %s, align 8
  %incdec.ptr4 = getelementptr inbounds i8, ptr %6, i32 1
  store ptr %incdec.ptr4, ptr %s, align 8
  store i8 92, ptr %6, align 1
  %7 = load i32, ptr %quote.addr, align 4
  %conv = trunc i32 %7 to i8
  %8 = load ptr, ptr %s, align 8
  %incdec.ptr5 = getelementptr inbounds i8, ptr %8, i32 1
  store ptr %incdec.ptr5, ptr %s, align 8
  store i8 %conv, ptr %8, align 1
  br label %if.end50

if.else6:                                         ; preds = %if.else
  %9 = load i32, ptr %c.addr, align 4
  %cmp7 = icmp uge i32 %9, 32
  br i1 %cmp7, label %land.lhs.true, label %if.else14

land.lhs.true:                                    ; preds = %if.else6
  %10 = load i32, ptr %c.addr, align 4
  %cmp9 = icmp ne i32 %10, 127
  br i1 %cmp9, label %if.then11, label %if.else14

if.then11:                                        ; preds = %land.lhs.true
  %11 = load i32, ptr %c.addr, align 4
  %conv12 = trunc i32 %11 to i8
  %12 = load ptr, ptr %s, align 8
  %incdec.ptr13 = getelementptr inbounds i8, ptr %12, i32 1
  store ptr %incdec.ptr13, ptr %s, align 8
  store i8 %conv12, ptr %12, align 1
  br label %if.end49

if.else14:                                        ; preds = %land.lhs.true, %if.else6
  %13 = load i32, ptr %c.addr, align 4
  %and = and i32 %13, 128
  %cmp15 = icmp ne i32 %and, 0
  br i1 %cmp15, label %if.then17, label %if.else20

if.then17:                                        ; preds = %if.else14
  %14 = load i32, ptr %c.addr, align 4
  %conv18 = trunc i32 %14 to i8
  %15 = load ptr, ptr %s, align 8
  %incdec.ptr19 = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr19, ptr %s, align 8
  store i8 %conv18, ptr %15, align 1
  br label %if.end

if.else20:                                        ; preds = %if.else14
  %16 = load i32, ptr %c.addr, align 4
  switch i32 %16, label %sw.default [
    i32 8, label %sw.bb
    i32 12, label %sw.bb21
    i32 10, label %sw.bb24
    i32 13, label %sw.bb27
    i32 9, label %sw.bb30
    i32 11, label %sw.bb33
  ]

sw.bb:                                            ; preds = %if.else20
  %17 = load ptr, ptr %s, align 8
  %call = call ptr @strcpy(ptr noundef %17, ptr noundef @.str) #7
  %18 = load ptr, ptr %s, align 8
  %add.ptr = getelementptr inbounds i8, ptr %18, i64 2
  store ptr %add.ptr, ptr %s, align 8
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.else20
  %19 = load ptr, ptr %s, align 8
  %call22 = call ptr @strcpy(ptr noundef %19, ptr noundef @.str.1) #7
  %20 = load ptr, ptr %s, align 8
  %add.ptr23 = getelementptr inbounds i8, ptr %20, i64 2
  store ptr %add.ptr23, ptr %s, align 8
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.else20
  %21 = load ptr, ptr %s, align 8
  %call25 = call ptr @strcpy(ptr noundef %21, ptr noundef @.str.2) #7
  %22 = load ptr, ptr %s, align 8
  %add.ptr26 = getelementptr inbounds i8, ptr %22, i64 2
  store ptr %add.ptr26, ptr %s, align 8
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.else20
  %23 = load ptr, ptr %s, align 8
  %call28 = call ptr @strcpy(ptr noundef %23, ptr noundef @.str.3) #7
  %24 = load ptr, ptr %s, align 8
  %add.ptr29 = getelementptr inbounds i8, ptr %24, i64 2
  store ptr %add.ptr29, ptr %s, align 8
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.else20
  %25 = load ptr, ptr %s, align 8
  %call31 = call ptr @strcpy(ptr noundef %25, ptr noundef @.str.4) #7
  %26 = load ptr, ptr %s, align 8
  %add.ptr32 = getelementptr inbounds i8, ptr %26, i64 2
  store ptr %add.ptr32, ptr %s, align 8
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.else20
  %27 = load ptr, ptr %s, align 8
  %call34 = call ptr @strcpy(ptr noundef %27, ptr noundef @.str.5) #7
  %28 = load ptr, ptr %s, align 8
  %add.ptr35 = getelementptr inbounds i8, ptr %28, i64 2
  store ptr %add.ptr35, ptr %s, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.else20
  call void @llvm.lifetime.start.p0(i64 4, ptr %oct1) #7
  %29 = load i32, ptr %c.addr, align 4
  %and36 = and i32 %29, 7
  store i32 %and36, ptr %oct1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %oct2) #7
  %30 = load i32, ptr %c.addr, align 4
  %shr = lshr i32 %30, 3
  %and37 = and i32 %shr, 7
  store i32 %and37, ptr %oct2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %oct3) #7
  %31 = load i32, ptr %c.addr, align 4
  %shr38 = lshr i32 %31, 6
  %and39 = and i32 %shr38, 3
  store i32 %and39, ptr %oct3, align 4
  %32 = load ptr, ptr %s, align 8
  %incdec.ptr40 = getelementptr inbounds i8, ptr %32, i32 1
  store ptr %incdec.ptr40, ptr %s, align 8
  store i8 92, ptr %32, align 1
  %33 = load i32, ptr %oct3, align 4
  %add = add i32 %33, 48
  %conv41 = trunc i32 %add to i8
  %34 = load ptr, ptr %s, align 8
  %incdec.ptr42 = getelementptr inbounds i8, ptr %34, i32 1
  store ptr %incdec.ptr42, ptr %s, align 8
  store i8 %conv41, ptr %34, align 1
  %35 = load i32, ptr %oct2, align 4
  %add43 = add i32 %35, 48
  %conv44 = trunc i32 %add43 to i8
  %36 = load ptr, ptr %s, align 8
  %incdec.ptr45 = getelementptr inbounds i8, ptr %36, i32 1
  store ptr %incdec.ptr45, ptr %s, align 8
  store i8 %conv44, ptr %36, align 1
  %37 = load i32, ptr %oct1, align 4
  %add46 = add i32 %37, 48
  %conv47 = trunc i32 %add46 to i8
  %38 = load ptr, ptr %s, align 8
  %incdec.ptr48 = getelementptr inbounds i8, ptr %38, i32 1
  store ptr %incdec.ptr48, ptr %s, align 8
  store i8 %conv47, ptr %38, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr %oct3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %oct2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %oct1) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb33, %sw.bb30, %sw.bb27, %sw.bb24, %sw.bb21, %sw.bb
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %if.then17
  br label %if.end49

if.end49:                                         ; preds = %if.end, %if.then11
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then3
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then
  %39 = load ptr, ptr %s, align 8
  store i8 0, ptr %39, align 1
  %40 = load ptr, ptr %s0.addr, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #7
  ret ptr %40
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define ptr @escapify(ptr noundef %s0, i32 noundef %quote, i64 noundef %len) #0 {
entry:
  %s0.addr = alloca ptr, align 8
  %quote.addr = alloca i32, align 4
  %len.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %result = alloca ptr, align 8
  %tmp = alloca [8 x i8], align 1
  store ptr %s0, ptr %s0.addr, align 8
  store i32 %quote, ptr %quote.addr, align 4
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #7
  %0 = load i64, ptr %len.addr, align 8
  %mul = mul i64 4, %0
  %add = add i64 1, %mul
  %call = call ptr @poolalloc(i64 noundef %add)
  store ptr %call, ptr %result, align 8
  %1 = load ptr, ptr %result, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  store i8 0, ptr %arrayidx, align 1
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %conv = sext i32 %2 to i64
  %3 = load i64, ptr %len.addr, align 8
  %cmp = icmp ult i64 %conv, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #7
  %4 = load ptr, ptr %s0.addr, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds i8, ptr %4, i64 %idxprom
  %6 = load i8, ptr %arrayidx2, align 1
  %conv3 = sext i8 %6 to i32
  %arraydecay = getelementptr inbounds [8 x i8], ptr %tmp, i64 0, i64 0
  %7 = load i32, ptr %quote.addr, align 4
  %call4 = call ptr @escapifychar(i32 noundef %conv3, ptr noundef %arraydecay, i32 noundef %7)
  %8 = load ptr, ptr %result, align 8
  %arraydecay5 = getelementptr inbounds [8 x i8], ptr %tmp, i64 0, i64 0
  %call6 = call ptr @strcat(ptr noundef %8, ptr noundef %arraydecay5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %10 = load ptr, ptr %result, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  ret ptr %10
}

declare ptr @poolalloc(i64 noundef) #3

; Function Attrs: nounwind
declare ptr @strcat(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define ptr @escapifyname(ptr noundef %s0) #0 {
entry:
  %s0.addr = alloca ptr, align 8
  store ptr %s0, ptr %s0.addr, align 8
  %0 = load ptr, ptr %s0.addr, align 8
  %1 = load ptr, ptr %s0.addr, align 8
  %call = call i64 @strlen(ptr noundef %1) #8
  %call1 = call ptr @escapify(ptr noundef %0, i32 noundef 34, i64 noundef %call)
  ret ptr %call1
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #4

; Function Attrs: nounwind uwtable
define void @cquotestring(ptr noundef %databuf, i8 noundef signext %quote) #0 {
entry:
  %databuf.addr = alloca ptr, align 8
  %quote.addr = alloca i8, align 1
  %escaped = alloca ptr, align 8
  store ptr %databuf, ptr %databuf.addr, align 8
  store i8 %quote, ptr %quote.addr, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr %escaped) #7
  %0 = load ptr, ptr %databuf.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %databuf.addr, align 8
  %content = getelementptr inbounds %struct.Bytebuffer, ptr %1, i32 0, i32 3
  %2 = load ptr, ptr %content, align 8
  %tobool1 = icmp ne ptr %2, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %3 = load ptr, ptr %databuf.addr, align 8
  %content2 = getelementptr inbounds %struct.Bytebuffer, ptr %3, i32 0, i32 3
  %4 = load ptr, ptr %content2, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ @.str.6, %cond.false ]
  %5 = load ptr, ptr %databuf.addr, align 8
  %tobool3 = icmp ne ptr %5, null
  br i1 %tobool3, label %cond.true4, label %cond.false5

cond.true4:                                       ; preds = %cond.end
  %6 = load ptr, ptr %databuf.addr, align 8
  %length = getelementptr inbounds %struct.Bytebuffer, ptr %6, i32 0, i32 2
  %7 = load i32, ptr %length, align 8
  br label %cond.end6

cond.false5:                                      ; preds = %cond.end
  br label %cond.end6

cond.end6:                                        ; preds = %cond.false5, %cond.true4
  %cond7 = phi i32 [ %7, %cond.true4 ], [ 0, %cond.false5 ]
  %conv = zext i32 %cond7 to i64
  %call = call ptr @escapify(ptr noundef %cond, i32 noundef 34, i64 noundef %conv)
  store ptr %call, ptr %escaped, align 8
  %8 = load ptr, ptr %databuf.addr, align 8
  %tobool8 = icmp ne ptr %8, null
  br i1 %tobool8, label %cond.true9, label %cond.false11

cond.true9:                                       ; preds = %cond.end6
  %9 = load ptr, ptr %databuf.addr, align 8
  %length10 = getelementptr inbounds %struct.Bytebuffer, ptr %9, i32 0, i32 2
  store i32 0, ptr %length10, align 8
  br label %cond.end12

cond.false11:                                     ; preds = %cond.end6
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false11, %cond.true9
  %cond13 = phi i32 [ 0, %cond.true9 ], [ 0, %cond.false11 ]
  %10 = load ptr, ptr %databuf.addr, align 8
  %11 = load i8, ptr %quote.addr, align 1
  %call14 = call i32 @bbAppend(ptr noundef %10, i8 noundef signext %11)
  %12 = load ptr, ptr %databuf.addr, align 8
  %13 = load ptr, ptr %escaped, align 8
  %call15 = call i32 @bbCat(ptr noundef %12, ptr noundef %13)
  %14 = load ptr, ptr %databuf.addr, align 8
  %15 = load i8, ptr %quote.addr, align 1
  %call16 = call i32 @bbAppend(ptr noundef %14, i8 noundef signext %15)
  call void @llvm.lifetime.end.p0(i64 8, ptr %escaped) #7
  ret void
}

declare i32 @bbAppend(ptr noundef, i8 noundef signext) #3

declare i32 @bbCat(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define ptr @codify(ptr noundef %name0) #0 {
entry:
  %retval = alloca ptr, align 8
  %name0.addr = alloca ptr, align 8
  store ptr %name0, ptr %name0.addr, align 8
  %0 = load ptr, ptr %name0.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 47
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %name0.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %name0.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr @l_flag, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb4
    i32 4, label %sw.bb6
  ]

sw.bb:                                            ; preds = %if.end
  %4 = load ptr, ptr %name0.addr, align 8
  %call = call ptr @pooldup(ptr noundef %4)
  store ptr %call, ptr %retval, align 8
  br label %return

sw.bb2:                                           ; preds = %if.end
  %5 = load ptr, ptr %name0.addr, align 8
  %call3 = call ptr @ccodify(ptr noundef %5)
  store ptr %call3, ptr %retval, align 8
  br label %return

sw.bb4:                                           ; preds = %if.end
  %6 = load ptr, ptr %name0.addr, align 8
  %call5 = call ptr @f77codify(ptr noundef %6)
  store ptr %call5, ptr %retval, align 8
  br label %return

sw.bb6:                                           ; preds = %if.end
  %7 = load ptr, ptr %name0.addr, align 8
  %call7 = call ptr @jcodify(ptr noundef %7)
  store ptr %call7, ptr %retval, align 8
  br label %return

sw.default:                                       ; preds = %if.end
  call void @__assert_fail(ptr noundef @.str.7, ptr noundef @.str.8, i32 noundef 218, ptr noundef @__PRETTY_FUNCTION__.codify) #9
  unreachable

return:                                           ; preds = %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb
  %8 = load ptr, ptr %retval, align 8
  ret ptr %8
}

declare ptr @pooldup(ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal ptr @ccodify(ptr noundef %name0) #0 {
entry:
  %name0.addr = alloca ptr, align 8
  %cp = alloca ptr, align 8
  %c = alloca i32, align 4
  %name = alloca ptr, align 8
  %tmp = alloca [16 x i8], align 16
  store ptr %name0, ptr %name0.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %cp) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #7
  %0 = load i32, ptr @init, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @initcodify()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr @newname, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %2 = load ptr, ptr @newname, align 8
  %length = getelementptr inbounds %struct.Bytebuffer, ptr %2, i32 0, i32 2
  store i32 0, ptr %length, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ 0, %cond.false ]
  %3 = load ptr, ptr %name0.addr, align 8
  store ptr %3, ptr %cp, align 8
  %4 = load ptr, ptr %cp, align 8
  %5 = load i8, ptr %4, align 1
  %conv = zext i8 %5 to i32
  %cmp1 = icmp sle i32 48, %conv
  br i1 %cmp1, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %cond.end
  %6 = load ptr, ptr %cp, align 8
  %7 = load i8, ptr %6, align 1
  %conv3 = zext i8 %7 to i32
  %cmp4 = icmp sle i32 %conv3, 57
  br i1 %cmp4, label %if.then6, label %if.end10

if.then6:                                         ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #7
  %arraydecay = getelementptr inbounds [16 x i8], ptr %tmp, i64 0, i64 0
  %8 = load ptr, ptr %cp, align 8
  %9 = load i8, ptr %8, align 1
  %conv7 = zext i8 %9 to i32
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 16, ptr noundef @.str.18, i32 noundef %conv7) #7
  %10 = load ptr, ptr @newname, align 8
  %arraydecay8 = getelementptr inbounds [16 x i8], ptr %tmp, i64 0, i64 0
  %call9 = call i32 @bbCat(ptr noundef %10, ptr noundef %arraydecay8)
  %11 = load ptr, ptr %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %11, i32 1
  store ptr %incdec.ptr, ptr %cp, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %land.lhs.true, %cond.end
  br label %while.cond

while.cond:                                       ; preds = %if.end18, %if.end10
  %12 = load ptr, ptr %cp, align 8
  %incdec.ptr11 = getelementptr inbounds i8, ptr %12, i32 1
  store ptr %incdec.ptr11, ptr %cp, align 8
  %13 = load i8, ptr %12, align 1
  %conv12 = zext i8 %13 to i32
  store i32 %conv12, ptr %c, align 4
  %tobool13 = icmp ne i32 %conv12, 0
  br i1 %tobool13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load i32, ptr %c, align 4
  %cmp14 = icmp ule i32 %14, 256
  br i1 %cmp14, label %if.end18, label %if.then16

if.then16:                                        ; preds = %while.body
  %call17 = call i32 (ptr, ...) @panic(ptr noundef @.str.19, ptr noundef @.str.20)
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %while.body
  %15 = load ptr, ptr @newname, align 8
  %16 = load i32, ptr %c, align 4
  %idxprom = zext i32 %16 to i64
  %arrayidx = getelementptr inbounds [256 x ptr], ptr @repls, i64 0, i64 %idxprom
  %17 = load ptr, ptr %arrayidx, align 8
  %call19 = call i32 @bbCat(ptr noundef %15, ptr noundef %17)
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %18 = load ptr, ptr @newname, align 8
  %tobool20 = icmp ne ptr %18, null
  br i1 %tobool20, label %land.lhs.true21, label %cond.false25

land.lhs.true21:                                  ; preds = %while.end
  %19 = load ptr, ptr @newname, align 8
  %content = getelementptr inbounds %struct.Bytebuffer, ptr %19, i32 0, i32 3
  %20 = load ptr, ptr %content, align 8
  %tobool22 = icmp ne ptr %20, null
  br i1 %tobool22, label %cond.true23, label %cond.false25

cond.true23:                                      ; preds = %land.lhs.true21
  %21 = load ptr, ptr @newname, align 8
  %content24 = getelementptr inbounds %struct.Bytebuffer, ptr %21, i32 0, i32 3
  %22 = load ptr, ptr %content24, align 8
  br label %cond.end26

cond.false25:                                     ; preds = %land.lhs.true21, %while.end
  br label %cond.end26

cond.end26:                                       ; preds = %cond.false25, %cond.true23
  %cond27 = phi ptr [ %22, %cond.true23 ], [ @.str.6, %cond.false25 ]
  store ptr %cond27, ptr %name, align 8
  %23 = load ptr, ptr @newname, align 8
  %call28 = call i32 @bbGet(ptr noundef %23, i32 noundef 0)
  %cmp29 = icmp eq i32 %call28, 95
  br i1 %cmp29, label %if.then31, label %if.end33

if.then31:                                        ; preds = %cond.end26
  %24 = load ptr, ptr %name, align 8
  %incdec.ptr32 = getelementptr inbounds i8, ptr %24, i32 1
  store ptr %incdec.ptr32, ptr %name, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %cond.end26
  %25 = load ptr, ptr %name, align 8
  %call34 = call ptr @pooldup(ptr noundef %25)
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %cp) #7
  ret ptr %call34
}

; Function Attrs: nounwind uwtable
define internal ptr @f77codify(ptr noundef %s0) #0 {
entry:
  %s0.addr = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %name = alloca ptr, align 8
  store ptr %s0, ptr %s0.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #7
  %call = call ptr @bbNew()
  store ptr %call, ptr %buf, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #7
  %0 = load ptr, ptr %buf, align 8
  %1 = load ptr, ptr %s0.addr, align 8
  %call1 = call i32 @bbCat(ptr noundef %0, ptr noundef %1)
  %2 = load ptr, ptr %buf, align 8
  call void @f77quotestring(ptr noundef %2)
  %3 = load ptr, ptr %buf, align 8
  %call2 = call ptr @bbDup(ptr noundef %3)
  store ptr %call2, ptr %name, align 8
  %4 = load ptr, ptr %buf, align 8
  call void @bbFree(ptr noundef %4)
  %5 = load ptr, ptr %name, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #7
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define internal ptr @jcodify(ptr noundef %name) #0 {
entry:
  %name.addr = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  %0 = load ptr, ptr %name.addr, align 8
  %call = call ptr @ccodify(ptr noundef %0)
  ret ptr %call
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: nounwind uwtable
define ptr @cescapifychar(i32 noundef %c, i32 noundef %quote) #0 {
entry:
  %c.addr = alloca i32, align 4
  %quote.addr = alloca i32, align 4
  %s = alloca ptr, align 8
  store i32 %c, ptr %c.addr, align 4
  store i32 %quote, ptr %quote.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #7
  %call = call ptr @poolalloc(i64 noundef 5)
  store ptr %call, ptr %s, align 8
  %0 = load i32, ptr %c.addr, align 4
  %1 = load ptr, ptr %s, align 8
  %2 = load i32, ptr %quote.addr, align 4
  %call1 = call ptr @escapifychar(i32 noundef %0, ptr noundef %1, i32 noundef %2)
  %3 = load ptr, ptr %s, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #7
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define ptr @xescapify(ptr noundef %s0, i32 noundef %quote, i64 noundef %len) #0 {
entry:
  %s0.addr = alloca ptr, align 8
  %quote.addr = alloca i32, align 4
  %len.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %result = alloca ptr, align 8
  %escaped = alloca ptr, align 8
  store ptr %s0, ptr %s0.addr, align 8
  store i32 %quote, ptr %quote.addr, align 4
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %escaped) #7
  %call = call ptr @bbNew()
  store ptr %call, ptr %escaped, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %conv = sext i32 %0 to i64
  %1 = load i64, ptr %len.addr, align 8
  %cmp = icmp ult i64 %conv, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %s0.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1
  %conv2 = sext i8 %4 to i32
  %5 = load i32, ptr %quote.addr, align 4
  %6 = load ptr, ptr %escaped, align 8
  call void @xescapifychar(i32 noundef %conv2, i32 noundef %5, ptr noundef %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %8 = load ptr, ptr %escaped, align 8
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %for.end
  %9 = load ptr, ptr %escaped, align 8
  %content = getelementptr inbounds %struct.Bytebuffer, ptr %9, i32 0, i32 3
  %10 = load ptr, ptr %content, align 8
  %tobool3 = icmp ne ptr %10, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %11 = load ptr, ptr %escaped, align 8
  %content4 = getelementptr inbounds %struct.Bytebuffer, ptr %11, i32 0, i32 3
  %12 = load ptr, ptr %content4, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %for.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %12, %cond.true ], [ @.str.6, %cond.false ]
  %call5 = call ptr @pooldup(ptr noundef %cond)
  store ptr %call5, ptr %result, align 8
  %13 = load ptr, ptr %escaped, align 8
  call void @bbFree(ptr noundef %13)
  %14 = load ptr, ptr %result, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %escaped) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  ret ptr %14
}

declare ptr @bbNew() #3

; Function Attrs: nounwind uwtable
define internal void @xescapifychar(i32 noundef %c, i32 noundef %quote, ptr noundef %s) #0 {
entry:
  %c.addr = alloca i32, align 4
  %quote.addr = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %q = alloca ptr, align 8
  %hex1 = alloca i32, align 4
  %hex2 = alloca i32, align 4
  store i32 %c, ptr %c.addr, align 4
  store i32 %quote, ptr %quote.addr, align 4
  store ptr %s, ptr %s.addr, align 8
  %0 = load i32, ptr %c.addr, align 4
  %cmp = icmp uge i32 %0, 32
  br i1 %cmp, label %land.lhs.true, label %if.else13

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %c.addr, align 4
  %cmp1 = icmp ult i32 %1, 127
  br i1 %cmp1, label %if.then, label %if.else13

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #7
  store ptr @printescapable, ptr %p, align 8
  store ptr @printescape, ptr %q, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load ptr, ptr %p, align 8
  %3 = load i8, ptr %2, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %c.addr, align 4
  %5 = load ptr, ptr %p, align 8
  %6 = load i8, ptr %5, align 1
  %conv = sext i8 %6 to i32
  %cmp2 = icmp eq i32 %4, %conv
  br i1 %cmp2, label %if.then4, label %if.end

if.then4:                                         ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %7, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  %8 = load ptr, ptr %q, align 8
  %incdec.ptr5 = getelementptr inbounds ptr, ptr %8, i32 1
  store ptr %incdec.ptr5, ptr %q, align 8
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %if.then4, %for.cond
  %9 = load ptr, ptr %p, align 8
  %10 = load i8, ptr %9, align 1
  %tobool6 = icmp ne i8 %10, 0
  br i1 %tobool6, label %if.then7, label %if.else

if.then7:                                         ; preds = %for.end
  %11 = load ptr, ptr %s.addr, align 8
  %call = call i32 @bbAppend(ptr noundef %11, i8 noundef signext 38)
  %12 = load ptr, ptr %s.addr, align 8
  %13 = load ptr, ptr %q, align 8
  %14 = load ptr, ptr %13, align 8
  %call8 = call i32 @bbCat(ptr noundef %12, ptr noundef %14)
  %15 = load ptr, ptr %s.addr, align 8
  %call9 = call i32 @bbAppend(ptr noundef %15, i8 noundef signext 59)
  br label %if.end12

if.else:                                          ; preds = %for.end
  %16 = load ptr, ptr %s.addr, align 8
  %17 = load i32, ptr %c.addr, align 4
  %conv10 = trunc i32 %17 to i8
  %call11 = call i32 @bbAppend(ptr noundef %16, i8 noundef signext %conv10)
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #7
  br label %if.end21

if.else13:                                        ; preds = %land.lhs.true, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %hex1) #7
  %18 = load i32, ptr %c.addr, align 4
  %and = and i32 %18, 15
  store i32 %and, ptr %hex1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %hex2) #7
  %19 = load i32, ptr %c.addr, align 4
  %shr = lshr i32 %19, 4
  %and14 = and i32 %shr, 15
  store i32 %and14, ptr %hex2, align 4
  %20 = load ptr, ptr %s.addr, align 8
  %call15 = call i32 @bbCat(ptr noundef %20, ptr noundef @.str.53)
  %21 = load ptr, ptr %s.addr, align 8
  %22 = load i32, ptr %hex2, align 4
  %idxprom = zext i32 %22 to i64
  %arrayidx = getelementptr inbounds [17 x i8], ptr @hexdigits, i64 0, i64 %idxprom
  %23 = load i8, ptr %arrayidx, align 1
  %call16 = call i32 @bbAppend(ptr noundef %21, i8 noundef signext %23)
  %24 = load ptr, ptr %s.addr, align 8
  %25 = load i32, ptr %hex1, align 4
  %idxprom17 = zext i32 %25 to i64
  %arrayidx18 = getelementptr inbounds [17 x i8], ptr @hexdigits, i64 0, i64 %idxprom17
  %26 = load i8, ptr %arrayidx18, align 1
  %call19 = call i32 @bbAppend(ptr noundef %24, i8 noundef signext %26)
  %27 = load ptr, ptr %s.addr, align 8
  %call20 = call i32 @bbAppend(ptr noundef %27, i8 noundef signext 59)
  call void @llvm.lifetime.end.p0(i64 4, ptr %hex2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %hex1) #7
  br label %if.end21

if.end21:                                         ; preds = %if.else13, %if.end12
  ret void
}

declare void @bbFree(ptr noundef) #3

; Function Attrs: nounwind uwtable
define ptr @jescapify(ptr noundef %s0, i32 noundef %quote, i64 noundef %len) #0 {
entry:
  %retval = alloca ptr, align 8
  %s0.addr = alloca ptr, align 8
  %quote.addr = alloca i32, align 4
  %len.addr = alloca i64, align 8
  %stat = alloca i32, align 4
  %i = alloca i32, align 4
  %result = alloca ptr, align 8
  %s8 = alloca ptr, align 8
  %s16 = alloca ptr, align 8
  %escaped = alloca ptr, align 8
  %len16 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s0, ptr %s0.addr, align 8
  store i32 %quote, ptr %quote.addr, align 4
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %stat) #7
  store i32 0, ptr %stat, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #7
  store ptr null, ptr %result, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %s8) #7
  store ptr null, ptr %s8, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %s16) #7
  store ptr null, ptr %s16, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %escaped) #7
  %call = call ptr @bbNew()
  store ptr %call, ptr %escaped, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %len16) #7
  %0 = load ptr, ptr %s0.addr, align 8
  store ptr %0, ptr %s8, align 8
  %1 = load ptr, ptr %s8, align 8
  %call1 = call i32 @nc_utf8_to_utf16(ptr noundef %1, ptr noundef %s16, ptr noundef %len16)
  store i32 %call1, ptr %stat, align 4
  %2 = load i32, ptr %stat, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %s0.addr, align 8
  call void (ptr, ...) @derror(ptr noundef @.str.9, ptr noundef %3)
  %4 = load ptr, ptr %s16, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %5 = load ptr, ptr %s16, align 8
  call void @chkfree(ptr noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end3
  %6 = load i32, ptr %i, align 4
  %conv = sext i32 %6 to i64
  %7 = load i64, ptr %len16, align 8
  %cmp4 = icmp ult i64 %conv, %7
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %s16, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds i16, ptr %8, i64 %idxprom
  %10 = load i16, ptr %arrayidx, align 2
  %11 = load i32, ptr %quote.addr, align 4
  %12 = load ptr, ptr %escaped, align 8
  call void @jescapifychar(i16 noundef zeroext %10, i32 noundef %11, ptr noundef %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %14 = load ptr, ptr %s16, align 8
  call void @chkfree(ptr noundef %14)
  %15 = load ptr, ptr %escaped, align 8
  %tobool6 = icmp ne ptr %15, null
  br i1 %tobool6, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %for.end
  %16 = load ptr, ptr %escaped, align 8
  %content = getelementptr inbounds %struct.Bytebuffer, ptr %16, i32 0, i32 3
  %17 = load ptr, ptr %content, align 8
  %tobool7 = icmp ne ptr %17, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %18 = load ptr, ptr %escaped, align 8
  %content8 = getelementptr inbounds %struct.Bytebuffer, ptr %18, i32 0, i32 3
  %19 = load ptr, ptr %content8, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %for.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %19, %cond.true ], [ @.str.6, %cond.false ]
  %call9 = call ptr @pooldup(ptr noundef %cond)
  store ptr %call9, ptr %result, align 8
  %20 = load ptr, ptr %escaped, align 8
  call void @bbFree(ptr noundef %20)
  %21 = load ptr, ptr %result, align 8
  store ptr %21, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %len16) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %escaped) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %s16) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %s8) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %stat) #7
  %22 = load ptr, ptr %retval, align 8
  ret ptr %22
}

declare i32 @nc_utf8_to_utf16(ptr noundef, ptr noundef, ptr noundef) #3

declare void @derror(ptr noundef, ...) #3

declare void @chkfree(ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal void @jescapifychar(i16 noundef zeroext %c, i32 noundef %quote, ptr noundef %s) #0 {
entry:
  %c.addr = alloca i16, align 2
  %quote.addr = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %hex1 = alloca i32, align 4
  %hex2 = alloca i32, align 4
  %hex3 = alloca i32, align 4
  %hex4 = alloca i32, align 4
  %hex148 = alloca i32, align 4
  %hex251 = alloca i32, align 4
  %hex355 = alloca i32, align 4
  %hex459 = alloca i32, align 4
  store i16 %c, ptr %c.addr, align 2
  store i32 %quote, ptr %quote.addr, align 4
  store ptr %s, ptr %s.addr, align 8
  %0 = load i16, ptr %c.addr, align 2
  %conv = zext i16 %0 to i32
  %cmp = icmp sle i32 %conv, 127
  br i1 %cmp, label %if.then, label %if.else47

if.then:                                          ; preds = %entry
  %1 = load i16, ptr %c.addr, align 2
  %conv2 = zext i16 %1 to i32
  %cmp3 = icmp sge i32 %conv2, 32
  br i1 %cmp3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %2 = load i16, ptr %c.addr, align 2
  %conv5 = zext i16 %2 to i32
  %cmp6 = icmp slt i32 %conv5, 127
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %land.lhs.true
  %3 = load i16, ptr %c.addr, align 2
  %conv9 = zext i16 %3 to i32
  %4 = load i32, ptr %quote.addr, align 4
  %cmp10 = icmp eq i32 %conv9, %4
  br i1 %cmp10, label %if.then12, label %if.end

if.then12:                                        ; preds = %if.then8
  %5 = load ptr, ptr %s.addr, align 8
  %call = call i32 @bbAppend(ptr noundef %5, i8 noundef signext 92)
  br label %if.end

if.end:                                           ; preds = %if.then12, %if.then8
  %6 = load ptr, ptr %s.addr, align 8
  %7 = load i16, ptr %c.addr, align 2
  %conv13 = trunc i16 %7 to i8
  %call14 = call i32 @bbAppend(ptr noundef %6, i8 noundef signext %conv13)
  br label %if.end46

if.else:                                          ; preds = %land.lhs.true, %if.then
  %8 = load i16, ptr %c.addr, align 2
  %conv15 = zext i16 %8 to i32
  switch i32 %conv15, label %sw.default [
    i32 9, label %sw.bb
    i32 8, label %sw.bb17
    i32 10, label %sw.bb19
    i32 13, label %sw.bb21
    i32 12, label %sw.bb23
  ]

sw.bb:                                            ; preds = %if.else
  %9 = load ptr, ptr %s.addr, align 8
  %call16 = call i32 @bbCat(ptr noundef %9, ptr noundef @.str.4)
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.else
  %10 = load ptr, ptr %s.addr, align 8
  %call18 = call i32 @bbCat(ptr noundef %10, ptr noundef @.str)
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.else
  %11 = load ptr, ptr %s.addr, align 8
  %call20 = call i32 @bbCat(ptr noundef %11, ptr noundef @.str.2)
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.else
  %12 = load ptr, ptr %s.addr, align 8
  %call22 = call i32 @bbCat(ptr noundef %12, ptr noundef @.str.3)
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.else
  %13 = load ptr, ptr %s.addr, align 8
  %call24 = call i32 @bbCat(ptr noundef %13, ptr noundef @.str.1)
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr %hex1) #7
  %14 = load i16, ptr %c.addr, align 2
  %conv25 = zext i16 %14 to i32
  %and = and i32 %conv25, 15
  store i32 %and, ptr %hex1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %hex2) #7
  %15 = load i16, ptr %c.addr, align 2
  %conv26 = zext i16 %15 to i32
  %shr = ashr i32 %conv26, 4
  %and27 = and i32 %shr, 15
  store i32 %and27, ptr %hex2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %hex3) #7
  %16 = load i16, ptr %c.addr, align 2
  %conv28 = zext i16 %16 to i32
  %shr29 = ashr i32 %conv28, 8
  %and30 = and i32 %shr29, 15
  store i32 %and30, ptr %hex3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %hex4) #7
  %17 = load i16, ptr %c.addr, align 2
  %conv31 = zext i16 %17 to i32
  %shr32 = ashr i32 %conv31, 12
  %and33 = and i32 %shr32, 15
  store i32 %and33, ptr %hex4, align 4
  %18 = load ptr, ptr %s.addr, align 8
  %call34 = call i32 @bbAppend(ptr noundef %18, i8 noundef signext 92)
  %19 = load ptr, ptr %s.addr, align 8
  %call35 = call i32 @bbAppend(ptr noundef %19, i8 noundef signext 117)
  %20 = load ptr, ptr %s.addr, align 8
  %21 = load i32, ptr %hex4, align 4
  %idxprom = sext i32 %21 to i64
  %arrayidx = getelementptr inbounds [17 x i8], ptr @hexdigits, i64 0, i64 %idxprom
  %22 = load i8, ptr %arrayidx, align 1
  %call36 = call i32 @bbAppend(ptr noundef %20, i8 noundef signext %22)
  %23 = load ptr, ptr %s.addr, align 8
  %24 = load i32, ptr %hex3, align 4
  %idxprom37 = sext i32 %24 to i64
  %arrayidx38 = getelementptr inbounds [17 x i8], ptr @hexdigits, i64 0, i64 %idxprom37
  %25 = load i8, ptr %arrayidx38, align 1
  %call39 = call i32 @bbAppend(ptr noundef %23, i8 noundef signext %25)
  %26 = load ptr, ptr %s.addr, align 8
  %27 = load i32, ptr %hex2, align 4
  %idxprom40 = sext i32 %27 to i64
  %arrayidx41 = getelementptr inbounds [17 x i8], ptr @hexdigits, i64 0, i64 %idxprom40
  %28 = load i8, ptr %arrayidx41, align 1
  %call42 = call i32 @bbAppend(ptr noundef %26, i8 noundef signext %28)
  %29 = load ptr, ptr %s.addr, align 8
  %30 = load i32, ptr %hex1, align 4
  %idxprom43 = sext i32 %30 to i64
  %arrayidx44 = getelementptr inbounds [17 x i8], ptr @hexdigits, i64 0, i64 %idxprom43
  %31 = load i8, ptr %arrayidx44, align 1
  %call45 = call i32 @bbAppend(ptr noundef %29, i8 noundef signext %31)
  call void @llvm.lifetime.end.p0(i64 4, ptr %hex4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %hex3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %hex2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %hex1) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb23, %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb
  br label %if.end46

if.end46:                                         ; preds = %sw.epilog, %if.end
  br label %if.end77

if.else47:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %hex148) #7
  %32 = load i16, ptr %c.addr, align 2
  %conv49 = zext i16 %32 to i32
  %and50 = and i32 %conv49, 15
  store i32 %and50, ptr %hex148, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %hex251) #7
  %33 = load i16, ptr %c.addr, align 2
  %conv52 = zext i16 %33 to i32
  %shr53 = ashr i32 %conv52, 4
  %and54 = and i32 %shr53, 15
  store i32 %and54, ptr %hex251, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %hex355) #7
  %34 = load i16, ptr %c.addr, align 2
  %conv56 = zext i16 %34 to i32
  %shr57 = ashr i32 %conv56, 8
  %and58 = and i32 %shr57, 15
  store i32 %and58, ptr %hex355, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %hex459) #7
  %35 = load i16, ptr %c.addr, align 2
  %conv60 = zext i16 %35 to i32
  %shr61 = ashr i32 %conv60, 12
  %and62 = and i32 %shr61, 15
  store i32 %and62, ptr %hex459, align 4
  %36 = load ptr, ptr %s.addr, align 8
  %call63 = call i32 @bbAppend(ptr noundef %36, i8 noundef signext 92)
  %37 = load ptr, ptr %s.addr, align 8
  %call64 = call i32 @bbAppend(ptr noundef %37, i8 noundef signext 117)
  %38 = load ptr, ptr %s.addr, align 8
  %39 = load i32, ptr %hex459, align 4
  %idxprom65 = sext i32 %39 to i64
  %arrayidx66 = getelementptr inbounds [17 x i8], ptr @hexdigits, i64 0, i64 %idxprom65
  %40 = load i8, ptr %arrayidx66, align 1
  %call67 = call i32 @bbAppend(ptr noundef %38, i8 noundef signext %40)
  %41 = load ptr, ptr %s.addr, align 8
  %42 = load i32, ptr %hex355, align 4
  %idxprom68 = sext i32 %42 to i64
  %arrayidx69 = getelementptr inbounds [17 x i8], ptr @hexdigits, i64 0, i64 %idxprom68
  %43 = load i8, ptr %arrayidx69, align 1
  %call70 = call i32 @bbAppend(ptr noundef %41, i8 noundef signext %43)
  %44 = load ptr, ptr %s.addr, align 8
  %45 = load i32, ptr %hex251, align 4
  %idxprom71 = sext i32 %45 to i64
  %arrayidx72 = getelementptr inbounds [17 x i8], ptr @hexdigits, i64 0, i64 %idxprom71
  %46 = load i8, ptr %arrayidx72, align 1
  %call73 = call i32 @bbAppend(ptr noundef %44, i8 noundef signext %46)
  %47 = load ptr, ptr %s.addr, align 8
  %48 = load i32, ptr %hex148, align 4
  %idxprom74 = sext i32 %48 to i64
  %arrayidx75 = getelementptr inbounds [17 x i8], ptr @hexdigits, i64 0, i64 %idxprom74
  %49 = load i8, ptr %arrayidx75, align 1
  %call76 = call i32 @bbAppend(ptr noundef %47, i8 noundef signext %49)
  call void @llvm.lifetime.end.p0(i64 4, ptr %hex459) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %hex355) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %hex251) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %hex148) #7
  br label %if.end77

if.end77:                                         ; preds = %if.else47, %if.end46
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @jescapifyname(ptr noundef %s0) #0 {
entry:
  %s0.addr = alloca ptr, align 8
  store ptr %s0, ptr %s0.addr, align 8
  %0 = load ptr, ptr %s0.addr, align 8
  %1 = load ptr, ptr %s0.addr, align 8
  %call = call i64 @strlen(ptr noundef %1) #8
  %call1 = call ptr @jescapify(ptr noundef %0, i32 noundef 34, i64 noundef %call)
  ret ptr %call1
}

; Function Attrs: nounwind uwtable
define ptr @f77escapifychar(i32 noundef %c, ptr noundef %s0) #0 {
entry:
  %c.addr = alloca i32, align 4
  %s0.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  %tmp = alloca [32 x i8], align 16
  store i32 %c, ptr %c.addr, align 4
  store ptr %s0, ptr %s0.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #7
  %0 = load ptr, ptr %s0.addr, align 8
  store ptr %0, ptr %s, align 8
  %1 = load ptr, ptr %s0.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  store i8 0, ptr %arrayidx, align 1
  %2 = load i32, ptr %c.addr, align 4
  %cmp = icmp eq i32 %2, 39
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %s, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %s, align 8
  store i8 39, ptr %3, align 1
  %4 = load ptr, ptr %s, align 8
  %incdec.ptr1 = getelementptr inbounds i8, ptr %4, i32 1
  store ptr %incdec.ptr1, ptr %s, align 8
  store i8 39, ptr %4, align 1
  br label %if.end10

if.else:                                          ; preds = %entry
  %5 = load i32, ptr %c.addr, align 4
  %cmp2 = icmp uge i32 %5, 32
  br i1 %cmp2, label %land.lhs.true, label %if.else6

land.lhs.true:                                    ; preds = %if.else
  %6 = load i32, ptr %c.addr, align 4
  %cmp3 = icmp ult i32 %6, 127
  br i1 %cmp3, label %if.then4, label %if.else6

if.then4:                                         ; preds = %land.lhs.true
  %7 = load i32, ptr %c.addr, align 4
  %conv = trunc i32 %7 to i8
  %8 = load ptr, ptr %s, align 8
  %incdec.ptr5 = getelementptr inbounds i8, ptr %8, i32 1
  store ptr %incdec.ptr5, ptr %s, align 8
  store i8 %conv, ptr %8, align 1
  br label %if.end

if.else6:                                         ; preds = %land.lhs.true, %if.else
  call void @llvm.lifetime.start.p0(i64 32, ptr %tmp) #7
  %arraydecay = getelementptr inbounds [32 x i8], ptr %tmp, i64 0, i64 0
  %9 = load i32, ptr %c.addr, align 4
  call void (ptr, i64, ptr, ...) @nprintf(ptr noundef %arraydecay, i64 noundef 32, ptr noundef @.str.10, i32 noundef %9)
  %10 = load ptr, ptr %s, align 8
  %arraydecay7 = getelementptr inbounds [32 x i8], ptr %tmp, i64 0, i64 0
  %call = call ptr @strcat(ptr noundef %10, ptr noundef %arraydecay7) #7
  %arraydecay8 = getelementptr inbounds [32 x i8], ptr %tmp, i64 0, i64 0
  %call9 = call i64 @strlen(ptr noundef %arraydecay8) #8
  %11 = load ptr, ptr %s, align 8
  %add.ptr = getelementptr inbounds i8, ptr %11, i64 %call9
  store ptr %add.ptr, ptr %s, align 8
  call void @llvm.lifetime.end.p0(i64 32, ptr %tmp) #7
  br label %if.end

if.end:                                           ; preds = %if.else6, %if.then4
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  %12 = load ptr, ptr %s, align 8
  store i8 0, ptr %12, align 1
  %13 = load ptr, ptr %s0.addr, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #7
  ret ptr %13
}

declare void @nprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

; Function Attrs: nounwind uwtable
define void @f77quotestring(ptr noundef %databuf) #0 {
entry:
  %databuf.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %lastcharescaped = alloca i32, align 4
  %slen = alloca i32, align 4
  %s = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca [32 x i8], align 16
  %c = alloca i32, align 4
  %thischarescaped = alloca i32, align 4
  store ptr %databuf, ptr %databuf.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %lastcharescaped) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %slen) #7
  %0 = load ptr, ptr %databuf.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %databuf.addr, align 8
  %length = getelementptr inbounds %struct.Bytebuffer, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %length, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, ptr %slen, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #7
  %3 = load i32, ptr %slen, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %4 = load ptr, ptr %databuf.addr, align 8
  %call = call i32 @bbCat(ptr noundef %4, ptr noundef @.str.11)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %5 = load i32, ptr %slen, align 4
  %add = add i32 %5, 1
  %conv = zext i32 %add to i64
  %call1 = call ptr @chkcalloc(i64 noundef %conv)
  store ptr %call1, ptr %s, align 8
  %6 = load ptr, ptr %s, align 8
  %7 = load ptr, ptr %databuf.addr, align 8
  %tobool2 = icmp ne ptr %7, null
  br i1 %tobool2, label %land.lhs.true, label %cond.false6

land.lhs.true:                                    ; preds = %if.end
  %8 = load ptr, ptr %databuf.addr, align 8
  %content = getelementptr inbounds %struct.Bytebuffer, ptr %8, i32 0, i32 3
  %9 = load ptr, ptr %content, align 8
  %tobool3 = icmp ne ptr %9, null
  br i1 %tobool3, label %cond.true4, label %cond.false6

cond.true4:                                       ; preds = %land.lhs.true
  %10 = load ptr, ptr %databuf.addr, align 8
  %content5 = getelementptr inbounds %struct.Bytebuffer, ptr %10, i32 0, i32 3
  %11 = load ptr, ptr %content5, align 8
  br label %cond.end7

cond.false6:                                      ; preds = %land.lhs.true, %if.end
  br label %cond.end7

cond.end7:                                        ; preds = %cond.false6, %cond.true4
  %cond8 = phi ptr [ %11, %cond.true4 ], [ @.str.6, %cond.false6 ]
  %12 = load i32, ptr %slen, align 4
  %conv9 = zext i32 %12 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %cond8, i64 %conv9, i1 false)
  %13 = load ptr, ptr %s, align 8
  %14 = load i32, ptr %slen, align 4
  %idxprom = zext i32 %14 to i64
  %arrayidx = getelementptr inbounds i8, ptr %13, i64 %idxprom
  store i8 0, ptr %arrayidx, align 1
  %15 = load ptr, ptr %databuf.addr, align 8
  %tobool10 = icmp ne ptr %15, null
  br i1 %tobool10, label %cond.true11, label %cond.false13

cond.true11:                                      ; preds = %cond.end7
  %16 = load ptr, ptr %databuf.addr, align 8
  %length12 = getelementptr inbounds %struct.Bytebuffer, ptr %16, i32 0, i32 2
  store i32 0, ptr %length12, align 8
  br label %cond.end14

cond.false13:                                     ; preds = %cond.end7
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false13, %cond.true11
  %cond15 = phi i32 [ 0, %cond.true11 ], [ 0, %cond.false13 ]
  store i32 0, ptr %lastcharescaped, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end14
  %17 = load i32, ptr %i, align 4
  %18 = load i32, ptr %slen, align 4
  %cmp16 = icmp ult i32 %17, %18
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 32, ptr %tmp) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #7
  %19 = load ptr, ptr %s, align 8
  %20 = load i32, ptr %i, align 4
  %idxprom18 = sext i32 %20 to i64
  %arrayidx19 = getelementptr inbounds i8, ptr %19, i64 %idxprom18
  %21 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %21 to i32
  store i32 %conv20, ptr %c, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %thischarescaped) #7
  %22 = load i32, ptr %c, align 4
  %cmp21 = icmp ult i32 %22, 32
  br i1 %cmp21, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.body
  %23 = load i32, ptr %c, align 4
  %cmp23 = icmp uge i32 %23, 127
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.body
  %24 = phi i1 [ true, %for.body ], [ %cmp23, %lor.rhs ]
  %lor.ext = zext i1 %24 to i32
  store i32 %lor.ext, ptr %thischarescaped, align 4
  %25 = load i32, ptr %i, align 4
  %cmp25 = icmp sgt i32 %25, 0
  br i1 %cmp25, label %if.then27, label %if.else40

if.then27:                                        ; preds = %lor.end
  %26 = load i32, ptr %lastcharescaped, align 4
  %tobool28 = icmp ne i32 %26, 0
  br i1 %tobool28, label %if.else, label %land.lhs.true29

land.lhs.true29:                                  ; preds = %if.then27
  %27 = load i32, ptr %thischarescaped, align 4
  %tobool30 = icmp ne i32 %27, 0
  br i1 %tobool30, label %if.then31, label %if.else

if.then31:                                        ; preds = %land.lhs.true29
  %28 = load ptr, ptr %databuf.addr, align 8
  %call32 = call i32 @bbAppend(ptr noundef %28, i8 noundef signext 39)
  br label %if.end39

if.else:                                          ; preds = %land.lhs.true29, %if.then27
  %29 = load i32, ptr %lastcharescaped, align 4
  %tobool33 = icmp ne i32 %29, 0
  br i1 %tobool33, label %land.lhs.true34, label %if.end38

land.lhs.true34:                                  ; preds = %if.else
  %30 = load i32, ptr %thischarescaped, align 4
  %tobool35 = icmp ne i32 %30, 0
  br i1 %tobool35, label %if.end38, label %if.then36

if.then36:                                        ; preds = %land.lhs.true34
  %31 = load ptr, ptr %databuf.addr, align 8
  %call37 = call i32 @bbCat(ptr noundef %31, ptr noundef @.str.12)
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %land.lhs.true34, %if.else
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then31
  br label %if.end45

if.else40:                                        ; preds = %lor.end
  %32 = load i32, ptr %thischarescaped, align 4
  %tobool41 = icmp ne i32 %32, 0
  br i1 %tobool41, label %if.end44, label %if.then42

if.then42:                                        ; preds = %if.else40
  %33 = load ptr, ptr %databuf.addr, align 8
  %call43 = call i32 @bbAppend(ptr noundef %33, i8 noundef signext 39)
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.else40
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.end39
  %34 = load i32, ptr %c, align 4
  %arraydecay = getelementptr inbounds [32 x i8], ptr %tmp, i64 0, i64 0
  %call46 = call ptr @f77escapifychar(i32 noundef %34, ptr noundef %arraydecay)
  %35 = load i32, ptr %i, align 4
  %cmp47 = icmp eq i32 %35, 0
  br i1 %cmp47, label %land.lhs.true49, label %if.else54

land.lhs.true49:                                  ; preds = %if.end45
  %36 = load i32, ptr %thischarescaped, align 4
  %tobool50 = icmp ne i32 %36, 0
  br i1 %tobool50, label %if.then51, label %if.else54

if.then51:                                        ; preds = %land.lhs.true49
  %37 = load ptr, ptr %databuf.addr, align 8
  %arraydecay52 = getelementptr inbounds [32 x i8], ptr %tmp, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay52, i64 2
  %call53 = call i32 @bbCat(ptr noundef %37, ptr noundef %add.ptr)
  br label %if.end57

if.else54:                                        ; preds = %land.lhs.true49, %if.end45
  %38 = load ptr, ptr %databuf.addr, align 8
  %arraydecay55 = getelementptr inbounds [32 x i8], ptr %tmp, i64 0, i64 0
  %call56 = call i32 @bbCat(ptr noundef %38, ptr noundef %arraydecay55)
  br label %if.end57

if.end57:                                         ; preds = %if.else54, %if.then51
  %39 = load i32, ptr %thischarescaped, align 4
  store i32 %39, ptr %lastcharescaped, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %thischarescaped) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr %tmp) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end57
  %40 = load i32, ptr %i, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %41 = load i32, ptr %lastcharescaped, align 4
  %tobool58 = icmp ne i32 %41, 0
  br i1 %tobool58, label %if.end61, label %if.then59

if.then59:                                        ; preds = %for.end
  %42 = load ptr, ptr %databuf.addr, align 8
  %call60 = call i32 @bbAppend(ptr noundef %42, i8 noundef signext 39)
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %for.end
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %slen) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %lastcharescaped) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare ptr @chkcalloc(i64 noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define ptr @fqnescape(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %q = alloca ptr, align 8
  %c = alloca i32, align 4
  %l = alloca i32, align 4
  %newname = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #7
  %0 = load ptr, ptr %s.addr, align 8
  %call = call i64 @strlen(ptr noundef %0) #8
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %l, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %newname) #7
  %1 = load i32, ptr %l, align 4
  %mul = mul nsw i32 %1, 7
  %add = add nsw i32 %mul, 1
  %conv1 = sext i32 %add to i64
  %call2 = call ptr @poolalloc(i64 noundef %conv1)
  store ptr %call2, ptr %newname, align 8
  %2 = load ptr, ptr %newname, align 8
  store i8 0, ptr %2, align 1
  %3 = load ptr, ptr %newname, align 8
  store ptr %3, ptr %q, align 8
  %4 = load ptr, ptr %s.addr, align 8
  store ptr %4, ptr %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end14, %entry
  %5 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  %6 = load i8, ptr %5, align 1
  %conv3 = sext i8 %6 to i32
  store i32 %conv3, ptr %c, align 4
  %tobool = icmp ne i32 %conv3, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, ptr %c, align 4
  %cmp = icmp eq i32 %7, 47
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %8 = load ptr, ptr %q, align 8
  %call5 = call ptr @strcat(ptr noundef %8, ptr noundef @.str.13) #7
  %9 = load ptr, ptr %q, align 8
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 7
  store ptr %add.ptr, ptr %q, align 8
  br label %if.end14

if.else:                                          ; preds = %for.body
  %10 = load i32, ptr %c, align 4
  %cmp6 = icmp eq i32 %10, 46
  br i1 %cmp6, label %if.then8, label %if.else11

if.then8:                                         ; preds = %if.else
  %11 = load ptr, ptr %q, align 8
  %call9 = call ptr @strcat(ptr noundef %11, ptr noundef @.str.14) #7
  %12 = load ptr, ptr %q, align 8
  %add.ptr10 = getelementptr inbounds i8, ptr %12, i64 5
  store ptr %add.ptr10, ptr %q, align 8
  br label %if.end

if.else11:                                        ; preds = %if.else
  %13 = load i32, ptr %c, align 4
  %conv12 = trunc i32 %13 to i8
  %14 = load ptr, ptr %q, align 8
  %incdec.ptr13 = getelementptr inbounds i8, ptr %14, i32 1
  store ptr %incdec.ptr13, ptr %q, align 8
  store i8 %conv12, ptr %14, align 1
  %15 = load ptr, ptr %q, align 8
  store i8 0, ptr %15, align 1
  br label %if.end

if.end:                                           ; preds = %if.else11, %if.then8
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %16 = load ptr, ptr %newname, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %newname) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #7
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define i32 @unescapehex(ptr noundef %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %b = alloca i32, align 4
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %c1) #7
  %0 = load ptr, ptr %s.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %1 to i32
  store i32 %conv, ptr %c1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %c2) #7
  %2 = load ptr, ptr %s.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %2, i64 1
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = sext i8 %3 to i32
  store i32 %conv2, ptr %c2, align 4
  %4 = load i32, ptr %c1, align 4
  %call = call ptr @strchr(ptr noundef @.str.15, i32 noundef %4) #8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, ptr %c2, align 4
  %call4 = call ptr @strchr(ptr noundef @.str.15, i32 noundef %5) #8
  %cmp5 = icmp eq ptr %call4, null
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, ptr %b, align 4
  %6 = load i32, ptr %c1, align 4
  %cmp7 = icmp slt i32 %6, 97
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  %7 = load i32, ptr %c1, align 4
  %sub = sub nsw i32 %7, 65
  %add = add nsw i32 %sub, 97
  store i32 %add, ptr %c1, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end
  %8 = load i32, ptr %c1, align 4
  %cmp11 = icmp sle i32 %8, 57
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end10
  %9 = load i32, ptr %c1, align 4
  %sub14 = sub nsw i32 %9, 48
  %shl = shl i32 %sub14, 4
  store i32 %shl, ptr %b, align 4
  br label %if.end18

if.else:                                          ; preds = %if.end10
  %10 = load i32, ptr %c1, align 4
  %sub15 = sub nsw i32 %10, 97
  %add16 = add nsw i32 %sub15, 10
  %shl17 = shl i32 %add16, 4
  store i32 %shl17, ptr %b, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then13
  %11 = load i32, ptr %c2, align 4
  %cmp19 = icmp slt i32 %11, 97
  br i1 %cmp19, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end18
  %12 = load i32, ptr %c2, align 4
  %sub22 = sub nsw i32 %12, 65
  %add23 = add nsw i32 %sub22, 97
  %13 = load i32, ptr %c2, align 4
  %or = or i32 %13, %add23
  store i32 %or, ptr %c2, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end18
  %14 = load i32, ptr %c2, align 4
  %cmp25 = icmp sle i32 %14, 57
  br i1 %cmp25, label %if.then27, label %if.else29

if.then27:                                        ; preds = %if.end24
  %15 = load i32, ptr %c2, align 4
  %sub28 = sub nsw i32 %15, 48
  store i32 %sub28, ptr %b, align 4
  br label %if.end33

if.else29:                                        ; preds = %if.end24
  %16 = load i32, ptr %c2, align 4
  %sub30 = sub nsw i32 %16, 97
  %add31 = add nsw i32 %sub30, 10
  %17 = load i32, ptr %b, align 4
  %or32 = or i32 %17, %add31
  store i32 %or32, ptr %b, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.else29, %if.then27
  %18 = load i32, ptr %b, align 4
  store i32 %18, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %c2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %c1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #7
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strchr(ptr noundef, i32 noundef) #4

; Function Attrs: nounwind uwtable
define i32 @unescapeoct(ptr noundef %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %b = alloca i32, align 4
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %c3 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %c1) #7
  %0 = load ptr, ptr %s.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %1 to i32
  store i32 %conv, ptr %c1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %c2) #7
  %2 = load ptr, ptr %s.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %2, i64 1
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = sext i8 %3 to i32
  store i32 %conv2, ptr %c2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %c3) #7
  %4 = load ptr, ptr %s.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %4, i64 2
  %5 = load i8, ptr %arrayidx3, align 1
  %conv4 = sext i8 %5 to i32
  store i32 %conv4, ptr %c3, align 4
  %6 = load i32, ptr %c1, align 4
  %call = call ptr @strchr(ptr noundef @.str.16, i32 noundef %6) #8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32, ptr %c2, align 4
  %call6 = call ptr @strchr(ptr noundef @.str.16, i32 noundef %7) #8
  %cmp7 = icmp eq ptr %call6, null
  br i1 %cmp7, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %8 = load i32, ptr %c3, align 4
  %call10 = call ptr @strchr(ptr noundef @.str.16, i32 noundef %8) #8
  %cmp11 = icmp eq ptr %call10, null
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false9, %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false9
  %9 = load i32, ptr %c1, align 4
  %sub = sub nsw i32 %9, 48
  %shl = shl i32 %sub, 6
  store i32 %shl, ptr %b, align 4
  %10 = load i32, ptr %c2, align 4
  %sub13 = sub nsw i32 %10, 48
  %shl14 = shl i32 %sub13, 3
  %11 = load i32, ptr %b, align 4
  %or = or i32 %11, %shl14
  store i32 %or, ptr %b, align 4
  %12 = load i32, ptr %c3, align 4
  %sub15 = sub nsw i32 %12, 48
  %13 = load i32, ptr %b, align 4
  %or16 = or i32 %13, %sub15
  store i32 %or16, ptr %b, align 4
  %14 = load i32, ptr %b, align 4
  store i32 %14, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %c3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %c2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %c1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #7
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @unescape(ptr noundef %yytext, i32 noundef %yyleng, i32 noundef %isident, ptr noundef %sp) #0 {
entry:
  %yytext.addr = alloca ptr, align 8
  %yyleng.addr = alloca i32, align 4
  %isident.addr = alloca i32, align 4
  %sp.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  %t = alloca ptr, align 8
  %tend = alloca ptr, align 8
  %p = alloca ptr, align 8
  %b = alloca i32, align 4
  store ptr %yytext, ptr %yytext.addr, align 8
  store i32 %yyleng, ptr %yyleng.addr, align 4
  store i32 %isident, ptr %isident.addr, align 4
  store ptr %sp, ptr %sp.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #7
  store ptr null, ptr %s, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %tend) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #7
  %0 = load i32, ptr %yyleng.addr, align 4
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %call = call ptr @chkmalloc(i64 noundef %conv)
  store ptr %call, ptr %s, align 8
  %1 = load ptr, ptr %s, align 8
  %2 = load ptr, ptr %yytext.addr, align 8
  %3 = load i32, ptr %yyleng.addr, align 4
  %conv1 = sext i32 %3 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %conv1, i1 false)
  %4 = load ptr, ptr %s, align 8
  %5 = load i32, ptr %yyleng.addr, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %idxprom
  store i8 0, ptr %arrayidx, align 1
  %6 = load ptr, ptr %yytext.addr, align 8
  store ptr %6, ptr %t, align 8
  %7 = load ptr, ptr %t, align 8
  %8 = load i32, ptr %yyleng.addr, align 4
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 %idx.ext
  store ptr %add.ptr, ptr %tend, align 8
  %9 = load ptr, ptr %s, align 8
  store ptr %9, ptr %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end69, %entry
  %10 = load ptr, ptr %t, align 8
  %11 = load i8, ptr %10, align 1
  %conv2 = sext i8 %11 to i32
  %tobool = icmp ne i32 %conv2, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %12 = load ptr, ptr %t, align 8
  %13 = load ptr, ptr %tend, align 8
  %cmp = icmp ult ptr %12, %13
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %14 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %14, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %15 = load ptr, ptr %t, align 8
  %16 = load i8, ptr %15, align 1
  %conv4 = sext i8 %16 to i32
  %cmp5 = icmp eq i32 %conv4, 92
  br i1 %cmp5, label %if.then, label %if.else66

if.then:                                          ; preds = %while.body
  %17 = load ptr, ptr %t, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %17, i32 1
  store ptr %incdec.ptr, ptr %t, align 8
  %18 = load ptr, ptr %t, align 8
  %19 = load i8, ptr %18, align 1
  %conv7 = sext i8 %19 to i32
  switch i32 %conv7, label %sw.default [
    i32 97, label %sw.bb
    i32 98, label %sw.bb10
    i32 102, label %sw.bb13
    i32 110, label %sw.bb16
    i32 114, label %sw.bb19
    i32 116, label %sw.bb22
    i32 118, label %sw.bb25
    i32 92, label %sw.bb28
    i32 63, label %sw.bb31
    i32 39, label %sw.bb34
    i32 34, label %sw.bb37
    i32 120, label %sw.bb40
    i32 48, label %sw.bb49
    i32 49, label %sw.bb49
    i32 50, label %sw.bb49
    i32 51, label %sw.bb49
    i32 52, label %sw.bb49
    i32 53, label %sw.bb49
    i32 54, label %sw.bb49
    i32 55, label %sw.bb49
  ]

sw.bb:                                            ; preds = %if.then
  %20 = load ptr, ptr %p, align 8
  %incdec.ptr8 = getelementptr inbounds i8, ptr %20, i32 1
  store ptr %incdec.ptr8, ptr %p, align 8
  store i8 7, ptr %20, align 1
  %21 = load ptr, ptr %t, align 8
  %incdec.ptr9 = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr9, ptr %t, align 8
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.then
  %22 = load ptr, ptr %p, align 8
  %incdec.ptr11 = getelementptr inbounds i8, ptr %22, i32 1
  store ptr %incdec.ptr11, ptr %p, align 8
  store i8 8, ptr %22, align 1
  %23 = load ptr, ptr %t, align 8
  %incdec.ptr12 = getelementptr inbounds i8, ptr %23, i32 1
  store ptr %incdec.ptr12, ptr %t, align 8
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.then
  %24 = load ptr, ptr %p, align 8
  %incdec.ptr14 = getelementptr inbounds i8, ptr %24, i32 1
  store ptr %incdec.ptr14, ptr %p, align 8
  store i8 12, ptr %24, align 1
  %25 = load ptr, ptr %t, align 8
  %incdec.ptr15 = getelementptr inbounds i8, ptr %25, i32 1
  store ptr %incdec.ptr15, ptr %t, align 8
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.then
  %26 = load ptr, ptr %p, align 8
  %incdec.ptr17 = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %incdec.ptr17, ptr %p, align 8
  store i8 10, ptr %26, align 1
  %27 = load ptr, ptr %t, align 8
  %incdec.ptr18 = getelementptr inbounds i8, ptr %27, i32 1
  store ptr %incdec.ptr18, ptr %t, align 8
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.then
  %28 = load ptr, ptr %p, align 8
  %incdec.ptr20 = getelementptr inbounds i8, ptr %28, i32 1
  store ptr %incdec.ptr20, ptr %p, align 8
  store i8 13, ptr %28, align 1
  %29 = load ptr, ptr %t, align 8
  %incdec.ptr21 = getelementptr inbounds i8, ptr %29, i32 1
  store ptr %incdec.ptr21, ptr %t, align 8
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.then
  %30 = load ptr, ptr %p, align 8
  %incdec.ptr23 = getelementptr inbounds i8, ptr %30, i32 1
  store ptr %incdec.ptr23, ptr %p, align 8
  store i8 9, ptr %30, align 1
  %31 = load ptr, ptr %t, align 8
  %incdec.ptr24 = getelementptr inbounds i8, ptr %31, i32 1
  store ptr %incdec.ptr24, ptr %t, align 8
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.then
  %32 = load ptr, ptr %p, align 8
  %incdec.ptr26 = getelementptr inbounds i8, ptr %32, i32 1
  store ptr %incdec.ptr26, ptr %p, align 8
  store i8 11, ptr %32, align 1
  %33 = load ptr, ptr %t, align 8
  %incdec.ptr27 = getelementptr inbounds i8, ptr %33, i32 1
  store ptr %incdec.ptr27, ptr %t, align 8
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.then
  %34 = load ptr, ptr %p, align 8
  %incdec.ptr29 = getelementptr inbounds i8, ptr %34, i32 1
  store ptr %incdec.ptr29, ptr %p, align 8
  store i8 92, ptr %34, align 1
  %35 = load ptr, ptr %t, align 8
  %incdec.ptr30 = getelementptr inbounds i8, ptr %35, i32 1
  store ptr %incdec.ptr30, ptr %t, align 8
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.then
  %36 = load ptr, ptr %p, align 8
  %incdec.ptr32 = getelementptr inbounds i8, ptr %36, i32 1
  store ptr %incdec.ptr32, ptr %p, align 8
  store i8 127, ptr %36, align 1
  %37 = load ptr, ptr %t, align 8
  %incdec.ptr33 = getelementptr inbounds i8, ptr %37, i32 1
  store ptr %incdec.ptr33, ptr %t, align 8
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.then
  %38 = load ptr, ptr %p, align 8
  %incdec.ptr35 = getelementptr inbounds i8, ptr %38, i32 1
  store ptr %incdec.ptr35, ptr %p, align 8
  store i8 39, ptr %38, align 1
  %39 = load ptr, ptr %t, align 8
  %incdec.ptr36 = getelementptr inbounds i8, ptr %39, i32 1
  store ptr %incdec.ptr36, ptr %t, align 8
  br label %sw.epilog

sw.bb37:                                          ; preds = %if.then
  %40 = load ptr, ptr %p, align 8
  %incdec.ptr38 = getelementptr inbounds i8, ptr %40, i32 1
  store ptr %incdec.ptr38, ptr %p, align 8
  store i8 34, ptr %40, align 1
  %41 = load ptr, ptr %t, align 8
  %incdec.ptr39 = getelementptr inbounds i8, ptr %41, i32 1
  store ptr %incdec.ptr39, ptr %t, align 8
  br label %sw.epilog

sw.bb40:                                          ; preds = %if.then
  %42 = load i32, ptr %isident.addr, align 4
  %tobool41 = icmp ne i32 %42, 0
  br i1 %tobool41, label %if.else, label %if.then42

if.then42:                                        ; preds = %sw.bb40
  %43 = load ptr, ptr %t, align 8
  %call43 = call i32 @unescapehex(ptr noundef %43)
  store i32 %call43, ptr %b, align 4
  %44 = load ptr, ptr %t, align 8
  %add.ptr44 = getelementptr inbounds i8, ptr %44, i64 2
  store ptr %add.ptr44, ptr %t, align 8
  br label %if.end

if.else:                                          ; preds = %sw.bb40
  %45 = load ptr, ptr %t, align 8
  %incdec.ptr45 = getelementptr inbounds i8, ptr %45, i32 1
  store ptr %incdec.ptr45, ptr %t, align 8
  %46 = load i8, ptr %45, align 1
  %conv46 = sext i8 %46 to i32
  store i32 %conv46, ptr %b, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then42
  %47 = load i32, ptr %b, align 4
  %conv47 = trunc i32 %47 to i8
  %48 = load ptr, ptr %p, align 8
  %incdec.ptr48 = getelementptr inbounds i8, ptr %48, i32 1
  store ptr %incdec.ptr48, ptr %p, align 8
  store i8 %conv47, ptr %48, align 1
  br label %sw.epilog

sw.bb49:                                          ; preds = %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then
  %49 = load i32, ptr %isident.addr, align 4
  %tobool50 = icmp ne i32 %49, 0
  br i1 %tobool50, label %if.else58, label %if.then51

if.then51:                                        ; preds = %sw.bb49
  %50 = load ptr, ptr %t, align 8
  %call52 = call i32 @unescapeoct(ptr noundef %50)
  store i32 %call52, ptr %b, align 4
  %51 = load i32, ptr %b, align 4
  %cmp53 = icmp slt i32 %51, 0
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.then51
  %52 = load ptr, ptr %yytext.addr, align 8
  call void (ptr, ...) @derror(ptr noundef @.str.17, ptr noundef %52)
  store i32 0, ptr %b, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.then51
  %53 = load ptr, ptr %t, align 8
  %add.ptr57 = getelementptr inbounds i8, ptr %53, i64 3
  store ptr %add.ptr57, ptr %t, align 8
  br label %if.end61

if.else58:                                        ; preds = %sw.bb49
  %54 = load ptr, ptr %t, align 8
  %incdec.ptr59 = getelementptr inbounds i8, ptr %54, i32 1
  store ptr %incdec.ptr59, ptr %t, align 8
  %55 = load i8, ptr %54, align 1
  %conv60 = sext i8 %55 to i32
  store i32 %conv60, ptr %b, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.else58, %if.end56
  %56 = load i32, ptr %b, align 4
  %conv62 = trunc i32 %56 to i8
  %57 = load ptr, ptr %p, align 8
  %incdec.ptr63 = getelementptr inbounds i8, ptr %57, i32 1
  store ptr %incdec.ptr63, ptr %p, align 8
  store i8 %conv62, ptr %57, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  %58 = load ptr, ptr %t, align 8
  %59 = load i8, ptr %58, align 1
  %60 = load ptr, ptr %p, align 8
  %incdec.ptr64 = getelementptr inbounds i8, ptr %60, i32 1
  store ptr %incdec.ptr64, ptr %p, align 8
  store i8 %59, ptr %60, align 1
  %61 = load ptr, ptr %t, align 8
  %incdec.ptr65 = getelementptr inbounds i8, ptr %61, i32 1
  store ptr %incdec.ptr65, ptr %t, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end61, %if.end, %sw.bb37, %sw.bb34, %sw.bb31, %sw.bb28, %sw.bb25, %sw.bb22, %sw.bb19, %sw.bb16, %sw.bb13, %sw.bb10, %sw.bb
  br label %if.end69

if.else66:                                        ; preds = %while.body
  %62 = load ptr, ptr %t, align 8
  %63 = load i8, ptr %62, align 1
  %64 = load ptr, ptr %p, align 8
  %incdec.ptr67 = getelementptr inbounds i8, ptr %64, i32 1
  store ptr %incdec.ptr67, ptr %p, align 8
  store i8 %63, ptr %64, align 1
  %65 = load ptr, ptr %t, align 8
  %incdec.ptr68 = getelementptr inbounds i8, ptr %65, i32 1
  store ptr %incdec.ptr68, ptr %t, align 8
  br label %if.end69

if.end69:                                         ; preds = %if.else66, %sw.epilog
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %land.end
  %66 = load ptr, ptr %p, align 8
  store i8 0, ptr %66, align 1
  %67 = load ptr, ptr %sp.addr, align 8
  %tobool70 = icmp ne ptr %67, null
  br i1 %tobool70, label %if.then71, label %if.end72

if.then71:                                        ; preds = %while.end
  %68 = load ptr, ptr %s, align 8
  %69 = load ptr, ptr %sp.addr, align 8
  store ptr %68, ptr %69, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %while.end
  %70 = load ptr, ptr %p, align 8
  %71 = load ptr, ptr %s, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %70 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %71 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv73 = trunc i64 %sub.ptr.sub to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %tend) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #7
  ret i32 %conv73
}

declare ptr @chkmalloc(i64 noundef) #3

; Function Attrs: nounwind uwtable
define ptr @esc_strchr(ptr noundef %s, i32 noundef %stopc, i32 noundef %octhex) #0 {
entry:
  %retval = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %stopc.addr = alloca i32, align 4
  %octhex.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %c = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store i32 %stopc, ptr %stopc.addr, align 4
  store i32 %octhex, ptr %octhex.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #7
  %0 = load ptr, ptr %s.addr, align 8
  store ptr %0, ptr %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end52, %entry
  %1 = load ptr, ptr %p, align 8
  %2 = load i8, ptr %1, align 1
  %conv = sext i8 %2 to i32
  store i32 %conv, ptr %c, align 4
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %c, align 4
  %cmp = icmp eq i32 %3, 92
  br i1 %cmp, label %if.then, label %if.else45

if.then:                                          ; preds = %for.body
  %4 = load ptr, ptr %p, align 8
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 1
  %5 = load i8, ptr %arrayidx, align 1
  %conv2 = sext i8 %5 to i32
  %cmp3 = icmp eq i32 %conv2, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %6 = load i32, ptr %c, align 4
  %7 = load i32, ptr %stopc.addr, align 4
  %cmp5 = icmp eq i32 %6, %7
  br i1 %cmp5, label %if.then7, label %if.end

if.then7:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %p, align 8
  store ptr %8, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %if.then
  %9 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  %10 = load ptr, ptr %p, align 8
  %11 = load i8, ptr %10, align 1
  %conv8 = sext i8 %11 to i32
  store i32 %conv8, ptr %c, align 4
  %12 = load i32, ptr %octhex.addr, align 4
  %tobool9 = icmp ne i32 %12, 0
  br i1 %tobool9, label %land.lhs.true10, label %if.else

land.lhs.true10:                                  ; preds = %if.end
  %13 = load i32, ptr %c, align 4
  %cmp11 = icmp eq i32 %13, 120
  br i1 %cmp11, label %land.lhs.true15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true10
  %14 = load i32, ptr %c, align 4
  %cmp13 = icmp eq i32 %14, 88
  br i1 %cmp13, label %land.lhs.true15, label %if.else

land.lhs.true15:                                  ; preds = %lor.lhs.false, %land.lhs.true10
  %15 = load ptr, ptr %p, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %15, i64 1
  %16 = load i8, ptr %arrayidx16, align 1
  %conv17 = sext i8 %16 to i32
  %call = call i32 @ishex(i32 noundef %conv17)
  %tobool18 = icmp ne i32 %call, 0
  br i1 %tobool18, label %land.lhs.true19, label %if.else

land.lhs.true19:                                  ; preds = %land.lhs.true15
  %17 = load ptr, ptr %p, align 8
  %arrayidx20 = getelementptr inbounds i8, ptr %17, i64 2
  %18 = load i8, ptr %arrayidx20, align 1
  %conv21 = sext i8 %18 to i32
  %call22 = call i32 @ishex(i32 noundef %conv21)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then24, label %if.else

if.then24:                                        ; preds = %land.lhs.true19
  %19 = load ptr, ptr %p, align 8
  %add.ptr = getelementptr inbounds i8, ptr %19, i64 3
  store ptr %add.ptr, ptr %p, align 8
  br label %if.end44

if.else:                                          ; preds = %land.lhs.true19, %land.lhs.true15, %lor.lhs.false, %if.end
  %20 = load i32, ptr %octhex.addr, align 4
  %tobool25 = icmp ne i32 %20, 0
  br i1 %tobool25, label %land.lhs.true26, label %if.else41

land.lhs.true26:                                  ; preds = %if.else
  %21 = load i32, ptr %c, align 4
  %call27 = call i32 @isoct(i32 noundef %21)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %land.lhs.true29, label %if.else41

land.lhs.true29:                                  ; preds = %land.lhs.true26
  %22 = load ptr, ptr %p, align 8
  %arrayidx30 = getelementptr inbounds i8, ptr %22, i64 1
  %23 = load i8, ptr %arrayidx30, align 1
  %conv31 = sext i8 %23 to i32
  %call32 = call i32 @isoct(i32 noundef %conv31)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %land.lhs.true34, label %if.else41

land.lhs.true34:                                  ; preds = %land.lhs.true29
  %24 = load ptr, ptr %p, align 8
  %arrayidx35 = getelementptr inbounds i8, ptr %24, i64 2
  %25 = load i8, ptr %arrayidx35, align 1
  %conv36 = sext i8 %25 to i32
  %call37 = call i32 @isoct(i32 noundef %conv36)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then39, label %if.else41

if.then39:                                        ; preds = %land.lhs.true34
  %26 = load ptr, ptr %p, align 8
  %add.ptr40 = getelementptr inbounds i8, ptr %26, i64 3
  store ptr %add.ptr40, ptr %p, align 8
  br label %if.end43

if.else41:                                        ; preds = %land.lhs.true34, %land.lhs.true29, %land.lhs.true26, %if.else
  %27 = load ptr, ptr %p, align 8
  %incdec.ptr42 = getelementptr inbounds i8, ptr %27, i32 1
  store ptr %incdec.ptr42, ptr %p, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.else41, %if.then39
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then24
  br label %if.end52

if.else45:                                        ; preds = %for.body
  %28 = load i32, ptr %stopc.addr, align 4
  %29 = load i32, ptr %c, align 4
  %cmp46 = icmp eq i32 %28, %29
  br i1 %cmp46, label %if.then48, label %if.else49

if.then48:                                        ; preds = %if.else45
  br label %for.end

if.else49:                                        ; preds = %if.else45
  %30 = load ptr, ptr %p, align 8
  %incdec.ptr50 = getelementptr inbounds i8, ptr %30, i32 1
  store ptr %incdec.ptr50, ptr %p, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.else49
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.end44
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %if.then48, %for.cond
  %31 = load ptr, ptr %p, align 8
  store ptr %31, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then7
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #7
  %32 = load ptr, ptr %retval, align 8
  ret ptr %32
}

; Function Attrs: nounwind uwtable
define internal i32 @ishex(i32 noundef %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, ptr %c.addr, align 4
  %0 = load i32, ptr %c.addr, align 4
  %cmp = icmp sge i32 %0, 97
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %c.addr, align 4
  %cmp1 = icmp sle i32 %1, 122
  br i1 %cmp1, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %2 = load i32, ptr %c.addr, align 4
  %cmp2 = icmp sge i32 %2, 65
  br i1 %cmp2, label %land.lhs.true3, label %lor.rhs

land.lhs.true3:                                   ; preds = %lor.lhs.false
  %3 = load i32, ptr %c.addr, align 4
  %cmp4 = icmp sle i32 %3, 90
  br i1 %cmp4, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true3, %lor.lhs.false
  %4 = load i32, ptr %c.addr, align 4
  %cmp5 = icmp sge i32 %4, 48
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %5 = load i32, ptr %c.addr, align 4
  %cmp6 = icmp sle i32 %5, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %6 = phi i1 [ false, %lor.rhs ], [ %cmp6, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true3, %land.lhs.true
  %7 = phi i1 [ true, %land.lhs.true3 ], [ true, %land.lhs.true ], [ %6, %land.end ]
  %lor.ext = zext i1 %7 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @isoct(i32 noundef %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, ptr %c.addr, align 4
  %0 = load i32, ptr %c.addr, align 4
  %cmp = icmp sge i32 %0, 48
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i32, ptr %c.addr, align 4
  %cmp1 = icmp sle i32 %1, 55
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal void @initcodify() #0 {
entry:
  %nctable = alloca i32, align 4
  %i = alloca i32, align 4
  %rp = alloca ptr, align 8
  %j = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %nctable) #7
  store i32 32, ptr %nctable, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %rp) #7
  %call = call ptr @bbNew()
  store ptr %call, ptr @newname, align 8
  store i32 8, ptr @idtlen, align 4
  store i32 4, ptr @hexlen, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 128
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call ptr @chkcalloc(i64 noundef 2)
  store ptr %call1, ptr %rp, align 8
  %1 = load i32, ptr %i, align 4
  %conv = trunc i32 %1 to i8
  %2 = load ptr, ptr %rp, align 8
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 0
  store i8 %conv, ptr %arrayidx, align 1
  %3 = load ptr, ptr %rp, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %3, i64 1
  store i8 0, ptr %arrayidx2, align 1
  %4 = load ptr, ptr %rp, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [256 x ptr], ptr @repls, i64 0, i64 %idxprom
  store ptr %4, ptr %arrayidx3, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc15, %for.end
  %7 = load i32, ptr %i, align 4
  %8 = load i32, ptr %nctable, align 4
  %cmp5 = icmp slt i32 %7, %8
  br i1 %cmp5, label %for.body7, label %for.end17

for.body7:                                        ; preds = %for.cond4
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #7
  %9 = load i32, ptr %i, align 4
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds [32 x %struct.anon], ptr @ctable, i64 0, i64 %idxprom8
  %c = getelementptr inbounds %struct.anon, ptr %arrayidx9, i32 0, i32 0
  %10 = load i8, ptr %c, align 16
  %conv10 = sext i8 %10 to i64
  store i64 %conv10, ptr %j, align 8
  %11 = load i64, ptr %j, align 8
  %arrayidx11 = getelementptr inbounds [256 x ptr], ptr @repls, i64 0, i64 %11
  %12 = load ptr, ptr %arrayidx11, align 8
  call void @chkfree(ptr noundef %12)
  %13 = load i32, ptr %i, align 4
  %idxprom12 = sext i32 %13 to i64
  %arrayidx13 = getelementptr inbounds [32 x %struct.anon], ptr @ctable, i64 0, i64 %idxprom12
  %s = getelementptr inbounds %struct.anon, ptr %arrayidx13, i32 0, i32 1
  %14 = load ptr, ptr %s, align 8
  %15 = load i64, ptr %j, align 8
  %arrayidx14 = getelementptr inbounds [256 x ptr], ptr @repls, i64 0, i64 %15
  store ptr %14, ptr %arrayidx14, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #7
  br label %for.inc15

for.inc15:                                        ; preds = %for.body7
  %16 = load i32, ptr %i, align 4
  %inc16 = add nsw i32 %16, 1
  store i32 %inc16, ptr %i, align 4
  br label %for.cond4, !llvm.loop !15

for.end17:                                        ; preds = %for.cond4
  store i32 128, ptr %i, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc31, %for.end17
  %17 = load i32, ptr %i, align 4
  %cmp19 = icmp slt i32 %17, 256
  br i1 %cmp19, label %for.body21, label %for.end33

for.body21:                                       ; preds = %for.cond18
  %18 = load i32, ptr @hexlen, align 4
  %add = add nsw i32 %18, 1
  %conv22 = sext i32 %add to i64
  %call23 = call ptr @chkcalloc(i64 noundef %conv22)
  store ptr %call23, ptr %rp, align 8
  %19 = load ptr, ptr %rp, align 8
  %20 = load i32, ptr @hexlen, align 4
  %add24 = add nsw i32 %20, 1
  %conv25 = sext i32 %add24 to i64
  %21 = load i32, ptr %i, align 4
  %call26 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %19, i64 noundef %conv25, ptr noundef @.str.21, i32 noundef %21) #7
  %22 = load ptr, ptr %rp, align 8
  %23 = load i32, ptr @hexlen, align 4
  %idxprom27 = sext i32 %23 to i64
  %arrayidx28 = getelementptr inbounds i8, ptr %22, i64 %idxprom27
  store i8 0, ptr %arrayidx28, align 1
  %24 = load ptr, ptr %rp, align 8
  %25 = load i32, ptr %i, align 4
  %idxprom29 = sext i32 %25 to i64
  %arrayidx30 = getelementptr inbounds [256 x ptr], ptr @repls, i64 0, i64 %idxprom29
  store ptr %24, ptr %arrayidx30, align 8
  br label %for.inc31

for.inc31:                                        ; preds = %for.body21
  %26 = load i32, ptr %i, align 4
  %inc32 = add nsw i32 %26, 1
  store i32 %inc32, ptr %i, align 4
  br label %for.cond18, !llvm.loop !16

for.end33:                                        ; preds = %for.cond18
  store i32 0, ptr %i, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc44, %for.end33
  %27 = load i32, ptr %i, align 4
  %cmp35 = icmp slt i32 %27, 256
  br i1 %cmp35, label %for.body37, label %for.end46

for.body37:                                       ; preds = %for.cond34
  %28 = load i32, ptr %i, align 4
  %idxprom38 = sext i32 %28 to i64
  %arrayidx39 = getelementptr inbounds [256 x ptr], ptr @repls, i64 0, i64 %idxprom38
  %29 = load ptr, ptr %arrayidx39, align 8
  %call40 = call i64 @strlen(ptr noundef %29) #8
  %conv41 = trunc i64 %call40 to i32
  %30 = load i32, ptr %i, align 4
  %idxprom42 = sext i32 %30 to i64
  %arrayidx43 = getelementptr inbounds [256 x i32], ptr @lens, i64 0, i64 %idxprom42
  store i32 %conv41, ptr %arrayidx43, align 4
  br label %for.inc44

for.inc44:                                        ; preds = %for.body37
  %31 = load i32, ptr %i, align 4
  %inc45 = add nsw i32 %31, 1
  store i32 %inc45, ptr %i, align 4
  br label %for.cond34, !llvm.loop !17

for.end46:                                        ; preds = %for.cond34
  store i32 1, ptr @init, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %rp) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %nctable) #7
  ret void
}

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #2

declare i32 @panic(ptr noundef, ...) #3

declare i32 @bbGet(ptr noundef, i32 noundef) #3

declare ptr @bbDup(ptr noundef) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}

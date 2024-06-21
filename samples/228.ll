; ModuleID = 'samples/228.bc'
source_filename = "tools/re2c/scanner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.yystype = type { ptr, [8 x i8] }
%struct.Scanner = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.SubStr = type { ptr, i32 }
%struct.extop = type { i8, i32, i32 }
%struct.Token = type { %struct.SubStr, i32 }

@oline = external global i32, align 4
@.str = private unnamed_addr constant [22 x i8] c"#define YYMAXFILL %u\0A\00", align 1
@maxFill = external global i32, align 4
@yylval = external global %union.yystype, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"unterminated string constant (missing \22)\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"unterminated string constant (missing ')\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"unterminated range (missing ])\00", align 1
@stderr = external global ptr, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"unexpected character: '%c'\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"missing '}'\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"line %d, column %d: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Scanner_init(ptr noundef %s, ptr noundef %i) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %i.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  store ptr %i, ptr %i.addr, align 8
  %0 = load ptr, ptr %i.addr, align 8
  %1 = load ptr, ptr %s.addr, align 8
  %in = getelementptr inbounds %struct.Scanner, ptr %1, i32 0, i32 0
  store ptr %0, ptr %in, align 8
  %2 = load ptr, ptr %s.addr, align 8
  %eof = getelementptr inbounds %struct.Scanner, ptr %2, i32 0, i32 8
  store ptr null, ptr %eof, align 8
  %3 = load ptr, ptr %s.addr, align 8
  %top = getelementptr inbounds %struct.Scanner, ptr %3, i32 0, i32 7
  store ptr null, ptr %top, align 8
  %4 = load ptr, ptr %s.addr, align 8
  %lim = getelementptr inbounds %struct.Scanner, ptr %4, i32 0, i32 6
  store ptr null, ptr %lim, align 8
  %5 = load ptr, ptr %s.addr, align 8
  %pos = getelementptr inbounds %struct.Scanner, ptr %5, i32 0, i32 5
  store ptr null, ptr %pos, align 8
  %6 = load ptr, ptr %s.addr, align 8
  %cur = getelementptr inbounds %struct.Scanner, ptr %6, i32 0, i32 4
  store ptr null, ptr %cur, align 8
  %7 = load ptr, ptr %s.addr, align 8
  %ptr = getelementptr inbounds %struct.Scanner, ptr %7, i32 0, i32 3
  store ptr null, ptr %ptr, align 8
  %8 = load ptr, ptr %s.addr, align 8
  %tok = getelementptr inbounds %struct.Scanner, ptr %8, i32 0, i32 2
  store ptr null, ptr %tok, align 8
  %9 = load ptr, ptr %s.addr, align 8
  %bot = getelementptr inbounds %struct.Scanner, ptr %9, i32 0, i32 1
  store ptr null, ptr %bot, align 8
  %10 = load ptr, ptr %s.addr, align 8
  %tline = getelementptr inbounds %struct.Scanner, ptr %10, i32 0, i32 10
  store i32 0, ptr %tline, align 4
  %11 = load ptr, ptr %s.addr, align 8
  %tchar = getelementptr inbounds %struct.Scanner, ptr %11, i32 0, i32 9
  store i32 0, ptr %tchar, align 8
  %12 = load ptr, ptr %s.addr, align 8
  %cline = getelementptr inbounds %struct.Scanner, ptr %12, i32 0, i32 11
  store i32 1, ptr %cline, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Scanner_echo(ptr noundef %s, ptr noundef %out) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %cursor = alloca ptr, align 8
  %ignore_eoc = alloca i32, align 4
  %yych = alloca i8, align 1
  %yyaccept = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store ptr %out, ptr %out.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %cur = getelementptr inbounds %struct.Scanner, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %cur, align 8
  store ptr %1, ptr %cursor, align 8
  store i32 0, ptr %ignore_eoc, align 4
  %2 = load ptr, ptr %s.addr, align 8
  %eof = getelementptr inbounds %struct.Scanner, ptr %2, i32 0, i32 8
  %3 = load ptr, ptr %eof, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %cursor, align 8
  %5 = load ptr, ptr %s.addr, align 8
  %eof1 = getelementptr inbounds %struct.Scanner, ptr %5, i32 0, i32 8
  %6 = load ptr, ptr %eof1, align 8
  %cmp = icmp eq ptr %4, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %7 = load ptr, ptr %cursor, align 8
  %8 = load ptr, ptr %s.addr, align 8
  %tok = getelementptr inbounds %struct.Scanner, ptr %8, i32 0, i32 2
  store ptr %7, ptr %tok, align 8
  br label %echo

echo:                                             ; preds = %yy28, %if.end72, %yy6, %yy3, %if.end
  br label %yy0

yy0:                                              ; preds = %echo
  %9 = load ptr, ptr %s.addr, align 8
  %lim = getelementptr inbounds %struct.Scanner, ptr %9, i32 0, i32 6
  %10 = load ptr, ptr %lim, align 8
  %11 = load ptr, ptr %cursor, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %10 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp2 = icmp slt i64 %sub.ptr.sub, 11
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %yy0
  %12 = load ptr, ptr %s.addr, align 8
  %13 = load ptr, ptr %cursor, align 8
  %call = call ptr @fill(ptr noundef %12, ptr noundef %13)
  store ptr %call, ptr %cursor, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %yy0
  %14 = load ptr, ptr %cursor, align 8
  %15 = load i8, ptr %14, align 1
  store i8 %15, ptr %yych, align 1
  %16 = load i8, ptr %yych, align 1
  %conv = zext i8 %16 to i32
  %cmp5 = icmp sle i32 %conv, 41
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end4
  %17 = load i8, ptr %yych, align 1
  %conv8 = zext i8 %17 to i32
  %cmp9 = icmp sle i32 %conv8, 0
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then7
  br label %yy7

if.end12:                                         ; preds = %if.then7
  %18 = load i8, ptr %yych, align 1
  %conv13 = zext i8 %18 to i32
  %cmp14 = icmp eq i32 %conv13, 10
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end12
  br label %yy5

if.end17:                                         ; preds = %if.end12
  br label %yy9

if.else:                                          ; preds = %if.end4
  %19 = load i8, ptr %yych, align 1
  %conv18 = zext i8 %19 to i32
  %cmp19 = icmp sle i32 %conv18, 42
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.else
  br label %yy4

if.end22:                                         ; preds = %if.else
  %20 = load i8, ptr %yych, align 1
  %conv23 = zext i8 %20 to i32
  %cmp24 = icmp ne i32 %conv23, 47
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end22
  br label %yy9

if.end27:                                         ; preds = %if.end22
  br label %yy2

yy2:                                              ; preds = %if.end27
  store i32 0, ptr %yyaccept, align 4
  %21 = load ptr, ptr %cursor, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr, ptr %cursor, align 8
  %22 = load ptr, ptr %s.addr, align 8
  %ptr = getelementptr inbounds %struct.Scanner, ptr %22, i32 0, i32 3
  store ptr %incdec.ptr, ptr %ptr, align 8
  %23 = load i8, ptr %incdec.ptr, align 1
  store i8 %23, ptr %yych, align 1
  %24 = load i8, ptr %yych, align 1
  %conv28 = zext i8 %24 to i32
  %cmp29 = icmp eq i32 %conv28, 42
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %yy2
  br label %yy12

if.end32:                                         ; preds = %yy2
  br label %yy3

yy3:                                              ; preds = %sw.bb, %yy9, %if.end38, %if.end32
  br label %echo

yy4:                                              ; preds = %if.then21
  %25 = load ptr, ptr %cursor, align 8
  %incdec.ptr33 = getelementptr inbounds i8, ptr %25, i32 1
  store ptr %incdec.ptr33, ptr %cursor, align 8
  %26 = load i8, ptr %incdec.ptr33, align 1
  store i8 %26, ptr %yych, align 1
  %27 = load i8, ptr %yych, align 1
  %conv34 = zext i8 %27 to i32
  %cmp35 = icmp eq i32 %conv34, 47
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %yy4
  br label %yy10

if.end38:                                         ; preds = %yy4
  br label %yy3

yy5:                                              ; preds = %if.then16
  %28 = load ptr, ptr %cursor, align 8
  %incdec.ptr39 = getelementptr inbounds i8, ptr %28, i32 1
  store ptr %incdec.ptr39, ptr %cursor, align 8
  %29 = load i8, ptr %incdec.ptr39, align 1
  store i8 %29, ptr %yych, align 1
  br label %yy6

yy6:                                              ; preds = %yy5
  %30 = load ptr, ptr %s.addr, align 8
  %tok40 = getelementptr inbounds %struct.Scanner, ptr %30, i32 0, i32 2
  %31 = load ptr, ptr %tok40, align 8
  %32 = load ptr, ptr %cursor, align 8
  %33 = load ptr, ptr %s.addr, align 8
  %tok41 = getelementptr inbounds %struct.Scanner, ptr %33, i32 0, i32 2
  %34 = load ptr, ptr %tok41, align 8
  %sub.ptr.lhs.cast42 = ptrtoint ptr %32 to i64
  %sub.ptr.rhs.cast43 = ptrtoint ptr %34 to i64
  %sub.ptr.sub44 = sub i64 %sub.ptr.lhs.cast42, %sub.ptr.rhs.cast43
  %35 = load ptr, ptr %out.addr, align 8
  %call45 = call i64 @fwrite(ptr noundef %31, i64 noundef 1, i64 noundef %sub.ptr.sub44, ptr noundef %35)
  %36 = load ptr, ptr %cursor, align 8
  %37 = load ptr, ptr %s.addr, align 8
  %pos = getelementptr inbounds %struct.Scanner, ptr %37, i32 0, i32 5
  store ptr %36, ptr %pos, align 8
  %38 = load ptr, ptr %s.addr, align 8
  %tok46 = getelementptr inbounds %struct.Scanner, ptr %38, i32 0, i32 2
  store ptr %36, ptr %tok46, align 8
  %39 = load ptr, ptr %s.addr, align 8
  %cline = getelementptr inbounds %struct.Scanner, ptr %39, i32 0, i32 11
  %40 = load i32, ptr %cline, align 8
  %inc = add i32 %40, 1
  store i32 %inc, ptr %cline, align 8
  %41 = load i32, ptr @oline, align 4
  %inc47 = add i32 %41, 1
  store i32 %inc47, ptr @oline, align 4
  br label %echo

yy7:                                              ; preds = %if.then11
  %42 = load ptr, ptr %cursor, align 8
  %incdec.ptr48 = getelementptr inbounds i8, ptr %42, i32 1
  store ptr %incdec.ptr48, ptr %cursor, align 8
  %43 = load i8, ptr %incdec.ptr48, align 1
  store i8 %43, ptr %yych, align 1
  br label %yy8

yy8:                                              ; preds = %yy7
  %44 = load ptr, ptr %s.addr, align 8
  %tok49 = getelementptr inbounds %struct.Scanner, ptr %44, i32 0, i32 2
  %45 = load ptr, ptr %tok49, align 8
  %46 = load ptr, ptr %cursor, align 8
  %47 = load ptr, ptr %s.addr, align 8
  %tok50 = getelementptr inbounds %struct.Scanner, ptr %47, i32 0, i32 2
  %48 = load ptr, ptr %tok50, align 8
  %sub.ptr.lhs.cast51 = ptrtoint ptr %46 to i64
  %sub.ptr.rhs.cast52 = ptrtoint ptr %48 to i64
  %sub.ptr.sub53 = sub i64 %sub.ptr.lhs.cast51, %sub.ptr.rhs.cast52
  %sub = sub nsw i64 %sub.ptr.sub53, 1
  %49 = load ptr, ptr %out.addr, align 8
  %call54 = call i64 @fwrite(ptr noundef %45, i64 noundef 1, i64 noundef %sub, ptr noundef %49)
  %50 = load ptr, ptr %cursor, align 8
  %51 = load ptr, ptr %s.addr, align 8
  %eof55 = getelementptr inbounds %struct.Scanner, ptr %51, i32 0, i32 8
  %52 = load ptr, ptr %eof55, align 8
  %cmp56 = icmp eq ptr %50, %52
  br i1 %cmp56, label %if.then58, label %if.end60

if.then58:                                        ; preds = %yy8
  %53 = load ptr, ptr %cursor, align 8
  %54 = load ptr, ptr %s.addr, align 8
  %cur59 = getelementptr inbounds %struct.Scanner, ptr %54, i32 0, i32 4
  store ptr %53, ptr %cur59, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end60:                                         ; preds = %yy8
  br label %yy9

yy9:                                              ; preds = %if.end60, %if.then26, %if.end17
  %55 = load ptr, ptr %cursor, align 8
  %incdec.ptr61 = getelementptr inbounds i8, ptr %55, i32 1
  store ptr %incdec.ptr61, ptr %cursor, align 8
  %56 = load i8, ptr %incdec.ptr61, align 1
  store i8 %56, ptr %yych, align 1
  br label %yy3

yy10:                                             ; preds = %if.then37
  %57 = load ptr, ptr %cursor, align 8
  %incdec.ptr62 = getelementptr inbounds i8, ptr %57, i32 1
  store ptr %incdec.ptr62, ptr %cursor, align 8
  %58 = load i8, ptr %incdec.ptr62, align 1
  store i8 %58, ptr %yych, align 1
  br label %yy11

yy11:                                             ; preds = %yy10
  %59 = load i32, ptr %ignore_eoc, align 4
  %tobool63 = icmp ne i32 %59, 0
  br i1 %tobool63, label %if.then64, label %if.else65

if.then64:                                        ; preds = %yy11
  store i32 0, ptr %ignore_eoc, align 4
  br label %if.end72

if.else65:                                        ; preds = %yy11
  %60 = load ptr, ptr %s.addr, align 8
  %tok66 = getelementptr inbounds %struct.Scanner, ptr %60, i32 0, i32 2
  %61 = load ptr, ptr %tok66, align 8
  %62 = load ptr, ptr %cursor, align 8
  %63 = load ptr, ptr %s.addr, align 8
  %tok67 = getelementptr inbounds %struct.Scanner, ptr %63, i32 0, i32 2
  %64 = load ptr, ptr %tok67, align 8
  %sub.ptr.lhs.cast68 = ptrtoint ptr %62 to i64
  %sub.ptr.rhs.cast69 = ptrtoint ptr %64 to i64
  %sub.ptr.sub70 = sub i64 %sub.ptr.lhs.cast68, %sub.ptr.rhs.cast69
  %65 = load ptr, ptr %out.addr, align 8
  %call71 = call i64 @fwrite(ptr noundef %61, i64 noundef 1, i64 noundef %sub.ptr.sub70, ptr noundef %65)
  br label %if.end72

if.end72:                                         ; preds = %if.else65, %if.then64
  %66 = load ptr, ptr %cursor, align 8
  %67 = load ptr, ptr %s.addr, align 8
  %pos73 = getelementptr inbounds %struct.Scanner, ptr %67, i32 0, i32 5
  store ptr %66, ptr %pos73, align 8
  %68 = load ptr, ptr %s.addr, align 8
  %tok74 = getelementptr inbounds %struct.Scanner, ptr %68, i32 0, i32 2
  store ptr %66, ptr %tok74, align 8
  br label %echo

yy12:                                             ; preds = %if.then31
  %69 = load ptr, ptr %cursor, align 8
  %incdec.ptr75 = getelementptr inbounds i8, ptr %69, i32 1
  store ptr %incdec.ptr75, ptr %cursor, align 8
  %70 = load i8, ptr %incdec.ptr75, align 1
  store i8 %70, ptr %yych, align 1
  %71 = load i8, ptr %yych, align 1
  %conv76 = zext i8 %71 to i32
  %cmp77 = icmp eq i32 %conv76, 33
  br i1 %cmp77, label %if.then79, label %if.end80

if.then79:                                        ; preds = %yy12
  br label %yy14

if.end80:                                         ; preds = %yy12
  br label %yy13

yy13:                                             ; preds = %if.then160, %if.then154, %if.then148, %if.then142, %if.then136, %if.then130, %if.then115, %if.then109, %if.then103, %if.end98, %if.end92, %if.end80
  %72 = load ptr, ptr %s.addr, align 8
  %ptr81 = getelementptr inbounds %struct.Scanner, ptr %72, i32 0, i32 3
  %73 = load ptr, ptr %ptr81, align 8
  store ptr %73, ptr %cursor, align 8
  %74 = load i32, ptr %yyaccept, align 4
  switch i32 %74, label %sw.epilog [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %yy13
  br label %yy3

sw.epilog:                                        ; preds = %yy13
  br label %yy14

yy14:                                             ; preds = %sw.epilog, %if.then79
  %75 = load ptr, ptr %cursor, align 8
  %incdec.ptr82 = getelementptr inbounds i8, ptr %75, i32 1
  store ptr %incdec.ptr82, ptr %cursor, align 8
  %76 = load i8, ptr %incdec.ptr82, align 1
  store i8 %76, ptr %yych, align 1
  %77 = load i8, ptr %yych, align 1
  %conv83 = zext i8 %77 to i32
  %cmp84 = icmp eq i32 %conv83, 109
  br i1 %cmp84, label %if.then86, label %if.end87

if.then86:                                        ; preds = %yy14
  br label %yy15

if.end87:                                         ; preds = %yy14
  %78 = load i8, ptr %yych, align 1
  %conv88 = zext i8 %78 to i32
  %cmp89 = icmp eq i32 %conv88, 114
  br i1 %cmp89, label %if.then91, label %if.end92

if.then91:                                        ; preds = %if.end87
  br label %yy16

if.end92:                                         ; preds = %if.end87
  br label %yy13

yy15:                                             ; preds = %if.then86
  %79 = load ptr, ptr %cursor, align 8
  %incdec.ptr93 = getelementptr inbounds i8, ptr %79, i32 1
  store ptr %incdec.ptr93, ptr %cursor, align 8
  %80 = load i8, ptr %incdec.ptr93, align 1
  store i8 %80, ptr %yych, align 1
  %81 = load i8, ptr %yych, align 1
  %conv94 = zext i8 %81 to i32
  %cmp95 = icmp eq i32 %conv94, 97
  br i1 %cmp95, label %if.then97, label %if.end98

if.then97:                                        ; preds = %yy15
  br label %yy21

if.end98:                                         ; preds = %yy15
  br label %yy13

yy16:                                             ; preds = %if.then91
  %82 = load ptr, ptr %cursor, align 8
  %incdec.ptr99 = getelementptr inbounds i8, ptr %82, i32 1
  store ptr %incdec.ptr99, ptr %cursor, align 8
  %83 = load i8, ptr %incdec.ptr99, align 1
  store i8 %83, ptr %yych, align 1
  %84 = load i8, ptr %yych, align 1
  %conv100 = zext i8 %84 to i32
  %cmp101 = icmp ne i32 %conv100, 101
  br i1 %cmp101, label %if.then103, label %if.end104

if.then103:                                       ; preds = %yy16
  br label %yy13

if.end104:                                        ; preds = %yy16
  br label %yy17

yy17:                                             ; preds = %if.end104
  %85 = load ptr, ptr %cursor, align 8
  %incdec.ptr105 = getelementptr inbounds i8, ptr %85, i32 1
  store ptr %incdec.ptr105, ptr %cursor, align 8
  %86 = load i8, ptr %incdec.ptr105, align 1
  store i8 %86, ptr %yych, align 1
  %87 = load i8, ptr %yych, align 1
  %conv106 = zext i8 %87 to i32
  %cmp107 = icmp ne i32 %conv106, 50
  br i1 %cmp107, label %if.then109, label %if.end110

if.then109:                                       ; preds = %yy17
  br label %yy13

if.end110:                                        ; preds = %yy17
  br label %yy18

yy18:                                             ; preds = %if.end110
  %88 = load ptr, ptr %cursor, align 8
  %incdec.ptr111 = getelementptr inbounds i8, ptr %88, i32 1
  store ptr %incdec.ptr111, ptr %cursor, align 8
  %89 = load i8, ptr %incdec.ptr111, align 1
  store i8 %89, ptr %yych, align 1
  %90 = load i8, ptr %yych, align 1
  %conv112 = zext i8 %90 to i32
  %cmp113 = icmp ne i32 %conv112, 99
  br i1 %cmp113, label %if.then115, label %if.end116

if.then115:                                       ; preds = %yy18
  br label %yy13

if.end116:                                        ; preds = %yy18
  br label %yy19

yy19:                                             ; preds = %if.end116
  %91 = load ptr, ptr %cursor, align 8
  %incdec.ptr117 = getelementptr inbounds i8, ptr %91, i32 1
  store ptr %incdec.ptr117, ptr %cursor, align 8
  %92 = load i8, ptr %incdec.ptr117, align 1
  store i8 %92, ptr %yych, align 1
  br label %yy20

yy20:                                             ; preds = %yy19
  %93 = load ptr, ptr %s.addr, align 8
  %tok118 = getelementptr inbounds %struct.Scanner, ptr %93, i32 0, i32 2
  %94 = load ptr, ptr %tok118, align 8
  %95 = load ptr, ptr %cursor, align 8
  %arrayidx = getelementptr inbounds i8, ptr %95, i64 -7
  %96 = load ptr, ptr %s.addr, align 8
  %tok119 = getelementptr inbounds %struct.Scanner, ptr %96, i32 0, i32 2
  %97 = load ptr, ptr %tok119, align 8
  %sub.ptr.lhs.cast120 = ptrtoint ptr %arrayidx to i64
  %sub.ptr.rhs.cast121 = ptrtoint ptr %97 to i64
  %sub.ptr.sub122 = sub i64 %sub.ptr.lhs.cast120, %sub.ptr.rhs.cast121
  %98 = load ptr, ptr %out.addr, align 8
  %call123 = call i64 @fwrite(ptr noundef %94, i64 noundef 1, i64 noundef %sub.ptr.sub122, ptr noundef %98)
  %99 = load ptr, ptr %cursor, align 8
  %100 = load ptr, ptr %s.addr, align 8
  %tok124 = getelementptr inbounds %struct.Scanner, ptr %100, i32 0, i32 2
  store ptr %99, ptr %tok124, align 8
  %101 = load ptr, ptr %cursor, align 8
  %102 = load ptr, ptr %s.addr, align 8
  %cur125 = getelementptr inbounds %struct.Scanner, ptr %102, i32 0, i32 4
  store ptr %101, ptr %cur125, align 8
  store i32 1, ptr %retval, align 4
  br label %return

yy21:                                             ; preds = %if.then97
  %103 = load ptr, ptr %cursor, align 8
  %incdec.ptr126 = getelementptr inbounds i8, ptr %103, i32 1
  store ptr %incdec.ptr126, ptr %cursor, align 8
  %104 = load i8, ptr %incdec.ptr126, align 1
  store i8 %104, ptr %yych, align 1
  %105 = load i8, ptr %yych, align 1
  %conv127 = zext i8 %105 to i32
  %cmp128 = icmp ne i32 %conv127, 120
  br i1 %cmp128, label %if.then130, label %if.end131

if.then130:                                       ; preds = %yy21
  br label %yy13

if.end131:                                        ; preds = %yy21
  br label %yy22

yy22:                                             ; preds = %if.end131
  %106 = load ptr, ptr %cursor, align 8
  %incdec.ptr132 = getelementptr inbounds i8, ptr %106, i32 1
  store ptr %incdec.ptr132, ptr %cursor, align 8
  %107 = load i8, ptr %incdec.ptr132, align 1
  store i8 %107, ptr %yych, align 1
  %108 = load i8, ptr %yych, align 1
  %conv133 = zext i8 %108 to i32
  %cmp134 = icmp ne i32 %conv133, 58
  br i1 %cmp134, label %if.then136, label %if.end137

if.then136:                                       ; preds = %yy22
  br label %yy13

if.end137:                                        ; preds = %yy22
  br label %yy23

yy23:                                             ; preds = %if.end137
  %109 = load ptr, ptr %cursor, align 8
  %incdec.ptr138 = getelementptr inbounds i8, ptr %109, i32 1
  store ptr %incdec.ptr138, ptr %cursor, align 8
  %110 = load i8, ptr %incdec.ptr138, align 1
  store i8 %110, ptr %yych, align 1
  %111 = load i8, ptr %yych, align 1
  %conv139 = zext i8 %111 to i32
  %cmp140 = icmp ne i32 %conv139, 114
  br i1 %cmp140, label %if.then142, label %if.end143

if.then142:                                       ; preds = %yy23
  br label %yy13

if.end143:                                        ; preds = %yy23
  br label %yy24

yy24:                                             ; preds = %if.end143
  %112 = load ptr, ptr %cursor, align 8
  %incdec.ptr144 = getelementptr inbounds i8, ptr %112, i32 1
  store ptr %incdec.ptr144, ptr %cursor, align 8
  %113 = load i8, ptr %incdec.ptr144, align 1
  store i8 %113, ptr %yych, align 1
  %114 = load i8, ptr %yych, align 1
  %conv145 = zext i8 %114 to i32
  %cmp146 = icmp ne i32 %conv145, 101
  br i1 %cmp146, label %if.then148, label %if.end149

if.then148:                                       ; preds = %yy24
  br label %yy13

if.end149:                                        ; preds = %yy24
  br label %yy25

yy25:                                             ; preds = %if.end149
  %115 = load ptr, ptr %cursor, align 8
  %incdec.ptr150 = getelementptr inbounds i8, ptr %115, i32 1
  store ptr %incdec.ptr150, ptr %cursor, align 8
  %116 = load i8, ptr %incdec.ptr150, align 1
  store i8 %116, ptr %yych, align 1
  %117 = load i8, ptr %yych, align 1
  %conv151 = zext i8 %117 to i32
  %cmp152 = icmp ne i32 %conv151, 50
  br i1 %cmp152, label %if.then154, label %if.end155

if.then154:                                       ; preds = %yy25
  br label %yy13

if.end155:                                        ; preds = %yy25
  br label %yy26

yy26:                                             ; preds = %if.end155
  %118 = load ptr, ptr %cursor, align 8
  %incdec.ptr156 = getelementptr inbounds i8, ptr %118, i32 1
  store ptr %incdec.ptr156, ptr %cursor, align 8
  %119 = load i8, ptr %incdec.ptr156, align 1
  store i8 %119, ptr %yych, align 1
  %120 = load i8, ptr %yych, align 1
  %conv157 = zext i8 %120 to i32
  %cmp158 = icmp ne i32 %conv157, 99
  br i1 %cmp158, label %if.then160, label %if.end161

if.then160:                                       ; preds = %yy26
  br label %yy13

if.end161:                                        ; preds = %yy26
  br label %yy27

yy27:                                             ; preds = %if.end161
  %121 = load ptr, ptr %cursor, align 8
  %incdec.ptr162 = getelementptr inbounds i8, ptr %121, i32 1
  store ptr %incdec.ptr162, ptr %cursor, align 8
  %122 = load i8, ptr %incdec.ptr162, align 1
  store i8 %122, ptr %yych, align 1
  br label %yy28

yy28:                                             ; preds = %yy27
  %123 = load ptr, ptr %out.addr, align 8
  %124 = load i32, ptr @maxFill, align 4
  %call163 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %123, ptr noundef @.str, i32 noundef %124)
  %125 = load ptr, ptr %cursor, align 8
  %126 = load ptr, ptr %s.addr, align 8
  %pos164 = getelementptr inbounds %struct.Scanner, ptr %126, i32 0, i32 5
  store ptr %125, ptr %pos164, align 8
  %127 = load ptr, ptr %s.addr, align 8
  %tok165 = getelementptr inbounds %struct.Scanner, ptr %127, i32 0, i32 2
  store ptr %125, ptr %tok165, align 8
  store i32 1, ptr %ignore_eoc, align 4
  br label %echo

return:                                           ; preds = %yy20, %if.then58, %if.then
  %128 = load i32, ptr %retval, align 4
  ret i32 %128
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @fill(ptr noundef %s, ptr noundef %cursor) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %cursor.addr = alloca ptr, align 8
  %cnt = alloca i32, align 4
  %buf = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  store ptr %cursor, ptr %cursor.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %eof = getelementptr inbounds %struct.Scanner, ptr %0, i32 0, i32 8
  %1 = load ptr, ptr %eof, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end89, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %s.addr, align 8
  %tok = getelementptr inbounds %struct.Scanner, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %tok, align 8
  %4 = load ptr, ptr %s.addr, align 8
  %bot = getelementptr inbounds %struct.Scanner, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %bot, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %3 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, ptr %cnt, align 4
  %6 = load i32, ptr %cnt, align 4
  %tobool1 = icmp ne i32 %6, 0
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %7 = load ptr, ptr %s.addr, align 8
  %bot3 = getelementptr inbounds %struct.Scanner, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %bot3, align 8
  %9 = load ptr, ptr %s.addr, align 8
  %tok4 = getelementptr inbounds %struct.Scanner, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %tok4, align 8
  %11 = load ptr, ptr %s.addr, align 8
  %lim = getelementptr inbounds %struct.Scanner, ptr %11, i32 0, i32 6
  %12 = load ptr, ptr %lim, align 8
  %13 = load ptr, ptr %s.addr, align 8
  %tok5 = getelementptr inbounds %struct.Scanner, ptr %13, i32 0, i32 2
  %14 = load ptr, ptr %tok5, align 8
  %sub.ptr.lhs.cast6 = ptrtoint ptr %12 to i64
  %sub.ptr.rhs.cast7 = ptrtoint ptr %14 to i64
  %sub.ptr.sub8 = sub i64 %sub.ptr.lhs.cast6, %sub.ptr.rhs.cast7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %10, i64 %sub.ptr.sub8, i1 false)
  %15 = load ptr, ptr %s.addr, align 8
  %bot9 = getelementptr inbounds %struct.Scanner, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %bot9, align 8
  %17 = load ptr, ptr %s.addr, align 8
  %tok10 = getelementptr inbounds %struct.Scanner, ptr %17, i32 0, i32 2
  store ptr %16, ptr %tok10, align 8
  %18 = load i32, ptr %cnt, align 4
  %19 = load ptr, ptr %s.addr, align 8
  %ptr = getelementptr inbounds %struct.Scanner, ptr %19, i32 0, i32 3
  %20 = load ptr, ptr %ptr, align 8
  %idx.ext = zext i32 %18 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, ptr %20, i64 %idx.neg
  store ptr %add.ptr, ptr %ptr, align 8
  %21 = load i32, ptr %cnt, align 4
  %22 = load ptr, ptr %cursor.addr, align 8
  %idx.ext11 = zext i32 %21 to i64
  %idx.neg12 = sub i64 0, %idx.ext11
  %add.ptr13 = getelementptr inbounds i8, ptr %22, i64 %idx.neg12
  store ptr %add.ptr13, ptr %cursor.addr, align 8
  %23 = load i32, ptr %cnt, align 4
  %24 = load ptr, ptr %s.addr, align 8
  %pos = getelementptr inbounds %struct.Scanner, ptr %24, i32 0, i32 5
  %25 = load ptr, ptr %pos, align 8
  %idx.ext14 = zext i32 %23 to i64
  %idx.neg15 = sub i64 0, %idx.ext14
  %add.ptr16 = getelementptr inbounds i8, ptr %25, i64 %idx.neg15
  store ptr %add.ptr16, ptr %pos, align 8
  %26 = load i32, ptr %cnt, align 4
  %27 = load ptr, ptr %s.addr, align 8
  %lim17 = getelementptr inbounds %struct.Scanner, ptr %27, i32 0, i32 6
  %28 = load ptr, ptr %lim17, align 8
  %idx.ext18 = zext i32 %26 to i64
  %idx.neg19 = sub i64 0, %idx.ext18
  %add.ptr20 = getelementptr inbounds i8, ptr %28, i64 %idx.neg19
  store ptr %add.ptr20, ptr %lim17, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %29 = load ptr, ptr %s.addr, align 8
  %top = getelementptr inbounds %struct.Scanner, ptr %29, i32 0, i32 7
  %30 = load ptr, ptr %top, align 8
  %31 = load ptr, ptr %s.addr, align 8
  %lim21 = getelementptr inbounds %struct.Scanner, ptr %31, i32 0, i32 6
  %32 = load ptr, ptr %lim21, align 8
  %sub.ptr.lhs.cast22 = ptrtoint ptr %30 to i64
  %sub.ptr.rhs.cast23 = ptrtoint ptr %32 to i64
  %sub.ptr.sub24 = sub i64 %sub.ptr.lhs.cast22, %sub.ptr.rhs.cast23
  %cmp = icmp slt i64 %sub.ptr.sub24, 8192
  br i1 %cmp, label %if.then26, label %if.end74

if.then26:                                        ; preds = %if.end
  %33 = load ptr, ptr %s.addr, align 8
  %lim27 = getelementptr inbounds %struct.Scanner, ptr %33, i32 0, i32 6
  %34 = load ptr, ptr %lim27, align 8
  %35 = load ptr, ptr %s.addr, align 8
  %bot28 = getelementptr inbounds %struct.Scanner, ptr %35, i32 0, i32 1
  %36 = load ptr, ptr %bot28, align 8
  %sub.ptr.lhs.cast29 = ptrtoint ptr %34 to i64
  %sub.ptr.rhs.cast30 = ptrtoint ptr %36 to i64
  %sub.ptr.sub31 = sub i64 %sub.ptr.lhs.cast29, %sub.ptr.rhs.cast30
  %add = add nsw i64 %sub.ptr.sub31, 8192
  %add32 = add nsw i64 %add, 1
  %call = call noalias ptr @malloc(i64 noundef %add32) #7
  store ptr %call, ptr %buf, align 8
  %37 = load ptr, ptr %buf, align 8
  %38 = load ptr, ptr %s.addr, align 8
  %tok33 = getelementptr inbounds %struct.Scanner, ptr %38, i32 0, i32 2
  %39 = load ptr, ptr %tok33, align 8
  %40 = load ptr, ptr %s.addr, align 8
  %lim34 = getelementptr inbounds %struct.Scanner, ptr %40, i32 0, i32 6
  %41 = load ptr, ptr %lim34, align 8
  %42 = load ptr, ptr %s.addr, align 8
  %tok35 = getelementptr inbounds %struct.Scanner, ptr %42, i32 0, i32 2
  %43 = load ptr, ptr %tok35, align 8
  %sub.ptr.lhs.cast36 = ptrtoint ptr %41 to i64
  %sub.ptr.rhs.cast37 = ptrtoint ptr %43 to i64
  %sub.ptr.sub38 = sub i64 %sub.ptr.lhs.cast36, %sub.ptr.rhs.cast37
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %37, ptr align 1 %39, i64 %sub.ptr.sub38, i1 false)
  %44 = load ptr, ptr %buf, align 8
  %45 = load ptr, ptr %s.addr, align 8
  %tok39 = getelementptr inbounds %struct.Scanner, ptr %45, i32 0, i32 2
  store ptr %44, ptr %tok39, align 8
  %46 = load ptr, ptr %buf, align 8
  %47 = load ptr, ptr %s.addr, align 8
  %ptr40 = getelementptr inbounds %struct.Scanner, ptr %47, i32 0, i32 3
  %48 = load ptr, ptr %ptr40, align 8
  %49 = load ptr, ptr %s.addr, align 8
  %bot41 = getelementptr inbounds %struct.Scanner, ptr %49, i32 0, i32 1
  %50 = load ptr, ptr %bot41, align 8
  %sub.ptr.lhs.cast42 = ptrtoint ptr %48 to i64
  %sub.ptr.rhs.cast43 = ptrtoint ptr %50 to i64
  %sub.ptr.sub44 = sub i64 %sub.ptr.lhs.cast42, %sub.ptr.rhs.cast43
  %arrayidx = getelementptr inbounds i8, ptr %46, i64 %sub.ptr.sub44
  %51 = load ptr, ptr %s.addr, align 8
  %ptr45 = getelementptr inbounds %struct.Scanner, ptr %51, i32 0, i32 3
  store ptr %arrayidx, ptr %ptr45, align 8
  %52 = load ptr, ptr %buf, align 8
  %53 = load ptr, ptr %cursor.addr, align 8
  %54 = load ptr, ptr %s.addr, align 8
  %bot46 = getelementptr inbounds %struct.Scanner, ptr %54, i32 0, i32 1
  %55 = load ptr, ptr %bot46, align 8
  %sub.ptr.lhs.cast47 = ptrtoint ptr %53 to i64
  %sub.ptr.rhs.cast48 = ptrtoint ptr %55 to i64
  %sub.ptr.sub49 = sub i64 %sub.ptr.lhs.cast47, %sub.ptr.rhs.cast48
  %arrayidx50 = getelementptr inbounds i8, ptr %52, i64 %sub.ptr.sub49
  store ptr %arrayidx50, ptr %cursor.addr, align 8
  %56 = load ptr, ptr %buf, align 8
  %57 = load ptr, ptr %s.addr, align 8
  %pos51 = getelementptr inbounds %struct.Scanner, ptr %57, i32 0, i32 5
  %58 = load ptr, ptr %pos51, align 8
  %59 = load ptr, ptr %s.addr, align 8
  %bot52 = getelementptr inbounds %struct.Scanner, ptr %59, i32 0, i32 1
  %60 = load ptr, ptr %bot52, align 8
  %sub.ptr.lhs.cast53 = ptrtoint ptr %58 to i64
  %sub.ptr.rhs.cast54 = ptrtoint ptr %60 to i64
  %sub.ptr.sub55 = sub i64 %sub.ptr.lhs.cast53, %sub.ptr.rhs.cast54
  %arrayidx56 = getelementptr inbounds i8, ptr %56, i64 %sub.ptr.sub55
  %61 = load ptr, ptr %s.addr, align 8
  %pos57 = getelementptr inbounds %struct.Scanner, ptr %61, i32 0, i32 5
  store ptr %arrayidx56, ptr %pos57, align 8
  %62 = load ptr, ptr %buf, align 8
  %63 = load ptr, ptr %s.addr, align 8
  %lim58 = getelementptr inbounds %struct.Scanner, ptr %63, i32 0, i32 6
  %64 = load ptr, ptr %lim58, align 8
  %65 = load ptr, ptr %s.addr, align 8
  %bot59 = getelementptr inbounds %struct.Scanner, ptr %65, i32 0, i32 1
  %66 = load ptr, ptr %bot59, align 8
  %sub.ptr.lhs.cast60 = ptrtoint ptr %64 to i64
  %sub.ptr.rhs.cast61 = ptrtoint ptr %66 to i64
  %sub.ptr.sub62 = sub i64 %sub.ptr.lhs.cast60, %sub.ptr.rhs.cast61
  %arrayidx63 = getelementptr inbounds i8, ptr %62, i64 %sub.ptr.sub62
  %67 = load ptr, ptr %s.addr, align 8
  %lim64 = getelementptr inbounds %struct.Scanner, ptr %67, i32 0, i32 6
  store ptr %arrayidx63, ptr %lim64, align 8
  %68 = load ptr, ptr %s.addr, align 8
  %lim65 = getelementptr inbounds %struct.Scanner, ptr %68, i32 0, i32 6
  %69 = load ptr, ptr %lim65, align 8
  %arrayidx66 = getelementptr inbounds i8, ptr %69, i64 8192
  %70 = load ptr, ptr %s.addr, align 8
  %top67 = getelementptr inbounds %struct.Scanner, ptr %70, i32 0, i32 7
  store ptr %arrayidx66, ptr %top67, align 8
  %71 = load ptr, ptr %s.addr, align 8
  %bot68 = getelementptr inbounds %struct.Scanner, ptr %71, i32 0, i32 1
  %72 = load ptr, ptr %bot68, align 8
  %tobool69 = icmp ne ptr %72, null
  br i1 %tobool69, label %if.then70, label %if.end72

if.then70:                                        ; preds = %if.then26
  %73 = load ptr, ptr %s.addr, align 8
  %bot71 = getelementptr inbounds %struct.Scanner, ptr %73, i32 0, i32 1
  %74 = load ptr, ptr %bot71, align 8
  call void @free(ptr noundef %74) #8
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %if.then26
  %75 = load ptr, ptr %buf, align 8
  %76 = load ptr, ptr %s.addr, align 8
  %bot73 = getelementptr inbounds %struct.Scanner, ptr %76, i32 0, i32 1
  store ptr %75, ptr %bot73, align 8
  br label %if.end74

if.end74:                                         ; preds = %if.end72, %if.end
  %77 = load ptr, ptr %s.addr, align 8
  %lim75 = getelementptr inbounds %struct.Scanner, ptr %77, i32 0, i32 6
  %78 = load ptr, ptr %lim75, align 8
  %79 = load ptr, ptr %s.addr, align 8
  %in = getelementptr inbounds %struct.Scanner, ptr %79, i32 0, i32 0
  %80 = load ptr, ptr %in, align 8
  %call76 = call i64 @fread(ptr noundef %78, i64 noundef 1, i64 noundef 8192, ptr noundef %80)
  %conv77 = trunc i64 %call76 to i32
  store i32 %conv77, ptr %cnt, align 4
  %cmp78 = icmp ne i32 %conv77, 8192
  br i1 %cmp78, label %if.then80, label %if.end85

if.then80:                                        ; preds = %if.end74
  %81 = load ptr, ptr %s.addr, align 8
  %lim81 = getelementptr inbounds %struct.Scanner, ptr %81, i32 0, i32 6
  %82 = load ptr, ptr %lim81, align 8
  %83 = load i32, ptr %cnt, align 4
  %idxprom = zext i32 %83 to i64
  %arrayidx82 = getelementptr inbounds i8, ptr %82, i64 %idxprom
  %84 = load ptr, ptr %s.addr, align 8
  %eof83 = getelementptr inbounds %struct.Scanner, ptr %84, i32 0, i32 8
  store ptr %arrayidx82, ptr %eof83, align 8
  %85 = load ptr, ptr %s.addr, align 8
  %eof84 = getelementptr inbounds %struct.Scanner, ptr %85, i32 0, i32 8
  %86 = load ptr, ptr %eof84, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %86, i32 1
  store ptr %incdec.ptr, ptr %eof84, align 8
  store i8 0, ptr %86, align 1
  br label %if.end85

if.end85:                                         ; preds = %if.then80, %if.end74
  %87 = load i32, ptr %cnt, align 4
  %88 = load ptr, ptr %s.addr, align 8
  %lim86 = getelementptr inbounds %struct.Scanner, ptr %88, i32 0, i32 6
  %89 = load ptr, ptr %lim86, align 8
  %idx.ext87 = zext i32 %87 to i64
  %add.ptr88 = getelementptr inbounds i8, ptr %89, i64 %idx.ext87
  store ptr %add.ptr88, ptr %lim86, align 8
  br label %if.end89

if.end89:                                         ; preds = %if.end85, %entry
  %90 = load ptr, ptr %cursor.addr, align 8
  ret ptr %90
}

declare i64 @fwrite(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Scanner_scan(ptr noundef %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %cursor = alloca ptr, align 8
  %depth = alloca i32, align 4
  %yych = alloca i8, align 1
  %yyaccept = alloca i32, align 4
  %substr = alloca %struct.SubStr, align 8
  %tmp = alloca %struct.SubStr, align 8
  %agg.tmp = alloca %struct.SubStr, align 8
  %agg.tmp351 = alloca %struct.SubStr, align 8
  %agg.tmp395 = alloca %struct.SubStr, align 8
  %agg.tmp439 = alloca %struct.SubStr, align 8
  %yych531 = alloca i8, align 1
  %yyaccept532 = alloca i32, align 4
  %agg.tmp587 = alloca %struct.SubStr, align 8
  %yych699 = alloca i8, align 1
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %cur = getelementptr inbounds %struct.Scanner, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %cur, align 8
  store ptr %1, ptr %cursor, align 8
  br label %scan

scan:                                             ; preds = %if.then759, %yy54, %if.end199, %yy48, %entry
  %2 = load ptr, ptr %cursor, align 8
  %3 = load ptr, ptr %s.addr, align 8
  %pos = getelementptr inbounds %struct.Scanner, ptr %3, i32 0, i32 5
  %4 = load ptr, ptr %pos, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %2 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %5 = load ptr, ptr %s.addr, align 8
  %tchar = getelementptr inbounds %struct.Scanner, ptr %5, i32 0, i32 9
  store i32 %conv, ptr %tchar, align 8
  %6 = load ptr, ptr %s.addr, align 8
  %cline = getelementptr inbounds %struct.Scanner, ptr %6, i32 0, i32 11
  %7 = load i32, ptr %cline, align 8
  %8 = load ptr, ptr %s.addr, align 8
  %tline = getelementptr inbounds %struct.Scanner, ptr %8, i32 0, i32 10
  store i32 %7, ptr %tline, align 4
  %9 = load ptr, ptr %cursor, align 8
  %10 = load ptr, ptr %s.addr, align 8
  %tok = getelementptr inbounds %struct.Scanner, ptr %10, i32 0, i32 2
  store ptr %9, ptr %tok, align 8
  br label %yy29

yy29:                                             ; preds = %scan
  %11 = load ptr, ptr %s.addr, align 8
  %lim = getelementptr inbounds %struct.Scanner, ptr %11, i32 0, i32 6
  %12 = load ptr, ptr %lim, align 8
  %13 = load ptr, ptr %cursor, align 8
  %sub.ptr.lhs.cast1 = ptrtoint ptr %12 to i64
  %sub.ptr.rhs.cast2 = ptrtoint ptr %13 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %cmp = icmp slt i64 %sub.ptr.sub3, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %yy29
  %14 = load ptr, ptr %s.addr, align 8
  %15 = load ptr, ptr %cursor, align 8
  %call = call ptr @fill(ptr noundef %14, ptr noundef %15)
  store ptr %call, ptr %cursor, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %yy29
  %16 = load ptr, ptr %cursor, align 8
  %17 = load i8, ptr %16, align 1
  store i8 %17, ptr %yych, align 1
  %18 = load i8, ptr %yych, align 1
  %conv5 = zext i8 %18 to i32
  %cmp6 = icmp sle i32 %conv5, 47
  br i1 %cmp6, label %if.then8, label %if.else73

if.then8:                                         ; preds = %if.end
  %19 = load i8, ptr %yych, align 1
  %conv9 = zext i8 %19 to i32
  %cmp10 = icmp sle i32 %conv9, 34
  br i1 %cmp10, label %if.then12, label %if.else37

if.then12:                                        ; preds = %if.then8
  %20 = load i8, ptr %yych, align 1
  %conv13 = zext i8 %20 to i32
  %cmp14 = icmp sle i32 %conv13, 10
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.then12
  %21 = load i8, ptr %yych, align 1
  %conv17 = zext i8 %21 to i32
  %cmp18 = icmp sle i32 %conv17, 8
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then16
  br label %yy53

if.end21:                                         ; preds = %if.then16
  %22 = load i8, ptr %yych, align 1
  %conv22 = zext i8 %22 to i32
  %cmp23 = icmp sle i32 %conv22, 9
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end21
  br label %yy47

if.end26:                                         ; preds = %if.end21
  br label %yy49

if.else:                                          ; preds = %if.then12
  %23 = load i8, ptr %yych, align 1
  %conv27 = zext i8 %23 to i32
  %cmp28 = icmp eq i32 %conv27, 32
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.else
  br label %yy47

if.end31:                                         ; preds = %if.else
  %24 = load i8, ptr %yych, align 1
  %conv32 = zext i8 %24 to i32
  %cmp33 = icmp sle i32 %conv32, 33
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end31
  br label %yy53

if.end36:                                         ; preds = %if.end31
  br label %yy37

if.else37:                                        ; preds = %if.then8
  %25 = load i8, ptr %yych, align 1
  %conv38 = zext i8 %25 to i32
  %cmp39 = icmp sle i32 %conv38, 42
  br i1 %cmp39, label %if.then41, label %if.else57

if.then41:                                        ; preds = %if.else37
  %26 = load i8, ptr %yych, align 1
  %conv42 = zext i8 %26 to i32
  %cmp43 = icmp sle i32 %conv42, 38
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.then41
  br label %yy53

if.end46:                                         ; preds = %if.then41
  %27 = load i8, ptr %yych, align 1
  %conv47 = zext i8 %27 to i32
  %cmp48 = icmp sle i32 %conv47, 39
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.end46
  br label %yy39

if.end51:                                         ; preds = %if.end46
  %28 = load i8, ptr %yych, align 1
  %conv52 = zext i8 %28 to i32
  %cmp53 = icmp sle i32 %conv52, 41
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.end51
  br label %yy43

if.end56:                                         ; preds = %if.end51
  br label %yy35

if.else57:                                        ; preds = %if.else37
  %29 = load i8, ptr %yych, align 1
  %conv58 = zext i8 %29 to i32
  %cmp59 = icmp sle i32 %conv58, 43
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.else57
  br label %yy44

if.end62:                                         ; preds = %if.else57
  %30 = load i8, ptr %yych, align 1
  %conv63 = zext i8 %30 to i32
  %cmp64 = icmp sle i32 %conv63, 45
  br i1 %cmp64, label %if.then66, label %if.end67

if.then66:                                        ; preds = %if.end62
  br label %yy53

if.end67:                                         ; preds = %if.end62
  %31 = load i8, ptr %yych, align 1
  %conv68 = zext i8 %31 to i32
  %cmp69 = icmp sle i32 %conv68, 46
  br i1 %cmp69, label %if.then71, label %if.end72

if.then71:                                        ; preds = %if.end67
  br label %yy51

if.end72:                                         ; preds = %if.end67
  br label %yy33

if.else73:                                        ; preds = %if.end
  %32 = load i8, ptr %yych, align 1
  %conv74 = zext i8 %32 to i32
  %cmp75 = icmp sle i32 %conv74, 64
  br i1 %cmp75, label %if.then77, label %if.else98

if.then77:                                        ; preds = %if.else73
  %33 = load i8, ptr %yych, align 1
  %conv78 = zext i8 %33 to i32
  %cmp79 = icmp sle i32 %conv78, 60
  br i1 %cmp79, label %if.then81, label %if.else87

if.then81:                                        ; preds = %if.then77
  %34 = load i8, ptr %yych, align 1
  %conv82 = zext i8 %34 to i32
  %cmp83 = icmp eq i32 %conv82, 59
  br i1 %cmp83, label %if.then85, label %if.end86

if.then85:                                        ; preds = %if.then81
  br label %yy43

if.end86:                                         ; preds = %if.then81
  br label %yy53

if.else87:                                        ; preds = %if.then77
  %35 = load i8, ptr %yych, align 1
  %conv88 = zext i8 %35 to i32
  %cmp89 = icmp sle i32 %conv88, 61
  br i1 %cmp89, label %if.then91, label %if.end92

if.then91:                                        ; preds = %if.else87
  br label %yy43

if.end92:                                         ; preds = %if.else87
  %36 = load i8, ptr %yych, align 1
  %conv93 = zext i8 %36 to i32
  %cmp94 = icmp eq i32 %conv93, 63
  br i1 %cmp94, label %if.then96, label %if.end97

if.then96:                                        ; preds = %if.end92
  br label %yy44

if.end97:                                         ; preds = %if.end92
  br label %yy53

if.else98:                                        ; preds = %if.else73
  %37 = load i8, ptr %yych, align 1
  %conv99 = zext i8 %37 to i32
  %cmp100 = icmp sle i32 %conv99, 96
  br i1 %cmp100, label %if.then102, label %if.else118

if.then102:                                       ; preds = %if.else98
  %38 = load i8, ptr %yych, align 1
  %conv103 = zext i8 %38 to i32
  %cmp104 = icmp sle i32 %conv103, 90
  br i1 %cmp104, label %if.then106, label %if.end107

if.then106:                                       ; preds = %if.then102
  br label %yy45

if.end107:                                        ; preds = %if.then102
  %39 = load i8, ptr %yych, align 1
  %conv108 = zext i8 %39 to i32
  %cmp109 = icmp sle i32 %conv108, 91
  br i1 %cmp109, label %if.then111, label %if.end112

if.then111:                                       ; preds = %if.end107
  br label %yy41

if.end112:                                        ; preds = %if.end107
  %40 = load i8, ptr %yych, align 1
  %conv113 = zext i8 %40 to i32
  %cmp114 = icmp sle i32 %conv113, 92
  br i1 %cmp114, label %if.then116, label %if.end117

if.then116:                                       ; preds = %if.end112
  br label %yy43

if.end117:                                        ; preds = %if.end112
  br label %yy53

if.else118:                                       ; preds = %if.else98
  %41 = load i8, ptr %yych, align 1
  %conv119 = zext i8 %41 to i32
  %cmp120 = icmp sle i32 %conv119, 122
  br i1 %cmp120, label %if.then122, label %if.end123

if.then122:                                       ; preds = %if.else118
  br label %yy45

if.end123:                                        ; preds = %if.else118
  %42 = load i8, ptr %yych, align 1
  %conv124 = zext i8 %42 to i32
  %cmp125 = icmp sle i32 %conv124, 123
  br i1 %cmp125, label %if.then127, label %if.end128

if.then127:                                       ; preds = %if.end123
  br label %yy31

if.end128:                                        ; preds = %if.end123
  %43 = load i8, ptr %yych, align 1
  %conv129 = zext i8 %43 to i32
  %cmp130 = icmp sle i32 %conv129, 124
  br i1 %cmp130, label %if.then132, label %if.end133

if.then132:                                       ; preds = %if.end128
  br label %yy43

if.end133:                                        ; preds = %if.end128
  br label %yy53

yy31:                                             ; preds = %if.then127
  store i32 0, ptr %yyaccept, align 4
  %44 = load ptr, ptr %cursor, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %44, i32 1
  store ptr %incdec.ptr, ptr %cursor, align 8
  %45 = load ptr, ptr %s.addr, align 8
  %ptr = getelementptr inbounds %struct.Scanner, ptr %45, i32 0, i32 3
  store ptr %incdec.ptr, ptr %ptr, align 8
  %46 = load i8, ptr %incdec.ptr, align 1
  store i8 %46, ptr %yych, align 1
  %47 = load i8, ptr %yych, align 1
  %conv134 = zext i8 %47 to i32
  %cmp135 = icmp sle i32 %conv134, 47
  br i1 %cmp135, label %if.then137, label %if.end138

if.then137:                                       ; preds = %yy31
  br label %yy32

if.end138:                                        ; preds = %yy31
  %48 = load i8, ptr %yych, align 1
  %conv139 = zext i8 %48 to i32
  %cmp140 = icmp sle i32 %conv139, 57
  br i1 %cmp140, label %if.then142, label %if.end143

if.then142:                                       ; preds = %if.end138
  br label %yy84

if.end143:                                        ; preds = %if.end138
  br label %yy32

yy32:                                             ; preds = %sw.bb, %if.end143, %if.then137
  store i32 1, ptr %depth, align 4
  br label %code

yy33:                                             ; preds = %if.end72
  %49 = load ptr, ptr %cursor, align 8
  %incdec.ptr144 = getelementptr inbounds i8, ptr %49, i32 1
  store ptr %incdec.ptr144, ptr %cursor, align 8
  %50 = load i8, ptr %incdec.ptr144, align 1
  store i8 %50, ptr %yych, align 1
  %51 = load i8, ptr %yych, align 1
  %conv145 = zext i8 %51 to i32
  %cmp146 = icmp eq i32 %conv145, 42
  br i1 %cmp146, label %if.then148, label %if.end149

if.then148:                                       ; preds = %yy33
  br label %yy82

if.end149:                                        ; preds = %yy33
  br label %yy34

yy34:                                             ; preds = %yy43, %if.end149
  %52 = load ptr, ptr %cursor, align 8
  %53 = load ptr, ptr %s.addr, align 8
  %cur150 = getelementptr inbounds %struct.Scanner, ptr %53, i32 0, i32 4
  store ptr %52, ptr %cur150, align 8
  %54 = load ptr, ptr %s.addr, align 8
  %tok151 = getelementptr inbounds %struct.Scanner, ptr %54, i32 0, i32 2
  %55 = load ptr, ptr %tok151, align 8
  %56 = load i8, ptr %55, align 1
  %conv152 = zext i8 %56 to i32
  store i32 %conv152, ptr %retval, align 4
  br label %return

yy35:                                             ; preds = %if.end56
  %57 = load ptr, ptr %cursor, align 8
  %incdec.ptr153 = getelementptr inbounds i8, ptr %57, i32 1
  store ptr %incdec.ptr153, ptr %cursor, align 8
  %58 = load i8, ptr %incdec.ptr153, align 1
  store i8 %58, ptr %yych, align 1
  %59 = load i8, ptr %yych, align 1
  %conv154 = zext i8 %59 to i32
  %cmp155 = icmp eq i32 %conv154, 47
  br i1 %cmp155, label %if.then157, label %if.end158

if.then157:                                       ; preds = %yy35
  br label %yy80

if.end158:                                        ; preds = %yy35
  br label %yy36

yy36:                                             ; preds = %yy44, %if.end158
  %60 = load ptr, ptr %s.addr, align 8
  %tok159 = getelementptr inbounds %struct.Scanner, ptr %60, i32 0, i32 2
  %61 = load ptr, ptr %tok159, align 8
  %62 = load i8, ptr %61, align 1
  store i8 %62, ptr @yylval, align 8
  %63 = load ptr, ptr %cursor, align 8
  %64 = load ptr, ptr %s.addr, align 8
  %cur160 = getelementptr inbounds %struct.Scanner, ptr %64, i32 0, i32 4
  store ptr %63, ptr %cur160, align 8
  store i32 259, ptr %retval, align 4
  br label %return

yy37:                                             ; preds = %if.end36
  store i32 1, ptr %yyaccept, align 4
  %65 = load ptr, ptr %cursor, align 8
  %incdec.ptr161 = getelementptr inbounds i8, ptr %65, i32 1
  store ptr %incdec.ptr161, ptr %cursor, align 8
  %66 = load ptr, ptr %s.addr, align 8
  %ptr162 = getelementptr inbounds %struct.Scanner, ptr %66, i32 0, i32 3
  store ptr %incdec.ptr161, ptr %ptr162, align 8
  %67 = load i8, ptr %incdec.ptr161, align 1
  store i8 %67, ptr %yych, align 1
  %68 = load i8, ptr %yych, align 1
  %conv163 = zext i8 %68 to i32
  %cmp164 = icmp ne i32 %conv163, 10
  br i1 %cmp164, label %if.then166, label %if.end167

if.then166:                                       ; preds = %yy37
  br label %yy76

if.end167:                                        ; preds = %yy37
  br label %yy38

yy38:                                             ; preds = %sw.bb291, %if.end167
  %69 = load ptr, ptr %s.addr, align 8
  call void @Scanner_fatal(ptr noundef %69, ptr noundef @.str.1)
  br label %yy39

yy39:                                             ; preds = %yy38, %if.then50
  store i32 2, ptr %yyaccept, align 4
  %70 = load ptr, ptr %cursor, align 8
  %incdec.ptr168 = getelementptr inbounds i8, ptr %70, i32 1
  store ptr %incdec.ptr168, ptr %cursor, align 8
  %71 = load ptr, ptr %s.addr, align 8
  %ptr169 = getelementptr inbounds %struct.Scanner, ptr %71, i32 0, i32 3
  store ptr %incdec.ptr168, ptr %ptr169, align 8
  %72 = load i8, ptr %incdec.ptr168, align 1
  store i8 %72, ptr %yych, align 1
  %73 = load i8, ptr %yych, align 1
  %conv170 = zext i8 %73 to i32
  %cmp171 = icmp ne i32 %conv170, 10
  br i1 %cmp171, label %if.then173, label %if.end174

if.then173:                                       ; preds = %yy39
  br label %yy71

if.end174:                                        ; preds = %yy39
  br label %yy40

yy40:                                             ; preds = %sw.bb292, %if.end174
  %74 = load ptr, ptr %s.addr, align 8
  call void @Scanner_fatal(ptr noundef %74, ptr noundef @.str.2)
  br label %yy41

yy41:                                             ; preds = %yy40, %if.then111
  store i32 3, ptr %yyaccept, align 4
  %75 = load ptr, ptr %cursor, align 8
  %incdec.ptr175 = getelementptr inbounds i8, ptr %75, i32 1
  store ptr %incdec.ptr175, ptr %cursor, align 8
  %76 = load ptr, ptr %s.addr, align 8
  %ptr176 = getelementptr inbounds %struct.Scanner, ptr %76, i32 0, i32 3
  store ptr %incdec.ptr175, ptr %ptr176, align 8
  %77 = load i8, ptr %incdec.ptr175, align 1
  store i8 %77, ptr %yych, align 1
  %78 = load i8, ptr %yych, align 1
  %conv177 = zext i8 %78 to i32
  %cmp178 = icmp eq i32 %conv177, 10
  br i1 %cmp178, label %if.then180, label %if.end181

if.then180:                                       ; preds = %yy41
  br label %yy42

if.end181:                                        ; preds = %yy41
  %79 = load i8, ptr %yych, align 1
  %conv182 = zext i8 %79 to i32
  %cmp183 = icmp eq i32 %conv182, 94
  br i1 %cmp183, label %if.then185, label %if.end186

if.then185:                                       ; preds = %if.end181
  br label %yy62

if.end186:                                        ; preds = %if.end181
  br label %yy60

yy42:                                             ; preds = %sw.bb293, %if.then180
  %80 = load ptr, ptr %s.addr, align 8
  call void @Scanner_fatal(ptr noundef %80, ptr noundef @.str.3)
  br label %yy43

yy43:                                             ; preds = %yy42, %if.then132, %if.then116, %if.then91, %if.then85, %if.then55
  %81 = load ptr, ptr %cursor, align 8
  %incdec.ptr187 = getelementptr inbounds i8, ptr %81, i32 1
  store ptr %incdec.ptr187, ptr %cursor, align 8
  %82 = load i8, ptr %incdec.ptr187, align 1
  store i8 %82, ptr %yych, align 1
  br label %yy34

yy44:                                             ; preds = %if.then96, %if.then61
  %83 = load ptr, ptr %cursor, align 8
  %incdec.ptr188 = getelementptr inbounds i8, ptr %83, i32 1
  store ptr %incdec.ptr188, ptr %cursor, align 8
  %84 = load i8, ptr %incdec.ptr188, align 1
  store i8 %84, ptr %yych, align 1
  br label %yy36

yy45:                                             ; preds = %if.then122, %if.then106
  %85 = load ptr, ptr %cursor, align 8
  %incdec.ptr189 = getelementptr inbounds i8, ptr %85, i32 1
  store ptr %incdec.ptr189, ptr %cursor, align 8
  %86 = load i8, ptr %incdec.ptr189, align 1
  store i8 %86, ptr %yych, align 1
  br label %yy58

yy46:                                             ; preds = %if.end262, %if.then256, %if.end246, %if.then240
  %87 = load ptr, ptr %cursor, align 8
  %88 = load ptr, ptr %s.addr, align 8
  %cur190 = getelementptr inbounds %struct.Scanner, ptr %88, i32 0, i32 4
  store ptr %87, ptr %cur190, align 8
  %89 = load ptr, ptr %s.addr, align 8
  %call191 = call { ptr, i32 } @Scanner_token(ptr noundef %89)
  %90 = getelementptr inbounds { ptr, i32 }, ptr %tmp, i32 0, i32 0
  %91 = extractvalue { ptr, i32 } %call191, 0
  store ptr %91, ptr %90, align 8
  %92 = getelementptr inbounds { ptr, i32 }, ptr %tmp, i32 0, i32 1
  %93 = extractvalue { ptr, i32 } %call191, 1
  store i32 %93, ptr %92, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %substr, ptr align 8 %tmp, i64 16, i1 false)
  %call192 = call ptr @Symbol_find(ptr noundef %substr)
  store ptr %call192, ptr @yylval, align 8
  store i32 260, ptr %retval, align 4
  br label %return

yy47:                                             ; preds = %if.then30, %if.then25
  %94 = load ptr, ptr %cursor, align 8
  %incdec.ptr193 = getelementptr inbounds i8, ptr %94, i32 1
  store ptr %incdec.ptr193, ptr %cursor, align 8
  %95 = load i8, ptr %incdec.ptr193, align 1
  store i8 %95, ptr %yych, align 1
  br label %yy56

yy48:                                             ; preds = %if.end225
  br label %scan

yy49:                                             ; preds = %if.end26
  %96 = load ptr, ptr %cursor, align 8
  %incdec.ptr194 = getelementptr inbounds i8, ptr %96, i32 1
  store ptr %incdec.ptr194, ptr %cursor, align 8
  %97 = load i8, ptr %incdec.ptr194, align 1
  store i8 %97, ptr %yych, align 1
  br label %yy50

yy50:                                             ; preds = %yy49
  %98 = load ptr, ptr %cursor, align 8
  %99 = load ptr, ptr %s.addr, align 8
  %eof = getelementptr inbounds %struct.Scanner, ptr %99, i32 0, i32 8
  %100 = load ptr, ptr %eof, align 8
  %cmp195 = icmp eq ptr %98, %100
  br i1 %cmp195, label %if.then197, label %if.end199

if.then197:                                       ; preds = %yy50
  %101 = load ptr, ptr %cursor, align 8
  %102 = load ptr, ptr %s.addr, align 8
  %cur198 = getelementptr inbounds %struct.Scanner, ptr %102, i32 0, i32 4
  store ptr %101, ptr %cur198, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end199:                                        ; preds = %yy50
  %103 = load ptr, ptr %cursor, align 8
  %104 = load ptr, ptr %s.addr, align 8
  %pos200 = getelementptr inbounds %struct.Scanner, ptr %104, i32 0, i32 5
  store ptr %103, ptr %pos200, align 8
  %105 = load ptr, ptr %s.addr, align 8
  %cline201 = getelementptr inbounds %struct.Scanner, ptr %105, i32 0, i32 11
  %106 = load i32, ptr %cline201, align 8
  %inc = add i32 %106, 1
  store i32 %inc, ptr %cline201, align 8
  br label %scan

yy51:                                             ; preds = %if.then71
  %107 = load ptr, ptr %cursor, align 8
  %incdec.ptr202 = getelementptr inbounds i8, ptr %107, i32 1
  store ptr %incdec.ptr202, ptr %cursor, align 8
  %108 = load i8, ptr %incdec.ptr202, align 1
  store i8 %108, ptr %yych, align 1
  br label %yy52

yy52:                                             ; preds = %yy51
  %109 = load ptr, ptr %cursor, align 8
  %110 = load ptr, ptr %s.addr, align 8
  %cur203 = getelementptr inbounds %struct.Scanner, ptr %110, i32 0, i32 4
  store ptr %109, ptr %cur203, align 8
  %call204 = call ptr @mkDot()
  store ptr %call204, ptr @yylval, align 8
  store i32 262, ptr %retval, align 4
  br label %return

yy53:                                             ; preds = %if.end133, %if.end117, %if.end97, %if.end86, %if.then66, %if.then45, %if.then35, %if.then20
  %111 = load ptr, ptr %cursor, align 8
  %incdec.ptr205 = getelementptr inbounds i8, ptr %111, i32 1
  store ptr %incdec.ptr205, ptr %cursor, align 8
  %112 = load i8, ptr %incdec.ptr205, align 1
  store i8 %112, ptr %yych, align 1
  br label %yy54

yy54:                                             ; preds = %yy53
  %113 = load ptr, ptr @stderr, align 8
  %114 = load ptr, ptr %s.addr, align 8
  %tok206 = getelementptr inbounds %struct.Scanner, ptr %114, i32 0, i32 2
  %115 = load ptr, ptr %tok206, align 8
  %116 = load i8, ptr %115, align 1
  %conv207 = zext i8 %116 to i32
  %call208 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %113, ptr noundef @.str.4, i32 noundef %conv207)
  br label %scan

yy55:                                             ; preds = %if.then224, %if.then219
  %117 = load ptr, ptr %cursor, align 8
  %incdec.ptr209 = getelementptr inbounds i8, ptr %117, i32 1
  store ptr %incdec.ptr209, ptr %cursor, align 8
  %118 = load ptr, ptr %s.addr, align 8
  %lim210 = getelementptr inbounds %struct.Scanner, ptr %118, i32 0, i32 6
  %119 = load ptr, ptr %lim210, align 8
  %120 = load ptr, ptr %cursor, align 8
  %cmp211 = icmp eq ptr %119, %120
  br i1 %cmp211, label %if.then213, label %if.end215

if.then213:                                       ; preds = %yy55
  %121 = load ptr, ptr %s.addr, align 8
  %122 = load ptr, ptr %cursor, align 8
  %call214 = call ptr @fill(ptr noundef %121, ptr noundef %122)
  store ptr %call214, ptr %cursor, align 8
  br label %if.end215

if.end215:                                        ; preds = %if.then213, %yy55
  %123 = load ptr, ptr %cursor, align 8
  %124 = load i8, ptr %123, align 1
  store i8 %124, ptr %yych, align 1
  br label %yy56

yy56:                                             ; preds = %if.end215, %yy47
  %125 = load i8, ptr %yych, align 1
  %conv216 = zext i8 %125 to i32
  %cmp217 = icmp eq i32 %conv216, 9
  br i1 %cmp217, label %if.then219, label %if.end220

if.then219:                                       ; preds = %yy56
  br label %yy55

if.end220:                                        ; preds = %yy56
  %126 = load i8, ptr %yych, align 1
  %conv221 = zext i8 %126 to i32
  %cmp222 = icmp eq i32 %conv221, 32
  br i1 %cmp222, label %if.then224, label %if.end225

if.then224:                                       ; preds = %if.end220
  br label %yy55

if.end225:                                        ; preds = %if.end220
  br label %yy48

yy57:                                             ; preds = %if.then261, %if.then251, %if.then245
  %127 = load ptr, ptr %cursor, align 8
  %incdec.ptr226 = getelementptr inbounds i8, ptr %127, i32 1
  store ptr %incdec.ptr226, ptr %cursor, align 8
  %128 = load ptr, ptr %s.addr, align 8
  %lim227 = getelementptr inbounds %struct.Scanner, ptr %128, i32 0, i32 6
  %129 = load ptr, ptr %lim227, align 8
  %130 = load ptr, ptr %cursor, align 8
  %cmp228 = icmp eq ptr %129, %130
  br i1 %cmp228, label %if.then230, label %if.end232

if.then230:                                       ; preds = %yy57
  %131 = load ptr, ptr %s.addr, align 8
  %132 = load ptr, ptr %cursor, align 8
  %call231 = call ptr @fill(ptr noundef %131, ptr noundef %132)
  store ptr %call231, ptr %cursor, align 8
  br label %if.end232

if.end232:                                        ; preds = %if.then230, %yy57
  %133 = load ptr, ptr %cursor, align 8
  %134 = load i8, ptr %133, align 1
  store i8 %134, ptr %yych, align 1
  br label %yy58

yy58:                                             ; preds = %if.end232, %yy45
  %135 = load i8, ptr %yych, align 1
  %conv233 = zext i8 %135 to i32
  %cmp234 = icmp sle i32 %conv233, 64
  br i1 %cmp234, label %if.then236, label %if.else247

if.then236:                                       ; preds = %yy58
  %136 = load i8, ptr %yych, align 1
  %conv237 = zext i8 %136 to i32
  %cmp238 = icmp sle i32 %conv237, 47
  br i1 %cmp238, label %if.then240, label %if.end241

if.then240:                                       ; preds = %if.then236
  br label %yy46

if.end241:                                        ; preds = %if.then236
  %137 = load i8, ptr %yych, align 1
  %conv242 = zext i8 %137 to i32
  %cmp243 = icmp sle i32 %conv242, 57
  br i1 %cmp243, label %if.then245, label %if.end246

if.then245:                                       ; preds = %if.end241
  br label %yy57

if.end246:                                        ; preds = %if.end241
  br label %yy46

if.else247:                                       ; preds = %yy58
  %138 = load i8, ptr %yych, align 1
  %conv248 = zext i8 %138 to i32
  %cmp249 = icmp sle i32 %conv248, 90
  br i1 %cmp249, label %if.then251, label %if.end252

if.then251:                                       ; preds = %if.else247
  br label %yy57

if.end252:                                        ; preds = %if.else247
  %139 = load i8, ptr %yych, align 1
  %conv253 = zext i8 %139 to i32
  %cmp254 = icmp sle i32 %conv253, 96
  br i1 %cmp254, label %if.then256, label %if.end257

if.then256:                                       ; preds = %if.end252
  br label %yy46

if.end257:                                        ; preds = %if.end252
  %140 = load i8, ptr %yych, align 1
  %conv258 = zext i8 %140 to i32
  %cmp259 = icmp sle i32 %conv258, 122
  br i1 %cmp259, label %if.then261, label %if.end262

if.then261:                                       ; preds = %if.end257
  br label %yy57

if.end262:                                        ; preds = %if.end257
  br label %yy46

yy59:                                             ; preds = %if.end332, %if.end289, %if.then277
  %141 = load ptr, ptr %cursor, align 8
  %incdec.ptr263 = getelementptr inbounds i8, ptr %141, i32 1
  store ptr %incdec.ptr263, ptr %cursor, align 8
  %142 = load ptr, ptr %s.addr, align 8
  %lim264 = getelementptr inbounds %struct.Scanner, ptr %142, i32 0, i32 6
  %143 = load ptr, ptr %lim264, align 8
  %144 = load ptr, ptr %cursor, align 8
  %cmp265 = icmp eq ptr %143, %144
  br i1 %cmp265, label %if.then267, label %if.end269

if.then267:                                       ; preds = %yy59
  %145 = load ptr, ptr %s.addr, align 8
  %146 = load ptr, ptr %cursor, align 8
  %call268 = call ptr @fill(ptr noundef %145, ptr noundef %146)
  store ptr %call268, ptr %cursor, align 8
  br label %if.end269

if.end269:                                        ; preds = %if.then267, %yy59
  %147 = load ptr, ptr %cursor, align 8
  %148 = load i8, ptr %147, align 1
  store i8 %148, ptr %yych, align 1
  br label %yy60

yy60:                                             ; preds = %if.end269, %if.end186
  %149 = load i8, ptr %yych, align 1
  %conv270 = zext i8 %149 to i32
  %cmp271 = icmp sle i32 %conv270, 91
  br i1 %cmp271, label %if.then273, label %if.else279

if.then273:                                       ; preds = %yy60
  %150 = load i8, ptr %yych, align 1
  %conv274 = zext i8 %150 to i32
  %cmp275 = icmp ne i32 %conv274, 10
  br i1 %cmp275, label %if.then277, label %if.end278

if.then277:                                       ; preds = %if.then273
  br label %yy59

if.end278:                                        ; preds = %if.then273
  br label %yy61

if.else279:                                       ; preds = %yy60
  %151 = load i8, ptr %yych, align 1
  %conv280 = zext i8 %151 to i32
  %cmp281 = icmp sle i32 %conv280, 92
  br i1 %cmp281, label %if.then283, label %if.end284

if.then283:                                       ; preds = %if.else279
  br label %yy64

if.end284:                                        ; preds = %if.else279
  %152 = load i8, ptr %yych, align 1
  %conv285 = zext i8 %152 to i32
  %cmp286 = icmp sle i32 %conv285, 93
  br i1 %cmp286, label %if.then288, label %if.end289

if.then288:                                       ; preds = %if.end284
  br label %yy65

if.end289:                                        ; preds = %if.end284
  br label %yy59

yy61:                                             ; preds = %if.then514, %if.then504, %if.then474, %if.end464, %if.then435, %if.then412, %if.then391, %if.then368, %if.then347, %if.then331, %if.then308, %if.end278
  %153 = load ptr, ptr %s.addr, align 8
  %ptr290 = getelementptr inbounds %struct.Scanner, ptr %153, i32 0, i32 3
  %154 = load ptr, ptr %ptr290, align 8
  store ptr %154, ptr %cursor, align 8
  %155 = load i32, ptr %yyaccept, align 4
  switch i32 %155, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb291
    i32 2, label %sw.bb292
    i32 3, label %sw.bb293
  ]

sw.bb:                                            ; preds = %yy61
  br label %yy32

sw.bb291:                                         ; preds = %yy61
  br label %yy38

sw.bb292:                                         ; preds = %yy61
  br label %yy40

sw.bb293:                                         ; preds = %yy61
  br label %yy42

sw.epilog:                                        ; preds = %yy61
  br label %yy62

yy62:                                             ; preds = %if.end348, %if.end320, %if.end309, %sw.epilog, %if.then185
  %156 = load ptr, ptr %cursor, align 8
  %incdec.ptr294 = getelementptr inbounds i8, ptr %156, i32 1
  store ptr %incdec.ptr294, ptr %cursor, align 8
  %157 = load ptr, ptr %s.addr, align 8
  %lim295 = getelementptr inbounds %struct.Scanner, ptr %157, i32 0, i32 6
  %158 = load ptr, ptr %lim295, align 8
  %159 = load ptr, ptr %cursor, align 8
  %cmp296 = icmp eq ptr %158, %159
  br i1 %cmp296, label %if.then298, label %if.end300

if.then298:                                       ; preds = %yy62
  %160 = load ptr, ptr %s.addr, align 8
  %161 = load ptr, ptr %cursor, align 8
  %call299 = call ptr @fill(ptr noundef %160, ptr noundef %161)
  store ptr %call299, ptr %cursor, align 8
  br label %if.end300

if.end300:                                        ; preds = %if.then298, %yy62
  %162 = load ptr, ptr %cursor, align 8
  %163 = load i8, ptr %162, align 1
  store i8 %163, ptr %yych, align 1
  br label %yy63

yy63:                                             ; preds = %if.end300
  %164 = load i8, ptr %yych, align 1
  %conv301 = zext i8 %164 to i32
  %cmp302 = icmp sle i32 %conv301, 91
  br i1 %cmp302, label %if.then304, label %if.else310

if.then304:                                       ; preds = %yy63
  %165 = load i8, ptr %yych, align 1
  %conv305 = zext i8 %165 to i32
  %cmp306 = icmp eq i32 %conv305, 10
  br i1 %cmp306, label %if.then308, label %if.end309

if.then308:                                       ; preds = %if.then304
  br label %yy61

if.end309:                                        ; preds = %if.then304
  br label %yy62

if.else310:                                       ; preds = %yy63
  %166 = load i8, ptr %yych, align 1
  %conv311 = zext i8 %166 to i32
  %cmp312 = icmp sle i32 %conv311, 92
  br i1 %cmp312, label %if.then314, label %if.end315

if.then314:                                       ; preds = %if.else310
  br label %yy67

if.end315:                                        ; preds = %if.else310
  %167 = load i8, ptr %yych, align 1
  %conv316 = zext i8 %167 to i32
  %cmp317 = icmp sle i32 %conv316, 93
  br i1 %cmp317, label %if.then319, label %if.end320

if.then319:                                       ; preds = %if.end315
  br label %yy68

if.end320:                                        ; preds = %if.end315
  br label %yy62

yy64:                                             ; preds = %if.then283
  %168 = load ptr, ptr %cursor, align 8
  %incdec.ptr321 = getelementptr inbounds i8, ptr %168, i32 1
  store ptr %incdec.ptr321, ptr %cursor, align 8
  %169 = load ptr, ptr %s.addr, align 8
  %lim322 = getelementptr inbounds %struct.Scanner, ptr %169, i32 0, i32 6
  %170 = load ptr, ptr %lim322, align 8
  %171 = load ptr, ptr %cursor, align 8
  %cmp323 = icmp eq ptr %170, %171
  br i1 %cmp323, label %if.then325, label %if.end327

if.then325:                                       ; preds = %yy64
  %172 = load ptr, ptr %s.addr, align 8
  %173 = load ptr, ptr %cursor, align 8
  %call326 = call ptr @fill(ptr noundef %172, ptr noundef %173)
  store ptr %call326, ptr %cursor, align 8
  br label %if.end327

if.end327:                                        ; preds = %if.then325, %yy64
  %174 = load ptr, ptr %cursor, align 8
  %175 = load i8, ptr %174, align 1
  store i8 %175, ptr %yych, align 1
  %176 = load i8, ptr %yych, align 1
  %conv328 = zext i8 %176 to i32
  %cmp329 = icmp eq i32 %conv328, 10
  br i1 %cmp329, label %if.then331, label %if.end332

if.then331:                                       ; preds = %if.end327
  br label %yy61

if.end332:                                        ; preds = %if.end327
  br label %yy59

yy65:                                             ; preds = %if.then288
  %177 = load ptr, ptr %cursor, align 8
  %incdec.ptr333 = getelementptr inbounds i8, ptr %177, i32 1
  store ptr %incdec.ptr333, ptr %cursor, align 8
  %178 = load i8, ptr %incdec.ptr333, align 1
  store i8 %178, ptr %yych, align 1
  br label %yy66

yy66:                                             ; preds = %yy65
  %179 = load ptr, ptr %cursor, align 8
  %180 = load ptr, ptr %s.addr, align 8
  %cur334 = getelementptr inbounds %struct.Scanner, ptr %180, i32 0, i32 4
  store ptr %179, ptr %cur334, align 8
  %181 = load ptr, ptr %s.addr, align 8
  %call335 = call { ptr, i32 } @Scanner_token(ptr noundef %181)
  %182 = getelementptr inbounds { ptr, i32 }, ptr %agg.tmp, i32 0, i32 0
  %183 = extractvalue { ptr, i32 } %call335, 0
  store ptr %183, ptr %182, align 8
  %184 = getelementptr inbounds { ptr, i32 }, ptr %agg.tmp, i32 0, i32 1
  %185 = extractvalue { ptr, i32 } %call335, 1
  store i32 %185, ptr %184, align 8
  %186 = getelementptr inbounds { ptr, i32 }, ptr %agg.tmp, i32 0, i32 0
  %187 = load ptr, ptr %186, align 8
  %188 = getelementptr inbounds { ptr, i32 }, ptr %agg.tmp, i32 0, i32 1
  %189 = load i32, ptr %188, align 8
  %call336 = call ptr @ranToRE(ptr %187, i32 %189)
  store ptr %call336, ptr @yylval, align 8
  store i32 262, ptr %retval, align 4
  br label %return

yy67:                                             ; preds = %if.then314
  %190 = load ptr, ptr %cursor, align 8
  %incdec.ptr337 = getelementptr inbounds i8, ptr %190, i32 1
  store ptr %incdec.ptr337, ptr %cursor, align 8
  %191 = load ptr, ptr %s.addr, align 8
  %lim338 = getelementptr inbounds %struct.Scanner, ptr %191, i32 0, i32 6
  %192 = load ptr, ptr %lim338, align 8
  %193 = load ptr, ptr %cursor, align 8
  %cmp339 = icmp eq ptr %192, %193
  br i1 %cmp339, label %if.then341, label %if.end343

if.then341:                                       ; preds = %yy67
  %194 = load ptr, ptr %s.addr, align 8
  %195 = load ptr, ptr %cursor, align 8
  %call342 = call ptr @fill(ptr noundef %194, ptr noundef %195)
  store ptr %call342, ptr %cursor, align 8
  br label %if.end343

if.end343:                                        ; preds = %if.then341, %yy67
  %196 = load ptr, ptr %cursor, align 8
  %197 = load i8, ptr %196, align 1
  store i8 %197, ptr %yych, align 1
  %198 = load i8, ptr %yych, align 1
  %conv344 = zext i8 %198 to i32
  %cmp345 = icmp eq i32 %conv344, 10
  br i1 %cmp345, label %if.then347, label %if.end348

if.then347:                                       ; preds = %if.end343
  br label %yy61

if.end348:                                        ; preds = %if.end343
  br label %yy62

yy68:                                             ; preds = %if.then319
  %199 = load ptr, ptr %cursor, align 8
  %incdec.ptr349 = getelementptr inbounds i8, ptr %199, i32 1
  store ptr %incdec.ptr349, ptr %cursor, align 8
  %200 = load i8, ptr %incdec.ptr349, align 1
  store i8 %200, ptr %yych, align 1
  br label %yy69

yy69:                                             ; preds = %yy68
  %201 = load ptr, ptr %cursor, align 8
  %202 = load ptr, ptr %s.addr, align 8
  %cur350 = getelementptr inbounds %struct.Scanner, ptr %202, i32 0, i32 4
  store ptr %201, ptr %cur350, align 8
  %203 = load ptr, ptr %s.addr, align 8
  %call352 = call { ptr, i32 } @Scanner_token(ptr noundef %203)
  %204 = getelementptr inbounds { ptr, i32 }, ptr %agg.tmp351, i32 0, i32 0
  %205 = extractvalue { ptr, i32 } %call352, 0
  store ptr %205, ptr %204, align 8
  %206 = getelementptr inbounds { ptr, i32 }, ptr %agg.tmp351, i32 0, i32 1
  %207 = extractvalue { ptr, i32 } %call352, 1
  store i32 %207, ptr %206, align 8
  %208 = getelementptr inbounds { ptr, i32 }, ptr %agg.tmp351, i32 0, i32 0
  %209 = load ptr, ptr %208, align 8
  %210 = getelementptr inbounds { ptr, i32 }, ptr %agg.tmp351, i32 0, i32 1
  %211 = load i32, ptr %210, align 8
  %call353 = call ptr @invToRE(ptr %209, i32 %211)
  store ptr %call353, ptr @yylval, align 8
  store i32 262, ptr %retval, align 4
  br label %return

yy70:                                             ; preds = %if.end392, %if.then379, %if.end369
  %212 = load ptr, ptr %cursor, align 8
  %incdec.ptr354 = getelementptr inbounds i8, ptr %212, i32 1
  store ptr %incdec.ptr354, ptr %cursor, align 8
  %213 = load ptr, ptr %s.addr, align 8
  %lim355 = getelementptr inbounds %struct.Scanner, ptr %213, i32 0, i32 6
  %214 = load ptr, ptr %lim355, align 8
  %215 = load ptr, ptr %cursor, align 8
  %cmp356 = icmp eq ptr %214, %215
  br i1 %cmp356, label %if.then358, label %if.end360

if.then358:                                       ; preds = %yy70
  %216 = load ptr, ptr %s.addr, align 8
  %217 = load ptr, ptr %cursor, align 8
  %call359 = call ptr @fill(ptr noundef %216, ptr noundef %217)
  store ptr %call359, ptr %cursor, align 8
  br label %if.end360

if.end360:                                        ; preds = %if.then358, %yy70
  %218 = load ptr, ptr %cursor, align 8
  %219 = load i8, ptr %218, align 1
  store i8 %219, ptr %yych, align 1
  br label %yy71

yy71:                                             ; preds = %if.end360, %if.then173
  %220 = load i8, ptr %yych, align 1
  %conv361 = zext i8 %220 to i32
  %cmp362 = icmp sle i32 %conv361, 38
  br i1 %cmp362, label %if.then364, label %if.else370

if.then364:                                       ; preds = %yy71
  %221 = load i8, ptr %yych, align 1
  %conv365 = zext i8 %221 to i32
  %cmp366 = icmp eq i32 %conv365, 10
  br i1 %cmp366, label %if.then368, label %if.end369

if.then368:                                       ; preds = %if.then364
  br label %yy61

if.end369:                                        ; preds = %if.then364
  br label %yy70

if.else370:                                       ; preds = %yy71
  %222 = load i8, ptr %yych, align 1
  %conv371 = zext i8 %222 to i32
  %cmp372 = icmp sle i32 %conv371, 39
  br i1 %cmp372, label %if.then374, label %if.end375

if.then374:                                       ; preds = %if.else370
  br label %yy73

if.end375:                                        ; preds = %if.else370
  %223 = load i8, ptr %yych, align 1
  %conv376 = zext i8 %223 to i32
  %cmp377 = icmp ne i32 %conv376, 92
  br i1 %cmp377, label %if.then379, label %if.end380

if.then379:                                       ; preds = %if.end375
  br label %yy70

if.end380:                                        ; preds = %if.end375
  br label %yy72

yy72:                                             ; preds = %if.end380
  %224 = load ptr, ptr %cursor, align 8
  %incdec.ptr381 = getelementptr inbounds i8, ptr %224, i32 1
  store ptr %incdec.ptr381, ptr %cursor, align 8
  %225 = load ptr, ptr %s.addr, align 8
  %lim382 = getelementptr inbounds %struct.Scanner, ptr %225, i32 0, i32 6
  %226 = load ptr, ptr %lim382, align 8
  %227 = load ptr, ptr %cursor, align 8
  %cmp383 = icmp eq ptr %226, %227
  br i1 %cmp383, label %if.then385, label %if.end387

if.then385:                                       ; preds = %yy72
  %228 = load ptr, ptr %s.addr, align 8
  %229 = load ptr, ptr %cursor, align 8
  %call386 = call ptr @fill(ptr noundef %228, ptr noundef %229)
  store ptr %call386, ptr %cursor, align 8
  br label %if.end387

if.end387:                                        ; preds = %if.then385, %yy72
  %230 = load ptr, ptr %cursor, align 8
  %231 = load i8, ptr %230, align 1
  store i8 %231, ptr %yych, align 1
  %232 = load i8, ptr %yych, align 1
  %conv388 = zext i8 %232 to i32
  %cmp389 = icmp eq i32 %conv388, 10
  br i1 %cmp389, label %if.then391, label %if.end392

if.then391:                                       ; preds = %if.end387
  br label %yy61

if.end392:                                        ; preds = %if.end387
  br label %yy70

yy73:                                             ; preds = %if.then374
  %233 = load ptr, ptr %cursor, align 8
  %incdec.ptr393 = getelementptr inbounds i8, ptr %233, i32 1
  store ptr %incdec.ptr393, ptr %cursor, align 8
  %234 = load i8, ptr %incdec.ptr393, align 1
  store i8 %234, ptr %yych, align 1
  br label %yy74

yy74:                                             ; preds = %yy73
  %235 = load ptr, ptr %cursor, align 8
  %236 = load ptr, ptr %s.addr, align 8
  %cur394 = getelementptr inbounds %struct.Scanner, ptr %236, i32 0, i32 4
  store ptr %235, ptr %cur394, align 8
  %237 = load ptr, ptr %s.addr, align 8
  %call396 = call { ptr, i32 } @Scanner_token(ptr noundef %237)
  %238 = getelementptr inbounds { ptr, i32 }, ptr %agg.tmp395, i32 0, i32 0
  %239 = extractvalue { ptr, i32 } %call396, 0
  store ptr %239, ptr %238, align 8
  %240 = getelementptr inbounds { ptr, i32 }, ptr %agg.tmp395, i32 0, i32 1
  %241 = extractvalue { ptr, i32 } %call396, 1
  store i32 %241, ptr %240, align 8
  %242 = getelementptr inbounds { ptr, i32 }, ptr %agg.tmp395, i32 0, i32 0
  %243 = load ptr, ptr %242, align 8
  %244 = getelementptr inbounds { ptr, i32 }, ptr %agg.tmp395, i32 0, i32 1
  %245 = load i32, ptr %244, align 8
  %call397 = call ptr @strToCaseInsensitiveRE(ptr %243, i32 %245)
  store ptr %call397, ptr @yylval, align 8
  store i32 263, ptr %retval, align 4
  br label %return

yy75:                                             ; preds = %if.end436, %if.then423, %if.end413
  %246 = load ptr, ptr %cursor, align 8
  %incdec.ptr398 = getelementptr inbounds i8, ptr %246, i32 1
  store ptr %incdec.ptr398, ptr %cursor, align 8
  %247 = load ptr, ptr %s.addr, align 8
  %lim399 = getelementptr inbounds %struct.Scanner, ptr %247, i32 0, i32 6
  %248 = load ptr, ptr %lim399, align 8
  %249 = load ptr, ptr %cursor, align 8
  %cmp400 = icmp eq ptr %248, %249
  br i1 %cmp400, label %if.then402, label %if.end404

if.then402:                                       ; preds = %yy75
  %250 = load ptr, ptr %s.addr, align 8
  %251 = load ptr, ptr %cursor, align 8
  %call403 = call ptr @fill(ptr noundef %250, ptr noundef %251)
  store ptr %call403, ptr %cursor, align 8
  br label %if.end404

if.end404:                                        ; preds = %if.then402, %yy75
  %252 = load ptr, ptr %cursor, align 8
  %253 = load i8, ptr %252, align 1
  store i8 %253, ptr %yych, align 1
  br label %yy76

yy76:                                             ; preds = %if.end404, %if.then166
  %254 = load i8, ptr %yych, align 1
  %conv405 = zext i8 %254 to i32
  %cmp406 = icmp sle i32 %conv405, 33
  br i1 %cmp406, label %if.then408, label %if.else414

if.then408:                                       ; preds = %yy76
  %255 = load i8, ptr %yych, align 1
  %conv409 = zext i8 %255 to i32
  %cmp410 = icmp eq i32 %conv409, 10
  br i1 %cmp410, label %if.then412, label %if.end413

if.then412:                                       ; preds = %if.then408
  br label %yy61

if.end413:                                        ; preds = %if.then408
  br label %yy75

if.else414:                                       ; preds = %yy76
  %256 = load i8, ptr %yych, align 1
  %conv415 = zext i8 %256 to i32
  %cmp416 = icmp sle i32 %conv415, 34
  br i1 %cmp416, label %if.then418, label %if.end419

if.then418:                                       ; preds = %if.else414
  br label %yy78

if.end419:                                        ; preds = %if.else414
  %257 = load i8, ptr %yych, align 1
  %conv420 = zext i8 %257 to i32
  %cmp421 = icmp ne i32 %conv420, 92
  br i1 %cmp421, label %if.then423, label %if.end424

if.then423:                                       ; preds = %if.end419
  br label %yy75

if.end424:                                        ; preds = %if.end419
  br label %yy77

yy77:                                             ; preds = %if.end424
  %258 = load ptr, ptr %cursor, align 8
  %incdec.ptr425 = getelementptr inbounds i8, ptr %258, i32 1
  store ptr %incdec.ptr425, ptr %cursor, align 8
  %259 = load ptr, ptr %s.addr, align 8
  %lim426 = getelementptr inbounds %struct.Scanner, ptr %259, i32 0, i32 6
  %260 = load ptr, ptr %lim426, align 8
  %261 = load ptr, ptr %cursor, align 8
  %cmp427 = icmp eq ptr %260, %261
  br i1 %cmp427, label %if.then429, label %if.end431

if.then429:                                       ; preds = %yy77
  %262 = load ptr, ptr %s.addr, align 8
  %263 = load ptr, ptr %cursor, align 8
  %call430 = call ptr @fill(ptr noundef %262, ptr noundef %263)
  store ptr %call430, ptr %cursor, align 8
  br label %if.end431

if.end431:                                        ; preds = %if.then429, %yy77
  %264 = load ptr, ptr %cursor, align 8
  %265 = load i8, ptr %264, align 1
  store i8 %265, ptr %yych, align 1
  %266 = load i8, ptr %yych, align 1
  %conv432 = zext i8 %266 to i32
  %cmp433 = icmp eq i32 %conv432, 10
  br i1 %cmp433, label %if.then435, label %if.end436

if.then435:                                       ; preds = %if.end431
  br label %yy61

if.end436:                                        ; preds = %if.end431
  br label %yy75

yy78:                                             ; preds = %if.then418
  %267 = load ptr, ptr %cursor, align 8
  %incdec.ptr437 = getelementptr inbounds i8, ptr %267, i32 1
  store ptr %incdec.ptr437, ptr %cursor, align 8
  %268 = load i8, ptr %incdec.ptr437, align 1
  store i8 %268, ptr %yych, align 1
  br label %yy79

yy79:                                             ; preds = %yy78
  %269 = load ptr, ptr %cursor, align 8
  %270 = load ptr, ptr %s.addr, align 8
  %cur438 = getelementptr inbounds %struct.Scanner, ptr %270, i32 0, i32 4
  store ptr %269, ptr %cur438, align 8
  %271 = load ptr, ptr %s.addr, align 8
  %call440 = call { ptr, i32 } @Scanner_token(ptr noundef %271)
  %272 = getelementptr inbounds { ptr, i32 }, ptr %agg.tmp439, i32 0, i32 0
  %273 = extractvalue { ptr, i32 } %call440, 0
  store ptr %273, ptr %272, align 8
  %274 = getelementptr inbounds { ptr, i32 }, ptr %agg.tmp439, i32 0, i32 1
  %275 = extractvalue { ptr, i32 } %call440, 1
  store i32 %275, ptr %274, align 8
  %276 = getelementptr inbounds { ptr, i32 }, ptr %agg.tmp439, i32 0, i32 0
  %277 = load ptr, ptr %276, align 8
  %278 = getelementptr inbounds { ptr, i32 }, ptr %agg.tmp439, i32 0, i32 1
  %279 = load i32, ptr %278, align 8
  %call441 = call ptr @strToRE(ptr %277, i32 %279)
  store ptr %call441, ptr @yylval, align 8
  store i32 263, ptr %retval, align 4
  br label %return

yy80:                                             ; preds = %if.then157
  %280 = load ptr, ptr %cursor, align 8
  %incdec.ptr442 = getelementptr inbounds i8, ptr %280, i32 1
  store ptr %incdec.ptr442, ptr %cursor, align 8
  %281 = load i8, ptr %incdec.ptr442, align 1
  store i8 %281, ptr %yych, align 1
  br label %yy81

yy81:                                             ; preds = %yy80
  %282 = load ptr, ptr %cursor, align 8
  %283 = load ptr, ptr %s.addr, align 8
  %tok443 = getelementptr inbounds %struct.Scanner, ptr %283, i32 0, i32 2
  store ptr %282, ptr %tok443, align 8
  %284 = load ptr, ptr %cursor, align 8
  %285 = load ptr, ptr %s.addr, align 8
  %cur444 = getelementptr inbounds %struct.Scanner, ptr %285, i32 0, i32 4
  store ptr %284, ptr %cur444, align 8
  store i32 0, ptr %retval, align 4
  br label %return

yy82:                                             ; preds = %if.then148
  %286 = load ptr, ptr %cursor, align 8
  %incdec.ptr445 = getelementptr inbounds i8, ptr %286, i32 1
  store ptr %incdec.ptr445, ptr %cursor, align 8
  %287 = load i8, ptr %incdec.ptr445, align 1
  store i8 %287, ptr %yych, align 1
  br label %yy83

yy83:                                             ; preds = %yy82
  store i32 1, ptr %depth, align 4
  br label %comment

yy84:                                             ; preds = %if.then469, %if.then142
  %288 = load ptr, ptr %cursor, align 8
  %incdec.ptr446 = getelementptr inbounds i8, ptr %288, i32 1
  store ptr %incdec.ptr446, ptr %cursor, align 8
  %289 = load ptr, ptr %s.addr, align 8
  %lim447 = getelementptr inbounds %struct.Scanner, ptr %289, i32 0, i32 6
  %290 = load ptr, ptr %lim447, align 8
  %291 = load ptr, ptr %cursor, align 8
  %sub.ptr.lhs.cast448 = ptrtoint ptr %290 to i64
  %sub.ptr.rhs.cast449 = ptrtoint ptr %291 to i64
  %sub.ptr.sub450 = sub i64 %sub.ptr.lhs.cast448, %sub.ptr.rhs.cast449
  %cmp451 = icmp slt i64 %sub.ptr.sub450, 2
  br i1 %cmp451, label %if.then453, label %if.end455

if.then453:                                       ; preds = %yy84
  %292 = load ptr, ptr %s.addr, align 8
  %293 = load ptr, ptr %cursor, align 8
  %call454 = call ptr @fill(ptr noundef %292, ptr noundef %293)
  store ptr %call454, ptr %cursor, align 8
  br label %if.end455

if.end455:                                        ; preds = %if.then453, %yy84
  %294 = load ptr, ptr %cursor, align 8
  %295 = load i8, ptr %294, align 1
  store i8 %295, ptr %yych, align 1
  br label %yy85

yy85:                                             ; preds = %if.end455
  %296 = load i8, ptr %yych, align 1
  %conv456 = zext i8 %296 to i32
  %cmp457 = icmp sle i32 %conv456, 47
  br i1 %cmp457, label %if.then459, label %if.else465

if.then459:                                       ; preds = %yy85
  %297 = load i8, ptr %yych, align 1
  %conv460 = zext i8 %297 to i32
  %cmp461 = icmp eq i32 %conv460, 44
  br i1 %cmp461, label %if.then463, label %if.end464

if.then463:                                       ; preds = %if.then459
  br label %yy88

if.end464:                                        ; preds = %if.then459
  br label %yy61

if.else465:                                       ; preds = %yy85
  %298 = load i8, ptr %yych, align 1
  %conv466 = zext i8 %298 to i32
  %cmp467 = icmp sle i32 %conv466, 57
  br i1 %cmp467, label %if.then469, label %if.end470

if.then469:                                       ; preds = %if.else465
  br label %yy84

if.end470:                                        ; preds = %if.else465
  %299 = load i8, ptr %yych, align 1
  %conv471 = zext i8 %299 to i32
  %cmp472 = icmp ne i32 %conv471, 125
  br i1 %cmp472, label %if.then474, label %if.end475

if.then474:                                       ; preds = %if.end470
  br label %yy61

if.end475:                                        ; preds = %if.end470
  br label %yy86

yy86:                                             ; preds = %if.end475
  %300 = load ptr, ptr %cursor, align 8
  %incdec.ptr476 = getelementptr inbounds i8, ptr %300, i32 1
  store ptr %incdec.ptr476, ptr %cursor, align 8
  %301 = load i8, ptr %incdec.ptr476, align 1
  store i8 %301, ptr %yych, align 1
  br label %yy87

yy87:                                             ; preds = %yy86
  %302 = load ptr, ptr %s.addr, align 8
  %tok477 = getelementptr inbounds %struct.Scanner, ptr %302, i32 0, i32 2
  %303 = load ptr, ptr %tok477, align 8
  %add.ptr = getelementptr inbounds i8, ptr %303, i64 1
  %call478 = call i32 @atoi(ptr noundef %add.ptr) #9
  store i32 %call478, ptr getelementptr inbounds (%struct.extop, ptr @yylval, i32 0, i32 1), align 4
  %304 = load ptr, ptr %s.addr, align 8
  %tok479 = getelementptr inbounds %struct.Scanner, ptr %304, i32 0, i32 2
  %305 = load ptr, ptr %tok479, align 8
  %add.ptr480 = getelementptr inbounds i8, ptr %305, i64 1
  %call481 = call i32 @atoi(ptr noundef %add.ptr480) #9
  store i32 %call481, ptr getelementptr inbounds (%struct.extop, ptr @yylval, i32 0, i32 2), align 8
  %306 = load ptr, ptr %cursor, align 8
  %307 = load ptr, ptr %s.addr, align 8
  %cur482 = getelementptr inbounds %struct.Scanner, ptr %307, i32 0, i32 4
  store ptr %306, ptr %cur482, align 8
  store i32 258, ptr %retval, align 4
  br label %return

yy88:                                             ; preds = %if.then463
  %308 = load ptr, ptr %cursor, align 8
  %incdec.ptr483 = getelementptr inbounds i8, ptr %308, i32 1
  store ptr %incdec.ptr483, ptr %cursor, align 8
  %309 = load i8, ptr %incdec.ptr483, align 1
  store i8 %309, ptr %yych, align 1
  %310 = load i8, ptr %yych, align 1
  %conv484 = zext i8 %310 to i32
  %cmp485 = icmp ne i32 %conv484, 125
  br i1 %cmp485, label %if.then487, label %if.end488

if.then487:                                       ; preds = %yy88
  br label %yy92

if.end488:                                        ; preds = %yy88
  br label %yy89

yy89:                                             ; preds = %if.end488
  %311 = load ptr, ptr %cursor, align 8
  %incdec.ptr489 = getelementptr inbounds i8, ptr %311, i32 1
  store ptr %incdec.ptr489, ptr %cursor, align 8
  %312 = load i8, ptr %incdec.ptr489, align 1
  store i8 %312, ptr %yych, align 1
  br label %yy90

yy90:                                             ; preds = %yy89
  %313 = load ptr, ptr %s.addr, align 8
  %tok490 = getelementptr inbounds %struct.Scanner, ptr %313, i32 0, i32 2
  %314 = load ptr, ptr %tok490, align 8
  %add.ptr491 = getelementptr inbounds i8, ptr %314, i64 1
  %call492 = call i32 @atoi(ptr noundef %add.ptr491) #9
  store i32 %call492, ptr getelementptr inbounds (%struct.extop, ptr @yylval, i32 0, i32 1), align 4
  store i32 -1, ptr getelementptr inbounds (%struct.extop, ptr @yylval, i32 0, i32 2), align 8
  %315 = load ptr, ptr %cursor, align 8
  %316 = load ptr, ptr %s.addr, align 8
  %cur493 = getelementptr inbounds %struct.Scanner, ptr %316, i32 0, i32 4
  store ptr %315, ptr %cur493, align 8
  store i32 258, ptr %retval, align 4
  br label %return

yy91:                                             ; preds = %if.then509
  %317 = load ptr, ptr %cursor, align 8
  %incdec.ptr494 = getelementptr inbounds i8, ptr %317, i32 1
  store ptr %incdec.ptr494, ptr %cursor, align 8
  %318 = load ptr, ptr %s.addr, align 8
  %lim495 = getelementptr inbounds %struct.Scanner, ptr %318, i32 0, i32 6
  %319 = load ptr, ptr %lim495, align 8
  %320 = load ptr, ptr %cursor, align 8
  %cmp496 = icmp eq ptr %319, %320
  br i1 %cmp496, label %if.then498, label %if.end500

if.then498:                                       ; preds = %yy91
  %321 = load ptr, ptr %s.addr, align 8
  %322 = load ptr, ptr %cursor, align 8
  %call499 = call ptr @fill(ptr noundef %321, ptr noundef %322)
  store ptr %call499, ptr %cursor, align 8
  br label %if.end500

if.end500:                                        ; preds = %if.then498, %yy91
  %323 = load ptr, ptr %cursor, align 8
  %324 = load i8, ptr %323, align 1
  store i8 %324, ptr %yych, align 1
  br label %yy92

yy92:                                             ; preds = %if.end500, %if.then487
  %325 = load i8, ptr %yych, align 1
  %conv501 = zext i8 %325 to i32
  %cmp502 = icmp sle i32 %conv501, 47
  br i1 %cmp502, label %if.then504, label %if.end505

if.then504:                                       ; preds = %yy92
  br label %yy61

if.end505:                                        ; preds = %yy92
  %326 = load i8, ptr %yych, align 1
  %conv506 = zext i8 %326 to i32
  %cmp507 = icmp sle i32 %conv506, 57
  br i1 %cmp507, label %if.then509, label %if.end510

if.then509:                                       ; preds = %if.end505
  br label %yy91

if.end510:                                        ; preds = %if.end505
  %327 = load i8, ptr %yych, align 1
  %conv511 = zext i8 %327 to i32
  %cmp512 = icmp ne i32 %conv511, 125
  br i1 %cmp512, label %if.then514, label %if.end515

if.then514:                                       ; preds = %if.end510
  br label %yy61

if.end515:                                        ; preds = %if.end510
  br label %yy93

yy93:                                             ; preds = %if.end515
  %328 = load ptr, ptr %cursor, align 8
  %incdec.ptr516 = getelementptr inbounds i8, ptr %328, i32 1
  store ptr %incdec.ptr516, ptr %cursor, align 8
  %329 = load i8, ptr %incdec.ptr516, align 1
  store i8 %329, ptr %yych, align 1
  br label %yy94

yy94:                                             ; preds = %yy93
  %330 = load ptr, ptr %s.addr, align 8
  %tok517 = getelementptr inbounds %struct.Scanner, ptr %330, i32 0, i32 2
  %331 = load ptr, ptr %tok517, align 8
  %add.ptr518 = getelementptr inbounds i8, ptr %331, i64 1
  %call519 = call i32 @atoi(ptr noundef %add.ptr518) #9
  store i32 %call519, ptr getelementptr inbounds (%struct.extop, ptr @yylval, i32 0, i32 1), align 4
  %332 = load i32, ptr getelementptr inbounds (%struct.extop, ptr @yylval, i32 0, i32 1), align 4
  %333 = load ptr, ptr %s.addr, align 8
  %tok520 = getelementptr inbounds %struct.Scanner, ptr %333, i32 0, i32 2
  %334 = load ptr, ptr %tok520, align 8
  %call521 = call ptr @strchr(ptr noundef %334, i32 noundef 44) #9
  %add.ptr522 = getelementptr inbounds i8, ptr %call521, i64 1
  %call523 = call i32 @atoi(ptr noundef %add.ptr522) #9
  %cmp524 = icmp sgt i32 %332, %call523
  br i1 %cmp524, label %cond.true, label %cond.false

cond.true:                                        ; preds = %yy94
  %335 = load i32, ptr getelementptr inbounds (%struct.extop, ptr @yylval, i32 0, i32 1), align 4
  br label %cond.end

cond.false:                                       ; preds = %yy94
  %336 = load ptr, ptr %s.addr, align 8
  %tok526 = getelementptr inbounds %struct.Scanner, ptr %336, i32 0, i32 2
  %337 = load ptr, ptr %tok526, align 8
  %call527 = call ptr @strchr(ptr noundef %337, i32 noundef 44) #9
  %add.ptr528 = getelementptr inbounds i8, ptr %call527, i64 1
  %call529 = call i32 @atoi(ptr noundef %add.ptr528) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %335, %cond.true ], [ %call529, %cond.false ]
  store i32 %cond, ptr getelementptr inbounds (%struct.extop, ptr @yylval, i32 0, i32 2), align 8
  %338 = load ptr, ptr %cursor, align 8
  %339 = load ptr, ptr %s.addr, align 8
  %cur530 = getelementptr inbounds %struct.Scanner, ptr %339, i32 0, i32 4
  store ptr %338, ptr %cur530, align 8
  store i32 258, ptr %retval, align 4
  br label %return

code:                                             ; preds = %yy104, %if.end599, %yy100, %if.end591, %yy32
  br label %yy95

yy95:                                             ; preds = %code
  %340 = load ptr, ptr %s.addr, align 8
  %lim533 = getelementptr inbounds %struct.Scanner, ptr %340, i32 0, i32 6
  %341 = load ptr, ptr %lim533, align 8
  %342 = load ptr, ptr %cursor, align 8
  %sub.ptr.lhs.cast534 = ptrtoint ptr %341 to i64
  %sub.ptr.rhs.cast535 = ptrtoint ptr %342 to i64
  %sub.ptr.sub536 = sub i64 %sub.ptr.lhs.cast534, %sub.ptr.rhs.cast535
  %cmp537 = icmp slt i64 %sub.ptr.sub536, 2
  br i1 %cmp537, label %if.then539, label %if.end541

if.then539:                                       ; preds = %yy95
  %343 = load ptr, ptr %s.addr, align 8
  %344 = load ptr, ptr %cursor, align 8
  %call540 = call ptr @fill(ptr noundef %343, ptr noundef %344)
  store ptr %call540, ptr %cursor, align 8
  br label %if.end541

if.end541:                                        ; preds = %if.then539, %yy95
  %345 = load ptr, ptr %cursor, align 8
  %346 = load i8, ptr %345, align 1
  store i8 %346, ptr %yych531, align 1
  %347 = load i8, ptr %yych531, align 1
  %conv542 = zext i8 %347 to i32
  %cmp543 = icmp sle i32 %conv542, 38
  br i1 %cmp543, label %if.then545, label %if.else561

if.then545:                                       ; preds = %if.end541
  %348 = load i8, ptr %yych531, align 1
  %conv546 = zext i8 %348 to i32
  %cmp547 = icmp sle i32 %conv546, 10
  br i1 %cmp547, label %if.then549, label %if.else555

if.then549:                                       ; preds = %if.then545
  %349 = load i8, ptr %yych531, align 1
  %conv550 = zext i8 %349 to i32
  %cmp551 = icmp sle i32 %conv550, 9
  br i1 %cmp551, label %if.then553, label %if.end554

if.then553:                                       ; preds = %if.then549
  br label %yy103

if.end554:                                        ; preds = %if.then549
  br label %yy101

if.else555:                                       ; preds = %if.then545
  %350 = load i8, ptr %yych531, align 1
  %conv556 = zext i8 %350 to i32
  %cmp557 = icmp eq i32 %conv556, 34
  br i1 %cmp557, label %if.then559, label %if.end560

if.then559:                                       ; preds = %if.else555
  br label %yy105

if.end560:                                        ; preds = %if.else555
  br label %yy103

if.else561:                                       ; preds = %if.end541
  %351 = load i8, ptr %yych531, align 1
  %conv562 = zext i8 %351 to i32
  %cmp563 = icmp sle i32 %conv562, 123
  br i1 %cmp563, label %if.then565, label %if.else576

if.then565:                                       ; preds = %if.else561
  %352 = load i8, ptr %yych531, align 1
  %conv566 = zext i8 %352 to i32
  %cmp567 = icmp sle i32 %conv566, 39
  br i1 %cmp567, label %if.then569, label %if.end570

if.then569:                                       ; preds = %if.then565
  br label %yy106

if.end570:                                        ; preds = %if.then565
  %353 = load i8, ptr %yych531, align 1
  %conv571 = zext i8 %353 to i32
  %cmp572 = icmp sle i32 %conv571, 122
  br i1 %cmp572, label %if.then574, label %if.end575

if.then574:                                       ; preds = %if.end570
  br label %yy103

if.end575:                                        ; preds = %if.end570
  br label %yy99

if.else576:                                       ; preds = %if.else561
  %354 = load i8, ptr %yych531, align 1
  %conv577 = zext i8 %354 to i32
  %cmp578 = icmp ne i32 %conv577, 125
  br i1 %cmp578, label %if.then580, label %if.end581

if.then580:                                       ; preds = %if.else576
  br label %yy103

if.end581:                                        ; preds = %if.else576
  br label %yy97

yy97:                                             ; preds = %if.end581
  %355 = load ptr, ptr %cursor, align 8
  %incdec.ptr582 = getelementptr inbounds i8, ptr %355, i32 1
  store ptr %incdec.ptr582, ptr %cursor, align 8
  %356 = load i8, ptr %incdec.ptr582, align 1
  store i8 %356, ptr %yych531, align 1
  br label %yy98

yy98:                                             ; preds = %yy97
  %357 = load i32, ptr %depth, align 4
  %dec = add i32 %357, -1
  store i32 %dec, ptr %depth, align 4
  %cmp583 = icmp eq i32 %dec, 0
  br i1 %cmp583, label %if.then585, label %if.end591

if.then585:                                       ; preds = %yy98
  %358 = load ptr, ptr %cursor, align 8
  %359 = load ptr, ptr %s.addr, align 8
  %cur586 = getelementptr inbounds %struct.Scanner, ptr %359, i32 0, i32 4
  store ptr %358, ptr %cur586, align 8
  %360 = load ptr, ptr %s.addr, align 8
  %call588 = call { ptr, i32 } @Scanner_token(ptr noundef %360)
  %361 = getelementptr inbounds { ptr, i32 }, ptr %agg.tmp587, i32 0, i32 0
  %362 = extractvalue { ptr, i32 } %call588, 0
  store ptr %362, ptr %361, align 8
  %363 = getelementptr inbounds { ptr, i32 }, ptr %agg.tmp587, i32 0, i32 1
  %364 = extractvalue { ptr, i32 } %call588, 1
  store i32 %364, ptr %363, align 8
  %365 = load ptr, ptr %s.addr, align 8
  %tline589 = getelementptr inbounds %struct.Scanner, ptr %365, i32 0, i32 10
  %366 = load i32, ptr %tline589, align 4
  %367 = getelementptr inbounds { ptr, i32 }, ptr %agg.tmp587, i32 0, i32 0
  %368 = load ptr, ptr %367, align 8
  %369 = getelementptr inbounds { ptr, i32 }, ptr %agg.tmp587, i32 0, i32 1
  %370 = load i32, ptr %369, align 8
  %call590 = call ptr @Token_new(ptr %368, i32 %370, i32 noundef %366)
  store ptr %call590, ptr @yylval, align 8
  store i32 261, ptr %retval, align 4
  br label %return

if.end591:                                        ; preds = %yy98
  br label %code

yy99:                                             ; preds = %if.end575
  %371 = load ptr, ptr %cursor, align 8
  %incdec.ptr592 = getelementptr inbounds i8, ptr %371, i32 1
  store ptr %incdec.ptr592, ptr %cursor, align 8
  %372 = load i8, ptr %incdec.ptr592, align 1
  store i8 %372, ptr %yych531, align 1
  br label %yy100

yy100:                                            ; preds = %yy99
  %373 = load i32, ptr %depth, align 4
  %inc593 = add i32 %373, 1
  store i32 %inc593, ptr %depth, align 4
  br label %code

yy101:                                            ; preds = %if.end554
  %374 = load ptr, ptr %cursor, align 8
  %incdec.ptr594 = getelementptr inbounds i8, ptr %374, i32 1
  store ptr %incdec.ptr594, ptr %cursor, align 8
  %375 = load i8, ptr %incdec.ptr594, align 1
  store i8 %375, ptr %yych531, align 1
  br label %yy102

yy102:                                            ; preds = %yy101
  %376 = load ptr, ptr %cursor, align 8
  %377 = load ptr, ptr %s.addr, align 8
  %eof595 = getelementptr inbounds %struct.Scanner, ptr %377, i32 0, i32 8
  %378 = load ptr, ptr %eof595, align 8
  %cmp596 = icmp eq ptr %376, %378
  br i1 %cmp596, label %if.then598, label %if.end599

if.then598:                                       ; preds = %yy102
  %379 = load ptr, ptr %s.addr, align 8
  call void @Scanner_fatal(ptr noundef %379, ptr noundef @.str.5)
  br label %if.end599

if.end599:                                        ; preds = %if.then598, %yy102
  %380 = load ptr, ptr %cursor, align 8
  %381 = load ptr, ptr %s.addr, align 8
  %pos600 = getelementptr inbounds %struct.Scanner, ptr %381, i32 0, i32 5
  store ptr %380, ptr %pos600, align 8
  %382 = load ptr, ptr %s.addr, align 8
  %cline601 = getelementptr inbounds %struct.Scanner, ptr %382, i32 0, i32 11
  %383 = load i32, ptr %cline601, align 8
  %inc602 = add i32 %383, 1
  store i32 %inc602, ptr %cline601, align 8
  br label %code

yy103:                                            ; preds = %if.then680, %if.then638, %if.then580, %if.then574, %if.end560, %if.then553
  %384 = load ptr, ptr %cursor, align 8
  %incdec.ptr603 = getelementptr inbounds i8, ptr %384, i32 1
  store ptr %incdec.ptr603, ptr %cursor, align 8
  %385 = load i8, ptr %incdec.ptr603, align 1
  store i8 %385, ptr %yych531, align 1
  br label %yy104

yy104:                                            ; preds = %sw.bb646, %if.then616, %if.then609, %yy103
  br label %code

yy105:                                            ; preds = %if.then559
  store i32 0, ptr %yyaccept532, align 4
  %386 = load ptr, ptr %cursor, align 8
  %incdec.ptr604 = getelementptr inbounds i8, ptr %386, i32 1
  store ptr %incdec.ptr604, ptr %cursor, align 8
  %387 = load ptr, ptr %s.addr, align 8
  %ptr605 = getelementptr inbounds %struct.Scanner, ptr %387, i32 0, i32 3
  store ptr %incdec.ptr604, ptr %ptr605, align 8
  %388 = load i8, ptr %incdec.ptr604, align 1
  store i8 %388, ptr %yych531, align 1
  %389 = load i8, ptr %yych531, align 1
  %conv606 = zext i8 %389 to i32
  %cmp607 = icmp eq i32 %conv606, 10
  br i1 %cmp607, label %if.then609, label %if.end610

if.then609:                                       ; preds = %yy105
  br label %yy104

if.end610:                                        ; preds = %yy105
  br label %yy112

yy106:                                            ; preds = %if.then569
  store i32 0, ptr %yyaccept532, align 4
  %390 = load ptr, ptr %cursor, align 8
  %incdec.ptr611 = getelementptr inbounds i8, ptr %390, i32 1
  store ptr %incdec.ptr611, ptr %cursor, align 8
  %391 = load ptr, ptr %s.addr, align 8
  %ptr612 = getelementptr inbounds %struct.Scanner, ptr %391, i32 0, i32 3
  store ptr %incdec.ptr611, ptr %ptr612, align 8
  %392 = load i8, ptr %incdec.ptr611, align 1
  store i8 %392, ptr %yych531, align 1
  %393 = load i8, ptr %yych531, align 1
  %conv613 = zext i8 %393 to i32
  %cmp614 = icmp eq i32 %conv613, 10
  br i1 %cmp614, label %if.then616, label %if.end617

if.then616:                                       ; preds = %yy106
  br label %yy104

if.end617:                                        ; preds = %yy106
  br label %yy108

yy107:                                            ; preds = %if.end659, %if.end644, %if.then632
  %394 = load ptr, ptr %cursor, align 8
  %incdec.ptr618 = getelementptr inbounds i8, ptr %394, i32 1
  store ptr %incdec.ptr618, ptr %cursor, align 8
  %395 = load ptr, ptr %s.addr, align 8
  %lim619 = getelementptr inbounds %struct.Scanner, ptr %395, i32 0, i32 6
  %396 = load ptr, ptr %lim619, align 8
  %397 = load ptr, ptr %cursor, align 8
  %cmp620 = icmp eq ptr %396, %397
  br i1 %cmp620, label %if.then622, label %if.end624

if.then622:                                       ; preds = %yy107
  %398 = load ptr, ptr %s.addr, align 8
  %399 = load ptr, ptr %cursor, align 8
  %call623 = call ptr @fill(ptr noundef %398, ptr noundef %399)
  store ptr %call623, ptr %cursor, align 8
  br label %if.end624

if.end624:                                        ; preds = %if.then622, %yy107
  %400 = load ptr, ptr %cursor, align 8
  %401 = load i8, ptr %400, align 1
  store i8 %401, ptr %yych531, align 1
  br label %yy108

yy108:                                            ; preds = %if.end624, %if.end617
  %402 = load i8, ptr %yych531, align 1
  %conv625 = zext i8 %402 to i32
  %cmp626 = icmp sle i32 %conv625, 38
  br i1 %cmp626, label %if.then628, label %if.else634

if.then628:                                       ; preds = %yy108
  %403 = load i8, ptr %yych531, align 1
  %conv629 = zext i8 %403 to i32
  %cmp630 = icmp ne i32 %conv629, 10
  br i1 %cmp630, label %if.then632, label %if.end633

if.then632:                                       ; preds = %if.then628
  br label %yy107

if.end633:                                        ; preds = %if.then628
  br label %yy109

if.else634:                                       ; preds = %yy108
  %404 = load i8, ptr %yych531, align 1
  %conv635 = zext i8 %404 to i32
  %cmp636 = icmp sle i32 %conv635, 39
  br i1 %cmp636, label %if.then638, label %if.end639

if.then638:                                       ; preds = %if.else634
  br label %yy103

if.end639:                                        ; preds = %if.else634
  %405 = load i8, ptr %yych531, align 1
  %conv640 = zext i8 %405 to i32
  %cmp641 = icmp eq i32 %conv640, 92
  br i1 %cmp641, label %if.then643, label %if.end644

if.then643:                                       ; preds = %if.end639
  br label %yy110

if.end644:                                        ; preds = %if.end639
  br label %yy107

yy109:                                            ; preds = %if.then697, %if.then674, %if.then658, %if.end633
  %406 = load ptr, ptr %s.addr, align 8
  %ptr645 = getelementptr inbounds %struct.Scanner, ptr %406, i32 0, i32 3
  %407 = load ptr, ptr %ptr645, align 8
  store ptr %407, ptr %cursor, align 8
  %408 = load i32, ptr %yyaccept532, align 4
  switch i32 %408, label %sw.epilog647 [
    i32 0, label %sw.bb646
  ]

sw.bb646:                                         ; preds = %yy109
  br label %yy104

sw.epilog647:                                     ; preds = %yy109
  br label %yy110

yy110:                                            ; preds = %sw.epilog647, %if.then643
  %409 = load ptr, ptr %cursor, align 8
  %incdec.ptr648 = getelementptr inbounds i8, ptr %409, i32 1
  store ptr %incdec.ptr648, ptr %cursor, align 8
  %410 = load ptr, ptr %s.addr, align 8
  %lim649 = getelementptr inbounds %struct.Scanner, ptr %410, i32 0, i32 6
  %411 = load ptr, ptr %lim649, align 8
  %412 = load ptr, ptr %cursor, align 8
  %cmp650 = icmp eq ptr %411, %412
  br i1 %cmp650, label %if.then652, label %if.end654

if.then652:                                       ; preds = %yy110
  %413 = load ptr, ptr %s.addr, align 8
  %414 = load ptr, ptr %cursor, align 8
  %call653 = call ptr @fill(ptr noundef %413, ptr noundef %414)
  store ptr %call653, ptr %cursor, align 8
  br label %if.end654

if.end654:                                        ; preds = %if.then652, %yy110
  %415 = load ptr, ptr %cursor, align 8
  %416 = load i8, ptr %415, align 1
  store i8 %416, ptr %yych531, align 1
  %417 = load i8, ptr %yych531, align 1
  %conv655 = zext i8 %417 to i32
  %cmp656 = icmp eq i32 %conv655, 10
  br i1 %cmp656, label %if.then658, label %if.end659

if.then658:                                       ; preds = %if.end654
  br label %yy109

if.end659:                                        ; preds = %if.end654
  br label %yy107

yy111:                                            ; preds = %if.end698, %if.then685, %if.end675
  %418 = load ptr, ptr %cursor, align 8
  %incdec.ptr660 = getelementptr inbounds i8, ptr %418, i32 1
  store ptr %incdec.ptr660, ptr %cursor, align 8
  %419 = load ptr, ptr %s.addr, align 8
  %lim661 = getelementptr inbounds %struct.Scanner, ptr %419, i32 0, i32 6
  %420 = load ptr, ptr %lim661, align 8
  %421 = load ptr, ptr %cursor, align 8
  %cmp662 = icmp eq ptr %420, %421
  br i1 %cmp662, label %if.then664, label %if.end666

if.then664:                                       ; preds = %yy111
  %422 = load ptr, ptr %s.addr, align 8
  %423 = load ptr, ptr %cursor, align 8
  %call665 = call ptr @fill(ptr noundef %422, ptr noundef %423)
  store ptr %call665, ptr %cursor, align 8
  br label %if.end666

if.end666:                                        ; preds = %if.then664, %yy111
  %424 = load ptr, ptr %cursor, align 8
  %425 = load i8, ptr %424, align 1
  store i8 %425, ptr %yych531, align 1
  br label %yy112

yy112:                                            ; preds = %if.end666, %if.end610
  %426 = load i8, ptr %yych531, align 1
  %conv667 = zext i8 %426 to i32
  %cmp668 = icmp sle i32 %conv667, 33
  br i1 %cmp668, label %if.then670, label %if.else676

if.then670:                                       ; preds = %yy112
  %427 = load i8, ptr %yych531, align 1
  %conv671 = zext i8 %427 to i32
  %cmp672 = icmp eq i32 %conv671, 10
  br i1 %cmp672, label %if.then674, label %if.end675

if.then674:                                       ; preds = %if.then670
  br label %yy109

if.end675:                                        ; preds = %if.then670
  br label %yy111

if.else676:                                       ; preds = %yy112
  %428 = load i8, ptr %yych531, align 1
  %conv677 = zext i8 %428 to i32
  %cmp678 = icmp sle i32 %conv677, 34
  br i1 %cmp678, label %if.then680, label %if.end681

if.then680:                                       ; preds = %if.else676
  br label %yy103

if.end681:                                        ; preds = %if.else676
  %429 = load i8, ptr %yych531, align 1
  %conv682 = zext i8 %429 to i32
  %cmp683 = icmp ne i32 %conv682, 92
  br i1 %cmp683, label %if.then685, label %if.end686

if.then685:                                       ; preds = %if.end681
  br label %yy111

if.end686:                                        ; preds = %if.end681
  br label %yy113

yy113:                                            ; preds = %if.end686
  %430 = load ptr, ptr %cursor, align 8
  %incdec.ptr687 = getelementptr inbounds i8, ptr %430, i32 1
  store ptr %incdec.ptr687, ptr %cursor, align 8
  %431 = load ptr, ptr %s.addr, align 8
  %lim688 = getelementptr inbounds %struct.Scanner, ptr %431, i32 0, i32 6
  %432 = load ptr, ptr %lim688, align 8
  %433 = load ptr, ptr %cursor, align 8
  %cmp689 = icmp eq ptr %432, %433
  br i1 %cmp689, label %if.then691, label %if.end693

if.then691:                                       ; preds = %yy113
  %434 = load ptr, ptr %s.addr, align 8
  %435 = load ptr, ptr %cursor, align 8
  %call692 = call ptr @fill(ptr noundef %434, ptr noundef %435)
  store ptr %call692, ptr %cursor, align 8
  br label %if.end693

if.end693:                                        ; preds = %if.then691, %yy113
  %436 = load ptr, ptr %cursor, align 8
  %437 = load i8, ptr %436, align 1
  store i8 %437, ptr %yych531, align 1
  %438 = load i8, ptr %yych531, align 1
  %conv694 = zext i8 %438 to i32
  %cmp695 = icmp eq i32 %conv694, 10
  br i1 %cmp695, label %if.then697, label %if.end698

if.then697:                                       ; preds = %if.end693
  br label %yy109

if.end698:                                        ; preds = %if.end693
  br label %yy111

comment:                                          ; preds = %if.else760, %yy123, %if.end747, %yy117, %yy83
  br label %yy114

yy114:                                            ; preds = %comment
  %439 = load ptr, ptr %s.addr, align 8
  %lim700 = getelementptr inbounds %struct.Scanner, ptr %439, i32 0, i32 6
  %440 = load ptr, ptr %lim700, align 8
  %441 = load ptr, ptr %cursor, align 8
  %sub.ptr.lhs.cast701 = ptrtoint ptr %440 to i64
  %sub.ptr.rhs.cast702 = ptrtoint ptr %441 to i64
  %sub.ptr.sub703 = sub i64 %sub.ptr.lhs.cast701, %sub.ptr.rhs.cast702
  %cmp704 = icmp slt i64 %sub.ptr.sub703, 2
  br i1 %cmp704, label %if.then706, label %if.end708

if.then706:                                       ; preds = %yy114
  %442 = load ptr, ptr %s.addr, align 8
  %443 = load ptr, ptr %cursor, align 8
  %call707 = call ptr @fill(ptr noundef %442, ptr noundef %443)
  store ptr %call707, ptr %cursor, align 8
  br label %if.end708

if.end708:                                        ; preds = %if.then706, %yy114
  %444 = load ptr, ptr %cursor, align 8
  %445 = load i8, ptr %444, align 1
  store i8 %445, ptr %yych699, align 1
  %446 = load i8, ptr %yych699, align 1
  %conv709 = zext i8 %446 to i32
  %cmp710 = icmp sle i32 %conv709, 41
  br i1 %cmp710, label %if.then712, label %if.else718

if.then712:                                       ; preds = %if.end708
  %447 = load i8, ptr %yych699, align 1
  %conv713 = zext i8 %447 to i32
  %cmp714 = icmp eq i32 %conv713, 10
  br i1 %cmp714, label %if.then716, label %if.end717

if.then716:                                       ; preds = %if.then712
  br label %yy119

if.end717:                                        ; preds = %if.then712
  br label %yy121

if.else718:                                       ; preds = %if.end708
  %448 = load i8, ptr %yych699, align 1
  %conv719 = zext i8 %448 to i32
  %cmp720 = icmp sle i32 %conv719, 42
  br i1 %cmp720, label %if.then722, label %if.end723

if.then722:                                       ; preds = %if.else718
  br label %yy116

if.end723:                                        ; preds = %if.else718
  %449 = load i8, ptr %yych699, align 1
  %conv724 = zext i8 %449 to i32
  %cmp725 = icmp eq i32 %conv724, 47
  br i1 %cmp725, label %if.then727, label %if.end728

if.then727:                                       ; preds = %if.end723
  br label %yy118

if.end728:                                        ; preds = %if.end723
  br label %yy121

yy116:                                            ; preds = %if.then722
  %450 = load ptr, ptr %cursor, align 8
  %incdec.ptr729 = getelementptr inbounds i8, ptr %450, i32 1
  store ptr %incdec.ptr729, ptr %cursor, align 8
  %451 = load i8, ptr %incdec.ptr729, align 1
  store i8 %451, ptr %yych699, align 1
  %452 = load i8, ptr %yych699, align 1
  %conv730 = zext i8 %452 to i32
  %cmp731 = icmp eq i32 %conv730, 47
  br i1 %cmp731, label %if.then733, label %if.end734

if.then733:                                       ; preds = %yy116
  br label %yy124

if.end734:                                        ; preds = %yy116
  br label %yy117

yy117:                                            ; preds = %yy121, %if.end740, %if.end734
  br label %comment

yy118:                                            ; preds = %if.then727
  %453 = load ptr, ptr %cursor, align 8
  %incdec.ptr735 = getelementptr inbounds i8, ptr %453, i32 1
  store ptr %incdec.ptr735, ptr %cursor, align 8
  %454 = load i8, ptr %incdec.ptr735, align 1
  store i8 %454, ptr %yych699, align 1
  %455 = load i8, ptr %yych699, align 1
  %conv736 = zext i8 %455 to i32
  %cmp737 = icmp eq i32 %conv736, 42
  br i1 %cmp737, label %if.then739, label %if.end740

if.then739:                                       ; preds = %yy118
  br label %yy122

if.end740:                                        ; preds = %yy118
  br label %yy117

yy119:                                            ; preds = %if.then716
  %456 = load ptr, ptr %cursor, align 8
  %incdec.ptr741 = getelementptr inbounds i8, ptr %456, i32 1
  store ptr %incdec.ptr741, ptr %cursor, align 8
  %457 = load i8, ptr %incdec.ptr741, align 1
  store i8 %457, ptr %yych699, align 1
  br label %yy120

yy120:                                            ; preds = %yy119
  %458 = load ptr, ptr %cursor, align 8
  %459 = load ptr, ptr %s.addr, align 8
  %eof742 = getelementptr inbounds %struct.Scanner, ptr %459, i32 0, i32 8
  %460 = load ptr, ptr %eof742, align 8
  %cmp743 = icmp eq ptr %458, %460
  br i1 %cmp743, label %if.then745, label %if.end747

if.then745:                                       ; preds = %yy120
  %461 = load ptr, ptr %cursor, align 8
  %462 = load ptr, ptr %s.addr, align 8
  %cur746 = getelementptr inbounds %struct.Scanner, ptr %462, i32 0, i32 4
  store ptr %461, ptr %cur746, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end747:                                        ; preds = %yy120
  %463 = load ptr, ptr %cursor, align 8
  %464 = load ptr, ptr %s.addr, align 8
  %pos748 = getelementptr inbounds %struct.Scanner, ptr %464, i32 0, i32 5
  store ptr %463, ptr %pos748, align 8
  %465 = load ptr, ptr %s.addr, align 8
  %tok749 = getelementptr inbounds %struct.Scanner, ptr %465, i32 0, i32 2
  store ptr %463, ptr %tok749, align 8
  %466 = load ptr, ptr %s.addr, align 8
  %cline750 = getelementptr inbounds %struct.Scanner, ptr %466, i32 0, i32 11
  %467 = load i32, ptr %cline750, align 8
  %inc751 = add i32 %467, 1
  store i32 %inc751, ptr %cline750, align 8
  br label %comment

yy121:                                            ; preds = %if.end728, %if.end717
  %468 = load ptr, ptr %cursor, align 8
  %incdec.ptr752 = getelementptr inbounds i8, ptr %468, i32 1
  store ptr %incdec.ptr752, ptr %cursor, align 8
  %469 = load i8, ptr %incdec.ptr752, align 1
  store i8 %469, ptr %yych699, align 1
  br label %yy117

yy122:                                            ; preds = %if.then739
  %470 = load ptr, ptr %cursor, align 8
  %incdec.ptr753 = getelementptr inbounds i8, ptr %470, i32 1
  store ptr %incdec.ptr753, ptr %cursor, align 8
  %471 = load i8, ptr %incdec.ptr753, align 1
  store i8 %471, ptr %yych699, align 1
  br label %yy123

yy123:                                            ; preds = %yy122
  %472 = load i32, ptr %depth, align 4
  %inc754 = add i32 %472, 1
  store i32 %inc754, ptr %depth, align 4
  br label %comment

yy124:                                            ; preds = %if.then733
  %473 = load ptr, ptr %cursor, align 8
  %incdec.ptr755 = getelementptr inbounds i8, ptr %473, i32 1
  store ptr %incdec.ptr755, ptr %cursor, align 8
  %474 = load i8, ptr %incdec.ptr755, align 1
  store i8 %474, ptr %yych699, align 1
  br label %yy125

yy125:                                            ; preds = %yy124
  %475 = load i32, ptr %depth, align 4
  %dec756 = add i32 %475, -1
  store i32 %dec756, ptr %depth, align 4
  %cmp757 = icmp eq i32 %dec756, 0
  br i1 %cmp757, label %if.then759, label %if.else760

if.then759:                                       ; preds = %yy125
  br label %scan

if.else760:                                       ; preds = %yy125
  br label %comment

return:                                           ; preds = %if.then745, %if.then585, %cond.end, %yy90, %yy87, %yy81, %yy79, %yy74, %yy69, %yy66, %yy52, %if.then197, %yy46, %yy36, %yy34
  %476 = load i32, ptr %retval, align 4
  ret i32 %476
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Scanner_fatal(ptr noundef %s, ptr noundef %msg) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %msg.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  store ptr %msg, ptr %msg.addr, align 8
  %0 = load ptr, ptr @stderr, align 8
  %1 = load ptr, ptr %s.addr, align 8
  %tline = getelementptr inbounds %struct.Scanner, ptr %1, i32 0, i32 10
  %2 = load i32, ptr %tline, align 4
  %3 = load ptr, ptr %s.addr, align 8
  %tchar = getelementptr inbounds %struct.Scanner, ptr %3, i32 0, i32 9
  %4 = load i32, ptr %tchar, align 8
  %add = add i32 %4, 1
  %5 = load ptr, ptr %msg.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.6, i32 noundef %2, i32 noundef %add, ptr noundef %5)
  call void @exit(i32 noundef 1) #10
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define internal { ptr, i32 } @Scanner_token(ptr noundef %s) #0 {
entry:
  %retval = alloca %struct.SubStr, align 8
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %tok = getelementptr inbounds %struct.Scanner, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %tok, align 8
  %2 = load ptr, ptr %s.addr, align 8
  %cur = getelementptr inbounds %struct.Scanner, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %cur, align 8
  %4 = load ptr, ptr %s.addr, align 8
  %tok1 = getelementptr inbounds %struct.Scanner, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %tok1, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %3 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  call void @SubStr_init_u(ptr noundef %retval, ptr noundef %1, i32 noundef %conv)
  %6 = load { ptr, i32 }, ptr %retval, align 8
  ret { ptr, i32 } %6
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare ptr @Symbol_find(ptr noundef) #1

declare ptr @mkDot() #1

declare ptr @ranToRE(ptr, i32) #1

declare ptr @invToRE(ptr, i32) #1

declare ptr @strToCaseInsensitiveRE(ptr, i32) #1

declare ptr @strToRE(ptr, i32) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @atoi(ptr noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strchr(ptr noundef, i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @Token_new(ptr %t.coerce0, i32 %t.coerce1, i32 noundef %l) #0 {
entry:
  %t = alloca %struct.SubStr, align 8
  %l.addr = alloca i32, align 4
  %r = alloca ptr, align 8
  %0 = getelementptr inbounds { ptr, i32 }, ptr %t, i32 0, i32 0
  store ptr %t.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { ptr, i32 }, ptr %t, i32 0, i32 1
  store i32 %t.coerce1, ptr %1, align 8
  store i32 %l, ptr %l.addr, align 4
  %call = call noalias ptr @malloc(i64 noundef 24) #7
  store ptr %call, ptr %r, align 8
  %2 = load ptr, ptr %r, align 8
  %text = getelementptr inbounds %struct.Token, ptr %2, i32 0, i32 0
  call void @Str_init(ptr noundef %text, ptr noundef %t)
  %3 = load i32, ptr %l.addr, align 4
  %4 = load ptr, ptr %r, align 8
  %line = getelementptr inbounds %struct.Token, ptr %4, i32 0, i32 1
  store i32 %3, ptr %line, align 8
  %5 = load ptr, ptr %r, align 8
  ret ptr %5
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #4

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #5

; Function Attrs: nounwind
declare void @free(ptr noundef) #6

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SubStr_init_u(ptr noundef %r, ptr noundef %s, i32 noundef %l) #0 {
entry:
  %r.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %l.addr = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8
  store ptr %s, ptr %s.addr, align 8
  store i32 %l, ptr %l.addr, align 4
  %0 = load ptr, ptr %s.addr, align 8
  %1 = load ptr, ptr %r.addr, align 8
  %str = getelementptr inbounds %struct.SubStr, ptr %1, i32 0, i32 0
  store ptr %0, ptr %str, align 8
  %2 = load i32, ptr %l.addr, align 4
  %3 = load ptr, ptr %r.addr, align 8
  %len = getelementptr inbounds %struct.SubStr, ptr %3, i32 0, i32 1
  store i32 %2, ptr %len, align 8
  ret void
}

declare void @Str_init(ptr noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}

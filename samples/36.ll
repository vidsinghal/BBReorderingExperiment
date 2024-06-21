; ModuleID = 'samples/36.bc'
source_filename = "ncgeny.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.YYSTYPE = type { ptr }
%struct.Specialtoken = type { ptr, i32, i32 }
%struct.Kvalues = type { ptr, i32, i32 }
%struct.GlobalSpecialdata = type { i32, ptr, i32, i32 }
%struct.Dimset = type { i32, [1024 x ptr] }
%struct.yypcontext_t = type { ptr, i32 }
%union.yyalloc = type { %union.YYSTYPE }
%struct.Symbol = type { i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.Typeinfo, %struct.Varinfo, %struct.Attrinfo, %struct.Diminfo, %struct.Groupinfo, %struct.Fileinfo, %struct.Reference, i32, i32, i32 }
%struct.Typeinfo = type { ptr, i32, i32, i64, i64, ptr, %struct.Dimset, i64, i64, i64, ptr }
%struct.Varinfo = type { i32, ptr, %struct.Specialdata }
%struct.Specialdata = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i64, ptr }
%struct.Attrinfo = type { ptr }
%struct.Diminfo = type { i32, i32, i64 }
%struct.Groupinfo = type { i32 }
%struct.Fileinfo = type { ptr }
%struct.Reference = type { i32, ptr, ptr }
%struct.List = type { i64, i64, ptr }
%struct.Bytebuffer = type { i32, i32, i32, ptr }
%struct.yy_buffer_state = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.NCConstant = type { i32, i32, i32, %union.Constvalue, i32 }
%union.Constvalue = type { %struct.Stringv }
%struct.Stringv = type { i32, ptr }
%struct.Datalist = type { i32, i64, i64, ptr }
%struct.Opaquev = type { i32, ptr }
%struct.cdCompTime = type { i64, i16, i16, double }
%struct.CdTime = type { i64, i16, i16, double, i64, i32 }

@.str = private unnamed_addr constant [4 x i8] c"nat\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"byte\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"ubyte\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"ushort\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"uint\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"int64\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"uint64\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@primtypenames = global [13 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], align 16
@ncgdebug = global i32 0, align 4
@stderr = external global ptr, align 8
@.str.13 = private unnamed_addr constant [16 x i8] c"Starting parse\0A\00", align 1
@ncgchar = global i32 0, align 4
@.str.14 = private unnamed_addr constant [19 x i8] c"Entering state %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"Stack size increased to %ld\0A\00", align 1
@yypact = internal constant [276 x i16] [i16 -10, i16 -24, i16 30, i16 -153, i16 -18, i16 -153, i16 233, i16 -153, i16 -153, i16 -153, i16 -153, i16 -153, i16 -153, i16 -153, i16 -153, i16 -153, i16 -153, i16 -153, i16 -153, i16 -153, i16 -153, i16 -153, i16 20, i16 -153, i16 -153, i16 381, i16 -4, i16 5, i16 -16, i16 -153, i16 -153, i16 4, i16 23, i16 45, i16 46, i16 50, i16 -28, i16 51, i16 3, i16 197, i16 89, i16 233, i16 74, i16 74, i16 80, i16 82, i16 307, i16 106, i16 -153, i16 -153, i16 -1, i16 63, i16 66, i16 67, i16 68, i16 69, i16 71, i16 72, i16 75, i16 77, i16 78, i16 79, i16 81, i16 85, i16 86, i16 106, i16 87, i16 197, i16 -153, i16 -153, i16 91, i16 91, i16 91, i16 91, i16 109, i16 246, i16 92, i16 233, i16 126, i16 -153, i16 -153, i16 -153, i16 -153, i16 -153, i16 -153, i16 -153, i16 -153, i16 -153, i16 -153, i16 -153, i16 -153, i16 -153, i16 -153, i16 -153, i16 -153, i16 -153, i16 -153, i16 -153, i16 -153, i16 -153, i16 -153, i16 -153, i16 -153, i16 -153, i16 -153, i16 -153, i16 307, i16 -153, i16 94, i16 -153, i16 -153, i16 -153, i16 -153, i16 -153, i16 -153, i16 -153, i16 93, i16 99, i16 98, i16 100, i16 307, i16 74, i16 82, i16 82, i16 80, i16 74, i16 80, i16 80, i16 74, i16 74, i16 82, i16 82, i16 82, i16 307, i16 105, i16 -153, i16 146, i16 -153, i16 -153, i16 -153, i16 -153, i16 -153, i16 -153, i16 106, i16 102, i16 -153, i16 233, i16 108, i16 110, i16 -153, i16 107, i16 -153, i16 111, i16 233, i16 140, i16 27, i16 307, i16 256, i16 -153, i16 307, i16 307, i16 94, i16 -153, i16 113, i16 -153, i16 -153, i16 -153, i16 -153, i16 -153, i16 -153, i16 -153, i16 -153, i16 -153, i16 -153, i16 -153, i16 94, i16 381, i16 114, i16 117, i16 118, i16 112, i16 -153, i16 106, i16 53, i16 233, i16 123, i16 -153, i16 345, i16 -153, i16 381, i16 -153, i16 -153, i16 -153, i16 -43, i16 -153, i16 233, i16 94, i16 94, i16 82, i16 282, i16 124, i16 106, i16 -153, i16 106, i16 106, i16 106, i16 -153, i16 -153, i16 -153, i16 -153, i16 -153, i16 125, i16 -153, i16 120, i16 -153, i16 127, i16 -153, i16 128, i16 130, i16 -153, i16 381, i16 129, i16 256, i16 -153, i16 -153, i16 -153, i16 -153, i16 134, i16 -153, i16 135, i16 -153, i16 149, i16 -153, i16 62, i16 -153, i16 136, i16 -153, i16 -153, i16 -5, i16 1, i16 -153, i16 307, i16 154, i16 -153, i16 -153, i16 151, i16 -153, i16 106, i16 -3, i16 -153, i16 -153, i16 106, i16 82, i16 -153, i16 -153, i16 -34, i16 -153, i16 -153, i16 94, i16 -153, i16 131, i16 -153, i16 -153, i16 -153, i16 14, i16 -153, i16 -153, i16 -153, i16 1, i16 -153, i16 233, i16 -3, i16 -153, i16 -153, i16 -153, i16 -153], align 16
@.str.16 = private unnamed_addr constant [17 x i8] c"Reading a token\0A\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"Now at end of input.\0A\00", align 1
@yytranslate = internal constant [315 x i8] c"\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02ABC\02?\02\02\02\02\02\02\02\02\02\02\02\02\02D>\02@\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02<\02=\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;", align 16
@.str.18 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"Next token is\00", align 1
@ncglval = global %union.YYSTYPE zeroinitializer, align 8
@.str.20 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@yycheck = internal constant [421 x i16] [i16 22, i16 41, i16 46, i16 39, i16 25, i16 157, i16 39, i16 143, i16 45, i16 39, i16 38, i16 16, i16 106, i16 42, i16 43, i16 16, i16 38, i16 16, i16 21, i16 16, i16 63, i16 31, i16 25, i16 66, i16 46, i16 47, i16 120, i16 32, i16 50, i16 63, i16 0, i16 67, i16 66, i16 61, i16 67, i16 59, i16 16, i16 67, i16 33, i16 133, i16 39, i16 42, i16 60, i16 65, i16 77, i16 42, i16 62, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 75, i16 77, i16 3, i16 54, i16 55, i16 56, i16 57, i16 58, i16 106, i16 43, i16 68, i16 159, i16 160, i16 203, i16 64, i16 205, i16 222, i16 51, i16 52, i16 53, i16 21, i16 22, i16 120, i16 63, i16 25, i16 26, i16 66, i16 71, i16 72, i16 73, i16 106, i16 122, i16 123, i16 64, i16 61, i16 133, i16 63, i16 17, i16 121, i16 130, i16 131, i16 132, i16 125, i16 17, i16 120, i16 128, i16 129, i16 21, i16 22, i16 21, i16 22, i16 25, i16 26, i16 25, i16 26, i16 64, i16 64, i16 133, i16 156, i16 146, i16 64, i16 159, i16 160, i16 153, i16 29, i16 68, i16 153, i16 143, i16 16, i16 61, i16 146, i16 63, i16 124, i16 64, i16 126, i16 127, i16 64, i16 64, i16 64, i16 64, i16 156, i16 64, i16 64, i16 159, i16 160, i16 64, i16 176, i16 64, i16 64, i16 64, i16 35, i16 64, i16 183, i16 241, i16 184, i16 64, i16 64, i16 184, i16 65, i16 62, i16 62, i16 176, i16 30, i16 63, i16 65, i16 60, i16 182, i16 198, i16 64, i16 199, i16 64, i16 60, i16 187, i16 21, i16 189, i16 67, i16 62, i16 64, i16 32, i16 63, i16 62, i16 64, i16 63, i16 60, i16 199, i16 201, i16 66, i16 203, i16 204, i16 205, i16 66, i16 62, i16 62, i16 62, i16 68, i16 38, i16 63, i16 62, i16 61, i16 65, i16 64, i16 239, i16 62, i16 241, i16 63, i16 220, i16 64, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 65, i16 252, i16 62, i16 195, i16 224, i16 241, i16 67, i16 182, i16 146, i16 199, i16 268, i16 247, i16 251, i16 184, i16 247, i16 251, i16 270, i16 34, i16 271, i16 36, i16 -1, i16 220, i16 39, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 238, i16 -1, i16 68, i16 268, i16 -1, i16 -1, i16 -1, i16 -1, i16 156, i16 39, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 39, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 -1, i16 -1, i16 68, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 65, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 39, i16 -1, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 61, i16 37, i16 -1, i16 39, i16 40, i16 41, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 60, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 32, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 39, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 39], align 16
@yytable = internal constant [421 x i16] [i16 35, i16 79, i16 107, i16 75, i16 37, i16 194, i16 76, i16 178, i16 90, i16 74, i16 47, i16 253, i16 155, i16 81, i16 82, i16 20, i16 64, i16 20, i16 262, i16 20, i16 222, i16 1, i16 263, i16 223, i16 116, i16 117, i16 161, i16 214, i16 119, i16 268, i16 5, i16 75, i16 269, i16 48, i16 76, i16 3, i16 20, i16 74, i16 39, i16 175, i16 21, i16 118, i16 6, i16 135, i16 151, i16 51, i16 41, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 37, i16 152, i16 209, i16 59, i16 60, i16 61, i16 62, i16 63, i16 107, i16 31, i16 38, i16 196, i16 197, i16 232, i16 42, i16 236, i16 244, i16 32, i16 33, i16 34, i16 83, i16 84, i16 107, i16 271, i16 85, i16 86, i16 272, i16 140, i16 141, i16 142, i16 116, i16 164, i16 165, i16 43, i16 191, i16 107, i16 156, i16 80, i16 162, i16 172, i16 173, i16 174, i16 167, i16 80, i16 116, i16 170, i16 171, i16 83, i16 84, i16 83, i16 84, i16 85, i16 86, i16 85, i16 86, i16 44, i16 45, i16 116, i16 107, i16 151, i16 46, i16 107, i16 107, i16 187, i16 77, i16 50, i16 188, i16 135, i16 20, i16 250, i16 152, i16 251, i16 166, i16 120, i16 168, i16 169, i16 121, i16 122, i16 123, i16 124, i16 116, i16 125, i16 126, i16 116, i16 116, i16 127, i16 201, i16 128, i16 129, i16 130, i16 143, i16 131, i16 210, i16 258, i16 187, i16 132, i16 133, i16 188, i16 136, i16 138, i16 145, i16 202, i16 153, i16 156, i16 157, i16 158, i16 208, i16 225, i16 159, i16 201, i16 160, i16 176, i16 37, i16 177, i16 219, i16 179, i16 181, i16 183, i16 189, i16 182, i16 206, i16 -58, i16 198, i16 204, i16 202, i16 231, i16 203, i16 135, i16 235, i16 135, i16 205, i16 212, i16 228, i16 237, i16 -159, i16 47, i16 238, i16 243, i16 270, i16 239, i16 241, i16 257, i16 246, i16 107, i16 247, i16 219, i16 252, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 248, i16 267, i16 259, i16 224, i16 245, i16 116, i16 137, i16 207, i16 180, i16 227, i16 257, i16 231, i16 266, i16 211, i16 261, i16 235, i16 274, i16 65, i16 275, i16 66, i16 0, i16 242, i16 21, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 254, i16 0, i16 22, i16 273, i16 0, i16 0, i16 0, i16 0, i16 192, i16 21, i16 91, i16 92, i16 93, i16 94, i16 95, i16 96, i16 97, i16 98, i16 99, i16 100, i16 101, i16 102, i16 21, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 0, i16 0, i16 22, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 144, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 21, i16 0, i16 20, i16 91, i16 92, i16 93, i16 94, i16 95, i16 96, i16 97, i16 98, i16 99, i16 100, i16 101, i16 102, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 226, i16 103, i16 0, i16 21, i16 104, i16 105, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 213, i16 0, i16 0, i16 0, i16 0, i16 0, i16 106, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 214, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 21, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 21], align 16
@.str.21 = private unnamed_addr constant [9 x i8] c"Shifting\00", align 1
@yydefact = internal constant [276 x i8] c"\00\00\00\03\00\01X\02#$%&'()*+,-.\9Fp\00\06W\00U\0B\00Vo\00\00\00\00\00\00\00\00\0C/X\00\00\00\00y\00\04\07\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0D\0E\11\17\17\17\17W\00\000;Y\9AnZ\96\98\97\99\9C\9B[\\\93\88\89\8A\8B\8C\8D\8E\8F\90\91\92\7F\80\81y\84]wxz|\82\83~o\00\00\00y\00\00\00\00\00\00\00\00\00\00\00\00y\00\10\00\0F\18\13\16\15\14\00\00\121\0046\005o<q\00\00\00\08yy`bc\94efgmdhijkl_\00\00\00\00\002\00\00=\00@\00Ar\05}{\00\86Xa^\00\00\00\00U\00\00\0037:98\00>\9D\9EBCF\00Ts\00\00\85\06\95\1F\00 \22KN\1D\00\1A\00\1E?\00\00Ey\00t\87\09!\00\00M\19\00\00\9DD\00HJvu\00LSR\00P\1B\1C\00GX\00OI\0AQ", align 16
@yyr2 = internal constant [160 x i8] c"\00\02\03\01\04\05\00\02\00\00\09\00\01\02\01\02\01\01\02\02\02\02\02\00\01\06\01\03\03\05\05\05\02\03\02\01\01\01\01\01\01\01\01\01\01\01\01\00\01\02\02\03\01\01\01\03\03\03\01\00\01\02\02\03\01\01\02\01\03\02\00\03\01\03\01\01\03\02\00\03\01\03\01\01\01\01\01\01\00\03\04\04\04\04\06\05\05\06\05\05\05\05\05\05\05\05\05\05\05\05\04\01\01\00\01\02\02\03\03\01\01\00\01\03\01\03\01\01\01\01\01\01\01\04\01\03\01\01\01\01\01\01\01\01\01\01\01\01\01\03\01\01\01\01\01\01\01\01\01\01", align 16
@error_count = external global i32, align 4
@datasetname = external global ptr, align 8
@.str.22 = private unnamed_addr constant [20 x i8] c"Group specification\00", align 1
@.str.23 = private unnamed_addr constant [55 x i8] c"duplicate group declaration within parent group for %s\00", align 1
@groupstack = internal global ptr null, align 8
@.str.24 = private unnamed_addr constant [19 x i8] c"Type specification\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"duplicate type declaration for %s\00", align 1
@typdefs = global ptr null, align 8
@stackbase = internal global i32 0, align 4
@stack = internal global ptr null, align 8
@stacklen = internal global i32 0, align 4
@.str.26 = private unnamed_addr constant [27 x i8] c"eid->subclass == NC_ECONST\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"ncgen.y\00", align 1
@__PRETTY_FUNCTION__.ncgparse = private unnamed_addr constant [19 x i8] c"int ncgparse(void)\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"duplicate enum declaration for %s\00", align 1
@int32_val = global i32 0, align 4
@.str.29 = private unnamed_addr constant [35 x i8] c"duplicate field declaration for %s\00", align 1
@primsymbols = external global [13 x ptr], align 16
@.str.30 = private unnamed_addr constant [39 x i8] c"Duplicate dimension declaration for %s\00", align 1
@dimdefs = global ptr null, align 8
@.str.31 = private unnamed_addr constant [38 x i8] c"Duplicate variable declaration for %s\00", align 1
@vardefs = global ptr null, align 8
@count = internal global i32 0, align 4
@.str.32 = private unnamed_addr constant [27 x i8] c"%s has too many dimensions\00", align 1
@.str.33 = private unnamed_addr constant [46 x i8] c"Undefined or forward referenced dimension: %s\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"const%u\00", align 1
@uint32_val = global i32 0, align 4
@.str.35 = private unnamed_addr constant [33 x i8] c"field dimension must be positive\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"const%d\00", align 1
@.str.37 = private unnamed_addr constant [45 x i8] c"Undefined or forward referenced variable: %s\00", align 1
@.str.38 = private unnamed_addr constant [41 x i8] c"Undefined or forward referenced type: %s\00", align 1
@.str.39 = private unnamed_addr constant [41 x i8] c"Undefined or forward referenced name: %s\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"Undefined name (line %d): %s\00", align 1
@.str.41 = private unnamed_addr constant [27 x i8] c"Doubly typed attribute: %s\00", align 1
@.str.42 = private unnamed_addr constant [44 x i8] c"Attribute prefix not a variable or type: %s\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"-> $$ =\00", align 1
@yyr1 = internal constant [160 x i8] c"\00EFGHIJJLMKNNNOOPQQRRRRSSTUUVWXYZZ[\\\\\\\\\\\\\\\\\\\\\\\\]]]^^__``aabcccddeefgghiijjkllmnnooppqrssttuuuuuuuuuuuuuuuuuuuuuvvwwwxxyzz{||}}~~~~~~\7F\80\81\81\82\82\82\82\82\82\82\82\82\82\82\82\83\83\84\84\84\84\85\86\86\87\87\88", align 16
@yypgoto = internal constant [68 x i16] [i16 -153, i16 -153, i16 -153, i16 -153, i16 22, i16 -6, i16 -153, i16 -153, i16 -153, i16 -153, i16 -153, i16 -136, i16 153, i16 -153, i16 10, i16 -153, i16 -153, i16 -25, i16 -153, i16 -153, i16 -153, i16 -153, i16 24, i16 -30, i16 -153, i16 -153, i16 76, i16 -153, i16 39, i16 -153, i16 -153, i16 -153, i16 43, i16 -153, i16 -153, i16 25, i16 -153, i16 -153, i16 -2, i16 -153, i16 -19, i16 -153, i16 -153, i16 -39, i16 -153, i16 -36, i16 -21, i16 -40, i16 -33, i16 -44, i16 -153, i16 -153, i16 15, i16 -94, i16 -153, i16 -153, i16 115, i16 -153, i16 -153, i16 -153, i16 -153, i16 -152, i16 -153, i16 -37, i16 -29, i16 2, i16 -153, i16 -22], align 16
@yydefgoto = internal constant [68 x i16] [i16 0, i16 2, i16 4, i16 7, i16 23, i16 36, i16 49, i16 195, i16 260, i16 40, i16 67, i16 134, i16 68, i16 69, i16 139, i16 70, i16 233, i16 234, i16 71, i16 72, i16 73, i16 199, i16 200, i16 24, i16 78, i16 146, i16 147, i16 148, i16 149, i16 150, i16 154, i16 184, i16 185, i16 186, i16 215, i16 216, i16 240, i16 255, i16 256, i16 229, i16 230, i16 249, i16 264, i16 265, i16 218, i16 25, i16 26, i16 27, i16 28, i16 29, i16 190, i16 220, i16 221, i16 108, i16 109, i16 110, i16 111, i16 112, i16 113, i16 114, i16 193, i16 115, i16 163, i16 87, i16 88, i16 89, i16 217, i16 30], align 16
@ncgnerrs = global i32 0, align 4
@.str.44 = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"Error: discarding\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"Error: popping\00", align 1
@yystos = internal constant [276 x i8] c"\00\1FF;G\00<H\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10'DI\\rstuv\88+345\88JsD!N>@@@@@&=KD*,-./0126789:\88\22$OQRTWXY\\ru\1D]t\11\85\85\15\16\19\1A\84\85\86\84\11\12\13\14\15\16\17\18\19\1A\1B\1C%()<vz{|}~\7F\80\82\88\88*\88@@@@@@@@@@@@@@P\88AQ>SSSS#A>^_`abu\88\1Ecz?A<@@z\85\83\84\84\86\85\86\86\85\85\84\84\84z<\15PC_>?@defru w=}\81\82Lzz?Z[rsB<B>a\88\03\84e>\10 gh\87qsxy?BI\84=[>lm\88PUV\88P>?Ai@y>\82J>?An=?@\10hjkvz>Mm\15\19opV\84?B=?Bktp", align 16
@.str.47 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.48 = private unnamed_addr constant [30 x i8] c"Cleanup: discarding lookahead\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"Cleanup: popping\00", align 1
@ncgin = global ptr null, align 8
@ncgout = global ptr null, align 8
@ncglineno = global i32 1, align 4
@ncg_flex_debug = global i32 0, align 4
@.str.50 = private unnamed_addr constant [11 x i8] c"_FillValue\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"_Format\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"_Storage\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"_ChunkSizes\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"_Fletcher32\00", align 1
@.str.55 = private unnamed_addr constant [14 x i8] c"_DeflateLevel\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"_Shuffle\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"_Endianness\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"_NoFill\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"_NCProperties\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"_IsNetcdf4\00", align 1
@.str.61 = private unnamed_addr constant [19 x i8] c"_SuperblockVersion\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"_Filter\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"_Codecs\00", align 1
@.str.64 = private unnamed_addr constant [43 x i8] c"_QuantizeBitGroomNumberOfSignificantDigits\00", align 1
@.str.65 = private unnamed_addr constant [51 x i8] c"_QuantizeGranularBitRoundNumberOfSignificantDigits\00", align 1
@.str.66 = private unnamed_addr constant [43 x i8] c"_QuantizeBitRoundNumberOfSignificantDigits\00", align 1
@specials = global [18 x %struct.Specialtoken] [%struct.Specialtoken { ptr @.str.50, i32 297, i32 128 }, %struct.Specialtoken { ptr @.str.51, i32 298, i32 2048 }, %struct.Specialtoken { ptr @.str.52, i32 299, i32 1 }, %struct.Specialtoken { ptr @.str.53, i32 300, i32 2 }, %struct.Specialtoken { ptr @.str.54, i32 305, i32 4 }, %struct.Specialtoken { ptr @.str.55, i32 301, i32 8 }, %struct.Specialtoken { ptr @.str.56, i32 302, i32 16 }, %struct.Specialtoken { ptr @.str.57, i32 303, i32 32 }, %struct.Specialtoken { ptr @.str.58, i32 304, i32 64 }, %struct.Specialtoken { ptr @.str.59, i32 306, i32 256 }, %struct.Specialtoken { ptr @.str.60, i32 307, i32 512 }, %struct.Specialtoken { ptr @.str.61, i32 308, i32 1024 }, %struct.Specialtoken { ptr @.str.62, i32 309, i32 4096 }, %struct.Specialtoken { ptr @.str.63, i32 310, i32 8192 }, %struct.Specialtoken { ptr @.str.64, i32 311, i32 16384 }, %struct.Specialtoken { ptr @.str.65, i32 312, i32 32768 }, %struct.Specialtoken { ptr @.str.66, i32 313, i32 65536 }, %struct.Specialtoken zeroinitializer], align 16
@yy_init = internal global i32 0, align 4
@yy_start = internal global i32 0, align 4
@stdin = external global ptr, align 8
@stdout = external global ptr, align 8
@yy_buffer_stack = internal global ptr null, align 8
@yy_buffer_stack_top = internal global i64 0, align 8
@yy_c_buf_p = internal global ptr null, align 8
@yy_hold_char = internal global i8 0, align 1
@yy_ec = internal constant [256 x i8] c"\00\01\01\01\01\01\01\01\01\02\03\01\02\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\04\05\06\05\05\05\05\07\05\05\08\09\05\0A\0B\0C\0D\0E\0F\10\11\0E\12\0E\13\13\14\05\05\05\05\05\15\16\17\18\19\1A\1B\1C\1D\1E\1D\1D\1F !\22#$%&'()\1D*\1D\1D\05+\05\05,\05-./012345\1D6789:;<=>?@A\1D*BCD\05\05\05\01EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEFFFFFFFFFFFFFFFFFFFFFFF\01\01\01\01\01\01\01\01\01GGGGGGGGGGGGGGGGHHHHHHHH\01\01\01\01\01\01\01\01", align 16
@yy_accept = internal constant [538 x i16] [i16 0, i16 0, i16 0, i16 51, i16 51, i16 0, i16 0, i16 55, i16 53, i16 1, i16 49, i16 53, i16 53, i16 53, i16 53, i16 43, i16 37, i16 41, i16 41, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 53, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 53, i16 53, i16 53, i16 51, i16 54, i16 39, i16 54, i16 1, i16 0, i16 3, i16 0, i16 0, i16 0, i16 43, i16 41, i16 0, i16 0, i16 43, i16 43, i16 0, i16 44, i16 50, i16 2, i16 37, i16 0, i16 0, i16 0, i16 0, i16 41, i16 41, i16 41, i16 41, i16 0, i16 40, i16 0, i16 0, i16 0, i16 0, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 0, i16 0, i16 51, i16 0, i16 52, i16 39, i16 45, i16 0, i16 0, i16 0, i16 0, i16 43, i16 0, i16 0, i16 43, i16 2, i16 37, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 4, i16 0, i16 0, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 36, i16 33, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 13, i16 40, i16 33, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 0, i16 48, i16 0, i16 0, i16 43, i16 0, i16 37, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 4, i16 42, i16 42, i16 0, i16 40, i16 40, i16 34, i16 40, i16 40, i16 35, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 11, i16 10, i16 40, i16 40, i16 40, i16 40, i16 6, i16 40, i16 40, i16 40, i16 40, i16 21, i16 40, i16 40, i16 40, i16 20, i16 40, i16 40, i16 40, i16 40, i16 40, i16 16, i16 40, i16 40, i16 40, i16 40, i16 0, i16 0, i16 34, i16 0, i16 37, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 29, i16 40, i16 40, i16 8, i16 40, i16 17, i16 40, i16 40, i16 40, i16 40, i16 12, i16 40, i16 40, i16 40, i16 14, i16 40, i16 40, i16 23, i16 40, i16 40, i16 40, i16 46, i16 47, i16 0, i16 0, i16 0, i16 0, i16 40, i16 40, i16 40, i16 31, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 9, i16 30, i16 40, i16 7, i16 19, i16 5, i16 26, i16 18, i16 40, i16 40, i16 15, i16 40, i16 0, i16 0, i16 40, i16 40, i16 40, i16 40, i16 40, i16 38, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 22, i16 40, i16 40, i16 40, i16 40, i16 0, i16 40, i16 32, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 5, i16 40, i16 40, i16 24, i16 40, i16 40, i16 32, i16 32, i16 25, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 28, i16 40, i16 40, i16 40, i16 40, i16 40, i16 27, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 40, i16 0], align 16
@yy_last_accepting_state = internal global i32 0, align 4
@yy_last_accepting_cpos = internal global ptr null, align 8
@yy_chk = internal constant [3204 x i16] [i16 0, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 9, i16 11, i16 9, i16 13, i16 14, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 50, i16 73, i16 50, i16 82, i16 82, i16 204, i16 13, i16 14, i16 204, i16 51, i16 402, i16 14, i16 16, i16 19, i16 383, i16 359, i16 16, i16 201, i16 201, i16 201, i16 201, i16 201, i16 201, i16 20, i16 214, i16 73, i16 11, i16 22, i16 358, i16 13, i16 14, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 20, i16 22, i16 19, i16 19, i16 19, i16 15, i16 15, i16 15, i16 51, i16 16, i16 214, i16 15, i16 20, i16 20, i16 20, i16 323, i16 22, i16 22, i16 22, i16 26, i16 26, i16 26, i16 26, i16 26, i16 26, i16 26, i16 149, i16 322, i16 15, i16 15, i16 15, i16 321, i16 320, i16 149, i16 23, i16 15, i16 16, i16 16, i16 16, i16 17, i16 275, i16 17, i16 17, i16 17, i16 17, i16 17, i16 17, i16 17, i16 23, i16 274, i16 149, i16 17, i16 74, i16 273, i16 17, i16 272, i16 271, i16 149, i16 270, i16 17, i16 74, i16 23, i16 23, i16 23, i16 267, i16 265, i16 17, i16 74, i16 17, i16 24, i16 17, i16 25, i16 264, i16 24, i16 17, i16 74, i16 216, i16 17, i16 212, i16 211, i16 210, i16 25, i16 209, i16 17, i16 74, i16 208, i16 24, i16 207, i16 24, i16 28, i16 17, i16 74, i16 17, i16 21, i16 21, i16 32, i16 24, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 42, i16 199, i16 42, i16 32, i16 25, i16 25, i16 25, i16 29, i16 28, i16 24, i16 24, i16 24, i16 28, i16 28, i16 28, i16 30, i16 29, i16 30, i16 32, i16 32, i16 32, i16 151, i16 29, i16 21, i16 150, i16 30, i16 148, i16 42, i16 42, i16 42, i16 30, i16 147, i16 146, i16 145, i16 29, i16 29, i16 29, i16 144, i16 137, i16 134, i16 132, i16 37, i16 30, i16 30, i16 30, i16 128, i16 33, i16 127, i16 126, i16 34, i16 21, i16 21, i16 21, i16 27, i16 27, i16 27, i16 27, i16 37, i16 125, i16 27, i16 80, i16 79, i16 27, i16 34, i16 33, i16 27, i16 35, i16 27, i16 37, i16 37, i16 37, i16 78, i16 27, i16 33, i16 33, i16 33, i16 34, i16 34, i16 34, i16 71, i16 36, i16 35, i16 36, i16 38, i16 70, i16 69, i16 36, i16 68, i16 59, i16 38, i16 36, i16 40, i16 57, i16 35, i16 35, i16 35, i16 39, i16 54, i16 53, i16 27, i16 27, i16 27, i16 47, i16 41, i16 46, i16 39, i16 41, i16 36, i16 36, i16 36, i16 38, i16 38, i16 38, i16 41, i16 40, i16 41, i16 39, i16 41, i16 40, i16 40, i16 40, i16 66, i16 41, i16 39, i16 39, i16 39, i16 45, i16 44, i16 43, i16 31, i16 41, i16 41, i16 41, i16 55, i16 55, i16 55, i16 55, i16 55, i16 55, i16 58, i16 58, i16 18, i16 12, i16 58, i16 58, i16 58, i16 58, i16 58, i16 58, i16 58, i16 62, i16 62, i16 66, i16 7, i16 62, i16 62, i16 62, i16 62, i16 62, i16 62, i16 62, i16 76, i16 55, i16 67, i16 67, i16 67, i16 67, i16 67, i16 67, i16 67, i16 77, i16 77, i16 77, i16 77, i16 77, i16 81, i16 83, i16 83, i16 84, i16 66, i16 66, i16 66, i16 6, i16 5, i16 85, i16 4, i16 77, i16 3, i16 76, i16 76, i16 76, i16 85, i16 83, i16 84, i16 83, i16 86, i16 81, i16 0, i16 83, i16 86, i16 88, i16 0, i16 81, i16 81, i16 81, i16 84, i16 84, i16 84, i16 87, i16 77, i16 88, i16 85, i16 85, i16 85, i16 91, i16 83, i16 0, i16 83, i16 90, i16 0, i16 87, i16 0, i16 83, i16 89, i16 0, i16 0, i16 86, i16 86, i16 86, i16 0, i16 90, i16 0, i16 0, i16 0, i16 77, i16 89, i16 0, i16 88, i16 88, i16 88, i16 93, i16 91, i16 91, i16 91, i16 0, i16 92, i16 93, i16 87, i16 87, i16 87, i16 89, i16 89, i16 89, i16 0, i16 92, i16 0, i16 94, i16 90, i16 90, i16 90, i16 92, i16 0, i16 96, i16 97, i16 0, i16 95, i16 0, i16 93, i16 93, i16 93, i16 94, i16 0, i16 92, i16 92, i16 92, i16 95, i16 0, i16 95, i16 98, i16 0, i16 95, i16 96, i16 97, i16 94, i16 94, i16 94, i16 0, i16 0, i16 0, i16 96, i16 96, i16 96, i16 95, i16 95, i16 95, i16 99, i16 0, i16 97, i16 100, i16 98, i16 0, i16 101, i16 0, i16 101, i16 99, i16 98, i16 98, i16 98, i16 102, i16 97, i16 97, i16 97, i16 103, i16 0, i16 0, i16 99, i16 99, i16 105, i16 100, i16 0, i16 104, i16 102, i16 99, i16 99, i16 99, i16 100, i16 100, i16 100, i16 101, i16 101, i16 101, i16 106, i16 103, i16 104, i16 109, i16 102, i16 102, i16 102, i16 105, i16 103, i16 103, i16 103, i16 107, i16 0, i16 105, i16 105, i16 105, i16 104, i16 104, i16 104, i16 108, i16 0, i16 106, i16 110, i16 109, i16 0, i16 112, i16 107, i16 106, i16 106, i16 106, i16 109, i16 109, i16 109, i16 114, i16 108, i16 114, i16 110, i16 142, i16 107, i16 107, i16 107, i16 111, i16 0, i16 0, i16 113, i16 112, i16 108, i16 108, i16 108, i16 110, i16 110, i16 110, i16 112, i16 112, i16 112, i16 111, i16 113, i16 115, i16 0, i16 115, i16 114, i16 114, i16 114, i16 116, i16 142, i16 142, i16 142, i16 118, i16 111, i16 111, i16 111, i16 113, i16 113, i16 113, i16 0, i16 117, i16 0, i16 0, i16 116, i16 0, i16 0, i16 0, i16 119, i16 118, i16 115, i16 115, i16 115, i16 120, i16 0, i16 0, i16 116, i16 116, i16 116, i16 117, i16 118, i16 118, i16 118, i16 121, i16 0, i16 0, i16 0, i16 120, i16 117, i16 117, i16 117, i16 119, i16 122, i16 141, i16 0, i16 119, i16 119, i16 119, i16 121, i16 123, i16 120, i16 120, i16 120, i16 0, i16 122, i16 124, i16 0, i16 133, i16 123, i16 0, i16 121, i16 121, i16 121, i16 133, i16 133, i16 133, i16 133, i16 133, i16 133, i16 122, i16 122, i16 122, i16 0, i16 124, i16 141, i16 0, i16 123, i16 123, i16 123, i16 0, i16 153, i16 0, i16 124, i16 124, i16 124, i16 135, i16 135, i16 135, i16 135, i16 135, i16 135, i16 135, i16 136, i16 136, i16 136, i16 136, i16 136, i16 136, i16 136, i16 0, i16 0, i16 141, i16 141, i16 141, i16 136, i16 0, i16 136, i16 153, i16 153, i16 153, i16 136, i16 138, i16 138, i16 138, i16 138, i16 138, i16 138, i16 138, i16 0, i16 0, i16 0, i16 0, i16 0, i16 152, i16 0, i16 0, i16 152, i16 136, i16 154, i16 136, i16 0, i16 0, i16 0, i16 0, i16 136, i16 139, i16 139, i16 139, i16 139, i16 139, i16 139, i16 139, i16 143, i16 143, i16 143, i16 143, i16 143, i16 139, i16 157, i16 139, i16 152, i16 152, i16 152, i16 139, i16 0, i16 154, i16 154, i16 154, i16 143, i16 155, i16 0, i16 155, i16 0, i16 0, i16 156, i16 0, i16 0, i16 157, i16 0, i16 160, i16 139, i16 156, i16 139, i16 158, i16 156, i16 0, i16 159, i16 139, i16 0, i16 0, i16 0, i16 143, i16 160, i16 159, i16 0, i16 162, i16 155, i16 155, i16 155, i16 0, i16 162, i16 156, i16 156, i16 156, i16 157, i16 157, i16 157, i16 161, i16 0, i16 0, i16 158, i16 158, i16 158, i16 159, i16 159, i16 159, i16 143, i16 0, i16 163, i16 160, i16 160, i16 160, i16 162, i16 162, i16 162, i16 163, i16 164, i16 168, i16 161, i16 165, i16 0, i16 164, i16 166, i16 0, i16 161, i16 161, i16 161, i16 168, i16 166, i16 0, i16 169, i16 165, i16 0, i16 0, i16 167, i16 163, i16 163, i16 163, i16 169, i16 0, i16 0, i16 170, i16 0, i16 164, i16 164, i16 164, i16 165, i16 165, i16 165, i16 166, i16 166, i16 166, i16 167, i16 172, i16 168, i16 168, i16 168, i16 170, i16 0, i16 0, i16 173, i16 167, i16 167, i16 167, i16 0, i16 169, i16 169, i16 169, i16 171, i16 0, i16 171, i16 175, i16 0, i16 0, i16 172, i16 173, i16 174, i16 175, i16 0, i16 0, i16 172, i16 172, i16 172, i16 176, i16 170, i16 170, i16 170, i16 173, i16 173, i16 173, i16 177, i16 0, i16 174, i16 0, i16 0, i16 171, i16 171, i16 171, i16 175, i16 175, i16 175, i16 176, i16 179, i16 174, i16 174, i16 174, i16 177, i16 178, i16 179, i16 178, i16 176, i16 176, i16 176, i16 180, i16 184, i16 0, i16 180, i16 177, i16 177, i16 177, i16 181, i16 0, i16 0, i16 182, i16 0, i16 182, i16 0, i16 0, i16 0, i16 179, i16 179, i16 179, i16 183, i16 181, i16 178, i16 178, i16 178, i16 0, i16 0, i16 184, i16 180, i16 180, i16 180, i16 0, i16 0, i16 184, i16 185, i16 181, i16 181, i16 181, i16 182, i16 182, i16 182, i16 183, i16 185, i16 186, i16 0, i16 187, i16 189, i16 183, i16 183, i16 183, i16 186, i16 0, i16 188, i16 0, i16 184, i16 184, i16 184, i16 0, i16 189, i16 190, i16 0, i16 185, i16 185, i16 185, i16 187, i16 0, i16 0, i16 0, i16 187, i16 188, i16 186, i16 186, i16 186, i16 189, i16 189, i16 189, i16 213, i16 190, i16 0, i16 188, i16 188, i16 188, i16 0, i16 213, i16 191, i16 0, i16 190, i16 190, i16 190, i16 192, i16 0, i16 187, i16 187, i16 187, i16 191, i16 192, i16 195, i16 0, i16 0, i16 193, i16 213, i16 0, i16 194, i16 0, i16 0, i16 191, i16 197, i16 213, i16 205, i16 0, i16 195, i16 191, i16 191, i16 191, i16 0, i16 0, i16 192, i16 192, i16 192, i16 193, i16 0, i16 197, i16 194, i16 195, i16 195, i16 195, i16 193, i16 193, i16 193, i16 194, i16 194, i16 194, i16 196, i16 197, i16 197, i16 197, i16 198, i16 0, i16 0, i16 205, i16 0, i16 0, i16 196, i16 217, i16 0, i16 0, i16 198, i16 206, i16 206, i16 206, i16 206, i16 206, i16 206, i16 206, i16 218, i16 217, i16 0, i16 219, i16 0, i16 196, i16 196, i16 196, i16 220, i16 198, i16 198, i16 198, i16 205, i16 205, i16 205, i16 221, i16 217, i16 217, i16 217, i16 222, i16 218, i16 0, i16 220, i16 0, i16 224, i16 0, i16 0, i16 218, i16 218, i16 218, i16 219, i16 219, i16 219, i16 221, i16 223, i16 220, i16 220, i16 220, i16 224, i16 0, i16 0, i16 0, i16 226, i16 0, i16 0, i16 223, i16 222, i16 222, i16 222, i16 225, i16 0, i16 224, i16 224, i16 224, i16 226, i16 225, i16 227, i16 0, i16 0, i16 0, i16 221, i16 221, i16 221, i16 0, i16 0, i16 0, i16 227, i16 228, i16 0, i16 226, i16 226, i16 226, i16 223, i16 223, i16 223, i16 230, i16 225, i16 225, i16 225, i16 228, i16 229, i16 0, i16 0, i16 227, i16 227, i16 227, i16 231, i16 228, i16 230, i16 233, i16 0, i16 0, i16 231, i16 232, i16 228, i16 228, i16 228, i16 0, i16 234, i16 233, i16 229, i16 0, i16 230, i16 230, i16 230, i16 0, i16 236, i16 229, i16 229, i16 229, i16 0, i16 232, i16 234, i16 231, i16 231, i16 231, i16 233, i16 233, i16 233, i16 238, i16 232, i16 232, i16 232, i16 235, i16 236, i16 234, i16 234, i16 234, i16 239, i16 0, i16 235, i16 237, i16 0, i16 236, i16 236, i16 236, i16 0, i16 237, i16 240, i16 241, i16 0, i16 0, i16 243, i16 0, i16 0, i16 244, i16 238, i16 238, i16 238, i16 242, i16 235, i16 235, i16 235, i16 240, i16 243, i16 239, i16 239, i16 239, i16 237, i16 237, i16 237, i16 247, i16 241, i16 242, i16 0, i16 240, i16 240, i16 240, i16 245, i16 243, i16 243, i16 243, i16 244, i16 244, i16 244, i16 248, i16 242, i16 242, i16 242, i16 249, i16 0, i16 250, i16 246, i16 248, i16 0, i16 0, i16 0, i16 247, i16 245, i16 241, i16 241, i16 241, i16 252, i16 0, i16 0, i16 245, i16 245, i16 245, i16 246, i16 250, i16 0, i16 0, i16 248, i16 248, i16 248, i16 253, i16 249, i16 249, i16 249, i16 246, i16 246, i16 246, i16 251, i16 252, i16 247, i16 247, i16 247, i16 251, i16 254, i16 252, i16 252, i16 252, i16 255, i16 0, i16 0, i16 256, i16 250, i16 250, i16 250, i16 256, i16 259, i16 0, i16 253, i16 253, i16 253, i16 0, i16 255, i16 257, i16 254, i16 251, i16 251, i16 251, i16 258, i16 0, i16 0, i16 254, i16 254, i16 254, i16 258, i16 255, i16 255, i16 255, i16 256, i16 256, i16 256, i16 259, i16 257, i16 0, i16 0, i16 260, i16 0, i16 259, i16 261, i16 268, i16 257, i16 257, i16 257, i16 260, i16 0, i16 258, i16 258, i16 258, i16 0, i16 0, i16 262, i16 261, i16 0, i16 263, i16 0, i16 263, i16 0, i16 0, i16 259, i16 259, i16 259, i16 0, i16 260, i16 260, i16 260, i16 261, i16 261, i16 261, i16 262, i16 0, i16 268, i16 269, i16 269, i16 269, i16 269, i16 269, i16 277, i16 262, i16 262, i16 262, i16 263, i16 263, i16 263, i16 280, i16 276, i16 279, i16 0, i16 269, i16 0, i16 277, i16 276, i16 0, i16 278, i16 0, i16 0, i16 0, i16 280, i16 268, i16 268, i16 268, i16 0, i16 279, i16 278, i16 0, i16 281, i16 0, i16 0, i16 0, i16 0, i16 0, i16 269, i16 276, i16 276, i16 276, i16 0, i16 281, i16 277, i16 277, i16 277, i16 278, i16 278, i16 278, i16 282, i16 280, i16 280, i16 280, i16 282, i16 0, i16 279, i16 279, i16 279, i16 281, i16 281, i16 281, i16 283, i16 269, i16 283, i16 284, i16 285, i16 284, i16 285, i16 0, i16 0, i16 287, i16 0, i16 0, i16 286, i16 287, i16 0, i16 282, i16 282, i16 282, i16 286, i16 288, i16 0, i16 288, i16 289, i16 0, i16 0, i16 0, i16 0, i16 283, i16 283, i16 283, i16 284, i16 284, i16 284, i16 285, i16 285, i16 285, i16 287, i16 287, i16 287, i16 286, i16 286, i16 286, i16 289, i16 290, i16 0, i16 0, i16 288, i16 288, i16 288, i16 289, i16 289, i16 289, i16 291, i16 0, i16 0, i16 292, i16 0, i16 0, i16 290, i16 293, i16 0, i16 0, i16 0, i16 294, i16 291, i16 294, i16 293, i16 295, i16 0, i16 0, i16 290, i16 290, i16 290, i16 300, i16 0, i16 292, i16 296, i16 0, i16 0, i16 291, i16 291, i16 291, i16 292, i16 292, i16 292, i16 295, i16 293, i16 293, i16 293, i16 298, i16 294, i16 294, i16 294, i16 299, i16 295, i16 295, i16 295, i16 296, i16 302, i16 299, i16 300, i16 300, i16 300, i16 296, i16 296, i16 296, i16 301, i16 303, i16 298, i16 0, i16 0, i16 0, i16 0, i16 303, i16 307, i16 0, i16 298, i16 298, i16 298, i16 0, i16 299, i16 299, i16 299, i16 304, i16 305, i16 302, i16 302, i16 302, i16 0, i16 301, i16 0, i16 305, i16 306, i16 0, i16 303, i16 303, i16 303, i16 0, i16 306, i16 304, i16 310, i16 307, i16 307, i16 307, i16 312, i16 0, i16 308, i16 0, i16 0, i16 309, i16 0, i16 305, i16 305, i16 305, i16 308, i16 311, i16 301, i16 301, i16 301, i16 306, i16 306, i16 306, i16 0, i16 310, i16 0, i16 0, i16 304, i16 304, i16 304, i16 309, i16 312, i16 0, i16 0, i16 308, i16 308, i16 308, i16 309, i16 309, i16 309, i16 313, i16 0, i16 0, i16 311, i16 311, i16 311, i16 314, i16 0, i16 313, i16 0, i16 316, i16 310, i16 310, i16 310, i16 315, i16 0, i16 0, i16 325, i16 312, i16 312, i16 312, i16 0, i16 317, i16 324, i16 315, i16 317, i16 327, i16 313, i16 313, i16 313, i16 316, i16 325, i16 326, i16 314, i16 314, i16 314, i16 324, i16 316, i16 316, i16 316, i16 0, i16 315, i16 315, i16 315, i16 325, i16 325, i16 325, i16 0, i16 330, i16 317, i16 317, i16 317, i16 326, i16 327, i16 327, i16 327, i16 332, i16 0, i16 328, i16 326, i16 326, i16 326, i16 328, i16 324, i16 324, i16 324, i16 329, i16 330, i16 331, i16 0, i16 332, i16 329, i16 0, i16 0, i16 334, i16 330, i16 330, i16 330, i16 333, i16 0, i16 333, i16 0, i16 337, i16 332, i16 332, i16 332, i16 337, i16 0, i16 331, i16 328, i16 328, i16 328, i16 334, i16 0, i16 336, i16 331, i16 331, i16 331, i16 329, i16 329, i16 329, i16 334, i16 334, i16 334, i16 335, i16 333, i16 333, i16 333, i16 338, i16 337, i16 337, i16 337, i16 342, i16 335, i16 336, i16 339, i16 0, i16 0, i16 340, i16 0, i16 342, i16 336, i16 336, i16 336, i16 338, i16 0, i16 341, i16 339, i16 340, i16 0, i16 0, i16 335, i16 335, i16 335, i16 346, i16 338, i16 338, i16 338, i16 341, i16 342, i16 342, i16 342, i16 339, i16 339, i16 339, i16 340, i16 340, i16 340, i16 343, i16 0, i16 0, i16 343, i16 344, i16 341, i16 341, i16 341, i16 0, i16 345, i16 0, i16 0, i16 348, i16 346, i16 346, i16 346, i16 349, i16 0, i16 344, i16 345, i16 350, i16 0, i16 0, i16 0, i16 0, i16 351, i16 0, i16 343, i16 343, i16 343, i16 348, i16 344, i16 344, i16 344, i16 353, i16 0, i16 345, i16 345, i16 345, i16 348, i16 348, i16 348, i16 356, i16 349, i16 349, i16 349, i16 351, i16 350, i16 350, i16 350, i16 354, i16 0, i16 351, i16 351, i16 351, i16 355, i16 354, i16 0, i16 0, i16 0, i16 357, i16 353, i16 353, i16 353, i16 0, i16 0, i16 360, i16 0, i16 0, i16 356, i16 356, i16 356, i16 357, i16 363, i16 361, i16 355, i16 0, i16 354, i16 354, i16 354, i16 360, i16 361, i16 355, i16 355, i16 355, i16 362, i16 0, i16 357, i16 357, i16 357, i16 363, i16 0, i16 0, i16 360, i16 360, i16 360, i16 364, i16 0, i16 0, i16 365, i16 0, i16 361, i16 361, i16 361, i16 366, i16 0, i16 364, i16 367, i16 362, i16 0, i16 366, i16 0, i16 362, i16 362, i16 362, i16 0, i16 369, i16 363, i16 363, i16 363, i16 0, i16 367, i16 369, i16 364, i16 364, i16 364, i16 365, i16 365, i16 365, i16 368, i16 0, i16 366, i16 366, i16 366, i16 367, i16 367, i16 367, i16 370, i16 0, i16 0, i16 371, i16 368, i16 370, i16 369, i16 369, i16 369, i16 371, i16 372, i16 0, i16 0, i16 0, i16 0, i16 0, i16 373, i16 0, i16 0, i16 368, i16 368, i16 368, i16 373, i16 0, i16 375, i16 0, i16 0, i16 370, i16 370, i16 370, i16 371, i16 371, i16 371, i16 0, i16 372, i16 374, i16 375, i16 372, i16 372, i16 372, i16 0, i16 374, i16 376, i16 373, i16 373, i16 373, i16 377, i16 376, i16 0, i16 378, i16 0, i16 375, i16 375, i16 375, i16 379, i16 0, i16 0, i16 0, i16 0, i16 381, i16 0, i16 377, i16 374, i16 374, i16 374, i16 381, i16 380, i16 0, i16 0, i16 376, i16 376, i16 376, i16 379, i16 377, i16 377, i16 377, i16 378, i16 378, i16 378, i16 382, i16 386, i16 379, i16 379, i16 379, i16 380, i16 382, i16 381, i16 381, i16 381, i16 384, i16 0, i16 0, i16 385, i16 380, i16 380, i16 380, i16 384, i16 388, i16 386, i16 385, i16 0, i16 0, i16 0, i16 0, i16 387, i16 0, i16 382, i16 382, i16 382, i16 388, i16 0, i16 0, i16 0, i16 390, i16 0, i16 0, i16 384, i16 384, i16 384, i16 385, i16 385, i16 385, i16 0, i16 389, i16 0, i16 386, i16 386, i16 386, i16 387, i16 389, i16 391, i16 387, i16 387, i16 387, i16 390, i16 393, i16 388, i16 388, i16 388, i16 392, i16 390, i16 390, i16 390, i16 394, i16 0, i16 0, i16 392, i16 396, i16 391, i16 394, i16 389, i16 389, i16 389, i16 393, i16 395, i16 0, i16 0, i16 391, i16 391, i16 391, i16 399, i16 0, i16 393, i16 393, i16 393, i16 397, i16 392, i16 392, i16 392, i16 395, i16 394, i16 394, i16 394, i16 403, i16 396, i16 396, i16 396, i16 0, i16 398, i16 397, i16 0, i16 395, i16 395, i16 395, i16 398, i16 400, i16 0, i16 399, i16 399, i16 399, i16 400, i16 401, i16 397, i16 397, i16 397, i16 404, i16 0, i16 0, i16 405, i16 0, i16 403, i16 403, i16 403, i16 406, i16 405, i16 398, i16 398, i16 398, i16 409, i16 406, i16 401, i16 408, i16 400, i16 400, i16 400, i16 407, i16 0, i16 408, i16 401, i16 401, i16 401, i16 410, i16 404, i16 404, i16 404, i16 405, i16 405, i16 405, i16 411, i16 0, i16 406, i16 406, i16 406, i16 0, i16 407, i16 409, i16 0, i16 0, i16 408, i16 408, i16 408, i16 412, i16 407, i16 407, i16 407, i16 415, i16 412, i16 410, i16 411, i16 0, i16 413, i16 0, i16 0, i16 414, i16 413, i16 411, i16 411, i16 411, i16 0, i16 0, i16 0, i16 412, i16 409, i16 409, i16 409, i16 416, i16 0, i16 0, i16 415, i16 0, i16 419, i16 0, i16 414, i16 0, i16 410, i16 410, i16 410, i16 413, i16 413, i16 413, i16 414, i16 414, i16 414, i16 417, i16 416, i16 0, i16 424, i16 418, i16 412, i16 412, i16 412, i16 420, i16 416, i16 416, i16 416, i16 415, i16 415, i16 415, i16 419, i16 0, i16 0, i16 420, i16 0, i16 421, i16 0, i16 417, i16 418, i16 0, i16 0, i16 424, i16 417, i16 417, i16 417, i16 421, i16 418, i16 418, i16 418, i16 422, i16 420, i16 420, i16 420, i16 0, i16 423, i16 0, i16 0, i16 419, i16 419, i16 419, i16 426, i16 0, i16 421, i16 421, i16 421, i16 423, i16 426, i16 422, i16 424, i16 424, i16 424, i16 0, i16 0, i16 427, i16 0, i16 0, i16 422, i16 422, i16 422, i16 427, i16 0, i16 423, i16 423, i16 423, i16 428, i16 0, i16 0, i16 426, i16 426, i16 426, i16 429, i16 430, i16 429, i16 430, i16 0, i16 0, i16 432, i16 0, i16 0, i16 0, i16 427, i16 427, i16 427, i16 436, i16 428, i16 0, i16 0, i16 433, i16 432, i16 436, i16 0, i16 428, i16 428, i16 428, i16 0, i16 435, i16 0, i16 429, i16 429, i16 429, i16 430, i16 430, i16 430, i16 432, i16 432, i16 432, i16 433, i16 434, i16 438, i16 435, i16 436, i16 436, i16 436, i16 434, i16 433, i16 433, i16 433, i16 437, i16 0, i16 0, i16 0, i16 434, i16 435, i16 435, i16 435, i16 0, i16 438, i16 439, i16 0, i16 0, i16 0, i16 440, i16 437, i16 0, i16 0, i16 438, i16 438, i16 438, i16 442, i16 0, i16 434, i16 434, i16 434, i16 441, i16 437, i16 437, i16 437, i16 0, i16 439, i16 440, i16 443, i16 0, i16 0, i16 442, i16 439, i16 439, i16 439, i16 444, i16 440, i16 440, i16 440, i16 445, i16 443, i16 0, i16 441, i16 442, i16 442, i16 442, i16 446, i16 0, i16 441, i16 441, i16 441, i16 0, i16 0, i16 445, i16 444, i16 443, i16 443, i16 443, i16 447, i16 0, i16 447, i16 446, i16 444, i16 444, i16 444, i16 449, i16 445, i16 445, i16 445, i16 448, i16 449, i16 515, i16 451, i16 446, i16 446, i16 446, i16 450, i16 0, i16 453, i16 448, i16 452, i16 454, i16 455, i16 0, i16 515, i16 447, i16 447, i16 447, i16 453, i16 450, i16 451, i16 454, i16 449, i16 449, i16 449, i16 452, i16 448, i16 448, i16 448, i16 451, i16 451, i16 451, i16 455, i16 450, i16 450, i16 450, i16 457, i16 452, i16 452, i16 452, i16 456, i16 515, i16 515, i16 515, i16 0, i16 453, i16 453, i16 453, i16 454, i16 454, i16 454, i16 458, i16 0, i16 0, i16 456, i16 0, i16 459, i16 457, i16 0, i16 455, i16 455, i16 455, i16 460, i16 457, i16 457, i16 457, i16 459, i16 456, i16 456, i16 456, i16 0, i16 0, i16 458, i16 461, i16 0, i16 460, i16 462, i16 0, i16 458, i16 458, i16 458, i16 465, i16 0, i16 459, i16 459, i16 459, i16 461, i16 465, i16 0, i16 460, i16 460, i16 460, i16 463, i16 0, i16 0, i16 463, i16 462, i16 0, i16 468, i16 0, i16 461, i16 461, i16 461, i16 462, i16 462, i16 462, i16 464, i16 0, i16 0, i16 464, i16 0, i16 466, i16 0, i16 468, i16 465, i16 465, i16 465, i16 466, i16 467, i16 463, i16 463, i16 463, i16 0, i16 469, i16 467, i16 468, i16 468, i16 468, i16 472, i16 0, i16 470, i16 0, i16 0, i16 464, i16 464, i16 464, i16 0, i16 472, i16 466, i16 466, i16 466, i16 469, i16 471, i16 0, i16 473, i16 467, i16 467, i16 467, i16 470, i16 475, i16 469, i16 469, i16 469, i16 473, i16 0, i16 0, i16 475, i16 470, i16 470, i16 470, i16 474, i16 0, i16 0, i16 471, i16 472, i16 472, i16 472, i16 478, i16 476, i16 471, i16 471, i16 471, i16 478, i16 480, i16 474, i16 476, i16 475, i16 475, i16 475, i16 477, i16 473, i16 473, i16 473, i16 480, i16 477, i16 479, i16 0, i16 474, i16 474, i16 474, i16 479, i16 0, i16 0, i16 481, i16 0, i16 476, i16 476, i16 476, i16 0, i16 478, i16 478, i16 478, i16 0, i16 481, i16 482, i16 0, i16 477, i16 477, i16 477, i16 483, i16 480, i16 480, i16 480, i16 0, i16 482, i16 484, i16 0, i16 479, i16 479, i16 479, i16 481, i16 481, i16 481, i16 484, i16 0, i16 0, i16 485, i16 0, i16 0, i16 0, i16 483, i16 482, i16 482, i16 482, i16 485, i16 486, i16 483, i16 483, i16 483, i16 490, i16 0, i16 0, i16 484, i16 484, i16 484, i16 487, i16 0, i16 0, i16 486, i16 490, i16 0, i16 488, i16 0, i16 485, i16 485, i16 485, i16 0, i16 489, i16 0, i16 487, i16 489, i16 491, i16 486, i16 486, i16 486, i16 488, i16 490, i16 490, i16 490, i16 492, i16 0, i16 491, i16 487, i16 487, i16 487, i16 492, i16 493, i16 0, i16 488, i16 488, i16 488, i16 495, i16 0, i16 493, i16 489, i16 489, i16 489, i16 494, i16 491, i16 491, i16 491, i16 496, i16 0, i16 0, i16 494, i16 0, i16 492, i16 492, i16 492, i16 495, i16 0, i16 496, i16 497, i16 493, i16 493, i16 493, i16 0, i16 499, i16 495, i16 495, i16 495, i16 499, i16 497, i16 498, i16 494, i16 494, i16 494, i16 500, i16 496, i16 496, i16 496, i16 500, i16 498, i16 504, i16 0, i16 501, i16 0, i16 0, i16 504, i16 497, i16 497, i16 497, i16 501, i16 505, i16 499, i16 499, i16 499, i16 502, i16 0, i16 502, i16 503, i16 0, i16 503, i16 0, i16 500, i16 500, i16 500, i16 505, i16 0, i16 498, i16 498, i16 498, i16 501, i16 501, i16 501, i16 504, i16 504, i16 504, i16 506, i16 0, i16 505, i16 505, i16 505, i16 507, i16 502, i16 502, i16 502, i16 503, i16 503, i16 503, i16 511, i16 510, i16 506, i16 507, i16 508, i16 512, i16 0, i16 509, i16 0, i16 510, i16 0, i16 513, i16 0, i16 0, i16 0, i16 506, i16 506, i16 506, i16 511, i16 0, i16 507, i16 507, i16 507, i16 512, i16 508, i16 513, i16 0, i16 509, i16 510, i16 510, i16 510, i16 508, i16 508, i16 508, i16 509, i16 509, i16 509, i16 0, i16 513, i16 513, i16 513, i16 0, i16 0, i16 514, i16 0, i16 511, i16 511, i16 511, i16 516, i16 0, i16 512, i16 512, i16 512, i16 514, i16 517, i16 0, i16 0, i16 518, i16 516, i16 0, i16 519, i16 0, i16 517, i16 520, i16 0, i16 518, i16 0, i16 519, i16 521, i16 0, i16 514, i16 514, i16 514, i16 520, i16 0, i16 516, i16 516, i16 516, i16 521, i16 523, i16 0, i16 517, i16 517, i16 517, i16 518, i16 518, i16 518, i16 519, i16 519, i16 519, i16 520, i16 520, i16 520, i16 522, i16 0, i16 521, i16 521, i16 521, i16 524, i16 523, i16 0, i16 525, i16 0, i16 522, i16 526, i16 525, i16 523, i16 523, i16 523, i16 528, i16 0, i16 528, i16 0, i16 0, i16 0, i16 527, i16 0, i16 0, i16 524, i16 530, i16 522, i16 522, i16 522, i16 526, i16 0, i16 524, i16 524, i16 524, i16 525, i16 525, i16 525, i16 526, i16 526, i16 526, i16 527, i16 529, i16 528, i16 528, i16 528, i16 530, i16 531, i16 532, i16 527, i16 527, i16 527, i16 533, i16 530, i16 530, i16 530, i16 529, i16 534, i16 532, i16 0, i16 533, i16 0, i16 535, i16 0, i16 0, i16 531, i16 0, i16 534, i16 536, i16 529, i16 529, i16 529, i16 0, i16 0, i16 0, i16 532, i16 532, i16 532, i16 0, i16 533, i16 533, i16 533, i16 535, i16 0, i16 534, i16 534, i16 534, i16 536, i16 0, i16 535, i16 535, i16 535, i16 531, i16 531, i16 531, i16 536, i16 536, i16 536, i16 538, i16 538, i16 538, i16 538, i16 538, i16 538, i16 538, i16 538, i16 538, i16 538, i16 538, i16 538, i16 538, i16 538, i16 539, i16 539, i16 539, i16 539, i16 539, i16 539, i16 539, i16 539, i16 539, i16 539, i16 539, i16 539, i16 539, i16 539, i16 540, i16 540, i16 540, i16 540, i16 540, i16 540, i16 540, i16 540, i16 540, i16 540, i16 540, i16 540, i16 540, i16 540, i16 541, i16 541, i16 541, i16 541, i16 541, i16 541, i16 541, i16 541, i16 541, i16 541, i16 541, i16 541, i16 541, i16 541, i16 542, i16 0, i16 542, i16 0, i16 542, i16 0, i16 542, i16 543, i16 0, i16 0, i16 543, i16 0, i16 543, i16 543, i16 543, i16 543, i16 543, i16 544, i16 544, i16 0, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 545, i16 545, i16 545, i16 545, i16 545, i16 545, i16 545, i16 545, i16 545, i16 545, i16 545, i16 545, i16 545, i16 545, i16 546, i16 546, i16 546, i16 546, i16 546, i16 546, i16 546, i16 546, i16 546, i16 546, i16 546, i16 546, i16 546, i16 547, i16 0, i16 547, i16 547, i16 547, i16 547, i16 547, i16 547, i16 547, i16 547, i16 547, i16 547, i16 547, i16 547, i16 548, i16 0, i16 548, i16 548, i16 548, i16 548, i16 548, i16 548, i16 548, i16 548, i16 548, i16 548, i16 548, i16 548, i16 549, i16 549, i16 549, i16 549, i16 549, i16 549, i16 549, i16 549, i16 549, i16 550, i16 550, i16 550, i16 551, i16 0, i16 0, i16 0, i16 0, i16 551, i16 551, i16 551, i16 552, i16 552, i16 552, i16 552, i16 552, i16 553, i16 553, i16 553, i16 0, i16 0, i16 553, i16 554, i16 554, i16 554, i16 555, i16 555, i16 555, i16 555, i16 555, i16 555, i16 555, i16 555, i16 555, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537], align 16
@yy_base = internal constant [556 x i16] [i16 0, i16 0, i16 0, i16 406, i16 404, i16 342, i16 341, i16 380, i16 3131, i16 71, i16 3131, i16 68, i16 326, i16 65, i16 66, i16 103, i16 89, i16 151, i16 326, i16 55, i16 65, i16 207, i16 69, i16 114, i16 166, i16 161, i16 129, i16 256, i16 169, i16 191, i16 199, i16 299, i16 175, i16 230, i16 233, i16 250, i16 264, i16 225, i16 267, i16 280, i16 275, i16 287, i16 184, i16 286, i16 285, i16 284, i16 323, i16 317, i16 0, i16 3131, i16 83, i16 88, i16 3131, i16 322, i16 317, i16 347, i16 0, i16 277, i16 357, i16 258, i16 0, i16 3131, i16 368, i16 3131, i16 3131, i16 0, i16 336, i16 377, i16 245, i16 243, i16 242, i16 264, i16 3131, i16 55, i16 152, i16 0, i16 345, i16 393, i16 229, i16 219, i16 218, i16 359, i16 79, i16 394, i16 362, i16 368, i16 383, i16 404, i16 394, i16 407, i16 414, i16 398, i16 429, i16 424, i16 440, i16 449, i16 446, i16 466, i16 462, i16 479, i16 482, i16 485, i16 492, i16 496, i16 504, i16 501, i16 515, i16 526, i16 534, i16 518, i16 537, i16 556, i16 540, i16 559, i16 548, i16 572, i16 578, i16 590, i16 582, i16 597, i16 602, i16 612, i16 621, i16 628, i16 634, i16 216, i16 206, i16 266, i16 260, i16 3131, i16 0, i16 3131, i16 260, i16 672, i16 259, i16 694, i16 701, i16 215, i16 720, i16 744, i16 0, i16 653, i16 552, i16 760, i16 195, i16 191, i16 190, i16 189, i16 184, i16 118, i16 182, i16 179, i16 702, i16 659, i16 707, i16 738, i16 743, i16 746, i16 752, i16 755, i16 761, i16 776, i16 764, i16 787, i16 795, i16 798, i16 801, i16 813, i16 806, i16 817, i16 836, i16 847, i16 832, i16 839, i16 855, i16 850, i16 862, i16 869, i16 886, i16 881, i16 892, i16 899, i16 902, i16 911, i16 918, i16 925, i16 934, i16 955, i16 943, i16 937, i16 950, i16 975, i16 980, i16 990, i16 993, i16 987, i16 1023, i16 997, i16 1027, i16 159, i16 3131, i16 89, i16 0, i16 3131, i16 40, i16 1030, i16 1068, i16 141, i16 139, i16 136, i16 134, i16 133, i16 132, i16 979, i16 78, i16 3131, i16 130, i16 1034, i16 1045, i16 1048, i16 1053, i16 1078, i16 1064, i16 1090, i16 1069, i16 1094, i16 1087, i16 1101, i16 1112, i16 1125, i16 1120, i16 1131, i16 1138, i16 1134, i16 1143, i16 1168, i16 1151, i16 1176, i16 1164, i16 1173, i16 1183, i16 1207, i16 1194, i16 1187, i16 1190, i16 1213, i16 1227, i16 1232, i16 1220, i16 1224, i16 1244, i16 1257, i16 1237, i16 1250, i16 1263, i16 1267, i16 1270, i16 1282, i16 1287, i16 1300, i16 1304, i16 1307, i16 1319, i16 1322, i16 188, i16 181, i16 3131, i16 130, i16 1339, i16 1379, i16 112, i16 110, i16 109, i16 107, i16 103, i16 94, i16 1353, i16 1358, i16 1361, i16 1370, i16 1365, i16 1373, i16 1391, i16 1403, i16 1406, i16 1409, i16 1415, i16 1412, i16 1422, i16 1425, i16 1446, i16 1455, i16 1458, i16 1462, i16 1466, i16 1470, i16 1479, i16 3131, i16 1492, i16 1496, i16 1476, i16 1532, i16 1501, i16 1510, i16 1542, i16 1527, i16 1535, i16 1517, i16 1549, i16 1552, i16 1566, i16 1558, i16 1573, i16 1582, i16 1588, i16 1596, i16 1592, i16 1604, i16 3131, i16 3131, i16 102, i16 85, i16 81, i16 69, i16 1618, i16 1599, i16 1614, i16 1608, i16 1644, i16 1653, i16 1630, i16 1650, i16 1638, i16 1660, i16 1656, i16 1686, i16 1676, i16 1664, i16 1690, i16 1697, i16 1700, i16 1708, i16 1694, i16 1730, i16 1734, i16 1739, i16 1716, i16 3131, i16 1742, i16 1746, i16 1750, i16 1755, i16 3131, i16 1764, i16 1780, i16 1785, i16 1772, i16 1790, i16 50, i16 31, i16 1796, i16 1804, i16 1815, i16 1820, i16 1826, i16 1829, i16 1834, i16 1837, i16 1859, i16 1846, i16 1867, i16 1870, i16 1877, i16 1883, i16 1902, i16 1891, i16 1909, i16 1913, i16 1916, i16 1921, i16 1933, i16 1926, i16 1946, i16 33, i16 1956, i16 1959, i16 1965, i16 1971, i16 1976, i16 1990, i16 1980, i16 1997, i16 2006, i16 2002, i16 2010, i16 2021, i16 2014, i16 2032, i16 2045, i16 2027, i16 2052, i16 2058, i16 45, i16 2040, i16 2062, i16 2065, i16 2070, i16 2082, i16 2078, i16 2102, i16 2114, i16 2095, i16 2128, i16 2117, i16 2120, i16 2135, i16 2132, i16 2150, i16 2154, i16 2165, i16 2158, i16 2170, i16 2184, i16 2189, i16 2176, i16 3131, i16 2195, i16 2208, i16 2219, i16 2225, i16 2228, i16 3131, i16 2231, i16 2242, i16 2268, i16 2250, i16 2238, i16 2272, i16 2263, i16 2282, i16 2286, i16 2298, i16 2293, i16 2305, i16 2312, i16 2316, i16 2323, i16 2335, i16 2346, i16 2342, i16 2353, i16 2349, i16 2357, i16 2365, i16 2368, i16 2379, i16 2387, i16 2383, i16 2398, i16 2403, i16 2409, i16 2420, i16 2423, i16 2439, i16 2453, i16 2434, i16 2458, i16 2465, i16 2445, i16 2470, i16 2477, i16 2489, i16 2484, i16 2500, i16 2507, i16 2496, i16 2515, i16 2526, i16 2519, i16 2537, i16 2530, i16 2540, i16 2551, i16 2556, i16 2562, i16 2573, i16 2582, i16 2592, i16 2598, i16 2604, i16 2586, i16 2608, i16 2616, i16 2623, i16 2634, i16 2628, i16 2638, i16 2649, i16 2669, i16 2654, i16 2664, i16 2672, i16 2684, i16 2687, i16 2675, i16 2680, i16 2705, i16 2710, i16 2721, i16 2724, i16 2718, i16 2735, i16 2740, i16 2728, i16 2760, i16 2361, i16 2765, i16 2771, i16 2774, i16 2777, i16 2780, i16 2785, i16 2810, i16 2796, i16 2815, i16 2818, i16 2821, i16 2832, i16 2826, i16 2852, i16 2836, i16 2875, i16 2858, i16 2862, i16 2867, i16 2872, i16 2878, i16 3131, i16 2950, i16 2964, i16 2978, i16 2992, i16 3001, i16 3010, i16 3019, i16 3032, i16 3046, i16 3059, i16 3073, i16 3083, i16 3089, i16 3097, i16 3099, i16 3105, i16 3111, i16 3117], align 16
@yy_def = internal constant [556 x i16] [i16 0, i16 537, i16 1, i16 538, i16 538, i16 539, i16 539, i16 537, i16 537, i16 537, i16 537, i16 540, i16 541, i16 537, i16 542, i16 537, i16 543, i16 537, i16 17, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 537, i16 544, i16 544, i16 544, i16 544, i16 21, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 537, i16 537, i16 537, i16 545, i16 545, i16 546, i16 537, i16 537, i16 540, i16 537, i16 540, i16 537, i16 547, i16 15, i16 17, i16 537, i16 537, i16 15, i16 537, i16 537, i16 537, i16 537, i16 548, i16 549, i16 537, i16 537, i16 537, i16 537, i16 17, i16 537, i16 537, i16 537, i16 550, i16 544, i16 537, i16 537, i16 537, i16 537, i16 544, i16 21, i16 21, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 537, i16 537, i16 545, i16 545, i16 537, i16 546, i16 537, i16 537, i16 537, i16 551, i16 537, i16 537, i16 537, i16 537, i16 537, i16 548, i16 549, i16 552, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 553, i16 537, i16 537, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 537, i16 537, i16 537, i16 554, i16 537, i16 537, i16 555, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 553, i16 537, i16 537, i16 537, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 537, i16 537, i16 537, i16 537, i16 555, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 537, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 537, i16 544, i16 544, i16 544, i16 544, i16 537, i16 544, i16 544, i16 544, i16 544, i16 544, i16 537, i16 537, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 537, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 537, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 537, i16 544, i16 544, i16 544, i16 544, i16 544, i16 537, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 544, i16 0, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537], align 16
@yy_meta = internal constant [73 x i8] c"\00\01\01\02\01\01\01\03\04\05\05\06\07\08\08\08\08\08\08\08\01\05\09\09\09\09\0A\09\0B\0B\0C\0D\0B\0B\0B\0B\0B\0B\0D\0B\0B\0B\0B\0B\0B\09\09\09\09\0A\09\0B\0B\0B\0B\0D\0B\0B\0B\0B\0B\0B\0D\0B\0B\0B\0B\0B\0E\01\0B\0B\0B", align 16
@yy_nxt = internal constant [3204 x i16] [i16 0, i16 8, i16 9, i16 10, i16 9, i16 8, i16 11, i16 12, i16 8, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 18, i16 18, i16 18, i16 18, i16 18, i16 8, i16 8, i16 19, i16 19, i16 19, i16 20, i16 21, i16 22, i16 19, i16 19, i16 23, i16 19, i16 19, i16 24, i16 19, i16 19, i16 19, i16 19, i16 19, i16 19, i16 25, i16 19, i16 19, i16 26, i16 27, i16 19, i16 28, i16 29, i16 30, i16 31, i16 32, i16 33, i16 19, i16 34, i16 19, i16 35, i16 19, i16 36, i16 37, i16 19, i16 19, i16 38, i16 39, i16 40, i16 41, i16 42, i16 19, i16 19, i16 8, i16 8, i16 43, i16 44, i16 45, i16 50, i16 52, i16 50, i16 56, i16 56, i16 57, i16 57, i16 57, i16 57, i16 57, i16 57, i16 57, i16 50, i16 72, i16 50, i16 76, i16 76, i16 266, i16 58, i16 58, i16 267, i16 52, i16 266, i16 59, i16 64, i16 77, i16 402, i16 268, i16 65, i16 264, i16 264, i16 264, i16 264, i16 264, i16 264, i16 77, i16 215, i16 72, i16 53, i16 77, i16 383, i16 58, i16 58, i16 60, i16 60, i16 60, i16 60, i16 60, i16 60, i16 60, i16 81, i16 84, i16 78, i16 79, i16 80, i16 61, i16 62, i16 63, i16 53, i16 67, i16 215, i16 61, i16 78, i16 79, i16 80, i16 205, i16 78, i16 79, i16 80, i16 91, i16 91, i16 91, i16 91, i16 91, i16 91, i16 91, i16 214, i16 359, i16 61, i16 62, i16 63, i16 268, i16 358, i16 215, i16 77, i16 61, i16 68, i16 69, i16 70, i16 56, i16 141, i16 71, i16 71, i16 71, i16 71, i16 71, i16 71, i16 71, i16 85, i16 323, i16 214, i16 72, i16 72, i16 205, i16 58, i16 322, i16 321, i16 215, i16 268, i16 73, i16 73, i16 78, i16 79, i16 80, i16 320, i16 319, i16 72, i16 72, i16 74, i16 86, i16 75, i16 90, i16 318, i16 87, i16 72, i16 72, i16 76, i16 58, i16 66, i16 275, i16 141, i16 77, i16 274, i16 73, i16 73, i16 273, i16 77, i16 205, i16 88, i16 77, i16 72, i16 72, i16 74, i16 82, i16 82, i16 77, i16 89, i16 83, i16 83, i16 83, i16 83, i16 83, i16 83, i16 83, i16 77, i16 91, i16 124, i16 107, i16 78, i16 79, i16 80, i16 77, i16 100, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 77, i16 101, i16 103, i16 78, i16 79, i16 80, i16 216, i16 102, i16 77, i16 76, i16 104, i16 212, i16 78, i16 79, i16 80, i16 105, i16 66, i16 211, i16 210, i16 78, i16 79, i16 80, i16 141, i16 204, i16 200, i16 200, i16 77, i16 78, i16 79, i16 80, i16 537, i16 77, i16 128, i16 199, i16 77, i16 78, i16 79, i16 80, i16 92, i16 93, i16 94, i16 95, i16 114, i16 91, i16 96, i16 151, i16 150, i16 97, i16 109, i16 108, i16 98, i16 77, i16 99, i16 78, i16 79, i16 80, i16 76, i16 77, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 537, i16 77, i16 110, i16 111, i16 77, i16 148, i16 147, i16 112, i16 66, i16 137, i16 115, i16 113, i16 77, i16 537, i16 78, i16 79, i16 80, i16 77, i16 131, i16 537, i16 78, i16 79, i16 80, i16 129, i16 77, i16 128, i16 116, i16 119, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 120, i16 118, i16 121, i16 117, i16 122, i16 78, i16 79, i16 80, i16 142, i16 123, i16 78, i16 79, i16 80, i16 126, i16 125, i16 91, i16 106, i16 78, i16 79, i16 80, i16 133, i16 133, i16 133, i16 133, i16 133, i16 133, i16 135, i16 135, i16 537, i16 55, i16 136, i16 136, i16 136, i16 136, i16 136, i16 136, i16 136, i16 138, i16 138, i16 143, i16 537, i16 139, i16 139, i16 139, i16 139, i16 139, i16 139, i16 139, i16 77, i16 134, i16 66, i16 66, i16 66, i16 66, i16 66, i16 66, i16 66, i16 76, i16 76, i16 76, i16 76, i16 76, i16 77, i16 76, i16 76, i16 77, i16 144, i16 145, i16 146, i16 49, i16 49, i16 77, i16 47, i16 76, i16 47, i16 78, i16 79, i16 80, i16 156, i16 153, i16 155, i16 154, i16 157, i16 152, i16 537, i16 153, i16 77, i16 159, i16 537, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 158, i16 76, i16 77, i16 78, i16 79, i16 80, i16 77, i16 153, i16 537, i16 154, i16 160, i16 537, i16 77, i16 537, i16 153, i16 77, i16 537, i16 537, i16 78, i16 79, i16 80, i16 537, i16 77, i16 537, i16 537, i16 537, i16 76, i16 158, i16 537, i16 78, i16 79, i16 80, i16 77, i16 78, i16 79, i16 80, i16 537, i16 77, i16 163, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 537, i16 161, i16 537, i16 77, i16 78, i16 79, i16 80, i16 162, i16 537, i16 77, i16 169, i16 537, i16 77, i16 537, i16 78, i16 79, i16 80, i16 164, i16 537, i16 78, i16 79, i16 80, i16 165, i16 537, i16 166, i16 77, i16 537, i16 167, i16 168, i16 77, i16 78, i16 79, i16 80, i16 537, i16 537, i16 537, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 77, i16 537, i16 170, i16 77, i16 171, i16 537, i16 77, i16 537, i16 176, i16 172, i16 78, i16 79, i16 80, i16 77, i16 78, i16 79, i16 80, i16 77, i16 537, i16 537, i16 173, i16 174, i16 77, i16 175, i16 537, i16 77, i16 177, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 77, i16 178, i16 179, i16 77, i16 78, i16 79, i16 80, i16 180, i16 78, i16 79, i16 80, i16 77, i16 537, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 77, i16 537, i16 181, i16 77, i16 184, i16 537, i16 77, i16 182, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 77, i16 183, i16 188, i16 185, i16 206, i16 78, i16 79, i16 80, i16 77, i16 537, i16 537, i16 77, i16 187, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 186, i16 158, i16 77, i16 537, i16 189, i16 78, i16 79, i16 80, i16 77, i16 207, i16 208, i16 209, i16 77, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 537, i16 77, i16 537, i16 537, i16 190, i16 537, i16 537, i16 537, i16 77, i16 192, i16 78, i16 79, i16 80, i16 77, i16 537, i16 537, i16 78, i16 79, i16 80, i16 191, i16 78, i16 79, i16 80, i16 77, i16 537, i16 537, i16 537, i16 194, i16 78, i16 79, i16 80, i16 193, i16 77, i16 142, i16 537, i16 78, i16 79, i16 80, i16 195, i16 77, i16 78, i16 79, i16 80, i16 537, i16 196, i16 77, i16 537, i16 200, i16 197, i16 537, i16 78, i16 79, i16 80, i16 201, i16 201, i16 201, i16 201, i16 201, i16 201, i16 78, i16 79, i16 80, i16 537, i16 198, i16 143, i16 537, i16 78, i16 79, i16 80, i16 537, i16 77, i16 537, i16 78, i16 79, i16 80, i16 136, i16 136, i16 136, i16 136, i16 136, i16 136, i16 136, i16 136, i16 136, i16 136, i16 136, i16 136, i16 136, i16 136, i16 537, i16 537, i16 144, i16 145, i16 146, i16 203, i16 537, i16 63, i16 78, i16 79, i16 80, i16 203, i16 139, i16 139, i16 139, i16 139, i16 139, i16 139, i16 139, i16 537, i16 537, i16 537, i16 537, i16 537, i16 77, i16 537, i16 537, i16 217, i16 203, i16 77, i16 63, i16 537, i16 537, i16 537, i16 537, i16 203, i16 139, i16 139, i16 139, i16 139, i16 139, i16 139, i16 139, i16 141, i16 141, i16 141, i16 141, i16 141, i16 61, i16 221, i16 63, i16 78, i16 79, i16 80, i16 61, i16 537, i16 78, i16 79, i16 80, i16 141, i16 77, i16 537, i16 218, i16 537, i16 537, i16 77, i16 537, i16 537, i16 77, i16 537, i16 223, i16 61, i16 219, i16 63, i16 77, i16 220, i16 537, i16 77, i16 61, i16 537, i16 537, i16 537, i16 141, i16 77, i16 222, i16 537, i16 77, i16 78, i16 79, i16 80, i16 537, i16 225, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 77, i16 537, i16 537, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 141, i16 537, i16 77, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 226, i16 77, i16 231, i16 224, i16 77, i16 537, i16 227, i16 77, i16 537, i16 78, i16 79, i16 80, i16 77, i16 229, i16 537, i16 232, i16 228, i16 537, i16 537, i16 77, i16 78, i16 79, i16 80, i16 77, i16 537, i16 537, i16 233, i16 537, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 230, i16 77, i16 78, i16 79, i16 80, i16 77, i16 537, i16 537, i16 77, i16 78, i16 79, i16 80, i16 537, i16 78, i16 79, i16 80, i16 77, i16 537, i16 234, i16 77, i16 537, i16 537, i16 235, i16 236, i16 77, i16 238, i16 537, i16 537, i16 78, i16 79, i16 80, i16 77, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 77, i16 537, i16 237, i16 537, i16 537, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 239, i16 77, i16 78, i16 79, i16 80, i16 240, i16 77, i16 242, i16 241, i16 78, i16 79, i16 80, i16 77, i16 247, i16 537, i16 243, i16 78, i16 79, i16 80, i16 77, i16 537, i16 537, i16 77, i16 537, i16 245, i16 537, i16 537, i16 537, i16 78, i16 79, i16 80, i16 77, i16 244, i16 78, i16 79, i16 80, i16 537, i16 537, i16 77, i16 78, i16 79, i16 80, i16 537, i16 537, i16 248, i16 77, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 246, i16 249, i16 77, i16 537, i16 250, i16 77, i16 78, i16 79, i16 80, i16 222, i16 537, i16 77, i16 537, i16 78, i16 79, i16 80, i16 537, i16 253, i16 77, i16 537, i16 78, i16 79, i16 80, i16 77, i16 537, i16 537, i16 537, i16 251, i16 252, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 214, i16 254, i16 537, i16 78, i16 79, i16 80, i16 537, i16 215, i16 77, i16 537, i16 78, i16 79, i16 80, i16 77, i16 537, i16 78, i16 79, i16 80, i16 255, i16 257, i16 77, i16 537, i16 537, i16 77, i16 214, i16 537, i16 77, i16 537, i16 537, i16 256, i16 77, i16 215, i16 142, i16 537, i16 260, i16 78, i16 79, i16 80, i16 537, i16 537, i16 78, i16 79, i16 80, i16 258, i16 537, i16 262, i16 259, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 77, i16 78, i16 79, i16 80, i16 77, i16 537, i16 537, i16 269, i16 537, i16 537, i16 261, i16 77, i16 537, i16 537, i16 263, i16 205, i16 205, i16 205, i16 205, i16 205, i16 205, i16 205, i16 77, i16 276, i16 537, i16 77, i16 537, i16 78, i16 79, i16 80, i16 77, i16 78, i16 79, i16 80, i16 270, i16 271, i16 272, i16 279, i16 78, i16 79, i16 80, i16 77, i16 277, i16 537, i16 278, i16 537, i16 77, i16 537, i16 537, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 77, i16 280, i16 78, i16 79, i16 80, i16 281, i16 537, i16 537, i16 537, i16 77, i16 537, i16 537, i16 77, i16 78, i16 79, i16 80, i16 77, i16 537, i16 78, i16 79, i16 80, i16 283, i16 282, i16 77, i16 537, i16 537, i16 537, i16 78, i16 79, i16 80, i16 537, i16 537, i16 537, i16 284, i16 77, i16 537, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 77, i16 78, i16 79, i16 80, i16 285, i16 77, i16 537, i16 537, i16 78, i16 79, i16 80, i16 77, i16 286, i16 288, i16 77, i16 537, i16 537, i16 289, i16 77, i16 78, i16 79, i16 80, i16 537, i16 77, i16 291, i16 287, i16 537, i16 78, i16 79, i16 80, i16 537, i16 77, i16 78, i16 79, i16 80, i16 537, i16 290, i16 292, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 77, i16 78, i16 79, i16 80, i16 77, i16 294, i16 78, i16 79, i16 80, i16 77, i16 537, i16 293, i16 77, i16 537, i16 78, i16 79, i16 80, i16 537, i16 295, i16 77, i16 297, i16 537, i16 537, i16 77, i16 537, i16 537, i16 77, i16 78, i16 79, i16 80, i16 77, i16 78, i16 79, i16 80, i16 296, i16 299, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 302, i16 77, i16 298, i16 537, i16 78, i16 79, i16 80, i16 77, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 77, i16 78, i16 79, i16 80, i16 77, i16 537, i16 304, i16 77, i16 303, i16 537, i16 537, i16 537, i16 77, i16 300, i16 78, i16 79, i16 80, i16 77, i16 537, i16 537, i16 78, i16 79, i16 80, i16 301, i16 77, i16 537, i16 537, i16 78, i16 79, i16 80, i16 77, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 77, i16 306, i16 78, i16 79, i16 80, i16 305, i16 77, i16 78, i16 79, i16 80, i16 77, i16 537, i16 537, i16 77, i16 78, i16 79, i16 80, i16 309, i16 312, i16 537, i16 78, i16 79, i16 80, i16 537, i16 308, i16 77, i16 307, i16 78, i16 79, i16 80, i16 77, i16 537, i16 537, i16 78, i16 79, i16 80, i16 311, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 77, i16 310, i16 537, i16 537, i16 77, i16 537, i16 313, i16 77, i16 142, i16 78, i16 79, i16 80, i16 314, i16 537, i16 78, i16 79, i16 80, i16 537, i16 537, i16 77, i16 315, i16 537, i16 77, i16 537, i16 317, i16 537, i16 537, i16 78, i16 79, i16 80, i16 537, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 316, i16 537, i16 269, i16 268, i16 268, i16 268, i16 268, i16 268, i16 325, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 328, i16 77, i16 327, i16 537, i16 268, i16 537, i16 77, i16 324, i16 537, i16 77, i16 537, i16 537, i16 537, i16 77, i16 270, i16 271, i16 272, i16 537, i16 77, i16 326, i16 537, i16 77, i16 537, i16 537, i16 537, i16 537, i16 537, i16 268, i16 78, i16 79, i16 80, i16 537, i16 329, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 77, i16 78, i16 79, i16 80, i16 330, i16 537, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 77, i16 268, i16 331, i16 77, i16 333, i16 332, i16 77, i16 537, i16 537, i16 77, i16 537, i16 537, i16 77, i16 335, i16 537, i16 78, i16 79, i16 80, i16 334, i16 77, i16 537, i16 336, i16 77, i16 537, i16 537, i16 537, i16 537, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 337, i16 77, i16 537, i16 537, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 77, i16 537, i16 537, i16 77, i16 537, i16 537, i16 338, i16 77, i16 537, i16 537, i16 537, i16 77, i16 339, i16 342, i16 341, i16 77, i16 537, i16 537, i16 78, i16 79, i16 80, i16 77, i16 537, i16 340, i16 77, i16 537, i16 537, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 343, i16 78, i16 79, i16 80, i16 77, i16 78, i16 79, i16 80, i16 77, i16 78, i16 79, i16 80, i16 344, i16 77, i16 346, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 347, i16 77, i16 345, i16 537, i16 537, i16 537, i16 537, i16 348, i16 77, i16 537, i16 78, i16 79, i16 80, i16 537, i16 78, i16 79, i16 80, i16 327, i16 77, i16 78, i16 79, i16 80, i16 537, i16 77, i16 537, i16 327, i16 77, i16 537, i16 78, i16 79, i16 80, i16 537, i16 349, i16 77, i16 352, i16 78, i16 79, i16 80, i16 353, i16 537, i16 77, i16 537, i16 537, i16 77, i16 537, i16 78, i16 79, i16 80, i16 350, i16 77, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 537, i16 77, i16 537, i16 537, i16 78, i16 79, i16 80, i16 351, i16 77, i16 537, i16 537, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 77, i16 537, i16 537, i16 78, i16 79, i16 80, i16 77, i16 537, i16 354, i16 537, i16 77, i16 78, i16 79, i16 80, i16 77, i16 537, i16 537, i16 77, i16 78, i16 79, i16 80, i16 537, i16 77, i16 360, i16 355, i16 357, i16 77, i16 78, i16 79, i16 80, i16 356, i16 361, i16 77, i16 78, i16 79, i16 80, i16 77, i16 78, i16 79, i16 80, i16 537, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 537, i16 77, i16 78, i16 79, i16 80, i16 362, i16 78, i16 79, i16 80, i16 77, i16 537, i16 363, i16 78, i16 79, i16 80, i16 77, i16 78, i16 79, i16 80, i16 364, i16 365, i16 77, i16 537, i16 367, i16 77, i16 537, i16 537, i16 77, i16 78, i16 79, i16 80, i16 77, i16 537, i16 368, i16 537, i16 77, i16 78, i16 79, i16 80, i16 370, i16 537, i16 366, i16 78, i16 79, i16 80, i16 365, i16 537, i16 77, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 77, i16 78, i16 79, i16 80, i16 77, i16 78, i16 79, i16 80, i16 77, i16 369, i16 365, i16 77, i16 537, i16 537, i16 77, i16 537, i16 374, i16 78, i16 79, i16 80, i16 371, i16 537, i16 77, i16 365, i16 372, i16 537, i16 537, i16 78, i16 79, i16 80, i16 77, i16 78, i16 79, i16 80, i16 373, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 77, i16 537, i16 537, i16 375, i16 77, i16 78, i16 79, i16 80, i16 537, i16 77, i16 537, i16 537, i16 77, i16 78, i16 79, i16 80, i16 77, i16 537, i16 376, i16 377, i16 77, i16 537, i16 537, i16 537, i16 537, i16 77, i16 537, i16 78, i16 79, i16 80, i16 378, i16 78, i16 79, i16 80, i16 77, i16 537, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 77, i16 78, i16 79, i16 80, i16 379, i16 78, i16 79, i16 80, i16 77, i16 537, i16 78, i16 79, i16 80, i16 77, i16 380, i16 537, i16 537, i16 537, i16 77, i16 78, i16 79, i16 80, i16 537, i16 537, i16 77, i16 537, i16 537, i16 78, i16 79, i16 80, i16 382, i16 386, i16 77, i16 381, i16 537, i16 78, i16 79, i16 80, i16 384, i16 219, i16 78, i16 79, i16 80, i16 77, i16 537, i16 78, i16 79, i16 80, i16 77, i16 537, i16 537, i16 78, i16 79, i16 80, i16 77, i16 537, i16 537, i16 77, i16 537, i16 78, i16 79, i16 80, i16 77, i16 537, i16 387, i16 77, i16 385, i16 537, i16 388, i16 537, i16 78, i16 79, i16 80, i16 537, i16 77, i16 78, i16 79, i16 80, i16 537, i16 389, i16 391, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 77, i16 537, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 77, i16 537, i16 537, i16 77, i16 390, i16 392, i16 78, i16 79, i16 80, i16 393, i16 77, i16 537, i16 537, i16 537, i16 537, i16 537, i16 77, i16 537, i16 537, i16 78, i16 79, i16 80, i16 365, i16 537, i16 77, i16 537, i16 537, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 537, i16 394, i16 77, i16 395, i16 78, i16 79, i16 80, i16 537, i16 365, i16 77, i16 78, i16 79, i16 80, i16 77, i16 396, i16 537, i16 77, i16 537, i16 78, i16 79, i16 80, i16 77, i16 537, i16 537, i16 537, i16 537, i16 77, i16 537, i16 397, i16 78, i16 79, i16 80, i16 400, i16 77, i16 537, i16 537, i16 78, i16 79, i16 80, i16 398, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 77, i16 404, i16 78, i16 79, i16 80, i16 399, i16 401, i16 78, i16 79, i16 80, i16 77, i16 537, i16 537, i16 77, i16 78, i16 79, i16 80, i16 403, i16 406, i16 77, i16 219, i16 537, i16 537, i16 537, i16 537, i16 77, i16 537, i16 78, i16 79, i16 80, i16 77, i16 537, i16 537, i16 537, i16 77, i16 537, i16 537, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 537, i16 77, i16 537, i16 78, i16 79, i16 80, i16 405, i16 407, i16 77, i16 78, i16 79, i16 80, i16 408, i16 77, i16 78, i16 79, i16 80, i16 77, i16 78, i16 79, i16 80, i16 77, i16 537, i16 537, i16 410, i16 77, i16 409, i16 412, i16 78, i16 79, i16 80, i16 411, i16 77, i16 537, i16 537, i16 78, i16 79, i16 80, i16 77, i16 537, i16 78, i16 79, i16 80, i16 77, i16 78, i16 79, i16 80, i16 413, i16 78, i16 79, i16 80, i16 77, i16 78, i16 79, i16 80, i16 537, i16 77, i16 414, i16 537, i16 78, i16 79, i16 80, i16 396, i16 77, i16 537, i16 78, i16 79, i16 80, i16 404, i16 77, i16 78, i16 79, i16 80, i16 77, i16 537, i16 537, i16 77, i16 537, i16 78, i16 79, i16 80, i16 77, i16 416, i16 78, i16 79, i16 80, i16 419, i16 417, i16 415, i16 77, i16 78, i16 79, i16 80, i16 77, i16 537, i16 365, i16 78, i16 79, i16 80, i16 365, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 77, i16 537, i16 78, i16 79, i16 80, i16 537, i16 418, i16 77, i16 537, i16 537, i16 78, i16 79, i16 80, i16 421, i16 78, i16 79, i16 80, i16 425, i16 422, i16 77, i16 420, i16 537, i16 77, i16 537, i16 537, i16 77, i16 423, i16 78, i16 79, i16 80, i16 537, i16 537, i16 537, i16 77, i16 78, i16 79, i16 80, i16 77, i16 537, i16 537, i16 77, i16 537, i16 365, i16 537, i16 424, i16 537, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 77, i16 365, i16 537, i16 431, i16 77, i16 78, i16 79, i16 80, i16 77, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 77, i16 537, i16 537, i16 427, i16 537, i16 77, i16 537, i16 426, i16 365, i16 537, i16 537, i16 77, i16 78, i16 79, i16 80, i16 428, i16 78, i16 79, i16 80, i16 77, i16 78, i16 79, i16 80, i16 537, i16 77, i16 537, i16 537, i16 78, i16 79, i16 80, i16 77, i16 537, i16 78, i16 79, i16 80, i16 430, i16 432, i16 429, i16 78, i16 79, i16 80, i16 537, i16 537, i16 77, i16 537, i16 537, i16 78, i16 79, i16 80, i16 433, i16 537, i16 78, i16 79, i16 80, i16 77, i16 537, i16 537, i16 78, i16 79, i16 80, i16 77, i16 436, i16 435, i16 77, i16 537, i16 537, i16 77, i16 537, i16 537, i16 537, i16 78, i16 79, i16 80, i16 77, i16 434, i16 537, i16 537, i16 77, i16 365, i16 440, i16 537, i16 78, i16 79, i16 80, i16 537, i16 77, i16 537, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 365, i16 437, i16 77, i16 439, i16 78, i16 79, i16 80, i16 77, i16 78, i16 79, i16 80, i16 77, i16 537, i16 537, i16 537, i16 438, i16 78, i16 79, i16 80, i16 537, i16 442, i16 77, i16 537, i16 537, i16 537, i16 77, i16 441, i16 537, i16 537, i16 78, i16 79, i16 80, i16 77, i16 537, i16 78, i16 79, i16 80, i16 77, i16 78, i16 79, i16 80, i16 537, i16 443, i16 444, i16 77, i16 537, i16 537, i16 446, i16 78, i16 79, i16 80, i16 77, i16 78, i16 79, i16 80, i16 77, i16 447, i16 537, i16 445, i16 78, i16 79, i16 80, i16 77, i16 537, i16 78, i16 79, i16 80, i16 537, i16 537, i16 449, i16 448, i16 78, i16 79, i16 80, i16 77, i16 537, i16 451, i16 450, i16 78, i16 79, i16 80, i16 77, i16 78, i16 79, i16 80, i16 77, i16 453, i16 518, i16 77, i16 78, i16 79, i16 80, i16 77, i16 537, i16 457, i16 452, i16 77, i16 458, i16 459, i16 537, i16 77, i16 78, i16 79, i16 80, i16 77, i16 454, i16 455, i16 77, i16 78, i16 79, i16 80, i16 456, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 77, i16 78, i16 79, i16 80, i16 77, i16 78, i16 79, i16 80, i16 77, i16 78, i16 79, i16 80, i16 537, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 77, i16 537, i16 537, i16 365, i16 537, i16 77, i16 460, i16 537, i16 78, i16 79, i16 80, i16 77, i16 78, i16 79, i16 80, i16 462, i16 78, i16 79, i16 80, i16 537, i16 537, i16 461, i16 77, i16 537, i16 463, i16 77, i16 537, i16 78, i16 79, i16 80, i16 468, i16 537, i16 78, i16 79, i16 80, i16 464, i16 77, i16 537, i16 78, i16 79, i16 80, i16 77, i16 537, i16 537, i16 466, i16 465, i16 537, i16 77, i16 537, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 77, i16 537, i16 537, i16 467, i16 537, i16 77, i16 537, i16 471, i16 78, i16 79, i16 80, i16 469, i16 77, i16 78, i16 79, i16 80, i16 537, i16 77, i16 470, i16 78, i16 79, i16 80, i16 475, i16 537, i16 77, i16 537, i16 537, i16 78, i16 79, i16 80, i16 537, i16 77, i16 78, i16 79, i16 80, i16 472, i16 77, i16 537, i16 476, i16 78, i16 79, i16 80, i16 473, i16 77, i16 78, i16 79, i16 80, i16 77, i16 537, i16 537, i16 478, i16 78, i16 79, i16 80, i16 77, i16 537, i16 537, i16 474, i16 78, i16 79, i16 80, i16 481, i16 77, i16 78, i16 79, i16 80, i16 77, i16 483, i16 477, i16 479, i16 78, i16 79, i16 80, i16 77, i16 78, i16 79, i16 80, i16 77, i16 480, i16 482, i16 537, i16 78, i16 79, i16 80, i16 77, i16 537, i16 537, i16 77, i16 537, i16 78, i16 79, i16 80, i16 537, i16 78, i16 79, i16 80, i16 537, i16 484, i16 77, i16 537, i16 78, i16 79, i16 80, i16 77, i16 78, i16 79, i16 80, i16 537, i16 485, i16 77, i16 537, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 487, i16 537, i16 537, i16 77, i16 537, i16 537, i16 537, i16 486, i16 78, i16 79, i16 80, i16 488, i16 77, i16 78, i16 79, i16 80, i16 77, i16 537, i16 537, i16 78, i16 79, i16 80, i16 77, i16 537, i16 537, i16 489, i16 493, i16 537, i16 77, i16 537, i16 78, i16 79, i16 80, i16 537, i16 77, i16 537, i16 490, i16 492, i16 77, i16 78, i16 79, i16 80, i16 491, i16 78, i16 79, i16 80, i16 77, i16 537, i16 494, i16 78, i16 79, i16 80, i16 495, i16 77, i16 537, i16 78, i16 79, i16 80, i16 77, i16 537, i16 496, i16 78, i16 79, i16 80, i16 77, i16 78, i16 79, i16 80, i16 77, i16 537, i16 537, i16 497, i16 537, i16 78, i16 79, i16 80, i16 498, i16 537, i16 499, i16 77, i16 78, i16 79, i16 80, i16 537, i16 77, i16 78, i16 79, i16 80, i16 502, i16 500, i16 501, i16 78, i16 79, i16 80, i16 77, i16 78, i16 79, i16 80, i16 503, i16 77, i16 507, i16 537, i16 77, i16 537, i16 537, i16 77, i16 78, i16 79, i16 80, i16 504, i16 77, i16 78, i16 79, i16 80, i16 77, i16 537, i16 505, i16 77, i16 537, i16 506, i16 537, i16 78, i16 79, i16 80, i16 508, i16 537, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 77, i16 537, i16 78, i16 79, i16 80, i16 77, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 514, i16 77, i16 509, i16 510, i16 77, i16 515, i16 537, i16 77, i16 537, i16 513, i16 537, i16 77, i16 537, i16 537, i16 537, i16 78, i16 79, i16 80, i16 77, i16 537, i16 78, i16 79, i16 80, i16 77, i16 511, i16 516, i16 537, i16 512, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 537, i16 78, i16 79, i16 80, i16 537, i16 537, i16 77, i16 537, i16 78, i16 79, i16 80, i16 77, i16 537, i16 78, i16 79, i16 80, i16 517, i16 77, i16 537, i16 537, i16 77, i16 519, i16 537, i16 77, i16 537, i16 520, i16 77, i16 537, i16 521, i16 537, i16 522, i16 77, i16 537, i16 78, i16 79, i16 80, i16 523, i16 537, i16 78, i16 79, i16 80, i16 524, i16 77, i16 537, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 77, i16 537, i16 78, i16 79, i16 80, i16 77, i16 526, i16 537, i16 77, i16 537, i16 525, i16 77, i16 528, i16 78, i16 79, i16 80, i16 77, i16 537, i16 529, i16 537, i16 537, i16 537, i16 77, i16 537, i16 537, i16 527, i16 77, i16 78, i16 79, i16 80, i16 365, i16 537, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 365, i16 77, i16 78, i16 79, i16 80, i16 531, i16 532, i16 77, i16 78, i16 79, i16 80, i16 77, i16 78, i16 79, i16 80, i16 530, i16 77, i16 533, i16 537, i16 534, i16 537, i16 77, i16 537, i16 537, i16 77, i16 537, i16 535, i16 77, i16 78, i16 79, i16 80, i16 537, i16 537, i16 537, i16 78, i16 79, i16 80, i16 537, i16 78, i16 79, i16 80, i16 536, i16 537, i16 78, i16 79, i16 80, i16 365, i16 537, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 78, i16 79, i16 80, i16 46, i16 46, i16 46, i16 46, i16 46, i16 46, i16 46, i16 46, i16 46, i16 46, i16 46, i16 46, i16 46, i16 46, i16 48, i16 48, i16 48, i16 48, i16 48, i16 48, i16 48, i16 48, i16 48, i16 48, i16 48, i16 48, i16 48, i16 48, i16 51, i16 51, i16 51, i16 51, i16 51, i16 51, i16 51, i16 51, i16 51, i16 51, i16 51, i16 51, i16 51, i16 51, i16 54, i16 54, i16 54, i16 54, i16 54, i16 54, i16 54, i16 54, i16 54, i16 54, i16 54, i16 54, i16 54, i16 54, i16 57, i16 537, i16 57, i16 537, i16 57, i16 537, i16 57, i16 66, i16 537, i16 537, i16 66, i16 537, i16 66, i16 66, i16 66, i16 66, i16 66, i16 76, i16 76, i16 537, i16 76, i16 76, i16 76, i16 76, i16 76, i16 76, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 130, i16 130, i16 130, i16 130, i16 130, i16 130, i16 130, i16 130, i16 130, i16 130, i16 130, i16 130, i16 130, i16 132, i16 537, i16 132, i16 132, i16 132, i16 132, i16 132, i16 132, i16 132, i16 132, i16 132, i16 132, i16 132, i16 132, i16 140, i16 537, i16 140, i16 140, i16 140, i16 140, i16 140, i16 140, i16 140, i16 140, i16 140, i16 140, i16 140, i16 140, i16 141, i16 141, i16 141, i16 141, i16 141, i16 141, i16 141, i16 141, i16 141, i16 149, i16 149, i16 149, i16 202, i16 537, i16 537, i16 537, i16 537, i16 202, i16 202, i16 202, i16 205, i16 205, i16 205, i16 205, i16 205, i16 213, i16 213, i16 213, i16 537, i16 537, i16 213, i16 265, i16 265, i16 265, i16 268, i16 268, i16 268, i16 268, i16 268, i16 268, i16 268, i16 268, i16 268, i16 7, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537, i16 537], align 16
@ncgtext = global ptr null, align 8
@ncgleng = global i32 0, align 4
@errstr = global [100 x i8] zeroinitializer, align 16
@.str.67 = private unnamed_addr constant [22 x i8] c"Illegal character: %s\00", align 1
@lextext = global ptr null, align 8
@.str.68 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@double_val = global double 0.000000e+00, align 8
@specialconstants = global i32 0, align 4
@float_val = global float 0.000000e+00, align 4
@l_flag = external global i32, align 4
@.str.69 = private unnamed_addr constant [49 x i8] c"NIL only allowed for netcdf-4 and for -lc or -lb\00", align 1
@.str.70 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.71 = private unnamed_addr constant [27 x i8] c"Illegal integer suffix: %s\00", align 1
@.str.72 = private unnamed_addr constant [38 x i8] c"Unsigned integer cannot be signed: %s\00", align 1
@uint64_val = global i64 0, align 8
@.str.73 = private unnamed_addr constant [34 x i8] c"integer constant out of range: %s\00", align 1
@k_flag = external global i32, align 4
@.str.74 = private unnamed_addr constant [48 x i8] c"Illegal integer constant for classic format: %s\00", align 1
@lineno = global i32 0, align 4
@.str.75 = private unnamed_addr constant [67 x i8] c"Warning: Integer out of range for tag: %s; tag treated as changed.\00", align 1
@uint16_val = global i16 0, align 2
@.str.76 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str.77 = private unnamed_addr constant [30 x i8] c"bad unsigned int constant: %s\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"%le\00", align 1
@.str.79 = private unnamed_addr constant [32 x i8] c"bad long or double constant: %s\00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] c"%e\00", align 1
@.str.81 = private unnamed_addr constant [23 x i8] c"bad float constant: %s\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@byte_val = global i8 0, align 1
@.str.83 = private unnamed_addr constant [33 x i8] c"bad octal character constant: %s\00", align 1
@.str.84 = private unnamed_addr constant [31 x i8] c"bad hex character constant: %s\00", align 1
@.str.85 = private unnamed_addr constant [26 x i8] c"unterminated /**/ comment\00", align 1
@yy_n_chars = internal global i32 0, align 4
@yy_did_buffer_switch_on_eof = internal global i32 0, align 4
@.str.86 = private unnamed_addr constant [51 x i8] c"fatal flex scanner internal error--no action found\00", align 1
@.str.87 = private unnamed_addr constant [44 x i8] c"out of dynamic memory in yy_create_buffer()\00", align 1
@.str.88 = private unnamed_addr constant [42 x i8] c"out of dynamic memory in yy_scan_buffer()\00", align 1
@.str.89 = private unnamed_addr constant [41 x i8] c"out of dynamic memory in yy_scan_bytes()\00", align 1
@.str.90 = private unnamed_addr constant [30 x i8] c"bad buffer in yy_scan_bytes()\00", align 1
@opaqueid = internal global i32 0, align 4
@arrayuid = internal global i32 0, align 4
@symlist = global ptr null, align 8
@consttype = internal global i32 0, align 4
@grpdefs = global ptr null, align 8
@attdefs = global ptr null, align 8
@gattdefs = global ptr null, align 8
@xattdefs = global ptr null, align 8
@tmp = global ptr null, align 8
@.str.91 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@rootgroup = global ptr null, align 8
@int64_val = global i64 0, align 8
@int16_val = global i16 0, align 2
@char_val = global i8 0, align 1
@ubyte_val = global i8 0, align 1
@.str.92 = private unnamed_addr constant [10 x i8] c"Stack now\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.94 = private unnamed_addr constant [8 x i8] c"%s %s (\00", align 1
@.str.95 = private unnamed_addr constant [6 x i8] c"token\00", align 1
@.str.96 = private unnamed_addr constant [6 x i8] c"nterm\00", align 1
@.str.97 = private unnamed_addr constant [2 x i8] c")\00", align 1
@yytname = internal constant [138 x ptr] [ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr null], align 16
@.str.98 = private unnamed_addr constant [14 x i8] c"\22end of file\22\00", align 1
@.str.99 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.100 = private unnamed_addr constant [16 x i8] c"\22invalid token\22\00", align 1
@.str.101 = private unnamed_addr constant [15 x i8] c"NC_UNLIMITED_K\00", align 1
@.str.102 = private unnamed_addr constant [7 x i8] c"CHAR_K\00", align 1
@.str.103 = private unnamed_addr constant [7 x i8] c"BYTE_K\00", align 1
@.str.104 = private unnamed_addr constant [8 x i8] c"SHORT_K\00", align 1
@.str.105 = private unnamed_addr constant [6 x i8] c"INT_K\00", align 1
@.str.106 = private unnamed_addr constant [8 x i8] c"FLOAT_K\00", align 1
@.str.107 = private unnamed_addr constant [9 x i8] c"DOUBLE_K\00", align 1
@.str.108 = private unnamed_addr constant [8 x i8] c"UBYTE_K\00", align 1
@.str.109 = private unnamed_addr constant [9 x i8] c"USHORT_K\00", align 1
@.str.110 = private unnamed_addr constant [7 x i8] c"UINT_K\00", align 1
@.str.111 = private unnamed_addr constant [8 x i8] c"INT64_K\00", align 1
@.str.112 = private unnamed_addr constant [9 x i8] c"UINT64_K\00", align 1
@.str.113 = private unnamed_addr constant [9 x i8] c"STRING_K\00", align 1
@.str.114 = private unnamed_addr constant [6 x i8] c"IDENT\00", align 1
@.str.115 = private unnamed_addr constant [11 x i8] c"TERMSTRING\00", align 1
@.str.116 = private unnamed_addr constant [11 x i8] c"CHAR_CONST\00", align 1
@.str.117 = private unnamed_addr constant [11 x i8] c"BYTE_CONST\00", align 1
@.str.118 = private unnamed_addr constant [12 x i8] c"SHORT_CONST\00", align 1
@.str.119 = private unnamed_addr constant [10 x i8] c"INT_CONST\00", align 1
@.str.120 = private unnamed_addr constant [12 x i8] c"INT64_CONST\00", align 1
@.str.121 = private unnamed_addr constant [12 x i8] c"UBYTE_CONST\00", align 1
@.str.122 = private unnamed_addr constant [13 x i8] c"USHORT_CONST\00", align 1
@.str.123 = private unnamed_addr constant [11 x i8] c"UINT_CONST\00", align 1
@.str.124 = private unnamed_addr constant [13 x i8] c"UINT64_CONST\00", align 1
@.str.125 = private unnamed_addr constant [12 x i8] c"FLOAT_CONST\00", align 1
@.str.126 = private unnamed_addr constant [13 x i8] c"DOUBLE_CONST\00", align 1
@.str.127 = private unnamed_addr constant [11 x i8] c"DIMENSIONS\00", align 1
@.str.128 = private unnamed_addr constant [10 x i8] c"VARIABLES\00", align 1
@.str.129 = private unnamed_addr constant [7 x i8] c"NETCDF\00", align 1
@.str.130 = private unnamed_addr constant [5 x i8] c"DATA\00", align 1
@.str.131 = private unnamed_addr constant [6 x i8] c"TYPES\00", align 1
@.str.132 = private unnamed_addr constant [9 x i8] c"COMPOUND\00", align 1
@.str.133 = private unnamed_addr constant [5 x i8] c"ENUM\00", align 1
@.str.134 = private unnamed_addr constant [8 x i8] c"OPAQUE_\00", align 1
@.str.135 = private unnamed_addr constant [13 x i8] c"OPAQUESTRING\00", align 1
@.str.136 = private unnamed_addr constant [6 x i8] c"GROUP\00", align 1
@.str.137 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str.138 = private unnamed_addr constant [11 x i8] c"FILLMARKER\00", align 1
@.str.139 = private unnamed_addr constant [4 x i8] c"NIL\00", align 1
@.str.140 = private unnamed_addr constant [11 x i8] c"_FILLVALUE\00", align 1
@.str.141 = private unnamed_addr constant [8 x i8] c"_FORMAT\00", align 1
@.str.142 = private unnamed_addr constant [9 x i8] c"_STORAGE\00", align 1
@.str.143 = private unnamed_addr constant [12 x i8] c"_CHUNKSIZES\00", align 1
@.str.144 = private unnamed_addr constant [14 x i8] c"_DEFLATELEVEL\00", align 1
@.str.145 = private unnamed_addr constant [9 x i8] c"_SHUFFLE\00", align 1
@.str.146 = private unnamed_addr constant [12 x i8] c"_ENDIANNESS\00", align 1
@.str.147 = private unnamed_addr constant [8 x i8] c"_NOFILL\00", align 1
@.str.148 = private unnamed_addr constant [12 x i8] c"_FLETCHER32\00", align 1
@.str.149 = private unnamed_addr constant [9 x i8] c"_NCPROPS\00", align 1
@.str.150 = private unnamed_addr constant [11 x i8] c"_ISNETCDF4\00", align 1
@.str.151 = private unnamed_addr constant [12 x i8] c"_SUPERBLOCK\00", align 1
@.str.152 = private unnamed_addr constant [8 x i8] c"_FILTER\00", align 1
@.str.153 = private unnamed_addr constant [8 x i8] c"_CODECS\00", align 1
@.str.154 = private unnamed_addr constant [12 x i8] c"_QUANTIZEBG\00", align 1
@.str.155 = private unnamed_addr constant [13 x i8] c"_QUANTIZEGBR\00", align 1
@.str.156 = private unnamed_addr constant [12 x i8] c"_QUANTIZEBR\00", align 1
@.str.157 = private unnamed_addr constant [10 x i8] c"DATASETID\00", align 1
@.str.158 = private unnamed_addr constant [4 x i8] c"'{'\00", align 1
@.str.159 = private unnamed_addr constant [4 x i8] c"'}'\00", align 1
@.str.160 = private unnamed_addr constant [4 x i8] c"';'\00", align 1
@.str.161 = private unnamed_addr constant [4 x i8] c"','\00", align 1
@.str.162 = private unnamed_addr constant [4 x i8] c"'='\00", align 1
@.str.163 = private unnamed_addr constant [4 x i8] c"'('\00", align 1
@.str.164 = private unnamed_addr constant [4 x i8] c"')'\00", align 1
@.str.165 = private unnamed_addr constant [4 x i8] c"'*'\00", align 1
@.str.166 = private unnamed_addr constant [4 x i8] c"':'\00", align 1
@.str.167 = private unnamed_addr constant [8 x i8] c"$accept\00", align 1
@.str.168 = private unnamed_addr constant [7 x i8] c"ncdesc\00", align 1
@.str.169 = private unnamed_addr constant [10 x i8] c"datasetid\00", align 1
@.str.170 = private unnamed_addr constant [10 x i8] c"rootgroup\00", align 1
@.str.171 = private unnamed_addr constant [10 x i8] c"groupbody\00", align 1
@.str.172 = private unnamed_addr constant [13 x i8] c"subgrouplist\00", align 1
@.str.173 = private unnamed_addr constant [11 x i8] c"namedgroup\00", align 1
@.str.174 = private unnamed_addr constant [4 x i8] c"$@1\00", align 1
@.str.175 = private unnamed_addr constant [4 x i8] c"$@2\00", align 1
@.str.176 = private unnamed_addr constant [12 x i8] c"typesection\00", align 1
@.str.177 = private unnamed_addr constant [10 x i8] c"typedecls\00", align 1
@.str.178 = private unnamed_addr constant [9 x i8] c"typename\00", align 1
@.str.179 = private unnamed_addr constant [18 x i8] c"type_or_attr_decl\00", align 1
@.str.180 = private unnamed_addr constant [9 x i8] c"typedecl\00", align 1
@.str.181 = private unnamed_addr constant [13 x i8] c"optsemicolon\00", align 1
@.str.182 = private unnamed_addr constant [9 x i8] c"enumdecl\00", align 1
@.str.183 = private unnamed_addr constant [11 x i8] c"enumidlist\00", align 1
@.str.184 = private unnamed_addr constant [7 x i8] c"enumid\00", align 1
@.str.185 = private unnamed_addr constant [11 x i8] c"opaquedecl\00", align 1
@.str.186 = private unnamed_addr constant [9 x i8] c"vlendecl\00", align 1
@.str.187 = private unnamed_addr constant [13 x i8] c"compounddecl\00", align 1
@.str.188 = private unnamed_addr constant [7 x i8] c"fields\00", align 1
@.str.189 = private unnamed_addr constant [6 x i8] c"field\00", align 1
@.str.190 = private unnamed_addr constant [9 x i8] c"primtype\00", align 1
@.str.191 = private unnamed_addr constant [11 x i8] c"dimsection\00", align 1
@.str.192 = private unnamed_addr constant [9 x i8] c"dimdecls\00", align 1
@.str.193 = private unnamed_addr constant [17 x i8] c"dim_or_attr_decl\00", align 1
@.str.194 = private unnamed_addr constant [11 x i8] c"dimdeclist\00", align 1
@.str.195 = private unnamed_addr constant [8 x i8] c"dimdecl\00", align 1
@.str.196 = private unnamed_addr constant [5 x i8] c"dimd\00", align 1
@.str.197 = private unnamed_addr constant [10 x i8] c"vasection\00", align 1
@.str.198 = private unnamed_addr constant [8 x i8] c"vadecls\00", align 1
@.str.199 = private unnamed_addr constant [15 x i8] c"vadecl_or_attr\00", align 1
@.str.200 = private unnamed_addr constant [8 x i8] c"vardecl\00", align 1
@.str.201 = private unnamed_addr constant [8 x i8] c"varlist\00", align 1
@.str.202 = private unnamed_addr constant [8 x i8] c"varspec\00", align 1
@.str.203 = private unnamed_addr constant [8 x i8] c"dimspec\00", align 1
@.str.204 = private unnamed_addr constant [8 x i8] c"dimlist\00", align 1
@.str.205 = private unnamed_addr constant [7 x i8] c"dimref\00", align 1
@.str.206 = private unnamed_addr constant [10 x i8] c"fieldlist\00", align 1
@.str.207 = private unnamed_addr constant [10 x i8] c"fieldspec\00", align 1
@.str.208 = private unnamed_addr constant [13 x i8] c"fielddimspec\00", align 1
@.str.209 = private unnamed_addr constant [13 x i8] c"fielddimlist\00", align 1
@.str.210 = private unnamed_addr constant [9 x i8] c"fielddim\00", align 1
@.str.211 = private unnamed_addr constant [7 x i8] c"varref\00", align 1
@.str.212 = private unnamed_addr constant [8 x i8] c"typeref\00", align 1
@.str.213 = private unnamed_addr constant [14 x i8] c"ambiguous_ref\00", align 1
@.str.214 = private unnamed_addr constant [13 x i8] c"attrdecllist\00", align 1
@.str.215 = private unnamed_addr constant [9 x i8] c"attrdecl\00", align 1
@.str.216 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.217 = private unnamed_addr constant [12 x i8] c"datasection\00", align 1
@.str.218 = private unnamed_addr constant [10 x i8] c"datadecls\00", align 1
@.str.219 = private unnamed_addr constant [9 x i8] c"datadecl\00", align 1
@.str.220 = private unnamed_addr constant [9 x i8] c"datalist\00", align 1
@.str.221 = private unnamed_addr constant [10 x i8] c"datalist0\00", align 1
@.str.222 = private unnamed_addr constant [10 x i8] c"datalist1\00", align 1
@.str.223 = private unnamed_addr constant [9 x i8] c"dataitem\00", align 1
@.str.224 = private unnamed_addr constant [10 x i8] c"constdata\00", align 1
@.str.225 = private unnamed_addr constant [10 x i8] c"econstref\00", align 1
@.str.226 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.227 = private unnamed_addr constant [8 x i8] c"arglist\00", align 1
@.str.228 = private unnamed_addr constant [15 x i8] c"simpleconstant\00", align 1
@.str.229 = private unnamed_addr constant [8 x i8] c"intlist\00", align 1
@.str.230 = private unnamed_addr constant [9 x i8] c"constint\00", align 1
@.str.231 = private unnamed_addr constant [12 x i8] c"conststring\00", align 1
@.str.232 = private unnamed_addr constant [10 x i8] c"constbool\00", align 1
@.str.233 = private unnamed_addr constant [9 x i8] c"varident\00", align 1
@.str.234 = private unnamed_addr constant [6 x i8] c"ident\00", align 1
@yyrline = internal constant [160 x i16] [i16 0, i16 243, i16 243, i16 249, i16 251, i16 258, i16 265, i16 265, i16 268, i16 277, i16 267, i16 282, i16 283, i16 284, i16 288, i16 288, i16 290, i16 300, i16 300, i16 303, i16 304, i16 305, i16 306, i16 309, i16 309, i16 312, i16 342, i16 344, i16 361, i16 370, i16 382, i16 396, i16 429, i16 430, i16 433, i16 447, i16 448, i16 449, i16 450, i16 451, i16 452, i16 453, i16 454, i16 455, i16 456, i16 457, i16 458, i16 461, i16 462, i16 463, i16 466, i16 467, i16 470, i16 470, i16 472, i16 473, i16 477, i16 485, i16 495, i16 507, i16 508, i16 509, i16 512, i16 513, i16 516, i16 516, i16 518, i16 540, i16 544, i16 548, i16 577, i16 578, i16 581, i16 582, i16 586, i16 600, i16 604, i16 609, i16 638, i16 639, i16 643, i16 644, i16 649, i16 659, i16 679, i16 690, i16 701, i16 720, i16 727, i16 727, i16 730, i16 732, i16 734, i16 736, i16 738, i16 747, i16 758, i16 760, i16 762, i16 764, i16 766, i16 768, i16 770, i16 772, i16 774, i16 776, i16 778, i16 780, i16 782, i16 784, i16 786, i16 791, i16 798, i16 807, i16 808, i16 809, i16 812, i16 813, i16 816, i16 820, i16 821, i16 825, i16 829, i16 830, i16 835, i16 836, i16 840, i16 841, i16 842, i16 843, i16 844, i16 845, i16 849, i16 853, i16 857, i16 859, i16 864, i16 865, i16 866, i16 867, i16 868, i16 869, i16 870, i16 871, i16 872, i16 873, i16 874, i16 875, i16 879, i16 880, i16 884, i16 886, i16 888, i16 890, i16 895, i16 899, i16 900, i16 908, i16 909, i16 913], align 16
@.str.235 = private unnamed_addr constant [38 x i8] c"Reducing stack by rule %d (line %d):\0A\00", align 1
@.str.236 = private unnamed_addr constant [10 x i8] c"   $%d = \00", align 1
@.str.237 = private unnamed_addr constant [28 x i8] c"syntax error, unexpected %s\00", align 1
@.str.238 = private unnamed_addr constant [42 x i8] c"syntax error, unexpected %s, expecting %s\00", align 1
@.str.239 = private unnamed_addr constant [48 x i8] c"syntax error, unexpected %s, expecting %s or %s\00", align 1
@.str.240 = private unnamed_addr constant [54 x i8] c"syntax error, unexpected %s, expecting %s or %s or %s\00", align 1
@.str.241 = private unnamed_addr constant [60 x i8] c"syntax error, unexpected %s, expecting %s or %s or %s or %s\00", align 1
@.str.242 = private unnamed_addr constant [9 x i8] c"Deleting\00", align 1
@.str.243 = private unnamed_addr constant [17 x i8] c"%s: %s line %d: \00", align 1
@progname = external global ptr, align 8
@cdlname = external global ptr, align 8
@.str.244 = private unnamed_addr constant [56 x i8] c"fatal flex scanner internal error--end of buffer missed\00", align 1
@.str.245 = private unnamed_addr constant [44 x i8] c"fatal error - scanner input buffer overflow\00", align 1
@.str.246 = private unnamed_addr constant [29 x i8] c"input in flex scanner failed\00", align 1
@.str.247 = private unnamed_addr constant [46 x i8] c"out of dynamic memory in yy_get_next_buffer()\00", align 1
@.str.248 = private unnamed_addr constant [49 x i8] c"out of dynamic memory in yyensure_buffer_stack()\00", align 1
@yy_buffer_stack_max = internal global i64 0, align 8
@.str.249 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@debug = external global i32, align 4
@.str.250 = private unnamed_addr constant [23 x i8] c"Token=%d |%s| line=%d\0A\00", align 1
@.str.251 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.252 = private unnamed_addr constant [42 x i8] c"Undefined or forward referenced group: %s\00", align 1
@.str.253 = private unnamed_addr constant [19 x i8] c"Value out of range\00", align 1
@.str.254 = private unnamed_addr constant [9 x i8] c"BbSsLlUu\00", align 1
@.str.255 = private unnamed_addr constant [3 x i8] c"ll\00", align 1
@.str.256 = private unnamed_addr constant [39 x i8] c"Duplicate group name in same scope: %s\00", align 1
@.str.257 = private unnamed_addr constant [38 x i8] c"Data constant: unexpected NC type: %s\00", align 1
@.str.258 = private unnamed_addr constant [10 x i8] c"Enum type\00", align 1
@GLOBAL_SPECIAL = internal global i32 3840, align 4
@.str.259 = private unnamed_addr constant [34 x i8] c"_Format: must be global attribute\00", align 1
@.str.260 = private unnamed_addr constant [28 x i8] c"%s: must have non-NULL vsym\00", align 1
@specials_flag = external global i32, align 4
@.str.261 = private unnamed_addr constant [18 x i8] c"%s: illegal value\00", align 1
@.str.262 = private unnamed_addr constant [27 x i8] c"unexpected special tag: %d\00", align 1
@.str.263 = private unnamed_addr constant [40 x i8] c"panic(\22unexpected special tag: %d\22,tag)\00", align 1
@__PRETTY_FUNCTION__.makespecial = private unnamed_addr constant [58 x i8] c"Symbol *makespecial(int, Symbol *, Symbol *, void *, int)\00", align 1
@legalkinds = external global [0 x %struct.Kvalues], align 8
@globalspecials = external global %struct.GlobalSpecialdata, align 8
@format_attribute = external global i32, align 4
@.str.264 = private unnamed_addr constant [27 x i8] c"_Format: illegal value: %s\00", align 1
@.str.265 = private unnamed_addr constant [55 x i8] c"_FillValue: must be a single (possibly compound) value\00", align 1
@.str.266 = private unnamed_addr constant [53 x i8] c"Attribute data may not contain fill values (i.e. _ )\00", align 1
@.str.267 = private unnamed_addr constant [54 x i8] c"_FillValue attribute not associated with variable: %s\00", align 1
@.str.268 = private unnamed_addr constant [29 x i8] c"_Storage: illegal NULL value\00", align 1
@.str.269 = private unnamed_addr constant [11 x i8] c"contiguous\00", align 1
@.str.270 = private unnamed_addr constant [8 x i8] c"compact\00", align 1
@.str.271 = private unnamed_addr constant [8 x i8] c"chunked\00", align 1
@.str.272 = private unnamed_addr constant [28 x i8] c"_Storage: illegal value: %s\00", align 1
@.str.273 = private unnamed_addr constant [32 x i8] c"_Endianness: illegal NULL value\00", align 1
@.str.274 = private unnamed_addr constant [7 x i8] c"little\00", align 1
@.str.275 = private unnamed_addr constant [4 x i8] c"big\00", align 1
@.str.276 = private unnamed_addr constant [31 x i8] c"_Endianness: illegal value: %s\00", align 1
@.str.277 = private unnamed_addr constant [36 x i8] c"_Filter: unparsable filter spec: %s\00", align 1
@.str.278 = private unnamed_addr constant [35 x i8] c"_Codecs: unparsable codec spec: %s\00", align 1
@.str.279 = private unnamed_addr constant [31 x i8] c"makespecial: illegal token: %d\00", align 1
@.str.280 = private unnamed_addr constant [44 x i8] c"panic(\22makespecial: illegal token: %d\22,tag)\00", align 1
@.str.281 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.282 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.283 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.284 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.285 = private unnamed_addr constant [26 x i8] c"Malformed filter spec: %s\00", align 1
@.str.286 = private unnamed_addr constant [30 x i8] c"unexpected attribute type: %d\00", align 1
@.str.287 = private unnamed_addr constant [44 x i8] c"panic(\22unexpected attribute type: %d\22,kind)\00", align 1
@__PRETTY_FUNCTION__.makeattribute = private unnamed_addr constant [74 x i8] c"Symbol *makeattribute(Symbol *, Symbol *, Symbol *, Datalist *, Attrkind)\00", align 1
@.str.288 = private unnamed_addr constant [57 x i8] c"Attribute data may not contain fill values (i.e. _ ): %s\00", align 1
@.str.289 = private unnamed_addr constant [30 x i8] c"Not a signed integer type: %d\00", align 1
@.str.290 = private unnamed_addr constant [22 x i8] c"netCDF4/5 type: UBYTE\00", align 1
@.str.291 = private unnamed_addr constant [23 x i8] c"netCDF4/5 type: USHORT\00", align 1
@.str.292 = private unnamed_addr constant [21 x i8] c"netCDF4/5 type: UINT\00", align 1
@.str.293 = private unnamed_addr constant [22 x i8] c"netCDF4/5 type: INT64\00", align 1
@.str.294 = private unnamed_addr constant [23 x i8] c"netCDF4/5 type: UINT64\00", align 1
@.str.295 = private unnamed_addr constant [21 x i8] c"netCDF4 type: STRING\00", align 1
@.str.296 = private unnamed_addr constant [19 x i8] c"netCDF4 type: VLEN\00", align 1
@.str.297 = private unnamed_addr constant [21 x i8] c"netCDF4 type: OPAQUE\00", align 1
@.str.298 = private unnamed_addr constant [19 x i8] c"netCDF4 type: ENUM\00", align 1
@.str.299 = private unnamed_addr constant [23 x i8] c"netCDF4 type: COMPOUND\00", align 1
@.str.300 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.301 = private unnamed_addr constant [51 x i8] c"Expected function signature: time([string,]string)\00", align 1
@.str.302 = private unnamed_addr constant [35 x i8] c"Time conversion '%s' not supported\00", align 1
@.str.303 = private unnamed_addr constant [26 x i8] c"Unknown function name: %s\00", align 1

; Function Attrs: nounwind uwtable
define i32 @ncgparse() #0 {
entry:
  %retval = alloca i32, align 4
  %yystate = alloca i32, align 4
  %yyerrstatus = alloca i32, align 4
  %yystacksize = alloca i64, align 8
  %yyssa = alloca [200 x i16], align 16
  %yyss = alloca ptr, align 8
  %yyssp = alloca ptr, align 8
  %yyvsa = alloca [200 x %union.YYSTYPE], align 16
  %yyvs = alloca ptr, align 8
  %yyvsp = alloca ptr, align 8
  %yyn = alloca i32, align 4
  %yyresult = alloca i32, align 4
  %yytoken = alloca i32, align 4
  %yyval = alloca %union.YYSTYPE, align 8
  %yymsgbuf = alloca [128 x i8], align 16
  %yymsg = alloca ptr, align 8
  %yymsg_alloc = alloca i64, align 8
  %yylen = alloca i32, align 4
  %yysize = alloca i64, align 8
  %yyss1 = alloca ptr, align 8
  %yyptr = alloca ptr, align 8
  %yynewbytes = alloca i64, align 8
  %yynewbytes41 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %id = alloca ptr, align 8
  %i = alloca i32, align 4
  %eid = alloca ptr, align 8
  %i271 = alloca i32, align 4
  %elem = alloca ptr, align 8
  %basetype329 = alloca ptr, align 8
  %i350 = alloca i32, align 4
  %j = alloca i32, align 4
  %elem1 = alloca ptr, align 8
  %elem2 = alloca ptr, align 8
  %fsym = alloca ptr, align 8
  %i423 = alloca i32, align 4
  %f = alloca ptr, align 8
  %i493 = alloca i32, align 4
  %sym = alloca ptr, align 8
  %i543 = alloca i32, align 4
  %dimset = alloca %struct.Dimset, align 8
  %var = alloca ptr, align 8
  %dsym = alloca ptr, align 8
  %dimsym = alloca ptr, align 8
  %i645 = alloca i32, align 4
  %dimset646 = alloca %struct.Dimset, align 8
  %dsym673 = alloca ptr, align 8
  %anon = alloca [32 x i8], align 16
  %anon736 = alloca [32 x i8], align 16
  %vsym = alloca ptr, align 8
  %tsym = alloca ptr, align 8
  %tvsym = alloca ptr, align 8
  %sym778 = alloca ptr, align 8
  %tsym824 = alloca ptr, align 8
  %vsym826 = alloca ptr, align 8
  %asym = alloca ptr, align 8
  %sym844 = alloca ptr, align 8
  %asym846 = alloca ptr, align 8
  %yylhs = alloca i32, align 4
  %yyi = alloca i32, align 4
  %yyctx = alloca %struct.yypcontext_t, align 8
  %yymsgp = alloca ptr, align 8
  %yysyntax_error_status = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %yystate) #13
  store i32 0, ptr %yystate, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %yyerrstatus) #13
  store i32 0, ptr %yyerrstatus, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %yystacksize) #13
  store i64 200, ptr %yystacksize, align 8
  call void @llvm.lifetime.start.p0(i64 400, ptr %yyssa) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %yyss) #13
  %arraydecay = getelementptr inbounds [200 x i16], ptr %yyssa, i64 0, i64 0
  store ptr %arraydecay, ptr %yyss, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %yyssp) #13
  %0 = load ptr, ptr %yyss, align 8
  store ptr %0, ptr %yyssp, align 8
  call void @llvm.lifetime.start.p0(i64 1600, ptr %yyvsa) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %yyvs) #13
  %arraydecay1 = getelementptr inbounds [200 x %union.YYSTYPE], ptr %yyvsa, i64 0, i64 0
  store ptr %arraydecay1, ptr %yyvs, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %yyvsp) #13
  %1 = load ptr, ptr %yyvs, align 8
  store ptr %1, ptr %yyvsp, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %yyn) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %yyresult) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %yytoken) #13
  store i32 -2, ptr %yytoken, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %yyval) #13
  call void @llvm.lifetime.start.p0(i64 128, ptr %yymsgbuf) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %yymsg) #13
  %arraydecay2 = getelementptr inbounds [128 x i8], ptr %yymsgbuf, i64 0, i64 0
  store ptr %arraydecay2, ptr %yymsg, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %yymsg_alloc) #13
  store i64 128, ptr %yymsg_alloc, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %yylen) #13
  store i32 0, ptr %yylen, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, ptr @ncgdebug, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %3 = load ptr, ptr @stderr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.13)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 -2, ptr @ncgchar, align 4
  br label %yysetstate

yynewstate:                                       ; preds = %do.end1225, %cond.end1085, %do.end158
  %4 = load ptr, ptr %yyssp, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %4, i32 1
  store ptr %incdec.ptr, ptr %yyssp, align 8
  br label %yysetstate

yysetstate:                                       ; preds = %yynewstate, %do.end
  br label %do.body3

do.body3:                                         ; preds = %yysetstate
  %5 = load i32, ptr @ncgdebug, align 4
  %tobool4 = icmp ne i32 %5, 0
  br i1 %tobool4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %do.body3
  %6 = load ptr, ptr @stderr, align 8
  %7 = load i32, ptr %yystate, align 4
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.14, i32 noundef %7)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %do.body3
  br label %do.cond8

do.cond8:                                         ; preds = %if.end7
  br label %do.end9

do.end9:                                          ; preds = %do.cond8
  %8 = load i32, ptr %yystate, align 4
  %conv = trunc i32 %8 to i16
  %9 = load ptr, ptr %yyssp, align 8
  store i16 %conv, ptr %9, align 2
  br label %do.body10

do.body10:                                        ; preds = %do.end9
  %10 = load i32, ptr @ncgdebug, align 4
  %tobool11 = icmp ne i32 %10, 0
  br i1 %tobool11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %do.body10
  %11 = load ptr, ptr %yyss, align 8
  %12 = load ptr, ptr %yyssp, align 8
  call void @yy_stack_print(ptr noundef %11, ptr noundef %12)
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %do.body10
  br label %do.cond14

do.cond14:                                        ; preds = %if.end13
  br label %do.end15

do.end15:                                         ; preds = %do.cond14
  %13 = load ptr, ptr %yyss, align 8
  %14 = load i64, ptr %yystacksize, align 8
  %add.ptr = getelementptr inbounds i16, ptr %13, i64 %14
  %add.ptr16 = getelementptr inbounds i16, ptr %add.ptr, i64 -1
  %15 = load ptr, ptr %yyssp, align 8
  %cmp = icmp ule ptr %add.ptr16, %15
  br i1 %cmp, label %if.then18, label %if.end75

if.then18:                                        ; preds = %do.end15
  call void @llvm.lifetime.start.p0(i64 8, ptr %yysize) #13
  %16 = load ptr, ptr %yyssp, align 8
  %17 = load ptr, ptr %yyss, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %16 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %17 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 2
  %add = add nsw i64 %sub.ptr.div, 1
  store i64 %add, ptr %yysize, align 8
  %18 = load i64, ptr %yystacksize, align 8
  %cmp19 = icmp sle i64 10000, %18
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.then18
  store i32 10, ptr %cleanup.dest.slot, align 4
  br label %cleanup72

if.end22:                                         ; preds = %if.then18
  %19 = load i64, ptr %yystacksize, align 8
  %mul = mul nsw i64 %19, 2
  store i64 %mul, ptr %yystacksize, align 8
  %20 = load i64, ptr %yystacksize, align 8
  %cmp23 = icmp slt i64 10000, %20
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end22
  store i64 10000, ptr %yystacksize, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end22
  call void @llvm.lifetime.start.p0(i64 8, ptr %yyss1) #13
  %21 = load ptr, ptr %yyss, align 8
  store ptr %21, ptr %yyss1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %yyptr) #13
  %22 = load i64, ptr %yystacksize, align 8
  %mul27 = mul nsw i64 %22, 10
  %add28 = add nsw i64 %mul27, 7
  %call29 = call noalias ptr @malloc(i64 noundef %add28) #14
  store ptr %call29, ptr %yyptr, align 8
  %23 = load ptr, ptr %yyptr, align 8
  %tobool30 = icmp ne ptr %23, null
  br i1 %tobool30, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.end26
  store i32 10, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end32:                                         ; preds = %if.end26
  br label %do.body33

do.body33:                                        ; preds = %if.end32
  call void @llvm.lifetime.start.p0(i64 8, ptr %yynewbytes) #13
  %24 = load ptr, ptr %yyptr, align 8
  %25 = load ptr, ptr %yyss, align 8
  %26 = load i64, ptr %yysize, align 8
  %mul34 = mul i64 %26, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %24, ptr align 2 %25, i64 %mul34, i1 false)
  %27 = load ptr, ptr %yyptr, align 8
  store ptr %27, ptr %yyss, align 8
  %28 = load i64, ptr %yystacksize, align 8
  %mul35 = mul nsw i64 %28, 2
  %add36 = add nsw i64 %mul35, 7
  store i64 %add36, ptr %yynewbytes, align 8
  %29 = load i64, ptr %yynewbytes, align 8
  %div = sdiv i64 %29, 8
  %30 = load ptr, ptr %yyptr, align 8
  %add.ptr37 = getelementptr inbounds %union.yyalloc, ptr %30, i64 %div
  store ptr %add.ptr37, ptr %yyptr, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %yynewbytes) #13
  br label %do.cond38

do.cond38:                                        ; preds = %do.body33
  br label %do.end39

do.end39:                                         ; preds = %do.cond38
  br label %do.body40

do.body40:                                        ; preds = %do.end39
  call void @llvm.lifetime.start.p0(i64 8, ptr %yynewbytes41) #13
  %31 = load ptr, ptr %yyptr, align 8
  %32 = load ptr, ptr %yyvs, align 8
  %33 = load i64, ptr %yysize, align 8
  %mul42 = mul i64 %33, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %31, ptr align 8 %32, i64 %mul42, i1 false)
  %34 = load ptr, ptr %yyptr, align 8
  store ptr %34, ptr %yyvs, align 8
  %35 = load i64, ptr %yystacksize, align 8
  %mul43 = mul nsw i64 %35, 8
  %add44 = add nsw i64 %mul43, 7
  store i64 %add44, ptr %yynewbytes41, align 8
  %36 = load i64, ptr %yynewbytes41, align 8
  %div45 = sdiv i64 %36, 8
  %37 = load ptr, ptr %yyptr, align 8
  %add.ptr46 = getelementptr inbounds %union.yyalloc, ptr %37, i64 %div45
  store ptr %add.ptr46, ptr %yyptr, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %yynewbytes41) #13
  br label %do.cond47

do.cond47:                                        ; preds = %do.body40
  br label %do.end48

do.end48:                                         ; preds = %do.cond47
  %38 = load ptr, ptr %yyss1, align 8
  %arraydecay49 = getelementptr inbounds [200 x i16], ptr %yyssa, i64 0, i64 0
  %cmp50 = icmp ne ptr %38, %arraydecay49
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %do.end48
  %39 = load ptr, ptr %yyss1, align 8
  call void @free(ptr noundef %39) #13
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %do.end48
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.end53
  call void @llvm.lifetime.end.p0(i64 8, ptr %yyptr) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %yyss1) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup72 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %40 = load ptr, ptr %yyss, align 8
  %41 = load i64, ptr %yysize, align 8
  %add.ptr55 = getelementptr inbounds i16, ptr %40, i64 %41
  %add.ptr56 = getelementptr inbounds i16, ptr %add.ptr55, i64 -1
  store ptr %add.ptr56, ptr %yyssp, align 8
  %42 = load ptr, ptr %yyvs, align 8
  %43 = load i64, ptr %yysize, align 8
  %add.ptr57 = getelementptr inbounds %union.YYSTYPE, ptr %42, i64 %43
  %add.ptr58 = getelementptr inbounds %union.YYSTYPE, ptr %add.ptr57, i64 -1
  store ptr %add.ptr58, ptr %yyvsp, align 8
  br label %do.body59

do.body59:                                        ; preds = %cleanup.cont
  %44 = load i32, ptr @ncgdebug, align 4
  %tobool60 = icmp ne i32 %44, 0
  br i1 %tobool60, label %if.then61, label %if.end63

if.then61:                                        ; preds = %do.body59
  %45 = load ptr, ptr @stderr, align 8
  %46 = load i64, ptr %yystacksize, align 8
  %call62 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef @.str.15, i64 noundef %46)
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %do.body59
  br label %do.cond64

do.cond64:                                        ; preds = %if.end63
  br label %do.end65

do.end65:                                         ; preds = %do.cond64
  %47 = load ptr, ptr %yyss, align 8
  %48 = load i64, ptr %yystacksize, align 8
  %add.ptr66 = getelementptr inbounds i16, ptr %47, i64 %48
  %add.ptr67 = getelementptr inbounds i16, ptr %add.ptr66, i64 -1
  %49 = load ptr, ptr %yyssp, align 8
  %cmp68 = icmp ule ptr %add.ptr67, %49
  br i1 %cmp68, label %if.then70, label %if.end71

if.then70:                                        ; preds = %do.end65
  store i32 17, ptr %cleanup.dest.slot, align 4
  br label %cleanup72

if.end71:                                         ; preds = %do.end65
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup72

cleanup72:                                        ; preds = %if.then70, %if.then21, %if.end71, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %yysize) #13
  %cleanup.dest73 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest73, label %cleanup1272 [
    i32 0, label %cleanup.cont74
    i32 17, label %yyabortlab
    i32 10, label %yyexhaustedlab
  ]

cleanup.cont74:                                   ; preds = %cleanup72
  br label %if.end75

if.end75:                                         ; preds = %cleanup.cont74, %do.end15
  %50 = load i32, ptr %yystate, align 4
  %cmp76 = icmp eq i32 %50, 5
  br i1 %cmp76, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.end75
  br label %yyacceptlab

if.end79:                                         ; preds = %if.end75
  br label %yybackup

yybackup:                                         ; preds = %if.end79
  %51 = load i32, ptr %yystate, align 4
  %idxprom = sext i32 %51 to i64
  %arrayidx = getelementptr inbounds [276 x i16], ptr @yypact, i64 0, i64 %idxprom
  %52 = load i16, ptr %arrayidx, align 2
  %conv80 = sext i16 %52 to i32
  store i32 %conv80, ptr %yyn, align 4
  %53 = load i32, ptr %yyn, align 4
  %cmp81 = icmp eq i32 %53, -153
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %yybackup
  br label %yydefault

if.end84:                                         ; preds = %yybackup
  %54 = load i32, ptr @ncgchar, align 4
  %cmp85 = icmp eq i32 %54, -2
  br i1 %cmp85, label %if.then87, label %if.end96

if.then87:                                        ; preds = %if.end84
  br label %do.body88

do.body88:                                        ; preds = %if.then87
  %55 = load i32, ptr @ncgdebug, align 4
  %tobool89 = icmp ne i32 %55, 0
  br i1 %tobool89, label %if.then90, label %if.end92

if.then90:                                        ; preds = %do.body88
  %56 = load ptr, ptr @stderr, align 8
  %call91 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %56, ptr noundef @.str.16)
  br label %if.end92

if.end92:                                         ; preds = %if.then90, %do.body88
  br label %do.cond93

do.cond93:                                        ; preds = %if.end92
  br label %do.end94

do.end94:                                         ; preds = %do.cond93
  %call95 = call i32 @ncglex()
  store i32 %call95, ptr @ncgchar, align 4
  br label %if.end96

if.end96:                                         ; preds = %do.end94, %if.end84
  %57 = load i32, ptr @ncgchar, align 4
  %cmp97 = icmp sle i32 %57, 0
  br i1 %cmp97, label %if.then99, label %if.else

if.then99:                                        ; preds = %if.end96
  store i32 0, ptr @ncgchar, align 4
  store i32 0, ptr %yytoken, align 4
  br label %do.body100

do.body100:                                       ; preds = %if.then99
  %58 = load i32, ptr @ncgdebug, align 4
  %tobool101 = icmp ne i32 %58, 0
  br i1 %tobool101, label %if.then102, label %if.end104

if.then102:                                       ; preds = %do.body100
  %59 = load ptr, ptr @stderr, align 8
  %call103 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %59, ptr noundef @.str.17)
  br label %if.end104

if.end104:                                        ; preds = %if.then102, %do.body100
  br label %do.cond105

do.cond105:                                       ; preds = %if.end104
  br label %do.end106

do.end106:                                        ; preds = %do.cond105
  br label %if.end127

if.else:                                          ; preds = %if.end96
  %60 = load i32, ptr @ncgchar, align 4
  %cmp107 = icmp eq i32 %60, 256
  br i1 %cmp107, label %if.then109, label %if.else110

if.then109:                                       ; preds = %if.else
  store i32 257, ptr @ncgchar, align 4
  store i32 1, ptr %yytoken, align 4
  br label %yyerrlab1

if.else110:                                       ; preds = %if.else
  %61 = load i32, ptr @ncgchar, align 4
  %cmp111 = icmp sle i32 0, %61
  br i1 %cmp111, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.else110
  %62 = load i32, ptr @ncgchar, align 4
  %cmp113 = icmp sle i32 %62, 314
  br i1 %cmp113, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %63 = load i32, ptr @ncgchar, align 4
  %idxprom115 = sext i32 %63 to i64
  %arrayidx116 = getelementptr inbounds [315 x i8], ptr @yytranslate, i64 0, i64 %idxprom115
  %64 = load i8, ptr %arrayidx116, align 1
  %conv117 = sext i8 %64 to i32
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.else110
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv117, %cond.true ], [ 2, %cond.false ]
  store i32 %cond, ptr %yytoken, align 4
  br label %do.body118

do.body118:                                       ; preds = %cond.end
  %65 = load i32, ptr @ncgdebug, align 4
  %tobool119 = icmp ne i32 %65, 0
  br i1 %tobool119, label %if.then120, label %if.end123

if.then120:                                       ; preds = %do.body118
  %66 = load ptr, ptr @stderr, align 8
  %call121 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %66, ptr noundef @.str.18, ptr noundef @.str.19)
  %67 = load ptr, ptr @stderr, align 8
  %68 = load i32, ptr %yytoken, align 4
  call void @yy_symbol_print(ptr noundef %67, i32 noundef %68, ptr noundef @ncglval)
  %69 = load ptr, ptr @stderr, align 8
  %call122 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %69, ptr noundef @.str.20)
  br label %if.end123

if.end123:                                        ; preds = %if.then120, %do.body118
  br label %do.cond124

do.cond124:                                       ; preds = %if.end123
  br label %do.end125

do.end125:                                        ; preds = %do.cond124
  br label %if.end126

if.end126:                                        ; preds = %do.end125
  br label %if.end127

if.end127:                                        ; preds = %if.end126, %do.end106
  %70 = load i32, ptr %yytoken, align 4
  %71 = load i32, ptr %yyn, align 4
  %add128 = add nsw i32 %71, %70
  store i32 %add128, ptr %yyn, align 4
  %72 = load i32, ptr %yyn, align 4
  %cmp129 = icmp slt i32 %72, 0
  br i1 %cmp129, label %if.then139, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end127
  %73 = load i32, ptr %yyn, align 4
  %cmp131 = icmp slt i32 420, %73
  br i1 %cmp131, label %if.then139, label %lor.lhs.false133

lor.lhs.false133:                                 ; preds = %lor.lhs.false
  %74 = load i32, ptr %yyn, align 4
  %idxprom134 = sext i32 %74 to i64
  %arrayidx135 = getelementptr inbounds [421 x i16], ptr @yycheck, i64 0, i64 %idxprom134
  %75 = load i16, ptr %arrayidx135, align 2
  %conv136 = sext i16 %75 to i32
  %76 = load i32, ptr %yytoken, align 4
  %cmp137 = icmp ne i32 %conv136, %76
  br i1 %cmp137, label %if.then139, label %if.end140

if.then139:                                       ; preds = %lor.lhs.false133, %lor.lhs.false, %if.end127
  br label %yydefault

if.end140:                                        ; preds = %lor.lhs.false133
  %77 = load i32, ptr %yyn, align 4
  %idxprom141 = sext i32 %77 to i64
  %arrayidx142 = getelementptr inbounds [421 x i16], ptr @yytable, i64 0, i64 %idxprom141
  %78 = load i16, ptr %arrayidx142, align 2
  %conv143 = sext i16 %78 to i32
  store i32 %conv143, ptr %yyn, align 4
  %79 = load i32, ptr %yyn, align 4
  %cmp144 = icmp sle i32 %79, 0
  br i1 %cmp144, label %if.then146, label %if.end147

if.then146:                                       ; preds = %if.end140
  %80 = load i32, ptr %yyn, align 4
  %sub = sub nsw i32 0, %80
  store i32 %sub, ptr %yyn, align 4
  br label %yyreduce

if.end147:                                        ; preds = %if.end140
  %81 = load i32, ptr %yyerrstatus, align 4
  %tobool148 = icmp ne i32 %81, 0
  br i1 %tobool148, label %if.then149, label %if.end150

if.then149:                                       ; preds = %if.end147
  %82 = load i32, ptr %yyerrstatus, align 4
  %dec = add nsw i32 %82, -1
  store i32 %dec, ptr %yyerrstatus, align 4
  br label %if.end150

if.end150:                                        ; preds = %if.then149, %if.end147
  br label %do.body151

do.body151:                                       ; preds = %if.end150
  %83 = load i32, ptr @ncgdebug, align 4
  %tobool152 = icmp ne i32 %83, 0
  br i1 %tobool152, label %if.then153, label %if.end156

if.then153:                                       ; preds = %do.body151
  %84 = load ptr, ptr @stderr, align 8
  %call154 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %84, ptr noundef @.str.18, ptr noundef @.str.21)
  %85 = load ptr, ptr @stderr, align 8
  %86 = load i32, ptr %yytoken, align 4
  call void @yy_symbol_print(ptr noundef %85, i32 noundef %86, ptr noundef @ncglval)
  %87 = load ptr, ptr @stderr, align 8
  %call155 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %87, ptr noundef @.str.20)
  br label %if.end156

if.end156:                                        ; preds = %if.then153, %do.body151
  br label %do.cond157

do.cond157:                                       ; preds = %if.end156
  br label %do.end158

do.end158:                                        ; preds = %do.cond157
  %88 = load i32, ptr %yyn, align 4
  store i32 %88, ptr %yystate, align 4
  %89 = load ptr, ptr %yyvsp, align 8
  %incdec.ptr159 = getelementptr inbounds %union.YYSTYPE, ptr %89, i32 1
  store ptr %incdec.ptr159, ptr %yyvsp, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %incdec.ptr159, ptr align 8 @ncglval, i64 8, i1 false)
  store i32 -2, ptr @ncgchar, align 4
  br label %yynewstate

yydefault:                                        ; preds = %if.then139, %if.then83
  %90 = load i32, ptr %yystate, align 4
  %idxprom160 = sext i32 %90 to i64
  %arrayidx161 = getelementptr inbounds [276 x i8], ptr @yydefact, i64 0, i64 %idxprom160
  %91 = load i8, ptr %arrayidx161, align 1
  %conv162 = zext i8 %91 to i32
  store i32 %conv162, ptr %yyn, align 4
  %92 = load i32, ptr %yyn, align 4
  %cmp163 = icmp eq i32 %92, 0
  br i1 %cmp163, label %if.then165, label %if.end166

if.then165:                                       ; preds = %yydefault
  br label %yyerrlab

if.end166:                                        ; preds = %yydefault
  br label %yyreduce

yyreduce:                                         ; preds = %if.end166, %if.then146
  %93 = load i32, ptr %yyn, align 4
  %idxprom167 = sext i32 %93 to i64
  %arrayidx168 = getelementptr inbounds [160 x i8], ptr @yyr2, i64 0, i64 %idxprom167
  %94 = load i8, ptr %arrayidx168, align 1
  %conv169 = sext i8 %94 to i32
  store i32 %conv169, ptr %yylen, align 4
  %95 = load ptr, ptr %yyvsp, align 8
  %96 = load i32, ptr %yylen, align 4
  %sub170 = sub nsw i32 1, %96
  %idxprom171 = sext i32 %sub170 to i64
  %arrayidx172 = getelementptr inbounds %union.YYSTYPE, ptr %95, i64 %idxprom171
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %yyval, ptr align 8 %arrayidx172, i64 8, i1 false)
  br label %do.body173

do.body173:                                       ; preds = %yyreduce
  %97 = load i32, ptr @ncgdebug, align 4
  %tobool174 = icmp ne i32 %97, 0
  br i1 %tobool174, label %if.then175, label %if.end176

if.then175:                                       ; preds = %do.body173
  %98 = load ptr, ptr %yyssp, align 8
  %99 = load ptr, ptr %yyvsp, align 8
  %100 = load i32, ptr %yyn, align 4
  call void @yy_reduce_print(ptr noundef %98, ptr noundef %99, i32 noundef %100)
  br label %if.end176

if.end176:                                        ; preds = %if.then175, %do.body173
  br label %do.cond177

do.cond177:                                       ; preds = %if.end176
  br label %do.end178

do.end178:                                        ; preds = %do.cond177
  %101 = load i32, ptr %yyn, align 4
  switch i32 %101, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb183
    i32 8, label %sw.bb185
    i32 9, label %sw.bb192
    i32 12, label %sw.bb194
    i32 13, label %sw.bb195
    i32 16, label %sw.bb196
    i32 17, label %sw.bb207
    i32 18, label %sw.bb208
    i32 25, label %sw.bb209
    i32 26, label %sw.bb258
    i32 27, label %sw.bb270
    i32 28, label %sw.bb303
    i32 29, label %sw.bb312
    i32 30, label %sw.bb328
    i32 31, label %sw.bb349
    i32 32, label %sw.bb418
    i32 33, label %sw.bb420
    i32 34, label %sw.bb422
    i32 35, label %sw.bb447
    i32 36, label %sw.bb448
    i32 37, label %sw.bb449
    i32 38, label %sw.bb450
    i32 39, label %sw.bb451
    i32 40, label %sw.bb452
    i32 41, label %sw.bb453
    i32 42, label %sw.bb454
    i32 43, label %sw.bb455
    i32 44, label %sw.bb456
    i32 45, label %sw.bb457
    i32 46, label %sw.bb458
    i32 48, label %sw.bb459
    i32 49, label %sw.bb460
    i32 52, label %sw.bb461
    i32 53, label %sw.bb462
    i32 56, label %sw.bb463
    i32 57, label %sw.bb468
    i32 58, label %sw.bb474
    i32 60, label %sw.bb488
    i32 61, label %sw.bb489
    i32 64, label %sw.bb490
    i32 65, label %sw.bb491
    i32 66, label %sw.bb492
    i32 67, label %sw.bb526
    i32 68, label %sw.bb538
    i32 69, label %sw.bb542
    i32 70, label %sw.bb587
    i32 71, label %sw.bb597
    i32 72, label %sw.bb599
    i32 73, label %sw.bb611
    i32 74, label %sw.bb615
    i32 75, label %sw.bb628
    i32 76, label %sw.bb640
    i32 77, label %sw.bb644
    i32 78, label %sw.bb697
    i32 79, label %sw.bb707
    i32 80, label %sw.bb709
    i32 81, label %sw.bb721
    i32 82, label %sw.bb725
    i32 83, label %sw.bb735
    i32 84, label %sw.bb754
    i32 85, label %sw.bb765
    i32 86, label %sw.bb776
    i32 87, label %sw.bb806
    i32 88, label %sw.bb808
    i32 89, label %sw.bb809
    i32 90, label %sw.bb810
    i32 91, label %sw.bb813
    i32 92, label %sw.bb816
    i32 93, label %sw.bb819
    i32 94, label %sw.bb823
    i32 95, label %sw.bb843
    i32 96, label %sw.bb869
    i32 97, label %sw.bb873
    i32 98, label %sw.bb878
    i32 99, label %sw.bb882
    i32 100, label %sw.bb886
    i32 101, label %sw.bb890
    i32 102, label %sw.bb894
    i32 103, label %sw.bb898
    i32 104, label %sw.bb902
    i32 105, label %sw.bb906
    i32 106, label %sw.bb910
    i32 107, label %sw.bb914
    i32 108, label %sw.bb918
    i32 109, label %sw.bb922
    i32 110, label %sw.bb926
    i32 111, label %sw.bb929
    i32 112, label %sw.bb934
    i32 114, label %sw.bb941
    i32 115, label %sw.bb942
    i32 118, label %sw.bb943
    i32 119, label %sw.bb946
    i32 120, label %sw.bb948
    i32 121, label %sw.bb950
    i32 122, label %sw.bb952
    i32 123, label %sw.bb955
    i32 124, label %sw.bb959
    i32 125, label %sw.bb961
    i32 126, label %sw.bb964
    i32 127, label %sw.bb966
    i32 128, label %sw.bb968
    i32 129, label %sw.bb970
    i32 130, label %sw.bb972
    i32 132, label %sw.bb974
    i32 133, label %sw.bb977
    i32 134, label %sw.bb981
    i32 135, label %sw.bb984
    i32 136, label %sw.bb988
    i32 137, label %sw.bb990
    i32 138, label %sw.bb992
    i32 139, label %sw.bb994
    i32 140, label %sw.bb996
    i32 141, label %sw.bb998
    i32 142, label %sw.bb1000
    i32 143, label %sw.bb1002
    i32 144, label %sw.bb1004
    i32 145, label %sw.bb1006
    i32 146, label %sw.bb1008
    i32 147, label %sw.bb1010
    i32 148, label %sw.bb1012
    i32 149, label %sw.bb1015
    i32 150, label %sw.bb1019
    i32 151, label %sw.bb1021
    i32 152, label %sw.bb1023
    i32 153, label %sw.bb1025
    i32 154, label %sw.bb1027
    i32 155, label %sw.bb1029
    i32 156, label %sw.bb1031
    i32 157, label %sw.bb1033
    i32 158, label %sw.bb1035
    i32 159, label %sw.bb1038
  ]

sw.bb:                                            ; preds = %do.end178
  %102 = load i32, ptr @error_count, align 4
  %cmp179 = icmp sgt i32 %102, 0
  br i1 %cmp179, label %if.then181, label %if.end182

if.then181:                                       ; preds = %sw.bb
  br label %yyabortlab

if.end182:                                        ; preds = %sw.bb
  br label %sw.epilog

sw.bb183:                                         ; preds = %do.end178
  %103 = load ptr, ptr @datasetname, align 8
  %call184 = call ptr @createrootgroup(ptr noundef %103)
  br label %sw.epilog

sw.bb185:                                         ; preds = %do.end178
  call void @llvm.lifetime.start.p0(i64 8, ptr %id) #13
  %104 = load ptr, ptr %yyvsp, align 8
  %arrayidx186 = getelementptr inbounds %union.YYSTYPE, ptr %104, i64 -1
  %105 = load ptr, ptr %arrayidx186, align 8
  store ptr %105, ptr %id, align 8
  call void @markcdf4(ptr noundef @.str.22)
  %106 = load ptr, ptr %id, align 8
  %call187 = call ptr @creategroup(ptr noundef %106)
  %cmp188 = icmp eq ptr %call187, null
  br i1 %cmp188, label %if.then190, label %if.end191

if.then190:                                       ; preds = %sw.bb185
  %107 = load ptr, ptr %id, align 8
  %name = getelementptr inbounds %struct.Symbol, ptr %107, i32 0, i32 2
  %108 = load ptr, ptr %name, align 8
  call void (ptr, ...) @ncgerror(ptr noundef @.str.23, ptr noundef %108)
  br label %if.end191

if.end191:                                        ; preds = %if.then190, %sw.bb185
  call void @llvm.lifetime.end.p0(i64 8, ptr %id) #13
  br label %sw.epilog

sw.bb192:                                         ; preds = %do.end178
  %109 = load ptr, ptr @groupstack, align 8
  %call193 = call ptr @listpop(ptr noundef %109)
  br label %sw.epilog

sw.bb194:                                         ; preds = %do.end178
  br label %sw.epilog

sw.bb195:                                         ; preds = %do.end178
  call void @markcdf4(ptr noundef @.str.24)
  br label %sw.epilog

sw.bb196:                                         ; preds = %do.end178
  %110 = load ptr, ptr %yyvsp, align 8
  %arrayidx197 = getelementptr inbounds %union.YYSTYPE, ptr %110, i64 0
  %111 = load ptr, ptr %arrayidx197, align 8
  %objectclass = getelementptr inbounds %struct.Symbol, ptr %111, i32 0, i32 0
  store i32 104, ptr %objectclass, align 8
  %112 = load ptr, ptr %yyvsp, align 8
  %arrayidx198 = getelementptr inbounds %union.YYSTYPE, ptr %112, i64 0
  %113 = load ptr, ptr %arrayidx198, align 8
  %call199 = call i32 @dupobjectcheck(i32 noundef 104, ptr noundef %113)
  %tobool200 = icmp ne i32 %call199, 0
  br i1 %tobool200, label %if.then201, label %if.end204

if.then201:                                       ; preds = %sw.bb196
  %114 = load ptr, ptr %yyvsp, align 8
  %arrayidx202 = getelementptr inbounds %union.YYSTYPE, ptr %114, i64 0
  %115 = load ptr, ptr %arrayidx202, align 8
  %name203 = getelementptr inbounds %struct.Symbol, ptr %115, i32 0, i32 2
  %116 = load ptr, ptr %name203, align 8
  call void (ptr, ...) @ncgerror(ptr noundef @.str.25, ptr noundef %116)
  br label %if.end204

if.end204:                                        ; preds = %if.then201, %sw.bb196
  %117 = load ptr, ptr @typdefs, align 8
  %118 = load ptr, ptr %yyvsp, align 8
  %arrayidx205 = getelementptr inbounds %union.YYSTYPE, ptr %118, i64 0
  %119 = load ptr, ptr %arrayidx205, align 8
  %call206 = call i32 @listpush(ptr noundef %117, ptr noundef %119)
  br label %sw.epilog

sw.bb207:                                         ; preds = %do.end178
  br label %sw.epilog

sw.bb208:                                         ; preds = %do.end178
  br label %sw.epilog

sw.bb209:                                         ; preds = %do.end178
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13
  %120 = load ptr, ptr %yyvsp, align 8
  %arrayidx210 = getelementptr inbounds %union.YYSTYPE, ptr %120, i64 -3
  %121 = load ptr, ptr %arrayidx210, align 8
  call void @addtogroup(ptr noundef %121)
  %122 = load ptr, ptr %yyvsp, align 8
  %arrayidx211 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -3
  %123 = load ptr, ptr %arrayidx211, align 8
  %objectclass212 = getelementptr inbounds %struct.Symbol, ptr %123, i32 0, i32 0
  store i32 104, ptr %objectclass212, align 8
  %124 = load ptr, ptr %yyvsp, align 8
  %arrayidx213 = getelementptr inbounds %union.YYSTYPE, ptr %124, i64 -3
  %125 = load ptr, ptr %arrayidx213, align 8
  %subclass = getelementptr inbounds %struct.Symbol, ptr %125, i32 0, i32 1
  store i32 15, ptr %subclass, align 4
  %126 = load ptr, ptr %yyvsp, align 8
  %arrayidx214 = getelementptr inbounds %union.YYSTYPE, ptr %126, i64 -5
  %127 = load ptr, ptr %arrayidx214, align 8
  %128 = load ptr, ptr %yyvsp, align 8
  %arrayidx215 = getelementptr inbounds %union.YYSTYPE, ptr %128, i64 -3
  %129 = load ptr, ptr %arrayidx215, align 8
  %typ = getelementptr inbounds %struct.Symbol, ptr %129, i32 0, i32 10
  %basetype = getelementptr inbounds %struct.Typeinfo, ptr %typ, i32 0, i32 0
  store ptr %127, ptr %basetype, align 8
  %130 = load ptr, ptr %yyvsp, align 8
  %arrayidx216 = getelementptr inbounds %union.YYSTYPE, ptr %130, i64 -5
  %131 = load ptr, ptr %arrayidx216, align 8
  %typ217 = getelementptr inbounds %struct.Symbol, ptr %131, i32 0, i32 10
  %size = getelementptr inbounds %struct.Typeinfo, ptr %typ217, i32 0, i32 7
  %132 = load i64, ptr %size, align 8
  %133 = load ptr, ptr %yyvsp, align 8
  %arrayidx218 = getelementptr inbounds %union.YYSTYPE, ptr %133, i64 -3
  %134 = load ptr, ptr %arrayidx218, align 8
  %typ219 = getelementptr inbounds %struct.Symbol, ptr %134, i32 0, i32 10
  %size220 = getelementptr inbounds %struct.Typeinfo, ptr %typ219, i32 0, i32 7
  store i64 %132, ptr %size220, align 8
  %135 = load ptr, ptr %yyvsp, align 8
  %arrayidx221 = getelementptr inbounds %union.YYSTYPE, ptr %135, i64 -5
  %136 = load ptr, ptr %arrayidx221, align 8
  %typ222 = getelementptr inbounds %struct.Symbol, ptr %136, i32 0, i32 10
  %alignment = getelementptr inbounds %struct.Typeinfo, ptr %typ222, i32 0, i32 4
  %137 = load i64, ptr %alignment, align 8
  %138 = load ptr, ptr %yyvsp, align 8
  %arrayidx223 = getelementptr inbounds %union.YYSTYPE, ptr %138, i64 -3
  %139 = load ptr, ptr %arrayidx223, align 8
  %typ224 = getelementptr inbounds %struct.Symbol, ptr %139, i32 0, i32 10
  %alignment225 = getelementptr inbounds %struct.Typeinfo, ptr %typ224, i32 0, i32 4
  store i64 %137, ptr %alignment225, align 8
  %140 = load ptr, ptr %yyvsp, align 8
  %arrayidx226 = getelementptr inbounds %union.YYSTYPE, ptr %140, i64 -1
  %141 = load i64, ptr %arrayidx226, align 8
  %conv227 = trunc i64 %141 to i32
  store i32 %conv227, ptr @stackbase, align 4
  %142 = load ptr, ptr @stack, align 8
  %cmp228 = icmp eq ptr %142, null
  br i1 %cmp228, label %cond.true230, label %cond.false231

cond.true230:                                     ; preds = %sw.bb209
  br label %cond.end233

cond.false231:                                    ; preds = %sw.bb209
  %143 = load ptr, ptr @stack, align 8
  %length = getelementptr inbounds %struct.List, ptr %143, i32 0, i32 1
  %144 = load i64, ptr %length, align 8
  %conv232 = trunc i64 %144 to i32
  br label %cond.end233

cond.end233:                                      ; preds = %cond.false231, %cond.true230
  %cond234 = phi i32 [ 0, %cond.true230 ], [ %conv232, %cond.false231 ]
  store i32 %cond234, ptr @stacklen, align 4
  %call235 = call ptr @listnew()
  %145 = load ptr, ptr %yyvsp, align 8
  %arrayidx236 = getelementptr inbounds %union.YYSTYPE, ptr %145, i64 -3
  %146 = load ptr, ptr %arrayidx236, align 8
  %subnodes = getelementptr inbounds %struct.Symbol, ptr %146, i32 0, i32 6
  store ptr %call235, ptr %subnodes, align 8
  %147 = load i32, ptr @stackbase, align 4
  store i32 %147, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end233
  %148 = load i32, ptr %i, align 4
  %149 = load i32, ptr @stacklen, align 4
  %cmp237 = icmp slt i32 %148, %149
  br i1 %cmp237, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %eid) #13
  %150 = load ptr, ptr @stack, align 8
  %151 = load i32, ptr %i, align 4
  %conv239 = sext i32 %151 to i64
  %call240 = call ptr @listget(ptr noundef %150, i64 noundef %conv239)
  store ptr %call240, ptr %eid, align 8
  %152 = load ptr, ptr %eid, align 8
  %subclass241 = getelementptr inbounds %struct.Symbol, ptr %152, i32 0, i32 1
  %153 = load i32, ptr %subclass241, align 4
  %cmp242 = icmp eq i32 %153, 105
  br i1 %cmp242, label %if.then244, label %if.else245

if.then244:                                       ; preds = %for.body
  br label %if.end246

if.else245:                                       ; preds = %for.body
  call void @__assert_fail(ptr noundef @.str.26, ptr noundef @.str.27, i32 noundef 332, ptr noundef @__PRETTY_FUNCTION__.ncgparse) #15
  unreachable

if.end246:                                        ; preds = %if.then244
  %154 = load ptr, ptr %eid, align 8
  call void @addtogroup(ptr noundef %154)
  %155 = load ptr, ptr %yyvsp, align 8
  %arrayidx247 = getelementptr inbounds %union.YYSTYPE, ptr %155, i64 -3
  %156 = load ptr, ptr %arrayidx247, align 8
  %subnodes248 = getelementptr inbounds %struct.Symbol, ptr %156, i32 0, i32 6
  %157 = load ptr, ptr %subnodes248, align 8
  %158 = load ptr, ptr %eid, align 8
  %call249 = call i32 @listpush(ptr noundef %157, ptr noundef %158)
  %159 = load ptr, ptr %yyvsp, align 8
  %arrayidx250 = getelementptr inbounds %union.YYSTYPE, ptr %159, i64 -3
  %160 = load ptr, ptr %arrayidx250, align 8
  %161 = load ptr, ptr %eid, align 8
  %container = getelementptr inbounds %struct.Symbol, ptr %161, i32 0, i32 4
  store ptr %160, ptr %container, align 8
  %162 = load ptr, ptr %yyvsp, align 8
  %arrayidx251 = getelementptr inbounds %union.YYSTYPE, ptr %162, i64 -3
  %163 = load ptr, ptr %arrayidx251, align 8
  %typ252 = getelementptr inbounds %struct.Symbol, ptr %163, i32 0, i32 10
  %basetype253 = getelementptr inbounds %struct.Typeinfo, ptr %typ252, i32 0, i32 0
  %164 = load ptr, ptr %basetype253, align 8
  %165 = load ptr, ptr %eid, align 8
  %typ254 = getelementptr inbounds %struct.Symbol, ptr %165, i32 0, i32 10
  %basetype255 = getelementptr inbounds %struct.Typeinfo, ptr %typ254, i32 0, i32 0
  store ptr %164, ptr %basetype255, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %eid) #13
  br label %for.inc

for.inc:                                          ; preds = %if.end246
  %166 = load i32, ptr %i, align 4
  %inc = add nsw i32 %166, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %167 = load ptr, ptr @stack, align 8
  %168 = load i32, ptr @stackbase, align 4
  %conv256 = sext i32 %168 to i64
  %call257 = call i32 @listsetlength(ptr noundef %167, i64 noundef %conv256)
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13
  br label %sw.epilog

sw.bb258:                                         ; preds = %do.end178
  %169 = load ptr, ptr @stack, align 8
  %cmp259 = icmp eq ptr %169, null
  br i1 %cmp259, label %cond.true261, label %cond.false262

cond.true261:                                     ; preds = %sw.bb258
  br label %cond.end265

cond.false262:                                    ; preds = %sw.bb258
  %170 = load ptr, ptr @stack, align 8
  %length263 = getelementptr inbounds %struct.List, ptr %170, i32 0, i32 1
  %171 = load i64, ptr %length263, align 8
  %conv264 = trunc i64 %171 to i32
  br label %cond.end265

cond.end265:                                      ; preds = %cond.false262, %cond.true261
  %cond266 = phi i32 [ 0, %cond.true261 ], [ %conv264, %cond.false262 ]
  %conv267 = sext i32 %cond266 to i64
  store i64 %conv267, ptr %yyval, align 8
  %172 = load ptr, ptr @stack, align 8
  %173 = load ptr, ptr %yyvsp, align 8
  %arrayidx268 = getelementptr inbounds %union.YYSTYPE, ptr %173, i64 0
  %174 = load ptr, ptr %arrayidx268, align 8
  %call269 = call i32 @listpush(ptr noundef %172, ptr noundef %174)
  br label %sw.epilog

sw.bb270:                                         ; preds = %do.end178
  call void @llvm.lifetime.start.p0(i64 4, ptr %i271) #13
  %175 = load ptr, ptr %yyvsp, align 8
  %arrayidx272 = getelementptr inbounds %union.YYSTYPE, ptr %175, i64 -2
  %176 = load i64, ptr %arrayidx272, align 8
  store i64 %176, ptr %yyval, align 8
  %177 = load ptr, ptr %yyvsp, align 8
  %arrayidx273 = getelementptr inbounds %union.YYSTYPE, ptr %177, i64 -2
  %178 = load i64, ptr %arrayidx273, align 8
  %conv274 = trunc i64 %178 to i32
  store i32 %conv274, ptr @stackbase, align 4
  %179 = load ptr, ptr @stack, align 8
  %cmp275 = icmp eq ptr %179, null
  br i1 %cmp275, label %cond.true277, label %cond.false278

cond.true277:                                     ; preds = %sw.bb270
  br label %cond.end281

cond.false278:                                    ; preds = %sw.bb270
  %180 = load ptr, ptr @stack, align 8
  %length279 = getelementptr inbounds %struct.List, ptr %180, i32 0, i32 1
  %181 = load i64, ptr %length279, align 8
  %conv280 = trunc i64 %181 to i32
  br label %cond.end281

cond.end281:                                      ; preds = %cond.false278, %cond.true277
  %cond282 = phi i32 [ 0, %cond.true277 ], [ %conv280, %cond.false278 ]
  store i32 %cond282, ptr @stacklen, align 4
  %182 = load i32, ptr @stackbase, align 4
  store i32 %182, ptr %i271, align 4
  br label %for.cond283

for.cond283:                                      ; preds = %for.inc298, %cond.end281
  %183 = load i32, ptr %i271, align 4
  %184 = load i32, ptr @stacklen, align 4
  %cmp284 = icmp slt i32 %183, %184
  br i1 %cmp284, label %for.body286, label %for.end300

for.body286:                                      ; preds = %for.cond283
  call void @llvm.lifetime.start.p0(i64 8, ptr %elem) #13
  %185 = load ptr, ptr @stack, align 8
  %186 = load i32, ptr %i271, align 4
  %conv287 = sext i32 %186 to i64
  %call288 = call ptr @listget(ptr noundef %185, i64 noundef %conv287)
  store ptr %call288, ptr %elem, align 8
  %187 = load ptr, ptr %yyvsp, align 8
  %arrayidx289 = getelementptr inbounds %union.YYSTYPE, ptr %187, i64 0
  %188 = load ptr, ptr %arrayidx289, align 8
  %name290 = getelementptr inbounds %struct.Symbol, ptr %188, i32 0, i32 2
  %189 = load ptr, ptr %name290, align 8
  %190 = load ptr, ptr %elem, align 8
  %name291 = getelementptr inbounds %struct.Symbol, ptr %190, i32 0, i32 2
  %191 = load ptr, ptr %name291, align 8
  %call292 = call i32 @strcmp(ptr noundef %189, ptr noundef %191) #16
  %cmp293 = icmp eq i32 %call292, 0
  br i1 %cmp293, label %if.then295, label %if.end297

if.then295:                                       ; preds = %for.body286
  %192 = load ptr, ptr %elem, align 8
  %name296 = getelementptr inbounds %struct.Symbol, ptr %192, i32 0, i32 2
  %193 = load ptr, ptr %name296, align 8
  call void (ptr, ...) @ncgerror(ptr noundef @.str.28, ptr noundef %193)
  br label %if.end297

if.end297:                                        ; preds = %if.then295, %for.body286
  call void @llvm.lifetime.end.p0(i64 8, ptr %elem) #13
  br label %for.inc298

for.inc298:                                       ; preds = %if.end297
  %194 = load i32, ptr %i271, align 4
  %inc299 = add nsw i32 %194, 1
  store i32 %inc299, ptr %i271, align 4
  br label %for.cond283, !llvm.loop !6

for.end300:                                       ; preds = %for.cond283
  %195 = load ptr, ptr @stack, align 8
  %196 = load ptr, ptr %yyvsp, align 8
  %arrayidx301 = getelementptr inbounds %union.YYSTYPE, ptr %196, i64 0
  %197 = load ptr, ptr %arrayidx301, align 8
  %call302 = call i32 @listpush(ptr noundef %195, ptr noundef %197)
  call void @llvm.lifetime.end.p0(i64 4, ptr %i271) #13
  br label %sw.epilog

sw.bb303:                                         ; preds = %do.end178
  %198 = load ptr, ptr %yyvsp, align 8
  %arrayidx304 = getelementptr inbounds %union.YYSTYPE, ptr %198, i64 -2
  %199 = load ptr, ptr %arrayidx304, align 8
  %objectclass305 = getelementptr inbounds %struct.Symbol, ptr %199, i32 0, i32 0
  store i32 104, ptr %objectclass305, align 8
  %200 = load ptr, ptr %yyvsp, align 8
  %arrayidx306 = getelementptr inbounds %union.YYSTYPE, ptr %200, i64 -2
  %201 = load ptr, ptr %arrayidx306, align 8
  %subclass307 = getelementptr inbounds %struct.Symbol, ptr %201, i32 0, i32 1
  store i32 105, ptr %subclass307, align 4
  %202 = load ptr, ptr %yyvsp, align 8
  %arrayidx308 = getelementptr inbounds %union.YYSTYPE, ptr %202, i64 0
  %203 = load ptr, ptr %arrayidx308, align 8
  %204 = load ptr, ptr %yyvsp, align 8
  %arrayidx309 = getelementptr inbounds %union.YYSTYPE, ptr %204, i64 -2
  %205 = load ptr, ptr %arrayidx309, align 8
  %typ310 = getelementptr inbounds %struct.Symbol, ptr %205, i32 0, i32 10
  %econst = getelementptr inbounds %struct.Typeinfo, ptr %typ310, i32 0, i32 5
  store ptr %203, ptr %econst, align 8
  %206 = load ptr, ptr %yyvsp, align 8
  %arrayidx311 = getelementptr inbounds %union.YYSTYPE, ptr %206, i64 -2
  %207 = load ptr, ptr %arrayidx311, align 8
  store ptr %207, ptr %yyval, align 8
  br label %sw.epilog

sw.bb312:                                         ; preds = %do.end178
  call void @vercheck(i32 noundef 14)
  %208 = load ptr, ptr %yyvsp, align 8
  %arrayidx313 = getelementptr inbounds %union.YYSTYPE, ptr %208, i64 0
  %209 = load ptr, ptr %arrayidx313, align 8
  call void @addtogroup(ptr noundef %209)
  %210 = load ptr, ptr %yyvsp, align 8
  %arrayidx314 = getelementptr inbounds %union.YYSTYPE, ptr %210, i64 0
  %211 = load ptr, ptr %arrayidx314, align 8
  %objectclass315 = getelementptr inbounds %struct.Symbol, ptr %211, i32 0, i32 0
  store i32 104, ptr %objectclass315, align 8
  %212 = load ptr, ptr %yyvsp, align 8
  %arrayidx316 = getelementptr inbounds %union.YYSTYPE, ptr %212, i64 0
  %213 = load ptr, ptr %arrayidx316, align 8
  %subclass317 = getelementptr inbounds %struct.Symbol, ptr %213, i32 0, i32 1
  store i32 14, ptr %subclass317, align 4
  %214 = load ptr, ptr %yyvsp, align 8
  %arrayidx318 = getelementptr inbounds %union.YYSTYPE, ptr %214, i64 0
  %215 = load ptr, ptr %arrayidx318, align 8
  %typ319 = getelementptr inbounds %struct.Symbol, ptr %215, i32 0, i32 10
  %typecode = getelementptr inbounds %struct.Typeinfo, ptr %typ319, i32 0, i32 2
  store i32 14, ptr %typecode, align 4
  %216 = load i32, ptr @int32_val, align 4
  %conv320 = sext i32 %216 to i64
  %217 = load ptr, ptr %yyvsp, align 8
  %arrayidx321 = getelementptr inbounds %union.YYSTYPE, ptr %217, i64 0
  %218 = load ptr, ptr %arrayidx321, align 8
  %typ322 = getelementptr inbounds %struct.Symbol, ptr %218, i32 0, i32 10
  %size323 = getelementptr inbounds %struct.Typeinfo, ptr %typ322, i32 0, i32 7
  store i64 %conv320, ptr %size323, align 8
  %219 = load ptr, ptr %yyvsp, align 8
  %arrayidx324 = getelementptr inbounds %union.YYSTYPE, ptr %219, i64 0
  %220 = load ptr, ptr %arrayidx324, align 8
  %typ325 = getelementptr inbounds %struct.Symbol, ptr %220, i32 0, i32 10
  %alignment326 = getelementptr inbounds %struct.Typeinfo, ptr %typ325, i32 0, i32 4
  %call327 = call i32 @ncaux_class_alignment(i32 noundef 14, ptr noundef %alignment326)
  br label %sw.epilog

sw.bb328:                                         ; preds = %do.end178
  call void @llvm.lifetime.start.p0(i64 8, ptr %basetype329) #13
  %221 = load ptr, ptr %yyvsp, align 8
  %arrayidx330 = getelementptr inbounds %union.YYSTYPE, ptr %221, i64 -4
  %222 = load ptr, ptr %arrayidx330, align 8
  store ptr %222, ptr %basetype329, align 8
  call void @vercheck(i32 noundef 13)
  %223 = load ptr, ptr %yyvsp, align 8
  %arrayidx331 = getelementptr inbounds %union.YYSTYPE, ptr %223, i64 0
  %224 = load ptr, ptr %arrayidx331, align 8
  call void @addtogroup(ptr noundef %224)
  %225 = load ptr, ptr %yyvsp, align 8
  %arrayidx332 = getelementptr inbounds %union.YYSTYPE, ptr %225, i64 0
  %226 = load ptr, ptr %arrayidx332, align 8
  %objectclass333 = getelementptr inbounds %struct.Symbol, ptr %226, i32 0, i32 0
  store i32 104, ptr %objectclass333, align 8
  %227 = load ptr, ptr %yyvsp, align 8
  %arrayidx334 = getelementptr inbounds %union.YYSTYPE, ptr %227, i64 0
  %228 = load ptr, ptr %arrayidx334, align 8
  %subclass335 = getelementptr inbounds %struct.Symbol, ptr %228, i32 0, i32 1
  store i32 13, ptr %subclass335, align 4
  %229 = load ptr, ptr %basetype329, align 8
  %230 = load ptr, ptr %yyvsp, align 8
  %arrayidx336 = getelementptr inbounds %union.YYSTYPE, ptr %230, i64 0
  %231 = load ptr, ptr %arrayidx336, align 8
  %typ337 = getelementptr inbounds %struct.Symbol, ptr %231, i32 0, i32 10
  %basetype338 = getelementptr inbounds %struct.Typeinfo, ptr %typ337, i32 0, i32 0
  store ptr %229, ptr %basetype338, align 8
  %232 = load ptr, ptr %yyvsp, align 8
  %arrayidx339 = getelementptr inbounds %union.YYSTYPE, ptr %232, i64 0
  %233 = load ptr, ptr %arrayidx339, align 8
  %typ340 = getelementptr inbounds %struct.Symbol, ptr %233, i32 0, i32 10
  %typecode341 = getelementptr inbounds %struct.Typeinfo, ptr %typ340, i32 0, i32 2
  store i32 13, ptr %typecode341, align 4
  %234 = load ptr, ptr %yyvsp, align 8
  %arrayidx342 = getelementptr inbounds %union.YYSTYPE, ptr %234, i64 0
  %235 = load ptr, ptr %arrayidx342, align 8
  %typ343 = getelementptr inbounds %struct.Symbol, ptr %235, i32 0, i32 10
  %size344 = getelementptr inbounds %struct.Typeinfo, ptr %typ343, i32 0, i32 7
  store i64 16, ptr %size344, align 8
  %236 = load ptr, ptr %yyvsp, align 8
  %arrayidx345 = getelementptr inbounds %union.YYSTYPE, ptr %236, i64 0
  %237 = load ptr, ptr %arrayidx345, align 8
  %typ346 = getelementptr inbounds %struct.Symbol, ptr %237, i32 0, i32 10
  %alignment347 = getelementptr inbounds %struct.Typeinfo, ptr %typ346, i32 0, i32 4
  %call348 = call i32 @ncaux_class_alignment(i32 noundef 13, ptr noundef %alignment347)
  call void @llvm.lifetime.end.p0(i64 8, ptr %basetype329) #13
  br label %sw.epilog

sw.bb349:                                         ; preds = %do.end178
  call void @llvm.lifetime.start.p0(i64 4, ptr %i350) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #13
  call void @vercheck(i32 noundef 16)
  %238 = load ptr, ptr %yyvsp, align 8
  %arrayidx351 = getelementptr inbounds %union.YYSTYPE, ptr %238, i64 -3
  %239 = load ptr, ptr %arrayidx351, align 8
  call void @addtogroup(ptr noundef %239)
  %240 = load ptr, ptr %yyvsp, align 8
  %arrayidx352 = getelementptr inbounds %union.YYSTYPE, ptr %240, i64 -1
  %241 = load i64, ptr %arrayidx352, align 8
  %conv353 = trunc i64 %241 to i32
  store i32 %conv353, ptr @stackbase, align 4
  %242 = load ptr, ptr @stack, align 8
  %cmp354 = icmp eq ptr %242, null
  br i1 %cmp354, label %cond.true356, label %cond.false357

cond.true356:                                     ; preds = %sw.bb349
  br label %cond.end360

cond.false357:                                    ; preds = %sw.bb349
  %243 = load ptr, ptr @stack, align 8
  %length358 = getelementptr inbounds %struct.List, ptr %243, i32 0, i32 1
  %244 = load i64, ptr %length358, align 8
  %conv359 = trunc i64 %244 to i32
  br label %cond.end360

cond.end360:                                      ; preds = %cond.false357, %cond.true356
  %cond361 = phi i32 [ 0, %cond.true356 ], [ %conv359, %cond.false357 ]
  store i32 %cond361, ptr @stacklen, align 4
  %245 = load i32, ptr @stackbase, align 4
  store i32 %245, ptr %i350, align 4
  br label %for.cond362

for.cond362:                                      ; preds = %for.inc386, %cond.end360
  %246 = load i32, ptr %i350, align 4
  %247 = load i32, ptr @stacklen, align 4
  %cmp363 = icmp slt i32 %246, %247
  br i1 %cmp363, label %for.body365, label %for.end388

for.body365:                                      ; preds = %for.cond362
  call void @llvm.lifetime.start.p0(i64 8, ptr %elem1) #13
  %248 = load ptr, ptr @stack, align 8
  %249 = load i32, ptr %i350, align 4
  %conv366 = sext i32 %249 to i64
  %call367 = call ptr @listget(ptr noundef %248, i64 noundef %conv366)
  store ptr %call367, ptr %elem1, align 8
  %250 = load i32, ptr %i350, align 4
  %add368 = add nsw i32 %250, 1
  store i32 %add368, ptr %j, align 4
  br label %for.cond369

for.cond369:                                      ; preds = %for.inc383, %for.body365
  %251 = load i32, ptr %j, align 4
  %252 = load i32, ptr @stacklen, align 4
  %cmp370 = icmp slt i32 %251, %252
  br i1 %cmp370, label %for.body372, label %for.end385

for.body372:                                      ; preds = %for.cond369
  call void @llvm.lifetime.start.p0(i64 8, ptr %elem2) #13
  %253 = load ptr, ptr @stack, align 8
  %254 = load i32, ptr %j, align 4
  %conv373 = sext i32 %254 to i64
  %call374 = call ptr @listget(ptr noundef %253, i64 noundef %conv373)
  store ptr %call374, ptr %elem2, align 8
  %255 = load ptr, ptr %elem1, align 8
  %name375 = getelementptr inbounds %struct.Symbol, ptr %255, i32 0, i32 2
  %256 = load ptr, ptr %name375, align 8
  %257 = load ptr, ptr %elem2, align 8
  %name376 = getelementptr inbounds %struct.Symbol, ptr %257, i32 0, i32 2
  %258 = load ptr, ptr %name376, align 8
  %call377 = call i32 @strcmp(ptr noundef %256, ptr noundef %258) #16
  %cmp378 = icmp eq i32 %call377, 0
  br i1 %cmp378, label %if.then380, label %if.end382

if.then380:                                       ; preds = %for.body372
  %259 = load ptr, ptr %elem1, align 8
  %name381 = getelementptr inbounds %struct.Symbol, ptr %259, i32 0, i32 2
  %260 = load ptr, ptr %name381, align 8
  call void (ptr, ...) @ncgerror(ptr noundef @.str.29, ptr noundef %260)
  br label %if.end382

if.end382:                                        ; preds = %if.then380, %for.body372
  call void @llvm.lifetime.end.p0(i64 8, ptr %elem2) #13
  br label %for.inc383

for.inc383:                                       ; preds = %if.end382
  %261 = load i32, ptr %j, align 4
  %inc384 = add nsw i32 %261, 1
  store i32 %inc384, ptr %j, align 4
  br label %for.cond369, !llvm.loop !7

for.end385:                                       ; preds = %for.cond369
  call void @llvm.lifetime.end.p0(i64 8, ptr %elem1) #13
  br label %for.inc386

for.inc386:                                       ; preds = %for.end385
  %262 = load i32, ptr %i350, align 4
  %inc387 = add nsw i32 %262, 1
  store i32 %inc387, ptr %i350, align 4
  br label %for.cond362, !llvm.loop !8

for.end388:                                       ; preds = %for.cond362
  %263 = load ptr, ptr %yyvsp, align 8
  %arrayidx389 = getelementptr inbounds %union.YYSTYPE, ptr %263, i64 -3
  %264 = load ptr, ptr %arrayidx389, align 8
  %objectclass390 = getelementptr inbounds %struct.Symbol, ptr %264, i32 0, i32 0
  store i32 104, ptr %objectclass390, align 8
  %265 = load ptr, ptr %yyvsp, align 8
  %arrayidx391 = getelementptr inbounds %union.YYSTYPE, ptr %265, i64 -3
  %266 = load ptr, ptr %arrayidx391, align 8
  %subclass392 = getelementptr inbounds %struct.Symbol, ptr %266, i32 0, i32 1
  store i32 16, ptr %subclass392, align 4
  %267 = load ptr, ptr %yyvsp, align 8
  %arrayidx393 = getelementptr inbounds %union.YYSTYPE, ptr %267, i64 -3
  %268 = load ptr, ptr %arrayidx393, align 8
  %typ394 = getelementptr inbounds %struct.Symbol, ptr %268, i32 0, i32 10
  %basetype395 = getelementptr inbounds %struct.Typeinfo, ptr %typ394, i32 0, i32 0
  store ptr null, ptr %basetype395, align 8
  %269 = load ptr, ptr %yyvsp, align 8
  %arrayidx396 = getelementptr inbounds %union.YYSTYPE, ptr %269, i64 -3
  %270 = load ptr, ptr %arrayidx396, align 8
  %typ397 = getelementptr inbounds %struct.Symbol, ptr %270, i32 0, i32 10
  %typecode398 = getelementptr inbounds %struct.Typeinfo, ptr %typ397, i32 0, i32 2
  store i32 16, ptr %typecode398, align 4
  %call399 = call ptr @listnew()
  %271 = load ptr, ptr %yyvsp, align 8
  %arrayidx400 = getelementptr inbounds %union.YYSTYPE, ptr %271, i64 -3
  %272 = load ptr, ptr %arrayidx400, align 8
  %subnodes401 = getelementptr inbounds %struct.Symbol, ptr %272, i32 0, i32 6
  store ptr %call399, ptr %subnodes401, align 8
  %273 = load i32, ptr @stackbase, align 4
  store i32 %273, ptr %i350, align 4
  br label %for.cond402

for.cond402:                                      ; preds = %for.inc413, %for.end388
  %274 = load i32, ptr %i350, align 4
  %275 = load i32, ptr @stacklen, align 4
  %cmp403 = icmp slt i32 %274, %275
  br i1 %cmp403, label %for.body405, label %for.end415

for.body405:                                      ; preds = %for.cond402
  call void @llvm.lifetime.start.p0(i64 8, ptr %fsym) #13
  %276 = load ptr, ptr @stack, align 8
  %277 = load i32, ptr %i350, align 4
  %conv406 = sext i32 %277 to i64
  %call407 = call ptr @listget(ptr noundef %276, i64 noundef %conv406)
  store ptr %call407, ptr %fsym, align 8
  %278 = load ptr, ptr %yyvsp, align 8
  %arrayidx408 = getelementptr inbounds %union.YYSTYPE, ptr %278, i64 -3
  %279 = load ptr, ptr %arrayidx408, align 8
  %280 = load ptr, ptr %fsym, align 8
  %container409 = getelementptr inbounds %struct.Symbol, ptr %280, i32 0, i32 4
  store ptr %279, ptr %container409, align 8
  %281 = load ptr, ptr %yyvsp, align 8
  %arrayidx410 = getelementptr inbounds %union.YYSTYPE, ptr %281, i64 -3
  %282 = load ptr, ptr %arrayidx410, align 8
  %subnodes411 = getelementptr inbounds %struct.Symbol, ptr %282, i32 0, i32 6
  %283 = load ptr, ptr %subnodes411, align 8
  %284 = load ptr, ptr %fsym, align 8
  %call412 = call i32 @listpush(ptr noundef %283, ptr noundef %284)
  call void @llvm.lifetime.end.p0(i64 8, ptr %fsym) #13
  br label %for.inc413

for.inc413:                                       ; preds = %for.body405
  %285 = load i32, ptr %i350, align 4
  %inc414 = add nsw i32 %285, 1
  store i32 %inc414, ptr %i350, align 4
  br label %for.cond402, !llvm.loop !9

for.end415:                                       ; preds = %for.cond402
  %286 = load ptr, ptr @stack, align 8
  %287 = load i32, ptr @stackbase, align 4
  %conv416 = sext i32 %287 to i64
  %call417 = call i32 @listsetlength(ptr noundef %286, i64 noundef %conv416)
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %i350) #13
  br label %sw.epilog

sw.bb418:                                         ; preds = %do.end178
  %288 = load ptr, ptr %yyvsp, align 8
  %arrayidx419 = getelementptr inbounds %union.YYSTYPE, ptr %288, i64 -1
  %289 = load i64, ptr %arrayidx419, align 8
  store i64 %289, ptr %yyval, align 8
  br label %sw.epilog

sw.bb420:                                         ; preds = %do.end178
  %290 = load ptr, ptr %yyvsp, align 8
  %arrayidx421 = getelementptr inbounds %union.YYSTYPE, ptr %290, i64 -2
  %291 = load i64, ptr %arrayidx421, align 8
  store i64 %291, ptr %yyval, align 8
  br label %sw.epilog

sw.bb422:                                         ; preds = %do.end178
  call void @llvm.lifetime.start.p0(i64 4, ptr %i423) #13
  %292 = load ptr, ptr %yyvsp, align 8
  %arrayidx424 = getelementptr inbounds %union.YYSTYPE, ptr %292, i64 0
  %293 = load i64, ptr %arrayidx424, align 8
  store i64 %293, ptr %yyval, align 8
  %294 = load ptr, ptr %yyvsp, align 8
  %arrayidx425 = getelementptr inbounds %union.YYSTYPE, ptr %294, i64 0
  %295 = load i64, ptr %arrayidx425, align 8
  %conv426 = trunc i64 %295 to i32
  store i32 %conv426, ptr @stackbase, align 4
  %296 = load ptr, ptr @stack, align 8
  %cmp427 = icmp eq ptr %296, null
  br i1 %cmp427, label %cond.true429, label %cond.false430

cond.true429:                                     ; preds = %sw.bb422
  br label %cond.end433

cond.false430:                                    ; preds = %sw.bb422
  %297 = load ptr, ptr @stack, align 8
  %length431 = getelementptr inbounds %struct.List, ptr %297, i32 0, i32 1
  %298 = load i64, ptr %length431, align 8
  %conv432 = trunc i64 %298 to i32
  br label %cond.end433

cond.end433:                                      ; preds = %cond.false430, %cond.true429
  %cond434 = phi i32 [ 0, %cond.true429 ], [ %conv432, %cond.false430 ]
  store i32 %cond434, ptr @stacklen, align 4
  %299 = load i32, ptr @stackbase, align 4
  store i32 %299, ptr %i423, align 4
  br label %for.cond435

for.cond435:                                      ; preds = %for.inc444, %cond.end433
  %300 = load i32, ptr %i423, align 4
  %301 = load i32, ptr @stacklen, align 4
  %cmp436 = icmp slt i32 %300, %301
  br i1 %cmp436, label %for.body438, label %for.end446

for.body438:                                      ; preds = %for.cond435
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #13
  %302 = load ptr, ptr @stack, align 8
  %303 = load i32, ptr %i423, align 4
  %conv439 = sext i32 %303 to i64
  %call440 = call ptr @listget(ptr noundef %302, i64 noundef %conv439)
  store ptr %call440, ptr %f, align 8
  %304 = load ptr, ptr %yyvsp, align 8
  %arrayidx441 = getelementptr inbounds %union.YYSTYPE, ptr %304, i64 -1
  %305 = load ptr, ptr %arrayidx441, align 8
  %306 = load ptr, ptr %f, align 8
  %typ442 = getelementptr inbounds %struct.Symbol, ptr %306, i32 0, i32 10
  %basetype443 = getelementptr inbounds %struct.Typeinfo, ptr %typ442, i32 0, i32 0
  store ptr %305, ptr %basetype443, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #13
  br label %for.inc444

for.inc444:                                       ; preds = %for.body438
  %307 = load i32, ptr %i423, align 4
  %inc445 = add nsw i32 %307, 1
  store i32 %inc445, ptr %i423, align 4
  br label %for.cond435, !llvm.loop !10

for.end446:                                       ; preds = %for.cond435
  call void @llvm.lifetime.end.p0(i64 4, ptr %i423) #13
  br label %sw.epilog

sw.bb447:                                         ; preds = %do.end178
  %308 = load ptr, ptr getelementptr inbounds ([13 x ptr], ptr @primsymbols, i64 0, i64 2), align 16
  store ptr %308, ptr %yyval, align 8
  br label %sw.epilog

sw.bb448:                                         ; preds = %do.end178
  %309 = load ptr, ptr getelementptr inbounds ([13 x ptr], ptr @primsymbols, i64 0, i64 1), align 8
  store ptr %309, ptr %yyval, align 8
  br label %sw.epilog

sw.bb449:                                         ; preds = %do.end178
  %310 = load ptr, ptr getelementptr inbounds ([13 x ptr], ptr @primsymbols, i64 0, i64 3), align 8
  store ptr %310, ptr %yyval, align 8
  br label %sw.epilog

sw.bb450:                                         ; preds = %do.end178
  %311 = load ptr, ptr getelementptr inbounds ([13 x ptr], ptr @primsymbols, i64 0, i64 4), align 16
  store ptr %311, ptr %yyval, align 8
  br label %sw.epilog

sw.bb451:                                         ; preds = %do.end178
  %312 = load ptr, ptr getelementptr inbounds ([13 x ptr], ptr @primsymbols, i64 0, i64 5), align 8
  store ptr %312, ptr %yyval, align 8
  br label %sw.epilog

sw.bb452:                                         ; preds = %do.end178
  %313 = load ptr, ptr getelementptr inbounds ([13 x ptr], ptr @primsymbols, i64 0, i64 6), align 16
  store ptr %313, ptr %yyval, align 8
  br label %sw.epilog

sw.bb453:                                         ; preds = %do.end178
  call void @vercheck(i32 noundef 7)
  %314 = load ptr, ptr getelementptr inbounds ([13 x ptr], ptr @primsymbols, i64 0, i64 7), align 8
  store ptr %314, ptr %yyval, align 8
  br label %sw.epilog

sw.bb454:                                         ; preds = %do.end178
  call void @vercheck(i32 noundef 8)
  %315 = load ptr, ptr getelementptr inbounds ([13 x ptr], ptr @primsymbols, i64 0, i64 8), align 16
  store ptr %315, ptr %yyval, align 8
  br label %sw.epilog

sw.bb455:                                         ; preds = %do.end178
  call void @vercheck(i32 noundef 9)
  %316 = load ptr, ptr getelementptr inbounds ([13 x ptr], ptr @primsymbols, i64 0, i64 9), align 8
  store ptr %316, ptr %yyval, align 8
  br label %sw.epilog

sw.bb456:                                         ; preds = %do.end178
  call void @vercheck(i32 noundef 10)
  %317 = load ptr, ptr getelementptr inbounds ([13 x ptr], ptr @primsymbols, i64 0, i64 10), align 16
  store ptr %317, ptr %yyval, align 8
  br label %sw.epilog

sw.bb457:                                         ; preds = %do.end178
  call void @vercheck(i32 noundef 11)
  %318 = load ptr, ptr getelementptr inbounds ([13 x ptr], ptr @primsymbols, i64 0, i64 11), align 8
  store ptr %318, ptr %yyval, align 8
  br label %sw.epilog

sw.bb458:                                         ; preds = %do.end178
  call void @vercheck(i32 noundef 12)
  %319 = load ptr, ptr getelementptr inbounds ([13 x ptr], ptr @primsymbols, i64 0, i64 12), align 16
  store ptr %319, ptr %yyval, align 8
  br label %sw.epilog

sw.bb459:                                         ; preds = %do.end178
  br label %sw.epilog

sw.bb460:                                         ; preds = %do.end178
  br label %sw.epilog

sw.bb461:                                         ; preds = %do.end178
  br label %sw.epilog

sw.bb462:                                         ; preds = %do.end178
  br label %sw.epilog

sw.bb463:                                         ; preds = %do.end178
  %320 = load ptr, ptr %yyvsp, align 8
  %arrayidx464 = getelementptr inbounds %union.YYSTYPE, ptr %320, i64 0
  %321 = load ptr, ptr %arrayidx464, align 8
  %call465 = call i64 @extractint(ptr noundef %321)
  %322 = load ptr, ptr %yyvsp, align 8
  %arrayidx466 = getelementptr inbounds %union.YYSTYPE, ptr %322, i64 -2
  %323 = load ptr, ptr %arrayidx466, align 8
  %dim = getelementptr inbounds %struct.Symbol, ptr %323, i32 0, i32 13
  %declsize = getelementptr inbounds %struct.Diminfo, ptr %dim, i32 0, i32 2
  store i64 %call465, ptr %declsize, align 8
  %324 = load ptr, ptr %yyvsp, align 8
  %arrayidx467 = getelementptr inbounds %union.YYSTYPE, ptr %324, i64 0
  %325 = load ptr, ptr %arrayidx467, align 8
  call void @reclaimconstant(ptr noundef %325)
  br label %sw.epilog

sw.bb468:                                         ; preds = %do.end178
  %326 = load ptr, ptr %yyvsp, align 8
  %arrayidx469 = getelementptr inbounds %union.YYSTYPE, ptr %326, i64 -2
  %327 = load ptr, ptr %arrayidx469, align 8
  %dim470 = getelementptr inbounds %struct.Symbol, ptr %327, i32 0, i32 13
  %declsize471 = getelementptr inbounds %struct.Diminfo, ptr %dim470, i32 0, i32 2
  store i64 0, ptr %declsize471, align 8
  %328 = load ptr, ptr %yyvsp, align 8
  %arrayidx472 = getelementptr inbounds %union.YYSTYPE, ptr %328, i64 -2
  %329 = load ptr, ptr %arrayidx472, align 8
  %dim473 = getelementptr inbounds %struct.Symbol, ptr %329, i32 0, i32 13
  %isunlimited = getelementptr inbounds %struct.Diminfo, ptr %dim473, i32 0, i32 1
  store i32 1, ptr %isunlimited, align 4
  br label %sw.epilog

sw.bb474:                                         ; preds = %do.end178
  %330 = load ptr, ptr %yyvsp, align 8
  %arrayidx475 = getelementptr inbounds %union.YYSTYPE, ptr %330, i64 0
  %331 = load ptr, ptr %arrayidx475, align 8
  %objectclass476 = getelementptr inbounds %struct.Symbol, ptr %331, i32 0, i32 0
  store i32 101, ptr %objectclass476, align 8
  %332 = load ptr, ptr %yyvsp, align 8
  %arrayidx477 = getelementptr inbounds %union.YYSTYPE, ptr %332, i64 0
  %333 = load ptr, ptr %arrayidx477, align 8
  %call478 = call i32 @dupobjectcheck(i32 noundef 101, ptr noundef %333)
  %tobool479 = icmp ne i32 %call478, 0
  br i1 %tobool479, label %if.then480, label %if.end483

if.then480:                                       ; preds = %sw.bb474
  %334 = load ptr, ptr %yyvsp, align 8
  %arrayidx481 = getelementptr inbounds %union.YYSTYPE, ptr %334, i64 0
  %335 = load ptr, ptr %arrayidx481, align 8
  %name482 = getelementptr inbounds %struct.Symbol, ptr %335, i32 0, i32 2
  %336 = load ptr, ptr %name482, align 8
  call void (ptr, ...) @ncgerror(ptr noundef @.str.30, ptr noundef %336)
  br label %if.end483

if.end483:                                        ; preds = %if.then480, %sw.bb474
  %337 = load ptr, ptr %yyvsp, align 8
  %arrayidx484 = getelementptr inbounds %union.YYSTYPE, ptr %337, i64 0
  %338 = load ptr, ptr %arrayidx484, align 8
  call void @addtogroup(ptr noundef %338)
  %339 = load ptr, ptr %yyvsp, align 8
  %arrayidx485 = getelementptr inbounds %union.YYSTYPE, ptr %339, i64 0
  %340 = load ptr, ptr %arrayidx485, align 8
  store ptr %340, ptr %yyval, align 8
  %341 = load ptr, ptr @dimdefs, align 8
  %342 = load ptr, ptr %yyvsp, align 8
  %arrayidx486 = getelementptr inbounds %union.YYSTYPE, ptr %342, i64 0
  %343 = load ptr, ptr %arrayidx486, align 8
  %call487 = call i32 @listpush(ptr noundef %341, ptr noundef %343)
  br label %sw.epilog

sw.bb488:                                         ; preds = %do.end178
  br label %sw.epilog

sw.bb489:                                         ; preds = %do.end178
  br label %sw.epilog

sw.bb490:                                         ; preds = %do.end178
  br label %sw.epilog

sw.bb491:                                         ; preds = %do.end178
  br label %sw.epilog

sw.bb492:                                         ; preds = %do.end178
  call void @llvm.lifetime.start.p0(i64 4, ptr %i493) #13
  %344 = load ptr, ptr %yyvsp, align 8
  %arrayidx494 = getelementptr inbounds %union.YYSTYPE, ptr %344, i64 0
  %345 = load i64, ptr %arrayidx494, align 8
  %conv495 = trunc i64 %345 to i32
  store i32 %conv495, ptr @stackbase, align 4
  %346 = load ptr, ptr @stack, align 8
  %cmp496 = icmp eq ptr %346, null
  br i1 %cmp496, label %cond.true498, label %cond.false499

cond.true498:                                     ; preds = %sw.bb492
  br label %cond.end502

cond.false499:                                    ; preds = %sw.bb492
  %347 = load ptr, ptr @stack, align 8
  %length500 = getelementptr inbounds %struct.List, ptr %347, i32 0, i32 1
  %348 = load i64, ptr %length500, align 8
  %conv501 = trunc i64 %348 to i32
  br label %cond.end502

cond.end502:                                      ; preds = %cond.false499, %cond.true498
  %cond503 = phi i32 [ 0, %cond.true498 ], [ %conv501, %cond.false499 ]
  store i32 %cond503, ptr @stacklen, align 4
  %349 = load i32, ptr @stackbase, align 4
  store i32 %349, ptr %i493, align 4
  br label %for.cond504

for.cond504:                                      ; preds = %for.inc521, %cond.end502
  %350 = load i32, ptr %i493, align 4
  %351 = load i32, ptr @stacklen, align 4
  %cmp505 = icmp slt i32 %350, %351
  br i1 %cmp505, label %for.body507, label %for.end523

for.body507:                                      ; preds = %for.cond504
  call void @llvm.lifetime.start.p0(i64 8, ptr %sym) #13
  %352 = load ptr, ptr @stack, align 8
  %353 = load i32, ptr %i493, align 4
  %conv508 = sext i32 %353 to i64
  %call509 = call ptr @listget(ptr noundef %352, i64 noundef %conv508)
  store ptr %call509, ptr %sym, align 8
  %354 = load ptr, ptr %sym, align 8
  %objectclass510 = getelementptr inbounds %struct.Symbol, ptr %354, i32 0, i32 0
  store i32 102, ptr %objectclass510, align 8
  %355 = load ptr, ptr %sym, align 8
  %call511 = call i32 @dupobjectcheck(i32 noundef 102, ptr noundef %355)
  %tobool512 = icmp ne i32 %call511, 0
  br i1 %tobool512, label %if.then513, label %if.else515

if.then513:                                       ; preds = %for.body507
  %356 = load ptr, ptr %sym, align 8
  %name514 = getelementptr inbounds %struct.Symbol, ptr %356, i32 0, i32 2
  %357 = load ptr, ptr %name514, align 8
  call void (ptr, ...) @ncgerror(ptr noundef @.str.31, ptr noundef %357)
  br label %if.end520

if.else515:                                       ; preds = %for.body507
  %358 = load ptr, ptr %yyvsp, align 8
  %arrayidx516 = getelementptr inbounds %union.YYSTYPE, ptr %358, i64 -1
  %359 = load ptr, ptr %arrayidx516, align 8
  %360 = load ptr, ptr %sym, align 8
  %typ517 = getelementptr inbounds %struct.Symbol, ptr %360, i32 0, i32 10
  %basetype518 = getelementptr inbounds %struct.Typeinfo, ptr %typ517, i32 0, i32 0
  store ptr %359, ptr %basetype518, align 8
  %361 = load ptr, ptr %sym, align 8
  call void @addtogroup(ptr noundef %361)
  %362 = load ptr, ptr @vardefs, align 8
  %363 = load ptr, ptr %sym, align 8
  %call519 = call i32 @listpush(ptr noundef %362, ptr noundef %363)
  br label %if.end520

if.end520:                                        ; preds = %if.else515, %if.then513
  call void @llvm.lifetime.end.p0(i64 8, ptr %sym) #13
  br label %for.inc521

for.inc521:                                       ; preds = %if.end520
  %364 = load i32, ptr %i493, align 4
  %inc522 = add nsw i32 %364, 1
  store i32 %inc522, ptr %i493, align 4
  br label %for.cond504, !llvm.loop !11

for.end523:                                       ; preds = %for.cond504
  %365 = load ptr, ptr @stack, align 8
  %366 = load i32, ptr @stackbase, align 4
  %conv524 = sext i32 %366 to i64
  %call525 = call i32 @listsetlength(ptr noundef %365, i64 noundef %conv524)
  call void @llvm.lifetime.end.p0(i64 4, ptr %i493) #13
  br label %sw.epilog

sw.bb526:                                         ; preds = %do.end178
  %367 = load ptr, ptr @stack, align 8
  %cmp527 = icmp eq ptr %367, null
  br i1 %cmp527, label %cond.true529, label %cond.false530

cond.true529:                                     ; preds = %sw.bb526
  br label %cond.end533

cond.false530:                                    ; preds = %sw.bb526
  %368 = load ptr, ptr @stack, align 8
  %length531 = getelementptr inbounds %struct.List, ptr %368, i32 0, i32 1
  %369 = load i64, ptr %length531, align 8
  %conv532 = trunc i64 %369 to i32
  br label %cond.end533

cond.end533:                                      ; preds = %cond.false530, %cond.true529
  %cond534 = phi i32 [ 0, %cond.true529 ], [ %conv532, %cond.false530 ]
  %conv535 = sext i32 %cond534 to i64
  store i64 %conv535, ptr %yyval, align 8
  %370 = load ptr, ptr @stack, align 8
  %371 = load ptr, ptr %yyvsp, align 8
  %arrayidx536 = getelementptr inbounds %union.YYSTYPE, ptr %371, i64 0
  %372 = load ptr, ptr %arrayidx536, align 8
  %call537 = call i32 @listpush(ptr noundef %370, ptr noundef %372)
  br label %sw.epilog

sw.bb538:                                         ; preds = %do.end178
  %373 = load ptr, ptr %yyvsp, align 8
  %arrayidx539 = getelementptr inbounds %union.YYSTYPE, ptr %373, i64 -2
  %374 = load i64, ptr %arrayidx539, align 8
  store i64 %374, ptr %yyval, align 8
  %375 = load ptr, ptr @stack, align 8
  %376 = load ptr, ptr %yyvsp, align 8
  %arrayidx540 = getelementptr inbounds %union.YYSTYPE, ptr %376, i64 0
  %377 = load ptr, ptr %arrayidx540, align 8
  %call541 = call i32 @listpush(ptr noundef %375, ptr noundef %377)
  br label %sw.epilog

sw.bb542:                                         ; preds = %do.end178
  call void @llvm.lifetime.start.p0(i64 4, ptr %i543) #13
  call void @llvm.lifetime.start.p0(i64 8200, ptr %dimset) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %var) #13
  %378 = load ptr, ptr %yyvsp, align 8
  %arrayidx544 = getelementptr inbounds %union.YYSTYPE, ptr %378, i64 -1
  %379 = load ptr, ptr %arrayidx544, align 8
  store ptr %379, ptr %var, align 8
  %380 = load ptr, ptr @stack, align 8
  %cmp545 = icmp eq ptr %380, null
  br i1 %cmp545, label %cond.true547, label %cond.false548

cond.true547:                                     ; preds = %sw.bb542
  br label %cond.end551

cond.false548:                                    ; preds = %sw.bb542
  %381 = load ptr, ptr @stack, align 8
  %length549 = getelementptr inbounds %struct.List, ptr %381, i32 0, i32 1
  %382 = load i64, ptr %length549, align 8
  %conv550 = trunc i64 %382 to i32
  br label %cond.end551

cond.end551:                                      ; preds = %cond.false548, %cond.true547
  %cond552 = phi i32 [ 0, %cond.true547 ], [ %conv550, %cond.false548 ]
  store i32 %cond552, ptr @stacklen, align 4
  %383 = load ptr, ptr %yyvsp, align 8
  %arrayidx553 = getelementptr inbounds %union.YYSTYPE, ptr %383, i64 0
  %384 = load i64, ptr %arrayidx553, align 8
  %conv554 = trunc i64 %384 to i32
  store i32 %conv554, ptr @stackbase, align 4
  %385 = load i32, ptr @stacklen, align 4
  %386 = load i32, ptr @stackbase, align 4
  %sub555 = sub nsw i32 %385, %386
  store i32 %sub555, ptr @count, align 4
  %387 = load i32, ptr @count, align 4
  %cmp556 = icmp sge i32 %387, 1024
  br i1 %cmp556, label %if.then558, label %if.end562

if.then558:                                       ; preds = %cond.end551
  %388 = load ptr, ptr %yyvsp, align 8
  %arrayidx559 = getelementptr inbounds %union.YYSTYPE, ptr %388, i64 -1
  %389 = load ptr, ptr %arrayidx559, align 8
  %name560 = getelementptr inbounds %struct.Symbol, ptr %389, i32 0, i32 2
  %390 = load ptr, ptr %name560, align 8
  call void (ptr, ...) @ncgerror(ptr noundef @.str.32, ptr noundef %390)
  store i32 1023, ptr @count, align 4
  %391 = load i32, ptr @stackbase, align 4
  %392 = load i32, ptr @count, align 4
  %add561 = add nsw i32 %391, %392
  store i32 %add561, ptr @stacklen, align 4
  br label %if.end562

if.end562:                                        ; preds = %if.then558, %cond.end551
  %393 = load i32, ptr @count, align 4
  %ndims = getelementptr inbounds %struct.Dimset, ptr %dimset, i32 0, i32 0
  store i32 %393, ptr %ndims, align 8
  %ndims563 = getelementptr inbounds %struct.Dimset, ptr %dimset, i32 0, i32 0
  %394 = load i32, ptr %ndims563, align 8
  %cmp564 = icmp sgt i32 %394, 0
  br i1 %cmp564, label %if.then566, label %if.end581

if.then566:                                       ; preds = %if.end562
  store i32 0, ptr %i543, align 4
  br label %for.cond567

for.cond567:                                      ; preds = %for.inc576, %if.then566
  %395 = load i32, ptr %i543, align 4
  %396 = load i32, ptr @count, align 4
  %cmp568 = icmp slt i32 %395, %396
  br i1 %cmp568, label %for.body570, label %for.end578

for.body570:                                      ; preds = %for.cond567
  call void @llvm.lifetime.start.p0(i64 8, ptr %dsym) #13
  %397 = load ptr, ptr @stack, align 8
  %398 = load i32, ptr @stackbase, align 4
  %399 = load i32, ptr %i543, align 4
  %add571 = add nsw i32 %398, %399
  %conv572 = sext i32 %add571 to i64
  %call573 = call ptr @listget(ptr noundef %397, i64 noundef %conv572)
  store ptr %call573, ptr %dsym, align 8
  %400 = load ptr, ptr %dsym, align 8
  %dimsyms = getelementptr inbounds %struct.Dimset, ptr %dimset, i32 0, i32 1
  %401 = load i32, ptr %i543, align 4
  %idxprom574 = sext i32 %401 to i64
  %arrayidx575 = getelementptr inbounds [1024 x ptr], ptr %dimsyms, i64 0, i64 %idxprom574
  store ptr %400, ptr %arrayidx575, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %dsym) #13
  br label %for.inc576

for.inc576:                                       ; preds = %for.body570
  %402 = load i32, ptr %i543, align 4
  %inc577 = add nsw i32 %402, 1
  store i32 %inc577, ptr %i543, align 4
  br label %for.cond567, !llvm.loop !12

for.end578:                                       ; preds = %for.cond567
  %403 = load ptr, ptr %var, align 8
  %typ579 = getelementptr inbounds %struct.Symbol, ptr %403, i32 0, i32 10
  %dimset580 = getelementptr inbounds %struct.Typeinfo, ptr %typ579, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %dimset580, ptr align 8 %dimset, i64 8200, i1 false)
  br label %if.end581

if.end581:                                        ; preds = %for.end578, %if.end562
  %404 = load ptr, ptr %var, align 8
  %typ582 = getelementptr inbounds %struct.Symbol, ptr %404, i32 0, i32 10
  %basetype583 = getelementptr inbounds %struct.Typeinfo, ptr %typ582, i32 0, i32 0
  store ptr null, ptr %basetype583, align 8
  %405 = load ptr, ptr %var, align 8
  %objectclass584 = getelementptr inbounds %struct.Symbol, ptr %405, i32 0, i32 0
  store i32 102, ptr %objectclass584, align 8
  %406 = load ptr, ptr @stack, align 8
  %407 = load i32, ptr @stackbase, align 4
  %conv585 = sext i32 %407 to i64
  %call586 = call i32 @listsetlength(ptr noundef %406, i64 noundef %conv585)
  %408 = load ptr, ptr %var, align 8
  store ptr %408, ptr %yyval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %var) #13
  call void @llvm.lifetime.end.p0(i64 8200, ptr %dimset) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %i543) #13
  br label %sw.epilog

sw.bb587:                                         ; preds = %do.end178
  %409 = load ptr, ptr @stack, align 8
  %cmp588 = icmp eq ptr %409, null
  br i1 %cmp588, label %cond.true590, label %cond.false591

cond.true590:                                     ; preds = %sw.bb587
  br label %cond.end594

cond.false591:                                    ; preds = %sw.bb587
  %410 = load ptr, ptr @stack, align 8
  %length592 = getelementptr inbounds %struct.List, ptr %410, i32 0, i32 1
  %411 = load i64, ptr %length592, align 8
  %conv593 = trunc i64 %411 to i32
  br label %cond.end594

cond.end594:                                      ; preds = %cond.false591, %cond.true590
  %cond595 = phi i32 [ 0, %cond.true590 ], [ %conv593, %cond.false591 ]
  %conv596 = sext i32 %cond595 to i64
  store i64 %conv596, ptr %yyval, align 8
  br label %sw.epilog

sw.bb597:                                         ; preds = %do.end178
  %412 = load ptr, ptr %yyvsp, align 8
  %arrayidx598 = getelementptr inbounds %union.YYSTYPE, ptr %412, i64 -1
  %413 = load i64, ptr %arrayidx598, align 8
  store i64 %413, ptr %yyval, align 8
  br label %sw.epilog

sw.bb599:                                         ; preds = %do.end178
  %414 = load ptr, ptr @stack, align 8
  %cmp600 = icmp eq ptr %414, null
  br i1 %cmp600, label %cond.true602, label %cond.false603

cond.true602:                                     ; preds = %sw.bb599
  br label %cond.end606

cond.false603:                                    ; preds = %sw.bb599
  %415 = load ptr, ptr @stack, align 8
  %length604 = getelementptr inbounds %struct.List, ptr %415, i32 0, i32 1
  %416 = load i64, ptr %length604, align 8
  %conv605 = trunc i64 %416 to i32
  br label %cond.end606

cond.end606:                                      ; preds = %cond.false603, %cond.true602
  %cond607 = phi i32 [ 0, %cond.true602 ], [ %conv605, %cond.false603 ]
  %conv608 = sext i32 %cond607 to i64
  store i64 %conv608, ptr %yyval, align 8
  %417 = load ptr, ptr @stack, align 8
  %418 = load ptr, ptr %yyvsp, align 8
  %arrayidx609 = getelementptr inbounds %union.YYSTYPE, ptr %418, i64 0
  %419 = load ptr, ptr %arrayidx609, align 8
  %call610 = call i32 @listpush(ptr noundef %417, ptr noundef %419)
  br label %sw.epilog

sw.bb611:                                         ; preds = %do.end178
  %420 = load ptr, ptr %yyvsp, align 8
  %arrayidx612 = getelementptr inbounds %union.YYSTYPE, ptr %420, i64 -2
  %421 = load i64, ptr %arrayidx612, align 8
  store i64 %421, ptr %yyval, align 8
  %422 = load ptr, ptr @stack, align 8
  %423 = load ptr, ptr %yyvsp, align 8
  %arrayidx613 = getelementptr inbounds %union.YYSTYPE, ptr %423, i64 0
  %424 = load ptr, ptr %arrayidx613, align 8
  %call614 = call i32 @listpush(ptr noundef %422, ptr noundef %424)
  br label %sw.epilog

sw.bb615:                                         ; preds = %do.end178
  call void @llvm.lifetime.start.p0(i64 8, ptr %dimsym) #13
  %425 = load ptr, ptr %yyvsp, align 8
  %arrayidx616 = getelementptr inbounds %union.YYSTYPE, ptr %425, i64 0
  %426 = load ptr, ptr %arrayidx616, align 8
  store ptr %426, ptr %dimsym, align 8
  %427 = load ptr, ptr %dimsym, align 8
  %objectclass617 = getelementptr inbounds %struct.Symbol, ptr %427, i32 0, i32 0
  store i32 101, ptr %objectclass617, align 8
  %428 = load ptr, ptr %dimsym, align 8
  %call618 = call ptr @locate(ptr noundef %428)
  store ptr %call618, ptr %dimsym, align 8
  %429 = load ptr, ptr %dimsym, align 8
  %cmp619 = icmp eq ptr %429, null
  br i1 %cmp619, label %if.then621, label %if.end624

if.then621:                                       ; preds = %sw.bb615
  %430 = load ptr, ptr %yyvsp, align 8
  %arrayidx622 = getelementptr inbounds %union.YYSTYPE, ptr %430, i64 0
  %431 = load ptr, ptr %arrayidx622, align 8
  %name623 = getelementptr inbounds %struct.Symbol, ptr %431, i32 0, i32 2
  %432 = load ptr, ptr %name623, align 8
  call void (ptr, ...) @derror(ptr noundef @.str.33, ptr noundef %432)
  store i32 17, ptr %cleanup.dest.slot, align 4
  br label %cleanup625

if.end624:                                        ; preds = %sw.bb615
  %433 = load ptr, ptr %dimsym, align 8
  store ptr %433, ptr %yyval, align 8
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup625

cleanup625:                                       ; preds = %if.then621, %if.end624
  call void @llvm.lifetime.end.p0(i64 8, ptr %dimsym) #13
  %cleanup.dest626 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest626, label %cleanup1272 [
    i32 0, label %cleanup.cont627
    i32 17, label %yyabortlab
  ]

cleanup.cont627:                                  ; preds = %cleanup625
  br label %sw.epilog

sw.bb628:                                         ; preds = %do.end178
  %434 = load ptr, ptr @stack, align 8
  %cmp629 = icmp eq ptr %434, null
  br i1 %cmp629, label %cond.true631, label %cond.false632

cond.true631:                                     ; preds = %sw.bb628
  br label %cond.end635

cond.false632:                                    ; preds = %sw.bb628
  %435 = load ptr, ptr @stack, align 8
  %length633 = getelementptr inbounds %struct.List, ptr %435, i32 0, i32 1
  %436 = load i64, ptr %length633, align 8
  %conv634 = trunc i64 %436 to i32
  br label %cond.end635

cond.end635:                                      ; preds = %cond.false632, %cond.true631
  %cond636 = phi i32 [ 0, %cond.true631 ], [ %conv634, %cond.false632 ]
  %conv637 = sext i32 %cond636 to i64
  store i64 %conv637, ptr %yyval, align 8
  %437 = load ptr, ptr @stack, align 8
  %438 = load ptr, ptr %yyvsp, align 8
  %arrayidx638 = getelementptr inbounds %union.YYSTYPE, ptr %438, i64 0
  %439 = load ptr, ptr %arrayidx638, align 8
  %call639 = call i32 @listpush(ptr noundef %437, ptr noundef %439)
  br label %sw.epilog

sw.bb640:                                         ; preds = %do.end178
  %440 = load ptr, ptr %yyvsp, align 8
  %arrayidx641 = getelementptr inbounds %union.YYSTYPE, ptr %440, i64 -2
  %441 = load i64, ptr %arrayidx641, align 8
  store i64 %441, ptr %yyval, align 8
  %442 = load ptr, ptr @stack, align 8
  %443 = load ptr, ptr %yyvsp, align 8
  %arrayidx642 = getelementptr inbounds %union.YYSTYPE, ptr %443, i64 0
  %444 = load ptr, ptr %arrayidx642, align 8
  %call643 = call i32 @listpush(ptr noundef %442, ptr noundef %444)
  br label %sw.epilog

sw.bb644:                                         ; preds = %do.end178
  call void @llvm.lifetime.start.p0(i64 4, ptr %i645) #13
  call void @llvm.lifetime.start.p0(i64 8200, ptr %dimset646) #13
  %445 = load ptr, ptr %yyvsp, align 8
  %arrayidx647 = getelementptr inbounds %union.YYSTYPE, ptr %445, i64 0
  %446 = load i64, ptr %arrayidx647, align 8
  %conv648 = trunc i64 %446 to i32
  store i32 %conv648, ptr @stackbase, align 4
  %447 = load ptr, ptr @stack, align 8
  %cmp649 = icmp eq ptr %447, null
  br i1 %cmp649, label %cond.true651, label %cond.false652

cond.true651:                                     ; preds = %sw.bb644
  br label %cond.end655

cond.false652:                                    ; preds = %sw.bb644
  %448 = load ptr, ptr @stack, align 8
  %length653 = getelementptr inbounds %struct.List, ptr %448, i32 0, i32 1
  %449 = load i64, ptr %length653, align 8
  %conv654 = trunc i64 %449 to i32
  br label %cond.end655

cond.end655:                                      ; preds = %cond.false652, %cond.true651
  %cond656 = phi i32 [ 0, %cond.true651 ], [ %conv654, %cond.false652 ]
  store i32 %cond656, ptr @stacklen, align 4
  %450 = load i32, ptr @stacklen, align 4
  %451 = load i32, ptr @stackbase, align 4
  %sub657 = sub nsw i32 %450, %451
  store i32 %sub657, ptr @count, align 4
  %452 = load i32, ptr @count, align 4
  %cmp658 = icmp sge i32 %452, 1024
  br i1 %cmp658, label %if.then660, label %if.end664

if.then660:                                       ; preds = %cond.end655
  %453 = load ptr, ptr %yyvsp, align 8
  %arrayidx661 = getelementptr inbounds %union.YYSTYPE, ptr %453, i64 -1
  %454 = load ptr, ptr %arrayidx661, align 8
  %name662 = getelementptr inbounds %struct.Symbol, ptr %454, i32 0, i32 2
  %455 = load ptr, ptr %name662, align 8
  call void (ptr, ...) @ncgerror(ptr noundef @.str.32, ptr noundef %455)
  store i32 1023, ptr @count, align 4
  %456 = load i32, ptr @stackbase, align 4
  %457 = load i32, ptr @count, align 4
  %add663 = add nsw i32 %456, %457
  store i32 %add663, ptr @stacklen, align 4
  br label %if.end664

if.end664:                                        ; preds = %if.then660, %cond.end655
  %458 = load i32, ptr @count, align 4
  %ndims665 = getelementptr inbounds %struct.Dimset, ptr %dimset646, i32 0, i32 0
  store i32 %458, ptr %ndims665, align 8
  %459 = load i32, ptr @count, align 4
  %cmp666 = icmp sgt i32 %459, 0
  br i1 %cmp666, label %if.then668, label %if.end686

if.then668:                                       ; preds = %if.end664
  store i32 0, ptr %i645, align 4
  br label %for.cond669

for.cond669:                                      ; preds = %for.inc680, %if.then668
  %460 = load i32, ptr %i645, align 4
  %461 = load i32, ptr @count, align 4
  %cmp670 = icmp slt i32 %460, %461
  br i1 %cmp670, label %for.body672, label %for.end682

for.body672:                                      ; preds = %for.cond669
  call void @llvm.lifetime.start.p0(i64 8, ptr %dsym673) #13
  %462 = load ptr, ptr @stack, align 8
  %463 = load i32, ptr @stackbase, align 4
  %464 = load i32, ptr %i645, align 4
  %add674 = add nsw i32 %463, %464
  %conv675 = sext i32 %add674 to i64
  %call676 = call ptr @listget(ptr noundef %462, i64 noundef %conv675)
  store ptr %call676, ptr %dsym673, align 8
  %465 = load ptr, ptr %dsym673, align 8
  %dimsyms677 = getelementptr inbounds %struct.Dimset, ptr %dimset646, i32 0, i32 1
  %466 = load i32, ptr %i645, align 4
  %idxprom678 = sext i32 %466 to i64
  %arrayidx679 = getelementptr inbounds [1024 x ptr], ptr %dimsyms677, i64 0, i64 %idxprom678
  store ptr %465, ptr %arrayidx679, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %dsym673) #13
  br label %for.inc680

for.inc680:                                       ; preds = %for.body672
  %467 = load i32, ptr %i645, align 4
  %inc681 = add nsw i32 %467, 1
  store i32 %inc681, ptr %i645, align 4
  br label %for.cond669, !llvm.loop !13

for.end682:                                       ; preds = %for.cond669
  %468 = load ptr, ptr %yyvsp, align 8
  %arrayidx683 = getelementptr inbounds %union.YYSTYPE, ptr %468, i64 -1
  %469 = load ptr, ptr %arrayidx683, align 8
  %typ684 = getelementptr inbounds %struct.Symbol, ptr %469, i32 0, i32 10
  %dimset685 = getelementptr inbounds %struct.Typeinfo, ptr %typ684, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %dimset685, ptr align 8 %dimset646, i64 8200, i1 false)
  br label %if.end686

if.end686:                                        ; preds = %for.end682, %if.end664
  %470 = load ptr, ptr %yyvsp, align 8
  %arrayidx687 = getelementptr inbounds %union.YYSTYPE, ptr %470, i64 -1
  %471 = load ptr, ptr %arrayidx687, align 8
  %typ688 = getelementptr inbounds %struct.Symbol, ptr %471, i32 0, i32 10
  %basetype689 = getelementptr inbounds %struct.Typeinfo, ptr %typ688, i32 0, i32 0
  store ptr null, ptr %basetype689, align 8
  %472 = load ptr, ptr %yyvsp, align 8
  %arrayidx690 = getelementptr inbounds %union.YYSTYPE, ptr %472, i64 -1
  %473 = load ptr, ptr %arrayidx690, align 8
  %objectclass691 = getelementptr inbounds %struct.Symbol, ptr %473, i32 0, i32 0
  store i32 104, ptr %objectclass691, align 8
  %474 = load ptr, ptr %yyvsp, align 8
  %arrayidx692 = getelementptr inbounds %union.YYSTYPE, ptr %474, i64 -1
  %475 = load ptr, ptr %arrayidx692, align 8
  %subclass693 = getelementptr inbounds %struct.Symbol, ptr %475, i32 0, i32 1
  store i32 106, ptr %subclass693, align 4
  %476 = load ptr, ptr @stack, align 8
  %477 = load i32, ptr @stackbase, align 4
  %conv694 = sext i32 %477 to i64
  %call695 = call i32 @listsetlength(ptr noundef %476, i64 noundef %conv694)
  %478 = load ptr, ptr %yyvsp, align 8
  %arrayidx696 = getelementptr inbounds %union.YYSTYPE, ptr %478, i64 -1
  %479 = load ptr, ptr %arrayidx696, align 8
  store ptr %479, ptr %yyval, align 8
  call void @llvm.lifetime.end.p0(i64 8200, ptr %dimset646) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %i645) #13
  br label %sw.epilog

sw.bb697:                                         ; preds = %do.end178
  %480 = load ptr, ptr @stack, align 8
  %cmp698 = icmp eq ptr %480, null
  br i1 %cmp698, label %cond.true700, label %cond.false701

cond.true700:                                     ; preds = %sw.bb697
  br label %cond.end704

cond.false701:                                    ; preds = %sw.bb697
  %481 = load ptr, ptr @stack, align 8
  %length702 = getelementptr inbounds %struct.List, ptr %481, i32 0, i32 1
  %482 = load i64, ptr %length702, align 8
  %conv703 = trunc i64 %482 to i32
  br label %cond.end704

cond.end704:                                      ; preds = %cond.false701, %cond.true700
  %cond705 = phi i32 [ 0, %cond.true700 ], [ %conv703, %cond.false701 ]
  %conv706 = sext i32 %cond705 to i64
  store i64 %conv706, ptr %yyval, align 8
  br label %sw.epilog

sw.bb707:                                         ; preds = %do.end178
  %483 = load ptr, ptr %yyvsp, align 8
  %arrayidx708 = getelementptr inbounds %union.YYSTYPE, ptr %483, i64 -1
  %484 = load i64, ptr %arrayidx708, align 8
  store i64 %484, ptr %yyval, align 8
  br label %sw.epilog

sw.bb709:                                         ; preds = %do.end178
  %485 = load ptr, ptr @stack, align 8
  %cmp710 = icmp eq ptr %485, null
  br i1 %cmp710, label %cond.true712, label %cond.false713

cond.true712:                                     ; preds = %sw.bb709
  br label %cond.end716

cond.false713:                                    ; preds = %sw.bb709
  %486 = load ptr, ptr @stack, align 8
  %length714 = getelementptr inbounds %struct.List, ptr %486, i32 0, i32 1
  %487 = load i64, ptr %length714, align 8
  %conv715 = trunc i64 %487 to i32
  br label %cond.end716

cond.end716:                                      ; preds = %cond.false713, %cond.true712
  %cond717 = phi i32 [ 0, %cond.true712 ], [ %conv715, %cond.false713 ]
  %conv718 = sext i32 %cond717 to i64
  store i64 %conv718, ptr %yyval, align 8
  %488 = load ptr, ptr @stack, align 8
  %489 = load ptr, ptr %yyvsp, align 8
  %arrayidx719 = getelementptr inbounds %union.YYSTYPE, ptr %489, i64 0
  %490 = load ptr, ptr %arrayidx719, align 8
  %call720 = call i32 @listpush(ptr noundef %488, ptr noundef %490)
  br label %sw.epilog

sw.bb721:                                         ; preds = %do.end178
  %491 = load ptr, ptr %yyvsp, align 8
  %arrayidx722 = getelementptr inbounds %union.YYSTYPE, ptr %491, i64 -2
  %492 = load i64, ptr %arrayidx722, align 8
  store i64 %492, ptr %yyval, align 8
  %493 = load ptr, ptr @stack, align 8
  %494 = load ptr, ptr %yyvsp, align 8
  %arrayidx723 = getelementptr inbounds %union.YYSTYPE, ptr %494, i64 0
  %495 = load ptr, ptr %arrayidx723, align 8
  %call724 = call i32 @listpush(ptr noundef %493, ptr noundef %495)
  br label %sw.epilog

sw.bb725:                                         ; preds = %do.end178
  call void @llvm.lifetime.start.p0(i64 32, ptr %anon) #13
  %arraydecay726 = getelementptr inbounds [32 x i8], ptr %anon, i64 0, i64 0
  %496 = load i32, ptr @uint32_val, align 4
  %call727 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay726, ptr noundef @.str.34, i32 noundef %496) #13
  %arraydecay728 = getelementptr inbounds [32 x i8], ptr %anon, i64 0, i64 0
  %call729 = call ptr @install(ptr noundef %arraydecay728)
  store ptr %call729, ptr %yyval, align 8
  %497 = load ptr, ptr %yyval, align 8
  %objectclass730 = getelementptr inbounds %struct.Symbol, ptr %497, i32 0, i32 0
  store i32 101, ptr %objectclass730, align 8
  %498 = load ptr, ptr %yyval, align 8
  %dim731 = getelementptr inbounds %struct.Symbol, ptr %498, i32 0, i32 13
  %isconstant = getelementptr inbounds %struct.Diminfo, ptr %dim731, i32 0, i32 0
  store i32 1, ptr %isconstant, align 8
  %499 = load i32, ptr @uint32_val, align 4
  %conv732 = zext i32 %499 to i64
  %500 = load ptr, ptr %yyval, align 8
  %dim733 = getelementptr inbounds %struct.Symbol, ptr %500, i32 0, i32 13
  %declsize734 = getelementptr inbounds %struct.Diminfo, ptr %dim733, i32 0, i32 2
  store i64 %conv732, ptr %declsize734, align 8
  call void @llvm.lifetime.end.p0(i64 32, ptr %anon) #13
  br label %sw.epilog

sw.bb735:                                         ; preds = %do.end178
  call void @llvm.lifetime.start.p0(i64 32, ptr %anon736) #13
  %501 = load i32, ptr @int32_val, align 4
  %cmp737 = icmp sle i32 %501, 0
  br i1 %cmp737, label %if.then739, label %if.end740

if.then739:                                       ; preds = %sw.bb735
  call void (ptr, ...) @derror(ptr noundef @.str.35)
  store i32 17, ptr %cleanup.dest.slot, align 4
  br label %cleanup751

if.end740:                                        ; preds = %sw.bb735
  %arraydecay741 = getelementptr inbounds [32 x i8], ptr %anon736, i64 0, i64 0
  %502 = load i32, ptr @int32_val, align 4
  %call742 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay741, ptr noundef @.str.36, i32 noundef %502) #13
  %arraydecay743 = getelementptr inbounds [32 x i8], ptr %anon736, i64 0, i64 0
  %call744 = call ptr @install(ptr noundef %arraydecay743)
  store ptr %call744, ptr %yyval, align 8
  %503 = load ptr, ptr %yyval, align 8
  %objectclass745 = getelementptr inbounds %struct.Symbol, ptr %503, i32 0, i32 0
  store i32 101, ptr %objectclass745, align 8
  %504 = load ptr, ptr %yyval, align 8
  %dim746 = getelementptr inbounds %struct.Symbol, ptr %504, i32 0, i32 13
  %isconstant747 = getelementptr inbounds %struct.Diminfo, ptr %dim746, i32 0, i32 0
  store i32 1, ptr %isconstant747, align 8
  %505 = load i32, ptr @int32_val, align 4
  %conv748 = sext i32 %505 to i64
  %506 = load ptr, ptr %yyval, align 8
  %dim749 = getelementptr inbounds %struct.Symbol, ptr %506, i32 0, i32 13
  %declsize750 = getelementptr inbounds %struct.Diminfo, ptr %dim749, i32 0, i32 2
  store i64 %conv748, ptr %declsize750, align 8
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup751

cleanup751:                                       ; preds = %if.then739, %if.end740
  call void @llvm.lifetime.end.p0(i64 32, ptr %anon736) #13
  %cleanup.dest752 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest752, label %cleanup1272 [
    i32 0, label %cleanup.cont753
    i32 17, label %yyabortlab
  ]

cleanup.cont753:                                  ; preds = %cleanup751
  br label %sw.epilog

sw.bb754:                                         ; preds = %do.end178
  call void @llvm.lifetime.start.p0(i64 8, ptr %vsym) #13
  %507 = load ptr, ptr %yyvsp, align 8
  %arrayidx755 = getelementptr inbounds %union.YYSTYPE, ptr %507, i64 0
  %508 = load ptr, ptr %arrayidx755, align 8
  store ptr %508, ptr %vsym, align 8
  %509 = load ptr, ptr %vsym, align 8
  %objectclass756 = getelementptr inbounds %struct.Symbol, ptr %509, i32 0, i32 0
  %510 = load i32, ptr %objectclass756, align 8
  %cmp757 = icmp ne i32 %510, 102
  br i1 %cmp757, label %if.then759, label %if.end761

if.then759:                                       ; preds = %sw.bb754
  %511 = load ptr, ptr %vsym, align 8
  %name760 = getelementptr inbounds %struct.Symbol, ptr %511, i32 0, i32 2
  %512 = load ptr, ptr %name760, align 8
  call void (ptr, ...) @derror(ptr noundef @.str.37, ptr noundef %512)
  store i32 17, ptr %cleanup.dest.slot, align 4
  br label %cleanup762

if.end761:                                        ; preds = %sw.bb754
  %513 = load ptr, ptr %vsym, align 8
  store ptr %513, ptr %yyval, align 8
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup762

cleanup762:                                       ; preds = %if.then759, %if.end761
  call void @llvm.lifetime.end.p0(i64 8, ptr %vsym) #13
  %cleanup.dest763 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest763, label %cleanup1272 [
    i32 0, label %cleanup.cont764
    i32 17, label %yyabortlab
  ]

cleanup.cont764:                                  ; preds = %cleanup762
  br label %sw.epilog

sw.bb765:                                         ; preds = %do.end178
  call void @llvm.lifetime.start.p0(i64 8, ptr %tsym) #13
  %514 = load ptr, ptr %yyvsp, align 8
  %arrayidx766 = getelementptr inbounds %union.YYSTYPE, ptr %514, i64 0
  %515 = load ptr, ptr %arrayidx766, align 8
  store ptr %515, ptr %tsym, align 8
  %516 = load ptr, ptr %tsym, align 8
  %objectclass767 = getelementptr inbounds %struct.Symbol, ptr %516, i32 0, i32 0
  %517 = load i32, ptr %objectclass767, align 8
  %cmp768 = icmp ne i32 %517, 104
  br i1 %cmp768, label %if.then770, label %if.end772

if.then770:                                       ; preds = %sw.bb765
  %518 = load ptr, ptr %tsym, align 8
  %name771 = getelementptr inbounds %struct.Symbol, ptr %518, i32 0, i32 2
  %519 = load ptr, ptr %name771, align 8
  call void (ptr, ...) @derror(ptr noundef @.str.38, ptr noundef %519)
  store i32 17, ptr %cleanup.dest.slot, align 4
  br label %cleanup773

if.end772:                                        ; preds = %sw.bb765
  %520 = load ptr, ptr %tsym, align 8
  store ptr %520, ptr %yyval, align 8
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup773

cleanup773:                                       ; preds = %if.then770, %if.end772
  call void @llvm.lifetime.end.p0(i64 8, ptr %tsym) #13
  %cleanup.dest774 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest774, label %cleanup1272 [
    i32 0, label %cleanup.cont775
    i32 17, label %yyabortlab
  ]

cleanup.cont775:                                  ; preds = %cleanup773
  br label %sw.epilog

sw.bb776:                                         ; preds = %do.end178
  call void @llvm.lifetime.start.p0(i64 8, ptr %tvsym) #13
  %521 = load ptr, ptr %yyvsp, align 8
  %arrayidx777 = getelementptr inbounds %union.YYSTYPE, ptr %521, i64 0
  %522 = load ptr, ptr %arrayidx777, align 8
  store ptr %522, ptr %tvsym, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %sym778) #13
  %523 = load ptr, ptr %tvsym, align 8
  %objectclass779 = getelementptr inbounds %struct.Symbol, ptr %523, i32 0, i32 0
  store i32 102, ptr %objectclass779, align 8
  %524 = load ptr, ptr %tvsym, align 8
  %call780 = call ptr @locate(ptr noundef %524)
  store ptr %call780, ptr %sym778, align 8
  %525 = load ptr, ptr %sym778, align 8
  %cmp781 = icmp eq ptr %525, null
  br i1 %cmp781, label %if.then783, label %if.else793

if.then783:                                       ; preds = %sw.bb776
  %526 = load ptr, ptr %tvsym, align 8
  %objectclass784 = getelementptr inbounds %struct.Symbol, ptr %526, i32 0, i32 0
  store i32 104, ptr %objectclass784, align 8
  %527 = load ptr, ptr %tvsym, align 8
  %call785 = call ptr @locate(ptr noundef %527)
  store ptr %call785, ptr %sym778, align 8
  %528 = load ptr, ptr %tvsym, align 8
  %cmp786 = icmp eq ptr %528, null
  br i1 %cmp786, label %if.then788, label %if.else791

if.then788:                                       ; preds = %if.then783
  %529 = load ptr, ptr %yyvsp, align 8
  %arrayidx789 = getelementptr inbounds %union.YYSTYPE, ptr %529, i64 0
  %530 = load ptr, ptr %arrayidx789, align 8
  %name790 = getelementptr inbounds %struct.Symbol, ptr %530, i32 0, i32 2
  %531 = load ptr, ptr %name790, align 8
  call void (ptr, ...) @derror(ptr noundef @.str.39, ptr noundef %531)
  store i32 17, ptr %cleanup.dest.slot, align 4
  br label %cleanup802

if.else791:                                       ; preds = %if.then783
  %532 = load ptr, ptr %sym778, align 8
  store ptr %532, ptr %tvsym, align 8
  br label %if.end792

if.end792:                                        ; preds = %if.else791
  br label %if.end794

if.else793:                                       ; preds = %sw.bb776
  %533 = load ptr, ptr %sym778, align 8
  store ptr %533, ptr %tvsym, align 8
  br label %if.end794

if.end794:                                        ; preds = %if.else793, %if.end792
  %534 = load ptr, ptr %tvsym, align 8
  %cmp795 = icmp eq ptr %534, null
  br i1 %cmp795, label %if.then797, label %if.end801

if.then797:                                       ; preds = %if.end794
  %535 = load ptr, ptr %yyvsp, align 8
  %arrayidx798 = getelementptr inbounds %union.YYSTYPE, ptr %535, i64 0
  %536 = load ptr, ptr %arrayidx798, align 8
  %lineno = getelementptr inbounds %struct.Symbol, ptr %536, i32 0, i32 17
  %537 = load i32, ptr %lineno, align 8
  %538 = load ptr, ptr %yyvsp, align 8
  %arrayidx799 = getelementptr inbounds %union.YYSTYPE, ptr %538, i64 0
  %539 = load ptr, ptr %arrayidx799, align 8
  %name800 = getelementptr inbounds %struct.Symbol, ptr %539, i32 0, i32 2
  %540 = load ptr, ptr %name800, align 8
  call void (ptr, ...) @derror(ptr noundef @.str.40, i32 noundef %537, ptr noundef %540)
  store i32 17, ptr %cleanup.dest.slot, align 4
  br label %cleanup802

if.end801:                                        ; preds = %if.end794
  %541 = load ptr, ptr %tvsym, align 8
  store ptr %541, ptr %yyval, align 8
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup802

cleanup802:                                       ; preds = %if.then797, %if.then788, %if.end801
  call void @llvm.lifetime.end.p0(i64 8, ptr %sym778) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %tvsym) #13
  %cleanup.dest804 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest804, label %cleanup1272 [
    i32 0, label %cleanup.cont805
    i32 17, label %yyabortlab
  ]

cleanup.cont805:                                  ; preds = %cleanup802
  br label %sw.epilog

sw.bb806:                                         ; preds = %do.end178
  %542 = load ptr, ptr %yyvsp, align 8
  %arrayidx807 = getelementptr inbounds %union.YYSTYPE, ptr %542, i64 0
  %543 = load ptr, ptr %arrayidx807, align 8
  store ptr %543, ptr %yyval, align 8
  br label %sw.epilog

sw.bb808:                                         ; preds = %do.end178
  br label %sw.epilog

sw.bb809:                                         ; preds = %do.end178
  br label %sw.epilog

sw.bb810:                                         ; preds = %do.end178
  %544 = load ptr, ptr %yyvsp, align 8
  %arrayidx811 = getelementptr inbounds %union.YYSTYPE, ptr %544, i64 0
  %545 = load ptr, ptr %arrayidx811, align 8
  %call812 = call ptr @makespecial(i32 noundef 256, ptr noundef null, ptr noundef null, ptr noundef %545, i32 noundef 1)
  store ptr %call812, ptr %yyval, align 8
  br label %sw.epilog

sw.bb813:                                         ; preds = %do.end178
  %546 = load ptr, ptr %yyvsp, align 8
  %arrayidx814 = getelementptr inbounds %union.YYSTYPE, ptr %546, i64 0
  %547 = load ptr, ptr %arrayidx814, align 8
  %call815 = call ptr @makespecial(i32 noundef 512, ptr noundef null, ptr noundef null, ptr noundef %547, i32 noundef 1)
  store ptr %call815, ptr %yyval, align 8
  br label %sw.epilog

sw.bb816:                                         ; preds = %do.end178
  %548 = load ptr, ptr %yyvsp, align 8
  %arrayidx817 = getelementptr inbounds %union.YYSTYPE, ptr %548, i64 0
  %549 = load ptr, ptr %arrayidx817, align 8
  %call818 = call ptr @makespecial(i32 noundef 1024, ptr noundef null, ptr noundef null, ptr noundef %549, i32 noundef 1)
  store ptr %call818, ptr %yyval, align 8
  br label %sw.epilog

sw.bb819:                                         ; preds = %do.end178
  %550 = load ptr, ptr %yyvsp, align 8
  %arrayidx820 = getelementptr inbounds %union.YYSTYPE, ptr %550, i64 -2
  %551 = load ptr, ptr %arrayidx820, align 8
  %552 = load ptr, ptr %yyvsp, align 8
  %arrayidx821 = getelementptr inbounds %union.YYSTYPE, ptr %552, i64 0
  %553 = load ptr, ptr %arrayidx821, align 8
  %call822 = call ptr @makeattribute(ptr noundef %551, ptr noundef null, ptr noundef null, ptr noundef %553, i32 noundef 1)
  store ptr %call822, ptr %yyval, align 8
  br label %sw.epilog

sw.bb823:                                         ; preds = %do.end178
  call void @llvm.lifetime.start.p0(i64 8, ptr %tsym824) #13
  %554 = load ptr, ptr %yyvsp, align 8
  %arrayidx825 = getelementptr inbounds %union.YYSTYPE, ptr %554, i64 -5
  %555 = load ptr, ptr %arrayidx825, align 8
  store ptr %555, ptr %tsym824, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %vsym826) #13
  %556 = load ptr, ptr %yyvsp, align 8
  %arrayidx827 = getelementptr inbounds %union.YYSTYPE, ptr %556, i64 -4
  %557 = load ptr, ptr %arrayidx827, align 8
  store ptr %557, ptr %vsym826, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %asym) #13
  %558 = load ptr, ptr %yyvsp, align 8
  %arrayidx828 = getelementptr inbounds %union.YYSTYPE, ptr %558, i64 -2
  %559 = load ptr, ptr %arrayidx828, align 8
  store ptr %559, ptr %asym, align 8
  %560 = load ptr, ptr %vsym826, align 8
  %objectclass829 = getelementptr inbounds %struct.Symbol, ptr %560, i32 0, i32 0
  %561 = load i32, ptr %objectclass829, align 8
  %cmp830 = icmp eq i32 %561, 102
  br i1 %cmp830, label %if.then832, label %if.else835

if.then832:                                       ; preds = %sw.bb823
  %562 = load ptr, ptr %asym, align 8
  %563 = load ptr, ptr %vsym826, align 8
  %564 = load ptr, ptr %tsym824, align 8
  %565 = load ptr, ptr %yyvsp, align 8
  %arrayidx833 = getelementptr inbounds %union.YYSTYPE, ptr %565, i64 0
  %566 = load ptr, ptr %arrayidx833, align 8
  %call834 = call ptr @makeattribute(ptr noundef %562, ptr noundef %563, ptr noundef %564, ptr noundef %566, i32 noundef 0)
  store ptr %call834, ptr %yyval, align 8
  br label %if.end837

if.else835:                                       ; preds = %sw.bb823
  %567 = load ptr, ptr %asym, align 8
  %name836 = getelementptr inbounds %struct.Symbol, ptr %567, i32 0, i32 2
  %568 = load ptr, ptr %name836, align 8
  call void (ptr, ...) @derror(ptr noundef @.str.41, ptr noundef %568)
  store i32 17, ptr %cleanup.dest.slot, align 4
  br label %cleanup838

if.end837:                                        ; preds = %if.then832
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup838

cleanup838:                                       ; preds = %if.else835, %if.end837
  call void @llvm.lifetime.end.p0(i64 8, ptr %asym) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %vsym826) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %tsym824) #13
  %cleanup.dest841 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest841, label %cleanup1272 [
    i32 0, label %cleanup.cont842
    i32 17, label %yyabortlab
  ]

cleanup.cont842:                                  ; preds = %cleanup838
  br label %sw.epilog

sw.bb843:                                         ; preds = %do.end178
  call void @llvm.lifetime.start.p0(i64 8, ptr %sym844) #13
  %569 = load ptr, ptr %yyvsp, align 8
  %arrayidx845 = getelementptr inbounds %union.YYSTYPE, ptr %569, i64 -4
  %570 = load ptr, ptr %arrayidx845, align 8
  store ptr %570, ptr %sym844, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %asym846) #13
  %571 = load ptr, ptr %yyvsp, align 8
  %arrayidx847 = getelementptr inbounds %union.YYSTYPE, ptr %571, i64 -2
  %572 = load ptr, ptr %arrayidx847, align 8
  store ptr %572, ptr %asym846, align 8
  %573 = load ptr, ptr %sym844, align 8
  %objectclass848 = getelementptr inbounds %struct.Symbol, ptr %573, i32 0, i32 0
  %574 = load i32, ptr %objectclass848, align 8
  %cmp849 = icmp eq i32 %574, 102
  br i1 %cmp849, label %if.then851, label %if.else854

if.then851:                                       ; preds = %sw.bb843
  %575 = load ptr, ptr %asym846, align 8
  %576 = load ptr, ptr %sym844, align 8
  %577 = load ptr, ptr %yyvsp, align 8
  %arrayidx852 = getelementptr inbounds %union.YYSTYPE, ptr %577, i64 0
  %578 = load ptr, ptr %arrayidx852, align 8
  %call853 = call ptr @makeattribute(ptr noundef %575, ptr noundef %576, ptr noundef null, ptr noundef %578, i32 noundef 0)
  store ptr %call853, ptr %yyval, align 8
  br label %if.end864

if.else854:                                       ; preds = %sw.bb843
  %579 = load ptr, ptr %sym844, align 8
  %objectclass855 = getelementptr inbounds %struct.Symbol, ptr %579, i32 0, i32 0
  %580 = load i32, ptr %objectclass855, align 8
  %cmp856 = icmp eq i32 %580, 104
  br i1 %cmp856, label %if.then858, label %if.else861

if.then858:                                       ; preds = %if.else854
  %581 = load ptr, ptr %asym846, align 8
  %582 = load ptr, ptr %sym844, align 8
  %583 = load ptr, ptr %yyvsp, align 8
  %arrayidx859 = getelementptr inbounds %union.YYSTYPE, ptr %583, i64 0
  %584 = load ptr, ptr %arrayidx859, align 8
  %call860 = call ptr @makeattribute(ptr noundef %581, ptr noundef null, ptr noundef %582, ptr noundef %584, i32 noundef 1)
  store ptr %call860, ptr %yyval, align 8
  br label %if.end863

if.else861:                                       ; preds = %if.else854
  %585 = load ptr, ptr %asym846, align 8
  %name862 = getelementptr inbounds %struct.Symbol, ptr %585, i32 0, i32 2
  %586 = load ptr, ptr %name862, align 8
  call void (ptr, ...) @derror(ptr noundef @.str.42, ptr noundef %586)
  store i32 17, ptr %cleanup.dest.slot, align 4
  br label %cleanup865

if.end863:                                        ; preds = %if.then858
  br label %if.end864

if.end864:                                        ; preds = %if.end863, %if.then851
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup865

cleanup865:                                       ; preds = %if.else861, %if.end864
  call void @llvm.lifetime.end.p0(i64 8, ptr %asym846) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %sym844) #13
  %cleanup.dest867 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest867, label %cleanup1272 [
    i32 0, label %cleanup.cont868
    i32 17, label %yyabortlab
  ]

cleanup.cont868:                                  ; preds = %cleanup865
  br label %sw.epilog

sw.bb869:                                         ; preds = %do.end178
  %587 = load ptr, ptr %yyvsp, align 8
  %arrayidx870 = getelementptr inbounds %union.YYSTYPE, ptr %587, i64 -4
  %588 = load ptr, ptr %arrayidx870, align 8
  %589 = load ptr, ptr %yyvsp, align 8
  %arrayidx871 = getelementptr inbounds %union.YYSTYPE, ptr %589, i64 0
  %590 = load ptr, ptr %arrayidx871, align 8
  %call872 = call ptr @makespecial(i32 noundef 128, ptr noundef %588, ptr noundef null, ptr noundef %590, i32 noundef 0)
  store ptr %call872, ptr %yyval, align 8
  br label %sw.epilog

sw.bb873:                                         ; preds = %do.end178
  %591 = load ptr, ptr %yyvsp, align 8
  %arrayidx874 = getelementptr inbounds %union.YYSTYPE, ptr %591, i64 -4
  %592 = load ptr, ptr %arrayidx874, align 8
  %593 = load ptr, ptr %yyvsp, align 8
  %arrayidx875 = getelementptr inbounds %union.YYSTYPE, ptr %593, i64 -5
  %594 = load ptr, ptr %arrayidx875, align 8
  %595 = load ptr, ptr %yyvsp, align 8
  %arrayidx876 = getelementptr inbounds %union.YYSTYPE, ptr %595, i64 0
  %596 = load ptr, ptr %arrayidx876, align 8
  %call877 = call ptr @makespecial(i32 noundef 128, ptr noundef %592, ptr noundef %594, ptr noundef %596, i32 noundef 0)
  store ptr %call877, ptr %yyval, align 8
  br label %sw.epilog

sw.bb878:                                         ; preds = %do.end178
  %597 = load ptr, ptr %yyvsp, align 8
  %arrayidx879 = getelementptr inbounds %union.YYSTYPE, ptr %597, i64 -4
  %598 = load ptr, ptr %arrayidx879, align 8
  %599 = load ptr, ptr %yyvsp, align 8
  %arrayidx880 = getelementptr inbounds %union.YYSTYPE, ptr %599, i64 0
  %600 = load ptr, ptr %arrayidx880, align 8
  %call881 = call ptr @makespecial(i32 noundef 1, ptr noundef %598, ptr noundef null, ptr noundef %600, i32 noundef 1)
  store ptr %call881, ptr %yyval, align 8
  br label %sw.epilog

sw.bb882:                                         ; preds = %do.end178
  %601 = load ptr, ptr %yyvsp, align 8
  %arrayidx883 = getelementptr inbounds %union.YYSTYPE, ptr %601, i64 -4
  %602 = load ptr, ptr %arrayidx883, align 8
  %603 = load ptr, ptr %yyvsp, align 8
  %arrayidx884 = getelementptr inbounds %union.YYSTYPE, ptr %603, i64 0
  %604 = load ptr, ptr %arrayidx884, align 8
  %call885 = call ptr @makespecial(i32 noundef 2, ptr noundef %602, ptr noundef null, ptr noundef %604, i32 noundef 0)
  store ptr %call885, ptr %yyval, align 8
  br label %sw.epilog

sw.bb886:                                         ; preds = %do.end178
  %605 = load ptr, ptr %yyvsp, align 8
  %arrayidx887 = getelementptr inbounds %union.YYSTYPE, ptr %605, i64 -4
  %606 = load ptr, ptr %arrayidx887, align 8
  %607 = load ptr, ptr %yyvsp, align 8
  %arrayidx888 = getelementptr inbounds %union.YYSTYPE, ptr %607, i64 0
  %608 = load ptr, ptr %arrayidx888, align 8
  %call889 = call ptr @makespecial(i32 noundef 4, ptr noundef %606, ptr noundef null, ptr noundef %608, i32 noundef 1)
  store ptr %call889, ptr %yyval, align 8
  br label %sw.epilog

sw.bb890:                                         ; preds = %do.end178
  %609 = load ptr, ptr %yyvsp, align 8
  %arrayidx891 = getelementptr inbounds %union.YYSTYPE, ptr %609, i64 -4
  %610 = load ptr, ptr %arrayidx891, align 8
  %611 = load ptr, ptr %yyvsp, align 8
  %arrayidx892 = getelementptr inbounds %union.YYSTYPE, ptr %611, i64 0
  %612 = load ptr, ptr %arrayidx892, align 8
  %call893 = call ptr @makespecial(i32 noundef 8, ptr noundef %610, ptr noundef null, ptr noundef %612, i32 noundef 1)
  store ptr %call893, ptr %yyval, align 8
  br label %sw.epilog

sw.bb894:                                         ; preds = %do.end178
  %613 = load ptr, ptr %yyvsp, align 8
  %arrayidx895 = getelementptr inbounds %union.YYSTYPE, ptr %613, i64 -4
  %614 = load ptr, ptr %arrayidx895, align 8
  %615 = load ptr, ptr %yyvsp, align 8
  %arrayidx896 = getelementptr inbounds %union.YYSTYPE, ptr %615, i64 0
  %616 = load ptr, ptr %arrayidx896, align 8
  %call897 = call ptr @makespecial(i32 noundef 16, ptr noundef %614, ptr noundef null, ptr noundef %616, i32 noundef 1)
  store ptr %call897, ptr %yyval, align 8
  br label %sw.epilog

sw.bb898:                                         ; preds = %do.end178
  %617 = load ptr, ptr %yyvsp, align 8
  %arrayidx899 = getelementptr inbounds %union.YYSTYPE, ptr %617, i64 -4
  %618 = load ptr, ptr %arrayidx899, align 8
  %619 = load ptr, ptr %yyvsp, align 8
  %arrayidx900 = getelementptr inbounds %union.YYSTYPE, ptr %619, i64 0
  %620 = load ptr, ptr %arrayidx900, align 8
  %call901 = call ptr @makespecial(i32 noundef 32, ptr noundef %618, ptr noundef null, ptr noundef %620, i32 noundef 1)
  store ptr %call901, ptr %yyval, align 8
  br label %sw.epilog

sw.bb902:                                         ; preds = %do.end178
  %621 = load ptr, ptr %yyvsp, align 8
  %arrayidx903 = getelementptr inbounds %union.YYSTYPE, ptr %621, i64 -4
  %622 = load ptr, ptr %arrayidx903, align 8
  %623 = load ptr, ptr %yyvsp, align 8
  %arrayidx904 = getelementptr inbounds %union.YYSTYPE, ptr %623, i64 0
  %624 = load ptr, ptr %arrayidx904, align 8
  %call905 = call ptr @makespecial(i32 noundef 4096, ptr noundef %622, ptr noundef null, ptr noundef %624, i32 noundef 1)
  store ptr %call905, ptr %yyval, align 8
  br label %sw.epilog

sw.bb906:                                         ; preds = %do.end178
  %625 = load ptr, ptr %yyvsp, align 8
  %arrayidx907 = getelementptr inbounds %union.YYSTYPE, ptr %625, i64 -4
  %626 = load ptr, ptr %arrayidx907, align 8
  %627 = load ptr, ptr %yyvsp, align 8
  %arrayidx908 = getelementptr inbounds %union.YYSTYPE, ptr %627, i64 0
  %628 = load ptr, ptr %arrayidx908, align 8
  %call909 = call ptr @makespecial(i32 noundef 8192, ptr noundef %626, ptr noundef null, ptr noundef %628, i32 noundef 1)
  store ptr %call909, ptr %yyval, align 8
  br label %sw.epilog

sw.bb910:                                         ; preds = %do.end178
  %629 = load ptr, ptr %yyvsp, align 8
  %arrayidx911 = getelementptr inbounds %union.YYSTYPE, ptr %629, i64 -4
  %630 = load ptr, ptr %arrayidx911, align 8
  %631 = load ptr, ptr %yyvsp, align 8
  %arrayidx912 = getelementptr inbounds %union.YYSTYPE, ptr %631, i64 0
  %632 = load ptr, ptr %arrayidx912, align 8
  %call913 = call ptr @makespecial(i32 noundef 16384, ptr noundef %630, ptr noundef null, ptr noundef %632, i32 noundef 1)
  store ptr %call913, ptr %yyval, align 8
  br label %sw.epilog

sw.bb914:                                         ; preds = %do.end178
  %633 = load ptr, ptr %yyvsp, align 8
  %arrayidx915 = getelementptr inbounds %union.YYSTYPE, ptr %633, i64 -4
  %634 = load ptr, ptr %arrayidx915, align 8
  %635 = load ptr, ptr %yyvsp, align 8
  %arrayidx916 = getelementptr inbounds %union.YYSTYPE, ptr %635, i64 0
  %636 = load ptr, ptr %arrayidx916, align 8
  %call917 = call ptr @makespecial(i32 noundef 32768, ptr noundef %634, ptr noundef null, ptr noundef %636, i32 noundef 1)
  store ptr %call917, ptr %yyval, align 8
  br label %sw.epilog

sw.bb918:                                         ; preds = %do.end178
  %637 = load ptr, ptr %yyvsp, align 8
  %arrayidx919 = getelementptr inbounds %union.YYSTYPE, ptr %637, i64 -4
  %638 = load ptr, ptr %arrayidx919, align 8
  %639 = load ptr, ptr %yyvsp, align 8
  %arrayidx920 = getelementptr inbounds %union.YYSTYPE, ptr %639, i64 0
  %640 = load ptr, ptr %arrayidx920, align 8
  %call921 = call ptr @makespecial(i32 noundef 65536, ptr noundef %638, ptr noundef null, ptr noundef %640, i32 noundef 1)
  store ptr %call921, ptr %yyval, align 8
  br label %sw.epilog

sw.bb922:                                         ; preds = %do.end178
  %641 = load ptr, ptr %yyvsp, align 8
  %arrayidx923 = getelementptr inbounds %union.YYSTYPE, ptr %641, i64 -4
  %642 = load ptr, ptr %arrayidx923, align 8
  %643 = load ptr, ptr %yyvsp, align 8
  %arrayidx924 = getelementptr inbounds %union.YYSTYPE, ptr %643, i64 0
  %644 = load ptr, ptr %arrayidx924, align 8
  %call925 = call ptr @makespecial(i32 noundef 64, ptr noundef %642, ptr noundef null, ptr noundef %644, i32 noundef 1)
  store ptr %call925, ptr %yyval, align 8
  br label %sw.epilog

sw.bb926:                                         ; preds = %do.end178
  %645 = load ptr, ptr %yyvsp, align 8
  %arrayidx927 = getelementptr inbounds %union.YYSTYPE, ptr %645, i64 0
  %646 = load ptr, ptr %arrayidx927, align 8
  %call928 = call ptr @makespecial(i32 noundef 2048, ptr noundef null, ptr noundef null, ptr noundef %646, i32 noundef 1)
  store ptr %call928, ptr %yyval, align 8
  br label %sw.epilog

sw.bb929:                                         ; preds = %do.end178
  %647 = load ptr, ptr %yyvsp, align 8
  %arrayidx930 = getelementptr inbounds %union.YYSTYPE, ptr %647, i64 0
  %648 = load ptr, ptr %arrayidx930, align 8
  store ptr %648, ptr %yyval, align 8
  %649 = load ptr, ptr %yyvsp, align 8
  %arrayidx931 = getelementptr inbounds %union.YYSTYPE, ptr %649, i64 0
  %650 = load ptr, ptr %arrayidx931, align 8
  %ref = getelementptr inbounds %struct.Symbol, ptr %650, i32 0, i32 16
  %is_ref = getelementptr inbounds %struct.Reference, ptr %ref, i32 0, i32 0
  store i32 1, ptr %is_ref, align 8
  %651 = load ptr, ptr %yyvsp, align 8
  %arrayidx932 = getelementptr inbounds %union.YYSTYPE, ptr %651, i64 0
  %652 = load ptr, ptr %arrayidx932, align 8
  %is_prefixed = getelementptr inbounds %struct.Symbol, ptr %652, i32 0, i32 7
  store i32 0, ptr %is_prefixed, align 8
  %653 = load ptr, ptr %yyvsp, align 8
  %arrayidx933 = getelementptr inbounds %union.YYSTYPE, ptr %653, i64 0
  %654 = load ptr, ptr %arrayidx933, align 8
  call void @setpathcurrent(ptr noundef %654)
  br label %sw.epilog

sw.bb934:                                         ; preds = %do.end178
  %655 = load ptr, ptr %yyvsp, align 8
  %arrayidx935 = getelementptr inbounds %union.YYSTYPE, ptr %655, i64 0
  %656 = load ptr, ptr %arrayidx935, align 8
  store ptr %656, ptr %yyval, align 8
  %657 = load ptr, ptr %yyvsp, align 8
  %arrayidx936 = getelementptr inbounds %union.YYSTYPE, ptr %657, i64 0
  %658 = load ptr, ptr %arrayidx936, align 8
  %ref937 = getelementptr inbounds %struct.Symbol, ptr %658, i32 0, i32 16
  %is_ref938 = getelementptr inbounds %struct.Reference, ptr %ref937, i32 0, i32 0
  store i32 1, ptr %is_ref938, align 8
  %659 = load ptr, ptr %yyvsp, align 8
  %arrayidx939 = getelementptr inbounds %union.YYSTYPE, ptr %659, i64 0
  %660 = load ptr, ptr %arrayidx939, align 8
  %is_prefixed940 = getelementptr inbounds %struct.Symbol, ptr %660, i32 0, i32 7
  store i32 1, ptr %is_prefixed940, align 8
  br label %sw.epilog

sw.bb941:                                         ; preds = %do.end178
  br label %sw.epilog

sw.bb942:                                         ; preds = %do.end178
  br label %sw.epilog

sw.bb943:                                         ; preds = %do.end178
  %661 = load ptr, ptr %yyvsp, align 8
  %arrayidx944 = getelementptr inbounds %union.YYSTYPE, ptr %661, i64 0
  %662 = load ptr, ptr %arrayidx944, align 8
  %663 = load ptr, ptr %yyvsp, align 8
  %arrayidx945 = getelementptr inbounds %union.YYSTYPE, ptr %663, i64 -2
  %664 = load ptr, ptr %arrayidx945, align 8
  %data = getelementptr inbounds %struct.Symbol, ptr %664, i32 0, i32 9
  store ptr %662, ptr %data, align 8
  br label %sw.epilog

sw.bb946:                                         ; preds = %do.end178
  %665 = load ptr, ptr %yyvsp, align 8
  %arrayidx947 = getelementptr inbounds %union.YYSTYPE, ptr %665, i64 0
  %666 = load ptr, ptr %arrayidx947, align 8
  store ptr %666, ptr %yyval, align 8
  br label %sw.epilog

sw.bb948:                                         ; preds = %do.end178
  %667 = load ptr, ptr %yyvsp, align 8
  %arrayidx949 = getelementptr inbounds %union.YYSTYPE, ptr %667, i64 0
  %668 = load ptr, ptr %arrayidx949, align 8
  store ptr %668, ptr %yyval, align 8
  br label %sw.epilog

sw.bb950:                                         ; preds = %do.end178
  %call951 = call ptr @builddatalist(i32 noundef 0)
  store ptr %call951, ptr %yyval, align 8
  br label %sw.epilog

sw.bb952:                                         ; preds = %do.end178
  %669 = load ptr, ptr %yyvsp, align 8
  %arrayidx953 = getelementptr inbounds %union.YYSTYPE, ptr %669, i64 0
  %670 = load ptr, ptr %arrayidx953, align 8
  %call954 = call ptr @const2list(ptr noundef %670)
  store ptr %call954, ptr %yyval, align 8
  br label %sw.epilog

sw.bb955:                                         ; preds = %do.end178
  %671 = load ptr, ptr %yyvsp, align 8
  %arrayidx956 = getelementptr inbounds %union.YYSTYPE, ptr %671, i64 -2
  %672 = load ptr, ptr %arrayidx956, align 8
  %673 = load ptr, ptr %yyvsp, align 8
  %arrayidx957 = getelementptr inbounds %union.YYSTYPE, ptr %673, i64 0
  %674 = load ptr, ptr %arrayidx957, align 8
  call void @dlappend(ptr noundef %672, ptr noundef %674)
  %675 = load ptr, ptr %yyvsp, align 8
  %arrayidx958 = getelementptr inbounds %union.YYSTYPE, ptr %675, i64 -2
  %676 = load ptr, ptr %arrayidx958, align 8
  store ptr %676, ptr %yyval, align 8
  br label %sw.epilog

sw.bb959:                                         ; preds = %do.end178
  %677 = load ptr, ptr %yyvsp, align 8
  %arrayidx960 = getelementptr inbounds %union.YYSTYPE, ptr %677, i64 0
  %678 = load ptr, ptr %arrayidx960, align 8
  store ptr %678, ptr %yyval, align 8
  br label %sw.epilog

sw.bb961:                                         ; preds = %do.end178
  %679 = load ptr, ptr %yyvsp, align 8
  %arrayidx962 = getelementptr inbounds %union.YYSTYPE, ptr %679, i64 -1
  %680 = load ptr, ptr %arrayidx962, align 8
  %call963 = call ptr @builddatasublist(ptr noundef %680)
  store ptr %call963, ptr %yyval, align 8
  br label %sw.epilog

sw.bb964:                                         ; preds = %do.end178
  %681 = load ptr, ptr %yyvsp, align 8
  %arrayidx965 = getelementptr inbounds %union.YYSTYPE, ptr %681, i64 0
  %682 = load ptr, ptr %arrayidx965, align 8
  store ptr %682, ptr %yyval, align 8
  br label %sw.epilog

sw.bb966:                                         ; preds = %do.end178
  %call967 = call ptr @makeconstdata(i32 noundef 14)
  store ptr %call967, ptr %yyval, align 8
  br label %sw.epilog

sw.bb968:                                         ; preds = %do.end178
  %call969 = call ptr @makeconstdata(i32 noundef 31)
  store ptr %call969, ptr %yyval, align 8
  br label %sw.epilog

sw.bb970:                                         ; preds = %do.end178
  %call971 = call ptr @makeconstdata(i32 noundef 32)
  store ptr %call971, ptr %yyval, align 8
  br label %sw.epilog

sw.bb972:                                         ; preds = %do.end178
  %683 = load ptr, ptr %yyvsp, align 8
  %arrayidx973 = getelementptr inbounds %union.YYSTYPE, ptr %683, i64 0
  %684 = load ptr, ptr %arrayidx973, align 8
  store ptr %684, ptr %yyval, align 8
  br label %sw.epilog

sw.bb974:                                         ; preds = %do.end178
  %685 = load ptr, ptr %yyvsp, align 8
  %arrayidx975 = getelementptr inbounds %union.YYSTYPE, ptr %685, i64 0
  %686 = load ptr, ptr %arrayidx975, align 8
  %call976 = call ptr @makeenumconstref(ptr noundef %686)
  store ptr %call976, ptr %yyval, align 8
  br label %sw.epilog

sw.bb977:                                         ; preds = %do.end178
  %687 = load ptr, ptr %yyvsp, align 8
  %arrayidx978 = getelementptr inbounds %union.YYSTYPE, ptr %687, i64 -3
  %688 = load ptr, ptr %arrayidx978, align 8
  %689 = load ptr, ptr %yyvsp, align 8
  %arrayidx979 = getelementptr inbounds %union.YYSTYPE, ptr %689, i64 -1
  %690 = load ptr, ptr %arrayidx979, align 8
  %call980 = call ptr @evaluate(ptr noundef %688, ptr noundef %690)
  store ptr %call980, ptr %yyval, align 8
  br label %sw.epilog

sw.bb981:                                         ; preds = %do.end178
  %691 = load ptr, ptr %yyvsp, align 8
  %arrayidx982 = getelementptr inbounds %union.YYSTYPE, ptr %691, i64 0
  %692 = load ptr, ptr %arrayidx982, align 8
  %call983 = call ptr @const2list(ptr noundef %692)
  store ptr %call983, ptr %yyval, align 8
  br label %sw.epilog

sw.bb984:                                         ; preds = %do.end178
  %693 = load ptr, ptr %yyvsp, align 8
  %arrayidx985 = getelementptr inbounds %union.YYSTYPE, ptr %693, i64 -2
  %694 = load ptr, ptr %arrayidx985, align 8
  %695 = load ptr, ptr %yyvsp, align 8
  %arrayidx986 = getelementptr inbounds %union.YYSTYPE, ptr %695, i64 0
  %696 = load ptr, ptr %arrayidx986, align 8
  call void @dlappend(ptr noundef %694, ptr noundef %696)
  %697 = load ptr, ptr %yyvsp, align 8
  %arrayidx987 = getelementptr inbounds %union.YYSTYPE, ptr %697, i64 -2
  %698 = load ptr, ptr %arrayidx987, align 8
  store ptr %698, ptr %yyval, align 8
  br label %sw.epilog

sw.bb988:                                         ; preds = %do.end178
  %call989 = call ptr @makeconstdata(i32 noundef 2)
  store ptr %call989, ptr %yyval, align 8
  br label %sw.epilog

sw.bb990:                                         ; preds = %do.end178
  %call991 = call ptr @makeconstdata(i32 noundef 1)
  store ptr %call991, ptr %yyval, align 8
  br label %sw.epilog

sw.bb992:                                         ; preds = %do.end178
  %call993 = call ptr @makeconstdata(i32 noundef 3)
  store ptr %call993, ptr %yyval, align 8
  br label %sw.epilog

sw.bb994:                                         ; preds = %do.end178
  %call995 = call ptr @makeconstdata(i32 noundef 4)
  store ptr %call995, ptr %yyval, align 8
  br label %sw.epilog

sw.bb996:                                         ; preds = %do.end178
  %call997 = call ptr @makeconstdata(i32 noundef 10)
  store ptr %call997, ptr %yyval, align 8
  br label %sw.epilog

sw.bb998:                                         ; preds = %do.end178
  %call999 = call ptr @makeconstdata(i32 noundef 7)
  store ptr %call999, ptr %yyval, align 8
  br label %sw.epilog

sw.bb1000:                                        ; preds = %do.end178
  %call1001 = call ptr @makeconstdata(i32 noundef 8)
  store ptr %call1001, ptr %yyval, align 8
  br label %sw.epilog

sw.bb1002:                                        ; preds = %do.end178
  %call1003 = call ptr @makeconstdata(i32 noundef 9)
  store ptr %call1003, ptr %yyval, align 8
  br label %sw.epilog

sw.bb1004:                                        ; preds = %do.end178
  %call1005 = call ptr @makeconstdata(i32 noundef 11)
  store ptr %call1005, ptr %yyval, align 8
  br label %sw.epilog

sw.bb1006:                                        ; preds = %do.end178
  %call1007 = call ptr @makeconstdata(i32 noundef 5)
  store ptr %call1007, ptr %yyval, align 8
  br label %sw.epilog

sw.bb1008:                                        ; preds = %do.end178
  %call1009 = call ptr @makeconstdata(i32 noundef 6)
  store ptr %call1009, ptr %yyval, align 8
  br label %sw.epilog

sw.bb1010:                                        ; preds = %do.end178
  %call1011 = call ptr @makeconstdata(i32 noundef 12)
  store ptr %call1011, ptr %yyval, align 8
  br label %sw.epilog

sw.bb1012:                                        ; preds = %do.end178
  %699 = load ptr, ptr %yyvsp, align 8
  %arrayidx1013 = getelementptr inbounds %union.YYSTYPE, ptr %699, i64 0
  %700 = load ptr, ptr %arrayidx1013, align 8
  %call1014 = call ptr @const2list(ptr noundef %700)
  store ptr %call1014, ptr %yyval, align 8
  br label %sw.epilog

sw.bb1015:                                        ; preds = %do.end178
  %701 = load ptr, ptr %yyvsp, align 8
  %arrayidx1016 = getelementptr inbounds %union.YYSTYPE, ptr %701, i64 -2
  %702 = load ptr, ptr %arrayidx1016, align 8
  store ptr %702, ptr %yyval, align 8
  %703 = load ptr, ptr %yyvsp, align 8
  %arrayidx1017 = getelementptr inbounds %union.YYSTYPE, ptr %703, i64 -2
  %704 = load ptr, ptr %arrayidx1017, align 8
  %705 = load ptr, ptr %yyvsp, align 8
  %arrayidx1018 = getelementptr inbounds %union.YYSTYPE, ptr %705, i64 0
  %706 = load ptr, ptr %arrayidx1018, align 8
  call void @dlappend(ptr noundef %704, ptr noundef %706)
  br label %sw.epilog

sw.bb1019:                                        ; preds = %do.end178
  %call1020 = call ptr @makeconstdata(i32 noundef 4)
  store ptr %call1020, ptr %yyval, align 8
  br label %sw.epilog

sw.bb1021:                                        ; preds = %do.end178
  %call1022 = call ptr @makeconstdata(i32 noundef 9)
  store ptr %call1022, ptr %yyval, align 8
  br label %sw.epilog

sw.bb1023:                                        ; preds = %do.end178
  %call1024 = call ptr @makeconstdata(i32 noundef 10)
  store ptr %call1024, ptr %yyval, align 8
  br label %sw.epilog

sw.bb1025:                                        ; preds = %do.end178
  %call1026 = call ptr @makeconstdata(i32 noundef 11)
  store ptr %call1026, ptr %yyval, align 8
  br label %sw.epilog

sw.bb1027:                                        ; preds = %do.end178
  %call1028 = call ptr @makeconstdata(i32 noundef 12)
  store ptr %call1028, ptr %yyval, align 8
  br label %sw.epilog

sw.bb1029:                                        ; preds = %do.end178
  %707 = load ptr, ptr %yyvsp, align 8
  %arrayidx1030 = getelementptr inbounds %union.YYSTYPE, ptr %707, i64 0
  %708 = load ptr, ptr %arrayidx1030, align 8
  store ptr %708, ptr %yyval, align 8
  br label %sw.epilog

sw.bb1031:                                        ; preds = %do.end178
  %709 = load ptr, ptr %yyvsp, align 8
  %arrayidx1032 = getelementptr inbounds %union.YYSTYPE, ptr %709, i64 0
  %710 = load ptr, ptr %arrayidx1032, align 8
  store ptr %710, ptr %yyval, align 8
  br label %sw.epilog

sw.bb1033:                                        ; preds = %do.end178
  %711 = load ptr, ptr %yyvsp, align 8
  %arrayidx1034 = getelementptr inbounds %union.YYSTYPE, ptr %711, i64 0
  %712 = load ptr, ptr %arrayidx1034, align 8
  store ptr %712, ptr %yyval, align 8
  br label %sw.epilog

sw.bb1035:                                        ; preds = %do.end178
  %713 = load ptr, ptr %yyvsp, align 8
  %arrayidx1036 = getelementptr inbounds %union.YYSTYPE, ptr %713, i64 0
  %714 = load ptr, ptr %arrayidx1036, align 8
  %call1037 = call ptr @identkeyword(ptr noundef %714)
  store ptr %call1037, ptr %yyval, align 8
  br label %sw.epilog

sw.bb1038:                                        ; preds = %do.end178
  %715 = load ptr, ptr %yyvsp, align 8
  %arrayidx1039 = getelementptr inbounds %union.YYSTYPE, ptr %715, i64 0
  %716 = load ptr, ptr %arrayidx1039, align 8
  store ptr %716, ptr %yyval, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %do.end178
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb1038, %sw.bb1035, %sw.bb1033, %sw.bb1031, %sw.bb1029, %sw.bb1027, %sw.bb1025, %sw.bb1023, %sw.bb1021, %sw.bb1019, %sw.bb1015, %sw.bb1012, %sw.bb1010, %sw.bb1008, %sw.bb1006, %sw.bb1004, %sw.bb1002, %sw.bb1000, %sw.bb998, %sw.bb996, %sw.bb994, %sw.bb992, %sw.bb990, %sw.bb988, %sw.bb984, %sw.bb981, %sw.bb977, %sw.bb974, %sw.bb972, %sw.bb970, %sw.bb968, %sw.bb966, %sw.bb964, %sw.bb961, %sw.bb959, %sw.bb955, %sw.bb952, %sw.bb950, %sw.bb948, %sw.bb946, %sw.bb943, %sw.bb942, %sw.bb941, %sw.bb934, %sw.bb929, %sw.bb926, %sw.bb922, %sw.bb918, %sw.bb914, %sw.bb910, %sw.bb906, %sw.bb902, %sw.bb898, %sw.bb894, %sw.bb890, %sw.bb886, %sw.bb882, %sw.bb878, %sw.bb873, %sw.bb869, %cleanup.cont868, %cleanup.cont842, %sw.bb819, %sw.bb816, %sw.bb813, %sw.bb810, %sw.bb809, %sw.bb808, %sw.bb806, %cleanup.cont805, %cleanup.cont775, %cleanup.cont764, %cleanup.cont753, %sw.bb725, %sw.bb721, %cond.end716, %sw.bb707, %cond.end704, %if.end686, %sw.bb640, %cond.end635, %cleanup.cont627, %sw.bb611, %cond.end606, %sw.bb597, %cond.end594, %if.end581, %sw.bb538, %cond.end533, %for.end523, %sw.bb491, %sw.bb490, %sw.bb489, %sw.bb488, %if.end483, %sw.bb468, %sw.bb463, %sw.bb462, %sw.bb461, %sw.bb460, %sw.bb459, %sw.bb458, %sw.bb457, %sw.bb456, %sw.bb455, %sw.bb454, %sw.bb453, %sw.bb452, %sw.bb451, %sw.bb450, %sw.bb449, %sw.bb448, %sw.bb447, %for.end446, %sw.bb420, %sw.bb418, %for.end415, %sw.bb328, %sw.bb312, %sw.bb303, %for.end300, %cond.end265, %for.end, %sw.bb208, %sw.bb207, %if.end204, %sw.bb195, %sw.bb194, %sw.bb192, %if.end191, %sw.bb183, %if.end182
  br label %do.body1040

do.body1040:                                      ; preds = %sw.epilog
  %717 = load i32, ptr @ncgdebug, align 4
  %tobool1041 = icmp ne i32 %717, 0
  br i1 %tobool1041, label %if.then1042, label %if.end1048

if.then1042:                                      ; preds = %do.body1040
  %718 = load ptr, ptr @stderr, align 8
  %call1043 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %718, ptr noundef @.str.18, ptr noundef @.str.43)
  %719 = load ptr, ptr @stderr, align 8
  %720 = load i32, ptr %yyn, align 4
  %idxprom1044 = sext i32 %720 to i64
  %arrayidx1045 = getelementptr inbounds [160 x i8], ptr @yyr1, i64 0, i64 %idxprom1044
  %721 = load i8, ptr %arrayidx1045, align 1
  %conv1046 = zext i8 %721 to i32
  call void @yy_symbol_print(ptr noundef %719, i32 noundef %conv1046, ptr noundef %yyval)
  %722 = load ptr, ptr @stderr, align 8
  %call1047 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %722, ptr noundef @.str.20)
  br label %if.end1048

if.end1048:                                       ; preds = %if.then1042, %do.body1040
  br label %do.cond1049

do.cond1049:                                      ; preds = %if.end1048
  br label %do.end1050

do.end1050:                                       ; preds = %do.cond1049
  %723 = load i32, ptr %yylen, align 4
  %724 = load ptr, ptr %yyvsp, align 8
  %idx.ext = sext i32 %723 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr1051 = getelementptr inbounds %union.YYSTYPE, ptr %724, i64 %idx.neg
  store ptr %add.ptr1051, ptr %yyvsp, align 8
  %725 = load i32, ptr %yylen, align 4
  %726 = load ptr, ptr %yyssp, align 8
  %idx.ext1052 = sext i32 %725 to i64
  %idx.neg1053 = sub i64 0, %idx.ext1052
  %add.ptr1054 = getelementptr inbounds i16, ptr %726, i64 %idx.neg1053
  store ptr %add.ptr1054, ptr %yyssp, align 8
  store i32 0, ptr %yylen, align 4
  %727 = load ptr, ptr %yyvsp, align 8
  %incdec.ptr1055 = getelementptr inbounds %union.YYSTYPE, ptr %727, i32 1
  store ptr %incdec.ptr1055, ptr %yyvsp, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %incdec.ptr1055, ptr align 8 %yyval, i64 8, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %yylhs) #13
  %728 = load i32, ptr %yyn, align 4
  %idxprom1056 = sext i32 %728 to i64
  %arrayidx1057 = getelementptr inbounds [160 x i8], ptr @yyr1, i64 0, i64 %idxprom1056
  %729 = load i8, ptr %arrayidx1057, align 1
  %conv1058 = zext i8 %729 to i32
  %sub1059 = sub nsw i32 %conv1058, 69
  store i32 %sub1059, ptr %yylhs, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %yyi) #13
  %730 = load i32, ptr %yylhs, align 4
  %idxprom1060 = sext i32 %730 to i64
  %arrayidx1061 = getelementptr inbounds [68 x i16], ptr @yypgoto, i64 0, i64 %idxprom1060
  %731 = load i16, ptr %arrayidx1061, align 2
  %conv1062 = sext i16 %731 to i32
  %732 = load ptr, ptr %yyssp, align 8
  %733 = load i16, ptr %732, align 2
  %conv1063 = sext i16 %733 to i32
  %add1064 = add nsw i32 %conv1062, %conv1063
  store i32 %add1064, ptr %yyi, align 4
  %734 = load i32, ptr %yyi, align 4
  %cmp1065 = icmp sle i32 0, %734
  br i1 %cmp1065, label %land.lhs.true1067, label %cond.false1081

land.lhs.true1067:                                ; preds = %do.end1050
  %735 = load i32, ptr %yyi, align 4
  %cmp1068 = icmp sle i32 %735, 420
  br i1 %cmp1068, label %land.lhs.true1070, label %cond.false1081

land.lhs.true1070:                                ; preds = %land.lhs.true1067
  %736 = load i32, ptr %yyi, align 4
  %idxprom1071 = sext i32 %736 to i64
  %arrayidx1072 = getelementptr inbounds [421 x i16], ptr @yycheck, i64 0, i64 %idxprom1071
  %737 = load i16, ptr %arrayidx1072, align 2
  %conv1073 = sext i16 %737 to i32
  %738 = load ptr, ptr %yyssp, align 8
  %739 = load i16, ptr %738, align 2
  %conv1074 = sext i16 %739 to i32
  %cmp1075 = icmp eq i32 %conv1073, %conv1074
  br i1 %cmp1075, label %cond.true1077, label %cond.false1081

cond.true1077:                                    ; preds = %land.lhs.true1070
  %740 = load i32, ptr %yyi, align 4
  %idxprom1078 = sext i32 %740 to i64
  %arrayidx1079 = getelementptr inbounds [421 x i16], ptr @yytable, i64 0, i64 %idxprom1078
  %741 = load i16, ptr %arrayidx1079, align 2
  %conv1080 = sext i16 %741 to i32
  br label %cond.end1085

cond.false1081:                                   ; preds = %land.lhs.true1070, %land.lhs.true1067, %do.end1050
  %742 = load i32, ptr %yylhs, align 4
  %idxprom1082 = sext i32 %742 to i64
  %arrayidx1083 = getelementptr inbounds [68 x i16], ptr @yydefgoto, i64 0, i64 %idxprom1082
  %743 = load i16, ptr %arrayidx1083, align 2
  %conv1084 = sext i16 %743 to i32
  br label %cond.end1085

cond.end1085:                                     ; preds = %cond.false1081, %cond.true1077
  %cond1086 = phi i32 [ %conv1080, %cond.true1077 ], [ %conv1084, %cond.false1081 ]
  store i32 %cond1086, ptr %yystate, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %yyi) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %yylhs) #13
  br label %yynewstate

yyerrlab:                                         ; preds = %if.then165
  %744 = load i32, ptr @ncgchar, align 4
  %cmp1087 = icmp eq i32 %744, -2
  br i1 %cmp1087, label %cond.true1089, label %cond.false1090

cond.true1089:                                    ; preds = %yyerrlab
  br label %cond.end1103

cond.false1090:                                   ; preds = %yyerrlab
  %745 = load i32, ptr @ncgchar, align 4
  %cmp1091 = icmp sle i32 0, %745
  br i1 %cmp1091, label %land.lhs.true1093, label %cond.false1100

land.lhs.true1093:                                ; preds = %cond.false1090
  %746 = load i32, ptr @ncgchar, align 4
  %cmp1094 = icmp sle i32 %746, 314
  br i1 %cmp1094, label %cond.true1096, label %cond.false1100

cond.true1096:                                    ; preds = %land.lhs.true1093
  %747 = load i32, ptr @ncgchar, align 4
  %idxprom1097 = sext i32 %747 to i64
  %arrayidx1098 = getelementptr inbounds [315 x i8], ptr @yytranslate, i64 0, i64 %idxprom1097
  %748 = load i8, ptr %arrayidx1098, align 1
  %conv1099 = sext i8 %748 to i32
  br label %cond.end1101

cond.false1100:                                   ; preds = %land.lhs.true1093, %cond.false1090
  br label %cond.end1101

cond.end1101:                                     ; preds = %cond.false1100, %cond.true1096
  %cond1102 = phi i32 [ %conv1099, %cond.true1096 ], [ 2, %cond.false1100 ]
  br label %cond.end1103

cond.end1103:                                     ; preds = %cond.end1101, %cond.true1089
  %cond1104 = phi i32 [ -2, %cond.true1089 ], [ %cond1102, %cond.end1101 ]
  store i32 %cond1104, ptr %yytoken, align 4
  %749 = load i32, ptr %yyerrstatus, align 4
  %tobool1105 = icmp ne i32 %749, 0
  br i1 %tobool1105, label %if.end1141, label %if.then1106

if.then1106:                                      ; preds = %cond.end1103
  %750 = load i32, ptr @ncgnerrs, align 4
  %inc1107 = add nsw i32 %750, 1
  store i32 %inc1107, ptr @ncgnerrs, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr %yyctx) #13
  %yyssp1108 = getelementptr inbounds %struct.yypcontext_t, ptr %yyctx, i32 0, i32 0
  %751 = load ptr, ptr %yyssp, align 8
  store ptr %751, ptr %yyssp1108, align 8
  %yytoken1109 = getelementptr inbounds %struct.yypcontext_t, ptr %yyctx, i32 0, i32 1
  %752 = load i32, ptr %yytoken, align 4
  store i32 %752, ptr %yytoken1109, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %yymsgp) #13
  store ptr @.str.44, ptr %yymsgp, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %yysyntax_error_status) #13
  %call1110 = call i32 @yysyntax_error(ptr noundef %yymsg_alloc, ptr noundef %yymsg, ptr noundef %yyctx)
  store i32 %call1110, ptr %yysyntax_error_status, align 4
  %753 = load i32, ptr %yysyntax_error_status, align 4
  %cmp1111 = icmp eq i32 %753, 0
  br i1 %cmp1111, label %if.then1113, label %if.else1114

if.then1113:                                      ; preds = %if.then1106
  %754 = load ptr, ptr %yymsg, align 8
  store ptr %754, ptr %yymsgp, align 8
  br label %if.end1131

if.else1114:                                      ; preds = %if.then1106
  %755 = load i32, ptr %yysyntax_error_status, align 4
  %cmp1115 = icmp eq i32 %755, -1
  br i1 %cmp1115, label %if.then1117, label %if.end1130

if.then1117:                                      ; preds = %if.else1114
  %756 = load ptr, ptr %yymsg, align 8
  %arraydecay1118 = getelementptr inbounds [128 x i8], ptr %yymsgbuf, i64 0, i64 0
  %cmp1119 = icmp ne ptr %756, %arraydecay1118
  br i1 %cmp1119, label %if.then1121, label %if.end1122

if.then1121:                                      ; preds = %if.then1117
  %757 = load ptr, ptr %yymsg, align 8
  call void @free(ptr noundef %757) #13
  br label %if.end1122

if.end1122:                                       ; preds = %if.then1121, %if.then1117
  %758 = load i64, ptr %yymsg_alloc, align 8
  %call1123 = call noalias ptr @malloc(i64 noundef %758) #14
  store ptr %call1123, ptr %yymsg, align 8
  %759 = load ptr, ptr %yymsg, align 8
  %tobool1124 = icmp ne ptr %759, null
  br i1 %tobool1124, label %if.then1125, label %if.else1127

if.then1125:                                      ; preds = %if.end1122
  %call1126 = call i32 @yysyntax_error(ptr noundef %yymsg_alloc, ptr noundef %yymsg, ptr noundef %yyctx)
  store i32 %call1126, ptr %yysyntax_error_status, align 4
  %760 = load ptr, ptr %yymsg, align 8
  store ptr %760, ptr %yymsgp, align 8
  br label %if.end1129

if.else1127:                                      ; preds = %if.end1122
  %arraydecay1128 = getelementptr inbounds [128 x i8], ptr %yymsgbuf, i64 0, i64 0
  store ptr %arraydecay1128, ptr %yymsg, align 8
  store i64 128, ptr %yymsg_alloc, align 8
  store i32 -2, ptr %yysyntax_error_status, align 4
  br label %if.end1129

if.end1129:                                       ; preds = %if.else1127, %if.then1125
  br label %if.end1130

if.end1130:                                       ; preds = %if.end1129, %if.else1114
  br label %if.end1131

if.end1131:                                       ; preds = %if.end1130, %if.then1113
  %761 = load ptr, ptr %yymsgp, align 8
  call void (ptr, ...) @ncgerror(ptr noundef %761)
  %762 = load i32, ptr %yysyntax_error_status, align 4
  %cmp1132 = icmp eq i32 %762, -2
  br i1 %cmp1132, label %if.then1134, label %if.end1135

if.then1134:                                      ; preds = %if.end1131
  store i32 10, ptr %cleanup.dest.slot, align 4
  br label %cleanup1136

if.end1135:                                       ; preds = %if.end1131
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup1136

cleanup1136:                                      ; preds = %if.then1134, %if.end1135
  call void @llvm.lifetime.end.p0(i64 4, ptr %yysyntax_error_status) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %yymsgp) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %yyctx) #13
  %cleanup.dest1139 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest1139, label %cleanup1272 [
    i32 0, label %cleanup.cont1140
    i32 10, label %yyexhaustedlab
  ]

cleanup.cont1140:                                 ; preds = %cleanup1136
  br label %if.end1141

if.end1141:                                       ; preds = %cleanup.cont1140, %cond.end1103
  %763 = load i32, ptr %yyerrstatus, align 4
  %cmp1142 = icmp eq i32 %763, 3
  br i1 %cmp1142, label %if.then1144, label %if.end1154

if.then1144:                                      ; preds = %if.end1141
  %764 = load i32, ptr @ncgchar, align 4
  %cmp1145 = icmp sle i32 %764, 0
  br i1 %cmp1145, label %if.then1147, label %if.else1152

if.then1147:                                      ; preds = %if.then1144
  %765 = load i32, ptr @ncgchar, align 4
  %cmp1148 = icmp eq i32 %765, 0
  br i1 %cmp1148, label %if.then1150, label %if.end1151

if.then1150:                                      ; preds = %if.then1147
  br label %yyabortlab

if.end1151:                                       ; preds = %if.then1147
  br label %if.end1153

if.else1152:                                      ; preds = %if.then1144
  %766 = load i32, ptr %yytoken, align 4
  call void @yydestruct(ptr noundef @.str.45, i32 noundef %766, ptr noundef @ncglval)
  store i32 -2, ptr @ncgchar, align 4
  br label %if.end1153

if.end1153:                                       ; preds = %if.else1152, %if.end1151
  br label %if.end1154

if.end1154:                                       ; preds = %if.end1153, %if.end1141
  br label %yyerrlab1

yyerrorlab:                                       ; No predecessors!
  %767 = load i32, ptr %yylen, align 4
  %768 = load ptr, ptr %yyvsp, align 8
  %idx.ext1155 = sext i32 %767 to i64
  %idx.neg1156 = sub i64 0, %idx.ext1155
  %add.ptr1157 = getelementptr inbounds %union.YYSTYPE, ptr %768, i64 %idx.neg1156
  store ptr %add.ptr1157, ptr %yyvsp, align 8
  %769 = load i32, ptr %yylen, align 4
  %770 = load ptr, ptr %yyssp, align 8
  %idx.ext1158 = sext i32 %769 to i64
  %idx.neg1159 = sub i64 0, %idx.ext1158
  %add.ptr1160 = getelementptr inbounds i16, ptr %770, i64 %idx.neg1159
  store ptr %add.ptr1160, ptr %yyssp, align 8
  store i32 0, ptr %yylen, align 4
  br label %do.body1161

do.body1161:                                      ; preds = %yyerrorlab
  %771 = load i32, ptr @ncgdebug, align 4
  %tobool1162 = icmp ne i32 %771, 0
  br i1 %tobool1162, label %if.then1163, label %if.end1164

if.then1163:                                      ; preds = %do.body1161
  %772 = load ptr, ptr %yyss, align 8
  %773 = load ptr, ptr %yyssp, align 8
  call void @yy_stack_print(ptr noundef %772, ptr noundef %773)
  br label %if.end1164

if.end1164:                                       ; preds = %if.then1163, %do.body1161
  br label %do.cond1165

do.cond1165:                                      ; preds = %if.end1164
  br label %do.end1166

do.end1166:                                       ; preds = %do.cond1165
  %774 = load ptr, ptr %yyssp, align 8
  %775 = load i16, ptr %774, align 2
  %conv1167 = sext i16 %775 to i32
  store i32 %conv1167, ptr %yystate, align 4
  br label %yyerrlab1

yyerrlab1:                                        ; preds = %do.end1166, %if.end1154, %if.then109
  store i32 3, ptr %yyerrstatus, align 4
  br label %for.cond1168

for.cond1168:                                     ; preds = %do.end1212, %yyerrlab1
  %776 = load i32, ptr %yystate, align 4
  %idxprom1169 = sext i32 %776 to i64
  %arrayidx1170 = getelementptr inbounds [276 x i16], ptr @yypact, i64 0, i64 %idxprom1169
  %777 = load i16, ptr %arrayidx1170, align 2
  %conv1171 = sext i16 %777 to i32
  store i32 %conv1171, ptr %yyn, align 4
  %778 = load i32, ptr %yyn, align 4
  %cmp1172 = icmp eq i32 %778, -153
  br i1 %cmp1172, label %if.end1196, label %if.then1174

if.then1174:                                      ; preds = %for.cond1168
  %779 = load i32, ptr %yyn, align 4
  %add1175 = add nsw i32 %779, 1
  store i32 %add1175, ptr %yyn, align 4
  %780 = load i32, ptr %yyn, align 4
  %cmp1176 = icmp sle i32 0, %780
  br i1 %cmp1176, label %land.lhs.true1178, label %if.end1195

land.lhs.true1178:                                ; preds = %if.then1174
  %781 = load i32, ptr %yyn, align 4
  %cmp1179 = icmp sle i32 %781, 420
  br i1 %cmp1179, label %land.lhs.true1181, label %if.end1195

land.lhs.true1181:                                ; preds = %land.lhs.true1178
  %782 = load i32, ptr %yyn, align 4
  %idxprom1182 = sext i32 %782 to i64
  %arrayidx1183 = getelementptr inbounds [421 x i16], ptr @yycheck, i64 0, i64 %idxprom1182
  %783 = load i16, ptr %arrayidx1183, align 2
  %conv1184 = sext i16 %783 to i32
  %cmp1185 = icmp eq i32 %conv1184, 1
  br i1 %cmp1185, label %if.then1187, label %if.end1195

if.then1187:                                      ; preds = %land.lhs.true1181
  %784 = load i32, ptr %yyn, align 4
  %idxprom1188 = sext i32 %784 to i64
  %arrayidx1189 = getelementptr inbounds [421 x i16], ptr @yytable, i64 0, i64 %idxprom1188
  %785 = load i16, ptr %arrayidx1189, align 2
  %conv1190 = sext i16 %785 to i32
  store i32 %conv1190, ptr %yyn, align 4
  %786 = load i32, ptr %yyn, align 4
  %cmp1191 = icmp slt i32 0, %786
  br i1 %cmp1191, label %if.then1193, label %if.end1194

if.then1193:                                      ; preds = %if.then1187
  br label %for.end1213

if.end1194:                                       ; preds = %if.then1187
  br label %if.end1195

if.end1195:                                       ; preds = %if.end1194, %land.lhs.true1181, %land.lhs.true1178, %if.then1174
  br label %if.end1196

if.end1196:                                       ; preds = %if.end1195, %for.cond1168
  %787 = load ptr, ptr %yyssp, align 8
  %788 = load ptr, ptr %yyss, align 8
  %cmp1197 = icmp eq ptr %787, %788
  br i1 %cmp1197, label %if.then1199, label %if.end1200

if.then1199:                                      ; preds = %if.end1196
  br label %yyabortlab

if.end1200:                                       ; preds = %if.end1196
  %789 = load i32, ptr %yystate, align 4
  %idxprom1201 = sext i32 %789 to i64
  %arrayidx1202 = getelementptr inbounds [276 x i8], ptr @yystos, i64 0, i64 %idxprom1201
  %790 = load i8, ptr %arrayidx1202, align 1
  %conv1203 = zext i8 %790 to i32
  %791 = load ptr, ptr %yyvsp, align 8
  call void @yydestruct(ptr noundef @.str.46, i32 noundef %conv1203, ptr noundef %791)
  %792 = load ptr, ptr %yyvsp, align 8
  %add.ptr1204 = getelementptr inbounds %union.YYSTYPE, ptr %792, i64 -1
  store ptr %add.ptr1204, ptr %yyvsp, align 8
  %793 = load ptr, ptr %yyssp, align 8
  %add.ptr1205 = getelementptr inbounds i16, ptr %793, i64 -1
  store ptr %add.ptr1205, ptr %yyssp, align 8
  %794 = load ptr, ptr %yyssp, align 8
  %795 = load i16, ptr %794, align 2
  %conv1206 = sext i16 %795 to i32
  store i32 %conv1206, ptr %yystate, align 4
  br label %do.body1207

do.body1207:                                      ; preds = %if.end1200
  %796 = load i32, ptr @ncgdebug, align 4
  %tobool1208 = icmp ne i32 %796, 0
  br i1 %tobool1208, label %if.then1209, label %if.end1210

if.then1209:                                      ; preds = %do.body1207
  %797 = load ptr, ptr %yyss, align 8
  %798 = load ptr, ptr %yyssp, align 8
  call void @yy_stack_print(ptr noundef %797, ptr noundef %798)
  br label %if.end1210

if.end1210:                                       ; preds = %if.then1209, %do.body1207
  br label %do.cond1211

do.cond1211:                                      ; preds = %if.end1210
  br label %do.end1212

do.end1212:                                       ; preds = %do.cond1211
  br label %for.cond1168

for.end1213:                                      ; preds = %if.then1193
  %799 = load ptr, ptr %yyvsp, align 8
  %incdec.ptr1214 = getelementptr inbounds %union.YYSTYPE, ptr %799, i32 1
  store ptr %incdec.ptr1214, ptr %yyvsp, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %incdec.ptr1214, ptr align 8 @ncglval, i64 8, i1 false)
  br label %do.body1215

do.body1215:                                      ; preds = %for.end1213
  %800 = load i32, ptr @ncgdebug, align 4
  %tobool1216 = icmp ne i32 %800, 0
  br i1 %tobool1216, label %if.then1217, label %if.end1223

if.then1217:                                      ; preds = %do.body1215
  %801 = load ptr, ptr @stderr, align 8
  %call1218 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %801, ptr noundef @.str.18, ptr noundef @.str.21)
  %802 = load ptr, ptr @stderr, align 8
  %803 = load i32, ptr %yyn, align 4
  %idxprom1219 = sext i32 %803 to i64
  %arrayidx1220 = getelementptr inbounds [276 x i8], ptr @yystos, i64 0, i64 %idxprom1219
  %804 = load i8, ptr %arrayidx1220, align 1
  %conv1221 = zext i8 %804 to i32
  %805 = load ptr, ptr %yyvsp, align 8
  call void @yy_symbol_print(ptr noundef %802, i32 noundef %conv1221, ptr noundef %805)
  %806 = load ptr, ptr @stderr, align 8
  %call1222 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %806, ptr noundef @.str.20)
  br label %if.end1223

if.end1223:                                       ; preds = %if.then1217, %do.body1215
  br label %do.cond1224

do.cond1224:                                      ; preds = %if.end1223
  br label %do.end1225

do.end1225:                                       ; preds = %do.cond1224
  %807 = load i32, ptr %yyn, align 4
  store i32 %807, ptr %yystate, align 4
  br label %yynewstate

yyacceptlab:                                      ; preds = %if.then78
  store i32 0, ptr %yyresult, align 4
  br label %yyreturn

yyabortlab:                                       ; preds = %cleanup865, %cleanup838, %cleanup802, %cleanup773, %cleanup762, %cleanup751, %cleanup625, %cleanup72, %if.then1199, %if.then1150, %if.then181
  store i32 1, ptr %yyresult, align 4
  br label %yyreturn

yyexhaustedlab:                                   ; preds = %cleanup1136, %cleanup72
  call void (ptr, ...) @ncgerror(ptr noundef @.str.47)
  store i32 2, ptr %yyresult, align 4
  br label %yyreturn

yyreturn:                                         ; preds = %yyexhaustedlab, %yyabortlab, %yyacceptlab
  %808 = load i32, ptr @ncgchar, align 4
  %cmp1226 = icmp ne i32 %808, -2
  br i1 %cmp1226, label %if.then1228, label %if.end1241

if.then1228:                                      ; preds = %yyreturn
  %809 = load i32, ptr @ncgchar, align 4
  %cmp1229 = icmp sle i32 0, %809
  br i1 %cmp1229, label %land.lhs.true1231, label %cond.false1238

land.lhs.true1231:                                ; preds = %if.then1228
  %810 = load i32, ptr @ncgchar, align 4
  %cmp1232 = icmp sle i32 %810, 314
  br i1 %cmp1232, label %cond.true1234, label %cond.false1238

cond.true1234:                                    ; preds = %land.lhs.true1231
  %811 = load i32, ptr @ncgchar, align 4
  %idxprom1235 = sext i32 %811 to i64
  %arrayidx1236 = getelementptr inbounds [315 x i8], ptr @yytranslate, i64 0, i64 %idxprom1235
  %812 = load i8, ptr %arrayidx1236, align 1
  %conv1237 = sext i8 %812 to i32
  br label %cond.end1239

cond.false1238:                                   ; preds = %land.lhs.true1231, %if.then1228
  br label %cond.end1239

cond.end1239:                                     ; preds = %cond.false1238, %cond.true1234
  %cond1240 = phi i32 [ %conv1237, %cond.true1234 ], [ 2, %cond.false1238 ]
  store i32 %cond1240, ptr %yytoken, align 4
  %813 = load i32, ptr %yytoken, align 4
  call void @yydestruct(ptr noundef @.str.48, i32 noundef %813, ptr noundef @ncglval)
  br label %if.end1241

if.end1241:                                       ; preds = %cond.end1239, %yyreturn
  %814 = load i32, ptr %yylen, align 4
  %815 = load ptr, ptr %yyvsp, align 8
  %idx.ext1242 = sext i32 %814 to i64
  %idx.neg1243 = sub i64 0, %idx.ext1242
  %add.ptr1244 = getelementptr inbounds %union.YYSTYPE, ptr %815, i64 %idx.neg1243
  store ptr %add.ptr1244, ptr %yyvsp, align 8
  %816 = load i32, ptr %yylen, align 4
  %817 = load ptr, ptr %yyssp, align 8
  %idx.ext1245 = sext i32 %816 to i64
  %idx.neg1246 = sub i64 0, %idx.ext1245
  %add.ptr1247 = getelementptr inbounds i16, ptr %817, i64 %idx.neg1246
  store ptr %add.ptr1247, ptr %yyssp, align 8
  br label %do.body1248

do.body1248:                                      ; preds = %if.end1241
  %818 = load i32, ptr @ncgdebug, align 4
  %tobool1249 = icmp ne i32 %818, 0
  br i1 %tobool1249, label %if.then1250, label %if.end1251

if.then1250:                                      ; preds = %do.body1248
  %819 = load ptr, ptr %yyss, align 8
  %820 = load ptr, ptr %yyssp, align 8
  call void @yy_stack_print(ptr noundef %819, ptr noundef %820)
  br label %if.end1251

if.end1251:                                       ; preds = %if.then1250, %do.body1248
  br label %do.cond1252

do.cond1252:                                      ; preds = %if.end1251
  br label %do.end1253

do.end1253:                                       ; preds = %do.cond1252
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end1253
  %821 = load ptr, ptr %yyssp, align 8
  %822 = load ptr, ptr %yyss, align 8
  %cmp1254 = icmp ne ptr %821, %822
  br i1 %cmp1254, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %823 = load ptr, ptr %yyssp, align 8
  %824 = load i16, ptr %823, align 2
  %conv1256 = sext i16 %824 to i32
  %idxprom1257 = sext i32 %conv1256 to i64
  %arrayidx1258 = getelementptr inbounds [276 x i8], ptr @yystos, i64 0, i64 %idxprom1257
  %825 = load i8, ptr %arrayidx1258, align 1
  %conv1259 = zext i8 %825 to i32
  %826 = load ptr, ptr %yyvsp, align 8
  call void @yydestruct(ptr noundef @.str.49, i32 noundef %conv1259, ptr noundef %826)
  %827 = load ptr, ptr %yyvsp, align 8
  %add.ptr1260 = getelementptr inbounds %union.YYSTYPE, ptr %827, i64 -1
  store ptr %add.ptr1260, ptr %yyvsp, align 8
  %828 = load ptr, ptr %yyssp, align 8
  %add.ptr1261 = getelementptr inbounds i16, ptr %828, i64 -1
  store ptr %add.ptr1261, ptr %yyssp, align 8
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  %829 = load ptr, ptr %yyss, align 8
  %arraydecay1262 = getelementptr inbounds [200 x i16], ptr %yyssa, i64 0, i64 0
  %cmp1263 = icmp ne ptr %829, %arraydecay1262
  br i1 %cmp1263, label %if.then1265, label %if.end1266

if.then1265:                                      ; preds = %while.end
  %830 = load ptr, ptr %yyss, align 8
  call void @free(ptr noundef %830) #13
  br label %if.end1266

if.end1266:                                       ; preds = %if.then1265, %while.end
  %831 = load ptr, ptr %yymsg, align 8
  %arraydecay1267 = getelementptr inbounds [128 x i8], ptr %yymsgbuf, i64 0, i64 0
  %cmp1268 = icmp ne ptr %831, %arraydecay1267
  br i1 %cmp1268, label %if.then1270, label %if.end1271

if.then1270:                                      ; preds = %if.end1266
  %832 = load ptr, ptr %yymsg, align 8
  call void @free(ptr noundef %832) #13
  br label %if.end1271

if.end1271:                                       ; preds = %if.then1270, %if.end1266
  %833 = load i32, ptr %yyresult, align 4
  store i32 %833, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup1272

cleanup1272:                                      ; preds = %if.end1271, %cleanup1136, %cleanup865, %cleanup838, %cleanup802, %cleanup773, %cleanup762, %cleanup751, %cleanup625, %cleanup72
  call void @llvm.lifetime.end.p0(i64 4, ptr %yylen) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %yymsg_alloc) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %yymsg) #13
  call void @llvm.lifetime.end.p0(i64 128, ptr %yymsgbuf) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %yyval) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %yytoken) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %yyresult) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %yyn) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %yyvsp) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %yyvs) #13
  call void @llvm.lifetime.end.p0(i64 1600, ptr %yyvsa) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %yyssp) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %yyss) #13
  call void @llvm.lifetime.end.p0(i64 400, ptr %yyssa) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %yystacksize) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %yyerrstatus) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %yystate) #13
  %834 = load i32, ptr %retval, align 4
  ret i32 %834
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind uwtable
define internal void @yy_stack_print(ptr noundef %yybottom, ptr noundef %yytop) #0 {
entry:
  %yybottom.addr = alloca ptr, align 8
  %yytop.addr = alloca ptr, align 8
  %yybot = alloca i32, align 4
  store ptr %yybottom, ptr %yybottom.addr, align 8
  store ptr %yytop, ptr %yytop.addr, align 8
  %0 = load ptr, ptr @stderr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.92)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %yybottom.addr, align 8
  %2 = load ptr, ptr %yytop.addr, align 8
  %cmp = icmp ule ptr %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %yybot) #13
  %3 = load ptr, ptr %yybottom.addr, align 8
  %4 = load i16, ptr %3, align 2
  %conv = sext i16 %4 to i32
  store i32 %conv, ptr %yybot, align 4
  %5 = load ptr, ptr @stderr, align 8
  %6 = load i32, ptr %yybot, align 4
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.93, i32 noundef %6)
  call void @llvm.lifetime.end.p0(i64 4, ptr %yybot) #13
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load ptr, ptr %yybottom.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %7, i32 1
  store ptr %incdec.ptr, ptr %yybottom.addr, align 8
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  %8 = load ptr, ptr @stderr, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.20)
  ret void
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare void @free(ptr noundef) #5

; Function Attrs: nounwind uwtable
define i32 @ncglex() #0 {
entry:
  %retval = alloca i32, align 4
  %yy_current_state = alloca i32, align 4
  %yy_cp = alloca ptr, align 8
  %yy_bp = alloca ptr, align 8
  %yy_act = alloca i32, align 4
  %yy_c = alloca i8, align 1
  %len = alloca i32, align 4
  %s = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %p = alloca ptr, align 8
  %len83 = alloca i32, align 4
  %__res = alloca i32, align 4
  %tmp = alloca i32, align 4
  %st = alloca ptr, align 8
  %c = alloca i32, align 4
  %p259 = alloca ptr, align 8
  %q = alloca ptr, align 8
  %id = alloca ptr, align 8
  %len300 = alloca i32, align 4
  %slen = alloca i32, align 4
  %stag = alloca ptr, align 8
  %tag = alloca i32, align 4
  %isneg = alloca i32, align 4
  %c322 = alloca i32, align 4
  %fail = alloca i32, align 4
  %nct = alloca i32, align 4
  %pos = alloca ptr, align 8
  %hasU = alloca i32, align 4
  %radix = alloca i32, align 4
  %c391 = alloca i32, align 4
  %token392 = alloca i32, align 4
  %slen393 = alloca i32, align 4
  %stag396 = alloca ptr, align 8
  %tag397 = alloca i32, align 4
  %hex = alloca ptr, align 8
  %xlen = alloca i32, align 4
  %hexdigit = alloca i32, align 4
  %oct = alloca i32, align 4
  %hex486 = alloca i32, align 4
  %yy_amount_of_matched_text = alloca i32, align 4
  %yy_next_state = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %yy_current_state) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %yy_cp) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %yy_bp) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %yy_act) #13
  %0 = load i32, ptr @yy_init, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end14, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, ptr @yy_init, align 4
  %1 = load i32, ptr @yy_start, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  store i32 1, ptr @yy_start, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %2 = load ptr, ptr @ncgin, align 8
  %tobool3 = icmp ne ptr %2, null
  br i1 %tobool3, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  %3 = load ptr, ptr @stdin, align 8
  store ptr %3, ptr @ncgin, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %4 = load ptr, ptr @ncgout, align 8
  %tobool6 = icmp ne ptr %4, null
  br i1 %tobool6, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end5
  %5 = load ptr, ptr @stdout, align 8
  store ptr %5, ptr @ncgout, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end5
  %6 = load ptr, ptr @yy_buffer_stack, align 8
  %tobool9 = icmp ne ptr %6, null
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end8
  %7 = load ptr, ptr @yy_buffer_stack, align 8
  %8 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %7, i64 %8
  %9 = load ptr, ptr %arrayidx, align 8
  %tobool10 = icmp ne ptr %9, null
  br i1 %tobool10, label %if.end13, label %if.then11

cond.false:                                       ; preds = %if.end8
  br i1 false, label %if.end13, label %if.then11

if.then11:                                        ; preds = %cond.false, %cond.true
  call void @ncgensure_buffer_stack()
  %10 = load ptr, ptr @ncgin, align 8
  %call = call ptr @ncg_create_buffer(ptr noundef %10, i32 noundef 16384)
  %11 = load ptr, ptr @yy_buffer_stack, align 8
  %12 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx12 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %call, ptr %arrayidx12, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %cond.false, %cond.true
  call void @ncg_load_buffer_state()
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %entry
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog598, %if.end14
  br label %while.body

while.body:                                       ; preds = %while.cond
  %13 = load ptr, ptr @yy_c_buf_p, align 8
  store ptr %13, ptr %yy_cp, align 8
  %14 = load i8, ptr @yy_hold_char, align 1
  %15 = load ptr, ptr %yy_cp, align 8
  store i8 %14, ptr %15, align 1
  %16 = load ptr, ptr %yy_cp, align 8
  store ptr %16, ptr %yy_bp, align 8
  %17 = load i32, ptr @yy_start, align 4
  store i32 %17, ptr %yy_current_state, align 4
  br label %yy_match

yy_match:                                         ; preds = %cleanup596, %while.body
  br label %do.body

do.body:                                          ; preds = %do.cond, %yy_match
  call void @llvm.lifetime.start.p0(i64 1, ptr %yy_c) #13
  %18 = load ptr, ptr %yy_cp, align 8
  %19 = load i8, ptr %18, align 1
  %idxprom = zext i8 %19 to i64
  %arrayidx15 = getelementptr inbounds [256 x i8], ptr @yy_ec, i64 0, i64 %idxprom
  %20 = load i8, ptr %arrayidx15, align 1
  store i8 %20, ptr %yy_c, align 1
  %21 = load i32, ptr %yy_current_state, align 4
  %idxprom16 = sext i32 %21 to i64
  %arrayidx17 = getelementptr inbounds [538 x i16], ptr @yy_accept, i64 0, i64 %idxprom16
  %22 = load i16, ptr %arrayidx17, align 2
  %tobool18 = icmp ne i16 %22, 0
  br i1 %tobool18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %do.body
  %23 = load i32, ptr %yy_current_state, align 4
  store i32 %23, ptr @yy_last_accepting_state, align 4
  %24 = load ptr, ptr %yy_cp, align 8
  store ptr %24, ptr @yy_last_accepting_cpos, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %do.body
  br label %while.cond21

while.cond21:                                     ; preds = %if.end38, %if.end20
  %25 = load i32, ptr %yy_current_state, align 4
  %idxprom22 = sext i32 %25 to i64
  %arrayidx23 = getelementptr inbounds [556 x i16], ptr @yy_base, i64 0, i64 %idxprom22
  %26 = load i16, ptr %arrayidx23, align 2
  %conv = sext i16 %26 to i32
  %27 = load i8, ptr %yy_c, align 1
  %conv24 = zext i8 %27 to i32
  %add = add nsw i32 %conv, %conv24
  %idxprom25 = sext i32 %add to i64
  %arrayidx26 = getelementptr inbounds [3204 x i16], ptr @yy_chk, i64 0, i64 %idxprom25
  %28 = load i16, ptr %arrayidx26, align 2
  %conv27 = sext i16 %28 to i32
  %29 = load i32, ptr %yy_current_state, align 4
  %cmp = icmp ne i32 %conv27, %29
  br i1 %cmp, label %while.body29, label %while.end

while.body29:                                     ; preds = %while.cond21
  %30 = load i32, ptr %yy_current_state, align 4
  %idxprom30 = sext i32 %30 to i64
  %arrayidx31 = getelementptr inbounds [556 x i16], ptr @yy_def, i64 0, i64 %idxprom30
  %31 = load i16, ptr %arrayidx31, align 2
  %conv32 = sext i16 %31 to i32
  store i32 %conv32, ptr %yy_current_state, align 4
  %32 = load i32, ptr %yy_current_state, align 4
  %cmp33 = icmp sge i32 %32, 538
  br i1 %cmp33, label %if.then35, label %if.end38

if.then35:                                        ; preds = %while.body29
  %33 = load i8, ptr %yy_c, align 1
  %idxprom36 = zext i8 %33 to i64
  %arrayidx37 = getelementptr inbounds [73 x i8], ptr @yy_meta, i64 0, i64 %idxprom36
  %34 = load i8, ptr %arrayidx37, align 1
  store i8 %34, ptr %yy_c, align 1
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %while.body29
  br label %while.cond21, !llvm.loop !16

while.end:                                        ; preds = %while.cond21
  %35 = load i32, ptr %yy_current_state, align 4
  %idxprom39 = sext i32 %35 to i64
  %arrayidx40 = getelementptr inbounds [556 x i16], ptr @yy_base, i64 0, i64 %idxprom39
  %36 = load i16, ptr %arrayidx40, align 2
  %conv41 = sext i16 %36 to i32
  %37 = load i8, ptr %yy_c, align 1
  %conv42 = zext i8 %37 to i32
  %add43 = add nsw i32 %conv41, %conv42
  %idxprom44 = sext i32 %add43 to i64
  %arrayidx45 = getelementptr inbounds [3204 x i16], ptr @yy_nxt, i64 0, i64 %idxprom44
  %38 = load i16, ptr %arrayidx45, align 2
  %conv46 = sext i16 %38 to i32
  store i32 %conv46, ptr %yy_current_state, align 4
  %39 = load ptr, ptr %yy_cp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %39, i32 1
  store ptr %incdec.ptr, ptr %yy_cp, align 8
  call void @llvm.lifetime.end.p0(i64 1, ptr %yy_c) #13
  br label %do.cond

do.cond:                                          ; preds = %while.end
  %40 = load i32, ptr %yy_current_state, align 4
  %idxprom47 = sext i32 %40 to i64
  %arrayidx48 = getelementptr inbounds [556 x i16], ptr @yy_base, i64 0, i64 %idxprom47
  %41 = load i16, ptr %arrayidx48, align 2
  %conv49 = sext i16 %41 to i32
  %cmp50 = icmp ne i32 %conv49, 3131
  br i1 %cmp50, label %do.body, label %do.end, !llvm.loop !17

do.end:                                           ; preds = %do.cond
  br label %yy_find_action

yy_find_action:                                   ; preds = %cleanup596, %sw.bb, %do.end
  %42 = load i32, ptr %yy_current_state, align 4
  %idxprom52 = sext i32 %42 to i64
  %arrayidx53 = getelementptr inbounds [538 x i16], ptr @yy_accept, i64 0, i64 %idxprom52
  %43 = load i16, ptr %arrayidx53, align 2
  %conv54 = sext i16 %43 to i32
  store i32 %conv54, ptr %yy_act, align 4
  %44 = load i32, ptr %yy_act, align 4
  %cmp55 = icmp eq i32 %44, 0
  br i1 %cmp55, label %if.then57, label %if.end61

if.then57:                                        ; preds = %yy_find_action
  %45 = load ptr, ptr @yy_last_accepting_cpos, align 8
  store ptr %45, ptr %yy_cp, align 8
  %46 = load i32, ptr @yy_last_accepting_state, align 4
  store i32 %46, ptr %yy_current_state, align 4
  %47 = load i32, ptr %yy_current_state, align 4
  %idxprom58 = sext i32 %47 to i64
  %arrayidx59 = getelementptr inbounds [538 x i16], ptr @yy_accept, i64 0, i64 %idxprom58
  %48 = load i16, ptr %arrayidx59, align 2
  %conv60 = sext i16 %48 to i32
  store i32 %conv60, ptr %yy_act, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then57, %yy_find_action
  %49 = load ptr, ptr %yy_bp, align 8
  store ptr %49, ptr @ncgtext, align 8
  %50 = load ptr, ptr %yy_cp, align 8
  %51 = load ptr, ptr %yy_bp, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %50 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %51 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv62 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv62, ptr @ncgleng, align 4
  %52 = load ptr, ptr %yy_cp, align 8
  %53 = load i8, ptr %52, align 1
  store i8 %53, ptr @yy_hold_char, align 1
  %54 = load ptr, ptr %yy_cp, align 8
  store i8 0, ptr %54, align 1
  %55 = load ptr, ptr %yy_cp, align 8
  store ptr %55, ptr @yy_c_buf_p, align 8
  br label %do_action

do_action:                                        ; preds = %cleanup596, %if.end61
  %56 = load i32, ptr %yy_act, align 4
  switch i32 %56, label %sw.default597 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb63
    i32 2, label %sw.bb64
    i32 3, label %sw.bb65
    i32 4, label %sw.bb81
    i32 5, label %sw.bb114
    i32 6, label %sw.bb116
    i32 7, label %sw.bb118
    i32 8, label %sw.bb120
    i32 9, label %sw.bb122
    i32 10, label %sw.bb124
    i32 11, label %sw.bb126
    i32 12, label %sw.bb128
    i32 13, label %sw.bb130
    i32 14, label %sw.bb132
    i32 15, label %sw.bb135
    i32 16, label %sw.bb138
    i32 17, label %sw.bb141
    i32 18, label %sw.bb144
    i32 19, label %sw.bb147
    i32 20, label %sw.bb150
    i32 21, label %sw.bb152
    i32 22, label %sw.bb154
    i32 23, label %sw.bb156
    i32 24, label %sw.bb159
    i32 25, label %sw.bb162
    i32 26, label %sw.bb164
    i32 27, label %sw.bb166
    i32 28, label %sw.bb168
    i32 29, label %sw.bb170
    i32 30, label %sw.bb172
    i32 31, label %sw.bb174
    i32 32, label %sw.bb176
    i32 33, label %sw.bb184
    i32 34, label %sw.bb186
    i32 35, label %sw.bb195
    i32 36, label %sw.bb197
    i32 37, label %sw.bb205
    i32 38, label %sw.bb226
    i32 39, label %sw.bb258
    i32 40, label %sw.bb299
    i32 41, label %sw.bb319
    i32 42, label %sw.bb390
    i32 43, label %sw.bb454
    i32 44, label %sw.bb462
    i32 45, label %sw.bb470
    i32 46, label %sw.bb474
    i32 47, label %sw.bb485
    i32 48, label %sw.bb498
    i32 49, label %sw.bb516
    i32 50, label %sw.bb517
    i32 51, label %sw.bb518
    i32 52, label %sw.bb519
    i32 57, label %sw.bb520
    i32 53, label %sw.bb522
    i32 54, label %sw.bb526
    i32 56, label %sw.bb535
    i32 58, label %sw.bb535
    i32 55, label %sw.bb536
  ]

sw.bb:                                            ; preds = %do_action
  %57 = load i8, ptr @yy_hold_char, align 1
  %58 = load ptr, ptr %yy_cp, align 8
  store i8 %57, ptr %58, align 1
  %59 = load ptr, ptr @yy_last_accepting_cpos, align 8
  store ptr %59, ptr %yy_cp, align 8
  %60 = load i32, ptr @yy_last_accepting_state, align 4
  store i32 %60, ptr %yy_current_state, align 4
  br label %yy_find_action

sw.bb63:                                          ; preds = %do_action
  br label %sw.epilog598

sw.bb64:                                          ; preds = %do_action
  br label %sw.epilog598

sw.bb65:                                          ; preds = %do_action
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #13
  store ptr null, ptr %s, align 8
  %61 = load ptr, ptr @ncgtext, align 8
  %add.ptr = getelementptr inbounds i8, ptr %61, i64 1
  %62 = load i32, ptr @ncgleng, align 4
  %sub = sub nsw i32 %62, 2
  %call66 = call i32 @unescape(ptr noundef %add.ptr, i32 noundef %sub, i32 noundef 0, ptr noundef %s)
  store i32 %call66, ptr %len, align 4
  %63 = load i32, ptr %len, align 4
  %cmp67 = icmp slt i32 %63, 0
  br i1 %cmp67, label %if.then69, label %if.end71

if.then69:                                        ; preds = %sw.bb65
  %64 = load ptr, ptr @ncgtext, align 8
  %call70 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef @errstr, ptr noundef @.str.67, ptr noundef %64) #13
  call void (ptr, ...) @ncgerror(ptr noundef @errstr)
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %sw.bb65
  %65 = load ptr, ptr @lextext, align 8
  %tobool72 = icmp ne ptr %65, null
  br i1 %tobool72, label %cond.true73, label %cond.false74

cond.true73:                                      ; preds = %if.end71
  %66 = load ptr, ptr @lextext, align 8
  %length = getelementptr inbounds %struct.Bytebuffer, ptr %66, i32 0, i32 2
  store i32 0, ptr %length, align 8
  br label %cond.end

cond.false74:                                     ; preds = %if.end71
  br label %cond.end

cond.end:                                         ; preds = %cond.false74, %cond.true73
  %cond = phi i32 [ 0, %cond.true73 ], [ 0, %cond.false74 ]
  %67 = load ptr, ptr @lextext, align 8
  %68 = load ptr, ptr %s, align 8
  %69 = load i32, ptr %len, align 4
  %call75 = call i32 @bbAppendn(ptr noundef %67, ptr noundef %68, i32 noundef %69)
  %70 = load ptr, ptr @lextext, align 8
  %call76 = call i32 @bbNull(ptr noundef %70)
  %71 = load ptr, ptr %s, align 8
  %tobool77 = icmp ne ptr %71, null
  br i1 %tobool77, label %if.then78, label %if.end79

if.then78:                                        ; preds = %cond.end
  %72 = load ptr, ptr %s, align 8
  call void @chkfree(ptr noundef %72)
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %cond.end
  %call80 = call i32 @lexdebug(i32 noundef 272)
  store i32 %call80, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #13
  br label %cleanup599

sw.bb81:                                          ; preds = %do_action
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #13
  %73 = load ptr, ptr @ncgtext, align 8
  %add.ptr82 = getelementptr inbounds i8, ptr %73, i64 2
  store ptr %add.ptr82, ptr %p, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %len83) #13
  %74 = load i32, ptr @ncgleng, align 4
  %sub84 = sub nsw i32 %74, 2
  store i32 %sub84, ptr %len83, align 4
  %75 = load ptr, ptr @lextext, align 8
  %tobool85 = icmp ne ptr %75, null
  br i1 %tobool85, label %cond.true86, label %cond.false88

cond.true86:                                      ; preds = %sw.bb81
  %76 = load ptr, ptr @lextext, align 8
  %length87 = getelementptr inbounds %struct.Bytebuffer, ptr %76, i32 0, i32 2
  store i32 0, ptr %length87, align 8
  br label %cond.end89

cond.false88:                                     ; preds = %sw.bb81
  br label %cond.end89

cond.end89:                                       ; preds = %cond.false88, %cond.true86
  %cond90 = phi i32 [ 0, %cond.true86 ], [ 0, %cond.false88 ]
  %77 = load ptr, ptr @lextext, align 8
  %78 = load ptr, ptr %p, align 8
  %79 = load i32, ptr %len83, align 4
  %call91 = call i32 @bbAppendn(ptr noundef %77, ptr noundef %78, i32 noundef %79)
  %80 = load i32, ptr %len83, align 4
  %rem = srem i32 %80, 2
  %cmp92 = icmp eq i32 %rem, 1
  br i1 %cmp92, label %if.then94, label %if.end96

if.then94:                                        ; preds = %cond.end89
  %81 = load ptr, ptr @lextext, align 8
  %call95 = call i32 @bbAppend(ptr noundef %81, i8 noundef signext 48)
  br label %if.end96

if.end96:                                         ; preds = %if.then94, %cond.end89
  %82 = load ptr, ptr @lextext, align 8
  %call97 = call i32 @bbNull(ptr noundef %82)
  %83 = load ptr, ptr @lextext, align 8
  %tobool98 = icmp ne ptr %83, null
  br i1 %tobool98, label %land.lhs.true, label %cond.false102

land.lhs.true:                                    ; preds = %if.end96
  %84 = load ptr, ptr @lextext, align 8
  %content = getelementptr inbounds %struct.Bytebuffer, ptr %84, i32 0, i32 3
  %85 = load ptr, ptr %content, align 8
  %tobool99 = icmp ne ptr %85, null
  br i1 %tobool99, label %cond.true100, label %cond.false102

cond.true100:                                     ; preds = %land.lhs.true
  %86 = load ptr, ptr @lextext, align 8
  %content101 = getelementptr inbounds %struct.Bytebuffer, ptr %86, i32 0, i32 3
  %87 = load ptr, ptr %content101, align 8
  br label %cond.end103

cond.false102:                                    ; preds = %land.lhs.true, %if.end96
  br label %cond.end103

cond.end103:                                      ; preds = %cond.false102, %cond.true100
  %cond104 = phi ptr [ %87, %cond.true100 ], [ @.str.68, %cond.false102 ]
  store ptr %cond104, ptr %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end103
  %88 = load ptr, ptr %p, align 8
  %89 = load i8, ptr %88, align 1
  %conv105 = sext i8 %89 to i32
  %tobool106 = icmp ne i32 %conv105, 0
  br i1 %tobool106, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res) #13
  %call107 = call ptr @__ctype_tolower_loc() #17
  %90 = load ptr, ptr %call107, align 8
  %91 = load ptr, ptr %p, align 8
  %92 = load i8, ptr %91, align 1
  %conv108 = sext i8 %92 to i32
  %idxprom109 = sext i32 %conv108 to i64
  %arrayidx110 = getelementptr inbounds i32, ptr %90, i64 %idxprom109
  %93 = load i32, ptr %arrayidx110, align 4
  store i32 %93, ptr %__res, align 4
  %94 = load i32, ptr %__res, align 4
  store i32 %94, ptr %tmp, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res) #13
  %95 = load i32, ptr %tmp, align 4
  %conv111 = trunc i32 %95 to i8
  %96 = load ptr, ptr %p, align 8
  store i8 %conv111, ptr %96, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %97 = load ptr, ptr %p, align 8
  %incdec.ptr112 = getelementptr inbounds i8, ptr %97, i32 1
  store ptr %incdec.ptr112, ptr %p, align 8
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  %call113 = call i32 @lexdebug(i32 noundef 292)
  store i32 %call113, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %len83) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #13
  br label %cleanup599

sw.bb114:                                         ; preds = %do_action
  %call115 = call i32 @lexdebug(i32 noundef 289)
  store i32 %call115, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup599

sw.bb116:                                         ; preds = %do_action
  %call117 = call i32 @lexdebug(i32 noundef 290)
  store i32 %call117, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup599

sw.bb118:                                         ; preds = %do_action
  %call119 = call i32 @lexdebug(i32 noundef 291)
  store i32 %call119, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup599

sw.bb120:                                         ; preds = %do_action
  %call121 = call i32 @lexdebug(i32 noundef 263)
  store i32 %call121, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup599

sw.bb122:                                         ; preds = %do_action
  %call123 = call i32 @lexdebug(i32 noundef 264)
  store i32 %call123, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup599

sw.bb124:                                         ; preds = %do_action
  %call125 = call i32 @lexdebug(i32 noundef 259)
  store i32 %call125, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup599

sw.bb126:                                         ; preds = %do_action
  %call127 = call i32 @lexdebug(i32 noundef 260)
  store i32 %call127, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup599

sw.bb128:                                         ; preds = %do_action
  %call129 = call i32 @lexdebug(i32 noundef 261)
  store i32 %call129, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup599

sw.bb130:                                         ; preds = %do_action
  %call131 = call i32 @lexdebug(i32 noundef 262)
  store i32 %call131, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup599

sw.bb132:                                         ; preds = %do_action
  %call133 = call i32 @identcheck(i32 noundef 265)
  %call134 = call i32 @lexdebug(i32 noundef %call133)
  store i32 %call134, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup599

sw.bb135:                                         ; preds = %do_action
  %call136 = call i32 @identcheck(i32 noundef 266)
  %call137 = call i32 @lexdebug(i32 noundef %call136)
  store i32 %call137, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup599

sw.bb138:                                         ; preds = %do_action
  %call139 = call i32 @identcheck(i32 noundef 267)
  %call140 = call i32 @lexdebug(i32 noundef %call139)
  store i32 %call140, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup599

sw.bb141:                                         ; preds = %do_action
  %call142 = call i32 @identcheck(i32 noundef 268)
  %call143 = call i32 @lexdebug(i32 noundef %call142)
  store i32 %call143, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup599

sw.bb144:                                         ; preds = %do_action
  %call145 = call i32 @identcheck(i32 noundef 269)
  %call146 = call i32 @lexdebug(i32 noundef %call145)
  store i32 %call146, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup599

sw.bb147:                                         ; preds = %do_action
  %call148 = call i32 @identcheck(i32 noundef 270)
  %call149 = call i32 @lexdebug(i32 noundef %call148)
  store i32 %call149, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup599

sw.bb150:                                         ; preds = %do_action
  %call151 = call i32 @lexdebug(i32 noundef 263)
  store i32 %call151, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup599

sw.bb152:                                         ; preds = %do_action
  %call153 = call i32 @lexdebug(i32 noundef 262)
  store i32 %call153, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup599

sw.bb154:                                         ; preds = %do_action
  %call155 = call i32 @lexdebug(i32 noundef 262)
  store i32 %call155, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup599

sw.bb156:                                         ; preds = %do_action
  %call157 = call i32 @identcheck(i32 noundef 267)
  %call158 = call i32 @lexdebug(i32 noundef %call157)
  store i32 %call158, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup599

sw.bb159:                                         ; preds = %do_action
  %call160 = call i32 @identcheck(i32 noundef 267)
  %call161 = call i32 @lexdebug(i32 noundef %call160)
  store i32 %call161, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup599

sw.bb162:                                         ; preds = %do_action
  store i32 -1, ptr @int32_val, align 4
  %call163 = call i32 @lexdebug(i32 noundef 258)
  store i32 %call163, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup599

sw.bb164:                                         ; preds = %do_action
  %call165 = call i32 @lexdebug(i32 noundef 288)
  store i32 %call165, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup599

sw.bb166:                                         ; preds = %do_action
  %call167 = call i32 @lexdebug(i32 noundef 284)
  store i32 %call167, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup599

sw.bb168:                                         ; preds = %do_action
  %call169 = call i32 @lexdebug(i32 noundef 285)
  store i32 %call169, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup599

sw.bb170:                                         ; preds = %do_action
  %call171 = call i32 @lexdebug(i32 noundef 287)
  store i32 %call171, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup599

sw.bb172:                                         ; preds = %do_action
  %call173 = call i32 @lexdebug(i32 noundef 293)
  store i32 %call173, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup599

sw.bb174:                                         ; preds = %do_action
  store i32 5, ptr @yy_start, align 4
  %call175 = call i32 @lexdebug(i32 noundef 286)
  store i32 %call175, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup599

sw.bb176:                                         ; preds = %do_action
  %98 = load ptr, ptr @ncgtext, align 8
  %arrayidx177 = getelementptr inbounds i8, ptr %98, i64 0
  %99 = load i8, ptr %arrayidx177, align 1
  %conv178 = sext i8 %99 to i32
  %cmp179 = icmp eq i32 %conv178, 45
  br i1 %cmp179, label %if.then181, label %if.else

if.then181:                                       ; preds = %sw.bb176
  store double 0xFFF0000000000000, ptr @double_val, align 8
  br label %if.end182

if.else:                                          ; preds = %sw.bb176
  store double 0x7FF0000000000000, ptr @double_val, align 8
  br label %if.end182

if.end182:                                        ; preds = %if.else, %if.then181
  store i32 1, ptr @specialconstants, align 4
  %call183 = call i32 @lexdebug(i32 noundef 283)
  store i32 %call183, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup599

sw.bb184:                                         ; preds = %do_action
  store double 0x7FF8000000000000, ptr @double_val, align 8
  store i32 1, ptr @specialconstants, align 4
  %call185 = call i32 @lexdebug(i32 noundef 283)
  store i32 %call185, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup599

sw.bb186:                                         ; preds = %do_action
  %100 = load ptr, ptr @ncgtext, align 8
  %arrayidx187 = getelementptr inbounds i8, ptr %100, i64 0
  %101 = load i8, ptr %arrayidx187, align 1
  %conv188 = sext i8 %101 to i32
  %cmp189 = icmp eq i32 %conv188, 45
  br i1 %cmp189, label %if.then191, label %if.else192

if.then191:                                       ; preds = %sw.bb186
  store float 0xFFF0000000000000, ptr @float_val, align 4
  br label %if.end193

if.else192:                                       ; preds = %sw.bb186
  store float 0x7FF0000000000000, ptr @float_val, align 4
  br label %if.end193

if.end193:                                        ; preds = %if.else192, %if.then191
  store i32 1, ptr @specialconstants, align 4
  %call194 = call i32 @lexdebug(i32 noundef 282)
  store i32 %call194, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup599

sw.bb195:                                         ; preds = %do_action
  store float 0x7FF8000000000000, ptr @float_val, align 4
  store i32 1, ptr @specialconstants, align 4
  %call196 = call i32 @lexdebug(i32 noundef 282)
  store i32 %call196, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup599

sw.bb197:                                         ; preds = %do_action
  %102 = load i32, ptr @l_flag, align 4
  %cmp198 = icmp eq i32 %102, 2
  br i1 %cmp198, label %if.then202, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb197
  %103 = load i32, ptr @l_flag, align 4
  %cmp200 = icmp eq i32 %103, 1
  br i1 %cmp200, label %if.then202, label %if.end204

if.then202:                                       ; preds = %lor.lhs.false, %sw.bb197
  %call203 = call i32 @lexdebug(i32 noundef 296)
  store i32 %call203, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup599

if.end204:                                        ; preds = %lor.lhs.false
  call void (ptr, ...) @ncgerror(ptr noundef @.str.69)
  br label %sw.bb205

sw.bb205:                                         ; preds = %do_action, %if.end204
  %104 = load ptr, ptr @lextext, align 8
  %tobool206 = icmp ne ptr %104, null
  br i1 %tobool206, label %cond.true207, label %cond.false209

cond.true207:                                     ; preds = %sw.bb205
  %105 = load ptr, ptr @lextext, align 8
  %length208 = getelementptr inbounds %struct.Bytebuffer, ptr %105, i32 0, i32 2
  store i32 0, ptr %length208, align 8
  br label %cond.end210

cond.false209:                                    ; preds = %sw.bb205
  br label %cond.end210

cond.end210:                                      ; preds = %cond.false209, %cond.true207
  %cond211 = phi i32 [ 0, %cond.true207 ], [ 0, %cond.false209 ]
  %106 = load ptr, ptr @lextext, align 8
  %107 = load ptr, ptr @ncgtext, align 8
  %108 = load i32, ptr @ncgleng, align 4
  %add212 = add nsw i32 %108, 1
  %call213 = call i32 @bbAppendn(ptr noundef %106, ptr noundef %107, i32 noundef %add212)
  %109 = load ptr, ptr @lextext, align 8
  %call214 = call i32 @bbNull(ptr noundef %109)
  %110 = load ptr, ptr @lextext, align 8
  %tobool215 = icmp ne ptr %110, null
  br i1 %tobool215, label %land.lhs.true216, label %cond.false221

land.lhs.true216:                                 ; preds = %cond.end210
  %111 = load ptr, ptr @lextext, align 8
  %content217 = getelementptr inbounds %struct.Bytebuffer, ptr %111, i32 0, i32 3
  %112 = load ptr, ptr %content217, align 8
  %tobool218 = icmp ne ptr %112, null
  br i1 %tobool218, label %cond.true219, label %cond.false221

cond.true219:                                     ; preds = %land.lhs.true216
  %113 = load ptr, ptr @lextext, align 8
  %content220 = getelementptr inbounds %struct.Bytebuffer, ptr %113, i32 0, i32 3
  %114 = load ptr, ptr %content220, align 8
  br label %cond.end222

cond.false221:                                    ; preds = %land.lhs.true216, %cond.end210
  br label %cond.end222

cond.end222:                                      ; preds = %cond.false221, %cond.true219
  %cond223 = phi ptr [ %114, %cond.true219 ], [ @.str.68, %cond.false221 ]
  %call224 = call ptr @makepath(ptr noundef %cond223)
  store ptr %call224, ptr @ncglval, align 8
  %call225 = call i32 @lexdebug(i32 noundef 294)
  store i32 %call225, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup599

sw.bb226:                                         ; preds = %do_action
  call void @llvm.lifetime.start.p0(i64 8, ptr %st) #13
  %115 = load ptr, ptr @lextext, align 8
  %tobool227 = icmp ne ptr %115, null
  br i1 %tobool227, label %cond.true228, label %cond.false230

cond.true228:                                     ; preds = %sw.bb226
  %116 = load ptr, ptr @lextext, align 8
  %length229 = getelementptr inbounds %struct.Bytebuffer, ptr %116, i32 0, i32 2
  store i32 0, ptr %length229, align 8
  br label %cond.end231

cond.false230:                                    ; preds = %sw.bb226
  br label %cond.end231

cond.end231:                                      ; preds = %cond.false230, %cond.true228
  %cond232 = phi i32 [ 0, %cond.true228 ], [ 0, %cond.false230 ]
  %117 = load ptr, ptr @lextext, align 8
  %118 = load ptr, ptr @ncgtext, align 8
  %119 = load i32, ptr @ncgleng, align 4
  %add233 = add nsw i32 %119, 1
  %call234 = call i32 @bbAppendn(ptr noundef %117, ptr noundef %118, i32 noundef %add233)
  %120 = load ptr, ptr @lextext, align 8
  %call235 = call i32 @bbNull(ptr noundef %120)
  store ptr @specials, ptr %st, align 8
  br label %for.cond236

for.cond236:                                      ; preds = %for.inc255, %cond.end231
  %121 = load ptr, ptr %st, align 8
  %name = getelementptr inbounds %struct.Specialtoken, ptr %121, i32 0, i32 0
  %122 = load ptr, ptr %name, align 8
  %tobool237 = icmp ne ptr %122, null
  br i1 %tobool237, label %for.body238, label %for.end257

for.body238:                                      ; preds = %for.cond236
  %123 = load ptr, ptr @lextext, align 8
  %tobool239 = icmp ne ptr %123, null
  br i1 %tobool239, label %land.lhs.true240, label %cond.false245

land.lhs.true240:                                 ; preds = %for.body238
  %124 = load ptr, ptr @lextext, align 8
  %content241 = getelementptr inbounds %struct.Bytebuffer, ptr %124, i32 0, i32 3
  %125 = load ptr, ptr %content241, align 8
  %tobool242 = icmp ne ptr %125, null
  br i1 %tobool242, label %cond.true243, label %cond.false245

cond.true243:                                     ; preds = %land.lhs.true240
  %126 = load ptr, ptr @lextext, align 8
  %content244 = getelementptr inbounds %struct.Bytebuffer, ptr %126, i32 0, i32 3
  %127 = load ptr, ptr %content244, align 8
  br label %cond.end246

cond.false245:                                    ; preds = %land.lhs.true240, %for.body238
  br label %cond.end246

cond.end246:                                      ; preds = %cond.false245, %cond.true243
  %cond247 = phi ptr [ %127, %cond.true243 ], [ @.str.68, %cond.false245 ]
  %128 = load ptr, ptr %st, align 8
  %name248 = getelementptr inbounds %struct.Specialtoken, ptr %128, i32 0, i32 0
  %129 = load ptr, ptr %name248, align 8
  %call249 = call i32 @strcmp(ptr noundef %cond247, ptr noundef %129) #16
  %cmp250 = icmp eq i32 %call249, 0
  br i1 %cmp250, label %if.then252, label %if.end254

if.then252:                                       ; preds = %cond.end246
  %130 = load ptr, ptr %st, align 8
  %token = getelementptr inbounds %struct.Specialtoken, ptr %130, i32 0, i32 1
  %131 = load i32, ptr %token, align 8
  %call253 = call i32 @lexdebug(i32 noundef %131)
  store i32 %call253, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end254:                                        ; preds = %cond.end246
  br label %for.inc255

for.inc255:                                       ; preds = %if.end254
  %132 = load ptr, ptr %st, align 8
  %incdec.ptr256 = getelementptr inbounds %struct.Specialtoken, ptr %132, i32 1
  store ptr %incdec.ptr256, ptr %st, align 8
  br label %for.cond236, !llvm.loop !19

for.end257:                                       ; preds = %for.cond236
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end257, %if.then252
  call void @llvm.lifetime.end.p0(i64 8, ptr %st) #13
  br label %cleanup599

sw.bb258:                                         ; preds = %do_action
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %p259) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #13
  %133 = load ptr, ptr @lextext, align 8
  %tobool260 = icmp ne ptr %133, null
  br i1 %tobool260, label %cond.true261, label %cond.false263

cond.true261:                                     ; preds = %sw.bb258
  %134 = load ptr, ptr @lextext, align 8
  %length262 = getelementptr inbounds %struct.Bytebuffer, ptr %134, i32 0, i32 2
  store i32 0, ptr %length262, align 8
  br label %cond.end264

cond.false263:                                    ; preds = %sw.bb258
  br label %cond.end264

cond.end264:                                      ; preds = %cond.false263, %cond.true261
  %cond265 = phi i32 [ 0, %cond.true261 ], [ 0, %cond.false263 ]
  %135 = load ptr, ptr @lextext, align 8
  %136 = load ptr, ptr @ncgtext, align 8
  %137 = load i32, ptr @ncgleng, align 4
  %add266 = add nsw i32 %137, 1
  %call267 = call i32 @bbAppendn(ptr noundef %135, ptr noundef %136, i32 noundef %add266)
  %138 = load ptr, ptr @lextext, align 8
  %call268 = call i32 @bbNull(ptr noundef %138)
  %139 = load ptr, ptr @lextext, align 8
  %tobool269 = icmp ne ptr %139, null
  br i1 %tobool269, label %land.lhs.true270, label %cond.false275

land.lhs.true270:                                 ; preds = %cond.end264
  %140 = load ptr, ptr @lextext, align 8
  %content271 = getelementptr inbounds %struct.Bytebuffer, ptr %140, i32 0, i32 3
  %141 = load ptr, ptr %content271, align 8
  %tobool272 = icmp ne ptr %141, null
  br i1 %tobool272, label %cond.true273, label %cond.false275

cond.true273:                                     ; preds = %land.lhs.true270
  %142 = load ptr, ptr @lextext, align 8
  %content274 = getelementptr inbounds %struct.Bytebuffer, ptr %142, i32 0, i32 3
  %143 = load ptr, ptr %content274, align 8
  br label %cond.end276

cond.false275:                                    ; preds = %land.lhs.true270, %cond.end264
  br label %cond.end276

cond.end276:                                      ; preds = %cond.false275, %cond.true273
  %cond277 = phi ptr [ %143, %cond.true273 ], [ @.str.68, %cond.false275 ]
  store ptr %cond277, ptr %p259, align 8
  %144 = load ptr, ptr %p259, align 8
  store ptr %144, ptr %q, align 8
  br label %while.cond278

while.cond278:                                    ; preds = %if.end288, %cond.end276
  %145 = load ptr, ptr %p259, align 8
  %incdec.ptr279 = getelementptr inbounds i8, ptr %145, i32 1
  store ptr %incdec.ptr279, ptr %p259, align 8
  %146 = load i8, ptr %145, align 1
  %conv280 = sext i8 %146 to i32
  store i32 %conv280, ptr %c, align 4
  %tobool281 = icmp ne i32 %conv280, 0
  br i1 %tobool281, label %while.body282, label %while.end289

while.body282:                                    ; preds = %while.cond278
  %147 = load i32, ptr %c, align 4
  %cmp283 = icmp sgt i32 %147, 32
  br i1 %cmp283, label %if.then285, label %if.end288

if.then285:                                       ; preds = %while.body282
  %148 = load i32, ptr %c, align 4
  %conv286 = trunc i32 %148 to i8
  %149 = load ptr, ptr %q, align 8
  %incdec.ptr287 = getelementptr inbounds i8, ptr %149, i32 1
  store ptr %incdec.ptr287, ptr %q, align 8
  store i8 %conv286, ptr %149, align 1
  br label %if.end288

if.end288:                                        ; preds = %if.then285, %while.body282
  br label %while.cond278, !llvm.loop !20

while.end289:                                     ; preds = %while.cond278
  %150 = load ptr, ptr %q, align 8
  store i8 0, ptr %150, align 1
  %151 = load ptr, ptr @datasetname, align 8
  %cmp290 = icmp eq ptr %151, null
  br i1 %cmp290, label %if.then292, label %if.end294

if.then292:                                       ; preds = %while.end289
  %152 = load ptr, ptr @lextext, align 8
  %call293 = call ptr @bbDup(ptr noundef %152)
  store ptr %call293, ptr @datasetname, align 8
  br label %if.end294

if.end294:                                        ; preds = %if.then292, %while.end289
  store i32 1, ptr @yy_start, align 4
  %call295 = call i32 @lexdebug(i32 noundef 314)
  store i32 %call295, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %p259) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #13
  br label %cleanup599

sw.bb299:                                         ; preds = %do_action
  call void @llvm.lifetime.start.p0(i64 8, ptr %id) #13
  store ptr null, ptr %id, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %len300) #13
  %153 = load ptr, ptr @ncgtext, align 8
  %call301 = call i64 @strlen(ptr noundef %153) #16
  %conv302 = trunc i64 %call301 to i32
  store i32 %conv302, ptr %len300, align 4
  %154 = load ptr, ptr @ncgtext, align 8
  %155 = load i32, ptr %len300, align 4
  %call303 = call i32 @unescape(ptr noundef %154, i32 noundef %155, i32 noundef 1, ptr noundef %id)
  store i32 %call303, ptr %len300, align 4
  %156 = load ptr, ptr %id, align 8
  %157 = load i8, ptr %156, align 1
  %conv304 = sext i8 %157 to i32
  %158 = load i8, ptr @.str.70, align 1
  %conv305 = sext i8 %158 to i32
  %cmp306 = icmp eq i32 %conv304, %conv305
  br i1 %cmp306, label %land.lhs.true308, label %if.end314

land.lhs.true308:                                 ; preds = %sw.bb299
  %159 = load ptr, ptr %id, align 8
  %call309 = call i32 @strcmp(ptr noundef %159, ptr noundef @.str.70) #16
  %cmp310 = icmp eq i32 %call309, 0
  br i1 %cmp310, label %if.then312, label %if.end314

if.then312:                                       ; preds = %land.lhs.true308
  %160 = load ptr, ptr %id, align 8
  call void @chkfree(ptr noundef %160)
  %call313 = call i32 @lexdebug(i32 noundef 295)
  store i32 %call313, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup317

if.end314:                                        ; preds = %land.lhs.true308, %sw.bb299
  %161 = load ptr, ptr %id, align 8
  %call315 = call ptr @install(ptr noundef %161)
  store ptr %call315, ptr @ncglval, align 8
  %162 = load ptr, ptr %id, align 8
  call void @chkfree(ptr noundef %162)
  %call316 = call i32 @lexdebug(i32 noundef 271)
  store i32 %call316, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup317

cleanup317:                                       ; preds = %if.end314, %if.then312
  call void @llvm.lifetime.end.p0(i64 4, ptr %len300) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %id) #13
  br label %cleanup599

sw.bb319:                                         ; preds = %do_action
  call void @llvm.lifetime.start.p0(i64 4, ptr %slen) #13
  %163 = load ptr, ptr @ncgtext, align 8
  %call320 = call i64 @strlen(ptr noundef %163) #16
  %conv321 = trunc i64 %call320 to i32
  store i32 %conv321, ptr %slen, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %stag) #13
  store ptr null, ptr %stag, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %tag) #13
  store i32 0, ptr %tag, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %isneg) #13
  store i32 0, ptr %isneg, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %c322) #13
  %164 = load ptr, ptr @ncgtext, align 8
  %arrayidx323 = getelementptr inbounds i8, ptr %164, i64 0
  %165 = load i8, ptr %arrayidx323, align 1
  %conv324 = sext i8 %165 to i32
  store i32 %conv324, ptr %c322, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %fail) #13
  store i32 0, ptr %fail, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nct) #13
  store i32 0, ptr %nct, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #13
  store ptr null, ptr %pos, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %hasU) #13
  store i32 0, ptr %hasU, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %radix) #13
  store i32 10, ptr %radix, align 4
  %166 = load ptr, ptr @ncgtext, align 8
  store ptr %166, ptr %pos, align 8
  %167 = load ptr, ptr %pos, align 8
  %call325 = call i32 @collecttag(ptr noundef %167, ptr noundef %stag)
  store i32 %call325, ptr %tag, align 4
  %168 = load i32, ptr %tag, align 4
  %cmp326 = icmp eq i32 %168, 0
  br i1 %cmp326, label %if.then328, label %if.end330

if.then328:                                       ; preds = %sw.bb319
  %169 = load ptr, ptr %stag, align 8
  %call329 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef @errstr, ptr noundef @.str.71, ptr noundef %169) #13
  call void (ptr, ...) @ncgerror(ptr noundef @errstr)
  br label %done

if.end330:                                        ; preds = %sw.bb319
  %170 = load ptr, ptr @ncgtext, align 8
  %171 = load i32, ptr %slen, align 4
  %conv331 = sext i32 %171 to i64
  %172 = load ptr, ptr %stag, align 8
  %call332 = call i64 @strlen(ptr noundef %172) #16
  %sub333 = sub i64 %conv331, %call332
  %arrayidx334 = getelementptr inbounds i8, ptr %170, i64 %sub333
  store i8 0, ptr %arrayidx334, align 1
  %173 = load i32, ptr %tag, align 4
  %call335 = call i32 @isuinttype(i32 noundef %173)
  store i32 %call335, ptr %hasU, align 4
  %174 = load i32, ptr %c322, align 4
  %cmp336 = icmp eq i32 %174, 45
  %conv337 = zext i1 %cmp336 to i32
  store i32 %conv337, ptr %isneg, align 4
  %175 = load i32, ptr %c322, align 4
  %cmp338 = icmp eq i32 %175, 45
  br i1 %cmp338, label %if.then343, label %lor.lhs.false340

lor.lhs.false340:                                 ; preds = %if.end330
  %176 = load i32, ptr %c322, align 4
  %cmp341 = icmp eq i32 %176, 43
  br i1 %cmp341, label %if.then343, label %if.end345

if.then343:                                       ; preds = %lor.lhs.false340, %if.end330
  %177 = load ptr, ptr %pos, align 8
  %incdec.ptr344 = getelementptr inbounds i8, ptr %177, i32 1
  store ptr %incdec.ptr344, ptr %pos, align 8
  br label %if.end345

if.end345:                                        ; preds = %if.then343, %lor.lhs.false340
  %178 = load ptr, ptr %pos, align 8
  %arrayidx346 = getelementptr inbounds i8, ptr %178, i64 0
  %179 = load i8, ptr %arrayidx346, align 1
  %conv347 = sext i8 %179 to i32
  store i32 %conv347, ptr %c322, align 4
  %180 = load i32, ptr %c322, align 4
  %cmp348 = icmp eq i32 %180, 48
  br i1 %cmp348, label %if.then350, label %if.else351

if.then350:                                       ; preds = %if.end345
  store i32 8, ptr %radix, align 4
  br label %if.end352

if.else351:                                       ; preds = %if.end345
  store i32 10, ptr %radix, align 4
  br label %if.end352

if.end352:                                        ; preds = %if.else351, %if.then350
  %181 = load i32, ptr %isneg, align 4
  %tobool353 = icmp ne i32 %181, 0
  br i1 %tobool353, label %land.lhs.true354, label %if.end358

land.lhs.true354:                                 ; preds = %if.end352
  %182 = load i32, ptr %hasU, align 4
  %tobool355 = icmp ne i32 %182, 0
  br i1 %tobool355, label %if.then356, label %if.end358

if.then356:                                       ; preds = %land.lhs.true354
  %183 = load ptr, ptr @ncgtext, align 8
  %call357 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef @errstr, ptr noundef @.str.72, ptr noundef %183) #13
  call void (ptr, ...) @ncgerror(ptr noundef @errstr)
  br label %done

if.end358:                                        ; preds = %land.lhs.true354, %if.end352
  %184 = load i32, ptr %radix, align 4
  %185 = load ptr, ptr %pos, align 8
  %call359 = call i64 @parseULL(i32 noundef %184, ptr noundef %185, ptr noundef %fail)
  store i64 %call359, ptr @uint64_val, align 8
  %186 = load i32, ptr %fail, align 4
  %tobool360 = icmp ne i32 %186, 0
  br i1 %tobool360, label %if.then361, label %if.end363

if.then361:                                       ; preds = %if.end358
  %187 = load ptr, ptr @ncgtext, align 8
  %call362 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef @errstr, ptr noundef @.str.73, ptr noundef %187) #13
  call void (ptr, ...) @ncgerror(ptr noundef @errstr)
  br label %done

if.end363:                                        ; preds = %if.end358
  %188 = load i64, ptr @uint64_val, align 8
  %189 = load i32, ptr %isneg, align 4
  %190 = load i32, ptr %hasU, align 4
  %call364 = call i32 @downconvert(i64 noundef %188, ptr noundef %tag, i32 noundef %189, i32 noundef %190)
  store i32 %call364, ptr %nct, align 4
  %191 = load i32, ptr @k_flag, align 4
  switch i32 %191, label %sw.epilog [
    i32 5, label %sw.bb365
    i32 3, label %sw.bb365
    i32 1, label %sw.bb368
    i32 2, label %sw.bb368
    i32 4, label %sw.bb368
  ]

sw.bb365:                                         ; preds = %if.end363, %if.end363
  %192 = load i32, ptr %nct, align 4
  %call366 = call i32 @nct2lexeme(i32 noundef %192)
  %call367 = call i32 @lexdebug(i32 noundef %call366)
  store i32 %call367, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup380

sw.bb368:                                         ; preds = %if.end363, %if.end363, %if.end363
  %193 = load i32, ptr %nct, align 4
  %cmp369 = icmp sgt i32 %193, 4
  br i1 %cmp369, label %if.then371, label %if.end373

if.then371:                                       ; preds = %sw.bb368
  %194 = load ptr, ptr @ncgtext, align 8
  %call372 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef @errstr, ptr noundef @.str.74, ptr noundef %194) #13
  call void (ptr, ...) @ncgerror(ptr noundef @errstr)
  br label %done

if.end373:                                        ; preds = %sw.bb368
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end373, %if.end363
  %195 = load i32, ptr %nct, align 4
  %196 = load i32, ptr %tag, align 4
  %call374 = call i32 @tagmatch(i32 noundef %195, i32 noundef %196)
  %tobool375 = icmp ne i32 %call374, 0
  br i1 %tobool375, label %if.end377, label %if.then376

if.then376:                                       ; preds = %sw.epilog
  %197 = load i32, ptr @lineno, align 4
  %198 = load ptr, ptr @ncgtext, align 8
  call void (i32, ptr, ...) @semwarn(i32 noundef %197, ptr noundef @.str.75, ptr noundef %198)
  br label %if.end377

if.end377:                                        ; preds = %if.then376, %sw.epilog
  %199 = load i32, ptr %nct, align 4
  %call378 = call i32 @nct2lexeme(i32 noundef %199)
  %call379 = call i32 @lexdebug(i32 noundef %call378)
  store i32 %call379, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup380

done:                                             ; preds = %if.then371, %if.then361, %if.then356, %if.then328
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup380

cleanup380:                                       ; preds = %done, %if.end377, %sw.bb365
  call void @llvm.lifetime.end.p0(i64 4, ptr %radix) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %hasU) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %nct) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %fail) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %c322) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %isneg) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %tag) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %stag) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %slen) #13
  br label %cleanup599

sw.bb390:                                         ; preds = %do_action
  call void @llvm.lifetime.start.p0(i64 4, ptr %c391) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %token392) #13
  store i32 0, ptr %token392, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %slen393) #13
  %200 = load ptr, ptr @ncgtext, align 8
  %call394 = call i64 @strlen(ptr noundef %200) #16
  %conv395 = trunc i64 %call394 to i32
  store i32 %conv395, ptr %slen393, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %stag396) #13
  store ptr null, ptr %stag396, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %tag397) #13
  store i32 0, ptr %tag397, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %hex) #13
  %201 = load ptr, ptr @ncgtext, align 8
  %add.ptr398 = getelementptr inbounds i8, ptr %201, i64 2
  store ptr %add.ptr398, ptr %hex, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %xlen) #13
  %202 = load i32, ptr %slen393, align 4
  %sub399 = sub nsw i32 %202, 3
  store i32 %sub399, ptr %xlen, align 4
  %203 = load ptr, ptr @ncgtext, align 8
  %204 = load i32, ptr %slen393, align 4
  %sub400 = sub nsw i32 %204, 1
  %idxprom401 = sext i32 %sub400 to i64
  %arrayidx402 = getelementptr inbounds i8, ptr %203, i64 %idxprom401
  store i8 0, ptr %arrayidx402, align 1
  %205 = load ptr, ptr @ncgtext, align 8
  %call403 = call i32 @collecttag(ptr noundef %205, ptr noundef %stag396)
  store i32 %call403, ptr %tag397, align 4
  %206 = load i32, ptr %tag397, align 4
  %cmp404 = icmp eq i32 %206, 0
  br i1 %cmp404, label %if.then406, label %if.end408

if.then406:                                       ; preds = %sw.bb390
  %207 = load ptr, ptr %stag396, align 8
  %call407 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef @errstr, ptr noundef @.str.71, ptr noundef %207) #13
  call void (ptr, ...) @ncgerror(ptr noundef @errstr)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup447

if.end408:                                        ; preds = %sw.bb390
  %208 = load ptr, ptr @ncgtext, align 8
  %209 = load i32, ptr %slen393, align 4
  %conv409 = sext i32 %209 to i64
  %210 = load ptr, ptr %stag396, align 8
  %call410 = call i64 @strlen(ptr noundef %210) #16
  %sub411 = sub i64 %conv409, %call410
  %arrayidx412 = getelementptr inbounds i8, ptr %208, i64 %sub411
  store i8 0, ptr %arrayidx412, align 1
  %211 = load i32, ptr %xlen, align 4
  %cmp413 = icmp sgt i32 %211, 16
  br i1 %cmp413, label %if.then415, label %if.end418

if.then415:                                       ; preds = %if.end408
  %212 = load i32, ptr %xlen, align 4
  %sub416 = sub nsw i32 %212, 16
  %213 = load ptr, ptr %hex, align 8
  %idx.ext = sext i32 %sub416 to i64
  %add.ptr417 = getelementptr inbounds i8, ptr %213, i64 %idx.ext
  store ptr %add.ptr417, ptr %hex, align 8
  br label %if.end418

if.end418:                                        ; preds = %if.then415, %if.end408
  store i64 0, ptr @uint64_val, align 8
  br label %while.cond419

while.cond419:                                    ; preds = %cond.end431, %if.end418
  %214 = load ptr, ptr %hex, align 8
  %incdec.ptr420 = getelementptr inbounds i8, ptr %214, i32 1
  store ptr %incdec.ptr420, ptr %hex, align 8
  %215 = load i8, ptr %214, align 1
  %conv421 = sext i8 %215 to i32
  store i32 %conv421, ptr %c391, align 4
  %tobool422 = icmp ne i32 %conv421, 0
  br i1 %tobool422, label %while.body423, label %while.end434

while.body423:                                    ; preds = %while.cond419
  call void @llvm.lifetime.start.p0(i64 4, ptr %hexdigit) #13
  %216 = load i32, ptr %c391, align 4
  %cmp424 = icmp sle i32 %216, 57
  br i1 %cmp424, label %cond.true426, label %cond.false428

cond.true426:                                     ; preds = %while.body423
  %217 = load i32, ptr %c391, align 4
  %sub427 = sub nsw i32 %217, 48
  br label %cond.end431

cond.false428:                                    ; preds = %while.body423
  %218 = load i32, ptr %c391, align 4
  %sub429 = sub nsw i32 %218, 97
  %add430 = add nsw i32 %sub429, 10
  br label %cond.end431

cond.end431:                                      ; preds = %cond.false428, %cond.true426
  %cond432 = phi i32 [ %sub427, %cond.true426 ], [ %add430, %cond.false428 ]
  store i32 %cond432, ptr %hexdigit, align 4
  %219 = load i64, ptr @uint64_val, align 8
  %shl = shl i64 %219, 4
  %220 = load i32, ptr %hexdigit, align 4
  %conv433 = zext i32 %220 to i64
  %or = or i64 %shl, %conv433
  store i64 %or, ptr @uint64_val, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr %hexdigit) #13
  br label %while.cond419, !llvm.loop !21

while.end434:                                     ; preds = %while.cond419
  %221 = load i32, ptr %tag397, align 4
  switch i32 %221, label %sw.default [
    i32 8, label %sw.bb435
    i32 9, label %sw.bb437
    i32 11, label %sw.bb438
  ]

sw.bb435:                                         ; preds = %while.end434
  %222 = load i64, ptr @uint64_val, align 8
  %conv436 = trunc i64 %222 to i16
  store i16 %conv436, ptr @uint16_val, align 2
  store i32 279, ptr %token392, align 4
  br label %sw.epilog445

sw.bb437:                                         ; preds = %while.end434
  store i32 280, ptr %token392, align 4
  br label %sw.epilog445

sw.bb438:                                         ; preds = %while.end434
  store i32 281, ptr %token392, align 4
  br label %sw.epilog445

sw.default:                                       ; preds = %while.end434
  %223 = load ptr, ptr @ncgtext, align 8
  %call439 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %223, ptr noundef @.str.76, ptr noundef @uint32_val) #13
  %cmp440 = icmp ne i32 %call439, 1
  br i1 %cmp440, label %if.then442, label %if.end444

if.then442:                                       ; preds = %sw.default
  %224 = load ptr, ptr @ncgtext, align 8
  %call443 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef @errstr, ptr noundef @.str.77, ptr noundef %224) #13
  call void (ptr, ...) @ncgerror(ptr noundef @errstr)
  br label %if.end444

if.end444:                                        ; preds = %if.then442, %sw.default
  store i32 280, ptr %token392, align 4
  br label %sw.epilog445

sw.epilog445:                                     ; preds = %if.end444, %sw.bb438, %sw.bb437, %sw.bb435
  %225 = load i32, ptr %token392, align 4
  %call446 = call i32 @lexdebug(i32 noundef %225)
  store i32 %call446, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup447

cleanup447:                                       ; preds = %sw.epilog445, %if.then406
  call void @llvm.lifetime.end.p0(i64 4, ptr %xlen) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %hex) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %tag397) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %stag396) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %slen393) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %token392) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %c391) #13
  br label %cleanup599

sw.bb454:                                         ; preds = %do_action
  %226 = load ptr, ptr @ncgtext, align 8
  %call455 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %226, ptr noundef @.str.78, ptr noundef @double_val) #13
  %cmp456 = icmp ne i32 %call455, 1
  br i1 %cmp456, label %if.then458, label %if.end460

if.then458:                                       ; preds = %sw.bb454
  %227 = load ptr, ptr @ncgtext, align 8
  %call459 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef @errstr, ptr noundef @.str.79, ptr noundef %227) #13
  call void (ptr, ...) @ncgerror(ptr noundef @errstr)
  br label %if.end460

if.end460:                                        ; preds = %if.then458, %sw.bb454
  %call461 = call i32 @lexdebug(i32 noundef 283)
  store i32 %call461, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup599

sw.bb462:                                         ; preds = %do_action
  %228 = load ptr, ptr @ncgtext, align 8
  %call463 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %228, ptr noundef @.str.80, ptr noundef @float_val) #13
  %cmp464 = icmp ne i32 %call463, 1
  br i1 %cmp464, label %if.then466, label %if.end468

if.then466:                                       ; preds = %sw.bb462
  %229 = load ptr, ptr @ncgtext, align 8
  %call467 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef @errstr, ptr noundef @.str.81, ptr noundef %229) #13
  call void (ptr, ...) @ncgerror(ptr noundef @errstr)
  br label %if.end468

if.end468:                                        ; preds = %if.then466, %sw.bb462
  %call469 = call i32 @lexdebug(i32 noundef 282)
  store i32 %call469, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup599

sw.bb470:                                         ; preds = %do_action
  %230 = load ptr, ptr @ncgtext, align 8
  %arrayidx471 = getelementptr inbounds i8, ptr %230, i64 1
  %call472 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %arrayidx471, ptr noundef @.str.82, ptr noundef @byte_val) #13
  %call473 = call i32 @lexdebug(i32 noundef 274)
  store i32 %call473, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup599

sw.bb474:                                         ; preds = %do_action
  call void @llvm.lifetime.start.p0(i64 4, ptr %oct) #13
  %231 = load ptr, ptr @ncgtext, align 8
  %arrayidx475 = getelementptr inbounds i8, ptr %231, i64 2
  %call476 = call i32 @unescapeoct(ptr noundef %arrayidx475)
  store i32 %call476, ptr %oct, align 4
  %232 = load i32, ptr %oct, align 4
  %cmp477 = icmp slt i32 %232, 0
  br i1 %cmp477, label %if.then479, label %if.end481

if.then479:                                       ; preds = %sw.bb474
  %233 = load ptr, ptr @ncgtext, align 8
  %call480 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef @errstr, ptr noundef @.str.83, ptr noundef %233) #13
  call void (ptr, ...) @ncgerror(ptr noundef @errstr)
  br label %if.end481

if.end481:                                        ; preds = %if.then479, %sw.bb474
  %234 = load i32, ptr %oct, align 4
  %conv482 = trunc i32 %234 to i8
  store i8 %conv482, ptr @byte_val, align 1
  %call483 = call i32 @lexdebug(i32 noundef 274)
  store i32 %call483, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %oct) #13
  br label %cleanup599

sw.bb485:                                         ; preds = %do_action
  call void @llvm.lifetime.start.p0(i64 4, ptr %hex486) #13
  %235 = load ptr, ptr @ncgtext, align 8
  %arrayidx487 = getelementptr inbounds i8, ptr %235, i64 3
  %call488 = call i32 @unescapehex(ptr noundef %arrayidx487)
  store i32 %call488, ptr %hex486, align 4
  %236 = load i8, ptr @byte_val, align 1
  %conv489 = sext i8 %236 to i32
  %cmp490 = icmp slt i32 %conv489, 0
  br i1 %cmp490, label %if.then492, label %if.end494

if.then492:                                       ; preds = %sw.bb485
  %237 = load ptr, ptr @ncgtext, align 8
  %call493 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef @errstr, ptr noundef @.str.84, ptr noundef %237) #13
  call void (ptr, ...) @ncgerror(ptr noundef @errstr)
  br label %if.end494

if.end494:                                        ; preds = %if.then492, %sw.bb485
  %238 = load i32, ptr %hex486, align 4
  %conv495 = trunc i32 %238 to i8
  store i8 %conv495, ptr @byte_val, align 1
  %call496 = call i32 @lexdebug(i32 noundef 274)
  store i32 %call496, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %hex486) #13
  br label %cleanup599

sw.bb498:                                         ; preds = %do_action
  %239 = load ptr, ptr @ncgtext, align 8
  %arrayidx499 = getelementptr inbounds i8, ptr %239, i64 2
  %240 = load i8, ptr %arrayidx499, align 1
  %conv500 = sext i8 %240 to i32
  switch i32 %conv500, label %sw.default512 [
    i32 97, label %sw.bb501
    i32 98, label %sw.bb502
    i32 102, label %sw.bb503
    i32 110, label %sw.bb504
    i32 114, label %sw.bb505
    i32 116, label %sw.bb506
    i32 118, label %sw.bb507
    i32 48, label %sw.bb508
    i32 92, label %sw.bb509
    i32 63, label %sw.bb510
    i32 39, label %sw.bb511
  ]

sw.bb501:                                         ; preds = %sw.bb498
  store i8 7, ptr @byte_val, align 1
  br label %sw.epilog514

sw.bb502:                                         ; preds = %sw.bb498
  store i8 8, ptr @byte_val, align 1
  br label %sw.epilog514

sw.bb503:                                         ; preds = %sw.bb498
  store i8 12, ptr @byte_val, align 1
  br label %sw.epilog514

sw.bb504:                                         ; preds = %sw.bb498
  store i8 10, ptr @byte_val, align 1
  br label %sw.epilog514

sw.bb505:                                         ; preds = %sw.bb498
  store i8 13, ptr @byte_val, align 1
  br label %sw.epilog514

sw.bb506:                                         ; preds = %sw.bb498
  store i8 9, ptr @byte_val, align 1
  br label %sw.epilog514

sw.bb507:                                         ; preds = %sw.bb498
  store i8 11, ptr @byte_val, align 1
  br label %sw.epilog514

sw.bb508:                                         ; preds = %sw.bb498
  store i8 0, ptr @byte_val, align 1
  br label %sw.epilog514

sw.bb509:                                         ; preds = %sw.bb498
  store i8 92, ptr @byte_val, align 1
  br label %sw.epilog514

sw.bb510:                                         ; preds = %sw.bb498
  store i8 127, ptr @byte_val, align 1
  br label %sw.epilog514

sw.bb511:                                         ; preds = %sw.bb498
  store i8 39, ptr @byte_val, align 1
  br label %sw.epilog514

sw.default512:                                    ; preds = %sw.bb498
  %241 = load ptr, ptr @ncgtext, align 8
  %arrayidx513 = getelementptr inbounds i8, ptr %241, i64 2
  %242 = load i8, ptr %arrayidx513, align 1
  store i8 %242, ptr @byte_val, align 1
  br label %sw.epilog514

sw.epilog514:                                     ; preds = %sw.default512, %sw.bb511, %sw.bb510, %sw.bb509, %sw.bb508, %sw.bb507, %sw.bb506, %sw.bb505, %sw.bb504, %sw.bb503, %sw.bb502, %sw.bb501
  %call515 = call i32 @lexdebug(i32 noundef 274)
  store i32 %call515, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup599

sw.bb516:                                         ; preds = %do_action
  %243 = load i32, ptr @lineno, align 4
  %inc = add nsw i32 %243, 1
  store i32 %inc, ptr @lineno, align 4
  br label %sw.epilog598

sw.bb517:                                         ; preds = %do_action
  store i32 3, ptr @yy_start, align 4
  br label %sw.epilog598

sw.bb518:                                         ; preds = %do_action
  br label %sw.epilog598

sw.bb519:                                         ; preds = %do_action
  store i32 1, ptr @yy_start, align 4
  br label %sw.epilog598

sw.bb520:                                         ; preds = %do_action
  %244 = load ptr, ptr @stderr, align 8
  %call521 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %244, ptr noundef @.str.85)
  store i32 1, ptr @yy_start, align 4
  br label %sw.epilog598

sw.bb522:                                         ; preds = %do_action
  %245 = load ptr, ptr @ncgtext, align 8
  %arrayidx523 = getelementptr inbounds i8, ptr %245, i64 0
  %246 = load i8, ptr %arrayidx523, align 1
  %conv524 = sext i8 %246 to i32
  %call525 = call i32 @lexdebug(i32 noundef %conv524)
  store i32 %call525, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup599

sw.bb526:                                         ; preds = %do_action
  br label %do.body527

do.body527:                                       ; preds = %sw.bb526
  %247 = load ptr, ptr @ncgtext, align 8
  %248 = load i32, ptr @ncgleng, align 4
  %conv528 = sext i32 %248 to i64
  %249 = load ptr, ptr @ncgout, align 8
  %call529 = call i64 @fwrite(ptr noundef %247, i64 noundef %conv528, i64 noundef 1, ptr noundef %249)
  %tobool530 = icmp ne i64 %call529, 0
  br i1 %tobool530, label %if.then531, label %if.end532

if.then531:                                       ; preds = %do.body527
  br label %if.end532

if.end532:                                        ; preds = %if.then531, %do.body527
  br label %do.cond533

do.cond533:                                       ; preds = %if.end532
  br label %do.end534

do.end534:                                        ; preds = %do.cond533
  br label %sw.bb535

sw.bb535:                                         ; preds = %do_action, %do_action, %do.end534
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup599

sw.bb536:                                         ; preds = %do_action
  call void @llvm.lifetime.start.p0(i64 4, ptr %yy_amount_of_matched_text) #13
  %250 = load ptr, ptr %yy_cp, align 8
  %251 = load ptr, ptr @ncgtext, align 8
  %sub.ptr.lhs.cast537 = ptrtoint ptr %250 to i64
  %sub.ptr.rhs.cast538 = ptrtoint ptr %251 to i64
  %sub.ptr.sub539 = sub i64 %sub.ptr.lhs.cast537, %sub.ptr.rhs.cast538
  %conv540 = trunc i64 %sub.ptr.sub539 to i32
  %sub541 = sub nsw i32 %conv540, 1
  store i32 %sub541, ptr %yy_amount_of_matched_text, align 4
  %252 = load i8, ptr @yy_hold_char, align 1
  %253 = load ptr, ptr %yy_cp, align 8
  store i8 %252, ptr %253, align 1
  %254 = load ptr, ptr @yy_buffer_stack, align 8
  %255 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx542 = getelementptr inbounds ptr, ptr %254, i64 %255
  %256 = load ptr, ptr %arrayidx542, align 8
  %yy_buffer_status = getelementptr inbounds %struct.yy_buffer_state, ptr %256, i32 0, i32 11
  %257 = load i32, ptr %yy_buffer_status, align 8
  %cmp543 = icmp eq i32 %257, 0
  br i1 %cmp543, label %if.then545, label %if.end550

if.then545:                                       ; preds = %sw.bb536
  %258 = load ptr, ptr @yy_buffer_stack, align 8
  %259 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx546 = getelementptr inbounds ptr, ptr %258, i64 %259
  %260 = load ptr, ptr %arrayidx546, align 8
  %yy_n_chars = getelementptr inbounds %struct.yy_buffer_state, ptr %260, i32 0, i32 4
  %261 = load i32, ptr %yy_n_chars, align 4
  store i32 %261, ptr @yy_n_chars, align 4
  %262 = load ptr, ptr @ncgin, align 8
  %263 = load ptr, ptr @yy_buffer_stack, align 8
  %264 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx547 = getelementptr inbounds ptr, ptr %263, i64 %264
  %265 = load ptr, ptr %arrayidx547, align 8
  %yy_input_file = getelementptr inbounds %struct.yy_buffer_state, ptr %265, i32 0, i32 0
  store ptr %262, ptr %yy_input_file, align 8
  %266 = load ptr, ptr @yy_buffer_stack, align 8
  %267 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx548 = getelementptr inbounds ptr, ptr %266, i64 %267
  %268 = load ptr, ptr %arrayidx548, align 8
  %yy_buffer_status549 = getelementptr inbounds %struct.yy_buffer_state, ptr %268, i32 0, i32 11
  store i32 1, ptr %yy_buffer_status549, align 8
  br label %if.end550

if.end550:                                        ; preds = %if.then545, %sw.bb536
  %269 = load ptr, ptr @yy_c_buf_p, align 8
  %270 = load ptr, ptr @yy_buffer_stack, align 8
  %271 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx551 = getelementptr inbounds ptr, ptr %270, i64 %271
  %272 = load ptr, ptr %arrayidx551, align 8
  %yy_ch_buf = getelementptr inbounds %struct.yy_buffer_state, ptr %272, i32 0, i32 1
  %273 = load ptr, ptr %yy_ch_buf, align 8
  %274 = load i32, ptr @yy_n_chars, align 4
  %idxprom552 = sext i32 %274 to i64
  %arrayidx553 = getelementptr inbounds i8, ptr %273, i64 %idxprom552
  %cmp554 = icmp ule ptr %269, %arrayidx553
  br i1 %cmp554, label %if.then556, label %if.else567

if.then556:                                       ; preds = %if.end550
  call void @llvm.lifetime.start.p0(i64 4, ptr %yy_next_state) #13
  %275 = load ptr, ptr @ncgtext, align 8
  %276 = load i32, ptr %yy_amount_of_matched_text, align 4
  %idx.ext557 = sext i32 %276 to i64
  %add.ptr558 = getelementptr inbounds i8, ptr %275, i64 %idx.ext557
  store ptr %add.ptr558, ptr @yy_c_buf_p, align 8
  %call559 = call i32 @yy_get_previous_state()
  store i32 %call559, ptr %yy_current_state, align 4
  %277 = load i32, ptr %yy_current_state, align 4
  %call560 = call i32 @yy_try_NUL_trans(i32 noundef %277)
  store i32 %call560, ptr %yy_next_state, align 4
  %278 = load ptr, ptr @ncgtext, align 8
  %add.ptr561 = getelementptr inbounds i8, ptr %278, i64 0
  store ptr %add.ptr561, ptr %yy_bp, align 8
  %279 = load i32, ptr %yy_next_state, align 4
  %tobool562 = icmp ne i32 %279, 0
  br i1 %tobool562, label %if.then563, label %if.else565

if.then563:                                       ; preds = %if.then556
  %280 = load ptr, ptr @yy_c_buf_p, align 8
  %incdec.ptr564 = getelementptr inbounds i8, ptr %280, i32 1
  store ptr %incdec.ptr564, ptr @yy_c_buf_p, align 8
  store ptr %incdec.ptr564, ptr %yy_cp, align 8
  %281 = load i32, ptr %yy_next_state, align 4
  store i32 %281, ptr %yy_current_state, align 4
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup566

if.else565:                                       ; preds = %if.then556
  %282 = load ptr, ptr @yy_c_buf_p, align 8
  store ptr %282, ptr %yy_cp, align 8
  store i32 9, ptr %cleanup.dest.slot, align 4
  br label %cleanup566

cleanup566:                                       ; preds = %if.else565, %if.then563
  call void @llvm.lifetime.end.p0(i64 4, ptr %yy_next_state) #13
  br label %cleanup596

if.else567:                                       ; preds = %if.end550
  %call568 = call i32 @yy_get_next_buffer()
  switch i32 %call568, label %sw.epilog594 [
    i32 1, label %sw.bb569
    i32 0, label %sw.bb582
    i32 2, label %sw.bb587
  ]

sw.bb569:                                         ; preds = %if.else567
  store i32 0, ptr @yy_did_buffer_switch_on_eof, align 4
  %call570 = call i32 @ncgwrap()
  %tobool571 = icmp ne i32 %call570, 0
  br i1 %tobool571, label %if.then572, label %if.else577

if.then572:                                       ; preds = %sw.bb569
  %283 = load ptr, ptr @ncgtext, align 8
  %add.ptr573 = getelementptr inbounds i8, ptr %283, i64 0
  store ptr %add.ptr573, ptr @yy_c_buf_p, align 8
  %284 = load i32, ptr @yy_start, align 4
  %sub574 = sub nsw i32 %284, 1
  %div = sdiv i32 %sub574, 2
  %add575 = add nsw i32 55, %div
  %add576 = add nsw i32 %add575, 1
  store i32 %add576, ptr %yy_act, align 4
  store i32 10, ptr %cleanup.dest.slot, align 4
  br label %cleanup596

if.else577:                                       ; preds = %sw.bb569
  %285 = load i32, ptr @yy_did_buffer_switch_on_eof, align 4
  %tobool578 = icmp ne i32 %285, 0
  br i1 %tobool578, label %if.end580, label %if.then579

if.then579:                                       ; preds = %if.else577
  %286 = load ptr, ptr @ncgin, align 8
  call void @ncgrestart(ptr noundef %286)
  br label %if.end580

if.end580:                                        ; preds = %if.then579, %if.else577
  br label %if.end581

if.end581:                                        ; preds = %if.end580
  br label %sw.epilog594

sw.bb582:                                         ; preds = %if.else567
  %287 = load ptr, ptr @ncgtext, align 8
  %288 = load i32, ptr %yy_amount_of_matched_text, align 4
  %idx.ext583 = sext i32 %288 to i64
  %add.ptr584 = getelementptr inbounds i8, ptr %287, i64 %idx.ext583
  store ptr %add.ptr584, ptr @yy_c_buf_p, align 8
  %call585 = call i32 @yy_get_previous_state()
  store i32 %call585, ptr %yy_current_state, align 4
  %289 = load ptr, ptr @yy_c_buf_p, align 8
  store ptr %289, ptr %yy_cp, align 8
  %290 = load ptr, ptr @ncgtext, align 8
  %add.ptr586 = getelementptr inbounds i8, ptr %290, i64 0
  store ptr %add.ptr586, ptr %yy_bp, align 8
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup596

sw.bb587:                                         ; preds = %if.else567
  %291 = load ptr, ptr @yy_buffer_stack, align 8
  %292 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx588 = getelementptr inbounds ptr, ptr %291, i64 %292
  %293 = load ptr, ptr %arrayidx588, align 8
  %yy_ch_buf589 = getelementptr inbounds %struct.yy_buffer_state, ptr %293, i32 0, i32 1
  %294 = load ptr, ptr %yy_ch_buf589, align 8
  %295 = load i32, ptr @yy_n_chars, align 4
  %idxprom590 = sext i32 %295 to i64
  %arrayidx591 = getelementptr inbounds i8, ptr %294, i64 %idxprom590
  store ptr %arrayidx591, ptr @yy_c_buf_p, align 8
  %call592 = call i32 @yy_get_previous_state()
  store i32 %call592, ptr %yy_current_state, align 4
  %296 = load ptr, ptr @yy_c_buf_p, align 8
  store ptr %296, ptr %yy_cp, align 8
  %297 = load ptr, ptr @ncgtext, align 8
  %add.ptr593 = getelementptr inbounds i8, ptr %297, i64 0
  store ptr %add.ptr593, ptr %yy_bp, align 8
  store i32 9, ptr %cleanup.dest.slot, align 4
  br label %cleanup596

sw.epilog594:                                     ; preds = %if.else567, %if.end581
  br label %if.end595

if.end595:                                        ; preds = %sw.epilog594
  store i32 11, ptr %cleanup.dest.slot, align 4
  br label %cleanup596

cleanup596:                                       ; preds = %if.end595, %sw.bb587, %sw.bb582, %if.then572, %cleanup566
  call void @llvm.lifetime.end.p0(i64 4, ptr %yy_amount_of_matched_text) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 4, label %yy_match
    i32 9, label %yy_find_action
    i32 10, label %do_action
    i32 11, label %sw.epilog598
  ]

sw.default597:                                    ; preds = %do_action
  call void @yy_fatal_error(ptr noundef @.str.86) #18
  unreachable

sw.epilog598:                                     ; preds = %cleanup596, %sw.bb520, %sw.bb519, %sw.bb518, %sw.bb517, %sw.bb516, %sw.bb64, %sw.bb63
  br label %while.cond

cleanup599:                                       ; preds = %sw.bb535, %sw.bb522, %sw.epilog514, %if.end494, %if.end481, %sw.bb470, %if.end468, %if.end460, %cleanup447, %cleanup380, %cleanup317, %if.end294, %cleanup, %cond.end222, %if.then202, %sw.bb195, %if.end193, %sw.bb184, %if.end182, %sw.bb174, %sw.bb172, %sw.bb170, %sw.bb168, %sw.bb166, %sw.bb164, %sw.bb162, %sw.bb159, %sw.bb156, %sw.bb154, %sw.bb152, %sw.bb150, %sw.bb147, %sw.bb144, %sw.bb141, %sw.bb138, %sw.bb135, %sw.bb132, %sw.bb130, %sw.bb128, %sw.bb126, %sw.bb124, %sw.bb122, %sw.bb120, %sw.bb118, %sw.bb116, %sw.bb114, %for.end, %if.end79
  call void @llvm.lifetime.end.p0(i64 4, ptr %yy_act) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %yy_bp) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %yy_cp) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %yy_current_state) #13
  %298 = load i32, ptr %retval, align 4
  ret i32 %298

unreachable:                                      ; preds = %cleanup596
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @yy_symbol_print(ptr noundef %yyo, i32 noundef %yykind, ptr noundef %yyvaluep) #0 {
entry:
  %yyo.addr = alloca ptr, align 8
  %yykind.addr = alloca i32, align 4
  %yyvaluep.addr = alloca ptr, align 8
  store ptr %yyo, ptr %yyo.addr, align 8
  store i32 %yykind, ptr %yykind.addr, align 4
  store ptr %yyvaluep, ptr %yyvaluep.addr, align 8
  %0 = load ptr, ptr %yyo.addr, align 8
  %1 = load i32, ptr %yykind.addr, align 4
  %cmp = icmp slt i32 %1, 69
  %2 = zext i1 %cmp to i64
  %cond = select i1 %cmp, ptr @.str.95, ptr @.str.96
  %3 = load i32, ptr %yykind.addr, align 4
  %call = call ptr @yysymbol_name(i32 noundef %3)
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.94, ptr noundef %cond, ptr noundef %call)
  %4 = load ptr, ptr %yyo.addr, align 8
  %5 = load i32, ptr %yykind.addr, align 4
  %6 = load ptr, ptr %yyvaluep.addr, align 8
  call void @yy_symbol_value_print(ptr noundef %4, i32 noundef %5, ptr noundef %6)
  %7 = load ptr, ptr %yyo.addr, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.97)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @yy_reduce_print(ptr noundef %yyssp, ptr noundef %yyvsp, i32 noundef %yyrule) #0 {
entry:
  %yyssp.addr = alloca ptr, align 8
  %yyvsp.addr = alloca ptr, align 8
  %yyrule.addr = alloca i32, align 4
  %yylno = alloca i32, align 4
  %yynrhs = alloca i32, align 4
  %yyi = alloca i32, align 4
  store ptr %yyssp, ptr %yyssp.addr, align 8
  store ptr %yyvsp, ptr %yyvsp.addr, align 8
  store i32 %yyrule, ptr %yyrule.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %yylno) #13
  %0 = load i32, ptr %yyrule.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [160 x i16], ptr @yyrline, i64 0, i64 %idxprom
  %1 = load i16, ptr %arrayidx, align 2
  %conv = sext i16 %1 to i32
  store i32 %conv, ptr %yylno, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %yynrhs) #13
  %2 = load i32, ptr %yyrule.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [160 x i8], ptr @yyr2, i64 0, i64 %idxprom1
  %3 = load i8, ptr %arrayidx2, align 1
  %conv3 = sext i8 %3 to i32
  store i32 %conv3, ptr %yynrhs, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %yyi) #13
  %4 = load ptr, ptr @stderr, align 8
  %5 = load i32, ptr %yyrule.addr, align 4
  %sub = sub nsw i32 %5, 1
  %6 = load i32, ptr %yylno, align 4
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.235, i32 noundef %sub, i32 noundef %6)
  store i32 0, ptr %yyi, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, ptr %yyi, align 4
  %8 = load i32, ptr %yynrhs, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr @stderr, align 8
  %10 = load i32, ptr %yyi, align 4
  %add = add nsw i32 %10, 1
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.236, i32 noundef %add)
  %11 = load ptr, ptr @stderr, align 8
  %12 = load ptr, ptr %yyssp.addr, align 8
  %13 = load i32, ptr %yyi, align 4
  %add6 = add nsw i32 %13, 1
  %14 = load i32, ptr %yynrhs, align 4
  %sub7 = sub nsw i32 %add6, %14
  %idxprom8 = sext i32 %sub7 to i64
  %arrayidx9 = getelementptr inbounds i16, ptr %12, i64 %idxprom8
  %15 = load i16, ptr %arrayidx9, align 2
  %conv10 = sext i16 %15 to i32
  %idxprom11 = sext i32 %conv10 to i64
  %arrayidx12 = getelementptr inbounds [276 x i8], ptr @yystos, i64 0, i64 %idxprom11
  %16 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %16 to i32
  %17 = load ptr, ptr %yyvsp.addr, align 8
  %18 = load i32, ptr %yyi, align 4
  %add14 = add nsw i32 %18, 1
  %19 = load i32, ptr %yynrhs, align 4
  %sub15 = sub nsw i32 %add14, %19
  %idxprom16 = sext i32 %sub15 to i64
  %arrayidx17 = getelementptr inbounds %union.YYSTYPE, ptr %17, i64 %idxprom16
  call void @yy_symbol_print(ptr noundef %11, i32 noundef %conv13, ptr noundef %arrayidx17)
  %20 = load ptr, ptr @stderr, align 8
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.20)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, ptr %yyi, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, ptr %yyi, align 4
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %yyi) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %yynrhs) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %yylno) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @createrootgroup(ptr noundef %dataset) #0 {
entry:
  %dataset.addr = alloca ptr, align 8
  %gsym = alloca ptr, align 8
  store ptr %dataset, ptr %dataset.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %gsym) #13
  %0 = load ptr, ptr %dataset.addr, align 8
  %call = call ptr @install(ptr noundef %0)
  store ptr %call, ptr %gsym, align 8
  %1 = load ptr, ptr %gsym, align 8
  %objectclass = getelementptr inbounds %struct.Symbol, ptr %1, i32 0, i32 0
  store i32 100, ptr %objectclass, align 8
  %2 = load ptr, ptr %gsym, align 8
  %container = getelementptr inbounds %struct.Symbol, ptr %2, i32 0, i32 4
  store ptr null, ptr %container, align 8
  %call1 = call ptr @listnew()
  %3 = load ptr, ptr %gsym, align 8
  %subnodes = getelementptr inbounds %struct.Symbol, ptr %3, i32 0, i32 6
  store ptr %call1, ptr %subnodes, align 8
  %4 = load ptr, ptr %gsym, align 8
  %grp = getelementptr inbounds %struct.Symbol, ptr %4, i32 0, i32 14
  %is_root = getelementptr inbounds %struct.Groupinfo, ptr %grp, i32 0, i32 0
  store i32 1, ptr %is_root, align 8
  %call2 = call ptr @listnew()
  %5 = load ptr, ptr %gsym, align 8
  %prefix = getelementptr inbounds %struct.Symbol, ptr %5, i32 0, i32 8
  store ptr %call2, ptr %prefix, align 8
  %6 = load ptr, ptr @grpdefs, align 8
  %7 = load ptr, ptr %gsym, align 8
  %call3 = call i32 @listpush(ptr noundef %6, ptr noundef %7)
  %8 = load ptr, ptr %gsym, align 8
  store ptr %8, ptr @rootgroup, align 8
  %9 = load ptr, ptr %gsym, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %gsym) #13
  ret ptr %9
}

declare void @markcdf4(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @creategroup(ptr noundef %gsym) #0 {
entry:
  %retval = alloca ptr, align 8
  %gsym.addr = alloca ptr, align 8
  store ptr %gsym, ptr %gsym.addr, align 8
  %0 = load ptr, ptr %gsym.addr, align 8
  %objectclass = getelementptr inbounds %struct.Symbol, ptr %0, i32 0, i32 0
  store i32 100, ptr %objectclass, align 8
  %1 = load ptr, ptr %gsym.addr, align 8
  %call = call i32 @dupobjectcheck(i32 noundef 100, ptr noundef %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %gsym.addr, align 8
  %name = getelementptr inbounds %struct.Symbol, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %name, align 8
  call void (ptr, ...) @derror(ptr noundef @.str.256, ptr noundef %3)
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %gsym.addr, align 8
  call void @addtogroup(ptr noundef %4)
  %call1 = call ptr @listnew()
  %5 = load ptr, ptr %gsym.addr, align 8
  %subnodes = getelementptr inbounds %struct.Symbol, ptr %5, i32 0, i32 6
  store ptr %call1, ptr %subnodes, align 8
  %6 = load ptr, ptr @groupstack, align 8
  %7 = load ptr, ptr %gsym.addr, align 8
  %call2 = call i32 @listpush(ptr noundef %6, ptr noundef %7)
  %8 = load ptr, ptr @grpdefs, align 8
  %9 = load ptr, ptr %gsym.addr, align 8
  %call3 = call i32 @listpush(ptr noundef %8, ptr noundef %9)
  %10 = load ptr, ptr %gsym.addr, align 8
  store ptr %10, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load ptr, ptr %retval, align 8
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define internal void @ncgerror(ptr noundef %fmt, ...) #0 {
entry:
  %fmt.addr = alloca ptr, align 8
  %argv = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr %argv) #13
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %argv, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %arraydecay)
  %0 = load ptr, ptr @stderr, align 8
  %1 = load ptr, ptr @progname, align 8
  %2 = load ptr, ptr @cdlname, align 8
  %3 = load i32, ptr @lineno, align 4
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.243, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  %4 = load ptr, ptr %fmt.addr, align 8
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %argv, i64 0, i64 0
  call void @vderror(ptr noundef %4, ptr noundef %arraydecay1)
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %argv, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %arraydecay2)
  call void @llvm.lifetime.end.p0(i64 24, ptr %argv) #13
  ret void
}

declare ptr @listpop(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @dupobjectcheck(i32 noundef %objectclass, ptr noundef %pattern) #0 {
entry:
  %retval = alloca i32, align 4
  %objectclass.addr = alloca i32, align 4
  %pattern.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %grp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %sym = alloca ptr, align 8
  store i32 %objectclass, ptr %objectclass.addr, align 4
  store ptr %pattern, ptr %pattern.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %grp) #13
  %0 = load ptr, ptr %pattern.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup22

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pattern.addr, align 8
  %container = getelementptr inbounds %struct.Symbol, ptr %1, i32 0, i32 4
  %2 = load ptr, ptr %container, align 8
  store ptr %2, ptr %grp, align 8
  %3 = load ptr, ptr %grp, align 8
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load ptr, ptr %grp, align 8
  %subnodes = getelementptr inbounds %struct.Symbol, ptr %4, i32 0, i32 6
  %5 = load ptr, ptr %subnodes, align 8
  %cmp2 = icmp eq ptr %5, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup22

if.end4:                                          ; preds = %lor.lhs.false
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end4
  %6 = load i32, ptr %i, align 4
  %7 = load ptr, ptr %grp, align 8
  %subnodes5 = getelementptr inbounds %struct.Symbol, ptr %7, i32 0, i32 6
  %8 = load ptr, ptr %subnodes5, align 8
  %cmp6 = icmp eq ptr %8, null
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %9 = load ptr, ptr %grp, align 8
  %subnodes7 = getelementptr inbounds %struct.Symbol, ptr %9, i32 0, i32 6
  %10 = load ptr, ptr %subnodes7, align 8
  %length = getelementptr inbounds %struct.List, ptr %10, i32 0, i32 1
  %11 = load i64, ptr %length, align 8
  %conv = trunc i64 %11 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp8 = icmp slt i32 %6, %cond
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %sym) #13
  %12 = load ptr, ptr %grp, align 8
  %subnodes10 = getelementptr inbounds %struct.Symbol, ptr %12, i32 0, i32 6
  %13 = load ptr, ptr %subnodes10, align 8
  %14 = load i32, ptr %i, align 4
  %conv11 = sext i32 %14 to i64
  %call = call ptr @listget(ptr noundef %13, i64 noundef %conv11)
  store ptr %call, ptr %sym, align 8
  %15 = load ptr, ptr %sym, align 8
  %ref = getelementptr inbounds %struct.Symbol, ptr %15, i32 0, i32 16
  %is_ref = getelementptr inbounds %struct.Reference, ptr %ref, i32 0, i32 0
  %16 = load i32, ptr %is_ref, align 8
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.end21, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %17 = load ptr, ptr %sym, align 8
  %objectclass12 = getelementptr inbounds %struct.Symbol, ptr %17, i32 0, i32 0
  %18 = load i32, ptr %objectclass12, align 8
  %19 = load i32, ptr %objectclass.addr, align 4
  %cmp13 = icmp eq i32 %18, %19
  br i1 %cmp13, label %land.lhs.true15, label %if.end21

land.lhs.true15:                                  ; preds = %land.lhs.true
  %20 = load ptr, ptr %sym, align 8
  %name = getelementptr inbounds %struct.Symbol, ptr %20, i32 0, i32 2
  %21 = load ptr, ptr %name, align 8
  %22 = load ptr, ptr %pattern.addr, align 8
  %name16 = getelementptr inbounds %struct.Symbol, ptr %22, i32 0, i32 2
  %23 = load ptr, ptr %name16, align 8
  %call17 = call i32 @strcmp(ptr noundef %21, ptr noundef %23) #16
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %land.lhs.true15
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end21:                                         ; preds = %land.lhs.true15, %land.lhs.true, %for.body
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then20
  call void @llvm.lifetime.end.p0(i64 8, ptr %sym) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup22 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %24 = load i32, ptr %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !23

for.end:                                          ; preds = %cond.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup22

cleanup22:                                        ; preds = %for.end, %cleanup, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %grp) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

declare i32 @listpush(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @addtogroup(ptr noundef %sym) #0 {
entry:
  %sym.addr = alloca ptr, align 8
  %grp = alloca ptr, align 8
  store ptr %sym, ptr %sym.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %grp) #13
  %call = call ptr @currentgroup()
  store ptr %call, ptr %grp, align 8
  %0 = load ptr, ptr %grp, align 8
  %1 = load ptr, ptr %sym.addr, align 8
  %container = getelementptr inbounds %struct.Symbol, ptr %1, i32 0, i32 4
  store ptr %0, ptr %container, align 8
  %2 = load ptr, ptr %grp, align 8
  %subnodes = getelementptr inbounds %struct.Symbol, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %subnodes, align 8
  %4 = load ptr, ptr %sym.addr, align 8
  %call1 = call i32 @listpush(ptr noundef %3, ptr noundef %4)
  %5 = load ptr, ptr %sym.addr, align 8
  call void @setpathcurrent(ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 8, ptr %grp) #13
  ret void
}

declare ptr @listnew() #2

declare ptr @listget(ptr noundef, i64 noundef) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #6

declare i32 @listsetlength(ptr noundef, i64 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #7

; Function Attrs: nounwind uwtable
define internal void @vercheck(i32 noundef %tid) #0 {
entry:
  %tid.addr = alloca i32, align 4
  store i32 %tid, ptr %tid.addr, align 4
  %0 = load i32, ptr %tid.addr, align 4
  switch i32 %0, label %sw.default [
    i32 7, label %sw.bb
    i32 8, label %sw.bb1
    i32 9, label %sw.bb2
    i32 10, label %sw.bb3
    i32 11, label %sw.bb4
    i32 12, label %sw.bb5
    i32 13, label %sw.bb6
    i32 14, label %sw.bb7
    i32 15, label %sw.bb8
    i32 16, label %sw.bb9
  ]

sw.bb:                                            ; preds = %entry
  call void @markcdf4(ptr noundef @.str.290)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @markcdf4(ptr noundef @.str.291)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @markcdf4(ptr noundef @.str.292)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @markcdf4(ptr noundef @.str.293)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @markcdf4(ptr noundef @.str.294)
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @markcdf4(ptr noundef @.str.295)
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @markcdf4(ptr noundef @.str.296)
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @markcdf4(ptr noundef @.str.297)
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @markcdf4(ptr noundef @.str.298)
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @markcdf4(ptr noundef @.str.299)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  ret void
}

declare i32 @ncaux_class_alignment(i32 noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i64 @extractint(ptr noundef %con) #0 {
entry:
  %retval = alloca i64, align 8
  %con.addr = alloca ptr, align 8
  store ptr %con, ptr %con.addr, align 8
  %0 = load ptr, ptr %con.addr, align 8
  %nctype = getelementptr inbounds %struct.NCConstant, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %nctype, align 8
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb1
    i32 4, label %sw.bb4
    i32 7, label %sw.bb7
    i32 8, label %sw.bb10
    i32 9, label %sw.bb13
    i32 10, label %sw.bb16
  ]

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %con.addr, align 8
  %value = getelementptr inbounds %struct.NCConstant, ptr %2, i32 0, i32 3
  %3 = load i8, ptr %value, align 8
  %conv = sext i8 %3 to i64
  store i64 %conv, ptr %retval, align 8
  br label %return

sw.bb1:                                           ; preds = %entry
  %4 = load ptr, ptr %con.addr, align 8
  %value2 = getelementptr inbounds %struct.NCConstant, ptr %4, i32 0, i32 3
  %5 = load i16, ptr %value2, align 8
  %conv3 = sext i16 %5 to i64
  store i64 %conv3, ptr %retval, align 8
  br label %return

sw.bb4:                                           ; preds = %entry
  %6 = load ptr, ptr %con.addr, align 8
  %value5 = getelementptr inbounds %struct.NCConstant, ptr %6, i32 0, i32 3
  %7 = load i32, ptr %value5, align 8
  %conv6 = sext i32 %7 to i64
  store i64 %conv6, ptr %retval, align 8
  br label %return

sw.bb7:                                           ; preds = %entry
  %8 = load ptr, ptr %con.addr, align 8
  %value8 = getelementptr inbounds %struct.NCConstant, ptr %8, i32 0, i32 3
  %9 = load i8, ptr %value8, align 8
  %conv9 = zext i8 %9 to i64
  store i64 %conv9, ptr %retval, align 8
  br label %return

sw.bb10:                                          ; preds = %entry
  %10 = load ptr, ptr %con.addr, align 8
  %value11 = getelementptr inbounds %struct.NCConstant, ptr %10, i32 0, i32 3
  %11 = load i16, ptr %value11, align 8
  %conv12 = zext i16 %11 to i64
  store i64 %conv12, ptr %retval, align 8
  br label %return

sw.bb13:                                          ; preds = %entry
  %12 = load ptr, ptr %con.addr, align 8
  %value14 = getelementptr inbounds %struct.NCConstant, ptr %12, i32 0, i32 3
  %13 = load i32, ptr %value14, align 8
  %conv15 = zext i32 %13 to i64
  store i64 %conv15, ptr %retval, align 8
  br label %return

sw.bb16:                                          ; preds = %entry
  %14 = load ptr, ptr %con.addr, align 8
  %value17 = getelementptr inbounds %struct.NCConstant, ptr %14, i32 0, i32 3
  %15 = load i64, ptr %value17, align 8
  store i64 %15, ptr %retval, align 8
  br label %return

sw.default:                                       ; preds = %entry
  %16 = load ptr, ptr %con.addr, align 8
  %nctype18 = getelementptr inbounds %struct.NCConstant, ptr %16, i32 0, i32 0
  %17 = load i32, ptr %nctype18, align 8
  call void (ptr, ...) @derror(ptr noundef @.str.289, i32 noundef %17)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  store i64 0, ptr %retval, align 8
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb16, %sw.bb13, %sw.bb10, %sw.bb7, %sw.bb4, %sw.bb1, %sw.bb
  %18 = load i64, ptr %retval, align 8
  ret i64 %18
}

declare void @reclaimconstant(ptr noundef) #2

declare ptr @locate(ptr noundef) #2

declare void @derror(ptr noundef, ...) #2

; Function Attrs: nounwind
declare i32 @sprintf(ptr noundef, ptr noundef, ...) #5

; Function Attrs: nounwind uwtable
define ptr @install(ptr noundef %sname) #0 {
entry:
  %sname.addr = alloca ptr, align 8
  store ptr %sname, ptr %sname.addr, align 8
  %0 = load ptr, ptr %sname.addr, align 8
  %call = call ptr @currentgroup()
  %call1 = call ptr @installin(ptr noundef %0, ptr noundef %call)
  ret ptr %call1
}

; Function Attrs: nounwind uwtable
define internal ptr @makespecial(i32 noundef %tag, ptr noundef %vsym, ptr noundef %tsym, ptr noundef %data, i32 noundef %isconst) #0 {
entry:
  %retval = alloca ptr, align 8
  %tag.addr = alloca i32, align 4
  %vsym.addr = alloca ptr, align 8
  %tsym.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %isconst.addr = alloca i32, align 4
  %attr = alloca ptr, align 8
  %list = alloca ptr, align 8
  %con = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tf = alloca i32, align 4
  %sdata = alloca ptr, align 8
  %idata = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %kvalue = alloca ptr, align 8
  %found = alloca i32, align 4
  %special = alloca ptr, align 8
  %i = alloca i32, align 4
  store i32 %tag, ptr %tag.addr, align 4
  store ptr %vsym, ptr %vsym.addr, align 8
  store ptr %tsym, ptr %tsym.addr, align 8
  store ptr %data, ptr %data.addr, align 8
  store i32 %isconst, ptr %isconst.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #13
  store ptr null, ptr %attr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %list) #13
  store ptr null, ptr %list, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %con) #13
  store ptr null, ptr %con, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #13
  store ptr null, ptr %tmp, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %tf) #13
  store i32 0, ptr %tf, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %sdata) #13
  store ptr null, ptr %sdata, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %idata) #13
  store i32 -1, ptr %idata, align 4
  %0 = load i32, ptr @GLOBAL_SPECIAL, align 4
  %1 = load i32, ptr %tag.addr, align 4
  %and = and i32 %0, %1
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %vsym.addr, align 8
  %cmp1 = icmp ne ptr %2, null
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  call void (ptr, ...) @derror(ptr noundef @.str.259)
  store ptr null, ptr %vsym.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end6

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %vsym.addr, align 8
  %cmp3 = icmp eq ptr %3, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.else
  %4 = load i32, ptr %tag.addr, align 4
  %call = call ptr @specialname(i32 noundef %4)
  call void (ptr, ...) @derror(ptr noundef @.str.260, ptr noundef %call)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  %5 = load i32, ptr %tag.addr, align 4
  %cmp7 = icmp ne i32 %5, 128
  br i1 %cmp7, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %if.end6
  %6 = load i32, ptr %tag.addr, align 4
  %cmp8 = icmp ne i32 %6, 2048
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %land.lhs.true
  %7 = load i32, ptr @specials_flag, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr @specials_flag, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %land.lhs.true, %if.end6
  %8 = load i32, ptr %isconst.addr, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then11, label %if.else12

if.then11:                                        ; preds = %if.end10
  %9 = load ptr, ptr %data.addr, align 8
  store ptr %9, ptr %con, align 8
  br label %if.end13

if.else12:                                        ; preds = %if.end10
  %10 = load ptr, ptr %data.addr, align 8
  store ptr %10, ptr %list, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.else12, %if.then11
  %11 = load i32, ptr %tag.addr, align 4
  switch i32 %11, label %sw.default [
    i32 4, label %sw.bb
    i32 16, label %sw.bb
    i32 512, label %sw.bb
    i32 64, label %sw.bb
    i32 2048, label %sw.bb18
    i32 1, label %sw.bb18
    i32 256, label %sw.bb18
    i32 32, label %sw.bb18
    i32 4096, label %sw.bb18
    i32 8192, label %sw.bb18
    i32 1024, label %sw.bb30
    i32 8, label %sw.bb30
    i32 16384, label %sw.bb30
    i32 32768, label %sw.bb30
    i32 65536, label %sw.bb30
    i32 2, label %sw.bb40
    i32 128, label %sw.bb40
  ]

sw.bb:                                            ; preds = %if.end13, %if.end13, %if.end13, %if.end13
  %call14 = call ptr @nullconst()
  store ptr %call14, ptr %tmp, align 8
  %12 = load ptr, ptr %con, align 8
  %nctype = getelementptr inbounds %struct.NCConstant, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %nctype, align 8
  %cmp15 = icmp eq i32 %13, 12
  %14 = zext i1 %cmp15 to i64
  %cond = select i1 %cmp15, i32 12, i32 4
  %15 = load ptr, ptr %tmp, align 8
  %nctype16 = getelementptr inbounds %struct.NCConstant, ptr %15, i32 0, i32 0
  store i32 %cond, ptr %nctype16, align 8
  %16 = load ptr, ptr %con, align 8
  %17 = load ptr, ptr %tmp, align 8
  call void @convert1(ptr noundef %16, ptr noundef %17)
  %18 = load ptr, ptr %tmp, align 8
  %19 = load i32, ptr %tag.addr, align 4
  %call17 = call i32 @truefalse(ptr noundef %18, i32 noundef %19)
  store i32 %call17, ptr %tf, align 4
  %20 = load ptr, ptr %tmp, align 8
  call void @reclaimconstant(ptr noundef %20)
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end13, %if.end13, %if.end13, %if.end13, %if.end13, %if.end13
  %call19 = call ptr @nullconst()
  store ptr %call19, ptr %tmp, align 8
  %21 = load ptr, ptr %tmp, align 8
  %nctype20 = getelementptr inbounds %struct.NCConstant, ptr %21, i32 0, i32 0
  store i32 12, ptr %nctype20, align 8
  %22 = load ptr, ptr %con, align 8
  %23 = load ptr, ptr %tmp, align 8
  call void @convert1(ptr noundef %22, ptr noundef %23)
  %24 = load ptr, ptr %tmp, align 8
  %nctype21 = getelementptr inbounds %struct.NCConstant, ptr %24, i32 0, i32 0
  %25 = load i32, ptr %nctype21, align 8
  %cmp22 = icmp eq i32 %25, 12
  br i1 %cmp22, label %if.then23, label %if.else27

if.then23:                                        ; preds = %sw.bb18
  %26 = load ptr, ptr %tmp, align 8
  %value = getelementptr inbounds %struct.NCConstant, ptr %26, i32 0, i32 3
  %stringv = getelementptr inbounds %struct.Stringv, ptr %value, i32 0, i32 1
  %27 = load ptr, ptr %stringv, align 8
  store ptr %27, ptr %sdata, align 8
  %28 = load ptr, ptr %tmp, align 8
  %value24 = getelementptr inbounds %struct.NCConstant, ptr %28, i32 0, i32 3
  %stringv25 = getelementptr inbounds %struct.Stringv, ptr %value24, i32 0, i32 1
  store ptr null, ptr %stringv25, align 8
  %29 = load ptr, ptr %tmp, align 8
  %value26 = getelementptr inbounds %struct.NCConstant, ptr %29, i32 0, i32 3
  %len = getelementptr inbounds %struct.Stringv, ptr %value26, i32 0, i32 0
  store i32 0, ptr %len, align 8
  br label %if.end29

if.else27:                                        ; preds = %sw.bb18
  %30 = load i32, ptr %tag.addr, align 4
  %call28 = call ptr @specialname(i32 noundef %30)
  call void (ptr, ...) @derror(ptr noundef @.str.261, ptr noundef %call28)
  br label %if.end29

if.end29:                                         ; preds = %if.else27, %if.then23
  %31 = load ptr, ptr %tmp, align 8
  call void @reclaimconstant(ptr noundef %31)
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end13, %if.end13, %if.end13, %if.end13, %if.end13
  %call31 = call ptr @nullconst()
  store ptr %call31, ptr %tmp, align 8
  %32 = load ptr, ptr %tmp, align 8
  %nctype32 = getelementptr inbounds %struct.NCConstant, ptr %32, i32 0, i32 0
  store i32 4, ptr %nctype32, align 8
  %33 = load ptr, ptr %con, align 8
  %34 = load ptr, ptr %tmp, align 8
  call void @convert1(ptr noundef %33, ptr noundef %34)
  %35 = load ptr, ptr %tmp, align 8
  %nctype33 = getelementptr inbounds %struct.NCConstant, ptr %35, i32 0, i32 0
  %36 = load i32, ptr %nctype33, align 8
  %cmp34 = icmp eq i32 %36, 4
  br i1 %cmp34, label %if.then35, label %if.else37

if.then35:                                        ; preds = %sw.bb30
  %37 = load ptr, ptr %tmp, align 8
  %value36 = getelementptr inbounds %struct.NCConstant, ptr %37, i32 0, i32 3
  %38 = load i32, ptr %value36, align 8
  store i32 %38, ptr %idata, align 4
  br label %if.end39

if.else37:                                        ; preds = %sw.bb30
  %39 = load i32, ptr %tag.addr, align 4
  %call38 = call ptr @specialname(i32 noundef %39)
  call void (ptr, ...) @derror(ptr noundef @.str.261, ptr noundef %call38)
  br label %if.end39

if.end39:                                         ; preds = %if.else37, %if.then35
  %40 = load ptr, ptr %tmp, align 8
  call void @reclaimconstant(ptr noundef %40)
  br label %sw.epilog

sw.bb40:                                          ; preds = %if.end13, %if.end13
  br label %sw.epilog

sw.default:                                       ; preds = %if.end13
  %41 = load i32, ptr %tag.addr, align 4
  %call41 = call i32 (ptr, ...) @panic(ptr noundef @.str.262, i32 noundef %41)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then43, label %if.else44

if.then43:                                        ; preds = %sw.default
  br label %if.end45

if.else44:                                        ; preds = %sw.default
  call void @__assert_fail(ptr noundef @.str.263, ptr noundef @.str.27, i32 noundef 1268, ptr noundef @__PRETTY_FUNCTION__.makespecial) #15
  unreachable

if.end45:                                         ; preds = %if.then43
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end45, %sw.bb40, %if.end39, %if.end29, %sw.bb
  %42 = load i32, ptr %tag.addr, align 4
  %cmp46 = icmp eq i32 %42, 2048
  br i1 %cmp46, label %if.then47, label %if.else60

if.then47:                                        ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 8, ptr %kvalue) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %found) #13
  store i32 0, ptr %found, align 4
  store ptr @legalkinds, ptr %kvalue, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then47
  %43 = load ptr, ptr %kvalue, align 8
  %name = getelementptr inbounds %struct.Kvalues, ptr %43, i32 0, i32 0
  %44 = load ptr, ptr %name, align 8
  %tobool48 = icmp ne ptr %44, null
  br i1 %tobool48, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %45 = load ptr, ptr %sdata, align 8
  %tobool49 = icmp ne ptr %45, null
  br i1 %tobool49, label %if.then50, label %if.end56

if.then50:                                        ; preds = %for.body
  %46 = load ptr, ptr %sdata, align 8
  %47 = load ptr, ptr %kvalue, align 8
  %name51 = getelementptr inbounds %struct.Kvalues, ptr %47, i32 0, i32 0
  %48 = load ptr, ptr %name51, align 8
  %call52 = call i32 @strcmp(ptr noundef %46, ptr noundef %48) #16
  %cmp53 = icmp eq i32 %call52, 0
  br i1 %cmp53, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.then50
  %49 = load ptr, ptr %kvalue, align 8
  %k_flag = getelementptr inbounds %struct.Kvalues, ptr %49, i32 0, i32 1
  %50 = load i32, ptr %k_flag, align 8
  store i32 %50, ptr @globalspecials, align 8
  store i32 1, ptr @format_attribute, align 4
  store i32 1, ptr %found, align 4
  br label %for.end

if.end55:                                         ; preds = %if.then50
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end56
  %51 = load ptr, ptr %kvalue, align 8
  %incdec.ptr = getelementptr inbounds %struct.Kvalues, ptr %51, i32 1
  store ptr %incdec.ptr, ptr %kvalue, align 8
  br label %for.cond, !llvm.loop !24

for.end:                                          ; preds = %if.then54, %for.cond
  %52 = load i32, ptr %found, align 4
  %tobool57 = icmp ne i32 %52, 0
  br i1 %tobool57, label %if.end59, label %if.then58

if.then58:                                        ; preds = %for.end
  %53 = load ptr, ptr %sdata, align 8
  call void (ptr, ...) @derror(ptr noundef @.str.264, ptr noundef %53)
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %found) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %kvalue) #13
  br label %if.end238

if.else60:                                        ; preds = %sw.epilog
  %54 = load i32, ptr @GLOBAL_SPECIAL, align 4
  %55 = load i32, ptr %tag.addr, align 4
  %and61 = and i32 %54, %55
  %cmp62 = icmp ne i32 %and61, 0
  br i1 %cmp62, label %if.then63, label %if.else75

if.then63:                                        ; preds = %if.else60
  %56 = load i32, ptr %tag.addr, align 4
  %cmp64 = icmp eq i32 %56, 512
  br i1 %cmp64, label %if.then65, label %if.else66

if.then65:                                        ; preds = %if.then63
  %57 = load i32, ptr %tf, align 4
  store i32 %57, ptr getelementptr inbounds (%struct.GlobalSpecialdata, ptr @globalspecials, i32 0, i32 2), align 8
  br label %if.end74

if.else66:                                        ; preds = %if.then63
  %58 = load i32, ptr %tag.addr, align 4
  %cmp67 = icmp eq i32 %58, 1024
  br i1 %cmp67, label %if.then68, label %if.else69

if.then68:                                        ; preds = %if.else66
  %59 = load i32, ptr %idata, align 4
  store i32 %59, ptr getelementptr inbounds (%struct.GlobalSpecialdata, ptr @globalspecials, i32 0, i32 3), align 4
  br label %if.end73

if.else69:                                        ; preds = %if.else66
  %60 = load i32, ptr %tag.addr, align 4
  %cmp70 = icmp eq i32 %60, 256
  br i1 %cmp70, label %if.then71, label %if.end72

if.then71:                                        ; preds = %if.else69
  %61 = load ptr, ptr %sdata, align 8
  store ptr %61, ptr getelementptr inbounds (%struct.GlobalSpecialdata, ptr @globalspecials, i32 0, i32 1), align 8
  store ptr null, ptr %sdata, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %if.else69
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %if.then68
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.then65
  br label %if.end237

if.else75:                                        ; preds = %if.else60
  call void @llvm.lifetime.start.p0(i64 8, ptr %special) #13
  %62 = load ptr, ptr %vsym.addr, align 8
  %var = getelementptr inbounds %struct.Symbol, ptr %62, i32 0, i32 11
  %special76 = getelementptr inbounds %struct.Varinfo, ptr %var, i32 0, i32 2
  store ptr %special76, ptr %special, align 8
  %63 = load i32, ptr %tag.addr, align 4
  %cmp77 = icmp eq i32 %63, 128
  br i1 %cmp77, label %if.then78, label %if.else105

if.then78:                                        ; preds = %if.else75
  %64 = load i32, ptr %isconst.addr, align 4
  %tobool79 = icmp ne i32 %64, 0
  br i1 %tobool79, label %if.end86, label %land.lhs.true80

land.lhs.true80:                                  ; preds = %if.then78
  %65 = load ptr, ptr %list, align 8
  %cmp81 = icmp eq ptr %65, null
  br i1 %cmp81, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true80
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true80
  %66 = load ptr, ptr %list, align 8
  %length = getelementptr inbounds %struct.Datalist, ptr %66, i32 0, i32 1
  %67 = load i64, ptr %length, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond82 = phi i64 [ 0, %cond.true ], [ %67, %cond.false ]
  %cmp83 = icmp ne i64 %cond82, 1
  br i1 %cmp83, label %if.then84, label %if.end86

if.then84:                                        ; preds = %cond.end
  %68 = load ptr, ptr %vsym.addr, align 8
  %name85 = getelementptr inbounds %struct.Symbol, ptr %68, i32 0, i32 2
  %69 = load ptr, ptr %name85, align 8
  call void (ptr, ...) @derror(ptr noundef @.str.265, ptr noundef %69)
  br label %if.end86

if.end86:                                         ; preds = %if.then84, %cond.end, %if.then78
  %70 = load i32, ptr %isconst.addr, align 4
  %tobool87 = icmp ne i32 %70, 0
  br i1 %tobool87, label %if.then88, label %if.end90

if.then88:                                        ; preds = %if.end86
  %71 = load ptr, ptr %con, align 8
  %call89 = call ptr @const2list(ptr noundef %71)
  store ptr %call89, ptr %list, align 8
  store ptr null, ptr %con, align 8
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %if.end86
  %72 = load ptr, ptr %list, align 8
  %call91 = call i32 @containsfills(ptr noundef %72)
  %tobool92 = icmp ne i32 %call91, 0
  br i1 %tobool92, label %if.then93, label %if.end94

if.then93:                                        ; preds = %if.end90
  call void (ptr, ...) @derror(ptr noundef @.str.266)
  br label %if.end94

if.end94:                                         ; preds = %if.then93, %if.end90
  %73 = load ptr, ptr %vsym.addr, align 8
  %objectclass = getelementptr inbounds %struct.Symbol, ptr %73, i32 0, i32 0
  %74 = load i32, ptr %objectclass, align 8
  %cmp95 = icmp ne i32 %74, 102
  br i1 %cmp95, label %if.then96, label %if.end98

if.then96:                                        ; preds = %if.end94
  %75 = load ptr, ptr %vsym.addr, align 8
  %name97 = getelementptr inbounds %struct.Symbol, ptr %75, i32 0, i32 2
  %76 = load ptr, ptr %name97, align 8
  call void (ptr, ...) @derror(ptr noundef @.str.267, ptr noundef %76)
  br label %if.end98

if.end98:                                         ; preds = %if.then96, %if.end94
  %77 = load ptr, ptr %tsym.addr, align 8
  %cmp99 = icmp eq ptr %77, null
  br i1 %cmp99, label %if.then100, label %if.end101

if.then100:                                       ; preds = %if.end98
  %78 = load ptr, ptr %vsym.addr, align 8
  %typ = getelementptr inbounds %struct.Symbol, ptr %78, i32 0, i32 10
  %basetype = getelementptr inbounds %struct.Typeinfo, ptr %typ, i32 0, i32 0
  %79 = load ptr, ptr %basetype, align 8
  store ptr %79, ptr %tsym.addr, align 8
  br label %if.end101

if.end101:                                        ; preds = %if.then100, %if.end98
  %80 = load ptr, ptr %list, align 8
  %call102 = call ptr @clonedatalist(ptr noundef %80)
  %81 = load ptr, ptr %special, align 8
  %_Fillvalue = getelementptr inbounds %struct.Specialdata, ptr %81, i32 0, i32 1
  store ptr %call102, ptr %_Fillvalue, align 8
  %call103 = call ptr @install(ptr noundef @.str.50)
  %82 = load ptr, ptr %vsym.addr, align 8
  %83 = load ptr, ptr %tsym.addr, align 8
  %84 = load ptr, ptr %list, align 8
  %call104 = call ptr @makeattribute(ptr noundef %call103, ptr noundef %82, ptr noundef %83, ptr noundef %84, i32 noundef 0)
  store ptr %call104, ptr %attr, align 8
  store ptr null, ptr %list, align 8
  br label %if.end236

if.else105:                                       ; preds = %if.else75
  %85 = load i32, ptr %tag.addr, align 4
  switch i32 %85, label %sw.default229 [
    i32 1, label %sw.bb106
    i32 4, label %sw.bb128
    i32 8, label %sw.bb131
    i32 16384, label %sw.bb134
    i32 32768, label %sw.bb137
    i32 65536, label %sw.bb142
    i32 16, label %sw.bb147
    i32 32, label %sw.bb150
    i32 64, label %sw.bb168
    i32 2, label %sw.bb171
    i32 4096, label %sw.bb211
    i32 8192, label %sw.bb220
  ]

sw.bb106:                                         ; preds = %if.else105
  %86 = load ptr, ptr %sdata, align 8
  %tobool107 = icmp ne ptr %86, null
  br i1 %tobool107, label %if.else109, label %if.then108

if.then108:                                       ; preds = %sw.bb106
  call void (ptr, ...) @derror(ptr noundef @.str.268)
  br label %if.end127

if.else109:                                       ; preds = %sw.bb106
  %87 = load ptr, ptr %sdata, align 8
  %call110 = call i32 @strcmp(ptr noundef %87, ptr noundef @.str.269) #16
  %cmp111 = icmp eq i32 %call110, 0
  br i1 %cmp111, label %if.then112, label %if.else113

if.then112:                                       ; preds = %if.else109
  %88 = load ptr, ptr %special, align 8
  %_Storage = getelementptr inbounds %struct.Specialdata, ptr %88, i32 0, i32 2
  store i32 1, ptr %_Storage, align 8
  br label %if.end126

if.else113:                                       ; preds = %if.else109
  %89 = load ptr, ptr %sdata, align 8
  %call114 = call i32 @strcmp(ptr noundef %89, ptr noundef @.str.270) #16
  %cmp115 = icmp eq i32 %call114, 0
  br i1 %cmp115, label %if.then116, label %if.else118

if.then116:                                       ; preds = %if.else113
  %90 = load ptr, ptr %special, align 8
  %_Storage117 = getelementptr inbounds %struct.Specialdata, ptr %90, i32 0, i32 2
  store i32 2, ptr %_Storage117, align 8
  br label %if.end125

if.else118:                                       ; preds = %if.else113
  %91 = load ptr, ptr %sdata, align 8
  %call119 = call i32 @strcmp(ptr noundef %91, ptr noundef @.str.271) #16
  %cmp120 = icmp eq i32 %call119, 0
  br i1 %cmp120, label %if.then121, label %if.else123

if.then121:                                       ; preds = %if.else118
  %92 = load ptr, ptr %special, align 8
  %_Storage122 = getelementptr inbounds %struct.Specialdata, ptr %92, i32 0, i32 2
  store i32 0, ptr %_Storage122, align 8
  br label %if.end124

if.else123:                                       ; preds = %if.else118
  %93 = load ptr, ptr %sdata, align 8
  call void (ptr, ...) @derror(ptr noundef @.str.272, ptr noundef %93)
  br label %if.end124

if.end124:                                        ; preds = %if.else123, %if.then121
  br label %if.end125

if.end125:                                        ; preds = %if.end124, %if.then116
  br label %if.end126

if.end126:                                        ; preds = %if.end125, %if.then112
  br label %if.end127

if.end127:                                        ; preds = %if.end126, %if.then108
  %94 = load ptr, ptr %special, align 8
  %flags = getelementptr inbounds %struct.Specialdata, ptr %94, i32 0, i32 0
  %95 = load i32, ptr %flags, align 8
  %or = or i32 %95, 1
  store i32 %or, ptr %flags, align 8
  br label %sw.epilog235

sw.bb128:                                         ; preds = %if.else105
  %96 = load i32, ptr %tf, align 4
  %97 = load ptr, ptr %special, align 8
  %_Fletcher32 = getelementptr inbounds %struct.Specialdata, ptr %97, i32 0, i32 5
  store i32 %96, ptr %_Fletcher32, align 4
  %98 = load ptr, ptr %special, align 8
  %flags129 = getelementptr inbounds %struct.Specialdata, ptr %98, i32 0, i32 0
  %99 = load i32, ptr %flags129, align 8
  %or130 = or i32 %99, 4
  store i32 %or130, ptr %flags129, align 8
  br label %sw.epilog235

sw.bb131:                                         ; preds = %if.else105
  %100 = load i32, ptr %idata, align 4
  %101 = load ptr, ptr %special, align 8
  %_DeflateLevel = getelementptr inbounds %struct.Specialdata, ptr %101, i32 0, i32 6
  store i32 %100, ptr %_DeflateLevel, align 8
  %102 = load ptr, ptr %special, align 8
  %flags132 = getelementptr inbounds %struct.Specialdata, ptr %102, i32 0, i32 0
  %103 = load i32, ptr %flags132, align 8
  %or133 = or i32 %103, 8
  store i32 %or133, ptr %flags132, align 8
  br label %sw.epilog235

sw.bb134:                                         ; preds = %if.else105
  %104 = load ptr, ptr %special, align 8
  %_Quantizer = getelementptr inbounds %struct.Specialdata, ptr %104, i32 0, i32 10
  store i32 1, ptr %_Quantizer, align 8
  %105 = load i32, ptr %idata, align 4
  %106 = load ptr, ptr %special, align 8
  %_NSD = getelementptr inbounds %struct.Specialdata, ptr %106, i32 0, i32 11
  store i32 %105, ptr %_NSD, align 4
  %107 = load ptr, ptr %special, align 8
  %flags135 = getelementptr inbounds %struct.Specialdata, ptr %107, i32 0, i32 0
  %108 = load i32, ptr %flags135, align 8
  %or136 = or i32 %108, 16384
  store i32 %or136, ptr %flags135, align 8
  br label %sw.epilog235

sw.bb137:                                         ; preds = %if.else105
  %109 = load ptr, ptr %special, align 8
  %_Quantizer138 = getelementptr inbounds %struct.Specialdata, ptr %109, i32 0, i32 10
  store i32 2, ptr %_Quantizer138, align 8
  %110 = load i32, ptr %idata, align 4
  %111 = load ptr, ptr %special, align 8
  %_NSD139 = getelementptr inbounds %struct.Specialdata, ptr %111, i32 0, i32 11
  store i32 %110, ptr %_NSD139, align 4
  %112 = load ptr, ptr %special, align 8
  %flags140 = getelementptr inbounds %struct.Specialdata, ptr %112, i32 0, i32 0
  %113 = load i32, ptr %flags140, align 8
  %or141 = or i32 %113, 32768
  store i32 %or141, ptr %flags140, align 8
  br label %sw.epilog235

sw.bb142:                                         ; preds = %if.else105
  %114 = load ptr, ptr %special, align 8
  %_Quantizer143 = getelementptr inbounds %struct.Specialdata, ptr %114, i32 0, i32 10
  store i32 3, ptr %_Quantizer143, align 8
  %115 = load i32, ptr %idata, align 4
  %116 = load ptr, ptr %special, align 8
  %_NSD144 = getelementptr inbounds %struct.Specialdata, ptr %116, i32 0, i32 11
  store i32 %115, ptr %_NSD144, align 4
  %117 = load ptr, ptr %special, align 8
  %flags145 = getelementptr inbounds %struct.Specialdata, ptr %117, i32 0, i32 0
  %118 = load i32, ptr %flags145, align 8
  %or146 = or i32 %118, 65536
  store i32 %or146, ptr %flags145, align 8
  br label %sw.epilog235

sw.bb147:                                         ; preds = %if.else105
  %119 = load i32, ptr %tf, align 4
  %120 = load ptr, ptr %special, align 8
  %_Shuffle = getelementptr inbounds %struct.Specialdata, ptr %120, i32 0, i32 7
  store i32 %119, ptr %_Shuffle, align 4
  %121 = load ptr, ptr %special, align 8
  %flags148 = getelementptr inbounds %struct.Specialdata, ptr %121, i32 0, i32 0
  %122 = load i32, ptr %flags148, align 8
  %or149 = or i32 %122, 16
  store i32 %or149, ptr %flags148, align 8
  br label %sw.epilog235

sw.bb150:                                         ; preds = %if.else105
  %123 = load ptr, ptr %sdata, align 8
  %tobool151 = icmp ne ptr %123, null
  br i1 %tobool151, label %if.else153, label %if.then152

if.then152:                                       ; preds = %sw.bb150
  call void (ptr, ...) @derror(ptr noundef @.str.273)
  br label %if.end165

if.else153:                                       ; preds = %sw.bb150
  %124 = load ptr, ptr %sdata, align 8
  %call154 = call i32 @strcmp(ptr noundef %124, ptr noundef @.str.274) #16
  %cmp155 = icmp eq i32 %call154, 0
  br i1 %cmp155, label %if.then156, label %if.else157

if.then156:                                       ; preds = %if.else153
  %125 = load ptr, ptr %special, align 8
  %_Endianness = getelementptr inbounds %struct.Specialdata, ptr %125, i32 0, i32 8
  store i32 1, ptr %_Endianness, align 8
  br label %if.end164

if.else157:                                       ; preds = %if.else153
  %126 = load ptr, ptr %sdata, align 8
  %call158 = call i32 @strcmp(ptr noundef %126, ptr noundef @.str.275) #16
  %cmp159 = icmp eq i32 %call158, 0
  br i1 %cmp159, label %if.then160, label %if.else162

if.then160:                                       ; preds = %if.else157
  %127 = load ptr, ptr %special, align 8
  %_Endianness161 = getelementptr inbounds %struct.Specialdata, ptr %127, i32 0, i32 8
  store i32 2, ptr %_Endianness161, align 8
  br label %if.end163

if.else162:                                       ; preds = %if.else157
  %128 = load ptr, ptr %sdata, align 8
  call void (ptr, ...) @derror(ptr noundef @.str.276, ptr noundef %128)
  br label %if.end163

if.end163:                                        ; preds = %if.else162, %if.then160
  br label %if.end164

if.end164:                                        ; preds = %if.end163, %if.then156
  br label %if.end165

if.end165:                                        ; preds = %if.end164, %if.then152
  %129 = load ptr, ptr %special, align 8
  %flags166 = getelementptr inbounds %struct.Specialdata, ptr %129, i32 0, i32 0
  %130 = load i32, ptr %flags166, align 8
  %or167 = or i32 %130, 32
  store i32 %or167, ptr %flags166, align 8
  br label %sw.epilog235

sw.bb168:                                         ; preds = %if.else105
  %131 = load i32, ptr %tf, align 4
  %sub = sub nsw i32 1, %131
  %132 = load ptr, ptr %special, align 8
  %_Fill = getelementptr inbounds %struct.Specialdata, ptr %132, i32 0, i32 9
  store i32 %sub, ptr %_Fill, align 4
  %133 = load ptr, ptr %special, align 8
  %flags169 = getelementptr inbounds %struct.Specialdata, ptr %133, i32 0, i32 0
  %134 = load i32, ptr %flags169, align 8
  %or170 = or i32 %134, 64
  store i32 %or170, ptr %flags169, align 8
  br label %sw.epilog235

sw.bb171:                                         ; preds = %if.else105
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13
  %135 = load i32, ptr %isconst.addr, align 4
  %tobool172 = icmp ne i32 %135, 0
  br i1 %tobool172, label %cond.true173, label %cond.false175

cond.true173:                                     ; preds = %sw.bb171
  %136 = load ptr, ptr %con, align 8
  %call174 = call ptr @const2list(ptr noundef %136)
  br label %cond.end176

cond.false175:                                    ; preds = %sw.bb171
  %137 = load ptr, ptr %list, align 8
  br label %cond.end176

cond.end176:                                      ; preds = %cond.false175, %cond.true173
  %cond177 = phi ptr [ %call174, %cond.true173 ], [ %137, %cond.false175 ]
  store ptr %cond177, ptr %list, align 8
  %138 = load ptr, ptr %list, align 8
  %length178 = getelementptr inbounds %struct.Datalist, ptr %138, i32 0, i32 1
  %139 = load i64, ptr %length178, align 8
  %conv = trunc i64 %139 to i32
  %140 = load ptr, ptr %special, align 8
  %nchunks = getelementptr inbounds %struct.Specialdata, ptr %140, i32 0, i32 4
  store i32 %conv, ptr %nchunks, align 8
  %141 = load ptr, ptr %special, align 8
  %nchunks179 = getelementptr inbounds %struct.Specialdata, ptr %141, i32 0, i32 4
  %142 = load i32, ptr %nchunks179, align 8
  %conv180 = sext i32 %142 to i64
  %mul = mul i64 8, %conv180
  %call181 = call ptr @chkcalloc(i64 noundef %mul)
  %143 = load ptr, ptr %special, align 8
  %_ChunkSizes = getelementptr inbounds %struct.Specialdata, ptr %143, i32 0, i32 3
  store ptr %call181, ptr %_ChunkSizes, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond182

for.cond182:                                      ; preds = %for.inc203, %cond.end176
  %144 = load i32, ptr %i, align 4
  %145 = load ptr, ptr %special, align 8
  %nchunks183 = getelementptr inbounds %struct.Specialdata, ptr %145, i32 0, i32 4
  %146 = load i32, ptr %nchunks183, align 8
  %cmp184 = icmp slt i32 %144, %146
  br i1 %cmp184, label %for.body186, label %for.end205

for.body186:                                      ; preds = %for.cond182
  %call187 = call ptr @nullconst()
  store ptr %call187, ptr %tmp, align 8
  %147 = load ptr, ptr %tmp, align 8
  %nctype188 = getelementptr inbounds %struct.NCConstant, ptr %147, i32 0, i32 0
  store i32 4, ptr %nctype188, align 8
  %148 = load ptr, ptr %list, align 8
  %data189 = getelementptr inbounds %struct.Datalist, ptr %148, i32 0, i32 3
  %149 = load ptr, ptr %data189, align 8
  %150 = load i32, ptr %i, align 4
  %idxprom = sext i32 %150 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %149, i64 %idxprom
  %151 = load ptr, ptr %arrayidx, align 8
  %152 = load ptr, ptr %tmp, align 8
  call void @convert1(ptr noundef %151, ptr noundef %152)
  %153 = load ptr, ptr %tmp, align 8
  %nctype190 = getelementptr inbounds %struct.NCConstant, ptr %153, i32 0, i32 0
  %154 = load i32, ptr %nctype190, align 8
  %cmp191 = icmp eq i32 %154, 4
  br i1 %cmp191, label %if.then193, label %if.else199

if.then193:                                       ; preds = %for.body186
  %155 = load ptr, ptr %tmp, align 8
  %value194 = getelementptr inbounds %struct.NCConstant, ptr %155, i32 0, i32 3
  %156 = load i32, ptr %value194, align 8
  %conv195 = sext i32 %156 to i64
  %157 = load ptr, ptr %special, align 8
  %_ChunkSizes196 = getelementptr inbounds %struct.Specialdata, ptr %157, i32 0, i32 3
  %158 = load ptr, ptr %_ChunkSizes196, align 8
  %159 = load i32, ptr %i, align 4
  %idxprom197 = sext i32 %159 to i64
  %arrayidx198 = getelementptr inbounds i64, ptr %158, i64 %idxprom197
  store i64 %conv195, ptr %arrayidx198, align 8
  br label %if.end202

if.else199:                                       ; preds = %for.body186
  %160 = load ptr, ptr %special, align 8
  %_ChunkSizes200 = getelementptr inbounds %struct.Specialdata, ptr %160, i32 0, i32 3
  %161 = load ptr, ptr %_ChunkSizes200, align 8
  call void @chkfree(ptr noundef %161)
  %162 = load i32, ptr %tag.addr, align 4
  %call201 = call ptr @specialname(i32 noundef %162)
  call void (ptr, ...) @derror(ptr noundef @.str.261, ptr noundef %call201)
  br label %if.end202

if.end202:                                        ; preds = %if.else199, %if.then193
  %163 = load ptr, ptr %tmp, align 8
  call void @reclaimconstant(ptr noundef %163)
  br label %for.inc203

for.inc203:                                       ; preds = %if.end202
  %164 = load i32, ptr %i, align 4
  %inc204 = add nsw i32 %164, 1
  store i32 %inc204, ptr %i, align 4
  br label %for.cond182, !llvm.loop !25

for.end205:                                       ; preds = %for.cond182
  %165 = load ptr, ptr %special, align 8
  %flags206 = getelementptr inbounds %struct.Specialdata, ptr %165, i32 0, i32 0
  %166 = load i32, ptr %flags206, align 8
  %or207 = or i32 %166, 2
  store i32 %or207, ptr %flags206, align 8
  %167 = load ptr, ptr %special, align 8
  %flags208 = getelementptr inbounds %struct.Specialdata, ptr %167, i32 0, i32 0
  %168 = load i32, ptr %flags208, align 8
  %or209 = or i32 %168, 1
  store i32 %or209, ptr %flags208, align 8
  %169 = load ptr, ptr %special, align 8
  %_Storage210 = getelementptr inbounds %struct.Specialdata, ptr %169, i32 0, i32 2
  store i32 0, ptr %_Storage210, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13
  br label %sw.epilog235

sw.bb211:                                         ; preds = %if.else105
  %170 = load ptr, ptr %sdata, align 8
  %171 = load ptr, ptr %special, align 8
  %call212 = call i32 @parsefilterflag(ptr noundef %170, ptr noundef %171)
  %cmp213 = icmp eq i32 %call212, 0
  br i1 %cmp213, label %if.then215, label %if.else218

if.then215:                                       ; preds = %sw.bb211
  %172 = load ptr, ptr %special, align 8
  %flags216 = getelementptr inbounds %struct.Specialdata, ptr %172, i32 0, i32 0
  %173 = load i32, ptr %flags216, align 8
  %or217 = or i32 %173, 4096
  store i32 %or217, ptr %flags216, align 8
  br label %if.end219

if.else218:                                       ; preds = %sw.bb211
  %174 = load ptr, ptr %sdata, align 8
  call void (ptr, ...) @derror(ptr noundef @.str.277, ptr noundef %174)
  br label %if.end219

if.end219:                                        ; preds = %if.else218, %if.then215
  br label %sw.epilog235

sw.bb220:                                         ; preds = %if.else105
  %175 = load ptr, ptr %sdata, align 8
  %176 = load ptr, ptr %special, align 8
  %call221 = call i32 @parsecodecsflag(ptr noundef %175, ptr noundef %176)
  %cmp222 = icmp eq i32 %call221, 0
  br i1 %cmp222, label %if.then224, label %if.else227

if.then224:                                       ; preds = %sw.bb220
  %177 = load ptr, ptr %special, align 8
  %flags225 = getelementptr inbounds %struct.Specialdata, ptr %177, i32 0, i32 0
  %178 = load i32, ptr %flags225, align 8
  %or226 = or i32 %178, 8192
  store i32 %or226, ptr %flags225, align 8
  br label %if.end228

if.else227:                                       ; preds = %sw.bb220
  %179 = load ptr, ptr %sdata, align 8
  call void (ptr, ...) @derror(ptr noundef @.str.278, ptr noundef %179)
  br label %if.end228

if.end228:                                        ; preds = %if.else227, %if.then224
  br label %sw.epilog235

sw.default229:                                    ; preds = %if.else105
  %180 = load i32, ptr %tag.addr, align 4
  %call230 = call i32 (ptr, ...) @panic(ptr noundef @.str.279, i32 noundef %180)
  %tobool231 = icmp ne i32 %call230, 0
  br i1 %tobool231, label %if.then232, label %if.else233

if.then232:                                       ; preds = %sw.default229
  br label %if.end234

if.else233:                                       ; preds = %sw.default229
  call void @__assert_fail(ptr noundef @.str.280, ptr noundef @.str.27, i32 noundef 1431, ptr noundef @__PRETTY_FUNCTION__.makespecial) #15
  unreachable

if.end234:                                        ; preds = %if.then232
  br label %sw.epilog235

sw.epilog235:                                     ; preds = %if.end234, %if.end228, %if.end219, %for.end205, %sw.bb168, %if.end165, %sw.bb147, %sw.bb142, %sw.bb137, %sw.bb134, %sw.bb131, %sw.bb128, %if.end127
  br label %if.end236

if.end236:                                        ; preds = %sw.epilog235, %if.end101
  call void @llvm.lifetime.end.p0(i64 8, ptr %special) #13
  br label %if.end237

if.end237:                                        ; preds = %if.end236, %if.end74
  br label %if.end238

if.end238:                                        ; preds = %if.end237, %if.end59
  %181 = load ptr, ptr %sdata, align 8
  %tobool239 = icmp ne ptr %181, null
  br i1 %tobool239, label %if.then240, label %if.end241

if.then240:                                       ; preds = %if.end238
  %182 = load ptr, ptr %sdata, align 8
  call void @chkfree(ptr noundef %182)
  br label %if.end241

if.end241:                                        ; preds = %if.then240, %if.end238
  %183 = load ptr, ptr %con, align 8
  %tobool242 = icmp ne ptr %183, null
  br i1 %tobool242, label %if.then243, label %if.end244

if.then243:                                       ; preds = %if.end241
  %184 = load ptr, ptr %con, align 8
  call void @reclaimconstant(ptr noundef %184)
  br label %if.end244

if.end244:                                        ; preds = %if.then243, %if.end241
  %185 = load ptr, ptr %list, align 8
  %tobool245 = icmp ne ptr %185, null
  br i1 %tobool245, label %if.then246, label %if.end247

if.then246:                                       ; preds = %if.end244
  %186 = load ptr, ptr %list, align 8
  call void @reclaimdatalist(ptr noundef %186)
  br label %if.end247

if.end247:                                        ; preds = %if.then246, %if.end244
  %187 = load ptr, ptr %attr, align 8
  store ptr %187, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end247, %if.then4
  call void @llvm.lifetime.end.p0(i64 4, ptr %idata) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %sdata) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %tf) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %con) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %list) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #13
  %188 = load ptr, ptr %retval, align 8
  ret ptr %188
}

; Function Attrs: nounwind uwtable
define internal ptr @makeattribute(ptr noundef %asym, ptr noundef %vsym, ptr noundef %tsym, ptr noundef %data, i32 noundef %kind) #0 {
entry:
  %asym.addr = alloca ptr, align 8
  %vsym.addr = alloca ptr, align 8
  %tsym.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %kind.addr = alloca i32, align 4
  store ptr %asym, ptr %asym.addr, align 8
  store ptr %vsym, ptr %vsym.addr, align 8
  store ptr %tsym, ptr %tsym.addr, align 8
  store ptr %data, ptr %data.addr, align 8
  store i32 %kind, ptr %kind.addr, align 4
  %0 = load ptr, ptr %asym.addr, align 8
  %objectclass = getelementptr inbounds %struct.Symbol, ptr %0, i32 0, i32 0
  store i32 103, ptr %objectclass, align 8
  %1 = load ptr, ptr %data.addr, align 8
  %2 = load ptr, ptr %asym.addr, align 8
  %data1 = getelementptr inbounds %struct.Symbol, ptr %2, i32 0, i32 9
  store ptr %1, ptr %data1, align 8
  %3 = load i32, ptr %kind.addr, align 4
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %4 = load ptr, ptr %vsym.addr, align 8
  %5 = load ptr, ptr %asym.addr, align 8
  %att = getelementptr inbounds %struct.Symbol, ptr %5, i32 0, i32 12
  %var = getelementptr inbounds %struct.Attrinfo, ptr %att, i32 0, i32 0
  store ptr %4, ptr %var, align 8
  %6 = load ptr, ptr %tsym.addr, align 8
  %7 = load ptr, ptr %asym.addr, align 8
  %typ = getelementptr inbounds %struct.Symbol, ptr %7, i32 0, i32 10
  %basetype = getelementptr inbounds %struct.Typeinfo, ptr %typ, i32 0, i32 0
  store ptr %6, ptr %basetype, align 8
  %8 = load ptr, ptr @attdefs, align 8
  %9 = load ptr, ptr %asym.addr, align 8
  %call = call i32 @listpush(ptr noundef %8, ptr noundef %9)
  %10 = load ptr, ptr %asym.addr, align 8
  call void @addtogroup(ptr noundef %10)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %11 = load ptr, ptr %asym.addr, align 8
  %att3 = getelementptr inbounds %struct.Symbol, ptr %11, i32 0, i32 12
  %var4 = getelementptr inbounds %struct.Attrinfo, ptr %att3, i32 0, i32 0
  store ptr null, ptr %var4, align 8
  %12 = load ptr, ptr %tsym.addr, align 8
  %13 = load ptr, ptr %asym.addr, align 8
  %typ5 = getelementptr inbounds %struct.Symbol, ptr %13, i32 0, i32 10
  %basetype6 = getelementptr inbounds %struct.Typeinfo, ptr %typ5, i32 0, i32 0
  store ptr %12, ptr %basetype6, align 8
  %14 = load ptr, ptr @gattdefs, align 8
  %15 = load ptr, ptr %asym.addr, align 8
  %call7 = call i32 @listpush(ptr noundef %14, ptr noundef %15)
  %16 = load ptr, ptr %asym.addr, align 8
  call void @addtogroup(ptr noundef %16)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %17 = load i32, ptr %kind.addr, align 4
  %call8 = call i32 (ptr, ...) @panic(ptr noundef @.str.286, i32 noundef %17)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.default
  br label %if.end

if.else:                                          ; preds = %sw.default
  call void @__assert_fail(ptr noundef @.str.287, ptr noundef @.str.27, i32 noundef 1462, ptr noundef @__PRETTY_FUNCTION__.makeattribute) #15
  unreachable

if.end:                                           ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb2, %sw.bb
  %18 = load ptr, ptr %data.addr, align 8
  %call9 = call i32 @containsfills(ptr noundef %18)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %sw.epilog
  %19 = load ptr, ptr %asym.addr, align 8
  %name = getelementptr inbounds %struct.Symbol, ptr %19, i32 0, i32 2
  %20 = load ptr, ptr %name, align 8
  call void (ptr, ...) @derror(ptr noundef @.str.288, ptr noundef %20)
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %sw.epilog
  %21 = load ptr, ptr %asym.addr, align 8
  ret ptr %21
}

; Function Attrs: nounwind uwtable
define internal void @setpathcurrent(ptr noundef %sym) #0 {
entry:
  %sym.addr = alloca ptr, align 8
  store ptr %sym, ptr %sym.addr, align 8
  %0 = load ptr, ptr %sym.addr, align 8
  %is_prefixed = getelementptr inbounds %struct.Symbol, ptr %0, i32 0, i32 7
  store i32 0, ptr %is_prefixed, align 8
  %1 = load ptr, ptr @groupstack, align 8
  %call = call ptr @prefixdup(ptr noundef %1)
  %2 = load ptr, ptr %sym.addr, align 8
  %prefix = getelementptr inbounds %struct.Symbol, ptr %2, i32 0, i32 8
  store ptr %call, ptr %prefix, align 8
  ret void
}

declare ptr @builddatalist(i32 noundef) #2

declare ptr @const2list(ptr noundef) #2

declare void @dlappend(ptr noundef, ptr noundef) #2

declare ptr @builddatasublist(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @makeconstdata(i32 noundef %nctype) #0 {
entry:
  %nctype.addr = alloca i32, align 4
  %con = alloca ptr, align 8
  %len = alloca i64, align 8
  %s = alloca ptr, align 8
  %len29 = alloca i32, align 4
  store i32 %nctype, ptr %nctype.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %con) #13
  %call = call ptr @nullconst()
  store ptr %call, ptr %con, align 8
  %0 = load i32, ptr %nctype.addr, align 4
  store i32 %0, ptr @consttype, align 4
  %1 = load i32, ptr %nctype.addr, align 4
  %2 = load ptr, ptr %con, align 8
  %nctype1 = getelementptr inbounds %struct.NCConstant, ptr %2, i32 0, i32 0
  store i32 %1, ptr %nctype1, align 8
  %3 = load i32, ptr @lineno, align 4
  %4 = load ptr, ptr %con, align 8
  %lineno = getelementptr inbounds %struct.NCConstant, ptr %4, i32 0, i32 2
  store i32 %3, ptr %lineno, align 8
  %5 = load ptr, ptr %con, align 8
  %filled = getelementptr inbounds %struct.NCConstant, ptr %5, i32 0, i32 4
  store i32 0, ptr %filled, align 8
  %6 = load i32, ptr %nctype.addr, align 4
  switch i32 %6, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb2
    i32 3, label %sw.bb4
    i32 4, label %sw.bb6
    i32 5, label %sw.bb8
    i32 6, label %sw.bb10
    i32 12, label %sw.bb12
    i32 7, label %sw.bb18
    i32 8, label %sw.bb20
    i32 9, label %sw.bb22
    i32 10, label %sw.bb24
    i32 11, label %sw.bb26
    i32 14, label %sw.bb28
    i32 32, label %sw.epilog
    i32 31, label %sw.epilog
  ]

sw.bb:                                            ; preds = %entry
  %7 = load i8, ptr @char_val, align 1
  %8 = load ptr, ptr %con, align 8
  %value = getelementptr inbounds %struct.NCConstant, ptr %8, i32 0, i32 3
  store i8 %7, ptr %value, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %9 = load i8, ptr @byte_val, align 1
  %10 = load ptr, ptr %con, align 8
  %value3 = getelementptr inbounds %struct.NCConstant, ptr %10, i32 0, i32 3
  store i8 %9, ptr %value3, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %11 = load i16, ptr @int16_val, align 2
  %12 = load ptr, ptr %con, align 8
  %value5 = getelementptr inbounds %struct.NCConstant, ptr %12, i32 0, i32 3
  store i16 %11, ptr %value5, align 8
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %13 = load i32, ptr @int32_val, align 4
  %14 = load ptr, ptr %con, align 8
  %value7 = getelementptr inbounds %struct.NCConstant, ptr %14, i32 0, i32 3
  store i32 %13, ptr %value7, align 8
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %15 = load float, ptr @float_val, align 4
  %16 = load ptr, ptr %con, align 8
  %value9 = getelementptr inbounds %struct.NCConstant, ptr %16, i32 0, i32 3
  store float %15, ptr %value9, align 8
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %17 = load double, ptr @double_val, align 8
  %18 = load ptr, ptr %con, align 8
  %value11 = getelementptr inbounds %struct.NCConstant, ptr %18, i32 0, i32 3
  store double %17, ptr %value11, align 8
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #13
  %19 = load ptr, ptr @lextext, align 8
  %tobool = icmp ne ptr %19, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb12
  %20 = load ptr, ptr @lextext, align 8
  %length = getelementptr inbounds %struct.Bytebuffer, ptr %20, i32 0, i32 2
  %21 = load i32, ptr %length, align 8
  br label %cond.end

cond.false:                                       ; preds = %sw.bb12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %21, %cond.true ], [ 0, %cond.false ]
  %conv = zext i32 %cond to i64
  store i64 %conv, ptr %len, align 8
  %22 = load i64, ptr %len, align 8
  %conv13 = trunc i64 %22 to i32
  %23 = load ptr, ptr %con, align 8
  %value14 = getelementptr inbounds %struct.NCConstant, ptr %23, i32 0, i32 3
  %len15 = getelementptr inbounds %struct.Stringv, ptr %value14, i32 0, i32 0
  store i32 %conv13, ptr %len15, align 8
  %24 = load ptr, ptr @lextext, align 8
  %call16 = call ptr @bbExtract(ptr noundef %24)
  %25 = load ptr, ptr %con, align 8
  %value17 = getelementptr inbounds %struct.NCConstant, ptr %25, i32 0, i32 3
  %stringv = getelementptr inbounds %struct.Stringv, ptr %value17, i32 0, i32 1
  store ptr %call16, ptr %stringv, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #13
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  %26 = load i8, ptr @ubyte_val, align 1
  %27 = load ptr, ptr %con, align 8
  %value19 = getelementptr inbounds %struct.NCConstant, ptr %27, i32 0, i32 3
  store i8 %26, ptr %value19, align 8
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  %28 = load i16, ptr @uint16_val, align 2
  %29 = load ptr, ptr %con, align 8
  %value21 = getelementptr inbounds %struct.NCConstant, ptr %29, i32 0, i32 3
  store i16 %28, ptr %value21, align 8
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  %30 = load i32, ptr @uint32_val, align 4
  %31 = load ptr, ptr %con, align 8
  %value23 = getelementptr inbounds %struct.NCConstant, ptr %31, i32 0, i32 3
  store i32 %30, ptr %value23, align 8
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  %32 = load i64, ptr @int64_val, align 8
  %33 = load ptr, ptr %con, align 8
  %value25 = getelementptr inbounds %struct.NCConstant, ptr %33, i32 0, i32 3
  store i64 %32, ptr %value25, align 8
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  %34 = load i64, ptr @uint64_val, align 8
  %35 = load ptr, ptr %con, align 8
  %value27 = getelementptr inbounds %struct.NCConstant, ptr %35, i32 0, i32 3
  store i64 %34, ptr %value27, align 8
  br label %sw.epilog

sw.bb28:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %len29) #13
  %36 = load ptr, ptr @lextext, align 8
  %tobool30 = icmp ne ptr %36, null
  br i1 %tobool30, label %cond.true31, label %cond.false33

cond.true31:                                      ; preds = %sw.bb28
  %37 = load ptr, ptr @lextext, align 8
  %length32 = getelementptr inbounds %struct.Bytebuffer, ptr %37, i32 0, i32 2
  %38 = load i32, ptr %length32, align 8
  br label %cond.end34

cond.false33:                                     ; preds = %sw.bb28
  br label %cond.end34

cond.end34:                                       ; preds = %cond.false33, %cond.true31
  %cond35 = phi i32 [ %38, %cond.true31 ], [ 0, %cond.false33 ]
  store i32 %cond35, ptr %len29, align 4
  %39 = load i32, ptr %len29, align 4
  %add = add nsw i32 %39, 1
  %conv36 = sext i32 %add to i64
  %call37 = call ptr @chkcalloc(i64 noundef %conv36)
  store ptr %call37, ptr %s, align 8
  %40 = load ptr, ptr %s, align 8
  %41 = load ptr, ptr @lextext, align 8
  %tobool38 = icmp ne ptr %41, null
  br i1 %tobool38, label %land.lhs.true, label %cond.false42

land.lhs.true:                                    ; preds = %cond.end34
  %42 = load ptr, ptr @lextext, align 8
  %content = getelementptr inbounds %struct.Bytebuffer, ptr %42, i32 0, i32 3
  %43 = load ptr, ptr %content, align 8
  %tobool39 = icmp ne ptr %43, null
  br i1 %tobool39, label %cond.true40, label %cond.false42

cond.true40:                                      ; preds = %land.lhs.true
  %44 = load ptr, ptr @lextext, align 8
  %content41 = getelementptr inbounds %struct.Bytebuffer, ptr %44, i32 0, i32 3
  %45 = load ptr, ptr %content41, align 8
  br label %cond.end43

cond.false42:                                     ; preds = %land.lhs.true, %cond.end34
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false42, %cond.true40
  %cond44 = phi ptr [ %45, %cond.true40 ], [ @.str.68, %cond.false42 ]
  %46 = load i32, ptr %len29, align 4
  %conv45 = sext i32 %46 to i64
  %call46 = call ptr @strncpy(ptr noundef %40, ptr noundef %cond44, i64 noundef %conv45) #13
  %47 = load ptr, ptr %s, align 8
  %48 = load i32, ptr %len29, align 4
  %idxprom = sext i32 %48 to i64
  %arrayidx = getelementptr inbounds i8, ptr %47, i64 %idxprom
  store i8 0, ptr %arrayidx, align 1
  %49 = load ptr, ptr %s, align 8
  %50 = load ptr, ptr %con, align 8
  %value47 = getelementptr inbounds %struct.NCConstant, ptr %50, i32 0, i32 3
  %stringv48 = getelementptr inbounds %struct.Opaquev, ptr %value47, i32 0, i32 1
  store ptr %49, ptr %stringv48, align 8
  %51 = load i32, ptr %len29, align 4
  %52 = load ptr, ptr %con, align 8
  %value49 = getelementptr inbounds %struct.NCConstant, ptr %52, i32 0, i32 3
  %len50 = getelementptr inbounds %struct.Opaquev, ptr %value49, i32 0, i32 0
  store i32 %51, ptr %len50, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr %len29) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #13
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %53 = load i32, ptr %nctype.addr, align 4
  %call51 = call ptr @nctypename(i32 noundef %53)
  call void (ptr, ...) @ncgerror(ptr noundef @.str.257, ptr noundef %call51)
  %54 = load ptr, ptr %con, align 8
  %value52 = getelementptr inbounds %struct.NCConstant, ptr %54, i32 0, i32 3
  %stringv53 = getelementptr inbounds %struct.Stringv, ptr %value52, i32 0, i32 1
  store ptr null, ptr %stringv53, align 8
  %55 = load ptr, ptr %con, align 8
  %value54 = getelementptr inbounds %struct.NCConstant, ptr %55, i32 0, i32 3
  %len55 = getelementptr inbounds %struct.Stringv, ptr %value54, i32 0, i32 0
  store i32 0, ptr %len55, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %entry, %entry, %cond.end43, %sw.bb26, %sw.bb24, %sw.bb22, %sw.bb20, %sw.bb18, %cond.end, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb
  %56 = load ptr, ptr %con, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %con) #13
  ret ptr %56
}

; Function Attrs: nounwind uwtable
define internal ptr @makeenumconstref(ptr noundef %refsym) #0 {
entry:
  %refsym.addr = alloca ptr, align 8
  %con = alloca ptr, align 8
  store ptr %refsym, ptr %refsym.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %con) #13
  %call = call ptr @nullconst()
  store ptr %call, ptr %con, align 8
  call void @markcdf4(ptr noundef @.str.258)
  store i32 15, ptr @consttype, align 4
  %0 = load ptr, ptr %con, align 8
  %nctype = getelementptr inbounds %struct.NCConstant, ptr %0, i32 0, i32 0
  store i32 105, ptr %nctype, align 8
  %1 = load i32, ptr @lineno, align 4
  %2 = load ptr, ptr %con, align 8
  %lineno = getelementptr inbounds %struct.NCConstant, ptr %2, i32 0, i32 2
  store i32 %1, ptr %lineno, align 8
  %3 = load ptr, ptr %con, align 8
  %filled = getelementptr inbounds %struct.NCConstant, ptr %3, i32 0, i32 4
  store i32 0, ptr %filled, align 8
  %4 = load ptr, ptr %refsym.addr, align 8
  %objectclass = getelementptr inbounds %struct.Symbol, ptr %4, i32 0, i32 0
  store i32 104, ptr %objectclass, align 8
  %5 = load ptr, ptr %refsym.addr, align 8
  %subclass = getelementptr inbounds %struct.Symbol, ptr %5, i32 0, i32 1
  store i32 105, ptr %subclass, align 4
  %6 = load ptr, ptr %refsym.addr, align 8
  %7 = load ptr, ptr %con, align 8
  %value = getelementptr inbounds %struct.NCConstant, ptr %7, i32 0, i32 3
  store ptr %6, ptr %value, align 8
  %8 = load ptr, ptr %con, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %con) #13
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define internal ptr @evaluate(ptr noundef %fcn, ptr noundef %arglist) #0 {
entry:
  %retval = alloca ptr, align 8
  %fcn.addr = alloca ptr, align 8
  %arglist.addr = alloca ptr, align 8
  %result = alloca ptr, align 8
  %timekind = alloca ptr, align 8
  %timevalue = alloca ptr, align 8
  %comptime = alloca %struct.cdCompTime, align 8
  %cdtime = alloca %struct.CdTime, align 8
  %timetype = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fcn, ptr %fcn.addr, align 8
  store ptr %arglist, ptr %arglist.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #13
  %call = call ptr @nullconst()
  store ptr %call, ptr %result, align 8
  %0 = load ptr, ptr %fcn.addr, align 8
  %lineno = getelementptr inbounds %struct.Symbol, ptr %0, i32 0, i32 17
  %1 = load i32, ptr %lineno, align 8
  %2 = load ptr, ptr %result, align 8
  %lineno1 = getelementptr inbounds %struct.NCConstant, ptr %2, i32 0, i32 2
  store i32 %1, ptr %lineno1, align 8
  %3 = load ptr, ptr %fcn.addr, align 8
  %name = getelementptr inbounds %struct.Symbol, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %name, align 8
  %call2 = call i32 @strcasecmp(ptr noundef %4, ptr noundef @.str.300) #16
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.else39

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %timekind) #13
  store ptr null, ptr %timekind, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %timevalue) #13
  store ptr null, ptr %timevalue, align 8
  %5 = load ptr, ptr %result, align 8
  %nctype = getelementptr inbounds %struct.NCConstant, ptr %5, i32 0, i32 0
  store i32 6, ptr %nctype, align 8
  %6 = load ptr, ptr %result, align 8
  %value = getelementptr inbounds %struct.NCConstant, ptr %6, i32 0, i32 3
  store double 0.000000e+00, ptr %value, align 8
  %7 = load ptr, ptr %arglist.addr, align 8
  %length = getelementptr inbounds %struct.Datalist, ptr %7, i32 0, i32 1
  %8 = load i64, ptr %length, align 8
  switch i64 %8, label %sw.default [
    i64 2, label %sw.bb
    i64 1, label %sw.bb6
    i64 0, label %sw.bb13
  ]

sw.bb:                                            ; preds = %if.then
  %9 = load ptr, ptr %arglist.addr, align 8
  %data = getelementptr inbounds %struct.Datalist, ptr %9, i32 0, i32 3
  %10 = load ptr, ptr %data, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %10, i64 1
  %11 = load ptr, ptr %arrayidx, align 8
  %nctype3 = getelementptr inbounds %struct.NCConstant, ptr %11, i32 0, i32 0
  %12 = load i32, ptr %nctype3, align 8
  %cmp4 = icmp ne i32 %12, 12
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %sw.bb
  call void (ptr, ...) @derror(ptr noundef @.str.301)
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  br label %sw.bb6

sw.bb6:                                           ; preds = %if.then, %if.end
  %13 = load ptr, ptr %arglist.addr, align 8
  %data7 = getelementptr inbounds %struct.Datalist, ptr %13, i32 0, i32 3
  %14 = load ptr, ptr %data7, align 8
  %arrayidx8 = getelementptr inbounds ptr, ptr %14, i64 0
  %15 = load ptr, ptr %arrayidx8, align 8
  %nctype9 = getelementptr inbounds %struct.NCConstant, ptr %15, i32 0, i32 0
  %16 = load i32, ptr %nctype9, align 8
  %cmp10 = icmp ne i32 %16, 12
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %sw.bb6
  call void (ptr, ...) @derror(ptr noundef @.str.301)
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end12:                                         ; preds = %sw.bb6
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.then
  br label %sw.default

sw.default:                                       ; preds = %if.then, %sw.bb13
  call void (ptr, ...) @derror(ptr noundef @.str.301)
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %if.end12
  %17 = load ptr, ptr %arglist.addr, align 8
  %length14 = getelementptr inbounds %struct.Datalist, ptr %17, i32 0, i32 1
  %18 = load i64, ptr %length14, align 8
  %cmp15 = icmp eq i64 %18, 2
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %sw.epilog
  %19 = load ptr, ptr %arglist.addr, align 8
  %data17 = getelementptr inbounds %struct.Datalist, ptr %19, i32 0, i32 3
  %20 = load ptr, ptr %data17, align 8
  %arrayidx18 = getelementptr inbounds ptr, ptr %20, i64 0
  %21 = load ptr, ptr %arrayidx18, align 8
  %value19 = getelementptr inbounds %struct.NCConstant, ptr %21, i32 0, i32 3
  %stringv = getelementptr inbounds %struct.Stringv, ptr %value19, i32 0, i32 1
  %22 = load ptr, ptr %stringv, align 8
  store ptr %22, ptr %timekind, align 8
  %23 = load ptr, ptr %arglist.addr, align 8
  %data20 = getelementptr inbounds %struct.Datalist, ptr %23, i32 0, i32 3
  %24 = load ptr, ptr %data20, align 8
  %arrayidx21 = getelementptr inbounds ptr, ptr %24, i64 1
  %25 = load ptr, ptr %arrayidx21, align 8
  %value22 = getelementptr inbounds %struct.NCConstant, ptr %25, i32 0, i32 3
  %stringv23 = getelementptr inbounds %struct.Stringv, ptr %value22, i32 0, i32 1
  %26 = load ptr, ptr %stringv23, align 8
  store ptr %26, ptr %timevalue, align 8
  br label %if.end28

if.else:                                          ; preds = %sw.epilog
  %27 = load ptr, ptr %arglist.addr, align 8
  %data24 = getelementptr inbounds %struct.Datalist, ptr %27, i32 0, i32 3
  %28 = load ptr, ptr %data24, align 8
  %arrayidx25 = getelementptr inbounds ptr, ptr %28, i64 0
  %29 = load ptr, ptr %arrayidx25, align 8
  %value26 = getelementptr inbounds %struct.NCConstant, ptr %29, i32 0, i32 3
  %stringv27 = getelementptr inbounds %struct.Stringv, ptr %value26, i32 0, i32 1
  %30 = load ptr, ptr %stringv27, align 8
  store ptr %30, ptr %timevalue, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then16
  %31 = load ptr, ptr %timekind, align 8
  %cmp29 = icmp eq ptr %31, null
  br i1 %cmp29, label %if.then30, label %if.else36

if.then30:                                        ; preds = %if.end28
  call void @llvm.lifetime.start.p0(i64 24, ptr %comptime) #13
  call void @llvm.lifetime.start.p0(i64 40, ptr %cdtime) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %timetype) #13
  store i32 4369, ptr %timetype, align 4
  %32 = load i32, ptr %timetype, align 4
  %33 = load ptr, ptr %timevalue, align 8
  call void @cdChar2Comp(i32 noundef %32, ptr noundef %33, ptr noundef %comptime)
  %year = getelementptr inbounds %struct.cdCompTime, ptr %comptime, i32 0, i32 0
  %34 = load i64, ptr %year, align 8
  %year31 = getelementptr inbounds %struct.CdTime, ptr %cdtime, i32 0, i32 0
  store i64 %34, ptr %year31, align 8
  %month = getelementptr inbounds %struct.cdCompTime, ptr %comptime, i32 0, i32 1
  %35 = load i16, ptr %month, align 8
  %month32 = getelementptr inbounds %struct.CdTime, ptr %cdtime, i32 0, i32 1
  store i16 %35, ptr %month32, align 8
  %day = getelementptr inbounds %struct.cdCompTime, ptr %comptime, i32 0, i32 2
  %36 = load i16, ptr %day, align 2
  %day33 = getelementptr inbounds %struct.CdTime, ptr %cdtime, i32 0, i32 2
  store i16 %36, ptr %day33, align 2
  %hour = getelementptr inbounds %struct.cdCompTime, ptr %comptime, i32 0, i32 3
  %37 = load double, ptr %hour, align 8
  %hour34 = getelementptr inbounds %struct.CdTime, ptr %cdtime, i32 0, i32 3
  store double %37, ptr %hour34, align 8
  %baseYear = getelementptr inbounds %struct.CdTime, ptr %cdtime, i32 0, i32 4
  store i64 1970, ptr %baseYear, align 8
  %timeType = getelementptr inbounds %struct.CdTime, ptr %cdtime, i32 0, i32 5
  store i32 4369, ptr %timeType, align 8
  %38 = load ptr, ptr %result, align 8
  %value35 = getelementptr inbounds %struct.NCConstant, ptr %38, i32 0, i32 3
  call void @Cdh2e(ptr noundef %cdtime, ptr noundef %value35)
  call void @llvm.lifetime.end.p0(i64 4, ptr %timetype) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr %cdtime) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr %comptime) #13
  br label %if.end37

if.else36:                                        ; preds = %if.end28
  %39 = load ptr, ptr %timekind, align 8
  call void (ptr, ...) @derror(ptr noundef @.str.302, ptr noundef %39)
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end37:                                         ; preds = %if.then30
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else36, %sw.default, %if.then11, %if.then5, %if.end37
  call void @llvm.lifetime.end.p0(i64 8, ptr %timevalue) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %timekind) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup42 [
    i32 0, label %cleanup.cont
    i32 3, label %done
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end41

if.else39:                                        ; preds = %entry
  %40 = load ptr, ptr %fcn.addr, align 8
  %name40 = getelementptr inbounds %struct.Symbol, ptr %40, i32 0, i32 2
  %41 = load ptr, ptr %name40, align 8
  call void (ptr, ...) @derror(ptr noundef @.str.303, ptr noundef %41)
  br label %done

if.end41:                                         ; preds = %cleanup.cont
  br label %done

done:                                             ; preds = %if.end41, %cleanup, %if.else39
  %42 = load ptr, ptr %result, align 8
  store ptr %42, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup42

cleanup42:                                        ; preds = %done, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #13
  %43 = load ptr, ptr %retval, align 8
  ret ptr %43
}

; Function Attrs: nounwind uwtable
define internal ptr @identkeyword(ptr noundef %kw) #0 {
entry:
  %kw.addr = alloca ptr, align 8
  %sym = alloca ptr, align 8
  store ptr %kw, ptr %kw.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %sym) #13
  store ptr null, ptr %sym, align 8
  %0 = load ptr, ptr %kw.addr, align 8
  %name = getelementptr inbounds %struct.Symbol, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %name, align 8
  %call = call ptr @install(ptr noundef %1)
  store ptr %call, ptr %sym, align 8
  %2 = load ptr, ptr %sym, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %sym) #13
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define internal i32 @yysyntax_error(ptr noundef %yymsg_alloc, ptr noundef %yymsg, ptr noundef %yyctx) #0 {
entry:
  %retval = alloca i32, align 4
  %yymsg_alloc.addr = alloca ptr, align 8
  %yymsg.addr = alloca ptr, align 8
  %yyctx.addr = alloca ptr, align 8
  %yyformat = alloca ptr, align 8
  %yyarg = alloca [5 x i32], align 16
  %yysize = alloca i64, align 8
  %yycount = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %yyi = alloca i32, align 4
  %yysize1 = alloca i64, align 8
  %yyp = alloca ptr, align 8
  %yyi34 = alloca i32, align 4
  store ptr %yymsg_alloc, ptr %yymsg_alloc.addr, align 8
  store ptr %yymsg, ptr %yymsg.addr, align 8
  store ptr %yyctx, ptr %yyctx.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %yyformat) #13
  store ptr null, ptr %yyformat, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr %yyarg) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %yysize) #13
  store i64 0, ptr %yysize, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %yycount) #13
  %0 = load ptr, ptr %yyctx.addr, align 8
  %arraydecay = getelementptr inbounds [5 x i32], ptr %yyarg, i64 0, i64 0
  %call = call i32 @yy_syntax_error_arguments(ptr noundef %0, ptr noundef %arraydecay, i32 noundef 5)
  store i32 %call, ptr %yycount, align 4
  %1 = load i32, ptr %yycount, align 4
  %cmp = icmp eq i32 %1, -2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup60

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %yycount, align 4
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
    i32 5, label %sw.bb5
  ]

sw.default:                                       ; preds = %if.end
  br label %sw.bb

sw.bb:                                            ; preds = %if.end, %sw.default
  store ptr @.str.44, ptr %yyformat, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  store ptr @.str.237, ptr %yyformat, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  store ptr @.str.238, ptr %yyformat, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  store ptr @.str.239, ptr %yyformat, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  store ptr @.str.240, ptr %yyformat, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  store ptr @.str.241, ptr %yyformat, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %3 = load ptr, ptr %yyformat, align 8
  %call6 = call i64 @strlen(ptr noundef %3) #16
  %4 = load i32, ptr %yycount, align 4
  %mul = mul nsw i32 2, %4
  %conv = sext i32 %mul to i64
  %sub = sub nsw i64 %call6, %conv
  %add = add nsw i64 %sub, 1
  store i64 %add, ptr %yysize, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %yyi) #13
  store i32 0, ptr %yyi, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %5 = load i32, ptr %yyi, align 4
  %6 = load i32, ptr %yycount, align 4
  %cmp7 = icmp slt i32 %5, %6
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %yysize1) #13
  %7 = load i64, ptr %yysize, align 8
  %8 = load i32, ptr %yyi, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [5 x i32], ptr %yyarg, i64 0, i64 %idxprom
  %9 = load i32, ptr %arrayidx, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [138 x ptr], ptr @yytname, i64 0, i64 %idxprom9
  %10 = load ptr, ptr %arrayidx10, align 8
  %call11 = call i64 @yytnamerr(ptr noundef null, ptr noundef %10)
  %add12 = add nsw i64 %7, %call11
  store i64 %add12, ptr %yysize1, align 8
  %11 = load i64, ptr %yysize, align 8
  %12 = load i64, ptr %yysize1, align 8
  %cmp13 = icmp sle i64 %11, %12
  br i1 %cmp13, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %13 = load i64, ptr %yysize1, align 8
  %cmp15 = icmp sle i64 %13, 9223372036854775807
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %land.lhs.true
  %14 = load i64, ptr %yysize1, align 8
  store i64 %14, ptr %yysize, align 8
  br label %if.end18

if.else:                                          ; preds = %land.lhs.true, %for.body
  store i32 -2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.then17
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.else
  call void @llvm.lifetime.end.p0(i64 8, ptr %yysize1) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup19 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %15 = load i32, ptr %yyi, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %yyi, align 4
  br label %for.cond, !llvm.loop !26

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup19

cleanup19:                                        ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %yyi) #13
  %cleanup.dest20 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest20, label %cleanup60 [
    i32 0, label %cleanup.cont21
  ]

cleanup.cont21:                                   ; preds = %cleanup19
  %16 = load ptr, ptr %yymsg_alloc.addr, align 8
  %17 = load i64, ptr %16, align 8
  %18 = load i64, ptr %yysize, align 8
  %cmp22 = icmp slt i64 %17, %18
  br i1 %cmp22, label %if.then24, label %if.end33

if.then24:                                        ; preds = %cleanup.cont21
  %19 = load i64, ptr %yysize, align 8
  %mul25 = mul nsw i64 2, %19
  %20 = load ptr, ptr %yymsg_alloc.addr, align 8
  store i64 %mul25, ptr %20, align 8
  %21 = load i64, ptr %yysize, align 8
  %22 = load ptr, ptr %yymsg_alloc.addr, align 8
  %23 = load i64, ptr %22, align 8
  %cmp26 = icmp sle i64 %21, %23
  br i1 %cmp26, label %land.lhs.true28, label %if.then31

land.lhs.true28:                                  ; preds = %if.then24
  %24 = load ptr, ptr %yymsg_alloc.addr, align 8
  %25 = load i64, ptr %24, align 8
  %cmp29 = icmp sle i64 %25, 9223372036854775807
  br i1 %cmp29, label %if.end32, label %if.then31

if.then31:                                        ; preds = %land.lhs.true28, %if.then24
  %26 = load ptr, ptr %yymsg_alloc.addr, align 8
  store i64 9223372036854775807, ptr %26, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %land.lhs.true28
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup60

if.end33:                                         ; preds = %cleanup.cont21
  call void @llvm.lifetime.start.p0(i64 8, ptr %yyp) #13
  %27 = load ptr, ptr %yymsg.addr, align 8
  %28 = load ptr, ptr %27, align 8
  store ptr %28, ptr %yyp, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %yyi34) #13
  store i32 0, ptr %yyi34, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end59, %if.end33
  %29 = load ptr, ptr %yyformat, align 8
  %30 = load i8, ptr %29, align 1
  %31 = load ptr, ptr %yyp, align 8
  store i8 %30, ptr %31, align 1
  %conv35 = sext i8 %30 to i32
  %cmp36 = icmp ne i32 %conv35, 0
  br i1 %cmp36, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %32 = load ptr, ptr %yyp, align 8
  %33 = load i8, ptr %32, align 1
  %conv38 = sext i8 %33 to i32
  %cmp39 = icmp eq i32 %conv38, 37
  br i1 %cmp39, label %land.lhs.true41, label %if.else57

land.lhs.true41:                                  ; preds = %while.body
  %34 = load ptr, ptr %yyformat, align 8
  %arrayidx42 = getelementptr inbounds i8, ptr %34, i64 1
  %35 = load i8, ptr %arrayidx42, align 1
  %conv43 = sext i8 %35 to i32
  %cmp44 = icmp eq i32 %conv43, 115
  br i1 %cmp44, label %land.lhs.true46, label %if.else57

land.lhs.true46:                                  ; preds = %land.lhs.true41
  %36 = load i32, ptr %yyi34, align 4
  %37 = load i32, ptr %yycount, align 4
  %cmp47 = icmp slt i32 %36, %37
  br i1 %cmp47, label %if.then49, label %if.else57

if.then49:                                        ; preds = %land.lhs.true46
  %38 = load ptr, ptr %yyp, align 8
  %39 = load i32, ptr %yyi34, align 4
  %inc50 = add nsw i32 %39, 1
  store i32 %inc50, ptr %yyi34, align 4
  %idxprom51 = sext i32 %39 to i64
  %arrayidx52 = getelementptr inbounds [5 x i32], ptr %yyarg, i64 0, i64 %idxprom51
  %40 = load i32, ptr %arrayidx52, align 4
  %idxprom53 = sext i32 %40 to i64
  %arrayidx54 = getelementptr inbounds [138 x ptr], ptr @yytname, i64 0, i64 %idxprom53
  %41 = load ptr, ptr %arrayidx54, align 8
  %call55 = call i64 @yytnamerr(ptr noundef %38, ptr noundef %41)
  %42 = load ptr, ptr %yyp, align 8
  %add.ptr = getelementptr inbounds i8, ptr %42, i64 %call55
  store ptr %add.ptr, ptr %yyp, align 8
  %43 = load ptr, ptr %yyformat, align 8
  %add.ptr56 = getelementptr inbounds i8, ptr %43, i64 2
  store ptr %add.ptr56, ptr %yyformat, align 8
  br label %if.end59

if.else57:                                        ; preds = %land.lhs.true46, %land.lhs.true41, %while.body
  %44 = load ptr, ptr %yyp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %44, i32 1
  store ptr %incdec.ptr, ptr %yyp, align 8
  %45 = load ptr, ptr %yyformat, align 8
  %incdec.ptr58 = getelementptr inbounds i8, ptr %45, i32 1
  store ptr %incdec.ptr58, ptr %yyformat, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.else57, %if.then49
  br label %while.cond, !llvm.loop !27

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %yyi34) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %yyp) #13
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup60

cleanup60:                                        ; preds = %while.end, %if.end32, %cleanup19, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %yycount) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %yysize) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr %yyarg) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %yyformat) #13
  %46 = load i32, ptr %retval, align 4
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define internal void @yydestruct(ptr noundef %yymsg, i32 noundef %yykind, ptr noundef %yyvaluep) #0 {
entry:
  %yymsg.addr = alloca ptr, align 8
  %yykind.addr = alloca i32, align 4
  %yyvaluep.addr = alloca ptr, align 8
  store ptr %yymsg, ptr %yymsg.addr, align 8
  store i32 %yykind, ptr %yykind.addr, align 4
  store ptr %yyvaluep, ptr %yyvaluep.addr, align 8
  %0 = load ptr, ptr %yyvaluep.addr, align 8
  %1 = load ptr, ptr %yymsg.addr, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr @.str.242, ptr %yymsg.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %2 = load i32, ptr @ncgdebug, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %do.body
  %3 = load ptr, ptr @stderr, align 8
  %4 = load ptr, ptr %yymsg.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.18, ptr noundef %4)
  %5 = load ptr, ptr @stderr, align 8
  %6 = load i32, ptr %yykind.addr, align 4
  %7 = load ptr, ptr %yyvaluep.addr, align 8
  call void @yy_symbol_print(ptr noundef %5, i32 noundef %6, ptr noundef %7)
  %8 = load ptr, ptr @stderr, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.20)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end4
  %9 = load i32, ptr %yykind.addr, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ncgensure_buffer_stack() #0 {
entry:
  %num_to_alloc = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %grow_size = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_to_alloc) #13
  %0 = load ptr, ptr @yy_buffer_stack, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  store i64 1, ptr %num_to_alloc, align 8
  %1 = load i64, ptr %num_to_alloc, align 8
  %mul = mul i64 %1, 8
  %call = call ptr @ncgalloc(i64 noundef %mul)
  store ptr %call, ptr @yy_buffer_stack, align 8
  %2 = load ptr, ptr @yy_buffer_stack, align 8
  %tobool1 = icmp ne ptr %2, null
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @yy_fatal_error(ptr noundef @.str.248) #18
  unreachable

if.end:                                           ; preds = %if.then
  %3 = load ptr, ptr @yy_buffer_stack, align 8
  %4 = load i64, ptr %num_to_alloc, align 8
  %mul3 = mul i64 %4, 8
  call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 %mul3, i1 false)
  %5 = load i64, ptr %num_to_alloc, align 8
  store i64 %5, ptr @yy_buffer_stack_max, align 8
  store i64 0, ptr @yy_buffer_stack_top, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %entry
  %6 = load i64, ptr @yy_buffer_stack_top, align 8
  %7 = load i64, ptr @yy_buffer_stack_max, align 8
  %sub = sub i64 %7, 1
  %cmp = icmp uge i64 %6, %sub
  br i1 %cmp, label %if.then5, label %if.end12

if.then5:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 8, ptr %grow_size) #13
  store i64 8, ptr %grow_size, align 8
  %8 = load i64, ptr @yy_buffer_stack_max, align 8
  %9 = load i64, ptr %grow_size, align 8
  %add = add i64 %8, %9
  store i64 %add, ptr %num_to_alloc, align 8
  %10 = load ptr, ptr @yy_buffer_stack, align 8
  %11 = load i64, ptr %num_to_alloc, align 8
  %mul6 = mul i64 %11, 8
  %call7 = call ptr @ncgrealloc(ptr noundef %10, i64 noundef %mul6)
  store ptr %call7, ptr @yy_buffer_stack, align 8
  %12 = load ptr, ptr @yy_buffer_stack, align 8
  %tobool8 = icmp ne ptr %12, null
  br i1 %tobool8, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.then5
  call void @yy_fatal_error(ptr noundef @.str.248) #18
  unreachable

if.end10:                                         ; preds = %if.then5
  %13 = load ptr, ptr @yy_buffer_stack, align 8
  %14 = load i64, ptr @yy_buffer_stack_max, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %13, i64 %14
  %15 = load i64, ptr %grow_size, align 8
  %mul11 = mul i64 %15, 8
  call void @llvm.memset.p0.i64(ptr align 8 %add.ptr, i8 0, i64 %mul11, i1 false)
  %16 = load i64, ptr %num_to_alloc, align 8
  store i64 %16, ptr @yy_buffer_stack_max, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %grow_size) #13
  br label %if.end12

if.end12:                                         ; preds = %if.end10, %if.end4
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_to_alloc) #13
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

; Function Attrs: nounwind uwtable
define ptr @ncg_create_buffer(ptr noundef %file, i32 noundef %size) #0 {
entry:
  %file.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %b = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #13
  %call = call ptr @ncgalloc(i64 noundef 64)
  store ptr %call, ptr %b, align 8
  %0 = load ptr, ptr %b, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @yy_fatal_error(ptr noundef @.str.87) #18
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %size.addr, align 4
  %2 = load ptr, ptr %b, align 8
  %yy_buf_size = getelementptr inbounds %struct.yy_buffer_state, ptr %2, i32 0, i32 3
  store i32 %1, ptr %yy_buf_size, align 8
  %3 = load ptr, ptr %b, align 8
  %yy_buf_size1 = getelementptr inbounds %struct.yy_buffer_state, ptr %3, i32 0, i32 3
  %4 = load i32, ptr %yy_buf_size1, align 8
  %add = add nsw i32 %4, 2
  %conv = sext i32 %add to i64
  %call2 = call ptr @ncgalloc(i64 noundef %conv)
  %5 = load ptr, ptr %b, align 8
  %yy_ch_buf = getelementptr inbounds %struct.yy_buffer_state, ptr %5, i32 0, i32 1
  store ptr %call2, ptr %yy_ch_buf, align 8
  %6 = load ptr, ptr %b, align 8
  %yy_ch_buf3 = getelementptr inbounds %struct.yy_buffer_state, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %yy_ch_buf3, align 8
  %tobool4 = icmp ne ptr %7, null
  br i1 %tobool4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @yy_fatal_error(ptr noundef @.str.87) #18
  unreachable

if.end6:                                          ; preds = %if.end
  %8 = load ptr, ptr %b, align 8
  %yy_is_our_buffer = getelementptr inbounds %struct.yy_buffer_state, ptr %8, i32 0, i32 5
  store i32 1, ptr %yy_is_our_buffer, align 8
  %9 = load ptr, ptr %b, align 8
  %10 = load ptr, ptr %file.addr, align 8
  call void @ncg_init_buffer(ptr noundef %9, ptr noundef %10)
  %11 = load ptr, ptr %b, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #13
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define internal void @ncg_load_buffer_state() #0 {
entry:
  %0 = load ptr, ptr @yy_buffer_stack, align 8
  %1 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 %1
  %2 = load ptr, ptr %arrayidx, align 8
  %yy_n_chars = getelementptr inbounds %struct.yy_buffer_state, ptr %2, i32 0, i32 4
  %3 = load i32, ptr %yy_n_chars, align 4
  store i32 %3, ptr @yy_n_chars, align 4
  %4 = load ptr, ptr @yy_buffer_stack, align 8
  %5 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx1 = getelementptr inbounds ptr, ptr %4, i64 %5
  %6 = load ptr, ptr %arrayidx1, align 8
  %yy_buf_pos = getelementptr inbounds %struct.yy_buffer_state, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %yy_buf_pos, align 8
  store ptr %7, ptr @yy_c_buf_p, align 8
  store ptr %7, ptr @ncgtext, align 8
  %8 = load ptr, ptr @yy_buffer_stack, align 8
  %9 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %8, i64 %9
  %10 = load ptr, ptr %arrayidx2, align 8
  %yy_input_file = getelementptr inbounds %struct.yy_buffer_state, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %yy_input_file, align 8
  store ptr %11, ptr @ncgin, align 8
  %12 = load ptr, ptr @yy_c_buf_p, align 8
  %13 = load i8, ptr %12, align 1
  store i8 %13, ptr @yy_hold_char, align 1
  ret void
}

declare i32 @unescape(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

declare i32 @bbAppendn(ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @bbNull(ptr noundef) #2

declare void @chkfree(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @lexdebug(i32 noundef %token) #0 {
entry:
  %token.addr = alloca i32, align 4
  store i32 %token, ptr %token.addr, align 4
  %0 = load i32, ptr @debug, align 4
  %cmp = icmp sge i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8
  %2 = load i32, ptr %token.addr, align 4
  %3 = load ptr, ptr @ncgtext, align 8
  %4 = load i32, ptr @lineno, align 4
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.250, i32 noundef %2, ptr noundef %3, i32 noundef %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %token.addr, align 4
  ret i32 %5
}

declare i32 @bbAppend(ptr noundef, i8 noundef signext) #2

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() #8

; Function Attrs: nounwind uwtable
define internal i32 @identcheck(i32 noundef %token) #0 {
entry:
  %token.addr = alloca i32, align 4
  store i32 %token, ptr %token.addr, align 4
  %0 = load i32, ptr %token.addr, align 4
  switch i32 %0, label %sw.default [
    i32 265, label %sw.bb
    i32 266, label %sw.bb
    i32 267, label %sw.bb
    i32 268, label %sw.bb
    i32 269, label %sw.bb
    i32 270, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry
  %1 = load i32, ptr @k_flag, align 4
  %cmp = icmp ne i32 %1, 3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %2 = load i32, ptr @k_flag, align 4
  %cmp1 = icmp ne i32 %2, 5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr @ncgtext, align 8
  %call = call ptr @install(ptr noundef %3)
  store ptr %call, ptr @ncglval, align 8
  store i32 271, ptr %token.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %sw.bb
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %4 = load i32, ptr @k_flag, align 4
  %cmp3 = icmp ne i32 %4, 3
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %sw.bb2
  %5 = load ptr, ptr @ncgtext, align 8
  %call5 = call ptr @install(ptr noundef %5)
  store ptr %call5, ptr @ncglval, align 8
  store i32 271, ptr %token.addr, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %sw.bb2
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end6, %if.end
  %6 = load i32, ptr %token.addr, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal ptr @makepath(ptr noundef %text0) #0 {
entry:
  %text0.addr = alloca ptr, align 8
  %refsym = alloca ptr, align 8
  %prefix = alloca ptr, align 8
  %container = alloca ptr, align 8
  %ident = alloca ptr, align 8
  %p = alloca ptr, align 8
  %match = alloca ptr, align 8
  %text = alloca ptr, align 8
  %lastident = alloca i32, align 4
  store ptr %text0, ptr %text0.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %refsym) #13
  store ptr null, ptr %refsym, align 8
  %0 = load ptr, ptr %text0.addr, align 8
  %call = call i32 @strcmp(ptr noundef %0, ptr noundef @.str.251) #16
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @rootgroup, align 8
  store ptr %1, ptr %refsym, align 8
  br label %if.end29

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %prefix) #13
  %call1 = call ptr @listnew()
  store ptr %call1, ptr %prefix, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %container) #13
  %2 = load ptr, ptr @rootgroup, align 8
  store ptr %2, ptr %container, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ident) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %match) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %text) #13
  %3 = load ptr, ptr %text0.addr, align 8
  %call2 = call ptr @chkstrdup(ptr noundef %3)
  store ptr %call2, ptr %text, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %lastident) #13
  %4 = load ptr, ptr %text, align 8
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %add.ptr, ptr %ident, align 8
  %5 = load ptr, ptr %ident, align 8
  store ptr %5, ptr %p, align 8
  store i32 0, ptr %lastident, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.else
  %6 = load ptr, ptr %p, align 8
  %call3 = call ptr @esc_strchr(ptr noundef %6, i32 noundef 47, i32 noundef 0)
  store ptr %call3, ptr %match, align 8
  %7 = load ptr, ptr %match, align 8
  %8 = load i8, ptr %7, align 1
  %conv = sext i8 %8 to i32
  %cmp4 = icmp eq i32 %conv, 0
  %conv5 = zext i1 %cmp4 to i32
  store i32 %conv5, ptr %lastident, align 4
  %9 = load ptr, ptr %match, align 8
  store i8 0, ptr %9, align 1
  %10 = load ptr, ptr %p, align 8
  %11 = load ptr, ptr %p, align 8
  %call6 = call i64 @strlen(ptr noundef %11) #16
  %conv7 = trunc i64 %call6 to i32
  %call8 = call i32 @unescape(ptr noundef %10, i32 noundef %conv7, i32 noundef 1, ptr noundef %ident)
  %12 = load ptr, ptr %ident, align 8
  %13 = load ptr, ptr %container, align 8
  %call9 = call ptr @lookupingroup(i32 noundef 100, ptr noundef %12, ptr noundef %13)
  store ptr %call9, ptr %refsym, align 8
  %14 = load i32, ptr %lastident, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.else17, label %if.then10

if.then10:                                        ; preds = %do.body
  %15 = load ptr, ptr %refsym, align 8
  %cmp11 = icmp eq ptr %15, null
  br i1 %cmp11, label %if.then13, label %if.else15

if.then13:                                        ; preds = %if.then10
  %16 = load ptr, ptr %ident, align 8
  %call14 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef @errstr, ptr noundef @.str.252, ptr noundef %16) #13
  call void (ptr, ...) @ncgerror(ptr noundef @errstr)
  %17 = load ptr, ptr @rootgroup, align 8
  store ptr %17, ptr %refsym, align 8
  br label %if.end

if.else15:                                        ; preds = %if.then10
  %18 = load ptr, ptr %prefix, align 8
  %19 = load ptr, ptr %refsym, align 8
  %call16 = call i32 @listpush(ptr noundef %18, ptr noundef %19)
  br label %if.end

if.end:                                           ; preds = %if.else15, %if.then13
  br label %if.end21

if.else17:                                        ; preds = %do.body
  %20 = load ptr, ptr %ident, align 8
  %call18 = call ptr @install(ptr noundef %20)
  store ptr %call18, ptr %refsym, align 8
  %21 = load ptr, ptr %refsym, align 8
  %objectclass = getelementptr inbounds %struct.Symbol, ptr %21, i32 0, i32 0
  store i32 100, ptr %objectclass, align 8
  %22 = load ptr, ptr %refsym, align 8
  %ref = getelementptr inbounds %struct.Symbol, ptr %22, i32 0, i32 16
  %is_ref = getelementptr inbounds %struct.Reference, ptr %ref, i32 0, i32 0
  store i32 1, ptr %is_ref, align 8
  %23 = load ptr, ptr %container, align 8
  %24 = load ptr, ptr %refsym, align 8
  %container19 = getelementptr inbounds %struct.Symbol, ptr %24, i32 0, i32 4
  store ptr %23, ptr %container19, align 8
  %call20 = call ptr @listnew()
  %25 = load ptr, ptr %refsym, align 8
  %subnodes = getelementptr inbounds %struct.Symbol, ptr %25, i32 0, i32 6
  store ptr %call20, ptr %subnodes, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.else17, %if.end
  %26 = load ptr, ptr %refsym, align 8
  store ptr %26, ptr %container, align 8
  %27 = load i32, ptr %lastident, align 4
  %tobool22 = icmp ne i32 %27, 0
  br i1 %tobool22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end21
  %28 = load ptr, ptr %match, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end21
  %29 = load ptr, ptr %match, align 8
  %add.ptr23 = getelementptr inbounds i8, ptr %29, i64 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %28, %cond.true ], [ %add.ptr23, %cond.false ]
  store ptr %cond, ptr %p, align 8
  %30 = load ptr, ptr %ident, align 8
  %tobool24 = icmp ne ptr %30, null
  br i1 %tobool24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %cond.end
  %31 = load ptr, ptr %ident, align 8
  call void @chkfree(ptr noundef %31)
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %cond.end
  br label %do.cond

do.cond:                                          ; preds = %if.end26
  %32 = load i32, ptr %lastident, align 4
  %tobool27 = icmp ne i32 %32, 0
  %lnot = xor i1 %tobool27, true
  br i1 %lnot, label %do.body, label %do.end, !llvm.loop !28

do.end:                                           ; preds = %do.cond
  %33 = load ptr, ptr %prefix, align 8
  %34 = load ptr, ptr %refsym, align 8
  %prefix28 = getelementptr inbounds %struct.Symbol, ptr %34, i32 0, i32 8
  store ptr %33, ptr %prefix28, align 8
  %35 = load ptr, ptr %text, align 8
  call void @chkfree(ptr noundef %35)
  call void @llvm.lifetime.end.p0(i64 4, ptr %lastident) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %text) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %match) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %ident) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %container) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %prefix) #13
  br label %if.end29

if.end29:                                         ; preds = %do.end, %if.then
  %36 = load ptr, ptr %refsym, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %refsym) #13
  ret ptr %36
}

declare ptr @bbDup(ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #7

; Function Attrs: nounwind uwtable
define internal i32 @collecttag(ptr noundef %text, ptr noundef %stagp) #0 {
entry:
  %retval = alloca i32, align 4
  %text.addr = alloca ptr, align 8
  %stagp.addr = alloca ptr, align 8
  %stag0 = alloca ptr, align 8
  %stag = alloca [4 x i8], align 1
  %slen = alloca i32, align 4
  %staglen = alloca i32, align 4
  %tag = alloca i32, align 4
  %hasU = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %text, ptr %text.addr, align 8
  store ptr %stagp, ptr %stagp.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %stag0) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %stag) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %slen) #13
  %0 = load ptr, ptr %text.addr, align 8
  %call = call i64 @strlen(ptr noundef %0) #16
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %slen, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %staglen) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %tag) #13
  store i32 0, ptr %tag, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %hasU) #13
  store i32 0, ptr %hasU, align 4
  %1 = load ptr, ptr %text.addr, align 8
  %2 = load i32, ptr %slen, align 4
  %sub = sub nsw i32 %2, 1
  %idx.ext = sext i32 %sub to i64
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %idx.ext
  store ptr %add.ptr, ptr %stag0, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %stag0, align 8
  %cmp = icmp ugt ptr %3, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %stag0, align 8
  %5 = load i8, ptr %4, align 1
  %conv2 = sext i8 %5 to i32
  %call3 = call ptr @strchr(ptr noundef @.str.254, i32 noundef %conv2) #16
  %cmp4 = icmp eq ptr %call3, null
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load ptr, ptr %stag0, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %stag0, align 8
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load ptr, ptr %stag0, align 8
  %incdec.ptr6 = getelementptr inbounds i8, ptr %7, i32 -1
  store ptr %incdec.ptr6, ptr %stag0, align 8
  br label %for.cond, !llvm.loop !29

for.end:                                          ; preds = %if.then, %for.cond
  %8 = load ptr, ptr %stagp.addr, align 8
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %if.then7, label %if.end8

if.then7:                                         ; preds = %for.end
  %9 = load ptr, ptr %stag0, align 8
  %10 = load ptr, ptr %stagp.addr, align 8
  store ptr %9, ptr %10, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %for.end
  %11 = load ptr, ptr %stag0, align 8
  %call9 = call i64 @strlen(ptr noundef %11) #16
  %conv10 = trunc i64 %call9 to i32
  store i32 %conv10, ptr %staglen, align 4
  %12 = load i32, ptr %staglen, align 4
  %cmp11 = icmp eq i32 %12, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end8
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %13 = load i32, ptr %staglen, align 4
  %cmp15 = icmp sgt i32 %13, 3
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end14
  %14 = load i32, ptr %tag, align 4
  store i32 %14, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %arraydecay = getelementptr inbounds [4 x i8], ptr %stag, i64 0, i64 0
  %15 = load ptr, ptr %stag0, align 8
  %call19 = call ptr @strncpy(ptr noundef %arraydecay, ptr noundef %15, i64 noundef 4) #13
  %arrayidx = getelementptr inbounds [4 x i8], ptr %stag, i64 0, i64 3
  store i8 0, ptr %arrayidx, align 1
  %arrayidx20 = getelementptr inbounds [4 x i8], ptr %stag, i64 0, i64 0
  %16 = load i8, ptr %arrayidx20, align 1
  %conv21 = sext i8 %16 to i32
  %cmp22 = icmp eq i32 %conv21, 85
  br i1 %cmp22, label %if.then28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end18
  %arrayidx24 = getelementptr inbounds [4 x i8], ptr %stag, i64 0, i64 0
  %17 = load i8, ptr %arrayidx24, align 1
  %conv25 = sext i8 %17 to i32
  %cmp26 = icmp eq i32 %conv25, 117
  br i1 %cmp26, label %if.then28, label %if.else

if.then28:                                        ; preds = %lor.lhs.false, %if.end18
  store i32 1, ptr %hasU, align 4
  %arraydecay29 = getelementptr inbounds [4 x i8], ptr %stag, i64 0, i64 0
  %arraydecay30 = getelementptr inbounds [4 x i8], ptr %stag, i64 0, i64 0
  %add.ptr31 = getelementptr inbounds i8, ptr %arraydecay30, i64 1
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %arraydecay29, ptr align 1 %add.ptr31, i64 3, i1 false)
  %18 = load i32, ptr %staglen, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, ptr %staglen, align 4
  br label %if.end49

if.else:                                          ; preds = %lor.lhs.false
  %19 = load i32, ptr %staglen, align 4
  %sub32 = sub nsw i32 %19, 1
  %idxprom = sext i32 %sub32 to i64
  %arrayidx33 = getelementptr inbounds [4 x i8], ptr %stag, i64 0, i64 %idxprom
  %20 = load i8, ptr %arrayidx33, align 1
  %conv34 = sext i8 %20 to i32
  %cmp35 = icmp eq i32 %conv34, 85
  br i1 %cmp35, label %if.then44, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %if.else
  %21 = load i32, ptr %staglen, align 4
  %sub38 = sub nsw i32 %21, 1
  %idxprom39 = sext i32 %sub38 to i64
  %arrayidx40 = getelementptr inbounds [4 x i8], ptr %stag, i64 0, i64 %idxprom39
  %22 = load i8, ptr %arrayidx40, align 1
  %conv41 = sext i8 %22 to i32
  %cmp42 = icmp eq i32 %conv41, 117
  br i1 %cmp42, label %if.then44, label %if.end48

if.then44:                                        ; preds = %lor.lhs.false37, %if.else
  store i32 1, ptr %hasU, align 4
  %23 = load i32, ptr %staglen, align 4
  %dec45 = add nsw i32 %23, -1
  store i32 %dec45, ptr %staglen, align 4
  %24 = load i32, ptr %staglen, align 4
  %idxprom46 = sext i32 %24 to i64
  %arrayidx47 = getelementptr inbounds [4 x i8], ptr %stag, i64 0, i64 %idxprom46
  store i8 0, ptr %arrayidx47, align 1
  br label %if.end48

if.end48:                                         ; preds = %if.then44, %lor.lhs.false37
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then28
  %arraydecay50 = getelementptr inbounds [4 x i8], ptr %stag, i64 0, i64 0
  %call51 = call i64 @strlen(ptr noundef %arraydecay50) #16
  %cmp52 = icmp eq i64 %call51, 0
  br i1 %cmp52, label %land.lhs.true, label %if.else56

land.lhs.true:                                    ; preds = %if.end49
  %25 = load i32, ptr %hasU, align 4
  %tobool54 = icmp ne i32 %25, 0
  br i1 %tobool54, label %if.then55, label %if.else56

if.then55:                                        ; preds = %land.lhs.true
  store i32 9, ptr %tag, align 4
  br label %if.end81

if.else56:                                        ; preds = %land.lhs.true, %if.end49
  %arraydecay57 = getelementptr inbounds [4 x i8], ptr %stag, i64 0, i64 0
  %call58 = call i64 @strlen(ptr noundef %arraydecay57) #16
  %cmp59 = icmp eq i64 %call58, 1
  br i1 %cmp59, label %if.then61, label %if.else71

if.then61:                                        ; preds = %if.else56
  %arrayidx62 = getelementptr inbounds [4 x i8], ptr %stag, i64 0, i64 0
  %26 = load i8, ptr %arrayidx62, align 1
  %conv63 = sext i8 %26 to i32
  switch i32 %conv63, label %sw.default [
    i32 66, label %sw.bb
    i32 98, label %sw.bb
    i32 83, label %sw.bb65
    i32 115, label %sw.bb65
    i32 76, label %sw.bb68
    i32 108, label %sw.bb68
  ]

sw.bb:                                            ; preds = %if.then61, %if.then61
  %27 = load i32, ptr %hasU, align 4
  %tobool64 = icmp ne i32 %27, 0
  %28 = zext i1 %tobool64 to i64
  %cond = select i1 %tobool64, i32 7, i32 1
  store i32 %cond, ptr %tag, align 4
  br label %sw.epilog

sw.bb65:                                          ; preds = %if.then61, %if.then61
  %29 = load i32, ptr %hasU, align 4
  %tobool66 = icmp ne i32 %29, 0
  %30 = zext i1 %tobool66 to i64
  %cond67 = select i1 %tobool66, i32 8, i32 3
  store i32 %cond67, ptr %tag, align 4
  br label %sw.epilog

sw.bb68:                                          ; preds = %if.then61, %if.then61
  %31 = load i32, ptr %hasU, align 4
  %tobool69 = icmp ne i32 %31, 0
  %32 = zext i1 %tobool69 to i64
  %cond70 = select i1 %tobool69, i32 9, i32 4
  store i32 %cond70, ptr %tag, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then61
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb68, %sw.bb65, %sw.bb
  br label %if.end80

if.else71:                                        ; preds = %if.else56
  %arraydecay72 = getelementptr inbounds [4 x i8], ptr %stag, i64 0, i64 0
  %call73 = call i32 @strcasecmp(ptr noundef %arraydecay72, ptr noundef @.str.255) #16
  %cmp74 = icmp eq i32 %call73, 0
  br i1 %cmp74, label %if.then76, label %if.end79

if.then76:                                        ; preds = %if.else71
  %33 = load i32, ptr %hasU, align 4
  %tobool77 = icmp ne i32 %33, 0
  %34 = zext i1 %tobool77 to i64
  %cond78 = select i1 %tobool77, i32 11, i32 10
  store i32 %cond78, ptr %tag, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then76, %if.else71
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %sw.epilog
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.then55
  %35 = load i32, ptr %tag, align 4
  %cmp82 = icmp eq i32 %35, 0
  br i1 %cmp82, label %if.then84, label %if.end91

if.then84:                                        ; preds = %if.end81
  %arraydecay85 = getelementptr inbounds [4 x i8], ptr %stag, i64 0, i64 0
  %call86 = call i64 @strlen(ptr noundef %arraydecay85) #16
  %cmp87 = icmp ugt i64 %call86, 0
  br i1 %cmp87, label %if.then89, label %if.end90

if.then89:                                        ; preds = %if.then84
  %36 = load i32, ptr %tag, align 4
  store i32 %36, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end90:                                         ; preds = %if.then84
  store i32 0, ptr %tag, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %if.end81
  %37 = load i32, ptr %tag, align 4
  store i32 %37, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end91, %if.then89, %if.then17, %if.then13
  call void @llvm.lifetime.end.p0(i64 4, ptr %hasU) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %tag) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %staglen) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %slen) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %stag) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %stag0) #13
  %38 = load i32, ptr %retval, align 4
  ret i32 %38
}

declare i32 @isuinttype(i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal i64 @parseULL(i32 noundef %radix, ptr noundef %text, ptr noundef %failp) #0 {
entry:
  %retval = alloca i64, align 8
  %radix.addr = alloca i32, align 4
  %text.addr = alloca ptr, align 8
  %failp.addr = alloca ptr, align 8
  %endptr = alloca ptr, align 8
  %uint64 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %radix, ptr %radix.addr, align 4
  store ptr %text, ptr %text.addr, align 8
  store ptr %failp, ptr %failp.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %endptr) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %uint64) #13
  store i64 0, ptr %uint64, align 8
  %call = call ptr @__errno_location() #17
  store i32 0, ptr %call, align 4
  store ptr null, ptr %endptr, align 8
  %0 = load ptr, ptr %text.addr, align 8
  %1 = load i32, ptr %radix.addr, align 4
  %call1 = call i64 @strtoull(ptr noundef %0, ptr noundef %endptr, i32 noundef %1) #13
  store i64 %call1, ptr %uint64, align 8
  %call2 = call ptr @__errno_location() #17
  %2 = load i32, ptr %call2, align 4
  %cmp = icmp eq i32 %2, 34
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %failp.addr, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %4 = load ptr, ptr %failp.addr, align 8
  store i32 34, ptr %4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  store i64 0, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %entry
  %5 = load i64, ptr %uint64, align 8
  store i64 %5, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %uint64) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %endptr) #13
  %6 = load i64, ptr %retval, align 8
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @downconvert(i64 noundef %uint64, ptr noundef %tagp, i32 noundef %isneg, i32 noundef %hasU) #0 {
entry:
  %retval = alloca i32, align 4
  %uint64.addr = alloca i64, align 8
  %tagp.addr = alloca ptr, align 8
  %isneg.addr = alloca i32, align 4
  %hasU.addr = alloca i32, align 4
  %nct = alloca i32, align 4
  %tag = alloca i32, align 4
  %bit63set = alloca i32, align 4
  %int64 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %uint64, ptr %uint64.addr, align 8
  store ptr %tagp, ptr %tagp.addr, align 8
  store i32 %isneg, ptr %isneg.addr, align 4
  store i32 %hasU, ptr %hasU.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nct) #13
  store i32 0, ptr %nct, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %tag) #13
  %0 = load ptr, ptr %tagp.addr, align 8
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %tag, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %bit63set) #13
  %2 = load i64, ptr %uint64.addr, align 8
  %shr = lshr i64 %2, 63
  %conv = trunc i64 %shr to i32
  store i32 %conv, ptr %bit63set, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %int64) #13
  %3 = load i64, ptr %uint64.addr, align 8
  store i64 %3, ptr %int64, align 8
  %4 = load i32, ptr %isneg.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, ptr %hasU.addr, align 4
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %tagp.addr, align 8
  store i32 0, ptr %6, align 4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %7 = load i32, ptr %tag, align 4
  %cmp = icmp eq i32 %7, 11
  br i1 %cmp, label %land.lhs.true3, label %if.end6

land.lhs.true3:                                   ; preds = %if.end
  %8 = load i32, ptr %bit63set, align 4
  %tobool4 = icmp ne i32 %8, 0
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %land.lhs.true3
  %9 = load i64, ptr %uint64.addr, align 8
  store i64 %9, ptr @uint64_val, align 8
  %10 = load i32, ptr %tag, align 4
  store i32 %10, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true3, %if.end
  %11 = load i32, ptr %isneg.addr, align 4
  %tobool7 = icmp ne i32 %11, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  %12 = load i64, ptr %int64, align 8
  %sub = sub nsw i64 0, %12
  store i64 %sub, ptr %int64, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6
  %13 = load i32, ptr %tag, align 4
  %cmp10 = icmp eq i32 %13, -1
  br i1 %cmp10, label %if.then12, label %if.end35

if.then12:                                        ; preds = %if.end9
  %14 = load i64, ptr %int64, align 8
  %cmp13 = icmp sge i64 %14, -2147483648
  br i1 %cmp13, label %land.lhs.true15, label %if.else

land.lhs.true15:                                  ; preds = %if.then12
  %15 = load i64, ptr %int64, align 8
  %cmp16 = icmp sle i64 %15, 2147483647
  br i1 %cmp16, label %if.then18, label %if.else

if.then18:                                        ; preds = %land.lhs.true15
  store i32 4, ptr %tag, align 4
  store i32 4, ptr %nct, align 4
  %16 = load i64, ptr %int64, align 8
  %conv19 = trunc i64 %16 to i32
  store i32 %conv19, ptr @int32_val, align 4
  br label %if.end34

if.else:                                          ; preds = %land.lhs.true15, %if.then12
  %17 = load i64, ptr %int64, align 8
  %cmp20 = icmp sge i64 %17, 0
  br i1 %cmp20, label %land.lhs.true22, label %if.else27

land.lhs.true22:                                  ; preds = %if.else
  %18 = load i64, ptr %int64, align 8
  %cmp23 = icmp sle i64 %18, 4294967295
  br i1 %cmp23, label %if.then25, label %if.else27

if.then25:                                        ; preds = %land.lhs.true22
  store i32 9, ptr %tag, align 4
  store i32 9, ptr %nct, align 4
  %19 = load i64, ptr %int64, align 8
  %conv26 = trunc i64 %19 to i32
  store i32 %conv26, ptr @uint32_val, align 4
  br label %if.end33

if.else27:                                        ; preds = %land.lhs.true22, %if.else
  %20 = load i64, ptr %int64, align 8
  %cmp28 = icmp slt i64 %20, 0
  br i1 %cmp28, label %if.then30, label %if.else31

if.then30:                                        ; preds = %if.else27
  store i32 10, ptr %tag, align 4
  store i32 10, ptr %nct, align 4
  %21 = load i64, ptr %int64, align 8
  store i64 %21, ptr @int64_val, align 8
  br label %if.end32

if.else31:                                        ; preds = %if.else27
  store i32 11, ptr %tag, align 4
  store i32 11, ptr %nct, align 4
  %22 = load i64, ptr %int64, align 8
  store i64 %22, ptr @uint64_val, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.else31, %if.then30
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then25
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then18
  br label %done

if.end35:                                         ; preds = %if.end9
  %23 = load i32, ptr %tag, align 4
  %call = call i32 @isuinttype(i32 noundef %23)
  %tobool36 = icmp ne i32 %call, 0
  br i1 %tobool36, label %land.lhs.true37, label %if.end41

land.lhs.true37:                                  ; preds = %if.end35
  %24 = load i64, ptr %int64, align 8
  %cmp38 = icmp slt i64 %24, 0
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %land.lhs.true37
  br label %outofrange

if.end41:                                         ; preds = %land.lhs.true37, %if.end35
  %25 = load i32, ptr %tag, align 4
  switch i32 %25, label %sw.default [
    i32 7, label %sw.bb
    i32 8, label %sw.bb48
    i32 9, label %sw.bb55
    i32 11, label %sw.bb62
    i32 10, label %sw.bb68
    i32 1, label %sw.bb69
    i32 3, label %sw.bb71
    i32 4, label %sw.bb73
  ]

sw.bb:                                            ; preds = %if.end41
  %26 = load i64, ptr %int64, align 8
  %cmp42 = icmp sle i64 %26, 255
  br i1 %cmp42, label %if.then44, label %if.else46

if.then44:                                        ; preds = %sw.bb
  store i32 7, ptr %nct, align 4
  %27 = load i64, ptr %int64, align 8
  %conv45 = trunc i64 %27 to i8
  store i8 %conv45, ptr @ubyte_val, align 1
  br label %if.end47

if.else46:                                        ; preds = %sw.bb
  br label %outofrange

if.end47:                                         ; preds = %if.then44
  br label %sw.epilog

sw.bb48:                                          ; preds = %if.end41
  %28 = load i64, ptr %int64, align 8
  %cmp49 = icmp sle i64 %28, 65535
  br i1 %cmp49, label %if.then51, label %if.else53

if.then51:                                        ; preds = %sw.bb48
  store i32 8, ptr %nct, align 4
  %29 = load i64, ptr %int64, align 8
  %conv52 = trunc i64 %29 to i16
  store i16 %conv52, ptr @uint16_val, align 2
  br label %if.end54

if.else53:                                        ; preds = %sw.bb48
  br label %outofrange

if.end54:                                         ; preds = %if.then51
  br label %sw.epilog

sw.bb55:                                          ; preds = %if.end41
  %30 = load i64, ptr %int64, align 8
  %cmp56 = icmp sle i64 %30, 4294967295
  br i1 %cmp56, label %if.then58, label %if.else60

if.then58:                                        ; preds = %sw.bb55
  store i32 9, ptr %nct, align 4
  %31 = load i64, ptr %int64, align 8
  %conv59 = trunc i64 %31 to i32
  store i32 %conv59, ptr @uint32_val, align 4
  br label %if.end61

if.else60:                                        ; preds = %sw.bb55
  br label %outofrange

if.end61:                                         ; preds = %if.then58
  br label %sw.epilog

sw.bb62:                                          ; preds = %if.end41
  %32 = load i64, ptr %int64, align 8
  %cmp63 = icmp ule i64 %32, -1
  br i1 %cmp63, label %if.then65, label %if.else66

if.then65:                                        ; preds = %sw.bb62
  store i32 11, ptr %nct, align 4
  %33 = load i64, ptr %uint64.addr, align 8
  store i64 %33, ptr @uint64_val, align 8
  br label %if.end67

if.else66:                                        ; preds = %sw.bb62
  br label %outofrange

if.end67:                                         ; preds = %if.then65
  br label %sw.epilog

sw.bb68:                                          ; preds = %if.end41
  store i32 10, ptr %nct, align 4
  %34 = load i64, ptr %int64, align 8
  store i64 %34, ptr @int64_val, align 8
  br label %sw.epilog

sw.bb69:                                          ; preds = %if.end41
  store i32 1, ptr %nct, align 4
  %35 = load i64, ptr %int64, align 8
  %conv70 = trunc i64 %35 to i8
  store i8 %conv70, ptr @byte_val, align 1
  br label %sw.epilog

sw.bb71:                                          ; preds = %if.end41
  store i32 3, ptr %nct, align 4
  %36 = load i64, ptr %int64, align 8
  %conv72 = trunc i64 %36 to i16
  store i16 %conv72, ptr @int16_val, align 2
  br label %sw.epilog

sw.bb73:                                          ; preds = %if.end41
  store i32 4, ptr %nct, align 4
  %37 = load i64, ptr %int64, align 8
  %conv74 = trunc i64 %37 to i32
  store i32 %conv74, ptr @int32_val, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end41
  br label %outofrange

sw.epilog:                                        ; preds = %sw.bb73, %sw.bb71, %sw.bb69, %sw.bb68, %if.end67, %if.end61, %if.end54, %if.end47
  br label %done

done:                                             ; preds = %sw.epilog, %if.end34
  %38 = load i32, ptr %tag, align 4
  %39 = load ptr, ptr %tagp.addr, align 8
  store i32 %38, ptr %39, align 4
  %40 = load i32, ptr %nct, align 4
  store i32 %40, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

outofrange:                                       ; preds = %sw.default, %if.else66, %if.else60, %if.else53, %if.else46, %if.then40
  call void (ptr, ...) @ncgerror(ptr noundef @.str.253)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %outofrange, %done, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %int64) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %bit63set) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %tag) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %nct) #13
  %41 = load i32, ptr %retval, align 4
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define internal i32 @nct2lexeme(i32 noundef %nct) #0 {
entry:
  %retval = alloca i32, align 4
  %nct.addr = alloca i32, align 4
  store i32 %nct, ptr %nct.addr, align 4
  %0 = load i32, ptr %nct.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 4, label %sw.bb3
    i32 7, label %sw.bb4
    i32 8, label %sw.bb5
    i32 9, label %sw.bb6
    i32 10, label %sw.bb7
    i32 11, label %sw.bb8
  ]

sw.bb:                                            ; preds = %entry
  store i32 274, ptr %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  store i32 273, ptr %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  store i32 275, ptr %retval, align 4
  br label %return

sw.bb3:                                           ; preds = %entry
  store i32 276, ptr %retval, align 4
  br label %return

sw.bb4:                                           ; preds = %entry
  store i32 278, ptr %retval, align 4
  br label %return

sw.bb5:                                           ; preds = %entry
  store i32 279, ptr %retval, align 4
  br label %return

sw.bb6:                                           ; preds = %entry
  store i32 280, ptr %retval, align 4
  br label %return

sw.bb7:                                           ; preds = %entry
  store i32 277, ptr %retval, align 4
  br label %return

sw.bb8:                                           ; preds = %entry
  store i32 281, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i32, ptr %retval, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define internal i32 @tagmatch(i32 noundef %nct, i32 noundef %tag) #0 {
entry:
  %retval = alloca i32, align 4
  %nct.addr = alloca i32, align 4
  %tag.addr = alloca i32, align 4
  store i32 %nct, ptr %nct.addr, align 4
  store i32 %tag, ptr %tag.addr, align 4
  %0 = load i32, ptr %tag.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %tag.addr, align 4
  %cmp1 = icmp eq i32 %1, -1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, ptr %nct.addr, align 4
  %3 = load i32, ptr %tag.addr, align 4
  %cmp2 = icmp eq i32 %2, %3
  %conv = zext i1 %cmp2 to i32
  store i32 %conv, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

declare void @semwarn(i32 noundef, ptr noundef, ...) #2

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(ptr noundef, ptr noundef, ...) #5

declare i32 @unescapeoct(ptr noundef) #2

declare i32 @unescapehex(ptr noundef) #2

declare i64 @fwrite(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @yy_get_previous_state() #0 {
entry:
  %yy_current_state = alloca i32, align 4
  %yy_cp = alloca ptr, align 8
  %yy_c = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %yy_current_state) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %yy_cp) #13
  %0 = load i32, ptr @yy_start, align 4
  store i32 %0, ptr %yy_current_state, align 4
  %1 = load ptr, ptr @ncgtext, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 0
  store ptr %add.ptr, ptr %yy_cp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %yy_cp, align 8
  %3 = load ptr, ptr @yy_c_buf_p, align 8
  %cmp = icmp ult ptr %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %yy_c) #13
  %4 = load ptr, ptr %yy_cp, align 8
  %5 = load i8, ptr %4, align 1
  %conv = sext i8 %5 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %6 = load ptr, ptr %yy_cp, align 8
  %7 = load i8, ptr %6, align 1
  %idxprom = zext i8 %7 to i64
  %arrayidx = getelementptr inbounds [256 x i8], ptr @yy_ec, i64 0, i64 %idxprom
  %8 = load i8, ptr %arrayidx, align 1
  %conv1 = zext i8 %8 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv1, %cond.true ], [ 1, %cond.false ]
  %conv2 = trunc i32 %cond to i8
  store i8 %conv2, ptr %yy_c, align 1
  %9 = load i32, ptr %yy_current_state, align 4
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds [538 x i16], ptr @yy_accept, i64 0, i64 %idxprom3
  %10 = load i16, ptr %arrayidx4, align 2
  %tobool5 = icmp ne i16 %10, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %11 = load i32, ptr %yy_current_state, align 4
  store i32 %11, ptr @yy_last_accepting_state, align 4
  %12 = load ptr, ptr %yy_cp, align 8
  store ptr %12, ptr @yy_last_accepting_cpos, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  br label %while.cond

while.cond:                                       ; preds = %if.end23, %if.end
  %13 = load i32, ptr %yy_current_state, align 4
  %idxprom6 = sext i32 %13 to i64
  %arrayidx7 = getelementptr inbounds [556 x i16], ptr @yy_base, i64 0, i64 %idxprom6
  %14 = load i16, ptr %arrayidx7, align 2
  %conv8 = sext i16 %14 to i32
  %15 = load i8, ptr %yy_c, align 1
  %conv9 = zext i8 %15 to i32
  %add = add nsw i32 %conv8, %conv9
  %idxprom10 = sext i32 %add to i64
  %arrayidx11 = getelementptr inbounds [3204 x i16], ptr @yy_chk, i64 0, i64 %idxprom10
  %16 = load i16, ptr %arrayidx11, align 2
  %conv12 = sext i16 %16 to i32
  %17 = load i32, ptr %yy_current_state, align 4
  %cmp13 = icmp ne i32 %conv12, %17
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load i32, ptr %yy_current_state, align 4
  %idxprom15 = sext i32 %18 to i64
  %arrayidx16 = getelementptr inbounds [556 x i16], ptr @yy_def, i64 0, i64 %idxprom15
  %19 = load i16, ptr %arrayidx16, align 2
  %conv17 = sext i16 %19 to i32
  store i32 %conv17, ptr %yy_current_state, align 4
  %20 = load i32, ptr %yy_current_state, align 4
  %cmp18 = icmp sge i32 %20, 538
  br i1 %cmp18, label %if.then20, label %if.end23

if.then20:                                        ; preds = %while.body
  %21 = load i8, ptr %yy_c, align 1
  %idxprom21 = zext i8 %21 to i64
  %arrayidx22 = getelementptr inbounds [73 x i8], ptr @yy_meta, i64 0, i64 %idxprom21
  %22 = load i8, ptr %arrayidx22, align 1
  store i8 %22, ptr %yy_c, align 1
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %while.body
  br label %while.cond, !llvm.loop !30

while.end:                                        ; preds = %while.cond
  %23 = load i32, ptr %yy_current_state, align 4
  %idxprom24 = sext i32 %23 to i64
  %arrayidx25 = getelementptr inbounds [556 x i16], ptr @yy_base, i64 0, i64 %idxprom24
  %24 = load i16, ptr %arrayidx25, align 2
  %conv26 = sext i16 %24 to i32
  %25 = load i8, ptr %yy_c, align 1
  %conv27 = zext i8 %25 to i32
  %add28 = add nsw i32 %conv26, %conv27
  %idxprom29 = sext i32 %add28 to i64
  %arrayidx30 = getelementptr inbounds [3204 x i16], ptr @yy_nxt, i64 0, i64 %idxprom29
  %26 = load i16, ptr %arrayidx30, align 2
  %conv31 = sext i16 %26 to i32
  store i32 %conv31, ptr %yy_current_state, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr %yy_c) #13
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %27 = load ptr, ptr %yy_cp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %27, i32 1
  store ptr %incdec.ptr, ptr %yy_cp, align 8
  br label %for.cond, !llvm.loop !31

for.end:                                          ; preds = %for.cond
  %28 = load i32, ptr %yy_current_state, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %yy_cp) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %yy_current_state) #13
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @yy_try_NUL_trans(i32 noundef %yy_current_state) #0 {
entry:
  %yy_current_state.addr = alloca i32, align 4
  %yy_is_jam = alloca i32, align 4
  %yy_cp = alloca ptr, align 8
  %yy_c = alloca i8, align 1
  store i32 %yy_current_state, ptr %yy_current_state.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %yy_is_jam) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %yy_cp) #13
  %0 = load ptr, ptr @yy_c_buf_p, align 8
  store ptr %0, ptr %yy_cp, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr %yy_c) #13
  store i8 1, ptr %yy_c, align 1
  %1 = load i32, ptr %yy_current_state.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [538 x i16], ptr @yy_accept, i64 0, i64 %idxprom
  %2 = load i16, ptr %arrayidx, align 2
  %tobool = icmp ne i16 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %yy_current_state.addr, align 4
  store i32 %3, ptr @yy_last_accepting_state, align 4
  %4 = load ptr, ptr %yy_cp, align 8
  store ptr %4, ptr @yy_last_accepting_cpos, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end16, %if.end
  %5 = load i32, ptr %yy_current_state.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [556 x i16], ptr @yy_base, i64 0, i64 %idxprom1
  %6 = load i16, ptr %arrayidx2, align 2
  %conv = sext i16 %6 to i32
  %7 = load i8, ptr %yy_c, align 1
  %conv3 = zext i8 %7 to i32
  %add = add nsw i32 %conv, %conv3
  %idxprom4 = sext i32 %add to i64
  %arrayidx5 = getelementptr inbounds [3204 x i16], ptr @yy_chk, i64 0, i64 %idxprom4
  %8 = load i16, ptr %arrayidx5, align 2
  %conv6 = sext i16 %8 to i32
  %9 = load i32, ptr %yy_current_state.addr, align 4
  %cmp = icmp ne i32 %conv6, %9
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i32, ptr %yy_current_state.addr, align 4
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds [556 x i16], ptr @yy_def, i64 0, i64 %idxprom8
  %11 = load i16, ptr %arrayidx9, align 2
  %conv10 = sext i16 %11 to i32
  store i32 %conv10, ptr %yy_current_state.addr, align 4
  %12 = load i32, ptr %yy_current_state.addr, align 4
  %cmp11 = icmp sge i32 %12, 538
  br i1 %cmp11, label %if.then13, label %if.end16

if.then13:                                        ; preds = %while.body
  %13 = load i8, ptr %yy_c, align 1
  %idxprom14 = zext i8 %13 to i64
  %arrayidx15 = getelementptr inbounds [73 x i8], ptr @yy_meta, i64 0, i64 %idxprom14
  %14 = load i8, ptr %arrayidx15, align 1
  store i8 %14, ptr %yy_c, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %while.body
  br label %while.cond, !llvm.loop !32

while.end:                                        ; preds = %while.cond
  %15 = load i32, ptr %yy_current_state.addr, align 4
  %idxprom17 = sext i32 %15 to i64
  %arrayidx18 = getelementptr inbounds [556 x i16], ptr @yy_base, i64 0, i64 %idxprom17
  %16 = load i16, ptr %arrayidx18, align 2
  %conv19 = sext i16 %16 to i32
  %17 = load i8, ptr %yy_c, align 1
  %conv20 = zext i8 %17 to i32
  %add21 = add nsw i32 %conv19, %conv20
  %idxprom22 = sext i32 %add21 to i64
  %arrayidx23 = getelementptr inbounds [3204 x i16], ptr @yy_nxt, i64 0, i64 %idxprom22
  %18 = load i16, ptr %arrayidx23, align 2
  %conv24 = sext i16 %18 to i32
  store i32 %conv24, ptr %yy_current_state.addr, align 4
  %19 = load i32, ptr %yy_current_state.addr, align 4
  %cmp25 = icmp eq i32 %19, 537
  %conv26 = zext i1 %cmp25 to i32
  store i32 %conv26, ptr %yy_is_jam, align 4
  %20 = load i32, ptr %yy_is_jam, align 4
  %tobool27 = icmp ne i32 %20, 0
  br i1 %tobool27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  br label %cond.end

cond.false:                                       ; preds = %while.end
  %21 = load i32, ptr %yy_current_state.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %21, %cond.false ]
  call void @llvm.lifetime.end.p0(i64 1, ptr %yy_c) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %yy_cp) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %yy_is_jam) #13
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal i32 @yy_get_next_buffer() #0 {
entry:
  %retval = alloca i32, align 4
  %dest = alloca ptr, align 8
  %source = alloca ptr, align 8
  %number_to_move = alloca i32, align 4
  %i = alloca i32, align 4
  %ret_val = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %num_to_read = alloca i32, align 4
  %b = alloca ptr, align 8
  %yy_c_buf_p_offset = alloca i32, align 4
  %new_size = alloca i32, align 4
  %c = alloca i32, align 4
  %n = alloca i32, align 4
  %new_size156 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %dest) #13
  %0 = load ptr, ptr @yy_buffer_stack, align 8
  %1 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 %1
  %2 = load ptr, ptr %arrayidx, align 8
  %yy_ch_buf = getelementptr inbounds %struct.yy_buffer_state, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %yy_ch_buf, align 8
  store ptr %3, ptr %dest, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %source) #13
  %4 = load ptr, ptr @ncgtext, align 8
  store ptr %4, ptr %source, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %number_to_move) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret_val) #13
  %5 = load ptr, ptr @yy_c_buf_p, align 8
  %6 = load ptr, ptr @yy_buffer_stack, align 8
  %7 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx1 = getelementptr inbounds ptr, ptr %6, i64 %7
  %8 = load ptr, ptr %arrayidx1, align 8
  %yy_ch_buf2 = getelementptr inbounds %struct.yy_buffer_state, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %yy_ch_buf2, align 8
  %10 = load i32, ptr @yy_n_chars, align 4
  %add = add nsw i32 %10, 1
  %idxprom = sext i32 %add to i64
  %arrayidx3 = getelementptr inbounds i8, ptr %9, i64 %idxprom
  %cmp = icmp ugt ptr %5, %arrayidx3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @yy_fatal_error(ptr noundef @.str.244) #18
  unreachable

if.end:                                           ; preds = %entry
  %11 = load ptr, ptr @yy_buffer_stack, align 8
  %12 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %11, i64 %12
  %13 = load ptr, ptr %arrayidx4, align 8
  %yy_fill_buffer = getelementptr inbounds %struct.yy_buffer_state, ptr %13, i32 0, i32 10
  %14 = load i32, ptr %yy_fill_buffer, align 4
  %cmp5 = icmp eq i32 %14, 0
  br i1 %cmp5, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  %15 = load ptr, ptr @yy_c_buf_p, align 8
  %16 = load ptr, ptr @ncgtext, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %15 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %16 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub nsw i64 %sub.ptr.sub, 0
  %cmp7 = icmp eq i64 %sub, 1
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then6
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %if.then6
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %17 = load ptr, ptr @yy_c_buf_p, align 8
  %18 = load ptr, ptr @ncgtext, align 8
  %sub.ptr.lhs.cast10 = ptrtoint ptr %17 to i64
  %sub.ptr.rhs.cast11 = ptrtoint ptr %18 to i64
  %sub.ptr.sub12 = sub i64 %sub.ptr.lhs.cast10, %sub.ptr.rhs.cast11
  %sub13 = sub nsw i64 %sub.ptr.sub12, 1
  %conv = trunc i64 %sub13 to i32
  store i32 %conv, ptr %number_to_move, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end9
  %19 = load i32, ptr %i, align 4
  %20 = load i32, ptr %number_to_move, align 4
  %cmp14 = icmp slt i32 %19, %20
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load ptr, ptr %source, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr, ptr %source, align 8
  %22 = load i8, ptr %21, align 1
  %23 = load ptr, ptr %dest, align 8
  %incdec.ptr16 = getelementptr inbounds i8, ptr %23, i32 1
  store ptr %incdec.ptr16, ptr %dest, align 8
  store i8 %22, ptr %23, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, ptr %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !33

for.end:                                          ; preds = %for.cond
  %25 = load ptr, ptr @yy_buffer_stack, align 8
  %26 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx17 = getelementptr inbounds ptr, ptr %25, i64 %26
  %27 = load ptr, ptr %arrayidx17, align 8
  %yy_buffer_status = getelementptr inbounds %struct.yy_buffer_state, ptr %27, i32 0, i32 11
  %28 = load i32, ptr %yy_buffer_status, align 8
  %cmp18 = icmp eq i32 %28, 2
  br i1 %cmp18, label %if.then20, label %if.else22

if.then20:                                        ; preds = %for.end
  store i32 0, ptr @yy_n_chars, align 4
  %29 = load ptr, ptr @yy_buffer_stack, align 8
  %30 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx21 = getelementptr inbounds ptr, ptr %29, i64 %30
  %31 = load ptr, ptr %arrayidx21, align 8
  %yy_n_chars = getelementptr inbounds %struct.yy_buffer_state, ptr %31, i32 0, i32 4
  store i32 0, ptr %yy_n_chars, align 4
  br label %if.end137

if.else22:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_to_read) #13
  %32 = load ptr, ptr @yy_buffer_stack, align 8
  %33 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx23 = getelementptr inbounds ptr, ptr %32, i64 %33
  %34 = load ptr, ptr %arrayidx23, align 8
  %yy_buf_size = getelementptr inbounds %struct.yy_buffer_state, ptr %34, i32 0, i32 3
  %35 = load i32, ptr %yy_buf_size, align 8
  %36 = load i32, ptr %number_to_move, align 4
  %sub24 = sub nsw i32 %35, %36
  %sub25 = sub nsw i32 %sub24, 1
  store i32 %sub25, ptr %num_to_read, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end57, %if.else22
  %37 = load i32, ptr %num_to_read, align 4
  %cmp26 = icmp sle i32 %37, 0
  br i1 %cmp26, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #13
  %38 = load ptr, ptr @yy_buffer_stack, align 8
  %39 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx28 = getelementptr inbounds ptr, ptr %38, i64 %39
  %40 = load ptr, ptr %arrayidx28, align 8
  store ptr %40, ptr %b, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %yy_c_buf_p_offset) #13
  %41 = load ptr, ptr @yy_c_buf_p, align 8
  %42 = load ptr, ptr %b, align 8
  %yy_ch_buf29 = getelementptr inbounds %struct.yy_buffer_state, ptr %42, i32 0, i32 1
  %43 = load ptr, ptr %yy_ch_buf29, align 8
  %sub.ptr.lhs.cast30 = ptrtoint ptr %41 to i64
  %sub.ptr.rhs.cast31 = ptrtoint ptr %43 to i64
  %sub.ptr.sub32 = sub i64 %sub.ptr.lhs.cast30, %sub.ptr.rhs.cast31
  %conv33 = trunc i64 %sub.ptr.sub32 to i32
  store i32 %conv33, ptr %yy_c_buf_p_offset, align 4
  %44 = load ptr, ptr %b, align 8
  %yy_is_our_buffer = getelementptr inbounds %struct.yy_buffer_state, ptr %44, i32 0, i32 5
  %45 = load i32, ptr %yy_is_our_buffer, align 8
  %tobool = icmp ne i32 %45, 0
  br i1 %tobool, label %if.then34, label %if.else51

if.then34:                                        ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_size) #13
  %46 = load ptr, ptr %b, align 8
  %yy_buf_size35 = getelementptr inbounds %struct.yy_buffer_state, ptr %46, i32 0, i32 3
  %47 = load i32, ptr %yy_buf_size35, align 8
  %mul = mul nsw i32 %47, 2
  store i32 %mul, ptr %new_size, align 4
  %48 = load i32, ptr %new_size, align 4
  %cmp36 = icmp sle i32 %48, 0
  br i1 %cmp36, label %if.then38, label %if.else42

if.then38:                                        ; preds = %if.then34
  %49 = load ptr, ptr %b, align 8
  %yy_buf_size39 = getelementptr inbounds %struct.yy_buffer_state, ptr %49, i32 0, i32 3
  %50 = load i32, ptr %yy_buf_size39, align 8
  %div = sdiv i32 %50, 8
  %51 = load ptr, ptr %b, align 8
  %yy_buf_size40 = getelementptr inbounds %struct.yy_buffer_state, ptr %51, i32 0, i32 3
  %52 = load i32, ptr %yy_buf_size40, align 8
  %add41 = add nsw i32 %52, %div
  store i32 %add41, ptr %yy_buf_size40, align 8
  br label %if.end45

if.else42:                                        ; preds = %if.then34
  %53 = load ptr, ptr %b, align 8
  %yy_buf_size43 = getelementptr inbounds %struct.yy_buffer_state, ptr %53, i32 0, i32 3
  %54 = load i32, ptr %yy_buf_size43, align 8
  %mul44 = mul nsw i32 %54, 2
  store i32 %mul44, ptr %yy_buf_size43, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.else42, %if.then38
  %55 = load ptr, ptr %b, align 8
  %yy_ch_buf46 = getelementptr inbounds %struct.yy_buffer_state, ptr %55, i32 0, i32 1
  %56 = load ptr, ptr %yy_ch_buf46, align 8
  %57 = load ptr, ptr %b, align 8
  %yy_buf_size47 = getelementptr inbounds %struct.yy_buffer_state, ptr %57, i32 0, i32 3
  %58 = load i32, ptr %yy_buf_size47, align 8
  %add48 = add nsw i32 %58, 2
  %conv49 = sext i32 %add48 to i64
  %call = call ptr @ncgrealloc(ptr noundef %56, i64 noundef %conv49)
  %59 = load ptr, ptr %b, align 8
  %yy_ch_buf50 = getelementptr inbounds %struct.yy_buffer_state, ptr %59, i32 0, i32 1
  store ptr %call, ptr %yy_ch_buf50, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_size) #13
  br label %if.end53

if.else51:                                        ; preds = %while.body
  %60 = load ptr, ptr %b, align 8
  %yy_ch_buf52 = getelementptr inbounds %struct.yy_buffer_state, ptr %60, i32 0, i32 1
  store ptr null, ptr %yy_ch_buf52, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.else51, %if.end45
  %61 = load ptr, ptr %b, align 8
  %yy_ch_buf54 = getelementptr inbounds %struct.yy_buffer_state, ptr %61, i32 0, i32 1
  %62 = load ptr, ptr %yy_ch_buf54, align 8
  %tobool55 = icmp ne ptr %62, null
  br i1 %tobool55, label %if.end57, label %if.then56

if.then56:                                        ; preds = %if.end53
  call void @yy_fatal_error(ptr noundef @.str.245) #18
  unreachable

if.end57:                                         ; preds = %if.end53
  %63 = load ptr, ptr %b, align 8
  %yy_ch_buf58 = getelementptr inbounds %struct.yy_buffer_state, ptr %63, i32 0, i32 1
  %64 = load ptr, ptr %yy_ch_buf58, align 8
  %65 = load i32, ptr %yy_c_buf_p_offset, align 4
  %idxprom59 = sext i32 %65 to i64
  %arrayidx60 = getelementptr inbounds i8, ptr %64, i64 %idxprom59
  store ptr %arrayidx60, ptr @yy_c_buf_p, align 8
  %66 = load ptr, ptr @yy_buffer_stack, align 8
  %67 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx61 = getelementptr inbounds ptr, ptr %66, i64 %67
  %68 = load ptr, ptr %arrayidx61, align 8
  %yy_buf_size62 = getelementptr inbounds %struct.yy_buffer_state, ptr %68, i32 0, i32 3
  %69 = load i32, ptr %yy_buf_size62, align 8
  %70 = load i32, ptr %number_to_move, align 4
  %sub63 = sub nsw i32 %69, %70
  %sub64 = sub nsw i32 %sub63, 1
  store i32 %sub64, ptr %num_to_read, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %yy_c_buf_p_offset) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #13
  br label %while.cond, !llvm.loop !34

while.end:                                        ; preds = %while.cond
  %71 = load i32, ptr %num_to_read, align 4
  %cmp65 = icmp sgt i32 %71, 8192
  br i1 %cmp65, label %if.then67, label %if.end68

if.then67:                                        ; preds = %while.end
  store i32 8192, ptr %num_to_read, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %while.end
  %72 = load ptr, ptr @yy_buffer_stack, align 8
  %73 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx69 = getelementptr inbounds ptr, ptr %72, i64 %73
  %74 = load ptr, ptr %arrayidx69, align 8
  %yy_is_interactive = getelementptr inbounds %struct.yy_buffer_state, ptr %74, i32 0, i32 6
  %75 = load i32, ptr %yy_is_interactive, align 4
  %tobool70 = icmp ne i32 %75, 0
  br i1 %tobool70, label %if.then71, label %if.else110

if.then71:                                        ; preds = %if.end68
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #13
  store i32 42, ptr %c, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #13
  store i32 0, ptr %n, align 4
  br label %for.cond72

for.cond72:                                       ; preds = %for.inc88, %if.then71
  %76 = load i32, ptr %n, align 4
  %77 = load i32, ptr %num_to_read, align 4
  %cmp73 = icmp slt i32 %76, %77
  br i1 %cmp73, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.cond72
  %78 = load ptr, ptr @ncgin, align 8
  %call75 = call i32 @getc(ptr noundef %78)
  store i32 %call75, ptr %c, align 4
  %cmp76 = icmp ne i32 %call75, -1
  br i1 %cmp76, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %79 = load i32, ptr %c, align 4
  %cmp78 = icmp ne i32 %79, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %for.cond72
  %80 = phi i1 [ false, %land.lhs.true ], [ false, %for.cond72 ], [ %cmp78, %land.rhs ]
  br i1 %80, label %for.body80, label %for.end90

for.body80:                                       ; preds = %land.end
  %81 = load i32, ptr %c, align 4
  %conv81 = trunc i32 %81 to i8
  %82 = load ptr, ptr @yy_buffer_stack, align 8
  %83 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx82 = getelementptr inbounds ptr, ptr %82, i64 %83
  %84 = load ptr, ptr %arrayidx82, align 8
  %yy_ch_buf83 = getelementptr inbounds %struct.yy_buffer_state, ptr %84, i32 0, i32 1
  %85 = load ptr, ptr %yy_ch_buf83, align 8
  %86 = load i32, ptr %number_to_move, align 4
  %idxprom84 = sext i32 %86 to i64
  %arrayidx85 = getelementptr inbounds i8, ptr %85, i64 %idxprom84
  %87 = load i32, ptr %n, align 4
  %idxprom86 = sext i32 %87 to i64
  %arrayidx87 = getelementptr inbounds i8, ptr %arrayidx85, i64 %idxprom86
  store i8 %conv81, ptr %arrayidx87, align 1
  br label %for.inc88

for.inc88:                                        ; preds = %for.body80
  %88 = load i32, ptr %n, align 4
  %inc89 = add nsw i32 %88, 1
  store i32 %inc89, ptr %n, align 4
  br label %for.cond72, !llvm.loop !35

for.end90:                                        ; preds = %land.end
  %89 = load i32, ptr %c, align 4
  %cmp91 = icmp eq i32 %89, 10
  br i1 %cmp91, label %if.then93, label %if.end102

if.then93:                                        ; preds = %for.end90
  %90 = load i32, ptr %c, align 4
  %conv94 = trunc i32 %90 to i8
  %91 = load ptr, ptr @yy_buffer_stack, align 8
  %92 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx95 = getelementptr inbounds ptr, ptr %91, i64 %92
  %93 = load ptr, ptr %arrayidx95, align 8
  %yy_ch_buf96 = getelementptr inbounds %struct.yy_buffer_state, ptr %93, i32 0, i32 1
  %94 = load ptr, ptr %yy_ch_buf96, align 8
  %95 = load i32, ptr %number_to_move, align 4
  %idxprom97 = sext i32 %95 to i64
  %arrayidx98 = getelementptr inbounds i8, ptr %94, i64 %idxprom97
  %96 = load i32, ptr %n, align 4
  %inc99 = add nsw i32 %96, 1
  store i32 %inc99, ptr %n, align 4
  %idxprom100 = sext i32 %96 to i64
  %arrayidx101 = getelementptr inbounds i8, ptr %arrayidx98, i64 %idxprom100
  store i8 %conv94, ptr %arrayidx101, align 1
  br label %if.end102

if.end102:                                        ; preds = %if.then93, %for.end90
  %97 = load i32, ptr %c, align 4
  %cmp103 = icmp eq i32 %97, -1
  br i1 %cmp103, label %land.lhs.true105, label %if.end109

land.lhs.true105:                                 ; preds = %if.end102
  %98 = load ptr, ptr @ncgin, align 8
  %call106 = call i32 @ferror(ptr noundef %98) #13
  %tobool107 = icmp ne i32 %call106, 0
  br i1 %tobool107, label %if.then108, label %if.end109

if.then108:                                       ; preds = %land.lhs.true105
  call void @yy_fatal_error(ptr noundef @.str.246) #18
  unreachable

if.end109:                                        ; preds = %land.lhs.true105, %if.end102
  %99 = load i32, ptr %n, align 4
  store i32 %99, ptr @yy_n_chars, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #13
  br label %if.end134

if.else110:                                       ; preds = %if.end68
  %call111 = call ptr @__errno_location() #17
  store i32 0, ptr %call111, align 4
  br label %while.cond112

while.cond112:                                    ; preds = %if.end131, %if.else110
  %100 = load ptr, ptr @yy_buffer_stack, align 8
  %101 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx113 = getelementptr inbounds ptr, ptr %100, i64 %101
  %102 = load ptr, ptr %arrayidx113, align 8
  %yy_ch_buf114 = getelementptr inbounds %struct.yy_buffer_state, ptr %102, i32 0, i32 1
  %103 = load ptr, ptr %yy_ch_buf114, align 8
  %104 = load i32, ptr %number_to_move, align 4
  %idxprom115 = sext i32 %104 to i64
  %arrayidx116 = getelementptr inbounds i8, ptr %103, i64 %idxprom115
  %105 = load i32, ptr %num_to_read, align 4
  %conv117 = sext i32 %105 to i64
  %106 = load ptr, ptr @ncgin, align 8
  %call118 = call i64 @fread(ptr noundef %arrayidx116, i64 noundef 1, i64 noundef %conv117, ptr noundef %106)
  %conv119 = trunc i64 %call118 to i32
  store i32 %conv119, ptr @yy_n_chars, align 4
  %cmp120 = icmp eq i32 %conv119, 0
  br i1 %cmp120, label %land.rhs122, label %land.end125

land.rhs122:                                      ; preds = %while.cond112
  %107 = load ptr, ptr @ncgin, align 8
  %call123 = call i32 @ferror(ptr noundef %107) #13
  %tobool124 = icmp ne i32 %call123, 0
  br label %land.end125

land.end125:                                      ; preds = %land.rhs122, %while.cond112
  %108 = phi i1 [ false, %while.cond112 ], [ %tobool124, %land.rhs122 ]
  br i1 %108, label %while.body126, label %while.end133

while.body126:                                    ; preds = %land.end125
  %call127 = call ptr @__errno_location() #17
  %109 = load i32, ptr %call127, align 4
  %cmp128 = icmp ne i32 %109, 4
  br i1 %cmp128, label %if.then130, label %if.end131

if.then130:                                       ; preds = %while.body126
  call void @yy_fatal_error(ptr noundef @.str.246) #18
  unreachable

if.end131:                                        ; preds = %while.body126
  %call132 = call ptr @__errno_location() #17
  store i32 0, ptr %call132, align 4
  %110 = load ptr, ptr @ncgin, align 8
  call void @clearerr(ptr noundef %110) #13
  br label %while.cond112, !llvm.loop !36

while.end133:                                     ; preds = %land.end125
  br label %if.end134

if.end134:                                        ; preds = %while.end133, %if.end109
  %111 = load i32, ptr @yy_n_chars, align 4
  %112 = load ptr, ptr @yy_buffer_stack, align 8
  %113 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx135 = getelementptr inbounds ptr, ptr %112, i64 %113
  %114 = load ptr, ptr %arrayidx135, align 8
  %yy_n_chars136 = getelementptr inbounds %struct.yy_buffer_state, ptr %114, i32 0, i32 4
  store i32 %111, ptr %yy_n_chars136, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_to_read) #13
  br label %if.end137

if.end137:                                        ; preds = %if.end134, %if.then20
  %115 = load i32, ptr @yy_n_chars, align 4
  %cmp138 = icmp eq i32 %115, 0
  br i1 %cmp138, label %if.then140, label %if.else148

if.then140:                                       ; preds = %if.end137
  %116 = load i32, ptr %number_to_move, align 4
  %cmp141 = icmp eq i32 %116, 0
  br i1 %cmp141, label %if.then143, label %if.else144

if.then143:                                       ; preds = %if.then140
  store i32 1, ptr %ret_val, align 4
  %117 = load ptr, ptr @ncgin, align 8
  call void @ncgrestart(ptr noundef %117)
  br label %if.end147

if.else144:                                       ; preds = %if.then140
  store i32 2, ptr %ret_val, align 4
  %118 = load ptr, ptr @yy_buffer_stack, align 8
  %119 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx145 = getelementptr inbounds ptr, ptr %118, i64 %119
  %120 = load ptr, ptr %arrayidx145, align 8
  %yy_buffer_status146 = getelementptr inbounds %struct.yy_buffer_state, ptr %120, i32 0, i32 11
  store i32 2, ptr %yy_buffer_status146, align 8
  br label %if.end147

if.end147:                                        ; preds = %if.else144, %if.then143
  br label %if.end149

if.else148:                                       ; preds = %if.end137
  store i32 0, ptr %ret_val, align 4
  br label %if.end149

if.end149:                                        ; preds = %if.else148, %if.end147
  %121 = load i32, ptr @yy_n_chars, align 4
  %122 = load i32, ptr %number_to_move, align 4
  %add150 = add nsw i32 %121, %122
  %123 = load ptr, ptr @yy_buffer_stack, align 8
  %124 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx151 = getelementptr inbounds ptr, ptr %123, i64 %124
  %125 = load ptr, ptr %arrayidx151, align 8
  %yy_buf_size152 = getelementptr inbounds %struct.yy_buffer_state, ptr %125, i32 0, i32 3
  %126 = load i32, ptr %yy_buf_size152, align 8
  %cmp153 = icmp sgt i32 %add150, %126
  br i1 %cmp153, label %if.then155, label %if.end173

if.then155:                                       ; preds = %if.end149
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_size156) #13
  %127 = load i32, ptr @yy_n_chars, align 4
  %128 = load i32, ptr %number_to_move, align 4
  %add157 = add nsw i32 %127, %128
  %129 = load i32, ptr @yy_n_chars, align 4
  %shr = ashr i32 %129, 1
  %add158 = add nsw i32 %add157, %shr
  store i32 %add158, ptr %new_size156, align 4
  %130 = load ptr, ptr @yy_buffer_stack, align 8
  %131 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx159 = getelementptr inbounds ptr, ptr %130, i64 %131
  %132 = load ptr, ptr %arrayidx159, align 8
  %yy_ch_buf160 = getelementptr inbounds %struct.yy_buffer_state, ptr %132, i32 0, i32 1
  %133 = load ptr, ptr %yy_ch_buf160, align 8
  %134 = load i32, ptr %new_size156, align 4
  %conv161 = sext i32 %134 to i64
  %call162 = call ptr @ncgrealloc(ptr noundef %133, i64 noundef %conv161)
  %135 = load ptr, ptr @yy_buffer_stack, align 8
  %136 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx163 = getelementptr inbounds ptr, ptr %135, i64 %136
  %137 = load ptr, ptr %arrayidx163, align 8
  %yy_ch_buf164 = getelementptr inbounds %struct.yy_buffer_state, ptr %137, i32 0, i32 1
  store ptr %call162, ptr %yy_ch_buf164, align 8
  %138 = load ptr, ptr @yy_buffer_stack, align 8
  %139 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx165 = getelementptr inbounds ptr, ptr %138, i64 %139
  %140 = load ptr, ptr %arrayidx165, align 8
  %yy_ch_buf166 = getelementptr inbounds %struct.yy_buffer_state, ptr %140, i32 0, i32 1
  %141 = load ptr, ptr %yy_ch_buf166, align 8
  %tobool167 = icmp ne ptr %141, null
  br i1 %tobool167, label %if.end169, label %if.then168

if.then168:                                       ; preds = %if.then155
  call void @yy_fatal_error(ptr noundef @.str.247) #18
  unreachable

if.end169:                                        ; preds = %if.then155
  %142 = load i32, ptr %new_size156, align 4
  %sub170 = sub nsw i32 %142, 2
  %143 = load ptr, ptr @yy_buffer_stack, align 8
  %144 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx171 = getelementptr inbounds ptr, ptr %143, i64 %144
  %145 = load ptr, ptr %arrayidx171, align 8
  %yy_buf_size172 = getelementptr inbounds %struct.yy_buffer_state, ptr %145, i32 0, i32 3
  store i32 %sub170, ptr %yy_buf_size172, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_size156) #13
  br label %if.end173

if.end173:                                        ; preds = %if.end169, %if.end149
  %146 = load i32, ptr %number_to_move, align 4
  %147 = load i32, ptr @yy_n_chars, align 4
  %add174 = add nsw i32 %147, %146
  store i32 %add174, ptr @yy_n_chars, align 4
  %148 = load ptr, ptr @yy_buffer_stack, align 8
  %149 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx175 = getelementptr inbounds ptr, ptr %148, i64 %149
  %150 = load ptr, ptr %arrayidx175, align 8
  %yy_ch_buf176 = getelementptr inbounds %struct.yy_buffer_state, ptr %150, i32 0, i32 1
  %151 = load ptr, ptr %yy_ch_buf176, align 8
  %152 = load i32, ptr @yy_n_chars, align 4
  %idxprom177 = sext i32 %152 to i64
  %arrayidx178 = getelementptr inbounds i8, ptr %151, i64 %idxprom177
  store i8 0, ptr %arrayidx178, align 1
  %153 = load ptr, ptr @yy_buffer_stack, align 8
  %154 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx179 = getelementptr inbounds ptr, ptr %153, i64 %154
  %155 = load ptr, ptr %arrayidx179, align 8
  %yy_ch_buf180 = getelementptr inbounds %struct.yy_buffer_state, ptr %155, i32 0, i32 1
  %156 = load ptr, ptr %yy_ch_buf180, align 8
  %157 = load i32, ptr @yy_n_chars, align 4
  %add181 = add nsw i32 %157, 1
  %idxprom182 = sext i32 %add181 to i64
  %arrayidx183 = getelementptr inbounds i8, ptr %156, i64 %idxprom182
  store i8 0, ptr %arrayidx183, align 1
  %158 = load ptr, ptr @yy_buffer_stack, align 8
  %159 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx184 = getelementptr inbounds ptr, ptr %158, i64 %159
  %160 = load ptr, ptr %arrayidx184, align 8
  %yy_ch_buf185 = getelementptr inbounds %struct.yy_buffer_state, ptr %160, i32 0, i32 1
  %161 = load ptr, ptr %yy_ch_buf185, align 8
  %arrayidx186 = getelementptr inbounds i8, ptr %161, i64 0
  store ptr %arrayidx186, ptr @ncgtext, align 8
  %162 = load i32, ptr %ret_val, align 4
  store i32 %162, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end173, %if.else, %if.then8
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret_val) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %number_to_move) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %source) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %dest) #13
  %163 = load i32, ptr %retval, align 4
  ret i32 %163
}

; Function Attrs: nounwind uwtable
define internal i32 @ncgwrap() #0 {
entry:
  ret i32 1
}

; Function Attrs: nounwind uwtable
define void @ncgrestart(ptr noundef %input_file) #0 {
entry:
  %input_file.addr = alloca ptr, align 8
  store ptr %input_file, ptr %input_file.addr, align 8
  %0 = load ptr, ptr @yy_buffer_stack, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr @yy_buffer_stack, align 8
  %2 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %2
  %3 = load ptr, ptr %arrayidx, align 8
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.end, label %if.then

cond.false:                                       ; preds = %entry
  br i1 false, label %if.end, label %if.then

if.then:                                          ; preds = %cond.false, %cond.true
  call void @ncgensure_buffer_stack()
  %4 = load ptr, ptr @ncgin, align 8
  %call = call ptr @ncg_create_buffer(ptr noundef %4, i32 noundef 16384)
  %5 = load ptr, ptr @yy_buffer_stack, align 8
  %6 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %5, i64 %6
  store ptr %call, ptr %arrayidx2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.false, %cond.true
  %7 = load ptr, ptr @yy_buffer_stack, align 8
  %tobool3 = icmp ne ptr %7, null
  br i1 %tobool3, label %cond.true4, label %cond.false6

cond.true4:                                       ; preds = %if.end
  %8 = load ptr, ptr @yy_buffer_stack, align 8
  %9 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx5 = getelementptr inbounds ptr, ptr %8, i64 %9
  %10 = load ptr, ptr %arrayidx5, align 8
  br label %cond.end

cond.false6:                                      ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false6, %cond.true4
  %cond = phi ptr [ %10, %cond.true4 ], [ null, %cond.false6 ]
  %11 = load ptr, ptr %input_file.addr, align 8
  call void @ncg_init_buffer(ptr noundef %cond, ptr noundef %11)
  call void @ncg_load_buffer_state()
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define internal void @yy_fatal_error(ptr noundef %msg) #9 {
entry:
  %msg.addr = alloca ptr, align 8
  store ptr %msg, ptr %msg.addr, align 8
  %0 = load ptr, ptr @stderr, align 8
  %1 = load ptr, ptr %msg.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.249, ptr noundef %1)
  call void @exit(i32 noundef 2) #15
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @ncg_init_buffer(ptr noundef %b, ptr noundef %file) #0 {
entry:
  %b.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %oerrno = alloca i32, align 4
  store ptr %b, ptr %b.addr, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %oerrno) #13
  %call = call ptr @__errno_location() #17
  %0 = load i32, ptr %call, align 4
  store i32 %0, ptr %oerrno, align 4
  %1 = load ptr, ptr %b.addr, align 8
  call void @ncg_flush_buffer(ptr noundef %1)
  %2 = load ptr, ptr %file.addr, align 8
  %3 = load ptr, ptr %b.addr, align 8
  %yy_input_file = getelementptr inbounds %struct.yy_buffer_state, ptr %3, i32 0, i32 0
  store ptr %2, ptr %yy_input_file, align 8
  %4 = load ptr, ptr %b.addr, align 8
  %yy_fill_buffer = getelementptr inbounds %struct.yy_buffer_state, ptr %4, i32 0, i32 10
  store i32 1, ptr %yy_fill_buffer, align 4
  %5 = load ptr, ptr %b.addr, align 8
  %6 = load ptr, ptr @yy_buffer_stack, align 8
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load ptr, ptr @yy_buffer_stack, align 8
  %8 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %7, i64 %8
  %9 = load ptr, ptr %arrayidx, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %9, %cond.true ], [ null, %cond.false ]
  %cmp = icmp ne ptr %5, %cond
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %10 = load ptr, ptr %b.addr, align 8
  %yy_bs_lineno = getelementptr inbounds %struct.yy_buffer_state, ptr %10, i32 0, i32 8
  store i32 1, ptr %yy_bs_lineno, align 4
  %11 = load ptr, ptr %b.addr, align 8
  %yy_bs_column = getelementptr inbounds %struct.yy_buffer_state, ptr %11, i32 0, i32 9
  store i32 0, ptr %yy_bs_column, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %12 = load ptr, ptr %file.addr, align 8
  %tobool1 = icmp ne ptr %12, null
  br i1 %tobool1, label %cond.true2, label %cond.false6

cond.true2:                                       ; preds = %if.end
  %13 = load ptr, ptr %file.addr, align 8
  %call3 = call i32 @fileno(ptr noundef %13) #13
  %call4 = call i32 @isatty(i32 noundef %call3) #13
  %cmp5 = icmp sgt i32 %call4, 0
  %conv = zext i1 %cmp5 to i32
  br label %cond.end7

cond.false6:                                      ; preds = %if.end
  br label %cond.end7

cond.end7:                                        ; preds = %cond.false6, %cond.true2
  %cond8 = phi i32 [ %conv, %cond.true2 ], [ 0, %cond.false6 ]
  %14 = load ptr, ptr %b.addr, align 8
  %yy_is_interactive = getelementptr inbounds %struct.yy_buffer_state, ptr %14, i32 0, i32 6
  store i32 %cond8, ptr %yy_is_interactive, align 4
  %15 = load i32, ptr %oerrno, align 4
  %call9 = call ptr @__errno_location() #17
  store i32 %15, ptr %call9, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %oerrno) #13
  ret void
}

; Function Attrs: nounwind uwtable
define void @ncg_switch_to_buffer(ptr noundef %new_buffer) #0 {
entry:
  %new_buffer.addr = alloca ptr, align 8
  store ptr %new_buffer, ptr %new_buffer.addr, align 8
  call void @ncgensure_buffer_stack()
  %0 = load ptr, ptr @yy_buffer_stack, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr @yy_buffer_stack, align 8
  %2 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %2
  %3 = load ptr, ptr %arrayidx, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %3, %cond.true ], [ null, %cond.false ]
  %4 = load ptr, ptr %new_buffer.addr, align 8
  %cmp = icmp eq ptr %cond, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  br label %return

if.end:                                           ; preds = %cond.end
  %5 = load ptr, ptr @yy_buffer_stack, align 8
  %tobool1 = icmp ne ptr %5, null
  br i1 %tobool1, label %cond.true2, label %cond.false5

cond.true2:                                       ; preds = %if.end
  %6 = load ptr, ptr @yy_buffer_stack, align 8
  %7 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %6, i64 %7
  %8 = load ptr, ptr %arrayidx3, align 8
  %tobool4 = icmp ne ptr %8, null
  br i1 %tobool4, label %if.then6, label %if.end9

cond.false5:                                      ; preds = %if.end
  br i1 false, label %if.then6, label %if.end9

if.then6:                                         ; preds = %cond.false5, %cond.true2
  %9 = load i8, ptr @yy_hold_char, align 1
  %10 = load ptr, ptr @yy_c_buf_p, align 8
  store i8 %9, ptr %10, align 1
  %11 = load ptr, ptr @yy_c_buf_p, align 8
  %12 = load ptr, ptr @yy_buffer_stack, align 8
  %13 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx7 = getelementptr inbounds ptr, ptr %12, i64 %13
  %14 = load ptr, ptr %arrayidx7, align 8
  %yy_buf_pos = getelementptr inbounds %struct.yy_buffer_state, ptr %14, i32 0, i32 2
  store ptr %11, ptr %yy_buf_pos, align 8
  %15 = load i32, ptr @yy_n_chars, align 4
  %16 = load ptr, ptr @yy_buffer_stack, align 8
  %17 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx8 = getelementptr inbounds ptr, ptr %16, i64 %17
  %18 = load ptr, ptr %arrayidx8, align 8
  %yy_n_chars = getelementptr inbounds %struct.yy_buffer_state, ptr %18, i32 0, i32 4
  store i32 %15, ptr %yy_n_chars, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %cond.false5, %cond.true2
  %19 = load ptr, ptr %new_buffer.addr, align 8
  %20 = load ptr, ptr @yy_buffer_stack, align 8
  %21 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx10 = getelementptr inbounds ptr, ptr %20, i64 %21
  store ptr %19, ptr %arrayidx10, align 8
  call void @ncg_load_buffer_state()
  store i32 1, ptr @yy_did_buffer_switch_on_eof, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @ncgalloc(i64 noundef %size) #0 {
entry:
  %size.addr = alloca i64, align 8
  store i64 %size, ptr %size.addr, align 8
  %0 = load i64, ptr %size.addr, align 8
  %call = call noalias ptr @malloc(i64 noundef %0) #14
  ret ptr %call
}

; Function Attrs: nounwind uwtable
define void @ncg_delete_buffer(ptr noundef %b) #0 {
entry:
  %b.addr = alloca ptr, align 8
  store ptr %b, ptr %b.addr, align 8
  %0 = load ptr, ptr %b.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %b.addr, align 8
  %2 = load ptr, ptr @yy_buffer_stack, align 8
  %tobool1 = icmp ne ptr %2, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %3 = load ptr, ptr @yy_buffer_stack, align 8
  %4 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %4
  %5 = load ptr, ptr %arrayidx, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %5, %cond.true ], [ null, %cond.false ]
  %cmp = icmp eq ptr %1, %cond
  br i1 %cmp, label %if.then2, label %if.end4

if.then2:                                         ; preds = %cond.end
  %6 = load ptr, ptr @yy_buffer_stack, align 8
  %7 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %6, i64 %7
  store ptr null, ptr %arrayidx3, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %cond.end
  %8 = load ptr, ptr %b.addr, align 8
  %yy_is_our_buffer = getelementptr inbounds %struct.yy_buffer_state, ptr %8, i32 0, i32 5
  %9 = load i32, ptr %yy_is_our_buffer, align 8
  %tobool5 = icmp ne i32 %9, 0
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  %10 = load ptr, ptr %b.addr, align 8
  %yy_ch_buf = getelementptr inbounds %struct.yy_buffer_state, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %yy_ch_buf, align 8
  call void @ncgfree(ptr noundef %11)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4
  %12 = load ptr, ptr %b.addr, align 8
  call void @ncgfree(ptr noundef %12)
  br label %return

return:                                           ; preds = %if.end7, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @ncgfree(ptr noundef %ptr) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  %0 = load ptr, ptr %ptr.addr, align 8
  call void @free(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define void @ncg_flush_buffer(ptr noundef %b) #0 {
entry:
  %b.addr = alloca ptr, align 8
  store ptr %b, ptr %b.addr, align 8
  %0 = load ptr, ptr %b.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end8

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %b.addr, align 8
  %yy_n_chars = getelementptr inbounds %struct.yy_buffer_state, ptr %1, i32 0, i32 4
  store i32 0, ptr %yy_n_chars, align 4
  %2 = load ptr, ptr %b.addr, align 8
  %yy_ch_buf = getelementptr inbounds %struct.yy_buffer_state, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %yy_ch_buf, align 8
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 0
  store i8 0, ptr %arrayidx, align 1
  %4 = load ptr, ptr %b.addr, align 8
  %yy_ch_buf1 = getelementptr inbounds %struct.yy_buffer_state, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %yy_ch_buf1, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %5, i64 1
  store i8 0, ptr %arrayidx2, align 1
  %6 = load ptr, ptr %b.addr, align 8
  %yy_ch_buf3 = getelementptr inbounds %struct.yy_buffer_state, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %yy_ch_buf3, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %7, i64 0
  %8 = load ptr, ptr %b.addr, align 8
  %yy_buf_pos = getelementptr inbounds %struct.yy_buffer_state, ptr %8, i32 0, i32 2
  store ptr %arrayidx4, ptr %yy_buf_pos, align 8
  %9 = load ptr, ptr %b.addr, align 8
  %yy_at_bol = getelementptr inbounds %struct.yy_buffer_state, ptr %9, i32 0, i32 7
  store i32 1, ptr %yy_at_bol, align 8
  %10 = load ptr, ptr %b.addr, align 8
  %yy_buffer_status = getelementptr inbounds %struct.yy_buffer_state, ptr %10, i32 0, i32 11
  store i32 0, ptr %yy_buffer_status, align 8
  %11 = load ptr, ptr %b.addr, align 8
  %12 = load ptr, ptr @yy_buffer_stack, align 8
  %tobool5 = icmp ne ptr %12, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %13 = load ptr, ptr @yy_buffer_stack, align 8
  %14 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %13, i64 %14
  %15 = load ptr, ptr %arrayidx6, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %15, %cond.true ], [ null, %cond.false ]
  %cmp = icmp eq ptr %11, %cond
  br i1 %cmp, label %if.then7, label %if.end8

if.then7:                                         ; preds = %cond.end
  call void @ncg_load_buffer_state()
  br label %if.end8

if.end8:                                          ; preds = %if.then, %if.then7, %cond.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @ncgpush_buffer_state(ptr noundef %new_buffer) #0 {
entry:
  %new_buffer.addr = alloca ptr, align 8
  store ptr %new_buffer, ptr %new_buffer.addr, align 8
  %0 = load ptr, ptr %new_buffer.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  call void @ncgensure_buffer_stack()
  %1 = load ptr, ptr @yy_buffer_stack, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %2 = load ptr, ptr @yy_buffer_stack, align 8
  %3 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %3
  %4 = load ptr, ptr %arrayidx, align 8
  %tobool1 = icmp ne ptr %4, null
  br i1 %tobool1, label %if.then2, label %if.end5

cond.false:                                       ; preds = %if.end
  br i1 false, label %if.then2, label %if.end5

if.then2:                                         ; preds = %cond.false, %cond.true
  %5 = load i8, ptr @yy_hold_char, align 1
  %6 = load ptr, ptr @yy_c_buf_p, align 8
  store i8 %5, ptr %6, align 1
  %7 = load ptr, ptr @yy_c_buf_p, align 8
  %8 = load ptr, ptr @yy_buffer_stack, align 8
  %9 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %8, i64 %9
  %10 = load ptr, ptr %arrayidx3, align 8
  %yy_buf_pos = getelementptr inbounds %struct.yy_buffer_state, ptr %10, i32 0, i32 2
  store ptr %7, ptr %yy_buf_pos, align 8
  %11 = load i32, ptr @yy_n_chars, align 4
  %12 = load ptr, ptr @yy_buffer_stack, align 8
  %13 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %12, i64 %13
  %14 = load ptr, ptr %arrayidx4, align 8
  %yy_n_chars = getelementptr inbounds %struct.yy_buffer_state, ptr %14, i32 0, i32 4
  store i32 %11, ptr %yy_n_chars, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %cond.false, %cond.true
  %15 = load ptr, ptr @yy_buffer_stack, align 8
  %tobool6 = icmp ne ptr %15, null
  br i1 %tobool6, label %cond.true7, label %cond.false10

cond.true7:                                       ; preds = %if.end5
  %16 = load ptr, ptr @yy_buffer_stack, align 8
  %17 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx8 = getelementptr inbounds ptr, ptr %16, i64 %17
  %18 = load ptr, ptr %arrayidx8, align 8
  %tobool9 = icmp ne ptr %18, null
  br i1 %tobool9, label %if.then11, label %if.end12

cond.false10:                                     ; preds = %if.end5
  br i1 false, label %if.then11, label %if.end12

if.then11:                                        ; preds = %cond.false10, %cond.true7
  %19 = load i64, ptr @yy_buffer_stack_top, align 8
  %inc = add i64 %19, 1
  store i64 %inc, ptr @yy_buffer_stack_top, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %cond.false10, %cond.true7
  %20 = load ptr, ptr %new_buffer.addr, align 8
  %21 = load ptr, ptr @yy_buffer_stack, align 8
  %22 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx13 = getelementptr inbounds ptr, ptr %21, i64 %22
  store ptr %20, ptr %arrayidx13, align 8
  call void @ncg_load_buffer_state()
  store i32 1, ptr @yy_did_buffer_switch_on_eof, align 4
  br label %return

return:                                           ; preds = %if.end12, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @ncgpop_buffer_state() #0 {
entry:
  %0 = load ptr, ptr @yy_buffer_stack, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr @yy_buffer_stack, align 8
  %2 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %2
  %3 = load ptr, ptr %arrayidx, align 8
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.end, label %if.then

cond.false:                                       ; preds = %entry
  br i1 false, label %if.end, label %if.then

if.then:                                          ; preds = %cond.false, %cond.true
  br label %if.end15

if.end:                                           ; preds = %cond.false, %cond.true
  %4 = load ptr, ptr @yy_buffer_stack, align 8
  %tobool2 = icmp ne ptr %4, null
  br i1 %tobool2, label %cond.true3, label %cond.false5

cond.true3:                                       ; preds = %if.end
  %5 = load ptr, ptr @yy_buffer_stack, align 8
  %6 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %5, i64 %6
  %7 = load ptr, ptr %arrayidx4, align 8
  br label %cond.end

cond.false5:                                      ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false5, %cond.true3
  %cond = phi ptr [ %7, %cond.true3 ], [ null, %cond.false5 ]
  call void @ncg_delete_buffer(ptr noundef %cond)
  %8 = load ptr, ptr @yy_buffer_stack, align 8
  %9 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %8, i64 %9
  store ptr null, ptr %arrayidx6, align 8
  %10 = load i64, ptr @yy_buffer_stack_top, align 8
  %cmp = icmp ugt i64 %10, 0
  br i1 %cmp, label %if.then7, label %if.end8

if.then7:                                         ; preds = %cond.end
  %11 = load i64, ptr @yy_buffer_stack_top, align 8
  %dec = add i64 %11, -1
  store i64 %dec, ptr @yy_buffer_stack_top, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %cond.end
  %12 = load ptr, ptr @yy_buffer_stack, align 8
  %tobool9 = icmp ne ptr %12, null
  br i1 %tobool9, label %cond.true10, label %cond.false13

cond.true10:                                      ; preds = %if.end8
  %13 = load ptr, ptr @yy_buffer_stack, align 8
  %14 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx11 = getelementptr inbounds ptr, ptr %13, i64 %14
  %15 = load ptr, ptr %arrayidx11, align 8
  %tobool12 = icmp ne ptr %15, null
  br i1 %tobool12, label %if.then14, label %if.end15

cond.false13:                                     ; preds = %if.end8
  br i1 false, label %if.then14, label %if.end15

if.then14:                                        ; preds = %cond.false13, %cond.true10
  call void @ncg_load_buffer_state()
  store i32 1, ptr @yy_did_buffer_switch_on_eof, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then, %if.then14, %cond.false13, %cond.true10
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @ncg_scan_buffer(ptr noundef %base, i64 noundef %size) #0 {
entry:
  %retval = alloca ptr, align 8
  %base.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %b = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %base, ptr %base.addr, align 8
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #13
  %0 = load i64, ptr %size.addr, align 8
  %cmp = icmp ult i64 %0, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %base.addr, align 8
  %2 = load i64, ptr %size.addr, align 8
  %sub = sub i64 %2, 2
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %sub
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %4 = load ptr, ptr %base.addr, align 8
  %5 = load i64, ptr %size.addr, align 8
  %sub4 = sub i64 %5, 1
  %arrayidx5 = getelementptr inbounds i8, ptr %4, i64 %sub4
  %6 = load i8, ptr %arrayidx5, align 1
  %conv6 = sext i8 %6 to i32
  %cmp7 = icmp ne i32 %conv6, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %call = call ptr @ncgalloc(i64 noundef 64)
  store ptr %call, ptr %b, align 8
  %7 = load ptr, ptr %b, align 8
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end
  call void @yy_fatal_error(ptr noundef @.str.88) #18
  unreachable

if.end10:                                         ; preds = %if.end
  %8 = load i64, ptr %size.addr, align 8
  %sub11 = sub i64 %8, 2
  %conv12 = trunc i64 %sub11 to i32
  %9 = load ptr, ptr %b, align 8
  %yy_buf_size = getelementptr inbounds %struct.yy_buffer_state, ptr %9, i32 0, i32 3
  store i32 %conv12, ptr %yy_buf_size, align 8
  %10 = load ptr, ptr %base.addr, align 8
  %11 = load ptr, ptr %b, align 8
  %yy_ch_buf = getelementptr inbounds %struct.yy_buffer_state, ptr %11, i32 0, i32 1
  store ptr %10, ptr %yy_ch_buf, align 8
  %12 = load ptr, ptr %b, align 8
  %yy_buf_pos = getelementptr inbounds %struct.yy_buffer_state, ptr %12, i32 0, i32 2
  store ptr %10, ptr %yy_buf_pos, align 8
  %13 = load ptr, ptr %b, align 8
  %yy_is_our_buffer = getelementptr inbounds %struct.yy_buffer_state, ptr %13, i32 0, i32 5
  store i32 0, ptr %yy_is_our_buffer, align 8
  %14 = load ptr, ptr %b, align 8
  %yy_input_file = getelementptr inbounds %struct.yy_buffer_state, ptr %14, i32 0, i32 0
  store ptr null, ptr %yy_input_file, align 8
  %15 = load ptr, ptr %b, align 8
  %yy_buf_size13 = getelementptr inbounds %struct.yy_buffer_state, ptr %15, i32 0, i32 3
  %16 = load i32, ptr %yy_buf_size13, align 8
  %17 = load ptr, ptr %b, align 8
  %yy_n_chars = getelementptr inbounds %struct.yy_buffer_state, ptr %17, i32 0, i32 4
  store i32 %16, ptr %yy_n_chars, align 4
  %18 = load ptr, ptr %b, align 8
  %yy_is_interactive = getelementptr inbounds %struct.yy_buffer_state, ptr %18, i32 0, i32 6
  store i32 0, ptr %yy_is_interactive, align 4
  %19 = load ptr, ptr %b, align 8
  %yy_at_bol = getelementptr inbounds %struct.yy_buffer_state, ptr %19, i32 0, i32 7
  store i32 1, ptr %yy_at_bol, align 8
  %20 = load ptr, ptr %b, align 8
  %yy_fill_buffer = getelementptr inbounds %struct.yy_buffer_state, ptr %20, i32 0, i32 10
  store i32 0, ptr %yy_fill_buffer, align 4
  %21 = load ptr, ptr %b, align 8
  %yy_buffer_status = getelementptr inbounds %struct.yy_buffer_state, ptr %21, i32 0, i32 11
  store i32 0, ptr %yy_buffer_status, align 8
  %22 = load ptr, ptr %b, align 8
  call void @ncg_switch_to_buffer(ptr noundef %22)
  %23 = load ptr, ptr %b, align 8
  store ptr %23, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #13
  %24 = load ptr, ptr %retval, align 8
  ret ptr %24
}

; Function Attrs: nounwind uwtable
define ptr @ncg_scan_string(ptr noundef %yystr) #0 {
entry:
  %yystr.addr = alloca ptr, align 8
  store ptr %yystr, ptr %yystr.addr, align 8
  %0 = load ptr, ptr %yystr.addr, align 8
  %1 = load ptr, ptr %yystr.addr, align 8
  %call = call i64 @strlen(ptr noundef %1) #16
  %conv = trunc i64 %call to i32
  %call1 = call ptr @ncg_scan_bytes(ptr noundef %0, i32 noundef %conv)
  ret ptr %call1
}

; Function Attrs: nounwind uwtable
define ptr @ncg_scan_bytes(ptr noundef %yybytes, i32 noundef %_yybytes_len) #0 {
entry:
  %yybytes.addr = alloca ptr, align 8
  %_yybytes_len.addr = alloca i32, align 4
  %b = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %n = alloca i64, align 8
  %i = alloca i32, align 4
  store ptr %yybytes, ptr %yybytes.addr, align 8
  store i32 %_yybytes_len, ptr %_yybytes_len.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13
  %0 = load i32, ptr %_yybytes_len.addr, align 4
  %add = add nsw i32 %0, 2
  %conv = sext i32 %add to i64
  store i64 %conv, ptr %n, align 8
  %1 = load i64, ptr %n, align 8
  %call = call ptr @ncgalloc(i64 noundef %1)
  store ptr %call, ptr %buf, align 8
  %2 = load ptr, ptr %buf, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @yy_fatal_error(ptr noundef @.str.89) #18
  unreachable

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %_yybytes_len.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %yybytes.addr, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 %idxprom
  %7 = load i8, ptr %arrayidx, align 1
  %8 = load ptr, ptr %buf, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds i8, ptr %8, i64 %idxprom2
  store i8 %7, ptr %arrayidx3, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !37

for.end:                                          ; preds = %for.cond
  %11 = load ptr, ptr %buf, align 8
  %12 = load i32, ptr %_yybytes_len.addr, align 4
  %add4 = add nsw i32 %12, 1
  %idxprom5 = sext i32 %add4 to i64
  %arrayidx6 = getelementptr inbounds i8, ptr %11, i64 %idxprom5
  store i8 0, ptr %arrayidx6, align 1
  %13 = load ptr, ptr %buf, align 8
  %14 = load i32, ptr %_yybytes_len.addr, align 4
  %idxprom7 = sext i32 %14 to i64
  %arrayidx8 = getelementptr inbounds i8, ptr %13, i64 %idxprom7
  store i8 0, ptr %arrayidx8, align 1
  %15 = load ptr, ptr %buf, align 8
  %16 = load i64, ptr %n, align 8
  %call9 = call ptr @ncg_scan_buffer(ptr noundef %15, i64 noundef %16)
  store ptr %call9, ptr %b, align 8
  %17 = load ptr, ptr %b, align 8
  %tobool10 = icmp ne ptr %17, null
  br i1 %tobool10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %for.end
  call void @yy_fatal_error(ptr noundef @.str.90) #18
  unreachable

if.end12:                                         ; preds = %for.end
  %18 = load ptr, ptr %b, align 8
  %yy_is_our_buffer = getelementptr inbounds %struct.yy_buffer_state, ptr %18, i32 0, i32 5
  store i32 1, ptr %yy_is_our_buffer, align 8
  %19 = load ptr, ptr %b, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #13
  ret ptr %19
}

; Function Attrs: nounwind uwtable
define i32 @ncgget_lineno() #0 {
entry:
  %0 = load i32, ptr @ncglineno, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define ptr @ncgget_in() #0 {
entry:
  %0 = load ptr, ptr @ncgin, align 8
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define ptr @ncgget_out() #0 {
entry:
  %0 = load ptr, ptr @ncgout, align 8
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define i32 @ncgget_leng() #0 {
entry:
  %0 = load i32, ptr @ncgleng, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define ptr @ncgget_text() #0 {
entry:
  %0 = load ptr, ptr @ncgtext, align 8
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define void @ncgset_lineno(i32 noundef %_line_number) #0 {
entry:
  %_line_number.addr = alloca i32, align 4
  store i32 %_line_number, ptr %_line_number.addr, align 4
  %0 = load i32, ptr %_line_number.addr, align 4
  store i32 %0, ptr @ncglineno, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @ncgset_in(ptr noundef %_in_str) #0 {
entry:
  %_in_str.addr = alloca ptr, align 8
  store ptr %_in_str, ptr %_in_str.addr, align 8
  %0 = load ptr, ptr %_in_str.addr, align 8
  store ptr %0, ptr @ncgin, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @ncgset_out(ptr noundef %_out_str) #0 {
entry:
  %_out_str.addr = alloca ptr, align 8
  store ptr %_out_str, ptr %_out_str.addr, align 8
  %0 = load ptr, ptr %_out_str.addr, align 8
  store ptr %0, ptr @ncgout, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ncgget_debug() #0 {
entry:
  %0 = load i32, ptr @ncg_flex_debug, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define void @ncgset_debug(i32 noundef %_bdebug) #0 {
entry:
  %_bdebug.addr = alloca i32, align 4
  store i32 %_bdebug, ptr %_bdebug.addr, align 4
  %0 = load i32, ptr %_bdebug.addr, align 4
  store i32 %0, ptr @ncg_flex_debug, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ncglex_destroy() #0 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %cond.end6, %entry
  %0 = load ptr, ptr @yy_buffer_stack, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.cond
  %1 = load ptr, ptr @yy_buffer_stack, align 8
  %2 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %2
  %3 = load ptr, ptr %arrayidx, align 8
  br label %cond.end

cond.false:                                       ; preds = %while.cond
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %3, %cond.true ], [ null, %cond.false ]
  %tobool1 = icmp ne ptr %cond, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %cond.end
  %4 = load ptr, ptr @yy_buffer_stack, align 8
  %tobool2 = icmp ne ptr %4, null
  br i1 %tobool2, label %cond.true3, label %cond.false5

cond.true3:                                       ; preds = %while.body
  %5 = load ptr, ptr @yy_buffer_stack, align 8
  %6 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %5, i64 %6
  %7 = load ptr, ptr %arrayidx4, align 8
  br label %cond.end6

cond.false5:                                      ; preds = %while.body
  br label %cond.end6

cond.end6:                                        ; preds = %cond.false5, %cond.true3
  %cond7 = phi ptr [ %7, %cond.true3 ], [ null, %cond.false5 ]
  call void @ncg_delete_buffer(ptr noundef %cond7)
  %8 = load ptr, ptr @yy_buffer_stack, align 8
  %9 = load i64, ptr @yy_buffer_stack_top, align 8
  %arrayidx8 = getelementptr inbounds ptr, ptr %8, i64 %9
  store ptr null, ptr %arrayidx8, align 8
  call void @ncgpop_buffer_state()
  br label %while.cond, !llvm.loop !38

while.end:                                        ; preds = %cond.end
  %10 = load ptr, ptr @yy_buffer_stack, align 8
  call void @ncgfree(ptr noundef %10)
  store ptr null, ptr @yy_buffer_stack, align 8
  %call = call i32 @yy_init_globals()
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @yy_init_globals() #0 {
entry:
  store ptr null, ptr @yy_buffer_stack, align 8
  store i64 0, ptr @yy_buffer_stack_top, align 8
  store i64 0, ptr @yy_buffer_stack_max, align 8
  store ptr null, ptr @yy_c_buf_p, align 8
  store i32 0, ptr @yy_init, align 4
  store i32 0, ptr @yy_start, align 4
  store ptr null, ptr @ncgin, align 8
  store ptr null, ptr @ncgout, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define ptr @ncgrealloc(ptr noundef %ptr, i64 noundef %size) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  store i64 %size, ptr %size.addr, align 8
  %0 = load ptr, ptr %ptr.addr, align 8
  %1 = load i64, ptr %size.addr, align 8
  %call = call ptr @realloc(ptr noundef %0, i64 noundef %1) #19
  ret ptr %call
}

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #10

; Function Attrs: nounwind uwtable
define i32 @lex_init() #0 {
entry:
  store i32 1, ptr @lineno, align 4
  %call = call ptr @bbNew()
  store ptr %call, ptr @lextext, align 8
  ret i32 0
}

declare ptr @bbNew() #2

; Function Attrs: nounwind uwtable
define void @parse_init() #0 {
entry:
  %i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13
  store i32 0, ptr @opaqueid, align 4
  store i32 0, ptr @arrayuid, align 4
  %call = call ptr @listnew()
  store ptr %call, ptr @symlist, align 8
  %call1 = call ptr @listnew()
  store ptr %call1, ptr @stack, align 8
  %call2 = call ptr @listnew()
  store ptr %call2, ptr @groupstack, align 8
  store i32 0, ptr @consttype, align 4
  %call3 = call ptr @listnew()
  store ptr %call3, ptr @grpdefs, align 8
  %call4 = call ptr @listnew()
  store ptr %call4, ptr @dimdefs, align 8
  %call5 = call ptr @listnew()
  store ptr %call5, ptr @attdefs, align 8
  %call6 = call ptr @listnew()
  store ptr %call6, ptr @gattdefs, align 8
  %call7 = call ptr @listnew()
  store ptr %call7, ptr @xattdefs, align 8
  %call8 = call ptr @listnew()
  store ptr %call8, ptr @typdefs, align 8
  %call9 = call ptr @listnew()
  store ptr %call9, ptr @vardefs, align 8
  %call10 = call ptr @listnew()
  store ptr %call10, ptr @tmp, align 8
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp sle i32 %0, 12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %call11 = call ptr @makeprimitivetype(i32 noundef %1)
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [13 x ptr], ptr @primsymbols, i64 0, i64 %idxprom
  store ptr %call11, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !39

for.end:                                          ; preds = %for.cond
  %call12 = call i32 @lex_init()
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @makeprimitivetype(i32 noundef %nctype) #0 {
entry:
  %nctype.addr = alloca i32, align 4
  %sym = alloca ptr, align 8
  store i32 %nctype, ptr %nctype.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %sym) #13
  %0 = load i32, ptr %nctype.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [13 x ptr], ptr @primtypenames, i64 0, i64 %idxprom
  %1 = load ptr, ptr %arrayidx, align 8
  %call = call ptr @install(ptr noundef %1)
  store ptr %call, ptr %sym, align 8
  %2 = load ptr, ptr %sym, align 8
  %objectclass = getelementptr inbounds %struct.Symbol, ptr %2, i32 0, i32 0
  store i32 104, ptr %objectclass, align 8
  %3 = load ptr, ptr %sym, align 8
  %subclass = getelementptr inbounds %struct.Symbol, ptr %3, i32 0, i32 1
  store i32 108, ptr %subclass, align 4
  %4 = load i32, ptr %nctype.addr, align 4
  %5 = load ptr, ptr %sym, align 8
  %nc_id = getelementptr inbounds %struct.Symbol, ptr %5, i32 0, i32 19
  store i32 %4, ptr %nc_id, align 8
  %6 = load i32, ptr %nctype.addr, align 4
  %7 = load ptr, ptr %sym, align 8
  %typ = getelementptr inbounds %struct.Symbol, ptr %7, i32 0, i32 10
  %typecode = getelementptr inbounds %struct.Typeinfo, ptr %typ, i32 0, i32 2
  store i32 %6, ptr %typecode, align 4
  %8 = load i32, ptr %nctype.addr, align 4
  %call1 = call i32 @ncsize(i32 noundef %8)
  %conv = sext i32 %call1 to i64
  %9 = load ptr, ptr %sym, align 8
  %typ2 = getelementptr inbounds %struct.Symbol, ptr %9, i32 0, i32 10
  %size = getelementptr inbounds %struct.Typeinfo, ptr %typ2, i32 0, i32 7
  store i64 %conv, ptr %size, align 8
  %10 = load ptr, ptr %sym, align 8
  %typ3 = getelementptr inbounds %struct.Symbol, ptr %10, i32 0, i32 10
  %nelems = getelementptr inbounds %struct.Typeinfo, ptr %typ3, i32 0, i32 9
  store i64 1, ptr %nelems, align 8
  %11 = load i32, ptr %nctype.addr, align 4
  %12 = load ptr, ptr %sym, align 8
  %typ4 = getelementptr inbounds %struct.Symbol, ptr %12, i32 0, i32 10
  %alignment = getelementptr inbounds %struct.Typeinfo, ptr %typ4, i32 0, i32 4
  %call5 = call i32 @ncaux_class_alignment(i32 noundef %11, ptr noundef %alignment)
  %13 = load ptr, ptr %sym, align 8
  %14 = load ptr, ptr %sym, align 8
  %typ6 = getelementptr inbounds %struct.Symbol, ptr %14, i32 0, i32 10
  %basetype = getelementptr inbounds %struct.Typeinfo, ptr %typ6, i32 0, i32 0
  store ptr %13, ptr %basetype, align 8
  %call7 = call ptr @listnew()
  %15 = load ptr, ptr %sym, align 8
  %prefix = getelementptr inbounds %struct.Symbol, ptr %15, i32 0, i32 8
  store ptr %call7, ptr %prefix, align 8
  %16 = load ptr, ptr %sym, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %sym) #13
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define ptr @installin(ptr noundef %sname, ptr noundef %grp) #0 {
entry:
  %sname.addr = alloca ptr, align 8
  %grp.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  store ptr %sname, ptr %sname.addr, align 8
  store ptr %grp, ptr %grp.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %sp) #13
  %call = call ptr @chkcalloc(i64 noundef 8528)
  store ptr %call, ptr %sp, align 8
  %0 = load ptr, ptr %sname.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load ptr, ptr %sname.addr, align 8
  %call1 = call noalias ptr @strdup(ptr noundef %1) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ null, %cond.true ], [ %call1, %cond.false ]
  %2 = load ptr, ptr %sp, align 8
  %name = getelementptr inbounds %struct.Symbol, ptr %2, i32 0, i32 2
  store ptr %cond, ptr %name, align 8
  %3 = load i32, ptr @lineno, align 4
  %4 = load ptr, ptr %sp, align 8
  %lineno = getelementptr inbounds %struct.Symbol, ptr %4, i32 0, i32 17
  store i32 %3, ptr %lineno, align 8
  %5 = load ptr, ptr %grp.addr, align 8
  %6 = load ptr, ptr %sp, align 8
  %location = getelementptr inbounds %struct.Symbol, ptr %6, i32 0, i32 5
  store ptr %5, ptr %location, align 8
  %7 = load ptr, ptr %grp.addr, align 8
  %8 = load ptr, ptr %sp, align 8
  %container = getelementptr inbounds %struct.Symbol, ptr %8, i32 0, i32 4
  store ptr %7, ptr %container, align 8
  %9 = load ptr, ptr @symlist, align 8
  %10 = load ptr, ptr %sp, align 8
  %call2 = call i32 @listpush(ptr noundef %9, ptr noundef %10)
  %11 = load ptr, ptr %sp, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %sp) #13
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define internal ptr @currentgroup() #0 {
entry:
  %retval = alloca ptr, align 8
  %0 = load ptr, ptr @groupstack, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load ptr, ptr @groupstack, align 8
  %length = getelementptr inbounds %struct.List, ptr %1, i32 0, i32 1
  %2 = load i64, ptr %length, align 8
  %conv = trunc i64 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp eq i32 %cond, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %3 = load ptr, ptr @rootgroup, align 8
  store ptr %3, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %cond.end
  %4 = load ptr, ptr @groupstack, align 8
  %call = call ptr @listtop(ptr noundef %4)
  store ptr %call, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
}

declare ptr @chkcalloc(i64 noundef) #2

; Function Attrs: nounwind
declare noalias ptr @strdup(ptr noundef) #5

; Function Attrs: nounwind uwtable
define ptr @basetypefor(i32 noundef %nctype) #0 {
entry:
  %nctype.addr = alloca i32, align 4
  store i32 %nctype, ptr %nctype.addr, align 4
  %0 = load i32, ptr %nctype.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [13 x ptr], ptr @primsymbols, i64 0, i64 %idxprom
  %1 = load ptr, ptr %arrayidx, align 8
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define ptr @specialname(i32 noundef %tag) #0 {
entry:
  %retval = alloca ptr, align 8
  %tag.addr = alloca i32, align 4
  %spp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %tag, ptr %tag.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %spp) #13
  store ptr @specials, ptr %spp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %spp, align 8
  %name = getelementptr inbounds %struct.Specialtoken, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %name, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %spp, align 8
  %tag1 = getelementptr inbounds %struct.Specialtoken, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %tag1, align 4
  %4 = load i32, ptr %tag.addr, align 4
  %cmp = icmp eq i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load ptr, ptr %spp, align 8
  %name2 = getelementptr inbounds %struct.Specialtoken, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %name2, align 8
  store ptr %6, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load ptr, ptr %spp, align 8
  %incdec.ptr = getelementptr inbounds %struct.Specialtoken, ptr %7, i32 1
  store ptr %incdec.ptr, ptr %spp, align 8
  br label %for.cond, !llvm.loop !40

for.end:                                          ; preds = %for.cond
  store ptr @.str.91, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %spp) #13
  %8 = load ptr, ptr %retval, align 8
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define internal ptr @yysymbol_name(i32 noundef %yysymbol) #0 {
entry:
  %yysymbol.addr = alloca i32, align 4
  store i32 %yysymbol, ptr %yysymbol.addr, align 4
  %0 = load i32, ptr %yysymbol.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [138 x ptr], ptr @yytname, i64 0, i64 %idxprom
  %1 = load ptr, ptr %arrayidx, align 8
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define internal void @yy_symbol_value_print(ptr noundef %yyo, i32 noundef %yykind, ptr noundef %yyvaluep) #0 {
entry:
  %yyo.addr = alloca ptr, align 8
  %yykind.addr = alloca i32, align 4
  %yyvaluep.addr = alloca ptr, align 8
  %yyoutput = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %yyo, ptr %yyo.addr, align 8
  store i32 %yykind, ptr %yykind.addr, align 4
  store ptr %yyvaluep, ptr %yyvaluep.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %yyoutput) #13
  %0 = load ptr, ptr %yyo.addr, align 8
  store ptr %0, ptr %yyoutput, align 8
  %1 = load ptr, ptr %yyoutput, align 8
  %2 = load ptr, ptr %yyvaluep.addr, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %yykind.addr, align 4
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %yyoutput) #13
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

; Function Attrs: nounwind uwtable
define internal i32 @yy_syntax_error_arguments(ptr noundef %yyctx, ptr noundef %yyarg, i32 noundef %yyargn) #0 {
entry:
  %retval = alloca i32, align 4
  %yyctx.addr = alloca ptr, align 8
  %yyarg.addr = alloca ptr, align 8
  %yyargn.addr = alloca i32, align 4
  %yycount = alloca i32, align 4
  %yyn = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %yyctx, ptr %yyctx.addr, align 8
  store ptr %yyarg, ptr %yyarg.addr, align 8
  store i32 %yyargn, ptr %yyargn.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %yycount) #13
  store i32 0, ptr %yycount, align 4
  %0 = load ptr, ptr %yyctx.addr, align 8
  %yytoken = getelementptr inbounds %struct.yypcontext_t, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %yytoken, align 8
  %cmp = icmp ne i32 %1, -2
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %yyn) #13
  %2 = load ptr, ptr %yyarg.addr, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %3 = load ptr, ptr %yyctx.addr, align 8
  %yytoken2 = getelementptr inbounds %struct.yypcontext_t, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %yytoken2, align 8
  %5 = load ptr, ptr %yyarg.addr, align 8
  %6 = load i32, ptr %yycount, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i32, ptr %5, i64 %idxprom
  store i32 %4, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  %7 = load i32, ptr %yycount, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %yycount, align 4
  %8 = load ptr, ptr %yyctx.addr, align 8
  %9 = load ptr, ptr %yyarg.addr, align 8
  %tobool3 = icmp ne ptr %9, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load ptr, ptr %yyarg.addr, align 8
  %add.ptr = getelementptr inbounds i32, ptr %10, i64 1
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %11 = load ptr, ptr %yyarg.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %11, %cond.false ]
  %12 = load i32, ptr %yyargn.addr, align 4
  %sub = sub nsw i32 %12, 1
  %call = call i32 @yypcontext_expected_tokens(ptr noundef %8, ptr noundef %cond, i32 noundef %sub)
  store i32 %call, ptr %yyn, align 4
  %13 = load i32, ptr %yyn, align 4
  %cmp4 = icmp eq i32 %13, -2
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %cond.end
  store i32 -2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %cond.end
  %14 = load i32, ptr %yyn, align 4
  %15 = load i32, ptr %yycount, align 4
  %add = add nsw i32 %15, %14
  store i32 %add, ptr %yycount, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %yyn) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup8 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end7

if.end7:                                          ; preds = %cleanup.cont, %entry
  %16 = load i32, ptr %yycount, align 4
  store i32 %16, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup8

cleanup8:                                         ; preds = %if.end7, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %yycount) #13
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i64 @yytnamerr(ptr noundef %yyres, ptr noundef %yystr) #0 {
entry:
  %retval = alloca i64, align 8
  %yyres.addr = alloca ptr, align 8
  %yystr.addr = alloca ptr, align 8
  %yyn = alloca i64, align 8
  %yyp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %yyres, ptr %yyres.addr, align 8
  store ptr %yystr, ptr %yystr.addr, align 8
  %0 = load ptr, ptr %yystr.addr, align 8
  %1 = load i8, ptr %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 34
  br i1 %cmp, label %if.then, label %if.end16

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %yyn) #13
  store i64 0, ptr %yyn, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %yyp) #13
  %2 = load ptr, ptr %yystr.addr, align 8
  store ptr %2, ptr %yyp, align 8
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %if.then
  %3 = load ptr, ptr %yyp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %yyp, align 8
  %4 = load i8, ptr %incdec.ptr, align 1
  %conv2 = sext i8 %4 to i32
  switch i32 %conv2, label %sw.default [
    i32 39, label %sw.bb
    i32 44, label %sw.bb
    i32 92, label %sw.bb3
    i32 34, label %sw.bb10
  ]

sw.bb:                                            ; preds = %for.cond, %for.cond
  br label %do_not_strip_quotes

sw.bb3:                                           ; preds = %for.cond
  %5 = load ptr, ptr %yyp, align 8
  %incdec.ptr4 = getelementptr inbounds i8, ptr %5, i32 1
  store ptr %incdec.ptr4, ptr %yyp, align 8
  %6 = load i8, ptr %incdec.ptr4, align 1
  %conv5 = sext i8 %6 to i32
  %cmp6 = icmp ne i32 %conv5, 92
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %sw.bb3
  br label %do_not_strip_quotes

if.else:                                          ; preds = %sw.bb3
  br label %append

append:                                           ; preds = %if.else
  br label %sw.default

sw.default:                                       ; preds = %for.cond, %append
  %7 = load ptr, ptr %yyres.addr, align 8
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %if.then9, label %if.end

if.then9:                                         ; preds = %sw.default
  %8 = load ptr, ptr %yyp, align 8
  %9 = load i8, ptr %8, align 1
  %10 = load ptr, ptr %yyres.addr, align 8
  %11 = load i64, ptr %yyn, align 8
  %arrayidx = getelementptr inbounds i8, ptr %10, i64 %11
  store i8 %9, ptr %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then9, %sw.default
  %12 = load i64, ptr %yyn, align 8
  %inc = add nsw i64 %12, 1
  store i64 %inc, ptr %yyn, align 8
  br label %sw.epilog

sw.bb10:                                          ; preds = %for.cond
  %13 = load ptr, ptr %yyres.addr, align 8
  %tobool11 = icmp ne ptr %13, null
  br i1 %tobool11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %sw.bb10
  %14 = load ptr, ptr %yyres.addr, align 8
  %15 = load i64, ptr %yyn, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %14, i64 %15
  store i8 0, ptr %arrayidx13, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %sw.bb10
  %16 = load i64, ptr %yyn, align 8
  store i64 %16, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %if.end
  br label %for.cond

do_not_strip_quotes:                              ; preds = %if.then8, %sw.bb
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do_not_strip_quotes, %if.end14
  call void @llvm.lifetime.end.p0(i64 8, ptr %yyp) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %yyn) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end16

if.end16:                                         ; preds = %cleanup.cont, %entry
  %17 = load ptr, ptr %yyres.addr, align 8
  %tobool17 = icmp ne ptr %17, null
  br i1 %tobool17, label %if.then18, label %if.else19

if.then18:                                        ; preds = %if.end16
  %18 = load ptr, ptr %yyres.addr, align 8
  %19 = load ptr, ptr %yystr.addr, align 8
  %call = call ptr @yystpcpy(ptr noundef %18, ptr noundef %19)
  %20 = load ptr, ptr %yyres.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %call to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %20 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, ptr %retval, align 8
  br label %return

if.else19:                                        ; preds = %if.end16
  %21 = load ptr, ptr %yystr.addr, align 8
  %call20 = call i64 @strlen(ptr noundef %21) #16
  store i64 %call20, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else19, %if.then18, %cleanup
  %22 = load i64, ptr %retval, align 8
  ret i64 %22

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @yypcontext_expected_tokens(ptr noundef %yyctx, ptr noundef %yyarg, i32 noundef %yyargn) #0 {
entry:
  %retval = alloca i32, align 4
  %yyctx.addr = alloca ptr, align 8
  %yyarg.addr = alloca ptr, align 8
  %yyargn.addr = alloca i32, align 4
  %yycount = alloca i32, align 4
  %yyn = alloca i32, align 4
  %yyxbegin = alloca i32, align 4
  %yychecklim = alloca i32, align 4
  %yyxend = alloca i32, align 4
  %yyx = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %yyctx, ptr %yyctx.addr, align 8
  store ptr %yyarg, ptr %yyarg.addr, align 8
  store i32 %yyargn, ptr %yyargn.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %yycount) #13
  store i32 0, ptr %yycount, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %yyn) #13
  %0 = load ptr, ptr %yyctx.addr, align 8
  %yyssp = getelementptr inbounds %struct.yypcontext_t, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %yyssp, align 8
  %2 = load i16, ptr %1, align 2
  %conv = sext i16 %2 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds [276 x i16], ptr @yypact, i64 0, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2
  %conv1 = sext i16 %3 to i32
  store i32 %conv1, ptr %yyn, align 4
  %4 = load i32, ptr %yyn, align 4
  %cmp = icmp eq i32 %4, -153
  br i1 %cmp, label %if.end37, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %yyxbegin) #13
  %5 = load i32, ptr %yyn, align 4
  %cmp3 = icmp slt i32 %5, 0
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %6 = load i32, ptr %yyn, align 4
  %sub = sub nsw i32 0, %6
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, ptr %yyxbegin, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %yychecklim) #13
  %7 = load i32, ptr %yyn, align 4
  %sub5 = sub nsw i32 420, %7
  %add = add nsw i32 %sub5, 1
  store i32 %add, ptr %yychecklim, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %yyxend) #13
  %8 = load i32, ptr %yychecklim, align 4
  %cmp6 = icmp slt i32 %8, 69
  br i1 %cmp6, label %cond.true8, label %cond.false9

cond.true8:                                       ; preds = %cond.end
  %9 = load i32, ptr %yychecklim, align 4
  br label %cond.end10

cond.false9:                                      ; preds = %cond.end
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false9, %cond.true8
  %cond11 = phi i32 [ %9, %cond.true8 ], [ 69, %cond.false9 ]
  store i32 %cond11, ptr %yyxend, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %yyx) #13
  %10 = load i32, ptr %yyxbegin, align 4
  store i32 %10, ptr %yyx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end10
  %11 = load i32, ptr %yyx, align 4
  %12 = load i32, ptr %yyxend, align 4
  %cmp12 = icmp slt i32 %11, %12
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, ptr %yyx, align 4
  %14 = load i32, ptr %yyn, align 4
  %add14 = add nsw i32 %13, %14
  %idxprom15 = sext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds [421 x i16], ptr @yycheck, i64 0, i64 %idxprom15
  %15 = load i16, ptr %arrayidx16, align 2
  %conv17 = sext i16 %15 to i32
  %16 = load i32, ptr %yyx, align 4
  %cmp18 = icmp eq i32 %conv17, %16
  br i1 %cmp18, label %land.lhs.true, label %if.end32

land.lhs.true:                                    ; preds = %for.body
  %17 = load i32, ptr %yyx, align 4
  %cmp20 = icmp ne i32 %17, 1
  br i1 %cmp20, label %if.then22, label %if.end32

if.then22:                                        ; preds = %land.lhs.true
  %18 = load ptr, ptr %yyarg.addr, align 8
  %tobool = icmp ne ptr %18, null
  br i1 %tobool, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.then22
  %19 = load i32, ptr %yycount, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %yycount, align 4
  br label %if.end31

if.else:                                          ; preds = %if.then22
  %20 = load i32, ptr %yycount, align 4
  %21 = load i32, ptr %yyargn.addr, align 4
  %cmp24 = icmp eq i32 %20, %21
  br i1 %cmp24, label %if.then26, label %if.else27

if.then26:                                        ; preds = %if.else
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else27:                                        ; preds = %if.else
  %22 = load i32, ptr %yyx, align 4
  %23 = load ptr, ptr %yyarg.addr, align 8
  %24 = load i32, ptr %yycount, align 4
  %inc28 = add nsw i32 %24, 1
  store i32 %inc28, ptr %yycount, align 4
  %idxprom29 = sext i32 %24 to i64
  %arrayidx30 = getelementptr inbounds i32, ptr %23, i64 %idxprom29
  store i32 %22, ptr %arrayidx30, align 4
  br label %if.end

if.end:                                           ; preds = %if.else27
  br label %if.end31

if.end31:                                         ; preds = %if.end, %if.then23
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end32
  %25 = load i32, ptr %yyx, align 4
  %inc33 = add nsw i32 %25, 1
  store i32 %inc33, ptr %yyx, align 4
  br label %for.cond, !llvm.loop !41

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then26
  call void @llvm.lifetime.end.p0(i64 4, ptr %yyx) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %yyxend) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %yychecklim) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %yyxbegin) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup48 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end37

if.end37:                                         ; preds = %cleanup.cont, %entry
  %26 = load ptr, ptr %yyarg.addr, align 8
  %tobool38 = icmp ne ptr %26, null
  br i1 %tobool38, label %land.lhs.true39, label %if.end47

land.lhs.true39:                                  ; preds = %if.end37
  %27 = load i32, ptr %yycount, align 4
  %cmp40 = icmp eq i32 %27, 0
  br i1 %cmp40, label %land.lhs.true42, label %if.end47

land.lhs.true42:                                  ; preds = %land.lhs.true39
  %28 = load i32, ptr %yyargn.addr, align 4
  %cmp43 = icmp slt i32 0, %28
  br i1 %cmp43, label %if.then45, label %if.end47

if.then45:                                        ; preds = %land.lhs.true42
  %29 = load ptr, ptr %yyarg.addr, align 8
  %arrayidx46 = getelementptr inbounds i32, ptr %29, i64 0
  store i32 -2, ptr %arrayidx46, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %land.lhs.true42, %land.lhs.true39, %if.end37
  %30 = load i32, ptr %yycount, align 4
  store i32 %30, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup48

cleanup48:                                        ; preds = %if.end47, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %yyn) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %yycount) #13
  %31 = load i32, ptr %retval, align 4
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define internal ptr @yystpcpy(ptr noundef %yydest, ptr noundef %yysrc) #0 {
entry:
  %yydest.addr = alloca ptr, align 8
  %yysrc.addr = alloca ptr, align 8
  %yyd = alloca ptr, align 8
  %yys = alloca ptr, align 8
  store ptr %yydest, ptr %yydest.addr, align 8
  store ptr %yysrc, ptr %yysrc.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %yyd) #13
  %0 = load ptr, ptr %yydest.addr, align 8
  store ptr %0, ptr %yyd, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %yys) #13
  %1 = load ptr, ptr %yysrc.addr, align 8
  store ptr %1, ptr %yys, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load ptr, ptr %yys, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %yys, align 8
  %3 = load i8, ptr %2, align 1
  %4 = load ptr, ptr %yyd, align 8
  %incdec.ptr1 = getelementptr inbounds i8, ptr %4, i32 1
  store ptr %incdec.ptr1, ptr %yyd, align 8
  store i8 %3, ptr %4, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond, !llvm.loop !42

while.end:                                        ; preds = %while.cond
  %5 = load ptr, ptr %yyd, align 8
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 -1
  call void @llvm.lifetime.end.p0(i64 8, ptr %yys) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %yyd) #13
  ret ptr %add.ptr
}

declare void @vderror(ptr noundef, ptr noundef) #2

declare i32 @getc(ptr noundef) #2

; Function Attrs: nounwind
declare i32 @ferror(ptr noundef) #5

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #8

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nounwind
declare void @clearerr(ptr noundef) #5

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) #5

; Function Attrs: nounwind
declare i32 @fileno(ptr noundef) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #6

declare ptr @chkstrdup(ptr noundef) #2

declare ptr @esc_strchr(ptr noundef, i32 noundef, i32 noundef) #2

declare ptr @lookupingroup(i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i64 @strtoull(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strchr(ptr noundef, i32 noundef) #7

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef, ptr noundef) #7

declare i32 @ncsize(i32 noundef) #2

declare ptr @listtop(ptr noundef) #2

declare ptr @nullconst() #2

declare ptr @bbExtract(ptr noundef) #2

declare ptr @nctypename(i32 noundef) #2

declare ptr @prefixdup(ptr noundef) #2

declare void @convert1(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @truefalse(ptr noundef %con, i32 noundef %tag) #0 {
entry:
  %retval = alloca i32, align 4
  %con.addr = alloca ptr, align 8
  %tag.addr = alloca i32, align 4
  %sdata = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %con, ptr %con.addr, align 8
  store i32 %tag, ptr %tag.addr, align 4
  %0 = load ptr, ptr %con.addr, align 8
  %nctype = getelementptr inbounds %struct.NCConstant, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %nctype, align 8
  %cmp = icmp eq i32 %1, 12
  br i1 %cmp, label %if.then, label %if.else12

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %sdata) #13
  %2 = load ptr, ptr %con.addr, align 8
  %value = getelementptr inbounds %struct.NCConstant, ptr %2, i32 0, i32 3
  %stringv = getelementptr inbounds %struct.Stringv, ptr %value, i32 0, i32 1
  %3 = load ptr, ptr %stringv, align 8
  store ptr %3, ptr %sdata, align 8
  %4 = load ptr, ptr %sdata, align 8
  %call = call i32 @strncmp(ptr noundef %4, ptr noundef @.str.281, i64 noundef 256) #16
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %5 = load ptr, ptr %sdata, align 8
  %call2 = call i32 @strncmp(ptr noundef %5, ptr noundef @.str.282, i64 noundef 256) #16
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %lor.lhs.false, %if.then
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  %6 = load ptr, ptr %sdata, align 8
  %call5 = call i32 @strncmp(ptr noundef %6, ptr noundef @.str.283, i64 noundef 256) #16
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then10, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %if.else
  %7 = load ptr, ptr %sdata, align 8
  %call8 = call i32 @strncmp(ptr noundef %7, ptr noundef @.str.284, i64 noundef 256) #16
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %lor.lhs.false7, %if.else
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else11:                                        ; preds = %lor.lhs.false7
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else11, %if.then10, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %sdata) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 1, label %return
    i32 2, label %fail
  ]

if.else12:                                        ; preds = %entry
  %8 = load ptr, ptr %con.addr, align 8
  %value13 = getelementptr inbounds %struct.NCConstant, ptr %8, i32 0, i32 3
  %9 = load i32, ptr %value13, align 8
  %cmp14 = icmp slt i32 %9, 0
  br i1 %cmp14, label %if.then18, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %if.else12
  %10 = load ptr, ptr %con.addr, align 8
  %value16 = getelementptr inbounds %struct.NCConstant, ptr %10, i32 0, i32 3
  %11 = load i32, ptr %value16, align 8
  %cmp17 = icmp sgt i32 %11, 1
  br i1 %cmp17, label %if.then18, label %if.end

if.then18:                                        ; preds = %lor.lhs.false15, %if.else12
  br label %fail

if.end:                                           ; preds = %lor.lhs.false15
  br label %if.end19

if.end19:                                         ; preds = %if.end
  %12 = load ptr, ptr %con.addr, align 8
  %value20 = getelementptr inbounds %struct.NCConstant, ptr %12, i32 0, i32 3
  %13 = load i32, ptr %value20, align 8
  store i32 %13, ptr %retval, align 4
  br label %return

fail:                                             ; preds = %if.then18, %cleanup
  %14 = load i32, ptr %tag.addr, align 4
  %call21 = call ptr @specialname(i32 noundef %14)
  call void (ptr, ...) @derror(ptr noundef @.str.261, ptr noundef %call21)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %fail, %if.end19, %cleanup
  %15 = load i32, ptr %retval, align 4
  ret i32 %15

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @panic(ptr noundef, ...) #2

; Function Attrs: nounwind uwtable
define internal i32 @containsfills(ptr noundef %list) #0 {
entry:
  %retval = alloca i32, align 4
  %list.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cons = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %list, ptr %list.addr, align 8
  %0 = load ptr, ptr %list.addr, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end18

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %cons) #13
  %1 = load ptr, ptr %list.addr, align 8
  %data = getelementptr inbounds %struct.Datalist, ptr %1, i32 0, i32 3
  %2 = load ptr, ptr %data, align 8
  store ptr %2, ptr %cons, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, ptr %i, align 4
  %conv = sext i32 %3 to i64
  %4 = load ptr, ptr %list.addr, align 8
  %length = getelementptr inbounds %struct.Datalist, ptr %4, i32 0, i32 1
  %5 = load i64, ptr %length, align 8
  %cmp1 = icmp ult i64 %conv, %5
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %cons, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8
  %nctype = getelementptr inbounds %struct.NCConstant, ptr %8, i32 0, i32 0
  %9 = load i32, ptr %nctype, align 8
  %cmp3 = icmp eq i32 %9, 16
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %for.body
  %10 = load ptr, ptr %cons, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds ptr, ptr %10, i64 %idxprom6
  %12 = load ptr, ptr %arrayidx7, align 8
  %value = getelementptr inbounds %struct.NCConstant, ptr %12, i32 0, i32 3
  %13 = load ptr, ptr %value, align 8
  %call = call i32 @containsfills(ptr noundef %13)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then5
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then5
  br label %if.end16

if.else:                                          ; preds = %for.body
  %14 = load ptr, ptr %cons, align 8
  %15 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %15 to i64
  %arrayidx10 = getelementptr inbounds ptr, ptr %14, i64 %idxprom9
  %16 = load ptr, ptr %arrayidx10, align 8
  %nctype11 = getelementptr inbounds %struct.NCConstant, ptr %16, i32 0, i32 0
  %17 = load i32, ptr %nctype11, align 8
  %cmp12 = icmp eq i32 %17, 31
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.else
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end15:                                         ; preds = %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end16
  %18 = load i32, ptr %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !43

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then14, %if.then8
  call void @llvm.lifetime.end.p0(i64 8, ptr %cons) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end18

if.end18:                                         ; preds = %cleanup.cont, %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end18, %cleanup
  %19 = load i32, ptr %retval, align 4
  ret i32 %19

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare ptr @clonedatalist(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @parsefilterflag(ptr noundef %sdata, ptr noundef %special) #0 {
entry:
  %retval = alloca i32, align 4
  %sdata.addr = alloca ptr, align 8
  %special.addr = alloca ptr, align 8
  %stat = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sdata, ptr %sdata.addr, align 8
  store ptr %special, ptr %special.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %stat) #13
  store i32 0, ptr %stat, align 4
  %0 = load ptr, ptr %sdata.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %sdata.addr, align 8
  %call = call i64 @strlen(ptr noundef %1) #16
  %cmp1 = icmp eq i64 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -36, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %sdata.addr, align 8
  %3 = load ptr, ptr %special.addr, align 8
  %nfilters = getelementptr inbounds %struct.Specialdata, ptr %3, i32 0, i32 13
  %4 = load ptr, ptr %special.addr, align 8
  %_Filters = getelementptr inbounds %struct.Specialdata, ptr %4, i32 0, i32 12
  %call2 = call i32 @ncaux_h5filterspec_parselist(ptr noundef %2, ptr noundef null, ptr noundef %nfilters, ptr noundef %_Filters)
  store i32 %call2, ptr %stat, align 4
  %5 = load i32, ptr %stat, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %sdata.addr, align 8
  call void (ptr, ...) @derror(ptr noundef @.str.285, ptr noundef %6)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %7 = load i32, ptr %stat, align 4
  store i32 %7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %stat) #13
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @parsecodecsflag(ptr noundef %sdata, ptr noundef %special) #0 {
entry:
  %retval = alloca i32, align 4
  %sdata.addr = alloca ptr, align 8
  %special.addr = alloca ptr, align 8
  %stat = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sdata, ptr %sdata.addr, align 8
  store ptr %special, ptr %special.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %stat) #13
  store i32 0, ptr %stat, align 4
  %0 = load ptr, ptr %sdata.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %sdata.addr, align 8
  %call = call i64 @strlen(ptr noundef %1) #16
  %cmp1 = icmp eq i64 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -36, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %sdata.addr, align 8
  %call2 = call noalias ptr @strdup(ptr noundef %2) #13
  %3 = load ptr, ptr %special.addr, align 8
  %_Codecs = getelementptr inbounds %struct.Specialdata, ptr %3, i32 0, i32 14
  store ptr %call2, ptr %_Codecs, align 8
  %cmp3 = icmp eq ptr %call2, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 -61, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %4 = load i32, ptr %stat, align 4
  store i32 %4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %stat) #13
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

declare void @reclaimdatalist(ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #7

declare i32 @ncaux_h5filterspec_parselist(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @cdChar2Comp(i32 noundef, ptr noundef, ptr noundef) #2

declare void @Cdh2e(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { nounwind willreturn memory(none) }
attributes #18 = { noreturn }
attributes #19 = { nounwind allocsize(1) }

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
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
!29 = distinct !{!29, !5}
!30 = distinct !{!30, !5}
!31 = distinct !{!31, !5}
!32 = distinct !{!32, !5}
!33 = distinct !{!33, !5}
!34 = distinct !{!34, !5}
!35 = distinct !{!35, !5}
!36 = distinct !{!36, !5}
!37 = distinct !{!37, !5}
!38 = distinct !{!38, !5}
!39 = distinct !{!39, !5}
!40 = distinct !{!40, !5}
!41 = distinct !{!41, !5}
!42 = distinct !{!42, !5}
!43 = distinct !{!43, !5}

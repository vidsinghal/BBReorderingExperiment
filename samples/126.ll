; ModuleID = 'samples/126.bc'
source_filename = "encoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._xmlCharEncodingAlias = type { ptr, ptr }
%struct._xmlCharEncodingHandler = type { ptr, ptr, ptr, ptr, ptr }
%struct._xmlBuffer = type { ptr, i32, i32, i32, ptr }
%struct._xmlParserInputBuffer = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64 }
%struct._xmlOutputBuffer = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct._xmlParserCtxt = type { ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, i32, i32, ptr, i32, %struct._xmlParserNodeInfoSeq, i32, i32, i32, i32, i32, i32, %struct._xmlValidCtxt, i32, i32, ptr, ptr, i32, i32, ptr, i64, i64, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, %struct._xmlError, i32, i64, i64, ptr, i32, i32, ptr, i32, i64 }
%struct._xmlParserNodeInfoSeq = type { i64, i64, ptr }
%struct._xmlValidCtxt = type { ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct._xmlError = type { i32, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, i32, i32, ptr, ptr }
%struct._xmlParserInput = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32 }

@xmlCharEncodingAliases = internal global ptr null, align 8, !dbg !0
@xmlCharEncodingAliasesNb = internal global i32 0, align 4, !dbg !1115
@xmlFree = external global ptr, align 8
@xmlCharEncodingAliasesMax = internal global i32 0, align 4, !dbg !1117
@xmlMalloc = external global ptr, align 8
@xmlRealloc = external global ptr, align 8
@xmlMemStrdup = external global ptr, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !948
@.str.1 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1, !dbg !953
@.str.2 = private unnamed_addr constant [5 x i8] c"UTF8\00", align 1, !dbg !958
@.str.3 = private unnamed_addr constant [7 x i8] c"UTF-16\00", align 1, !dbg !963
@.str.4 = private unnamed_addr constant [6 x i8] c"UTF16\00", align 1, !dbg !968
@.str.5 = private unnamed_addr constant [16 x i8] c"ISO-10646-UCS-2\00", align 1, !dbg !970
@.str.6 = private unnamed_addr constant [6 x i8] c"UCS-2\00", align 1, !dbg !975
@.str.7 = private unnamed_addr constant [5 x i8] c"UCS2\00", align 1, !dbg !977
@.str.8 = private unnamed_addr constant [16 x i8] c"ISO-10646-UCS-4\00", align 1, !dbg !979
@.str.9 = private unnamed_addr constant [6 x i8] c"UCS-4\00", align 1, !dbg !981
@.str.10 = private unnamed_addr constant [5 x i8] c"UCS4\00", align 1, !dbg !983
@.str.11 = private unnamed_addr constant [11 x i8] c"ISO-8859-1\00", align 1, !dbg !985
@.str.12 = private unnamed_addr constant [12 x i8] c"ISO-LATIN-1\00", align 1, !dbg !990
@.str.13 = private unnamed_addr constant [12 x i8] c"ISO LATIN 1\00", align 1, !dbg !995
@.str.14 = private unnamed_addr constant [11 x i8] c"ISO-8859-2\00", align 1, !dbg !997
@.str.15 = private unnamed_addr constant [12 x i8] c"ISO-LATIN-2\00", align 1, !dbg !999
@.str.16 = private unnamed_addr constant [12 x i8] c"ISO LATIN 2\00", align 1, !dbg !1001
@.str.17 = private unnamed_addr constant [11 x i8] c"ISO-8859-3\00", align 1, !dbg !1003
@.str.18 = private unnamed_addr constant [11 x i8] c"ISO-8859-4\00", align 1, !dbg !1005
@.str.19 = private unnamed_addr constant [11 x i8] c"ISO-8859-5\00", align 1, !dbg !1007
@.str.20 = private unnamed_addr constant [11 x i8] c"ISO-8859-6\00", align 1, !dbg !1009
@.str.21 = private unnamed_addr constant [11 x i8] c"ISO-8859-7\00", align 1, !dbg !1011
@.str.22 = private unnamed_addr constant [11 x i8] c"ISO-8859-8\00", align 1, !dbg !1013
@.str.23 = private unnamed_addr constant [11 x i8] c"ISO-8859-9\00", align 1, !dbg !1015
@.str.24 = private unnamed_addr constant [12 x i8] c"ISO-2022-JP\00", align 1, !dbg !1017
@.str.25 = private unnamed_addr constant [10 x i8] c"SHIFT_JIS\00", align 1, !dbg !1019
@.str.26 = private unnamed_addr constant [7 x i8] c"EUC-JP\00", align 1, !dbg !1024
@.str.27 = private unnamed_addr constant [7 x i8] c"EBCDIC\00", align 1, !dbg !1026
@.str.28 = private unnamed_addr constant [10 x i8] c"Shift-JIS\00", align 1, !dbg !1028
@.str.29 = private unnamed_addr constant [39 x i8] c"xmlNewCharEncodingHandler : no name !\0A\00", align 1, !dbg !1030
@.str.30 = private unnamed_addr constant [45 x i8] c"xmlNewCharEncodingHandler : out of memory !\0A\00", align 1, !dbg !1035
@handlers = internal global ptr null, align 8, !dbg !1119
@xmlLittleEndian = internal global i32 1, align 4, !dbg !1121
@.str.31 = private unnamed_addr constant [37 x i8] c"Odd problem at endianness detection\0A\00", align 1, !dbg !1040
@.str.32 = private unnamed_addr constant [47 x i8] c"xmlInitCharEncodingHandlers : out of memory !\0A\00", align 1, !dbg !1045
@.str.33 = private unnamed_addr constant [9 x i8] c"UTF-16LE\00", align 1, !dbg !1050
@xmlUTF16LEHandler = internal global ptr null, align 8, !dbg !1123
@.str.34 = private unnamed_addr constant [9 x i8] c"UTF-16BE\00", align 1, !dbg !1055
@xmlUTF16BEHandler = internal global ptr null, align 8, !dbg !1125
@.str.35 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1, !dbg !1057
@.str.36 = private unnamed_addr constant [9 x i8] c"US-ASCII\00", align 1, !dbg !1059
@.str.37 = private unnamed_addr constant [5 x i8] c"HTML\00", align 1, !dbg !1061
@nbCharEncodingHandler = internal global i32 0, align 4, !dbg !1127
@xmlDefaultCharEncodingHandler = internal global ptr null, align 8, !dbg !1129
@.str.38 = private unnamed_addr constant [48 x i8] c"xmlRegisterCharEncodingHandler: NULL handler !\0A\00", align 1, !dbg !1063
@.str.39 = private unnamed_addr constant [69 x i8] c"xmlRegisterCharEncodingHandler: Too many handler registered, see %s\0A\00", align 1, !dbg !1068
@.str.40 = private unnamed_addr constant [22 x i8] c"MAX_ENCODING_HANDLERS\00", align 1, !dbg !1073
@.str.41 = private unnamed_addr constant [7 x i8] c"ebcdic\00", align 1, !dbg !1078
@.str.42 = private unnamed_addr constant [10 x i8] c"EBCDIC-US\00", align 1, !dbg !1080
@.str.43 = private unnamed_addr constant [8 x i8] c"IBM-037\00", align 1, !dbg !1082
@.str.44 = private unnamed_addr constant [10 x i8] c"SHIFT-JIS\00", align 1, !dbg !1087
@.str.45 = private unnamed_addr constant [10 x i8] c"Shift_JIS\00", align 1, !dbg !1089
@.str.46 = private unnamed_addr constant [40 x i8] c"iconv : problems with filters for '%s'\0A\00", align 1, !dbg !1091
@.str.47 = private unnamed_addr constant [28 x i8] c"0x%02X 0x%02X 0x%02X 0x%02X\00", align 1, !dbg !1096
@.str.48 = private unnamed_addr constant [54 x i8] c"input conversion failed due to input error, bytes %s\0A\00", align 1, !dbg !1101
@.str.49 = private unnamed_addr constant [41 x i8] c"xmlCharEncOutFunc: no output function !\0A\00", align 1, !dbg !1106
@.str.50 = private unnamed_addr constant [6 x i8] c"&#%d;\00", align 1, !dbg !1111
@.str.51 = private unnamed_addr constant [54 x i8] c"output conversion failed due to conv error, bytes %s\0A\00", align 1, !dbg !1113

@xmlAddEncodingAlias = alias i32 (ptr, ptr), ptr @xmlAddEncodingAlias__internal_alias
@xmlByteConsumed = alias i64 (ptr), ptr @xmlByteConsumed__internal_alias
@xmlCharEncCloseFunc = alias i32 (ptr), ptr @xmlCharEncCloseFunc__internal_alias
@xmlCharEncFirstLine = alias i32 (ptr, ptr, ptr), ptr @xmlCharEncFirstLine__internal_alias
@xmlCharEncInFunc = alias i32 (ptr, ptr, ptr), ptr @xmlCharEncInFunc__internal_alias
@xmlCharEncOutFunc = alias i32 (ptr, ptr, ptr), ptr @xmlCharEncOutFunc__internal_alias
@xmlCleanupCharEncodingHandlers = alias void (), ptr @xmlCleanupCharEncodingHandlers__internal_alias
@xmlCleanupEncodingAliases = alias void (), ptr @xmlCleanupEncodingAliases__internal_alias
@xmlDelEncodingAlias = alias i32 (ptr), ptr @xmlDelEncodingAlias__internal_alias
@xmlDetectCharEncoding = alias i32 (ptr, i32), ptr @xmlDetectCharEncoding__internal_alias
@xmlFindCharEncodingHandler = alias ptr (ptr), ptr @xmlFindCharEncodingHandler__internal_alias
@xmlGetCharEncodingHandler = alias ptr (i32), ptr @xmlGetCharEncodingHandler__internal_alias
@xmlGetCharEncodingName = alias ptr (i32), ptr @xmlGetCharEncodingName__internal_alias
@xmlGetEncodingAlias = alias ptr (ptr), ptr @xmlGetEncodingAlias__internal_alias
@xmlInitCharEncodingHandlers = alias void (), ptr @xmlInitCharEncodingHandlers__internal_alias
@xmlNewCharEncodingHandler = alias ptr (ptr, ptr, ptr), ptr @xmlNewCharEncodingHandler__internal_alias
@xmlParseCharEncoding = alias i32 (ptr), ptr @xmlParseCharEncoding__internal_alias
@xmlRegisterCharEncodingHandler = alias void (ptr), ptr @xmlRegisterCharEncodingHandler__internal_alias

; Function Attrs: nounwind uwtable
define i32 @isolat1ToUTF8(ptr noundef %out, ptr noundef %outlen, ptr noundef %in, ptr noundef %inlen) #0 !dbg !1137 {
entry:
  %retval = alloca i32, align 4
  %out.addr = alloca ptr, align 8
  %outlen.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %inlen.addr = alloca ptr, align 8
  %outstart = alloca ptr, align 8
  %base = alloca ptr, align 8
  %outend = alloca ptr, align 8
  %inend = alloca ptr, align 8
  %instop = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %out, ptr %out.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !1139, metadata !DIExpression()), !dbg !1152
  store ptr %outlen, ptr %outlen.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %outlen.addr, metadata !1140, metadata !DIExpression()), !dbg !1153
  store ptr %in, ptr %in.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !1141, metadata !DIExpression()), !dbg !1154
  store ptr %inlen, ptr %inlen.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %inlen.addr, metadata !1142, metadata !DIExpression()), !dbg !1155
  call void @llvm.lifetime.start.p0(i64 8, ptr %outstart) #9, !dbg !1156
  tail call void @llvm.dbg.declare(metadata ptr %outstart, metadata !1143, metadata !DIExpression()), !dbg !1157
  %0 = load ptr, ptr %out.addr, align 8, !dbg !1158, !tbaa !1148
  store ptr %0, ptr %outstart, align 8, !dbg !1157, !tbaa !1148
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #9, !dbg !1159
  tail call void @llvm.dbg.declare(metadata ptr %base, metadata !1144, metadata !DIExpression()), !dbg !1160
  %1 = load ptr, ptr %in.addr, align 8, !dbg !1161, !tbaa !1148
  store ptr %1, ptr %base, align 8, !dbg !1160, !tbaa !1148
  call void @llvm.lifetime.start.p0(i64 8, ptr %outend) #9, !dbg !1162
  tail call void @llvm.dbg.declare(metadata ptr %outend, metadata !1145, metadata !DIExpression()), !dbg !1163
  call void @llvm.lifetime.start.p0(i64 8, ptr %inend) #9, !dbg !1164
  tail call void @llvm.dbg.declare(metadata ptr %inend, metadata !1146, metadata !DIExpression()), !dbg !1165
  call void @llvm.lifetime.start.p0(i64 8, ptr %instop) #9, !dbg !1166
  tail call void @llvm.dbg.declare(metadata ptr %instop, metadata !1147, metadata !DIExpression()), !dbg !1167
  %2 = load ptr, ptr %out.addr, align 8, !dbg !1168, !tbaa !1148
  %cmp = icmp eq ptr %2, null, !dbg !1170
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1171

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %in.addr, align 8, !dbg !1172, !tbaa !1148
  %cmp1 = icmp eq ptr %3, null, !dbg !1173
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !1174

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %4 = load ptr, ptr %outlen.addr, align 8, !dbg !1175, !tbaa !1148
  %cmp3 = icmp eq ptr %4, null, !dbg !1176
  br i1 %cmp3, label %if.then, label %lor.lhs.false4, !dbg !1177

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %5 = load ptr, ptr %inlen.addr, align 8, !dbg !1178, !tbaa !1148
  %cmp5 = icmp eq ptr %5, null, !dbg !1179
  br i1 %cmp5, label %if.then, label %if.end, !dbg !1180

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4, !dbg !1181
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1181

if.end:                                           ; preds = %lor.lhs.false4
  %6 = load ptr, ptr %out.addr, align 8, !dbg !1182, !tbaa !1148
  %7 = load ptr, ptr %outlen.addr, align 8, !dbg !1183, !tbaa !1148
  %8 = load i32, ptr %7, align 4, !dbg !1184, !tbaa !1185
  %idx.ext = sext i32 %8 to i64, !dbg !1187
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 %idx.ext, !dbg !1187
  store ptr %add.ptr, ptr %outend, align 8, !dbg !1188, !tbaa !1148
  %9 = load ptr, ptr %in.addr, align 8, !dbg !1189, !tbaa !1148
  %10 = load ptr, ptr %inlen.addr, align 8, !dbg !1190, !tbaa !1148
  %11 = load i32, ptr %10, align 4, !dbg !1191, !tbaa !1185
  %idx.ext6 = sext i32 %11 to i64, !dbg !1192
  %add.ptr7 = getelementptr inbounds i8, ptr %9, i64 %idx.ext6, !dbg !1192
  store ptr %add.ptr7, ptr %inend, align 8, !dbg !1193, !tbaa !1148
  %12 = load ptr, ptr %inend, align 8, !dbg !1194, !tbaa !1148
  store ptr %12, ptr %instop, align 8, !dbg !1195, !tbaa !1148
  br label %while.cond, !dbg !1196

while.cond:                                       ; preds = %while.end, %if.end
  %13 = load ptr, ptr %in.addr, align 8, !dbg !1197, !tbaa !1148
  %14 = load ptr, ptr %inend, align 8, !dbg !1198, !tbaa !1148
  %cmp8 = icmp ult ptr %13, %14, !dbg !1199
  br i1 %cmp8, label %land.rhs, label %land.end, !dbg !1200

land.rhs:                                         ; preds = %while.cond
  %15 = load ptr, ptr %out.addr, align 8, !dbg !1201, !tbaa !1148
  %16 = load ptr, ptr %outend, align 8, !dbg !1202, !tbaa !1148
  %add.ptr9 = getelementptr inbounds i8, ptr %16, i64 -1, !dbg !1203
  %cmp10 = icmp ult ptr %15, %add.ptr9, !dbg !1204
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %17 = phi i1 [ false, %while.cond ], [ %cmp10, %land.rhs ], !dbg !1205
  br i1 %17, label %while.body, label %while.end45, !dbg !1196

while.body:                                       ; preds = %land.end
  %18 = load ptr, ptr %in.addr, align 8, !dbg !1206, !tbaa !1148
  %19 = load i8, ptr %18, align 1, !dbg !1209, !tbaa !1210
  %conv = zext i8 %19 to i32, !dbg !1209
  %cmp11 = icmp sge i32 %conv, 128, !dbg !1211
  br i1 %cmp11, label %if.then13, label %if.end22, !dbg !1212

if.then13:                                        ; preds = %while.body
  %20 = load ptr, ptr %in.addr, align 8, !dbg !1213, !tbaa !1148
  %21 = load i8, ptr %20, align 1, !dbg !1215, !tbaa !1210
  %conv14 = zext i8 %21 to i32, !dbg !1216
  %shr = ashr i32 %conv14, 6, !dbg !1217
  %and = and i32 %shr, 31, !dbg !1218
  %or = or i32 %and, 192, !dbg !1219
  %conv15 = trunc i32 %or to i8, !dbg !1220
  %22 = load ptr, ptr %out.addr, align 8, !dbg !1221, !tbaa !1148
  %incdec.ptr = getelementptr inbounds i8, ptr %22, i32 1, !dbg !1221
  store ptr %incdec.ptr, ptr %out.addr, align 8, !dbg !1221, !tbaa !1148
  store i8 %conv15, ptr %22, align 1, !dbg !1222, !tbaa !1210
  %23 = load ptr, ptr %in.addr, align 8, !dbg !1223, !tbaa !1148
  %24 = load i8, ptr %23, align 1, !dbg !1224, !tbaa !1210
  %conv16 = zext i8 %24 to i32, !dbg !1225
  %and17 = and i32 %conv16, 63, !dbg !1226
  %or18 = or i32 %and17, 128, !dbg !1227
  %conv19 = trunc i32 %or18 to i8, !dbg !1228
  %25 = load ptr, ptr %out.addr, align 8, !dbg !1229, !tbaa !1148
  %incdec.ptr20 = getelementptr inbounds i8, ptr %25, i32 1, !dbg !1229
  store ptr %incdec.ptr20, ptr %out.addr, align 8, !dbg !1229, !tbaa !1148
  store i8 %conv19, ptr %25, align 1, !dbg !1230, !tbaa !1210
  %26 = load ptr, ptr %in.addr, align 8, !dbg !1231, !tbaa !1148
  %incdec.ptr21 = getelementptr inbounds i8, ptr %26, i32 1, !dbg !1231
  store ptr %incdec.ptr21, ptr %in.addr, align 8, !dbg !1231, !tbaa !1148
  br label %if.end22, !dbg !1232

if.end22:                                         ; preds = %if.then13, %while.body
  %27 = load ptr, ptr %instop, align 8, !dbg !1233, !tbaa !1148
  %28 = load ptr, ptr %in.addr, align 8, !dbg !1235, !tbaa !1148
  %sub.ptr.lhs.cast = ptrtoint ptr %27 to i64, !dbg !1236
  %sub.ptr.rhs.cast = ptrtoint ptr %28 to i64, !dbg !1236
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1236
  %29 = load ptr, ptr %outend, align 8, !dbg !1237, !tbaa !1148
  %30 = load ptr, ptr %out.addr, align 8, !dbg !1238, !tbaa !1148
  %sub.ptr.lhs.cast23 = ptrtoint ptr %29 to i64, !dbg !1239
  %sub.ptr.rhs.cast24 = ptrtoint ptr %30 to i64, !dbg !1239
  %sub.ptr.sub25 = sub i64 %sub.ptr.lhs.cast23, %sub.ptr.rhs.cast24, !dbg !1239
  %cmp26 = icmp sgt i64 %sub.ptr.sub, %sub.ptr.sub25, !dbg !1240
  br i1 %cmp26, label %if.then28, label %if.end33, !dbg !1241

if.then28:                                        ; preds = %if.end22
  %31 = load ptr, ptr %in.addr, align 8, !dbg !1242, !tbaa !1148
  %32 = load ptr, ptr %outend, align 8, !dbg !1243, !tbaa !1148
  %33 = load ptr, ptr %out.addr, align 8, !dbg !1244, !tbaa !1148
  %sub.ptr.lhs.cast29 = ptrtoint ptr %32 to i64, !dbg !1245
  %sub.ptr.rhs.cast30 = ptrtoint ptr %33 to i64, !dbg !1245
  %sub.ptr.sub31 = sub i64 %sub.ptr.lhs.cast29, %sub.ptr.rhs.cast30, !dbg !1245
  %add.ptr32 = getelementptr inbounds i8, ptr %31, i64 %sub.ptr.sub31, !dbg !1246
  store ptr %add.ptr32, ptr %instop, align 8, !dbg !1247, !tbaa !1148
  br label %if.end33, !dbg !1248

if.end33:                                         ; preds = %if.then28, %if.end22
  br label %while.cond34, !dbg !1249

while.cond34:                                     ; preds = %while.body42, %if.end33
  %34 = load ptr, ptr %in.addr, align 8, !dbg !1250, !tbaa !1148
  %35 = load ptr, ptr %instop, align 8, !dbg !1251, !tbaa !1148
  %cmp35 = icmp ult ptr %34, %35, !dbg !1252
  br i1 %cmp35, label %land.rhs37, label %land.end41, !dbg !1253

land.rhs37:                                       ; preds = %while.cond34
  %36 = load ptr, ptr %in.addr, align 8, !dbg !1254, !tbaa !1148
  %37 = load i8, ptr %36, align 1, !dbg !1255, !tbaa !1210
  %conv38 = zext i8 %37 to i32, !dbg !1255
  %cmp39 = icmp slt i32 %conv38, 128, !dbg !1256
  br label %land.end41

land.end41:                                       ; preds = %land.rhs37, %while.cond34
  %38 = phi i1 [ false, %while.cond34 ], [ %cmp39, %land.rhs37 ], !dbg !1257
  br i1 %38, label %while.body42, label %while.end, !dbg !1249

while.body42:                                     ; preds = %land.end41
  %39 = load ptr, ptr %in.addr, align 8, !dbg !1258, !tbaa !1148
  %incdec.ptr43 = getelementptr inbounds i8, ptr %39, i32 1, !dbg !1258
  store ptr %incdec.ptr43, ptr %in.addr, align 8, !dbg !1258, !tbaa !1148
  %40 = load i8, ptr %39, align 1, !dbg !1260, !tbaa !1210
  %41 = load ptr, ptr %out.addr, align 8, !dbg !1261, !tbaa !1148
  %incdec.ptr44 = getelementptr inbounds i8, ptr %41, i32 1, !dbg !1261
  store ptr %incdec.ptr44, ptr %out.addr, align 8, !dbg !1261, !tbaa !1148
  store i8 %40, ptr %41, align 1, !dbg !1262, !tbaa !1210
  br label %while.cond34, !dbg !1249, !llvm.loop !1263

while.end:                                        ; preds = %land.end41
  br label %while.cond, !dbg !1196, !llvm.loop !1266

while.end45:                                      ; preds = %land.end
  %42 = load ptr, ptr %in.addr, align 8, !dbg !1268, !tbaa !1148
  %43 = load ptr, ptr %inend, align 8, !dbg !1270, !tbaa !1148
  %cmp46 = icmp ult ptr %42, %43, !dbg !1271
  br i1 %cmp46, label %land.lhs.true, label %if.end57, !dbg !1272

land.lhs.true:                                    ; preds = %while.end45
  %44 = load ptr, ptr %out.addr, align 8, !dbg !1273, !tbaa !1148
  %45 = load ptr, ptr %outend, align 8, !dbg !1274, !tbaa !1148
  %cmp48 = icmp ult ptr %44, %45, !dbg !1275
  br i1 %cmp48, label %land.lhs.true50, label %if.end57, !dbg !1276

land.lhs.true50:                                  ; preds = %land.lhs.true
  %46 = load ptr, ptr %in.addr, align 8, !dbg !1277, !tbaa !1148
  %47 = load i8, ptr %46, align 1, !dbg !1278, !tbaa !1210
  %conv51 = zext i8 %47 to i32, !dbg !1278
  %cmp52 = icmp slt i32 %conv51, 128, !dbg !1279
  br i1 %cmp52, label %if.then54, label %if.end57, !dbg !1280

if.then54:                                        ; preds = %land.lhs.true50
  %48 = load ptr, ptr %in.addr, align 8, !dbg !1281, !tbaa !1148
  %incdec.ptr55 = getelementptr inbounds i8, ptr %48, i32 1, !dbg !1281
  store ptr %incdec.ptr55, ptr %in.addr, align 8, !dbg !1281, !tbaa !1148
  %49 = load i8, ptr %48, align 1, !dbg !1283, !tbaa !1210
  %50 = load ptr, ptr %out.addr, align 8, !dbg !1284, !tbaa !1148
  %incdec.ptr56 = getelementptr inbounds i8, ptr %50, i32 1, !dbg !1284
  store ptr %incdec.ptr56, ptr %out.addr, align 8, !dbg !1284, !tbaa !1148
  store i8 %49, ptr %50, align 1, !dbg !1285, !tbaa !1210
  br label %if.end57, !dbg !1286

if.end57:                                         ; preds = %if.then54, %land.lhs.true50, %land.lhs.true, %while.end45
  %51 = load ptr, ptr %out.addr, align 8, !dbg !1287, !tbaa !1148
  %52 = load ptr, ptr %outstart, align 8, !dbg !1288, !tbaa !1148
  %sub.ptr.lhs.cast58 = ptrtoint ptr %51 to i64, !dbg !1289
  %sub.ptr.rhs.cast59 = ptrtoint ptr %52 to i64, !dbg !1289
  %sub.ptr.sub60 = sub i64 %sub.ptr.lhs.cast58, %sub.ptr.rhs.cast59, !dbg !1289
  %conv61 = trunc i64 %sub.ptr.sub60 to i32, !dbg !1287
  %53 = load ptr, ptr %outlen.addr, align 8, !dbg !1290, !tbaa !1148
  store i32 %conv61, ptr %53, align 4, !dbg !1291, !tbaa !1185
  %54 = load ptr, ptr %in.addr, align 8, !dbg !1292, !tbaa !1148
  %55 = load ptr, ptr %base, align 8, !dbg !1293, !tbaa !1148
  %sub.ptr.lhs.cast62 = ptrtoint ptr %54 to i64, !dbg !1294
  %sub.ptr.rhs.cast63 = ptrtoint ptr %55 to i64, !dbg !1294
  %sub.ptr.sub64 = sub i64 %sub.ptr.lhs.cast62, %sub.ptr.rhs.cast63, !dbg !1294
  %conv65 = trunc i64 %sub.ptr.sub64 to i32, !dbg !1292
  %56 = load ptr, ptr %inlen.addr, align 8, !dbg !1295, !tbaa !1148
  store i32 %conv65, ptr %56, align 4, !dbg !1296, !tbaa !1185
  %57 = load ptr, ptr %outlen.addr, align 8, !dbg !1297, !tbaa !1148
  %58 = load i32, ptr %57, align 4, !dbg !1298, !tbaa !1185
  store i32 %58, ptr %retval, align 4, !dbg !1299
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1299

cleanup:                                          ; preds = %if.end57, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %instop) #9, !dbg !1300
  call void @llvm.lifetime.end.p0(i64 8, ptr %inend) #9, !dbg !1300
  call void @llvm.lifetime.end.p0(i64 8, ptr %outend) #9, !dbg !1300
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #9, !dbg !1300
  call void @llvm.lifetime.end.p0(i64 8, ptr %outstart) #9, !dbg !1300
  %59 = load i32, ptr %retval, align 4, !dbg !1300
  ret i32 %59, !dbg !1300
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @UTF8Toisolat1(ptr noundef %out, ptr noundef %outlen, ptr noundef %in, ptr noundef %inlen) #0 !dbg !1301 {
entry:
  %retval = alloca i32, align 4
  %out.addr = alloca ptr, align 8
  %outlen.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %inlen.addr = alloca ptr, align 8
  %processed = alloca ptr, align 8
  %outend = alloca ptr, align 8
  %outstart = alloca ptr, align 8
  %instart = alloca ptr, align 8
  %inend = alloca ptr, align 8
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %trailing = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %out, ptr %out.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !1303, metadata !DIExpression()), !dbg !1315
  store ptr %outlen, ptr %outlen.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %outlen.addr, metadata !1304, metadata !DIExpression()), !dbg !1316
  store ptr %in, ptr %in.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !1305, metadata !DIExpression()), !dbg !1317
  store ptr %inlen, ptr %inlen.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %inlen.addr, metadata !1306, metadata !DIExpression()), !dbg !1318
  call void @llvm.lifetime.start.p0(i64 8, ptr %processed) #9, !dbg !1319
  tail call void @llvm.dbg.declare(metadata ptr %processed, metadata !1307, metadata !DIExpression()), !dbg !1320
  %0 = load ptr, ptr %in.addr, align 8, !dbg !1321, !tbaa !1148
  store ptr %0, ptr %processed, align 8, !dbg !1320, !tbaa !1148
  call void @llvm.lifetime.start.p0(i64 8, ptr %outend) #9, !dbg !1322
  tail call void @llvm.dbg.declare(metadata ptr %outend, metadata !1308, metadata !DIExpression()), !dbg !1323
  call void @llvm.lifetime.start.p0(i64 8, ptr %outstart) #9, !dbg !1324
  tail call void @llvm.dbg.declare(metadata ptr %outstart, metadata !1309, metadata !DIExpression()), !dbg !1325
  %1 = load ptr, ptr %out.addr, align 8, !dbg !1326, !tbaa !1148
  store ptr %1, ptr %outstart, align 8, !dbg !1325, !tbaa !1148
  call void @llvm.lifetime.start.p0(i64 8, ptr %instart) #9, !dbg !1327
  tail call void @llvm.dbg.declare(metadata ptr %instart, metadata !1310, metadata !DIExpression()), !dbg !1328
  %2 = load ptr, ptr %in.addr, align 8, !dbg !1329, !tbaa !1148
  store ptr %2, ptr %instart, align 8, !dbg !1328, !tbaa !1148
  call void @llvm.lifetime.start.p0(i64 8, ptr %inend) #9, !dbg !1330
  tail call void @llvm.dbg.declare(metadata ptr %inend, metadata !1311, metadata !DIExpression()), !dbg !1331
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #9, !dbg !1332
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !1312, metadata !DIExpression()), !dbg !1333
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #9, !dbg !1332
  tail call void @llvm.dbg.declare(metadata ptr %d, metadata !1313, metadata !DIExpression()), !dbg !1334
  call void @llvm.lifetime.start.p0(i64 4, ptr %trailing) #9, !dbg !1335
  tail call void @llvm.dbg.declare(metadata ptr %trailing, metadata !1314, metadata !DIExpression()), !dbg !1336
  %3 = load ptr, ptr %out.addr, align 8, !dbg !1337, !tbaa !1148
  %cmp = icmp eq ptr %3, null, !dbg !1339
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1340

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %outlen.addr, align 8, !dbg !1341, !tbaa !1148
  %cmp1 = icmp eq ptr %4, null, !dbg !1342
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !1343

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %5 = load ptr, ptr %inlen.addr, align 8, !dbg !1344, !tbaa !1148
  %cmp3 = icmp eq ptr %5, null, !dbg !1345
  br i1 %cmp3, label %if.then, label %if.end, !dbg !1346

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4, !dbg !1347
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1347

if.end:                                           ; preds = %lor.lhs.false2
  %6 = load ptr, ptr %in.addr, align 8, !dbg !1348, !tbaa !1148
  %cmp4 = icmp eq ptr %6, null, !dbg !1350
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1351

if.then5:                                         ; preds = %if.end
  %7 = load ptr, ptr %outlen.addr, align 8, !dbg !1352, !tbaa !1148
  store i32 0, ptr %7, align 4, !dbg !1354, !tbaa !1185
  %8 = load ptr, ptr %inlen.addr, align 8, !dbg !1355, !tbaa !1148
  store i32 0, ptr %8, align 4, !dbg !1356, !tbaa !1185
  store i32 0, ptr %retval, align 4, !dbg !1357
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1357

if.end6:                                          ; preds = %if.end
  %9 = load ptr, ptr %in.addr, align 8, !dbg !1358, !tbaa !1148
  %10 = load ptr, ptr %inlen.addr, align 8, !dbg !1359, !tbaa !1148
  %11 = load i32, ptr %10, align 4, !dbg !1360, !tbaa !1185
  %idx.ext = sext i32 %11 to i64, !dbg !1361
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %idx.ext, !dbg !1361
  store ptr %add.ptr, ptr %inend, align 8, !dbg !1362, !tbaa !1148
  %12 = load ptr, ptr %out.addr, align 8, !dbg !1363, !tbaa !1148
  %13 = load ptr, ptr %outlen.addr, align 8, !dbg !1364, !tbaa !1148
  %14 = load i32, ptr %13, align 4, !dbg !1365, !tbaa !1185
  %idx.ext7 = sext i32 %14 to i64, !dbg !1366
  %add.ptr8 = getelementptr inbounds i8, ptr %12, i64 %idx.ext7, !dbg !1366
  store ptr %add.ptr8, ptr %outend, align 8, !dbg !1367, !tbaa !1148
  br label %while.cond, !dbg !1368

while.cond:                                       ; preds = %if.end95, %if.end6
  %15 = load ptr, ptr %in.addr, align 8, !dbg !1369, !tbaa !1148
  %16 = load ptr, ptr %inend, align 8, !dbg !1370, !tbaa !1148
  %cmp9 = icmp ult ptr %15, %16, !dbg !1371
  br i1 %cmp9, label %while.body, label %while.end, !dbg !1368

while.body:                                       ; preds = %while.cond
  %17 = load ptr, ptr %in.addr, align 8, !dbg !1372, !tbaa !1148
  %incdec.ptr = getelementptr inbounds i8, ptr %17, i32 1, !dbg !1372
  store ptr %incdec.ptr, ptr %in.addr, align 8, !dbg !1372, !tbaa !1148
  %18 = load i8, ptr %17, align 1, !dbg !1374, !tbaa !1210
  %conv = zext i8 %18 to i32, !dbg !1374
  store i32 %conv, ptr %d, align 4, !dbg !1375, !tbaa !1185
  %19 = load i32, ptr %d, align 4, !dbg !1376, !tbaa !1185
  %cmp10 = icmp ult i32 %19, 128, !dbg !1378
  br i1 %cmp10, label %if.then12, label %if.else, !dbg !1379

if.then12:                                        ; preds = %while.body
  %20 = load i32, ptr %d, align 4, !dbg !1380, !tbaa !1185
  store i32 %20, ptr %c, align 4, !dbg !1382, !tbaa !1185
  store i32 0, ptr %trailing, align 4, !dbg !1383, !tbaa !1185
  br label %if.end48, !dbg !1384

if.else:                                          ; preds = %while.body
  %21 = load i32, ptr %d, align 4, !dbg !1385, !tbaa !1185
  %cmp13 = icmp ult i32 %21, 192, !dbg !1387
  br i1 %cmp13, label %if.then15, label %if.else21, !dbg !1388

if.then15:                                        ; preds = %if.else
  %22 = load ptr, ptr %out.addr, align 8, !dbg !1389, !tbaa !1148
  %23 = load ptr, ptr %outstart, align 8, !dbg !1391, !tbaa !1148
  %sub.ptr.lhs.cast = ptrtoint ptr %22 to i64, !dbg !1392
  %sub.ptr.rhs.cast = ptrtoint ptr %23 to i64, !dbg !1392
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1392
  %conv16 = trunc i64 %sub.ptr.sub to i32, !dbg !1389
  %24 = load ptr, ptr %outlen.addr, align 8, !dbg !1393, !tbaa !1148
  store i32 %conv16, ptr %24, align 4, !dbg !1394, !tbaa !1185
  %25 = load ptr, ptr %processed, align 8, !dbg !1395, !tbaa !1148
  %26 = load ptr, ptr %instart, align 8, !dbg !1396, !tbaa !1148
  %sub.ptr.lhs.cast17 = ptrtoint ptr %25 to i64, !dbg !1397
  %sub.ptr.rhs.cast18 = ptrtoint ptr %26 to i64, !dbg !1397
  %sub.ptr.sub19 = sub i64 %sub.ptr.lhs.cast17, %sub.ptr.rhs.cast18, !dbg !1397
  %conv20 = trunc i64 %sub.ptr.sub19 to i32, !dbg !1395
  %27 = load ptr, ptr %inlen.addr, align 8, !dbg !1398, !tbaa !1148
  store i32 %conv20, ptr %27, align 4, !dbg !1399, !tbaa !1185
  store i32 -2, ptr %retval, align 4, !dbg !1400
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1400

if.else21:                                        ; preds = %if.else
  %28 = load i32, ptr %d, align 4, !dbg !1401, !tbaa !1185
  %cmp22 = icmp ult i32 %28, 224, !dbg !1403
  br i1 %cmp22, label %if.then24, label %if.else25, !dbg !1404

if.then24:                                        ; preds = %if.else21
  %29 = load i32, ptr %d, align 4, !dbg !1405, !tbaa !1185
  %and = and i32 %29, 31, !dbg !1407
  store i32 %and, ptr %c, align 4, !dbg !1408, !tbaa !1185
  store i32 1, ptr %trailing, align 4, !dbg !1409, !tbaa !1185
  br label %if.end46, !dbg !1410

if.else25:                                        ; preds = %if.else21
  %30 = load i32, ptr %d, align 4, !dbg !1411, !tbaa !1185
  %cmp26 = icmp ult i32 %30, 240, !dbg !1413
  br i1 %cmp26, label %if.then28, label %if.else30, !dbg !1414

if.then28:                                        ; preds = %if.else25
  %31 = load i32, ptr %d, align 4, !dbg !1415, !tbaa !1185
  %and29 = and i32 %31, 15, !dbg !1417
  store i32 %and29, ptr %c, align 4, !dbg !1418, !tbaa !1185
  store i32 2, ptr %trailing, align 4, !dbg !1419, !tbaa !1185
  br label %if.end45, !dbg !1420

if.else30:                                        ; preds = %if.else25
  %32 = load i32, ptr %d, align 4, !dbg !1421, !tbaa !1185
  %cmp31 = icmp ult i32 %32, 248, !dbg !1423
  br i1 %cmp31, label %if.then33, label %if.else35, !dbg !1424

if.then33:                                        ; preds = %if.else30
  %33 = load i32, ptr %d, align 4, !dbg !1425, !tbaa !1185
  %and34 = and i32 %33, 7, !dbg !1427
  store i32 %and34, ptr %c, align 4, !dbg !1428, !tbaa !1185
  store i32 3, ptr %trailing, align 4, !dbg !1429, !tbaa !1185
  br label %if.end44, !dbg !1430

if.else35:                                        ; preds = %if.else30
  %34 = load ptr, ptr %out.addr, align 8, !dbg !1431, !tbaa !1148
  %35 = load ptr, ptr %outstart, align 8, !dbg !1433, !tbaa !1148
  %sub.ptr.lhs.cast36 = ptrtoint ptr %34 to i64, !dbg !1434
  %sub.ptr.rhs.cast37 = ptrtoint ptr %35 to i64, !dbg !1434
  %sub.ptr.sub38 = sub i64 %sub.ptr.lhs.cast36, %sub.ptr.rhs.cast37, !dbg !1434
  %conv39 = trunc i64 %sub.ptr.sub38 to i32, !dbg !1431
  %36 = load ptr, ptr %outlen.addr, align 8, !dbg !1435, !tbaa !1148
  store i32 %conv39, ptr %36, align 4, !dbg !1436, !tbaa !1185
  %37 = load ptr, ptr %processed, align 8, !dbg !1437, !tbaa !1148
  %38 = load ptr, ptr %instart, align 8, !dbg !1438, !tbaa !1148
  %sub.ptr.lhs.cast40 = ptrtoint ptr %37 to i64, !dbg !1439
  %sub.ptr.rhs.cast41 = ptrtoint ptr %38 to i64, !dbg !1439
  %sub.ptr.sub42 = sub i64 %sub.ptr.lhs.cast40, %sub.ptr.rhs.cast41, !dbg !1439
  %conv43 = trunc i64 %sub.ptr.sub42 to i32, !dbg !1437
  %39 = load ptr, ptr %inlen.addr, align 8, !dbg !1440, !tbaa !1148
  store i32 %conv43, ptr %39, align 4, !dbg !1441, !tbaa !1185
  store i32 -2, ptr %retval, align 4, !dbg !1442
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1442

if.end44:                                         ; preds = %if.then33
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.then28
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then24
  br label %if.end47

if.end47:                                         ; preds = %if.end46
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then12
  %40 = load ptr, ptr %inend, align 8, !dbg !1443, !tbaa !1148
  %41 = load ptr, ptr %in.addr, align 8, !dbg !1445, !tbaa !1148
  %sub.ptr.lhs.cast49 = ptrtoint ptr %40 to i64, !dbg !1446
  %sub.ptr.rhs.cast50 = ptrtoint ptr %41 to i64, !dbg !1446
  %sub.ptr.sub51 = sub i64 %sub.ptr.lhs.cast49, %sub.ptr.rhs.cast50, !dbg !1446
  %42 = load i32, ptr %trailing, align 4, !dbg !1447, !tbaa !1185
  %conv52 = sext i32 %42 to i64, !dbg !1447
  %cmp53 = icmp slt i64 %sub.ptr.sub51, %conv52, !dbg !1448
  br i1 %cmp53, label %if.then55, label %if.end56, !dbg !1449

if.then55:                                        ; preds = %if.end48
  br label %while.end, !dbg !1450

if.end56:                                         ; preds = %if.end48
  br label %for.cond, !dbg !1452

for.cond:                                         ; preds = %for.inc, %if.end56
  %43 = load i32, ptr %trailing, align 4, !dbg !1453, !tbaa !1185
  %tobool = icmp ne i32 %43, 0, !dbg !1456
  br i1 %tobool, label %for.body, label %for.end, !dbg !1456

for.body:                                         ; preds = %for.cond
  %44 = load ptr, ptr %in.addr, align 8, !dbg !1457, !tbaa !1148
  %45 = load ptr, ptr %inend, align 8, !dbg !1460, !tbaa !1148
  %cmp57 = icmp uge ptr %44, %45, !dbg !1461
  br i1 %cmp57, label %if.then59, label %if.end60, !dbg !1462

if.then59:                                        ; preds = %for.body
  br label %for.end, !dbg !1463

if.end60:                                         ; preds = %for.body
  %46 = load ptr, ptr %in.addr, align 8, !dbg !1464, !tbaa !1148
  %incdec.ptr61 = getelementptr inbounds i8, ptr %46, i32 1, !dbg !1464
  store ptr %incdec.ptr61, ptr %in.addr, align 8, !dbg !1464, !tbaa !1148
  %47 = load i8, ptr %46, align 1, !dbg !1466, !tbaa !1210
  %conv62 = zext i8 %47 to i32, !dbg !1466
  store i32 %conv62, ptr %d, align 4, !dbg !1467, !tbaa !1185
  %and63 = and i32 %conv62, 192, !dbg !1468
  %cmp64 = icmp ne i32 %and63, 128, !dbg !1469
  br i1 %cmp64, label %if.then66, label %if.end75, !dbg !1470

if.then66:                                        ; preds = %if.end60
  %48 = load ptr, ptr %out.addr, align 8, !dbg !1471, !tbaa !1148
  %49 = load ptr, ptr %outstart, align 8, !dbg !1473, !tbaa !1148
  %sub.ptr.lhs.cast67 = ptrtoint ptr %48 to i64, !dbg !1474
  %sub.ptr.rhs.cast68 = ptrtoint ptr %49 to i64, !dbg !1474
  %sub.ptr.sub69 = sub i64 %sub.ptr.lhs.cast67, %sub.ptr.rhs.cast68, !dbg !1474
  %conv70 = trunc i64 %sub.ptr.sub69 to i32, !dbg !1471
  %50 = load ptr, ptr %outlen.addr, align 8, !dbg !1475, !tbaa !1148
  store i32 %conv70, ptr %50, align 4, !dbg !1476, !tbaa !1185
  %51 = load ptr, ptr %processed, align 8, !dbg !1477, !tbaa !1148
  %52 = load ptr, ptr %instart, align 8, !dbg !1478, !tbaa !1148
  %sub.ptr.lhs.cast71 = ptrtoint ptr %51 to i64, !dbg !1479
  %sub.ptr.rhs.cast72 = ptrtoint ptr %52 to i64, !dbg !1479
  %sub.ptr.sub73 = sub i64 %sub.ptr.lhs.cast71, %sub.ptr.rhs.cast72, !dbg !1479
  %conv74 = trunc i64 %sub.ptr.sub73 to i32, !dbg !1477
  %53 = load ptr, ptr %inlen.addr, align 8, !dbg !1480, !tbaa !1148
  store i32 %conv74, ptr %53, align 4, !dbg !1481, !tbaa !1185
  store i32 -2, ptr %retval, align 4, !dbg !1482
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1482

if.end75:                                         ; preds = %if.end60
  %54 = load i32, ptr %c, align 4, !dbg !1483, !tbaa !1185
  %shl = shl i32 %54, 6, !dbg !1483
  store i32 %shl, ptr %c, align 4, !dbg !1483, !tbaa !1185
  %55 = load i32, ptr %d, align 4, !dbg !1484, !tbaa !1185
  %and76 = and i32 %55, 63, !dbg !1485
  %56 = load i32, ptr %c, align 4, !dbg !1486, !tbaa !1185
  %or = or i32 %56, %and76, !dbg !1486
  store i32 %or, ptr %c, align 4, !dbg !1486, !tbaa !1185
  br label %for.inc, !dbg !1487

for.inc:                                          ; preds = %if.end75
  %57 = load i32, ptr %trailing, align 4, !dbg !1488, !tbaa !1185
  %dec = add nsw i32 %57, -1, !dbg !1488
  store i32 %dec, ptr %trailing, align 4, !dbg !1488, !tbaa !1185
  br label %for.cond, !dbg !1489, !llvm.loop !1490

for.end:                                          ; preds = %if.then59, %for.cond
  %58 = load i32, ptr %c, align 4, !dbg !1492, !tbaa !1185
  %cmp77 = icmp ule i32 %58, 255, !dbg !1494
  br i1 %cmp77, label %if.then79, label %if.else86, !dbg !1495

if.then79:                                        ; preds = %for.end
  %59 = load ptr, ptr %out.addr, align 8, !dbg !1496, !tbaa !1148
  %60 = load ptr, ptr %outend, align 8, !dbg !1499, !tbaa !1148
  %cmp80 = icmp uge ptr %59, %60, !dbg !1500
  br i1 %cmp80, label %if.then82, label %if.end83, !dbg !1501

if.then82:                                        ; preds = %if.then79
  br label %while.end, !dbg !1502

if.end83:                                         ; preds = %if.then79
  %61 = load i32, ptr %c, align 4, !dbg !1503, !tbaa !1185
  %conv84 = trunc i32 %61 to i8, !dbg !1503
  %62 = load ptr, ptr %out.addr, align 8, !dbg !1504, !tbaa !1148
  %incdec.ptr85 = getelementptr inbounds i8, ptr %62, i32 1, !dbg !1504
  store ptr %incdec.ptr85, ptr %out.addr, align 8, !dbg !1504, !tbaa !1148
  store i8 %conv84, ptr %62, align 1, !dbg !1505, !tbaa !1210
  br label %if.end95, !dbg !1506

if.else86:                                        ; preds = %for.end
  %63 = load ptr, ptr %out.addr, align 8, !dbg !1507, !tbaa !1148
  %64 = load ptr, ptr %outstart, align 8, !dbg !1509, !tbaa !1148
  %sub.ptr.lhs.cast87 = ptrtoint ptr %63 to i64, !dbg !1510
  %sub.ptr.rhs.cast88 = ptrtoint ptr %64 to i64, !dbg !1510
  %sub.ptr.sub89 = sub i64 %sub.ptr.lhs.cast87, %sub.ptr.rhs.cast88, !dbg !1510
  %conv90 = trunc i64 %sub.ptr.sub89 to i32, !dbg !1507
  %65 = load ptr, ptr %outlen.addr, align 8, !dbg !1511, !tbaa !1148
  store i32 %conv90, ptr %65, align 4, !dbg !1512, !tbaa !1185
  %66 = load ptr, ptr %processed, align 8, !dbg !1513, !tbaa !1148
  %67 = load ptr, ptr %instart, align 8, !dbg !1514, !tbaa !1148
  %sub.ptr.lhs.cast91 = ptrtoint ptr %66 to i64, !dbg !1515
  %sub.ptr.rhs.cast92 = ptrtoint ptr %67 to i64, !dbg !1515
  %sub.ptr.sub93 = sub i64 %sub.ptr.lhs.cast91, %sub.ptr.rhs.cast92, !dbg !1515
  %conv94 = trunc i64 %sub.ptr.sub93 to i32, !dbg !1513
  %68 = load ptr, ptr %inlen.addr, align 8, !dbg !1516, !tbaa !1148
  store i32 %conv94, ptr %68, align 4, !dbg !1517, !tbaa !1185
  store i32 -2, ptr %retval, align 4, !dbg !1518
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1518

if.end95:                                         ; preds = %if.end83
  %69 = load ptr, ptr %in.addr, align 8, !dbg !1519, !tbaa !1148
  store ptr %69, ptr %processed, align 8, !dbg !1520, !tbaa !1148
  br label %while.cond, !dbg !1368, !llvm.loop !1521

while.end:                                        ; preds = %if.then82, %if.then55, %while.cond
  %70 = load ptr, ptr %out.addr, align 8, !dbg !1523, !tbaa !1148
  %71 = load ptr, ptr %outstart, align 8, !dbg !1524, !tbaa !1148
  %sub.ptr.lhs.cast96 = ptrtoint ptr %70 to i64, !dbg !1525
  %sub.ptr.rhs.cast97 = ptrtoint ptr %71 to i64, !dbg !1525
  %sub.ptr.sub98 = sub i64 %sub.ptr.lhs.cast96, %sub.ptr.rhs.cast97, !dbg !1525
  %conv99 = trunc i64 %sub.ptr.sub98 to i32, !dbg !1523
  %72 = load ptr, ptr %outlen.addr, align 8, !dbg !1526, !tbaa !1148
  store i32 %conv99, ptr %72, align 4, !dbg !1527, !tbaa !1185
  %73 = load ptr, ptr %processed, align 8, !dbg !1528, !tbaa !1148
  %74 = load ptr, ptr %instart, align 8, !dbg !1529, !tbaa !1148
  %sub.ptr.lhs.cast100 = ptrtoint ptr %73 to i64, !dbg !1530
  %sub.ptr.rhs.cast101 = ptrtoint ptr %74 to i64, !dbg !1530
  %sub.ptr.sub102 = sub i64 %sub.ptr.lhs.cast100, %sub.ptr.rhs.cast101, !dbg !1530
  %conv103 = trunc i64 %sub.ptr.sub102 to i32, !dbg !1528
  %75 = load ptr, ptr %inlen.addr, align 8, !dbg !1531, !tbaa !1148
  store i32 %conv103, ptr %75, align 4, !dbg !1532, !tbaa !1185
  %76 = load ptr, ptr %outlen.addr, align 8, !dbg !1533, !tbaa !1148
  %77 = load i32, ptr %76, align 4, !dbg !1534, !tbaa !1185
  store i32 %77, ptr %retval, align 4, !dbg !1535
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1535

cleanup:                                          ; preds = %while.end, %if.else86, %if.then66, %if.else35, %if.then15, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %trailing) #9, !dbg !1536
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #9, !dbg !1536
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #9, !dbg !1536
  call void @llvm.lifetime.end.p0(i64 8, ptr %inend) #9, !dbg !1536
  call void @llvm.lifetime.end.p0(i64 8, ptr %instart) #9, !dbg !1536
  call void @llvm.lifetime.end.p0(i64 8, ptr %outstart) #9, !dbg !1536
  call void @llvm.lifetime.end.p0(i64 8, ptr %outend) #9, !dbg !1536
  call void @llvm.lifetime.end.p0(i64 8, ptr %processed) #9, !dbg !1536
  %78 = load i32, ptr %retval, align 4, !dbg !1536
  ret i32 %78, !dbg !1536
}

; Function Attrs: nounwind uwtable
define hidden i32 @xmlDetectCharEncoding__internal_alias(ptr noundef %in, i32 noundef %len) #0 !dbg !1537 {
entry:
  %retval = alloca i32, align 4
  %in.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  store ptr %in, ptr %in.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !1542, metadata !DIExpression()), !dbg !1544
  store i32 %len, ptr %len.addr, align 4, !tbaa !1185
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !1543, metadata !DIExpression()), !dbg !1545
  %0 = load ptr, ptr %in.addr, align 8, !dbg !1546, !tbaa !1148
  %cmp = icmp eq ptr %0, null, !dbg !1548
  br i1 %cmp, label %if.then, label %if.end, !dbg !1549

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1550
  br label %return, !dbg !1550

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %len.addr, align 4, !dbg !1551, !tbaa !1185
  %cmp1 = icmp sge i32 %1, 4, !dbg !1553
  br i1 %cmp1, label %if.then2, label %if.end168, !dbg !1554

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr %in.addr, align 8, !dbg !1555, !tbaa !1148
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 0, !dbg !1555
  %3 = load i8, ptr %arrayidx, align 1, !dbg !1555, !tbaa !1210
  %conv = zext i8 %3 to i32, !dbg !1555
  %cmp3 = icmp eq i32 %conv, 0, !dbg !1558
  br i1 %cmp3, label %land.lhs.true, label %if.end20, !dbg !1559

land.lhs.true:                                    ; preds = %if.then2
  %4 = load ptr, ptr %in.addr, align 8, !dbg !1560, !tbaa !1148
  %arrayidx5 = getelementptr inbounds i8, ptr %4, i64 1, !dbg !1560
  %5 = load i8, ptr %arrayidx5, align 1, !dbg !1560, !tbaa !1210
  %conv6 = zext i8 %5 to i32, !dbg !1560
  %cmp7 = icmp eq i32 %conv6, 0, !dbg !1561
  br i1 %cmp7, label %land.lhs.true9, label %if.end20, !dbg !1562

land.lhs.true9:                                   ; preds = %land.lhs.true
  %6 = load ptr, ptr %in.addr, align 8, !dbg !1563, !tbaa !1148
  %arrayidx10 = getelementptr inbounds i8, ptr %6, i64 2, !dbg !1563
  %7 = load i8, ptr %arrayidx10, align 1, !dbg !1563, !tbaa !1210
  %conv11 = zext i8 %7 to i32, !dbg !1563
  %cmp12 = icmp eq i32 %conv11, 0, !dbg !1564
  br i1 %cmp12, label %land.lhs.true14, label %if.end20, !dbg !1565

land.lhs.true14:                                  ; preds = %land.lhs.true9
  %8 = load ptr, ptr %in.addr, align 8, !dbg !1566, !tbaa !1148
  %arrayidx15 = getelementptr inbounds i8, ptr %8, i64 3, !dbg !1566
  %9 = load i8, ptr %arrayidx15, align 1, !dbg !1566, !tbaa !1210
  %conv16 = zext i8 %9 to i32, !dbg !1566
  %cmp17 = icmp eq i32 %conv16, 60, !dbg !1567
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !1568

if.then19:                                        ; preds = %land.lhs.true14
  store i32 5, ptr %retval, align 4, !dbg !1569
  br label %return, !dbg !1569

if.end20:                                         ; preds = %land.lhs.true14, %land.lhs.true9, %land.lhs.true, %if.then2
  %10 = load ptr, ptr %in.addr, align 8, !dbg !1570, !tbaa !1148
  %arrayidx21 = getelementptr inbounds i8, ptr %10, i64 0, !dbg !1570
  %11 = load i8, ptr %arrayidx21, align 1, !dbg !1570, !tbaa !1210
  %conv22 = zext i8 %11 to i32, !dbg !1570
  %cmp23 = icmp eq i32 %conv22, 60, !dbg !1572
  br i1 %cmp23, label %land.lhs.true25, label %if.end41, !dbg !1573

land.lhs.true25:                                  ; preds = %if.end20
  %12 = load ptr, ptr %in.addr, align 8, !dbg !1574, !tbaa !1148
  %arrayidx26 = getelementptr inbounds i8, ptr %12, i64 1, !dbg !1574
  %13 = load i8, ptr %arrayidx26, align 1, !dbg !1574, !tbaa !1210
  %conv27 = zext i8 %13 to i32, !dbg !1574
  %cmp28 = icmp eq i32 %conv27, 0, !dbg !1575
  br i1 %cmp28, label %land.lhs.true30, label %if.end41, !dbg !1576

land.lhs.true30:                                  ; preds = %land.lhs.true25
  %14 = load ptr, ptr %in.addr, align 8, !dbg !1577, !tbaa !1148
  %arrayidx31 = getelementptr inbounds i8, ptr %14, i64 2, !dbg !1577
  %15 = load i8, ptr %arrayidx31, align 1, !dbg !1577, !tbaa !1210
  %conv32 = zext i8 %15 to i32, !dbg !1577
  %cmp33 = icmp eq i32 %conv32, 0, !dbg !1578
  br i1 %cmp33, label %land.lhs.true35, label %if.end41, !dbg !1579

land.lhs.true35:                                  ; preds = %land.lhs.true30
  %16 = load ptr, ptr %in.addr, align 8, !dbg !1580, !tbaa !1148
  %arrayidx36 = getelementptr inbounds i8, ptr %16, i64 3, !dbg !1580
  %17 = load i8, ptr %arrayidx36, align 1, !dbg !1580, !tbaa !1210
  %conv37 = zext i8 %17 to i32, !dbg !1580
  %cmp38 = icmp eq i32 %conv37, 0, !dbg !1581
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !1582

if.then40:                                        ; preds = %land.lhs.true35
  store i32 4, ptr %retval, align 4, !dbg !1583
  br label %return, !dbg !1583

if.end41:                                         ; preds = %land.lhs.true35, %land.lhs.true30, %land.lhs.true25, %if.end20
  %18 = load ptr, ptr %in.addr, align 8, !dbg !1584, !tbaa !1148
  %arrayidx42 = getelementptr inbounds i8, ptr %18, i64 0, !dbg !1584
  %19 = load i8, ptr %arrayidx42, align 1, !dbg !1584, !tbaa !1210
  %conv43 = zext i8 %19 to i32, !dbg !1584
  %cmp44 = icmp eq i32 %conv43, 0, !dbg !1586
  br i1 %cmp44, label %land.lhs.true46, label %if.end62, !dbg !1587

land.lhs.true46:                                  ; preds = %if.end41
  %20 = load ptr, ptr %in.addr, align 8, !dbg !1588, !tbaa !1148
  %arrayidx47 = getelementptr inbounds i8, ptr %20, i64 1, !dbg !1588
  %21 = load i8, ptr %arrayidx47, align 1, !dbg !1588, !tbaa !1210
  %conv48 = zext i8 %21 to i32, !dbg !1588
  %cmp49 = icmp eq i32 %conv48, 0, !dbg !1589
  br i1 %cmp49, label %land.lhs.true51, label %if.end62, !dbg !1590

land.lhs.true51:                                  ; preds = %land.lhs.true46
  %22 = load ptr, ptr %in.addr, align 8, !dbg !1591, !tbaa !1148
  %arrayidx52 = getelementptr inbounds i8, ptr %22, i64 2, !dbg !1591
  %23 = load i8, ptr %arrayidx52, align 1, !dbg !1591, !tbaa !1210
  %conv53 = zext i8 %23 to i32, !dbg !1591
  %cmp54 = icmp eq i32 %conv53, 60, !dbg !1592
  br i1 %cmp54, label %land.lhs.true56, label %if.end62, !dbg !1593

land.lhs.true56:                                  ; preds = %land.lhs.true51
  %24 = load ptr, ptr %in.addr, align 8, !dbg !1594, !tbaa !1148
  %arrayidx57 = getelementptr inbounds i8, ptr %24, i64 3, !dbg !1594
  %25 = load i8, ptr %arrayidx57, align 1, !dbg !1594, !tbaa !1210
  %conv58 = zext i8 %25 to i32, !dbg !1594
  %cmp59 = icmp eq i32 %conv58, 0, !dbg !1595
  br i1 %cmp59, label %if.then61, label %if.end62, !dbg !1596

if.then61:                                        ; preds = %land.lhs.true56
  store i32 7, ptr %retval, align 4, !dbg !1597
  br label %return, !dbg !1597

if.end62:                                         ; preds = %land.lhs.true56, %land.lhs.true51, %land.lhs.true46, %if.end41
  %26 = load ptr, ptr %in.addr, align 8, !dbg !1598, !tbaa !1148
  %arrayidx63 = getelementptr inbounds i8, ptr %26, i64 0, !dbg !1598
  %27 = load i8, ptr %arrayidx63, align 1, !dbg !1598, !tbaa !1210
  %conv64 = zext i8 %27 to i32, !dbg !1598
  %cmp65 = icmp eq i32 %conv64, 0, !dbg !1600
  br i1 %cmp65, label %land.lhs.true67, label %if.end83, !dbg !1601

land.lhs.true67:                                  ; preds = %if.end62
  %28 = load ptr, ptr %in.addr, align 8, !dbg !1602, !tbaa !1148
  %arrayidx68 = getelementptr inbounds i8, ptr %28, i64 1, !dbg !1602
  %29 = load i8, ptr %arrayidx68, align 1, !dbg !1602, !tbaa !1210
  %conv69 = zext i8 %29 to i32, !dbg !1602
  %cmp70 = icmp eq i32 %conv69, 60, !dbg !1603
  br i1 %cmp70, label %land.lhs.true72, label %if.end83, !dbg !1604

land.lhs.true72:                                  ; preds = %land.lhs.true67
  %30 = load ptr, ptr %in.addr, align 8, !dbg !1605, !tbaa !1148
  %arrayidx73 = getelementptr inbounds i8, ptr %30, i64 2, !dbg !1605
  %31 = load i8, ptr %arrayidx73, align 1, !dbg !1605, !tbaa !1210
  %conv74 = zext i8 %31 to i32, !dbg !1605
  %cmp75 = icmp eq i32 %conv74, 0, !dbg !1606
  br i1 %cmp75, label %land.lhs.true77, label %if.end83, !dbg !1607

land.lhs.true77:                                  ; preds = %land.lhs.true72
  %32 = load ptr, ptr %in.addr, align 8, !dbg !1608, !tbaa !1148
  %arrayidx78 = getelementptr inbounds i8, ptr %32, i64 3, !dbg !1608
  %33 = load i8, ptr %arrayidx78, align 1, !dbg !1608, !tbaa !1210
  %conv79 = zext i8 %33 to i32, !dbg !1608
  %cmp80 = icmp eq i32 %conv79, 0, !dbg !1609
  br i1 %cmp80, label %if.then82, label %if.end83, !dbg !1610

if.then82:                                        ; preds = %land.lhs.true77
  store i32 8, ptr %retval, align 4, !dbg !1611
  br label %return, !dbg !1611

if.end83:                                         ; preds = %land.lhs.true77, %land.lhs.true72, %land.lhs.true67, %if.end62
  %34 = load ptr, ptr %in.addr, align 8, !dbg !1612, !tbaa !1148
  %arrayidx84 = getelementptr inbounds i8, ptr %34, i64 0, !dbg !1612
  %35 = load i8, ptr %arrayidx84, align 1, !dbg !1612, !tbaa !1210
  %conv85 = zext i8 %35 to i32, !dbg !1612
  %cmp86 = icmp eq i32 %conv85, 76, !dbg !1614
  br i1 %cmp86, label %land.lhs.true88, label %if.end104, !dbg !1615

land.lhs.true88:                                  ; preds = %if.end83
  %36 = load ptr, ptr %in.addr, align 8, !dbg !1616, !tbaa !1148
  %arrayidx89 = getelementptr inbounds i8, ptr %36, i64 1, !dbg !1616
  %37 = load i8, ptr %arrayidx89, align 1, !dbg !1616, !tbaa !1210
  %conv90 = zext i8 %37 to i32, !dbg !1616
  %cmp91 = icmp eq i32 %conv90, 111, !dbg !1617
  br i1 %cmp91, label %land.lhs.true93, label %if.end104, !dbg !1618

land.lhs.true93:                                  ; preds = %land.lhs.true88
  %38 = load ptr, ptr %in.addr, align 8, !dbg !1619, !tbaa !1148
  %arrayidx94 = getelementptr inbounds i8, ptr %38, i64 2, !dbg !1619
  %39 = load i8, ptr %arrayidx94, align 1, !dbg !1619, !tbaa !1210
  %conv95 = zext i8 %39 to i32, !dbg !1619
  %cmp96 = icmp eq i32 %conv95, 167, !dbg !1620
  br i1 %cmp96, label %land.lhs.true98, label %if.end104, !dbg !1621

land.lhs.true98:                                  ; preds = %land.lhs.true93
  %40 = load ptr, ptr %in.addr, align 8, !dbg !1622, !tbaa !1148
  %arrayidx99 = getelementptr inbounds i8, ptr %40, i64 3, !dbg !1622
  %41 = load i8, ptr %arrayidx99, align 1, !dbg !1622, !tbaa !1210
  %conv100 = zext i8 %41 to i32, !dbg !1622
  %cmp101 = icmp eq i32 %conv100, 148, !dbg !1623
  br i1 %cmp101, label %if.then103, label %if.end104, !dbg !1624

if.then103:                                       ; preds = %land.lhs.true98
  store i32 6, ptr %retval, align 4, !dbg !1625
  br label %return, !dbg !1625

if.end104:                                        ; preds = %land.lhs.true98, %land.lhs.true93, %land.lhs.true88, %if.end83
  %42 = load ptr, ptr %in.addr, align 8, !dbg !1626, !tbaa !1148
  %arrayidx105 = getelementptr inbounds i8, ptr %42, i64 0, !dbg !1626
  %43 = load i8, ptr %arrayidx105, align 1, !dbg !1626, !tbaa !1210
  %conv106 = zext i8 %43 to i32, !dbg !1626
  %cmp107 = icmp eq i32 %conv106, 60, !dbg !1628
  br i1 %cmp107, label %land.lhs.true109, label %if.end125, !dbg !1629

land.lhs.true109:                                 ; preds = %if.end104
  %44 = load ptr, ptr %in.addr, align 8, !dbg !1630, !tbaa !1148
  %arrayidx110 = getelementptr inbounds i8, ptr %44, i64 1, !dbg !1630
  %45 = load i8, ptr %arrayidx110, align 1, !dbg !1630, !tbaa !1210
  %conv111 = zext i8 %45 to i32, !dbg !1630
  %cmp112 = icmp eq i32 %conv111, 63, !dbg !1631
  br i1 %cmp112, label %land.lhs.true114, label %if.end125, !dbg !1632

land.lhs.true114:                                 ; preds = %land.lhs.true109
  %46 = load ptr, ptr %in.addr, align 8, !dbg !1633, !tbaa !1148
  %arrayidx115 = getelementptr inbounds i8, ptr %46, i64 2, !dbg !1633
  %47 = load i8, ptr %arrayidx115, align 1, !dbg !1633, !tbaa !1210
  %conv116 = zext i8 %47 to i32, !dbg !1633
  %cmp117 = icmp eq i32 %conv116, 120, !dbg !1634
  br i1 %cmp117, label %land.lhs.true119, label %if.end125, !dbg !1635

land.lhs.true119:                                 ; preds = %land.lhs.true114
  %48 = load ptr, ptr %in.addr, align 8, !dbg !1636, !tbaa !1148
  %arrayidx120 = getelementptr inbounds i8, ptr %48, i64 3, !dbg !1636
  %49 = load i8, ptr %arrayidx120, align 1, !dbg !1636, !tbaa !1210
  %conv121 = zext i8 %49 to i32, !dbg !1636
  %cmp122 = icmp eq i32 %conv121, 109, !dbg !1637
  br i1 %cmp122, label %if.then124, label %if.end125, !dbg !1638

if.then124:                                       ; preds = %land.lhs.true119
  store i32 1, ptr %retval, align 4, !dbg !1639
  br label %return, !dbg !1639

if.end125:                                        ; preds = %land.lhs.true119, %land.lhs.true114, %land.lhs.true109, %if.end104
  %50 = load ptr, ptr %in.addr, align 8, !dbg !1640, !tbaa !1148
  %arrayidx126 = getelementptr inbounds i8, ptr %50, i64 0, !dbg !1640
  %51 = load i8, ptr %arrayidx126, align 1, !dbg !1640, !tbaa !1210
  %conv127 = zext i8 %51 to i32, !dbg !1640
  %cmp128 = icmp eq i32 %conv127, 60, !dbg !1642
  br i1 %cmp128, label %land.lhs.true130, label %if.end146, !dbg !1643

land.lhs.true130:                                 ; preds = %if.end125
  %52 = load ptr, ptr %in.addr, align 8, !dbg !1644, !tbaa !1148
  %arrayidx131 = getelementptr inbounds i8, ptr %52, i64 1, !dbg !1644
  %53 = load i8, ptr %arrayidx131, align 1, !dbg !1644, !tbaa !1210
  %conv132 = zext i8 %53 to i32, !dbg !1644
  %cmp133 = icmp eq i32 %conv132, 0, !dbg !1645
  br i1 %cmp133, label %land.lhs.true135, label %if.end146, !dbg !1646

land.lhs.true135:                                 ; preds = %land.lhs.true130
  %54 = load ptr, ptr %in.addr, align 8, !dbg !1647, !tbaa !1148
  %arrayidx136 = getelementptr inbounds i8, ptr %54, i64 2, !dbg !1647
  %55 = load i8, ptr %arrayidx136, align 1, !dbg !1647, !tbaa !1210
  %conv137 = zext i8 %55 to i32, !dbg !1647
  %cmp138 = icmp eq i32 %conv137, 63, !dbg !1648
  br i1 %cmp138, label %land.lhs.true140, label %if.end146, !dbg !1649

land.lhs.true140:                                 ; preds = %land.lhs.true135
  %56 = load ptr, ptr %in.addr, align 8, !dbg !1650, !tbaa !1148
  %arrayidx141 = getelementptr inbounds i8, ptr %56, i64 3, !dbg !1650
  %57 = load i8, ptr %arrayidx141, align 1, !dbg !1650, !tbaa !1210
  %conv142 = zext i8 %57 to i32, !dbg !1650
  %cmp143 = icmp eq i32 %conv142, 0, !dbg !1651
  br i1 %cmp143, label %if.then145, label %if.end146, !dbg !1652

if.then145:                                       ; preds = %land.lhs.true140
  store i32 2, ptr %retval, align 4, !dbg !1653
  br label %return, !dbg !1653

if.end146:                                        ; preds = %land.lhs.true140, %land.lhs.true135, %land.lhs.true130, %if.end125
  %58 = load ptr, ptr %in.addr, align 8, !dbg !1654, !tbaa !1148
  %arrayidx147 = getelementptr inbounds i8, ptr %58, i64 0, !dbg !1654
  %59 = load i8, ptr %arrayidx147, align 1, !dbg !1654, !tbaa !1210
  %conv148 = zext i8 %59 to i32, !dbg !1654
  %cmp149 = icmp eq i32 %conv148, 0, !dbg !1656
  br i1 %cmp149, label %land.lhs.true151, label %if.end167, !dbg !1657

land.lhs.true151:                                 ; preds = %if.end146
  %60 = load ptr, ptr %in.addr, align 8, !dbg !1658, !tbaa !1148
  %arrayidx152 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1658
  %61 = load i8, ptr %arrayidx152, align 1, !dbg !1658, !tbaa !1210
  %conv153 = zext i8 %61 to i32, !dbg !1658
  %cmp154 = icmp eq i32 %conv153, 60, !dbg !1659
  br i1 %cmp154, label %land.lhs.true156, label %if.end167, !dbg !1660

land.lhs.true156:                                 ; preds = %land.lhs.true151
  %62 = load ptr, ptr %in.addr, align 8, !dbg !1661, !tbaa !1148
  %arrayidx157 = getelementptr inbounds i8, ptr %62, i64 2, !dbg !1661
  %63 = load i8, ptr %arrayidx157, align 1, !dbg !1661, !tbaa !1210
  %conv158 = zext i8 %63 to i32, !dbg !1661
  %cmp159 = icmp eq i32 %conv158, 0, !dbg !1662
  br i1 %cmp159, label %land.lhs.true161, label %if.end167, !dbg !1663

land.lhs.true161:                                 ; preds = %land.lhs.true156
  %64 = load ptr, ptr %in.addr, align 8, !dbg !1664, !tbaa !1148
  %arrayidx162 = getelementptr inbounds i8, ptr %64, i64 3, !dbg !1664
  %65 = load i8, ptr %arrayidx162, align 1, !dbg !1664, !tbaa !1210
  %conv163 = zext i8 %65 to i32, !dbg !1664
  %cmp164 = icmp eq i32 %conv163, 63, !dbg !1665
  br i1 %cmp164, label %if.then166, label %if.end167, !dbg !1666

if.then166:                                       ; preds = %land.lhs.true161
  store i32 3, ptr %retval, align 4, !dbg !1667
  br label %return, !dbg !1667

if.end167:                                        ; preds = %land.lhs.true161, %land.lhs.true156, %land.lhs.true151, %if.end146
  br label %if.end168, !dbg !1668

if.end168:                                        ; preds = %if.end167, %if.end
  %66 = load i32, ptr %len.addr, align 4, !dbg !1669, !tbaa !1185
  %cmp169 = icmp sge i32 %66, 3, !dbg !1671
  br i1 %cmp169, label %if.then171, label %if.end188, !dbg !1672

if.then171:                                       ; preds = %if.end168
  %67 = load ptr, ptr %in.addr, align 8, !dbg !1673, !tbaa !1148
  %arrayidx172 = getelementptr inbounds i8, ptr %67, i64 0, !dbg !1673
  %68 = load i8, ptr %arrayidx172, align 1, !dbg !1673, !tbaa !1210
  %conv173 = zext i8 %68 to i32, !dbg !1673
  %cmp174 = icmp eq i32 %conv173, 239, !dbg !1676
  br i1 %cmp174, label %land.lhs.true176, label %if.end187, !dbg !1677

land.lhs.true176:                                 ; preds = %if.then171
  %69 = load ptr, ptr %in.addr, align 8, !dbg !1678, !tbaa !1148
  %arrayidx177 = getelementptr inbounds i8, ptr %69, i64 1, !dbg !1678
  %70 = load i8, ptr %arrayidx177, align 1, !dbg !1678, !tbaa !1210
  %conv178 = zext i8 %70 to i32, !dbg !1678
  %cmp179 = icmp eq i32 %conv178, 187, !dbg !1679
  br i1 %cmp179, label %land.lhs.true181, label %if.end187, !dbg !1680

land.lhs.true181:                                 ; preds = %land.lhs.true176
  %71 = load ptr, ptr %in.addr, align 8, !dbg !1681, !tbaa !1148
  %arrayidx182 = getelementptr inbounds i8, ptr %71, i64 2, !dbg !1681
  %72 = load i8, ptr %arrayidx182, align 1, !dbg !1681, !tbaa !1210
  %conv183 = zext i8 %72 to i32, !dbg !1681
  %cmp184 = icmp eq i32 %conv183, 191, !dbg !1682
  br i1 %cmp184, label %if.then186, label %if.end187, !dbg !1683

if.then186:                                       ; preds = %land.lhs.true181
  store i32 1, ptr %retval, align 4, !dbg !1684
  br label %return, !dbg !1684

if.end187:                                        ; preds = %land.lhs.true181, %land.lhs.true176, %if.then171
  br label %if.end188, !dbg !1685

if.end188:                                        ; preds = %if.end187, %if.end168
  %73 = load i32, ptr %len.addr, align 4, !dbg !1686, !tbaa !1185
  %cmp189 = icmp sge i32 %73, 2, !dbg !1688
  br i1 %cmp189, label %if.then191, label %if.end214, !dbg !1689

if.then191:                                       ; preds = %if.end188
  %74 = load ptr, ptr %in.addr, align 8, !dbg !1690, !tbaa !1148
  %arrayidx192 = getelementptr inbounds i8, ptr %74, i64 0, !dbg !1690
  %75 = load i8, ptr %arrayidx192, align 1, !dbg !1690, !tbaa !1210
  %conv193 = zext i8 %75 to i32, !dbg !1690
  %cmp194 = icmp eq i32 %conv193, 254, !dbg !1693
  br i1 %cmp194, label %land.lhs.true196, label %if.end202, !dbg !1694

land.lhs.true196:                                 ; preds = %if.then191
  %76 = load ptr, ptr %in.addr, align 8, !dbg !1695, !tbaa !1148
  %arrayidx197 = getelementptr inbounds i8, ptr %76, i64 1, !dbg !1695
  %77 = load i8, ptr %arrayidx197, align 1, !dbg !1695, !tbaa !1210
  %conv198 = zext i8 %77 to i32, !dbg !1695
  %cmp199 = icmp eq i32 %conv198, 255, !dbg !1696
  br i1 %cmp199, label %if.then201, label %if.end202, !dbg !1697

if.then201:                                       ; preds = %land.lhs.true196
  store i32 3, ptr %retval, align 4, !dbg !1698
  br label %return, !dbg !1698

if.end202:                                        ; preds = %land.lhs.true196, %if.then191
  %78 = load ptr, ptr %in.addr, align 8, !dbg !1699, !tbaa !1148
  %arrayidx203 = getelementptr inbounds i8, ptr %78, i64 0, !dbg !1699
  %79 = load i8, ptr %arrayidx203, align 1, !dbg !1699, !tbaa !1210
  %conv204 = zext i8 %79 to i32, !dbg !1699
  %cmp205 = icmp eq i32 %conv204, 255, !dbg !1701
  br i1 %cmp205, label %land.lhs.true207, label %if.end213, !dbg !1702

land.lhs.true207:                                 ; preds = %if.end202
  %80 = load ptr, ptr %in.addr, align 8, !dbg !1703, !tbaa !1148
  %arrayidx208 = getelementptr inbounds i8, ptr %80, i64 1, !dbg !1703
  %81 = load i8, ptr %arrayidx208, align 1, !dbg !1703, !tbaa !1210
  %conv209 = zext i8 %81 to i32, !dbg !1703
  %cmp210 = icmp eq i32 %conv209, 254, !dbg !1704
  br i1 %cmp210, label %if.then212, label %if.end213, !dbg !1705

if.then212:                                       ; preds = %land.lhs.true207
  store i32 2, ptr %retval, align 4, !dbg !1706
  br label %return, !dbg !1706

if.end213:                                        ; preds = %land.lhs.true207, %if.end202
  br label %if.end214, !dbg !1707

if.end214:                                        ; preds = %if.end213, %if.end188
  store i32 0, ptr %retval, align 4, !dbg !1708
  br label %return, !dbg !1708

return:                                           ; preds = %if.end214, %if.then212, %if.then201, %if.then186, %if.then166, %if.then145, %if.then124, %if.then103, %if.then82, %if.then61, %if.then40, %if.then19, %if.then
  %82 = load i32, ptr %retval, align 4, !dbg !1709
  ret i32 %82, !dbg !1709
}

; Function Attrs: nounwind uwtable
define hidden void @xmlCleanupEncodingAliases__internal_alias() #0 !dbg !1710 {
entry:
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !1715
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1714, metadata !DIExpression()), !dbg !1716
  %0 = load ptr, ptr @xmlCharEncodingAliases, align 8, !dbg !1717, !tbaa !1148
  %cmp = icmp eq ptr %0, null, !dbg !1719
  br i1 %cmp, label %if.then, label %if.end, !dbg !1720

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1721

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !1722, !tbaa !1185
  br label %for.cond, !dbg !1724

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, ptr %i, align 4, !dbg !1725, !tbaa !1185
  %2 = load i32, ptr @xmlCharEncodingAliasesNb, align 4, !dbg !1727, !tbaa !1185
  %cmp1 = icmp slt i32 %1, %2, !dbg !1728
  br i1 %cmp1, label %for.body, label %for.end, !dbg !1729

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr @xmlCharEncodingAliases, align 8, !dbg !1730, !tbaa !1148
  %4 = load i32, ptr %i, align 4, !dbg !1733, !tbaa !1185
  %idxprom = sext i32 %4 to i64, !dbg !1730
  %arrayidx = getelementptr inbounds %struct._xmlCharEncodingAlias, ptr %3, i64 %idxprom, !dbg !1730
  %name = getelementptr inbounds %struct._xmlCharEncodingAlias, ptr %arrayidx, i32 0, i32 0, !dbg !1734
  %5 = load ptr, ptr %name, align 8, !dbg !1734, !tbaa !1735
  %cmp2 = icmp ne ptr %5, null, !dbg !1737
  br i1 %cmp2, label %if.then3, label %if.end7, !dbg !1738

if.then3:                                         ; preds = %for.body
  %6 = load ptr, ptr @xmlFree, align 8, !dbg !1739, !tbaa !1148
  %7 = load ptr, ptr @xmlCharEncodingAliases, align 8, !dbg !1740, !tbaa !1148
  %8 = load i32, ptr %i, align 4, !dbg !1741, !tbaa !1185
  %idxprom4 = sext i32 %8 to i64, !dbg !1740
  %arrayidx5 = getelementptr inbounds %struct._xmlCharEncodingAlias, ptr %7, i64 %idxprom4, !dbg !1740
  %name6 = getelementptr inbounds %struct._xmlCharEncodingAlias, ptr %arrayidx5, i32 0, i32 0, !dbg !1742
  %9 = load ptr, ptr %name6, align 8, !dbg !1742, !tbaa !1735
  call void %6(ptr noundef %9), !dbg !1739
  br label %if.end7, !dbg !1739

if.end7:                                          ; preds = %if.then3, %for.body
  %10 = load ptr, ptr @xmlCharEncodingAliases, align 8, !dbg !1743, !tbaa !1148
  %11 = load i32, ptr %i, align 4, !dbg !1745, !tbaa !1185
  %idxprom8 = sext i32 %11 to i64, !dbg !1743
  %arrayidx9 = getelementptr inbounds %struct._xmlCharEncodingAlias, ptr %10, i64 %idxprom8, !dbg !1743
  %alias = getelementptr inbounds %struct._xmlCharEncodingAlias, ptr %arrayidx9, i32 0, i32 1, !dbg !1746
  %12 = load ptr, ptr %alias, align 8, !dbg !1746, !tbaa !1747
  %cmp10 = icmp ne ptr %12, null, !dbg !1748
  br i1 %cmp10, label %if.then11, label %if.end15, !dbg !1749

if.then11:                                        ; preds = %if.end7
  %13 = load ptr, ptr @xmlFree, align 8, !dbg !1750, !tbaa !1148
  %14 = load ptr, ptr @xmlCharEncodingAliases, align 8, !dbg !1751, !tbaa !1148
  %15 = load i32, ptr %i, align 4, !dbg !1752, !tbaa !1185
  %idxprom12 = sext i32 %15 to i64, !dbg !1751
  %arrayidx13 = getelementptr inbounds %struct._xmlCharEncodingAlias, ptr %14, i64 %idxprom12, !dbg !1751
  %alias14 = getelementptr inbounds %struct._xmlCharEncodingAlias, ptr %arrayidx13, i32 0, i32 1, !dbg !1753
  %16 = load ptr, ptr %alias14, align 8, !dbg !1753, !tbaa !1747
  call void %13(ptr noundef %16), !dbg !1750
  br label %if.end15, !dbg !1750

if.end15:                                         ; preds = %if.then11, %if.end7
  br label %for.inc, !dbg !1754

for.inc:                                          ; preds = %if.end15
  %17 = load i32, ptr %i, align 4, !dbg !1755, !tbaa !1185
  %inc = add nsw i32 %17, 1, !dbg !1755
  store i32 %inc, ptr %i, align 4, !dbg !1755, !tbaa !1185
  br label %for.cond, !dbg !1756, !llvm.loop !1757

for.end:                                          ; preds = %for.cond
  store i32 0, ptr @xmlCharEncodingAliasesNb, align 4, !dbg !1759, !tbaa !1185
  store i32 0, ptr @xmlCharEncodingAliasesMax, align 4, !dbg !1760, !tbaa !1185
  %18 = load ptr, ptr @xmlFree, align 8, !dbg !1761, !tbaa !1148
  %19 = load ptr, ptr @xmlCharEncodingAliases, align 8, !dbg !1762, !tbaa !1148
  call void %18(ptr noundef %19), !dbg !1761
  store ptr null, ptr @xmlCharEncodingAliases, align 8, !dbg !1763, !tbaa !1148
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1764
  br label %cleanup, !dbg !1764

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !1764
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1764

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden ptr @xmlGetEncodingAlias__internal_alias(ptr noundef %alias) #0 !dbg !1765 {
entry:
  %retval = alloca ptr, align 8
  %alias.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %upper = alloca [100 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  %__res = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %alias, ptr %alias.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %alias.addr, metadata !1769, metadata !DIExpression()), !dbg !1780
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !1781
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1770, metadata !DIExpression()), !dbg !1782
  call void @llvm.lifetime.start.p0(i64 100, ptr %upper) #9, !dbg !1783
  tail call void @llvm.dbg.declare(metadata ptr %upper, metadata !1771, metadata !DIExpression()), !dbg !1784
  %0 = load ptr, ptr %alias.addr, align 8, !dbg !1785, !tbaa !1148
  %cmp = icmp eq ptr %0, null, !dbg !1787
  br i1 %cmp, label %if.then, label %if.end, !dbg !1788

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1789
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1789

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @xmlCharEncodingAliases, align 8, !dbg !1790, !tbaa !1148
  %cmp1 = icmp eq ptr %1, null, !dbg !1792
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1793

if.then2:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !1794
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1794

if.end3:                                          ; preds = %if.end
  store i32 0, ptr %i, align 4, !dbg !1795, !tbaa !1185
  br label %for.cond, !dbg !1796

for.cond:                                         ; preds = %for.inc, %if.end3
  %2 = load i32, ptr %i, align 4, !dbg !1797, !tbaa !1185
  %cmp4 = icmp slt i32 %2, 99, !dbg !1798
  br i1 %cmp4, label %for.body, label %for.end, !dbg !1799

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res) #9, !dbg !1800
  tail call void @llvm.dbg.declare(metadata ptr %__res, metadata !1775, metadata !DIExpression()), !dbg !1800
  %call = call ptr @__ctype_toupper_loc() #10, !dbg !1801
  %3 = load ptr, ptr %call, align 8, !dbg !1801, !tbaa !1148
  %4 = load ptr, ptr %alias.addr, align 8, !dbg !1801, !tbaa !1148
  %5 = load i32, ptr %i, align 4, !dbg !1801, !tbaa !1185
  %idxprom = sext i32 %5 to i64, !dbg !1801
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %idxprom, !dbg !1801
  %6 = load i8, ptr %arrayidx, align 1, !dbg !1801, !tbaa !1210
  %conv = sext i8 %6 to i32, !dbg !1801
  %idxprom5 = sext i32 %conv to i64, !dbg !1801
  %arrayidx6 = getelementptr inbounds i32, ptr %3, i64 %idxprom5, !dbg !1801
  %7 = load i32, ptr %arrayidx6, align 4, !dbg !1801, !tbaa !1185
  store i32 %7, ptr %__res, align 4, !dbg !1801, !tbaa !1185
  %8 = load i32, ptr %__res, align 4, !dbg !1800, !tbaa !1185
  store i32 %8, ptr %tmp, align 4, !dbg !1801, !tbaa !1185
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res) #9, !dbg !1803
  %9 = load i32, ptr %tmp, align 4, !dbg !1800, !tbaa !1185
  %conv7 = trunc i32 %9 to i8, !dbg !1803
  %10 = load i32, ptr %i, align 4, !dbg !1804, !tbaa !1185
  %idxprom8 = sext i32 %10 to i64, !dbg !1805
  %arrayidx9 = getelementptr inbounds [100 x i8], ptr %upper, i64 0, i64 %idxprom8, !dbg !1805
  store i8 %conv7, ptr %arrayidx9, align 1, !dbg !1806, !tbaa !1210
  %11 = load i32, ptr %i, align 4, !dbg !1807, !tbaa !1185
  %idxprom10 = sext i32 %11 to i64, !dbg !1809
  %arrayidx11 = getelementptr inbounds [100 x i8], ptr %upper, i64 0, i64 %idxprom10, !dbg !1809
  %12 = load i8, ptr %arrayidx11, align 1, !dbg !1809, !tbaa !1210
  %conv12 = sext i8 %12 to i32, !dbg !1809
  %cmp13 = icmp eq i32 %conv12, 0, !dbg !1810
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !1811

if.then15:                                        ; preds = %for.body
  br label %for.end, !dbg !1812

if.end16:                                         ; preds = %for.body
  br label %for.inc, !dbg !1813

for.inc:                                          ; preds = %if.end16
  %13 = load i32, ptr %i, align 4, !dbg !1814, !tbaa !1185
  %inc = add nsw i32 %13, 1, !dbg !1814
  store i32 %inc, ptr %i, align 4, !dbg !1814, !tbaa !1185
  br label %for.cond, !dbg !1815, !llvm.loop !1816

for.end:                                          ; preds = %if.then15, %for.cond
  %14 = load i32, ptr %i, align 4, !dbg !1818, !tbaa !1185
  %idxprom17 = sext i32 %14 to i64, !dbg !1819
  %arrayidx18 = getelementptr inbounds [100 x i8], ptr %upper, i64 0, i64 %idxprom17, !dbg !1819
  store i8 0, ptr %arrayidx18, align 1, !dbg !1820, !tbaa !1210
  store i32 0, ptr %i, align 4, !dbg !1821, !tbaa !1185
  br label %for.cond19, !dbg !1823

for.cond19:                                       ; preds = %for.inc31, %for.end
  %15 = load i32, ptr %i, align 4, !dbg !1824, !tbaa !1185
  %16 = load i32, ptr @xmlCharEncodingAliasesNb, align 4, !dbg !1826, !tbaa !1185
  %cmp20 = icmp slt i32 %15, %16, !dbg !1827
  br i1 %cmp20, label %for.body22, label %for.end33, !dbg !1828

for.body22:                                       ; preds = %for.cond19
  %17 = load ptr, ptr @xmlCharEncodingAliases, align 8, !dbg !1829, !tbaa !1148
  %18 = load i32, ptr %i, align 4, !dbg !1832, !tbaa !1185
  %idxprom23 = sext i32 %18 to i64, !dbg !1829
  %arrayidx24 = getelementptr inbounds %struct._xmlCharEncodingAlias, ptr %17, i64 %idxprom23, !dbg !1829
  %alias25 = getelementptr inbounds %struct._xmlCharEncodingAlias, ptr %arrayidx24, i32 0, i32 1, !dbg !1833
  %19 = load ptr, ptr %alias25, align 8, !dbg !1833, !tbaa !1747
  %arraydecay = getelementptr inbounds [100 x i8], ptr %upper, i64 0, i64 0, !dbg !1834
  %call26 = call i32 @strcmp(ptr noundef %19, ptr noundef %arraydecay) #11, !dbg !1835
  %tobool = icmp ne i32 %call26, 0, !dbg !1835
  br i1 %tobool, label %if.end30, label %if.then27, !dbg !1836

if.then27:                                        ; preds = %for.body22
  %20 = load ptr, ptr @xmlCharEncodingAliases, align 8, !dbg !1837, !tbaa !1148
  %21 = load i32, ptr %i, align 4, !dbg !1839, !tbaa !1185
  %idxprom28 = sext i32 %21 to i64, !dbg !1837
  %arrayidx29 = getelementptr inbounds %struct._xmlCharEncodingAlias, ptr %20, i64 %idxprom28, !dbg !1837
  %name = getelementptr inbounds %struct._xmlCharEncodingAlias, ptr %arrayidx29, i32 0, i32 0, !dbg !1840
  %22 = load ptr, ptr %name, align 8, !dbg !1840, !tbaa !1735
  store ptr %22, ptr %retval, align 8, !dbg !1841
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1841

if.end30:                                         ; preds = %for.body22
  br label %for.inc31, !dbg !1842

for.inc31:                                        ; preds = %if.end30
  %23 = load i32, ptr %i, align 4, !dbg !1843, !tbaa !1185
  %inc32 = add nsw i32 %23, 1, !dbg !1843
  store i32 %inc32, ptr %i, align 4, !dbg !1843, !tbaa !1185
  br label %for.cond19, !dbg !1844, !llvm.loop !1845

for.end33:                                        ; preds = %for.cond19
  store ptr null, ptr %retval, align 8, !dbg !1847
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1847

cleanup:                                          ; preds = %for.end33, %if.then27, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 100, ptr %upper) #9, !dbg !1848
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !1848
  %24 = load ptr, ptr %retval, align 8, !dbg !1848
  ret ptr %24, !dbg !1848
}

; Function Attrs: nounwind willreturn memory(none)
declare !dbg !1849 ptr @__ctype_toupper_loc() #2

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1858 i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define hidden i32 @xmlAddEncodingAlias__internal_alias(ptr noundef %name, ptr noundef %alias) #0 !dbg !1862 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %alias.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %upper = alloca [100 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  %__res = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1864, metadata !DIExpression()), !dbg !1873
  store ptr %alias, ptr %alias.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %alias.addr, metadata !1865, metadata !DIExpression()), !dbg !1874
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !1875
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1866, metadata !DIExpression()), !dbg !1876
  call void @llvm.lifetime.start.p0(i64 100, ptr %upper) #9, !dbg !1877
  tail call void @llvm.dbg.declare(metadata ptr %upper, metadata !1867, metadata !DIExpression()), !dbg !1878
  %0 = load ptr, ptr %name.addr, align 8, !dbg !1879, !tbaa !1148
  %cmp = icmp eq ptr %0, null, !dbg !1881
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1882

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %alias.addr, align 8, !dbg !1883, !tbaa !1148
  %cmp1 = icmp eq ptr %1, null, !dbg !1884
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1885

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4, !dbg !1886
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1886

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, ptr %i, align 4, !dbg !1887, !tbaa !1185
  br label %for.cond, !dbg !1888

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %i, align 4, !dbg !1889, !tbaa !1185
  %cmp2 = icmp slt i32 %2, 99, !dbg !1890
  br i1 %cmp2, label %for.body, label %for.end, !dbg !1891

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res) #9, !dbg !1892
  tail call void @llvm.dbg.declare(metadata ptr %__res, metadata !1868, metadata !DIExpression()), !dbg !1892
  %call = call ptr @__ctype_toupper_loc() #10, !dbg !1893
  %3 = load ptr, ptr %call, align 8, !dbg !1893, !tbaa !1148
  %4 = load ptr, ptr %alias.addr, align 8, !dbg !1893, !tbaa !1148
  %5 = load i32, ptr %i, align 4, !dbg !1893, !tbaa !1185
  %idxprom = sext i32 %5 to i64, !dbg !1893
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %idxprom, !dbg !1893
  %6 = load i8, ptr %arrayidx, align 1, !dbg !1893, !tbaa !1210
  %conv = sext i8 %6 to i32, !dbg !1893
  %idxprom3 = sext i32 %conv to i64, !dbg !1893
  %arrayidx4 = getelementptr inbounds i32, ptr %3, i64 %idxprom3, !dbg !1893
  %7 = load i32, ptr %arrayidx4, align 4, !dbg !1893, !tbaa !1185
  store i32 %7, ptr %__res, align 4, !dbg !1893, !tbaa !1185
  %8 = load i32, ptr %__res, align 4, !dbg !1892, !tbaa !1185
  store i32 %8, ptr %tmp, align 4, !dbg !1893, !tbaa !1185
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res) #9, !dbg !1895
  %9 = load i32, ptr %tmp, align 4, !dbg !1892, !tbaa !1185
  %conv5 = trunc i32 %9 to i8, !dbg !1895
  %10 = load i32, ptr %i, align 4, !dbg !1896, !tbaa !1185
  %idxprom6 = sext i32 %10 to i64, !dbg !1897
  %arrayidx7 = getelementptr inbounds [100 x i8], ptr %upper, i64 0, i64 %idxprom6, !dbg !1897
  store i8 %conv5, ptr %arrayidx7, align 1, !dbg !1898, !tbaa !1210
  %11 = load i32, ptr %i, align 4, !dbg !1899, !tbaa !1185
  %idxprom8 = sext i32 %11 to i64, !dbg !1901
  %arrayidx9 = getelementptr inbounds [100 x i8], ptr %upper, i64 0, i64 %idxprom8, !dbg !1901
  %12 = load i8, ptr %arrayidx9, align 1, !dbg !1901, !tbaa !1210
  %conv10 = sext i8 %12 to i32, !dbg !1901
  %cmp11 = icmp eq i32 %conv10, 0, !dbg !1902
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !1903

if.then13:                                        ; preds = %for.body
  br label %for.end, !dbg !1904

if.end14:                                         ; preds = %for.body
  br label %for.inc, !dbg !1905

for.inc:                                          ; preds = %if.end14
  %13 = load i32, ptr %i, align 4, !dbg !1906, !tbaa !1185
  %inc = add nsw i32 %13, 1, !dbg !1906
  store i32 %inc, ptr %i, align 4, !dbg !1906, !tbaa !1185
  br label %for.cond, !dbg !1907, !llvm.loop !1908

for.end:                                          ; preds = %if.then13, %for.cond
  %14 = load i32, ptr %i, align 4, !dbg !1910, !tbaa !1185
  %idxprom15 = sext i32 %14 to i64, !dbg !1911
  %arrayidx16 = getelementptr inbounds [100 x i8], ptr %upper, i64 0, i64 %idxprom15, !dbg !1911
  store i8 0, ptr %arrayidx16, align 1, !dbg !1912, !tbaa !1210
  %15 = load ptr, ptr @xmlCharEncodingAliases, align 8, !dbg !1913, !tbaa !1148
  %cmp17 = icmp eq ptr %15, null, !dbg !1915
  br i1 %cmp17, label %if.then19, label %if.else, !dbg !1916

if.then19:                                        ; preds = %for.end
  store i32 0, ptr @xmlCharEncodingAliasesNb, align 4, !dbg !1917, !tbaa !1185
  store i32 20, ptr @xmlCharEncodingAliasesMax, align 4, !dbg !1919, !tbaa !1185
  %16 = load ptr, ptr @xmlMalloc, align 8, !dbg !1920, !tbaa !1148
  %17 = load i32, ptr @xmlCharEncodingAliasesMax, align 4, !dbg !1921, !tbaa !1185
  %conv20 = sext i32 %17 to i64, !dbg !1921
  %mul = mul i64 %conv20, 16, !dbg !1922
  %call21 = call ptr %16(i64 noundef %mul), !dbg !1920
  store ptr %call21, ptr @xmlCharEncodingAliases, align 8, !dbg !1923, !tbaa !1148
  %18 = load ptr, ptr @xmlCharEncodingAliases, align 8, !dbg !1924, !tbaa !1148
  %cmp22 = icmp eq ptr %18, null, !dbg !1926
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !1927

if.then24:                                        ; preds = %if.then19
  store i32 -1, ptr %retval, align 4, !dbg !1928
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1928

if.end25:                                         ; preds = %if.then19
  br label %if.end34, !dbg !1929

if.else:                                          ; preds = %for.end
  %19 = load i32, ptr @xmlCharEncodingAliasesNb, align 4, !dbg !1930, !tbaa !1185
  %20 = load i32, ptr @xmlCharEncodingAliasesMax, align 4, !dbg !1932, !tbaa !1185
  %cmp26 = icmp sge i32 %19, %20, !dbg !1933
  br i1 %cmp26, label %if.then28, label %if.end33, !dbg !1934

if.then28:                                        ; preds = %if.else
  %21 = load i32, ptr @xmlCharEncodingAliasesMax, align 4, !dbg !1935, !tbaa !1185
  %mul29 = mul nsw i32 %21, 2, !dbg !1935
  store i32 %mul29, ptr @xmlCharEncodingAliasesMax, align 4, !dbg !1935, !tbaa !1185
  %22 = load ptr, ptr @xmlRealloc, align 8, !dbg !1937, !tbaa !1148
  %23 = load ptr, ptr @xmlCharEncodingAliases, align 8, !dbg !1938, !tbaa !1148
  %24 = load i32, ptr @xmlCharEncodingAliasesMax, align 4, !dbg !1939, !tbaa !1185
  %conv30 = sext i32 %24 to i64, !dbg !1939
  %mul31 = mul i64 %conv30, 16, !dbg !1940
  %call32 = call ptr %22(ptr noundef %23, i64 noundef %mul31), !dbg !1937
  store ptr %call32, ptr @xmlCharEncodingAliases, align 8, !dbg !1941, !tbaa !1148
  br label %if.end33, !dbg !1942

if.end33:                                         ; preds = %if.then28, %if.else
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.end25
  store i32 0, ptr %i, align 4, !dbg !1943, !tbaa !1185
  br label %for.cond35, !dbg !1945

for.cond35:                                       ; preds = %for.inc52, %if.end34
  %25 = load i32, ptr %i, align 4, !dbg !1946, !tbaa !1185
  %26 = load i32, ptr @xmlCharEncodingAliasesNb, align 4, !dbg !1948, !tbaa !1185
  %cmp36 = icmp slt i32 %25, %26, !dbg !1949
  br i1 %cmp36, label %for.body38, label %for.end54, !dbg !1950

for.body38:                                       ; preds = %for.cond35
  %27 = load ptr, ptr @xmlCharEncodingAliases, align 8, !dbg !1951, !tbaa !1148
  %28 = load i32, ptr %i, align 4, !dbg !1954, !tbaa !1185
  %idxprom39 = sext i32 %28 to i64, !dbg !1951
  %arrayidx40 = getelementptr inbounds %struct._xmlCharEncodingAlias, ptr %27, i64 %idxprom39, !dbg !1951
  %alias41 = getelementptr inbounds %struct._xmlCharEncodingAlias, ptr %arrayidx40, i32 0, i32 1, !dbg !1955
  %29 = load ptr, ptr %alias41, align 8, !dbg !1955, !tbaa !1747
  %arraydecay = getelementptr inbounds [100 x i8], ptr %upper, i64 0, i64 0, !dbg !1956
  %call42 = call i32 @strcmp(ptr noundef %29, ptr noundef %arraydecay) #11, !dbg !1957
  %tobool = icmp ne i32 %call42, 0, !dbg !1957
  br i1 %tobool, label %if.end51, label %if.then43, !dbg !1958

if.then43:                                        ; preds = %for.body38
  %30 = load ptr, ptr @xmlFree, align 8, !dbg !1959, !tbaa !1148
  %31 = load ptr, ptr @xmlCharEncodingAliases, align 8, !dbg !1961, !tbaa !1148
  %32 = load i32, ptr %i, align 4, !dbg !1962, !tbaa !1185
  %idxprom44 = sext i32 %32 to i64, !dbg !1961
  %arrayidx45 = getelementptr inbounds %struct._xmlCharEncodingAlias, ptr %31, i64 %idxprom44, !dbg !1961
  %name46 = getelementptr inbounds %struct._xmlCharEncodingAlias, ptr %arrayidx45, i32 0, i32 0, !dbg !1963
  %33 = load ptr, ptr %name46, align 8, !dbg !1963, !tbaa !1735
  call void %30(ptr noundef %33), !dbg !1959
  %34 = load ptr, ptr @xmlMemStrdup, align 8, !dbg !1964, !tbaa !1148
  %35 = load ptr, ptr %name.addr, align 8, !dbg !1965, !tbaa !1148
  %call47 = call ptr %34(ptr noundef %35), !dbg !1964
  %36 = load ptr, ptr @xmlCharEncodingAliases, align 8, !dbg !1966, !tbaa !1148
  %37 = load i32, ptr %i, align 4, !dbg !1967, !tbaa !1185
  %idxprom48 = sext i32 %37 to i64, !dbg !1966
  %arrayidx49 = getelementptr inbounds %struct._xmlCharEncodingAlias, ptr %36, i64 %idxprom48, !dbg !1966
  %name50 = getelementptr inbounds %struct._xmlCharEncodingAlias, ptr %arrayidx49, i32 0, i32 0, !dbg !1968
  store ptr %call47, ptr %name50, align 8, !dbg !1969, !tbaa !1735
  store i32 0, ptr %retval, align 4, !dbg !1970
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1970

if.end51:                                         ; preds = %for.body38
  br label %for.inc52, !dbg !1971

for.inc52:                                        ; preds = %if.end51
  %38 = load i32, ptr %i, align 4, !dbg !1972, !tbaa !1185
  %inc53 = add nsw i32 %38, 1, !dbg !1972
  store i32 %inc53, ptr %i, align 4, !dbg !1972, !tbaa !1185
  br label %for.cond35, !dbg !1973, !llvm.loop !1974

for.end54:                                        ; preds = %for.cond35
  %39 = load ptr, ptr @xmlMemStrdup, align 8, !dbg !1976, !tbaa !1148
  %40 = load ptr, ptr %name.addr, align 8, !dbg !1977, !tbaa !1148
  %call55 = call ptr %39(ptr noundef %40), !dbg !1976
  %41 = load ptr, ptr @xmlCharEncodingAliases, align 8, !dbg !1978, !tbaa !1148
  %42 = load i32, ptr @xmlCharEncodingAliasesNb, align 4, !dbg !1979, !tbaa !1185
  %idxprom56 = sext i32 %42 to i64, !dbg !1978
  %arrayidx57 = getelementptr inbounds %struct._xmlCharEncodingAlias, ptr %41, i64 %idxprom56, !dbg !1978
  %name58 = getelementptr inbounds %struct._xmlCharEncodingAlias, ptr %arrayidx57, i32 0, i32 0, !dbg !1980
  store ptr %call55, ptr %name58, align 8, !dbg !1981, !tbaa !1735
  %43 = load ptr, ptr @xmlMemStrdup, align 8, !dbg !1982, !tbaa !1148
  %arraydecay59 = getelementptr inbounds [100 x i8], ptr %upper, i64 0, i64 0, !dbg !1983
  %call60 = call ptr %43(ptr noundef %arraydecay59), !dbg !1982
  %44 = load ptr, ptr @xmlCharEncodingAliases, align 8, !dbg !1984, !tbaa !1148
  %45 = load i32, ptr @xmlCharEncodingAliasesNb, align 4, !dbg !1985, !tbaa !1185
  %idxprom61 = sext i32 %45 to i64, !dbg !1984
  %arrayidx62 = getelementptr inbounds %struct._xmlCharEncodingAlias, ptr %44, i64 %idxprom61, !dbg !1984
  %alias63 = getelementptr inbounds %struct._xmlCharEncodingAlias, ptr %arrayidx62, i32 0, i32 1, !dbg !1986
  store ptr %call60, ptr %alias63, align 8, !dbg !1987, !tbaa !1747
  %46 = load i32, ptr @xmlCharEncodingAliasesNb, align 4, !dbg !1988, !tbaa !1185
  %inc64 = add nsw i32 %46, 1, !dbg !1988
  store i32 %inc64, ptr @xmlCharEncodingAliasesNb, align 4, !dbg !1988, !tbaa !1185
  store i32 0, ptr %retval, align 4, !dbg !1989
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1989

cleanup:                                          ; preds = %for.end54, %if.then43, %if.then24, %if.then
  call void @llvm.lifetime.end.p0(i64 100, ptr %upper) #9, !dbg !1990
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !1990
  %47 = load i32, ptr %retval, align 4, !dbg !1990
  ret i32 %47, !dbg !1990
}

; Function Attrs: nounwind uwtable
define hidden i32 @xmlDelEncodingAlias__internal_alias(ptr noundef %alias) #0 !dbg !1991 {
entry:
  %retval = alloca i32, align 4
  %alias.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %alias, ptr %alias.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %alias.addr, metadata !1995, metadata !DIExpression()), !dbg !1997
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !1998
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1996, metadata !DIExpression()), !dbg !1999
  %0 = load ptr, ptr %alias.addr, align 8, !dbg !2000, !tbaa !1148
  %cmp = icmp eq ptr %0, null, !dbg !2002
  br i1 %cmp, label %if.then, label %if.end, !dbg !2003

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !2004
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2004

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @xmlCharEncodingAliases, align 8, !dbg !2005, !tbaa !1148
  %cmp1 = icmp eq ptr %1, null, !dbg !2007
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !2008

if.then2:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4, !dbg !2009
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2009

if.end3:                                          ; preds = %if.end
  store i32 0, ptr %i, align 4, !dbg !2010, !tbaa !1185
  br label %for.cond, !dbg !2012

for.cond:                                         ; preds = %for.inc, %if.end3
  %2 = load i32, ptr %i, align 4, !dbg !2013, !tbaa !1185
  %3 = load i32, ptr @xmlCharEncodingAliasesNb, align 4, !dbg !2015, !tbaa !1185
  %cmp4 = icmp slt i32 %2, %3, !dbg !2016
  br i1 %cmp4, label %for.body, label %for.end, !dbg !2017

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr @xmlCharEncodingAliases, align 8, !dbg !2018, !tbaa !1148
  %5 = load i32, ptr %i, align 4, !dbg !2021, !tbaa !1185
  %idxprom = sext i32 %5 to i64, !dbg !2018
  %arrayidx = getelementptr inbounds %struct._xmlCharEncodingAlias, ptr %4, i64 %idxprom, !dbg !2018
  %alias5 = getelementptr inbounds %struct._xmlCharEncodingAlias, ptr %arrayidx, i32 0, i32 1, !dbg !2022
  %6 = load ptr, ptr %alias5, align 8, !dbg !2022, !tbaa !1747
  %7 = load ptr, ptr %alias.addr, align 8, !dbg !2023, !tbaa !1148
  %call = call i32 @strcmp(ptr noundef %6, ptr noundef %7) #11, !dbg !2024
  %tobool = icmp ne i32 %call, 0, !dbg !2024
  br i1 %tobool, label %if.end16, label %if.then6, !dbg !2025

if.then6:                                         ; preds = %for.body
  %8 = load ptr, ptr @xmlFree, align 8, !dbg !2026, !tbaa !1148
  %9 = load ptr, ptr @xmlCharEncodingAliases, align 8, !dbg !2028, !tbaa !1148
  %10 = load i32, ptr %i, align 4, !dbg !2029, !tbaa !1185
  %idxprom7 = sext i32 %10 to i64, !dbg !2028
  %arrayidx8 = getelementptr inbounds %struct._xmlCharEncodingAlias, ptr %9, i64 %idxprom7, !dbg !2028
  %name = getelementptr inbounds %struct._xmlCharEncodingAlias, ptr %arrayidx8, i32 0, i32 0, !dbg !2030
  %11 = load ptr, ptr %name, align 8, !dbg !2030, !tbaa !1735
  call void %8(ptr noundef %11), !dbg !2026
  %12 = load ptr, ptr @xmlFree, align 8, !dbg !2031, !tbaa !1148
  %13 = load ptr, ptr @xmlCharEncodingAliases, align 8, !dbg !2032, !tbaa !1148
  %14 = load i32, ptr %i, align 4, !dbg !2033, !tbaa !1185
  %idxprom9 = sext i32 %14 to i64, !dbg !2032
  %arrayidx10 = getelementptr inbounds %struct._xmlCharEncodingAlias, ptr %13, i64 %idxprom9, !dbg !2032
  %alias11 = getelementptr inbounds %struct._xmlCharEncodingAlias, ptr %arrayidx10, i32 0, i32 1, !dbg !2034
  %15 = load ptr, ptr %alias11, align 8, !dbg !2034, !tbaa !1747
  call void %12(ptr noundef %15), !dbg !2031
  %16 = load i32, ptr @xmlCharEncodingAliasesNb, align 4, !dbg !2035, !tbaa !1185
  %dec = add nsw i32 %16, -1, !dbg !2035
  store i32 %dec, ptr @xmlCharEncodingAliasesNb, align 4, !dbg !2035, !tbaa !1185
  %17 = load ptr, ptr @xmlCharEncodingAliases, align 8, !dbg !2036, !tbaa !1148
  %18 = load i32, ptr %i, align 4, !dbg !2037, !tbaa !1185
  %idxprom12 = sext i32 %18 to i64, !dbg !2036
  %arrayidx13 = getelementptr inbounds %struct._xmlCharEncodingAlias, ptr %17, i64 %idxprom12, !dbg !2036
  %19 = load ptr, ptr @xmlCharEncodingAliases, align 8, !dbg !2038, !tbaa !1148
  %20 = load i32, ptr %i, align 4, !dbg !2039, !tbaa !1185
  %add = add nsw i32 %20, 1, !dbg !2040
  %idxprom14 = sext i32 %add to i64, !dbg !2038
  %arrayidx15 = getelementptr inbounds %struct._xmlCharEncodingAlias, ptr %19, i64 %idxprom14, !dbg !2038
  %21 = load i32, ptr @xmlCharEncodingAliasesNb, align 4, !dbg !2041, !tbaa !1185
  %22 = load i32, ptr %i, align 4, !dbg !2042, !tbaa !1185
  %sub = sub nsw i32 %21, %22, !dbg !2043
  %conv = sext i32 %sub to i64, !dbg !2044
  %mul = mul i64 16, %conv, !dbg !2045
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %arrayidx13, ptr align 8 %arrayidx15, i64 %mul, i1 false), !dbg !2046
  store i32 0, ptr %retval, align 4, !dbg !2047
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2047

if.end16:                                         ; preds = %for.body
  br label %for.inc, !dbg !2048

for.inc:                                          ; preds = %if.end16
  %23 = load i32, ptr %i, align 4, !dbg !2049, !tbaa !1185
  %inc = add nsw i32 %23, 1, !dbg !2049
  store i32 %inc, ptr %i, align 4, !dbg !2049, !tbaa !1185
  br label %for.cond, !dbg !2050, !llvm.loop !2051

for.end:                                          ; preds = %for.cond
  store i32 -1, ptr %retval, align 4, !dbg !2053
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2053

cleanup:                                          ; preds = %for.end, %if.then6, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !2054
  %24 = load i32, ptr %retval, align 4, !dbg !2054
  ret i32 %24, !dbg !2054
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define hidden i32 @xmlParseCharEncoding__internal_alias(ptr noundef %name) #0 !dbg !2055 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %alias = alloca ptr, align 8
  %upper = alloca [500 x i8], align 16
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__res = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !2059, metadata !DIExpression()), !dbg !2071
  call void @llvm.lifetime.start.p0(i64 8, ptr %alias) #9, !dbg !2072
  tail call void @llvm.dbg.declare(metadata ptr %alias, metadata !2060, metadata !DIExpression()), !dbg !2073
  call void @llvm.lifetime.start.p0(i64 500, ptr %upper) #9, !dbg !2074
  tail call void @llvm.dbg.declare(metadata ptr %upper, metadata !2061, metadata !DIExpression()), !dbg !2075
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !2076
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2065, metadata !DIExpression()), !dbg !2077
  %0 = load ptr, ptr %name.addr, align 8, !dbg !2078, !tbaa !1148
  %cmp = icmp eq ptr %0, null, !dbg !2080
  br i1 %cmp, label %if.then, label %if.end, !dbg !2081

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2082
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2082

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %name.addr, align 8, !dbg !2083, !tbaa !1148
  %call = call ptr @xmlGetEncodingAlias__internal_alias(ptr noundef %1), !dbg !2084
  store ptr %call, ptr %alias, align 8, !dbg !2085, !tbaa !1148
  %2 = load ptr, ptr %alias, align 8, !dbg !2086, !tbaa !1148
  %cmp1 = icmp ne ptr %2, null, !dbg !2088
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !2089

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %alias, align 8, !dbg !2090, !tbaa !1148
  store ptr %3, ptr %name.addr, align 8, !dbg !2091, !tbaa !1148
  br label %if.end3, !dbg !2092

if.end3:                                          ; preds = %if.then2, %if.end
  store i32 0, ptr %i, align 4, !dbg !2093, !tbaa !1185
  br label %for.cond, !dbg !2094

for.cond:                                         ; preds = %for.inc, %if.end3
  %4 = load i32, ptr %i, align 4, !dbg !2095, !tbaa !1185
  %cmp4 = icmp slt i32 %4, 499, !dbg !2096
  br i1 %cmp4, label %for.body, label %for.end, !dbg !2097

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res) #9, !dbg !2098
  tail call void @llvm.dbg.declare(metadata ptr %__res, metadata !2066, metadata !DIExpression()), !dbg !2098
  %call5 = call ptr @__ctype_toupper_loc() #10, !dbg !2099
  %5 = load ptr, ptr %call5, align 8, !dbg !2099, !tbaa !1148
  %6 = load ptr, ptr %name.addr, align 8, !dbg !2099, !tbaa !1148
  %7 = load i32, ptr %i, align 4, !dbg !2099, !tbaa !1185
  %idxprom = sext i32 %7 to i64, !dbg !2099
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 %idxprom, !dbg !2099
  %8 = load i8, ptr %arrayidx, align 1, !dbg !2099, !tbaa !1210
  %conv = sext i8 %8 to i32, !dbg !2099
  %idxprom6 = sext i32 %conv to i64, !dbg !2099
  %arrayidx7 = getelementptr inbounds i32, ptr %5, i64 %idxprom6, !dbg !2099
  %9 = load i32, ptr %arrayidx7, align 4, !dbg !2099, !tbaa !1185
  store i32 %9, ptr %__res, align 4, !dbg !2099, !tbaa !1185
  %10 = load i32, ptr %__res, align 4, !dbg !2098, !tbaa !1185
  store i32 %10, ptr %tmp, align 4, !dbg !2099, !tbaa !1185
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res) #9, !dbg !2101
  %11 = load i32, ptr %tmp, align 4, !dbg !2098, !tbaa !1185
  %conv8 = trunc i32 %11 to i8, !dbg !2101
  %12 = load i32, ptr %i, align 4, !dbg !2102, !tbaa !1185
  %idxprom9 = sext i32 %12 to i64, !dbg !2103
  %arrayidx10 = getelementptr inbounds [500 x i8], ptr %upper, i64 0, i64 %idxprom9, !dbg !2103
  store i8 %conv8, ptr %arrayidx10, align 1, !dbg !2104, !tbaa !1210
  %13 = load i32, ptr %i, align 4, !dbg !2105, !tbaa !1185
  %idxprom11 = sext i32 %13 to i64, !dbg !2107
  %arrayidx12 = getelementptr inbounds [500 x i8], ptr %upper, i64 0, i64 %idxprom11, !dbg !2107
  %14 = load i8, ptr %arrayidx12, align 1, !dbg !2107, !tbaa !1210
  %conv13 = sext i8 %14 to i32, !dbg !2107
  %cmp14 = icmp eq i32 %conv13, 0, !dbg !2108
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !2109

if.then16:                                        ; preds = %for.body
  br label %for.end, !dbg !2110

if.end17:                                         ; preds = %for.body
  br label %for.inc, !dbg !2111

for.inc:                                          ; preds = %if.end17
  %15 = load i32, ptr %i, align 4, !dbg !2112, !tbaa !1185
  %inc = add nsw i32 %15, 1, !dbg !2112
  store i32 %inc, ptr %i, align 4, !dbg !2112, !tbaa !1185
  br label %for.cond, !dbg !2113, !llvm.loop !2114

for.end:                                          ; preds = %if.then16, %for.cond
  %16 = load i32, ptr %i, align 4, !dbg !2116, !tbaa !1185
  %idxprom18 = sext i32 %16 to i64, !dbg !2117
  %arrayidx19 = getelementptr inbounds [500 x i8], ptr %upper, i64 0, i64 %idxprom18, !dbg !2117
  store i8 0, ptr %arrayidx19, align 1, !dbg !2118, !tbaa !1210
  %arraydecay = getelementptr inbounds [500 x i8], ptr %upper, i64 0, i64 0, !dbg !2119
  %call20 = call i32 @strcmp(ptr noundef %arraydecay, ptr noundef @.str) #11, !dbg !2121
  %tobool = icmp ne i32 %call20, 0, !dbg !2121
  br i1 %tobool, label %if.end22, label %if.then21, !dbg !2122

if.then21:                                        ; preds = %for.end
  store i32 0, ptr %retval, align 4, !dbg !2123
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2123

if.end22:                                         ; preds = %for.end
  %arraydecay23 = getelementptr inbounds [500 x i8], ptr %upper, i64 0, i64 0, !dbg !2124
  %call24 = call i32 @strcmp(ptr noundef %arraydecay23, ptr noundef @.str.1) #11, !dbg !2126
  %tobool25 = icmp ne i32 %call24, 0, !dbg !2126
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !2127

if.then26:                                        ; preds = %if.end22
  store i32 1, ptr %retval, align 4, !dbg !2128
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2128

if.end27:                                         ; preds = %if.end22
  %arraydecay28 = getelementptr inbounds [500 x i8], ptr %upper, i64 0, i64 0, !dbg !2129
  %call29 = call i32 @strcmp(ptr noundef %arraydecay28, ptr noundef @.str.2) #11, !dbg !2131
  %tobool30 = icmp ne i32 %call29, 0, !dbg !2131
  br i1 %tobool30, label %if.end32, label %if.then31, !dbg !2132

if.then31:                                        ; preds = %if.end27
  store i32 1, ptr %retval, align 4, !dbg !2133
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2133

if.end32:                                         ; preds = %if.end27
  %arraydecay33 = getelementptr inbounds [500 x i8], ptr %upper, i64 0, i64 0, !dbg !2134
  %call34 = call i32 @strcmp(ptr noundef %arraydecay33, ptr noundef @.str.3) #11, !dbg !2136
  %tobool35 = icmp ne i32 %call34, 0, !dbg !2136
  br i1 %tobool35, label %if.end37, label %if.then36, !dbg !2137

if.then36:                                        ; preds = %if.end32
  store i32 2, ptr %retval, align 4, !dbg !2138
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2138

if.end37:                                         ; preds = %if.end32
  %arraydecay38 = getelementptr inbounds [500 x i8], ptr %upper, i64 0, i64 0, !dbg !2139
  %call39 = call i32 @strcmp(ptr noundef %arraydecay38, ptr noundef @.str.4) #11, !dbg !2141
  %tobool40 = icmp ne i32 %call39, 0, !dbg !2141
  br i1 %tobool40, label %if.end42, label %if.then41, !dbg !2142

if.then41:                                        ; preds = %if.end37
  store i32 2, ptr %retval, align 4, !dbg !2143
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2143

if.end42:                                         ; preds = %if.end37
  %arraydecay43 = getelementptr inbounds [500 x i8], ptr %upper, i64 0, i64 0, !dbg !2144
  %call44 = call i32 @strcmp(ptr noundef %arraydecay43, ptr noundef @.str.5) #11, !dbg !2146
  %tobool45 = icmp ne i32 %call44, 0, !dbg !2146
  br i1 %tobool45, label %if.end47, label %if.then46, !dbg !2147

if.then46:                                        ; preds = %if.end42
  store i32 9, ptr %retval, align 4, !dbg !2148
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2148

if.end47:                                         ; preds = %if.end42
  %arraydecay48 = getelementptr inbounds [500 x i8], ptr %upper, i64 0, i64 0, !dbg !2149
  %call49 = call i32 @strcmp(ptr noundef %arraydecay48, ptr noundef @.str.6) #11, !dbg !2151
  %tobool50 = icmp ne i32 %call49, 0, !dbg !2151
  br i1 %tobool50, label %if.end52, label %if.then51, !dbg !2152

if.then51:                                        ; preds = %if.end47
  store i32 9, ptr %retval, align 4, !dbg !2153
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2153

if.end52:                                         ; preds = %if.end47
  %arraydecay53 = getelementptr inbounds [500 x i8], ptr %upper, i64 0, i64 0, !dbg !2154
  %call54 = call i32 @strcmp(ptr noundef %arraydecay53, ptr noundef @.str.7) #11, !dbg !2156
  %tobool55 = icmp ne i32 %call54, 0, !dbg !2156
  br i1 %tobool55, label %if.end57, label %if.then56, !dbg !2157

if.then56:                                        ; preds = %if.end52
  store i32 9, ptr %retval, align 4, !dbg !2158
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2158

if.end57:                                         ; preds = %if.end52
  %arraydecay58 = getelementptr inbounds [500 x i8], ptr %upper, i64 0, i64 0, !dbg !2159
  %call59 = call i32 @strcmp(ptr noundef %arraydecay58, ptr noundef @.str.8) #11, !dbg !2161
  %tobool60 = icmp ne i32 %call59, 0, !dbg !2161
  br i1 %tobool60, label %if.end62, label %if.then61, !dbg !2162

if.then61:                                        ; preds = %if.end57
  store i32 4, ptr %retval, align 4, !dbg !2163
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2163

if.end62:                                         ; preds = %if.end57
  %arraydecay63 = getelementptr inbounds [500 x i8], ptr %upper, i64 0, i64 0, !dbg !2164
  %call64 = call i32 @strcmp(ptr noundef %arraydecay63, ptr noundef @.str.9) #11, !dbg !2166
  %tobool65 = icmp ne i32 %call64, 0, !dbg !2166
  br i1 %tobool65, label %if.end67, label %if.then66, !dbg !2167

if.then66:                                        ; preds = %if.end62
  store i32 4, ptr %retval, align 4, !dbg !2168
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2168

if.end67:                                         ; preds = %if.end62
  %arraydecay68 = getelementptr inbounds [500 x i8], ptr %upper, i64 0, i64 0, !dbg !2169
  %call69 = call i32 @strcmp(ptr noundef %arraydecay68, ptr noundef @.str.10) #11, !dbg !2171
  %tobool70 = icmp ne i32 %call69, 0, !dbg !2171
  br i1 %tobool70, label %if.end72, label %if.then71, !dbg !2172

if.then71:                                        ; preds = %if.end67
  store i32 4, ptr %retval, align 4, !dbg !2173
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2173

if.end72:                                         ; preds = %if.end67
  %arraydecay73 = getelementptr inbounds [500 x i8], ptr %upper, i64 0, i64 0, !dbg !2174
  %call74 = call i32 @strcmp(ptr noundef %arraydecay73, ptr noundef @.str.11) #11, !dbg !2176
  %tobool75 = icmp ne i32 %call74, 0, !dbg !2176
  br i1 %tobool75, label %if.end77, label %if.then76, !dbg !2177

if.then76:                                        ; preds = %if.end72
  store i32 10, ptr %retval, align 4, !dbg !2178
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2178

if.end77:                                         ; preds = %if.end72
  %arraydecay78 = getelementptr inbounds [500 x i8], ptr %upper, i64 0, i64 0, !dbg !2179
  %call79 = call i32 @strcmp(ptr noundef %arraydecay78, ptr noundef @.str.12) #11, !dbg !2181
  %tobool80 = icmp ne i32 %call79, 0, !dbg !2181
  br i1 %tobool80, label %if.end82, label %if.then81, !dbg !2182

if.then81:                                        ; preds = %if.end77
  store i32 10, ptr %retval, align 4, !dbg !2183
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2183

if.end82:                                         ; preds = %if.end77
  %arraydecay83 = getelementptr inbounds [500 x i8], ptr %upper, i64 0, i64 0, !dbg !2184
  %call84 = call i32 @strcmp(ptr noundef %arraydecay83, ptr noundef @.str.13) #11, !dbg !2186
  %tobool85 = icmp ne i32 %call84, 0, !dbg !2186
  br i1 %tobool85, label %if.end87, label %if.then86, !dbg !2187

if.then86:                                        ; preds = %if.end82
  store i32 10, ptr %retval, align 4, !dbg !2188
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2188

if.end87:                                         ; preds = %if.end82
  %arraydecay88 = getelementptr inbounds [500 x i8], ptr %upper, i64 0, i64 0, !dbg !2189
  %call89 = call i32 @strcmp(ptr noundef %arraydecay88, ptr noundef @.str.14) #11, !dbg !2191
  %tobool90 = icmp ne i32 %call89, 0, !dbg !2191
  br i1 %tobool90, label %if.end92, label %if.then91, !dbg !2192

if.then91:                                        ; preds = %if.end87
  store i32 11, ptr %retval, align 4, !dbg !2193
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2193

if.end92:                                         ; preds = %if.end87
  %arraydecay93 = getelementptr inbounds [500 x i8], ptr %upper, i64 0, i64 0, !dbg !2194
  %call94 = call i32 @strcmp(ptr noundef %arraydecay93, ptr noundef @.str.15) #11, !dbg !2196
  %tobool95 = icmp ne i32 %call94, 0, !dbg !2196
  br i1 %tobool95, label %if.end97, label %if.then96, !dbg !2197

if.then96:                                        ; preds = %if.end92
  store i32 11, ptr %retval, align 4, !dbg !2198
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2198

if.end97:                                         ; preds = %if.end92
  %arraydecay98 = getelementptr inbounds [500 x i8], ptr %upper, i64 0, i64 0, !dbg !2199
  %call99 = call i32 @strcmp(ptr noundef %arraydecay98, ptr noundef @.str.16) #11, !dbg !2201
  %tobool100 = icmp ne i32 %call99, 0, !dbg !2201
  br i1 %tobool100, label %if.end102, label %if.then101, !dbg !2202

if.then101:                                       ; preds = %if.end97
  store i32 11, ptr %retval, align 4, !dbg !2203
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2203

if.end102:                                        ; preds = %if.end97
  %arraydecay103 = getelementptr inbounds [500 x i8], ptr %upper, i64 0, i64 0, !dbg !2204
  %call104 = call i32 @strcmp(ptr noundef %arraydecay103, ptr noundef @.str.17) #11, !dbg !2206
  %tobool105 = icmp ne i32 %call104, 0, !dbg !2206
  br i1 %tobool105, label %if.end107, label %if.then106, !dbg !2207

if.then106:                                       ; preds = %if.end102
  store i32 12, ptr %retval, align 4, !dbg !2208
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2208

if.end107:                                        ; preds = %if.end102
  %arraydecay108 = getelementptr inbounds [500 x i8], ptr %upper, i64 0, i64 0, !dbg !2209
  %call109 = call i32 @strcmp(ptr noundef %arraydecay108, ptr noundef @.str.18) #11, !dbg !2211
  %tobool110 = icmp ne i32 %call109, 0, !dbg !2211
  br i1 %tobool110, label %if.end112, label %if.then111, !dbg !2212

if.then111:                                       ; preds = %if.end107
  store i32 13, ptr %retval, align 4, !dbg !2213
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2213

if.end112:                                        ; preds = %if.end107
  %arraydecay113 = getelementptr inbounds [500 x i8], ptr %upper, i64 0, i64 0, !dbg !2214
  %call114 = call i32 @strcmp(ptr noundef %arraydecay113, ptr noundef @.str.19) #11, !dbg !2216
  %tobool115 = icmp ne i32 %call114, 0, !dbg !2216
  br i1 %tobool115, label %if.end117, label %if.then116, !dbg !2217

if.then116:                                       ; preds = %if.end112
  store i32 14, ptr %retval, align 4, !dbg !2218
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2218

if.end117:                                        ; preds = %if.end112
  %arraydecay118 = getelementptr inbounds [500 x i8], ptr %upper, i64 0, i64 0, !dbg !2219
  %call119 = call i32 @strcmp(ptr noundef %arraydecay118, ptr noundef @.str.20) #11, !dbg !2221
  %tobool120 = icmp ne i32 %call119, 0, !dbg !2221
  br i1 %tobool120, label %if.end122, label %if.then121, !dbg !2222

if.then121:                                       ; preds = %if.end117
  store i32 15, ptr %retval, align 4, !dbg !2223
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2223

if.end122:                                        ; preds = %if.end117
  %arraydecay123 = getelementptr inbounds [500 x i8], ptr %upper, i64 0, i64 0, !dbg !2224
  %call124 = call i32 @strcmp(ptr noundef %arraydecay123, ptr noundef @.str.21) #11, !dbg !2226
  %tobool125 = icmp ne i32 %call124, 0, !dbg !2226
  br i1 %tobool125, label %if.end127, label %if.then126, !dbg !2227

if.then126:                                       ; preds = %if.end122
  store i32 16, ptr %retval, align 4, !dbg !2228
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2228

if.end127:                                        ; preds = %if.end122
  %arraydecay128 = getelementptr inbounds [500 x i8], ptr %upper, i64 0, i64 0, !dbg !2229
  %call129 = call i32 @strcmp(ptr noundef %arraydecay128, ptr noundef @.str.22) #11, !dbg !2231
  %tobool130 = icmp ne i32 %call129, 0, !dbg !2231
  br i1 %tobool130, label %if.end132, label %if.then131, !dbg !2232

if.then131:                                       ; preds = %if.end127
  store i32 17, ptr %retval, align 4, !dbg !2233
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2233

if.end132:                                        ; preds = %if.end127
  %arraydecay133 = getelementptr inbounds [500 x i8], ptr %upper, i64 0, i64 0, !dbg !2234
  %call134 = call i32 @strcmp(ptr noundef %arraydecay133, ptr noundef @.str.23) #11, !dbg !2236
  %tobool135 = icmp ne i32 %call134, 0, !dbg !2236
  br i1 %tobool135, label %if.end137, label %if.then136, !dbg !2237

if.then136:                                       ; preds = %if.end132
  store i32 18, ptr %retval, align 4, !dbg !2238
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2238

if.end137:                                        ; preds = %if.end132
  %arraydecay138 = getelementptr inbounds [500 x i8], ptr %upper, i64 0, i64 0, !dbg !2239
  %call139 = call i32 @strcmp(ptr noundef %arraydecay138, ptr noundef @.str.24) #11, !dbg !2241
  %tobool140 = icmp ne i32 %call139, 0, !dbg !2241
  br i1 %tobool140, label %if.end142, label %if.then141, !dbg !2242

if.then141:                                       ; preds = %if.end137
  store i32 19, ptr %retval, align 4, !dbg !2243
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2243

if.end142:                                        ; preds = %if.end137
  %arraydecay143 = getelementptr inbounds [500 x i8], ptr %upper, i64 0, i64 0, !dbg !2244
  %call144 = call i32 @strcmp(ptr noundef %arraydecay143, ptr noundef @.str.25) #11, !dbg !2246
  %tobool145 = icmp ne i32 %call144, 0, !dbg !2246
  br i1 %tobool145, label %if.end147, label %if.then146, !dbg !2247

if.then146:                                       ; preds = %if.end142
  store i32 20, ptr %retval, align 4, !dbg !2248
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2248

if.end147:                                        ; preds = %if.end142
  %arraydecay148 = getelementptr inbounds [500 x i8], ptr %upper, i64 0, i64 0, !dbg !2249
  %call149 = call i32 @strcmp(ptr noundef %arraydecay148, ptr noundef @.str.26) #11, !dbg !2251
  %tobool150 = icmp ne i32 %call149, 0, !dbg !2251
  br i1 %tobool150, label %if.end152, label %if.then151, !dbg !2252

if.then151:                                       ; preds = %if.end147
  store i32 21, ptr %retval, align 4, !dbg !2253
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2253

if.end152:                                        ; preds = %if.end147
  store i32 -1, ptr %retval, align 4, !dbg !2254
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2254

cleanup:                                          ; preds = %if.end152, %if.then151, %if.then146, %if.then141, %if.then136, %if.then131, %if.then126, %if.then121, %if.then116, %if.then111, %if.then106, %if.then101, %if.then96, %if.then91, %if.then86, %if.then81, %if.then76, %if.then71, %if.then66, %if.then61, %if.then56, %if.then51, %if.then46, %if.then41, %if.then36, %if.then31, %if.then26, %if.then21, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !2255
  call void @llvm.lifetime.end.p0(i64 500, ptr %upper) #9, !dbg !2255
  call void @llvm.lifetime.end.p0(i64 8, ptr %alias) #9, !dbg !2255
  %17 = load i32, ptr %retval, align 4, !dbg !2255
  ret i32 %17, !dbg !2255
}

; Function Attrs: nounwind uwtable
define hidden ptr @xmlGetCharEncodingName__internal_alias(i32 noundef %enc) #0 !dbg !2256 {
entry:
  %retval = alloca ptr, align 8
  %enc.addr = alloca i32, align 4
  store i32 %enc, ptr %enc.addr, align 4, !tbaa !1210
  tail call void @llvm.dbg.declare(metadata ptr %enc.addr, metadata !2260, metadata !DIExpression()), !dbg !2261
  %0 = load i32, ptr %enc.addr, align 4, !dbg !2262, !tbaa !1210
  switch i32 %0, label %sw.epilog [
    i32 -1, label %sw.bb
    i32 0, label %sw.bb1
    i32 1, label %sw.bb2
    i32 2, label %sw.bb3
    i32 3, label %sw.bb4
    i32 6, label %sw.bb5
    i32 4, label %sw.bb6
    i32 5, label %sw.bb7
    i32 7, label %sw.bb8
    i32 8, label %sw.bb9
    i32 9, label %sw.bb10
    i32 10, label %sw.bb11
    i32 11, label %sw.bb12
    i32 12, label %sw.bb13
    i32 13, label %sw.bb14
    i32 14, label %sw.bb15
    i32 15, label %sw.bb16
    i32 16, label %sw.bb17
    i32 17, label %sw.bb18
    i32 18, label %sw.bb19
    i32 19, label %sw.bb20
    i32 20, label %sw.bb21
    i32 21, label %sw.bb22
    i32 22, label %sw.bb23
  ], !dbg !2263

sw.bb:                                            ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !2264
  br label %return, !dbg !2264

sw.bb1:                                           ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !2266
  br label %return, !dbg !2266

sw.bb2:                                           ; preds = %entry
  store ptr @.str.1, ptr %retval, align 8, !dbg !2267
  br label %return, !dbg !2267

sw.bb3:                                           ; preds = %entry
  store ptr @.str.3, ptr %retval, align 8, !dbg !2268
  br label %return, !dbg !2268

sw.bb4:                                           ; preds = %entry
  store ptr @.str.3, ptr %retval, align 8, !dbg !2269
  br label %return, !dbg !2269

sw.bb5:                                           ; preds = %entry
  store ptr @.str.27, ptr %retval, align 8, !dbg !2270
  br label %return, !dbg !2270

sw.bb6:                                           ; preds = %entry
  store ptr @.str.8, ptr %retval, align 8, !dbg !2271
  br label %return, !dbg !2271

sw.bb7:                                           ; preds = %entry
  store ptr @.str.8, ptr %retval, align 8, !dbg !2272
  br label %return, !dbg !2272

sw.bb8:                                           ; preds = %entry
  store ptr @.str.8, ptr %retval, align 8, !dbg !2273
  br label %return, !dbg !2273

sw.bb9:                                           ; preds = %entry
  store ptr @.str.8, ptr %retval, align 8, !dbg !2274
  br label %return, !dbg !2274

sw.bb10:                                          ; preds = %entry
  store ptr @.str.5, ptr %retval, align 8, !dbg !2275
  br label %return, !dbg !2275

sw.bb11:                                          ; preds = %entry
  store ptr @.str.11, ptr %retval, align 8, !dbg !2276
  br label %return, !dbg !2276

sw.bb12:                                          ; preds = %entry
  store ptr @.str.14, ptr %retval, align 8, !dbg !2277
  br label %return, !dbg !2277

sw.bb13:                                          ; preds = %entry
  store ptr @.str.17, ptr %retval, align 8, !dbg !2278
  br label %return, !dbg !2278

sw.bb14:                                          ; preds = %entry
  store ptr @.str.18, ptr %retval, align 8, !dbg !2279
  br label %return, !dbg !2279

sw.bb15:                                          ; preds = %entry
  store ptr @.str.19, ptr %retval, align 8, !dbg !2280
  br label %return, !dbg !2280

sw.bb16:                                          ; preds = %entry
  store ptr @.str.20, ptr %retval, align 8, !dbg !2281
  br label %return, !dbg !2281

sw.bb17:                                          ; preds = %entry
  store ptr @.str.21, ptr %retval, align 8, !dbg !2282
  br label %return, !dbg !2282

sw.bb18:                                          ; preds = %entry
  store ptr @.str.22, ptr %retval, align 8, !dbg !2283
  br label %return, !dbg !2283

sw.bb19:                                          ; preds = %entry
  store ptr @.str.23, ptr %retval, align 8, !dbg !2284
  br label %return, !dbg !2284

sw.bb20:                                          ; preds = %entry
  store ptr @.str.24, ptr %retval, align 8, !dbg !2285
  br label %return, !dbg !2285

sw.bb21:                                          ; preds = %entry
  store ptr @.str.28, ptr %retval, align 8, !dbg !2286
  br label %return, !dbg !2286

sw.bb22:                                          ; preds = %entry
  store ptr @.str.26, ptr %retval, align 8, !dbg !2287
  br label %return, !dbg !2287

sw.bb23:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !2288
  br label %return, !dbg !2288

sw.epilog:                                        ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !2289
  br label %return, !dbg !2289

return:                                           ; preds = %sw.epilog, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load ptr, ptr %retval, align 8, !dbg !2290
  ret ptr %1, !dbg !2290
}

; Function Attrs: nounwind uwtable
define hidden ptr @xmlNewCharEncodingHandler__internal_alias(ptr noundef %name, ptr noundef %input, ptr noundef %output) #0 !dbg !2291 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %input.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %handler = alloca ptr, align 8
  %alias = alloca ptr, align 8
  %upper = alloca [500 x i8], align 16
  %i = alloca i32, align 4
  %up = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__res = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !2295, metadata !DIExpression()), !dbg !2308
  store ptr %input, ptr %input.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %input.addr, metadata !2296, metadata !DIExpression()), !dbg !2309
  store ptr %output, ptr %output.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %output.addr, metadata !2297, metadata !DIExpression()), !dbg !2310
  call void @llvm.lifetime.start.p0(i64 8, ptr %handler) #9, !dbg !2311
  tail call void @llvm.dbg.declare(metadata ptr %handler, metadata !2298, metadata !DIExpression()), !dbg !2312
  call void @llvm.lifetime.start.p0(i64 8, ptr %alias) #9, !dbg !2313
  tail call void @llvm.dbg.declare(metadata ptr %alias, metadata !2299, metadata !DIExpression()), !dbg !2314
  call void @llvm.lifetime.start.p0(i64 500, ptr %upper) #9, !dbg !2315
  tail call void @llvm.dbg.declare(metadata ptr %upper, metadata !2300, metadata !DIExpression()), !dbg !2316
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !2317
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2301, metadata !DIExpression()), !dbg !2318
  call void @llvm.lifetime.start.p0(i64 8, ptr %up) #9, !dbg !2319
  tail call void @llvm.dbg.declare(metadata ptr %up, metadata !2302, metadata !DIExpression()), !dbg !2320
  store ptr null, ptr %up, align 8, !dbg !2320, !tbaa !1148
  %0 = load ptr, ptr %name.addr, align 8, !dbg !2321, !tbaa !1148
  %call = call ptr @xmlGetEncodingAlias__internal_alias(ptr noundef %0), !dbg !2322
  store ptr %call, ptr %alias, align 8, !dbg !2323, !tbaa !1148
  %1 = load ptr, ptr %alias, align 8, !dbg !2324, !tbaa !1148
  %cmp = icmp ne ptr %1, null, !dbg !2326
  br i1 %cmp, label %if.then, label %if.end, !dbg !2327

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %alias, align 8, !dbg !2328, !tbaa !1148
  store ptr %2, ptr %name.addr, align 8, !dbg !2329, !tbaa !1148
  br label %if.end, !dbg !2330

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %name.addr, align 8, !dbg !2331, !tbaa !1148
  %cmp1 = icmp eq ptr %3, null, !dbg !2333
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !2334

if.then2:                                         ; preds = %if.end
  call void @xmlEncodingErr(i32 noundef 6000, ptr noundef @.str.29, ptr noundef null), !dbg !2335
  store ptr null, ptr %retval, align 8, !dbg !2337
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2337

if.end3:                                          ; preds = %if.end
  store i32 0, ptr %i, align 4, !dbg !2338, !tbaa !1185
  br label %for.cond, !dbg !2339

for.cond:                                         ; preds = %for.inc, %if.end3
  %4 = load i32, ptr %i, align 4, !dbg !2340, !tbaa !1185
  %cmp4 = icmp slt i32 %4, 499, !dbg !2341
  br i1 %cmp4, label %for.body, label %for.end, !dbg !2342

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res) #9, !dbg !2343
  tail call void @llvm.dbg.declare(metadata ptr %__res, metadata !2303, metadata !DIExpression()), !dbg !2343
  %call5 = call ptr @__ctype_toupper_loc() #10, !dbg !2344
  %5 = load ptr, ptr %call5, align 8, !dbg !2344, !tbaa !1148
  %6 = load ptr, ptr %name.addr, align 8, !dbg !2344, !tbaa !1148
  %7 = load i32, ptr %i, align 4, !dbg !2344, !tbaa !1185
  %idxprom = sext i32 %7 to i64, !dbg !2344
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 %idxprom, !dbg !2344
  %8 = load i8, ptr %arrayidx, align 1, !dbg !2344, !tbaa !1210
  %conv = sext i8 %8 to i32, !dbg !2344
  %idxprom6 = sext i32 %conv to i64, !dbg !2344
  %arrayidx7 = getelementptr inbounds i32, ptr %5, i64 %idxprom6, !dbg !2344
  %9 = load i32, ptr %arrayidx7, align 4, !dbg !2344, !tbaa !1185
  store i32 %9, ptr %__res, align 4, !dbg !2344, !tbaa !1185
  %10 = load i32, ptr %__res, align 4, !dbg !2343, !tbaa !1185
  store i32 %10, ptr %tmp, align 4, !dbg !2344, !tbaa !1185
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res) #9, !dbg !2346
  %11 = load i32, ptr %tmp, align 4, !dbg !2343, !tbaa !1185
  %conv8 = trunc i32 %11 to i8, !dbg !2346
  %12 = load i32, ptr %i, align 4, !dbg !2347, !tbaa !1185
  %idxprom9 = sext i32 %12 to i64, !dbg !2348
  %arrayidx10 = getelementptr inbounds [500 x i8], ptr %upper, i64 0, i64 %idxprom9, !dbg !2348
  store i8 %conv8, ptr %arrayidx10, align 1, !dbg !2349, !tbaa !1210
  %13 = load i32, ptr %i, align 4, !dbg !2350, !tbaa !1185
  %idxprom11 = sext i32 %13 to i64, !dbg !2352
  %arrayidx12 = getelementptr inbounds [500 x i8], ptr %upper, i64 0, i64 %idxprom11, !dbg !2352
  %14 = load i8, ptr %arrayidx12, align 1, !dbg !2352, !tbaa !1210
  %conv13 = sext i8 %14 to i32, !dbg !2352
  %cmp14 = icmp eq i32 %conv13, 0, !dbg !2353
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !2354

if.then16:                                        ; preds = %for.body
  br label %for.end, !dbg !2355

if.end17:                                         ; preds = %for.body
  br label %for.inc, !dbg !2356

for.inc:                                          ; preds = %if.end17
  %15 = load i32, ptr %i, align 4, !dbg !2357, !tbaa !1185
  %inc = add nsw i32 %15, 1, !dbg !2357
  store i32 %inc, ptr %i, align 4, !dbg !2357, !tbaa !1185
  br label %for.cond, !dbg !2358, !llvm.loop !2359

for.end:                                          ; preds = %if.then16, %for.cond
  %16 = load i32, ptr %i, align 4, !dbg !2361, !tbaa !1185
  %idxprom18 = sext i32 %16 to i64, !dbg !2362
  %arrayidx19 = getelementptr inbounds [500 x i8], ptr %upper, i64 0, i64 %idxprom18, !dbg !2362
  store i8 0, ptr %arrayidx19, align 1, !dbg !2363, !tbaa !1210
  %17 = load ptr, ptr @xmlMemStrdup, align 8, !dbg !2364, !tbaa !1148
  %arraydecay = getelementptr inbounds [500 x i8], ptr %upper, i64 0, i64 0, !dbg !2365
  %call20 = call ptr %17(ptr noundef %arraydecay), !dbg !2364
  store ptr %call20, ptr %up, align 8, !dbg !2366, !tbaa !1148
  %18 = load ptr, ptr %up, align 8, !dbg !2367, !tbaa !1148
  %cmp21 = icmp eq ptr %18, null, !dbg !2369
  br i1 %cmp21, label %if.then23, label %if.end24, !dbg !2370

if.then23:                                        ; preds = %for.end
  call void @xmlEncodingErrMemory(ptr noundef @.str.30), !dbg !2371
  store ptr null, ptr %retval, align 8, !dbg !2373
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2373

if.end24:                                         ; preds = %for.end
  %19 = load ptr, ptr @xmlMalloc, align 8, !dbg !2374, !tbaa !1148
  %call25 = call ptr %19(i64 noundef 40), !dbg !2374
  store ptr %call25, ptr %handler, align 8, !dbg !2375, !tbaa !1148
  %20 = load ptr, ptr %handler, align 8, !dbg !2376, !tbaa !1148
  %cmp26 = icmp eq ptr %20, null, !dbg !2378
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !2379

if.then28:                                        ; preds = %if.end24
  %21 = load ptr, ptr @xmlFree, align 8, !dbg !2380, !tbaa !1148
  %22 = load ptr, ptr %up, align 8, !dbg !2382, !tbaa !1148
  call void %21(ptr noundef %22), !dbg !2380
  call void @xmlEncodingErrMemory(ptr noundef @.str.30), !dbg !2383
  store ptr null, ptr %retval, align 8, !dbg !2384
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2384

if.end29:                                         ; preds = %if.end24
  %23 = load ptr, ptr %handler, align 8, !dbg !2385, !tbaa !1148
  call void @llvm.memset.p0.i64(ptr align 8 %23, i8 0, i64 40, i1 false), !dbg !2386
  %24 = load ptr, ptr %input.addr, align 8, !dbg !2387, !tbaa !1148
  %25 = load ptr, ptr %handler, align 8, !dbg !2388, !tbaa !1148
  %input30 = getelementptr inbounds %struct._xmlCharEncodingHandler, ptr %25, i32 0, i32 1, !dbg !2389
  store ptr %24, ptr %input30, align 8, !dbg !2390, !tbaa !2391
  %26 = load ptr, ptr %output.addr, align 8, !dbg !2393, !tbaa !1148
  %27 = load ptr, ptr %handler, align 8, !dbg !2394, !tbaa !1148
  %output31 = getelementptr inbounds %struct._xmlCharEncodingHandler, ptr %27, i32 0, i32 2, !dbg !2395
  store ptr %26, ptr %output31, align 8, !dbg !2396, !tbaa !2397
  %28 = load ptr, ptr %up, align 8, !dbg !2398, !tbaa !1148
  %29 = load ptr, ptr %handler, align 8, !dbg !2399, !tbaa !1148
  %name32 = getelementptr inbounds %struct._xmlCharEncodingHandler, ptr %29, i32 0, i32 0, !dbg !2400
  store ptr %28, ptr %name32, align 8, !dbg !2401, !tbaa !2402
  %30 = load ptr, ptr %handler, align 8, !dbg !2403, !tbaa !1148
  %iconv_in = getelementptr inbounds %struct._xmlCharEncodingHandler, ptr %30, i32 0, i32 3, !dbg !2404
  store ptr null, ptr %iconv_in, align 8, !dbg !2405, !tbaa !2406
  %31 = load ptr, ptr %handler, align 8, !dbg !2407, !tbaa !1148
  %iconv_out = getelementptr inbounds %struct._xmlCharEncodingHandler, ptr %31, i32 0, i32 4, !dbg !2408
  store ptr null, ptr %iconv_out, align 8, !dbg !2409, !tbaa !2410
  %32 = load ptr, ptr %handler, align 8, !dbg !2411, !tbaa !1148
  call void @xmlRegisterCharEncodingHandler__internal_alias(ptr noundef %32), !dbg !2412
  %33 = load ptr, ptr %handler, align 8, !dbg !2413, !tbaa !1148
  store ptr %33, ptr %retval, align 8, !dbg !2414
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2414

cleanup:                                          ; preds = %if.end29, %if.then28, %if.then23, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %up) #9, !dbg !2415
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !2415
  call void @llvm.lifetime.end.p0(i64 500, ptr %upper) #9, !dbg !2415
  call void @llvm.lifetime.end.p0(i64 8, ptr %alias) #9, !dbg !2415
  call void @llvm.lifetime.end.p0(i64 8, ptr %handler) #9, !dbg !2415
  %34 = load ptr, ptr %retval, align 8, !dbg !2415
  ret ptr %34, !dbg !2415
}

; Function Attrs: nounwind uwtable
define internal void @xmlEncodingErr(i32 noundef %error, ptr noundef %msg, ptr noundef %val) #0 !dbg !2416 {
entry:
  %error.addr = alloca i32, align 4
  %msg.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  store i32 %error, ptr %error.addr, align 4, !tbaa !1210
  tail call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !2421, metadata !DIExpression()), !dbg !2424
  store ptr %msg, ptr %msg.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %msg.addr, metadata !2422, metadata !DIExpression()), !dbg !2425
  store ptr %val, ptr %val.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !2423, metadata !DIExpression()), !dbg !2426
  %0 = load i32, ptr %error.addr, align 4, !dbg !2427, !tbaa !1210
  %1 = load ptr, ptr %val.addr, align 8, !dbg !2428, !tbaa !1148
  %2 = load ptr, ptr %msg.addr, align 8, !dbg !2429, !tbaa !1148
  %3 = load ptr, ptr %val.addr, align 8, !dbg !2430, !tbaa !1148
  call void (ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i32, i32, ptr, ...) @__xmlRaiseError(ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 27, i32 noundef %0, i32 noundef 3, ptr noundef null, i32 noundef 0, ptr noundef %1, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef %2, ptr noundef %3), !dbg !2431
  ret void, !dbg !2432
}

; Function Attrs: nounwind uwtable
define internal void @xmlEncodingErrMemory(ptr noundef %extra) #0 !dbg !2433 {
entry:
  %extra.addr = alloca ptr, align 8
  store ptr %extra, ptr %extra.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %extra.addr, metadata !2437, metadata !DIExpression()), !dbg !2438
  %0 = load ptr, ptr %extra.addr, align 8, !dbg !2439, !tbaa !1148
  call void @__xmlSimpleError(i32 noundef 27, i32 noundef 2, ptr noundef null, ptr noundef null, ptr noundef %0), !dbg !2440
  ret void, !dbg !2441
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define hidden void @xmlRegisterCharEncodingHandler__internal_alias(ptr noundef %handler) #0 !dbg !2442 {
entry:
  %handler.addr = alloca ptr, align 8
  store ptr %handler, ptr %handler.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %handler.addr, metadata !2446, metadata !DIExpression()), !dbg !2447
  %0 = load ptr, ptr @handlers, align 8, !dbg !2448, !tbaa !1148
  %cmp = icmp eq ptr %0, null, !dbg !2450
  br i1 %cmp, label %if.then, label %if.end, !dbg !2451

if.then:                                          ; preds = %entry
  call void @xmlInitCharEncodingHandlers__internal_alias(), !dbg !2452
  br label %if.end, !dbg !2452

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %handler.addr, align 8, !dbg !2453, !tbaa !1148
  %cmp1 = icmp eq ptr %1, null, !dbg !2455
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !2456

lor.lhs.false:                                    ; preds = %if.end
  %2 = load ptr, ptr @handlers, align 8, !dbg !2457, !tbaa !1148
  %cmp2 = icmp eq ptr %2, null, !dbg !2458
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !2459

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  call void @xmlEncodingErr(i32 noundef 6001, ptr noundef @.str.38, ptr noundef null), !dbg !2460
  br label %return, !dbg !2462

if.end4:                                          ; preds = %lor.lhs.false
  %3 = load i32, ptr @nbCharEncodingHandler, align 4, !dbg !2463, !tbaa !1185
  %cmp5 = icmp sge i32 %3, 50, !dbg !2465
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !2466

if.then6:                                         ; preds = %if.end4
  call void @xmlEncodingErr(i32 noundef 6002, ptr noundef @.str.39, ptr noundef @.str.40), !dbg !2467
  br label %return, !dbg !2469

if.end7:                                          ; preds = %if.end4
  %4 = load ptr, ptr %handler.addr, align 8, !dbg !2470, !tbaa !1148
  %5 = load ptr, ptr @handlers, align 8, !dbg !2471, !tbaa !1148
  %6 = load i32, ptr @nbCharEncodingHandler, align 4, !dbg !2472, !tbaa !1185
  %inc = add nsw i32 %6, 1, !dbg !2472
  store i32 %inc, ptr @nbCharEncodingHandler, align 4, !dbg !2472, !tbaa !1185
  %idxprom = sext i32 %6 to i64, !dbg !2471
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom, !dbg !2471
  store ptr %4, ptr %arrayidx, align 8, !dbg !2473, !tbaa !1148
  br label %return, !dbg !2474

return:                                           ; preds = %if.end7, %if.then6, %if.then3
  ret void, !dbg !2474
}

; Function Attrs: nounwind uwtable
define hidden void @xmlInitCharEncodingHandlers__internal_alias() #0 !dbg !2475 {
entry:
  %tst = alloca i16, align 2
  %ptr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr %tst) #9, !dbg !2479
  tail call void @llvm.dbg.declare(metadata ptr %tst, metadata !2477, metadata !DIExpression()), !dbg !2480
  store i16 4660, ptr %tst, align 2, !dbg !2480, !tbaa !2481
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #9, !dbg !2483
  tail call void @llvm.dbg.declare(metadata ptr %ptr, metadata !2478, metadata !DIExpression()), !dbg !2484
  store ptr %tst, ptr %ptr, align 8, !dbg !2484, !tbaa !1148
  %0 = load ptr, ptr @handlers, align 8, !dbg !2485, !tbaa !1148
  %cmp = icmp ne ptr %0, null, !dbg !2487
  br i1 %cmp, label %if.then, label %if.end, !dbg !2488

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2489

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @xmlMalloc, align 8, !dbg !2490, !tbaa !1148
  %call = call ptr %1(i64 noundef 400), !dbg !2490
  store ptr %call, ptr @handlers, align 8, !dbg !2491, !tbaa !1148
  %2 = load ptr, ptr %ptr, align 8, !dbg !2492, !tbaa !1148
  %3 = load i8, ptr %2, align 1, !dbg !2494, !tbaa !1210
  %conv = zext i8 %3 to i32, !dbg !2494
  %cmp1 = icmp eq i32 %conv, 18, !dbg !2495
  br i1 %cmp1, label %if.then3, label %if.else, !dbg !2496

if.then3:                                         ; preds = %if.end
  store i32 0, ptr @xmlLittleEndian, align 4, !dbg !2497, !tbaa !1185
  br label %if.end10, !dbg !2498

if.else:                                          ; preds = %if.end
  %4 = load ptr, ptr %ptr, align 8, !dbg !2499, !tbaa !1148
  %5 = load i8, ptr %4, align 1, !dbg !2501, !tbaa !1210
  %conv4 = zext i8 %5 to i32, !dbg !2501
  %cmp5 = icmp eq i32 %conv4, 52, !dbg !2502
  br i1 %cmp5, label %if.then7, label %if.else8, !dbg !2503

if.then7:                                         ; preds = %if.else
  store i32 1, ptr @xmlLittleEndian, align 4, !dbg !2504, !tbaa !1185
  br label %if.end9, !dbg !2505

if.else8:                                         ; preds = %if.else
  call void @xmlEncodingErr(i32 noundef 1, ptr noundef @.str.31, ptr noundef null), !dbg !2506
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %if.then7
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.then3
  %6 = load ptr, ptr @handlers, align 8, !dbg !2508, !tbaa !1148
  %cmp11 = icmp eq ptr %6, null, !dbg !2510
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !2511

if.then13:                                        ; preds = %if.end10
  call void @xmlEncodingErrMemory(ptr noundef @.str.32), !dbg !2512
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2514

if.end14:                                         ; preds = %if.end10
  %call15 = call ptr @xmlNewCharEncodingHandler__internal_alias(ptr noundef @.str.1, ptr noundef @UTF8ToUTF8, ptr noundef @UTF8ToUTF8), !dbg !2515
  %call16 = call ptr @xmlNewCharEncodingHandler__internal_alias(ptr noundef @.str.33, ptr noundef @UTF16LEToUTF8, ptr noundef @UTF8ToUTF16LE), !dbg !2516
  store ptr %call16, ptr @xmlUTF16LEHandler, align 8, !dbg !2517, !tbaa !1148
  %call17 = call ptr @xmlNewCharEncodingHandler__internal_alias(ptr noundef @.str.34, ptr noundef @UTF16BEToUTF8, ptr noundef @UTF8ToUTF16BE), !dbg !2518
  store ptr %call17, ptr @xmlUTF16BEHandler, align 8, !dbg !2519, !tbaa !1148
  %call18 = call ptr @xmlNewCharEncodingHandler__internal_alias(ptr noundef @.str.3, ptr noundef @UTF16LEToUTF8, ptr noundef @UTF8ToUTF16), !dbg !2520
  %call19 = call ptr @xmlNewCharEncodingHandler__internal_alias(ptr noundef @.str.11, ptr noundef @isolat1ToUTF8, ptr noundef @UTF8Toisolat1), !dbg !2521
  %call20 = call ptr @xmlNewCharEncodingHandler__internal_alias(ptr noundef @.str.35, ptr noundef @asciiToUTF8, ptr noundef @UTF8Toascii), !dbg !2522
  %call21 = call ptr @xmlNewCharEncodingHandler__internal_alias(ptr noundef @.str.36, ptr noundef @asciiToUTF8, ptr noundef @UTF8Toascii), !dbg !2523
  %call22 = call ptr @xmlNewCharEncodingHandler__internal_alias(ptr noundef @.str.37, ptr noundef null, ptr noundef @UTF8ToHtml), !dbg !2524
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2525
  br label %cleanup, !dbg !2525

cleanup:                                          ; preds = %if.end14, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #9, !dbg !2525
  call void @llvm.lifetime.end.p0(i64 2, ptr %tst) #9, !dbg !2525
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2525

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @UTF8ToUTF8(ptr noundef %out, ptr noundef %outlen, ptr noundef %inb, ptr noundef %inlenb) #0 !dbg !2526 {
entry:
  %retval = alloca i32, align 4
  %out.addr = alloca ptr, align 8
  %outlen.addr = alloca ptr, align 8
  %inb.addr = alloca ptr, align 8
  %inlenb.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %out, ptr %out.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !2528, metadata !DIExpression()), !dbg !2533
  store ptr %outlen, ptr %outlen.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %outlen.addr, metadata !2529, metadata !DIExpression()), !dbg !2534
  store ptr %inb, ptr %inb.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %inb.addr, metadata !2530, metadata !DIExpression()), !dbg !2535
  store ptr %inlenb, ptr %inlenb.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %inlenb.addr, metadata !2531, metadata !DIExpression()), !dbg !2536
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #9, !dbg !2537
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !2532, metadata !DIExpression()), !dbg !2538
  %0 = load ptr, ptr %out.addr, align 8, !dbg !2539, !tbaa !1148
  %cmp = icmp eq ptr %0, null, !dbg !2541
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2542

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %outlen.addr, align 8, !dbg !2543, !tbaa !1148
  %cmp1 = icmp eq ptr %1, null, !dbg !2544
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !2545

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %inlenb.addr, align 8, !dbg !2546, !tbaa !1148
  %cmp3 = icmp eq ptr %2, null, !dbg !2547
  br i1 %cmp3, label %if.then, label %if.end, !dbg !2548

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4, !dbg !2549
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2549

if.end:                                           ; preds = %lor.lhs.false2
  %3 = load ptr, ptr %inb.addr, align 8, !dbg !2550, !tbaa !1148
  %cmp4 = icmp eq ptr %3, null, !dbg !2552
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2553

if.then5:                                         ; preds = %if.end
  %4 = load ptr, ptr %outlen.addr, align 8, !dbg !2554, !tbaa !1148
  store i32 0, ptr %4, align 4, !dbg !2556, !tbaa !1185
  %5 = load ptr, ptr %inlenb.addr, align 8, !dbg !2557, !tbaa !1148
  store i32 0, ptr %5, align 4, !dbg !2558, !tbaa !1185
  store i32 0, ptr %retval, align 4, !dbg !2559
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2559

if.end6:                                          ; preds = %if.end
  %6 = load ptr, ptr %outlen.addr, align 8, !dbg !2560, !tbaa !1148
  %7 = load i32, ptr %6, align 4, !dbg !2562, !tbaa !1185
  %8 = load ptr, ptr %inlenb.addr, align 8, !dbg !2563, !tbaa !1148
  %9 = load i32, ptr %8, align 4, !dbg !2564, !tbaa !1185
  %cmp7 = icmp sgt i32 %7, %9, !dbg !2565
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !2566

if.then8:                                         ; preds = %if.end6
  %10 = load ptr, ptr %inlenb.addr, align 8, !dbg !2567, !tbaa !1148
  %11 = load i32, ptr %10, align 4, !dbg !2569, !tbaa !1185
  store i32 %11, ptr %len, align 4, !dbg !2570, !tbaa !1185
  br label %if.end9, !dbg !2571

if.else:                                          ; preds = %if.end6
  %12 = load ptr, ptr %outlen.addr, align 8, !dbg !2572, !tbaa !1148
  %13 = load i32, ptr %12, align 4, !dbg !2574, !tbaa !1185
  store i32 %13, ptr %len, align 4, !dbg !2575, !tbaa !1185
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then8
  %14 = load i32, ptr %len, align 4, !dbg !2576, !tbaa !1185
  %cmp10 = icmp slt i32 %14, 0, !dbg !2578
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !2579

if.then11:                                        ; preds = %if.end9
  store i32 -1, ptr %retval, align 4, !dbg !2580
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2580

if.end12:                                         ; preds = %if.end9
  %15 = load ptr, ptr %out.addr, align 8, !dbg !2581, !tbaa !1148
  %16 = load ptr, ptr %inb.addr, align 8, !dbg !2582, !tbaa !1148
  %17 = load i32, ptr %len, align 4, !dbg !2583, !tbaa !1185
  %conv = sext i32 %17 to i64, !dbg !2583
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr align 1 %16, i64 %conv, i1 false), !dbg !2584
  %18 = load i32, ptr %len, align 4, !dbg !2585, !tbaa !1185
  %19 = load ptr, ptr %outlen.addr, align 8, !dbg !2586, !tbaa !1148
  store i32 %18, ptr %19, align 4, !dbg !2587, !tbaa !1185
  %20 = load i32, ptr %len, align 4, !dbg !2588, !tbaa !1185
  %21 = load ptr, ptr %inlenb.addr, align 8, !dbg !2589, !tbaa !1148
  store i32 %20, ptr %21, align 4, !dbg !2590, !tbaa !1185
  %22 = load ptr, ptr %outlen.addr, align 8, !dbg !2591, !tbaa !1148
  %23 = load i32, ptr %22, align 4, !dbg !2592, !tbaa !1185
  store i32 %23, ptr %retval, align 4, !dbg !2593
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2593

cleanup:                                          ; preds = %if.end12, %if.then11, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #9, !dbg !2594
  %24 = load i32, ptr %retval, align 4, !dbg !2594
  ret i32 %24, !dbg !2594
}

; Function Attrs: nounwind uwtable
define internal i32 @UTF16LEToUTF8(ptr noundef %out, ptr noundef %outlen, ptr noundef %inb, ptr noundef %inlenb) #0 !dbg !2595 {
entry:
  %retval = alloca i32, align 4
  %out.addr = alloca ptr, align 8
  %outlen.addr = alloca ptr, align 8
  %inb.addr = alloca ptr, align 8
  %inlenb.addr = alloca ptr, align 8
  %outstart = alloca ptr, align 8
  %processed = alloca ptr, align 8
  %outend = alloca ptr, align 8
  %in = alloca ptr, align 8
  %inend = alloca ptr, align 8
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %inlen = alloca i32, align 4
  %tmp = alloca ptr, align 8
  %bits = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %out, ptr %out.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !2597, metadata !DIExpression()), !dbg !2611
  store ptr %outlen, ptr %outlen.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %outlen.addr, metadata !2598, metadata !DIExpression()), !dbg !2612
  store ptr %inb, ptr %inb.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %inb.addr, metadata !2599, metadata !DIExpression()), !dbg !2613
  store ptr %inlenb, ptr %inlenb.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %inlenb.addr, metadata !2600, metadata !DIExpression()), !dbg !2614
  call void @llvm.lifetime.start.p0(i64 8, ptr %outstart) #9, !dbg !2615
  tail call void @llvm.dbg.declare(metadata ptr %outstart, metadata !2601, metadata !DIExpression()), !dbg !2616
  %0 = load ptr, ptr %out.addr, align 8, !dbg !2617, !tbaa !1148
  store ptr %0, ptr %outstart, align 8, !dbg !2616, !tbaa !1148
  call void @llvm.lifetime.start.p0(i64 8, ptr %processed) #9, !dbg !2618
  tail call void @llvm.dbg.declare(metadata ptr %processed, metadata !2602, metadata !DIExpression()), !dbg !2619
  %1 = load ptr, ptr %inb.addr, align 8, !dbg !2620, !tbaa !1148
  store ptr %1, ptr %processed, align 8, !dbg !2619, !tbaa !1148
  call void @llvm.lifetime.start.p0(i64 8, ptr %outend) #9, !dbg !2621
  tail call void @llvm.dbg.declare(metadata ptr %outend, metadata !2603, metadata !DIExpression()), !dbg !2622
  %2 = load ptr, ptr %out.addr, align 8, !dbg !2623, !tbaa !1148
  %3 = load ptr, ptr %outlen.addr, align 8, !dbg !2624, !tbaa !1148
  %4 = load i32, ptr %3, align 4, !dbg !2625, !tbaa !1185
  %idx.ext = sext i32 %4 to i64, !dbg !2626
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 %idx.ext, !dbg !2626
  store ptr %add.ptr, ptr %outend, align 8, !dbg !2622, !tbaa !1148
  call void @llvm.lifetime.start.p0(i64 8, ptr %in) #9, !dbg !2627
  tail call void @llvm.dbg.declare(metadata ptr %in, metadata !2604, metadata !DIExpression()), !dbg !2628
  %5 = load ptr, ptr %inb.addr, align 8, !dbg !2629, !tbaa !1148
  store ptr %5, ptr %in, align 8, !dbg !2628, !tbaa !1148
  call void @llvm.lifetime.start.p0(i64 8, ptr %inend) #9, !dbg !2630
  tail call void @llvm.dbg.declare(metadata ptr %inend, metadata !2605, metadata !DIExpression()), !dbg !2631
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #9, !dbg !2632
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !2606, metadata !DIExpression()), !dbg !2633
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #9, !dbg !2632
  tail call void @llvm.dbg.declare(metadata ptr %d, metadata !2607, metadata !DIExpression()), !dbg !2634
  call void @llvm.lifetime.start.p0(i64 4, ptr %inlen) #9, !dbg !2632
  tail call void @llvm.dbg.declare(metadata ptr %inlen, metadata !2608, metadata !DIExpression()), !dbg !2635
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #9, !dbg !2636
  tail call void @llvm.dbg.declare(metadata ptr %tmp, metadata !2609, metadata !DIExpression()), !dbg !2637
  call void @llvm.lifetime.start.p0(i64 4, ptr %bits) #9, !dbg !2638
  tail call void @llvm.dbg.declare(metadata ptr %bits, metadata !2610, metadata !DIExpression()), !dbg !2639
  %6 = load ptr, ptr %inlenb.addr, align 8, !dbg !2640, !tbaa !1148
  %7 = load i32, ptr %6, align 4, !dbg !2642, !tbaa !1185
  %rem = srem i32 %7, 2, !dbg !2643
  %cmp = icmp eq i32 %rem, 1, !dbg !2644
  br i1 %cmp, label %if.then, label %if.end, !dbg !2645

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %inlenb.addr, align 8, !dbg !2646, !tbaa !1148
  %9 = load i32, ptr %8, align 4, !dbg !2647, !tbaa !1185
  %dec = add nsw i32 %9, -1, !dbg !2647
  store i32 %dec, ptr %8, align 4, !dbg !2647, !tbaa !1185
  br label %if.end, !dbg !2648

if.end:                                           ; preds = %if.then, %entry
  %10 = load ptr, ptr %inlenb.addr, align 8, !dbg !2649, !tbaa !1148
  %11 = load i32, ptr %10, align 4, !dbg !2650, !tbaa !1185
  %div = sdiv i32 %11, 2, !dbg !2651
  store i32 %div, ptr %inlen, align 4, !dbg !2652, !tbaa !1185
  %12 = load ptr, ptr %in, align 8, !dbg !2653, !tbaa !1148
  %13 = load i32, ptr %inlen, align 4, !dbg !2654, !tbaa !1185
  %idx.ext1 = zext i32 %13 to i64, !dbg !2655
  %add.ptr2 = getelementptr inbounds i16, ptr %12, i64 %idx.ext1, !dbg !2655
  store ptr %add.ptr2, ptr %inend, align 8, !dbg !2656, !tbaa !1148
  br label %while.cond, !dbg !2657

while.cond:                                       ; preds = %for.end, %if.end
  %14 = load ptr, ptr %in, align 8, !dbg !2658, !tbaa !1148
  %15 = load ptr, ptr %inend, align 8, !dbg !2659, !tbaa !1148
  %cmp3 = icmp ult ptr %14, %15, !dbg !2660
  br i1 %cmp3, label %land.rhs, label %land.end, !dbg !2661

land.rhs:                                         ; preds = %while.cond
  %16 = load ptr, ptr %out.addr, align 8, !dbg !2662, !tbaa !1148
  %17 = load ptr, ptr %outstart, align 8, !dbg !2663, !tbaa !1148
  %sub.ptr.lhs.cast = ptrtoint ptr %16 to i64, !dbg !2664
  %sub.ptr.rhs.cast = ptrtoint ptr %17 to i64, !dbg !2664
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2664
  %add = add nsw i64 %sub.ptr.sub, 5, !dbg !2665
  %18 = load ptr, ptr %outlen.addr, align 8, !dbg !2666, !tbaa !1148
  %19 = load i32, ptr %18, align 4, !dbg !2667, !tbaa !1185
  %conv = sext i32 %19 to i64, !dbg !2667
  %cmp4 = icmp slt i64 %add, %conv, !dbg !2668
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %20 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ], !dbg !2669
  br i1 %20, label %while.body, label %while.end, !dbg !2657

while.body:                                       ; preds = %land.end
  %21 = load i32, ptr @xmlLittleEndian, align 4, !dbg !2670, !tbaa !1185
  %tobool = icmp ne i32 %21, 0, !dbg !2670
  br i1 %tobool, label %if.then6, label %if.else, !dbg !2673

if.then6:                                         ; preds = %while.body
  %22 = load ptr, ptr %in, align 8, !dbg !2674, !tbaa !1148
  %incdec.ptr = getelementptr inbounds i16, ptr %22, i32 1, !dbg !2674
  store ptr %incdec.ptr, ptr %in, align 8, !dbg !2674, !tbaa !1148
  %23 = load i16, ptr %22, align 2, !dbg !2676, !tbaa !2481
  %conv7 = zext i16 %23 to i32, !dbg !2676
  store i32 %conv7, ptr %c, align 4, !dbg !2677, !tbaa !1185
  br label %if.end12, !dbg !2678

if.else:                                          ; preds = %while.body
  %24 = load ptr, ptr %in, align 8, !dbg !2679, !tbaa !1148
  store ptr %24, ptr %tmp, align 8, !dbg !2681, !tbaa !1148
  %25 = load ptr, ptr %tmp, align 8, !dbg !2682, !tbaa !1148
  %incdec.ptr8 = getelementptr inbounds i8, ptr %25, i32 1, !dbg !2682
  store ptr %incdec.ptr8, ptr %tmp, align 8, !dbg !2682, !tbaa !1148
  %26 = load i8, ptr %25, align 1, !dbg !2683, !tbaa !1210
  %conv9 = zext i8 %26 to i32, !dbg !2683
  store i32 %conv9, ptr %c, align 4, !dbg !2684, !tbaa !1185
  %27 = load i32, ptr %c, align 4, !dbg !2685, !tbaa !1185
  %28 = load ptr, ptr %tmp, align 8, !dbg !2686, !tbaa !1148
  %29 = load i8, ptr %28, align 1, !dbg !2687, !tbaa !1210
  %conv10 = zext i8 %29 to i32, !dbg !2688
  %shl = shl i32 %conv10, 8, !dbg !2689
  %or = or i32 %27, %shl, !dbg !2690
  store i32 %or, ptr %c, align 4, !dbg !2691, !tbaa !1185
  %30 = load ptr, ptr %in, align 8, !dbg !2692, !tbaa !1148
  %incdec.ptr11 = getelementptr inbounds i16, ptr %30, i32 1, !dbg !2692
  store ptr %incdec.ptr11, ptr %in, align 8, !dbg !2692, !tbaa !1148
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then6
  %31 = load i32, ptr %c, align 4, !dbg !2693, !tbaa !1185
  %and = and i32 %31, 64512, !dbg !2695
  %cmp13 = icmp eq i32 %and, 55296, !dbg !2696
  br i1 %cmp13, label %if.then15, label %if.end51, !dbg !2697

if.then15:                                        ; preds = %if.end12
  %32 = load ptr, ptr %in, align 8, !dbg !2698, !tbaa !1148
  %33 = load ptr, ptr %inend, align 8, !dbg !2701, !tbaa !1148
  %cmp16 = icmp uge ptr %32, %33, !dbg !2702
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !2703

if.then18:                                        ; preds = %if.then15
  br label %while.end, !dbg !2704

if.end19:                                         ; preds = %if.then15
  %34 = load i32, ptr @xmlLittleEndian, align 4, !dbg !2706, !tbaa !1185
  %tobool20 = icmp ne i32 %34, 0, !dbg !2706
  br i1 %tobool20, label %if.then21, label %if.else24, !dbg !2708

if.then21:                                        ; preds = %if.end19
  %35 = load ptr, ptr %in, align 8, !dbg !2709, !tbaa !1148
  %incdec.ptr22 = getelementptr inbounds i16, ptr %35, i32 1, !dbg !2709
  store ptr %incdec.ptr22, ptr %in, align 8, !dbg !2709, !tbaa !1148
  %36 = load i16, ptr %35, align 2, !dbg !2711, !tbaa !2481
  %conv23 = zext i16 %36 to i32, !dbg !2711
  store i32 %conv23, ptr %d, align 4, !dbg !2712, !tbaa !1185
  br label %if.end31, !dbg !2713

if.else24:                                        ; preds = %if.end19
  %37 = load ptr, ptr %in, align 8, !dbg !2714, !tbaa !1148
  store ptr %37, ptr %tmp, align 8, !dbg !2716, !tbaa !1148
  %38 = load ptr, ptr %tmp, align 8, !dbg !2717, !tbaa !1148
  %incdec.ptr25 = getelementptr inbounds i8, ptr %38, i32 1, !dbg !2717
  store ptr %incdec.ptr25, ptr %tmp, align 8, !dbg !2717, !tbaa !1148
  %39 = load i8, ptr %38, align 1, !dbg !2718, !tbaa !1210
  %conv26 = zext i8 %39 to i32, !dbg !2718
  store i32 %conv26, ptr %d, align 4, !dbg !2719, !tbaa !1185
  %40 = load i32, ptr %d, align 4, !dbg !2720, !tbaa !1185
  %41 = load ptr, ptr %tmp, align 8, !dbg !2721, !tbaa !1148
  %42 = load i8, ptr %41, align 1, !dbg !2722, !tbaa !1210
  %conv27 = zext i8 %42 to i32, !dbg !2723
  %shl28 = shl i32 %conv27, 8, !dbg !2724
  %or29 = or i32 %40, %shl28, !dbg !2725
  store i32 %or29, ptr %d, align 4, !dbg !2726, !tbaa !1185
  %43 = load ptr, ptr %in, align 8, !dbg !2727, !tbaa !1148
  %incdec.ptr30 = getelementptr inbounds i16, ptr %43, i32 1, !dbg !2727
  store ptr %incdec.ptr30, ptr %in, align 8, !dbg !2727, !tbaa !1148
  br label %if.end31

if.end31:                                         ; preds = %if.else24, %if.then21
  %44 = load i32, ptr %d, align 4, !dbg !2728, !tbaa !1185
  %and32 = and i32 %44, 64512, !dbg !2730
  %cmp33 = icmp eq i32 %and32, 56320, !dbg !2731
  br i1 %cmp33, label %if.then35, label %if.else41, !dbg !2732

if.then35:                                        ; preds = %if.end31
  %45 = load i32, ptr %c, align 4, !dbg !2733, !tbaa !1185
  %and36 = and i32 %45, 1023, !dbg !2733
  store i32 %and36, ptr %c, align 4, !dbg !2733, !tbaa !1185
  %46 = load i32, ptr %c, align 4, !dbg !2735, !tbaa !1185
  %shl37 = shl i32 %46, 10, !dbg !2735
  store i32 %shl37, ptr %c, align 4, !dbg !2735, !tbaa !1185
  %47 = load i32, ptr %d, align 4, !dbg !2736, !tbaa !1185
  %and38 = and i32 %47, 1023, !dbg !2737
  %48 = load i32, ptr %c, align 4, !dbg !2738, !tbaa !1185
  %or39 = or i32 %48, %and38, !dbg !2738
  store i32 %or39, ptr %c, align 4, !dbg !2738, !tbaa !1185
  %49 = load i32, ptr %c, align 4, !dbg !2739, !tbaa !1185
  %add40 = add i32 %49, 65536, !dbg !2739
  store i32 %add40, ptr %c, align 4, !dbg !2739, !tbaa !1185
  br label %if.end50, !dbg !2740

if.else41:                                        ; preds = %if.end31
  %50 = load ptr, ptr %out.addr, align 8, !dbg !2741, !tbaa !1148
  %51 = load ptr, ptr %outstart, align 8, !dbg !2743, !tbaa !1148
  %sub.ptr.lhs.cast42 = ptrtoint ptr %50 to i64, !dbg !2744
  %sub.ptr.rhs.cast43 = ptrtoint ptr %51 to i64, !dbg !2744
  %sub.ptr.sub44 = sub i64 %sub.ptr.lhs.cast42, %sub.ptr.rhs.cast43, !dbg !2744
  %conv45 = trunc i64 %sub.ptr.sub44 to i32, !dbg !2741
  %52 = load ptr, ptr %outlen.addr, align 8, !dbg !2745, !tbaa !1148
  store i32 %conv45, ptr %52, align 4, !dbg !2746, !tbaa !1185
  %53 = load ptr, ptr %processed, align 8, !dbg !2747, !tbaa !1148
  %54 = load ptr, ptr %inb.addr, align 8, !dbg !2748, !tbaa !1148
  %sub.ptr.lhs.cast46 = ptrtoint ptr %53 to i64, !dbg !2749
  %sub.ptr.rhs.cast47 = ptrtoint ptr %54 to i64, !dbg !2749
  %sub.ptr.sub48 = sub i64 %sub.ptr.lhs.cast46, %sub.ptr.rhs.cast47, !dbg !2749
  %conv49 = trunc i64 %sub.ptr.sub48 to i32, !dbg !2747
  %55 = load ptr, ptr %inlenb.addr, align 8, !dbg !2750, !tbaa !1148
  store i32 %conv49, ptr %55, align 4, !dbg !2751, !tbaa !1185
  store i32 -2, ptr %retval, align 4, !dbg !2752
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2752

if.end50:                                         ; preds = %if.then35
  br label %if.end51, !dbg !2753

if.end51:                                         ; preds = %if.end50, %if.end12
  %56 = load ptr, ptr %out.addr, align 8, !dbg !2754, !tbaa !1148
  %57 = load ptr, ptr %outend, align 8, !dbg !2756, !tbaa !1148
  %cmp52 = icmp uge ptr %56, %57, !dbg !2757
  br i1 %cmp52, label %if.then54, label %if.end55, !dbg !2758

if.then54:                                        ; preds = %if.end51
  br label %while.end, !dbg !2759

if.end55:                                         ; preds = %if.end51
  %58 = load i32, ptr %c, align 4, !dbg !2760, !tbaa !1185
  %cmp56 = icmp ult i32 %58, 128, !dbg !2762
  br i1 %cmp56, label %if.then58, label %if.else61, !dbg !2763

if.then58:                                        ; preds = %if.end55
  %59 = load i32, ptr %c, align 4, !dbg !2764, !tbaa !1185
  %conv59 = trunc i32 %59 to i8, !dbg !2764
  %60 = load ptr, ptr %out.addr, align 8, !dbg !2766, !tbaa !1148
  %incdec.ptr60 = getelementptr inbounds i8, ptr %60, i32 1, !dbg !2766
  store ptr %incdec.ptr60, ptr %out.addr, align 8, !dbg !2766, !tbaa !1148
  store i8 %conv59, ptr %60, align 1, !dbg !2767, !tbaa !1210
  store i32 -6, ptr %bits, align 4, !dbg !2768, !tbaa !1185
  br label %if.end86, !dbg !2769

if.else61:                                        ; preds = %if.end55
  %61 = load i32, ptr %c, align 4, !dbg !2770, !tbaa !1185
  %cmp62 = icmp ult i32 %61, 2048, !dbg !2772
  br i1 %cmp62, label %if.then64, label %if.else69, !dbg !2773

if.then64:                                        ; preds = %if.else61
  %62 = load i32, ptr %c, align 4, !dbg !2774, !tbaa !1185
  %shr = lshr i32 %62, 6, !dbg !2776
  %and65 = and i32 %shr, 31, !dbg !2777
  %or66 = or i32 %and65, 192, !dbg !2778
  %conv67 = trunc i32 %or66 to i8, !dbg !2779
  %63 = load ptr, ptr %out.addr, align 8, !dbg !2780, !tbaa !1148
  %incdec.ptr68 = getelementptr inbounds i8, ptr %63, i32 1, !dbg !2780
  store ptr %incdec.ptr68, ptr %out.addr, align 8, !dbg !2780, !tbaa !1148
  store i8 %conv67, ptr %63, align 1, !dbg !2781, !tbaa !1210
  store i32 0, ptr %bits, align 4, !dbg !2782, !tbaa !1185
  br label %if.end85, !dbg !2783

if.else69:                                        ; preds = %if.else61
  %64 = load i32, ptr %c, align 4, !dbg !2784, !tbaa !1185
  %cmp70 = icmp ult i32 %64, 65536, !dbg !2786
  br i1 %cmp70, label %if.then72, label %if.else78, !dbg !2787

if.then72:                                        ; preds = %if.else69
  %65 = load i32, ptr %c, align 4, !dbg !2788, !tbaa !1185
  %shr73 = lshr i32 %65, 12, !dbg !2790
  %and74 = and i32 %shr73, 15, !dbg !2791
  %or75 = or i32 %and74, 224, !dbg !2792
  %conv76 = trunc i32 %or75 to i8, !dbg !2793
  %66 = load ptr, ptr %out.addr, align 8, !dbg !2794, !tbaa !1148
  %incdec.ptr77 = getelementptr inbounds i8, ptr %66, i32 1, !dbg !2794
  store ptr %incdec.ptr77, ptr %out.addr, align 8, !dbg !2794, !tbaa !1148
  store i8 %conv76, ptr %66, align 1, !dbg !2795, !tbaa !1210
  store i32 6, ptr %bits, align 4, !dbg !2796, !tbaa !1185
  br label %if.end84, !dbg !2797

if.else78:                                        ; preds = %if.else69
  %67 = load i32, ptr %c, align 4, !dbg !2798, !tbaa !1185
  %shr79 = lshr i32 %67, 18, !dbg !2800
  %and80 = and i32 %shr79, 7, !dbg !2801
  %or81 = or i32 %and80, 240, !dbg !2802
  %conv82 = trunc i32 %or81 to i8, !dbg !2803
  %68 = load ptr, ptr %out.addr, align 8, !dbg !2804, !tbaa !1148
  %incdec.ptr83 = getelementptr inbounds i8, ptr %68, i32 1, !dbg !2804
  store ptr %incdec.ptr83, ptr %out.addr, align 8, !dbg !2804, !tbaa !1148
  store i8 %conv82, ptr %68, align 1, !dbg !2805, !tbaa !1210
  store i32 12, ptr %bits, align 4, !dbg !2806, !tbaa !1185
  br label %if.end84

if.end84:                                         ; preds = %if.else78, %if.then72
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %if.then64
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %if.then58
  br label %for.cond, !dbg !2807

for.cond:                                         ; preds = %for.inc, %if.end86
  %69 = load i32, ptr %bits, align 4, !dbg !2808, !tbaa !1185
  %cmp87 = icmp sge i32 %69, 0, !dbg !2811
  br i1 %cmp87, label %for.body, label %for.end, !dbg !2812

for.body:                                         ; preds = %for.cond
  %70 = load ptr, ptr %out.addr, align 8, !dbg !2813, !tbaa !1148
  %71 = load ptr, ptr %outend, align 8, !dbg !2816, !tbaa !1148
  %cmp89 = icmp uge ptr %70, %71, !dbg !2817
  br i1 %cmp89, label %if.then91, label %if.end92, !dbg !2818

if.then91:                                        ; preds = %for.body
  br label %for.end, !dbg !2819

if.end92:                                         ; preds = %for.body
  %72 = load i32, ptr %c, align 4, !dbg !2820, !tbaa !1185
  %73 = load i32, ptr %bits, align 4, !dbg !2821, !tbaa !1185
  %shr93 = lshr i32 %72, %73, !dbg !2822
  %and94 = and i32 %shr93, 63, !dbg !2823
  %or95 = or i32 %and94, 128, !dbg !2824
  %conv96 = trunc i32 %or95 to i8, !dbg !2825
  %74 = load ptr, ptr %out.addr, align 8, !dbg !2826, !tbaa !1148
  %incdec.ptr97 = getelementptr inbounds i8, ptr %74, i32 1, !dbg !2826
  store ptr %incdec.ptr97, ptr %out.addr, align 8, !dbg !2826, !tbaa !1148
  store i8 %conv96, ptr %74, align 1, !dbg !2827, !tbaa !1210
  br label %for.inc, !dbg !2828

for.inc:                                          ; preds = %if.end92
  %75 = load i32, ptr %bits, align 4, !dbg !2829, !tbaa !1185
  %sub = sub nsw i32 %75, 6, !dbg !2829
  store i32 %sub, ptr %bits, align 4, !dbg !2829, !tbaa !1185
  br label %for.cond, !dbg !2830, !llvm.loop !2831

for.end:                                          ; preds = %if.then91, %for.cond
  %76 = load ptr, ptr %in, align 8, !dbg !2833, !tbaa !1148
  store ptr %76, ptr %processed, align 8, !dbg !2834, !tbaa !1148
  br label %while.cond, !dbg !2657, !llvm.loop !2835

while.end:                                        ; preds = %if.then54, %if.then18, %land.end
  %77 = load ptr, ptr %out.addr, align 8, !dbg !2837, !tbaa !1148
  %78 = load ptr, ptr %outstart, align 8, !dbg !2838, !tbaa !1148
  %sub.ptr.lhs.cast98 = ptrtoint ptr %77 to i64, !dbg !2839
  %sub.ptr.rhs.cast99 = ptrtoint ptr %78 to i64, !dbg !2839
  %sub.ptr.sub100 = sub i64 %sub.ptr.lhs.cast98, %sub.ptr.rhs.cast99, !dbg !2839
  %conv101 = trunc i64 %sub.ptr.sub100 to i32, !dbg !2837
  %79 = load ptr, ptr %outlen.addr, align 8, !dbg !2840, !tbaa !1148
  store i32 %conv101, ptr %79, align 4, !dbg !2841, !tbaa !1185
  %80 = load ptr, ptr %processed, align 8, !dbg !2842, !tbaa !1148
  %81 = load ptr, ptr %inb.addr, align 8, !dbg !2843, !tbaa !1148
  %sub.ptr.lhs.cast102 = ptrtoint ptr %80 to i64, !dbg !2844
  %sub.ptr.rhs.cast103 = ptrtoint ptr %81 to i64, !dbg !2844
  %sub.ptr.sub104 = sub i64 %sub.ptr.lhs.cast102, %sub.ptr.rhs.cast103, !dbg !2844
  %conv105 = trunc i64 %sub.ptr.sub104 to i32, !dbg !2842
  %82 = load ptr, ptr %inlenb.addr, align 8, !dbg !2845, !tbaa !1148
  store i32 %conv105, ptr %82, align 4, !dbg !2846, !tbaa !1185
  %83 = load ptr, ptr %outlen.addr, align 8, !dbg !2847, !tbaa !1148
  %84 = load i32, ptr %83, align 4, !dbg !2848, !tbaa !1185
  store i32 %84, ptr %retval, align 4, !dbg !2849
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2849

cleanup:                                          ; preds = %while.end, %if.else41
  call void @llvm.lifetime.end.p0(i64 4, ptr %bits) #9, !dbg !2850
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #9, !dbg !2850
  call void @llvm.lifetime.end.p0(i64 4, ptr %inlen) #9, !dbg !2850
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #9, !dbg !2850
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #9, !dbg !2850
  call void @llvm.lifetime.end.p0(i64 8, ptr %inend) #9, !dbg !2850
  call void @llvm.lifetime.end.p0(i64 8, ptr %in) #9, !dbg !2850
  call void @llvm.lifetime.end.p0(i64 8, ptr %outend) #9, !dbg !2850
  call void @llvm.lifetime.end.p0(i64 8, ptr %processed) #9, !dbg !2850
  call void @llvm.lifetime.end.p0(i64 8, ptr %outstart) #9, !dbg !2850
  %85 = load i32, ptr %retval, align 4, !dbg !2850
  ret i32 %85, !dbg !2850
}

; Function Attrs: nounwind uwtable
define internal i32 @UTF8ToUTF16LE(ptr noundef %outb, ptr noundef %outlen, ptr noundef %in, ptr noundef %inlen) #0 !dbg !2851 {
entry:
  %retval = alloca i32, align 4
  %outb.addr = alloca ptr, align 8
  %outlen.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %inlen.addr = alloca ptr, align 8
  %out = alloca ptr, align 8
  %processed = alloca ptr, align 8
  %instart = alloca ptr, align 8
  %outstart = alloca ptr, align 8
  %outend = alloca ptr, align 8
  %inend = alloca ptr, align 8
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %trailing = alloca i32, align 4
  %tmp = alloca ptr, align 8
  %tmp1 = alloca i16, align 2
  %tmp2 = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %outb, ptr %outb.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %outb.addr, metadata !2853, metadata !DIExpression()), !dbg !2870
  store ptr %outlen, ptr %outlen.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %outlen.addr, metadata !2854, metadata !DIExpression()), !dbg !2871
  store ptr %in, ptr %in.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !2855, metadata !DIExpression()), !dbg !2872
  store ptr %inlen, ptr %inlen.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %inlen.addr, metadata !2856, metadata !DIExpression()), !dbg !2873
  call void @llvm.lifetime.start.p0(i64 8, ptr %out) #9, !dbg !2874
  tail call void @llvm.dbg.declare(metadata ptr %out, metadata !2857, metadata !DIExpression()), !dbg !2875
  %0 = load ptr, ptr %outb.addr, align 8, !dbg !2876, !tbaa !1148
  store ptr %0, ptr %out, align 8, !dbg !2875, !tbaa !1148
  call void @llvm.lifetime.start.p0(i64 8, ptr %processed) #9, !dbg !2877
  tail call void @llvm.dbg.declare(metadata ptr %processed, metadata !2858, metadata !DIExpression()), !dbg !2878
  %1 = load ptr, ptr %in.addr, align 8, !dbg !2879, !tbaa !1148
  store ptr %1, ptr %processed, align 8, !dbg !2878, !tbaa !1148
  call void @llvm.lifetime.start.p0(i64 8, ptr %instart) #9, !dbg !2880
  tail call void @llvm.dbg.declare(metadata ptr %instart, metadata !2859, metadata !DIExpression()), !dbg !2881
  %2 = load ptr, ptr %in.addr, align 8, !dbg !2882, !tbaa !1148
  store ptr %2, ptr %instart, align 8, !dbg !2881, !tbaa !1148
  call void @llvm.lifetime.start.p0(i64 8, ptr %outstart) #9, !dbg !2883
  tail call void @llvm.dbg.declare(metadata ptr %outstart, metadata !2861, metadata !DIExpression()), !dbg !2884
  %3 = load ptr, ptr %out, align 8, !dbg !2885, !tbaa !1148
  store ptr %3, ptr %outstart, align 8, !dbg !2884, !tbaa !1148
  call void @llvm.lifetime.start.p0(i64 8, ptr %outend) #9, !dbg !2886
  tail call void @llvm.dbg.declare(metadata ptr %outend, metadata !2862, metadata !DIExpression()), !dbg !2887
  call void @llvm.lifetime.start.p0(i64 8, ptr %inend) #9, !dbg !2888
  tail call void @llvm.dbg.declare(metadata ptr %inend, metadata !2863, metadata !DIExpression()), !dbg !2889
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #9, !dbg !2890
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !2864, metadata !DIExpression()), !dbg !2891
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #9, !dbg !2890
  tail call void @llvm.dbg.declare(metadata ptr %d, metadata !2865, metadata !DIExpression()), !dbg !2892
  call void @llvm.lifetime.start.p0(i64 4, ptr %trailing) #9, !dbg !2893
  tail call void @llvm.dbg.declare(metadata ptr %trailing, metadata !2866, metadata !DIExpression()), !dbg !2894
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #9, !dbg !2895
  tail call void @llvm.dbg.declare(metadata ptr %tmp, metadata !2867, metadata !DIExpression()), !dbg !2896
  call void @llvm.lifetime.start.p0(i64 2, ptr %tmp1) #9, !dbg !2897
  tail call void @llvm.dbg.declare(metadata ptr %tmp1, metadata !2868, metadata !DIExpression()), !dbg !2898
  call void @llvm.lifetime.start.p0(i64 2, ptr %tmp2) #9, !dbg !2897
  tail call void @llvm.dbg.declare(metadata ptr %tmp2, metadata !2869, metadata !DIExpression()), !dbg !2899
  %4 = load ptr, ptr %out, align 8, !dbg !2900, !tbaa !1148
  %cmp = icmp eq ptr %4, null, !dbg !2902
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2903

lor.lhs.false:                                    ; preds = %entry
  %5 = load ptr, ptr %outlen.addr, align 8, !dbg !2904, !tbaa !1148
  %cmp1 = icmp eq ptr %5, null, !dbg !2905
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !2906

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %6 = load ptr, ptr %inlen.addr, align 8, !dbg !2907, !tbaa !1148
  %cmp3 = icmp eq ptr %6, null, !dbg !2908
  br i1 %cmp3, label %if.then, label %if.end, !dbg !2909

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4, !dbg !2910
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2910

if.end:                                           ; preds = %lor.lhs.false2
  %7 = load ptr, ptr %in.addr, align 8, !dbg !2911, !tbaa !1148
  %cmp4 = icmp eq ptr %7, null, !dbg !2913
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2914

if.then5:                                         ; preds = %if.end
  %8 = load ptr, ptr %outlen.addr, align 8, !dbg !2915, !tbaa !1148
  store i32 0, ptr %8, align 4, !dbg !2917, !tbaa !1185
  %9 = load ptr, ptr %inlen.addr, align 8, !dbg !2918, !tbaa !1148
  store i32 0, ptr %9, align 4, !dbg !2919, !tbaa !1185
  store i32 0, ptr %retval, align 4, !dbg !2920
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2920

if.end6:                                          ; preds = %if.end
  %10 = load ptr, ptr %in.addr, align 8, !dbg !2921, !tbaa !1148
  %11 = load ptr, ptr %inlen.addr, align 8, !dbg !2922, !tbaa !1148
  %12 = load i32, ptr %11, align 4, !dbg !2923, !tbaa !1185
  %idx.ext = sext i32 %12 to i64, !dbg !2924
  %add.ptr = getelementptr inbounds i8, ptr %10, i64 %idx.ext, !dbg !2924
  store ptr %add.ptr, ptr %inend, align 8, !dbg !2925, !tbaa !1148
  %13 = load ptr, ptr %out, align 8, !dbg !2926, !tbaa !1148
  %14 = load ptr, ptr %outlen.addr, align 8, !dbg !2927, !tbaa !1148
  %15 = load i32, ptr %14, align 4, !dbg !2928, !tbaa !1185
  %div = sdiv i32 %15, 2, !dbg !2929
  %idx.ext7 = sext i32 %div to i64, !dbg !2930
  %add.ptr8 = getelementptr inbounds i16, ptr %13, i64 %idx.ext7, !dbg !2930
  store ptr %add.ptr8, ptr %outend, align 8, !dbg !2931, !tbaa !1148
  br label %while.cond, !dbg !2932

while.cond:                                       ; preds = %if.end128, %if.end6
  %16 = load ptr, ptr %in.addr, align 8, !dbg !2933, !tbaa !1148
  %17 = load ptr, ptr %inend, align 8, !dbg !2934, !tbaa !1148
  %cmp9 = icmp ult ptr %16, %17, !dbg !2935
  br i1 %cmp9, label %while.body, label %while.end, !dbg !2932

while.body:                                       ; preds = %while.cond
  %18 = load ptr, ptr %in.addr, align 8, !dbg !2936, !tbaa !1148
  %incdec.ptr = getelementptr inbounds i8, ptr %18, i32 1, !dbg !2936
  store ptr %incdec.ptr, ptr %in.addr, align 8, !dbg !2936, !tbaa !1148
  %19 = load i8, ptr %18, align 1, !dbg !2938, !tbaa !1210
  %conv = zext i8 %19 to i32, !dbg !2938
  store i32 %conv, ptr %d, align 4, !dbg !2939, !tbaa !1185
  %20 = load i32, ptr %d, align 4, !dbg !2940, !tbaa !1185
  %cmp10 = icmp ult i32 %20, 128, !dbg !2942
  br i1 %cmp10, label %if.then12, label %if.else, !dbg !2943

if.then12:                                        ; preds = %while.body
  %21 = load i32, ptr %d, align 4, !dbg !2944, !tbaa !1185
  store i32 %21, ptr %c, align 4, !dbg !2946, !tbaa !1185
  store i32 0, ptr %trailing, align 4, !dbg !2947, !tbaa !1185
  br label %if.end50, !dbg !2948

if.else:                                          ; preds = %while.body
  %22 = load i32, ptr %d, align 4, !dbg !2949, !tbaa !1185
  %cmp13 = icmp ult i32 %22, 192, !dbg !2951
  br i1 %cmp13, label %if.then15, label %if.else21, !dbg !2952

if.then15:                                        ; preds = %if.else
  %23 = load ptr, ptr %out, align 8, !dbg !2953, !tbaa !1148
  %24 = load ptr, ptr %outstart, align 8, !dbg !2955, !tbaa !1148
  %sub.ptr.lhs.cast = ptrtoint ptr %23 to i64, !dbg !2956
  %sub.ptr.rhs.cast = ptrtoint ptr %24 to i64, !dbg !2956
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2956
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 2, !dbg !2956
  %mul = mul nsw i64 %sub.ptr.div, 2, !dbg !2957
  %conv16 = trunc i64 %mul to i32, !dbg !2958
  %25 = load ptr, ptr %outlen.addr, align 8, !dbg !2959, !tbaa !1148
  store i32 %conv16, ptr %25, align 4, !dbg !2960, !tbaa !1185
  %26 = load ptr, ptr %processed, align 8, !dbg !2961, !tbaa !1148
  %27 = load ptr, ptr %instart, align 8, !dbg !2962, !tbaa !1148
  %sub.ptr.lhs.cast17 = ptrtoint ptr %26 to i64, !dbg !2963
  %sub.ptr.rhs.cast18 = ptrtoint ptr %27 to i64, !dbg !2963
  %sub.ptr.sub19 = sub i64 %sub.ptr.lhs.cast17, %sub.ptr.rhs.cast18, !dbg !2963
  %conv20 = trunc i64 %sub.ptr.sub19 to i32, !dbg !2961
  %28 = load ptr, ptr %inlen.addr, align 8, !dbg !2964, !tbaa !1148
  store i32 %conv20, ptr %28, align 4, !dbg !2965, !tbaa !1185
  store i32 -2, ptr %retval, align 4, !dbg !2966
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2966

if.else21:                                        ; preds = %if.else
  %29 = load i32, ptr %d, align 4, !dbg !2967, !tbaa !1185
  %cmp22 = icmp ult i32 %29, 224, !dbg !2969
  br i1 %cmp22, label %if.then24, label %if.else25, !dbg !2970

if.then24:                                        ; preds = %if.else21
  %30 = load i32, ptr %d, align 4, !dbg !2971, !tbaa !1185
  %and = and i32 %30, 31, !dbg !2973
  store i32 %and, ptr %c, align 4, !dbg !2974, !tbaa !1185
  store i32 1, ptr %trailing, align 4, !dbg !2975, !tbaa !1185
  br label %if.end48, !dbg !2976

if.else25:                                        ; preds = %if.else21
  %31 = load i32, ptr %d, align 4, !dbg !2977, !tbaa !1185
  %cmp26 = icmp ult i32 %31, 240, !dbg !2979
  br i1 %cmp26, label %if.then28, label %if.else30, !dbg !2980

if.then28:                                        ; preds = %if.else25
  %32 = load i32, ptr %d, align 4, !dbg !2981, !tbaa !1185
  %and29 = and i32 %32, 15, !dbg !2983
  store i32 %and29, ptr %c, align 4, !dbg !2984, !tbaa !1185
  store i32 2, ptr %trailing, align 4, !dbg !2985, !tbaa !1185
  br label %if.end47, !dbg !2986

if.else30:                                        ; preds = %if.else25
  %33 = load i32, ptr %d, align 4, !dbg !2987, !tbaa !1185
  %cmp31 = icmp ult i32 %33, 248, !dbg !2989
  br i1 %cmp31, label %if.then33, label %if.else35, !dbg !2990

if.then33:                                        ; preds = %if.else30
  %34 = load i32, ptr %d, align 4, !dbg !2991, !tbaa !1185
  %and34 = and i32 %34, 7, !dbg !2993
  store i32 %and34, ptr %c, align 4, !dbg !2994, !tbaa !1185
  store i32 3, ptr %trailing, align 4, !dbg !2995, !tbaa !1185
  br label %if.end46, !dbg !2996

if.else35:                                        ; preds = %if.else30
  %35 = load ptr, ptr %out, align 8, !dbg !2997, !tbaa !1148
  %36 = load ptr, ptr %outstart, align 8, !dbg !2999, !tbaa !1148
  %sub.ptr.lhs.cast36 = ptrtoint ptr %35 to i64, !dbg !3000
  %sub.ptr.rhs.cast37 = ptrtoint ptr %36 to i64, !dbg !3000
  %sub.ptr.sub38 = sub i64 %sub.ptr.lhs.cast36, %sub.ptr.rhs.cast37, !dbg !3000
  %sub.ptr.div39 = sdiv exact i64 %sub.ptr.sub38, 2, !dbg !3000
  %mul40 = mul nsw i64 %sub.ptr.div39, 2, !dbg !3001
  %conv41 = trunc i64 %mul40 to i32, !dbg !3002
  %37 = load ptr, ptr %outlen.addr, align 8, !dbg !3003, !tbaa !1148
  store i32 %conv41, ptr %37, align 4, !dbg !3004, !tbaa !1185
  %38 = load ptr, ptr %processed, align 8, !dbg !3005, !tbaa !1148
  %39 = load ptr, ptr %instart, align 8, !dbg !3006, !tbaa !1148
  %sub.ptr.lhs.cast42 = ptrtoint ptr %38 to i64, !dbg !3007
  %sub.ptr.rhs.cast43 = ptrtoint ptr %39 to i64, !dbg !3007
  %sub.ptr.sub44 = sub i64 %sub.ptr.lhs.cast42, %sub.ptr.rhs.cast43, !dbg !3007
  %conv45 = trunc i64 %sub.ptr.sub44 to i32, !dbg !3005
  %40 = load ptr, ptr %inlen.addr, align 8, !dbg !3008, !tbaa !1148
  store i32 %conv45, ptr %40, align 4, !dbg !3009, !tbaa !1185
  store i32 -2, ptr %retval, align 4, !dbg !3010
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3010

if.end46:                                         ; preds = %if.then33
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then28
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then24
  br label %if.end49

if.end49:                                         ; preds = %if.end48
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then12
  %41 = load ptr, ptr %inend, align 8, !dbg !3011, !tbaa !1148
  %42 = load ptr, ptr %in.addr, align 8, !dbg !3013, !tbaa !1148
  %sub.ptr.lhs.cast51 = ptrtoint ptr %41 to i64, !dbg !3014
  %sub.ptr.rhs.cast52 = ptrtoint ptr %42 to i64, !dbg !3014
  %sub.ptr.sub53 = sub i64 %sub.ptr.lhs.cast51, %sub.ptr.rhs.cast52, !dbg !3014
  %43 = load i32, ptr %trailing, align 4, !dbg !3015, !tbaa !1185
  %conv54 = sext i32 %43 to i64, !dbg !3015
  %cmp55 = icmp slt i64 %sub.ptr.sub53, %conv54, !dbg !3016
  br i1 %cmp55, label %if.then57, label %if.end58, !dbg !3017

if.then57:                                        ; preds = %if.end50
  br label %while.end, !dbg !3018

if.end58:                                         ; preds = %if.end50
  br label %for.cond, !dbg !3020

for.cond:                                         ; preds = %for.inc, %if.end58
  %44 = load i32, ptr %trailing, align 4, !dbg !3021, !tbaa !1185
  %tobool = icmp ne i32 %44, 0, !dbg !3024
  br i1 %tobool, label %for.body, label %for.end, !dbg !3024

for.body:                                         ; preds = %for.cond
  %45 = load ptr, ptr %in.addr, align 8, !dbg !3025, !tbaa !1148
  %46 = load ptr, ptr %inend, align 8, !dbg !3028, !tbaa !1148
  %cmp59 = icmp uge ptr %45, %46, !dbg !3029
  br i1 %cmp59, label %if.then67, label %lor.lhs.false61, !dbg !3030

lor.lhs.false61:                                  ; preds = %for.body
  %47 = load ptr, ptr %in.addr, align 8, !dbg !3031, !tbaa !1148
  %incdec.ptr62 = getelementptr inbounds i8, ptr %47, i32 1, !dbg !3031
  store ptr %incdec.ptr62, ptr %in.addr, align 8, !dbg !3031, !tbaa !1148
  %48 = load i8, ptr %47, align 1, !dbg !3032, !tbaa !1210
  %conv63 = zext i8 %48 to i32, !dbg !3032
  store i32 %conv63, ptr %d, align 4, !dbg !3033, !tbaa !1185
  %and64 = and i32 %conv63, 192, !dbg !3034
  %cmp65 = icmp ne i32 %and64, 128, !dbg !3035
  br i1 %cmp65, label %if.then67, label %if.end68, !dbg !3036

if.then67:                                        ; preds = %lor.lhs.false61, %for.body
  br label %for.end, !dbg !3037

if.end68:                                         ; preds = %lor.lhs.false61
  %49 = load i32, ptr %c, align 4, !dbg !3038, !tbaa !1185
  %shl = shl i32 %49, 6, !dbg !3038
  store i32 %shl, ptr %c, align 4, !dbg !3038, !tbaa !1185
  %50 = load i32, ptr %d, align 4, !dbg !3039, !tbaa !1185
  %and69 = and i32 %50, 63, !dbg !3040
  %51 = load i32, ptr %c, align 4, !dbg !3041, !tbaa !1185
  %or = or i32 %51, %and69, !dbg !3041
  store i32 %or, ptr %c, align 4, !dbg !3041, !tbaa !1185
  br label %for.inc, !dbg !3042

for.inc:                                          ; preds = %if.end68
  %52 = load i32, ptr %trailing, align 4, !dbg !3043, !tbaa !1185
  %dec = add nsw i32 %52, -1, !dbg !3043
  store i32 %dec, ptr %trailing, align 4, !dbg !3043, !tbaa !1185
  br label %for.cond, !dbg !3044, !llvm.loop !3045

for.end:                                          ; preds = %if.then67, %for.cond
  %53 = load i32, ptr %c, align 4, !dbg !3047, !tbaa !1185
  %cmp70 = icmp ult i32 %53, 65536, !dbg !3049
  br i1 %cmp70, label %if.then72, label %if.else87, !dbg !3050

if.then72:                                        ; preds = %for.end
  %54 = load ptr, ptr %out, align 8, !dbg !3051, !tbaa !1148
  %55 = load ptr, ptr %outend, align 8, !dbg !3054, !tbaa !1148
  %cmp73 = icmp uge ptr %54, %55, !dbg !3055
  br i1 %cmp73, label %if.then75, label %if.end76, !dbg !3056

if.then75:                                        ; preds = %if.then72
  br label %while.end, !dbg !3057

if.end76:                                         ; preds = %if.then72
  %56 = load i32, ptr @xmlLittleEndian, align 4, !dbg !3058, !tbaa !1185
  %tobool77 = icmp ne i32 %56, 0, !dbg !3058
  br i1 %tobool77, label %if.then78, label %if.else81, !dbg !3060

if.then78:                                        ; preds = %if.end76
  %57 = load i32, ptr %c, align 4, !dbg !3061, !tbaa !1185
  %conv79 = trunc i32 %57 to i16, !dbg !3061
  %58 = load ptr, ptr %out, align 8, !dbg !3063, !tbaa !1148
  %incdec.ptr80 = getelementptr inbounds i16, ptr %58, i32 1, !dbg !3063
  store ptr %incdec.ptr80, ptr %out, align 8, !dbg !3063, !tbaa !1148
  store i16 %conv79, ptr %58, align 2, !dbg !3064, !tbaa !2481
  br label %if.end86, !dbg !3065

if.else81:                                        ; preds = %if.end76
  %59 = load ptr, ptr %out, align 8, !dbg !3066, !tbaa !1148
  store ptr %59, ptr %tmp, align 8, !dbg !3068, !tbaa !1148
  %60 = load i32, ptr %c, align 4, !dbg !3069, !tbaa !1185
  %conv82 = trunc i32 %60 to i8, !dbg !3069
  %61 = load ptr, ptr %tmp, align 8, !dbg !3070, !tbaa !1148
  store i8 %conv82, ptr %61, align 1, !dbg !3071, !tbaa !1210
  %62 = load i32, ptr %c, align 4, !dbg !3072, !tbaa !1185
  %shr = lshr i32 %62, 8, !dbg !3073
  %conv83 = trunc i32 %shr to i8, !dbg !3072
  %63 = load ptr, ptr %tmp, align 8, !dbg !3074, !tbaa !1148
  %add.ptr84 = getelementptr inbounds i8, ptr %63, i64 1, !dbg !3075
  store i8 %conv83, ptr %add.ptr84, align 1, !dbg !3076, !tbaa !1210
  %64 = load ptr, ptr %out, align 8, !dbg !3077, !tbaa !1148
  %incdec.ptr85 = getelementptr inbounds i16, ptr %64, i32 1, !dbg !3077
  store ptr %incdec.ptr85, ptr %out, align 8, !dbg !3077, !tbaa !1148
  br label %if.end86

if.end86:                                         ; preds = %if.else81, %if.then78
  br label %if.end128, !dbg !3078

if.else87:                                        ; preds = %for.end
  %65 = load i32, ptr %c, align 4, !dbg !3079, !tbaa !1185
  %cmp88 = icmp ult i32 %65, 1114112, !dbg !3081
  br i1 %cmp88, label %if.then90, label %if.else126, !dbg !3082

if.then90:                                        ; preds = %if.else87
  %66 = load ptr, ptr %out, align 8, !dbg !3083, !tbaa !1148
  %add.ptr91 = getelementptr inbounds i16, ptr %66, i64 1, !dbg !3086
  %67 = load ptr, ptr %outend, align 8, !dbg !3087, !tbaa !1148
  %cmp92 = icmp uge ptr %add.ptr91, %67, !dbg !3088
  br i1 %cmp92, label %if.then94, label %if.end95, !dbg !3089

if.then94:                                        ; preds = %if.then90
  br label %while.end, !dbg !3090

if.end95:                                         ; preds = %if.then90
  %68 = load i32, ptr %c, align 4, !dbg !3091, !tbaa !1185
  %sub = sub i32 %68, 65536, !dbg !3091
  store i32 %sub, ptr %c, align 4, !dbg !3091, !tbaa !1185
  %69 = load i32, ptr @xmlLittleEndian, align 4, !dbg !3092, !tbaa !1185
  %tobool96 = icmp ne i32 %69, 0, !dbg !3092
  br i1 %tobool96, label %if.then97, label %if.else106, !dbg !3094

if.then97:                                        ; preds = %if.end95
  %70 = load i32, ptr %c, align 4, !dbg !3095, !tbaa !1185
  %shr98 = lshr i32 %70, 10, !dbg !3097
  %or99 = or i32 55296, %shr98, !dbg !3098
  %conv100 = trunc i32 %or99 to i16, !dbg !3099
  %71 = load ptr, ptr %out, align 8, !dbg !3100, !tbaa !1148
  %incdec.ptr101 = getelementptr inbounds i16, ptr %71, i32 1, !dbg !3100
  store ptr %incdec.ptr101, ptr %out, align 8, !dbg !3100, !tbaa !1148
  store i16 %conv100, ptr %71, align 2, !dbg !3101, !tbaa !2481
  %72 = load i32, ptr %c, align 4, !dbg !3102, !tbaa !1185
  %and102 = and i32 %72, 1023, !dbg !3103
  %or103 = or i32 56320, %and102, !dbg !3104
  %conv104 = trunc i32 %or103 to i16, !dbg !3105
  %73 = load ptr, ptr %out, align 8, !dbg !3106, !tbaa !1148
  %incdec.ptr105 = getelementptr inbounds i16, ptr %73, i32 1, !dbg !3106
  store ptr %incdec.ptr105, ptr %out, align 8, !dbg !3106, !tbaa !1148
  store i16 %conv104, ptr %73, align 2, !dbg !3107, !tbaa !2481
  br label %if.end125, !dbg !3108

if.else106:                                       ; preds = %if.end95
  %74 = load i32, ptr %c, align 4, !dbg !3109, !tbaa !1185
  %shr107 = lshr i32 %74, 10, !dbg !3111
  %or108 = or i32 55296, %shr107, !dbg !3112
  %conv109 = trunc i32 %or108 to i16, !dbg !3113
  store i16 %conv109, ptr %tmp1, align 2, !dbg !3114, !tbaa !2481
  %75 = load ptr, ptr %out, align 8, !dbg !3115, !tbaa !1148
  store ptr %75, ptr %tmp, align 8, !dbg !3116, !tbaa !1148
  %76 = load i16, ptr %tmp1, align 2, !dbg !3117, !tbaa !2481
  %conv110 = trunc i16 %76 to i8, !dbg !3118
  %77 = load ptr, ptr %tmp, align 8, !dbg !3119, !tbaa !1148
  store i8 %conv110, ptr %77, align 1, !dbg !3120, !tbaa !1210
  %78 = load i16, ptr %tmp1, align 2, !dbg !3121, !tbaa !2481
  %conv111 = zext i16 %78 to i32, !dbg !3121
  %shr112 = ashr i32 %conv111, 8, !dbg !3122
  %conv113 = trunc i32 %shr112 to i8, !dbg !3121
  %79 = load ptr, ptr %tmp, align 8, !dbg !3123, !tbaa !1148
  %add.ptr114 = getelementptr inbounds i8, ptr %79, i64 1, !dbg !3124
  store i8 %conv113, ptr %add.ptr114, align 1, !dbg !3125, !tbaa !1210
  %80 = load ptr, ptr %out, align 8, !dbg !3126, !tbaa !1148
  %incdec.ptr115 = getelementptr inbounds i16, ptr %80, i32 1, !dbg !3126
  store ptr %incdec.ptr115, ptr %out, align 8, !dbg !3126, !tbaa !1148
  %81 = load i32, ptr %c, align 4, !dbg !3127, !tbaa !1185
  %and116 = and i32 %81, 1023, !dbg !3128
  %or117 = or i32 56320, %and116, !dbg !3129
  %conv118 = trunc i32 %or117 to i16, !dbg !3130
  store i16 %conv118, ptr %tmp2, align 2, !dbg !3131, !tbaa !2481
  %82 = load ptr, ptr %out, align 8, !dbg !3132, !tbaa !1148
  store ptr %82, ptr %tmp, align 8, !dbg !3133, !tbaa !1148
  %83 = load i16, ptr %tmp2, align 2, !dbg !3134, !tbaa !2481
  %conv119 = trunc i16 %83 to i8, !dbg !3135
  %84 = load ptr, ptr %tmp, align 8, !dbg !3136, !tbaa !1148
  store i8 %conv119, ptr %84, align 1, !dbg !3137, !tbaa !1210
  %85 = load i16, ptr %tmp2, align 2, !dbg !3138, !tbaa !2481
  %conv120 = zext i16 %85 to i32, !dbg !3138
  %shr121 = ashr i32 %conv120, 8, !dbg !3139
  %conv122 = trunc i32 %shr121 to i8, !dbg !3138
  %86 = load ptr, ptr %tmp, align 8, !dbg !3140, !tbaa !1148
  %add.ptr123 = getelementptr inbounds i8, ptr %86, i64 1, !dbg !3141
  store i8 %conv122, ptr %add.ptr123, align 1, !dbg !3142, !tbaa !1210
  %87 = load ptr, ptr %out, align 8, !dbg !3143, !tbaa !1148
  %incdec.ptr124 = getelementptr inbounds i16, ptr %87, i32 1, !dbg !3143
  store ptr %incdec.ptr124, ptr %out, align 8, !dbg !3143, !tbaa !1148
  br label %if.end125

if.end125:                                        ; preds = %if.else106, %if.then97
  br label %if.end127, !dbg !3144

if.else126:                                       ; preds = %if.else87
  br label %while.end, !dbg !3145

if.end127:                                        ; preds = %if.end125
  br label %if.end128

if.end128:                                        ; preds = %if.end127, %if.end86
  %88 = load ptr, ptr %in.addr, align 8, !dbg !3146, !tbaa !1148
  store ptr %88, ptr %processed, align 8, !dbg !3147, !tbaa !1148
  br label %while.cond, !dbg !2932, !llvm.loop !3148

while.end:                                        ; preds = %if.else126, %if.then94, %if.then75, %if.then57, %while.cond
  %89 = load ptr, ptr %out, align 8, !dbg !3150, !tbaa !1148
  %90 = load ptr, ptr %outstart, align 8, !dbg !3151, !tbaa !1148
  %sub.ptr.lhs.cast129 = ptrtoint ptr %89 to i64, !dbg !3152
  %sub.ptr.rhs.cast130 = ptrtoint ptr %90 to i64, !dbg !3152
  %sub.ptr.sub131 = sub i64 %sub.ptr.lhs.cast129, %sub.ptr.rhs.cast130, !dbg !3152
  %sub.ptr.div132 = sdiv exact i64 %sub.ptr.sub131, 2, !dbg !3152
  %mul133 = mul nsw i64 %sub.ptr.div132, 2, !dbg !3153
  %conv134 = trunc i64 %mul133 to i32, !dbg !3154
  %91 = load ptr, ptr %outlen.addr, align 8, !dbg !3155, !tbaa !1148
  store i32 %conv134, ptr %91, align 4, !dbg !3156, !tbaa !1185
  %92 = load ptr, ptr %processed, align 8, !dbg !3157, !tbaa !1148
  %93 = load ptr, ptr %instart, align 8, !dbg !3158, !tbaa !1148
  %sub.ptr.lhs.cast135 = ptrtoint ptr %92 to i64, !dbg !3159
  %sub.ptr.rhs.cast136 = ptrtoint ptr %93 to i64, !dbg !3159
  %sub.ptr.sub137 = sub i64 %sub.ptr.lhs.cast135, %sub.ptr.rhs.cast136, !dbg !3159
  %conv138 = trunc i64 %sub.ptr.sub137 to i32, !dbg !3157
  %94 = load ptr, ptr %inlen.addr, align 8, !dbg !3160, !tbaa !1148
  store i32 %conv138, ptr %94, align 4, !dbg !3161, !tbaa !1185
  %95 = load ptr, ptr %outlen.addr, align 8, !dbg !3162, !tbaa !1148
  %96 = load i32, ptr %95, align 4, !dbg !3163, !tbaa !1185
  store i32 %96, ptr %retval, align 4, !dbg !3164
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3164

cleanup:                                          ; preds = %while.end, %if.else35, %if.then15, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %tmp2) #9, !dbg !3165
  call void @llvm.lifetime.end.p0(i64 2, ptr %tmp1) #9, !dbg !3165
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #9, !dbg !3165
  call void @llvm.lifetime.end.p0(i64 4, ptr %trailing) #9, !dbg !3165
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #9, !dbg !3165
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #9, !dbg !3165
  call void @llvm.lifetime.end.p0(i64 8, ptr %inend) #9, !dbg !3165
  call void @llvm.lifetime.end.p0(i64 8, ptr %outend) #9, !dbg !3165
  call void @llvm.lifetime.end.p0(i64 8, ptr %outstart) #9, !dbg !3165
  call void @llvm.lifetime.end.p0(i64 8, ptr %instart) #9, !dbg !3165
  call void @llvm.lifetime.end.p0(i64 8, ptr %processed) #9, !dbg !3165
  call void @llvm.lifetime.end.p0(i64 8, ptr %out) #9, !dbg !3165
  %97 = load i32, ptr %retval, align 4, !dbg !3165
  ret i32 %97, !dbg !3165
}

; Function Attrs: nounwind uwtable
define internal i32 @UTF16BEToUTF8(ptr noundef %out, ptr noundef %outlen, ptr noundef %inb, ptr noundef %inlenb) #0 !dbg !3166 {
entry:
  %retval = alloca i32, align 4
  %out.addr = alloca ptr, align 8
  %outlen.addr = alloca ptr, align 8
  %inb.addr = alloca ptr, align 8
  %inlenb.addr = alloca ptr, align 8
  %outstart = alloca ptr, align 8
  %processed = alloca ptr, align 8
  %outend = alloca ptr, align 8
  %in = alloca ptr, align 8
  %inend = alloca ptr, align 8
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %inlen = alloca i32, align 4
  %tmp = alloca ptr, align 8
  %bits = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %out, ptr %out.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !3168, metadata !DIExpression()), !dbg !3182
  store ptr %outlen, ptr %outlen.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %outlen.addr, metadata !3169, metadata !DIExpression()), !dbg !3183
  store ptr %inb, ptr %inb.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %inb.addr, metadata !3170, metadata !DIExpression()), !dbg !3184
  store ptr %inlenb, ptr %inlenb.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %inlenb.addr, metadata !3171, metadata !DIExpression()), !dbg !3185
  call void @llvm.lifetime.start.p0(i64 8, ptr %outstart) #9, !dbg !3186
  tail call void @llvm.dbg.declare(metadata ptr %outstart, metadata !3172, metadata !DIExpression()), !dbg !3187
  %0 = load ptr, ptr %out.addr, align 8, !dbg !3188, !tbaa !1148
  store ptr %0, ptr %outstart, align 8, !dbg !3187, !tbaa !1148
  call void @llvm.lifetime.start.p0(i64 8, ptr %processed) #9, !dbg !3189
  tail call void @llvm.dbg.declare(metadata ptr %processed, metadata !3173, metadata !DIExpression()), !dbg !3190
  %1 = load ptr, ptr %inb.addr, align 8, !dbg !3191, !tbaa !1148
  store ptr %1, ptr %processed, align 8, !dbg !3190, !tbaa !1148
  call void @llvm.lifetime.start.p0(i64 8, ptr %outend) #9, !dbg !3192
  tail call void @llvm.dbg.declare(metadata ptr %outend, metadata !3174, metadata !DIExpression()), !dbg !3193
  %2 = load ptr, ptr %out.addr, align 8, !dbg !3194, !tbaa !1148
  %3 = load ptr, ptr %outlen.addr, align 8, !dbg !3195, !tbaa !1148
  %4 = load i32, ptr %3, align 4, !dbg !3196, !tbaa !1185
  %idx.ext = sext i32 %4 to i64, !dbg !3197
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 %idx.ext, !dbg !3197
  store ptr %add.ptr, ptr %outend, align 8, !dbg !3193, !tbaa !1148
  call void @llvm.lifetime.start.p0(i64 8, ptr %in) #9, !dbg !3198
  tail call void @llvm.dbg.declare(metadata ptr %in, metadata !3175, metadata !DIExpression()), !dbg !3199
  %5 = load ptr, ptr %inb.addr, align 8, !dbg !3200, !tbaa !1148
  store ptr %5, ptr %in, align 8, !dbg !3199, !tbaa !1148
  call void @llvm.lifetime.start.p0(i64 8, ptr %inend) #9, !dbg !3201
  tail call void @llvm.dbg.declare(metadata ptr %inend, metadata !3176, metadata !DIExpression()), !dbg !3202
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #9, !dbg !3203
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !3177, metadata !DIExpression()), !dbg !3204
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #9, !dbg !3203
  tail call void @llvm.dbg.declare(metadata ptr %d, metadata !3178, metadata !DIExpression()), !dbg !3205
  call void @llvm.lifetime.start.p0(i64 4, ptr %inlen) #9, !dbg !3203
  tail call void @llvm.dbg.declare(metadata ptr %inlen, metadata !3179, metadata !DIExpression()), !dbg !3206
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #9, !dbg !3207
  tail call void @llvm.dbg.declare(metadata ptr %tmp, metadata !3180, metadata !DIExpression()), !dbg !3208
  call void @llvm.lifetime.start.p0(i64 4, ptr %bits) #9, !dbg !3209
  tail call void @llvm.dbg.declare(metadata ptr %bits, metadata !3181, metadata !DIExpression()), !dbg !3210
  %6 = load ptr, ptr %inlenb.addr, align 8, !dbg !3211, !tbaa !1148
  %7 = load i32, ptr %6, align 4, !dbg !3213, !tbaa !1185
  %rem = srem i32 %7, 2, !dbg !3214
  %cmp = icmp eq i32 %rem, 1, !dbg !3215
  br i1 %cmp, label %if.then, label %if.end, !dbg !3216

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %inlenb.addr, align 8, !dbg !3217, !tbaa !1148
  %9 = load i32, ptr %8, align 4, !dbg !3218, !tbaa !1185
  %dec = add nsw i32 %9, -1, !dbg !3218
  store i32 %dec, ptr %8, align 4, !dbg !3218, !tbaa !1185
  br label %if.end, !dbg !3219

if.end:                                           ; preds = %if.then, %entry
  %10 = load ptr, ptr %inlenb.addr, align 8, !dbg !3220, !tbaa !1148
  %11 = load i32, ptr %10, align 4, !dbg !3221, !tbaa !1185
  %div = sdiv i32 %11, 2, !dbg !3222
  store i32 %div, ptr %inlen, align 4, !dbg !3223, !tbaa !1185
  %12 = load ptr, ptr %in, align 8, !dbg !3224, !tbaa !1148
  %13 = load i32, ptr %inlen, align 4, !dbg !3225, !tbaa !1185
  %idx.ext1 = zext i32 %13 to i64, !dbg !3226
  %add.ptr2 = getelementptr inbounds i16, ptr %12, i64 %idx.ext1, !dbg !3226
  store ptr %add.ptr2, ptr %inend, align 8, !dbg !3227, !tbaa !1148
  br label %while.cond, !dbg !3228

while.cond:                                       ; preds = %for.end, %if.end
  %14 = load ptr, ptr %in, align 8, !dbg !3229, !tbaa !1148
  %15 = load ptr, ptr %inend, align 8, !dbg !3230, !tbaa !1148
  %cmp3 = icmp ult ptr %14, %15, !dbg !3231
  br i1 %cmp3, label %while.body, label %while.end, !dbg !3228

while.body:                                       ; preds = %while.cond
  %16 = load i32, ptr @xmlLittleEndian, align 4, !dbg !3232, !tbaa !1185
  %tobool = icmp ne i32 %16, 0, !dbg !3232
  br i1 %tobool, label %if.then4, label %if.else, !dbg !3235

if.then4:                                         ; preds = %while.body
  %17 = load ptr, ptr %in, align 8, !dbg !3236, !tbaa !1148
  store ptr %17, ptr %tmp, align 8, !dbg !3238, !tbaa !1148
  %18 = load ptr, ptr %tmp, align 8, !dbg !3239, !tbaa !1148
  %incdec.ptr = getelementptr inbounds i8, ptr %18, i32 1, !dbg !3239
  store ptr %incdec.ptr, ptr %tmp, align 8, !dbg !3239, !tbaa !1148
  %19 = load i8, ptr %18, align 1, !dbg !3240, !tbaa !1210
  %conv = zext i8 %19 to i32, !dbg !3240
  store i32 %conv, ptr %c, align 4, !dbg !3241, !tbaa !1185
  %20 = load i32, ptr %c, align 4, !dbg !3242, !tbaa !1185
  %shl = shl i32 %20, 8, !dbg !3243
  store i32 %shl, ptr %c, align 4, !dbg !3244, !tbaa !1185
  %21 = load i32, ptr %c, align 4, !dbg !3245, !tbaa !1185
  %22 = load ptr, ptr %tmp, align 8, !dbg !3246, !tbaa !1148
  %23 = load i8, ptr %22, align 1, !dbg !3247, !tbaa !1210
  %conv5 = zext i8 %23 to i32, !dbg !3248
  %or = or i32 %21, %conv5, !dbg !3249
  store i32 %or, ptr %c, align 4, !dbg !3250, !tbaa !1185
  %24 = load ptr, ptr %in, align 8, !dbg !3251, !tbaa !1148
  %incdec.ptr6 = getelementptr inbounds i16, ptr %24, i32 1, !dbg !3251
  store ptr %incdec.ptr6, ptr %in, align 8, !dbg !3251, !tbaa !1148
  br label %if.end9, !dbg !3252

if.else:                                          ; preds = %while.body
  %25 = load ptr, ptr %in, align 8, !dbg !3253, !tbaa !1148
  %incdec.ptr7 = getelementptr inbounds i16, ptr %25, i32 1, !dbg !3253
  store ptr %incdec.ptr7, ptr %in, align 8, !dbg !3253, !tbaa !1148
  %26 = load i16, ptr %25, align 2, !dbg !3255, !tbaa !2481
  %conv8 = zext i16 %26 to i32, !dbg !3255
  store i32 %conv8, ptr %c, align 4, !dbg !3256, !tbaa !1185
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then4
  %27 = load i32, ptr %c, align 4, !dbg !3257, !tbaa !1185
  %and = and i32 %27, 64512, !dbg !3259
  %cmp10 = icmp eq i32 %and, 55296, !dbg !3260
  br i1 %cmp10, label %if.then12, label %if.end52, !dbg !3261

if.then12:                                        ; preds = %if.end9
  %28 = load ptr, ptr %in, align 8, !dbg !3262, !tbaa !1148
  %29 = load ptr, ptr %inend, align 8, !dbg !3265, !tbaa !1148
  %cmp13 = icmp uge ptr %28, %29, !dbg !3266
  br i1 %cmp13, label %if.then15, label %if.end21, !dbg !3267

if.then15:                                        ; preds = %if.then12
  %30 = load ptr, ptr %out.addr, align 8, !dbg !3268, !tbaa !1148
  %31 = load ptr, ptr %outstart, align 8, !dbg !3270, !tbaa !1148
  %sub.ptr.lhs.cast = ptrtoint ptr %30 to i64, !dbg !3271
  %sub.ptr.rhs.cast = ptrtoint ptr %31 to i64, !dbg !3271
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3271
  %conv16 = trunc i64 %sub.ptr.sub to i32, !dbg !3268
  %32 = load ptr, ptr %outlen.addr, align 8, !dbg !3272, !tbaa !1148
  store i32 %conv16, ptr %32, align 4, !dbg !3273, !tbaa !1185
  %33 = load ptr, ptr %processed, align 8, !dbg !3274, !tbaa !1148
  %34 = load ptr, ptr %inb.addr, align 8, !dbg !3275, !tbaa !1148
  %sub.ptr.lhs.cast17 = ptrtoint ptr %33 to i64, !dbg !3276
  %sub.ptr.rhs.cast18 = ptrtoint ptr %34 to i64, !dbg !3276
  %sub.ptr.sub19 = sub i64 %sub.ptr.lhs.cast17, %sub.ptr.rhs.cast18, !dbg !3276
  %conv20 = trunc i64 %sub.ptr.sub19 to i32, !dbg !3274
  %35 = load ptr, ptr %inlenb.addr, align 8, !dbg !3277, !tbaa !1148
  store i32 %conv20, ptr %35, align 4, !dbg !3278, !tbaa !1185
  store i32 -2, ptr %retval, align 4, !dbg !3279
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3279

if.end21:                                         ; preds = %if.then12
  %36 = load i32, ptr @xmlLittleEndian, align 4, !dbg !3280, !tbaa !1185
  %tobool22 = icmp ne i32 %36, 0, !dbg !3280
  br i1 %tobool22, label %if.then23, label %if.else30, !dbg !3282

if.then23:                                        ; preds = %if.end21
  %37 = load ptr, ptr %in, align 8, !dbg !3283, !tbaa !1148
  store ptr %37, ptr %tmp, align 8, !dbg !3285, !tbaa !1148
  %38 = load ptr, ptr %tmp, align 8, !dbg !3286, !tbaa !1148
  %incdec.ptr24 = getelementptr inbounds i8, ptr %38, i32 1, !dbg !3286
  store ptr %incdec.ptr24, ptr %tmp, align 8, !dbg !3286, !tbaa !1148
  %39 = load i8, ptr %38, align 1, !dbg !3287, !tbaa !1210
  %conv25 = zext i8 %39 to i32, !dbg !3287
  store i32 %conv25, ptr %d, align 4, !dbg !3288, !tbaa !1185
  %40 = load i32, ptr %d, align 4, !dbg !3289, !tbaa !1185
  %shl26 = shl i32 %40, 8, !dbg !3290
  store i32 %shl26, ptr %d, align 4, !dbg !3291, !tbaa !1185
  %41 = load i32, ptr %d, align 4, !dbg !3292, !tbaa !1185
  %42 = load ptr, ptr %tmp, align 8, !dbg !3293, !tbaa !1148
  %43 = load i8, ptr %42, align 1, !dbg !3294, !tbaa !1210
  %conv27 = zext i8 %43 to i32, !dbg !3295
  %or28 = or i32 %41, %conv27, !dbg !3296
  store i32 %or28, ptr %d, align 4, !dbg !3297, !tbaa !1185
  %44 = load ptr, ptr %in, align 8, !dbg !3298, !tbaa !1148
  %incdec.ptr29 = getelementptr inbounds i16, ptr %44, i32 1, !dbg !3298
  store ptr %incdec.ptr29, ptr %in, align 8, !dbg !3298, !tbaa !1148
  br label %if.end33, !dbg !3299

if.else30:                                        ; preds = %if.end21
  %45 = load ptr, ptr %in, align 8, !dbg !3300, !tbaa !1148
  %incdec.ptr31 = getelementptr inbounds i16, ptr %45, i32 1, !dbg !3300
  store ptr %incdec.ptr31, ptr %in, align 8, !dbg !3300, !tbaa !1148
  %46 = load i16, ptr %45, align 2, !dbg !3302, !tbaa !2481
  %conv32 = zext i16 %46 to i32, !dbg !3302
  store i32 %conv32, ptr %d, align 4, !dbg !3303, !tbaa !1185
  br label %if.end33

if.end33:                                         ; preds = %if.else30, %if.then23
  %47 = load i32, ptr %d, align 4, !dbg !3304, !tbaa !1185
  %and34 = and i32 %47, 64512, !dbg !3306
  %cmp35 = icmp eq i32 %and34, 56320, !dbg !3307
  br i1 %cmp35, label %if.then37, label %if.else42, !dbg !3308

if.then37:                                        ; preds = %if.end33
  %48 = load i32, ptr %c, align 4, !dbg !3309, !tbaa !1185
  %and38 = and i32 %48, 1023, !dbg !3309
  store i32 %and38, ptr %c, align 4, !dbg !3309, !tbaa !1185
  %49 = load i32, ptr %c, align 4, !dbg !3311, !tbaa !1185
  %shl39 = shl i32 %49, 10, !dbg !3311
  store i32 %shl39, ptr %c, align 4, !dbg !3311, !tbaa !1185
  %50 = load i32, ptr %d, align 4, !dbg !3312, !tbaa !1185
  %and40 = and i32 %50, 1023, !dbg !3313
  %51 = load i32, ptr %c, align 4, !dbg !3314, !tbaa !1185
  %or41 = or i32 %51, %and40, !dbg !3314
  store i32 %or41, ptr %c, align 4, !dbg !3314, !tbaa !1185
  %52 = load i32, ptr %c, align 4, !dbg !3315, !tbaa !1185
  %add = add i32 %52, 65536, !dbg !3315
  store i32 %add, ptr %c, align 4, !dbg !3315, !tbaa !1185
  br label %if.end51, !dbg !3316

if.else42:                                        ; preds = %if.end33
  %53 = load ptr, ptr %out.addr, align 8, !dbg !3317, !tbaa !1148
  %54 = load ptr, ptr %outstart, align 8, !dbg !3319, !tbaa !1148
  %sub.ptr.lhs.cast43 = ptrtoint ptr %53 to i64, !dbg !3320
  %sub.ptr.rhs.cast44 = ptrtoint ptr %54 to i64, !dbg !3320
  %sub.ptr.sub45 = sub i64 %sub.ptr.lhs.cast43, %sub.ptr.rhs.cast44, !dbg !3320
  %conv46 = trunc i64 %sub.ptr.sub45 to i32, !dbg !3317
  %55 = load ptr, ptr %outlen.addr, align 8, !dbg !3321, !tbaa !1148
  store i32 %conv46, ptr %55, align 4, !dbg !3322, !tbaa !1185
  %56 = load ptr, ptr %processed, align 8, !dbg !3323, !tbaa !1148
  %57 = load ptr, ptr %inb.addr, align 8, !dbg !3324, !tbaa !1148
  %sub.ptr.lhs.cast47 = ptrtoint ptr %56 to i64, !dbg !3325
  %sub.ptr.rhs.cast48 = ptrtoint ptr %57 to i64, !dbg !3325
  %sub.ptr.sub49 = sub i64 %sub.ptr.lhs.cast47, %sub.ptr.rhs.cast48, !dbg !3325
  %conv50 = trunc i64 %sub.ptr.sub49 to i32, !dbg !3323
  %58 = load ptr, ptr %inlenb.addr, align 8, !dbg !3326, !tbaa !1148
  store i32 %conv50, ptr %58, align 4, !dbg !3327, !tbaa !1185
  store i32 -2, ptr %retval, align 4, !dbg !3328
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3328

if.end51:                                         ; preds = %if.then37
  br label %if.end52, !dbg !3329

if.end52:                                         ; preds = %if.end51, %if.end9
  %59 = load ptr, ptr %out.addr, align 8, !dbg !3330, !tbaa !1148
  %60 = load ptr, ptr %outend, align 8, !dbg !3332, !tbaa !1148
  %cmp53 = icmp uge ptr %59, %60, !dbg !3333
  br i1 %cmp53, label %if.then55, label %if.end56, !dbg !3334

if.then55:                                        ; preds = %if.end52
  br label %while.end, !dbg !3335

if.end56:                                         ; preds = %if.end52
  %61 = load i32, ptr %c, align 4, !dbg !3336, !tbaa !1185
  %cmp57 = icmp ult i32 %61, 128, !dbg !3338
  br i1 %cmp57, label %if.then59, label %if.else62, !dbg !3339

if.then59:                                        ; preds = %if.end56
  %62 = load i32, ptr %c, align 4, !dbg !3340, !tbaa !1185
  %conv60 = trunc i32 %62 to i8, !dbg !3340
  %63 = load ptr, ptr %out.addr, align 8, !dbg !3342, !tbaa !1148
  %incdec.ptr61 = getelementptr inbounds i8, ptr %63, i32 1, !dbg !3342
  store ptr %incdec.ptr61, ptr %out.addr, align 8, !dbg !3342, !tbaa !1148
  store i8 %conv60, ptr %63, align 1, !dbg !3343, !tbaa !1210
  store i32 -6, ptr %bits, align 4, !dbg !3344, !tbaa !1185
  br label %if.end87, !dbg !3345

if.else62:                                        ; preds = %if.end56
  %64 = load i32, ptr %c, align 4, !dbg !3346, !tbaa !1185
  %cmp63 = icmp ult i32 %64, 2048, !dbg !3348
  br i1 %cmp63, label %if.then65, label %if.else70, !dbg !3349

if.then65:                                        ; preds = %if.else62
  %65 = load i32, ptr %c, align 4, !dbg !3350, !tbaa !1185
  %shr = lshr i32 %65, 6, !dbg !3352
  %and66 = and i32 %shr, 31, !dbg !3353
  %or67 = or i32 %and66, 192, !dbg !3354
  %conv68 = trunc i32 %or67 to i8, !dbg !3355
  %66 = load ptr, ptr %out.addr, align 8, !dbg !3356, !tbaa !1148
  %incdec.ptr69 = getelementptr inbounds i8, ptr %66, i32 1, !dbg !3356
  store ptr %incdec.ptr69, ptr %out.addr, align 8, !dbg !3356, !tbaa !1148
  store i8 %conv68, ptr %66, align 1, !dbg !3357, !tbaa !1210
  store i32 0, ptr %bits, align 4, !dbg !3358, !tbaa !1185
  br label %if.end86, !dbg !3359

if.else70:                                        ; preds = %if.else62
  %67 = load i32, ptr %c, align 4, !dbg !3360, !tbaa !1185
  %cmp71 = icmp ult i32 %67, 65536, !dbg !3362
  br i1 %cmp71, label %if.then73, label %if.else79, !dbg !3363

if.then73:                                        ; preds = %if.else70
  %68 = load i32, ptr %c, align 4, !dbg !3364, !tbaa !1185
  %shr74 = lshr i32 %68, 12, !dbg !3366
  %and75 = and i32 %shr74, 15, !dbg !3367
  %or76 = or i32 %and75, 224, !dbg !3368
  %conv77 = trunc i32 %or76 to i8, !dbg !3369
  %69 = load ptr, ptr %out.addr, align 8, !dbg !3370, !tbaa !1148
  %incdec.ptr78 = getelementptr inbounds i8, ptr %69, i32 1, !dbg !3370
  store ptr %incdec.ptr78, ptr %out.addr, align 8, !dbg !3370, !tbaa !1148
  store i8 %conv77, ptr %69, align 1, !dbg !3371, !tbaa !1210
  store i32 6, ptr %bits, align 4, !dbg !3372, !tbaa !1185
  br label %if.end85, !dbg !3373

if.else79:                                        ; preds = %if.else70
  %70 = load i32, ptr %c, align 4, !dbg !3374, !tbaa !1185
  %shr80 = lshr i32 %70, 18, !dbg !3376
  %and81 = and i32 %shr80, 7, !dbg !3377
  %or82 = or i32 %and81, 240, !dbg !3378
  %conv83 = trunc i32 %or82 to i8, !dbg !3379
  %71 = load ptr, ptr %out.addr, align 8, !dbg !3380, !tbaa !1148
  %incdec.ptr84 = getelementptr inbounds i8, ptr %71, i32 1, !dbg !3380
  store ptr %incdec.ptr84, ptr %out.addr, align 8, !dbg !3380, !tbaa !1148
  store i8 %conv83, ptr %71, align 1, !dbg !3381, !tbaa !1210
  store i32 12, ptr %bits, align 4, !dbg !3382, !tbaa !1185
  br label %if.end85

if.end85:                                         ; preds = %if.else79, %if.then73
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %if.then65
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %if.then59
  br label %for.cond, !dbg !3383

for.cond:                                         ; preds = %for.inc, %if.end87
  %72 = load i32, ptr %bits, align 4, !dbg !3384, !tbaa !1185
  %cmp88 = icmp sge i32 %72, 0, !dbg !3387
  br i1 %cmp88, label %for.body, label %for.end, !dbg !3388

for.body:                                         ; preds = %for.cond
  %73 = load ptr, ptr %out.addr, align 8, !dbg !3389, !tbaa !1148
  %74 = load ptr, ptr %outend, align 8, !dbg !3392, !tbaa !1148
  %cmp90 = icmp uge ptr %73, %74, !dbg !3393
  br i1 %cmp90, label %if.then92, label %if.end93, !dbg !3394

if.then92:                                        ; preds = %for.body
  br label %for.end, !dbg !3395

if.end93:                                         ; preds = %for.body
  %75 = load i32, ptr %c, align 4, !dbg !3396, !tbaa !1185
  %76 = load i32, ptr %bits, align 4, !dbg !3397, !tbaa !1185
  %shr94 = lshr i32 %75, %76, !dbg !3398
  %and95 = and i32 %shr94, 63, !dbg !3399
  %or96 = or i32 %and95, 128, !dbg !3400
  %conv97 = trunc i32 %or96 to i8, !dbg !3401
  %77 = load ptr, ptr %out.addr, align 8, !dbg !3402, !tbaa !1148
  %incdec.ptr98 = getelementptr inbounds i8, ptr %77, i32 1, !dbg !3402
  store ptr %incdec.ptr98, ptr %out.addr, align 8, !dbg !3402, !tbaa !1148
  store i8 %conv97, ptr %77, align 1, !dbg !3403, !tbaa !1210
  br label %for.inc, !dbg !3404

for.inc:                                          ; preds = %if.end93
  %78 = load i32, ptr %bits, align 4, !dbg !3405, !tbaa !1185
  %sub = sub nsw i32 %78, 6, !dbg !3405
  store i32 %sub, ptr %bits, align 4, !dbg !3405, !tbaa !1185
  br label %for.cond, !dbg !3406, !llvm.loop !3407

for.end:                                          ; preds = %if.then92, %for.cond
  %79 = load ptr, ptr %in, align 8, !dbg !3409, !tbaa !1148
  store ptr %79, ptr %processed, align 8, !dbg !3410, !tbaa !1148
  br label %while.cond, !dbg !3228, !llvm.loop !3411

while.end:                                        ; preds = %if.then55, %while.cond
  %80 = load ptr, ptr %out.addr, align 8, !dbg !3413, !tbaa !1148
  %81 = load ptr, ptr %outstart, align 8, !dbg !3414, !tbaa !1148
  %sub.ptr.lhs.cast99 = ptrtoint ptr %80 to i64, !dbg !3415
  %sub.ptr.rhs.cast100 = ptrtoint ptr %81 to i64, !dbg !3415
  %sub.ptr.sub101 = sub i64 %sub.ptr.lhs.cast99, %sub.ptr.rhs.cast100, !dbg !3415
  %conv102 = trunc i64 %sub.ptr.sub101 to i32, !dbg !3413
  %82 = load ptr, ptr %outlen.addr, align 8, !dbg !3416, !tbaa !1148
  store i32 %conv102, ptr %82, align 4, !dbg !3417, !tbaa !1185
  %83 = load ptr, ptr %processed, align 8, !dbg !3418, !tbaa !1148
  %84 = load ptr, ptr %inb.addr, align 8, !dbg !3419, !tbaa !1148
  %sub.ptr.lhs.cast103 = ptrtoint ptr %83 to i64, !dbg !3420
  %sub.ptr.rhs.cast104 = ptrtoint ptr %84 to i64, !dbg !3420
  %sub.ptr.sub105 = sub i64 %sub.ptr.lhs.cast103, %sub.ptr.rhs.cast104, !dbg !3420
  %conv106 = trunc i64 %sub.ptr.sub105 to i32, !dbg !3418
  %85 = load ptr, ptr %inlenb.addr, align 8, !dbg !3421, !tbaa !1148
  store i32 %conv106, ptr %85, align 4, !dbg !3422, !tbaa !1185
  %86 = load ptr, ptr %outlen.addr, align 8, !dbg !3423, !tbaa !1148
  %87 = load i32, ptr %86, align 4, !dbg !3424, !tbaa !1185
  store i32 %87, ptr %retval, align 4, !dbg !3425
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3425

cleanup:                                          ; preds = %while.end, %if.else42, %if.then15
  call void @llvm.lifetime.end.p0(i64 4, ptr %bits) #9, !dbg !3426
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #9, !dbg !3426
  call void @llvm.lifetime.end.p0(i64 4, ptr %inlen) #9, !dbg !3426
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #9, !dbg !3426
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #9, !dbg !3426
  call void @llvm.lifetime.end.p0(i64 8, ptr %inend) #9, !dbg !3426
  call void @llvm.lifetime.end.p0(i64 8, ptr %in) #9, !dbg !3426
  call void @llvm.lifetime.end.p0(i64 8, ptr %outend) #9, !dbg !3426
  call void @llvm.lifetime.end.p0(i64 8, ptr %processed) #9, !dbg !3426
  call void @llvm.lifetime.end.p0(i64 8, ptr %outstart) #9, !dbg !3426
  %88 = load i32, ptr %retval, align 4, !dbg !3426
  ret i32 %88, !dbg !3426
}

; Function Attrs: nounwind uwtable
define internal i32 @UTF8ToUTF16BE(ptr noundef %outb, ptr noundef %outlen, ptr noundef %in, ptr noundef %inlen) #0 !dbg !3427 {
entry:
  %retval = alloca i32, align 4
  %outb.addr = alloca ptr, align 8
  %outlen.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %inlen.addr = alloca ptr, align 8
  %out = alloca ptr, align 8
  %processed = alloca ptr, align 8
  %instart = alloca ptr, align 8
  %outstart = alloca ptr, align 8
  %outend = alloca ptr, align 8
  %inend = alloca ptr, align 8
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %trailing = alloca i32, align 4
  %tmp = alloca ptr, align 8
  %tmp1 = alloca i16, align 2
  %tmp2 = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %outb, ptr %outb.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %outb.addr, metadata !3429, metadata !DIExpression()), !dbg !3445
  store ptr %outlen, ptr %outlen.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %outlen.addr, metadata !3430, metadata !DIExpression()), !dbg !3446
  store ptr %in, ptr %in.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !3431, metadata !DIExpression()), !dbg !3447
  store ptr %inlen, ptr %inlen.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %inlen.addr, metadata !3432, metadata !DIExpression()), !dbg !3448
  call void @llvm.lifetime.start.p0(i64 8, ptr %out) #9, !dbg !3449
  tail call void @llvm.dbg.declare(metadata ptr %out, metadata !3433, metadata !DIExpression()), !dbg !3450
  %0 = load ptr, ptr %outb.addr, align 8, !dbg !3451, !tbaa !1148
  store ptr %0, ptr %out, align 8, !dbg !3450, !tbaa !1148
  call void @llvm.lifetime.start.p0(i64 8, ptr %processed) #9, !dbg !3452
  tail call void @llvm.dbg.declare(metadata ptr %processed, metadata !3434, metadata !DIExpression()), !dbg !3453
  %1 = load ptr, ptr %in.addr, align 8, !dbg !3454, !tbaa !1148
  store ptr %1, ptr %processed, align 8, !dbg !3453, !tbaa !1148
  call void @llvm.lifetime.start.p0(i64 8, ptr %instart) #9, !dbg !3455
  tail call void @llvm.dbg.declare(metadata ptr %instart, metadata !3435, metadata !DIExpression()), !dbg !3456
  %2 = load ptr, ptr %in.addr, align 8, !dbg !3457, !tbaa !1148
  store ptr %2, ptr %instart, align 8, !dbg !3456, !tbaa !1148
  call void @llvm.lifetime.start.p0(i64 8, ptr %outstart) #9, !dbg !3458
  tail call void @llvm.dbg.declare(metadata ptr %outstart, metadata !3436, metadata !DIExpression()), !dbg !3459
  %3 = load ptr, ptr %out, align 8, !dbg !3460, !tbaa !1148
  store ptr %3, ptr %outstart, align 8, !dbg !3459, !tbaa !1148
  call void @llvm.lifetime.start.p0(i64 8, ptr %outend) #9, !dbg !3461
  tail call void @llvm.dbg.declare(metadata ptr %outend, metadata !3437, metadata !DIExpression()), !dbg !3462
  call void @llvm.lifetime.start.p0(i64 8, ptr %inend) #9, !dbg !3463
  tail call void @llvm.dbg.declare(metadata ptr %inend, metadata !3438, metadata !DIExpression()), !dbg !3464
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #9, !dbg !3465
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !3439, metadata !DIExpression()), !dbg !3466
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #9, !dbg !3465
  tail call void @llvm.dbg.declare(metadata ptr %d, metadata !3440, metadata !DIExpression()), !dbg !3467
  call void @llvm.lifetime.start.p0(i64 4, ptr %trailing) #9, !dbg !3468
  tail call void @llvm.dbg.declare(metadata ptr %trailing, metadata !3441, metadata !DIExpression()), !dbg !3469
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #9, !dbg !3470
  tail call void @llvm.dbg.declare(metadata ptr %tmp, metadata !3442, metadata !DIExpression()), !dbg !3471
  call void @llvm.lifetime.start.p0(i64 2, ptr %tmp1) #9, !dbg !3472
  tail call void @llvm.dbg.declare(metadata ptr %tmp1, metadata !3443, metadata !DIExpression()), !dbg !3473
  call void @llvm.lifetime.start.p0(i64 2, ptr %tmp2) #9, !dbg !3472
  tail call void @llvm.dbg.declare(metadata ptr %tmp2, metadata !3444, metadata !DIExpression()), !dbg !3474
  %4 = load ptr, ptr %outb.addr, align 8, !dbg !3475, !tbaa !1148
  %cmp = icmp eq ptr %4, null, !dbg !3477
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3478

lor.lhs.false:                                    ; preds = %entry
  %5 = load ptr, ptr %outlen.addr, align 8, !dbg !3479, !tbaa !1148
  %cmp1 = icmp eq ptr %5, null, !dbg !3480
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !3481

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %6 = load ptr, ptr %inlen.addr, align 8, !dbg !3482, !tbaa !1148
  %cmp3 = icmp eq ptr %6, null, !dbg !3483
  br i1 %cmp3, label %if.then, label %if.end, !dbg !3484

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4, !dbg !3485
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3485

if.end:                                           ; preds = %lor.lhs.false2
  %7 = load ptr, ptr %in.addr, align 8, !dbg !3486, !tbaa !1148
  %cmp4 = icmp eq ptr %7, null, !dbg !3488
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !3489

if.then5:                                         ; preds = %if.end
  %8 = load ptr, ptr %outlen.addr, align 8, !dbg !3490, !tbaa !1148
  store i32 0, ptr %8, align 4, !dbg !3492, !tbaa !1185
  %9 = load ptr, ptr %inlen.addr, align 8, !dbg !3493, !tbaa !1148
  store i32 0, ptr %9, align 4, !dbg !3494, !tbaa !1185
  store i32 0, ptr %retval, align 4, !dbg !3495
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3495

if.end6:                                          ; preds = %if.end
  %10 = load ptr, ptr %in.addr, align 8, !dbg !3496, !tbaa !1148
  %11 = load ptr, ptr %inlen.addr, align 8, !dbg !3497, !tbaa !1148
  %12 = load i32, ptr %11, align 4, !dbg !3498, !tbaa !1185
  %idx.ext = sext i32 %12 to i64, !dbg !3499
  %add.ptr = getelementptr inbounds i8, ptr %10, i64 %idx.ext, !dbg !3499
  store ptr %add.ptr, ptr %inend, align 8, !dbg !3500, !tbaa !1148
  %13 = load ptr, ptr %out, align 8, !dbg !3501, !tbaa !1148
  %14 = load ptr, ptr %outlen.addr, align 8, !dbg !3502, !tbaa !1148
  %15 = load i32, ptr %14, align 4, !dbg !3503, !tbaa !1185
  %div = sdiv i32 %15, 2, !dbg !3504
  %idx.ext7 = sext i32 %div to i64, !dbg !3505
  %add.ptr8 = getelementptr inbounds i16, ptr %13, i64 %idx.ext7, !dbg !3505
  store ptr %add.ptr8, ptr %outend, align 8, !dbg !3506, !tbaa !1148
  br label %while.cond, !dbg !3507

while.cond:                                       ; preds = %if.end127, %if.end6
  %16 = load ptr, ptr %in.addr, align 8, !dbg !3508, !tbaa !1148
  %17 = load ptr, ptr %inend, align 8, !dbg !3509, !tbaa !1148
  %cmp9 = icmp ult ptr %16, %17, !dbg !3510
  br i1 %cmp9, label %while.body, label %while.end, !dbg !3507

while.body:                                       ; preds = %while.cond
  %18 = load ptr, ptr %in.addr, align 8, !dbg !3511, !tbaa !1148
  %incdec.ptr = getelementptr inbounds i8, ptr %18, i32 1, !dbg !3511
  store ptr %incdec.ptr, ptr %in.addr, align 8, !dbg !3511, !tbaa !1148
  %19 = load i8, ptr %18, align 1, !dbg !3513, !tbaa !1210
  %conv = zext i8 %19 to i32, !dbg !3513
  store i32 %conv, ptr %d, align 4, !dbg !3514, !tbaa !1185
  %20 = load i32, ptr %d, align 4, !dbg !3515, !tbaa !1185
  %cmp10 = icmp ult i32 %20, 128, !dbg !3517
  br i1 %cmp10, label %if.then12, label %if.else, !dbg !3518

if.then12:                                        ; preds = %while.body
  %21 = load i32, ptr %d, align 4, !dbg !3519, !tbaa !1185
  store i32 %21, ptr %c, align 4, !dbg !3521, !tbaa !1185
  store i32 0, ptr %trailing, align 4, !dbg !3522, !tbaa !1185
  br label %if.end49, !dbg !3523

if.else:                                          ; preds = %while.body
  %22 = load i32, ptr %d, align 4, !dbg !3524, !tbaa !1185
  %cmp13 = icmp ult i32 %22, 192, !dbg !3526
  br i1 %cmp13, label %if.then15, label %if.else21, !dbg !3527

if.then15:                                        ; preds = %if.else
  %23 = load ptr, ptr %out, align 8, !dbg !3528, !tbaa !1148
  %24 = load ptr, ptr %outstart, align 8, !dbg !3530, !tbaa !1148
  %sub.ptr.lhs.cast = ptrtoint ptr %23 to i64, !dbg !3531
  %sub.ptr.rhs.cast = ptrtoint ptr %24 to i64, !dbg !3531
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3531
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 2, !dbg !3531
  %conv16 = trunc i64 %sub.ptr.div to i32, !dbg !3528
  %25 = load ptr, ptr %outlen.addr, align 8, !dbg !3532, !tbaa !1148
  store i32 %conv16, ptr %25, align 4, !dbg !3533, !tbaa !1185
  %26 = load ptr, ptr %processed, align 8, !dbg !3534, !tbaa !1148
  %27 = load ptr, ptr %instart, align 8, !dbg !3535, !tbaa !1148
  %sub.ptr.lhs.cast17 = ptrtoint ptr %26 to i64, !dbg !3536
  %sub.ptr.rhs.cast18 = ptrtoint ptr %27 to i64, !dbg !3536
  %sub.ptr.sub19 = sub i64 %sub.ptr.lhs.cast17, %sub.ptr.rhs.cast18, !dbg !3536
  %conv20 = trunc i64 %sub.ptr.sub19 to i32, !dbg !3534
  %28 = load ptr, ptr %inlen.addr, align 8, !dbg !3537, !tbaa !1148
  store i32 %conv20, ptr %28, align 4, !dbg !3538, !tbaa !1185
  store i32 -2, ptr %retval, align 4, !dbg !3539
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3539

if.else21:                                        ; preds = %if.else
  %29 = load i32, ptr %d, align 4, !dbg !3540, !tbaa !1185
  %cmp22 = icmp ult i32 %29, 224, !dbg !3542
  br i1 %cmp22, label %if.then24, label %if.else25, !dbg !3543

if.then24:                                        ; preds = %if.else21
  %30 = load i32, ptr %d, align 4, !dbg !3544, !tbaa !1185
  %and = and i32 %30, 31, !dbg !3546
  store i32 %and, ptr %c, align 4, !dbg !3547, !tbaa !1185
  store i32 1, ptr %trailing, align 4, !dbg !3548, !tbaa !1185
  br label %if.end47, !dbg !3549

if.else25:                                        ; preds = %if.else21
  %31 = load i32, ptr %d, align 4, !dbg !3550, !tbaa !1185
  %cmp26 = icmp ult i32 %31, 240, !dbg !3552
  br i1 %cmp26, label %if.then28, label %if.else30, !dbg !3553

if.then28:                                        ; preds = %if.else25
  %32 = load i32, ptr %d, align 4, !dbg !3554, !tbaa !1185
  %and29 = and i32 %32, 15, !dbg !3556
  store i32 %and29, ptr %c, align 4, !dbg !3557, !tbaa !1185
  store i32 2, ptr %trailing, align 4, !dbg !3558, !tbaa !1185
  br label %if.end46, !dbg !3559

if.else30:                                        ; preds = %if.else25
  %33 = load i32, ptr %d, align 4, !dbg !3560, !tbaa !1185
  %cmp31 = icmp ult i32 %33, 248, !dbg !3562
  br i1 %cmp31, label %if.then33, label %if.else35, !dbg !3563

if.then33:                                        ; preds = %if.else30
  %34 = load i32, ptr %d, align 4, !dbg !3564, !tbaa !1185
  %and34 = and i32 %34, 7, !dbg !3566
  store i32 %and34, ptr %c, align 4, !dbg !3567, !tbaa !1185
  store i32 3, ptr %trailing, align 4, !dbg !3568, !tbaa !1185
  br label %if.end45, !dbg !3569

if.else35:                                        ; preds = %if.else30
  %35 = load ptr, ptr %out, align 8, !dbg !3570, !tbaa !1148
  %36 = load ptr, ptr %outstart, align 8, !dbg !3572, !tbaa !1148
  %sub.ptr.lhs.cast36 = ptrtoint ptr %35 to i64, !dbg !3573
  %sub.ptr.rhs.cast37 = ptrtoint ptr %36 to i64, !dbg !3573
  %sub.ptr.sub38 = sub i64 %sub.ptr.lhs.cast36, %sub.ptr.rhs.cast37, !dbg !3573
  %sub.ptr.div39 = sdiv exact i64 %sub.ptr.sub38, 2, !dbg !3573
  %conv40 = trunc i64 %sub.ptr.div39 to i32, !dbg !3570
  %37 = load ptr, ptr %outlen.addr, align 8, !dbg !3574, !tbaa !1148
  store i32 %conv40, ptr %37, align 4, !dbg !3575, !tbaa !1185
  %38 = load ptr, ptr %processed, align 8, !dbg !3576, !tbaa !1148
  %39 = load ptr, ptr %instart, align 8, !dbg !3577, !tbaa !1148
  %sub.ptr.lhs.cast41 = ptrtoint ptr %38 to i64, !dbg !3578
  %sub.ptr.rhs.cast42 = ptrtoint ptr %39 to i64, !dbg !3578
  %sub.ptr.sub43 = sub i64 %sub.ptr.lhs.cast41, %sub.ptr.rhs.cast42, !dbg !3578
  %conv44 = trunc i64 %sub.ptr.sub43 to i32, !dbg !3576
  %40 = load ptr, ptr %inlen.addr, align 8, !dbg !3579, !tbaa !1148
  store i32 %conv44, ptr %40, align 4, !dbg !3580, !tbaa !1185
  store i32 -2, ptr %retval, align 4, !dbg !3581
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3581

if.end45:                                         ; preds = %if.then33
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then28
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then24
  br label %if.end48

if.end48:                                         ; preds = %if.end47
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then12
  %41 = load ptr, ptr %inend, align 8, !dbg !3582, !tbaa !1148
  %42 = load ptr, ptr %in.addr, align 8, !dbg !3584, !tbaa !1148
  %sub.ptr.lhs.cast50 = ptrtoint ptr %41 to i64, !dbg !3585
  %sub.ptr.rhs.cast51 = ptrtoint ptr %42 to i64, !dbg !3585
  %sub.ptr.sub52 = sub i64 %sub.ptr.lhs.cast50, %sub.ptr.rhs.cast51, !dbg !3585
  %43 = load i32, ptr %trailing, align 4, !dbg !3586, !tbaa !1185
  %conv53 = sext i32 %43 to i64, !dbg !3586
  %cmp54 = icmp slt i64 %sub.ptr.sub52, %conv53, !dbg !3587
  br i1 %cmp54, label %if.then56, label %if.end57, !dbg !3588

if.then56:                                        ; preds = %if.end49
  br label %while.end, !dbg !3589

if.end57:                                         ; preds = %if.end49
  br label %for.cond, !dbg !3591

for.cond:                                         ; preds = %for.inc, %if.end57
  %44 = load i32, ptr %trailing, align 4, !dbg !3592, !tbaa !1185
  %tobool = icmp ne i32 %44, 0, !dbg !3595
  br i1 %tobool, label %for.body, label %for.end, !dbg !3595

for.body:                                         ; preds = %for.cond
  %45 = load ptr, ptr %in.addr, align 8, !dbg !3596, !tbaa !1148
  %46 = load ptr, ptr %inend, align 8, !dbg !3599, !tbaa !1148
  %cmp58 = icmp uge ptr %45, %46, !dbg !3600
  br i1 %cmp58, label %if.then66, label %lor.lhs.false60, !dbg !3601

lor.lhs.false60:                                  ; preds = %for.body
  %47 = load ptr, ptr %in.addr, align 8, !dbg !3602, !tbaa !1148
  %incdec.ptr61 = getelementptr inbounds i8, ptr %47, i32 1, !dbg !3602
  store ptr %incdec.ptr61, ptr %in.addr, align 8, !dbg !3602, !tbaa !1148
  %48 = load i8, ptr %47, align 1, !dbg !3603, !tbaa !1210
  %conv62 = zext i8 %48 to i32, !dbg !3603
  store i32 %conv62, ptr %d, align 4, !dbg !3604, !tbaa !1185
  %and63 = and i32 %conv62, 192, !dbg !3605
  %cmp64 = icmp ne i32 %and63, 128, !dbg !3606
  br i1 %cmp64, label %if.then66, label %if.end67, !dbg !3607

if.then66:                                        ; preds = %lor.lhs.false60, %for.body
  br label %for.end, !dbg !3608

if.end67:                                         ; preds = %lor.lhs.false60
  %49 = load i32, ptr %c, align 4, !dbg !3609, !tbaa !1185
  %shl = shl i32 %49, 6, !dbg !3609
  store i32 %shl, ptr %c, align 4, !dbg !3609, !tbaa !1185
  %50 = load i32, ptr %d, align 4, !dbg !3610, !tbaa !1185
  %and68 = and i32 %50, 63, !dbg !3611
  %51 = load i32, ptr %c, align 4, !dbg !3612, !tbaa !1185
  %or = or i32 %51, %and68, !dbg !3612
  store i32 %or, ptr %c, align 4, !dbg !3612, !tbaa !1185
  br label %for.inc, !dbg !3613

for.inc:                                          ; preds = %if.end67
  %52 = load i32, ptr %trailing, align 4, !dbg !3614, !tbaa !1185
  %dec = add nsw i32 %52, -1, !dbg !3614
  store i32 %dec, ptr %trailing, align 4, !dbg !3614, !tbaa !1185
  br label %for.cond, !dbg !3615, !llvm.loop !3616

for.end:                                          ; preds = %if.then66, %for.cond
  %53 = load i32, ptr %c, align 4, !dbg !3618, !tbaa !1185
  %cmp69 = icmp ult i32 %53, 65536, !dbg !3620
  br i1 %cmp69, label %if.then71, label %if.else86, !dbg !3621

if.then71:                                        ; preds = %for.end
  %54 = load ptr, ptr %out, align 8, !dbg !3622, !tbaa !1148
  %55 = load ptr, ptr %outend, align 8, !dbg !3625, !tbaa !1148
  %cmp72 = icmp uge ptr %54, %55, !dbg !3626
  br i1 %cmp72, label %if.then74, label %if.end75, !dbg !3627

if.then74:                                        ; preds = %if.then71
  br label %while.end, !dbg !3628

if.end75:                                         ; preds = %if.then71
  %56 = load i32, ptr @xmlLittleEndian, align 4, !dbg !3629, !tbaa !1185
  %tobool76 = icmp ne i32 %56, 0, !dbg !3629
  br i1 %tobool76, label %if.then77, label %if.else82, !dbg !3631

if.then77:                                        ; preds = %if.end75
  %57 = load ptr, ptr %out, align 8, !dbg !3632, !tbaa !1148
  store ptr %57, ptr %tmp, align 8, !dbg !3634, !tbaa !1148
  %58 = load i32, ptr %c, align 4, !dbg !3635, !tbaa !1185
  %shr = lshr i32 %58, 8, !dbg !3636
  %conv78 = trunc i32 %shr to i8, !dbg !3635
  %59 = load ptr, ptr %tmp, align 8, !dbg !3637, !tbaa !1148
  store i8 %conv78, ptr %59, align 1, !dbg !3638, !tbaa !1210
  %60 = load i32, ptr %c, align 4, !dbg !3639, !tbaa !1185
  %conv79 = trunc i32 %60 to i8, !dbg !3639
  %61 = load ptr, ptr %tmp, align 8, !dbg !3640, !tbaa !1148
  %add.ptr80 = getelementptr inbounds i8, ptr %61, i64 1, !dbg !3641
  store i8 %conv79, ptr %add.ptr80, align 1, !dbg !3642, !tbaa !1210
  %62 = load ptr, ptr %out, align 8, !dbg !3643, !tbaa !1148
  %incdec.ptr81 = getelementptr inbounds i16, ptr %62, i32 1, !dbg !3643
  store ptr %incdec.ptr81, ptr %out, align 8, !dbg !3643, !tbaa !1148
  br label %if.end85, !dbg !3644

if.else82:                                        ; preds = %if.end75
  %63 = load i32, ptr %c, align 4, !dbg !3645, !tbaa !1185
  %conv83 = trunc i32 %63 to i16, !dbg !3645
  %64 = load ptr, ptr %out, align 8, !dbg !3647, !tbaa !1148
  %incdec.ptr84 = getelementptr inbounds i16, ptr %64, i32 1, !dbg !3647
  store ptr %incdec.ptr84, ptr %out, align 8, !dbg !3647, !tbaa !1148
  store i16 %conv83, ptr %64, align 2, !dbg !3648, !tbaa !2481
  br label %if.end85

if.end85:                                         ; preds = %if.else82, %if.then77
  br label %if.end127, !dbg !3649

if.else86:                                        ; preds = %for.end
  %65 = load i32, ptr %c, align 4, !dbg !3650, !tbaa !1185
  %cmp87 = icmp ult i32 %65, 1114112, !dbg !3652
  br i1 %cmp87, label %if.then89, label %if.else125, !dbg !3653

if.then89:                                        ; preds = %if.else86
  %66 = load ptr, ptr %out, align 8, !dbg !3654, !tbaa !1148
  %add.ptr90 = getelementptr inbounds i16, ptr %66, i64 1, !dbg !3657
  %67 = load ptr, ptr %outend, align 8, !dbg !3658, !tbaa !1148
  %cmp91 = icmp uge ptr %add.ptr90, %67, !dbg !3659
  br i1 %cmp91, label %if.then93, label %if.end94, !dbg !3660

if.then93:                                        ; preds = %if.then89
  br label %while.end, !dbg !3661

if.end94:                                         ; preds = %if.then89
  %68 = load i32, ptr %c, align 4, !dbg !3662, !tbaa !1185
  %sub = sub i32 %68, 65536, !dbg !3662
  store i32 %sub, ptr %c, align 4, !dbg !3662, !tbaa !1185
  %69 = load i32, ptr @xmlLittleEndian, align 4, !dbg !3663, !tbaa !1185
  %tobool95 = icmp ne i32 %69, 0, !dbg !3663
  br i1 %tobool95, label %if.then96, label %if.else115, !dbg !3665

if.then96:                                        ; preds = %if.end94
  %70 = load i32, ptr %c, align 4, !dbg !3666, !tbaa !1185
  %shr97 = lshr i32 %70, 10, !dbg !3668
  %or98 = or i32 55296, %shr97, !dbg !3669
  %conv99 = trunc i32 %or98 to i16, !dbg !3670
  store i16 %conv99, ptr %tmp1, align 2, !dbg !3671, !tbaa !2481
  %71 = load ptr, ptr %out, align 8, !dbg !3672, !tbaa !1148
  store ptr %71, ptr %tmp, align 8, !dbg !3673, !tbaa !1148
  %72 = load i16, ptr %tmp1, align 2, !dbg !3674, !tbaa !2481
  %conv100 = zext i16 %72 to i32, !dbg !3674
  %shr101 = ashr i32 %conv100, 8, !dbg !3675
  %conv102 = trunc i32 %shr101 to i8, !dbg !3674
  %73 = load ptr, ptr %tmp, align 8, !dbg !3676, !tbaa !1148
  store i8 %conv102, ptr %73, align 1, !dbg !3677, !tbaa !1210
  %74 = load i16, ptr %tmp1, align 2, !dbg !3678, !tbaa !2481
  %conv103 = trunc i16 %74 to i8, !dbg !3679
  %75 = load ptr, ptr %tmp, align 8, !dbg !3680, !tbaa !1148
  %add.ptr104 = getelementptr inbounds i8, ptr %75, i64 1, !dbg !3681
  store i8 %conv103, ptr %add.ptr104, align 1, !dbg !3682, !tbaa !1210
  %76 = load ptr, ptr %out, align 8, !dbg !3683, !tbaa !1148
  %incdec.ptr105 = getelementptr inbounds i16, ptr %76, i32 1, !dbg !3683
  store ptr %incdec.ptr105, ptr %out, align 8, !dbg !3683, !tbaa !1148
  %77 = load i32, ptr %c, align 4, !dbg !3684, !tbaa !1185
  %and106 = and i32 %77, 1023, !dbg !3685
  %or107 = or i32 56320, %and106, !dbg !3686
  %conv108 = trunc i32 %or107 to i16, !dbg !3687
  store i16 %conv108, ptr %tmp2, align 2, !dbg !3688, !tbaa !2481
  %78 = load ptr, ptr %out, align 8, !dbg !3689, !tbaa !1148
  store ptr %78, ptr %tmp, align 8, !dbg !3690, !tbaa !1148
  %79 = load i16, ptr %tmp2, align 2, !dbg !3691, !tbaa !2481
  %conv109 = zext i16 %79 to i32, !dbg !3691
  %shr110 = ashr i32 %conv109, 8, !dbg !3692
  %conv111 = trunc i32 %shr110 to i8, !dbg !3691
  %80 = load ptr, ptr %tmp, align 8, !dbg !3693, !tbaa !1148
  store i8 %conv111, ptr %80, align 1, !dbg !3694, !tbaa !1210
  %81 = load i16, ptr %tmp2, align 2, !dbg !3695, !tbaa !2481
  %conv112 = trunc i16 %81 to i8, !dbg !3696
  %82 = load ptr, ptr %tmp, align 8, !dbg !3697, !tbaa !1148
  %add.ptr113 = getelementptr inbounds i8, ptr %82, i64 1, !dbg !3698
  store i8 %conv112, ptr %add.ptr113, align 1, !dbg !3699, !tbaa !1210
  %83 = load ptr, ptr %out, align 8, !dbg !3700, !tbaa !1148
  %incdec.ptr114 = getelementptr inbounds i16, ptr %83, i32 1, !dbg !3700
  store ptr %incdec.ptr114, ptr %out, align 8, !dbg !3700, !tbaa !1148
  br label %if.end124, !dbg !3701

if.else115:                                       ; preds = %if.end94
  %84 = load i32, ptr %c, align 4, !dbg !3702, !tbaa !1185
  %shr116 = lshr i32 %84, 10, !dbg !3704
  %or117 = or i32 55296, %shr116, !dbg !3705
  %conv118 = trunc i32 %or117 to i16, !dbg !3706
  %85 = load ptr, ptr %out, align 8, !dbg !3707, !tbaa !1148
  %incdec.ptr119 = getelementptr inbounds i16, ptr %85, i32 1, !dbg !3707
  store ptr %incdec.ptr119, ptr %out, align 8, !dbg !3707, !tbaa !1148
  store i16 %conv118, ptr %85, align 2, !dbg !3708, !tbaa !2481
  %86 = load i32, ptr %c, align 4, !dbg !3709, !tbaa !1185
  %and120 = and i32 %86, 1023, !dbg !3710
  %or121 = or i32 56320, %and120, !dbg !3711
  %conv122 = trunc i32 %or121 to i16, !dbg !3712
  %87 = load ptr, ptr %out, align 8, !dbg !3713, !tbaa !1148
  %incdec.ptr123 = getelementptr inbounds i16, ptr %87, i32 1, !dbg !3713
  store ptr %incdec.ptr123, ptr %out, align 8, !dbg !3713, !tbaa !1148
  store i16 %conv122, ptr %87, align 2, !dbg !3714, !tbaa !2481
  br label %if.end124

if.end124:                                        ; preds = %if.else115, %if.then96
  br label %if.end126, !dbg !3715

if.else125:                                       ; preds = %if.else86
  br label %while.end, !dbg !3716

if.end126:                                        ; preds = %if.end124
  br label %if.end127

if.end127:                                        ; preds = %if.end126, %if.end85
  %88 = load ptr, ptr %in.addr, align 8, !dbg !3717, !tbaa !1148
  store ptr %88, ptr %processed, align 8, !dbg !3718, !tbaa !1148
  br label %while.cond, !dbg !3507, !llvm.loop !3719

while.end:                                        ; preds = %if.else125, %if.then93, %if.then74, %if.then56, %while.cond
  %89 = load ptr, ptr %out, align 8, !dbg !3721, !tbaa !1148
  %90 = load ptr, ptr %outstart, align 8, !dbg !3722, !tbaa !1148
  %sub.ptr.lhs.cast128 = ptrtoint ptr %89 to i64, !dbg !3723
  %sub.ptr.rhs.cast129 = ptrtoint ptr %90 to i64, !dbg !3723
  %sub.ptr.sub130 = sub i64 %sub.ptr.lhs.cast128, %sub.ptr.rhs.cast129, !dbg !3723
  %sub.ptr.div131 = sdiv exact i64 %sub.ptr.sub130, 2, !dbg !3723
  %mul = mul nsw i64 %sub.ptr.div131, 2, !dbg !3724
  %conv132 = trunc i64 %mul to i32, !dbg !3725
  %91 = load ptr, ptr %outlen.addr, align 8, !dbg !3726, !tbaa !1148
  store i32 %conv132, ptr %91, align 4, !dbg !3727, !tbaa !1185
  %92 = load ptr, ptr %processed, align 8, !dbg !3728, !tbaa !1148
  %93 = load ptr, ptr %instart, align 8, !dbg !3729, !tbaa !1148
  %sub.ptr.lhs.cast133 = ptrtoint ptr %92 to i64, !dbg !3730
  %sub.ptr.rhs.cast134 = ptrtoint ptr %93 to i64, !dbg !3730
  %sub.ptr.sub135 = sub i64 %sub.ptr.lhs.cast133, %sub.ptr.rhs.cast134, !dbg !3730
  %conv136 = trunc i64 %sub.ptr.sub135 to i32, !dbg !3728
  %94 = load ptr, ptr %inlen.addr, align 8, !dbg !3731, !tbaa !1148
  store i32 %conv136, ptr %94, align 4, !dbg !3732, !tbaa !1185
  %95 = load ptr, ptr %outlen.addr, align 8, !dbg !3733, !tbaa !1148
  %96 = load i32, ptr %95, align 4, !dbg !3734, !tbaa !1185
  store i32 %96, ptr %retval, align 4, !dbg !3735
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3735

cleanup:                                          ; preds = %while.end, %if.else35, %if.then15, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %tmp2) #9, !dbg !3736
  call void @llvm.lifetime.end.p0(i64 2, ptr %tmp1) #9, !dbg !3736
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #9, !dbg !3736
  call void @llvm.lifetime.end.p0(i64 4, ptr %trailing) #9, !dbg !3736
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #9, !dbg !3736
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #9, !dbg !3736
  call void @llvm.lifetime.end.p0(i64 8, ptr %inend) #9, !dbg !3736
  call void @llvm.lifetime.end.p0(i64 8, ptr %outend) #9, !dbg !3736
  call void @llvm.lifetime.end.p0(i64 8, ptr %outstart) #9, !dbg !3736
  call void @llvm.lifetime.end.p0(i64 8, ptr %instart) #9, !dbg !3736
  call void @llvm.lifetime.end.p0(i64 8, ptr %processed) #9, !dbg !3736
  call void @llvm.lifetime.end.p0(i64 8, ptr %out) #9, !dbg !3736
  %97 = load i32, ptr %retval, align 4, !dbg !3736
  ret i32 %97, !dbg !3736
}

; Function Attrs: nounwind uwtable
define internal i32 @UTF8ToUTF16(ptr noundef %outb, ptr noundef %outlen, ptr noundef %in, ptr noundef %inlen) #0 !dbg !3737 {
entry:
  %retval = alloca i32, align 4
  %outb.addr = alloca ptr, align 8
  %outlen.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %inlen.addr = alloca ptr, align 8
  store ptr %outb, ptr %outb.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %outb.addr, metadata !3739, metadata !DIExpression()), !dbg !3743
  store ptr %outlen, ptr %outlen.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %outlen.addr, metadata !3740, metadata !DIExpression()), !dbg !3744
  store ptr %in, ptr %in.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !3741, metadata !DIExpression()), !dbg !3745
  store ptr %inlen, ptr %inlen.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %inlen.addr, metadata !3742, metadata !DIExpression()), !dbg !3746
  %0 = load ptr, ptr %in.addr, align 8, !dbg !3747, !tbaa !1148
  %cmp = icmp eq ptr %0, null, !dbg !3749
  br i1 %cmp, label %if.then, label %if.end4, !dbg !3750

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %outlen.addr, align 8, !dbg !3751, !tbaa !1148
  %2 = load i32, ptr %1, align 4, !dbg !3754, !tbaa !1185
  %cmp1 = icmp sge i32 %2, 2, !dbg !3755
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !3756

if.then2:                                         ; preds = %if.then
  %3 = load ptr, ptr %outb.addr, align 8, !dbg !3757, !tbaa !1148
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 0, !dbg !3757
  store i8 -1, ptr %arrayidx, align 1, !dbg !3759, !tbaa !1210
  %4 = load ptr, ptr %outb.addr, align 8, !dbg !3760, !tbaa !1148
  %arrayidx3 = getelementptr inbounds i8, ptr %4, i64 1, !dbg !3760
  store i8 -2, ptr %arrayidx3, align 1, !dbg !3761, !tbaa !1210
  %5 = load ptr, ptr %outlen.addr, align 8, !dbg !3762, !tbaa !1148
  store i32 2, ptr %5, align 4, !dbg !3763, !tbaa !1185
  %6 = load ptr, ptr %inlen.addr, align 8, !dbg !3764, !tbaa !1148
  store i32 0, ptr %6, align 4, !dbg !3765, !tbaa !1185
  store i32 2, ptr %retval, align 4, !dbg !3766
  br label %return, !dbg !3766

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %outlen.addr, align 8, !dbg !3767, !tbaa !1148
  store i32 0, ptr %7, align 4, !dbg !3768, !tbaa !1185
  %8 = load ptr, ptr %inlen.addr, align 8, !dbg !3769, !tbaa !1148
  store i32 0, ptr %8, align 4, !dbg !3770, !tbaa !1185
  store i32 0, ptr %retval, align 4, !dbg !3771
  br label %return, !dbg !3771

if.end4:                                          ; preds = %entry
  %9 = load ptr, ptr %outb.addr, align 8, !dbg !3772, !tbaa !1148
  %10 = load ptr, ptr %outlen.addr, align 8, !dbg !3773, !tbaa !1148
  %11 = load ptr, ptr %in.addr, align 8, !dbg !3774, !tbaa !1148
  %12 = load ptr, ptr %inlen.addr, align 8, !dbg !3775, !tbaa !1148
  %call = call i32 @UTF8ToUTF16LE(ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12), !dbg !3776
  store i32 %call, ptr %retval, align 4, !dbg !3777
  br label %return, !dbg !3777

return:                                           ; preds = %if.end4, %if.end, %if.then2
  %13 = load i32, ptr %retval, align 4, !dbg !3778
  ret i32 %13, !dbg !3778
}

; Function Attrs: nounwind uwtable
define internal i32 @asciiToUTF8(ptr noundef %out, ptr noundef %outlen, ptr noundef %in, ptr noundef %inlen) #0 !dbg !3779 {
entry:
  %retval = alloca i32, align 4
  %out.addr = alloca ptr, align 8
  %outlen.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %inlen.addr = alloca ptr, align 8
  %outstart = alloca ptr, align 8
  %base = alloca ptr, align 8
  %processed = alloca ptr, align 8
  %outend = alloca ptr, align 8
  %inend = alloca ptr, align 8
  %c = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %out, ptr %out.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !3781, metadata !DIExpression()), !dbg !3791
  store ptr %outlen, ptr %outlen.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %outlen.addr, metadata !3782, metadata !DIExpression()), !dbg !3792
  store ptr %in, ptr %in.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !3783, metadata !DIExpression()), !dbg !3793
  store ptr %inlen, ptr %inlen.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %inlen.addr, metadata !3784, metadata !DIExpression()), !dbg !3794
  call void @llvm.lifetime.start.p0(i64 8, ptr %outstart) #9, !dbg !3795
  tail call void @llvm.dbg.declare(metadata ptr %outstart, metadata !3785, metadata !DIExpression()), !dbg !3796
  %0 = load ptr, ptr %out.addr, align 8, !dbg !3797, !tbaa !1148
  store ptr %0, ptr %outstart, align 8, !dbg !3796, !tbaa !1148
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #9, !dbg !3798
  tail call void @llvm.dbg.declare(metadata ptr %base, metadata !3786, metadata !DIExpression()), !dbg !3799
  %1 = load ptr, ptr %in.addr, align 8, !dbg !3800, !tbaa !1148
  store ptr %1, ptr %base, align 8, !dbg !3799, !tbaa !1148
  call void @llvm.lifetime.start.p0(i64 8, ptr %processed) #9, !dbg !3801
  tail call void @llvm.dbg.declare(metadata ptr %processed, metadata !3787, metadata !DIExpression()), !dbg !3802
  %2 = load ptr, ptr %in.addr, align 8, !dbg !3803, !tbaa !1148
  store ptr %2, ptr %processed, align 8, !dbg !3802, !tbaa !1148
  call void @llvm.lifetime.start.p0(i64 8, ptr %outend) #9, !dbg !3804
  tail call void @llvm.dbg.declare(metadata ptr %outend, metadata !3788, metadata !DIExpression()), !dbg !3805
  %3 = load ptr, ptr %out.addr, align 8, !dbg !3806, !tbaa !1148
  %4 = load ptr, ptr %outlen.addr, align 8, !dbg !3807, !tbaa !1148
  %5 = load i32, ptr %4, align 4, !dbg !3808, !tbaa !1185
  %idx.ext = sext i32 %5 to i64, !dbg !3809
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %idx.ext, !dbg !3809
  store ptr %add.ptr, ptr %outend, align 8, !dbg !3805, !tbaa !1148
  call void @llvm.lifetime.start.p0(i64 8, ptr %inend) #9, !dbg !3810
  tail call void @llvm.dbg.declare(metadata ptr %inend, metadata !3789, metadata !DIExpression()), !dbg !3811
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #9, !dbg !3812
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !3790, metadata !DIExpression()), !dbg !3813
  %6 = load ptr, ptr %in.addr, align 8, !dbg !3814, !tbaa !1148
  %7 = load ptr, ptr %inlen.addr, align 8, !dbg !3815, !tbaa !1148
  %8 = load i32, ptr %7, align 4, !dbg !3816, !tbaa !1185
  %idx.ext1 = sext i32 %8 to i64, !dbg !3817
  %add.ptr2 = getelementptr inbounds i8, ptr %6, i64 %idx.ext1, !dbg !3817
  store ptr %add.ptr2, ptr %inend, align 8, !dbg !3818, !tbaa !1148
  br label %while.cond, !dbg !3819

while.cond:                                       ; preds = %if.end21, %entry
  %9 = load ptr, ptr %in.addr, align 8, !dbg !3820, !tbaa !1148
  %10 = load ptr, ptr %inend, align 8, !dbg !3821, !tbaa !1148
  %cmp = icmp ult ptr %9, %10, !dbg !3822
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3823

land.rhs:                                         ; preds = %while.cond
  %11 = load ptr, ptr %out.addr, align 8, !dbg !3824, !tbaa !1148
  %12 = load ptr, ptr %outstart, align 8, !dbg !3825, !tbaa !1148
  %sub.ptr.lhs.cast = ptrtoint ptr %11 to i64, !dbg !3826
  %sub.ptr.rhs.cast = ptrtoint ptr %12 to i64, !dbg !3826
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3826
  %add = add nsw i64 %sub.ptr.sub, 5, !dbg !3827
  %13 = load ptr, ptr %outlen.addr, align 8, !dbg !3828, !tbaa !1148
  %14 = load i32, ptr %13, align 4, !dbg !3829, !tbaa !1185
  %conv = sext i32 %14 to i64, !dbg !3829
  %cmp3 = icmp slt i64 %add, %conv, !dbg !3830
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %15 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ], !dbg !3831
  br i1 %15, label %while.body, label %while.end, !dbg !3819

while.body:                                       ; preds = %land.end
  %16 = load ptr, ptr %in.addr, align 8, !dbg !3832, !tbaa !1148
  %incdec.ptr = getelementptr inbounds i8, ptr %16, i32 1, !dbg !3832
  store ptr %incdec.ptr, ptr %in.addr, align 8, !dbg !3832, !tbaa !1148
  %17 = load i8, ptr %16, align 1, !dbg !3834, !tbaa !1210
  %conv5 = zext i8 %17 to i32, !dbg !3834
  store i32 %conv5, ptr %c, align 4, !dbg !3835, !tbaa !1185
  %18 = load ptr, ptr %out.addr, align 8, !dbg !3836, !tbaa !1148
  %19 = load ptr, ptr %outend, align 8, !dbg !3838, !tbaa !1148
  %cmp6 = icmp uge ptr %18, %19, !dbg !3839
  br i1 %cmp6, label %if.then, label %if.end, !dbg !3840

if.then:                                          ; preds = %while.body
  br label %while.end, !dbg !3841

if.end:                                           ; preds = %while.body
  %20 = load i32, ptr %c, align 4, !dbg !3842, !tbaa !1185
  %cmp8 = icmp ult i32 %20, 128, !dbg !3844
  br i1 %cmp8, label %if.then10, label %if.else, !dbg !3845

if.then10:                                        ; preds = %if.end
  %21 = load i32, ptr %c, align 4, !dbg !3846, !tbaa !1185
  %conv11 = trunc i32 %21 to i8, !dbg !3846
  %22 = load ptr, ptr %out.addr, align 8, !dbg !3848, !tbaa !1148
  %incdec.ptr12 = getelementptr inbounds i8, ptr %22, i32 1, !dbg !3848
  store ptr %incdec.ptr12, ptr %out.addr, align 8, !dbg !3848, !tbaa !1148
  store i8 %conv11, ptr %22, align 1, !dbg !3849, !tbaa !1210
  br label %if.end21, !dbg !3850

if.else:                                          ; preds = %if.end
  %23 = load ptr, ptr %out.addr, align 8, !dbg !3851, !tbaa !1148
  %24 = load ptr, ptr %outstart, align 8, !dbg !3853, !tbaa !1148
  %sub.ptr.lhs.cast13 = ptrtoint ptr %23 to i64, !dbg !3854
  %sub.ptr.rhs.cast14 = ptrtoint ptr %24 to i64, !dbg !3854
  %sub.ptr.sub15 = sub i64 %sub.ptr.lhs.cast13, %sub.ptr.rhs.cast14, !dbg !3854
  %conv16 = trunc i64 %sub.ptr.sub15 to i32, !dbg !3851
  %25 = load ptr, ptr %outlen.addr, align 8, !dbg !3855, !tbaa !1148
  store i32 %conv16, ptr %25, align 4, !dbg !3856, !tbaa !1185
  %26 = load ptr, ptr %processed, align 8, !dbg !3857, !tbaa !1148
  %27 = load ptr, ptr %base, align 8, !dbg !3858, !tbaa !1148
  %sub.ptr.lhs.cast17 = ptrtoint ptr %26 to i64, !dbg !3859
  %sub.ptr.rhs.cast18 = ptrtoint ptr %27 to i64, !dbg !3859
  %sub.ptr.sub19 = sub i64 %sub.ptr.lhs.cast17, %sub.ptr.rhs.cast18, !dbg !3859
  %conv20 = trunc i64 %sub.ptr.sub19 to i32, !dbg !3857
  %28 = load ptr, ptr %inlen.addr, align 8, !dbg !3860, !tbaa !1148
  store i32 %conv20, ptr %28, align 4, !dbg !3861, !tbaa !1185
  store i32 -1, ptr %retval, align 4, !dbg !3862
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3862

if.end21:                                         ; preds = %if.then10
  %29 = load ptr, ptr %in.addr, align 8, !dbg !3863, !tbaa !1148
  store ptr %29, ptr %processed, align 8, !dbg !3864, !tbaa !1148
  br label %while.cond, !dbg !3819, !llvm.loop !3865

while.end:                                        ; preds = %if.then, %land.end
  %30 = load ptr, ptr %out.addr, align 8, !dbg !3867, !tbaa !1148
  %31 = load ptr, ptr %outstart, align 8, !dbg !3868, !tbaa !1148
  %sub.ptr.lhs.cast22 = ptrtoint ptr %30 to i64, !dbg !3869
  %sub.ptr.rhs.cast23 = ptrtoint ptr %31 to i64, !dbg !3869
  %sub.ptr.sub24 = sub i64 %sub.ptr.lhs.cast22, %sub.ptr.rhs.cast23, !dbg !3869
  %conv25 = trunc i64 %sub.ptr.sub24 to i32, !dbg !3867
  %32 = load ptr, ptr %outlen.addr, align 8, !dbg !3870, !tbaa !1148
  store i32 %conv25, ptr %32, align 4, !dbg !3871, !tbaa !1185
  %33 = load ptr, ptr %processed, align 8, !dbg !3872, !tbaa !1148
  %34 = load ptr, ptr %base, align 8, !dbg !3873, !tbaa !1148
  %sub.ptr.lhs.cast26 = ptrtoint ptr %33 to i64, !dbg !3874
  %sub.ptr.rhs.cast27 = ptrtoint ptr %34 to i64, !dbg !3874
  %sub.ptr.sub28 = sub i64 %sub.ptr.lhs.cast26, %sub.ptr.rhs.cast27, !dbg !3874
  %conv29 = trunc i64 %sub.ptr.sub28 to i32, !dbg !3872
  %35 = load ptr, ptr %inlen.addr, align 8, !dbg !3875, !tbaa !1148
  store i32 %conv29, ptr %35, align 4, !dbg !3876, !tbaa !1185
  %36 = load ptr, ptr %outlen.addr, align 8, !dbg !3877, !tbaa !1148
  %37 = load i32, ptr %36, align 4, !dbg !3878, !tbaa !1185
  store i32 %37, ptr %retval, align 4, !dbg !3879
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3879

cleanup:                                          ; preds = %while.end, %if.else
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #9, !dbg !3880
  call void @llvm.lifetime.end.p0(i64 8, ptr %inend) #9, !dbg !3880
  call void @llvm.lifetime.end.p0(i64 8, ptr %outend) #9, !dbg !3880
  call void @llvm.lifetime.end.p0(i64 8, ptr %processed) #9, !dbg !3880
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #9, !dbg !3880
  call void @llvm.lifetime.end.p0(i64 8, ptr %outstart) #9, !dbg !3880
  %38 = load i32, ptr %retval, align 4, !dbg !3880
  ret i32 %38, !dbg !3880
}

; Function Attrs: nounwind uwtable
define internal i32 @UTF8Toascii(ptr noundef %out, ptr noundef %outlen, ptr noundef %in, ptr noundef %inlen) #0 !dbg !3881 {
entry:
  %retval = alloca i32, align 4
  %out.addr = alloca ptr, align 8
  %outlen.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %inlen.addr = alloca ptr, align 8
  %processed = alloca ptr, align 8
  %outend = alloca ptr, align 8
  %outstart = alloca ptr, align 8
  %instart = alloca ptr, align 8
  %inend = alloca ptr, align 8
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %trailing = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %out, ptr %out.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !3883, metadata !DIExpression()), !dbg !3895
  store ptr %outlen, ptr %outlen.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %outlen.addr, metadata !3884, metadata !DIExpression()), !dbg !3896
  store ptr %in, ptr %in.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !3885, metadata !DIExpression()), !dbg !3897
  store ptr %inlen, ptr %inlen.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %inlen.addr, metadata !3886, metadata !DIExpression()), !dbg !3898
  call void @llvm.lifetime.start.p0(i64 8, ptr %processed) #9, !dbg !3899
  tail call void @llvm.dbg.declare(metadata ptr %processed, metadata !3887, metadata !DIExpression()), !dbg !3900
  %0 = load ptr, ptr %in.addr, align 8, !dbg !3901, !tbaa !1148
  store ptr %0, ptr %processed, align 8, !dbg !3900, !tbaa !1148
  call void @llvm.lifetime.start.p0(i64 8, ptr %outend) #9, !dbg !3902
  tail call void @llvm.dbg.declare(metadata ptr %outend, metadata !3888, metadata !DIExpression()), !dbg !3903
  call void @llvm.lifetime.start.p0(i64 8, ptr %outstart) #9, !dbg !3904
  tail call void @llvm.dbg.declare(metadata ptr %outstart, metadata !3889, metadata !DIExpression()), !dbg !3905
  %1 = load ptr, ptr %out.addr, align 8, !dbg !3906, !tbaa !1148
  store ptr %1, ptr %outstart, align 8, !dbg !3905, !tbaa !1148
  call void @llvm.lifetime.start.p0(i64 8, ptr %instart) #9, !dbg !3907
  tail call void @llvm.dbg.declare(metadata ptr %instart, metadata !3890, metadata !DIExpression()), !dbg !3908
  %2 = load ptr, ptr %in.addr, align 8, !dbg !3909, !tbaa !1148
  store ptr %2, ptr %instart, align 8, !dbg !3908, !tbaa !1148
  call void @llvm.lifetime.start.p0(i64 8, ptr %inend) #9, !dbg !3910
  tail call void @llvm.dbg.declare(metadata ptr %inend, metadata !3891, metadata !DIExpression()), !dbg !3911
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #9, !dbg !3912
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !3892, metadata !DIExpression()), !dbg !3913
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #9, !dbg !3912
  tail call void @llvm.dbg.declare(metadata ptr %d, metadata !3893, metadata !DIExpression()), !dbg !3914
  call void @llvm.lifetime.start.p0(i64 4, ptr %trailing) #9, !dbg !3915
  tail call void @llvm.dbg.declare(metadata ptr %trailing, metadata !3894, metadata !DIExpression()), !dbg !3916
  %3 = load ptr, ptr %out.addr, align 8, !dbg !3917, !tbaa !1148
  %cmp = icmp eq ptr %3, null, !dbg !3919
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3920

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %outlen.addr, align 8, !dbg !3921, !tbaa !1148
  %cmp1 = icmp eq ptr %4, null, !dbg !3922
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !3923

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %5 = load ptr, ptr %inlen.addr, align 8, !dbg !3924, !tbaa !1148
  %cmp3 = icmp eq ptr %5, null, !dbg !3925
  br i1 %cmp3, label %if.then, label %if.end, !dbg !3926

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4, !dbg !3927
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3927

if.end:                                           ; preds = %lor.lhs.false2
  %6 = load ptr, ptr %in.addr, align 8, !dbg !3928, !tbaa !1148
  %cmp4 = icmp eq ptr %6, null, !dbg !3930
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !3931

if.then5:                                         ; preds = %if.end
  %7 = load ptr, ptr %outlen.addr, align 8, !dbg !3932, !tbaa !1148
  store i32 0, ptr %7, align 4, !dbg !3934, !tbaa !1185
  %8 = load ptr, ptr %inlen.addr, align 8, !dbg !3935, !tbaa !1148
  store i32 0, ptr %8, align 4, !dbg !3936, !tbaa !1185
  store i32 0, ptr %retval, align 4, !dbg !3937
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3937

if.end6:                                          ; preds = %if.end
  %9 = load ptr, ptr %in.addr, align 8, !dbg !3938, !tbaa !1148
  %10 = load ptr, ptr %inlen.addr, align 8, !dbg !3939, !tbaa !1148
  %11 = load i32, ptr %10, align 4, !dbg !3940, !tbaa !1185
  %idx.ext = sext i32 %11 to i64, !dbg !3941
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %idx.ext, !dbg !3941
  store ptr %add.ptr, ptr %inend, align 8, !dbg !3942, !tbaa !1148
  %12 = load ptr, ptr %out.addr, align 8, !dbg !3943, !tbaa !1148
  %13 = load ptr, ptr %outlen.addr, align 8, !dbg !3944, !tbaa !1148
  %14 = load i32, ptr %13, align 4, !dbg !3945, !tbaa !1185
  %idx.ext7 = sext i32 %14 to i64, !dbg !3946
  %add.ptr8 = getelementptr inbounds i8, ptr %12, i64 %idx.ext7, !dbg !3946
  store ptr %add.ptr8, ptr %outend, align 8, !dbg !3947, !tbaa !1148
  br label %while.cond, !dbg !3948

while.cond:                                       ; preds = %if.end86, %if.end6
  %15 = load ptr, ptr %in.addr, align 8, !dbg !3949, !tbaa !1148
  %16 = load ptr, ptr %inend, align 8, !dbg !3950, !tbaa !1148
  %cmp9 = icmp ult ptr %15, %16, !dbg !3951
  br i1 %cmp9, label %while.body, label %while.end, !dbg !3948

while.body:                                       ; preds = %while.cond
  %17 = load ptr, ptr %in.addr, align 8, !dbg !3952, !tbaa !1148
  %incdec.ptr = getelementptr inbounds i8, ptr %17, i32 1, !dbg !3952
  store ptr %incdec.ptr, ptr %in.addr, align 8, !dbg !3952, !tbaa !1148
  %18 = load i8, ptr %17, align 1, !dbg !3954, !tbaa !1210
  %conv = zext i8 %18 to i32, !dbg !3954
  store i32 %conv, ptr %d, align 4, !dbg !3955, !tbaa !1185
  %19 = load i32, ptr %d, align 4, !dbg !3956, !tbaa !1185
  %cmp10 = icmp ult i32 %19, 128, !dbg !3958
  br i1 %cmp10, label %if.then12, label %if.else, !dbg !3959

if.then12:                                        ; preds = %while.body
  %20 = load i32, ptr %d, align 4, !dbg !3960, !tbaa !1185
  store i32 %20, ptr %c, align 4, !dbg !3962, !tbaa !1185
  store i32 0, ptr %trailing, align 4, !dbg !3963, !tbaa !1185
  br label %if.end48, !dbg !3964

if.else:                                          ; preds = %while.body
  %21 = load i32, ptr %d, align 4, !dbg !3965, !tbaa !1185
  %cmp13 = icmp ult i32 %21, 192, !dbg !3967
  br i1 %cmp13, label %if.then15, label %if.else21, !dbg !3968

if.then15:                                        ; preds = %if.else
  %22 = load ptr, ptr %out.addr, align 8, !dbg !3969, !tbaa !1148
  %23 = load ptr, ptr %outstart, align 8, !dbg !3971, !tbaa !1148
  %sub.ptr.lhs.cast = ptrtoint ptr %22 to i64, !dbg !3972
  %sub.ptr.rhs.cast = ptrtoint ptr %23 to i64, !dbg !3972
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3972
  %conv16 = trunc i64 %sub.ptr.sub to i32, !dbg !3969
  %24 = load ptr, ptr %outlen.addr, align 8, !dbg !3973, !tbaa !1148
  store i32 %conv16, ptr %24, align 4, !dbg !3974, !tbaa !1185
  %25 = load ptr, ptr %processed, align 8, !dbg !3975, !tbaa !1148
  %26 = load ptr, ptr %instart, align 8, !dbg !3976, !tbaa !1148
  %sub.ptr.lhs.cast17 = ptrtoint ptr %25 to i64, !dbg !3977
  %sub.ptr.rhs.cast18 = ptrtoint ptr %26 to i64, !dbg !3977
  %sub.ptr.sub19 = sub i64 %sub.ptr.lhs.cast17, %sub.ptr.rhs.cast18, !dbg !3977
  %conv20 = trunc i64 %sub.ptr.sub19 to i32, !dbg !3975
  %27 = load ptr, ptr %inlen.addr, align 8, !dbg !3978, !tbaa !1148
  store i32 %conv20, ptr %27, align 4, !dbg !3979, !tbaa !1185
  store i32 -2, ptr %retval, align 4, !dbg !3980
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3980

if.else21:                                        ; preds = %if.else
  %28 = load i32, ptr %d, align 4, !dbg !3981, !tbaa !1185
  %cmp22 = icmp ult i32 %28, 224, !dbg !3983
  br i1 %cmp22, label %if.then24, label %if.else25, !dbg !3984

if.then24:                                        ; preds = %if.else21
  %29 = load i32, ptr %d, align 4, !dbg !3985, !tbaa !1185
  %and = and i32 %29, 31, !dbg !3987
  store i32 %and, ptr %c, align 4, !dbg !3988, !tbaa !1185
  store i32 1, ptr %trailing, align 4, !dbg !3989, !tbaa !1185
  br label %if.end46, !dbg !3990

if.else25:                                        ; preds = %if.else21
  %30 = load i32, ptr %d, align 4, !dbg !3991, !tbaa !1185
  %cmp26 = icmp ult i32 %30, 240, !dbg !3993
  br i1 %cmp26, label %if.then28, label %if.else30, !dbg !3994

if.then28:                                        ; preds = %if.else25
  %31 = load i32, ptr %d, align 4, !dbg !3995, !tbaa !1185
  %and29 = and i32 %31, 15, !dbg !3997
  store i32 %and29, ptr %c, align 4, !dbg !3998, !tbaa !1185
  store i32 2, ptr %trailing, align 4, !dbg !3999, !tbaa !1185
  br label %if.end45, !dbg !4000

if.else30:                                        ; preds = %if.else25
  %32 = load i32, ptr %d, align 4, !dbg !4001, !tbaa !1185
  %cmp31 = icmp ult i32 %32, 248, !dbg !4003
  br i1 %cmp31, label %if.then33, label %if.else35, !dbg !4004

if.then33:                                        ; preds = %if.else30
  %33 = load i32, ptr %d, align 4, !dbg !4005, !tbaa !1185
  %and34 = and i32 %33, 7, !dbg !4007
  store i32 %and34, ptr %c, align 4, !dbg !4008, !tbaa !1185
  store i32 3, ptr %trailing, align 4, !dbg !4009, !tbaa !1185
  br label %if.end44, !dbg !4010

if.else35:                                        ; preds = %if.else30
  %34 = load ptr, ptr %out.addr, align 8, !dbg !4011, !tbaa !1148
  %35 = load ptr, ptr %outstart, align 8, !dbg !4013, !tbaa !1148
  %sub.ptr.lhs.cast36 = ptrtoint ptr %34 to i64, !dbg !4014
  %sub.ptr.rhs.cast37 = ptrtoint ptr %35 to i64, !dbg !4014
  %sub.ptr.sub38 = sub i64 %sub.ptr.lhs.cast36, %sub.ptr.rhs.cast37, !dbg !4014
  %conv39 = trunc i64 %sub.ptr.sub38 to i32, !dbg !4011
  %36 = load ptr, ptr %outlen.addr, align 8, !dbg !4015, !tbaa !1148
  store i32 %conv39, ptr %36, align 4, !dbg !4016, !tbaa !1185
  %37 = load ptr, ptr %processed, align 8, !dbg !4017, !tbaa !1148
  %38 = load ptr, ptr %instart, align 8, !dbg !4018, !tbaa !1148
  %sub.ptr.lhs.cast40 = ptrtoint ptr %37 to i64, !dbg !4019
  %sub.ptr.rhs.cast41 = ptrtoint ptr %38 to i64, !dbg !4019
  %sub.ptr.sub42 = sub i64 %sub.ptr.lhs.cast40, %sub.ptr.rhs.cast41, !dbg !4019
  %conv43 = trunc i64 %sub.ptr.sub42 to i32, !dbg !4017
  %39 = load ptr, ptr %inlen.addr, align 8, !dbg !4020, !tbaa !1148
  store i32 %conv43, ptr %39, align 4, !dbg !4021, !tbaa !1185
  store i32 -2, ptr %retval, align 4, !dbg !4022
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4022

if.end44:                                         ; preds = %if.then33
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.then28
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then24
  br label %if.end47

if.end47:                                         ; preds = %if.end46
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then12
  %40 = load ptr, ptr %inend, align 8, !dbg !4023, !tbaa !1148
  %41 = load ptr, ptr %in.addr, align 8, !dbg !4025, !tbaa !1148
  %sub.ptr.lhs.cast49 = ptrtoint ptr %40 to i64, !dbg !4026
  %sub.ptr.rhs.cast50 = ptrtoint ptr %41 to i64, !dbg !4026
  %sub.ptr.sub51 = sub i64 %sub.ptr.lhs.cast49, %sub.ptr.rhs.cast50, !dbg !4026
  %42 = load i32, ptr %trailing, align 4, !dbg !4027, !tbaa !1185
  %conv52 = sext i32 %42 to i64, !dbg !4027
  %cmp53 = icmp slt i64 %sub.ptr.sub51, %conv52, !dbg !4028
  br i1 %cmp53, label %if.then55, label %if.end56, !dbg !4029

if.then55:                                        ; preds = %if.end48
  br label %while.end, !dbg !4030

if.end56:                                         ; preds = %if.end48
  br label %for.cond, !dbg !4032

for.cond:                                         ; preds = %for.inc, %if.end56
  %43 = load i32, ptr %trailing, align 4, !dbg !4033, !tbaa !1185
  %tobool = icmp ne i32 %43, 0, !dbg !4036
  br i1 %tobool, label %for.body, label %for.end, !dbg !4036

for.body:                                         ; preds = %for.cond
  %44 = load ptr, ptr %in.addr, align 8, !dbg !4037, !tbaa !1148
  %45 = load ptr, ptr %inend, align 8, !dbg !4040, !tbaa !1148
  %cmp57 = icmp uge ptr %44, %45, !dbg !4041
  br i1 %cmp57, label %if.then65, label %lor.lhs.false59, !dbg !4042

lor.lhs.false59:                                  ; preds = %for.body
  %46 = load ptr, ptr %in.addr, align 8, !dbg !4043, !tbaa !1148
  %incdec.ptr60 = getelementptr inbounds i8, ptr %46, i32 1, !dbg !4043
  store ptr %incdec.ptr60, ptr %in.addr, align 8, !dbg !4043, !tbaa !1148
  %47 = load i8, ptr %46, align 1, !dbg !4044, !tbaa !1210
  %conv61 = zext i8 %47 to i32, !dbg !4044
  store i32 %conv61, ptr %d, align 4, !dbg !4045, !tbaa !1185
  %and62 = and i32 %conv61, 192, !dbg !4046
  %cmp63 = icmp ne i32 %and62, 128, !dbg !4047
  br i1 %cmp63, label %if.then65, label %if.end66, !dbg !4048

if.then65:                                        ; preds = %lor.lhs.false59, %for.body
  br label %for.end, !dbg !4049

if.end66:                                         ; preds = %lor.lhs.false59
  %48 = load i32, ptr %c, align 4, !dbg !4050, !tbaa !1185
  %shl = shl i32 %48, 6, !dbg !4050
  store i32 %shl, ptr %c, align 4, !dbg !4050, !tbaa !1185
  %49 = load i32, ptr %d, align 4, !dbg !4051, !tbaa !1185
  %and67 = and i32 %49, 63, !dbg !4052
  %50 = load i32, ptr %c, align 4, !dbg !4053, !tbaa !1185
  %or = or i32 %50, %and67, !dbg !4053
  store i32 %or, ptr %c, align 4, !dbg !4053, !tbaa !1185
  br label %for.inc, !dbg !4054

for.inc:                                          ; preds = %if.end66
  %51 = load i32, ptr %trailing, align 4, !dbg !4055, !tbaa !1185
  %dec = add nsw i32 %51, -1, !dbg !4055
  store i32 %dec, ptr %trailing, align 4, !dbg !4055, !tbaa !1185
  br label %for.cond, !dbg !4056, !llvm.loop !4057

for.end:                                          ; preds = %if.then65, %for.cond
  %52 = load i32, ptr %c, align 4, !dbg !4059, !tbaa !1185
  %cmp68 = icmp ult i32 %52, 128, !dbg !4061
  br i1 %cmp68, label %if.then70, label %if.else77, !dbg !4062

if.then70:                                        ; preds = %for.end
  %53 = load ptr, ptr %out.addr, align 8, !dbg !4063, !tbaa !1148
  %54 = load ptr, ptr %outend, align 8, !dbg !4066, !tbaa !1148
  %cmp71 = icmp uge ptr %53, %54, !dbg !4067
  br i1 %cmp71, label %if.then73, label %if.end74, !dbg !4068

if.then73:                                        ; preds = %if.then70
  br label %while.end, !dbg !4069

if.end74:                                         ; preds = %if.then70
  %55 = load i32, ptr %c, align 4, !dbg !4070, !tbaa !1185
  %conv75 = trunc i32 %55 to i8, !dbg !4070
  %56 = load ptr, ptr %out.addr, align 8, !dbg !4071, !tbaa !1148
  %incdec.ptr76 = getelementptr inbounds i8, ptr %56, i32 1, !dbg !4071
  store ptr %incdec.ptr76, ptr %out.addr, align 8, !dbg !4071, !tbaa !1148
  store i8 %conv75, ptr %56, align 1, !dbg !4072, !tbaa !1210
  br label %if.end86, !dbg !4073

if.else77:                                        ; preds = %for.end
  %57 = load ptr, ptr %out.addr, align 8, !dbg !4074, !tbaa !1148
  %58 = load ptr, ptr %outstart, align 8, !dbg !4076, !tbaa !1148
  %sub.ptr.lhs.cast78 = ptrtoint ptr %57 to i64, !dbg !4077
  %sub.ptr.rhs.cast79 = ptrtoint ptr %58 to i64, !dbg !4077
  %sub.ptr.sub80 = sub i64 %sub.ptr.lhs.cast78, %sub.ptr.rhs.cast79, !dbg !4077
  %conv81 = trunc i64 %sub.ptr.sub80 to i32, !dbg !4074
  %59 = load ptr, ptr %outlen.addr, align 8, !dbg !4078, !tbaa !1148
  store i32 %conv81, ptr %59, align 4, !dbg !4079, !tbaa !1185
  %60 = load ptr, ptr %processed, align 8, !dbg !4080, !tbaa !1148
  %61 = load ptr, ptr %instart, align 8, !dbg !4081, !tbaa !1148
  %sub.ptr.lhs.cast82 = ptrtoint ptr %60 to i64, !dbg !4082
  %sub.ptr.rhs.cast83 = ptrtoint ptr %61 to i64, !dbg !4082
  %sub.ptr.sub84 = sub i64 %sub.ptr.lhs.cast82, %sub.ptr.rhs.cast83, !dbg !4082
  %conv85 = trunc i64 %sub.ptr.sub84 to i32, !dbg !4080
  %62 = load ptr, ptr %inlen.addr, align 8, !dbg !4083, !tbaa !1148
  store i32 %conv85, ptr %62, align 4, !dbg !4084, !tbaa !1185
  store i32 -2, ptr %retval, align 4, !dbg !4085
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4085

if.end86:                                         ; preds = %if.end74
  %63 = load ptr, ptr %in.addr, align 8, !dbg !4086, !tbaa !1148
  store ptr %63, ptr %processed, align 8, !dbg !4087, !tbaa !1148
  br label %while.cond, !dbg !3948, !llvm.loop !4088

while.end:                                        ; preds = %if.then73, %if.then55, %while.cond
  %64 = load ptr, ptr %out.addr, align 8, !dbg !4090, !tbaa !1148
  %65 = load ptr, ptr %outstart, align 8, !dbg !4091, !tbaa !1148
  %sub.ptr.lhs.cast87 = ptrtoint ptr %64 to i64, !dbg !4092
  %sub.ptr.rhs.cast88 = ptrtoint ptr %65 to i64, !dbg !4092
  %sub.ptr.sub89 = sub i64 %sub.ptr.lhs.cast87, %sub.ptr.rhs.cast88, !dbg !4092
  %conv90 = trunc i64 %sub.ptr.sub89 to i32, !dbg !4090
  %66 = load ptr, ptr %outlen.addr, align 8, !dbg !4093, !tbaa !1148
  store i32 %conv90, ptr %66, align 4, !dbg !4094, !tbaa !1185
  %67 = load ptr, ptr %processed, align 8, !dbg !4095, !tbaa !1148
  %68 = load ptr, ptr %instart, align 8, !dbg !4096, !tbaa !1148
  %sub.ptr.lhs.cast91 = ptrtoint ptr %67 to i64, !dbg !4097
  %sub.ptr.rhs.cast92 = ptrtoint ptr %68 to i64, !dbg !4097
  %sub.ptr.sub93 = sub i64 %sub.ptr.lhs.cast91, %sub.ptr.rhs.cast92, !dbg !4097
  %conv94 = trunc i64 %sub.ptr.sub93 to i32, !dbg !4095
  %69 = load ptr, ptr %inlen.addr, align 8, !dbg !4098, !tbaa !1148
  store i32 %conv94, ptr %69, align 4, !dbg !4099, !tbaa !1185
  %70 = load ptr, ptr %outlen.addr, align 8, !dbg !4100, !tbaa !1148
  %71 = load i32, ptr %70, align 4, !dbg !4101, !tbaa !1185
  store i32 %71, ptr %retval, align 4, !dbg !4102
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4102

cleanup:                                          ; preds = %while.end, %if.else77, %if.else35, %if.then15, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %trailing) #9, !dbg !4103
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #9, !dbg !4103
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #9, !dbg !4103
  call void @llvm.lifetime.end.p0(i64 8, ptr %inend) #9, !dbg !4103
  call void @llvm.lifetime.end.p0(i64 8, ptr %instart) #9, !dbg !4103
  call void @llvm.lifetime.end.p0(i64 8, ptr %outstart) #9, !dbg !4103
  call void @llvm.lifetime.end.p0(i64 8, ptr %outend) #9, !dbg !4103
  call void @llvm.lifetime.end.p0(i64 8, ptr %processed) #9, !dbg !4103
  %72 = load i32, ptr %retval, align 4, !dbg !4103
  ret i32 %72, !dbg !4103
}

declare i32 @UTF8ToHtml(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: nounwind uwtable
define hidden void @xmlCleanupCharEncodingHandlers__internal_alias() #0 !dbg !4104 {
entry:
  call void @xmlCleanupEncodingAliases__internal_alias(), !dbg !4105
  %0 = load ptr, ptr @handlers, align 8, !dbg !4106, !tbaa !1148
  %cmp = icmp eq ptr %0, null, !dbg !4108
  br i1 %cmp, label %if.then, label %if.end, !dbg !4109

if.then:                                          ; preds = %entry
  br label %return, !dbg !4110

if.end:                                           ; preds = %entry
  br label %for.cond, !dbg !4111

for.cond:                                         ; preds = %if.end14, %if.end
  %1 = load i32, ptr @nbCharEncodingHandler, align 4, !dbg !4112, !tbaa !1185
  %cmp1 = icmp sgt i32 %1, 0, !dbg !4115
  br i1 %cmp1, label %for.body, label %for.end, !dbg !4116

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr @nbCharEncodingHandler, align 4, !dbg !4117, !tbaa !1185
  %dec = add nsw i32 %2, -1, !dbg !4117
  store i32 %dec, ptr @nbCharEncodingHandler, align 4, !dbg !4117, !tbaa !1185
  %3 = load ptr, ptr @handlers, align 8, !dbg !4119, !tbaa !1148
  %4 = load i32, ptr @nbCharEncodingHandler, align 4, !dbg !4121, !tbaa !1185
  %idxprom = sext i32 %4 to i64, !dbg !4119
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %idxprom, !dbg !4119
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !4119, !tbaa !1148
  %cmp2 = icmp ne ptr %5, null, !dbg !4122
  br i1 %cmp2, label %if.then3, label %if.end14, !dbg !4123

if.then3:                                         ; preds = %for.body
  %6 = load ptr, ptr @handlers, align 8, !dbg !4124, !tbaa !1148
  %7 = load i32, ptr @nbCharEncodingHandler, align 4, !dbg !4127, !tbaa !1185
  %idxprom4 = sext i32 %7 to i64, !dbg !4124
  %arrayidx5 = getelementptr inbounds ptr, ptr %6, i64 %idxprom4, !dbg !4124
  %8 = load ptr, ptr %arrayidx5, align 8, !dbg !4124, !tbaa !1148
  %name = getelementptr inbounds %struct._xmlCharEncodingHandler, ptr %8, i32 0, i32 0, !dbg !4128
  %9 = load ptr, ptr %name, align 8, !dbg !4128, !tbaa !2402
  %cmp6 = icmp ne ptr %9, null, !dbg !4129
  br i1 %cmp6, label %if.then7, label %if.end11, !dbg !4130

if.then7:                                         ; preds = %if.then3
  %10 = load ptr, ptr @xmlFree, align 8, !dbg !4131, !tbaa !1148
  %11 = load ptr, ptr @handlers, align 8, !dbg !4132, !tbaa !1148
  %12 = load i32, ptr @nbCharEncodingHandler, align 4, !dbg !4133, !tbaa !1185
  %idxprom8 = sext i32 %12 to i64, !dbg !4132
  %arrayidx9 = getelementptr inbounds ptr, ptr %11, i64 %idxprom8, !dbg !4132
  %13 = load ptr, ptr %arrayidx9, align 8, !dbg !4132, !tbaa !1148
  %name10 = getelementptr inbounds %struct._xmlCharEncodingHandler, ptr %13, i32 0, i32 0, !dbg !4134
  %14 = load ptr, ptr %name10, align 8, !dbg !4134, !tbaa !2402
  call void %10(ptr noundef %14), !dbg !4131
  br label %if.end11, !dbg !4131

if.end11:                                         ; preds = %if.then7, %if.then3
  %15 = load ptr, ptr @xmlFree, align 8, !dbg !4135, !tbaa !1148
  %16 = load ptr, ptr @handlers, align 8, !dbg !4136, !tbaa !1148
  %17 = load i32, ptr @nbCharEncodingHandler, align 4, !dbg !4137, !tbaa !1185
  %idxprom12 = sext i32 %17 to i64, !dbg !4136
  %arrayidx13 = getelementptr inbounds ptr, ptr %16, i64 %idxprom12, !dbg !4136
  %18 = load ptr, ptr %arrayidx13, align 8, !dbg !4136, !tbaa !1148
  call void %15(ptr noundef %18), !dbg !4135
  br label %if.end14, !dbg !4138

if.end14:                                         ; preds = %if.end11, %for.body
  br label %for.cond, !dbg !4139, !llvm.loop !4140

for.end:                                          ; preds = %for.cond
  %19 = load ptr, ptr @xmlFree, align 8, !dbg !4142, !tbaa !1148
  %20 = load ptr, ptr @handlers, align 8, !dbg !4143, !tbaa !1148
  call void %19(ptr noundef %20), !dbg !4142
  store ptr null, ptr @handlers, align 8, !dbg !4144, !tbaa !1148
  store i32 0, ptr @nbCharEncodingHandler, align 4, !dbg !4145, !tbaa !1185
  store ptr null, ptr @xmlDefaultCharEncodingHandler, align 8, !dbg !4146, !tbaa !1148
  br label %return, !dbg !4147

return:                                           ; preds = %for.end, %if.then
  ret void, !dbg !4147
}

; Function Attrs: nounwind uwtable
define hidden ptr @xmlGetCharEncodingHandler__internal_alias(i32 noundef %enc) #0 !dbg !4148 {
entry:
  %retval = alloca ptr, align 8
  %enc.addr = alloca i32, align 4
  %handler = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %enc, ptr %enc.addr, align 4, !tbaa !1210
  tail call void @llvm.dbg.declare(metadata ptr %enc.addr, metadata !4152, metadata !DIExpression()), !dbg !4154
  call void @llvm.lifetime.start.p0(i64 8, ptr %handler) #9, !dbg !4155
  tail call void @llvm.dbg.declare(metadata ptr %handler, metadata !4153, metadata !DIExpression()), !dbg !4156
  %0 = load ptr, ptr @handlers, align 8, !dbg !4157, !tbaa !1148
  %cmp = icmp eq ptr %0, null, !dbg !4159
  br i1 %cmp, label %if.then, label %if.end, !dbg !4160

if.then:                                          ; preds = %entry
  call void @xmlInitCharEncodingHandlers__internal_alias(), !dbg !4161
  br label %if.end, !dbg !4161

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %enc.addr, align 4, !dbg !4162, !tbaa !1210
  switch i32 %1, label %sw.default [
    i32 -1, label %sw.bb
    i32 0, label %sw.bb1
    i32 1, label %sw.bb2
    i32 2, label %sw.bb3
    i32 3, label %sw.bb4
    i32 6, label %sw.bb5
    i32 5, label %sw.bb21
    i32 4, label %sw.bb34
    i32 7, label %sw.epilog
    i32 8, label %sw.epilog
    i32 9, label %sw.bb47
    i32 10, label %sw.bb60
    i32 11, label %sw.bb65
    i32 12, label %sw.bb70
    i32 13, label %sw.bb75
    i32 14, label %sw.bb80
    i32 15, label %sw.bb85
    i32 16, label %sw.bb90
    i32 17, label %sw.bb95
    i32 18, label %sw.bb100
    i32 19, label %sw.bb105
    i32 20, label %sw.bb110
    i32 21, label %sw.bb123
  ], !dbg !4163

sw.bb:                                            ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !4164
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4164

sw.bb1:                                           ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !4166
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4166

sw.bb2:                                           ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !4167
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4167

sw.bb3:                                           ; preds = %if.end
  %2 = load ptr, ptr @xmlUTF16LEHandler, align 8, !dbg !4168, !tbaa !1148
  store ptr %2, ptr %retval, align 8, !dbg !4169
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4169

sw.bb4:                                           ; preds = %if.end
  %3 = load ptr, ptr @xmlUTF16BEHandler, align 8, !dbg !4170, !tbaa !1148
  store ptr %3, ptr %retval, align 8, !dbg !4171
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4171

sw.bb5:                                           ; preds = %if.end
  %call = call ptr @xmlFindCharEncodingHandler__internal_alias(ptr noundef @.str.27), !dbg !4172
  store ptr %call, ptr %handler, align 8, !dbg !4173, !tbaa !1148
  %4 = load ptr, ptr %handler, align 8, !dbg !4174, !tbaa !1148
  %cmp6 = icmp ne ptr %4, null, !dbg !4176
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !4177

if.then7:                                         ; preds = %sw.bb5
  %5 = load ptr, ptr %handler, align 8, !dbg !4178, !tbaa !1148
  store ptr %5, ptr %retval, align 8, !dbg !4179
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4179

if.end8:                                          ; preds = %sw.bb5
  %call9 = call ptr @xmlFindCharEncodingHandler__internal_alias(ptr noundef @.str.41), !dbg !4180
  store ptr %call9, ptr %handler, align 8, !dbg !4181, !tbaa !1148
  %6 = load ptr, ptr %handler, align 8, !dbg !4182, !tbaa !1148
  %cmp10 = icmp ne ptr %6, null, !dbg !4184
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !4185

if.then11:                                        ; preds = %if.end8
  %7 = load ptr, ptr %handler, align 8, !dbg !4186, !tbaa !1148
  store ptr %7, ptr %retval, align 8, !dbg !4187
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4187

if.end12:                                         ; preds = %if.end8
  %call13 = call ptr @xmlFindCharEncodingHandler__internal_alias(ptr noundef @.str.42), !dbg !4188
  store ptr %call13, ptr %handler, align 8, !dbg !4189, !tbaa !1148
  %8 = load ptr, ptr %handler, align 8, !dbg !4190, !tbaa !1148
  %cmp14 = icmp ne ptr %8, null, !dbg !4192
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !4193

if.then15:                                        ; preds = %if.end12
  %9 = load ptr, ptr %handler, align 8, !dbg !4194, !tbaa !1148
  store ptr %9, ptr %retval, align 8, !dbg !4195
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4195

if.end16:                                         ; preds = %if.end12
  %call17 = call ptr @xmlFindCharEncodingHandler__internal_alias(ptr noundef @.str.43), !dbg !4196
  store ptr %call17, ptr %handler, align 8, !dbg !4197, !tbaa !1148
  %10 = load ptr, ptr %handler, align 8, !dbg !4198, !tbaa !1148
  %cmp18 = icmp ne ptr %10, null, !dbg !4200
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !4201

if.then19:                                        ; preds = %if.end16
  %11 = load ptr, ptr %handler, align 8, !dbg !4202, !tbaa !1148
  store ptr %11, ptr %retval, align 8, !dbg !4203
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4203

if.end20:                                         ; preds = %if.end16
  br label %sw.epilog, !dbg !4204

sw.bb21:                                          ; preds = %if.end
  %call22 = call ptr @xmlFindCharEncodingHandler__internal_alias(ptr noundef @.str.8), !dbg !4205
  store ptr %call22, ptr %handler, align 8, !dbg !4206, !tbaa !1148
  %12 = load ptr, ptr %handler, align 8, !dbg !4207, !tbaa !1148
  %cmp23 = icmp ne ptr %12, null, !dbg !4209
  br i1 %cmp23, label %if.then24, label %if.end25, !dbg !4210

if.then24:                                        ; preds = %sw.bb21
  %13 = load ptr, ptr %handler, align 8, !dbg !4211, !tbaa !1148
  store ptr %13, ptr %retval, align 8, !dbg !4212
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4212

if.end25:                                         ; preds = %sw.bb21
  %call26 = call ptr @xmlFindCharEncodingHandler__internal_alias(ptr noundef @.str.9), !dbg !4213
  store ptr %call26, ptr %handler, align 8, !dbg !4214, !tbaa !1148
  %14 = load ptr, ptr %handler, align 8, !dbg !4215, !tbaa !1148
  %cmp27 = icmp ne ptr %14, null, !dbg !4217
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !4218

if.then28:                                        ; preds = %if.end25
  %15 = load ptr, ptr %handler, align 8, !dbg !4219, !tbaa !1148
  store ptr %15, ptr %retval, align 8, !dbg !4220
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4220

if.end29:                                         ; preds = %if.end25
  %call30 = call ptr @xmlFindCharEncodingHandler__internal_alias(ptr noundef @.str.10), !dbg !4221
  store ptr %call30, ptr %handler, align 8, !dbg !4222, !tbaa !1148
  %16 = load ptr, ptr %handler, align 8, !dbg !4223, !tbaa !1148
  %cmp31 = icmp ne ptr %16, null, !dbg !4225
  br i1 %cmp31, label %if.then32, label %if.end33, !dbg !4226

if.then32:                                        ; preds = %if.end29
  %17 = load ptr, ptr %handler, align 8, !dbg !4227, !tbaa !1148
  store ptr %17, ptr %retval, align 8, !dbg !4228
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4228

if.end33:                                         ; preds = %if.end29
  br label %sw.epilog, !dbg !4229

sw.bb34:                                          ; preds = %if.end
  %call35 = call ptr @xmlFindCharEncodingHandler__internal_alias(ptr noundef @.str.8), !dbg !4230
  store ptr %call35, ptr %handler, align 8, !dbg !4231, !tbaa !1148
  %18 = load ptr, ptr %handler, align 8, !dbg !4232, !tbaa !1148
  %cmp36 = icmp ne ptr %18, null, !dbg !4234
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !4235

if.then37:                                        ; preds = %sw.bb34
  %19 = load ptr, ptr %handler, align 8, !dbg !4236, !tbaa !1148
  store ptr %19, ptr %retval, align 8, !dbg !4237
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4237

if.end38:                                         ; preds = %sw.bb34
  %call39 = call ptr @xmlFindCharEncodingHandler__internal_alias(ptr noundef @.str.9), !dbg !4238
  store ptr %call39, ptr %handler, align 8, !dbg !4239, !tbaa !1148
  %20 = load ptr, ptr %handler, align 8, !dbg !4240, !tbaa !1148
  %cmp40 = icmp ne ptr %20, null, !dbg !4242
  br i1 %cmp40, label %if.then41, label %if.end42, !dbg !4243

if.then41:                                        ; preds = %if.end38
  %21 = load ptr, ptr %handler, align 8, !dbg !4244, !tbaa !1148
  store ptr %21, ptr %retval, align 8, !dbg !4245
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4245

if.end42:                                         ; preds = %if.end38
  %call43 = call ptr @xmlFindCharEncodingHandler__internal_alias(ptr noundef @.str.10), !dbg !4246
  store ptr %call43, ptr %handler, align 8, !dbg !4247, !tbaa !1148
  %22 = load ptr, ptr %handler, align 8, !dbg !4248, !tbaa !1148
  %cmp44 = icmp ne ptr %22, null, !dbg !4250
  br i1 %cmp44, label %if.then45, label %if.end46, !dbg !4251

if.then45:                                        ; preds = %if.end42
  %23 = load ptr, ptr %handler, align 8, !dbg !4252, !tbaa !1148
  store ptr %23, ptr %retval, align 8, !dbg !4253
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4253

if.end46:                                         ; preds = %if.end42
  br label %sw.epilog, !dbg !4254

sw.bb47:                                          ; preds = %if.end
  %call48 = call ptr @xmlFindCharEncodingHandler__internal_alias(ptr noundef @.str.5), !dbg !4255
  store ptr %call48, ptr %handler, align 8, !dbg !4256, !tbaa !1148
  %24 = load ptr, ptr %handler, align 8, !dbg !4257, !tbaa !1148
  %cmp49 = icmp ne ptr %24, null, !dbg !4259
  br i1 %cmp49, label %if.then50, label %if.end51, !dbg !4260

if.then50:                                        ; preds = %sw.bb47
  %25 = load ptr, ptr %handler, align 8, !dbg !4261, !tbaa !1148
  store ptr %25, ptr %retval, align 8, !dbg !4262
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4262

if.end51:                                         ; preds = %sw.bb47
  %call52 = call ptr @xmlFindCharEncodingHandler__internal_alias(ptr noundef @.str.6), !dbg !4263
  store ptr %call52, ptr %handler, align 8, !dbg !4264, !tbaa !1148
  %26 = load ptr, ptr %handler, align 8, !dbg !4265, !tbaa !1148
  %cmp53 = icmp ne ptr %26, null, !dbg !4267
  br i1 %cmp53, label %if.then54, label %if.end55, !dbg !4268

if.then54:                                        ; preds = %if.end51
  %27 = load ptr, ptr %handler, align 8, !dbg !4269, !tbaa !1148
  store ptr %27, ptr %retval, align 8, !dbg !4270
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4270

if.end55:                                         ; preds = %if.end51
  %call56 = call ptr @xmlFindCharEncodingHandler__internal_alias(ptr noundef @.str.7), !dbg !4271
  store ptr %call56, ptr %handler, align 8, !dbg !4272, !tbaa !1148
  %28 = load ptr, ptr %handler, align 8, !dbg !4273, !tbaa !1148
  %cmp57 = icmp ne ptr %28, null, !dbg !4275
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !4276

if.then58:                                        ; preds = %if.end55
  %29 = load ptr, ptr %handler, align 8, !dbg !4277, !tbaa !1148
  store ptr %29, ptr %retval, align 8, !dbg !4278
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4278

if.end59:                                         ; preds = %if.end55
  br label %sw.epilog, !dbg !4279

sw.bb60:                                          ; preds = %if.end
  %call61 = call ptr @xmlFindCharEncodingHandler__internal_alias(ptr noundef @.str.11), !dbg !4280
  store ptr %call61, ptr %handler, align 8, !dbg !4281, !tbaa !1148
  %30 = load ptr, ptr %handler, align 8, !dbg !4282, !tbaa !1148
  %cmp62 = icmp ne ptr %30, null, !dbg !4284
  br i1 %cmp62, label %if.then63, label %if.end64, !dbg !4285

if.then63:                                        ; preds = %sw.bb60
  %31 = load ptr, ptr %handler, align 8, !dbg !4286, !tbaa !1148
  store ptr %31, ptr %retval, align 8, !dbg !4287
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4287

if.end64:                                         ; preds = %sw.bb60
  br label %sw.epilog, !dbg !4288

sw.bb65:                                          ; preds = %if.end
  %call66 = call ptr @xmlFindCharEncodingHandler__internal_alias(ptr noundef @.str.14), !dbg !4289
  store ptr %call66, ptr %handler, align 8, !dbg !4290, !tbaa !1148
  %32 = load ptr, ptr %handler, align 8, !dbg !4291, !tbaa !1148
  %cmp67 = icmp ne ptr %32, null, !dbg !4293
  br i1 %cmp67, label %if.then68, label %if.end69, !dbg !4294

if.then68:                                        ; preds = %sw.bb65
  %33 = load ptr, ptr %handler, align 8, !dbg !4295, !tbaa !1148
  store ptr %33, ptr %retval, align 8, !dbg !4296
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4296

if.end69:                                         ; preds = %sw.bb65
  br label %sw.epilog, !dbg !4297

sw.bb70:                                          ; preds = %if.end
  %call71 = call ptr @xmlFindCharEncodingHandler__internal_alias(ptr noundef @.str.17), !dbg !4298
  store ptr %call71, ptr %handler, align 8, !dbg !4299, !tbaa !1148
  %34 = load ptr, ptr %handler, align 8, !dbg !4300, !tbaa !1148
  %cmp72 = icmp ne ptr %34, null, !dbg !4302
  br i1 %cmp72, label %if.then73, label %if.end74, !dbg !4303

if.then73:                                        ; preds = %sw.bb70
  %35 = load ptr, ptr %handler, align 8, !dbg !4304, !tbaa !1148
  store ptr %35, ptr %retval, align 8, !dbg !4305
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4305

if.end74:                                         ; preds = %sw.bb70
  br label %sw.epilog, !dbg !4306

sw.bb75:                                          ; preds = %if.end
  %call76 = call ptr @xmlFindCharEncodingHandler__internal_alias(ptr noundef @.str.18), !dbg !4307
  store ptr %call76, ptr %handler, align 8, !dbg !4308, !tbaa !1148
  %36 = load ptr, ptr %handler, align 8, !dbg !4309, !tbaa !1148
  %cmp77 = icmp ne ptr %36, null, !dbg !4311
  br i1 %cmp77, label %if.then78, label %if.end79, !dbg !4312

if.then78:                                        ; preds = %sw.bb75
  %37 = load ptr, ptr %handler, align 8, !dbg !4313, !tbaa !1148
  store ptr %37, ptr %retval, align 8, !dbg !4314
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4314

if.end79:                                         ; preds = %sw.bb75
  br label %sw.epilog, !dbg !4315

sw.bb80:                                          ; preds = %if.end
  %call81 = call ptr @xmlFindCharEncodingHandler__internal_alias(ptr noundef @.str.19), !dbg !4316
  store ptr %call81, ptr %handler, align 8, !dbg !4317, !tbaa !1148
  %38 = load ptr, ptr %handler, align 8, !dbg !4318, !tbaa !1148
  %cmp82 = icmp ne ptr %38, null, !dbg !4320
  br i1 %cmp82, label %if.then83, label %if.end84, !dbg !4321

if.then83:                                        ; preds = %sw.bb80
  %39 = load ptr, ptr %handler, align 8, !dbg !4322, !tbaa !1148
  store ptr %39, ptr %retval, align 8, !dbg !4323
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4323

if.end84:                                         ; preds = %sw.bb80
  br label %sw.epilog, !dbg !4324

sw.bb85:                                          ; preds = %if.end
  %call86 = call ptr @xmlFindCharEncodingHandler__internal_alias(ptr noundef @.str.20), !dbg !4325
  store ptr %call86, ptr %handler, align 8, !dbg !4326, !tbaa !1148
  %40 = load ptr, ptr %handler, align 8, !dbg !4327, !tbaa !1148
  %cmp87 = icmp ne ptr %40, null, !dbg !4329
  br i1 %cmp87, label %if.then88, label %if.end89, !dbg !4330

if.then88:                                        ; preds = %sw.bb85
  %41 = load ptr, ptr %handler, align 8, !dbg !4331, !tbaa !1148
  store ptr %41, ptr %retval, align 8, !dbg !4332
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4332

if.end89:                                         ; preds = %sw.bb85
  br label %sw.epilog, !dbg !4333

sw.bb90:                                          ; preds = %if.end
  %call91 = call ptr @xmlFindCharEncodingHandler__internal_alias(ptr noundef @.str.21), !dbg !4334
  store ptr %call91, ptr %handler, align 8, !dbg !4335, !tbaa !1148
  %42 = load ptr, ptr %handler, align 8, !dbg !4336, !tbaa !1148
  %cmp92 = icmp ne ptr %42, null, !dbg !4338
  br i1 %cmp92, label %if.then93, label %if.end94, !dbg !4339

if.then93:                                        ; preds = %sw.bb90
  %43 = load ptr, ptr %handler, align 8, !dbg !4340, !tbaa !1148
  store ptr %43, ptr %retval, align 8, !dbg !4341
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4341

if.end94:                                         ; preds = %sw.bb90
  br label %sw.epilog, !dbg !4342

sw.bb95:                                          ; preds = %if.end
  %call96 = call ptr @xmlFindCharEncodingHandler__internal_alias(ptr noundef @.str.22), !dbg !4343
  store ptr %call96, ptr %handler, align 8, !dbg !4344, !tbaa !1148
  %44 = load ptr, ptr %handler, align 8, !dbg !4345, !tbaa !1148
  %cmp97 = icmp ne ptr %44, null, !dbg !4347
  br i1 %cmp97, label %if.then98, label %if.end99, !dbg !4348

if.then98:                                        ; preds = %sw.bb95
  %45 = load ptr, ptr %handler, align 8, !dbg !4349, !tbaa !1148
  store ptr %45, ptr %retval, align 8, !dbg !4350
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4350

if.end99:                                         ; preds = %sw.bb95
  br label %sw.epilog, !dbg !4351

sw.bb100:                                         ; preds = %if.end
  %call101 = call ptr @xmlFindCharEncodingHandler__internal_alias(ptr noundef @.str.23), !dbg !4352
  store ptr %call101, ptr %handler, align 8, !dbg !4353, !tbaa !1148
  %46 = load ptr, ptr %handler, align 8, !dbg !4354, !tbaa !1148
  %cmp102 = icmp ne ptr %46, null, !dbg !4356
  br i1 %cmp102, label %if.then103, label %if.end104, !dbg !4357

if.then103:                                       ; preds = %sw.bb100
  %47 = load ptr, ptr %handler, align 8, !dbg !4358, !tbaa !1148
  store ptr %47, ptr %retval, align 8, !dbg !4359
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4359

if.end104:                                        ; preds = %sw.bb100
  br label %sw.epilog, !dbg !4360

sw.bb105:                                         ; preds = %if.end
  %call106 = call ptr @xmlFindCharEncodingHandler__internal_alias(ptr noundef @.str.24), !dbg !4361
  store ptr %call106, ptr %handler, align 8, !dbg !4362, !tbaa !1148
  %48 = load ptr, ptr %handler, align 8, !dbg !4363, !tbaa !1148
  %cmp107 = icmp ne ptr %48, null, !dbg !4365
  br i1 %cmp107, label %if.then108, label %if.end109, !dbg !4366

if.then108:                                       ; preds = %sw.bb105
  %49 = load ptr, ptr %handler, align 8, !dbg !4367, !tbaa !1148
  store ptr %49, ptr %retval, align 8, !dbg !4368
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4368

if.end109:                                        ; preds = %sw.bb105
  br label %sw.epilog, !dbg !4369

sw.bb110:                                         ; preds = %if.end
  %call111 = call ptr @xmlFindCharEncodingHandler__internal_alias(ptr noundef @.str.44), !dbg !4370
  store ptr %call111, ptr %handler, align 8, !dbg !4371, !tbaa !1148
  %50 = load ptr, ptr %handler, align 8, !dbg !4372, !tbaa !1148
  %cmp112 = icmp ne ptr %50, null, !dbg !4374
  br i1 %cmp112, label %if.then113, label %if.end114, !dbg !4375

if.then113:                                       ; preds = %sw.bb110
  %51 = load ptr, ptr %handler, align 8, !dbg !4376, !tbaa !1148
  store ptr %51, ptr %retval, align 8, !dbg !4377
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4377

if.end114:                                        ; preds = %sw.bb110
  %call115 = call ptr @xmlFindCharEncodingHandler__internal_alias(ptr noundef @.str.25), !dbg !4378
  store ptr %call115, ptr %handler, align 8, !dbg !4379, !tbaa !1148
  %52 = load ptr, ptr %handler, align 8, !dbg !4380, !tbaa !1148
  %cmp116 = icmp ne ptr %52, null, !dbg !4382
  br i1 %cmp116, label %if.then117, label %if.end118, !dbg !4383

if.then117:                                       ; preds = %if.end114
  %53 = load ptr, ptr %handler, align 8, !dbg !4384, !tbaa !1148
  store ptr %53, ptr %retval, align 8, !dbg !4385
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4385

if.end118:                                        ; preds = %if.end114
  %call119 = call ptr @xmlFindCharEncodingHandler__internal_alias(ptr noundef @.str.45), !dbg !4386
  store ptr %call119, ptr %handler, align 8, !dbg !4387, !tbaa !1148
  %54 = load ptr, ptr %handler, align 8, !dbg !4388, !tbaa !1148
  %cmp120 = icmp ne ptr %54, null, !dbg !4390
  br i1 %cmp120, label %if.then121, label %if.end122, !dbg !4391

if.then121:                                       ; preds = %if.end118
  %55 = load ptr, ptr %handler, align 8, !dbg !4392, !tbaa !1148
  store ptr %55, ptr %retval, align 8, !dbg !4393
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4393

if.end122:                                        ; preds = %if.end118
  br label %sw.epilog, !dbg !4394

sw.bb123:                                         ; preds = %if.end
  %call124 = call ptr @xmlFindCharEncodingHandler__internal_alias(ptr noundef @.str.26), !dbg !4395
  store ptr %call124, ptr %handler, align 8, !dbg !4396, !tbaa !1148
  %56 = load ptr, ptr %handler, align 8, !dbg !4397, !tbaa !1148
  %cmp125 = icmp ne ptr %56, null, !dbg !4399
  br i1 %cmp125, label %if.then126, label %if.end127, !dbg !4400

if.then126:                                       ; preds = %sw.bb123
  %57 = load ptr, ptr %handler, align 8, !dbg !4401, !tbaa !1148
  store ptr %57, ptr %retval, align 8, !dbg !4402
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4402

if.end127:                                        ; preds = %sw.bb123
  br label %sw.epilog, !dbg !4403

sw.default:                                       ; preds = %if.end
  br label %sw.epilog, !dbg !4404

sw.epilog:                                        ; preds = %sw.default, %if.end127, %if.end122, %if.end109, %if.end104, %if.end99, %if.end94, %if.end89, %if.end84, %if.end79, %if.end74, %if.end69, %if.end64, %if.end59, %if.end, %if.end, %if.end46, %if.end33, %if.end20
  store ptr null, ptr %retval, align 8, !dbg !4405
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4405

cleanup:                                          ; preds = %sw.epilog, %if.then126, %if.then121, %if.then117, %if.then113, %if.then108, %if.then103, %if.then98, %if.then93, %if.then88, %if.then83, %if.then78, %if.then73, %if.then68, %if.then63, %if.then58, %if.then54, %if.then50, %if.then45, %if.then41, %if.then37, %if.then32, %if.then28, %if.then24, %if.then19, %if.then15, %if.then11, %if.then7, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  call void @llvm.lifetime.end.p0(i64 8, ptr %handler) #9, !dbg !4406
  %58 = load ptr, ptr %retval, align 8, !dbg !4406
  ret ptr %58, !dbg !4406
}

; Function Attrs: nounwind uwtable
define hidden ptr @xmlFindCharEncodingHandler__internal_alias(ptr noundef %name) #0 !dbg !4407 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %nalias = alloca ptr, align 8
  %norig = alloca ptr, align 8
  %alias = alloca i32, align 4
  %enc = alloca ptr, align 8
  %icv_in = alloca ptr, align 8
  %icv_out = alloca ptr, align 8
  %upper = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__res = alloca i32, align 4
  %tmp = alloca i32, align 4
  %canon = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !4411, metadata !DIExpression()), !dbg !4428
  call void @llvm.lifetime.start.p0(i64 8, ptr %nalias) #9, !dbg !4429
  tail call void @llvm.dbg.declare(metadata ptr %nalias, metadata !4412, metadata !DIExpression()), !dbg !4430
  call void @llvm.lifetime.start.p0(i64 8, ptr %norig) #9, !dbg !4431
  tail call void @llvm.dbg.declare(metadata ptr %norig, metadata !4413, metadata !DIExpression()), !dbg !4432
  call void @llvm.lifetime.start.p0(i64 4, ptr %alias) #9, !dbg !4433
  tail call void @llvm.dbg.declare(metadata ptr %alias, metadata !4414, metadata !DIExpression()), !dbg !4434
  call void @llvm.lifetime.start.p0(i64 8, ptr %enc) #9, !dbg !4435
  tail call void @llvm.dbg.declare(metadata ptr %enc, metadata !4415, metadata !DIExpression()), !dbg !4436
  call void @llvm.lifetime.start.p0(i64 8, ptr %icv_in) #9, !dbg !4437
  tail call void @llvm.dbg.declare(metadata ptr %icv_in, metadata !4416, metadata !DIExpression()), !dbg !4438
  call void @llvm.lifetime.start.p0(i64 8, ptr %icv_out) #9, !dbg !4437
  tail call void @llvm.dbg.declare(metadata ptr %icv_out, metadata !4417, metadata !DIExpression()), !dbg !4439
  call void @llvm.lifetime.start.p0(i64 100, ptr %upper) #9, !dbg !4440
  tail call void @llvm.dbg.declare(metadata ptr %upper, metadata !4418, metadata !DIExpression()), !dbg !4441
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !4442
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !4419, metadata !DIExpression()), !dbg !4443
  %0 = load ptr, ptr @handlers, align 8, !dbg !4444, !tbaa !1148
  %cmp = icmp eq ptr %0, null, !dbg !4446
  br i1 %cmp, label %if.then, label %if.end, !dbg !4447

if.then:                                          ; preds = %entry
  call void @xmlInitCharEncodingHandlers__internal_alias(), !dbg !4448
  br label %if.end, !dbg !4448

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %name.addr, align 8, !dbg !4449, !tbaa !1148
  %cmp1 = icmp eq ptr %1, null, !dbg !4451
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !4452

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr @xmlDefaultCharEncodingHandler, align 8, !dbg !4453, !tbaa !1148
  store ptr %2, ptr %retval, align 8, !dbg !4454
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup99, !dbg !4454

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %name.addr, align 8, !dbg !4455, !tbaa !1148
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 0, !dbg !4455
  %4 = load i8, ptr %arrayidx, align 1, !dbg !4455, !tbaa !1210
  %conv = sext i8 %4 to i32, !dbg !4455
  %cmp4 = icmp eq i32 %conv, 0, !dbg !4457
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !4458

if.then6:                                         ; preds = %if.end3
  %5 = load ptr, ptr @xmlDefaultCharEncodingHandler, align 8, !dbg !4459, !tbaa !1148
  store ptr %5, ptr %retval, align 8, !dbg !4460
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup99, !dbg !4460

if.end7:                                          ; preds = %if.end3
  %6 = load ptr, ptr %name.addr, align 8, !dbg !4461, !tbaa !1148
  store ptr %6, ptr %norig, align 8, !dbg !4462, !tbaa !1148
  %7 = load ptr, ptr %name.addr, align 8, !dbg !4463, !tbaa !1148
  %call = call ptr @xmlGetEncodingAlias__internal_alias(ptr noundef %7), !dbg !4464
  store ptr %call, ptr %nalias, align 8, !dbg !4465, !tbaa !1148
  %8 = load ptr, ptr %nalias, align 8, !dbg !4466, !tbaa !1148
  %cmp8 = icmp ne ptr %8, null, !dbg !4468
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !4469

if.then10:                                        ; preds = %if.end7
  %9 = load ptr, ptr %nalias, align 8, !dbg !4470, !tbaa !1148
  store ptr %9, ptr %name.addr, align 8, !dbg !4471, !tbaa !1148
  br label %if.end11, !dbg !4472

if.end11:                                         ; preds = %if.then10, %if.end7
  store i32 0, ptr %i, align 4, !dbg !4473, !tbaa !1185
  br label %for.cond, !dbg !4474

for.cond:                                         ; preds = %for.inc, %if.end11
  %10 = load i32, ptr %i, align 4, !dbg !4475, !tbaa !1185
  %cmp12 = icmp slt i32 %10, 99, !dbg !4476
  br i1 %cmp12, label %for.body, label %for.end, !dbg !4477

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res) #9, !dbg !4478
  tail call void @llvm.dbg.declare(metadata ptr %__res, metadata !4420, metadata !DIExpression()), !dbg !4478
  %call14 = call ptr @__ctype_toupper_loc() #10, !dbg !4479
  %11 = load ptr, ptr %call14, align 8, !dbg !4479, !tbaa !1148
  %12 = load ptr, ptr %name.addr, align 8, !dbg !4479, !tbaa !1148
  %13 = load i32, ptr %i, align 4, !dbg !4479, !tbaa !1185
  %idxprom = sext i32 %13 to i64, !dbg !4479
  %arrayidx15 = getelementptr inbounds i8, ptr %12, i64 %idxprom, !dbg !4479
  %14 = load i8, ptr %arrayidx15, align 1, !dbg !4479, !tbaa !1210
  %conv16 = sext i8 %14 to i32, !dbg !4479
  %idxprom17 = sext i32 %conv16 to i64, !dbg !4479
  %arrayidx18 = getelementptr inbounds i32, ptr %11, i64 %idxprom17, !dbg !4479
  %15 = load i32, ptr %arrayidx18, align 4, !dbg !4479, !tbaa !1185
  store i32 %15, ptr %__res, align 4, !dbg !4479, !tbaa !1185
  %16 = load i32, ptr %__res, align 4, !dbg !4478, !tbaa !1185
  store i32 %16, ptr %tmp, align 4, !dbg !4479, !tbaa !1185
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res) #9, !dbg !4481
  %17 = load i32, ptr %tmp, align 4, !dbg !4478, !tbaa !1185
  %conv19 = trunc i32 %17 to i8, !dbg !4481
  %18 = load i32, ptr %i, align 4, !dbg !4482, !tbaa !1185
  %idxprom20 = sext i32 %18 to i64, !dbg !4483
  %arrayidx21 = getelementptr inbounds [100 x i8], ptr %upper, i64 0, i64 %idxprom20, !dbg !4483
  store i8 %conv19, ptr %arrayidx21, align 1, !dbg !4484, !tbaa !1210
  %19 = load i32, ptr %i, align 4, !dbg !4485, !tbaa !1185
  %idxprom22 = sext i32 %19 to i64, !dbg !4487
  %arrayidx23 = getelementptr inbounds [100 x i8], ptr %upper, i64 0, i64 %idxprom22, !dbg !4487
  %20 = load i8, ptr %arrayidx23, align 1, !dbg !4487, !tbaa !1210
  %conv24 = sext i8 %20 to i32, !dbg !4487
  %cmp25 = icmp eq i32 %conv24, 0, !dbg !4488
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !4489

if.then27:                                        ; preds = %for.body
  br label %for.end, !dbg !4490

if.end28:                                         ; preds = %for.body
  br label %for.inc, !dbg !4491

for.inc:                                          ; preds = %if.end28
  %21 = load i32, ptr %i, align 4, !dbg !4492, !tbaa !1185
  %inc = add nsw i32 %21, 1, !dbg !4492
  store i32 %inc, ptr %i, align 4, !dbg !4492, !tbaa !1185
  br label %for.cond, !dbg !4493, !llvm.loop !4494

for.end:                                          ; preds = %if.then27, %for.cond
  %22 = load i32, ptr %i, align 4, !dbg !4496, !tbaa !1185
  %idxprom29 = sext i32 %22 to i64, !dbg !4497
  %arrayidx30 = getelementptr inbounds [100 x i8], ptr %upper, i64 0, i64 %idxprom29, !dbg !4497
  store i8 0, ptr %arrayidx30, align 1, !dbg !4498, !tbaa !1210
  %23 = load ptr, ptr @handlers, align 8, !dbg !4499, !tbaa !1148
  %cmp31 = icmp ne ptr %23, null, !dbg !4501
  br i1 %cmp31, label %if.then33, label %if.end49, !dbg !4502

if.then33:                                        ; preds = %for.end
  store i32 0, ptr %i, align 4, !dbg !4503, !tbaa !1185
  br label %for.cond34, !dbg !4506

for.cond34:                                       ; preds = %for.inc46, %if.then33
  %24 = load i32, ptr %i, align 4, !dbg !4507, !tbaa !1185
  %25 = load i32, ptr @nbCharEncodingHandler, align 4, !dbg !4509, !tbaa !1185
  %cmp35 = icmp slt i32 %24, %25, !dbg !4510
  br i1 %cmp35, label %for.body37, label %for.end48, !dbg !4511

for.body37:                                       ; preds = %for.cond34
  %arraydecay = getelementptr inbounds [100 x i8], ptr %upper, i64 0, i64 0, !dbg !4512
  %26 = load ptr, ptr @handlers, align 8, !dbg !4515, !tbaa !1148
  %27 = load i32, ptr %i, align 4, !dbg !4516, !tbaa !1185
  %idxprom38 = sext i32 %27 to i64, !dbg !4515
  %arrayidx39 = getelementptr inbounds ptr, ptr %26, i64 %idxprom38, !dbg !4515
  %28 = load ptr, ptr %arrayidx39, align 8, !dbg !4515, !tbaa !1148
  %name40 = getelementptr inbounds %struct._xmlCharEncodingHandler, ptr %28, i32 0, i32 0, !dbg !4517
  %29 = load ptr, ptr %name40, align 8, !dbg !4517, !tbaa !2402
  %call41 = call i32 @strcmp(ptr noundef %arraydecay, ptr noundef %29) #11, !dbg !4518
  %tobool = icmp ne i32 %call41, 0, !dbg !4518
  br i1 %tobool, label %if.end45, label %if.then42, !dbg !4519

if.then42:                                        ; preds = %for.body37
  %30 = load ptr, ptr @handlers, align 8, !dbg !4520, !tbaa !1148
  %31 = load i32, ptr %i, align 4, !dbg !4522, !tbaa !1185
  %idxprom43 = sext i32 %31 to i64, !dbg !4520
  %arrayidx44 = getelementptr inbounds ptr, ptr %30, i64 %idxprom43, !dbg !4520
  %32 = load ptr, ptr %arrayidx44, align 8, !dbg !4520, !tbaa !1148
  store ptr %32, ptr %retval, align 8, !dbg !4523
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup99, !dbg !4523

if.end45:                                         ; preds = %for.body37
  br label %for.inc46, !dbg !4524

for.inc46:                                        ; preds = %if.end45
  %33 = load i32, ptr %i, align 4, !dbg !4525, !tbaa !1185
  %inc47 = add nsw i32 %33, 1, !dbg !4525
  store i32 %inc47, ptr %i, align 4, !dbg !4525, !tbaa !1185
  br label %for.cond34, !dbg !4526, !llvm.loop !4527

for.end48:                                        ; preds = %for.cond34
  br label %if.end49, !dbg !4529

if.end49:                                         ; preds = %for.end48, %for.end
  %34 = load ptr, ptr %name.addr, align 8, !dbg !4530, !tbaa !1148
  %call50 = call ptr @libiconv_open(ptr noundef @.str.1, ptr noundef %34), !dbg !4531
  store ptr %call50, ptr %icv_in, align 8, !dbg !4532, !tbaa !1148
  %35 = load ptr, ptr %name.addr, align 8, !dbg !4533, !tbaa !1148
  %call51 = call ptr @libiconv_open(ptr noundef %35, ptr noundef @.str.1), !dbg !4534
  store ptr %call51, ptr %icv_out, align 8, !dbg !4535, !tbaa !1148
  %36 = load ptr, ptr %icv_in, align 8, !dbg !4536, !tbaa !1148
  %cmp52 = icmp eq ptr %36, inttoptr (i64 -1 to ptr), !dbg !4538
  br i1 %cmp52, label %if.then54, label %if.end57, !dbg !4539

if.then54:                                        ; preds = %if.end49
  %arraydecay55 = getelementptr inbounds [100 x i8], ptr %upper, i64 0, i64 0, !dbg !4540
  %call56 = call ptr @libiconv_open(ptr noundef @.str.1, ptr noundef %arraydecay55), !dbg !4542
  store ptr %call56, ptr %icv_in, align 8, !dbg !4543, !tbaa !1148
  br label %if.end57, !dbg !4544

if.end57:                                         ; preds = %if.then54, %if.end49
  %37 = load ptr, ptr %icv_out, align 8, !dbg !4545, !tbaa !1148
  %cmp58 = icmp eq ptr %37, inttoptr (i64 -1 to ptr), !dbg !4547
  br i1 %cmp58, label %if.then60, label %if.end63, !dbg !4548

if.then60:                                        ; preds = %if.end57
  %arraydecay61 = getelementptr inbounds [100 x i8], ptr %upper, i64 0, i64 0, !dbg !4549
  %call62 = call ptr @libiconv_open(ptr noundef %arraydecay61, ptr noundef @.str.1), !dbg !4551
  store ptr %call62, ptr %icv_out, align 8, !dbg !4552, !tbaa !1148
  br label %if.end63, !dbg !4553

if.end63:                                         ; preds = %if.then60, %if.end57
  %38 = load ptr, ptr %icv_in, align 8, !dbg !4554, !tbaa !1148
  %cmp64 = icmp ne ptr %38, inttoptr (i64 -1 to ptr), !dbg !4556
  br i1 %cmp64, label %land.lhs.true, label %if.else, !dbg !4557

land.lhs.true:                                    ; preds = %if.end63
  %39 = load ptr, ptr %icv_out, align 8, !dbg !4558, !tbaa !1148
  %cmp66 = icmp ne ptr %39, inttoptr (i64 -1 to ptr), !dbg !4559
  br i1 %cmp66, label %if.then68, label %if.else, !dbg !4560

if.then68:                                        ; preds = %land.lhs.true
  %40 = load ptr, ptr @xmlMalloc, align 8, !dbg !4561, !tbaa !1148
  %call69 = call ptr %40(i64 noundef 40), !dbg !4561
  store ptr %call69, ptr %enc, align 8, !dbg !4563, !tbaa !1148
  %41 = load ptr, ptr %enc, align 8, !dbg !4564, !tbaa !1148
  %cmp70 = icmp eq ptr %41, null, !dbg !4566
  br i1 %cmp70, label %if.then72, label %if.end75, !dbg !4567

if.then72:                                        ; preds = %if.then68
  %42 = load ptr, ptr %icv_in, align 8, !dbg !4568, !tbaa !1148
  %call73 = call i32 @libiconv_close(ptr noundef %42), !dbg !4570
  %43 = load ptr, ptr %icv_out, align 8, !dbg !4571, !tbaa !1148
  %call74 = call i32 @libiconv_close(ptr noundef %43), !dbg !4572
  store ptr null, ptr %retval, align 8, !dbg !4573
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup99, !dbg !4573

if.end75:                                         ; preds = %if.then68
  %44 = load ptr, ptr %enc, align 8, !dbg !4574, !tbaa !1148
  call void @llvm.memset.p0.i64(ptr align 8 %44, i8 0, i64 40, i1 false), !dbg !4575
  %45 = load ptr, ptr @xmlMemStrdup, align 8, !dbg !4576, !tbaa !1148
  %46 = load ptr, ptr %name.addr, align 8, !dbg !4577, !tbaa !1148
  %call76 = call ptr %45(ptr noundef %46), !dbg !4576
  %47 = load ptr, ptr %enc, align 8, !dbg !4578, !tbaa !1148
  %name77 = getelementptr inbounds %struct._xmlCharEncodingHandler, ptr %47, i32 0, i32 0, !dbg !4579
  store ptr %call76, ptr %name77, align 8, !dbg !4580, !tbaa !2402
  %48 = load ptr, ptr %enc, align 8, !dbg !4581, !tbaa !1148
  %input = getelementptr inbounds %struct._xmlCharEncodingHandler, ptr %48, i32 0, i32 1, !dbg !4582
  store ptr null, ptr %input, align 8, !dbg !4583, !tbaa !2391
  %49 = load ptr, ptr %enc, align 8, !dbg !4584, !tbaa !1148
  %output = getelementptr inbounds %struct._xmlCharEncodingHandler, ptr %49, i32 0, i32 2, !dbg !4585
  store ptr null, ptr %output, align 8, !dbg !4586, !tbaa !2397
  %50 = load ptr, ptr %icv_in, align 8, !dbg !4587, !tbaa !1148
  %51 = load ptr, ptr %enc, align 8, !dbg !4588, !tbaa !1148
  %iconv_in = getelementptr inbounds %struct._xmlCharEncodingHandler, ptr %51, i32 0, i32 3, !dbg !4589
  store ptr %50, ptr %iconv_in, align 8, !dbg !4590, !tbaa !2406
  %52 = load ptr, ptr %icv_out, align 8, !dbg !4591, !tbaa !1148
  %53 = load ptr, ptr %enc, align 8, !dbg !4592, !tbaa !1148
  %iconv_out = getelementptr inbounds %struct._xmlCharEncodingHandler, ptr %53, i32 0, i32 4, !dbg !4593
  store ptr %52, ptr %iconv_out, align 8, !dbg !4594, !tbaa !2410
  %54 = load ptr, ptr %enc, align 8, !dbg !4595, !tbaa !1148
  store ptr %54, ptr %retval, align 8, !dbg !4596
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup99, !dbg !4596

if.else:                                          ; preds = %land.lhs.true, %if.end63
  %55 = load ptr, ptr %icv_in, align 8, !dbg !4597, !tbaa !1148
  %cmp78 = icmp ne ptr %55, inttoptr (i64 -1 to ptr), !dbg !4599
  br i1 %cmp78, label %if.then82, label %lor.lhs.false, !dbg !4600

lor.lhs.false:                                    ; preds = %if.else
  %56 = load ptr, ptr %icv_out, align 8, !dbg !4601, !tbaa !1148
  %cmp80 = icmp ne ptr %56, inttoptr (i64 -1 to ptr), !dbg !4602
  br i1 %cmp80, label %if.then82, label %if.end83, !dbg !4603

if.then82:                                        ; preds = %lor.lhs.false, %if.else
  %57 = load ptr, ptr %name.addr, align 8, !dbg !4604, !tbaa !1148
  call void @xmlEncodingErr(i32 noundef 1, ptr noundef @.str.46, ptr noundef %57), !dbg !4606
  br label %if.end83, !dbg !4607

if.end83:                                         ; preds = %if.then82, %lor.lhs.false
  br label %if.end84

if.end84:                                         ; preds = %if.end83
  %58 = load ptr, ptr %norig, align 8, !dbg !4608, !tbaa !1148
  %call85 = call i32 @xmlParseCharEncoding__internal_alias(ptr noundef %58), !dbg !4609
  store i32 %call85, ptr %alias, align 4, !dbg !4610, !tbaa !1210
  %59 = load i32, ptr %alias, align 4, !dbg !4611, !tbaa !1210
  %cmp86 = icmp ne i32 %59, -1, !dbg !4612
  br i1 %cmp86, label %if.then88, label %if.end98, !dbg !4613

if.then88:                                        ; preds = %if.end84
  call void @llvm.lifetime.start.p0(i64 8, ptr %canon) #9, !dbg !4614
  tail call void @llvm.dbg.declare(metadata ptr %canon, metadata !4425, metadata !DIExpression()), !dbg !4615
  %60 = load i32, ptr %alias, align 4, !dbg !4616, !tbaa !1210
  %call89 = call ptr @xmlGetCharEncodingName__internal_alias(i32 noundef %60), !dbg !4617
  store ptr %call89, ptr %canon, align 8, !dbg !4618, !tbaa !1148
  %61 = load ptr, ptr %canon, align 8, !dbg !4619, !tbaa !1148
  %cmp90 = icmp ne ptr %61, null, !dbg !4621
  br i1 %cmp90, label %land.lhs.true92, label %if.end97, !dbg !4622

land.lhs.true92:                                  ; preds = %if.then88
  %62 = load ptr, ptr %name.addr, align 8, !dbg !4623, !tbaa !1148
  %63 = load ptr, ptr %canon, align 8, !dbg !4624, !tbaa !1148
  %call93 = call i32 @strcmp(ptr noundef %62, ptr noundef %63) #11, !dbg !4625
  %tobool94 = icmp ne i32 %call93, 0, !dbg !4625
  br i1 %tobool94, label %if.then95, label %if.end97, !dbg !4626

if.then95:                                        ; preds = %land.lhs.true92
  %64 = load ptr, ptr %canon, align 8, !dbg !4627, !tbaa !1148
  %call96 = call ptr @xmlFindCharEncodingHandler__internal_alias(ptr noundef %64), !dbg !4629
  store ptr %call96, ptr %retval, align 8, !dbg !4630
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4630

if.end97:                                         ; preds = %land.lhs.true92, %if.then88
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4631
  br label %cleanup, !dbg !4631

cleanup:                                          ; preds = %if.end97, %if.then95
  call void @llvm.lifetime.end.p0(i64 8, ptr %canon) #9, !dbg !4631
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup99 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end98, !dbg !4632

if.end98:                                         ; preds = %cleanup.cont, %if.end84
  store ptr null, ptr %retval, align 8, !dbg !4633
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup99, !dbg !4633

cleanup99:                                        ; preds = %if.end98, %cleanup, %if.end75, %if.then72, %if.then42, %if.then6, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !4634
  call void @llvm.lifetime.end.p0(i64 100, ptr %upper) #9, !dbg !4634
  call void @llvm.lifetime.end.p0(i64 8, ptr %icv_out) #9, !dbg !4634
  call void @llvm.lifetime.end.p0(i64 8, ptr %icv_in) #9, !dbg !4634
  call void @llvm.lifetime.end.p0(i64 8, ptr %enc) #9, !dbg !4634
  call void @llvm.lifetime.end.p0(i64 4, ptr %alias) #9, !dbg !4634
  call void @llvm.lifetime.end.p0(i64 8, ptr %norig) #9, !dbg !4634
  call void @llvm.lifetime.end.p0(i64 8, ptr %nalias) #9, !dbg !4634
  %65 = load ptr, ptr %retval, align 8, !dbg !4634
  ret ptr %65, !dbg !4634
}

declare !dbg !4635 ptr @libiconv_open(ptr noundef, ptr noundef) #6

declare !dbg !4638 i32 @libiconv_close(ptr noundef) #6

; Function Attrs: nounwind uwtable
define i32 @xmlCharEncFirstLineInt(ptr noundef %handler, ptr noundef %out, ptr noundef %in, i32 noundef %len) #0 !dbg !4641 {
entry:
  %retval = alloca i32, align 4
  %handler.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %written = alloca i32, align 4
  %toconv = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %handler, ptr %handler.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %handler.addr, metadata !4657, metadata !DIExpression()), !dbg !4664
  store ptr %out, ptr %out.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !4658, metadata !DIExpression()), !dbg !4665
  store ptr %in, ptr %in.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !4659, metadata !DIExpression()), !dbg !4666
  store i32 %len, ptr %len.addr, align 4, !tbaa !1185
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !4660, metadata !DIExpression()), !dbg !4667
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !4668
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !4661, metadata !DIExpression()), !dbg !4669
  call void @llvm.lifetime.start.p0(i64 4, ptr %written) #9, !dbg !4670
  tail call void @llvm.dbg.declare(metadata ptr %written, metadata !4662, metadata !DIExpression()), !dbg !4671
  call void @llvm.lifetime.start.p0(i64 4, ptr %toconv) #9, !dbg !4672
  tail call void @llvm.dbg.declare(metadata ptr %toconv, metadata !4663, metadata !DIExpression()), !dbg !4673
  %0 = load ptr, ptr %handler.addr, align 8, !dbg !4674, !tbaa !1148
  %cmp = icmp eq ptr %0, null, !dbg !4676
  br i1 %cmp, label %if.then, label %if.end, !dbg !4677

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !4678
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4678

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %out.addr, align 8, !dbg !4679, !tbaa !1148
  %cmp1 = icmp eq ptr %1, null, !dbg !4681
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !4682

if.then2:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4, !dbg !4683
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4683

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %in.addr, align 8, !dbg !4684, !tbaa !1148
  %cmp4 = icmp eq ptr %2, null, !dbg !4686
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4687

if.then5:                                         ; preds = %if.end3
  store i32 -1, ptr %retval, align 4, !dbg !4688
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4688

if.end6:                                          ; preds = %if.end3
  %3 = load ptr, ptr %out.addr, align 8, !dbg !4689, !tbaa !1148
  %size = getelementptr inbounds %struct._xmlBuffer, ptr %3, i32 0, i32 2, !dbg !4690
  %4 = load i32, ptr %size, align 4, !dbg !4690, !tbaa !4691
  %5 = load ptr, ptr %out.addr, align 8, !dbg !4693, !tbaa !1148
  %use = getelementptr inbounds %struct._xmlBuffer, ptr %5, i32 0, i32 1, !dbg !4694
  %6 = load i32, ptr %use, align 8, !dbg !4694, !tbaa !4695
  %sub = sub i32 %4, %6, !dbg !4696
  %sub7 = sub i32 %sub, 1, !dbg !4697
  store i32 %sub7, ptr %written, align 4, !dbg !4698, !tbaa !1185
  %7 = load ptr, ptr %in.addr, align 8, !dbg !4699, !tbaa !1148
  %use8 = getelementptr inbounds %struct._xmlBuffer, ptr %7, i32 0, i32 1, !dbg !4700
  %8 = load i32, ptr %use8, align 8, !dbg !4700, !tbaa !4695
  store i32 %8, ptr %toconv, align 4, !dbg !4701, !tbaa !1185
  %9 = load i32, ptr %len.addr, align 4, !dbg !4702, !tbaa !1185
  %cmp9 = icmp sge i32 %9, 0, !dbg !4704
  br i1 %cmp9, label %if.then10, label %if.else, !dbg !4705

if.then10:                                        ; preds = %if.end6
  %10 = load i32, ptr %toconv, align 4, !dbg !4706, !tbaa !1185
  %11 = load i32, ptr %len.addr, align 4, !dbg !4709, !tbaa !1185
  %cmp11 = icmp sgt i32 %10, %11, !dbg !4710
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !4711

if.then12:                                        ; preds = %if.then10
  %12 = load i32, ptr %len.addr, align 4, !dbg !4712, !tbaa !1185
  store i32 %12, ptr %toconv, align 4, !dbg !4713, !tbaa !1185
  br label %if.end13, !dbg !4714

if.end13:                                         ; preds = %if.then12, %if.then10
  br label %if.end17, !dbg !4715

if.else:                                          ; preds = %if.end6
  %13 = load i32, ptr %toconv, align 4, !dbg !4716, !tbaa !1185
  %cmp14 = icmp sgt i32 %13, 180, !dbg !4719
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !4720

if.then15:                                        ; preds = %if.else
  store i32 180, ptr %toconv, align 4, !dbg !4721, !tbaa !1185
  br label %if.end16, !dbg !4722

if.end16:                                         ; preds = %if.then15, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end13
  %14 = load i32, ptr %toconv, align 4, !dbg !4723, !tbaa !1185
  %mul = mul nsw i32 %14, 2, !dbg !4725
  %15 = load i32, ptr %written, align 4, !dbg !4726, !tbaa !1185
  %cmp18 = icmp sge i32 %mul, %15, !dbg !4727
  br i1 %cmp18, label %if.then19, label %if.end25, !dbg !4728

if.then19:                                        ; preds = %if.end17
  %16 = load ptr, ptr %out.addr, align 8, !dbg !4729, !tbaa !1148
  %17 = load i32, ptr %toconv, align 4, !dbg !4731, !tbaa !1185
  %mul20 = mul nsw i32 %17, 2, !dbg !4732
  %call = call i32 @xmlBufferGrow__internal_alias(ptr noundef %16, i32 noundef %mul20), !dbg !4733
  %18 = load ptr, ptr %out.addr, align 8, !dbg !4734, !tbaa !1148
  %size21 = getelementptr inbounds %struct._xmlBuffer, ptr %18, i32 0, i32 2, !dbg !4735
  %19 = load i32, ptr %size21, align 4, !dbg !4735, !tbaa !4691
  %20 = load ptr, ptr %out.addr, align 8, !dbg !4736, !tbaa !1148
  %use22 = getelementptr inbounds %struct._xmlBuffer, ptr %20, i32 0, i32 1, !dbg !4737
  %21 = load i32, ptr %use22, align 8, !dbg !4737, !tbaa !4695
  %sub23 = sub i32 %19, %21, !dbg !4738
  %sub24 = sub i32 %sub23, 1, !dbg !4739
  store i32 %sub24, ptr %written, align 4, !dbg !4740, !tbaa !1185
  br label %if.end25, !dbg !4741

if.end25:                                         ; preds = %if.then19, %if.end17
  %22 = load ptr, ptr %handler.addr, align 8, !dbg !4742, !tbaa !1148
  %23 = load ptr, ptr %out.addr, align 8, !dbg !4743, !tbaa !1148
  %content = getelementptr inbounds %struct._xmlBuffer, ptr %23, i32 0, i32 0, !dbg !4744
  %24 = load ptr, ptr %content, align 8, !dbg !4744, !tbaa !4745
  %25 = load ptr, ptr %out.addr, align 8, !dbg !4746, !tbaa !1148
  %use26 = getelementptr inbounds %struct._xmlBuffer, ptr %25, i32 0, i32 1, !dbg !4747
  %26 = load i32, ptr %use26, align 8, !dbg !4747, !tbaa !4695
  %idxprom = zext i32 %26 to i64, !dbg !4743
  %arrayidx = getelementptr inbounds i8, ptr %24, i64 %idxprom, !dbg !4743
  %27 = load ptr, ptr %in.addr, align 8, !dbg !4748, !tbaa !1148
  %content27 = getelementptr inbounds %struct._xmlBuffer, ptr %27, i32 0, i32 0, !dbg !4749
  %28 = load ptr, ptr %content27, align 8, !dbg !4749, !tbaa !4745
  %call28 = call i32 @xmlEncInputChunk(ptr noundef %22, ptr noundef %arrayidx, ptr noundef %written, ptr noundef %28, ptr noundef %toconv, i32 noundef 0), !dbg !4750
  store i32 %call28, ptr %ret, align 4, !dbg !4751, !tbaa !1185
  %29 = load ptr, ptr %in.addr, align 8, !dbg !4752, !tbaa !1148
  %30 = load i32, ptr %toconv, align 4, !dbg !4753, !tbaa !1185
  %call29 = call i32 @xmlBufferShrink__internal_alias(ptr noundef %29, i32 noundef %30), !dbg !4754
  %31 = load i32, ptr %written, align 4, !dbg !4755, !tbaa !1185
  %32 = load ptr, ptr %out.addr, align 8, !dbg !4756, !tbaa !1148
  %use30 = getelementptr inbounds %struct._xmlBuffer, ptr %32, i32 0, i32 1, !dbg !4757
  %33 = load i32, ptr %use30, align 8, !dbg !4758, !tbaa !4695
  %add = add i32 %33, %31, !dbg !4758
  store i32 %add, ptr %use30, align 8, !dbg !4758, !tbaa !4695
  %34 = load ptr, ptr %out.addr, align 8, !dbg !4759, !tbaa !1148
  %content31 = getelementptr inbounds %struct._xmlBuffer, ptr %34, i32 0, i32 0, !dbg !4760
  %35 = load ptr, ptr %content31, align 8, !dbg !4760, !tbaa !4745
  %36 = load ptr, ptr %out.addr, align 8, !dbg !4761, !tbaa !1148
  %use32 = getelementptr inbounds %struct._xmlBuffer, ptr %36, i32 0, i32 1, !dbg !4762
  %37 = load i32, ptr %use32, align 8, !dbg !4762, !tbaa !4695
  %idxprom33 = zext i32 %37 to i64, !dbg !4759
  %arrayidx34 = getelementptr inbounds i8, ptr %35, i64 %idxprom33, !dbg !4759
  store i8 0, ptr %arrayidx34, align 1, !dbg !4763, !tbaa !1210
  %38 = load i32, ptr %ret, align 4, !dbg !4764, !tbaa !1185
  %cmp35 = icmp eq i32 %38, -1, !dbg !4766
  br i1 %cmp35, label %if.then36, label %if.end37, !dbg !4767

if.then36:                                        ; preds = %if.end25
  store i32 -3, ptr %ret, align 4, !dbg !4768, !tbaa !1185
  br label %if.end37, !dbg !4769

if.end37:                                         ; preds = %if.then36, %if.end25
  %39 = load i32, ptr %ret, align 4, !dbg !4770, !tbaa !1185
  %cmp38 = icmp eq i32 %39, -3, !dbg !4772
  br i1 %cmp38, label %if.then39, label %if.end40, !dbg !4773

if.then39:                                        ; preds = %if.end37
  store i32 0, ptr %ret, align 4, !dbg !4774, !tbaa !1185
  br label %if.end40, !dbg !4775

if.end40:                                         ; preds = %if.then39, %if.end37
  %40 = load i32, ptr %ret, align 4, !dbg !4776, !tbaa !1185
  %cmp41 = icmp eq i32 %40, -1, !dbg !4778
  br i1 %cmp41, label %if.then42, label %if.end43, !dbg !4779

if.then42:                                        ; preds = %if.end40
  store i32 0, ptr %ret, align 4, !dbg !4780, !tbaa !1185
  br label %if.end43, !dbg !4781

if.end43:                                         ; preds = %if.then42, %if.end40
  %41 = load i32, ptr %ret, align 4, !dbg !4782, !tbaa !1185
  store i32 %41, ptr %retval, align 4, !dbg !4783
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4783

cleanup:                                          ; preds = %if.end43, %if.then5, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %toconv) #9, !dbg !4784
  call void @llvm.lifetime.end.p0(i64 4, ptr %written) #9, !dbg !4784
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !4784
  %42 = load i32, ptr %retval, align 4, !dbg !4784
  ret i32 %42, !dbg !4784
}

declare !dbg !4785 hidden i32 @xmlBufferGrow__internal_alias(ptr noundef, i32 noundef) #6

; Function Attrs: nounwind uwtable
define internal i32 @xmlEncInputChunk(ptr noundef %handler, ptr noundef %out, ptr noundef %outlen, ptr noundef %in, ptr noundef %inlen, i32 noundef %flush) #0 !dbg !4789 {
entry:
  %handler.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %outlen.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %inlen.addr = alloca ptr, align 8
  %flush.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  store ptr %handler, ptr %handler.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %handler.addr, metadata !4793, metadata !DIExpression()), !dbg !4800
  store ptr %out, ptr %out.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !4794, metadata !DIExpression()), !dbg !4801
  store ptr %outlen, ptr %outlen.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %outlen.addr, metadata !4795, metadata !DIExpression()), !dbg !4802
  store ptr %in, ptr %in.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !4796, metadata !DIExpression()), !dbg !4803
  store ptr %inlen, ptr %inlen.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %inlen.addr, metadata !4797, metadata !DIExpression()), !dbg !4804
  store i32 %flush, ptr %flush.addr, align 4, !tbaa !1185
  tail call void @llvm.dbg.declare(metadata ptr %flush.addr, metadata !4798, metadata !DIExpression()), !dbg !4805
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !4806
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !4799, metadata !DIExpression()), !dbg !4807
  %0 = load i32, ptr %flush.addr, align 4, !dbg !4808, !tbaa !1185
  %1 = load ptr, ptr %handler.addr, align 8, !dbg !4809, !tbaa !1148
  %input = getelementptr inbounds %struct._xmlCharEncodingHandler, ptr %1, i32 0, i32 1, !dbg !4811
  %2 = load ptr, ptr %input, align 8, !dbg !4811, !tbaa !2391
  %cmp = icmp ne ptr %2, null, !dbg !4812
  br i1 %cmp, label %if.then, label %if.else, !dbg !4813

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %handler.addr, align 8, !dbg !4814, !tbaa !1148
  %input1 = getelementptr inbounds %struct._xmlCharEncodingHandler, ptr %3, i32 0, i32 1, !dbg !4816
  %4 = load ptr, ptr %input1, align 8, !dbg !4816, !tbaa !2391
  %5 = load ptr, ptr %out.addr, align 8, !dbg !4817, !tbaa !1148
  %6 = load ptr, ptr %outlen.addr, align 8, !dbg !4818, !tbaa !1148
  %7 = load ptr, ptr %in.addr, align 8, !dbg !4819, !tbaa !1148
  %8 = load ptr, ptr %inlen.addr, align 8, !dbg !4820, !tbaa !1148
  %call = call i32 %4(ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8), !dbg !4814
  store i32 %call, ptr %ret, align 4, !dbg !4821, !tbaa !1185
  br label %if.end7, !dbg !4822

if.else:                                          ; preds = %entry
  %9 = load ptr, ptr %handler.addr, align 8, !dbg !4823, !tbaa !1148
  %iconv_in = getelementptr inbounds %struct._xmlCharEncodingHandler, ptr %9, i32 0, i32 3, !dbg !4825
  %10 = load ptr, ptr %iconv_in, align 8, !dbg !4825, !tbaa !2406
  %cmp2 = icmp ne ptr %10, null, !dbg !4826
  br i1 %cmp2, label %if.then3, label %if.else6, !dbg !4827

if.then3:                                         ; preds = %if.else
  %11 = load ptr, ptr %handler.addr, align 8, !dbg !4828, !tbaa !1148
  %iconv_in4 = getelementptr inbounds %struct._xmlCharEncodingHandler, ptr %11, i32 0, i32 3, !dbg !4830
  %12 = load ptr, ptr %iconv_in4, align 8, !dbg !4830, !tbaa !2406
  %13 = load ptr, ptr %out.addr, align 8, !dbg !4831, !tbaa !1148
  %14 = load ptr, ptr %outlen.addr, align 8, !dbg !4832, !tbaa !1148
  %15 = load ptr, ptr %in.addr, align 8, !dbg !4833, !tbaa !1148
  %16 = load ptr, ptr %inlen.addr, align 8, !dbg !4834, !tbaa !1148
  %call5 = call i32 @xmlIconvWrapper(ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16), !dbg !4835
  store i32 %call5, ptr %ret, align 4, !dbg !4836, !tbaa !1185
  br label %if.end, !dbg !4837

if.else6:                                         ; preds = %if.else
  %17 = load ptr, ptr %outlen.addr, align 8, !dbg !4838, !tbaa !1148
  store i32 0, ptr %17, align 4, !dbg !4840, !tbaa !1185
  %18 = load ptr, ptr %inlen.addr, align 8, !dbg !4841, !tbaa !1148
  store i32 0, ptr %18, align 4, !dbg !4842, !tbaa !1185
  store i32 -2, ptr %ret, align 4, !dbg !4843, !tbaa !1185
  br label %if.end

if.end:                                           ; preds = %if.else6, %if.then3
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %19 = load i32, ptr %ret, align 4, !dbg !4844, !tbaa !1185
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !4845
  ret i32 %19, !dbg !4846
}

declare !dbg !4847 hidden i32 @xmlBufferShrink__internal_alias(ptr noundef, i32 noundef) #6

; Function Attrs: nounwind uwtable
define hidden i32 @xmlCharEncFirstLine__internal_alias(ptr noundef %handler, ptr noundef %out, ptr noundef %in) #0 !dbg !4848 {
entry:
  %handler.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  store ptr %handler, ptr %handler.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %handler.addr, metadata !4852, metadata !DIExpression()), !dbg !4855
  store ptr %out, ptr %out.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !4853, metadata !DIExpression()), !dbg !4856
  store ptr %in, ptr %in.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !4854, metadata !DIExpression()), !dbg !4857
  %0 = load ptr, ptr %handler.addr, align 8, !dbg !4858, !tbaa !1148
  %1 = load ptr, ptr %out.addr, align 8, !dbg !4859, !tbaa !1148
  %2 = load ptr, ptr %in.addr, align 8, !dbg !4860, !tbaa !1148
  %call = call i32 @xmlCharEncFirstLineInt(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef -1), !dbg !4861
  ret i32 %call, !dbg !4862
}

; Function Attrs: nounwind uwtable
define i32 @xmlCharEncFirstLineInput(ptr noundef %input, i32 noundef %len) #0 !dbg !4863 {
entry:
  %retval = alloca i32, align 4
  %input.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %written = alloca i64, align 8
  %toconv = alloca i64, align 8
  %c_in = alloca i32, align 4
  %c_out = alloca i32, align 4
  %in = alloca ptr, align 8
  %out = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %buf = alloca [50 x i8], align 16
  %content = alloca ptr, align 8
  store ptr %input, ptr %input.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %input.addr, metadata !4895, metadata !DIExpression()), !dbg !4913
  store i32 %len, ptr %len.addr, align 4, !tbaa !1185
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !4896, metadata !DIExpression()), !dbg !4914
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !4915
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !4897, metadata !DIExpression()), !dbg !4916
  call void @llvm.lifetime.start.p0(i64 8, ptr %written) #9, !dbg !4917
  tail call void @llvm.dbg.declare(metadata ptr %written, metadata !4898, metadata !DIExpression()), !dbg !4918
  call void @llvm.lifetime.start.p0(i64 8, ptr %toconv) #9, !dbg !4919
  tail call void @llvm.dbg.declare(metadata ptr %toconv, metadata !4901, metadata !DIExpression()), !dbg !4920
  call void @llvm.lifetime.start.p0(i64 4, ptr %c_in) #9, !dbg !4921
  tail call void @llvm.dbg.declare(metadata ptr %c_in, metadata !4902, metadata !DIExpression()), !dbg !4922
  call void @llvm.lifetime.start.p0(i64 4, ptr %c_out) #9, !dbg !4923
  tail call void @llvm.dbg.declare(metadata ptr %c_out, metadata !4903, metadata !DIExpression()), !dbg !4924
  call void @llvm.lifetime.start.p0(i64 8, ptr %in) #9, !dbg !4925
  tail call void @llvm.dbg.declare(metadata ptr %in, metadata !4904, metadata !DIExpression()), !dbg !4926
  call void @llvm.lifetime.start.p0(i64 8, ptr %out) #9, !dbg !4927
  tail call void @llvm.dbg.declare(metadata ptr %out, metadata !4905, metadata !DIExpression()), !dbg !4928
  %0 = load ptr, ptr %input.addr, align 8, !dbg !4929, !tbaa !1148
  %cmp = icmp eq ptr %0, null, !dbg !4931
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4932

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %input.addr, align 8, !dbg !4933, !tbaa !1148
  %encoder = getelementptr inbounds %struct._xmlParserInputBuffer, ptr %1, i32 0, i32 3, !dbg !4934
  %2 = load ptr, ptr %encoder, align 8, !dbg !4934, !tbaa !4935
  %cmp1 = icmp eq ptr %2, null, !dbg !4938
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !4939

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %input.addr, align 8, !dbg !4940, !tbaa !1148
  %buffer = getelementptr inbounds %struct._xmlParserInputBuffer, ptr %3, i32 0, i32 4, !dbg !4941
  %4 = load ptr, ptr %buffer, align 8, !dbg !4941, !tbaa !4942
  %cmp3 = icmp eq ptr %4, null, !dbg !4943
  br i1 %cmp3, label %if.then, label %lor.lhs.false4, !dbg !4944

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %5 = load ptr, ptr %input.addr, align 8, !dbg !4945, !tbaa !1148
  %raw = getelementptr inbounds %struct._xmlParserInputBuffer, ptr %5, i32 0, i32 5, !dbg !4946
  %6 = load ptr, ptr %raw, align 8, !dbg !4946, !tbaa !4947
  %cmp5 = icmp eq ptr %6, null, !dbg !4948
  br i1 %cmp5, label %if.then, label %if.end, !dbg !4949

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4, !dbg !4950
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4950

if.end:                                           ; preds = %lor.lhs.false4
  %7 = load ptr, ptr %input.addr, align 8, !dbg !4951, !tbaa !1148
  %buffer6 = getelementptr inbounds %struct._xmlParserInputBuffer, ptr %7, i32 0, i32 4, !dbg !4952
  %8 = load ptr, ptr %buffer6, align 8, !dbg !4952, !tbaa !4942
  store ptr %8, ptr %out, align 8, !dbg !4953, !tbaa !1148
  %9 = load ptr, ptr %input.addr, align 8, !dbg !4954, !tbaa !1148
  %raw7 = getelementptr inbounds %struct._xmlParserInputBuffer, ptr %9, i32 0, i32 5, !dbg !4955
  %10 = load ptr, ptr %raw7, align 8, !dbg !4955, !tbaa !4947
  store ptr %10, ptr %in, align 8, !dbg !4956, !tbaa !1148
  %11 = load ptr, ptr %in, align 8, !dbg !4957, !tbaa !1148
  %call = call i64 @xmlBufUse__internal_alias(ptr noundef %11), !dbg !4958
  store i64 %call, ptr %toconv, align 8, !dbg !4959, !tbaa !4960
  %12 = load i64, ptr %toconv, align 8, !dbg !4961, !tbaa !4960
  %cmp8 = icmp eq i64 %12, 0, !dbg !4963
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !4964

if.then9:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !4965
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4965

if.end10:                                         ; preds = %if.end
  %13 = load ptr, ptr %out, align 8, !dbg !4966, !tbaa !1148
  %call11 = call i64 @xmlBufAvail(ptr noundef %13), !dbg !4967
  %sub = sub i64 %call11, 1, !dbg !4968
  store i64 %sub, ptr %written, align 8, !dbg !4969, !tbaa !4960
  %14 = load i32, ptr %len.addr, align 4, !dbg !4970, !tbaa !1185
  %cmp12 = icmp sge i32 %14, 0, !dbg !4972
  br i1 %cmp12, label %if.then13, label %if.else, !dbg !4973

if.then13:                                        ; preds = %if.end10
  %15 = load i64, ptr %toconv, align 8, !dbg !4974, !tbaa !4960
  %16 = load i32, ptr %len.addr, align 4, !dbg !4977, !tbaa !1185
  %conv = zext i32 %16 to i64, !dbg !4978
  %cmp14 = icmp ugt i64 %15, %conv, !dbg !4979
  br i1 %cmp14, label %if.then16, label %if.end18, !dbg !4980

if.then16:                                        ; preds = %if.then13
  %17 = load i32, ptr %len.addr, align 4, !dbg !4981, !tbaa !1185
  %conv17 = sext i32 %17 to i64, !dbg !4981
  store i64 %conv17, ptr %toconv, align 8, !dbg !4982, !tbaa !4960
  br label %if.end18, !dbg !4983

if.end18:                                         ; preds = %if.then16, %if.then13
  br label %if.end23, !dbg !4984

if.else:                                          ; preds = %if.end10
  %18 = load i64, ptr %toconv, align 8, !dbg !4985, !tbaa !4960
  %cmp19 = icmp ugt i64 %18, 180, !dbg !4988
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !4989

if.then21:                                        ; preds = %if.else
  store i64 180, ptr %toconv, align 8, !dbg !4990, !tbaa !4960
  br label %if.end22, !dbg !4991

if.end22:                                         ; preds = %if.then21, %if.else
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.end18
  %19 = load i64, ptr %toconv, align 8, !dbg !4992, !tbaa !4960
  %mul = mul i64 %19, 2, !dbg !4994
  %20 = load i64, ptr %written, align 8, !dbg !4995, !tbaa !4960
  %cmp24 = icmp uge i64 %mul, %20, !dbg !4996
  br i1 %cmp24, label %if.then26, label %if.end32, !dbg !4997

if.then26:                                        ; preds = %if.end23
  %21 = load ptr, ptr %out, align 8, !dbg !4998, !tbaa !1148
  %22 = load i64, ptr %toconv, align 8, !dbg !5000, !tbaa !4960
  %mul27 = mul i64 %22, 2, !dbg !5001
  %conv28 = trunc i64 %mul27 to i32, !dbg !5000
  %call29 = call i32 @xmlBufGrow(ptr noundef %21, i32 noundef %conv28), !dbg !5002
  %23 = load ptr, ptr %out, align 8, !dbg !5003, !tbaa !1148
  %call30 = call i64 @xmlBufAvail(ptr noundef %23), !dbg !5004
  %sub31 = sub i64 %call30, 1, !dbg !5005
  store i64 %sub31, ptr %written, align 8, !dbg !5006, !tbaa !4960
  br label %if.end32, !dbg !5007

if.end32:                                         ; preds = %if.then26, %if.end23
  %24 = load i64, ptr %written, align 8, !dbg !5008, !tbaa !4960
  %cmp33 = icmp ugt i64 %24, 360, !dbg !5010
  br i1 %cmp33, label %if.then35, label %if.end36, !dbg !5011

if.then35:                                        ; preds = %if.end32
  store i64 360, ptr %written, align 8, !dbg !5012, !tbaa !4960
  br label %if.end36, !dbg !5013

if.end36:                                         ; preds = %if.then35, %if.end32
  %25 = load i64, ptr %toconv, align 8, !dbg !5014, !tbaa !4960
  %conv37 = trunc i64 %25 to i32, !dbg !5014
  store i32 %conv37, ptr %c_in, align 4, !dbg !5015, !tbaa !1185
  %26 = load i64, ptr %written, align 8, !dbg !5016, !tbaa !4960
  %conv38 = trunc i64 %26 to i32, !dbg !5016
  store i32 %conv38, ptr %c_out, align 4, !dbg !5017, !tbaa !1185
  %27 = load ptr, ptr %input.addr, align 8, !dbg !5018, !tbaa !1148
  %encoder39 = getelementptr inbounds %struct._xmlParserInputBuffer, ptr %27, i32 0, i32 3, !dbg !5019
  %28 = load ptr, ptr %encoder39, align 8, !dbg !5019, !tbaa !4935
  %29 = load ptr, ptr %out, align 8, !dbg !5020, !tbaa !1148
  %call40 = call ptr @xmlBufEnd__internal_alias(ptr noundef %29), !dbg !5021
  %30 = load ptr, ptr %in, align 8, !dbg !5022, !tbaa !1148
  %call41 = call ptr @xmlBufContent__internal_alias(ptr noundef %30), !dbg !5023
  %call42 = call i32 @xmlEncInputChunk(ptr noundef %28, ptr noundef %call40, ptr noundef %c_out, ptr noundef %call41, ptr noundef %c_in, i32 noundef 0), !dbg !5024
  store i32 %call42, ptr %ret, align 4, !dbg !5025, !tbaa !1185
  %31 = load ptr, ptr %in, align 8, !dbg !5026, !tbaa !1148
  %32 = load i32, ptr %c_in, align 4, !dbg !5027, !tbaa !1185
  %conv43 = sext i32 %32 to i64, !dbg !5027
  %call44 = call i64 @xmlBufShrink__internal_alias(ptr noundef %31, i64 noundef %conv43), !dbg !5028
  %33 = load ptr, ptr %out, align 8, !dbg !5029, !tbaa !1148
  %34 = load i32, ptr %c_out, align 4, !dbg !5030, !tbaa !1185
  %conv45 = sext i32 %34 to i64, !dbg !5030
  %call46 = call i32 @xmlBufAddLen(ptr noundef %33, i64 noundef %conv45), !dbg !5031
  %35 = load i32, ptr %ret, align 4, !dbg !5032, !tbaa !1185
  %cmp47 = icmp eq i32 %35, -1, !dbg !5034
  br i1 %cmp47, label %if.then49, label %if.end50, !dbg !5035

if.then49:                                        ; preds = %if.end36
  store i32 -3, ptr %ret, align 4, !dbg !5036, !tbaa !1185
  br label %if.end50, !dbg !5037

if.end50:                                         ; preds = %if.then49, %if.end36
  %36 = load i32, ptr %ret, align 4, !dbg !5038, !tbaa !1185
  switch i32 %36, label %sw.epilog [
    i32 0, label %sw.epilog
    i32 -1, label %sw.epilog
    i32 -3, label %sw.epilog
    i32 -2, label %sw.bb
  ], !dbg !5039

sw.bb:                                            ; preds = %if.end50
  call void @llvm.lifetime.start.p0(i64 50, ptr %buf) #9, !dbg !5040
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !4906, metadata !DIExpression()), !dbg !5041
  call void @llvm.lifetime.start.p0(i64 8, ptr %content) #9, !dbg !5042
  tail call void @llvm.dbg.declare(metadata ptr %content, metadata !4912, metadata !DIExpression()), !dbg !5043
  %37 = load ptr, ptr %in, align 8, !dbg !5044, !tbaa !1148
  %call51 = call ptr @xmlBufContent__internal_alias(ptr noundef %37), !dbg !5045
  store ptr %call51, ptr %content, align 8, !dbg !5043, !tbaa !1148
  %arrayidx = getelementptr inbounds [50 x i8], ptr %buf, i64 0, i64 0, !dbg !5046
  %38 = load ptr, ptr %content, align 8, !dbg !5047, !tbaa !1148
  %arrayidx52 = getelementptr inbounds i8, ptr %38, i64 0, !dbg !5047
  %39 = load i8, ptr %arrayidx52, align 1, !dbg !5047, !tbaa !1210
  %conv53 = zext i8 %39 to i32, !dbg !5047
  %40 = load ptr, ptr %content, align 8, !dbg !5048, !tbaa !1148
  %arrayidx54 = getelementptr inbounds i8, ptr %40, i64 1, !dbg !5048
  %41 = load i8, ptr %arrayidx54, align 1, !dbg !5048, !tbaa !1210
  %conv55 = zext i8 %41 to i32, !dbg !5048
  %42 = load ptr, ptr %content, align 8, !dbg !5049, !tbaa !1148
  %arrayidx56 = getelementptr inbounds i8, ptr %42, i64 2, !dbg !5049
  %43 = load i8, ptr %arrayidx56, align 1, !dbg !5049, !tbaa !1210
  %conv57 = zext i8 %43 to i32, !dbg !5049
  %44 = load ptr, ptr %content, align 8, !dbg !5050, !tbaa !1148
  %arrayidx58 = getelementptr inbounds i8, ptr %44, i64 3, !dbg !5050
  %45 = load i8, ptr %arrayidx58, align 1, !dbg !5050, !tbaa !1210
  %conv59 = zext i8 %45 to i32, !dbg !5050
  %call60 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arrayidx, i64 noundef 49, ptr noundef @.str.47, i32 noundef %conv53, i32 noundef %conv55, i32 noundef %conv57, i32 noundef %conv59) #9, !dbg !5051
  %arrayidx61 = getelementptr inbounds [50 x i8], ptr %buf, i64 0, i64 49, !dbg !5052
  store i8 0, ptr %arrayidx61, align 1, !dbg !5053, !tbaa !1210
  %arraydecay = getelementptr inbounds [50 x i8], ptr %buf, i64 0, i64 0, !dbg !5054
  call void @xmlEncodingErr(i32 noundef 6003, ptr noundef @.str.48, ptr noundef %arraydecay), !dbg !5055
  call void @llvm.lifetime.end.p0(i64 8, ptr %content) #9, !dbg !5056
  call void @llvm.lifetime.end.p0(i64 50, ptr %buf) #9, !dbg !5056
  br label %sw.epilog, !dbg !5057

sw.epilog:                                        ; preds = %sw.bb, %if.end50, %if.end50, %if.end50, %if.end50
  %46 = load i32, ptr %ret, align 4, !dbg !5058, !tbaa !1185
  %cmp62 = icmp eq i32 %46, -3, !dbg !5060
  br i1 %cmp62, label %if.then64, label %if.end65, !dbg !5061

if.then64:                                        ; preds = %sw.epilog
  store i32 0, ptr %ret, align 4, !dbg !5062, !tbaa !1185
  br label %if.end65, !dbg !5063

if.end65:                                         ; preds = %if.then64, %sw.epilog
  %47 = load i32, ptr %ret, align 4, !dbg !5064, !tbaa !1185
  %cmp66 = icmp eq i32 %47, -1, !dbg !5066
  br i1 %cmp66, label %if.then68, label %if.end69, !dbg !5067

if.then68:                                        ; preds = %if.end65
  store i32 0, ptr %ret, align 4, !dbg !5068, !tbaa !1185
  br label %if.end69, !dbg !5069

if.end69:                                         ; preds = %if.then68, %if.end65
  %48 = load i32, ptr %ret, align 4, !dbg !5070, !tbaa !1185
  store i32 %48, ptr %retval, align 4, !dbg !5071
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5071

cleanup:                                          ; preds = %if.end69, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %out) #9, !dbg !5072
  call void @llvm.lifetime.end.p0(i64 8, ptr %in) #9, !dbg !5072
  call void @llvm.lifetime.end.p0(i64 4, ptr %c_out) #9, !dbg !5072
  call void @llvm.lifetime.end.p0(i64 4, ptr %c_in) #9, !dbg !5072
  call void @llvm.lifetime.end.p0(i64 8, ptr %toconv) #9, !dbg !5072
  call void @llvm.lifetime.end.p0(i64 8, ptr %written) #9, !dbg !5072
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !5072
  %49 = load i32, ptr %retval, align 4, !dbg !5072
  ret i32 %49, !dbg !5072
}

declare !dbg !5073 hidden i64 @xmlBufUse__internal_alias(ptr noundef) #6

declare !dbg !5077 i64 @xmlBufAvail(ptr noundef) #6

declare !dbg !5079 i32 @xmlBufGrow(ptr noundef, i32 noundef) #6

declare !dbg !5082 hidden ptr @xmlBufEnd__internal_alias(ptr noundef) #6

declare !dbg !5085 hidden ptr @xmlBufContent__internal_alias(ptr noundef) #6

declare !dbg !5090 hidden i64 @xmlBufShrink__internal_alias(ptr noundef, i64 noundef) #6

declare !dbg !5093 i32 @xmlBufAddLen(ptr noundef, i64 noundef) #6

; Function Attrs: nounwind
declare !dbg !5096 i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #7

; Function Attrs: nounwind uwtable
define i32 @xmlCharEncInput(ptr noundef %input, i32 noundef %flush) #0 !dbg !5102 {
entry:
  %retval = alloca i32, align 4
  %input.addr = alloca ptr, align 8
  %flush.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %written = alloca i64, align 8
  %toconv = alloca i64, align 8
  %c_in = alloca i32, align 4
  %c_out = alloca i32, align 4
  %in = alloca ptr, align 8
  %out = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %buf = alloca [50 x i8], align 16
  %content = alloca ptr, align 8
  store ptr %input, ptr %input.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %input.addr, metadata !5104, metadata !DIExpression()), !dbg !5117
  store i32 %flush, ptr %flush.addr, align 4, !tbaa !1185
  tail call void @llvm.dbg.declare(metadata ptr %flush.addr, metadata !5105, metadata !DIExpression()), !dbg !5118
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !5119
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !5106, metadata !DIExpression()), !dbg !5120
  call void @llvm.lifetime.start.p0(i64 8, ptr %written) #9, !dbg !5121
  tail call void @llvm.dbg.declare(metadata ptr %written, metadata !5107, metadata !DIExpression()), !dbg !5122
  call void @llvm.lifetime.start.p0(i64 8, ptr %toconv) #9, !dbg !5123
  tail call void @llvm.dbg.declare(metadata ptr %toconv, metadata !5108, metadata !DIExpression()), !dbg !5124
  call void @llvm.lifetime.start.p0(i64 4, ptr %c_in) #9, !dbg !5125
  tail call void @llvm.dbg.declare(metadata ptr %c_in, metadata !5109, metadata !DIExpression()), !dbg !5126
  call void @llvm.lifetime.start.p0(i64 4, ptr %c_out) #9, !dbg !5127
  tail call void @llvm.dbg.declare(metadata ptr %c_out, metadata !5110, metadata !DIExpression()), !dbg !5128
  call void @llvm.lifetime.start.p0(i64 8, ptr %in) #9, !dbg !5129
  tail call void @llvm.dbg.declare(metadata ptr %in, metadata !5111, metadata !DIExpression()), !dbg !5130
  call void @llvm.lifetime.start.p0(i64 8, ptr %out) #9, !dbg !5131
  tail call void @llvm.dbg.declare(metadata ptr %out, metadata !5112, metadata !DIExpression()), !dbg !5132
  %0 = load ptr, ptr %input.addr, align 8, !dbg !5133, !tbaa !1148
  %cmp = icmp eq ptr %0, null, !dbg !5135
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5136

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %input.addr, align 8, !dbg !5137, !tbaa !1148
  %encoder = getelementptr inbounds %struct._xmlParserInputBuffer, ptr %1, i32 0, i32 3, !dbg !5138
  %2 = load ptr, ptr %encoder, align 8, !dbg !5138, !tbaa !4935
  %cmp1 = icmp eq ptr %2, null, !dbg !5139
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !5140

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %input.addr, align 8, !dbg !5141, !tbaa !1148
  %buffer = getelementptr inbounds %struct._xmlParserInputBuffer, ptr %3, i32 0, i32 4, !dbg !5142
  %4 = load ptr, ptr %buffer, align 8, !dbg !5142, !tbaa !4942
  %cmp3 = icmp eq ptr %4, null, !dbg !5143
  br i1 %cmp3, label %if.then, label %lor.lhs.false4, !dbg !5144

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %5 = load ptr, ptr %input.addr, align 8, !dbg !5145, !tbaa !1148
  %raw = getelementptr inbounds %struct._xmlParserInputBuffer, ptr %5, i32 0, i32 5, !dbg !5146
  %6 = load ptr, ptr %raw, align 8, !dbg !5146, !tbaa !4947
  %cmp5 = icmp eq ptr %6, null, !dbg !5147
  br i1 %cmp5, label %if.then, label %if.end, !dbg !5148

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4, !dbg !5149
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5149

if.end:                                           ; preds = %lor.lhs.false4
  %7 = load ptr, ptr %input.addr, align 8, !dbg !5150, !tbaa !1148
  %buffer6 = getelementptr inbounds %struct._xmlParserInputBuffer, ptr %7, i32 0, i32 4, !dbg !5151
  %8 = load ptr, ptr %buffer6, align 8, !dbg !5151, !tbaa !4942
  store ptr %8, ptr %out, align 8, !dbg !5152, !tbaa !1148
  %9 = load ptr, ptr %input.addr, align 8, !dbg !5153, !tbaa !1148
  %raw7 = getelementptr inbounds %struct._xmlParserInputBuffer, ptr %9, i32 0, i32 5, !dbg !5154
  %10 = load ptr, ptr %raw7, align 8, !dbg !5154, !tbaa !4947
  store ptr %10, ptr %in, align 8, !dbg !5155, !tbaa !1148
  %11 = load ptr, ptr %in, align 8, !dbg !5156, !tbaa !1148
  %call = call i64 @xmlBufUse__internal_alias(ptr noundef %11), !dbg !5157
  store i64 %call, ptr %toconv, align 8, !dbg !5158, !tbaa !4960
  %12 = load i64, ptr %toconv, align 8, !dbg !5159, !tbaa !4960
  %cmp8 = icmp eq i64 %12, 0, !dbg !5161
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !5162

if.then9:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !5163
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5163

if.end10:                                         ; preds = %if.end
  %13 = load i64, ptr %toconv, align 8, !dbg !5164, !tbaa !4960
  %cmp11 = icmp ugt i64 %13, 65536, !dbg !5166
  br i1 %cmp11, label %land.lhs.true, label %if.end14, !dbg !5167

land.lhs.true:                                    ; preds = %if.end10
  %14 = load i32, ptr %flush.addr, align 4, !dbg !5168, !tbaa !1185
  %cmp12 = icmp eq i32 %14, 0, !dbg !5169
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5170

if.then13:                                        ; preds = %land.lhs.true
  store i64 65536, ptr %toconv, align 8, !dbg !5171, !tbaa !4960
  br label %if.end14, !dbg !5172

if.end14:                                         ; preds = %if.then13, %land.lhs.true, %if.end10
  %15 = load ptr, ptr %out, align 8, !dbg !5173, !tbaa !1148
  %call15 = call i64 @xmlBufAvail(ptr noundef %15), !dbg !5174
  store i64 %call15, ptr %written, align 8, !dbg !5175, !tbaa !4960
  %16 = load i64, ptr %written, align 8, !dbg !5176, !tbaa !4960
  %cmp16 = icmp ugt i64 %16, 0, !dbg !5178
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !5179

if.then17:                                        ; preds = %if.end14
  %17 = load i64, ptr %written, align 8, !dbg !5180, !tbaa !4960
  %dec = add i64 %17, -1, !dbg !5180
  store i64 %dec, ptr %written, align 8, !dbg !5180, !tbaa !4960
  br label %if.end18, !dbg !5181

if.end18:                                         ; preds = %if.then17, %if.end14
  %18 = load i64, ptr %toconv, align 8, !dbg !5182, !tbaa !4960
  %mul = mul i64 %18, 2, !dbg !5184
  %19 = load i64, ptr %written, align 8, !dbg !5185, !tbaa !4960
  %cmp19 = icmp uge i64 %mul, %19, !dbg !5186
  br i1 %cmp19, label %if.then20, label %if.end29, !dbg !5187

if.then20:                                        ; preds = %if.end18
  %20 = load ptr, ptr %out, align 8, !dbg !5188, !tbaa !1148
  %21 = load i64, ptr %toconv, align 8, !dbg !5190, !tbaa !4960
  %mul21 = mul i64 %21, 2, !dbg !5191
  %conv = trunc i64 %mul21 to i32, !dbg !5190
  %call22 = call i32 @xmlBufGrow(ptr noundef %20, i32 noundef %conv), !dbg !5192
  %22 = load ptr, ptr %out, align 8, !dbg !5193, !tbaa !1148
  %call23 = call i64 @xmlBufAvail(ptr noundef %22), !dbg !5194
  store i64 %call23, ptr %written, align 8, !dbg !5195, !tbaa !4960
  %23 = load i64, ptr %written, align 8, !dbg !5196, !tbaa !4960
  %cmp24 = icmp ugt i64 %23, 0, !dbg !5198
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !5199

if.then26:                                        ; preds = %if.then20
  %24 = load i64, ptr %written, align 8, !dbg !5200, !tbaa !4960
  %dec27 = add i64 %24, -1, !dbg !5200
  store i64 %dec27, ptr %written, align 8, !dbg !5200, !tbaa !4960
  br label %if.end28, !dbg !5201

if.end28:                                         ; preds = %if.then26, %if.then20
  br label %if.end29, !dbg !5202

if.end29:                                         ; preds = %if.end28, %if.end18
  %25 = load i64, ptr %written, align 8, !dbg !5203, !tbaa !4960
  %cmp30 = icmp ugt i64 %25, 131072, !dbg !5205
  br i1 %cmp30, label %land.lhs.true32, label %if.end36, !dbg !5206

land.lhs.true32:                                  ; preds = %if.end29
  %26 = load i32, ptr %flush.addr, align 4, !dbg !5207, !tbaa !1185
  %cmp33 = icmp eq i32 %26, 0, !dbg !5208
  br i1 %cmp33, label %if.then35, label %if.end36, !dbg !5209

if.then35:                                        ; preds = %land.lhs.true32
  store i64 131072, ptr %written, align 8, !dbg !5210, !tbaa !4960
  br label %if.end36, !dbg !5211

if.end36:                                         ; preds = %if.then35, %land.lhs.true32, %if.end29
  %27 = load i64, ptr %toconv, align 8, !dbg !5212, !tbaa !4960
  %conv37 = trunc i64 %27 to i32, !dbg !5212
  store i32 %conv37, ptr %c_in, align 4, !dbg !5213, !tbaa !1185
  %28 = load i64, ptr %written, align 8, !dbg !5214, !tbaa !4960
  %conv38 = trunc i64 %28 to i32, !dbg !5214
  store i32 %conv38, ptr %c_out, align 4, !dbg !5215, !tbaa !1185
  %29 = load ptr, ptr %input.addr, align 8, !dbg !5216, !tbaa !1148
  %encoder39 = getelementptr inbounds %struct._xmlParserInputBuffer, ptr %29, i32 0, i32 3, !dbg !5217
  %30 = load ptr, ptr %encoder39, align 8, !dbg !5217, !tbaa !4935
  %31 = load ptr, ptr %out, align 8, !dbg !5218, !tbaa !1148
  %call40 = call ptr @xmlBufEnd__internal_alias(ptr noundef %31), !dbg !5219
  %32 = load ptr, ptr %in, align 8, !dbg !5220, !tbaa !1148
  %call41 = call ptr @xmlBufContent__internal_alias(ptr noundef %32), !dbg !5221
  %33 = load i32, ptr %flush.addr, align 4, !dbg !5222, !tbaa !1185
  %call42 = call i32 @xmlEncInputChunk(ptr noundef %30, ptr noundef %call40, ptr noundef %c_out, ptr noundef %call41, ptr noundef %c_in, i32 noundef %33), !dbg !5223
  store i32 %call42, ptr %ret, align 4, !dbg !5224, !tbaa !1185
  %34 = load ptr, ptr %in, align 8, !dbg !5225, !tbaa !1148
  %35 = load i32, ptr %c_in, align 4, !dbg !5226, !tbaa !1185
  %conv43 = sext i32 %35 to i64, !dbg !5226
  %call44 = call i64 @xmlBufShrink__internal_alias(ptr noundef %34, i64 noundef %conv43), !dbg !5227
  %36 = load ptr, ptr %out, align 8, !dbg !5228, !tbaa !1148
  %37 = load i32, ptr %c_out, align 4, !dbg !5229, !tbaa !1185
  %conv45 = sext i32 %37 to i64, !dbg !5229
  %call46 = call i32 @xmlBufAddLen(ptr noundef %36, i64 noundef %conv45), !dbg !5230
  %38 = load i32, ptr %ret, align 4, !dbg !5231, !tbaa !1185
  %cmp47 = icmp eq i32 %38, -1, !dbg !5233
  br i1 %cmp47, label %if.then49, label %if.end50, !dbg !5234

if.then49:                                        ; preds = %if.end36
  store i32 -3, ptr %ret, align 4, !dbg !5235, !tbaa !1185
  br label %if.end50, !dbg !5236

if.end50:                                         ; preds = %if.then49, %if.end36
  %39 = load i32, ptr %ret, align 4, !dbg !5237, !tbaa !1185
  switch i32 %39, label %sw.epilog [
    i32 0, label %sw.epilog
    i32 -1, label %sw.epilog
    i32 -3, label %sw.epilog
    i32 -2, label %sw.bb
  ], !dbg !5238

sw.bb:                                            ; preds = %if.end50
  call void @llvm.lifetime.start.p0(i64 50, ptr %buf) #9, !dbg !5239
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !5113, metadata !DIExpression()), !dbg !5240
  call void @llvm.lifetime.start.p0(i64 8, ptr %content) #9, !dbg !5241
  tail call void @llvm.dbg.declare(metadata ptr %content, metadata !5116, metadata !DIExpression()), !dbg !5242
  %40 = load ptr, ptr %in, align 8, !dbg !5243, !tbaa !1148
  %call51 = call ptr @xmlBufContent__internal_alias(ptr noundef %40), !dbg !5244
  store ptr %call51, ptr %content, align 8, !dbg !5242, !tbaa !1148
  %arrayidx = getelementptr inbounds [50 x i8], ptr %buf, i64 0, i64 0, !dbg !5245
  %41 = load ptr, ptr %content, align 8, !dbg !5246, !tbaa !1148
  %arrayidx52 = getelementptr inbounds i8, ptr %41, i64 0, !dbg !5246
  %42 = load i8, ptr %arrayidx52, align 1, !dbg !5246, !tbaa !1210
  %conv53 = zext i8 %42 to i32, !dbg !5246
  %43 = load ptr, ptr %content, align 8, !dbg !5247, !tbaa !1148
  %arrayidx54 = getelementptr inbounds i8, ptr %43, i64 1, !dbg !5247
  %44 = load i8, ptr %arrayidx54, align 1, !dbg !5247, !tbaa !1210
  %conv55 = zext i8 %44 to i32, !dbg !5247
  %45 = load ptr, ptr %content, align 8, !dbg !5248, !tbaa !1148
  %arrayidx56 = getelementptr inbounds i8, ptr %45, i64 2, !dbg !5248
  %46 = load i8, ptr %arrayidx56, align 1, !dbg !5248, !tbaa !1210
  %conv57 = zext i8 %46 to i32, !dbg !5248
  %47 = load ptr, ptr %content, align 8, !dbg !5249, !tbaa !1148
  %arrayidx58 = getelementptr inbounds i8, ptr %47, i64 3, !dbg !5249
  %48 = load i8, ptr %arrayidx58, align 1, !dbg !5249, !tbaa !1210
  %conv59 = zext i8 %48 to i32, !dbg !5249
  %call60 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arrayidx, i64 noundef 49, ptr noundef @.str.47, i32 noundef %conv53, i32 noundef %conv55, i32 noundef %conv57, i32 noundef %conv59) #9, !dbg !5250
  %arrayidx61 = getelementptr inbounds [50 x i8], ptr %buf, i64 0, i64 49, !dbg !5251
  store i8 0, ptr %arrayidx61, align 1, !dbg !5252, !tbaa !1210
  %arraydecay = getelementptr inbounds [50 x i8], ptr %buf, i64 0, i64 0, !dbg !5253
  call void @xmlEncodingErr(i32 noundef 6003, ptr noundef @.str.48, ptr noundef %arraydecay), !dbg !5254
  call void @llvm.lifetime.end.p0(i64 8, ptr %content) #9, !dbg !5255
  call void @llvm.lifetime.end.p0(i64 50, ptr %buf) #9, !dbg !5255
  br label %sw.epilog, !dbg !5256

sw.epilog:                                        ; preds = %sw.bb, %if.end50, %if.end50, %if.end50, %if.end50
  %49 = load i32, ptr %ret, align 4, !dbg !5257, !tbaa !1185
  %cmp62 = icmp eq i32 %49, -3, !dbg !5259
  br i1 %cmp62, label %if.then64, label %if.end65, !dbg !5260

if.then64:                                        ; preds = %sw.epilog
  store i32 0, ptr %ret, align 4, !dbg !5261, !tbaa !1185
  br label %if.end65, !dbg !5262

if.end65:                                         ; preds = %if.then64, %sw.epilog
  %50 = load i32, ptr %c_out, align 4, !dbg !5263, !tbaa !1185
  %tobool = icmp ne i32 %50, 0, !dbg !5263
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5263

cond.true:                                        ; preds = %if.end65
  %51 = load i32, ptr %c_out, align 4, !dbg !5264, !tbaa !1185
  br label %cond.end, !dbg !5263

cond.false:                                       ; preds = %if.end65
  %52 = load i32, ptr %ret, align 4, !dbg !5265, !tbaa !1185
  br label %cond.end, !dbg !5263

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %51, %cond.true ], [ %52, %cond.false ], !dbg !5263
  store i32 %cond, ptr %retval, align 4, !dbg !5266
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5266

cleanup:                                          ; preds = %cond.end, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %out) #9, !dbg !5267
  call void @llvm.lifetime.end.p0(i64 8, ptr %in) #9, !dbg !5267
  call void @llvm.lifetime.end.p0(i64 4, ptr %c_out) #9, !dbg !5267
  call void @llvm.lifetime.end.p0(i64 4, ptr %c_in) #9, !dbg !5267
  call void @llvm.lifetime.end.p0(i64 8, ptr %toconv) #9, !dbg !5267
  call void @llvm.lifetime.end.p0(i64 8, ptr %written) #9, !dbg !5267
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !5267
  %53 = load i32, ptr %retval, align 4, !dbg !5267
  ret i32 %53, !dbg !5267
}

; Function Attrs: nounwind uwtable
define hidden i32 @xmlCharEncInFunc__internal_alias(ptr noundef %handler, ptr noundef %out, ptr noundef %in) #0 !dbg !5268 {
entry:
  %retval = alloca i32, align 4
  %handler.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %written = alloca i32, align 4
  %toconv = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %buf = alloca [50 x i8], align 16
  store ptr %handler, ptr %handler.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %handler.addr, metadata !5270, metadata !DIExpression()), !dbg !5279
  store ptr %out, ptr %out.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !5271, metadata !DIExpression()), !dbg !5280
  store ptr %in, ptr %in.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !5272, metadata !DIExpression()), !dbg !5281
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !5282
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !5273, metadata !DIExpression()), !dbg !5283
  call void @llvm.lifetime.start.p0(i64 4, ptr %written) #9, !dbg !5284
  tail call void @llvm.dbg.declare(metadata ptr %written, metadata !5274, metadata !DIExpression()), !dbg !5285
  call void @llvm.lifetime.start.p0(i64 4, ptr %toconv) #9, !dbg !5286
  tail call void @llvm.dbg.declare(metadata ptr %toconv, metadata !5275, metadata !DIExpression()), !dbg !5287
  %0 = load ptr, ptr %handler.addr, align 8, !dbg !5288, !tbaa !1148
  %cmp = icmp eq ptr %0, null, !dbg !5290
  br i1 %cmp, label %if.then, label %if.end, !dbg !5291

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !5292
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5292

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %out.addr, align 8, !dbg !5293, !tbaa !1148
  %cmp1 = icmp eq ptr %1, null, !dbg !5295
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !5296

if.then2:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4, !dbg !5297
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5297

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %in.addr, align 8, !dbg !5298, !tbaa !1148
  %cmp4 = icmp eq ptr %2, null, !dbg !5300
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5301

if.then5:                                         ; preds = %if.end3
  store i32 -1, ptr %retval, align 4, !dbg !5302
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5302

if.end6:                                          ; preds = %if.end3
  %3 = load ptr, ptr %in.addr, align 8, !dbg !5303, !tbaa !1148
  %use = getelementptr inbounds %struct._xmlBuffer, ptr %3, i32 0, i32 1, !dbg !5304
  %4 = load i32, ptr %use, align 8, !dbg !5304, !tbaa !4695
  store i32 %4, ptr %toconv, align 4, !dbg !5305, !tbaa !1185
  %5 = load i32, ptr %toconv, align 4, !dbg !5306, !tbaa !1185
  %cmp7 = icmp eq i32 %5, 0, !dbg !5308
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !5309

if.then8:                                         ; preds = %if.end6
  store i32 0, ptr %retval, align 4, !dbg !5310
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5310

if.end9:                                          ; preds = %if.end6
  %6 = load ptr, ptr %out.addr, align 8, !dbg !5311, !tbaa !1148
  %size = getelementptr inbounds %struct._xmlBuffer, ptr %6, i32 0, i32 2, !dbg !5312
  %7 = load i32, ptr %size, align 4, !dbg !5312, !tbaa !4691
  %8 = load ptr, ptr %out.addr, align 8, !dbg !5313, !tbaa !1148
  %use10 = getelementptr inbounds %struct._xmlBuffer, ptr %8, i32 0, i32 1, !dbg !5314
  %9 = load i32, ptr %use10, align 8, !dbg !5314, !tbaa !4695
  %sub = sub i32 %7, %9, !dbg !5315
  %sub11 = sub i32 %sub, 1, !dbg !5316
  store i32 %sub11, ptr %written, align 4, !dbg !5317, !tbaa !1185
  %10 = load i32, ptr %toconv, align 4, !dbg !5318, !tbaa !1185
  %mul = mul nsw i32 %10, 2, !dbg !5320
  %11 = load i32, ptr %written, align 4, !dbg !5321, !tbaa !1185
  %cmp12 = icmp sge i32 %mul, %11, !dbg !5322
  br i1 %cmp12, label %if.then13, label %if.end20, !dbg !5323

if.then13:                                        ; preds = %if.end9
  %12 = load ptr, ptr %out.addr, align 8, !dbg !5324, !tbaa !1148
  %13 = load ptr, ptr %out.addr, align 8, !dbg !5326, !tbaa !1148
  %size14 = getelementptr inbounds %struct._xmlBuffer, ptr %13, i32 0, i32 2, !dbg !5327
  %14 = load i32, ptr %size14, align 4, !dbg !5327, !tbaa !4691
  %15 = load i32, ptr %toconv, align 4, !dbg !5328, !tbaa !1185
  %mul15 = mul nsw i32 %15, 2, !dbg !5329
  %add = add i32 %14, %mul15, !dbg !5330
  %call = call i32 @xmlBufferGrow__internal_alias(ptr noundef %12, i32 noundef %add), !dbg !5331
  %16 = load ptr, ptr %out.addr, align 8, !dbg !5332, !tbaa !1148
  %size16 = getelementptr inbounds %struct._xmlBuffer, ptr %16, i32 0, i32 2, !dbg !5333
  %17 = load i32, ptr %size16, align 4, !dbg !5333, !tbaa !4691
  %18 = load ptr, ptr %out.addr, align 8, !dbg !5334, !tbaa !1148
  %use17 = getelementptr inbounds %struct._xmlBuffer, ptr %18, i32 0, i32 1, !dbg !5335
  %19 = load i32, ptr %use17, align 8, !dbg !5335, !tbaa !4695
  %sub18 = sub i32 %17, %19, !dbg !5336
  %sub19 = sub i32 %sub18, 1, !dbg !5337
  store i32 %sub19, ptr %written, align 4, !dbg !5338, !tbaa !1185
  br label %if.end20, !dbg !5339

if.end20:                                         ; preds = %if.then13, %if.end9
  %20 = load ptr, ptr %handler.addr, align 8, !dbg !5340, !tbaa !1148
  %21 = load ptr, ptr %out.addr, align 8, !dbg !5341, !tbaa !1148
  %content = getelementptr inbounds %struct._xmlBuffer, ptr %21, i32 0, i32 0, !dbg !5342
  %22 = load ptr, ptr %content, align 8, !dbg !5342, !tbaa !4745
  %23 = load ptr, ptr %out.addr, align 8, !dbg !5343, !tbaa !1148
  %use21 = getelementptr inbounds %struct._xmlBuffer, ptr %23, i32 0, i32 1, !dbg !5344
  %24 = load i32, ptr %use21, align 8, !dbg !5344, !tbaa !4695
  %idxprom = zext i32 %24 to i64, !dbg !5341
  %arrayidx = getelementptr inbounds i8, ptr %22, i64 %idxprom, !dbg !5341
  %25 = load ptr, ptr %in.addr, align 8, !dbg !5345, !tbaa !1148
  %content22 = getelementptr inbounds %struct._xmlBuffer, ptr %25, i32 0, i32 0, !dbg !5346
  %26 = load ptr, ptr %content22, align 8, !dbg !5346, !tbaa !4745
  %call23 = call i32 @xmlEncInputChunk(ptr noundef %20, ptr noundef %arrayidx, ptr noundef %written, ptr noundef %26, ptr noundef %toconv, i32 noundef 1), !dbg !5347
  store i32 %call23, ptr %ret, align 4, !dbg !5348, !tbaa !1185
  %27 = load ptr, ptr %in.addr, align 8, !dbg !5349, !tbaa !1148
  %28 = load i32, ptr %toconv, align 4, !dbg !5350, !tbaa !1185
  %call24 = call i32 @xmlBufferShrink__internal_alias(ptr noundef %27, i32 noundef %28), !dbg !5351
  %29 = load i32, ptr %written, align 4, !dbg !5352, !tbaa !1185
  %30 = load ptr, ptr %out.addr, align 8, !dbg !5353, !tbaa !1148
  %use25 = getelementptr inbounds %struct._xmlBuffer, ptr %30, i32 0, i32 1, !dbg !5354
  %31 = load i32, ptr %use25, align 8, !dbg !5355, !tbaa !4695
  %add26 = add i32 %31, %29, !dbg !5355
  store i32 %add26, ptr %use25, align 8, !dbg !5355, !tbaa !4695
  %32 = load ptr, ptr %out.addr, align 8, !dbg !5356, !tbaa !1148
  %content27 = getelementptr inbounds %struct._xmlBuffer, ptr %32, i32 0, i32 0, !dbg !5357
  %33 = load ptr, ptr %content27, align 8, !dbg !5357, !tbaa !4745
  %34 = load ptr, ptr %out.addr, align 8, !dbg !5358, !tbaa !1148
  %use28 = getelementptr inbounds %struct._xmlBuffer, ptr %34, i32 0, i32 1, !dbg !5359
  %35 = load i32, ptr %use28, align 8, !dbg !5359, !tbaa !4695
  %idxprom29 = zext i32 %35 to i64, !dbg !5356
  %arrayidx30 = getelementptr inbounds i8, ptr %33, i64 %idxprom29, !dbg !5356
  store i8 0, ptr %arrayidx30, align 1, !dbg !5360, !tbaa !1210
  %36 = load i32, ptr %ret, align 4, !dbg !5361, !tbaa !1185
  %cmp31 = icmp eq i32 %36, -1, !dbg !5363
  br i1 %cmp31, label %if.then32, label %if.end33, !dbg !5364

if.then32:                                        ; preds = %if.end20
  store i32 -3, ptr %ret, align 4, !dbg !5365, !tbaa !1185
  br label %if.end33, !dbg !5366

if.end33:                                         ; preds = %if.then32, %if.end20
  %37 = load i32, ptr %ret, align 4, !dbg !5367, !tbaa !1185
  switch i32 %37, label %sw.epilog [
    i32 0, label %sw.epilog
    i32 -1, label %sw.epilog
    i32 -3, label %sw.epilog
    i32 -2, label %sw.bb
  ], !dbg !5368

sw.bb:                                            ; preds = %if.end33
  call void @llvm.lifetime.start.p0(i64 50, ptr %buf) #9, !dbg !5369
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !5276, metadata !DIExpression()), !dbg !5370
  %arrayidx34 = getelementptr inbounds [50 x i8], ptr %buf, i64 0, i64 0, !dbg !5371
  %38 = load ptr, ptr %in.addr, align 8, !dbg !5372, !tbaa !1148
  %content35 = getelementptr inbounds %struct._xmlBuffer, ptr %38, i32 0, i32 0, !dbg !5373
  %39 = load ptr, ptr %content35, align 8, !dbg !5373, !tbaa !4745
  %arrayidx36 = getelementptr inbounds i8, ptr %39, i64 0, !dbg !5372
  %40 = load i8, ptr %arrayidx36, align 1, !dbg !5372, !tbaa !1210
  %conv = zext i8 %40 to i32, !dbg !5372
  %41 = load ptr, ptr %in.addr, align 8, !dbg !5374, !tbaa !1148
  %content37 = getelementptr inbounds %struct._xmlBuffer, ptr %41, i32 0, i32 0, !dbg !5375
  %42 = load ptr, ptr %content37, align 8, !dbg !5375, !tbaa !4745
  %arrayidx38 = getelementptr inbounds i8, ptr %42, i64 1, !dbg !5374
  %43 = load i8, ptr %arrayidx38, align 1, !dbg !5374, !tbaa !1210
  %conv39 = zext i8 %43 to i32, !dbg !5374
  %44 = load ptr, ptr %in.addr, align 8, !dbg !5376, !tbaa !1148
  %content40 = getelementptr inbounds %struct._xmlBuffer, ptr %44, i32 0, i32 0, !dbg !5377
  %45 = load ptr, ptr %content40, align 8, !dbg !5377, !tbaa !4745
  %arrayidx41 = getelementptr inbounds i8, ptr %45, i64 2, !dbg !5376
  %46 = load i8, ptr %arrayidx41, align 1, !dbg !5376, !tbaa !1210
  %conv42 = zext i8 %46 to i32, !dbg !5376
  %47 = load ptr, ptr %in.addr, align 8, !dbg !5378, !tbaa !1148
  %content43 = getelementptr inbounds %struct._xmlBuffer, ptr %47, i32 0, i32 0, !dbg !5379
  %48 = load ptr, ptr %content43, align 8, !dbg !5379, !tbaa !4745
  %arrayidx44 = getelementptr inbounds i8, ptr %48, i64 3, !dbg !5378
  %49 = load i8, ptr %arrayidx44, align 1, !dbg !5378, !tbaa !1210
  %conv45 = zext i8 %49 to i32, !dbg !5378
  %call46 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arrayidx34, i64 noundef 49, ptr noundef @.str.47, i32 noundef %conv, i32 noundef %conv39, i32 noundef %conv42, i32 noundef %conv45) #9, !dbg !5380
  %arrayidx47 = getelementptr inbounds [50 x i8], ptr %buf, i64 0, i64 49, !dbg !5381
  store i8 0, ptr %arrayidx47, align 1, !dbg !5382, !tbaa !1210
  %arraydecay = getelementptr inbounds [50 x i8], ptr %buf, i64 0, i64 0, !dbg !5383
  call void @xmlEncodingErr(i32 noundef 6003, ptr noundef @.str.48, ptr noundef %arraydecay), !dbg !5384
  call void @llvm.lifetime.end.p0(i64 50, ptr %buf) #9, !dbg !5385
  br label %sw.epilog, !dbg !5386

sw.epilog:                                        ; preds = %sw.bb, %if.end33, %if.end33, %if.end33, %if.end33
  %50 = load i32, ptr %ret, align 4, !dbg !5387, !tbaa !1185
  %cmp48 = icmp eq i32 %50, -3, !dbg !5389
  br i1 %cmp48, label %if.then50, label %if.end51, !dbg !5390

if.then50:                                        ; preds = %sw.epilog
  store i32 0, ptr %ret, align 4, !dbg !5391, !tbaa !1185
  br label %if.end51, !dbg !5392

if.end51:                                         ; preds = %if.then50, %sw.epilog
  %51 = load i32, ptr %written, align 4, !dbg !5393, !tbaa !1185
  %tobool = icmp ne i32 %51, 0, !dbg !5393
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5393

cond.true:                                        ; preds = %if.end51
  %52 = load i32, ptr %written, align 4, !dbg !5394, !tbaa !1185
  br label %cond.end, !dbg !5393

cond.false:                                       ; preds = %if.end51
  %53 = load i32, ptr %ret, align 4, !dbg !5395, !tbaa !1185
  br label %cond.end, !dbg !5393

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %52, %cond.true ], [ %53, %cond.false ], !dbg !5393
  store i32 %cond, ptr %retval, align 4, !dbg !5396
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5396

cleanup:                                          ; preds = %cond.end, %if.then8, %if.then5, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %toconv) #9, !dbg !5397
  call void @llvm.lifetime.end.p0(i64 4, ptr %written) #9, !dbg !5397
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !5397
  %54 = load i32, ptr %retval, align 4, !dbg !5397
  ret i32 %54, !dbg !5397
}

; Function Attrs: nounwind uwtable
define i32 @xmlCharEncOutput(ptr noundef %output, i32 noundef %init) #0 !dbg !5398 {
entry:
  %retval = alloca i32, align 4
  %output.addr = alloca ptr, align 8
  %init.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %written = alloca i64, align 8
  %writtentot = alloca i64, align 8
  %toconv = alloca i64, align 8
  %c_in = alloca i32, align 4
  %c_out = alloca i32, align 4
  %in = alloca ptr, align 8
  %out = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %charref = alloca [20 x i8], align 16
  %len = alloca i32, align 4
  %content = alloca ptr, align 8
  %cur = alloca i32, align 4
  %charrefLen = alloca i32, align 4
  %buf = alloca [50 x i8], align 16
  store ptr %output, ptr %output.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %output.addr, metadata !5420, metadata !DIExpression()), !dbg !5444
  store i32 %init, ptr %init.addr, align 4, !tbaa !1185
  tail call void @llvm.dbg.declare(metadata ptr %init.addr, metadata !5421, metadata !DIExpression()), !dbg !5445
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !5446
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !5422, metadata !DIExpression()), !dbg !5447
  call void @llvm.lifetime.start.p0(i64 8, ptr %written) #9, !dbg !5448
  tail call void @llvm.dbg.declare(metadata ptr %written, metadata !5423, metadata !DIExpression()), !dbg !5449
  call void @llvm.lifetime.start.p0(i64 8, ptr %writtentot) #9, !dbg !5450
  tail call void @llvm.dbg.declare(metadata ptr %writtentot, metadata !5424, metadata !DIExpression()), !dbg !5451
  store i64 0, ptr %writtentot, align 8, !dbg !5451, !tbaa !4960
  call void @llvm.lifetime.start.p0(i64 8, ptr %toconv) #9, !dbg !5452
  tail call void @llvm.dbg.declare(metadata ptr %toconv, metadata !5425, metadata !DIExpression()), !dbg !5453
  call void @llvm.lifetime.start.p0(i64 4, ptr %c_in) #9, !dbg !5454
  tail call void @llvm.dbg.declare(metadata ptr %c_in, metadata !5426, metadata !DIExpression()), !dbg !5455
  call void @llvm.lifetime.start.p0(i64 4, ptr %c_out) #9, !dbg !5456
  tail call void @llvm.dbg.declare(metadata ptr %c_out, metadata !5427, metadata !DIExpression()), !dbg !5457
  call void @llvm.lifetime.start.p0(i64 8, ptr %in) #9, !dbg !5458
  tail call void @llvm.dbg.declare(metadata ptr %in, metadata !5428, metadata !DIExpression()), !dbg !5459
  call void @llvm.lifetime.start.p0(i64 8, ptr %out) #9, !dbg !5460
  tail call void @llvm.dbg.declare(metadata ptr %out, metadata !5429, metadata !DIExpression()), !dbg !5461
  %0 = load ptr, ptr %output.addr, align 8, !dbg !5462, !tbaa !1148
  %cmp = icmp eq ptr %0, null, !dbg !5464
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5465

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %output.addr, align 8, !dbg !5466, !tbaa !1148
  %encoder = getelementptr inbounds %struct._xmlOutputBuffer, ptr %1, i32 0, i32 3, !dbg !5467
  %2 = load ptr, ptr %encoder, align 8, !dbg !5467, !tbaa !5468
  %cmp1 = icmp eq ptr %2, null, !dbg !5470
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !5471

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %output.addr, align 8, !dbg !5472, !tbaa !1148
  %buffer = getelementptr inbounds %struct._xmlOutputBuffer, ptr %3, i32 0, i32 4, !dbg !5473
  %4 = load ptr, ptr %buffer, align 8, !dbg !5473, !tbaa !5474
  %cmp3 = icmp eq ptr %4, null, !dbg !5475
  br i1 %cmp3, label %if.then, label %lor.lhs.false4, !dbg !5476

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %5 = load ptr, ptr %output.addr, align 8, !dbg !5477, !tbaa !1148
  %conv = getelementptr inbounds %struct._xmlOutputBuffer, ptr %5, i32 0, i32 5, !dbg !5478
  %6 = load ptr, ptr %conv, align 8, !dbg !5478, !tbaa !5479
  %cmp5 = icmp eq ptr %6, null, !dbg !5480
  br i1 %cmp5, label %if.then, label %if.end, !dbg !5481

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4, !dbg !5482
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup114, !dbg !5482

if.end:                                           ; preds = %lor.lhs.false4
  %7 = load ptr, ptr %output.addr, align 8, !dbg !5483, !tbaa !1148
  %conv7 = getelementptr inbounds %struct._xmlOutputBuffer, ptr %7, i32 0, i32 5, !dbg !5484
  %8 = load ptr, ptr %conv7, align 8, !dbg !5484, !tbaa !5479
  store ptr %8, ptr %out, align 8, !dbg !5485, !tbaa !1148
  %9 = load ptr, ptr %output.addr, align 8, !dbg !5486, !tbaa !1148
  %buffer8 = getelementptr inbounds %struct._xmlOutputBuffer, ptr %9, i32 0, i32 4, !dbg !5487
  %10 = load ptr, ptr %buffer8, align 8, !dbg !5487, !tbaa !5474
  store ptr %10, ptr %in, align 8, !dbg !5488, !tbaa !1148
  br label %retry, !dbg !5489

retry:                                            ; preds = %cleanup, %if.then58, %if.end
  tail call void @llvm.dbg.label(metadata !5430), !dbg !5490
  %11 = load ptr, ptr %out, align 8, !dbg !5491, !tbaa !1148
  %call = call i64 @xmlBufAvail(ptr noundef %11), !dbg !5492
  store i64 %call, ptr %written, align 8, !dbg !5493, !tbaa !4960
  %12 = load i64, ptr %written, align 8, !dbg !5494, !tbaa !4960
  %cmp9 = icmp ugt i64 %12, 0, !dbg !5496
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !5497

if.then11:                                        ; preds = %retry
  %13 = load i64, ptr %written, align 8, !dbg !5498, !tbaa !4960
  %dec = add i64 %13, -1, !dbg !5498
  store i64 %dec, ptr %written, align 8, !dbg !5498, !tbaa !4960
  br label %if.end12, !dbg !5499

if.end12:                                         ; preds = %if.then11, %retry
  %14 = load i32, ptr %init.addr, align 4, !dbg !5500, !tbaa !1185
  %tobool = icmp ne i32 %14, 0, !dbg !5500
  br i1 %tobool, label %if.then13, label %if.end20, !dbg !5502

if.then13:                                        ; preds = %if.end12
  store i32 0, ptr %c_in, align 4, !dbg !5503, !tbaa !1185
  %15 = load i64, ptr %written, align 8, !dbg !5505, !tbaa !4960
  %conv14 = trunc i64 %15 to i32, !dbg !5505
  store i32 %conv14, ptr %c_out, align 4, !dbg !5506, !tbaa !1185
  %16 = load ptr, ptr %output.addr, align 8, !dbg !5507, !tbaa !1148
  %encoder15 = getelementptr inbounds %struct._xmlOutputBuffer, ptr %16, i32 0, i32 3, !dbg !5508
  %17 = load ptr, ptr %encoder15, align 8, !dbg !5508, !tbaa !5468
  %18 = load ptr, ptr %out, align 8, !dbg !5509, !tbaa !1148
  %call16 = call ptr @xmlBufEnd__internal_alias(ptr noundef %18), !dbg !5510
  %call17 = call i32 @xmlEncOutputChunk(ptr noundef %17, ptr noundef %call16, ptr noundef %c_out, ptr noundef null, ptr noundef %c_in), !dbg !5511
  %19 = load ptr, ptr %out, align 8, !dbg !5512, !tbaa !1148
  %20 = load i32, ptr %c_out, align 4, !dbg !5513, !tbaa !1185
  %conv18 = sext i32 %20 to i64, !dbg !5513
  %call19 = call i32 @xmlBufAddLen(ptr noundef %19, i64 noundef %conv18), !dbg !5514
  store i32 0, ptr %retval, align 4, !dbg !5515
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup114, !dbg !5515

if.end20:                                         ; preds = %if.end12
  %21 = load ptr, ptr %in, align 8, !dbg !5516, !tbaa !1148
  %call21 = call i64 @xmlBufUse__internal_alias(ptr noundef %21), !dbg !5517
  store i64 %call21, ptr %toconv, align 8, !dbg !5518, !tbaa !4960
  %22 = load i64, ptr %toconv, align 8, !dbg !5519, !tbaa !4960
  %cmp22 = icmp eq i64 %22, 0, !dbg !5521
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !5522

if.then24:                                        ; preds = %if.end20
  store i32 0, ptr %retval, align 4, !dbg !5523
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup114, !dbg !5523

if.end25:                                         ; preds = %if.end20
  %23 = load i64, ptr %toconv, align 8, !dbg !5524, !tbaa !4960
  %cmp26 = icmp ugt i64 %23, 65536, !dbg !5526
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !5527

if.then28:                                        ; preds = %if.end25
  store i64 65536, ptr %toconv, align 8, !dbg !5528, !tbaa !4960
  br label %if.end29, !dbg !5529

if.end29:                                         ; preds = %if.then28, %if.end25
  %24 = load i64, ptr %toconv, align 8, !dbg !5530, !tbaa !4960
  %mul = mul i64 %24, 4, !dbg !5532
  %25 = load i64, ptr %written, align 8, !dbg !5533, !tbaa !4960
  %cmp30 = icmp uge i64 %mul, %25, !dbg !5534
  br i1 %cmp30, label %if.then32, label %if.end37, !dbg !5535

if.then32:                                        ; preds = %if.end29
  %26 = load ptr, ptr %out, align 8, !dbg !5536, !tbaa !1148
  %27 = load i64, ptr %toconv, align 8, !dbg !5538, !tbaa !4960
  %mul33 = mul i64 %27, 4, !dbg !5539
  %conv34 = trunc i64 %mul33 to i32, !dbg !5538
  %call35 = call i32 @xmlBufGrow(ptr noundef %26, i32 noundef %conv34), !dbg !5540
  %28 = load ptr, ptr %out, align 8, !dbg !5541, !tbaa !1148
  %call36 = call i64 @xmlBufAvail(ptr noundef %28), !dbg !5542
  %sub = sub i64 %call36, 1, !dbg !5543
  store i64 %sub, ptr %written, align 8, !dbg !5544, !tbaa !4960
  br label %if.end37, !dbg !5545

if.end37:                                         ; preds = %if.then32, %if.end29
  %29 = load i64, ptr %written, align 8, !dbg !5546, !tbaa !4960
  %cmp38 = icmp ugt i64 %29, 262144, !dbg !5548
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !5549

if.then40:                                        ; preds = %if.end37
  store i64 262144, ptr %written, align 8, !dbg !5550, !tbaa !4960
  br label %if.end41, !dbg !5551

if.end41:                                         ; preds = %if.then40, %if.end37
  %30 = load i64, ptr %toconv, align 8, !dbg !5552, !tbaa !4960
  %conv42 = trunc i64 %30 to i32, !dbg !5552
  store i32 %conv42, ptr %c_in, align 4, !dbg !5553, !tbaa !1185
  %31 = load i64, ptr %written, align 8, !dbg !5554, !tbaa !4960
  %conv43 = trunc i64 %31 to i32, !dbg !5554
  store i32 %conv43, ptr %c_out, align 4, !dbg !5555, !tbaa !1185
  %32 = load ptr, ptr %output.addr, align 8, !dbg !5556, !tbaa !1148
  %encoder44 = getelementptr inbounds %struct._xmlOutputBuffer, ptr %32, i32 0, i32 3, !dbg !5557
  %33 = load ptr, ptr %encoder44, align 8, !dbg !5557, !tbaa !5468
  %34 = load ptr, ptr %out, align 8, !dbg !5558, !tbaa !1148
  %call45 = call ptr @xmlBufEnd__internal_alias(ptr noundef %34), !dbg !5559
  %35 = load ptr, ptr %in, align 8, !dbg !5560, !tbaa !1148
  %call46 = call ptr @xmlBufContent__internal_alias(ptr noundef %35), !dbg !5561
  %call47 = call i32 @xmlEncOutputChunk(ptr noundef %33, ptr noundef %call45, ptr noundef %c_out, ptr noundef %call46, ptr noundef %c_in), !dbg !5562
  store i32 %call47, ptr %ret, align 4, !dbg !5563, !tbaa !1185
  %36 = load ptr, ptr %in, align 8, !dbg !5564, !tbaa !1148
  %37 = load i32, ptr %c_in, align 4, !dbg !5565, !tbaa !1185
  %conv48 = sext i32 %37 to i64, !dbg !5565
  %call49 = call i64 @xmlBufShrink__internal_alias(ptr noundef %36, i64 noundef %conv48), !dbg !5566
  %38 = load ptr, ptr %out, align 8, !dbg !5567, !tbaa !1148
  %39 = load i32, ptr %c_out, align 4, !dbg !5568, !tbaa !1185
  %conv50 = sext i32 %39 to i64, !dbg !5568
  %call51 = call i32 @xmlBufAddLen(ptr noundef %38, i64 noundef %conv50), !dbg !5569
  %40 = load i32, ptr %c_out, align 4, !dbg !5570, !tbaa !1185
  %conv52 = sext i32 %40 to i64, !dbg !5570
  %41 = load i64, ptr %writtentot, align 8, !dbg !5571, !tbaa !4960
  %add = add i64 %41, %conv52, !dbg !5571
  store i64 %add, ptr %writtentot, align 8, !dbg !5571, !tbaa !4960
  %42 = load i32, ptr %ret, align 4, !dbg !5572, !tbaa !1185
  %cmp53 = icmp eq i32 %42, -1, !dbg !5574
  br i1 %cmp53, label %if.then55, label %if.end60, !dbg !5575

if.then55:                                        ; preds = %if.end41
  %43 = load i32, ptr %c_out, align 4, !dbg !5576, !tbaa !1185
  %cmp56 = icmp sgt i32 %43, 0, !dbg !5579
  br i1 %cmp56, label %if.then58, label %if.end59, !dbg !5580

if.then58:                                        ; preds = %if.then55
  br label %retry, !dbg !5581

if.end59:                                         ; preds = %if.then55
  store i32 -3, ptr %ret, align 4, !dbg !5583, !tbaa !1185
  br label %if.end60, !dbg !5584

if.end60:                                         ; preds = %if.end59, %if.end41
  %44 = load i32, ptr %ret, align 4, !dbg !5585, !tbaa !1185
  switch i32 %44, label %sw.epilog [
    i32 0, label %sw.epilog
    i32 -1, label %sw.epilog
    i32 -3, label %sw.epilog
    i32 -4, label %sw.bb
    i32 -2, label %sw.bb61
  ], !dbg !5586

sw.bb:                                            ; preds = %if.end60
  call void @xmlEncodingErr(i32 noundef 6004, ptr noundef @.str.49, ptr noundef null), !dbg !5587
  store i32 -1, ptr %ret, align 4, !dbg !5588, !tbaa !1185
  br label %sw.epilog, !dbg !5589

sw.bb61:                                          ; preds = %if.end60
  call void @llvm.lifetime.start.p0(i64 20, ptr %charref) #9, !dbg !5590
  tail call void @llvm.dbg.declare(metadata ptr %charref, metadata !5431, metadata !DIExpression()), !dbg !5591
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #9, !dbg !5592
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !5437, metadata !DIExpression()), !dbg !5593
  %45 = load ptr, ptr %in, align 8, !dbg !5594, !tbaa !1148
  %call62 = call i64 @xmlBufUse__internal_alias(ptr noundef %45), !dbg !5595
  %conv63 = trunc i64 %call62 to i32, !dbg !5596
  store i32 %conv63, ptr %len, align 4, !dbg !5593, !tbaa !1185
  call void @llvm.lifetime.start.p0(i64 8, ptr %content) #9, !dbg !5597
  tail call void @llvm.dbg.declare(metadata ptr %content, metadata !5438, metadata !DIExpression()), !dbg !5598
  %46 = load ptr, ptr %in, align 8, !dbg !5599, !tbaa !1148
  %call64 = call ptr @xmlBufContent__internal_alias(ptr noundef %46), !dbg !5600
  store ptr %call64, ptr %content, align 8, !dbg !5598, !tbaa !1148
  call void @llvm.lifetime.start.p0(i64 4, ptr %cur) #9, !dbg !5601
  tail call void @llvm.dbg.declare(metadata ptr %cur, metadata !5439, metadata !DIExpression()), !dbg !5602
  call void @llvm.lifetime.start.p0(i64 4, ptr %charrefLen) #9, !dbg !5601
  tail call void @llvm.dbg.declare(metadata ptr %charrefLen, metadata !5440, metadata !DIExpression()), !dbg !5603
  %47 = load ptr, ptr %content, align 8, !dbg !5604, !tbaa !1148
  %call65 = call i32 @xmlGetUTF8Char__internal_alias(ptr noundef %47, ptr noundef %len), !dbg !5605
  store i32 %call65, ptr %cur, align 4, !dbg !5606, !tbaa !1185
  %48 = load i32, ptr %cur, align 4, !dbg !5607, !tbaa !1185
  %cmp66 = icmp sle i32 %48, 0, !dbg !5609
  br i1 %cmp66, label %if.then68, label %if.end69, !dbg !5610

if.then68:                                        ; preds = %sw.bb61
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5611

if.end69:                                         ; preds = %sw.bb61
  %arrayidx = getelementptr inbounds [20 x i8], ptr %charref, i64 0, i64 0, !dbg !5612
  %49 = load i32, ptr %cur, align 4, !dbg !5613, !tbaa !1185
  %call70 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arrayidx, i64 noundef 20, ptr noundef @.str.50, i32 noundef %49) #9, !dbg !5614
  store i32 %call70, ptr %charrefLen, align 4, !dbg !5615, !tbaa !1185
  %50 = load ptr, ptr %in, align 8, !dbg !5616, !tbaa !1148
  %51 = load i32, ptr %len, align 4, !dbg !5617, !tbaa !1185
  %conv71 = sext i32 %51 to i64, !dbg !5617
  %call72 = call i64 @xmlBufShrink__internal_alias(ptr noundef %50, i64 noundef %conv71), !dbg !5618
  %52 = load ptr, ptr %out, align 8, !dbg !5619, !tbaa !1148
  %53 = load i32, ptr %charrefLen, align 4, !dbg !5620, !tbaa !1185
  %mul73 = mul nsw i32 %53, 4, !dbg !5621
  %call74 = call i32 @xmlBufGrow(ptr noundef %52, i32 noundef %mul73), !dbg !5622
  %54 = load ptr, ptr %out, align 8, !dbg !5623, !tbaa !1148
  %call75 = call i64 @xmlBufAvail(ptr noundef %54), !dbg !5624
  %sub76 = sub i64 %call75, 1, !dbg !5625
  %conv77 = trunc i64 %sub76 to i32, !dbg !5624
  store i32 %conv77, ptr %c_out, align 4, !dbg !5626, !tbaa !1185
  %55 = load i32, ptr %charrefLen, align 4, !dbg !5627, !tbaa !1185
  store i32 %55, ptr %c_in, align 4, !dbg !5628, !tbaa !1185
  %56 = load ptr, ptr %output.addr, align 8, !dbg !5629, !tbaa !1148
  %encoder78 = getelementptr inbounds %struct._xmlOutputBuffer, ptr %56, i32 0, i32 3, !dbg !5630
  %57 = load ptr, ptr %encoder78, align 8, !dbg !5630, !tbaa !5468
  %58 = load ptr, ptr %out, align 8, !dbg !5631, !tbaa !1148
  %call79 = call ptr @xmlBufEnd__internal_alias(ptr noundef %58), !dbg !5632
  %arraydecay = getelementptr inbounds [20 x i8], ptr %charref, i64 0, i64 0, !dbg !5633
  %call80 = call i32 @xmlEncOutputChunk(ptr noundef %57, ptr noundef %call79, ptr noundef %c_out, ptr noundef %arraydecay, ptr noundef %c_in), !dbg !5634
  store i32 %call80, ptr %ret, align 4, !dbg !5635, !tbaa !1185
  %59 = load i32, ptr %ret, align 4, !dbg !5636, !tbaa !1185
  %cmp81 = icmp slt i32 %59, 0, !dbg !5637
  br i1 %cmp81, label %if.then86, label %lor.lhs.false83, !dbg !5638

lor.lhs.false83:                                  ; preds = %if.end69
  %60 = load i32, ptr %c_in, align 4, !dbg !5639, !tbaa !1185
  %61 = load i32, ptr %charrefLen, align 4, !dbg !5640, !tbaa !1185
  %cmp84 = icmp ne i32 %60, %61, !dbg !5641
  br i1 %cmp84, label %if.then86, label %if.end105, !dbg !5642

if.then86:                                        ; preds = %lor.lhs.false83, %if.end69
  call void @llvm.lifetime.start.p0(i64 50, ptr %buf) #9, !dbg !5643
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !5441, metadata !DIExpression()), !dbg !5644
  %arrayidx87 = getelementptr inbounds [50 x i8], ptr %buf, i64 0, i64 0, !dbg !5645
  %62 = load ptr, ptr %content, align 8, !dbg !5646, !tbaa !1148
  %arrayidx88 = getelementptr inbounds i8, ptr %62, i64 0, !dbg !5646
  %63 = load i8, ptr %arrayidx88, align 1, !dbg !5646, !tbaa !1210
  %conv89 = zext i8 %63 to i32, !dbg !5646
  %64 = load ptr, ptr %content, align 8, !dbg !5647, !tbaa !1148
  %arrayidx90 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !5647
  %65 = load i8, ptr %arrayidx90, align 1, !dbg !5647, !tbaa !1210
  %conv91 = zext i8 %65 to i32, !dbg !5647
  %66 = load ptr, ptr %content, align 8, !dbg !5648, !tbaa !1148
  %arrayidx92 = getelementptr inbounds i8, ptr %66, i64 2, !dbg !5648
  %67 = load i8, ptr %arrayidx92, align 1, !dbg !5648, !tbaa !1210
  %conv93 = zext i8 %67 to i32, !dbg !5648
  %68 = load ptr, ptr %content, align 8, !dbg !5649, !tbaa !1148
  %arrayidx94 = getelementptr inbounds i8, ptr %68, i64 3, !dbg !5649
  %69 = load i8, ptr %arrayidx94, align 1, !dbg !5649, !tbaa !1210
  %conv95 = zext i8 %69 to i32, !dbg !5649
  %call96 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arrayidx87, i64 noundef 49, ptr noundef @.str.47, i32 noundef %conv89, i32 noundef %conv91, i32 noundef %conv93, i32 noundef %conv95) #9, !dbg !5650
  %arrayidx97 = getelementptr inbounds [50 x i8], ptr %buf, i64 0, i64 49, !dbg !5651
  store i8 0, ptr %arrayidx97, align 1, !dbg !5652, !tbaa !1210
  %arraydecay98 = getelementptr inbounds [50 x i8], ptr %buf, i64 0, i64 0, !dbg !5653
  call void @xmlEncodingErr(i32 noundef 6003, ptr noundef @.str.51, ptr noundef %arraydecay98), !dbg !5654
  %70 = load ptr, ptr %in, align 8, !dbg !5655, !tbaa !1148
  %call99 = call i32 @xmlBufGetAllocationScheme(ptr noundef %70), !dbg !5657
  %cmp100 = icmp ne i32 %call99, 2, !dbg !5658
  br i1 %cmp100, label %if.then102, label %if.end104, !dbg !5659

if.then102:                                       ; preds = %if.then86
  %71 = load ptr, ptr %content, align 8, !dbg !5660, !tbaa !1148
  %arrayidx103 = getelementptr inbounds i8, ptr %71, i64 0, !dbg !5660
  store i8 32, ptr %arrayidx103, align 1, !dbg !5661, !tbaa !1210
  br label %if.end104, !dbg !5660

if.end104:                                        ; preds = %if.then102, %if.then86
  store i32 3, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 50, ptr %buf) #9, !dbg !5662
  br label %cleanup

if.end105:                                        ; preds = %lor.lhs.false83
  %72 = load ptr, ptr %out, align 8, !dbg !5663, !tbaa !1148
  %73 = load i32, ptr %c_out, align 4, !dbg !5664, !tbaa !1185
  %conv106 = sext i32 %73 to i64, !dbg !5664
  %call107 = call i32 @xmlBufAddLen(ptr noundef %72, i64 noundef %conv106), !dbg !5665
  %74 = load i32, ptr %c_out, align 4, !dbg !5666, !tbaa !1185
  %conv108 = sext i32 %74 to i64, !dbg !5666
  %75 = load i64, ptr %writtentot, align 8, !dbg !5667, !tbaa !4960
  %add109 = add i64 %75, %conv108, !dbg !5667
  store i64 %add109, ptr %writtentot, align 8, !dbg !5667, !tbaa !4960
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5668

cleanup:                                          ; preds = %if.end105, %if.end104, %if.then68
  call void @llvm.lifetime.end.p0(i64 4, ptr %charrefLen) #9, !dbg !5669
  call void @llvm.lifetime.end.p0(i64 4, ptr %cur) #9, !dbg !5669
  call void @llvm.lifetime.end.p0(i64 8, ptr %content) #9, !dbg !5669
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #9, !dbg !5669
  call void @llvm.lifetime.end.p0(i64 20, ptr %charref) #9, !dbg !5669
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 3, label %sw.epilog
    i32 2, label %retry
  ]

sw.epilog:                                        ; preds = %if.end60, %cleanup, %sw.bb, %if.end60, %if.end60, %if.end60
  %76 = load i32, ptr %ret, align 4, !dbg !5670, !tbaa !1185
  store i32 %76, ptr %retval, align 4, !dbg !5671
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup114, !dbg !5671

cleanup114:                                       ; preds = %sw.epilog, %if.then24, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %out) #9, !dbg !5672
  call void @llvm.lifetime.end.p0(i64 8, ptr %in) #9, !dbg !5672
  call void @llvm.lifetime.end.p0(i64 4, ptr %c_out) #9, !dbg !5672
  call void @llvm.lifetime.end.p0(i64 4, ptr %c_in) #9, !dbg !5672
  call void @llvm.lifetime.end.p0(i64 8, ptr %toconv) #9, !dbg !5672
  call void @llvm.lifetime.end.p0(i64 8, ptr %writtentot) #9, !dbg !5672
  call void @llvm.lifetime.end.p0(i64 8, ptr %written) #9, !dbg !5672
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !5672
  %77 = load i32, ptr %retval, align 4, !dbg !5672
  ret i32 %77, !dbg !5672

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @xmlEncOutputChunk(ptr noundef %handler, ptr noundef %out, ptr noundef %outlen, ptr noundef %in, ptr noundef %inlen) #0 !dbg !5673 {
entry:
  %handler.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %outlen.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %inlen.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %handler, ptr %handler.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %handler.addr, metadata !5677, metadata !DIExpression()), !dbg !5683
  store ptr %out, ptr %out.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !5678, metadata !DIExpression()), !dbg !5684
  store ptr %outlen, ptr %outlen.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %outlen.addr, metadata !5679, metadata !DIExpression()), !dbg !5685
  store ptr %in, ptr %in.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !5680, metadata !DIExpression()), !dbg !5686
  store ptr %inlen, ptr %inlen.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %inlen.addr, metadata !5681, metadata !DIExpression()), !dbg !5687
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !5688
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !5682, metadata !DIExpression()), !dbg !5689
  %0 = load ptr, ptr %handler.addr, align 8, !dbg !5690, !tbaa !1148
  %output = getelementptr inbounds %struct._xmlCharEncodingHandler, ptr %0, i32 0, i32 2, !dbg !5692
  %1 = load ptr, ptr %output, align 8, !dbg !5692, !tbaa !2397
  %cmp = icmp ne ptr %1, null, !dbg !5693
  br i1 %cmp, label %if.then, label %if.else, !dbg !5694

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %handler.addr, align 8, !dbg !5695, !tbaa !1148
  %output1 = getelementptr inbounds %struct._xmlCharEncodingHandler, ptr %2, i32 0, i32 2, !dbg !5697
  %3 = load ptr, ptr %output1, align 8, !dbg !5697, !tbaa !2397
  %4 = load ptr, ptr %out.addr, align 8, !dbg !5698, !tbaa !1148
  %5 = load ptr, ptr %outlen.addr, align 8, !dbg !5699, !tbaa !1148
  %6 = load ptr, ptr %in.addr, align 8, !dbg !5700, !tbaa !1148
  %7 = load ptr, ptr %inlen.addr, align 8, !dbg !5701, !tbaa !1148
  %call = call i32 %3(ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7), !dbg !5695
  store i32 %call, ptr %ret, align 4, !dbg !5702, !tbaa !1185
  br label %if.end7, !dbg !5703

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %handler.addr, align 8, !dbg !5704, !tbaa !1148
  %iconv_out = getelementptr inbounds %struct._xmlCharEncodingHandler, ptr %8, i32 0, i32 4, !dbg !5706
  %9 = load ptr, ptr %iconv_out, align 8, !dbg !5706, !tbaa !2410
  %cmp2 = icmp ne ptr %9, null, !dbg !5707
  br i1 %cmp2, label %if.then3, label %if.else6, !dbg !5708

if.then3:                                         ; preds = %if.else
  %10 = load ptr, ptr %handler.addr, align 8, !dbg !5709, !tbaa !1148
  %iconv_out4 = getelementptr inbounds %struct._xmlCharEncodingHandler, ptr %10, i32 0, i32 4, !dbg !5711
  %11 = load ptr, ptr %iconv_out4, align 8, !dbg !5711, !tbaa !2410
  %12 = load ptr, ptr %out.addr, align 8, !dbg !5712, !tbaa !1148
  %13 = load ptr, ptr %outlen.addr, align 8, !dbg !5713, !tbaa !1148
  %14 = load ptr, ptr %in.addr, align 8, !dbg !5714, !tbaa !1148
  %15 = load ptr, ptr %inlen.addr, align 8, !dbg !5715, !tbaa !1148
  %call5 = call i32 @xmlIconvWrapper(ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15), !dbg !5716
  store i32 %call5, ptr %ret, align 4, !dbg !5717, !tbaa !1185
  br label %if.end, !dbg !5718

if.else6:                                         ; preds = %if.else
  %16 = load ptr, ptr %outlen.addr, align 8, !dbg !5719, !tbaa !1148
  store i32 0, ptr %16, align 4, !dbg !5721, !tbaa !1185
  %17 = load ptr, ptr %inlen.addr, align 8, !dbg !5722, !tbaa !1148
  store i32 0, ptr %17, align 4, !dbg !5723, !tbaa !1185
  store i32 -4, ptr %ret, align 4, !dbg !5724, !tbaa !1185
  br label %if.end

if.end:                                           ; preds = %if.else6, %if.then3
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %18 = load i32, ptr %ret, align 4, !dbg !5725, !tbaa !1185
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !5726
  ret i32 %18, !dbg !5727
}

declare !dbg !5728 hidden i32 @xmlGetUTF8Char__internal_alias(ptr noundef, ptr noundef) #6

declare !dbg !5731 i32 @xmlBufGetAllocationScheme(ptr noundef) #6

; Function Attrs: nounwind uwtable
define hidden i32 @xmlCharEncOutFunc__internal_alias(ptr noundef %handler, ptr noundef %out, ptr noundef %in) #0 !dbg !5734 {
entry:
  %retval = alloca i32, align 4
  %handler.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %written = alloca i32, align 4
  %writtentot = alloca i32, align 4
  %toconv = alloca i32, align 4
  %output = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %charref = alloca [20 x i8], align 16
  %len = alloca i32, align 4
  %utf = alloca ptr, align 8
  %cur = alloca i32, align 4
  %charrefLen = alloca i32, align 4
  %buf = alloca [50 x i8], align 16
  store ptr %handler, ptr %handler.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %handler.addr, metadata !5736, metadata !DIExpression()), !dbg !5755
  store ptr %out, ptr %out.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !5737, metadata !DIExpression()), !dbg !5756
  store ptr %in, ptr %in.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !5738, metadata !DIExpression()), !dbg !5757
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !5758
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !5739, metadata !DIExpression()), !dbg !5759
  call void @llvm.lifetime.start.p0(i64 4, ptr %written) #9, !dbg !5760
  tail call void @llvm.dbg.declare(metadata ptr %written, metadata !5740, metadata !DIExpression()), !dbg !5761
  call void @llvm.lifetime.start.p0(i64 4, ptr %writtentot) #9, !dbg !5762
  tail call void @llvm.dbg.declare(metadata ptr %writtentot, metadata !5741, metadata !DIExpression()), !dbg !5763
  store i32 0, ptr %writtentot, align 4, !dbg !5763, !tbaa !1185
  call void @llvm.lifetime.start.p0(i64 4, ptr %toconv) #9, !dbg !5764
  tail call void @llvm.dbg.declare(metadata ptr %toconv, metadata !5742, metadata !DIExpression()), !dbg !5765
  call void @llvm.lifetime.start.p0(i64 4, ptr %output) #9, !dbg !5766
  tail call void @llvm.dbg.declare(metadata ptr %output, metadata !5743, metadata !DIExpression()), !dbg !5767
  store i32 0, ptr %output, align 4, !dbg !5767, !tbaa !1185
  %0 = load ptr, ptr %handler.addr, align 8, !dbg !5768, !tbaa !1148
  %cmp = icmp eq ptr %0, null, !dbg !5770
  br i1 %cmp, label %if.then, label %if.end, !dbg !5771

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !5772
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup110, !dbg !5772

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %out.addr, align 8, !dbg !5773, !tbaa !1148
  %cmp1 = icmp eq ptr %1, null, !dbg !5775
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !5776

if.then2:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4, !dbg !5777
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup110, !dbg !5777

if.end3:                                          ; preds = %if.end
  br label %retry, !dbg !5778

retry:                                            ; preds = %cleanup, %if.then46, %if.end3
  tail call void @llvm.dbg.label(metadata !5744), !dbg !5779
  %2 = load ptr, ptr %out.addr, align 8, !dbg !5780, !tbaa !1148
  %size = getelementptr inbounds %struct._xmlBuffer, ptr %2, i32 0, i32 2, !dbg !5781
  %3 = load i32, ptr %size, align 4, !dbg !5781, !tbaa !4691
  %4 = load ptr, ptr %out.addr, align 8, !dbg !5782, !tbaa !1148
  %use = getelementptr inbounds %struct._xmlBuffer, ptr %4, i32 0, i32 1, !dbg !5783
  %5 = load i32, ptr %use, align 8, !dbg !5783, !tbaa !4695
  %sub = sub i32 %3, %5, !dbg !5784
  store i32 %sub, ptr %written, align 4, !dbg !5785, !tbaa !1185
  %6 = load i32, ptr %written, align 4, !dbg !5786, !tbaa !1185
  %cmp4 = icmp sgt i32 %6, 0, !dbg !5788
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5789

if.then5:                                         ; preds = %retry
  %7 = load i32, ptr %written, align 4, !dbg !5790, !tbaa !1185
  %dec = add nsw i32 %7, -1, !dbg !5790
  store i32 %dec, ptr %written, align 4, !dbg !5790, !tbaa !1185
  br label %if.end6, !dbg !5791

if.end6:                                          ; preds = %if.then5, %retry
  %8 = load ptr, ptr %in.addr, align 8, !dbg !5792, !tbaa !1148
  %cmp7 = icmp eq ptr %8, null, !dbg !5794
  br i1 %cmp7, label %if.then8, label %if.end15, !dbg !5795

if.then8:                                         ; preds = %if.end6
  store i32 0, ptr %toconv, align 4, !dbg !5796, !tbaa !1185
  %9 = load ptr, ptr %handler.addr, align 8, !dbg !5798, !tbaa !1148
  %10 = load ptr, ptr %out.addr, align 8, !dbg !5799, !tbaa !1148
  %content = getelementptr inbounds %struct._xmlBuffer, ptr %10, i32 0, i32 0, !dbg !5800
  %11 = load ptr, ptr %content, align 8, !dbg !5800, !tbaa !4745
  %12 = load ptr, ptr %out.addr, align 8, !dbg !5801, !tbaa !1148
  %use9 = getelementptr inbounds %struct._xmlBuffer, ptr %12, i32 0, i32 1, !dbg !5802
  %13 = load i32, ptr %use9, align 8, !dbg !5802, !tbaa !4695
  %idxprom = zext i32 %13 to i64, !dbg !5799
  %arrayidx = getelementptr inbounds i8, ptr %11, i64 %idxprom, !dbg !5799
  %call = call i32 @xmlEncOutputChunk(ptr noundef %9, ptr noundef %arrayidx, ptr noundef %written, ptr noundef null, ptr noundef %toconv), !dbg !5803
  %14 = load i32, ptr %written, align 4, !dbg !5804, !tbaa !1185
  %15 = load ptr, ptr %out.addr, align 8, !dbg !5805, !tbaa !1148
  %use10 = getelementptr inbounds %struct._xmlBuffer, ptr %15, i32 0, i32 1, !dbg !5806
  %16 = load i32, ptr %use10, align 8, !dbg !5807, !tbaa !4695
  %add = add i32 %16, %14, !dbg !5807
  store i32 %add, ptr %use10, align 8, !dbg !5807, !tbaa !4695
  %17 = load ptr, ptr %out.addr, align 8, !dbg !5808, !tbaa !1148
  %content11 = getelementptr inbounds %struct._xmlBuffer, ptr %17, i32 0, i32 0, !dbg !5809
  %18 = load ptr, ptr %content11, align 8, !dbg !5809, !tbaa !4745
  %19 = load ptr, ptr %out.addr, align 8, !dbg !5810, !tbaa !1148
  %use12 = getelementptr inbounds %struct._xmlBuffer, ptr %19, i32 0, i32 1, !dbg !5811
  %20 = load i32, ptr %use12, align 8, !dbg !5811, !tbaa !4695
  %idxprom13 = zext i32 %20 to i64, !dbg !5808
  %arrayidx14 = getelementptr inbounds i8, ptr %18, i64 %idxprom13, !dbg !5808
  store i8 0, ptr %arrayidx14, align 1, !dbg !5812, !tbaa !1210
  store i32 0, ptr %retval, align 4, !dbg !5813
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup110, !dbg !5813

if.end15:                                         ; preds = %if.end6
  %21 = load ptr, ptr %in.addr, align 8, !dbg !5814, !tbaa !1148
  %use16 = getelementptr inbounds %struct._xmlBuffer, ptr %21, i32 0, i32 1, !dbg !5815
  %22 = load i32, ptr %use16, align 8, !dbg !5815, !tbaa !4695
  store i32 %22, ptr %toconv, align 4, !dbg !5816, !tbaa !1185
  %23 = load i32, ptr %toconv, align 4, !dbg !5817, !tbaa !1185
  %cmp17 = icmp eq i32 %23, 0, !dbg !5819
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !5820

if.then18:                                        ; preds = %if.end15
  store i32 0, ptr %retval, align 4, !dbg !5821
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup110, !dbg !5821

if.end19:                                         ; preds = %if.end15
  %24 = load i32, ptr %toconv, align 4, !dbg !5822, !tbaa !1185
  %mul = mul nsw i32 %24, 4, !dbg !5824
  %25 = load i32, ptr %written, align 4, !dbg !5825, !tbaa !1185
  %cmp20 = icmp sge i32 %mul, %25, !dbg !5826
  br i1 %cmp20, label %if.then21, label %if.end28, !dbg !5827

if.then21:                                        ; preds = %if.end19
  %26 = load ptr, ptr %out.addr, align 8, !dbg !5828, !tbaa !1148
  %27 = load i32, ptr %toconv, align 4, !dbg !5830, !tbaa !1185
  %mul22 = mul nsw i32 %27, 4, !dbg !5831
  %call23 = call i32 @xmlBufferGrow__internal_alias(ptr noundef %26, i32 noundef %mul22), !dbg !5832
  %28 = load ptr, ptr %out.addr, align 8, !dbg !5833, !tbaa !1148
  %size24 = getelementptr inbounds %struct._xmlBuffer, ptr %28, i32 0, i32 2, !dbg !5834
  %29 = load i32, ptr %size24, align 4, !dbg !5834, !tbaa !4691
  %30 = load ptr, ptr %out.addr, align 8, !dbg !5835, !tbaa !1148
  %use25 = getelementptr inbounds %struct._xmlBuffer, ptr %30, i32 0, i32 1, !dbg !5836
  %31 = load i32, ptr %use25, align 8, !dbg !5836, !tbaa !4695
  %sub26 = sub i32 %29, %31, !dbg !5837
  %sub27 = sub i32 %sub26, 1, !dbg !5838
  store i32 %sub27, ptr %written, align 4, !dbg !5839, !tbaa !1185
  br label %if.end28, !dbg !5840

if.end28:                                         ; preds = %if.then21, %if.end19
  %32 = load ptr, ptr %handler.addr, align 8, !dbg !5841, !tbaa !1148
  %33 = load ptr, ptr %out.addr, align 8, !dbg !5842, !tbaa !1148
  %content29 = getelementptr inbounds %struct._xmlBuffer, ptr %33, i32 0, i32 0, !dbg !5843
  %34 = load ptr, ptr %content29, align 8, !dbg !5843, !tbaa !4745
  %35 = load ptr, ptr %out.addr, align 8, !dbg !5844, !tbaa !1148
  %use30 = getelementptr inbounds %struct._xmlBuffer, ptr %35, i32 0, i32 1, !dbg !5845
  %36 = load i32, ptr %use30, align 8, !dbg !5845, !tbaa !4695
  %idxprom31 = zext i32 %36 to i64, !dbg !5842
  %arrayidx32 = getelementptr inbounds i8, ptr %34, i64 %idxprom31, !dbg !5842
  %37 = load ptr, ptr %in.addr, align 8, !dbg !5846, !tbaa !1148
  %content33 = getelementptr inbounds %struct._xmlBuffer, ptr %37, i32 0, i32 0, !dbg !5847
  %38 = load ptr, ptr %content33, align 8, !dbg !5847, !tbaa !4745
  %call34 = call i32 @xmlEncOutputChunk(ptr noundef %32, ptr noundef %arrayidx32, ptr noundef %written, ptr noundef %38, ptr noundef %toconv), !dbg !5848
  store i32 %call34, ptr %ret, align 4, !dbg !5849, !tbaa !1185
  %39 = load ptr, ptr %in.addr, align 8, !dbg !5850, !tbaa !1148
  %40 = load i32, ptr %toconv, align 4, !dbg !5851, !tbaa !1185
  %call35 = call i32 @xmlBufferShrink__internal_alias(ptr noundef %39, i32 noundef %40), !dbg !5852
  %41 = load i32, ptr %written, align 4, !dbg !5853, !tbaa !1185
  %42 = load ptr, ptr %out.addr, align 8, !dbg !5854, !tbaa !1148
  %use36 = getelementptr inbounds %struct._xmlBuffer, ptr %42, i32 0, i32 1, !dbg !5855
  %43 = load i32, ptr %use36, align 8, !dbg !5856, !tbaa !4695
  %add37 = add i32 %43, %41, !dbg !5856
  store i32 %add37, ptr %use36, align 8, !dbg !5856, !tbaa !4695
  %44 = load i32, ptr %written, align 4, !dbg !5857, !tbaa !1185
  %45 = load i32, ptr %writtentot, align 4, !dbg !5858, !tbaa !1185
  %add38 = add nsw i32 %45, %44, !dbg !5858
  store i32 %add38, ptr %writtentot, align 4, !dbg !5858, !tbaa !1185
  %46 = load ptr, ptr %out.addr, align 8, !dbg !5859, !tbaa !1148
  %content39 = getelementptr inbounds %struct._xmlBuffer, ptr %46, i32 0, i32 0, !dbg !5860
  %47 = load ptr, ptr %content39, align 8, !dbg !5860, !tbaa !4745
  %48 = load ptr, ptr %out.addr, align 8, !dbg !5861, !tbaa !1148
  %use40 = getelementptr inbounds %struct._xmlBuffer, ptr %48, i32 0, i32 1, !dbg !5862
  %49 = load i32, ptr %use40, align 8, !dbg !5862, !tbaa !4695
  %idxprom41 = zext i32 %49 to i64, !dbg !5859
  %arrayidx42 = getelementptr inbounds i8, ptr %47, i64 %idxprom41, !dbg !5859
  store i8 0, ptr %arrayidx42, align 1, !dbg !5863, !tbaa !1210
  %50 = load i32, ptr %ret, align 4, !dbg !5864, !tbaa !1185
  %cmp43 = icmp eq i32 %50, -1, !dbg !5866
  br i1 %cmp43, label %if.then44, label %if.end48, !dbg !5867

if.then44:                                        ; preds = %if.end28
  %51 = load i32, ptr %written, align 4, !dbg !5868, !tbaa !1185
  %cmp45 = icmp sgt i32 %51, 0, !dbg !5871
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5872

if.then46:                                        ; preds = %if.then44
  br label %retry, !dbg !5873

if.end47:                                         ; preds = %if.then44
  store i32 -3, ptr %ret, align 4, !dbg !5875, !tbaa !1185
  br label %if.end48, !dbg !5876

if.end48:                                         ; preds = %if.end47, %if.end28
  %52 = load i32, ptr %ret, align 4, !dbg !5877, !tbaa !1185
  %cmp49 = icmp sge i32 %52, 0, !dbg !5879
  br i1 %cmp49, label %if.then50, label %if.end52, !dbg !5880

if.then50:                                        ; preds = %if.end48
  %53 = load i32, ptr %ret, align 4, !dbg !5881, !tbaa !1185
  %54 = load i32, ptr %output, align 4, !dbg !5882, !tbaa !1185
  %add51 = add nsw i32 %54, %53, !dbg !5882
  store i32 %add51, ptr %output, align 4, !dbg !5882, !tbaa !1185
  br label %if.end52, !dbg !5883

if.end52:                                         ; preds = %if.then50, %if.end48
  %55 = load i32, ptr %ret, align 4, !dbg !5884, !tbaa !1185
  switch i32 %55, label %sw.epilog [
    i32 0, label %sw.epilog
    i32 -1, label %sw.epilog
    i32 -3, label %sw.epilog
    i32 -4, label %sw.bb
    i32 -2, label %sw.bb53
  ], !dbg !5885

sw.bb:                                            ; preds = %if.end52
  call void @xmlEncodingErr(i32 noundef 6004, ptr noundef @.str.49, ptr noundef null), !dbg !5886
  store i32 -1, ptr %ret, align 4, !dbg !5887, !tbaa !1185
  br label %sw.epilog, !dbg !5888

sw.bb53:                                          ; preds = %if.end52
  call void @llvm.lifetime.start.p0(i64 20, ptr %charref) #9, !dbg !5889
  tail call void @llvm.dbg.declare(metadata ptr %charref, metadata !5745, metadata !DIExpression()), !dbg !5890
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #9, !dbg !5891
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !5748, metadata !DIExpression()), !dbg !5892
  %56 = load ptr, ptr %in.addr, align 8, !dbg !5893, !tbaa !1148
  %use54 = getelementptr inbounds %struct._xmlBuffer, ptr %56, i32 0, i32 1, !dbg !5894
  %57 = load i32, ptr %use54, align 8, !dbg !5894, !tbaa !4695
  store i32 %57, ptr %len, align 4, !dbg !5892, !tbaa !1185
  call void @llvm.lifetime.start.p0(i64 8, ptr %utf) #9, !dbg !5895
  tail call void @llvm.dbg.declare(metadata ptr %utf, metadata !5749, metadata !DIExpression()), !dbg !5896
  %58 = load ptr, ptr %in.addr, align 8, !dbg !5897, !tbaa !1148
  %content55 = getelementptr inbounds %struct._xmlBuffer, ptr %58, i32 0, i32 0, !dbg !5898
  %59 = load ptr, ptr %content55, align 8, !dbg !5898, !tbaa !4745
  store ptr %59, ptr %utf, align 8, !dbg !5896, !tbaa !1148
  call void @llvm.lifetime.start.p0(i64 4, ptr %cur) #9, !dbg !5899
  tail call void @llvm.dbg.declare(metadata ptr %cur, metadata !5750, metadata !DIExpression()), !dbg !5900
  call void @llvm.lifetime.start.p0(i64 4, ptr %charrefLen) #9, !dbg !5899
  tail call void @llvm.dbg.declare(metadata ptr %charrefLen, metadata !5751, metadata !DIExpression()), !dbg !5901
  %60 = load ptr, ptr %utf, align 8, !dbg !5902, !tbaa !1148
  %call56 = call i32 @xmlGetUTF8Char__internal_alias(ptr noundef %60, ptr noundef %len), !dbg !5903
  store i32 %call56, ptr %cur, align 4, !dbg !5904, !tbaa !1185
  %61 = load i32, ptr %cur, align 4, !dbg !5905, !tbaa !1185
  %cmp57 = icmp sle i32 %61, 0, !dbg !5907
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5908

if.then58:                                        ; preds = %sw.bb53
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5909

if.end59:                                         ; preds = %sw.bb53
  %arrayidx60 = getelementptr inbounds [20 x i8], ptr %charref, i64 0, i64 0, !dbg !5910
  %62 = load i32, ptr %cur, align 4, !dbg !5911, !tbaa !1185
  %call61 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arrayidx60, i64 noundef 20, ptr noundef @.str.50, i32 noundef %62) #9, !dbg !5912
  store i32 %call61, ptr %charrefLen, align 4, !dbg !5913, !tbaa !1185
  %63 = load ptr, ptr %in.addr, align 8, !dbg !5914, !tbaa !1148
  %64 = load i32, ptr %len, align 4, !dbg !5915, !tbaa !1185
  %call62 = call i32 @xmlBufferShrink__internal_alias(ptr noundef %63, i32 noundef %64), !dbg !5916
  %65 = load ptr, ptr %out.addr, align 8, !dbg !5917, !tbaa !1148
  %66 = load i32, ptr %charrefLen, align 4, !dbg !5918, !tbaa !1185
  %mul63 = mul nsw i32 %66, 4, !dbg !5919
  %call64 = call i32 @xmlBufferGrow__internal_alias(ptr noundef %65, i32 noundef %mul63), !dbg !5920
  %67 = load ptr, ptr %out.addr, align 8, !dbg !5921, !tbaa !1148
  %size65 = getelementptr inbounds %struct._xmlBuffer, ptr %67, i32 0, i32 2, !dbg !5922
  %68 = load i32, ptr %size65, align 4, !dbg !5922, !tbaa !4691
  %69 = load ptr, ptr %out.addr, align 8, !dbg !5923, !tbaa !1148
  %use66 = getelementptr inbounds %struct._xmlBuffer, ptr %69, i32 0, i32 1, !dbg !5924
  %70 = load i32, ptr %use66, align 8, !dbg !5924, !tbaa !4695
  %sub67 = sub i32 %68, %70, !dbg !5925
  %sub68 = sub i32 %sub67, 1, !dbg !5926
  store i32 %sub68, ptr %written, align 4, !dbg !5927, !tbaa !1185
  %71 = load i32, ptr %charrefLen, align 4, !dbg !5928, !tbaa !1185
  store i32 %71, ptr %toconv, align 4, !dbg !5929, !tbaa !1185
  %72 = load ptr, ptr %handler.addr, align 8, !dbg !5930, !tbaa !1148
  %73 = load ptr, ptr %out.addr, align 8, !dbg !5931, !tbaa !1148
  %content69 = getelementptr inbounds %struct._xmlBuffer, ptr %73, i32 0, i32 0, !dbg !5932
  %74 = load ptr, ptr %content69, align 8, !dbg !5932, !tbaa !4745
  %75 = load ptr, ptr %out.addr, align 8, !dbg !5933, !tbaa !1148
  %use70 = getelementptr inbounds %struct._xmlBuffer, ptr %75, i32 0, i32 1, !dbg !5934
  %76 = load i32, ptr %use70, align 8, !dbg !5934, !tbaa !4695
  %idxprom71 = zext i32 %76 to i64, !dbg !5931
  %arrayidx72 = getelementptr inbounds i8, ptr %74, i64 %idxprom71, !dbg !5931
  %arraydecay = getelementptr inbounds [20 x i8], ptr %charref, i64 0, i64 0, !dbg !5935
  %call73 = call i32 @xmlEncOutputChunk(ptr noundef %72, ptr noundef %arrayidx72, ptr noundef %written, ptr noundef %arraydecay, ptr noundef %toconv), !dbg !5936
  store i32 %call73, ptr %ret, align 4, !dbg !5937, !tbaa !1185
  %77 = load i32, ptr %ret, align 4, !dbg !5938, !tbaa !1185
  %cmp74 = icmp slt i32 %77, 0, !dbg !5939
  br i1 %cmp74, label %if.then76, label %lor.lhs.false, !dbg !5940

lor.lhs.false:                                    ; preds = %if.end59
  %78 = load i32, ptr %toconv, align 4, !dbg !5941, !tbaa !1185
  %79 = load i32, ptr %charrefLen, align 4, !dbg !5942, !tbaa !1185
  %cmp75 = icmp ne i32 %78, %79, !dbg !5943
  br i1 %cmp75, label %if.then76, label %if.end98, !dbg !5944

if.then76:                                        ; preds = %lor.lhs.false, %if.end59
  call void @llvm.lifetime.start.p0(i64 50, ptr %buf) #9, !dbg !5945
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !5752, metadata !DIExpression()), !dbg !5946
  %arrayidx77 = getelementptr inbounds [50 x i8], ptr %buf, i64 0, i64 0, !dbg !5947
  %80 = load ptr, ptr %in.addr, align 8, !dbg !5948, !tbaa !1148
  %content78 = getelementptr inbounds %struct._xmlBuffer, ptr %80, i32 0, i32 0, !dbg !5949
  %81 = load ptr, ptr %content78, align 8, !dbg !5949, !tbaa !4745
  %arrayidx79 = getelementptr inbounds i8, ptr %81, i64 0, !dbg !5948
  %82 = load i8, ptr %arrayidx79, align 1, !dbg !5948, !tbaa !1210
  %conv = zext i8 %82 to i32, !dbg !5948
  %83 = load ptr, ptr %in.addr, align 8, !dbg !5950, !tbaa !1148
  %content80 = getelementptr inbounds %struct._xmlBuffer, ptr %83, i32 0, i32 0, !dbg !5951
  %84 = load ptr, ptr %content80, align 8, !dbg !5951, !tbaa !4745
  %arrayidx81 = getelementptr inbounds i8, ptr %84, i64 1, !dbg !5950
  %85 = load i8, ptr %arrayidx81, align 1, !dbg !5950, !tbaa !1210
  %conv82 = zext i8 %85 to i32, !dbg !5950
  %86 = load ptr, ptr %in.addr, align 8, !dbg !5952, !tbaa !1148
  %content83 = getelementptr inbounds %struct._xmlBuffer, ptr %86, i32 0, i32 0, !dbg !5953
  %87 = load ptr, ptr %content83, align 8, !dbg !5953, !tbaa !4745
  %arrayidx84 = getelementptr inbounds i8, ptr %87, i64 2, !dbg !5952
  %88 = load i8, ptr %arrayidx84, align 1, !dbg !5952, !tbaa !1210
  %conv85 = zext i8 %88 to i32, !dbg !5952
  %89 = load ptr, ptr %in.addr, align 8, !dbg !5954, !tbaa !1148
  %content86 = getelementptr inbounds %struct._xmlBuffer, ptr %89, i32 0, i32 0, !dbg !5955
  %90 = load ptr, ptr %content86, align 8, !dbg !5955, !tbaa !4745
  %arrayidx87 = getelementptr inbounds i8, ptr %90, i64 3, !dbg !5954
  %91 = load i8, ptr %arrayidx87, align 1, !dbg !5954, !tbaa !1210
  %conv88 = zext i8 %91 to i32, !dbg !5954
  %call89 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arrayidx77, i64 noundef 49, ptr noundef @.str.47, i32 noundef %conv, i32 noundef %conv82, i32 noundef %conv85, i32 noundef %conv88) #9, !dbg !5956
  %arrayidx90 = getelementptr inbounds [50 x i8], ptr %buf, i64 0, i64 49, !dbg !5957
  store i8 0, ptr %arrayidx90, align 1, !dbg !5958, !tbaa !1210
  %arraydecay91 = getelementptr inbounds [50 x i8], ptr %buf, i64 0, i64 0, !dbg !5959
  call void @xmlEncodingErr(i32 noundef 6003, ptr noundef @.str.51, ptr noundef %arraydecay91), !dbg !5960
  %92 = load ptr, ptr %in.addr, align 8, !dbg !5961, !tbaa !1148
  %alloc = getelementptr inbounds %struct._xmlBuffer, ptr %92, i32 0, i32 3, !dbg !5963
  %93 = load i32, ptr %alloc, align 8, !dbg !5963, !tbaa !5964
  %cmp92 = icmp ne i32 %93, 2, !dbg !5965
  br i1 %cmp92, label %if.then94, label %if.end97, !dbg !5966

if.then94:                                        ; preds = %if.then76
  %94 = load ptr, ptr %in.addr, align 8, !dbg !5967, !tbaa !1148
  %content95 = getelementptr inbounds %struct._xmlBuffer, ptr %94, i32 0, i32 0, !dbg !5968
  %95 = load ptr, ptr %content95, align 8, !dbg !5968, !tbaa !4745
  %arrayidx96 = getelementptr inbounds i8, ptr %95, i64 0, !dbg !5967
  store i8 32, ptr %arrayidx96, align 1, !dbg !5969, !tbaa !1210
  br label %if.end97, !dbg !5967

if.end97:                                         ; preds = %if.then94, %if.then76
  store i32 3, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 50, ptr %buf) #9, !dbg !5970
  br label %cleanup

if.end98:                                         ; preds = %lor.lhs.false
  %96 = load i32, ptr %written, align 4, !dbg !5971, !tbaa !1185
  %97 = load ptr, ptr %out.addr, align 8, !dbg !5972, !tbaa !1148
  %use99 = getelementptr inbounds %struct._xmlBuffer, ptr %97, i32 0, i32 1, !dbg !5973
  %98 = load i32, ptr %use99, align 8, !dbg !5974, !tbaa !4695
  %add100 = add i32 %98, %96, !dbg !5974
  store i32 %add100, ptr %use99, align 8, !dbg !5974, !tbaa !4695
  %99 = load i32, ptr %written, align 4, !dbg !5975, !tbaa !1185
  %100 = load i32, ptr %writtentot, align 4, !dbg !5976, !tbaa !1185
  %add101 = add nsw i32 %100, %99, !dbg !5976
  store i32 %add101, ptr %writtentot, align 4, !dbg !5976, !tbaa !1185
  %101 = load ptr, ptr %out.addr, align 8, !dbg !5977, !tbaa !1148
  %content102 = getelementptr inbounds %struct._xmlBuffer, ptr %101, i32 0, i32 0, !dbg !5978
  %102 = load ptr, ptr %content102, align 8, !dbg !5978, !tbaa !4745
  %103 = load ptr, ptr %out.addr, align 8, !dbg !5979, !tbaa !1148
  %use103 = getelementptr inbounds %struct._xmlBuffer, ptr %103, i32 0, i32 1, !dbg !5980
  %104 = load i32, ptr %use103, align 8, !dbg !5980, !tbaa !4695
  %idxprom104 = zext i32 %104 to i64, !dbg !5977
  %arrayidx105 = getelementptr inbounds i8, ptr %102, i64 %idxprom104, !dbg !5977
  store i8 0, ptr %arrayidx105, align 1, !dbg !5981, !tbaa !1210
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5982

cleanup:                                          ; preds = %if.end98, %if.end97, %if.then58
  call void @llvm.lifetime.end.p0(i64 4, ptr %charrefLen) #9, !dbg !5983
  call void @llvm.lifetime.end.p0(i64 4, ptr %cur) #9, !dbg !5983
  call void @llvm.lifetime.end.p0(i64 8, ptr %utf) #9, !dbg !5983
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #9, !dbg !5983
  call void @llvm.lifetime.end.p0(i64 20, ptr %charref) #9, !dbg !5983
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 3, label %sw.epilog
    i32 2, label %retry
  ]

sw.epilog:                                        ; preds = %if.end52, %cleanup, %sw.bb, %if.end52, %if.end52, %if.end52
  %105 = load i32, ptr %ret, align 4, !dbg !5984, !tbaa !1185
  store i32 %105, ptr %retval, align 4, !dbg !5985
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup110, !dbg !5985

cleanup110:                                       ; preds = %sw.epilog, %if.then18, %if.then8, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %output) #9, !dbg !5986
  call void @llvm.lifetime.end.p0(i64 4, ptr %toconv) #9, !dbg !5986
  call void @llvm.lifetime.end.p0(i64 4, ptr %writtentot) #9, !dbg !5986
  call void @llvm.lifetime.end.p0(i64 4, ptr %written) #9, !dbg !5986
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !5986
  %106 = load i32, ptr %retval, align 4, !dbg !5986
  ret i32 %106, !dbg !5986

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden i32 @xmlCharEncCloseFunc__internal_alias(ptr noundef %handler) #0 !dbg !5987 {
entry:
  %retval = alloca i32, align 4
  %handler.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %tofree = alloca i32, align 4
  %i = alloca i32, align 4
  %handler_in_list = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %handler, ptr %handler.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %handler.addr, metadata !5991, metadata !DIExpression()), !dbg !5996
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !5997
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !5992, metadata !DIExpression()), !dbg !5998
  store i32 0, ptr %ret, align 4, !dbg !5998, !tbaa !1185
  call void @llvm.lifetime.start.p0(i64 4, ptr %tofree) #9, !dbg !5999
  tail call void @llvm.dbg.declare(metadata ptr %tofree, metadata !5993, metadata !DIExpression()), !dbg !6000
  store i32 0, ptr %tofree, align 4, !dbg !6000, !tbaa !1185
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !6001
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !5994, metadata !DIExpression()), !dbg !6002
  call void @llvm.lifetime.start.p0(i64 4, ptr %handler_in_list) #9, !dbg !6001
  tail call void @llvm.dbg.declare(metadata ptr %handler_in_list, metadata !5995, metadata !DIExpression()), !dbg !6003
  store i32 0, ptr %handler_in_list, align 4, !dbg !6003, !tbaa !1185
  %0 = load ptr, ptr %handler.addr, align 8, !dbg !6004, !tbaa !1148
  %cmp = icmp eq ptr %0, null, !dbg !6006
  br i1 %cmp, label %if.then, label %if.end, !dbg !6007

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !6008
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6008

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %handler.addr, align 8, !dbg !6009, !tbaa !1148
  %name = getelementptr inbounds %struct._xmlCharEncodingHandler, ptr %1, i32 0, i32 0, !dbg !6011
  %2 = load ptr, ptr %name, align 8, !dbg !6011, !tbaa !2402
  %cmp1 = icmp eq ptr %2, null, !dbg !6012
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !6013

if.then2:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4, !dbg !6014
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6014

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr @handlers, align 8, !dbg !6015, !tbaa !1148
  %cmp4 = icmp ne ptr %3, null, !dbg !6017
  br i1 %cmp4, label %if.then5, label %if.end10, !dbg !6018

if.then5:                                         ; preds = %if.end3
  store i32 0, ptr %i, align 4, !dbg !6019, !tbaa !1185
  br label %for.cond, !dbg !6022

for.cond:                                         ; preds = %for.inc, %if.then5
  %4 = load i32, ptr %i, align 4, !dbg !6023, !tbaa !1185
  %5 = load i32, ptr @nbCharEncodingHandler, align 4, !dbg !6025, !tbaa !1185
  %cmp6 = icmp slt i32 %4, %5, !dbg !6026
  br i1 %cmp6, label %for.body, label %for.end, !dbg !6027

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %handler.addr, align 8, !dbg !6028, !tbaa !1148
  %7 = load ptr, ptr @handlers, align 8, !dbg !6031, !tbaa !1148
  %8 = load i32, ptr %i, align 4, !dbg !6032, !tbaa !1185
  %idxprom = sext i32 %8 to i64, !dbg !6031
  %arrayidx = getelementptr inbounds ptr, ptr %7, i64 %idxprom, !dbg !6031
  %9 = load ptr, ptr %arrayidx, align 8, !dbg !6031, !tbaa !1148
  %cmp7 = icmp eq ptr %6, %9, !dbg !6033
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !6034

if.then8:                                         ; preds = %for.body
  store i32 1, ptr %handler_in_list, align 4, !dbg !6035, !tbaa !1185
  br label %for.end, !dbg !6037

if.end9:                                          ; preds = %for.body
  br label %for.inc, !dbg !6038

for.inc:                                          ; preds = %if.end9
  %10 = load i32, ptr %i, align 4, !dbg !6039, !tbaa !1185
  %inc = add nsw i32 %10, 1, !dbg !6039
  store i32 %inc, ptr %i, align 4, !dbg !6039, !tbaa !1185
  br label %for.cond, !dbg !6040, !llvm.loop !6041

for.end:                                          ; preds = %if.then8, %for.cond
  br label %if.end10, !dbg !6043

if.end10:                                         ; preds = %for.end, %if.end3
  %11 = load i32, ptr %handler_in_list, align 4, !dbg !6044, !tbaa !1185
  %cmp11 = icmp eq i32 %11, 0, !dbg !6046
  br i1 %cmp11, label %land.lhs.true, label %if.end33, !dbg !6047

land.lhs.true:                                    ; preds = %if.end10
  %12 = load ptr, ptr %handler.addr, align 8, !dbg !6048, !tbaa !1148
  %iconv_out = getelementptr inbounds %struct._xmlCharEncodingHandler, ptr %12, i32 0, i32 4, !dbg !6049
  %13 = load ptr, ptr %iconv_out, align 8, !dbg !6049, !tbaa !2410
  %cmp12 = icmp ne ptr %13, null, !dbg !6050
  br i1 %cmp12, label %if.then14, label %lor.lhs.false, !dbg !6051

lor.lhs.false:                                    ; preds = %land.lhs.true
  %14 = load ptr, ptr %handler.addr, align 8, !dbg !6052, !tbaa !1148
  %iconv_in = getelementptr inbounds %struct._xmlCharEncodingHandler, ptr %14, i32 0, i32 3, !dbg !6053
  %15 = load ptr, ptr %iconv_in, align 8, !dbg !6053, !tbaa !2406
  %cmp13 = icmp ne ptr %15, null, !dbg !6054
  br i1 %cmp13, label %if.then14, label %if.end33, !dbg !6055

if.then14:                                        ; preds = %lor.lhs.false, %land.lhs.true
  store i32 1, ptr %tofree, align 4, !dbg !6056, !tbaa !1185
  %16 = load ptr, ptr %handler.addr, align 8, !dbg !6058, !tbaa !1148
  %iconv_out15 = getelementptr inbounds %struct._xmlCharEncodingHandler, ptr %16, i32 0, i32 4, !dbg !6060
  %17 = load ptr, ptr %iconv_out15, align 8, !dbg !6060, !tbaa !2410
  %cmp16 = icmp ne ptr %17, null, !dbg !6061
  br i1 %cmp16, label %if.then17, label %if.end22, !dbg !6062

if.then17:                                        ; preds = %if.then14
  %18 = load ptr, ptr %handler.addr, align 8, !dbg !6063, !tbaa !1148
  %iconv_out18 = getelementptr inbounds %struct._xmlCharEncodingHandler, ptr %18, i32 0, i32 4, !dbg !6066
  %19 = load ptr, ptr %iconv_out18, align 8, !dbg !6066, !tbaa !2410
  %call = call i32 @libiconv_close(ptr noundef %19), !dbg !6067
  %tobool = icmp ne i32 %call, 0, !dbg !6067
  br i1 %tobool, label %if.then19, label %if.end20, !dbg !6068

if.then19:                                        ; preds = %if.then17
  store i32 -1, ptr %ret, align 4, !dbg !6069, !tbaa !1185
  br label %if.end20, !dbg !6070

if.end20:                                         ; preds = %if.then19, %if.then17
  %20 = load ptr, ptr %handler.addr, align 8, !dbg !6071, !tbaa !1148
  %iconv_out21 = getelementptr inbounds %struct._xmlCharEncodingHandler, ptr %20, i32 0, i32 4, !dbg !6072
  store ptr null, ptr %iconv_out21, align 8, !dbg !6073, !tbaa !2410
  br label %if.end22, !dbg !6074

if.end22:                                         ; preds = %if.end20, %if.then14
  %21 = load ptr, ptr %handler.addr, align 8, !dbg !6075, !tbaa !1148
  %iconv_in23 = getelementptr inbounds %struct._xmlCharEncodingHandler, ptr %21, i32 0, i32 3, !dbg !6077
  %22 = load ptr, ptr %iconv_in23, align 8, !dbg !6077, !tbaa !2406
  %cmp24 = icmp ne ptr %22, null, !dbg !6078
  br i1 %cmp24, label %if.then25, label %if.end32, !dbg !6079

if.then25:                                        ; preds = %if.end22
  %23 = load ptr, ptr %handler.addr, align 8, !dbg !6080, !tbaa !1148
  %iconv_in26 = getelementptr inbounds %struct._xmlCharEncodingHandler, ptr %23, i32 0, i32 3, !dbg !6083
  %24 = load ptr, ptr %iconv_in26, align 8, !dbg !6083, !tbaa !2406
  %call27 = call i32 @libiconv_close(ptr noundef %24), !dbg !6084
  %tobool28 = icmp ne i32 %call27, 0, !dbg !6084
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !6085

if.then29:                                        ; preds = %if.then25
  store i32 -1, ptr %ret, align 4, !dbg !6086, !tbaa !1185
  br label %if.end30, !dbg !6087

if.end30:                                         ; preds = %if.then29, %if.then25
  %25 = load ptr, ptr %handler.addr, align 8, !dbg !6088, !tbaa !1148
  %iconv_in31 = getelementptr inbounds %struct._xmlCharEncodingHandler, ptr %25, i32 0, i32 3, !dbg !6089
  store ptr null, ptr %iconv_in31, align 8, !dbg !6090, !tbaa !2406
  br label %if.end32, !dbg !6091

if.end32:                                         ; preds = %if.end30, %if.end22
  br label %if.end33, !dbg !6092

if.end33:                                         ; preds = %if.end32, %lor.lhs.false, %if.end10
  %26 = load i32, ptr %tofree, align 4, !dbg !6093, !tbaa !1185
  %tobool34 = icmp ne i32 %26, 0, !dbg !6093
  br i1 %tobool34, label %if.then35, label %if.end42, !dbg !6095

if.then35:                                        ; preds = %if.end33
  %27 = load ptr, ptr %handler.addr, align 8, !dbg !6096, !tbaa !1148
  %name36 = getelementptr inbounds %struct._xmlCharEncodingHandler, ptr %27, i32 0, i32 0, !dbg !6099
  %28 = load ptr, ptr %name36, align 8, !dbg !6099, !tbaa !2402
  %cmp37 = icmp ne ptr %28, null, !dbg !6100
  br i1 %cmp37, label %if.then38, label %if.end40, !dbg !6101

if.then38:                                        ; preds = %if.then35
  %29 = load ptr, ptr @xmlFree, align 8, !dbg !6102, !tbaa !1148
  %30 = load ptr, ptr %handler.addr, align 8, !dbg !6103, !tbaa !1148
  %name39 = getelementptr inbounds %struct._xmlCharEncodingHandler, ptr %30, i32 0, i32 0, !dbg !6104
  %31 = load ptr, ptr %name39, align 8, !dbg !6104, !tbaa !2402
  call void %29(ptr noundef %31), !dbg !6102
  br label %if.end40, !dbg !6102

if.end40:                                         ; preds = %if.then38, %if.then35
  %32 = load ptr, ptr %handler.addr, align 8, !dbg !6105, !tbaa !1148
  %name41 = getelementptr inbounds %struct._xmlCharEncodingHandler, ptr %32, i32 0, i32 0, !dbg !6106
  store ptr null, ptr %name41, align 8, !dbg !6107, !tbaa !2402
  %33 = load ptr, ptr @xmlFree, align 8, !dbg !6108, !tbaa !1148
  %34 = load ptr, ptr %handler.addr, align 8, !dbg !6109, !tbaa !1148
  call void %33(ptr noundef %34), !dbg !6108
  br label %if.end42, !dbg !6110

if.end42:                                         ; preds = %if.end40, %if.end33
  %35 = load i32, ptr %ret, align 4, !dbg !6111, !tbaa !1185
  store i32 %35, ptr %retval, align 4, !dbg !6112
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6112

cleanup:                                          ; preds = %if.end42, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %handler_in_list) #9, !dbg !6113
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !6113
  call void @llvm.lifetime.end.p0(i64 4, ptr %tofree) #9, !dbg !6113
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !6113
  %36 = load i32, ptr %retval, align 4, !dbg !6113
  ret i32 %36, !dbg !6113
}

; Function Attrs: nounwind uwtable
define hidden i64 @xmlByteConsumed__internal_alias(ptr noundef %ctxt) #0 !dbg !6114 {
entry:
  %retval = alloca i64, align 8
  %ctxt.addr = alloca ptr, align 8
  %in = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %unused = alloca i32, align 4
  %handler = alloca ptr, align 8
  %convbuf = alloca [32000 x i8], align 16
  %cur12 = alloca ptr, align 8
  %toconv = alloca i32, align 4
  %written = alloca i32, align 4
  %ret = alloca i32, align 4
  store ptr %ctxt, ptr %ctxt.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %ctxt.addr, metadata !6601, metadata !DIExpression()), !dbg !6617
  call void @llvm.lifetime.start.p0(i64 8, ptr %in) #9, !dbg !6618
  tail call void @llvm.dbg.declare(metadata ptr %in, metadata !6602, metadata !DIExpression()), !dbg !6619
  %0 = load ptr, ptr %ctxt.addr, align 8, !dbg !6620, !tbaa !1148
  %cmp = icmp eq ptr %0, null, !dbg !6622
  br i1 %cmp, label %if.then, label %if.end, !dbg !6623

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !6624
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup56, !dbg !6624

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %ctxt.addr, align 8, !dbg !6625, !tbaa !1148
  %input = getelementptr inbounds %struct._xmlParserCtxt, ptr %1, i32 0, i32 9, !dbg !6626
  %2 = load ptr, ptr %input, align 8, !dbg !6626, !tbaa !6627
  store ptr %2, ptr %in, align 8, !dbg !6632, !tbaa !1148
  %3 = load ptr, ptr %in, align 8, !dbg !6633, !tbaa !1148
  %cmp1 = icmp eq ptr %3, null, !dbg !6635
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !6636

if.then2:                                         ; preds = %if.end
  store i64 -1, ptr %retval, align 8, !dbg !6637
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup56, !dbg !6637

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %in, align 8, !dbg !6638, !tbaa !1148
  %buf = getelementptr inbounds %struct._xmlParserInput, ptr %4, i32 0, i32 0, !dbg !6639
  %5 = load ptr, ptr %buf, align 8, !dbg !6639, !tbaa !6640
  %cmp4 = icmp ne ptr %5, null, !dbg !6642
  br i1 %cmp4, label %land.lhs.true, label %if.end50, !dbg !6643

land.lhs.true:                                    ; preds = %if.end3
  %6 = load ptr, ptr %in, align 8, !dbg !6644, !tbaa !1148
  %buf5 = getelementptr inbounds %struct._xmlParserInput, ptr %6, i32 0, i32 0, !dbg !6645
  %7 = load ptr, ptr %buf5, align 8, !dbg !6645, !tbaa !6640
  %encoder = getelementptr inbounds %struct._xmlParserInputBuffer, ptr %7, i32 0, i32 3, !dbg !6646
  %8 = load ptr, ptr %encoder, align 8, !dbg !6646, !tbaa !4935
  %cmp6 = icmp ne ptr %8, null, !dbg !6647
  br i1 %cmp6, label %if.then7, label %if.end50, !dbg !6648

if.then7:                                         ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %unused) #9, !dbg !6649
  tail call void @llvm.dbg.declare(metadata ptr %unused, metadata !6603, metadata !DIExpression()), !dbg !6650
  store i32 0, ptr %unused, align 4, !dbg !6650, !tbaa !1185
  call void @llvm.lifetime.start.p0(i64 8, ptr %handler) #9, !dbg !6651
  tail call void @llvm.dbg.declare(metadata ptr %handler, metadata !6606, metadata !DIExpression()), !dbg !6652
  %9 = load ptr, ptr %in, align 8, !dbg !6653, !tbaa !1148
  %buf8 = getelementptr inbounds %struct._xmlParserInput, ptr %9, i32 0, i32 0, !dbg !6654
  %10 = load ptr, ptr %buf8, align 8, !dbg !6654, !tbaa !6640
  %encoder9 = getelementptr inbounds %struct._xmlParserInputBuffer, ptr %10, i32 0, i32 3, !dbg !6655
  %11 = load ptr, ptr %encoder9, align 8, !dbg !6655, !tbaa !4935
  store ptr %11, ptr %handler, align 8, !dbg !6652, !tbaa !1148
  %12 = load ptr, ptr %in, align 8, !dbg !6656, !tbaa !1148
  %end = getelementptr inbounds %struct._xmlParserInput, ptr %12, i32 0, i32 5, !dbg !6657
  %13 = load ptr, ptr %end, align 8, !dbg !6657, !tbaa !6658
  %14 = load ptr, ptr %in, align 8, !dbg !6659, !tbaa !1148
  %cur = getelementptr inbounds %struct._xmlParserInput, ptr %14, i32 0, i32 4, !dbg !6660
  %15 = load ptr, ptr %cur, align 8, !dbg !6660, !tbaa !6661
  %sub.ptr.lhs.cast = ptrtoint ptr %13 to i64, !dbg !6662
  %sub.ptr.rhs.cast = ptrtoint ptr %15 to i64, !dbg !6662
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !6662
  %cmp10 = icmp sgt i64 %sub.ptr.sub, 0, !dbg !6663
  br i1 %cmp10, label %if.then11, label %if.end38, !dbg !6664

if.then11:                                        ; preds = %if.then7
  call void @llvm.lifetime.start.p0(i64 32000, ptr %convbuf) #9, !dbg !6665
  tail call void @llvm.dbg.declare(metadata ptr %convbuf, metadata !6607, metadata !DIExpression()), !dbg !6666
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur12) #9, !dbg !6667
  tail call void @llvm.dbg.declare(metadata ptr %cur12, metadata !6613, metadata !DIExpression()), !dbg !6668
  %16 = load ptr, ptr %in, align 8, !dbg !6669, !tbaa !1148
  %cur13 = getelementptr inbounds %struct._xmlParserInput, ptr %16, i32 0, i32 4, !dbg !6670
  %17 = load ptr, ptr %cur13, align 8, !dbg !6670, !tbaa !6661
  store ptr %17, ptr %cur12, align 8, !dbg !6668, !tbaa !1148
  call void @llvm.lifetime.start.p0(i64 4, ptr %toconv) #9, !dbg !6671
  tail call void @llvm.dbg.declare(metadata ptr %toconv, metadata !6614, metadata !DIExpression()), !dbg !6672
  %18 = load ptr, ptr %in, align 8, !dbg !6673, !tbaa !1148
  %end14 = getelementptr inbounds %struct._xmlParserInput, ptr %18, i32 0, i32 5, !dbg !6674
  %19 = load ptr, ptr %end14, align 8, !dbg !6674, !tbaa !6658
  %20 = load ptr, ptr %in, align 8, !dbg !6675, !tbaa !1148
  %cur15 = getelementptr inbounds %struct._xmlParserInput, ptr %20, i32 0, i32 4, !dbg !6676
  %21 = load ptr, ptr %cur15, align 8, !dbg !6676, !tbaa !6661
  %sub.ptr.lhs.cast16 = ptrtoint ptr %19 to i64, !dbg !6677
  %sub.ptr.rhs.cast17 = ptrtoint ptr %21 to i64, !dbg !6677
  %sub.ptr.sub18 = sub i64 %sub.ptr.lhs.cast16, %sub.ptr.rhs.cast17, !dbg !6677
  %conv = trunc i64 %sub.ptr.sub18 to i32, !dbg !6673
  store i32 %conv, ptr %toconv, align 4, !dbg !6672, !tbaa !1185
  call void @llvm.lifetime.start.p0(i64 4, ptr %written) #9, !dbg !6671
  tail call void @llvm.dbg.declare(metadata ptr %written, metadata !6615, metadata !DIExpression()), !dbg !6678
  store i32 32000, ptr %written, align 4, !dbg !6678, !tbaa !1185
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !6679
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !6616, metadata !DIExpression()), !dbg !6680
  br label %do.body, !dbg !6681

do.body:                                          ; preds = %do.cond, %if.then11
  %22 = load ptr, ptr %in, align 8, !dbg !6682, !tbaa !1148
  %end19 = getelementptr inbounds %struct._xmlParserInput, ptr %22, i32 0, i32 5, !dbg !6684
  %23 = load ptr, ptr %end19, align 8, !dbg !6684, !tbaa !6658
  %24 = load ptr, ptr %cur12, align 8, !dbg !6685, !tbaa !1148
  %sub.ptr.lhs.cast20 = ptrtoint ptr %23 to i64, !dbg !6686
  %sub.ptr.rhs.cast21 = ptrtoint ptr %24 to i64, !dbg !6686
  %sub.ptr.sub22 = sub i64 %sub.ptr.lhs.cast20, %sub.ptr.rhs.cast21, !dbg !6686
  %conv23 = trunc i64 %sub.ptr.sub22 to i32, !dbg !6682
  store i32 %conv23, ptr %toconv, align 4, !dbg !6687, !tbaa !1185
  store i32 32000, ptr %written, align 4, !dbg !6688, !tbaa !1185
  %25 = load ptr, ptr %handler, align 8, !dbg !6689, !tbaa !1148
  %arrayidx = getelementptr inbounds [32000 x i8], ptr %convbuf, i64 0, i64 0, !dbg !6690
  %26 = load ptr, ptr %cur12, align 8, !dbg !6691, !tbaa !1148
  %call = call i32 @xmlEncOutputChunk(ptr noundef %25, ptr noundef %arrayidx, ptr noundef %written, ptr noundef %26, ptr noundef %toconv), !dbg !6692
  store i32 %call, ptr %ret, align 4, !dbg !6693, !tbaa !1185
  %27 = load i32, ptr %ret, align 4, !dbg !6694, !tbaa !1185
  %cmp24 = icmp slt i32 %27, 0, !dbg !6696
  br i1 %cmp24, label %if.then26, label %if.end31, !dbg !6697

if.then26:                                        ; preds = %do.body
  %28 = load i32, ptr %written, align 4, !dbg !6698, !tbaa !1185
  %cmp27 = icmp sgt i32 %28, 0, !dbg !6701
  br i1 %cmp27, label %if.then29, label %if.else, !dbg !6702

if.then29:                                        ; preds = %if.then26
  store i32 -2, ptr %ret, align 4, !dbg !6703, !tbaa !1185
  br label %if.end30, !dbg !6704

if.else:                                          ; preds = %if.then26
  store i64 -1, ptr %retval, align 8, !dbg !6705
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6705

if.end30:                                         ; preds = %if.then29
  br label %if.end31, !dbg !6706

if.end31:                                         ; preds = %if.end30, %do.body
  %29 = load i32, ptr %written, align 4, !dbg !6707, !tbaa !1185
  %30 = load i32, ptr %unused, align 4, !dbg !6708, !tbaa !1185
  %add = add i32 %30, %29, !dbg !6708
  store i32 %add, ptr %unused, align 4, !dbg !6708, !tbaa !1185
  %31 = load i32, ptr %toconv, align 4, !dbg !6709, !tbaa !1185
  %32 = load ptr, ptr %cur12, align 8, !dbg !6710, !tbaa !1148
  %idx.ext = sext i32 %31 to i64, !dbg !6710
  %add.ptr = getelementptr inbounds i8, ptr %32, i64 %idx.ext, !dbg !6710
  store ptr %add.ptr, ptr %cur12, align 8, !dbg !6710, !tbaa !1148
  br label %do.cond, !dbg !6711

do.cond:                                          ; preds = %if.end31
  %33 = load i32, ptr %ret, align 4, !dbg !6712, !tbaa !1185
  %cmp32 = icmp eq i32 %33, -2, !dbg !6713
  br i1 %cmp32, label %do.body, label %do.end, !dbg !6711, !llvm.loop !6714

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6716
  br label %cleanup, !dbg !6716

cleanup:                                          ; preds = %do.end, %if.else
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !6716
  call void @llvm.lifetime.end.p0(i64 4, ptr %written) #9, !dbg !6716
  call void @llvm.lifetime.end.p0(i64 4, ptr %toconv) #9, !dbg !6716
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur12) #9, !dbg !6716
  call void @llvm.lifetime.end.p0(i64 32000, ptr %convbuf) #9, !dbg !6716
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup48 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end38, !dbg !6717

if.end38:                                         ; preds = %cleanup.cont, %if.then7
  %34 = load ptr, ptr %in, align 8, !dbg !6718, !tbaa !1148
  %buf39 = getelementptr inbounds %struct._xmlParserInput, ptr %34, i32 0, i32 0, !dbg !6720
  %35 = load ptr, ptr %buf39, align 8, !dbg !6720, !tbaa !6640
  %rawconsumed = getelementptr inbounds %struct._xmlParserInputBuffer, ptr %35, i32 0, i32 8, !dbg !6721
  %36 = load i64, ptr %rawconsumed, align 8, !dbg !6721, !tbaa !6722
  %37 = load i32, ptr %unused, align 4, !dbg !6723, !tbaa !1185
  %conv40 = zext i32 %37 to i64, !dbg !6723
  %cmp41 = icmp ult i64 %36, %conv40, !dbg !6724
  br i1 %cmp41, label %if.then43, label %if.end44, !dbg !6725

if.then43:                                        ; preds = %if.end38
  store i64 -1, ptr %retval, align 8, !dbg !6726
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup48, !dbg !6726

if.end44:                                         ; preds = %if.end38
  %38 = load ptr, ptr %in, align 8, !dbg !6727, !tbaa !1148
  %buf45 = getelementptr inbounds %struct._xmlParserInput, ptr %38, i32 0, i32 0, !dbg !6728
  %39 = load ptr, ptr %buf45, align 8, !dbg !6728, !tbaa !6640
  %rawconsumed46 = getelementptr inbounds %struct._xmlParserInputBuffer, ptr %39, i32 0, i32 8, !dbg !6729
  %40 = load i64, ptr %rawconsumed46, align 8, !dbg !6729, !tbaa !6722
  %41 = load i32, ptr %unused, align 4, !dbg !6730, !tbaa !1185
  %conv47 = zext i32 %41 to i64, !dbg !6730
  %sub = sub i64 %40, %conv47, !dbg !6731
  store i64 %sub, ptr %retval, align 8, !dbg !6732
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup48, !dbg !6732

cleanup48:                                        ; preds = %if.end44, %if.then43, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %handler) #9, !dbg !6733
  call void @llvm.lifetime.end.p0(i64 4, ptr %unused) #9, !dbg !6733
  br label %cleanup56

if.end50:                                         ; preds = %land.lhs.true, %if.end3
  %42 = load ptr, ptr %in, align 8, !dbg !6734, !tbaa !1148
  %consumed = getelementptr inbounds %struct._xmlParserInput, ptr %42, i32 0, i32 9, !dbg !6735
  %43 = load i64, ptr %consumed, align 8, !dbg !6735, !tbaa !6736
  %44 = load ptr, ptr %in, align 8, !dbg !6737, !tbaa !1148
  %cur51 = getelementptr inbounds %struct._xmlParserInput, ptr %44, i32 0, i32 4, !dbg !6738
  %45 = load ptr, ptr %cur51, align 8, !dbg !6738, !tbaa !6661
  %46 = load ptr, ptr %in, align 8, !dbg !6739, !tbaa !1148
  %base = getelementptr inbounds %struct._xmlParserInput, ptr %46, i32 0, i32 3, !dbg !6740
  %47 = load ptr, ptr %base, align 8, !dbg !6740, !tbaa !6741
  %sub.ptr.lhs.cast52 = ptrtoint ptr %45 to i64, !dbg !6742
  %sub.ptr.rhs.cast53 = ptrtoint ptr %47 to i64, !dbg !6742
  %sub.ptr.sub54 = sub i64 %sub.ptr.lhs.cast52, %sub.ptr.rhs.cast53, !dbg !6742
  %add55 = add i64 %43, %sub.ptr.sub54, !dbg !6743
  store i64 %add55, ptr %retval, align 8, !dbg !6744
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup56, !dbg !6744

cleanup56:                                        ; preds = %if.end50, %cleanup48, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %in) #9, !dbg !6745
  %48 = load i64, ptr %retval, align 8, !dbg !6745
  ret i64 %48, !dbg !6745
}

declare !dbg !6746 void @__xmlRaiseError(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #6

declare !dbg !6750 void @__xmlSimpleError(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal i32 @xmlIconvWrapper(ptr noundef %cd, ptr noundef %out, ptr noundef %outlen, ptr noundef %in, ptr noundef %inlen) #0 !dbg !6753 {
entry:
  %retval = alloca i32, align 4
  %cd.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %outlen.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %inlen.addr = alloca ptr, align 8
  %icv_inlen = alloca i64, align 8
  %icv_outlen = alloca i64, align 8
  %icv_in = alloca ptr, align 8
  %icv_out = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cd, ptr %cd.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %cd.addr, metadata !6757, metadata !DIExpression()), !dbg !6767
  store ptr %out, ptr %out.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !6758, metadata !DIExpression()), !dbg !6768
  store ptr %outlen, ptr %outlen.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %outlen.addr, metadata !6759, metadata !DIExpression()), !dbg !6769
  store ptr %in, ptr %in.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !6760, metadata !DIExpression()), !dbg !6770
  store ptr %inlen, ptr %inlen.addr, align 8, !tbaa !1148
  tail call void @llvm.dbg.declare(metadata ptr %inlen.addr, metadata !6761, metadata !DIExpression()), !dbg !6771
  call void @llvm.lifetime.start.p0(i64 8, ptr %icv_inlen) #9, !dbg !6772
  tail call void @llvm.dbg.declare(metadata ptr %icv_inlen, metadata !6762, metadata !DIExpression()), !dbg !6773
  call void @llvm.lifetime.start.p0(i64 8, ptr %icv_outlen) #9, !dbg !6772
  tail call void @llvm.dbg.declare(metadata ptr %icv_outlen, metadata !6763, metadata !DIExpression()), !dbg !6774
  call void @llvm.lifetime.start.p0(i64 8, ptr %icv_in) #9, !dbg !6775
  tail call void @llvm.dbg.declare(metadata ptr %icv_in, metadata !6764, metadata !DIExpression()), !dbg !6776
  %0 = load ptr, ptr %in.addr, align 8, !dbg !6777, !tbaa !1148
  store ptr %0, ptr %icv_in, align 8, !dbg !6776, !tbaa !1148
  call void @llvm.lifetime.start.p0(i64 8, ptr %icv_out) #9, !dbg !6778
  tail call void @llvm.dbg.declare(metadata ptr %icv_out, metadata !6765, metadata !DIExpression()), !dbg !6779
  %1 = load ptr, ptr %out.addr, align 8, !dbg !6780, !tbaa !1148
  store ptr %1, ptr %icv_out, align 8, !dbg !6779, !tbaa !1148
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !6781
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !6766, metadata !DIExpression()), !dbg !6782
  %2 = load ptr, ptr %out.addr, align 8, !dbg !6783, !tbaa !1148
  %cmp = icmp eq ptr %2, null, !dbg !6785
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !6786

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %outlen.addr, align 8, !dbg !6787, !tbaa !1148
  %cmp1 = icmp eq ptr %3, null, !dbg !6788
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !6789

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %4 = load ptr, ptr %inlen.addr, align 8, !dbg !6790, !tbaa !1148
  %cmp3 = icmp eq ptr %4, null, !dbg !6791
  br i1 %cmp3, label %if.then, label %lor.lhs.false4, !dbg !6792

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %5 = load ptr, ptr %in.addr, align 8, !dbg !6793, !tbaa !1148
  %cmp5 = icmp eq ptr %5, null, !dbg !6794
  br i1 %cmp5, label %if.then, label %if.end8, !dbg !6795

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  %6 = load ptr, ptr %outlen.addr, align 8, !dbg !6796, !tbaa !1148
  %cmp6 = icmp ne ptr %6, null, !dbg !6799
  br i1 %cmp6, label %if.then7, label %if.end, !dbg !6800

if.then7:                                         ; preds = %if.then
  %7 = load ptr, ptr %outlen.addr, align 8, !dbg !6801, !tbaa !1148
  store i32 0, ptr %7, align 4, !dbg !6802, !tbaa !1185
  br label %if.end, !dbg !6803

if.end:                                           ; preds = %if.then7, %if.then
  store i32 -1, ptr %retval, align 4, !dbg !6804
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6804

if.end8:                                          ; preds = %lor.lhs.false4
  %8 = load ptr, ptr %inlen.addr, align 8, !dbg !6805, !tbaa !1148
  %9 = load i32, ptr %8, align 4, !dbg !6806, !tbaa !1185
  %conv = sext i32 %9 to i64, !dbg !6806
  store i64 %conv, ptr %icv_inlen, align 8, !dbg !6807, !tbaa !4960
  %10 = load ptr, ptr %outlen.addr, align 8, !dbg !6808, !tbaa !1148
  %11 = load i32, ptr %10, align 4, !dbg !6809, !tbaa !1185
  %conv9 = sext i32 %11 to i64, !dbg !6809
  store i64 %conv9, ptr %icv_outlen, align 8, !dbg !6810, !tbaa !4960
  %12 = load ptr, ptr %cd.addr, align 8, !dbg !6811, !tbaa !1148
  %call = call i64 @libiconv(ptr noundef %12, ptr noundef %icv_in, ptr noundef %icv_inlen, ptr noundef %icv_out, ptr noundef %icv_outlen), !dbg !6812
  %conv10 = trunc i64 %call to i32, !dbg !6812
  store i32 %conv10, ptr %ret, align 4, !dbg !6813, !tbaa !1185
  %13 = load i64, ptr %icv_inlen, align 8, !dbg !6814, !tbaa !4960
  %14 = load ptr, ptr %inlen.addr, align 8, !dbg !6815, !tbaa !1148
  %15 = load i32, ptr %14, align 4, !dbg !6816, !tbaa !1185
  %conv11 = sext i32 %15 to i64, !dbg !6816
  %sub = sub i64 %conv11, %13, !dbg !6816
  %conv12 = trunc i64 %sub to i32, !dbg !6816
  store i32 %conv12, ptr %14, align 4, !dbg !6816, !tbaa !1185
  %16 = load i64, ptr %icv_outlen, align 8, !dbg !6817, !tbaa !4960
  %17 = load ptr, ptr %outlen.addr, align 8, !dbg !6818, !tbaa !1148
  %18 = load i32, ptr %17, align 4, !dbg !6819, !tbaa !1185
  %conv13 = sext i32 %18 to i64, !dbg !6819
  %sub14 = sub i64 %conv13, %16, !dbg !6819
  %conv15 = trunc i64 %sub14 to i32, !dbg !6819
  store i32 %conv15, ptr %17, align 4, !dbg !6819, !tbaa !1185
  %19 = load i64, ptr %icv_inlen, align 8, !dbg !6820, !tbaa !4960
  %cmp16 = icmp ne i64 %19, 0, !dbg !6822
  br i1 %cmp16, label %if.then21, label %lor.lhs.false18, !dbg !6823

lor.lhs.false18:                                  ; preds = %if.end8
  %20 = load i32, ptr %ret, align 4, !dbg !6824, !tbaa !1185
  %cmp19 = icmp eq i32 %20, -1, !dbg !6825
  br i1 %cmp19, label %if.then21, label %if.end36, !dbg !6826

if.then21:                                        ; preds = %lor.lhs.false18, %if.end8
  %call22 = call ptr @__errno_location() #10, !dbg !6827
  %21 = load i32, ptr %call22, align 4, !dbg !6827, !tbaa !1185
  %cmp23 = icmp eq i32 %21, 84, !dbg !6830
  br i1 %cmp23, label %if.then25, label %if.else, !dbg !6831

if.then25:                                        ; preds = %if.then21
  store i32 -2, ptr %retval, align 4, !dbg !6832
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6832

if.else:                                          ; preds = %if.then21
  %call26 = call ptr @__errno_location() #10, !dbg !6834
  %22 = load i32, ptr %call26, align 4, !dbg !6834, !tbaa !1185
  %cmp27 = icmp eq i32 %22, 7, !dbg !6836
  br i1 %cmp27, label %if.then29, label %if.else30, !dbg !6837

if.then29:                                        ; preds = %if.else
  store i32 -1, ptr %retval, align 4, !dbg !6838
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6838

if.else30:                                        ; preds = %if.else
  %call31 = call ptr @__errno_location() #10, !dbg !6840
  %23 = load i32, ptr %call31, align 4, !dbg !6840, !tbaa !1185
  %cmp32 = icmp eq i32 %23, 22, !dbg !6842
  br i1 %cmp32, label %if.then34, label %if.else35, !dbg !6843

if.then34:                                        ; preds = %if.else30
  store i32 -3, ptr %retval, align 4, !dbg !6844
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6844

if.else35:                                        ; preds = %if.else30
  store i32 -3, ptr %retval, align 4, !dbg !6846
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6846

if.end36:                                         ; preds = %lor.lhs.false18
  store i32 0, ptr %retval, align 4, !dbg !6848
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6848

cleanup:                                          ; preds = %if.end36, %if.else35, %if.then34, %if.then29, %if.then25, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !6849
  call void @llvm.lifetime.end.p0(i64 8, ptr %icv_out) #9, !dbg !6849
  call void @llvm.lifetime.end.p0(i64 8, ptr %icv_in) #9, !dbg !6849
  call void @llvm.lifetime.end.p0(i64 8, ptr %icv_outlen) #9, !dbg !6849
  call void @llvm.lifetime.end.p0(i64 8, ptr %icv_inlen) #9, !dbg !6849
  %24 = load i32, ptr %retval, align 4, !dbg !6849
  ret i32 %24, !dbg !6849
}

declare !dbg !6850 i64 @libiconv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: nounwind willreturn memory(none)
declare !dbg !6854 ptr @__errno_location() #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(none) }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1131, !1132, !1133, !1134, !1135}
!llvm.ident = !{!1136}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "xmlCharEncodingAliases", scope: !2, file: !3, line: 61, type: !908, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !904, globals: !947, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "encoding.c", directory: "/local-ssd/libxml2-5hiu2bm3eabodlo3ma2tknpx3yddqhyc-build/aidengro/spack-stage-libxml2-2.9.10-5hiu2bm3eabodlo3ma2tknpx3yddqhyc/spack-src", checksumkind: CSK_MD5, checksum: "83a6c99fb058769e82c4f4059f9d2e40")
!4 = !{!5, !33, !771, !780, !803, !815, !824, !830, !836, !842, !863, !871}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 58, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/libxml/encoding.h", directory: "/local-ssd/libxml2-5hiu2bm3eabodlo3ma2tknpx3yddqhyc-build/aidengro/spack-stage-libxml2-2.9.10-5hiu2bm3eabodlo3ma2tknpx3yddqhyc/spack-src", checksumkind: CSK_MD5, checksum: "807b84fade38abad3ae0d9b6af714dbc")
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!9 = !DIEnumerator(name: "XML_CHAR_ENCODING_ERROR", value: -1)
!10 = !DIEnumerator(name: "XML_CHAR_ENCODING_NONE", value: 0)
!11 = !DIEnumerator(name: "XML_CHAR_ENCODING_UTF8", value: 1)
!12 = !DIEnumerator(name: "XML_CHAR_ENCODING_UTF16LE", value: 2)
!13 = !DIEnumerator(name: "XML_CHAR_ENCODING_UTF16BE", value: 3)
!14 = !DIEnumerator(name: "XML_CHAR_ENCODING_UCS4LE", value: 4)
!15 = !DIEnumerator(name: "XML_CHAR_ENCODING_UCS4BE", value: 5)
!16 = !DIEnumerator(name: "XML_CHAR_ENCODING_EBCDIC", value: 6)
!17 = !DIEnumerator(name: "XML_CHAR_ENCODING_UCS4_2143", value: 7)
!18 = !DIEnumerator(name: "XML_CHAR_ENCODING_UCS4_3412", value: 8)
!19 = !DIEnumerator(name: "XML_CHAR_ENCODING_UCS2", value: 9)
!20 = !DIEnumerator(name: "XML_CHAR_ENCODING_8859_1", value: 10)
!21 = !DIEnumerator(name: "XML_CHAR_ENCODING_8859_2", value: 11)
!22 = !DIEnumerator(name: "XML_CHAR_ENCODING_8859_3", value: 12)
!23 = !DIEnumerator(name: "XML_CHAR_ENCODING_8859_4", value: 13)
!24 = !DIEnumerator(name: "XML_CHAR_ENCODING_8859_5", value: 14)
!25 = !DIEnumerator(name: "XML_CHAR_ENCODING_8859_6", value: 15)
!26 = !DIEnumerator(name: "XML_CHAR_ENCODING_8859_7", value: 16)
!27 = !DIEnumerator(name: "XML_CHAR_ENCODING_8859_8", value: 17)
!28 = !DIEnumerator(name: "XML_CHAR_ENCODING_8859_9", value: 18)
!29 = !DIEnumerator(name: "XML_CHAR_ENCODING_2022_JP", value: 19)
!30 = !DIEnumerator(name: "XML_CHAR_ENCODING_SHIFT_JIS", value: 20)
!31 = !DIEnumerator(name: "XML_CHAR_ENCODING_EUC_JP", value: 21)
!32 = !DIEnumerator(name: "XML_CHAR_ENCODING_ASCII", value: 22)
!33 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !34, line: 99, baseType: !35, size: 32, elements: !36)
!34 = !DIFile(filename: "./include/libxml/xmlerror.h", directory: "/local-ssd/libxml2-5hiu2bm3eabodlo3ma2tknpx3yddqhyc-build/aidengro/spack-stage-libxml2-2.9.10-5hiu2bm3eabodlo3ma2tknpx3yddqhyc/spack-src", checksumkind: CSK_MD5, checksum: "28cd85987165565f9306b9b66a2b4e88")
!35 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!36 = !{!37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770}
!37 = !DIEnumerator(name: "XML_ERR_OK", value: 0)
!38 = !DIEnumerator(name: "XML_ERR_INTERNAL_ERROR", value: 1)
!39 = !DIEnumerator(name: "XML_ERR_NO_MEMORY", value: 2)
!40 = !DIEnumerator(name: "XML_ERR_DOCUMENT_START", value: 3)
!41 = !DIEnumerator(name: "XML_ERR_DOCUMENT_EMPTY", value: 4)
!42 = !DIEnumerator(name: "XML_ERR_DOCUMENT_END", value: 5)
!43 = !DIEnumerator(name: "XML_ERR_INVALID_HEX_CHARREF", value: 6)
!44 = !DIEnumerator(name: "XML_ERR_INVALID_DEC_CHARREF", value: 7)
!45 = !DIEnumerator(name: "XML_ERR_INVALID_CHARREF", value: 8)
!46 = !DIEnumerator(name: "XML_ERR_INVALID_CHAR", value: 9)
!47 = !DIEnumerator(name: "XML_ERR_CHARREF_AT_EOF", value: 10)
!48 = !DIEnumerator(name: "XML_ERR_CHARREF_IN_PROLOG", value: 11)
!49 = !DIEnumerator(name: "XML_ERR_CHARREF_IN_EPILOG", value: 12)
!50 = !DIEnumerator(name: "XML_ERR_CHARREF_IN_DTD", value: 13)
!51 = !DIEnumerator(name: "XML_ERR_ENTITYREF_AT_EOF", value: 14)
!52 = !DIEnumerator(name: "XML_ERR_ENTITYREF_IN_PROLOG", value: 15)
!53 = !DIEnumerator(name: "XML_ERR_ENTITYREF_IN_EPILOG", value: 16)
!54 = !DIEnumerator(name: "XML_ERR_ENTITYREF_IN_DTD", value: 17)
!55 = !DIEnumerator(name: "XML_ERR_PEREF_AT_EOF", value: 18)
!56 = !DIEnumerator(name: "XML_ERR_PEREF_IN_PROLOG", value: 19)
!57 = !DIEnumerator(name: "XML_ERR_PEREF_IN_EPILOG", value: 20)
!58 = !DIEnumerator(name: "XML_ERR_PEREF_IN_INT_SUBSET", value: 21)
!59 = !DIEnumerator(name: "XML_ERR_ENTITYREF_NO_NAME", value: 22)
!60 = !DIEnumerator(name: "XML_ERR_ENTITYREF_SEMICOL_MISSING", value: 23)
!61 = !DIEnumerator(name: "XML_ERR_PEREF_NO_NAME", value: 24)
!62 = !DIEnumerator(name: "XML_ERR_PEREF_SEMICOL_MISSING", value: 25)
!63 = !DIEnumerator(name: "XML_ERR_UNDECLARED_ENTITY", value: 26)
!64 = !DIEnumerator(name: "XML_WAR_UNDECLARED_ENTITY", value: 27)
!65 = !DIEnumerator(name: "XML_ERR_UNPARSED_ENTITY", value: 28)
!66 = !DIEnumerator(name: "XML_ERR_ENTITY_IS_EXTERNAL", value: 29)
!67 = !DIEnumerator(name: "XML_ERR_ENTITY_IS_PARAMETER", value: 30)
!68 = !DIEnumerator(name: "XML_ERR_UNKNOWN_ENCODING", value: 31)
!69 = !DIEnumerator(name: "XML_ERR_UNSUPPORTED_ENCODING", value: 32)
!70 = !DIEnumerator(name: "XML_ERR_STRING_NOT_STARTED", value: 33)
!71 = !DIEnumerator(name: "XML_ERR_STRING_NOT_CLOSED", value: 34)
!72 = !DIEnumerator(name: "XML_ERR_NS_DECL_ERROR", value: 35)
!73 = !DIEnumerator(name: "XML_ERR_ENTITY_NOT_STARTED", value: 36)
!74 = !DIEnumerator(name: "XML_ERR_ENTITY_NOT_FINISHED", value: 37)
!75 = !DIEnumerator(name: "XML_ERR_LT_IN_ATTRIBUTE", value: 38)
!76 = !DIEnumerator(name: "XML_ERR_ATTRIBUTE_NOT_STARTED", value: 39)
!77 = !DIEnumerator(name: "XML_ERR_ATTRIBUTE_NOT_FINISHED", value: 40)
!78 = !DIEnumerator(name: "XML_ERR_ATTRIBUTE_WITHOUT_VALUE", value: 41)
!79 = !DIEnumerator(name: "XML_ERR_ATTRIBUTE_REDEFINED", value: 42)
!80 = !DIEnumerator(name: "XML_ERR_LITERAL_NOT_STARTED", value: 43)
!81 = !DIEnumerator(name: "XML_ERR_LITERAL_NOT_FINISHED", value: 44)
!82 = !DIEnumerator(name: "XML_ERR_COMMENT_NOT_FINISHED", value: 45)
!83 = !DIEnumerator(name: "XML_ERR_PI_NOT_STARTED", value: 46)
!84 = !DIEnumerator(name: "XML_ERR_PI_NOT_FINISHED", value: 47)
!85 = !DIEnumerator(name: "XML_ERR_NOTATION_NOT_STARTED", value: 48)
!86 = !DIEnumerator(name: "XML_ERR_NOTATION_NOT_FINISHED", value: 49)
!87 = !DIEnumerator(name: "XML_ERR_ATTLIST_NOT_STARTED", value: 50)
!88 = !DIEnumerator(name: "XML_ERR_ATTLIST_NOT_FINISHED", value: 51)
!89 = !DIEnumerator(name: "XML_ERR_MIXED_NOT_STARTED", value: 52)
!90 = !DIEnumerator(name: "XML_ERR_MIXED_NOT_FINISHED", value: 53)
!91 = !DIEnumerator(name: "XML_ERR_ELEMCONTENT_NOT_STARTED", value: 54)
!92 = !DIEnumerator(name: "XML_ERR_ELEMCONTENT_NOT_FINISHED", value: 55)
!93 = !DIEnumerator(name: "XML_ERR_XMLDECL_NOT_STARTED", value: 56)
!94 = !DIEnumerator(name: "XML_ERR_XMLDECL_NOT_FINISHED", value: 57)
!95 = !DIEnumerator(name: "XML_ERR_CONDSEC_NOT_STARTED", value: 58)
!96 = !DIEnumerator(name: "XML_ERR_CONDSEC_NOT_FINISHED", value: 59)
!97 = !DIEnumerator(name: "XML_ERR_EXT_SUBSET_NOT_FINISHED", value: 60)
!98 = !DIEnumerator(name: "XML_ERR_DOCTYPE_NOT_FINISHED", value: 61)
!99 = !DIEnumerator(name: "XML_ERR_MISPLACED_CDATA_END", value: 62)
!100 = !DIEnumerator(name: "XML_ERR_CDATA_NOT_FINISHED", value: 63)
!101 = !DIEnumerator(name: "XML_ERR_RESERVED_XML_NAME", value: 64)
!102 = !DIEnumerator(name: "XML_ERR_SPACE_REQUIRED", value: 65)
!103 = !DIEnumerator(name: "XML_ERR_SEPARATOR_REQUIRED", value: 66)
!104 = !DIEnumerator(name: "XML_ERR_NMTOKEN_REQUIRED", value: 67)
!105 = !DIEnumerator(name: "XML_ERR_NAME_REQUIRED", value: 68)
!106 = !DIEnumerator(name: "XML_ERR_PCDATA_REQUIRED", value: 69)
!107 = !DIEnumerator(name: "XML_ERR_URI_REQUIRED", value: 70)
!108 = !DIEnumerator(name: "XML_ERR_PUBID_REQUIRED", value: 71)
!109 = !DIEnumerator(name: "XML_ERR_LT_REQUIRED", value: 72)
!110 = !DIEnumerator(name: "XML_ERR_GT_REQUIRED", value: 73)
!111 = !DIEnumerator(name: "XML_ERR_LTSLASH_REQUIRED", value: 74)
!112 = !DIEnumerator(name: "XML_ERR_EQUAL_REQUIRED", value: 75)
!113 = !DIEnumerator(name: "XML_ERR_TAG_NAME_MISMATCH", value: 76)
!114 = !DIEnumerator(name: "XML_ERR_TAG_NOT_FINISHED", value: 77)
!115 = !DIEnumerator(name: "XML_ERR_STANDALONE_VALUE", value: 78)
!116 = !DIEnumerator(name: "XML_ERR_ENCODING_NAME", value: 79)
!117 = !DIEnumerator(name: "XML_ERR_HYPHEN_IN_COMMENT", value: 80)
!118 = !DIEnumerator(name: "XML_ERR_INVALID_ENCODING", value: 81)
!119 = !DIEnumerator(name: "XML_ERR_EXT_ENTITY_STANDALONE", value: 82)
!120 = !DIEnumerator(name: "XML_ERR_CONDSEC_INVALID", value: 83)
!121 = !DIEnumerator(name: "XML_ERR_VALUE_REQUIRED", value: 84)
!122 = !DIEnumerator(name: "XML_ERR_NOT_WELL_BALANCED", value: 85)
!123 = !DIEnumerator(name: "XML_ERR_EXTRA_CONTENT", value: 86)
!124 = !DIEnumerator(name: "XML_ERR_ENTITY_CHAR_ERROR", value: 87)
!125 = !DIEnumerator(name: "XML_ERR_ENTITY_PE_INTERNAL", value: 88)
!126 = !DIEnumerator(name: "XML_ERR_ENTITY_LOOP", value: 89)
!127 = !DIEnumerator(name: "XML_ERR_ENTITY_BOUNDARY", value: 90)
!128 = !DIEnumerator(name: "XML_ERR_INVALID_URI", value: 91)
!129 = !DIEnumerator(name: "XML_ERR_URI_FRAGMENT", value: 92)
!130 = !DIEnumerator(name: "XML_WAR_CATALOG_PI", value: 93)
!131 = !DIEnumerator(name: "XML_ERR_NO_DTD", value: 94)
!132 = !DIEnumerator(name: "XML_ERR_CONDSEC_INVALID_KEYWORD", value: 95)
!133 = !DIEnumerator(name: "XML_ERR_VERSION_MISSING", value: 96)
!134 = !DIEnumerator(name: "XML_WAR_UNKNOWN_VERSION", value: 97)
!135 = !DIEnumerator(name: "XML_WAR_LANG_VALUE", value: 98)
!136 = !DIEnumerator(name: "XML_WAR_NS_URI", value: 99)
!137 = !DIEnumerator(name: "XML_WAR_NS_URI_RELATIVE", value: 100)
!138 = !DIEnumerator(name: "XML_ERR_MISSING_ENCODING", value: 101)
!139 = !DIEnumerator(name: "XML_WAR_SPACE_VALUE", value: 102)
!140 = !DIEnumerator(name: "XML_ERR_NOT_STANDALONE", value: 103)
!141 = !DIEnumerator(name: "XML_ERR_ENTITY_PROCESSING", value: 104)
!142 = !DIEnumerator(name: "XML_ERR_NOTATION_PROCESSING", value: 105)
!143 = !DIEnumerator(name: "XML_WAR_NS_COLUMN", value: 106)
!144 = !DIEnumerator(name: "XML_WAR_ENTITY_REDEFINED", value: 107)
!145 = !DIEnumerator(name: "XML_ERR_UNKNOWN_VERSION", value: 108)
!146 = !DIEnumerator(name: "XML_ERR_VERSION_MISMATCH", value: 109)
!147 = !DIEnumerator(name: "XML_ERR_NAME_TOO_LONG", value: 110)
!148 = !DIEnumerator(name: "XML_ERR_USER_STOP", value: 111)
!149 = !DIEnumerator(name: "XML_NS_ERR_XML_NAMESPACE", value: 200)
!150 = !DIEnumerator(name: "XML_NS_ERR_UNDEFINED_NAMESPACE", value: 201)
!151 = !DIEnumerator(name: "XML_NS_ERR_QNAME", value: 202)
!152 = !DIEnumerator(name: "XML_NS_ERR_ATTRIBUTE_REDEFINED", value: 203)
!153 = !DIEnumerator(name: "XML_NS_ERR_EMPTY", value: 204)
!154 = !DIEnumerator(name: "XML_NS_ERR_COLON", value: 205)
!155 = !DIEnumerator(name: "XML_DTD_ATTRIBUTE_DEFAULT", value: 500)
!156 = !DIEnumerator(name: "XML_DTD_ATTRIBUTE_REDEFINED", value: 501)
!157 = !DIEnumerator(name: "XML_DTD_ATTRIBUTE_VALUE", value: 502)
!158 = !DIEnumerator(name: "XML_DTD_CONTENT_ERROR", value: 503)
!159 = !DIEnumerator(name: "XML_DTD_CONTENT_MODEL", value: 504)
!160 = !DIEnumerator(name: "XML_DTD_CONTENT_NOT_DETERMINIST", value: 505)
!161 = !DIEnumerator(name: "XML_DTD_DIFFERENT_PREFIX", value: 506)
!162 = !DIEnumerator(name: "XML_DTD_ELEM_DEFAULT_NAMESPACE", value: 507)
!163 = !DIEnumerator(name: "XML_DTD_ELEM_NAMESPACE", value: 508)
!164 = !DIEnumerator(name: "XML_DTD_ELEM_REDEFINED", value: 509)
!165 = !DIEnumerator(name: "XML_DTD_EMPTY_NOTATION", value: 510)
!166 = !DIEnumerator(name: "XML_DTD_ENTITY_TYPE", value: 511)
!167 = !DIEnumerator(name: "XML_DTD_ID_FIXED", value: 512)
!168 = !DIEnumerator(name: "XML_DTD_ID_REDEFINED", value: 513)
!169 = !DIEnumerator(name: "XML_DTD_ID_SUBSET", value: 514)
!170 = !DIEnumerator(name: "XML_DTD_INVALID_CHILD", value: 515)
!171 = !DIEnumerator(name: "XML_DTD_INVALID_DEFAULT", value: 516)
!172 = !DIEnumerator(name: "XML_DTD_LOAD_ERROR", value: 517)
!173 = !DIEnumerator(name: "XML_DTD_MISSING_ATTRIBUTE", value: 518)
!174 = !DIEnumerator(name: "XML_DTD_MIXED_CORRUPT", value: 519)
!175 = !DIEnumerator(name: "XML_DTD_MULTIPLE_ID", value: 520)
!176 = !DIEnumerator(name: "XML_DTD_NO_DOC", value: 521)
!177 = !DIEnumerator(name: "XML_DTD_NO_DTD", value: 522)
!178 = !DIEnumerator(name: "XML_DTD_NO_ELEM_NAME", value: 523)
!179 = !DIEnumerator(name: "XML_DTD_NO_PREFIX", value: 524)
!180 = !DIEnumerator(name: "XML_DTD_NO_ROOT", value: 525)
!181 = !DIEnumerator(name: "XML_DTD_NOTATION_REDEFINED", value: 526)
!182 = !DIEnumerator(name: "XML_DTD_NOTATION_VALUE", value: 527)
!183 = !DIEnumerator(name: "XML_DTD_NOT_EMPTY", value: 528)
!184 = !DIEnumerator(name: "XML_DTD_NOT_PCDATA", value: 529)
!185 = !DIEnumerator(name: "XML_DTD_NOT_STANDALONE", value: 530)
!186 = !DIEnumerator(name: "XML_DTD_ROOT_NAME", value: 531)
!187 = !DIEnumerator(name: "XML_DTD_STANDALONE_WHITE_SPACE", value: 532)
!188 = !DIEnumerator(name: "XML_DTD_UNKNOWN_ATTRIBUTE", value: 533)
!189 = !DIEnumerator(name: "XML_DTD_UNKNOWN_ELEM", value: 534)
!190 = !DIEnumerator(name: "XML_DTD_UNKNOWN_ENTITY", value: 535)
!191 = !DIEnumerator(name: "XML_DTD_UNKNOWN_ID", value: 536)
!192 = !DIEnumerator(name: "XML_DTD_UNKNOWN_NOTATION", value: 537)
!193 = !DIEnumerator(name: "XML_DTD_STANDALONE_DEFAULTED", value: 538)
!194 = !DIEnumerator(name: "XML_DTD_XMLID_VALUE", value: 539)
!195 = !DIEnumerator(name: "XML_DTD_XMLID_TYPE", value: 540)
!196 = !DIEnumerator(name: "XML_DTD_DUP_TOKEN", value: 541)
!197 = !DIEnumerator(name: "XML_HTML_STRUCURE_ERROR", value: 800)
!198 = !DIEnumerator(name: "XML_HTML_UNKNOWN_TAG", value: 801)
!199 = !DIEnumerator(name: "XML_RNGP_ANYNAME_ATTR_ANCESTOR", value: 1000)
!200 = !DIEnumerator(name: "XML_RNGP_ATTR_CONFLICT", value: 1001)
!201 = !DIEnumerator(name: "XML_RNGP_ATTRIBUTE_CHILDREN", value: 1002)
!202 = !DIEnumerator(name: "XML_RNGP_ATTRIBUTE_CONTENT", value: 1003)
!203 = !DIEnumerator(name: "XML_RNGP_ATTRIBUTE_EMPTY", value: 1004)
!204 = !DIEnumerator(name: "XML_RNGP_ATTRIBUTE_NOOP", value: 1005)
!205 = !DIEnumerator(name: "XML_RNGP_CHOICE_CONTENT", value: 1006)
!206 = !DIEnumerator(name: "XML_RNGP_CHOICE_EMPTY", value: 1007)
!207 = !DIEnumerator(name: "XML_RNGP_CREATE_FAILURE", value: 1008)
!208 = !DIEnumerator(name: "XML_RNGP_DATA_CONTENT", value: 1009)
!209 = !DIEnumerator(name: "XML_RNGP_DEF_CHOICE_AND_INTERLEAVE", value: 1010)
!210 = !DIEnumerator(name: "XML_RNGP_DEFINE_CREATE_FAILED", value: 1011)
!211 = !DIEnumerator(name: "XML_RNGP_DEFINE_EMPTY", value: 1012)
!212 = !DIEnumerator(name: "XML_RNGP_DEFINE_MISSING", value: 1013)
!213 = !DIEnumerator(name: "XML_RNGP_DEFINE_NAME_MISSING", value: 1014)
!214 = !DIEnumerator(name: "XML_RNGP_ELEM_CONTENT_EMPTY", value: 1015)
!215 = !DIEnumerator(name: "XML_RNGP_ELEM_CONTENT_ERROR", value: 1016)
!216 = !DIEnumerator(name: "XML_RNGP_ELEMENT_EMPTY", value: 1017)
!217 = !DIEnumerator(name: "XML_RNGP_ELEMENT_CONTENT", value: 1018)
!218 = !DIEnumerator(name: "XML_RNGP_ELEMENT_NAME", value: 1019)
!219 = !DIEnumerator(name: "XML_RNGP_ELEMENT_NO_CONTENT", value: 1020)
!220 = !DIEnumerator(name: "XML_RNGP_ELEM_TEXT_CONFLICT", value: 1021)
!221 = !DIEnumerator(name: "XML_RNGP_EMPTY", value: 1022)
!222 = !DIEnumerator(name: "XML_RNGP_EMPTY_CONSTRUCT", value: 1023)
!223 = !DIEnumerator(name: "XML_RNGP_EMPTY_CONTENT", value: 1024)
!224 = !DIEnumerator(name: "XML_RNGP_EMPTY_NOT_EMPTY", value: 1025)
!225 = !DIEnumerator(name: "XML_RNGP_ERROR_TYPE_LIB", value: 1026)
!226 = !DIEnumerator(name: "XML_RNGP_EXCEPT_EMPTY", value: 1027)
!227 = !DIEnumerator(name: "XML_RNGP_EXCEPT_MISSING", value: 1028)
!228 = !DIEnumerator(name: "XML_RNGP_EXCEPT_MULTIPLE", value: 1029)
!229 = !DIEnumerator(name: "XML_RNGP_EXCEPT_NO_CONTENT", value: 1030)
!230 = !DIEnumerator(name: "XML_RNGP_EXTERNALREF_EMTPY", value: 1031)
!231 = !DIEnumerator(name: "XML_RNGP_EXTERNAL_REF_FAILURE", value: 1032)
!232 = !DIEnumerator(name: "XML_RNGP_EXTERNALREF_RECURSE", value: 1033)
!233 = !DIEnumerator(name: "XML_RNGP_FORBIDDEN_ATTRIBUTE", value: 1034)
!234 = !DIEnumerator(name: "XML_RNGP_FOREIGN_ELEMENT", value: 1035)
!235 = !DIEnumerator(name: "XML_RNGP_GRAMMAR_CONTENT", value: 1036)
!236 = !DIEnumerator(name: "XML_RNGP_GRAMMAR_EMPTY", value: 1037)
!237 = !DIEnumerator(name: "XML_RNGP_GRAMMAR_MISSING", value: 1038)
!238 = !DIEnumerator(name: "XML_RNGP_GRAMMAR_NO_START", value: 1039)
!239 = !DIEnumerator(name: "XML_RNGP_GROUP_ATTR_CONFLICT", value: 1040)
!240 = !DIEnumerator(name: "XML_RNGP_HREF_ERROR", value: 1041)
!241 = !DIEnumerator(name: "XML_RNGP_INCLUDE_EMPTY", value: 1042)
!242 = !DIEnumerator(name: "XML_RNGP_INCLUDE_FAILURE", value: 1043)
!243 = !DIEnumerator(name: "XML_RNGP_INCLUDE_RECURSE", value: 1044)
!244 = !DIEnumerator(name: "XML_RNGP_INTERLEAVE_ADD", value: 1045)
!245 = !DIEnumerator(name: "XML_RNGP_INTERLEAVE_CREATE_FAILED", value: 1046)
!246 = !DIEnumerator(name: "XML_RNGP_INTERLEAVE_EMPTY", value: 1047)
!247 = !DIEnumerator(name: "XML_RNGP_INTERLEAVE_NO_CONTENT", value: 1048)
!248 = !DIEnumerator(name: "XML_RNGP_INVALID_DEFINE_NAME", value: 1049)
!249 = !DIEnumerator(name: "XML_RNGP_INVALID_URI", value: 1050)
!250 = !DIEnumerator(name: "XML_RNGP_INVALID_VALUE", value: 1051)
!251 = !DIEnumerator(name: "XML_RNGP_MISSING_HREF", value: 1052)
!252 = !DIEnumerator(name: "XML_RNGP_NAME_MISSING", value: 1053)
!253 = !DIEnumerator(name: "XML_RNGP_NEED_COMBINE", value: 1054)
!254 = !DIEnumerator(name: "XML_RNGP_NOTALLOWED_NOT_EMPTY", value: 1055)
!255 = !DIEnumerator(name: "XML_RNGP_NSNAME_ATTR_ANCESTOR", value: 1056)
!256 = !DIEnumerator(name: "XML_RNGP_NSNAME_NO_NS", value: 1057)
!257 = !DIEnumerator(name: "XML_RNGP_PARAM_FORBIDDEN", value: 1058)
!258 = !DIEnumerator(name: "XML_RNGP_PARAM_NAME_MISSING", value: 1059)
!259 = !DIEnumerator(name: "XML_RNGP_PARENTREF_CREATE_FAILED", value: 1060)
!260 = !DIEnumerator(name: "XML_RNGP_PARENTREF_NAME_INVALID", value: 1061)
!261 = !DIEnumerator(name: "XML_RNGP_PARENTREF_NO_NAME", value: 1062)
!262 = !DIEnumerator(name: "XML_RNGP_PARENTREF_NO_PARENT", value: 1063)
!263 = !DIEnumerator(name: "XML_RNGP_PARENTREF_NOT_EMPTY", value: 1064)
!264 = !DIEnumerator(name: "XML_RNGP_PARSE_ERROR", value: 1065)
!265 = !DIEnumerator(name: "XML_RNGP_PAT_ANYNAME_EXCEPT_ANYNAME", value: 1066)
!266 = !DIEnumerator(name: "XML_RNGP_PAT_ATTR_ATTR", value: 1067)
!267 = !DIEnumerator(name: "XML_RNGP_PAT_ATTR_ELEM", value: 1068)
!268 = !DIEnumerator(name: "XML_RNGP_PAT_DATA_EXCEPT_ATTR", value: 1069)
!269 = !DIEnumerator(name: "XML_RNGP_PAT_DATA_EXCEPT_ELEM", value: 1070)
!270 = !DIEnumerator(name: "XML_RNGP_PAT_DATA_EXCEPT_EMPTY", value: 1071)
!271 = !DIEnumerator(name: "XML_RNGP_PAT_DATA_EXCEPT_GROUP", value: 1072)
!272 = !DIEnumerator(name: "XML_RNGP_PAT_DATA_EXCEPT_INTERLEAVE", value: 1073)
!273 = !DIEnumerator(name: "XML_RNGP_PAT_DATA_EXCEPT_LIST", value: 1074)
!274 = !DIEnumerator(name: "XML_RNGP_PAT_DATA_EXCEPT_ONEMORE", value: 1075)
!275 = !DIEnumerator(name: "XML_RNGP_PAT_DATA_EXCEPT_REF", value: 1076)
!276 = !DIEnumerator(name: "XML_RNGP_PAT_DATA_EXCEPT_TEXT", value: 1077)
!277 = !DIEnumerator(name: "XML_RNGP_PAT_LIST_ATTR", value: 1078)
!278 = !DIEnumerator(name: "XML_RNGP_PAT_LIST_ELEM", value: 1079)
!279 = !DIEnumerator(name: "XML_RNGP_PAT_LIST_INTERLEAVE", value: 1080)
!280 = !DIEnumerator(name: "XML_RNGP_PAT_LIST_LIST", value: 1081)
!281 = !DIEnumerator(name: "XML_RNGP_PAT_LIST_REF", value: 1082)
!282 = !DIEnumerator(name: "XML_RNGP_PAT_LIST_TEXT", value: 1083)
!283 = !DIEnumerator(name: "XML_RNGP_PAT_NSNAME_EXCEPT_ANYNAME", value: 1084)
!284 = !DIEnumerator(name: "XML_RNGP_PAT_NSNAME_EXCEPT_NSNAME", value: 1085)
!285 = !DIEnumerator(name: "XML_RNGP_PAT_ONEMORE_GROUP_ATTR", value: 1086)
!286 = !DIEnumerator(name: "XML_RNGP_PAT_ONEMORE_INTERLEAVE_ATTR", value: 1087)
!287 = !DIEnumerator(name: "XML_RNGP_PAT_START_ATTR", value: 1088)
!288 = !DIEnumerator(name: "XML_RNGP_PAT_START_DATA", value: 1089)
!289 = !DIEnumerator(name: "XML_RNGP_PAT_START_EMPTY", value: 1090)
!290 = !DIEnumerator(name: "XML_RNGP_PAT_START_GROUP", value: 1091)
!291 = !DIEnumerator(name: "XML_RNGP_PAT_START_INTERLEAVE", value: 1092)
!292 = !DIEnumerator(name: "XML_RNGP_PAT_START_LIST", value: 1093)
!293 = !DIEnumerator(name: "XML_RNGP_PAT_START_ONEMORE", value: 1094)
!294 = !DIEnumerator(name: "XML_RNGP_PAT_START_TEXT", value: 1095)
!295 = !DIEnumerator(name: "XML_RNGP_PAT_START_VALUE", value: 1096)
!296 = !DIEnumerator(name: "XML_RNGP_PREFIX_UNDEFINED", value: 1097)
!297 = !DIEnumerator(name: "XML_RNGP_REF_CREATE_FAILED", value: 1098)
!298 = !DIEnumerator(name: "XML_RNGP_REF_CYCLE", value: 1099)
!299 = !DIEnumerator(name: "XML_RNGP_REF_NAME_INVALID", value: 1100)
!300 = !DIEnumerator(name: "XML_RNGP_REF_NO_DEF", value: 1101)
!301 = !DIEnumerator(name: "XML_RNGP_REF_NO_NAME", value: 1102)
!302 = !DIEnumerator(name: "XML_RNGP_REF_NOT_EMPTY", value: 1103)
!303 = !DIEnumerator(name: "XML_RNGP_START_CHOICE_AND_INTERLEAVE", value: 1104)
!304 = !DIEnumerator(name: "XML_RNGP_START_CONTENT", value: 1105)
!305 = !DIEnumerator(name: "XML_RNGP_START_EMPTY", value: 1106)
!306 = !DIEnumerator(name: "XML_RNGP_START_MISSING", value: 1107)
!307 = !DIEnumerator(name: "XML_RNGP_TEXT_EXPECTED", value: 1108)
!308 = !DIEnumerator(name: "XML_RNGP_TEXT_HAS_CHILD", value: 1109)
!309 = !DIEnumerator(name: "XML_RNGP_TYPE_MISSING", value: 1110)
!310 = !DIEnumerator(name: "XML_RNGP_TYPE_NOT_FOUND", value: 1111)
!311 = !DIEnumerator(name: "XML_RNGP_TYPE_VALUE", value: 1112)
!312 = !DIEnumerator(name: "XML_RNGP_UNKNOWN_ATTRIBUTE", value: 1113)
!313 = !DIEnumerator(name: "XML_RNGP_UNKNOWN_COMBINE", value: 1114)
!314 = !DIEnumerator(name: "XML_RNGP_UNKNOWN_CONSTRUCT", value: 1115)
!315 = !DIEnumerator(name: "XML_RNGP_UNKNOWN_TYPE_LIB", value: 1116)
!316 = !DIEnumerator(name: "XML_RNGP_URI_FRAGMENT", value: 1117)
!317 = !DIEnumerator(name: "XML_RNGP_URI_NOT_ABSOLUTE", value: 1118)
!318 = !DIEnumerator(name: "XML_RNGP_VALUE_EMPTY", value: 1119)
!319 = !DIEnumerator(name: "XML_RNGP_VALUE_NO_CONTENT", value: 1120)
!320 = !DIEnumerator(name: "XML_RNGP_XMLNS_NAME", value: 1121)
!321 = !DIEnumerator(name: "XML_RNGP_XML_NS", value: 1122)
!322 = !DIEnumerator(name: "XML_XPATH_EXPRESSION_OK", value: 1200)
!323 = !DIEnumerator(name: "XML_XPATH_NUMBER_ERROR", value: 1201)
!324 = !DIEnumerator(name: "XML_XPATH_UNFINISHED_LITERAL_ERROR", value: 1202)
!325 = !DIEnumerator(name: "XML_XPATH_START_LITERAL_ERROR", value: 1203)
!326 = !DIEnumerator(name: "XML_XPATH_VARIABLE_REF_ERROR", value: 1204)
!327 = !DIEnumerator(name: "XML_XPATH_UNDEF_VARIABLE_ERROR", value: 1205)
!328 = !DIEnumerator(name: "XML_XPATH_INVALID_PREDICATE_ERROR", value: 1206)
!329 = !DIEnumerator(name: "XML_XPATH_EXPR_ERROR", value: 1207)
!330 = !DIEnumerator(name: "XML_XPATH_UNCLOSED_ERROR", value: 1208)
!331 = !DIEnumerator(name: "XML_XPATH_UNKNOWN_FUNC_ERROR", value: 1209)
!332 = !DIEnumerator(name: "XML_XPATH_INVALID_OPERAND", value: 1210)
!333 = !DIEnumerator(name: "XML_XPATH_INVALID_TYPE", value: 1211)
!334 = !DIEnumerator(name: "XML_XPATH_INVALID_ARITY", value: 1212)
!335 = !DIEnumerator(name: "XML_XPATH_INVALID_CTXT_SIZE", value: 1213)
!336 = !DIEnumerator(name: "XML_XPATH_INVALID_CTXT_POSITION", value: 1214)
!337 = !DIEnumerator(name: "XML_XPATH_MEMORY_ERROR", value: 1215)
!338 = !DIEnumerator(name: "XML_XPTR_SYNTAX_ERROR", value: 1216)
!339 = !DIEnumerator(name: "XML_XPTR_RESOURCE_ERROR", value: 1217)
!340 = !DIEnumerator(name: "XML_XPTR_SUB_RESOURCE_ERROR", value: 1218)
!341 = !DIEnumerator(name: "XML_XPATH_UNDEF_PREFIX_ERROR", value: 1219)
!342 = !DIEnumerator(name: "XML_XPATH_ENCODING_ERROR", value: 1220)
!343 = !DIEnumerator(name: "XML_XPATH_INVALID_CHAR_ERROR", value: 1221)
!344 = !DIEnumerator(name: "XML_TREE_INVALID_HEX", value: 1300)
!345 = !DIEnumerator(name: "XML_TREE_INVALID_DEC", value: 1301)
!346 = !DIEnumerator(name: "XML_TREE_UNTERMINATED_ENTITY", value: 1302)
!347 = !DIEnumerator(name: "XML_TREE_NOT_UTF8", value: 1303)
!348 = !DIEnumerator(name: "XML_SAVE_NOT_UTF8", value: 1400)
!349 = !DIEnumerator(name: "XML_SAVE_CHAR_INVALID", value: 1401)
!350 = !DIEnumerator(name: "XML_SAVE_NO_DOCTYPE", value: 1402)
!351 = !DIEnumerator(name: "XML_SAVE_UNKNOWN_ENCODING", value: 1403)
!352 = !DIEnumerator(name: "XML_REGEXP_COMPILE_ERROR", value: 1450)
!353 = !DIEnumerator(name: "XML_IO_UNKNOWN", value: 1500)
!354 = !DIEnumerator(name: "XML_IO_EACCES", value: 1501)
!355 = !DIEnumerator(name: "XML_IO_EAGAIN", value: 1502)
!356 = !DIEnumerator(name: "XML_IO_EBADF", value: 1503)
!357 = !DIEnumerator(name: "XML_IO_EBADMSG", value: 1504)
!358 = !DIEnumerator(name: "XML_IO_EBUSY", value: 1505)
!359 = !DIEnumerator(name: "XML_IO_ECANCELED", value: 1506)
!360 = !DIEnumerator(name: "XML_IO_ECHILD", value: 1507)
!361 = !DIEnumerator(name: "XML_IO_EDEADLK", value: 1508)
!362 = !DIEnumerator(name: "XML_IO_EDOM", value: 1509)
!363 = !DIEnumerator(name: "XML_IO_EEXIST", value: 1510)
!364 = !DIEnumerator(name: "XML_IO_EFAULT", value: 1511)
!365 = !DIEnumerator(name: "XML_IO_EFBIG", value: 1512)
!366 = !DIEnumerator(name: "XML_IO_EINPROGRESS", value: 1513)
!367 = !DIEnumerator(name: "XML_IO_EINTR", value: 1514)
!368 = !DIEnumerator(name: "XML_IO_EINVAL", value: 1515)
!369 = !DIEnumerator(name: "XML_IO_EIO", value: 1516)
!370 = !DIEnumerator(name: "XML_IO_EISDIR", value: 1517)
!371 = !DIEnumerator(name: "XML_IO_EMFILE", value: 1518)
!372 = !DIEnumerator(name: "XML_IO_EMLINK", value: 1519)
!373 = !DIEnumerator(name: "XML_IO_EMSGSIZE", value: 1520)
!374 = !DIEnumerator(name: "XML_IO_ENAMETOOLONG", value: 1521)
!375 = !DIEnumerator(name: "XML_IO_ENFILE", value: 1522)
!376 = !DIEnumerator(name: "XML_IO_ENODEV", value: 1523)
!377 = !DIEnumerator(name: "XML_IO_ENOENT", value: 1524)
!378 = !DIEnumerator(name: "XML_IO_ENOEXEC", value: 1525)
!379 = !DIEnumerator(name: "XML_IO_ENOLCK", value: 1526)
!380 = !DIEnumerator(name: "XML_IO_ENOMEM", value: 1527)
!381 = !DIEnumerator(name: "XML_IO_ENOSPC", value: 1528)
!382 = !DIEnumerator(name: "XML_IO_ENOSYS", value: 1529)
!383 = !DIEnumerator(name: "XML_IO_ENOTDIR", value: 1530)
!384 = !DIEnumerator(name: "XML_IO_ENOTEMPTY", value: 1531)
!385 = !DIEnumerator(name: "XML_IO_ENOTSUP", value: 1532)
!386 = !DIEnumerator(name: "XML_IO_ENOTTY", value: 1533)
!387 = !DIEnumerator(name: "XML_IO_ENXIO", value: 1534)
!388 = !DIEnumerator(name: "XML_IO_EPERM", value: 1535)
!389 = !DIEnumerator(name: "XML_IO_EPIPE", value: 1536)
!390 = !DIEnumerator(name: "XML_IO_ERANGE", value: 1537)
!391 = !DIEnumerator(name: "XML_IO_EROFS", value: 1538)
!392 = !DIEnumerator(name: "XML_IO_ESPIPE", value: 1539)
!393 = !DIEnumerator(name: "XML_IO_ESRCH", value: 1540)
!394 = !DIEnumerator(name: "XML_IO_ETIMEDOUT", value: 1541)
!395 = !DIEnumerator(name: "XML_IO_EXDEV", value: 1542)
!396 = !DIEnumerator(name: "XML_IO_NETWORK_ATTEMPT", value: 1543)
!397 = !DIEnumerator(name: "XML_IO_ENCODER", value: 1544)
!398 = !DIEnumerator(name: "XML_IO_FLUSH", value: 1545)
!399 = !DIEnumerator(name: "XML_IO_WRITE", value: 1546)
!400 = !DIEnumerator(name: "XML_IO_NO_INPUT", value: 1547)
!401 = !DIEnumerator(name: "XML_IO_BUFFER_FULL", value: 1548)
!402 = !DIEnumerator(name: "XML_IO_LOAD_ERROR", value: 1549)
!403 = !DIEnumerator(name: "XML_IO_ENOTSOCK", value: 1550)
!404 = !DIEnumerator(name: "XML_IO_EISCONN", value: 1551)
!405 = !DIEnumerator(name: "XML_IO_ECONNREFUSED", value: 1552)
!406 = !DIEnumerator(name: "XML_IO_ENETUNREACH", value: 1553)
!407 = !DIEnumerator(name: "XML_IO_EADDRINUSE", value: 1554)
!408 = !DIEnumerator(name: "XML_IO_EALREADY", value: 1555)
!409 = !DIEnumerator(name: "XML_IO_EAFNOSUPPORT", value: 1556)
!410 = !DIEnumerator(name: "XML_XINCLUDE_RECURSION", value: 1600)
!411 = !DIEnumerator(name: "XML_XINCLUDE_PARSE_VALUE", value: 1601)
!412 = !DIEnumerator(name: "XML_XINCLUDE_ENTITY_DEF_MISMATCH", value: 1602)
!413 = !DIEnumerator(name: "XML_XINCLUDE_NO_HREF", value: 1603)
!414 = !DIEnumerator(name: "XML_XINCLUDE_NO_FALLBACK", value: 1604)
!415 = !DIEnumerator(name: "XML_XINCLUDE_HREF_URI", value: 1605)
!416 = !DIEnumerator(name: "XML_XINCLUDE_TEXT_FRAGMENT", value: 1606)
!417 = !DIEnumerator(name: "XML_XINCLUDE_TEXT_DOCUMENT", value: 1607)
!418 = !DIEnumerator(name: "XML_XINCLUDE_INVALID_CHAR", value: 1608)
!419 = !DIEnumerator(name: "XML_XINCLUDE_BUILD_FAILED", value: 1609)
!420 = !DIEnumerator(name: "XML_XINCLUDE_UNKNOWN_ENCODING", value: 1610)
!421 = !DIEnumerator(name: "XML_XINCLUDE_MULTIPLE_ROOT", value: 1611)
!422 = !DIEnumerator(name: "XML_XINCLUDE_XPTR_FAILED", value: 1612)
!423 = !DIEnumerator(name: "XML_XINCLUDE_XPTR_RESULT", value: 1613)
!424 = !DIEnumerator(name: "XML_XINCLUDE_INCLUDE_IN_INCLUDE", value: 1614)
!425 = !DIEnumerator(name: "XML_XINCLUDE_FALLBACKS_IN_INCLUDE", value: 1615)
!426 = !DIEnumerator(name: "XML_XINCLUDE_FALLBACK_NOT_IN_INCLUDE", value: 1616)
!427 = !DIEnumerator(name: "XML_XINCLUDE_DEPRECATED_NS", value: 1617)
!428 = !DIEnumerator(name: "XML_XINCLUDE_FRAGMENT_ID", value: 1618)
!429 = !DIEnumerator(name: "XML_CATALOG_MISSING_ATTR", value: 1650)
!430 = !DIEnumerator(name: "XML_CATALOG_ENTRY_BROKEN", value: 1651)
!431 = !DIEnumerator(name: "XML_CATALOG_PREFER_VALUE", value: 1652)
!432 = !DIEnumerator(name: "XML_CATALOG_NOT_CATALOG", value: 1653)
!433 = !DIEnumerator(name: "XML_CATALOG_RECURSION", value: 1654)
!434 = !DIEnumerator(name: "XML_SCHEMAP_PREFIX_UNDEFINED", value: 1700)
!435 = !DIEnumerator(name: "XML_SCHEMAP_ATTRFORMDEFAULT_VALUE", value: 1701)
!436 = !DIEnumerator(name: "XML_SCHEMAP_ATTRGRP_NONAME_NOREF", value: 1702)
!437 = !DIEnumerator(name: "XML_SCHEMAP_ATTR_NONAME_NOREF", value: 1703)
!438 = !DIEnumerator(name: "XML_SCHEMAP_COMPLEXTYPE_NONAME_NOREF", value: 1704)
!439 = !DIEnumerator(name: "XML_SCHEMAP_ELEMFORMDEFAULT_VALUE", value: 1705)
!440 = !DIEnumerator(name: "XML_SCHEMAP_ELEM_NONAME_NOREF", value: 1706)
!441 = !DIEnumerator(name: "XML_SCHEMAP_EXTENSION_NO_BASE", value: 1707)
!442 = !DIEnumerator(name: "XML_SCHEMAP_FACET_NO_VALUE", value: 1708)
!443 = !DIEnumerator(name: "XML_SCHEMAP_FAILED_BUILD_IMPORT", value: 1709)
!444 = !DIEnumerator(name: "XML_SCHEMAP_GROUP_NONAME_NOREF", value: 1710)
!445 = !DIEnumerator(name: "XML_SCHEMAP_IMPORT_NAMESPACE_NOT_URI", value: 1711)
!446 = !DIEnumerator(name: "XML_SCHEMAP_IMPORT_REDEFINE_NSNAME", value: 1712)
!447 = !DIEnumerator(name: "XML_SCHEMAP_IMPORT_SCHEMA_NOT_URI", value: 1713)
!448 = !DIEnumerator(name: "XML_SCHEMAP_INVALID_BOOLEAN", value: 1714)
!449 = !DIEnumerator(name: "XML_SCHEMAP_INVALID_ENUM", value: 1715)
!450 = !DIEnumerator(name: "XML_SCHEMAP_INVALID_FACET", value: 1716)
!451 = !DIEnumerator(name: "XML_SCHEMAP_INVALID_FACET_VALUE", value: 1717)
!452 = !DIEnumerator(name: "XML_SCHEMAP_INVALID_MAXOCCURS", value: 1718)
!453 = !DIEnumerator(name: "XML_SCHEMAP_INVALID_MINOCCURS", value: 1719)
!454 = !DIEnumerator(name: "XML_SCHEMAP_INVALID_REF_AND_SUBTYPE", value: 1720)
!455 = !DIEnumerator(name: "XML_SCHEMAP_INVALID_WHITE_SPACE", value: 1721)
!456 = !DIEnumerator(name: "XML_SCHEMAP_NOATTR_NOREF", value: 1722)
!457 = !DIEnumerator(name: "XML_SCHEMAP_NOTATION_NO_NAME", value: 1723)
!458 = !DIEnumerator(name: "XML_SCHEMAP_NOTYPE_NOREF", value: 1724)
!459 = !DIEnumerator(name: "XML_SCHEMAP_REF_AND_SUBTYPE", value: 1725)
!460 = !DIEnumerator(name: "XML_SCHEMAP_RESTRICTION_NONAME_NOREF", value: 1726)
!461 = !DIEnumerator(name: "XML_SCHEMAP_SIMPLETYPE_NONAME", value: 1727)
!462 = !DIEnumerator(name: "XML_SCHEMAP_TYPE_AND_SUBTYPE", value: 1728)
!463 = !DIEnumerator(name: "XML_SCHEMAP_UNKNOWN_ALL_CHILD", value: 1729)
!464 = !DIEnumerator(name: "XML_SCHEMAP_UNKNOWN_ANYATTRIBUTE_CHILD", value: 1730)
!465 = !DIEnumerator(name: "XML_SCHEMAP_UNKNOWN_ATTR_CHILD", value: 1731)
!466 = !DIEnumerator(name: "XML_SCHEMAP_UNKNOWN_ATTRGRP_CHILD", value: 1732)
!467 = !DIEnumerator(name: "XML_SCHEMAP_UNKNOWN_ATTRIBUTE_GROUP", value: 1733)
!468 = !DIEnumerator(name: "XML_SCHEMAP_UNKNOWN_BASE_TYPE", value: 1734)
!469 = !DIEnumerator(name: "XML_SCHEMAP_UNKNOWN_CHOICE_CHILD", value: 1735)
!470 = !DIEnumerator(name: "XML_SCHEMAP_UNKNOWN_COMPLEXCONTENT_CHILD", value: 1736)
!471 = !DIEnumerator(name: "XML_SCHEMAP_UNKNOWN_COMPLEXTYPE_CHILD", value: 1737)
!472 = !DIEnumerator(name: "XML_SCHEMAP_UNKNOWN_ELEM_CHILD", value: 1738)
!473 = !DIEnumerator(name: "XML_SCHEMAP_UNKNOWN_EXTENSION_CHILD", value: 1739)
!474 = !DIEnumerator(name: "XML_SCHEMAP_UNKNOWN_FACET_CHILD", value: 1740)
!475 = !DIEnumerator(name: "XML_SCHEMAP_UNKNOWN_FACET_TYPE", value: 1741)
!476 = !DIEnumerator(name: "XML_SCHEMAP_UNKNOWN_GROUP_CHILD", value: 1742)
!477 = !DIEnumerator(name: "XML_SCHEMAP_UNKNOWN_IMPORT_CHILD", value: 1743)
!478 = !DIEnumerator(name: "XML_SCHEMAP_UNKNOWN_LIST_CHILD", value: 1744)
!479 = !DIEnumerator(name: "XML_SCHEMAP_UNKNOWN_NOTATION_CHILD", value: 1745)
!480 = !DIEnumerator(name: "XML_SCHEMAP_UNKNOWN_PROCESSCONTENT_CHILD", value: 1746)
!481 = !DIEnumerator(name: "XML_SCHEMAP_UNKNOWN_REF", value: 1747)
!482 = !DIEnumerator(name: "XML_SCHEMAP_UNKNOWN_RESTRICTION_CHILD", value: 1748)
!483 = !DIEnumerator(name: "XML_SCHEMAP_UNKNOWN_SCHEMAS_CHILD", value: 1749)
!484 = !DIEnumerator(name: "XML_SCHEMAP_UNKNOWN_SEQUENCE_CHILD", value: 1750)
!485 = !DIEnumerator(name: "XML_SCHEMAP_UNKNOWN_SIMPLECONTENT_CHILD", value: 1751)
!486 = !DIEnumerator(name: "XML_SCHEMAP_UNKNOWN_SIMPLETYPE_CHILD", value: 1752)
!487 = !DIEnumerator(name: "XML_SCHEMAP_UNKNOWN_TYPE", value: 1753)
!488 = !DIEnumerator(name: "XML_SCHEMAP_UNKNOWN_UNION_CHILD", value: 1754)
!489 = !DIEnumerator(name: "XML_SCHEMAP_ELEM_DEFAULT_FIXED", value: 1755)
!490 = !DIEnumerator(name: "XML_SCHEMAP_REGEXP_INVALID", value: 1756)
!491 = !DIEnumerator(name: "XML_SCHEMAP_FAILED_LOAD", value: 1757)
!492 = !DIEnumerator(name: "XML_SCHEMAP_NOTHING_TO_PARSE", value: 1758)
!493 = !DIEnumerator(name: "XML_SCHEMAP_NOROOT", value: 1759)
!494 = !DIEnumerator(name: "XML_SCHEMAP_REDEFINED_GROUP", value: 1760)
!495 = !DIEnumerator(name: "XML_SCHEMAP_REDEFINED_TYPE", value: 1761)
!496 = !DIEnumerator(name: "XML_SCHEMAP_REDEFINED_ELEMENT", value: 1762)
!497 = !DIEnumerator(name: "XML_SCHEMAP_REDEFINED_ATTRGROUP", value: 1763)
!498 = !DIEnumerator(name: "XML_SCHEMAP_REDEFINED_ATTR", value: 1764)
!499 = !DIEnumerator(name: "XML_SCHEMAP_REDEFINED_NOTATION", value: 1765)
!500 = !DIEnumerator(name: "XML_SCHEMAP_FAILED_PARSE", value: 1766)
!501 = !DIEnumerator(name: "XML_SCHEMAP_UNKNOWN_PREFIX", value: 1767)
!502 = !DIEnumerator(name: "XML_SCHEMAP_DEF_AND_PREFIX", value: 1768)
!503 = !DIEnumerator(name: "XML_SCHEMAP_UNKNOWN_INCLUDE_CHILD", value: 1769)
!504 = !DIEnumerator(name: "XML_SCHEMAP_INCLUDE_SCHEMA_NOT_URI", value: 1770)
!505 = !DIEnumerator(name: "XML_SCHEMAP_INCLUDE_SCHEMA_NO_URI", value: 1771)
!506 = !DIEnumerator(name: "XML_SCHEMAP_NOT_SCHEMA", value: 1772)
!507 = !DIEnumerator(name: "XML_SCHEMAP_UNKNOWN_MEMBER_TYPE", value: 1773)
!508 = !DIEnumerator(name: "XML_SCHEMAP_INVALID_ATTR_USE", value: 1774)
!509 = !DIEnumerator(name: "XML_SCHEMAP_RECURSIVE", value: 1775)
!510 = !DIEnumerator(name: "XML_SCHEMAP_SUPERNUMEROUS_LIST_ITEM_TYPE", value: 1776)
!511 = !DIEnumerator(name: "XML_SCHEMAP_INVALID_ATTR_COMBINATION", value: 1777)
!512 = !DIEnumerator(name: "XML_SCHEMAP_INVALID_ATTR_INLINE_COMBINATION", value: 1778)
!513 = !DIEnumerator(name: "XML_SCHEMAP_MISSING_SIMPLETYPE_CHILD", value: 1779)
!514 = !DIEnumerator(name: "XML_SCHEMAP_INVALID_ATTR_NAME", value: 1780)
!515 = !DIEnumerator(name: "XML_SCHEMAP_REF_AND_CONTENT", value: 1781)
!516 = !DIEnumerator(name: "XML_SCHEMAP_CT_PROPS_CORRECT_1", value: 1782)
!517 = !DIEnumerator(name: "XML_SCHEMAP_CT_PROPS_CORRECT_2", value: 1783)
!518 = !DIEnumerator(name: "XML_SCHEMAP_CT_PROPS_CORRECT_3", value: 1784)
!519 = !DIEnumerator(name: "XML_SCHEMAP_CT_PROPS_CORRECT_4", value: 1785)
!520 = !DIEnumerator(name: "XML_SCHEMAP_CT_PROPS_CORRECT_5", value: 1786)
!521 = !DIEnumerator(name: "XML_SCHEMAP_DERIVATION_OK_RESTRICTION_1", value: 1787)
!522 = !DIEnumerator(name: "XML_SCHEMAP_DERIVATION_OK_RESTRICTION_2_1_1", value: 1788)
!523 = !DIEnumerator(name: "XML_SCHEMAP_DERIVATION_OK_RESTRICTION_2_1_2", value: 1789)
!524 = !DIEnumerator(name: "XML_SCHEMAP_DERIVATION_OK_RESTRICTION_2_2", value: 1790)
!525 = !DIEnumerator(name: "XML_SCHEMAP_DERIVATION_OK_RESTRICTION_3", value: 1791)
!526 = !DIEnumerator(name: "XML_SCHEMAP_WILDCARD_INVALID_NS_MEMBER", value: 1792)
!527 = !DIEnumerator(name: "XML_SCHEMAP_INTERSECTION_NOT_EXPRESSIBLE", value: 1793)
!528 = !DIEnumerator(name: "XML_SCHEMAP_UNION_NOT_EXPRESSIBLE", value: 1794)
!529 = !DIEnumerator(name: "XML_SCHEMAP_SRC_IMPORT_3_1", value: 1795)
!530 = !DIEnumerator(name: "XML_SCHEMAP_SRC_IMPORT_3_2", value: 1796)
!531 = !DIEnumerator(name: "XML_SCHEMAP_DERIVATION_OK_RESTRICTION_4_1", value: 1797)
!532 = !DIEnumerator(name: "XML_SCHEMAP_DERIVATION_OK_RESTRICTION_4_2", value: 1798)
!533 = !DIEnumerator(name: "XML_SCHEMAP_DERIVATION_OK_RESTRICTION_4_3", value: 1799)
!534 = !DIEnumerator(name: "XML_SCHEMAP_COS_CT_EXTENDS_1_3", value: 1800)
!535 = !DIEnumerator(name: "XML_SCHEMAV_NOROOT", value: 1801)
!536 = !DIEnumerator(name: "XML_SCHEMAV_UNDECLAREDELEM", value: 1802)
!537 = !DIEnumerator(name: "XML_SCHEMAV_NOTTOPLEVEL", value: 1803)
!538 = !DIEnumerator(name: "XML_SCHEMAV_MISSING", value: 1804)
!539 = !DIEnumerator(name: "XML_SCHEMAV_WRONGELEM", value: 1805)
!540 = !DIEnumerator(name: "XML_SCHEMAV_NOTYPE", value: 1806)
!541 = !DIEnumerator(name: "XML_SCHEMAV_NOROLLBACK", value: 1807)
!542 = !DIEnumerator(name: "XML_SCHEMAV_ISABSTRACT", value: 1808)
!543 = !DIEnumerator(name: "XML_SCHEMAV_NOTEMPTY", value: 1809)
!544 = !DIEnumerator(name: "XML_SCHEMAV_ELEMCONT", value: 1810)
!545 = !DIEnumerator(name: "XML_SCHEMAV_HAVEDEFAULT", value: 1811)
!546 = !DIEnumerator(name: "XML_SCHEMAV_NOTNILLABLE", value: 1812)
!547 = !DIEnumerator(name: "XML_SCHEMAV_EXTRACONTENT", value: 1813)
!548 = !DIEnumerator(name: "XML_SCHEMAV_INVALIDATTR", value: 1814)
!549 = !DIEnumerator(name: "XML_SCHEMAV_INVALIDELEM", value: 1815)
!550 = !DIEnumerator(name: "XML_SCHEMAV_NOTDETERMINIST", value: 1816)
!551 = !DIEnumerator(name: "XML_SCHEMAV_CONSTRUCT", value: 1817)
!552 = !DIEnumerator(name: "XML_SCHEMAV_INTERNAL", value: 1818)
!553 = !DIEnumerator(name: "XML_SCHEMAV_NOTSIMPLE", value: 1819)
!554 = !DIEnumerator(name: "XML_SCHEMAV_ATTRUNKNOWN", value: 1820)
!555 = !DIEnumerator(name: "XML_SCHEMAV_ATTRINVALID", value: 1821)
!556 = !DIEnumerator(name: "XML_SCHEMAV_VALUE", value: 1822)
!557 = !DIEnumerator(name: "XML_SCHEMAV_FACET", value: 1823)
!558 = !DIEnumerator(name: "XML_SCHEMAV_CVC_DATATYPE_VALID_1_2_1", value: 1824)
!559 = !DIEnumerator(name: "XML_SCHEMAV_CVC_DATATYPE_VALID_1_2_2", value: 1825)
!560 = !DIEnumerator(name: "XML_SCHEMAV_CVC_DATATYPE_VALID_1_2_3", value: 1826)
!561 = !DIEnumerator(name: "XML_SCHEMAV_CVC_TYPE_3_1_1", value: 1827)
!562 = !DIEnumerator(name: "XML_SCHEMAV_CVC_TYPE_3_1_2", value: 1828)
!563 = !DIEnumerator(name: "XML_SCHEMAV_CVC_FACET_VALID", value: 1829)
!564 = !DIEnumerator(name: "XML_SCHEMAV_CVC_LENGTH_VALID", value: 1830)
!565 = !DIEnumerator(name: "XML_SCHEMAV_CVC_MINLENGTH_VALID", value: 1831)
!566 = !DIEnumerator(name: "XML_SCHEMAV_CVC_MAXLENGTH_VALID", value: 1832)
!567 = !DIEnumerator(name: "XML_SCHEMAV_CVC_MININCLUSIVE_VALID", value: 1833)
!568 = !DIEnumerator(name: "XML_SCHEMAV_CVC_MAXINCLUSIVE_VALID", value: 1834)
!569 = !DIEnumerator(name: "XML_SCHEMAV_CVC_MINEXCLUSIVE_VALID", value: 1835)
!570 = !DIEnumerator(name: "XML_SCHEMAV_CVC_MAXEXCLUSIVE_VALID", value: 1836)
!571 = !DIEnumerator(name: "XML_SCHEMAV_CVC_TOTALDIGITS_VALID", value: 1837)
!572 = !DIEnumerator(name: "XML_SCHEMAV_CVC_FRACTIONDIGITS_VALID", value: 1838)
!573 = !DIEnumerator(name: "XML_SCHEMAV_CVC_PATTERN_VALID", value: 1839)
!574 = !DIEnumerator(name: "XML_SCHEMAV_CVC_ENUMERATION_VALID", value: 1840)
!575 = !DIEnumerator(name: "XML_SCHEMAV_CVC_COMPLEX_TYPE_2_1", value: 1841)
!576 = !DIEnumerator(name: "XML_SCHEMAV_CVC_COMPLEX_TYPE_2_2", value: 1842)
!577 = !DIEnumerator(name: "XML_SCHEMAV_CVC_COMPLEX_TYPE_2_3", value: 1843)
!578 = !DIEnumerator(name: "XML_SCHEMAV_CVC_COMPLEX_TYPE_2_4", value: 1844)
!579 = !DIEnumerator(name: "XML_SCHEMAV_CVC_ELT_1", value: 1845)
!580 = !DIEnumerator(name: "XML_SCHEMAV_CVC_ELT_2", value: 1846)
!581 = !DIEnumerator(name: "XML_SCHEMAV_CVC_ELT_3_1", value: 1847)
!582 = !DIEnumerator(name: "XML_SCHEMAV_CVC_ELT_3_2_1", value: 1848)
!583 = !DIEnumerator(name: "XML_SCHEMAV_CVC_ELT_3_2_2", value: 1849)
!584 = !DIEnumerator(name: "XML_SCHEMAV_CVC_ELT_4_1", value: 1850)
!585 = !DIEnumerator(name: "XML_SCHEMAV_CVC_ELT_4_2", value: 1851)
!586 = !DIEnumerator(name: "XML_SCHEMAV_CVC_ELT_4_3", value: 1852)
!587 = !DIEnumerator(name: "XML_SCHEMAV_CVC_ELT_5_1_1", value: 1853)
!588 = !DIEnumerator(name: "XML_SCHEMAV_CVC_ELT_5_1_2", value: 1854)
!589 = !DIEnumerator(name: "XML_SCHEMAV_CVC_ELT_5_2_1", value: 1855)
!590 = !DIEnumerator(name: "XML_SCHEMAV_CVC_ELT_5_2_2_1", value: 1856)
!591 = !DIEnumerator(name: "XML_SCHEMAV_CVC_ELT_5_2_2_2_1", value: 1857)
!592 = !DIEnumerator(name: "XML_SCHEMAV_CVC_ELT_5_2_2_2_2", value: 1858)
!593 = !DIEnumerator(name: "XML_SCHEMAV_CVC_ELT_6", value: 1859)
!594 = !DIEnumerator(name: "XML_SCHEMAV_CVC_ELT_7", value: 1860)
!595 = !DIEnumerator(name: "XML_SCHEMAV_CVC_ATTRIBUTE_1", value: 1861)
!596 = !DIEnumerator(name: "XML_SCHEMAV_CVC_ATTRIBUTE_2", value: 1862)
!597 = !DIEnumerator(name: "XML_SCHEMAV_CVC_ATTRIBUTE_3", value: 1863)
!598 = !DIEnumerator(name: "XML_SCHEMAV_CVC_ATTRIBUTE_4", value: 1864)
!599 = !DIEnumerator(name: "XML_SCHEMAV_CVC_COMPLEX_TYPE_3_1", value: 1865)
!600 = !DIEnumerator(name: "XML_SCHEMAV_CVC_COMPLEX_TYPE_3_2_1", value: 1866)
!601 = !DIEnumerator(name: "XML_SCHEMAV_CVC_COMPLEX_TYPE_3_2_2", value: 1867)
!602 = !DIEnumerator(name: "XML_SCHEMAV_CVC_COMPLEX_TYPE_4", value: 1868)
!603 = !DIEnumerator(name: "XML_SCHEMAV_CVC_COMPLEX_TYPE_5_1", value: 1869)
!604 = !DIEnumerator(name: "XML_SCHEMAV_CVC_COMPLEX_TYPE_5_2", value: 1870)
!605 = !DIEnumerator(name: "XML_SCHEMAV_ELEMENT_CONTENT", value: 1871)
!606 = !DIEnumerator(name: "XML_SCHEMAV_DOCUMENT_ELEMENT_MISSING", value: 1872)
!607 = !DIEnumerator(name: "XML_SCHEMAV_CVC_COMPLEX_TYPE_1", value: 1873)
!608 = !DIEnumerator(name: "XML_SCHEMAV_CVC_AU", value: 1874)
!609 = !DIEnumerator(name: "XML_SCHEMAV_CVC_TYPE_1", value: 1875)
!610 = !DIEnumerator(name: "XML_SCHEMAV_CVC_TYPE_2", value: 1876)
!611 = !DIEnumerator(name: "XML_SCHEMAV_CVC_IDC", value: 1877)
!612 = !DIEnumerator(name: "XML_SCHEMAV_CVC_WILDCARD", value: 1878)
!613 = !DIEnumerator(name: "XML_SCHEMAV_MISC", value: 1879)
!614 = !DIEnumerator(name: "XML_XPTR_UNKNOWN_SCHEME", value: 1900)
!615 = !DIEnumerator(name: "XML_XPTR_CHILDSEQ_START", value: 1901)
!616 = !DIEnumerator(name: "XML_XPTR_EVAL_FAILED", value: 1902)
!617 = !DIEnumerator(name: "XML_XPTR_EXTRA_OBJECTS", value: 1903)
!618 = !DIEnumerator(name: "XML_C14N_CREATE_CTXT", value: 1950)
!619 = !DIEnumerator(name: "XML_C14N_REQUIRES_UTF8", value: 1951)
!620 = !DIEnumerator(name: "XML_C14N_CREATE_STACK", value: 1952)
!621 = !DIEnumerator(name: "XML_C14N_INVALID_NODE", value: 1953)
!622 = !DIEnumerator(name: "XML_C14N_UNKNOW_NODE", value: 1954)
!623 = !DIEnumerator(name: "XML_C14N_RELATIVE_NAMESPACE", value: 1955)
!624 = !DIEnumerator(name: "XML_FTP_PASV_ANSWER", value: 2000)
!625 = !DIEnumerator(name: "XML_FTP_EPSV_ANSWER", value: 2001)
!626 = !DIEnumerator(name: "XML_FTP_ACCNT", value: 2002)
!627 = !DIEnumerator(name: "XML_FTP_URL_SYNTAX", value: 2003)
!628 = !DIEnumerator(name: "XML_HTTP_URL_SYNTAX", value: 2020)
!629 = !DIEnumerator(name: "XML_HTTP_USE_IP", value: 2021)
!630 = !DIEnumerator(name: "XML_HTTP_UNKNOWN_HOST", value: 2022)
!631 = !DIEnumerator(name: "XML_SCHEMAP_SRC_SIMPLE_TYPE_1", value: 3000)
!632 = !DIEnumerator(name: "XML_SCHEMAP_SRC_SIMPLE_TYPE_2", value: 3001)
!633 = !DIEnumerator(name: "XML_SCHEMAP_SRC_SIMPLE_TYPE_3", value: 3002)
!634 = !DIEnumerator(name: "XML_SCHEMAP_SRC_SIMPLE_TYPE_4", value: 3003)
!635 = !DIEnumerator(name: "XML_SCHEMAP_SRC_RESOLVE", value: 3004)
!636 = !DIEnumerator(name: "XML_SCHEMAP_SRC_RESTRICTION_BASE_OR_SIMPLETYPE", value: 3005)
!637 = !DIEnumerator(name: "XML_SCHEMAP_SRC_LIST_ITEMTYPE_OR_SIMPLETYPE", value: 3006)
!638 = !DIEnumerator(name: "XML_SCHEMAP_SRC_UNION_MEMBERTYPES_OR_SIMPLETYPES", value: 3007)
!639 = !DIEnumerator(name: "XML_SCHEMAP_ST_PROPS_CORRECT_1", value: 3008)
!640 = !DIEnumerator(name: "XML_SCHEMAP_ST_PROPS_CORRECT_2", value: 3009)
!641 = !DIEnumerator(name: "XML_SCHEMAP_ST_PROPS_CORRECT_3", value: 3010)
!642 = !DIEnumerator(name: "XML_SCHEMAP_COS_ST_RESTRICTS_1_1", value: 3011)
!643 = !DIEnumerator(name: "XML_SCHEMAP_COS_ST_RESTRICTS_1_2", value: 3012)
!644 = !DIEnumerator(name: "XML_SCHEMAP_COS_ST_RESTRICTS_1_3_1", value: 3013)
!645 = !DIEnumerator(name: "XML_SCHEMAP_COS_ST_RESTRICTS_1_3_2", value: 3014)
!646 = !DIEnumerator(name: "XML_SCHEMAP_COS_ST_RESTRICTS_2_1", value: 3015)
!647 = !DIEnumerator(name: "XML_SCHEMAP_COS_ST_RESTRICTS_2_3_1_1", value: 3016)
!648 = !DIEnumerator(name: "XML_SCHEMAP_COS_ST_RESTRICTS_2_3_1_2", value: 3017)
!649 = !DIEnumerator(name: "XML_SCHEMAP_COS_ST_RESTRICTS_2_3_2_1", value: 3018)
!650 = !DIEnumerator(name: "XML_SCHEMAP_COS_ST_RESTRICTS_2_3_2_2", value: 3019)
!651 = !DIEnumerator(name: "XML_SCHEMAP_COS_ST_RESTRICTS_2_3_2_3", value: 3020)
!652 = !DIEnumerator(name: "XML_SCHEMAP_COS_ST_RESTRICTS_2_3_2_4", value: 3021)
!653 = !DIEnumerator(name: "XML_SCHEMAP_COS_ST_RESTRICTS_2_3_2_5", value: 3022)
!654 = !DIEnumerator(name: "XML_SCHEMAP_COS_ST_RESTRICTS_3_1", value: 3023)
!655 = !DIEnumerator(name: "XML_SCHEMAP_COS_ST_RESTRICTS_3_3_1", value: 3024)
!656 = !DIEnumerator(name: "XML_SCHEMAP_COS_ST_RESTRICTS_3_3_1_2", value: 3025)
!657 = !DIEnumerator(name: "XML_SCHEMAP_COS_ST_RESTRICTS_3_3_2_2", value: 3026)
!658 = !DIEnumerator(name: "XML_SCHEMAP_COS_ST_RESTRICTS_3_3_2_1", value: 3027)
!659 = !DIEnumerator(name: "XML_SCHEMAP_COS_ST_RESTRICTS_3_3_2_3", value: 3028)
!660 = !DIEnumerator(name: "XML_SCHEMAP_COS_ST_RESTRICTS_3_3_2_4", value: 3029)
!661 = !DIEnumerator(name: "XML_SCHEMAP_COS_ST_RESTRICTS_3_3_2_5", value: 3030)
!662 = !DIEnumerator(name: "XML_SCHEMAP_COS_ST_DERIVED_OK_2_1", value: 3031)
!663 = !DIEnumerator(name: "XML_SCHEMAP_COS_ST_DERIVED_OK_2_2", value: 3032)
!664 = !DIEnumerator(name: "XML_SCHEMAP_S4S_ELEM_NOT_ALLOWED", value: 3033)
!665 = !DIEnumerator(name: "XML_SCHEMAP_S4S_ELEM_MISSING", value: 3034)
!666 = !DIEnumerator(name: "XML_SCHEMAP_S4S_ATTR_NOT_ALLOWED", value: 3035)
!667 = !DIEnumerator(name: "XML_SCHEMAP_S4S_ATTR_MISSING", value: 3036)
!668 = !DIEnumerator(name: "XML_SCHEMAP_S4S_ATTR_INVALID_VALUE", value: 3037)
!669 = !DIEnumerator(name: "XML_SCHEMAP_SRC_ELEMENT_1", value: 3038)
!670 = !DIEnumerator(name: "XML_SCHEMAP_SRC_ELEMENT_2_1", value: 3039)
!671 = !DIEnumerator(name: "XML_SCHEMAP_SRC_ELEMENT_2_2", value: 3040)
!672 = !DIEnumerator(name: "XML_SCHEMAP_SRC_ELEMENT_3", value: 3041)
!673 = !DIEnumerator(name: "XML_SCHEMAP_P_PROPS_CORRECT_1", value: 3042)
!674 = !DIEnumerator(name: "XML_SCHEMAP_P_PROPS_CORRECT_2_1", value: 3043)
!675 = !DIEnumerator(name: "XML_SCHEMAP_P_PROPS_CORRECT_2_2", value: 3044)
!676 = !DIEnumerator(name: "XML_SCHEMAP_E_PROPS_CORRECT_2", value: 3045)
!677 = !DIEnumerator(name: "XML_SCHEMAP_E_PROPS_CORRECT_3", value: 3046)
!678 = !DIEnumerator(name: "XML_SCHEMAP_E_PROPS_CORRECT_4", value: 3047)
!679 = !DIEnumerator(name: "XML_SCHEMAP_E_PROPS_CORRECT_5", value: 3048)
!680 = !DIEnumerator(name: "XML_SCHEMAP_E_PROPS_CORRECT_6", value: 3049)
!681 = !DIEnumerator(name: "XML_SCHEMAP_SRC_INCLUDE", value: 3050)
!682 = !DIEnumerator(name: "XML_SCHEMAP_SRC_ATTRIBUTE_1", value: 3051)
!683 = !DIEnumerator(name: "XML_SCHEMAP_SRC_ATTRIBUTE_2", value: 3052)
!684 = !DIEnumerator(name: "XML_SCHEMAP_SRC_ATTRIBUTE_3_1", value: 3053)
!685 = !DIEnumerator(name: "XML_SCHEMAP_SRC_ATTRIBUTE_3_2", value: 3054)
!686 = !DIEnumerator(name: "XML_SCHEMAP_SRC_ATTRIBUTE_4", value: 3055)
!687 = !DIEnumerator(name: "XML_SCHEMAP_NO_XMLNS", value: 3056)
!688 = !DIEnumerator(name: "XML_SCHEMAP_NO_XSI", value: 3057)
!689 = !DIEnumerator(name: "XML_SCHEMAP_COS_VALID_DEFAULT_1", value: 3058)
!690 = !DIEnumerator(name: "XML_SCHEMAP_COS_VALID_DEFAULT_2_1", value: 3059)
!691 = !DIEnumerator(name: "XML_SCHEMAP_COS_VALID_DEFAULT_2_2_1", value: 3060)
!692 = !DIEnumerator(name: "XML_SCHEMAP_COS_VALID_DEFAULT_2_2_2", value: 3061)
!693 = !DIEnumerator(name: "XML_SCHEMAP_CVC_SIMPLE_TYPE", value: 3062)
!694 = !DIEnumerator(name: "XML_SCHEMAP_COS_CT_EXTENDS_1_1", value: 3063)
!695 = !DIEnumerator(name: "XML_SCHEMAP_SRC_IMPORT_1_1", value: 3064)
!696 = !DIEnumerator(name: "XML_SCHEMAP_SRC_IMPORT_1_2", value: 3065)
!697 = !DIEnumerator(name: "XML_SCHEMAP_SRC_IMPORT_2", value: 3066)
!698 = !DIEnumerator(name: "XML_SCHEMAP_SRC_IMPORT_2_1", value: 3067)
!699 = !DIEnumerator(name: "XML_SCHEMAP_SRC_IMPORT_2_2", value: 3068)
!700 = !DIEnumerator(name: "XML_SCHEMAP_INTERNAL", value: 3069)
!701 = !DIEnumerator(name: "XML_SCHEMAP_NOT_DETERMINISTIC", value: 3070)
!702 = !DIEnumerator(name: "XML_SCHEMAP_SRC_ATTRIBUTE_GROUP_1", value: 3071)
!703 = !DIEnumerator(name: "XML_SCHEMAP_SRC_ATTRIBUTE_GROUP_2", value: 3072)
!704 = !DIEnumerator(name: "XML_SCHEMAP_SRC_ATTRIBUTE_GROUP_3", value: 3073)
!705 = !DIEnumerator(name: "XML_SCHEMAP_MG_PROPS_CORRECT_1", value: 3074)
!706 = !DIEnumerator(name: "XML_SCHEMAP_MG_PROPS_CORRECT_2", value: 3075)
!707 = !DIEnumerator(name: "XML_SCHEMAP_SRC_CT_1", value: 3076)
!708 = !DIEnumerator(name: "XML_SCHEMAP_DERIVATION_OK_RESTRICTION_2_1_3", value: 3077)
!709 = !DIEnumerator(name: "XML_SCHEMAP_AU_PROPS_CORRECT_2", value: 3078)
!710 = !DIEnumerator(name: "XML_SCHEMAP_A_PROPS_CORRECT_2", value: 3079)
!711 = !DIEnumerator(name: "XML_SCHEMAP_C_PROPS_CORRECT", value: 3080)
!712 = !DIEnumerator(name: "XML_SCHEMAP_SRC_REDEFINE", value: 3081)
!713 = !DIEnumerator(name: "XML_SCHEMAP_SRC_IMPORT", value: 3082)
!714 = !DIEnumerator(name: "XML_SCHEMAP_WARN_SKIP_SCHEMA", value: 3083)
!715 = !DIEnumerator(name: "XML_SCHEMAP_WARN_UNLOCATED_SCHEMA", value: 3084)
!716 = !DIEnumerator(name: "XML_SCHEMAP_WARN_ATTR_REDECL_PROH", value: 3085)
!717 = !DIEnumerator(name: "XML_SCHEMAP_WARN_ATTR_POINTLESS_PROH", value: 3086)
!718 = !DIEnumerator(name: "XML_SCHEMAP_AG_PROPS_CORRECT", value: 3087)
!719 = !DIEnumerator(name: "XML_SCHEMAP_COS_CT_EXTENDS_1_2", value: 3088)
!720 = !DIEnumerator(name: "XML_SCHEMAP_AU_PROPS_CORRECT", value: 3089)
!721 = !DIEnumerator(name: "XML_SCHEMAP_A_PROPS_CORRECT_3", value: 3090)
!722 = !DIEnumerator(name: "XML_SCHEMAP_COS_ALL_LIMITED", value: 3091)
!723 = !DIEnumerator(name: "XML_SCHEMATRONV_ASSERT", value: 4000)
!724 = !DIEnumerator(name: "XML_SCHEMATRONV_REPORT", value: 4001)
!725 = !DIEnumerator(name: "XML_MODULE_OPEN", value: 4900)
!726 = !DIEnumerator(name: "XML_MODULE_CLOSE", value: 4901)
!727 = !DIEnumerator(name: "XML_CHECK_FOUND_ELEMENT", value: 5000)
!728 = !DIEnumerator(name: "XML_CHECK_FOUND_ATTRIBUTE", value: 5001)
!729 = !DIEnumerator(name: "XML_CHECK_FOUND_TEXT", value: 5002)
!730 = !DIEnumerator(name: "XML_CHECK_FOUND_CDATA", value: 5003)
!731 = !DIEnumerator(name: "XML_CHECK_FOUND_ENTITYREF", value: 5004)
!732 = !DIEnumerator(name: "XML_CHECK_FOUND_ENTITY", value: 5005)
!733 = !DIEnumerator(name: "XML_CHECK_FOUND_PI", value: 5006)
!734 = !DIEnumerator(name: "XML_CHECK_FOUND_COMMENT", value: 5007)
!735 = !DIEnumerator(name: "XML_CHECK_FOUND_DOCTYPE", value: 5008)
!736 = !DIEnumerator(name: "XML_CHECK_FOUND_FRAGMENT", value: 5009)
!737 = !DIEnumerator(name: "XML_CHECK_FOUND_NOTATION", value: 5010)
!738 = !DIEnumerator(name: "XML_CHECK_UNKNOWN_NODE", value: 5011)
!739 = !DIEnumerator(name: "XML_CHECK_ENTITY_TYPE", value: 5012)
!740 = !DIEnumerator(name: "XML_CHECK_NO_PARENT", value: 5013)
!741 = !DIEnumerator(name: "XML_CHECK_NO_DOC", value: 5014)
!742 = !DIEnumerator(name: "XML_CHECK_NO_NAME", value: 5015)
!743 = !DIEnumerator(name: "XML_CHECK_NO_ELEM", value: 5016)
!744 = !DIEnumerator(name: "XML_CHECK_WRONG_DOC", value: 5017)
!745 = !DIEnumerator(name: "XML_CHECK_NO_PREV", value: 5018)
!746 = !DIEnumerator(name: "XML_CHECK_WRONG_PREV", value: 5019)
!747 = !DIEnumerator(name: "XML_CHECK_NO_NEXT", value: 5020)
!748 = !DIEnumerator(name: "XML_CHECK_WRONG_NEXT", value: 5021)
!749 = !DIEnumerator(name: "XML_CHECK_NOT_DTD", value: 5022)
!750 = !DIEnumerator(name: "XML_CHECK_NOT_ATTR", value: 5023)
!751 = !DIEnumerator(name: "XML_CHECK_NOT_ATTR_DECL", value: 5024)
!752 = !DIEnumerator(name: "XML_CHECK_NOT_ELEM_DECL", value: 5025)
!753 = !DIEnumerator(name: "XML_CHECK_NOT_ENTITY_DECL", value: 5026)
!754 = !DIEnumerator(name: "XML_CHECK_NOT_NS_DECL", value: 5027)
!755 = !DIEnumerator(name: "XML_CHECK_NO_HREF", value: 5028)
!756 = !DIEnumerator(name: "XML_CHECK_WRONG_PARENT", value: 5029)
!757 = !DIEnumerator(name: "XML_CHECK_NS_SCOPE", value: 5030)
!758 = !DIEnumerator(name: "XML_CHECK_NS_ANCESTOR", value: 5031)
!759 = !DIEnumerator(name: "XML_CHECK_NOT_UTF8", value: 5032)
!760 = !DIEnumerator(name: "XML_CHECK_NO_DICT", value: 5033)
!761 = !DIEnumerator(name: "XML_CHECK_NOT_NCNAME", value: 5034)
!762 = !DIEnumerator(name: "XML_CHECK_OUTSIDE_DICT", value: 5035)
!763 = !DIEnumerator(name: "XML_CHECK_WRONG_NAME", value: 5036)
!764 = !DIEnumerator(name: "XML_CHECK_NAME_NOT_NULL", value: 5037)
!765 = !DIEnumerator(name: "XML_I18N_NO_NAME", value: 6000)
!766 = !DIEnumerator(name: "XML_I18N_NO_HANDLER", value: 6001)
!767 = !DIEnumerator(name: "XML_I18N_EXCESS_HANDLER", value: 6002)
!768 = !DIEnumerator(name: "XML_I18N_CONV_FAILED", value: 6003)
!769 = !DIEnumerator(name: "XML_I18N_NO_OUTPUT", value: 6004)
!770 = !DIEnumerator(name: "XML_BUF_OVERFLOW", value: 7000)
!771 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !772, line: 74, baseType: !35, size: 32, elements: !773)
!772 = !DIFile(filename: "./include/libxml/tree.h", directory: "/local-ssd/libxml2-5hiu2bm3eabodlo3ma2tknpx3yddqhyc-build/aidengro/spack-stage-libxml2-2.9.10-5hiu2bm3eabodlo3ma2tknpx3yddqhyc/spack-src", checksumkind: CSK_MD5, checksum: "406fe7a05a1503755da736b98b1ab781")
!773 = !{!774, !775, !776, !777, !778, !779}
!774 = !DIEnumerator(name: "XML_BUFFER_ALLOC_DOUBLEIT", value: 0)
!775 = !DIEnumerator(name: "XML_BUFFER_ALLOC_EXACT", value: 1)
!776 = !DIEnumerator(name: "XML_BUFFER_ALLOC_IMMUTABLE", value: 2)
!777 = !DIEnumerator(name: "XML_BUFFER_ALLOC_IO", value: 3)
!778 = !DIEnumerator(name: "XML_BUFFER_ALLOC_HYBRID", value: 4)
!779 = !DIEnumerator(name: "XML_BUFFER_ALLOC_BOUNDED", value: 5)
!780 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !772, line: 159, baseType: !35, size: 32, elements: !781)
!781 = !{!782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802}
!782 = !DIEnumerator(name: "XML_ELEMENT_NODE", value: 1)
!783 = !DIEnumerator(name: "XML_ATTRIBUTE_NODE", value: 2)
!784 = !DIEnumerator(name: "XML_TEXT_NODE", value: 3)
!785 = !DIEnumerator(name: "XML_CDATA_SECTION_NODE", value: 4)
!786 = !DIEnumerator(name: "XML_ENTITY_REF_NODE", value: 5)
!787 = !DIEnumerator(name: "XML_ENTITY_NODE", value: 6)
!788 = !DIEnumerator(name: "XML_PI_NODE", value: 7)
!789 = !DIEnumerator(name: "XML_COMMENT_NODE", value: 8)
!790 = !DIEnumerator(name: "XML_DOCUMENT_NODE", value: 9)
!791 = !DIEnumerator(name: "XML_DOCUMENT_TYPE_NODE", value: 10)
!792 = !DIEnumerator(name: "XML_DOCUMENT_FRAG_NODE", value: 11)
!793 = !DIEnumerator(name: "XML_NOTATION_NODE", value: 12)
!794 = !DIEnumerator(name: "XML_HTML_DOCUMENT_NODE", value: 13)
!795 = !DIEnumerator(name: "XML_DTD_NODE", value: 14)
!796 = !DIEnumerator(name: "XML_ELEMENT_DECL", value: 15)
!797 = !DIEnumerator(name: "XML_ATTRIBUTE_DECL", value: 16)
!798 = !DIEnumerator(name: "XML_ENTITY_DECL", value: 17)
!799 = !DIEnumerator(name: "XML_NAMESPACE_DECL", value: 18)
!800 = !DIEnumerator(name: "XML_XINCLUDE_START", value: 19)
!801 = !DIEnumerator(name: "XML_XINCLUDE_END", value: 20)
!802 = !DIEnumerator(name: "XML_DOCB_DOCUMENT_NODE", value: 21)
!803 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !772, line: 206, baseType: !35, size: 32, elements: !804)
!804 = !{!805, !806, !807, !808, !809, !810, !811, !812, !813, !814}
!805 = !DIEnumerator(name: "XML_ATTRIBUTE_CDATA", value: 1)
!806 = !DIEnumerator(name: "XML_ATTRIBUTE_ID", value: 2)
!807 = !DIEnumerator(name: "XML_ATTRIBUTE_IDREF", value: 3)
!808 = !DIEnumerator(name: "XML_ATTRIBUTE_IDREFS", value: 4)
!809 = !DIEnumerator(name: "XML_ATTRIBUTE_ENTITY", value: 5)
!810 = !DIEnumerator(name: "XML_ATTRIBUTE_ENTITIES", value: 6)
!811 = !DIEnumerator(name: "XML_ATTRIBUTE_NMTOKEN", value: 7)
!812 = !DIEnumerator(name: "XML_ATTRIBUTE_NMTOKENS", value: 8)
!813 = !DIEnumerator(name: "XML_ATTRIBUTE_ENUMERATION", value: 9)
!814 = !DIEnumerator(name: "XML_ATTRIBUTE_NOTATION", value: 10)
!815 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !816, line: 24, baseType: !35, size: 32, elements: !817)
!816 = !DIFile(filename: "./include/libxml/entities.h", directory: "/local-ssd/libxml2-5hiu2bm3eabodlo3ma2tknpx3yddqhyc-build/aidengro/spack-stage-libxml2-2.9.10-5hiu2bm3eabodlo3ma2tknpx3yddqhyc/spack-src", checksumkind: CSK_MD5, checksum: "16467595fdaff28420d1657b1658f267")
!817 = !{!818, !819, !820, !821, !822, !823}
!818 = !DIEnumerator(name: "XML_INTERNAL_GENERAL_ENTITY", value: 1)
!819 = !DIEnumerator(name: "XML_EXTERNAL_GENERAL_PARSED_ENTITY", value: 2)
!820 = !DIEnumerator(name: "XML_EXTERNAL_GENERAL_UNPARSED_ENTITY", value: 3)
!821 = !DIEnumerator(name: "XML_INTERNAL_PARAMETER_ENTITY", value: 4)
!822 = !DIEnumerator(name: "XML_EXTERNAL_PARAMETER_ENTITY", value: 5)
!823 = !DIEnumerator(name: "XML_INTERNAL_PREDEFINED_ENTITY", value: 6)
!824 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !772, line: 278, baseType: !35, size: 32, elements: !825)
!825 = !{!826, !827, !828, !829}
!826 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_PCDATA", value: 1)
!827 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_ELEMENT", value: 2)
!828 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_SEQ", value: 3)
!829 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_OR", value: 4)
!830 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !772, line: 290, baseType: !35, size: 32, elements: !831)
!831 = !{!832, !833, !834, !835}
!832 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_ONCE", value: 1)
!833 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_OPT", value: 2)
!834 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_MULT", value: 3)
!835 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_PLUS", value: 4)
!836 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !34, line: 24, baseType: !35, size: 32, elements: !837)
!837 = !{!838, !839, !840, !841}
!838 = !DIEnumerator(name: "XML_ERR_NONE", value: 0)
!839 = !DIEnumerator(name: "XML_ERR_WARNING", value: 1)
!840 = !DIEnumerator(name: "XML_ERR_ERROR", value: 2)
!841 = !DIEnumerator(name: "XML_ERR_FATAL", value: 3)
!842 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !843, line: 112, baseType: !7, size: 32, elements: !844)
!843 = !DIFile(filename: "./include/libxml/parser.h", directory: "/local-ssd/libxml2-5hiu2bm3eabodlo3ma2tknpx3yddqhyc-build/aidengro/spack-stage-libxml2-2.9.10-5hiu2bm3eabodlo3ma2tknpx3yddqhyc/spack-src", checksumkind: CSK_MD5, checksum: "3e149b90da438833f98a1bcd12a0abcb")
!844 = !{!845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862}
!845 = !DIEnumerator(name: "XML_PARSER_EOF", value: -1)
!846 = !DIEnumerator(name: "XML_PARSER_START", value: 0)
!847 = !DIEnumerator(name: "XML_PARSER_MISC", value: 1)
!848 = !DIEnumerator(name: "XML_PARSER_PI", value: 2)
!849 = !DIEnumerator(name: "XML_PARSER_DTD", value: 3)
!850 = !DIEnumerator(name: "XML_PARSER_PROLOG", value: 4)
!851 = !DIEnumerator(name: "XML_PARSER_COMMENT", value: 5)
!852 = !DIEnumerator(name: "XML_PARSER_START_TAG", value: 6)
!853 = !DIEnumerator(name: "XML_PARSER_CONTENT", value: 7)
!854 = !DIEnumerator(name: "XML_PARSER_CDATA_SECTION", value: 8)
!855 = !DIEnumerator(name: "XML_PARSER_END_TAG", value: 9)
!856 = !DIEnumerator(name: "XML_PARSER_ENTITY_DECL", value: 10)
!857 = !DIEnumerator(name: "XML_PARSER_ENTITY_VALUE", value: 11)
!858 = !DIEnumerator(name: "XML_PARSER_ATTRIBUTE_VALUE", value: 12)
!859 = !DIEnumerator(name: "XML_PARSER_SYSTEM_LITERAL", value: 13)
!860 = !DIEnumerator(name: "XML_PARSER_EPILOG", value: 14)
!861 = !DIEnumerator(name: "XML_PARSER_IGNORE", value: 15)
!862 = !DIEnumerator(name: "XML_PARSER_PUBLIC_LITERAL", value: 16)
!863 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !843, line: 163, baseType: !35, size: 32, elements: !864)
!864 = !{!865, !866, !867, !868, !869, !870}
!865 = !DIEnumerator(name: "XML_PARSE_UNKNOWN", value: 0)
!866 = !DIEnumerator(name: "XML_PARSE_DOM", value: 1)
!867 = !DIEnumerator(name: "XML_PARSE_SAX", value: 2)
!868 = !DIEnumerator(name: "XML_PARSE_PUSH_DOM", value: 3)
!869 = !DIEnumerator(name: "XML_PARSE_PUSH_SAX", value: 4)
!870 = !DIEnumerator(name: "XML_PARSE_READER", value: 5)
!871 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !34, line: 36, baseType: !35, size: 32, elements: !872)
!872 = !{!873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903}
!873 = !DIEnumerator(name: "XML_FROM_NONE", value: 0)
!874 = !DIEnumerator(name: "XML_FROM_PARSER", value: 1)
!875 = !DIEnumerator(name: "XML_FROM_TREE", value: 2)
!876 = !DIEnumerator(name: "XML_FROM_NAMESPACE", value: 3)
!877 = !DIEnumerator(name: "XML_FROM_DTD", value: 4)
!878 = !DIEnumerator(name: "XML_FROM_HTML", value: 5)
!879 = !DIEnumerator(name: "XML_FROM_MEMORY", value: 6)
!880 = !DIEnumerator(name: "XML_FROM_OUTPUT", value: 7)
!881 = !DIEnumerator(name: "XML_FROM_IO", value: 8)
!882 = !DIEnumerator(name: "XML_FROM_FTP", value: 9)
!883 = !DIEnumerator(name: "XML_FROM_HTTP", value: 10)
!884 = !DIEnumerator(name: "XML_FROM_XINCLUDE", value: 11)
!885 = !DIEnumerator(name: "XML_FROM_XPATH", value: 12)
!886 = !DIEnumerator(name: "XML_FROM_XPOINTER", value: 13)
!887 = !DIEnumerator(name: "XML_FROM_REGEXP", value: 14)
!888 = !DIEnumerator(name: "XML_FROM_DATATYPE", value: 15)
!889 = !DIEnumerator(name: "XML_FROM_SCHEMASP", value: 16)
!890 = !DIEnumerator(name: "XML_FROM_SCHEMASV", value: 17)
!891 = !DIEnumerator(name: "XML_FROM_RELAXNGP", value: 18)
!892 = !DIEnumerator(name: "XML_FROM_RELAXNGV", value: 19)
!893 = !DIEnumerator(name: "XML_FROM_CATALOG", value: 20)
!894 = !DIEnumerator(name: "XML_FROM_C14N", value: 21)
!895 = !DIEnumerator(name: "XML_FROM_XSLT", value: 22)
!896 = !DIEnumerator(name: "XML_FROM_VALID", value: 23)
!897 = !DIEnumerator(name: "XML_FROM_CHECK", value: 24)
!898 = !DIEnumerator(name: "XML_FROM_WRITER", value: 25)
!899 = !DIEnumerator(name: "XML_FROM_MODULE", value: 26)
!900 = !DIEnumerator(name: "XML_FROM_I18N", value: 27)
!901 = !DIEnumerator(name: "XML_FROM_SCHEMATRONV", value: 28)
!902 = !DIEnumerator(name: "XML_FROM_BUFFER", value: 29)
!903 = !DIEnumerator(name: "XML_FROM_URI", value: 30)
!904 = !{!905, !906, !7, !908, !917, !928, !939, !936, !35, !940, !931, !944, !929, !914, !946}
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingAliasPtr", file: !3, line: 55, baseType: !909)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingAlias", file: !3, line: 54, baseType: !911)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlCharEncodingAlias", file: !3, line: 56, size: 128, elements: !912)
!912 = !{!913, !916}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !911, file: !3, line: 57, baseType: !914, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !907)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !911, file: !3, line: 58, baseType: !914, size: 64, offset: 64)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingHandlerPtr", file: !6, line: 145, baseType: !918)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingHandler", file: !6, line: 144, baseType: !920)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlCharEncodingHandler", file: !6, line: 146, size: 320, elements: !921)
!921 = !{!922, !923, !933, !935, !938}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !920, file: !6, line: 147, baseType: !906, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !920, file: !6, line: 148, baseType: !924, size: 64, offset: 64)
!924 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingInputFunc", file: !6, line: 101, baseType: !925)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DISubroutineType(types: !927)
!927 = !{!7, !928, !930, !931, !930}
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !929)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !920, file: !6, line: 149, baseType: !934, size: 64, offset: 128)
!934 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingOutputFunc", file: !6, line: 123, baseType: !925)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "iconv_in", scope: !920, file: !6, line: 151, baseType: !936, size: 64, offset: 192)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "libiconv_t", file: !937, line: 46, baseType: !905)
!937 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack/linux-ubuntu22.04-zen2/clang-18.0.0/libiconv-1.17-yjxuwwhaestsjkdrfxfvtlovzccan2px/include/iconv.h", directory: "/local-ssd/libxml2-5hiu2bm3eabodlo3ma2tknpx3yddqhyc-build", checksumkind: CSK_MD5, checksum: "b2fc3eb69b19b470f76aa362172c4039")
!938 = !DIDerivedType(tag: DW_TAG_member, name: "iconv_out", scope: !920, file: !6, line: 152, baseType: !936, size: 64, offset: 256)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !942)
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !943, line: 28, baseType: !929)
!943 = !DIFile(filename: "./include/libxml/xmlstring.h", directory: "/local-ssd/libxml2-5hiu2bm3eabodlo3ma2tknpx3yddqhyc-build/aidengro/spack-stage-libxml2-2.9.10-5hiu2bm3eabodlo3ma2tknpx3yddqhyc/spack-src", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!947 = !{!948, !953, !958, !963, !968, !970, !975, !977, !979, !981, !983, !985, !990, !995, !997, !999, !1001, !1003, !1005, !1007, !1009, !1011, !1013, !1015, !1017, !1019, !1024, !1026, !1028, !1030, !1035, !1040, !1045, !1050, !1055, !1057, !1059, !1061, !1063, !1068, !1073, !1078, !1080, !1082, !1087, !1089, !1091, !1096, !1101, !1106, !1111, !1113, !0, !1115, !1117, !1119, !1121, !1123, !1125, !1127, !1129}
!948 = !DIGlobalVariableExpression(var: !949, expr: !DIExpression())
!949 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1172, type: !950, isLocal: true, isDefinition: true)
!950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !915, size: 8, elements: !951)
!951 = !{!952}
!952 = !DISubrange(count: 1)
!953 = !DIGlobalVariableExpression(var: !954, expr: !DIExpression())
!954 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1173, type: !955, isLocal: true, isDefinition: true)
!955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !915, size: 48, elements: !956)
!956 = !{!957}
!957 = !DISubrange(count: 6)
!958 = !DIGlobalVariableExpression(var: !959, expr: !DIExpression())
!959 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1174, type: !960, isLocal: true, isDefinition: true)
!960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !915, size: 40, elements: !961)
!961 = !{!962}
!962 = !DISubrange(count: 5)
!963 = !DIGlobalVariableExpression(var: !964, expr: !DIExpression())
!964 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1180, type: !965, isLocal: true, isDefinition: true)
!965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !915, size: 56, elements: !966)
!966 = !{!967}
!967 = !DISubrange(count: 7)
!968 = !DIGlobalVariableExpression(var: !969, expr: !DIExpression())
!969 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1181, type: !955, isLocal: true, isDefinition: true)
!970 = !DIGlobalVariableExpression(var: !971, expr: !DIExpression())
!971 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1183, type: !972, isLocal: true, isDefinition: true)
!972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !915, size: 128, elements: !973)
!973 = !{!974}
!974 = !DISubrange(count: 16)
!975 = !DIGlobalVariableExpression(var: !976, expr: !DIExpression())
!976 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1184, type: !955, isLocal: true, isDefinition: true)
!977 = !DIGlobalVariableExpression(var: !978, expr: !DIExpression())
!978 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1185, type: !960, isLocal: true, isDefinition: true)
!979 = !DIGlobalVariableExpression(var: !980, expr: !DIExpression())
!980 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1191, type: !972, isLocal: true, isDefinition: true)
!981 = !DIGlobalVariableExpression(var: !982, expr: !DIExpression())
!982 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1192, type: !955, isLocal: true, isDefinition: true)
!983 = !DIGlobalVariableExpression(var: !984, expr: !DIExpression())
!984 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1193, type: !960, isLocal: true, isDefinition: true)
!985 = !DIGlobalVariableExpression(var: !986, expr: !DIExpression())
!986 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1196, type: !987, isLocal: true, isDefinition: true)
!987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !915, size: 88, elements: !988)
!988 = !{!989}
!989 = !DISubrange(count: 11)
!990 = !DIGlobalVariableExpression(var: !991, expr: !DIExpression())
!991 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1197, type: !992, isLocal: true, isDefinition: true)
!992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !915, size: 96, elements: !993)
!993 = !{!994}
!994 = !DISubrange(count: 12)
!995 = !DIGlobalVariableExpression(var: !996, expr: !DIExpression())
!996 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1198, type: !992, isLocal: true, isDefinition: true)
!997 = !DIGlobalVariableExpression(var: !998, expr: !DIExpression())
!998 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1200, type: !987, isLocal: true, isDefinition: true)
!999 = !DIGlobalVariableExpression(var: !1000, expr: !DIExpression())
!1000 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1201, type: !992, isLocal: true, isDefinition: true)
!1001 = !DIGlobalVariableExpression(var: !1002, expr: !DIExpression())
!1002 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1202, type: !992, isLocal: true, isDefinition: true)
!1003 = !DIGlobalVariableExpression(var: !1004, expr: !DIExpression())
!1004 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1204, type: !987, isLocal: true, isDefinition: true)
!1005 = !DIGlobalVariableExpression(var: !1006, expr: !DIExpression())
!1006 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1205, type: !987, isLocal: true, isDefinition: true)
!1007 = !DIGlobalVariableExpression(var: !1008, expr: !DIExpression())
!1008 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1206, type: !987, isLocal: true, isDefinition: true)
!1009 = !DIGlobalVariableExpression(var: !1010, expr: !DIExpression())
!1010 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1207, type: !987, isLocal: true, isDefinition: true)
!1011 = !DIGlobalVariableExpression(var: !1012, expr: !DIExpression())
!1012 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1208, type: !987, isLocal: true, isDefinition: true)
!1013 = !DIGlobalVariableExpression(var: !1014, expr: !DIExpression())
!1014 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1209, type: !987, isLocal: true, isDefinition: true)
!1015 = !DIGlobalVariableExpression(var: !1016, expr: !DIExpression())
!1016 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1210, type: !987, isLocal: true, isDefinition: true)
!1017 = !DIGlobalVariableExpression(var: !1018, expr: !DIExpression())
!1018 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1212, type: !992, isLocal: true, isDefinition: true)
!1019 = !DIGlobalVariableExpression(var: !1020, expr: !DIExpression())
!1020 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1213, type: !1021, isLocal: true, isDefinition: true)
!1021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !915, size: 80, elements: !1022)
!1022 = !{!1023}
!1023 = !DISubrange(count: 10)
!1024 = !DIGlobalVariableExpression(var: !1025, expr: !DIExpression())
!1025 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1214, type: !965, isLocal: true, isDefinition: true)
!1026 = !DIGlobalVariableExpression(var: !1027, expr: !DIExpression())
!1027 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1247, type: !965, isLocal: true, isDefinition: true)
!1028 = !DIGlobalVariableExpression(var: !1029, expr: !DIExpression())
!1029 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1279, type: !1021, isLocal: true, isDefinition: true)
!1030 = !DIGlobalVariableExpression(var: !1031, expr: !DIExpression())
!1031 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1339, type: !1032, isLocal: true, isDefinition: true)
!1032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !915, size: 312, elements: !1033)
!1033 = !{!1034}
!1034 = !DISubrange(count: 39)
!1035 = !DIGlobalVariableExpression(var: !1036, expr: !DIExpression())
!1036 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1349, type: !1037, isLocal: true, isDefinition: true)
!1037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !915, size: 360, elements: !1038)
!1038 = !{!1039}
!1039 = !DISubrange(count: 45)
!1040 = !DIGlobalVariableExpression(var: !1041, expr: !DIExpression())
!1041 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1410, type: !1042, isLocal: true, isDefinition: true)
!1042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !915, size: 296, elements: !1043)
!1043 = !{!1044}
!1044 = !DISubrange(count: 37)
!1045 = !DIGlobalVariableExpression(var: !1046, expr: !DIExpression())
!1046 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1414, type: !1047, isLocal: true, isDefinition: true)
!1047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !915, size: 376, elements: !1048)
!1048 = !{!1049}
!1049 = !DISubrange(count: 47)
!1050 = !DIGlobalVariableExpression(var: !1051, expr: !DIExpression())
!1051 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1420, type: !1052, isLocal: true, isDefinition: true)
!1052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !915, size: 72, elements: !1053)
!1053 = !{!1054}
!1054 = !DISubrange(count: 9)
!1055 = !DIGlobalVariableExpression(var: !1056, expr: !DIExpression())
!1056 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1422, type: !1052, isLocal: true, isDefinition: true)
!1057 = !DIGlobalVariableExpression(var: !1058, expr: !DIExpression())
!1058 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1425, type: !955, isLocal: true, isDefinition: true)
!1059 = !DIGlobalVariableExpression(var: !1060, expr: !DIExpression())
!1060 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1426, type: !1052, isLocal: true, isDefinition: true)
!1061 = !DIGlobalVariableExpression(var: !1062, expr: !DIExpression())
!1062 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1428, type: !960, isLocal: true, isDefinition: true)
!1063 = !DIGlobalVariableExpression(var: !1064, expr: !DIExpression())
!1064 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1485, type: !1065, isLocal: true, isDefinition: true)
!1065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !915, size: 384, elements: !1066)
!1066 = !{!1067}
!1067 = !DISubrange(count: 48)
!1068 = !DIGlobalVariableExpression(var: !1069, expr: !DIExpression())
!1069 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1491, type: !1070, isLocal: true, isDefinition: true)
!1070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !915, size: 552, elements: !1071)
!1071 = !{!1072}
!1072 = !DISubrange(count: 69)
!1073 = !DIGlobalVariableExpression(var: !1074, expr: !DIExpression())
!1074 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1492, type: !1075, isLocal: true, isDefinition: true)
!1075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !915, size: 176, elements: !1076)
!1076 = !{!1077}
!1077 = !DISubrange(count: 22)
!1078 = !DIGlobalVariableExpression(var: !1079, expr: !DIExpression())
!1079 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1525, type: !965, isLocal: true, isDefinition: true)
!1080 = !DIGlobalVariableExpression(var: !1081, expr: !DIExpression())
!1081 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1527, type: !1021, isLocal: true, isDefinition: true)
!1082 = !DIGlobalVariableExpression(var: !1083, expr: !DIExpression())
!1083 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1529, type: !1084, isLocal: true, isDefinition: true)
!1084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !915, size: 64, elements: !1085)
!1085 = !{!1086}
!1086 = !DISubrange(count: 8)
!1087 = !DIGlobalVariableExpression(var: !1088, expr: !DIExpression())
!1088 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1610, type: !1021, isLocal: true, isDefinition: true)
!1089 = !DIGlobalVariableExpression(var: !1090, expr: !DIExpression())
!1090 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1614, type: !1021, isLocal: true, isDefinition: true)
!1091 = !DIGlobalVariableExpression(var: !1092, expr: !DIExpression())
!1092 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1720, type: !1093, isLocal: true, isDefinition: true)
!1093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !915, size: 320, elements: !1094)
!1094 = !{!1095}
!1095 = !DISubrange(count: 40)
!1096 = !DIGlobalVariableExpression(var: !1097, expr: !DIExpression())
!1097 = distinct !DIGlobalVariable(scope: null, file: !3, line: 2173, type: !1098, isLocal: true, isDefinition: true)
!1098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !915, size: 224, elements: !1099)
!1099 = !{!1100}
!1100 = !DISubrange(count: 28)
!1101 = !DIGlobalVariableExpression(var: !1102, expr: !DIExpression())
!1102 = distinct !DIGlobalVariable(scope: null, file: !3, line: 2178, type: !1103, isLocal: true, isDefinition: true)
!1103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !915, size: 432, elements: !1104)
!1104 = !{!1105}
!1105 = !DISubrange(count: 54)
!1106 = !DIGlobalVariableExpression(var: !1107, expr: !DIExpression())
!1107 = distinct !DIGlobalVariable(scope: null, file: !3, line: 2488, type: !1108, isLocal: true, isDefinition: true)
!1108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !915, size: 328, elements: !1109)
!1109 = !{!1110}
!1110 = !DISubrange(count: 41)
!1111 = !DIGlobalVariableExpression(var: !1112, expr: !DIExpression())
!1112 = distinct !DIGlobalVariable(scope: null, file: !3, line: 2515, type: !955, isLocal: true, isDefinition: true)
!1113 = !DIGlobalVariableExpression(var: !1114, expr: !DIExpression())
!1114 = distinct !DIGlobalVariable(scope: null, file: !3, line: 2531, type: !1103, isLocal: true, isDefinition: true)
!1115 = !DIGlobalVariableExpression(var: !1116, expr: !DIExpression())
!1116 = distinct !DIGlobalVariable(name: "xmlCharEncodingAliasesNb", scope: !2, file: !3, line: 62, type: !7, isLocal: true, isDefinition: true)
!1117 = !DIGlobalVariableExpression(var: !1118, expr: !DIExpression())
!1118 = distinct !DIGlobalVariable(name: "xmlCharEncodingAliasesMax", scope: !2, file: !3, line: 63, type: !7, isLocal: true, isDefinition: true)
!1119 = !DIGlobalVariableExpression(var: !1120, expr: !DIExpression())
!1120 = distinct !DIGlobalVariable(name: "handlers", scope: !2, file: !3, line: 1297, type: !939, isLocal: true, isDefinition: true)
!1121 = !DIGlobalVariableExpression(var: !1122, expr: !DIExpression())
!1122 = distinct !DIGlobalVariable(name: "xmlLittleEndian", scope: !2, file: !3, line: 75, type: !7, isLocal: true, isDefinition: true)
!1123 = !DIGlobalVariableExpression(var: !1124, expr: !DIExpression())
!1124 = distinct !DIGlobalVariable(name: "xmlUTF16LEHandler", scope: !2, file: !3, line: 51, type: !917, isLocal: true, isDefinition: true)
!1125 = !DIGlobalVariableExpression(var: !1126, expr: !DIExpression())
!1126 = distinct !DIGlobalVariable(name: "xmlUTF16BEHandler", scope: !2, file: !3, line: 52, type: !917, isLocal: true, isDefinition: true)
!1127 = !DIGlobalVariableExpression(var: !1128, expr: !DIExpression())
!1128 = distinct !DIGlobalVariable(name: "nbCharEncodingHandler", scope: !2, file: !3, line: 1298, type: !7, isLocal: true, isDefinition: true)
!1129 = !DIGlobalVariableExpression(var: !1130, expr: !DIExpression())
!1130 = distinct !DIGlobalVariable(name: "xmlDefaultCharEncodingHandler", scope: !2, file: !3, line: 1305, type: !917, isLocal: true, isDefinition: true)
!1131 = !{i32 7, !"Dwarf Version", i32 5}
!1132 = !{i32 2, !"Debug Info Version", i32 3}
!1133 = !{i32 1, !"wchar_size", i32 4}
!1134 = !{i32 8, !"PIC Level", i32 2}
!1135 = !{i32 7, !"uwtable", i32 2}
!1136 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!1137 = distinct !DISubprogram(name: "isolat1ToUTF8", scope: !3, file: !3, line: 307, type: !926, scopeLine: 308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1138)
!1138 = !{!1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147}
!1139 = !DILocalVariable(name: "out", arg: 1, scope: !1137, file: !3, line: 307, type: !928)
!1140 = !DILocalVariable(name: "outlen", arg: 2, scope: !1137, file: !3, line: 307, type: !930)
!1141 = !DILocalVariable(name: "in", arg: 3, scope: !1137, file: !3, line: 308, type: !931)
!1142 = !DILocalVariable(name: "inlen", arg: 4, scope: !1137, file: !3, line: 308, type: !930)
!1143 = !DILocalVariable(name: "outstart", scope: !1137, file: !3, line: 309, type: !928)
!1144 = !DILocalVariable(name: "base", scope: !1137, file: !3, line: 310, type: !931)
!1145 = !DILocalVariable(name: "outend", scope: !1137, file: !3, line: 311, type: !928)
!1146 = !DILocalVariable(name: "inend", scope: !1137, file: !3, line: 312, type: !931)
!1147 = !DILocalVariable(name: "instop", scope: !1137, file: !3, line: 313, type: !931)
!1148 = !{!1149, !1149, i64 0}
!1149 = !{!"any pointer", !1150, i64 0}
!1150 = !{!"omnipotent char", !1151, i64 0}
!1151 = !{!"Simple C/C++ TBAA"}
!1152 = !DILocation(line: 307, column: 30, scope: !1137)
!1153 = !DILocation(line: 307, column: 40, scope: !1137)
!1154 = !DILocation(line: 308, column: 36, scope: !1137)
!1155 = !DILocation(line: 308, column: 45, scope: !1137)
!1156 = !DILocation(line: 309, column: 5, scope: !1137)
!1157 = !DILocation(line: 309, column: 20, scope: !1137)
!1158 = !DILocation(line: 309, column: 31, scope: !1137)
!1159 = !DILocation(line: 310, column: 5, scope: !1137)
!1160 = !DILocation(line: 310, column: 26, scope: !1137)
!1161 = !DILocation(line: 310, column: 33, scope: !1137)
!1162 = !DILocation(line: 311, column: 5, scope: !1137)
!1163 = !DILocation(line: 311, column: 20, scope: !1137)
!1164 = !DILocation(line: 312, column: 5, scope: !1137)
!1165 = !DILocation(line: 312, column: 26, scope: !1137)
!1166 = !DILocation(line: 313, column: 5, scope: !1137)
!1167 = !DILocation(line: 313, column: 26, scope: !1137)
!1168 = !DILocation(line: 315, column: 10, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 315, column: 9)
!1170 = !DILocation(line: 315, column: 14, scope: !1169)
!1171 = !DILocation(line: 315, column: 23, scope: !1169)
!1172 = !DILocation(line: 315, column: 27, scope: !1169)
!1173 = !DILocation(line: 315, column: 30, scope: !1169)
!1174 = !DILocation(line: 315, column: 39, scope: !1169)
!1175 = !DILocation(line: 315, column: 43, scope: !1169)
!1176 = !DILocation(line: 315, column: 50, scope: !1169)
!1177 = !DILocation(line: 315, column: 59, scope: !1169)
!1178 = !DILocation(line: 315, column: 63, scope: !1169)
!1179 = !DILocation(line: 315, column: 69, scope: !1169)
!1180 = !DILocation(line: 315, column: 9, scope: !1137)
!1181 = !DILocation(line: 316, column: 2, scope: !1169)
!1182 = !DILocation(line: 318, column: 14, scope: !1137)
!1183 = !DILocation(line: 318, column: 21, scope: !1137)
!1184 = !DILocation(line: 318, column: 20, scope: !1137)
!1185 = !{!1186, !1186, i64 0}
!1186 = !{!"int", !1150, i64 0}
!1187 = !DILocation(line: 318, column: 18, scope: !1137)
!1188 = !DILocation(line: 318, column: 12, scope: !1137)
!1189 = !DILocation(line: 319, column: 13, scope: !1137)
!1190 = !DILocation(line: 319, column: 20, scope: !1137)
!1191 = !DILocation(line: 319, column: 19, scope: !1137)
!1192 = !DILocation(line: 319, column: 16, scope: !1137)
!1193 = !DILocation(line: 319, column: 11, scope: !1137)
!1194 = !DILocation(line: 320, column: 14, scope: !1137)
!1195 = !DILocation(line: 320, column: 12, scope: !1137)
!1196 = !DILocation(line: 322, column: 5, scope: !1137)
!1197 = !DILocation(line: 322, column: 13, scope: !1137)
!1198 = !DILocation(line: 322, column: 18, scope: !1137)
!1199 = !DILocation(line: 322, column: 16, scope: !1137)
!1200 = !DILocation(line: 322, column: 25, scope: !1137)
!1201 = !DILocation(line: 322, column: 29, scope: !1137)
!1202 = !DILocation(line: 322, column: 35, scope: !1137)
!1203 = !DILocation(line: 322, column: 42, scope: !1137)
!1204 = !DILocation(line: 322, column: 33, scope: !1137)
!1205 = !DILocation(line: 0, scope: !1137)
!1206 = !DILocation(line: 323, column: 7, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 323, column: 6)
!1208 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 322, column: 48)
!1209 = !DILocation(line: 323, column: 6, scope: !1207)
!1210 = !{!1150, !1150, i64 0}
!1211 = !DILocation(line: 323, column: 10, scope: !1207)
!1212 = !DILocation(line: 323, column: 6, scope: !1208)
!1213 = !DILocation(line: 324, column: 19, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 323, column: 19)
!1215 = !DILocation(line: 324, column: 18, scope: !1214)
!1216 = !DILocation(line: 324, column: 17, scope: !1214)
!1217 = !DILocation(line: 324, column: 23, scope: !1214)
!1218 = !DILocation(line: 324, column: 30, scope: !1214)
!1219 = !DILocation(line: 324, column: 38, scope: !1214)
!1220 = !DILocation(line: 324, column: 15, scope: !1214)
!1221 = !DILocation(line: 324, column: 10, scope: !1214)
!1222 = !DILocation(line: 324, column: 13, scope: !1214)
!1223 = !DILocation(line: 325, column: 25, scope: !1214)
!1224 = !DILocation(line: 325, column: 24, scope: !1214)
!1225 = !DILocation(line: 325, column: 23, scope: !1214)
!1226 = !DILocation(line: 325, column: 29, scope: !1214)
!1227 = !DILocation(line: 325, column: 37, scope: !1214)
!1228 = !DILocation(line: 325, column: 22, scope: !1214)
!1229 = !DILocation(line: 325, column: 17, scope: !1214)
!1230 = !DILocation(line: 325, column: 20, scope: !1214)
!1231 = !DILocation(line: 326, column: 6, scope: !1214)
!1232 = !DILocation(line: 327, column: 2, scope: !1214)
!1233 = !DILocation(line: 328, column: 7, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 328, column: 6)
!1235 = !DILocation(line: 328, column: 16, scope: !1234)
!1236 = !DILocation(line: 328, column: 14, scope: !1234)
!1237 = !DILocation(line: 328, column: 23, scope: !1234)
!1238 = !DILocation(line: 328, column: 32, scope: !1234)
!1239 = !DILocation(line: 328, column: 30, scope: !1234)
!1240 = !DILocation(line: 328, column: 20, scope: !1234)
!1241 = !DILocation(line: 328, column: 6, scope: !1208)
!1242 = !DILocation(line: 328, column: 47, scope: !1234)
!1243 = !DILocation(line: 328, column: 53, scope: !1234)
!1244 = !DILocation(line: 328, column: 62, scope: !1234)
!1245 = !DILocation(line: 328, column: 60, scope: !1234)
!1246 = !DILocation(line: 328, column: 50, scope: !1234)
!1247 = !DILocation(line: 328, column: 45, scope: !1234)
!1248 = !DILocation(line: 328, column: 38, scope: !1234)
!1249 = !DILocation(line: 329, column: 2, scope: !1208)
!1250 = !DILocation(line: 329, column: 10, scope: !1208)
!1251 = !DILocation(line: 329, column: 15, scope: !1208)
!1252 = !DILocation(line: 329, column: 13, scope: !1208)
!1253 = !DILocation(line: 329, column: 23, scope: !1208)
!1254 = !DILocation(line: 329, column: 28, scope: !1208)
!1255 = !DILocation(line: 329, column: 27, scope: !1208)
!1256 = !DILocation(line: 329, column: 31, scope: !1208)
!1257 = !DILocation(line: 0, scope: !1208)
!1258 = !DILocation(line: 330, column: 18, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 329, column: 40)
!1260 = !DILocation(line: 330, column: 15, scope: !1259)
!1261 = !DILocation(line: 330, column: 10, scope: !1259)
!1262 = !DILocation(line: 330, column: 13, scope: !1259)
!1263 = distinct !{!1263, !1249, !1264, !1265}
!1264 = !DILocation(line: 331, column: 2, scope: !1208)
!1265 = !{!"llvm.loop.mustprogress"}
!1266 = distinct !{!1266, !1196, !1267, !1265}
!1267 = !DILocation(line: 332, column: 5, scope: !1137)
!1268 = !DILocation(line: 333, column: 10, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 333, column: 9)
!1270 = !DILocation(line: 333, column: 15, scope: !1269)
!1271 = !DILocation(line: 333, column: 13, scope: !1269)
!1272 = !DILocation(line: 333, column: 22, scope: !1269)
!1273 = !DILocation(line: 333, column: 26, scope: !1269)
!1274 = !DILocation(line: 333, column: 32, scope: !1269)
!1275 = !DILocation(line: 333, column: 30, scope: !1269)
!1276 = !DILocation(line: 333, column: 40, scope: !1269)
!1277 = !DILocation(line: 333, column: 45, scope: !1269)
!1278 = !DILocation(line: 333, column: 44, scope: !1269)
!1279 = !DILocation(line: 333, column: 48, scope: !1269)
!1280 = !DILocation(line: 333, column: 9, scope: !1137)
!1281 = !DILocation(line: 334, column: 21, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 333, column: 57)
!1283 = !DILocation(line: 334, column: 18, scope: !1282)
!1284 = !DILocation(line: 334, column: 13, scope: !1282)
!1285 = !DILocation(line: 334, column: 16, scope: !1282)
!1286 = !DILocation(line: 335, column: 5, scope: !1282)
!1287 = !DILocation(line: 336, column: 15, scope: !1137)
!1288 = !DILocation(line: 336, column: 21, scope: !1137)
!1289 = !DILocation(line: 336, column: 19, scope: !1137)
!1290 = !DILocation(line: 336, column: 6, scope: !1137)
!1291 = !DILocation(line: 336, column: 13, scope: !1137)
!1292 = !DILocation(line: 337, column: 14, scope: !1137)
!1293 = !DILocation(line: 337, column: 19, scope: !1137)
!1294 = !DILocation(line: 337, column: 17, scope: !1137)
!1295 = !DILocation(line: 337, column: 6, scope: !1137)
!1296 = !DILocation(line: 337, column: 12, scope: !1137)
!1297 = !DILocation(line: 338, column: 13, scope: !1137)
!1298 = !DILocation(line: 338, column: 12, scope: !1137)
!1299 = !DILocation(line: 338, column: 5, scope: !1137)
!1300 = !DILocation(line: 339, column: 1, scope: !1137)
!1301 = distinct !DISubprogram(name: "UTF8Toisolat1", scope: !3, file: !3, line: 402, type: !926, scopeLine: 403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1302)
!1302 = !{!1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314}
!1303 = !DILocalVariable(name: "out", arg: 1, scope: !1301, file: !3, line: 402, type: !928)
!1304 = !DILocalVariable(name: "outlen", arg: 2, scope: !1301, file: !3, line: 402, type: !930)
!1305 = !DILocalVariable(name: "in", arg: 3, scope: !1301, file: !3, line: 403, type: !931)
!1306 = !DILocalVariable(name: "inlen", arg: 4, scope: !1301, file: !3, line: 403, type: !930)
!1307 = !DILocalVariable(name: "processed", scope: !1301, file: !3, line: 404, type: !931)
!1308 = !DILocalVariable(name: "outend", scope: !1301, file: !3, line: 405, type: !931)
!1309 = !DILocalVariable(name: "outstart", scope: !1301, file: !3, line: 406, type: !931)
!1310 = !DILocalVariable(name: "instart", scope: !1301, file: !3, line: 407, type: !931)
!1311 = !DILocalVariable(name: "inend", scope: !1301, file: !3, line: 408, type: !931)
!1312 = !DILocalVariable(name: "c", scope: !1301, file: !3, line: 409, type: !35)
!1313 = !DILocalVariable(name: "d", scope: !1301, file: !3, line: 409, type: !35)
!1314 = !DILocalVariable(name: "trailing", scope: !1301, file: !3, line: 410, type: !7)
!1315 = !DILocation(line: 402, column: 30, scope: !1301)
!1316 = !DILocation(line: 402, column: 40, scope: !1301)
!1317 = !DILocation(line: 403, column: 36, scope: !1301)
!1318 = !DILocation(line: 403, column: 45, scope: !1301)
!1319 = !DILocation(line: 404, column: 5, scope: !1301)
!1320 = !DILocation(line: 404, column: 26, scope: !1301)
!1321 = !DILocation(line: 404, column: 38, scope: !1301)
!1322 = !DILocation(line: 405, column: 5, scope: !1301)
!1323 = !DILocation(line: 405, column: 26, scope: !1301)
!1324 = !DILocation(line: 406, column: 5, scope: !1301)
!1325 = !DILocation(line: 406, column: 26, scope: !1301)
!1326 = !DILocation(line: 406, column: 37, scope: !1301)
!1327 = !DILocation(line: 407, column: 5, scope: !1301)
!1328 = !DILocation(line: 407, column: 26, scope: !1301)
!1329 = !DILocation(line: 407, column: 36, scope: !1301)
!1330 = !DILocation(line: 408, column: 5, scope: !1301)
!1331 = !DILocation(line: 408, column: 26, scope: !1301)
!1332 = !DILocation(line: 409, column: 5, scope: !1301)
!1333 = !DILocation(line: 409, column: 18, scope: !1301)
!1334 = !DILocation(line: 409, column: 21, scope: !1301)
!1335 = !DILocation(line: 410, column: 5, scope: !1301)
!1336 = !DILocation(line: 410, column: 9, scope: !1301)
!1337 = !DILocation(line: 412, column: 10, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 412, column: 9)
!1339 = !DILocation(line: 412, column: 14, scope: !1338)
!1340 = !DILocation(line: 412, column: 23, scope: !1338)
!1341 = !DILocation(line: 412, column: 27, scope: !1338)
!1342 = !DILocation(line: 412, column: 34, scope: !1338)
!1343 = !DILocation(line: 412, column: 43, scope: !1338)
!1344 = !DILocation(line: 412, column: 47, scope: !1338)
!1345 = !DILocation(line: 412, column: 53, scope: !1338)
!1346 = !DILocation(line: 412, column: 9, scope: !1301)
!1347 = !DILocation(line: 412, column: 63, scope: !1338)
!1348 = !DILocation(line: 413, column: 9, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 413, column: 9)
!1350 = !DILocation(line: 413, column: 12, scope: !1349)
!1351 = !DILocation(line: 413, column: 9, scope: !1301)
!1352 = !DILocation(line: 417, column: 3, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 413, column: 21)
!1354 = !DILocation(line: 417, column: 10, scope: !1353)
!1355 = !DILocation(line: 418, column: 3, scope: !1353)
!1356 = !DILocation(line: 418, column: 9, scope: !1353)
!1357 = !DILocation(line: 419, column: 2, scope: !1353)
!1358 = !DILocation(line: 421, column: 13, scope: !1301)
!1359 = !DILocation(line: 421, column: 20, scope: !1301)
!1360 = !DILocation(line: 421, column: 19, scope: !1301)
!1361 = !DILocation(line: 421, column: 16, scope: !1301)
!1362 = !DILocation(line: 421, column: 11, scope: !1301)
!1363 = !DILocation(line: 422, column: 14, scope: !1301)
!1364 = !DILocation(line: 422, column: 22, scope: !1301)
!1365 = !DILocation(line: 422, column: 21, scope: !1301)
!1366 = !DILocation(line: 422, column: 18, scope: !1301)
!1367 = !DILocation(line: 422, column: 12, scope: !1301)
!1368 = !DILocation(line: 423, column: 5, scope: !1301)
!1369 = !DILocation(line: 423, column: 12, scope: !1301)
!1370 = !DILocation(line: 423, column: 17, scope: !1301)
!1371 = !DILocation(line: 423, column: 15, scope: !1301)
!1372 = !DILocation(line: 424, column: 9, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 423, column: 24)
!1374 = !DILocation(line: 424, column: 6, scope: !1373)
!1375 = !DILocation(line: 424, column: 4, scope: !1373)
!1376 = !DILocation(line: 425, column: 11, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 425, column: 11)
!1378 = !DILocation(line: 425, column: 13, scope: !1377)
!1379 = !DILocation(line: 425, column: 11, scope: !1373)
!1380 = !DILocation(line: 425, column: 27, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 425, column: 22)
!1382 = !DILocation(line: 425, column: 25, scope: !1381)
!1383 = !DILocation(line: 425, column: 38, scope: !1381)
!1384 = !DILocation(line: 425, column: 43, scope: !1381)
!1385 = !DILocation(line: 426, column: 11, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 426, column: 11)
!1387 = !DILocation(line: 426, column: 13, scope: !1386)
!1388 = !DILocation(line: 426, column: 11, scope: !1377)
!1389 = !DILocation(line: 428, column: 16, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 426, column: 21)
!1391 = !DILocation(line: 428, column: 22, scope: !1390)
!1392 = !DILocation(line: 428, column: 20, scope: !1390)
!1393 = !DILocation(line: 428, column: 7, scope: !1390)
!1394 = !DILocation(line: 428, column: 14, scope: !1390)
!1395 = !DILocation(line: 429, column: 15, scope: !1390)
!1396 = !DILocation(line: 429, column: 27, scope: !1390)
!1397 = !DILocation(line: 429, column: 25, scope: !1390)
!1398 = !DILocation(line: 429, column: 7, scope: !1390)
!1399 = !DILocation(line: 429, column: 13, scope: !1390)
!1400 = !DILocation(line: 430, column: 6, scope: !1390)
!1401 = !DILocation(line: 431, column: 20, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 431, column: 20)
!1403 = !DILocation(line: 431, column: 22, scope: !1402)
!1404 = !DILocation(line: 431, column: 20, scope: !1386)
!1405 = !DILocation(line: 431, column: 36, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1402, file: !3, line: 431, column: 31)
!1407 = !DILocation(line: 431, column: 38, scope: !1406)
!1408 = !DILocation(line: 431, column: 34, scope: !1406)
!1409 = !DILocation(line: 431, column: 54, scope: !1406)
!1410 = !DILocation(line: 431, column: 59, scope: !1406)
!1411 = !DILocation(line: 432, column: 18, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1402, file: !3, line: 432, column: 18)
!1413 = !DILocation(line: 432, column: 20, scope: !1412)
!1414 = !DILocation(line: 432, column: 18, scope: !1402)
!1415 = !DILocation(line: 432, column: 34, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1412, file: !3, line: 432, column: 29)
!1417 = !DILocation(line: 432, column: 36, scope: !1416)
!1418 = !DILocation(line: 432, column: 32, scope: !1416)
!1419 = !DILocation(line: 432, column: 52, scope: !1416)
!1420 = !DILocation(line: 432, column: 57, scope: !1416)
!1421 = !DILocation(line: 433, column: 18, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1412, file: !3, line: 433, column: 18)
!1423 = !DILocation(line: 433, column: 20, scope: !1422)
!1424 = !DILocation(line: 433, column: 18, scope: !1412)
!1425 = !DILocation(line: 433, column: 34, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 433, column: 29)
!1427 = !DILocation(line: 433, column: 36, scope: !1426)
!1428 = !DILocation(line: 433, column: 32, scope: !1426)
!1429 = !DILocation(line: 433, column: 52, scope: !1426)
!1430 = !DILocation(line: 433, column: 57, scope: !1426)
!1431 = !DILocation(line: 436, column: 16, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 434, column: 7)
!1433 = !DILocation(line: 436, column: 22, scope: !1432)
!1434 = !DILocation(line: 436, column: 20, scope: !1432)
!1435 = !DILocation(line: 436, column: 7, scope: !1432)
!1436 = !DILocation(line: 436, column: 14, scope: !1432)
!1437 = !DILocation(line: 437, column: 15, scope: !1432)
!1438 = !DILocation(line: 437, column: 27, scope: !1432)
!1439 = !DILocation(line: 437, column: 25, scope: !1432)
!1440 = !DILocation(line: 437, column: 7, scope: !1432)
!1441 = !DILocation(line: 437, column: 13, scope: !1432)
!1442 = !DILocation(line: 438, column: 6, scope: !1432)
!1443 = !DILocation(line: 441, column: 6, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 441, column: 6)
!1445 = !DILocation(line: 441, column: 14, scope: !1444)
!1446 = !DILocation(line: 441, column: 12, scope: !1444)
!1447 = !DILocation(line: 441, column: 19, scope: !1444)
!1448 = !DILocation(line: 441, column: 17, scope: !1444)
!1449 = !DILocation(line: 441, column: 6, scope: !1373)
!1450 = !DILocation(line: 442, column: 6, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1444, file: !3, line: 441, column: 29)
!1452 = !DILocation(line: 445, column: 2, scope: !1373)
!1453 = !DILocation(line: 445, column: 10, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1455, file: !3, line: 445, column: 2)
!1455 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 445, column: 2)
!1456 = !DILocation(line: 445, column: 2, scope: !1455)
!1457 = !DILocation(line: 446, column: 10, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !3, line: 446, column: 10)
!1459 = distinct !DILexicalBlock(scope: !1454, file: !3, line: 445, column: 32)
!1460 = !DILocation(line: 446, column: 16, scope: !1458)
!1461 = !DILocation(line: 446, column: 13, scope: !1458)
!1462 = !DILocation(line: 446, column: 10, scope: !1459)
!1463 = !DILocation(line: 447, column: 3, scope: !1458)
!1464 = !DILocation(line: 448, column: 18, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1459, file: !3, line: 448, column: 10)
!1466 = !DILocation(line: 448, column: 15, scope: !1465)
!1467 = !DILocation(line: 448, column: 13, scope: !1465)
!1468 = !DILocation(line: 448, column: 22, scope: !1465)
!1469 = !DILocation(line: 448, column: 30, scope: !1465)
!1470 = !DILocation(line: 448, column: 10, scope: !1459)
!1471 = !DILocation(line: 449, column: 13, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1465, file: !3, line: 448, column: 39)
!1473 = !DILocation(line: 449, column: 19, scope: !1472)
!1474 = !DILocation(line: 449, column: 17, scope: !1472)
!1475 = !DILocation(line: 449, column: 4, scope: !1472)
!1476 = !DILocation(line: 449, column: 11, scope: !1472)
!1477 = !DILocation(line: 450, column: 12, scope: !1472)
!1478 = !DILocation(line: 450, column: 24, scope: !1472)
!1479 = !DILocation(line: 450, column: 22, scope: !1472)
!1480 = !DILocation(line: 450, column: 4, scope: !1472)
!1481 = !DILocation(line: 450, column: 10, scope: !1472)
!1482 = !DILocation(line: 451, column: 3, scope: !1472)
!1483 = !DILocation(line: 453, column: 8, scope: !1459)
!1484 = !DILocation(line: 454, column: 11, scope: !1459)
!1485 = !DILocation(line: 454, column: 13, scope: !1459)
!1486 = !DILocation(line: 454, column: 8, scope: !1459)
!1487 = !DILocation(line: 455, column: 2, scope: !1459)
!1488 = !DILocation(line: 445, column: 28, scope: !1454)
!1489 = !DILocation(line: 445, column: 2, scope: !1454)
!1490 = distinct !{!1490, !1456, !1491, !1265}
!1491 = !DILocation(line: 455, column: 2, scope: !1455)
!1492 = !DILocation(line: 458, column: 6, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 458, column: 6)
!1494 = !DILocation(line: 458, column: 8, scope: !1493)
!1495 = !DILocation(line: 458, column: 6, scope: !1373)
!1496 = !DILocation(line: 459, column: 10, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 459, column: 10)
!1498 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 458, column: 17)
!1499 = !DILocation(line: 459, column: 17, scope: !1497)
!1500 = !DILocation(line: 459, column: 14, scope: !1497)
!1501 = !DILocation(line: 459, column: 10, scope: !1498)
!1502 = !DILocation(line: 460, column: 3, scope: !1497)
!1503 = !DILocation(line: 461, column: 15, scope: !1498)
!1504 = !DILocation(line: 461, column: 10, scope: !1498)
!1505 = !DILocation(line: 461, column: 13, scope: !1498)
!1506 = !DILocation(line: 462, column: 2, scope: !1498)
!1507 = !DILocation(line: 464, column: 16, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 462, column: 9)
!1509 = !DILocation(line: 464, column: 22, scope: !1508)
!1510 = !DILocation(line: 464, column: 20, scope: !1508)
!1511 = !DILocation(line: 464, column: 7, scope: !1508)
!1512 = !DILocation(line: 464, column: 14, scope: !1508)
!1513 = !DILocation(line: 465, column: 15, scope: !1508)
!1514 = !DILocation(line: 465, column: 27, scope: !1508)
!1515 = !DILocation(line: 465, column: 25, scope: !1508)
!1516 = !DILocation(line: 465, column: 7, scope: !1508)
!1517 = !DILocation(line: 465, column: 13, scope: !1508)
!1518 = !DILocation(line: 466, column: 6, scope: !1508)
!1519 = !DILocation(line: 468, column: 14, scope: !1373)
!1520 = !DILocation(line: 468, column: 12, scope: !1373)
!1521 = distinct !{!1521, !1368, !1522, !1265}
!1522 = !DILocation(line: 469, column: 5, scope: !1301)
!1523 = !DILocation(line: 470, column: 15, scope: !1301)
!1524 = !DILocation(line: 470, column: 21, scope: !1301)
!1525 = !DILocation(line: 470, column: 19, scope: !1301)
!1526 = !DILocation(line: 470, column: 6, scope: !1301)
!1527 = !DILocation(line: 470, column: 13, scope: !1301)
!1528 = !DILocation(line: 471, column: 14, scope: !1301)
!1529 = !DILocation(line: 471, column: 26, scope: !1301)
!1530 = !DILocation(line: 471, column: 24, scope: !1301)
!1531 = !DILocation(line: 471, column: 6, scope: !1301)
!1532 = !DILocation(line: 471, column: 12, scope: !1301)
!1533 = !DILocation(line: 472, column: 13, scope: !1301)
!1534 = !DILocation(line: 472, column: 12, scope: !1301)
!1535 = !DILocation(line: 472, column: 5, scope: !1301)
!1536 = !DILocation(line: 473, column: 1, scope: !1301)
!1537 = distinct !DISubprogram(name: "xmlDetectCharEncoding__internal_alias", scope: !3, file: !3, line: 932, type: !1538, scopeLine: 933, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1541)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!1540, !931, !7}
!1540 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncoding", file: !6, line: 83, baseType: !5)
!1541 = !{!1542, !1543}
!1542 = !DILocalVariable(name: "in", arg: 1, scope: !1537, file: !3, line: 932, type: !931)
!1543 = !DILocalVariable(name: "len", arg: 2, scope: !1537, file: !3, line: 932, type: !7)
!1544 = !DILocation(line: 932, column: 44, scope: !1537)
!1545 = !DILocation(line: 932, column: 52, scope: !1537)
!1546 = !DILocation(line: 934, column: 9, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 934, column: 9)
!1548 = !DILocation(line: 934, column: 12, scope: !1547)
!1549 = !DILocation(line: 934, column: 9, scope: !1537)
!1550 = !DILocation(line: 935, column: 9, scope: !1547)
!1551 = !DILocation(line: 936, column: 9, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 936, column: 9)
!1553 = !DILocation(line: 936, column: 13, scope: !1552)
!1554 = !DILocation(line: 936, column: 9, scope: !1537)
!1555 = !DILocation(line: 937, column: 7, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 937, column: 6)
!1557 = distinct !DILexicalBlock(scope: !1552, file: !3, line: 936, column: 19)
!1558 = !DILocation(line: 937, column: 13, scope: !1556)
!1559 = !DILocation(line: 937, column: 22, scope: !1556)
!1560 = !DILocation(line: 937, column: 26, scope: !1556)
!1561 = !DILocation(line: 937, column: 32, scope: !1556)
!1562 = !DILocation(line: 937, column: 41, scope: !1556)
!1563 = !DILocation(line: 938, column: 7, scope: !1556)
!1564 = !DILocation(line: 938, column: 13, scope: !1556)
!1565 = !DILocation(line: 938, column: 22, scope: !1556)
!1566 = !DILocation(line: 938, column: 26, scope: !1556)
!1567 = !DILocation(line: 938, column: 32, scope: !1556)
!1568 = !DILocation(line: 937, column: 6, scope: !1557)
!1569 = !DILocation(line: 939, column: 6, scope: !1556)
!1570 = !DILocation(line: 940, column: 7, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 940, column: 6)
!1572 = !DILocation(line: 940, column: 13, scope: !1571)
!1573 = !DILocation(line: 940, column: 22, scope: !1571)
!1574 = !DILocation(line: 940, column: 26, scope: !1571)
!1575 = !DILocation(line: 940, column: 32, scope: !1571)
!1576 = !DILocation(line: 940, column: 41, scope: !1571)
!1577 = !DILocation(line: 941, column: 7, scope: !1571)
!1578 = !DILocation(line: 941, column: 13, scope: !1571)
!1579 = !DILocation(line: 941, column: 22, scope: !1571)
!1580 = !DILocation(line: 941, column: 26, scope: !1571)
!1581 = !DILocation(line: 941, column: 32, scope: !1571)
!1582 = !DILocation(line: 940, column: 6, scope: !1557)
!1583 = !DILocation(line: 942, column: 6, scope: !1571)
!1584 = !DILocation(line: 943, column: 7, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 943, column: 6)
!1586 = !DILocation(line: 943, column: 13, scope: !1585)
!1587 = !DILocation(line: 943, column: 22, scope: !1585)
!1588 = !DILocation(line: 943, column: 26, scope: !1585)
!1589 = !DILocation(line: 943, column: 32, scope: !1585)
!1590 = !DILocation(line: 943, column: 41, scope: !1585)
!1591 = !DILocation(line: 944, column: 7, scope: !1585)
!1592 = !DILocation(line: 944, column: 13, scope: !1585)
!1593 = !DILocation(line: 944, column: 22, scope: !1585)
!1594 = !DILocation(line: 944, column: 26, scope: !1585)
!1595 = !DILocation(line: 944, column: 32, scope: !1585)
!1596 = !DILocation(line: 943, column: 6, scope: !1557)
!1597 = !DILocation(line: 945, column: 6, scope: !1585)
!1598 = !DILocation(line: 946, column: 7, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 946, column: 6)
!1600 = !DILocation(line: 946, column: 13, scope: !1599)
!1601 = !DILocation(line: 946, column: 22, scope: !1599)
!1602 = !DILocation(line: 946, column: 26, scope: !1599)
!1603 = !DILocation(line: 946, column: 32, scope: !1599)
!1604 = !DILocation(line: 946, column: 41, scope: !1599)
!1605 = !DILocation(line: 947, column: 7, scope: !1599)
!1606 = !DILocation(line: 947, column: 13, scope: !1599)
!1607 = !DILocation(line: 947, column: 22, scope: !1599)
!1608 = !DILocation(line: 947, column: 26, scope: !1599)
!1609 = !DILocation(line: 947, column: 32, scope: !1599)
!1610 = !DILocation(line: 946, column: 6, scope: !1557)
!1611 = !DILocation(line: 948, column: 6, scope: !1599)
!1612 = !DILocation(line: 949, column: 7, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 949, column: 6)
!1614 = !DILocation(line: 949, column: 13, scope: !1613)
!1615 = !DILocation(line: 949, column: 22, scope: !1613)
!1616 = !DILocation(line: 949, column: 26, scope: !1613)
!1617 = !DILocation(line: 949, column: 32, scope: !1613)
!1618 = !DILocation(line: 949, column: 41, scope: !1613)
!1619 = !DILocation(line: 950, column: 7, scope: !1613)
!1620 = !DILocation(line: 950, column: 13, scope: !1613)
!1621 = !DILocation(line: 950, column: 22, scope: !1613)
!1622 = !DILocation(line: 950, column: 26, scope: !1613)
!1623 = !DILocation(line: 950, column: 32, scope: !1613)
!1624 = !DILocation(line: 949, column: 6, scope: !1557)
!1625 = !DILocation(line: 951, column: 6, scope: !1613)
!1626 = !DILocation(line: 952, column: 7, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 952, column: 6)
!1628 = !DILocation(line: 952, column: 13, scope: !1627)
!1629 = !DILocation(line: 952, column: 22, scope: !1627)
!1630 = !DILocation(line: 952, column: 26, scope: !1627)
!1631 = !DILocation(line: 952, column: 32, scope: !1627)
!1632 = !DILocation(line: 952, column: 41, scope: !1627)
!1633 = !DILocation(line: 953, column: 7, scope: !1627)
!1634 = !DILocation(line: 953, column: 13, scope: !1627)
!1635 = !DILocation(line: 953, column: 22, scope: !1627)
!1636 = !DILocation(line: 953, column: 26, scope: !1627)
!1637 = !DILocation(line: 953, column: 32, scope: !1627)
!1638 = !DILocation(line: 952, column: 6, scope: !1557)
!1639 = !DILocation(line: 954, column: 6, scope: !1627)
!1640 = !DILocation(line: 960, column: 7, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 960, column: 6)
!1642 = !DILocation(line: 960, column: 13, scope: !1641)
!1643 = !DILocation(line: 960, column: 22, scope: !1641)
!1644 = !DILocation(line: 960, column: 26, scope: !1641)
!1645 = !DILocation(line: 960, column: 32, scope: !1641)
!1646 = !DILocation(line: 960, column: 41, scope: !1641)
!1647 = !DILocation(line: 961, column: 7, scope: !1641)
!1648 = !DILocation(line: 961, column: 13, scope: !1641)
!1649 = !DILocation(line: 961, column: 22, scope: !1641)
!1650 = !DILocation(line: 961, column: 26, scope: !1641)
!1651 = !DILocation(line: 961, column: 32, scope: !1641)
!1652 = !DILocation(line: 960, column: 6, scope: !1557)
!1653 = !DILocation(line: 962, column: 6, scope: !1641)
!1654 = !DILocation(line: 963, column: 7, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 963, column: 6)
!1656 = !DILocation(line: 963, column: 13, scope: !1655)
!1657 = !DILocation(line: 963, column: 22, scope: !1655)
!1658 = !DILocation(line: 963, column: 26, scope: !1655)
!1659 = !DILocation(line: 963, column: 32, scope: !1655)
!1660 = !DILocation(line: 963, column: 41, scope: !1655)
!1661 = !DILocation(line: 964, column: 7, scope: !1655)
!1662 = !DILocation(line: 964, column: 13, scope: !1655)
!1663 = !DILocation(line: 964, column: 22, scope: !1655)
!1664 = !DILocation(line: 964, column: 26, scope: !1655)
!1665 = !DILocation(line: 964, column: 32, scope: !1655)
!1666 = !DILocation(line: 963, column: 6, scope: !1557)
!1667 = !DILocation(line: 965, column: 6, scope: !1655)
!1668 = !DILocation(line: 966, column: 5, scope: !1557)
!1669 = !DILocation(line: 967, column: 9, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 967, column: 9)
!1671 = !DILocation(line: 967, column: 13, scope: !1670)
!1672 = !DILocation(line: 967, column: 9, scope: !1537)
!1673 = !DILocation(line: 972, column: 7, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1675, file: !3, line: 972, column: 6)
!1675 = distinct !DILexicalBlock(scope: !1670, file: !3, line: 967, column: 19)
!1676 = !DILocation(line: 972, column: 13, scope: !1674)
!1677 = !DILocation(line: 972, column: 22, scope: !1674)
!1678 = !DILocation(line: 972, column: 26, scope: !1674)
!1679 = !DILocation(line: 972, column: 32, scope: !1674)
!1680 = !DILocation(line: 972, column: 41, scope: !1674)
!1681 = !DILocation(line: 973, column: 7, scope: !1674)
!1682 = !DILocation(line: 973, column: 13, scope: !1674)
!1683 = !DILocation(line: 972, column: 6, scope: !1675)
!1684 = !DILocation(line: 974, column: 6, scope: !1674)
!1685 = !DILocation(line: 975, column: 5, scope: !1675)
!1686 = !DILocation(line: 977, column: 9, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 977, column: 9)
!1688 = !DILocation(line: 977, column: 13, scope: !1687)
!1689 = !DILocation(line: 977, column: 9, scope: !1537)
!1690 = !DILocation(line: 978, column: 7, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1692, file: !3, line: 978, column: 6)
!1692 = distinct !DILexicalBlock(scope: !1687, file: !3, line: 977, column: 19)
!1693 = !DILocation(line: 978, column: 13, scope: !1691)
!1694 = !DILocation(line: 978, column: 22, scope: !1691)
!1695 = !DILocation(line: 978, column: 26, scope: !1691)
!1696 = !DILocation(line: 978, column: 32, scope: !1691)
!1697 = !DILocation(line: 978, column: 6, scope: !1692)
!1698 = !DILocation(line: 979, column: 6, scope: !1691)
!1699 = !DILocation(line: 980, column: 7, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1692, file: !3, line: 980, column: 6)
!1701 = !DILocation(line: 980, column: 13, scope: !1700)
!1702 = !DILocation(line: 980, column: 22, scope: !1700)
!1703 = !DILocation(line: 980, column: 26, scope: !1700)
!1704 = !DILocation(line: 980, column: 32, scope: !1700)
!1705 = !DILocation(line: 980, column: 6, scope: !1692)
!1706 = !DILocation(line: 981, column: 6, scope: !1700)
!1707 = !DILocation(line: 982, column: 5, scope: !1692)
!1708 = !DILocation(line: 983, column: 5, scope: !1537)
!1709 = !DILocation(line: 984, column: 1, scope: !1537)
!1710 = distinct !DISubprogram(name: "xmlCleanupEncodingAliases__internal_alias", scope: !3, file: !3, line: 992, type: !1711, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1713)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{null}
!1713 = !{!1714}
!1714 = !DILocalVariable(name: "i", scope: !1710, file: !3, line: 993, type: !7)
!1715 = !DILocation(line: 993, column: 5, scope: !1710)
!1716 = !DILocation(line: 993, column: 9, scope: !1710)
!1717 = !DILocation(line: 995, column: 9, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1710, file: !3, line: 995, column: 9)
!1719 = !DILocation(line: 995, column: 32, scope: !1718)
!1720 = !DILocation(line: 995, column: 9, scope: !1710)
!1721 = !DILocation(line: 996, column: 2, scope: !1718)
!1722 = !DILocation(line: 998, column: 12, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1710, file: !3, line: 998, column: 5)
!1724 = !DILocation(line: 998, column: 10, scope: !1723)
!1725 = !DILocation(line: 998, column: 16, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1723, file: !3, line: 998, column: 5)
!1727 = !DILocation(line: 998, column: 20, scope: !1726)
!1728 = !DILocation(line: 998, column: 18, scope: !1726)
!1729 = !DILocation(line: 998, column: 5, scope: !1723)
!1730 = !DILocation(line: 999, column: 6, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1732, file: !3, line: 999, column: 6)
!1732 = distinct !DILexicalBlock(scope: !1726, file: !3, line: 998, column: 50)
!1733 = !DILocation(line: 999, column: 29, scope: !1731)
!1734 = !DILocation(line: 999, column: 32, scope: !1731)
!1735 = !{!1736, !1149, i64 0}
!1736 = !{!"_xmlCharEncodingAlias", !1149, i64 0, !1149, i64 8}
!1737 = !DILocation(line: 999, column: 37, scope: !1731)
!1738 = !DILocation(line: 999, column: 6, scope: !1732)
!1739 = !DILocation(line: 1000, column: 6, scope: !1731)
!1740 = !DILocation(line: 1000, column: 23, scope: !1731)
!1741 = !DILocation(line: 1000, column: 46, scope: !1731)
!1742 = !DILocation(line: 1000, column: 49, scope: !1731)
!1743 = !DILocation(line: 1001, column: 6, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1732, file: !3, line: 1001, column: 6)
!1745 = !DILocation(line: 1001, column: 29, scope: !1744)
!1746 = !DILocation(line: 1001, column: 32, scope: !1744)
!1747 = !{!1736, !1149, i64 8}
!1748 = !DILocation(line: 1001, column: 38, scope: !1744)
!1749 = !DILocation(line: 1001, column: 6, scope: !1732)
!1750 = !DILocation(line: 1002, column: 6, scope: !1744)
!1751 = !DILocation(line: 1002, column: 23, scope: !1744)
!1752 = !DILocation(line: 1002, column: 46, scope: !1744)
!1753 = !DILocation(line: 1002, column: 49, scope: !1744)
!1754 = !DILocation(line: 1003, column: 5, scope: !1732)
!1755 = !DILocation(line: 998, column: 46, scope: !1726)
!1756 = !DILocation(line: 998, column: 5, scope: !1726)
!1757 = distinct !{!1757, !1729, !1758, !1265}
!1758 = !DILocation(line: 1003, column: 5, scope: !1723)
!1759 = !DILocation(line: 1004, column: 30, scope: !1710)
!1760 = !DILocation(line: 1005, column: 31, scope: !1710)
!1761 = !DILocation(line: 1006, column: 5, scope: !1710)
!1762 = !DILocation(line: 1006, column: 13, scope: !1710)
!1763 = !DILocation(line: 1007, column: 28, scope: !1710)
!1764 = !DILocation(line: 1008, column: 1, scope: !1710)
!1765 = distinct !DISubprogram(name: "xmlGetEncodingAlias__internal_alias", scope: !3, file: !3, line: 1019, type: !1766, scopeLine: 1019, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1768)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{!914, !914}
!1768 = !{!1769, !1770, !1771, !1775}
!1769 = !DILocalVariable(name: "alias", arg: 1, scope: !1765, file: !3, line: 1019, type: !914)
!1770 = !DILocalVariable(name: "i", scope: !1765, file: !3, line: 1020, type: !7)
!1771 = !DILocalVariable(name: "upper", scope: !1765, file: !3, line: 1021, type: !1772)
!1772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !907, size: 800, elements: !1773)
!1773 = !{!1774}
!1774 = !DISubrange(count: 100)
!1775 = !DILocalVariable(name: "__res", scope: !1776, file: !3, line: 1030, type: !7)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !3, line: 1030, column: 20)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !3, line: 1029, column: 28)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !3, line: 1029, column: 5)
!1779 = distinct !DILexicalBlock(scope: !1765, file: !3, line: 1029, column: 5)
!1780 = !DILocation(line: 1019, column: 33, scope: !1765)
!1781 = !DILocation(line: 1020, column: 5, scope: !1765)
!1782 = !DILocation(line: 1020, column: 9, scope: !1765)
!1783 = !DILocation(line: 1021, column: 5, scope: !1765)
!1784 = !DILocation(line: 1021, column: 10, scope: !1765)
!1785 = !DILocation(line: 1023, column: 9, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1765, file: !3, line: 1023, column: 9)
!1787 = !DILocation(line: 1023, column: 15, scope: !1786)
!1788 = !DILocation(line: 1023, column: 9, scope: !1765)
!1789 = !DILocation(line: 1024, column: 2, scope: !1786)
!1790 = !DILocation(line: 1026, column: 9, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1765, file: !3, line: 1026, column: 9)
!1792 = !DILocation(line: 1026, column: 32, scope: !1791)
!1793 = !DILocation(line: 1026, column: 9, scope: !1765)
!1794 = !DILocation(line: 1027, column: 2, scope: !1791)
!1795 = !DILocation(line: 1029, column: 12, scope: !1779)
!1796 = !DILocation(line: 1029, column: 10, scope: !1779)
!1797 = !DILocation(line: 1029, column: 16, scope: !1778)
!1798 = !DILocation(line: 1029, column: 18, scope: !1778)
!1799 = !DILocation(line: 1029, column: 5, scope: !1779)
!1800 = !DILocation(line: 1030, column: 20, scope: !1776)
!1801 = !DILocation(line: 1030, column: 20, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1776, file: !3, line: 1030, column: 20)
!1803 = !DILocation(line: 1030, column: 20, scope: !1777)
!1804 = !DILocation(line: 1030, column: 15, scope: !1777)
!1805 = !DILocation(line: 1030, column: 9, scope: !1777)
!1806 = !DILocation(line: 1030, column: 18, scope: !1777)
!1807 = !DILocation(line: 1031, column: 12, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1777, file: !3, line: 1031, column: 6)
!1809 = !DILocation(line: 1031, column: 6, scope: !1808)
!1810 = !DILocation(line: 1031, column: 15, scope: !1808)
!1811 = !DILocation(line: 1031, column: 6, scope: !1777)
!1812 = !DILocation(line: 1031, column: 21, scope: !1808)
!1813 = !DILocation(line: 1032, column: 5, scope: !1777)
!1814 = !DILocation(line: 1029, column: 24, scope: !1778)
!1815 = !DILocation(line: 1029, column: 5, scope: !1778)
!1816 = distinct !{!1816, !1799, !1817, !1265}
!1817 = !DILocation(line: 1032, column: 5, scope: !1779)
!1818 = !DILocation(line: 1033, column: 11, scope: !1765)
!1819 = !DILocation(line: 1033, column: 5, scope: !1765)
!1820 = !DILocation(line: 1033, column: 14, scope: !1765)
!1821 = !DILocation(line: 1038, column: 12, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1765, file: !3, line: 1038, column: 5)
!1823 = !DILocation(line: 1038, column: 10, scope: !1822)
!1824 = !DILocation(line: 1038, column: 16, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1822, file: !3, line: 1038, column: 5)
!1826 = !DILocation(line: 1038, column: 20, scope: !1825)
!1827 = !DILocation(line: 1038, column: 18, scope: !1825)
!1828 = !DILocation(line: 1038, column: 5, scope: !1822)
!1829 = !DILocation(line: 1039, column: 14, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1831, file: !3, line: 1039, column: 6)
!1831 = distinct !DILexicalBlock(scope: !1825, file: !3, line: 1038, column: 50)
!1832 = !DILocation(line: 1039, column: 37, scope: !1830)
!1833 = !DILocation(line: 1039, column: 40, scope: !1830)
!1834 = !DILocation(line: 1039, column: 47, scope: !1830)
!1835 = !DILocation(line: 1039, column: 7, scope: !1830)
!1836 = !DILocation(line: 1039, column: 6, scope: !1831)
!1837 = !DILocation(line: 1040, column: 13, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1830, file: !3, line: 1039, column: 55)
!1839 = !DILocation(line: 1040, column: 36, scope: !1838)
!1840 = !DILocation(line: 1040, column: 39, scope: !1838)
!1841 = !DILocation(line: 1040, column: 6, scope: !1838)
!1842 = !DILocation(line: 1042, column: 5, scope: !1831)
!1843 = !DILocation(line: 1038, column: 46, scope: !1825)
!1844 = !DILocation(line: 1038, column: 5, scope: !1825)
!1845 = distinct !{!1845, !1828, !1846, !1265}
!1846 = !DILocation(line: 1042, column: 5, scope: !1822)
!1847 = !DILocation(line: 1043, column: 5, scope: !1765)
!1848 = !DILocation(line: 1044, column: 1, scope: !1765)
!1849 = !DISubprogram(name: "__ctype_toupper_loc", scope: !1850, file: !1850, line: 83, type: !1851, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1850 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!1853}
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1856)
!1856 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !1857, line: 41, baseType: !7)
!1857 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!1858 = !DISubprogram(name: "strcmp", scope: !1859, file: !1859, line: 156, type: !1860, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1859 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1860 = !DISubroutineType(types: !1861)
!1861 = !{!7, !914, !914}
!1862 = distinct !DISubprogram(name: "xmlAddEncodingAlias__internal_alias", scope: !3, file: !3, line: 1057, type: !1860, scopeLine: 1057, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1863)
!1863 = !{!1864, !1865, !1866, !1867, !1868}
!1864 = !DILocalVariable(name: "name", arg: 1, scope: !1862, file: !3, line: 1057, type: !914)
!1865 = !DILocalVariable(name: "alias", arg: 2, scope: !1862, file: !3, line: 1057, type: !914)
!1866 = !DILocalVariable(name: "i", scope: !1862, file: !3, line: 1058, type: !7)
!1867 = !DILocalVariable(name: "upper", scope: !1862, file: !3, line: 1059, type: !1772)
!1868 = !DILocalVariable(name: "__res", scope: !1869, file: !3, line: 1065, type: !7)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !3, line: 1065, column: 20)
!1870 = distinct !DILexicalBlock(scope: !1871, file: !3, line: 1064, column: 28)
!1871 = distinct !DILexicalBlock(scope: !1872, file: !3, line: 1064, column: 5)
!1872 = distinct !DILexicalBlock(scope: !1862, file: !3, line: 1064, column: 5)
!1873 = !DILocation(line: 1057, column: 33, scope: !1862)
!1874 = !DILocation(line: 1057, column: 51, scope: !1862)
!1875 = !DILocation(line: 1058, column: 5, scope: !1862)
!1876 = !DILocation(line: 1058, column: 9, scope: !1862)
!1877 = !DILocation(line: 1059, column: 5, scope: !1862)
!1878 = !DILocation(line: 1059, column: 10, scope: !1862)
!1879 = !DILocation(line: 1061, column: 10, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1862, file: !3, line: 1061, column: 9)
!1881 = !DILocation(line: 1061, column: 15, scope: !1880)
!1882 = !DILocation(line: 1061, column: 24, scope: !1880)
!1883 = !DILocation(line: 1061, column: 28, scope: !1880)
!1884 = !DILocation(line: 1061, column: 34, scope: !1880)
!1885 = !DILocation(line: 1061, column: 9, scope: !1862)
!1886 = !DILocation(line: 1062, column: 2, scope: !1880)
!1887 = !DILocation(line: 1064, column: 12, scope: !1872)
!1888 = !DILocation(line: 1064, column: 10, scope: !1872)
!1889 = !DILocation(line: 1064, column: 16, scope: !1871)
!1890 = !DILocation(line: 1064, column: 18, scope: !1871)
!1891 = !DILocation(line: 1064, column: 5, scope: !1872)
!1892 = !DILocation(line: 1065, column: 20, scope: !1869)
!1893 = !DILocation(line: 1065, column: 20, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1869, file: !3, line: 1065, column: 20)
!1895 = !DILocation(line: 1065, column: 20, scope: !1870)
!1896 = !DILocation(line: 1065, column: 15, scope: !1870)
!1897 = !DILocation(line: 1065, column: 9, scope: !1870)
!1898 = !DILocation(line: 1065, column: 18, scope: !1870)
!1899 = !DILocation(line: 1066, column: 12, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1870, file: !3, line: 1066, column: 6)
!1901 = !DILocation(line: 1066, column: 6, scope: !1900)
!1902 = !DILocation(line: 1066, column: 15, scope: !1900)
!1903 = !DILocation(line: 1066, column: 6, scope: !1870)
!1904 = !DILocation(line: 1066, column: 21, scope: !1900)
!1905 = !DILocation(line: 1067, column: 5, scope: !1870)
!1906 = !DILocation(line: 1064, column: 24, scope: !1871)
!1907 = !DILocation(line: 1064, column: 5, scope: !1871)
!1908 = distinct !{!1908, !1891, !1909, !1265}
!1909 = !DILocation(line: 1067, column: 5, scope: !1872)
!1910 = !DILocation(line: 1068, column: 11, scope: !1862)
!1911 = !DILocation(line: 1068, column: 5, scope: !1862)
!1912 = !DILocation(line: 1068, column: 14, scope: !1862)
!1913 = !DILocation(line: 1070, column: 9, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1862, file: !3, line: 1070, column: 9)
!1915 = !DILocation(line: 1070, column: 32, scope: !1914)
!1916 = !DILocation(line: 1070, column: 9, scope: !1862)
!1917 = !DILocation(line: 1071, column: 27, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1914, file: !3, line: 1070, column: 41)
!1919 = !DILocation(line: 1072, column: 28, scope: !1918)
!1920 = !DILocation(line: 1074, column: 8, scope: !1918)
!1921 = !DILocation(line: 1074, column: 18, scope: !1918)
!1922 = !DILocation(line: 1074, column: 44, scope: !1918)
!1923 = !DILocation(line: 1073, column: 25, scope: !1918)
!1924 = !DILocation(line: 1075, column: 6, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1918, file: !3, line: 1075, column: 6)
!1926 = !DILocation(line: 1075, column: 29, scope: !1925)
!1927 = !DILocation(line: 1075, column: 6, scope: !1918)
!1928 = !DILocation(line: 1076, column: 6, scope: !1925)
!1929 = !DILocation(line: 1077, column: 5, scope: !1918)
!1930 = !DILocation(line: 1077, column: 16, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1914, file: !3, line: 1077, column: 16)
!1932 = !DILocation(line: 1077, column: 44, scope: !1931)
!1933 = !DILocation(line: 1077, column: 41, scope: !1931)
!1934 = !DILocation(line: 1077, column: 16, scope: !1914)
!1935 = !DILocation(line: 1078, column: 28, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1931, file: !3, line: 1077, column: 71)
!1937 = !DILocation(line: 1080, column: 8, scope: !1936)
!1938 = !DILocation(line: 1080, column: 19, scope: !1936)
!1939 = !DILocation(line: 1081, column: 12, scope: !1936)
!1940 = !DILocation(line: 1081, column: 38, scope: !1936)
!1941 = !DILocation(line: 1079, column: 25, scope: !1936)
!1942 = !DILocation(line: 1082, column: 5, scope: !1936)
!1943 = !DILocation(line: 1086, column: 12, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1862, file: !3, line: 1086, column: 5)
!1945 = !DILocation(line: 1086, column: 10, scope: !1944)
!1946 = !DILocation(line: 1086, column: 16, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1944, file: !3, line: 1086, column: 5)
!1948 = !DILocation(line: 1086, column: 20, scope: !1947)
!1949 = !DILocation(line: 1086, column: 18, scope: !1947)
!1950 = !DILocation(line: 1086, column: 5, scope: !1944)
!1951 = !DILocation(line: 1087, column: 14, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !3, line: 1087, column: 6)
!1953 = distinct !DILexicalBlock(scope: !1947, file: !3, line: 1086, column: 50)
!1954 = !DILocation(line: 1087, column: 37, scope: !1952)
!1955 = !DILocation(line: 1087, column: 40, scope: !1952)
!1956 = !DILocation(line: 1087, column: 47, scope: !1952)
!1957 = !DILocation(line: 1087, column: 7, scope: !1952)
!1958 = !DILocation(line: 1087, column: 6, scope: !1953)
!1959 = !DILocation(line: 1091, column: 6, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1952, file: !3, line: 1087, column: 55)
!1961 = !DILocation(line: 1091, column: 23, scope: !1960)
!1962 = !DILocation(line: 1091, column: 46, scope: !1960)
!1963 = !DILocation(line: 1091, column: 49, scope: !1960)
!1964 = !DILocation(line: 1092, column: 39, scope: !1960)
!1965 = !DILocation(line: 1092, column: 52, scope: !1960)
!1966 = !DILocation(line: 1092, column: 6, scope: !1960)
!1967 = !DILocation(line: 1092, column: 29, scope: !1960)
!1968 = !DILocation(line: 1092, column: 32, scope: !1960)
!1969 = !DILocation(line: 1092, column: 37, scope: !1960)
!1970 = !DILocation(line: 1093, column: 6, scope: !1960)
!1971 = !DILocation(line: 1095, column: 5, scope: !1953)
!1972 = !DILocation(line: 1086, column: 46, scope: !1947)
!1973 = !DILocation(line: 1086, column: 5, scope: !1947)
!1974 = distinct !{!1974, !1950, !1975, !1265}
!1975 = !DILocation(line: 1095, column: 5, scope: !1944)
!1976 = !DILocation(line: 1099, column: 61, scope: !1862)
!1977 = !DILocation(line: 1099, column: 74, scope: !1862)
!1978 = !DILocation(line: 1099, column: 5, scope: !1862)
!1979 = !DILocation(line: 1099, column: 28, scope: !1862)
!1980 = !DILocation(line: 1099, column: 54, scope: !1862)
!1981 = !DILocation(line: 1099, column: 59, scope: !1862)
!1982 = !DILocation(line: 1100, column: 62, scope: !1862)
!1983 = !DILocation(line: 1100, column: 75, scope: !1862)
!1984 = !DILocation(line: 1100, column: 5, scope: !1862)
!1985 = !DILocation(line: 1100, column: 28, scope: !1862)
!1986 = !DILocation(line: 1100, column: 54, scope: !1862)
!1987 = !DILocation(line: 1100, column: 60, scope: !1862)
!1988 = !DILocation(line: 1101, column: 29, scope: !1862)
!1989 = !DILocation(line: 1102, column: 5, scope: !1862)
!1990 = !DILocation(line: 1103, column: 1, scope: !1862)
!1991 = distinct !DISubprogram(name: "xmlDelEncodingAlias__internal_alias", scope: !3, file: !3, line: 1114, type: !1992, scopeLine: 1114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1994)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!7, !914}
!1994 = !{!1995, !1996}
!1995 = !DILocalVariable(name: "alias", arg: 1, scope: !1991, file: !3, line: 1114, type: !914)
!1996 = !DILocalVariable(name: "i", scope: !1991, file: !3, line: 1115, type: !7)
!1997 = !DILocation(line: 1114, column: 33, scope: !1991)
!1998 = !DILocation(line: 1115, column: 5, scope: !1991)
!1999 = !DILocation(line: 1115, column: 9, scope: !1991)
!2000 = !DILocation(line: 1117, column: 9, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1991, file: !3, line: 1117, column: 9)
!2002 = !DILocation(line: 1117, column: 15, scope: !2001)
!2003 = !DILocation(line: 1117, column: 9, scope: !1991)
!2004 = !DILocation(line: 1118, column: 2, scope: !2001)
!2005 = !DILocation(line: 1120, column: 9, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1991, file: !3, line: 1120, column: 9)
!2007 = !DILocation(line: 1120, column: 32, scope: !2006)
!2008 = !DILocation(line: 1120, column: 9, scope: !1991)
!2009 = !DILocation(line: 1121, column: 2, scope: !2006)
!2010 = !DILocation(line: 1125, column: 12, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !1991, file: !3, line: 1125, column: 5)
!2012 = !DILocation(line: 1125, column: 10, scope: !2011)
!2013 = !DILocation(line: 1125, column: 16, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2011, file: !3, line: 1125, column: 5)
!2015 = !DILocation(line: 1125, column: 20, scope: !2014)
!2016 = !DILocation(line: 1125, column: 18, scope: !2014)
!2017 = !DILocation(line: 1125, column: 5, scope: !2011)
!2018 = !DILocation(line: 1126, column: 14, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2020, file: !3, line: 1126, column: 6)
!2020 = distinct !DILexicalBlock(scope: !2014, file: !3, line: 1125, column: 50)
!2021 = !DILocation(line: 1126, column: 37, scope: !2019)
!2022 = !DILocation(line: 1126, column: 40, scope: !2019)
!2023 = !DILocation(line: 1126, column: 47, scope: !2019)
!2024 = !DILocation(line: 1126, column: 7, scope: !2019)
!2025 = !DILocation(line: 1126, column: 6, scope: !2020)
!2026 = !DILocation(line: 1127, column: 6, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2019, file: !3, line: 1126, column: 55)
!2028 = !DILocation(line: 1127, column: 23, scope: !2027)
!2029 = !DILocation(line: 1127, column: 46, scope: !2027)
!2030 = !DILocation(line: 1127, column: 49, scope: !2027)
!2031 = !DILocation(line: 1128, column: 6, scope: !2027)
!2032 = !DILocation(line: 1128, column: 23, scope: !2027)
!2033 = !DILocation(line: 1128, column: 46, scope: !2027)
!2034 = !DILocation(line: 1128, column: 49, scope: !2027)
!2035 = !DILocation(line: 1129, column: 30, scope: !2027)
!2036 = !DILocation(line: 1130, column: 15, scope: !2027)
!2037 = !DILocation(line: 1130, column: 38, scope: !2027)
!2038 = !DILocation(line: 1130, column: 43, scope: !2027)
!2039 = !DILocation(line: 1130, column: 66, scope: !2027)
!2040 = !DILocation(line: 1130, column: 68, scope: !2027)
!2041 = !DILocation(line: 1131, column: 39, scope: !2027)
!2042 = !DILocation(line: 1131, column: 66, scope: !2027)
!2043 = !DILocation(line: 1131, column: 64, scope: !2027)
!2044 = !DILocation(line: 1131, column: 38, scope: !2027)
!2045 = !DILocation(line: 1131, column: 36, scope: !2027)
!2046 = !DILocation(line: 1130, column: 6, scope: !2027)
!2047 = !DILocation(line: 1132, column: 6, scope: !2027)
!2048 = !DILocation(line: 1134, column: 5, scope: !2020)
!2049 = !DILocation(line: 1125, column: 46, scope: !2014)
!2050 = !DILocation(line: 1125, column: 5, scope: !2014)
!2051 = distinct !{!2051, !2017, !2052, !1265}
!2052 = !DILocation(line: 1134, column: 5, scope: !2011)
!2053 = !DILocation(line: 1135, column: 5, scope: !1991)
!2054 = !DILocation(line: 1136, column: 1, scope: !1991)
!2055 = distinct !DISubprogram(name: "xmlParseCharEncoding__internal_alias", scope: !3, file: !3, line: 1150, type: !2056, scopeLine: 1151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2058)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!1540, !914}
!2058 = !{!2059, !2060, !2061, !2065, !2066}
!2059 = !DILocalVariable(name: "name", arg: 1, scope: !2055, file: !3, line: 1150, type: !914)
!2060 = !DILocalVariable(name: "alias", scope: !2055, file: !3, line: 1152, type: !914)
!2061 = !DILocalVariable(name: "upper", scope: !2055, file: !3, line: 1153, type: !2062)
!2062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !907, size: 4000, elements: !2063)
!2063 = !{!2064}
!2064 = !DISubrange(count: 500)
!2065 = !DILocalVariable(name: "i", scope: !2055, file: !3, line: 1154, type: !7)
!2066 = !DILocalVariable(name: "__res", scope: !2067, file: !3, line: 1167, type: !7)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !3, line: 1167, column: 20)
!2068 = distinct !DILexicalBlock(scope: !2069, file: !3, line: 1166, column: 29)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !3, line: 1166, column: 5)
!2070 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 1166, column: 5)
!2071 = !DILocation(line: 1150, column: 34, scope: !2055)
!2072 = !DILocation(line: 1152, column: 5, scope: !2055)
!2073 = !DILocation(line: 1152, column: 17, scope: !2055)
!2074 = !DILocation(line: 1153, column: 5, scope: !2055)
!2075 = !DILocation(line: 1153, column: 10, scope: !2055)
!2076 = !DILocation(line: 1154, column: 5, scope: !2055)
!2077 = !DILocation(line: 1154, column: 9, scope: !2055)
!2078 = !DILocation(line: 1156, column: 9, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 1156, column: 9)
!2080 = !DILocation(line: 1156, column: 14, scope: !2079)
!2081 = !DILocation(line: 1156, column: 9, scope: !2055)
!2082 = !DILocation(line: 1157, column: 2, scope: !2079)
!2083 = !DILocation(line: 1162, column: 33, scope: !2055)
!2084 = !DILocation(line: 1162, column: 13, scope: !2055)
!2085 = !DILocation(line: 1162, column: 11, scope: !2055)
!2086 = !DILocation(line: 1163, column: 9, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 1163, column: 9)
!2088 = !DILocation(line: 1163, column: 15, scope: !2087)
!2089 = !DILocation(line: 1163, column: 9, scope: !2055)
!2090 = !DILocation(line: 1164, column: 9, scope: !2087)
!2091 = !DILocation(line: 1164, column: 7, scope: !2087)
!2092 = !DILocation(line: 1164, column: 2, scope: !2087)
!2093 = !DILocation(line: 1166, column: 12, scope: !2070)
!2094 = !DILocation(line: 1166, column: 10, scope: !2070)
!2095 = !DILocation(line: 1166, column: 16, scope: !2069)
!2096 = !DILocation(line: 1166, column: 18, scope: !2069)
!2097 = !DILocation(line: 1166, column: 5, scope: !2070)
!2098 = !DILocation(line: 1167, column: 20, scope: !2067)
!2099 = !DILocation(line: 1167, column: 20, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2067, file: !3, line: 1167, column: 20)
!2101 = !DILocation(line: 1167, column: 20, scope: !2068)
!2102 = !DILocation(line: 1167, column: 15, scope: !2068)
!2103 = !DILocation(line: 1167, column: 9, scope: !2068)
!2104 = !DILocation(line: 1167, column: 18, scope: !2068)
!2105 = !DILocation(line: 1168, column: 12, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2068, file: !3, line: 1168, column: 6)
!2107 = !DILocation(line: 1168, column: 6, scope: !2106)
!2108 = !DILocation(line: 1168, column: 15, scope: !2106)
!2109 = !DILocation(line: 1168, column: 6, scope: !2068)
!2110 = !DILocation(line: 1168, column: 21, scope: !2106)
!2111 = !DILocation(line: 1169, column: 5, scope: !2068)
!2112 = !DILocation(line: 1166, column: 25, scope: !2069)
!2113 = !DILocation(line: 1166, column: 5, scope: !2069)
!2114 = distinct !{!2114, !2097, !2115, !1265}
!2115 = !DILocation(line: 1169, column: 5, scope: !2070)
!2116 = !DILocation(line: 1170, column: 11, scope: !2055)
!2117 = !DILocation(line: 1170, column: 5, scope: !2055)
!2118 = !DILocation(line: 1170, column: 14, scope: !2055)
!2119 = !DILocation(line: 1172, column: 17, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 1172, column: 9)
!2121 = !DILocation(line: 1172, column: 10, scope: !2120)
!2122 = !DILocation(line: 1172, column: 9, scope: !2055)
!2123 = !DILocation(line: 1172, column: 29, scope: !2120)
!2124 = !DILocation(line: 1173, column: 17, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 1173, column: 9)
!2126 = !DILocation(line: 1173, column: 10, scope: !2125)
!2127 = !DILocation(line: 1173, column: 9, scope: !2055)
!2128 = !DILocation(line: 1173, column: 34, scope: !2125)
!2129 = !DILocation(line: 1174, column: 17, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 1174, column: 9)
!2131 = !DILocation(line: 1174, column: 10, scope: !2130)
!2132 = !DILocation(line: 1174, column: 9, scope: !2055)
!2133 = !DILocation(line: 1174, column: 33, scope: !2130)
!2134 = !DILocation(line: 1180, column: 17, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 1180, column: 9)
!2136 = !DILocation(line: 1180, column: 10, scope: !2135)
!2137 = !DILocation(line: 1180, column: 9, scope: !2055)
!2138 = !DILocation(line: 1180, column: 35, scope: !2135)
!2139 = !DILocation(line: 1181, column: 17, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 1181, column: 9)
!2141 = !DILocation(line: 1181, column: 10, scope: !2140)
!2142 = !DILocation(line: 1181, column: 9, scope: !2055)
!2143 = !DILocation(line: 1181, column: 34, scope: !2140)
!2144 = !DILocation(line: 1183, column: 17, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 1183, column: 9)
!2146 = !DILocation(line: 1183, column: 10, scope: !2145)
!2147 = !DILocation(line: 1183, column: 9, scope: !2055)
!2148 = !DILocation(line: 1183, column: 44, scope: !2145)
!2149 = !DILocation(line: 1184, column: 17, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 1184, column: 9)
!2151 = !DILocation(line: 1184, column: 10, scope: !2150)
!2152 = !DILocation(line: 1184, column: 9, scope: !2055)
!2153 = !DILocation(line: 1184, column: 34, scope: !2150)
!2154 = !DILocation(line: 1185, column: 17, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 1185, column: 9)
!2156 = !DILocation(line: 1185, column: 10, scope: !2155)
!2157 = !DILocation(line: 1185, column: 9, scope: !2055)
!2158 = !DILocation(line: 1185, column: 33, scope: !2155)
!2159 = !DILocation(line: 1191, column: 17, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 1191, column: 9)
!2161 = !DILocation(line: 1191, column: 10, scope: !2160)
!2162 = !DILocation(line: 1191, column: 9, scope: !2055)
!2163 = !DILocation(line: 1191, column: 44, scope: !2160)
!2164 = !DILocation(line: 1192, column: 17, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 1192, column: 9)
!2166 = !DILocation(line: 1192, column: 10, scope: !2165)
!2167 = !DILocation(line: 1192, column: 9, scope: !2055)
!2168 = !DILocation(line: 1192, column: 34, scope: !2165)
!2169 = !DILocation(line: 1193, column: 17, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 1193, column: 9)
!2171 = !DILocation(line: 1193, column: 10, scope: !2170)
!2172 = !DILocation(line: 1193, column: 9, scope: !2055)
!2173 = !DILocation(line: 1193, column: 33, scope: !2170)
!2174 = !DILocation(line: 1196, column: 17, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 1196, column: 9)
!2176 = !DILocation(line: 1196, column: 10, scope: !2175)
!2177 = !DILocation(line: 1196, column: 9, scope: !2055)
!2178 = !DILocation(line: 1196, column: 40, scope: !2175)
!2179 = !DILocation(line: 1197, column: 17, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 1197, column: 9)
!2181 = !DILocation(line: 1197, column: 10, scope: !2180)
!2182 = !DILocation(line: 1197, column: 9, scope: !2055)
!2183 = !DILocation(line: 1197, column: 41, scope: !2180)
!2184 = !DILocation(line: 1198, column: 17, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 1198, column: 9)
!2186 = !DILocation(line: 1198, column: 10, scope: !2185)
!2187 = !DILocation(line: 1198, column: 9, scope: !2055)
!2188 = !DILocation(line: 1198, column: 41, scope: !2185)
!2189 = !DILocation(line: 1200, column: 17, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 1200, column: 9)
!2191 = !DILocation(line: 1200, column: 10, scope: !2190)
!2192 = !DILocation(line: 1200, column: 9, scope: !2055)
!2193 = !DILocation(line: 1200, column: 40, scope: !2190)
!2194 = !DILocation(line: 1201, column: 17, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 1201, column: 9)
!2196 = !DILocation(line: 1201, column: 10, scope: !2195)
!2197 = !DILocation(line: 1201, column: 9, scope: !2055)
!2198 = !DILocation(line: 1201, column: 41, scope: !2195)
!2199 = !DILocation(line: 1202, column: 17, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 1202, column: 9)
!2201 = !DILocation(line: 1202, column: 10, scope: !2200)
!2202 = !DILocation(line: 1202, column: 9, scope: !2055)
!2203 = !DILocation(line: 1202, column: 41, scope: !2200)
!2204 = !DILocation(line: 1204, column: 17, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 1204, column: 9)
!2206 = !DILocation(line: 1204, column: 10, scope: !2205)
!2207 = !DILocation(line: 1204, column: 9, scope: !2055)
!2208 = !DILocation(line: 1204, column: 40, scope: !2205)
!2209 = !DILocation(line: 1205, column: 17, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 1205, column: 9)
!2211 = !DILocation(line: 1205, column: 10, scope: !2210)
!2212 = !DILocation(line: 1205, column: 9, scope: !2055)
!2213 = !DILocation(line: 1205, column: 40, scope: !2210)
!2214 = !DILocation(line: 1206, column: 17, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 1206, column: 9)
!2216 = !DILocation(line: 1206, column: 10, scope: !2215)
!2217 = !DILocation(line: 1206, column: 9, scope: !2055)
!2218 = !DILocation(line: 1206, column: 40, scope: !2215)
!2219 = !DILocation(line: 1207, column: 17, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 1207, column: 9)
!2221 = !DILocation(line: 1207, column: 10, scope: !2220)
!2222 = !DILocation(line: 1207, column: 9, scope: !2055)
!2223 = !DILocation(line: 1207, column: 40, scope: !2220)
!2224 = !DILocation(line: 1208, column: 17, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 1208, column: 9)
!2226 = !DILocation(line: 1208, column: 10, scope: !2225)
!2227 = !DILocation(line: 1208, column: 9, scope: !2055)
!2228 = !DILocation(line: 1208, column: 40, scope: !2225)
!2229 = !DILocation(line: 1209, column: 17, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 1209, column: 9)
!2231 = !DILocation(line: 1209, column: 10, scope: !2230)
!2232 = !DILocation(line: 1209, column: 9, scope: !2055)
!2233 = !DILocation(line: 1209, column: 40, scope: !2230)
!2234 = !DILocation(line: 1210, column: 17, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 1210, column: 9)
!2236 = !DILocation(line: 1210, column: 10, scope: !2235)
!2237 = !DILocation(line: 1210, column: 9, scope: !2055)
!2238 = !DILocation(line: 1210, column: 40, scope: !2235)
!2239 = !DILocation(line: 1212, column: 17, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 1212, column: 9)
!2241 = !DILocation(line: 1212, column: 10, scope: !2240)
!2242 = !DILocation(line: 1212, column: 9, scope: !2055)
!2243 = !DILocation(line: 1212, column: 40, scope: !2240)
!2244 = !DILocation(line: 1213, column: 17, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 1213, column: 9)
!2246 = !DILocation(line: 1213, column: 10, scope: !2245)
!2247 = !DILocation(line: 1213, column: 9, scope: !2055)
!2248 = !DILocation(line: 1213, column: 38, scope: !2245)
!2249 = !DILocation(line: 1214, column: 17, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 1214, column: 9)
!2251 = !DILocation(line: 1214, column: 10, scope: !2250)
!2252 = !DILocation(line: 1214, column: 9, scope: !2055)
!2253 = !DILocation(line: 1214, column: 35, scope: !2250)
!2254 = !DILocation(line: 1219, column: 5, scope: !2055)
!2255 = !DILocation(line: 1220, column: 1, scope: !2055)
!2256 = distinct !DISubprogram(name: "xmlGetCharEncodingName__internal_alias", scope: !3, file: !3, line: 1234, type: !2257, scopeLine: 1234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2259)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{!914, !1540}
!2259 = !{!2260}
!2260 = !DILocalVariable(name: "enc", arg: 1, scope: !2256, file: !3, line: 1234, type: !1540)
!2261 = !DILocation(line: 1234, column: 40, scope: !2256)
!2262 = !DILocation(line: 1235, column: 13, scope: !2256)
!2263 = !DILocation(line: 1235, column: 5, scope: !2256)
!2264 = !DILocation(line: 1237, column: 6, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2256, file: !3, line: 1235, column: 18)
!2266 = !DILocation(line: 1239, column: 6, scope: !2265)
!2267 = !DILocation(line: 1241, column: 6, scope: !2265)
!2268 = !DILocation(line: 1243, column: 6, scope: !2265)
!2269 = !DILocation(line: 1245, column: 6, scope: !2265)
!2270 = !DILocation(line: 1247, column: 13, scope: !2265)
!2271 = !DILocation(line: 1249, column: 13, scope: !2265)
!2272 = !DILocation(line: 1251, column: 13, scope: !2265)
!2273 = !DILocation(line: 1253, column: 13, scope: !2265)
!2274 = !DILocation(line: 1255, column: 13, scope: !2265)
!2275 = !DILocation(line: 1257, column: 13, scope: !2265)
!2276 = !DILocation(line: 1259, column: 6, scope: !2265)
!2277 = !DILocation(line: 1261, column: 6, scope: !2265)
!2278 = !DILocation(line: 1263, column: 6, scope: !2265)
!2279 = !DILocation(line: 1265, column: 6, scope: !2265)
!2280 = !DILocation(line: 1267, column: 6, scope: !2265)
!2281 = !DILocation(line: 1269, column: 6, scope: !2265)
!2282 = !DILocation(line: 1271, column: 6, scope: !2265)
!2283 = !DILocation(line: 1273, column: 6, scope: !2265)
!2284 = !DILocation(line: 1275, column: 6, scope: !2265)
!2285 = !DILocation(line: 1277, column: 13, scope: !2265)
!2286 = !DILocation(line: 1279, column: 13, scope: !2265)
!2287 = !DILocation(line: 1281, column: 13, scope: !2265)
!2288 = !DILocation(line: 1283, column: 6, scope: !2265)
!2289 = !DILocation(line: 1285, column: 5, scope: !2256)
!2290 = !DILocation(line: 1286, column: 1, scope: !2256)
!2291 = distinct !DISubprogram(name: "xmlNewCharEncodingHandler__internal_alias", scope: !3, file: !3, line: 1318, type: !2292, scopeLine: 1320, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2294)
!2292 = !DISubroutineType(types: !2293)
!2293 = !{!917, !914, !924, !934}
!2294 = !{!2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303}
!2295 = !DILocalVariable(name: "name", arg: 1, scope: !2291, file: !3, line: 1318, type: !914)
!2296 = !DILocalVariable(name: "input", arg: 2, scope: !2291, file: !3, line: 1319, type: !924)
!2297 = !DILocalVariable(name: "output", arg: 3, scope: !2291, file: !3, line: 1320, type: !934)
!2298 = !DILocalVariable(name: "handler", scope: !2291, file: !3, line: 1321, type: !917)
!2299 = !DILocalVariable(name: "alias", scope: !2291, file: !3, line: 1322, type: !914)
!2300 = !DILocalVariable(name: "upper", scope: !2291, file: !3, line: 1323, type: !2062)
!2301 = !DILocalVariable(name: "i", scope: !2291, file: !3, line: 1324, type: !7)
!2302 = !DILocalVariable(name: "up", scope: !2291, file: !3, line: 1325, type: !906)
!2303 = !DILocalVariable(name: "__res", scope: !2304, file: !3, line: 1343, type: !7)
!2304 = distinct !DILexicalBlock(scope: !2305, file: !3, line: 1343, column: 20)
!2305 = distinct !DILexicalBlock(scope: !2306, file: !3, line: 1342, column: 29)
!2306 = distinct !DILexicalBlock(scope: !2307, file: !3, line: 1342, column: 5)
!2307 = distinct !DILexicalBlock(scope: !2291, file: !3, line: 1342, column: 5)
!2308 = !DILocation(line: 1318, column: 39, scope: !2291)
!2309 = !DILocation(line: 1319, column: 52, scope: !2291)
!2310 = !DILocation(line: 1320, column: 53, scope: !2291)
!2311 = !DILocation(line: 1321, column: 5, scope: !2291)
!2312 = !DILocation(line: 1321, column: 31, scope: !2291)
!2313 = !DILocation(line: 1322, column: 5, scope: !2291)
!2314 = !DILocation(line: 1322, column: 17, scope: !2291)
!2315 = !DILocation(line: 1323, column: 5, scope: !2291)
!2316 = !DILocation(line: 1323, column: 10, scope: !2291)
!2317 = !DILocation(line: 1324, column: 5, scope: !2291)
!2318 = !DILocation(line: 1324, column: 9, scope: !2291)
!2319 = !DILocation(line: 1325, column: 5, scope: !2291)
!2320 = !DILocation(line: 1325, column: 11, scope: !2291)
!2321 = !DILocation(line: 1330, column: 33, scope: !2291)
!2322 = !DILocation(line: 1330, column: 13, scope: !2291)
!2323 = !DILocation(line: 1330, column: 11, scope: !2291)
!2324 = !DILocation(line: 1331, column: 9, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2291, file: !3, line: 1331, column: 9)
!2326 = !DILocation(line: 1331, column: 15, scope: !2325)
!2327 = !DILocation(line: 1331, column: 9, scope: !2291)
!2328 = !DILocation(line: 1332, column: 9, scope: !2325)
!2329 = !DILocation(line: 1332, column: 7, scope: !2325)
!2330 = !DILocation(line: 1332, column: 2, scope: !2325)
!2331 = !DILocation(line: 1337, column: 9, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2291, file: !3, line: 1337, column: 9)
!2333 = !DILocation(line: 1337, column: 14, scope: !2332)
!2334 = !DILocation(line: 1337, column: 9, scope: !2291)
!2335 = !DILocation(line: 1338, column: 9, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2332, file: !3, line: 1337, column: 23)
!2337 = !DILocation(line: 1340, column: 2, scope: !2336)
!2338 = !DILocation(line: 1342, column: 12, scope: !2307)
!2339 = !DILocation(line: 1342, column: 10, scope: !2307)
!2340 = !DILocation(line: 1342, column: 16, scope: !2306)
!2341 = !DILocation(line: 1342, column: 18, scope: !2306)
!2342 = !DILocation(line: 1342, column: 5, scope: !2307)
!2343 = !DILocation(line: 1343, column: 20, scope: !2304)
!2344 = !DILocation(line: 1343, column: 20, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2304, file: !3, line: 1343, column: 20)
!2346 = !DILocation(line: 1343, column: 20, scope: !2305)
!2347 = !DILocation(line: 1343, column: 15, scope: !2305)
!2348 = !DILocation(line: 1343, column: 9, scope: !2305)
!2349 = !DILocation(line: 1343, column: 18, scope: !2305)
!2350 = !DILocation(line: 1344, column: 12, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2305, file: !3, line: 1344, column: 6)
!2352 = !DILocation(line: 1344, column: 6, scope: !2351)
!2353 = !DILocation(line: 1344, column: 15, scope: !2351)
!2354 = !DILocation(line: 1344, column: 6, scope: !2305)
!2355 = !DILocation(line: 1344, column: 21, scope: !2351)
!2356 = !DILocation(line: 1345, column: 5, scope: !2305)
!2357 = !DILocation(line: 1342, column: 25, scope: !2306)
!2358 = !DILocation(line: 1342, column: 5, scope: !2306)
!2359 = distinct !{!2359, !2342, !2360, !1265}
!2360 = !DILocation(line: 1345, column: 5, scope: !2307)
!2361 = !DILocation(line: 1346, column: 11, scope: !2291)
!2362 = !DILocation(line: 1346, column: 5, scope: !2291)
!2363 = !DILocation(line: 1346, column: 14, scope: !2291)
!2364 = !DILocation(line: 1347, column: 10, scope: !2291)
!2365 = !DILocation(line: 1347, column: 23, scope: !2291)
!2366 = !DILocation(line: 1347, column: 8, scope: !2291)
!2367 = !DILocation(line: 1348, column: 9, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2291, file: !3, line: 1348, column: 9)
!2369 = !DILocation(line: 1348, column: 12, scope: !2368)
!2370 = !DILocation(line: 1348, column: 9, scope: !2291)
!2371 = !DILocation(line: 1349, column: 9, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2368, file: !3, line: 1348, column: 21)
!2373 = !DILocation(line: 1350, column: 2, scope: !2372)
!2374 = !DILocation(line: 1357, column: 15, scope: !2291)
!2375 = !DILocation(line: 1356, column: 13, scope: !2291)
!2376 = !DILocation(line: 1358, column: 9, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2291, file: !3, line: 1358, column: 9)
!2378 = !DILocation(line: 1358, column: 17, scope: !2377)
!2379 = !DILocation(line: 1358, column: 9, scope: !2291)
!2380 = !DILocation(line: 1359, column: 9, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2377, file: !3, line: 1358, column: 26)
!2382 = !DILocation(line: 1359, column: 17, scope: !2381)
!2383 = !DILocation(line: 1360, column: 9, scope: !2381)
!2384 = !DILocation(line: 1361, column: 2, scope: !2381)
!2385 = !DILocation(line: 1363, column: 12, scope: !2291)
!2386 = !DILocation(line: 1363, column: 5, scope: !2291)
!2387 = !DILocation(line: 1364, column: 22, scope: !2291)
!2388 = !DILocation(line: 1364, column: 5, scope: !2291)
!2389 = !DILocation(line: 1364, column: 14, scope: !2291)
!2390 = !DILocation(line: 1364, column: 20, scope: !2291)
!2391 = !{!2392, !1149, i64 8}
!2392 = !{!"_xmlCharEncodingHandler", !1149, i64 0, !1149, i64 8, !1149, i64 16, !1149, i64 24, !1149, i64 32}
!2393 = !DILocation(line: 1365, column: 23, scope: !2291)
!2394 = !DILocation(line: 1365, column: 5, scope: !2291)
!2395 = !DILocation(line: 1365, column: 14, scope: !2291)
!2396 = !DILocation(line: 1365, column: 21, scope: !2291)
!2397 = !{!2392, !1149, i64 16}
!2398 = !DILocation(line: 1366, column: 21, scope: !2291)
!2399 = !DILocation(line: 1366, column: 5, scope: !2291)
!2400 = !DILocation(line: 1366, column: 14, scope: !2291)
!2401 = !DILocation(line: 1366, column: 19, scope: !2291)
!2402 = !{!2392, !1149, i64 0}
!2403 = !DILocation(line: 1369, column: 5, scope: !2291)
!2404 = !DILocation(line: 1369, column: 14, scope: !2291)
!2405 = !DILocation(line: 1369, column: 23, scope: !2291)
!2406 = !{!2392, !1149, i64 24}
!2407 = !DILocation(line: 1370, column: 5, scope: !2291)
!2408 = !DILocation(line: 1370, column: 14, scope: !2291)
!2409 = !DILocation(line: 1370, column: 24, scope: !2291)
!2410 = !{!2392, !1149, i64 32}
!2411 = !DILocation(line: 1380, column: 36, scope: !2291)
!2412 = !DILocation(line: 1380, column: 5, scope: !2291)
!2413 = !DILocation(line: 1385, column: 12, scope: !2291)
!2414 = !DILocation(line: 1385, column: 5, scope: !2291)
!2415 = !DILocation(line: 1386, column: 1, scope: !2291)
!2416 = distinct !DISubprogram(name: "xmlEncodingErr", scope: !3, file: !3, line: 97, type: !2417, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2420)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{null, !2419, !914, !914}
!2419 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserErrors", file: !34, line: 834, baseType: !33)
!2420 = !{!2421, !2422, !2423}
!2421 = !DILocalVariable(name: "error", arg: 1, scope: !2416, file: !3, line: 97, type: !2419)
!2422 = !DILocalVariable(name: "msg", arg: 2, scope: !2416, file: !3, line: 97, type: !914)
!2423 = !DILocalVariable(name: "val", arg: 3, scope: !2416, file: !3, line: 97, type: !914)
!2424 = !DILocation(line: 97, column: 32, scope: !2416)
!2425 = !DILocation(line: 97, column: 51, scope: !2416)
!2426 = !DILocation(line: 97, column: 68, scope: !2416)
!2427 = !DILocation(line: 100, column: 36, scope: !2416)
!2428 = !DILocation(line: 101, column: 30, scope: !2416)
!2429 = !DILocation(line: 101, column: 53, scope: !2416)
!2430 = !DILocation(line: 101, column: 58, scope: !2416)
!2431 = !DILocation(line: 99, column: 5, scope: !2416)
!2432 = !DILocation(line: 102, column: 1, scope: !2416)
!2433 = distinct !DISubprogram(name: "xmlEncodingErrMemory", scope: !3, file: !3, line: 84, type: !2434, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2436)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{null, !914}
!2436 = !{!2437}
!2437 = !DILocalVariable(name: "extra", arg: 1, scope: !2433, file: !3, line: 84, type: !914)
!2438 = !DILocation(line: 84, column: 34, scope: !2433)
!2439 = !DILocation(line: 86, column: 68, scope: !2433)
!2440 = !DILocation(line: 86, column: 5, scope: !2433)
!2441 = !DILocation(line: 87, column: 1, scope: !2433)
!2442 = distinct !DISubprogram(name: "xmlRegisterCharEncodingHandler__internal_alias", scope: !3, file: !3, line: 1481, type: !2443, scopeLine: 1481, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2445)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{null, !917}
!2445 = !{!2446}
!2446 = !DILocalVariable(name: "handler", arg: 1, scope: !2442, file: !3, line: 1481, type: !917)
!2447 = !DILocation(line: 1481, column: 58, scope: !2442)
!2448 = !DILocation(line: 1482, column: 9, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2442, file: !3, line: 1482, column: 9)
!2450 = !DILocation(line: 1482, column: 18, scope: !2449)
!2451 = !DILocation(line: 1482, column: 9, scope: !2442)
!2452 = !DILocation(line: 1482, column: 27, scope: !2449)
!2453 = !DILocation(line: 1483, column: 10, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2442, file: !3, line: 1483, column: 9)
!2455 = !DILocation(line: 1483, column: 18, scope: !2454)
!2456 = !DILocation(line: 1483, column: 27, scope: !2454)
!2457 = !DILocation(line: 1483, column: 31, scope: !2454)
!2458 = !DILocation(line: 1483, column: 40, scope: !2454)
!2459 = !DILocation(line: 1483, column: 9, scope: !2442)
!2460 = !DILocation(line: 1484, column: 9, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 1483, column: 50)
!2462 = !DILocation(line: 1486, column: 2, scope: !2461)
!2463 = !DILocation(line: 1489, column: 9, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2442, file: !3, line: 1489, column: 9)
!2465 = !DILocation(line: 1489, column: 31, scope: !2464)
!2466 = !DILocation(line: 1489, column: 9, scope: !2442)
!2467 = !DILocation(line: 1490, column: 9, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2464, file: !3, line: 1489, column: 57)
!2469 = !DILocation(line: 1493, column: 2, scope: !2468)
!2470 = !DILocation(line: 1495, column: 41, scope: !2442)
!2471 = !DILocation(line: 1495, column: 5, scope: !2442)
!2472 = !DILocation(line: 1495, column: 35, scope: !2442)
!2473 = !DILocation(line: 1495, column: 39, scope: !2442)
!2474 = !DILocation(line: 1496, column: 1, scope: !2442)
!2475 = distinct !DISubprogram(name: "xmlInitCharEncodingHandlers__internal_alias", scope: !3, file: !3, line: 1397, type: !1711, scopeLine: 1397, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2476)
!2476 = !{!2477, !2478}
!2477 = !DILocalVariable(name: "tst", scope: !2475, file: !3, line: 1398, type: !945)
!2478 = !DILocalVariable(name: "ptr", scope: !2475, file: !3, line: 1399, type: !928)
!2479 = !DILocation(line: 1398, column: 5, scope: !2475)
!2480 = !DILocation(line: 1398, column: 24, scope: !2475)
!2481 = !{!2482, !2482, i64 0}
!2482 = !{!"short", !1150, i64 0}
!2483 = !DILocation(line: 1399, column: 5, scope: !2475)
!2484 = !DILocation(line: 1399, column: 20, scope: !2475)
!2485 = !DILocation(line: 1401, column: 9, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2475, file: !3, line: 1401, column: 9)
!2487 = !DILocation(line: 1401, column: 18, scope: !2486)
!2488 = !DILocation(line: 1401, column: 9, scope: !2475)
!2489 = !DILocation(line: 1401, column: 27, scope: !2486)
!2490 = !DILocation(line: 1404, column: 9, scope: !2475)
!2491 = !DILocation(line: 1403, column: 14, scope: !2475)
!2492 = !DILocation(line: 1406, column: 10, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2475, file: !3, line: 1406, column: 9)
!2494 = !DILocation(line: 1406, column: 9, scope: !2493)
!2495 = !DILocation(line: 1406, column: 14, scope: !2493)
!2496 = !DILocation(line: 1406, column: 9, scope: !2475)
!2497 = !DILocation(line: 1406, column: 39, scope: !2493)
!2498 = !DILocation(line: 1406, column: 23, scope: !2493)
!2499 = !DILocation(line: 1407, column: 15, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2493, file: !3, line: 1407, column: 14)
!2501 = !DILocation(line: 1407, column: 14, scope: !2500)
!2502 = !DILocation(line: 1407, column: 19, scope: !2500)
!2503 = !DILocation(line: 1407, column: 14, scope: !2493)
!2504 = !DILocation(line: 1407, column: 44, scope: !2500)
!2505 = !DILocation(line: 1407, column: 28, scope: !2500)
!2506 = !DILocation(line: 1409, column: 9, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2500, file: !3, line: 1408, column: 10)
!2508 = !DILocation(line: 1413, column: 9, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2475, file: !3, line: 1413, column: 9)
!2510 = !DILocation(line: 1413, column: 18, scope: !2509)
!2511 = !DILocation(line: 1413, column: 9, scope: !2475)
!2512 = !DILocation(line: 1414, column: 9, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2509, file: !3, line: 1413, column: 27)
!2514 = !DILocation(line: 1415, column: 2, scope: !2513)
!2515 = !DILocation(line: 1417, column: 5, scope: !2475)
!2516 = !DILocation(line: 1420, column: 11, scope: !2475)
!2517 = !DILocation(line: 1419, column: 23, scope: !2475)
!2518 = !DILocation(line: 1422, column: 11, scope: !2475)
!2519 = !DILocation(line: 1421, column: 23, scope: !2475)
!2520 = !DILocation(line: 1423, column: 5, scope: !2475)
!2521 = !DILocation(line: 1424, column: 5, scope: !2475)
!2522 = !DILocation(line: 1425, column: 5, scope: !2475)
!2523 = !DILocation(line: 1426, column: 5, scope: !2475)
!2524 = !DILocation(line: 1428, column: 5, scope: !2475)
!2525 = !DILocation(line: 1446, column: 1, scope: !2475)
!2526 = distinct !DISubprogram(name: "UTF8ToUTF8", scope: !3, file: !3, line: 355, type: !926, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2527)
!2527 = !{!2528, !2529, !2530, !2531, !2532}
!2528 = !DILocalVariable(name: "out", arg: 1, scope: !2526, file: !3, line: 355, type: !928)
!2529 = !DILocalVariable(name: "outlen", arg: 2, scope: !2526, file: !3, line: 355, type: !930)
!2530 = !DILocalVariable(name: "inb", arg: 3, scope: !2526, file: !3, line: 356, type: !931)
!2531 = !DILocalVariable(name: "inlenb", arg: 4, scope: !2526, file: !3, line: 356, type: !930)
!2532 = !DILocalVariable(name: "len", scope: !2526, file: !3, line: 358, type: !7)
!2533 = !DILocation(line: 355, column: 27, scope: !2526)
!2534 = !DILocation(line: 355, column: 37, scope: !2526)
!2535 = !DILocation(line: 356, column: 33, scope: !2526)
!2536 = !DILocation(line: 356, column: 43, scope: !2526)
!2537 = !DILocation(line: 358, column: 5, scope: !2526)
!2538 = !DILocation(line: 358, column: 9, scope: !2526)
!2539 = !DILocation(line: 360, column: 10, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2526, file: !3, line: 360, column: 9)
!2541 = !DILocation(line: 360, column: 14, scope: !2540)
!2542 = !DILocation(line: 360, column: 23, scope: !2540)
!2543 = !DILocation(line: 360, column: 27, scope: !2540)
!2544 = !DILocation(line: 360, column: 34, scope: !2540)
!2545 = !DILocation(line: 360, column: 43, scope: !2540)
!2546 = !DILocation(line: 360, column: 47, scope: !2540)
!2547 = !DILocation(line: 360, column: 54, scope: !2540)
!2548 = !DILocation(line: 360, column: 9, scope: !2526)
!2549 = !DILocation(line: 361, column: 2, scope: !2540)
!2550 = !DILocation(line: 362, column: 9, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2526, file: !3, line: 362, column: 9)
!2552 = !DILocation(line: 362, column: 13, scope: !2551)
!2553 = !DILocation(line: 362, column: 9, scope: !2526)
!2554 = !DILocation(line: 364, column: 10, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2551, file: !3, line: 362, column: 22)
!2556 = !DILocation(line: 364, column: 17, scope: !2555)
!2557 = !DILocation(line: 365, column: 10, scope: !2555)
!2558 = !DILocation(line: 365, column: 17, scope: !2555)
!2559 = !DILocation(line: 366, column: 9, scope: !2555)
!2560 = !DILocation(line: 368, column: 10, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2526, file: !3, line: 368, column: 9)
!2562 = !DILocation(line: 368, column: 9, scope: !2561)
!2563 = !DILocation(line: 368, column: 20, scope: !2561)
!2564 = !DILocation(line: 368, column: 19, scope: !2561)
!2565 = !DILocation(line: 368, column: 17, scope: !2561)
!2566 = !DILocation(line: 368, column: 9, scope: !2526)
!2567 = !DILocation(line: 369, column: 9, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2561, file: !3, line: 368, column: 28)
!2569 = !DILocation(line: 369, column: 8, scope: !2568)
!2570 = !DILocation(line: 369, column: 6, scope: !2568)
!2571 = !DILocation(line: 370, column: 5, scope: !2568)
!2572 = !DILocation(line: 371, column: 9, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2561, file: !3, line: 370, column: 12)
!2574 = !DILocation(line: 371, column: 8, scope: !2573)
!2575 = !DILocation(line: 371, column: 6, scope: !2573)
!2576 = !DILocation(line: 373, column: 9, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2526, file: !3, line: 373, column: 9)
!2578 = !DILocation(line: 373, column: 13, scope: !2577)
!2579 = !DILocation(line: 373, column: 9, scope: !2526)
!2580 = !DILocation(line: 374, column: 2, scope: !2577)
!2581 = !DILocation(line: 376, column: 12, scope: !2526)
!2582 = !DILocation(line: 376, column: 17, scope: !2526)
!2583 = !DILocation(line: 376, column: 22, scope: !2526)
!2584 = !DILocation(line: 376, column: 5, scope: !2526)
!2585 = !DILocation(line: 378, column: 15, scope: !2526)
!2586 = !DILocation(line: 378, column: 6, scope: !2526)
!2587 = !DILocation(line: 378, column: 13, scope: !2526)
!2588 = !DILocation(line: 379, column: 15, scope: !2526)
!2589 = !DILocation(line: 379, column: 6, scope: !2526)
!2590 = !DILocation(line: 379, column: 13, scope: !2526)
!2591 = !DILocation(line: 380, column: 13, scope: !2526)
!2592 = !DILocation(line: 380, column: 12, scope: !2526)
!2593 = !DILocation(line: 380, column: 5, scope: !2526)
!2594 = !DILocation(line: 381, column: 1, scope: !2526)
!2595 = distinct !DISubprogram(name: "UTF16LEToUTF8", scope: !3, file: !3, line: 494, type: !926, scopeLine: 496, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2596)
!2596 = !{!2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610}
!2597 = !DILocalVariable(name: "out", arg: 1, scope: !2595, file: !3, line: 494, type: !928)
!2598 = !DILocalVariable(name: "outlen", arg: 2, scope: !2595, file: !3, line: 494, type: !930)
!2599 = !DILocalVariable(name: "inb", arg: 3, scope: !2595, file: !3, line: 495, type: !931)
!2600 = !DILocalVariable(name: "inlenb", arg: 4, scope: !2595, file: !3, line: 495, type: !930)
!2601 = !DILocalVariable(name: "outstart", scope: !2595, file: !3, line: 497, type: !928)
!2602 = !DILocalVariable(name: "processed", scope: !2595, file: !3, line: 498, type: !931)
!2603 = !DILocalVariable(name: "outend", scope: !2595, file: !3, line: 499, type: !928)
!2604 = !DILocalVariable(name: "in", scope: !2595, file: !3, line: 500, type: !944)
!2605 = !DILocalVariable(name: "inend", scope: !2595, file: !3, line: 501, type: !944)
!2606 = !DILocalVariable(name: "c", scope: !2595, file: !3, line: 502, type: !35)
!2607 = !DILocalVariable(name: "d", scope: !2595, file: !3, line: 502, type: !35)
!2608 = !DILocalVariable(name: "inlen", scope: !2595, file: !3, line: 502, type: !35)
!2609 = !DILocalVariable(name: "tmp", scope: !2595, file: !3, line: 503, type: !928)
!2610 = !DILocalVariable(name: "bits", scope: !2595, file: !3, line: 504, type: !7)
!2611 = !DILocation(line: 494, column: 30, scope: !2595)
!2612 = !DILocation(line: 494, column: 40, scope: !2595)
!2613 = !DILocation(line: 495, column: 34, scope: !2595)
!2614 = !DILocation(line: 495, column: 44, scope: !2595)
!2615 = !DILocation(line: 497, column: 5, scope: !2595)
!2616 = !DILocation(line: 497, column: 20, scope: !2595)
!2617 = !DILocation(line: 497, column: 31, scope: !2595)
!2618 = !DILocation(line: 498, column: 5, scope: !2595)
!2619 = !DILocation(line: 498, column: 26, scope: !2595)
!2620 = !DILocation(line: 498, column: 38, scope: !2595)
!2621 = !DILocation(line: 499, column: 5, scope: !2595)
!2622 = !DILocation(line: 499, column: 20, scope: !2595)
!2623 = !DILocation(line: 499, column: 29, scope: !2595)
!2624 = !DILocation(line: 499, column: 36, scope: !2595)
!2625 = !DILocation(line: 499, column: 35, scope: !2595)
!2626 = !DILocation(line: 499, column: 33, scope: !2595)
!2627 = !DILocation(line: 500, column: 5, scope: !2595)
!2628 = !DILocation(line: 500, column: 21, scope: !2595)
!2629 = !DILocation(line: 500, column: 44, scope: !2595)
!2630 = !DILocation(line: 501, column: 5, scope: !2595)
!2631 = !DILocation(line: 501, column: 21, scope: !2595)
!2632 = !DILocation(line: 502, column: 5, scope: !2595)
!2633 = !DILocation(line: 502, column: 18, scope: !2595)
!2634 = !DILocation(line: 502, column: 21, scope: !2595)
!2635 = !DILocation(line: 502, column: 24, scope: !2595)
!2636 = !DILocation(line: 503, column: 5, scope: !2595)
!2637 = !DILocation(line: 503, column: 20, scope: !2595)
!2638 = !DILocation(line: 504, column: 5, scope: !2595)
!2639 = !DILocation(line: 504, column: 9, scope: !2595)
!2640 = !DILocation(line: 506, column: 11, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2595, file: !3, line: 506, column: 9)
!2642 = !DILocation(line: 506, column: 10, scope: !2641)
!2643 = !DILocation(line: 506, column: 18, scope: !2641)
!2644 = !DILocation(line: 506, column: 23, scope: !2641)
!2645 = !DILocation(line: 506, column: 9, scope: !2595)
!2646 = !DILocation(line: 507, column: 11, scope: !2641)
!2647 = !DILocation(line: 507, column: 18, scope: !2641)
!2648 = !DILocation(line: 507, column: 9, scope: !2641)
!2649 = !DILocation(line: 508, column: 14, scope: !2595)
!2650 = !DILocation(line: 508, column: 13, scope: !2595)
!2651 = !DILocation(line: 508, column: 21, scope: !2595)
!2652 = !DILocation(line: 508, column: 11, scope: !2595)
!2653 = !DILocation(line: 509, column: 13, scope: !2595)
!2654 = !DILocation(line: 509, column: 18, scope: !2595)
!2655 = !DILocation(line: 509, column: 16, scope: !2595)
!2656 = !DILocation(line: 509, column: 11, scope: !2595)
!2657 = !DILocation(line: 510, column: 5, scope: !2595)
!2658 = !DILocation(line: 510, column: 13, scope: !2595)
!2659 = !DILocation(line: 510, column: 18, scope: !2595)
!2660 = !DILocation(line: 510, column: 16, scope: !2595)
!2661 = !DILocation(line: 510, column: 25, scope: !2595)
!2662 = !DILocation(line: 510, column: 29, scope: !2595)
!2663 = !DILocation(line: 510, column: 35, scope: !2595)
!2664 = !DILocation(line: 510, column: 33, scope: !2595)
!2665 = !DILocation(line: 510, column: 44, scope: !2595)
!2666 = !DILocation(line: 510, column: 51, scope: !2595)
!2667 = !DILocation(line: 510, column: 50, scope: !2595)
!2668 = !DILocation(line: 510, column: 48, scope: !2595)
!2669 = !DILocation(line: 0, scope: !2595)
!2670 = !DILocation(line: 511, column: 13, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2672, file: !3, line: 511, column: 13)
!2672 = distinct !DILexicalBlock(scope: !2595, file: !3, line: 510, column: 60)
!2673 = !DILocation(line: 511, column: 13, scope: !2672)
!2674 = !DILocation(line: 512, column: 12, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 511, column: 30)
!2676 = !DILocation(line: 512, column: 9, scope: !2675)
!2677 = !DILocation(line: 512, column: 7, scope: !2675)
!2678 = !DILocation(line: 513, column: 2, scope: !2675)
!2679 = !DILocation(line: 514, column: 30, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 513, column: 9)
!2681 = !DILocation(line: 514, column: 10, scope: !2680)
!2682 = !DILocation(line: 515, column: 14, scope: !2680)
!2683 = !DILocation(line: 515, column: 10, scope: !2680)
!2684 = !DILocation(line: 515, column: 8, scope: !2680)
!2685 = !DILocation(line: 516, column: 10, scope: !2680)
!2686 = !DILocation(line: 516, column: 31, scope: !2680)
!2687 = !DILocation(line: 516, column: 30, scope: !2680)
!2688 = !DILocation(line: 516, column: 16, scope: !2680)
!2689 = !DILocation(line: 516, column: 36, scope: !2680)
!2690 = !DILocation(line: 516, column: 12, scope: !2680)
!2691 = !DILocation(line: 516, column: 8, scope: !2680)
!2692 = !DILocation(line: 517, column: 8, scope: !2680)
!2693 = !DILocation(line: 519, column: 14, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2672, file: !3, line: 519, column: 13)
!2695 = !DILocation(line: 519, column: 16, scope: !2694)
!2696 = !DILocation(line: 519, column: 26, scope: !2694)
!2697 = !DILocation(line: 519, column: 13, scope: !2672)
!2698 = !DILocation(line: 520, column: 10, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2700, file: !3, line: 520, column: 10)
!2700 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 519, column: 37)
!2701 = !DILocation(line: 520, column: 16, scope: !2699)
!2702 = !DILocation(line: 520, column: 13, scope: !2699)
!2703 = !DILocation(line: 520, column: 10, scope: !2700)
!2704 = !DILocation(line: 521, column: 3, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2699, file: !3, line: 520, column: 23)
!2706 = !DILocation(line: 523, column: 10, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2700, file: !3, line: 523, column: 10)
!2708 = !DILocation(line: 523, column: 10, scope: !2700)
!2709 = !DILocation(line: 524, column: 10, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2707, file: !3, line: 523, column: 27)
!2711 = !DILocation(line: 524, column: 7, scope: !2710)
!2712 = !DILocation(line: 524, column: 5, scope: !2710)
!2713 = !DILocation(line: 525, column: 6, scope: !2710)
!2714 = !DILocation(line: 526, column: 27, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2707, file: !3, line: 525, column: 13)
!2716 = !DILocation(line: 526, column: 7, scope: !2715)
!2717 = !DILocation(line: 527, column: 11, scope: !2715)
!2718 = !DILocation(line: 527, column: 7, scope: !2715)
!2719 = !DILocation(line: 527, column: 5, scope: !2715)
!2720 = !DILocation(line: 528, column: 7, scope: !2715)
!2721 = !DILocation(line: 528, column: 28, scope: !2715)
!2722 = !DILocation(line: 528, column: 27, scope: !2715)
!2723 = !DILocation(line: 528, column: 13, scope: !2715)
!2724 = !DILocation(line: 528, column: 33, scope: !2715)
!2725 = !DILocation(line: 528, column: 9, scope: !2715)
!2726 = !DILocation(line: 528, column: 5, scope: !2715)
!2727 = !DILocation(line: 529, column: 5, scope: !2715)
!2728 = !DILocation(line: 531, column: 18, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2700, file: !3, line: 531, column: 17)
!2730 = !DILocation(line: 531, column: 20, scope: !2729)
!2731 = !DILocation(line: 531, column: 30, scope: !2729)
!2732 = !DILocation(line: 531, column: 17, scope: !2700)
!2733 = !DILocation(line: 532, column: 19, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2729, file: !3, line: 531, column: 41)
!2735 = !DILocation(line: 533, column: 19, scope: !2734)
!2736 = !DILocation(line: 534, column: 22, scope: !2734)
!2737 = !DILocation(line: 534, column: 24, scope: !2734)
!2738 = !DILocation(line: 534, column: 19, scope: !2734)
!2739 = !DILocation(line: 535, column: 19, scope: !2734)
!2740 = !DILocation(line: 536, column: 13, scope: !2734)
!2741 = !DILocation(line: 538, column: 13, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2729, file: !3, line: 537, column: 18)
!2743 = !DILocation(line: 538, column: 19, scope: !2742)
!2744 = !DILocation(line: 538, column: 17, scope: !2742)
!2745 = !DILocation(line: 538, column: 4, scope: !2742)
!2746 = !DILocation(line: 538, column: 11, scope: !2742)
!2747 = !DILocation(line: 539, column: 13, scope: !2742)
!2748 = !DILocation(line: 539, column: 25, scope: !2742)
!2749 = !DILocation(line: 539, column: 23, scope: !2742)
!2750 = !DILocation(line: 539, column: 4, scope: !2742)
!2751 = !DILocation(line: 539, column: 11, scope: !2742)
!2752 = !DILocation(line: 540, column: 10, scope: !2742)
!2753 = !DILocation(line: 542, column: 9, scope: !2700)
!2754 = !DILocation(line: 545, column: 13, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2672, file: !3, line: 545, column: 13)
!2756 = !DILocation(line: 545, column: 20, scope: !2755)
!2757 = !DILocation(line: 545, column: 17, scope: !2755)
!2758 = !DILocation(line: 545, column: 13, scope: !2672)
!2759 = !DILocation(line: 546, column: 6, scope: !2755)
!2760 = !DILocation(line: 547, column: 18, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2672, file: !3, line: 547, column: 18)
!2762 = !DILocation(line: 547, column: 20, scope: !2761)
!2763 = !DILocation(line: 547, column: 18, scope: !2672)
!2764 = !DILocation(line: 547, column: 43, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2761, file: !3, line: 547, column: 31)
!2766 = !DILocation(line: 547, column: 38, scope: !2765)
!2767 = !DILocation(line: 547, column: 40, scope: !2765)
!2768 = !DILocation(line: 547, column: 65, scope: !2765)
!2769 = !DILocation(line: 547, column: 71, scope: !2765)
!2770 = !DILocation(line: 548, column: 18, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2761, file: !3, line: 548, column: 18)
!2772 = !DILocation(line: 548, column: 20, scope: !2771)
!2773 = !DILocation(line: 548, column: 18, scope: !2761)
!2774 = !DILocation(line: 548, column: 44, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2771, file: !3, line: 548, column: 31)
!2776 = !DILocation(line: 548, column: 46, scope: !2775)
!2777 = !DILocation(line: 548, column: 53, scope: !2775)
!2778 = !DILocation(line: 548, column: 61, scope: !2775)
!2779 = !DILocation(line: 548, column: 42, scope: !2775)
!2780 = !DILocation(line: 548, column: 38, scope: !2775)
!2781 = !DILocation(line: 548, column: 40, scope: !2775)
!2782 = !DILocation(line: 548, column: 74, scope: !2775)
!2783 = !DILocation(line: 548, column: 80, scope: !2775)
!2784 = !DILocation(line: 549, column: 18, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2771, file: !3, line: 549, column: 18)
!2786 = !DILocation(line: 549, column: 20, scope: !2785)
!2787 = !DILocation(line: 549, column: 18, scope: !2771)
!2788 = !DILocation(line: 549, column: 44, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2785, file: !3, line: 549, column: 31)
!2790 = !DILocation(line: 549, column: 46, scope: !2789)
!2791 = !DILocation(line: 549, column: 53, scope: !2789)
!2792 = !DILocation(line: 549, column: 61, scope: !2789)
!2793 = !DILocation(line: 549, column: 42, scope: !2789)
!2794 = !DILocation(line: 549, column: 38, scope: !2789)
!2795 = !DILocation(line: 549, column: 40, scope: !2789)
!2796 = !DILocation(line: 549, column: 74, scope: !2789)
!2797 = !DILocation(line: 549, column: 80, scope: !2789)
!2798 = !DILocation(line: 550, column: 44, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2785, file: !3, line: 550, column: 31)
!2800 = !DILocation(line: 550, column: 46, scope: !2799)
!2801 = !DILocation(line: 550, column: 53, scope: !2799)
!2802 = !DILocation(line: 550, column: 61, scope: !2799)
!2803 = !DILocation(line: 550, column: 42, scope: !2799)
!2804 = !DILocation(line: 550, column: 38, scope: !2799)
!2805 = !DILocation(line: 550, column: 40, scope: !2799)
!2806 = !DILocation(line: 550, column: 74, scope: !2799)
!2807 = !DILocation(line: 552, column: 9, scope: !2672)
!2808 = !DILocation(line: 552, column: 17, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2810, file: !3, line: 552, column: 9)
!2810 = distinct !DILexicalBlock(scope: !2672, file: !3, line: 552, column: 9)
!2811 = !DILocation(line: 552, column: 22, scope: !2809)
!2812 = !DILocation(line: 552, column: 9, scope: !2810)
!2813 = !DILocation(line: 553, column: 17, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2815, file: !3, line: 553, column: 17)
!2815 = distinct !DILexicalBlock(scope: !2809, file: !3, line: 552, column: 38)
!2816 = !DILocation(line: 553, column: 24, scope: !2814)
!2817 = !DILocation(line: 553, column: 21, scope: !2814)
!2818 = !DILocation(line: 553, column: 17, scope: !2815)
!2819 = !DILocation(line: 554, column: 10, scope: !2814)
!2820 = !DILocation(line: 555, column: 23, scope: !2815)
!2821 = !DILocation(line: 555, column: 28, scope: !2815)
!2822 = !DILocation(line: 555, column: 25, scope: !2815)
!2823 = !DILocation(line: 555, column: 34, scope: !2815)
!2824 = !DILocation(line: 555, column: 42, scope: !2815)
!2825 = !DILocation(line: 555, column: 21, scope: !2815)
!2826 = !DILocation(line: 555, column: 17, scope: !2815)
!2827 = !DILocation(line: 555, column: 19, scope: !2815)
!2828 = !DILocation(line: 556, column: 9, scope: !2815)
!2829 = !DILocation(line: 552, column: 32, scope: !2809)
!2830 = !DILocation(line: 552, column: 9, scope: !2809)
!2831 = distinct !{!2831, !2812, !2832, !1265}
!2832 = !DILocation(line: 556, column: 9, scope: !2810)
!2833 = !DILocation(line: 557, column: 37, scope: !2672)
!2834 = !DILocation(line: 557, column: 12, scope: !2672)
!2835 = distinct !{!2835, !2657, !2836, !1265}
!2836 = !DILocation(line: 558, column: 5, scope: !2595)
!2837 = !DILocation(line: 559, column: 15, scope: !2595)
!2838 = !DILocation(line: 559, column: 21, scope: !2595)
!2839 = !DILocation(line: 559, column: 19, scope: !2595)
!2840 = !DILocation(line: 559, column: 6, scope: !2595)
!2841 = !DILocation(line: 559, column: 13, scope: !2595)
!2842 = !DILocation(line: 560, column: 15, scope: !2595)
!2843 = !DILocation(line: 560, column: 27, scope: !2595)
!2844 = !DILocation(line: 560, column: 25, scope: !2595)
!2845 = !DILocation(line: 560, column: 6, scope: !2595)
!2846 = !DILocation(line: 560, column: 13, scope: !2595)
!2847 = !DILocation(line: 561, column: 13, scope: !2595)
!2848 = !DILocation(line: 561, column: 12, scope: !2595)
!2849 = !DILocation(line: 561, column: 5, scope: !2595)
!2850 = !DILocation(line: 562, column: 1, scope: !2595)
!2851 = distinct !DISubprogram(name: "UTF8ToUTF16LE", scope: !3, file: !3, line: 579, type: !926, scopeLine: 581, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2852)
!2852 = !{!2853, !2854, !2855, !2856, !2857, !2858, !2859, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869}
!2853 = !DILocalVariable(name: "outb", arg: 1, scope: !2851, file: !3, line: 579, type: !928)
!2854 = !DILocalVariable(name: "outlen", arg: 2, scope: !2851, file: !3, line: 579, type: !930)
!2855 = !DILocalVariable(name: "in", arg: 3, scope: !2851, file: !3, line: 580, type: !931)
!2856 = !DILocalVariable(name: "inlen", arg: 4, scope: !2851, file: !3, line: 580, type: !930)
!2857 = !DILocalVariable(name: "out", scope: !2851, file: !3, line: 582, type: !944)
!2858 = !DILocalVariable(name: "processed", scope: !2851, file: !3, line: 583, type: !931)
!2859 = !DILocalVariable(name: "instart", scope: !2851, file: !3, line: 584, type: !2860)
!2860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !931)
!2861 = !DILocalVariable(name: "outstart", scope: !2851, file: !3, line: 585, type: !944)
!2862 = !DILocalVariable(name: "outend", scope: !2851, file: !3, line: 586, type: !944)
!2863 = !DILocalVariable(name: "inend", scope: !2851, file: !3, line: 587, type: !931)
!2864 = !DILocalVariable(name: "c", scope: !2851, file: !3, line: 588, type: !35)
!2865 = !DILocalVariable(name: "d", scope: !2851, file: !3, line: 588, type: !35)
!2866 = !DILocalVariable(name: "trailing", scope: !2851, file: !3, line: 589, type: !7)
!2867 = !DILocalVariable(name: "tmp", scope: !2851, file: !3, line: 590, type: !928)
!2868 = !DILocalVariable(name: "tmp1", scope: !2851, file: !3, line: 591, type: !945)
!2869 = !DILocalVariable(name: "tmp2", scope: !2851, file: !3, line: 591, type: !945)
!2870 = !DILocation(line: 579, column: 30, scope: !2851)
!2871 = !DILocation(line: 579, column: 41, scope: !2851)
!2872 = !DILocation(line: 580, column: 34, scope: !2851)
!2873 = !DILocation(line: 580, column: 43, scope: !2851)
!2874 = !DILocation(line: 582, column: 5, scope: !2851)
!2875 = !DILocation(line: 582, column: 21, scope: !2851)
!2876 = !DILocation(line: 582, column: 45, scope: !2851)
!2877 = !DILocation(line: 583, column: 5, scope: !2851)
!2878 = !DILocation(line: 583, column: 26, scope: !2851)
!2879 = !DILocation(line: 583, column: 38, scope: !2851)
!2880 = !DILocation(line: 584, column: 5, scope: !2851)
!2881 = !DILocation(line: 584, column: 32, scope: !2851)
!2882 = !DILocation(line: 584, column: 42, scope: !2851)
!2883 = !DILocation(line: 585, column: 5, scope: !2851)
!2884 = !DILocation(line: 585, column: 21, scope: !2851)
!2885 = !DILocation(line: 585, column: 31, scope: !2851)
!2886 = !DILocation(line: 586, column: 5, scope: !2851)
!2887 = !DILocation(line: 586, column: 21, scope: !2851)
!2888 = !DILocation(line: 587, column: 5, scope: !2851)
!2889 = !DILocation(line: 587, column: 26, scope: !2851)
!2890 = !DILocation(line: 588, column: 5, scope: !2851)
!2891 = !DILocation(line: 588, column: 18, scope: !2851)
!2892 = !DILocation(line: 588, column: 21, scope: !2851)
!2893 = !DILocation(line: 589, column: 5, scope: !2851)
!2894 = !DILocation(line: 589, column: 9, scope: !2851)
!2895 = !DILocation(line: 590, column: 5, scope: !2851)
!2896 = !DILocation(line: 590, column: 20, scope: !2851)
!2897 = !DILocation(line: 591, column: 5, scope: !2851)
!2898 = !DILocation(line: 591, column: 20, scope: !2851)
!2899 = !DILocation(line: 591, column: 26, scope: !2851)
!2900 = !DILocation(line: 594, column: 10, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 594, column: 9)
!2902 = !DILocation(line: 594, column: 14, scope: !2901)
!2903 = !DILocation(line: 594, column: 23, scope: !2901)
!2904 = !DILocation(line: 594, column: 27, scope: !2901)
!2905 = !DILocation(line: 594, column: 34, scope: !2901)
!2906 = !DILocation(line: 594, column: 43, scope: !2901)
!2907 = !DILocation(line: 594, column: 47, scope: !2901)
!2908 = !DILocation(line: 594, column: 53, scope: !2901)
!2909 = !DILocation(line: 594, column: 9, scope: !2851)
!2910 = !DILocation(line: 594, column: 63, scope: !2901)
!2911 = !DILocation(line: 595, column: 9, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 595, column: 9)
!2913 = !DILocation(line: 595, column: 12, scope: !2912)
!2914 = !DILocation(line: 595, column: 9, scope: !2851)
!2915 = !DILocation(line: 596, column: 3, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2912, file: !3, line: 595, column: 21)
!2917 = !DILocation(line: 596, column: 10, scope: !2916)
!2918 = !DILocation(line: 597, column: 3, scope: !2916)
!2919 = !DILocation(line: 597, column: 9, scope: !2916)
!2920 = !DILocation(line: 598, column: 2, scope: !2916)
!2921 = !DILocation(line: 600, column: 12, scope: !2851)
!2922 = !DILocation(line: 600, column: 18, scope: !2851)
!2923 = !DILocation(line: 600, column: 17, scope: !2851)
!2924 = !DILocation(line: 600, column: 15, scope: !2851)
!2925 = !DILocation(line: 600, column: 10, scope: !2851)
!2926 = !DILocation(line: 601, column: 14, scope: !2851)
!2927 = !DILocation(line: 601, column: 22, scope: !2851)
!2928 = !DILocation(line: 601, column: 21, scope: !2851)
!2929 = !DILocation(line: 601, column: 29, scope: !2851)
!2930 = !DILocation(line: 601, column: 18, scope: !2851)
!2931 = !DILocation(line: 601, column: 12, scope: !2851)
!2932 = !DILocation(line: 602, column: 5, scope: !2851)
!2933 = !DILocation(line: 602, column: 12, scope: !2851)
!2934 = !DILocation(line: 602, column: 17, scope: !2851)
!2935 = !DILocation(line: 602, column: 15, scope: !2851)
!2936 = !DILocation(line: 603, column: 13, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 602, column: 24)
!2938 = !DILocation(line: 603, column: 10, scope: !2937)
!2939 = !DILocation(line: 603, column: 8, scope: !2937)
!2940 = !DILocation(line: 604, column: 16, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2937, file: !3, line: 604, column: 16)
!2942 = !DILocation(line: 604, column: 18, scope: !2941)
!2943 = !DILocation(line: 604, column: 16, scope: !2937)
!2944 = !DILocation(line: 604, column: 32, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2941, file: !3, line: 604, column: 27)
!2946 = !DILocation(line: 604, column: 30, scope: !2945)
!2947 = !DILocation(line: 604, column: 43, scope: !2945)
!2948 = !DILocation(line: 604, column: 48, scope: !2945)
!2949 = !DILocation(line: 605, column: 16, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2941, file: !3, line: 605, column: 16)
!2951 = !DILocation(line: 605, column: 18, scope: !2950)
!2952 = !DILocation(line: 605, column: 16, scope: !2941)
!2953 = !DILocation(line: 607, column: 15, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2950, file: !3, line: 605, column: 26)
!2955 = !DILocation(line: 607, column: 21, scope: !2954)
!2956 = !DILocation(line: 607, column: 19, scope: !2954)
!2957 = !DILocation(line: 607, column: 31, scope: !2954)
!2958 = !DILocation(line: 607, column: 14, scope: !2954)
!2959 = !DILocation(line: 607, column: 5, scope: !2954)
!2960 = !DILocation(line: 607, column: 12, scope: !2954)
!2961 = !DILocation(line: 608, column: 13, scope: !2954)
!2962 = !DILocation(line: 608, column: 25, scope: !2954)
!2963 = !DILocation(line: 608, column: 23, scope: !2954)
!2964 = !DILocation(line: 608, column: 5, scope: !2954)
!2965 = !DILocation(line: 608, column: 11, scope: !2954)
!2966 = !DILocation(line: 609, column: 4, scope: !2954)
!2967 = !DILocation(line: 610, column: 18, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2950, file: !3, line: 610, column: 18)
!2969 = !DILocation(line: 610, column: 20, scope: !2968)
!2970 = !DILocation(line: 610, column: 18, scope: !2950)
!2971 = !DILocation(line: 610, column: 34, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2968, file: !3, line: 610, column: 29)
!2973 = !DILocation(line: 610, column: 36, scope: !2972)
!2974 = !DILocation(line: 610, column: 32, scope: !2972)
!2975 = !DILocation(line: 610, column: 52, scope: !2972)
!2976 = !DILocation(line: 610, column: 57, scope: !2972)
!2977 = !DILocation(line: 611, column: 16, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2968, file: !3, line: 611, column: 16)
!2979 = !DILocation(line: 611, column: 18, scope: !2978)
!2980 = !DILocation(line: 611, column: 16, scope: !2968)
!2981 = !DILocation(line: 611, column: 32, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2978, file: !3, line: 611, column: 27)
!2983 = !DILocation(line: 611, column: 34, scope: !2982)
!2984 = !DILocation(line: 611, column: 30, scope: !2982)
!2985 = !DILocation(line: 611, column: 50, scope: !2982)
!2986 = !DILocation(line: 611, column: 55, scope: !2982)
!2987 = !DILocation(line: 612, column: 16, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2978, file: !3, line: 612, column: 16)
!2989 = !DILocation(line: 612, column: 18, scope: !2988)
!2990 = !DILocation(line: 612, column: 16, scope: !2978)
!2991 = !DILocation(line: 612, column: 32, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2988, file: !3, line: 612, column: 27)
!2993 = !DILocation(line: 612, column: 34, scope: !2992)
!2994 = !DILocation(line: 612, column: 30, scope: !2992)
!2995 = !DILocation(line: 612, column: 50, scope: !2992)
!2996 = !DILocation(line: 612, column: 55, scope: !2992)
!2997 = !DILocation(line: 615, column: 13, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2988, file: !3, line: 613, column: 12)
!2999 = !DILocation(line: 615, column: 19, scope: !2998)
!3000 = !DILocation(line: 615, column: 17, scope: !2998)
!3001 = !DILocation(line: 615, column: 29, scope: !2998)
!3002 = !DILocation(line: 615, column: 12, scope: !2998)
!3003 = !DILocation(line: 615, column: 3, scope: !2998)
!3004 = !DILocation(line: 615, column: 10, scope: !2998)
!3005 = !DILocation(line: 616, column: 11, scope: !2998)
!3006 = !DILocation(line: 616, column: 23, scope: !2998)
!3007 = !DILocation(line: 616, column: 21, scope: !2998)
!3008 = !DILocation(line: 616, column: 3, scope: !2998)
!3009 = !DILocation(line: 616, column: 9, scope: !2998)
!3010 = !DILocation(line: 617, column: 2, scope: !2998)
!3011 = !DILocation(line: 620, column: 11, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !2937, file: !3, line: 620, column: 11)
!3013 = !DILocation(line: 620, column: 19, scope: !3012)
!3014 = !DILocation(line: 620, column: 17, scope: !3012)
!3015 = !DILocation(line: 620, column: 24, scope: !3012)
!3016 = !DILocation(line: 620, column: 22, scope: !3012)
!3017 = !DILocation(line: 620, column: 11, scope: !2937)
!3018 = !DILocation(line: 621, column: 11, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !3012, file: !3, line: 620, column: 34)
!3020 = !DILocation(line: 624, column: 7, scope: !2937)
!3021 = !DILocation(line: 624, column: 15, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3023, file: !3, line: 624, column: 7)
!3023 = distinct !DILexicalBlock(scope: !2937, file: !3, line: 624, column: 7)
!3024 = !DILocation(line: 624, column: 7, scope: !3023)
!3025 = !DILocation(line: 625, column: 16, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !3027, file: !3, line: 625, column: 15)
!3027 = distinct !DILexicalBlock(scope: !3022, file: !3, line: 624, column: 37)
!3028 = !DILocation(line: 625, column: 22, scope: !3026)
!3029 = !DILocation(line: 625, column: 19, scope: !3026)
!3030 = !DILocation(line: 625, column: 29, scope: !3026)
!3031 = !DILocation(line: 625, column: 41, scope: !3026)
!3032 = !DILocation(line: 625, column: 38, scope: !3026)
!3033 = !DILocation(line: 625, column: 36, scope: !3026)
!3034 = !DILocation(line: 625, column: 45, scope: !3026)
!3035 = !DILocation(line: 625, column: 53, scope: !3026)
!3036 = !DILocation(line: 625, column: 15, scope: !3027)
!3037 = !DILocation(line: 626, column: 8, scope: !3026)
!3038 = !DILocation(line: 627, column: 13, scope: !3027)
!3039 = !DILocation(line: 628, column: 16, scope: !3027)
!3040 = !DILocation(line: 628, column: 18, scope: !3027)
!3041 = !DILocation(line: 628, column: 13, scope: !3027)
!3042 = !DILocation(line: 629, column: 7, scope: !3027)
!3043 = !DILocation(line: 624, column: 33, scope: !3022)
!3044 = !DILocation(line: 624, column: 7, scope: !3022)
!3045 = distinct !{!3045, !3024, !3046, !1265}
!3046 = !DILocation(line: 629, column: 7, scope: !3023)
!3047 = !DILocation(line: 632, column: 13, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !2937, file: !3, line: 632, column: 13)
!3049 = !DILocation(line: 632, column: 15, scope: !3048)
!3050 = !DILocation(line: 632, column: 13, scope: !2937)
!3051 = !DILocation(line: 633, column: 17, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3053, file: !3, line: 633, column: 17)
!3053 = distinct !DILexicalBlock(scope: !3048, file: !3, line: 632, column: 26)
!3054 = !DILocation(line: 633, column: 24, scope: !3052)
!3055 = !DILocation(line: 633, column: 21, scope: !3052)
!3056 = !DILocation(line: 633, column: 17, scope: !3053)
!3057 = !DILocation(line: 634, column: 10, scope: !3052)
!3058 = !DILocation(line: 635, column: 10, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !3053, file: !3, line: 635, column: 10)
!3060 = !DILocation(line: 635, column: 10, scope: !3053)
!3061 = !DILocation(line: 636, column: 12, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3059, file: !3, line: 635, column: 27)
!3063 = !DILocation(line: 636, column: 7, scope: !3062)
!3064 = !DILocation(line: 636, column: 10, scope: !3062)
!3065 = !DILocation(line: 637, column: 6, scope: !3062)
!3066 = !DILocation(line: 638, column: 27, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3059, file: !3, line: 637, column: 13)
!3068 = !DILocation(line: 638, column: 7, scope: !3067)
!3069 = !DILocation(line: 639, column: 10, scope: !3067)
!3070 = !DILocation(line: 639, column: 4, scope: !3067)
!3071 = !DILocation(line: 639, column: 8, scope: !3067)
!3072 = !DILocation(line: 640, column: 16, scope: !3067)
!3073 = !DILocation(line: 640, column: 18, scope: !3067)
!3074 = !DILocation(line: 640, column: 5, scope: !3067)
!3075 = !DILocation(line: 640, column: 9, scope: !3067)
!3076 = !DILocation(line: 640, column: 14, scope: !3067)
!3077 = !DILocation(line: 641, column: 6, scope: !3067)
!3078 = !DILocation(line: 643, column: 9, scope: !3053)
!3079 = !DILocation(line: 644, column: 18, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3048, file: !3, line: 644, column: 18)
!3081 = !DILocation(line: 644, column: 20, scope: !3080)
!3082 = !DILocation(line: 644, column: 18, scope: !3048)
!3083 = !DILocation(line: 645, column: 17, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3085, file: !3, line: 645, column: 17)
!3085 = distinct !DILexicalBlock(scope: !3080, file: !3, line: 644, column: 32)
!3086 = !DILocation(line: 645, column: 20, scope: !3084)
!3087 = !DILocation(line: 645, column: 26, scope: !3084)
!3088 = !DILocation(line: 645, column: 23, scope: !3084)
!3089 = !DILocation(line: 645, column: 17, scope: !3085)
!3090 = !DILocation(line: 646, column: 10, scope: !3084)
!3091 = !DILocation(line: 647, column: 15, scope: !3085)
!3092 = !DILocation(line: 648, column: 10, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3085, file: !3, line: 648, column: 10)
!3094 = !DILocation(line: 648, column: 10, scope: !3085)
!3095 = !DILocation(line: 649, column: 22, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3093, file: !3, line: 648, column: 27)
!3097 = !DILocation(line: 649, column: 24, scope: !3096)
!3098 = !DILocation(line: 649, column: 19, scope: !3096)
!3099 = !DILocation(line: 649, column: 12, scope: !3096)
!3100 = !DILocation(line: 649, column: 7, scope: !3096)
!3101 = !DILocation(line: 649, column: 10, scope: !3096)
!3102 = !DILocation(line: 650, column: 22, scope: !3096)
!3103 = !DILocation(line: 650, column: 24, scope: !3096)
!3104 = !DILocation(line: 650, column: 19, scope: !3096)
!3105 = !DILocation(line: 650, column: 12, scope: !3096)
!3106 = !DILocation(line: 650, column: 7, scope: !3096)
!3107 = !DILocation(line: 650, column: 10, scope: !3096)
!3108 = !DILocation(line: 651, column: 6, scope: !3096)
!3109 = !DILocation(line: 652, column: 20, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3093, file: !3, line: 651, column: 13)
!3111 = !DILocation(line: 652, column: 22, scope: !3110)
!3112 = !DILocation(line: 652, column: 17, scope: !3110)
!3113 = !DILocation(line: 652, column: 10, scope: !3110)
!3114 = !DILocation(line: 652, column: 8, scope: !3110)
!3115 = !DILocation(line: 653, column: 27, scope: !3110)
!3116 = !DILocation(line: 653, column: 7, scope: !3110)
!3117 = !DILocation(line: 654, column: 26, scope: !3110)
!3118 = !DILocation(line: 654, column: 10, scope: !3110)
!3119 = !DILocation(line: 654, column: 4, scope: !3110)
!3120 = !DILocation(line: 654, column: 8, scope: !3110)
!3121 = !DILocation(line: 655, column: 16, scope: !3110)
!3122 = !DILocation(line: 655, column: 21, scope: !3110)
!3123 = !DILocation(line: 655, column: 5, scope: !3110)
!3124 = !DILocation(line: 655, column: 9, scope: !3110)
!3125 = !DILocation(line: 655, column: 14, scope: !3110)
!3126 = !DILocation(line: 656, column: 6, scope: !3110)
!3127 = !DILocation(line: 658, column: 20, scope: !3110)
!3128 = !DILocation(line: 658, column: 22, scope: !3110)
!3129 = !DILocation(line: 658, column: 17, scope: !3110)
!3130 = !DILocation(line: 658, column: 10, scope: !3110)
!3131 = !DILocation(line: 658, column: 8, scope: !3110)
!3132 = !DILocation(line: 659, column: 27, scope: !3110)
!3133 = !DILocation(line: 659, column: 7, scope: !3110)
!3134 = !DILocation(line: 660, column: 27, scope: !3110)
!3135 = !DILocation(line: 660, column: 11, scope: !3110)
!3136 = !DILocation(line: 660, column: 4, scope: !3110)
!3137 = !DILocation(line: 660, column: 9, scope: !3110)
!3138 = !DILocation(line: 661, column: 16, scope: !3110)
!3139 = !DILocation(line: 661, column: 21, scope: !3110)
!3140 = !DILocation(line: 661, column: 5, scope: !3110)
!3141 = !DILocation(line: 661, column: 9, scope: !3110)
!3142 = !DILocation(line: 661, column: 14, scope: !3110)
!3143 = !DILocation(line: 662, column: 6, scope: !3110)
!3144 = !DILocation(line: 664, column: 9, scope: !3085)
!3145 = !DILocation(line: 666, column: 6, scope: !3080)
!3146 = !DILocation(line: 667, column: 14, scope: !2937)
!3147 = !DILocation(line: 667, column: 12, scope: !2937)
!3148 = distinct !{!3148, !2932, !3149, !1265}
!3149 = !DILocation(line: 668, column: 5, scope: !2851)
!3150 = !DILocation(line: 669, column: 16, scope: !2851)
!3151 = !DILocation(line: 669, column: 22, scope: !2851)
!3152 = !DILocation(line: 669, column: 20, scope: !2851)
!3153 = !DILocation(line: 669, column: 32, scope: !2851)
!3154 = !DILocation(line: 669, column: 15, scope: !2851)
!3155 = !DILocation(line: 669, column: 6, scope: !2851)
!3156 = !DILocation(line: 669, column: 13, scope: !2851)
!3157 = !DILocation(line: 670, column: 14, scope: !2851)
!3158 = !DILocation(line: 670, column: 26, scope: !2851)
!3159 = !DILocation(line: 670, column: 24, scope: !2851)
!3160 = !DILocation(line: 670, column: 6, scope: !2851)
!3161 = !DILocation(line: 670, column: 12, scope: !2851)
!3162 = !DILocation(line: 671, column: 13, scope: !2851)
!3163 = !DILocation(line: 671, column: 12, scope: !2851)
!3164 = !DILocation(line: 671, column: 5, scope: !2851)
!3165 = !DILocation(line: 672, column: 1, scope: !2851)
!3166 = distinct !DISubprogram(name: "UTF16BEToUTF8", scope: !3, file: !3, line: 732, type: !926, scopeLine: 734, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3167)
!3167 = !{!3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181}
!3168 = !DILocalVariable(name: "out", arg: 1, scope: !3166, file: !3, line: 732, type: !928)
!3169 = !DILocalVariable(name: "outlen", arg: 2, scope: !3166, file: !3, line: 732, type: !930)
!3170 = !DILocalVariable(name: "inb", arg: 3, scope: !3166, file: !3, line: 733, type: !931)
!3171 = !DILocalVariable(name: "inlenb", arg: 4, scope: !3166, file: !3, line: 733, type: !930)
!3172 = !DILocalVariable(name: "outstart", scope: !3166, file: !3, line: 735, type: !928)
!3173 = !DILocalVariable(name: "processed", scope: !3166, file: !3, line: 736, type: !931)
!3174 = !DILocalVariable(name: "outend", scope: !3166, file: !3, line: 737, type: !928)
!3175 = !DILocalVariable(name: "in", scope: !3166, file: !3, line: 738, type: !944)
!3176 = !DILocalVariable(name: "inend", scope: !3166, file: !3, line: 739, type: !944)
!3177 = !DILocalVariable(name: "c", scope: !3166, file: !3, line: 740, type: !35)
!3178 = !DILocalVariable(name: "d", scope: !3166, file: !3, line: 740, type: !35)
!3179 = !DILocalVariable(name: "inlen", scope: !3166, file: !3, line: 740, type: !35)
!3180 = !DILocalVariable(name: "tmp", scope: !3166, file: !3, line: 741, type: !928)
!3181 = !DILocalVariable(name: "bits", scope: !3166, file: !3, line: 742, type: !7)
!3182 = !DILocation(line: 732, column: 30, scope: !3166)
!3183 = !DILocation(line: 732, column: 40, scope: !3166)
!3184 = !DILocation(line: 733, column: 34, scope: !3166)
!3185 = !DILocation(line: 733, column: 44, scope: !3166)
!3186 = !DILocation(line: 735, column: 5, scope: !3166)
!3187 = !DILocation(line: 735, column: 20, scope: !3166)
!3188 = !DILocation(line: 735, column: 31, scope: !3166)
!3189 = !DILocation(line: 736, column: 5, scope: !3166)
!3190 = !DILocation(line: 736, column: 26, scope: !3166)
!3191 = !DILocation(line: 736, column: 38, scope: !3166)
!3192 = !DILocation(line: 737, column: 5, scope: !3166)
!3193 = !DILocation(line: 737, column: 20, scope: !3166)
!3194 = !DILocation(line: 737, column: 29, scope: !3166)
!3195 = !DILocation(line: 737, column: 36, scope: !3166)
!3196 = !DILocation(line: 737, column: 35, scope: !3166)
!3197 = !DILocation(line: 737, column: 33, scope: !3166)
!3198 = !DILocation(line: 738, column: 5, scope: !3166)
!3199 = !DILocation(line: 738, column: 21, scope: !3166)
!3200 = !DILocation(line: 738, column: 44, scope: !3166)
!3201 = !DILocation(line: 739, column: 5, scope: !3166)
!3202 = !DILocation(line: 739, column: 21, scope: !3166)
!3203 = !DILocation(line: 740, column: 5, scope: !3166)
!3204 = !DILocation(line: 740, column: 18, scope: !3166)
!3205 = !DILocation(line: 740, column: 21, scope: !3166)
!3206 = !DILocation(line: 740, column: 24, scope: !3166)
!3207 = !DILocation(line: 741, column: 5, scope: !3166)
!3208 = !DILocation(line: 741, column: 20, scope: !3166)
!3209 = !DILocation(line: 742, column: 5, scope: !3166)
!3210 = !DILocation(line: 742, column: 9, scope: !3166)
!3211 = !DILocation(line: 744, column: 11, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3166, file: !3, line: 744, column: 9)
!3213 = !DILocation(line: 744, column: 10, scope: !3212)
!3214 = !DILocation(line: 744, column: 18, scope: !3212)
!3215 = !DILocation(line: 744, column: 23, scope: !3212)
!3216 = !DILocation(line: 744, column: 9, scope: !3166)
!3217 = !DILocation(line: 745, column: 11, scope: !3212)
!3218 = !DILocation(line: 745, column: 18, scope: !3212)
!3219 = !DILocation(line: 745, column: 9, scope: !3212)
!3220 = !DILocation(line: 746, column: 14, scope: !3166)
!3221 = !DILocation(line: 746, column: 13, scope: !3166)
!3222 = !DILocation(line: 746, column: 21, scope: !3166)
!3223 = !DILocation(line: 746, column: 11, scope: !3166)
!3224 = !DILocation(line: 747, column: 12, scope: !3166)
!3225 = !DILocation(line: 747, column: 17, scope: !3166)
!3226 = !DILocation(line: 747, column: 15, scope: !3166)
!3227 = !DILocation(line: 747, column: 10, scope: !3166)
!3228 = !DILocation(line: 748, column: 5, scope: !3166)
!3229 = !DILocation(line: 748, column: 12, scope: !3166)
!3230 = !DILocation(line: 748, column: 17, scope: !3166)
!3231 = !DILocation(line: 748, column: 15, scope: !3166)
!3232 = !DILocation(line: 749, column: 6, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3234, file: !3, line: 749, column: 6)
!3234 = distinct !DILexicalBlock(scope: !3166, file: !3, line: 748, column: 24)
!3235 = !DILocation(line: 749, column: 6, scope: !3234)
!3236 = !DILocation(line: 750, column: 30, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3233, file: !3, line: 749, column: 23)
!3238 = !DILocation(line: 750, column: 10, scope: !3237)
!3239 = !DILocation(line: 751, column: 14, scope: !3237)
!3240 = !DILocation(line: 751, column: 10, scope: !3237)
!3241 = !DILocation(line: 751, column: 8, scope: !3237)
!3242 = !DILocation(line: 752, column: 10, scope: !3237)
!3243 = !DILocation(line: 752, column: 12, scope: !3237)
!3244 = !DILocation(line: 752, column: 8, scope: !3237)
!3245 = !DILocation(line: 753, column: 10, scope: !3237)
!3246 = !DILocation(line: 753, column: 30, scope: !3237)
!3247 = !DILocation(line: 753, column: 29, scope: !3237)
!3248 = !DILocation(line: 753, column: 14, scope: !3237)
!3249 = !DILocation(line: 753, column: 12, scope: !3237)
!3250 = !DILocation(line: 753, column: 8, scope: !3237)
!3251 = !DILocation(line: 754, column: 8, scope: !3237)
!3252 = !DILocation(line: 755, column: 2, scope: !3237)
!3253 = !DILocation(line: 756, column: 12, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3233, file: !3, line: 755, column: 9)
!3255 = !DILocation(line: 756, column: 9, scope: !3254)
!3256 = !DILocation(line: 756, column: 7, scope: !3254)
!3257 = !DILocation(line: 758, column: 14, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3234, file: !3, line: 758, column: 13)
!3259 = !DILocation(line: 758, column: 16, scope: !3258)
!3260 = !DILocation(line: 758, column: 26, scope: !3258)
!3261 = !DILocation(line: 758, column: 13, scope: !3234)
!3262 = !DILocation(line: 759, column: 10, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3264, file: !3, line: 759, column: 10)
!3264 = distinct !DILexicalBlock(scope: !3258, file: !3, line: 758, column: 37)
!3265 = !DILocation(line: 759, column: 16, scope: !3263)
!3266 = !DILocation(line: 759, column: 13, scope: !3263)
!3267 = !DILocation(line: 759, column: 10, scope: !3264)
!3268 = !DILocation(line: 760, column: 13, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3263, file: !3, line: 759, column: 23)
!3270 = !DILocation(line: 760, column: 19, scope: !3269)
!3271 = !DILocation(line: 760, column: 17, scope: !3269)
!3272 = !DILocation(line: 760, column: 4, scope: !3269)
!3273 = !DILocation(line: 760, column: 11, scope: !3269)
!3274 = !DILocation(line: 761, column: 13, scope: !3269)
!3275 = !DILocation(line: 761, column: 25, scope: !3269)
!3276 = !DILocation(line: 761, column: 23, scope: !3269)
!3277 = !DILocation(line: 761, column: 4, scope: !3269)
!3278 = !DILocation(line: 761, column: 11, scope: !3269)
!3279 = !DILocation(line: 762, column: 10, scope: !3269)
!3280 = !DILocation(line: 764, column: 10, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3264, file: !3, line: 764, column: 10)
!3282 = !DILocation(line: 764, column: 10, scope: !3264)
!3283 = !DILocation(line: 765, column: 27, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3281, file: !3, line: 764, column: 27)
!3285 = !DILocation(line: 765, column: 7, scope: !3284)
!3286 = !DILocation(line: 766, column: 11, scope: !3284)
!3287 = !DILocation(line: 766, column: 7, scope: !3284)
!3288 = !DILocation(line: 766, column: 5, scope: !3284)
!3289 = !DILocation(line: 767, column: 7, scope: !3284)
!3290 = !DILocation(line: 767, column: 9, scope: !3284)
!3291 = !DILocation(line: 767, column: 5, scope: !3284)
!3292 = !DILocation(line: 768, column: 7, scope: !3284)
!3293 = !DILocation(line: 768, column: 27, scope: !3284)
!3294 = !DILocation(line: 768, column: 26, scope: !3284)
!3295 = !DILocation(line: 768, column: 11, scope: !3284)
!3296 = !DILocation(line: 768, column: 9, scope: !3284)
!3297 = !DILocation(line: 768, column: 5, scope: !3284)
!3298 = !DILocation(line: 769, column: 5, scope: !3284)
!3299 = !DILocation(line: 770, column: 6, scope: !3284)
!3300 = !DILocation(line: 771, column: 9, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3281, file: !3, line: 770, column: 13)
!3302 = !DILocation(line: 771, column: 6, scope: !3301)
!3303 = !DILocation(line: 771, column: 4, scope: !3301)
!3304 = !DILocation(line: 773, column: 18, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3264, file: !3, line: 773, column: 17)
!3306 = !DILocation(line: 773, column: 20, scope: !3305)
!3307 = !DILocation(line: 773, column: 30, scope: !3305)
!3308 = !DILocation(line: 773, column: 17, scope: !3264)
!3309 = !DILocation(line: 774, column: 19, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3305, file: !3, line: 773, column: 41)
!3311 = !DILocation(line: 775, column: 19, scope: !3310)
!3312 = !DILocation(line: 776, column: 22, scope: !3310)
!3313 = !DILocation(line: 776, column: 24, scope: !3310)
!3314 = !DILocation(line: 776, column: 19, scope: !3310)
!3315 = !DILocation(line: 777, column: 19, scope: !3310)
!3316 = !DILocation(line: 778, column: 13, scope: !3310)
!3317 = !DILocation(line: 780, column: 13, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3305, file: !3, line: 779, column: 18)
!3319 = !DILocation(line: 780, column: 19, scope: !3318)
!3320 = !DILocation(line: 780, column: 17, scope: !3318)
!3321 = !DILocation(line: 780, column: 4, scope: !3318)
!3322 = !DILocation(line: 780, column: 11, scope: !3318)
!3323 = !DILocation(line: 781, column: 13, scope: !3318)
!3324 = !DILocation(line: 781, column: 25, scope: !3318)
!3325 = !DILocation(line: 781, column: 23, scope: !3318)
!3326 = !DILocation(line: 781, column: 4, scope: !3318)
!3327 = !DILocation(line: 781, column: 11, scope: !3318)
!3328 = !DILocation(line: 782, column: 10, scope: !3318)
!3329 = !DILocation(line: 784, column: 9, scope: !3264)
!3330 = !DILocation(line: 787, column: 13, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3234, file: !3, line: 787, column: 13)
!3332 = !DILocation(line: 787, column: 20, scope: !3331)
!3333 = !DILocation(line: 787, column: 17, scope: !3331)
!3334 = !DILocation(line: 787, column: 13, scope: !3234)
!3335 = !DILocation(line: 788, column: 6, scope: !3331)
!3336 = !DILocation(line: 789, column: 18, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3234, file: !3, line: 789, column: 18)
!3338 = !DILocation(line: 789, column: 20, scope: !3337)
!3339 = !DILocation(line: 789, column: 18, scope: !3234)
!3340 = !DILocation(line: 789, column: 43, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3337, file: !3, line: 789, column: 31)
!3342 = !DILocation(line: 789, column: 38, scope: !3341)
!3343 = !DILocation(line: 789, column: 40, scope: !3341)
!3344 = !DILocation(line: 789, column: 65, scope: !3341)
!3345 = !DILocation(line: 789, column: 71, scope: !3341)
!3346 = !DILocation(line: 790, column: 18, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3337, file: !3, line: 790, column: 18)
!3348 = !DILocation(line: 790, column: 20, scope: !3347)
!3349 = !DILocation(line: 790, column: 18, scope: !3337)
!3350 = !DILocation(line: 790, column: 44, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3347, file: !3, line: 790, column: 31)
!3352 = !DILocation(line: 790, column: 46, scope: !3351)
!3353 = !DILocation(line: 790, column: 53, scope: !3351)
!3354 = !DILocation(line: 790, column: 61, scope: !3351)
!3355 = !DILocation(line: 790, column: 42, scope: !3351)
!3356 = !DILocation(line: 790, column: 38, scope: !3351)
!3357 = !DILocation(line: 790, column: 40, scope: !3351)
!3358 = !DILocation(line: 790, column: 74, scope: !3351)
!3359 = !DILocation(line: 790, column: 80, scope: !3351)
!3360 = !DILocation(line: 791, column: 18, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3347, file: !3, line: 791, column: 18)
!3362 = !DILocation(line: 791, column: 20, scope: !3361)
!3363 = !DILocation(line: 791, column: 18, scope: !3347)
!3364 = !DILocation(line: 791, column: 44, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3361, file: !3, line: 791, column: 31)
!3366 = !DILocation(line: 791, column: 46, scope: !3365)
!3367 = !DILocation(line: 791, column: 53, scope: !3365)
!3368 = !DILocation(line: 791, column: 61, scope: !3365)
!3369 = !DILocation(line: 791, column: 42, scope: !3365)
!3370 = !DILocation(line: 791, column: 38, scope: !3365)
!3371 = !DILocation(line: 791, column: 40, scope: !3365)
!3372 = !DILocation(line: 791, column: 74, scope: !3365)
!3373 = !DILocation(line: 791, column: 80, scope: !3365)
!3374 = !DILocation(line: 792, column: 44, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3361, file: !3, line: 792, column: 31)
!3376 = !DILocation(line: 792, column: 46, scope: !3375)
!3377 = !DILocation(line: 792, column: 53, scope: !3375)
!3378 = !DILocation(line: 792, column: 61, scope: !3375)
!3379 = !DILocation(line: 792, column: 42, scope: !3375)
!3380 = !DILocation(line: 792, column: 38, scope: !3375)
!3381 = !DILocation(line: 792, column: 40, scope: !3375)
!3382 = !DILocation(line: 792, column: 74, scope: !3375)
!3383 = !DILocation(line: 794, column: 9, scope: !3234)
!3384 = !DILocation(line: 794, column: 17, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3386, file: !3, line: 794, column: 9)
!3386 = distinct !DILexicalBlock(scope: !3234, file: !3, line: 794, column: 9)
!3387 = !DILocation(line: 794, column: 22, scope: !3385)
!3388 = !DILocation(line: 794, column: 9, scope: !3386)
!3389 = !DILocation(line: 795, column: 17, scope: !3390)
!3390 = distinct !DILexicalBlock(scope: !3391, file: !3, line: 795, column: 17)
!3391 = distinct !DILexicalBlock(scope: !3385, file: !3, line: 794, column: 38)
!3392 = !DILocation(line: 795, column: 24, scope: !3390)
!3393 = !DILocation(line: 795, column: 21, scope: !3390)
!3394 = !DILocation(line: 795, column: 17, scope: !3391)
!3395 = !DILocation(line: 796, column: 10, scope: !3390)
!3396 = !DILocation(line: 797, column: 23, scope: !3391)
!3397 = !DILocation(line: 797, column: 28, scope: !3391)
!3398 = !DILocation(line: 797, column: 25, scope: !3391)
!3399 = !DILocation(line: 797, column: 34, scope: !3391)
!3400 = !DILocation(line: 797, column: 42, scope: !3391)
!3401 = !DILocation(line: 797, column: 21, scope: !3391)
!3402 = !DILocation(line: 797, column: 17, scope: !3391)
!3403 = !DILocation(line: 797, column: 19, scope: !3391)
!3404 = !DILocation(line: 798, column: 9, scope: !3391)
!3405 = !DILocation(line: 794, column: 32, scope: !3385)
!3406 = !DILocation(line: 794, column: 9, scope: !3385)
!3407 = distinct !{!3407, !3388, !3408, !1265}
!3408 = !DILocation(line: 798, column: 9, scope: !3386)
!3409 = !DILocation(line: 799, column: 37, scope: !3234)
!3410 = !DILocation(line: 799, column: 12, scope: !3234)
!3411 = distinct !{!3411, !3228, !3412, !1265}
!3412 = !DILocation(line: 800, column: 5, scope: !3166)
!3413 = !DILocation(line: 801, column: 15, scope: !3166)
!3414 = !DILocation(line: 801, column: 21, scope: !3166)
!3415 = !DILocation(line: 801, column: 19, scope: !3166)
!3416 = !DILocation(line: 801, column: 6, scope: !3166)
!3417 = !DILocation(line: 801, column: 13, scope: !3166)
!3418 = !DILocation(line: 802, column: 15, scope: !3166)
!3419 = !DILocation(line: 802, column: 27, scope: !3166)
!3420 = !DILocation(line: 802, column: 25, scope: !3166)
!3421 = !DILocation(line: 802, column: 6, scope: !3166)
!3422 = !DILocation(line: 802, column: 13, scope: !3166)
!3423 = !DILocation(line: 803, column: 13, scope: !3166)
!3424 = !DILocation(line: 803, column: 12, scope: !3166)
!3425 = !DILocation(line: 803, column: 5, scope: !3166)
!3426 = !DILocation(line: 804, column: 1, scope: !3166)
!3427 = distinct !DISubprogram(name: "UTF8ToUTF16BE", scope: !3, file: !3, line: 821, type: !926, scopeLine: 823, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3428)
!3428 = !{!3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444}
!3429 = !DILocalVariable(name: "outb", arg: 1, scope: !3427, file: !3, line: 821, type: !928)
!3430 = !DILocalVariable(name: "outlen", arg: 2, scope: !3427, file: !3, line: 821, type: !930)
!3431 = !DILocalVariable(name: "in", arg: 3, scope: !3427, file: !3, line: 822, type: !931)
!3432 = !DILocalVariable(name: "inlen", arg: 4, scope: !3427, file: !3, line: 822, type: !930)
!3433 = !DILocalVariable(name: "out", scope: !3427, file: !3, line: 824, type: !944)
!3434 = !DILocalVariable(name: "processed", scope: !3427, file: !3, line: 825, type: !931)
!3435 = !DILocalVariable(name: "instart", scope: !3427, file: !3, line: 826, type: !2860)
!3436 = !DILocalVariable(name: "outstart", scope: !3427, file: !3, line: 827, type: !944)
!3437 = !DILocalVariable(name: "outend", scope: !3427, file: !3, line: 828, type: !944)
!3438 = !DILocalVariable(name: "inend", scope: !3427, file: !3, line: 829, type: !931)
!3439 = !DILocalVariable(name: "c", scope: !3427, file: !3, line: 830, type: !35)
!3440 = !DILocalVariable(name: "d", scope: !3427, file: !3, line: 830, type: !35)
!3441 = !DILocalVariable(name: "trailing", scope: !3427, file: !3, line: 831, type: !7)
!3442 = !DILocalVariable(name: "tmp", scope: !3427, file: !3, line: 832, type: !928)
!3443 = !DILocalVariable(name: "tmp1", scope: !3427, file: !3, line: 833, type: !945)
!3444 = !DILocalVariable(name: "tmp2", scope: !3427, file: !3, line: 833, type: !945)
!3445 = !DILocation(line: 821, column: 30, scope: !3427)
!3446 = !DILocation(line: 821, column: 41, scope: !3427)
!3447 = !DILocation(line: 822, column: 34, scope: !3427)
!3448 = !DILocation(line: 822, column: 43, scope: !3427)
!3449 = !DILocation(line: 824, column: 5, scope: !3427)
!3450 = !DILocation(line: 824, column: 21, scope: !3427)
!3451 = !DILocation(line: 824, column: 45, scope: !3427)
!3452 = !DILocation(line: 825, column: 5, scope: !3427)
!3453 = !DILocation(line: 825, column: 26, scope: !3427)
!3454 = !DILocation(line: 825, column: 38, scope: !3427)
!3455 = !DILocation(line: 826, column: 5, scope: !3427)
!3456 = !DILocation(line: 826, column: 32, scope: !3427)
!3457 = !DILocation(line: 826, column: 42, scope: !3427)
!3458 = !DILocation(line: 827, column: 5, scope: !3427)
!3459 = !DILocation(line: 827, column: 21, scope: !3427)
!3460 = !DILocation(line: 827, column: 31, scope: !3427)
!3461 = !DILocation(line: 828, column: 5, scope: !3427)
!3462 = !DILocation(line: 828, column: 21, scope: !3427)
!3463 = !DILocation(line: 829, column: 5, scope: !3427)
!3464 = !DILocation(line: 829, column: 26, scope: !3427)
!3465 = !DILocation(line: 830, column: 5, scope: !3427)
!3466 = !DILocation(line: 830, column: 18, scope: !3427)
!3467 = !DILocation(line: 830, column: 21, scope: !3427)
!3468 = !DILocation(line: 831, column: 5, scope: !3427)
!3469 = !DILocation(line: 831, column: 9, scope: !3427)
!3470 = !DILocation(line: 832, column: 5, scope: !3427)
!3471 = !DILocation(line: 832, column: 20, scope: !3427)
!3472 = !DILocation(line: 833, column: 5, scope: !3427)
!3473 = !DILocation(line: 833, column: 20, scope: !3427)
!3474 = !DILocation(line: 833, column: 26, scope: !3427)
!3475 = !DILocation(line: 836, column: 10, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3427, file: !3, line: 836, column: 9)
!3477 = !DILocation(line: 836, column: 15, scope: !3476)
!3478 = !DILocation(line: 836, column: 24, scope: !3476)
!3479 = !DILocation(line: 836, column: 28, scope: !3476)
!3480 = !DILocation(line: 836, column: 35, scope: !3476)
!3481 = !DILocation(line: 836, column: 44, scope: !3476)
!3482 = !DILocation(line: 836, column: 48, scope: !3476)
!3483 = !DILocation(line: 836, column: 54, scope: !3476)
!3484 = !DILocation(line: 836, column: 9, scope: !3427)
!3485 = !DILocation(line: 836, column: 64, scope: !3476)
!3486 = !DILocation(line: 837, column: 9, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3427, file: !3, line: 837, column: 9)
!3488 = !DILocation(line: 837, column: 12, scope: !3487)
!3489 = !DILocation(line: 837, column: 9, scope: !3427)
!3490 = !DILocation(line: 838, column: 3, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3487, file: !3, line: 837, column: 21)
!3492 = !DILocation(line: 838, column: 10, scope: !3491)
!3493 = !DILocation(line: 839, column: 3, scope: !3491)
!3494 = !DILocation(line: 839, column: 9, scope: !3491)
!3495 = !DILocation(line: 840, column: 2, scope: !3491)
!3496 = !DILocation(line: 842, column: 12, scope: !3427)
!3497 = !DILocation(line: 842, column: 18, scope: !3427)
!3498 = !DILocation(line: 842, column: 17, scope: !3427)
!3499 = !DILocation(line: 842, column: 15, scope: !3427)
!3500 = !DILocation(line: 842, column: 10, scope: !3427)
!3501 = !DILocation(line: 843, column: 14, scope: !3427)
!3502 = !DILocation(line: 843, column: 22, scope: !3427)
!3503 = !DILocation(line: 843, column: 21, scope: !3427)
!3504 = !DILocation(line: 843, column: 29, scope: !3427)
!3505 = !DILocation(line: 843, column: 18, scope: !3427)
!3506 = !DILocation(line: 843, column: 12, scope: !3427)
!3507 = !DILocation(line: 844, column: 5, scope: !3427)
!3508 = !DILocation(line: 844, column: 12, scope: !3427)
!3509 = !DILocation(line: 844, column: 17, scope: !3427)
!3510 = !DILocation(line: 844, column: 15, scope: !3427)
!3511 = !DILocation(line: 845, column: 13, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3427, file: !3, line: 844, column: 24)
!3513 = !DILocation(line: 845, column: 10, scope: !3512)
!3514 = !DILocation(line: 845, column: 8, scope: !3512)
!3515 = !DILocation(line: 846, column: 16, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3512, file: !3, line: 846, column: 16)
!3517 = !DILocation(line: 846, column: 18, scope: !3516)
!3518 = !DILocation(line: 846, column: 16, scope: !3512)
!3519 = !DILocation(line: 846, column: 32, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3516, file: !3, line: 846, column: 27)
!3521 = !DILocation(line: 846, column: 30, scope: !3520)
!3522 = !DILocation(line: 846, column: 43, scope: !3520)
!3523 = !DILocation(line: 846, column: 48, scope: !3520)
!3524 = !DILocation(line: 847, column: 16, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3516, file: !3, line: 847, column: 16)
!3526 = !DILocation(line: 847, column: 18, scope: !3525)
!3527 = !DILocation(line: 847, column: 16, scope: !3516)
!3528 = !DILocation(line: 849, column: 14, scope: !3529)
!3529 = distinct !DILexicalBlock(scope: !3525, file: !3, line: 847, column: 27)
!3530 = !DILocation(line: 849, column: 20, scope: !3529)
!3531 = !DILocation(line: 849, column: 18, scope: !3529)
!3532 = !DILocation(line: 849, column: 5, scope: !3529)
!3533 = !DILocation(line: 849, column: 12, scope: !3529)
!3534 = !DILocation(line: 850, column: 13, scope: !3529)
!3535 = !DILocation(line: 850, column: 25, scope: !3529)
!3536 = !DILocation(line: 850, column: 23, scope: !3529)
!3537 = !DILocation(line: 850, column: 5, scope: !3529)
!3538 = !DILocation(line: 850, column: 11, scope: !3529)
!3539 = !DILocation(line: 851, column: 4, scope: !3529)
!3540 = !DILocation(line: 852, column: 18, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3525, file: !3, line: 852, column: 18)
!3542 = !DILocation(line: 852, column: 20, scope: !3541)
!3543 = !DILocation(line: 852, column: 18, scope: !3525)
!3544 = !DILocation(line: 852, column: 34, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !3541, file: !3, line: 852, column: 29)
!3546 = !DILocation(line: 852, column: 36, scope: !3545)
!3547 = !DILocation(line: 852, column: 32, scope: !3545)
!3548 = !DILocation(line: 852, column: 52, scope: !3545)
!3549 = !DILocation(line: 852, column: 57, scope: !3545)
!3550 = !DILocation(line: 853, column: 16, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3541, file: !3, line: 853, column: 16)
!3552 = !DILocation(line: 853, column: 18, scope: !3551)
!3553 = !DILocation(line: 853, column: 16, scope: !3541)
!3554 = !DILocation(line: 853, column: 32, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3551, file: !3, line: 853, column: 27)
!3556 = !DILocation(line: 853, column: 34, scope: !3555)
!3557 = !DILocation(line: 853, column: 30, scope: !3555)
!3558 = !DILocation(line: 853, column: 50, scope: !3555)
!3559 = !DILocation(line: 853, column: 55, scope: !3555)
!3560 = !DILocation(line: 854, column: 16, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3551, file: !3, line: 854, column: 16)
!3562 = !DILocation(line: 854, column: 18, scope: !3561)
!3563 = !DILocation(line: 854, column: 16, scope: !3551)
!3564 = !DILocation(line: 854, column: 32, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3561, file: !3, line: 854, column: 27)
!3566 = !DILocation(line: 854, column: 34, scope: !3565)
!3567 = !DILocation(line: 854, column: 30, scope: !3565)
!3568 = !DILocation(line: 854, column: 50, scope: !3565)
!3569 = !DILocation(line: 854, column: 55, scope: !3565)
!3570 = !DILocation(line: 857, column: 14, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !3561, file: !3, line: 855, column: 12)
!3572 = !DILocation(line: 857, column: 20, scope: !3571)
!3573 = !DILocation(line: 857, column: 18, scope: !3571)
!3574 = !DILocation(line: 857, column: 5, scope: !3571)
!3575 = !DILocation(line: 857, column: 12, scope: !3571)
!3576 = !DILocation(line: 858, column: 13, scope: !3571)
!3577 = !DILocation(line: 858, column: 25, scope: !3571)
!3578 = !DILocation(line: 858, column: 23, scope: !3571)
!3579 = !DILocation(line: 858, column: 5, scope: !3571)
!3580 = !DILocation(line: 858, column: 11, scope: !3571)
!3581 = !DILocation(line: 859, column: 4, scope: !3571)
!3582 = !DILocation(line: 862, column: 11, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3512, file: !3, line: 862, column: 11)
!3584 = !DILocation(line: 862, column: 19, scope: !3583)
!3585 = !DILocation(line: 862, column: 17, scope: !3583)
!3586 = !DILocation(line: 862, column: 24, scope: !3583)
!3587 = !DILocation(line: 862, column: 22, scope: !3583)
!3588 = !DILocation(line: 862, column: 11, scope: !3512)
!3589 = !DILocation(line: 863, column: 11, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !3583, file: !3, line: 862, column: 34)
!3591 = !DILocation(line: 866, column: 7, scope: !3512)
!3592 = !DILocation(line: 866, column: 15, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3594, file: !3, line: 866, column: 7)
!3594 = distinct !DILexicalBlock(scope: !3512, file: !3, line: 866, column: 7)
!3595 = !DILocation(line: 866, column: 7, scope: !3594)
!3596 = !DILocation(line: 867, column: 16, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !3598, file: !3, line: 867, column: 15)
!3598 = distinct !DILexicalBlock(scope: !3593, file: !3, line: 866, column: 37)
!3599 = !DILocation(line: 867, column: 22, scope: !3597)
!3600 = !DILocation(line: 867, column: 19, scope: !3597)
!3601 = !DILocation(line: 867, column: 29, scope: !3597)
!3602 = !DILocation(line: 867, column: 41, scope: !3597)
!3603 = !DILocation(line: 867, column: 38, scope: !3597)
!3604 = !DILocation(line: 867, column: 36, scope: !3597)
!3605 = !DILocation(line: 867, column: 45, scope: !3597)
!3606 = !DILocation(line: 867, column: 53, scope: !3597)
!3607 = !DILocation(line: 867, column: 15, scope: !3598)
!3608 = !DILocation(line: 867, column: 64, scope: !3597)
!3609 = !DILocation(line: 868, column: 13, scope: !3598)
!3610 = !DILocation(line: 869, column: 16, scope: !3598)
!3611 = !DILocation(line: 869, column: 18, scope: !3598)
!3612 = !DILocation(line: 869, column: 13, scope: !3598)
!3613 = !DILocation(line: 870, column: 7, scope: !3598)
!3614 = !DILocation(line: 866, column: 33, scope: !3593)
!3615 = !DILocation(line: 866, column: 7, scope: !3593)
!3616 = distinct !{!3616, !3595, !3617, !1265}
!3617 = !DILocation(line: 870, column: 7, scope: !3594)
!3618 = !DILocation(line: 873, column: 13, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3512, file: !3, line: 873, column: 13)
!3620 = !DILocation(line: 873, column: 15, scope: !3619)
!3621 = !DILocation(line: 873, column: 13, scope: !3512)
!3622 = !DILocation(line: 874, column: 17, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3624, file: !3, line: 874, column: 17)
!3624 = distinct !DILexicalBlock(scope: !3619, file: !3, line: 873, column: 26)
!3625 = !DILocation(line: 874, column: 24, scope: !3623)
!3626 = !DILocation(line: 874, column: 21, scope: !3623)
!3627 = !DILocation(line: 874, column: 17, scope: !3624)
!3628 = !DILocation(line: 874, column: 33, scope: !3623)
!3629 = !DILocation(line: 875, column: 10, scope: !3630)
!3630 = distinct !DILexicalBlock(scope: !3624, file: !3, line: 875, column: 10)
!3631 = !DILocation(line: 875, column: 10, scope: !3624)
!3632 = !DILocation(line: 876, column: 27, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3630, file: !3, line: 875, column: 27)
!3634 = !DILocation(line: 876, column: 7, scope: !3633)
!3635 = !DILocation(line: 877, column: 10, scope: !3633)
!3636 = !DILocation(line: 877, column: 12, scope: !3633)
!3637 = !DILocation(line: 877, column: 4, scope: !3633)
!3638 = !DILocation(line: 877, column: 8, scope: !3633)
!3639 = !DILocation(line: 878, column: 16, scope: !3633)
!3640 = !DILocation(line: 878, column: 5, scope: !3633)
!3641 = !DILocation(line: 878, column: 9, scope: !3633)
!3642 = !DILocation(line: 878, column: 14, scope: !3633)
!3643 = !DILocation(line: 879, column: 6, scope: !3633)
!3644 = !DILocation(line: 880, column: 6, scope: !3633)
!3645 = !DILocation(line: 881, column: 12, scope: !3646)
!3646 = distinct !DILexicalBlock(scope: !3630, file: !3, line: 880, column: 13)
!3647 = !DILocation(line: 881, column: 7, scope: !3646)
!3648 = !DILocation(line: 881, column: 10, scope: !3646)
!3649 = !DILocation(line: 883, column: 9, scope: !3624)
!3650 = !DILocation(line: 884, column: 18, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3619, file: !3, line: 884, column: 18)
!3652 = !DILocation(line: 884, column: 20, scope: !3651)
!3653 = !DILocation(line: 884, column: 18, scope: !3619)
!3654 = !DILocation(line: 885, column: 17, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3656, file: !3, line: 885, column: 17)
!3656 = distinct !DILexicalBlock(scope: !3651, file: !3, line: 884, column: 32)
!3657 = !DILocation(line: 885, column: 20, scope: !3655)
!3658 = !DILocation(line: 885, column: 26, scope: !3655)
!3659 = !DILocation(line: 885, column: 23, scope: !3655)
!3660 = !DILocation(line: 885, column: 17, scope: !3656)
!3661 = !DILocation(line: 885, column: 35, scope: !3655)
!3662 = !DILocation(line: 886, column: 15, scope: !3656)
!3663 = !DILocation(line: 887, column: 10, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !3656, file: !3, line: 887, column: 10)
!3665 = !DILocation(line: 887, column: 10, scope: !3656)
!3666 = !DILocation(line: 888, column: 20, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3664, file: !3, line: 887, column: 27)
!3668 = !DILocation(line: 888, column: 22, scope: !3667)
!3669 = !DILocation(line: 888, column: 17, scope: !3667)
!3670 = !DILocation(line: 888, column: 10, scope: !3667)
!3671 = !DILocation(line: 888, column: 8, scope: !3667)
!3672 = !DILocation(line: 889, column: 27, scope: !3667)
!3673 = !DILocation(line: 889, column: 7, scope: !3667)
!3674 = !DILocation(line: 890, column: 10, scope: !3667)
!3675 = !DILocation(line: 890, column: 15, scope: !3667)
!3676 = !DILocation(line: 890, column: 4, scope: !3667)
!3677 = !DILocation(line: 890, column: 8, scope: !3667)
!3678 = !DILocation(line: 891, column: 32, scope: !3667)
!3679 = !DILocation(line: 891, column: 16, scope: !3667)
!3680 = !DILocation(line: 891, column: 5, scope: !3667)
!3681 = !DILocation(line: 891, column: 9, scope: !3667)
!3682 = !DILocation(line: 891, column: 14, scope: !3667)
!3683 = !DILocation(line: 892, column: 6, scope: !3667)
!3684 = !DILocation(line: 894, column: 20, scope: !3667)
!3685 = !DILocation(line: 894, column: 22, scope: !3667)
!3686 = !DILocation(line: 894, column: 17, scope: !3667)
!3687 = !DILocation(line: 894, column: 10, scope: !3667)
!3688 = !DILocation(line: 894, column: 8, scope: !3667)
!3689 = !DILocation(line: 895, column: 27, scope: !3667)
!3690 = !DILocation(line: 895, column: 7, scope: !3667)
!3691 = !DILocation(line: 896, column: 10, scope: !3667)
!3692 = !DILocation(line: 896, column: 15, scope: !3667)
!3693 = !DILocation(line: 896, column: 4, scope: !3667)
!3694 = !DILocation(line: 896, column: 8, scope: !3667)
!3695 = !DILocation(line: 897, column: 32, scope: !3667)
!3696 = !DILocation(line: 897, column: 16, scope: !3667)
!3697 = !DILocation(line: 897, column: 5, scope: !3667)
!3698 = !DILocation(line: 897, column: 9, scope: !3667)
!3699 = !DILocation(line: 897, column: 14, scope: !3667)
!3700 = !DILocation(line: 898, column: 6, scope: !3667)
!3701 = !DILocation(line: 899, column: 6, scope: !3667)
!3702 = !DILocation(line: 900, column: 22, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3664, file: !3, line: 899, column: 13)
!3704 = !DILocation(line: 900, column: 24, scope: !3703)
!3705 = !DILocation(line: 900, column: 19, scope: !3703)
!3706 = !DILocation(line: 900, column: 12, scope: !3703)
!3707 = !DILocation(line: 900, column: 7, scope: !3703)
!3708 = !DILocation(line: 900, column: 10, scope: !3703)
!3709 = !DILocation(line: 901, column: 22, scope: !3703)
!3710 = !DILocation(line: 901, column: 24, scope: !3703)
!3711 = !DILocation(line: 901, column: 19, scope: !3703)
!3712 = !DILocation(line: 901, column: 12, scope: !3703)
!3713 = !DILocation(line: 901, column: 7, scope: !3703)
!3714 = !DILocation(line: 901, column: 10, scope: !3703)
!3715 = !DILocation(line: 903, column: 9, scope: !3656)
!3716 = !DILocation(line: 905, column: 6, scope: !3651)
!3717 = !DILocation(line: 906, column: 14, scope: !3512)
!3718 = !DILocation(line: 906, column: 12, scope: !3512)
!3719 = distinct !{!3719, !3507, !3720, !1265}
!3720 = !DILocation(line: 907, column: 5, scope: !3427)
!3721 = !DILocation(line: 908, column: 16, scope: !3427)
!3722 = !DILocation(line: 908, column: 22, scope: !3427)
!3723 = !DILocation(line: 908, column: 20, scope: !3427)
!3724 = !DILocation(line: 908, column: 32, scope: !3427)
!3725 = !DILocation(line: 908, column: 15, scope: !3427)
!3726 = !DILocation(line: 908, column: 6, scope: !3427)
!3727 = !DILocation(line: 908, column: 13, scope: !3427)
!3728 = !DILocation(line: 909, column: 14, scope: !3427)
!3729 = !DILocation(line: 909, column: 26, scope: !3427)
!3730 = !DILocation(line: 909, column: 24, scope: !3427)
!3731 = !DILocation(line: 909, column: 6, scope: !3427)
!3732 = !DILocation(line: 909, column: 12, scope: !3427)
!3733 = !DILocation(line: 910, column: 13, scope: !3427)
!3734 = !DILocation(line: 910, column: 12, scope: !3427)
!3735 = !DILocation(line: 910, column: 5, scope: !3427)
!3736 = !DILocation(line: 911, column: 1, scope: !3427)
!3737 = distinct !DISubprogram(name: "UTF8ToUTF16", scope: !3, file: !3, line: 688, type: !926, scopeLine: 690, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3738)
!3738 = !{!3739, !3740, !3741, !3742}
!3739 = !DILocalVariable(name: "outb", arg: 1, scope: !3737, file: !3, line: 688, type: !928)
!3740 = !DILocalVariable(name: "outlen", arg: 2, scope: !3737, file: !3, line: 688, type: !930)
!3741 = !DILocalVariable(name: "in", arg: 3, scope: !3737, file: !3, line: 689, type: !931)
!3742 = !DILocalVariable(name: "inlen", arg: 4, scope: !3737, file: !3, line: 689, type: !930)
!3743 = !DILocation(line: 688, column: 28, scope: !3737)
!3744 = !DILocation(line: 688, column: 39, scope: !3737)
!3745 = !DILocation(line: 689, column: 34, scope: !3737)
!3746 = !DILocation(line: 689, column: 43, scope: !3737)
!3747 = !DILocation(line: 691, column: 9, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3737, file: !3, line: 691, column: 9)
!3749 = !DILocation(line: 691, column: 12, scope: !3748)
!3750 = !DILocation(line: 691, column: 9, scope: !3737)
!3751 = !DILocation(line: 695, column: 14, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3753, file: !3, line: 695, column: 13)
!3753 = distinct !DILexicalBlock(scope: !3748, file: !3, line: 691, column: 21)
!3754 = !DILocation(line: 695, column: 13, scope: !3752)
!3755 = !DILocation(line: 695, column: 21, scope: !3752)
!3756 = !DILocation(line: 695, column: 13, scope: !3753)
!3757 = !DILocation(line: 696, column: 6, scope: !3758)
!3758 = distinct !DILexicalBlock(scope: !3752, file: !3, line: 695, column: 27)
!3759 = !DILocation(line: 696, column: 14, scope: !3758)
!3760 = !DILocation(line: 697, column: 6, scope: !3758)
!3761 = !DILocation(line: 697, column: 14, scope: !3758)
!3762 = !DILocation(line: 698, column: 7, scope: !3758)
!3763 = !DILocation(line: 698, column: 14, scope: !3758)
!3764 = !DILocation(line: 699, column: 7, scope: !3758)
!3765 = !DILocation(line: 699, column: 13, scope: !3758)
!3766 = !DILocation(line: 704, column: 6, scope: !3758)
!3767 = !DILocation(line: 706, column: 3, scope: !3753)
!3768 = !DILocation(line: 706, column: 10, scope: !3753)
!3769 = !DILocation(line: 707, column: 3, scope: !3753)
!3770 = !DILocation(line: 707, column: 9, scope: !3753)
!3771 = !DILocation(line: 708, column: 2, scope: !3753)
!3772 = !DILocation(line: 710, column: 27, scope: !3737)
!3773 = !DILocation(line: 710, column: 33, scope: !3737)
!3774 = !DILocation(line: 710, column: 41, scope: !3737)
!3775 = !DILocation(line: 710, column: 45, scope: !3737)
!3776 = !DILocation(line: 710, column: 13, scope: !3737)
!3777 = !DILocation(line: 710, column: 5, scope: !3737)
!3778 = !DILocation(line: 711, column: 1, scope: !3737)
!3779 = distinct !DISubprogram(name: "asciiToUTF8", scope: !3, file: !3, line: 176, type: !926, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3780)
!3780 = !{!3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790}
!3781 = !DILocalVariable(name: "out", arg: 1, scope: !3779, file: !3, line: 176, type: !928)
!3782 = !DILocalVariable(name: "outlen", arg: 2, scope: !3779, file: !3, line: 176, type: !930)
!3783 = !DILocalVariable(name: "in", arg: 3, scope: !3779, file: !3, line: 177, type: !931)
!3784 = !DILocalVariable(name: "inlen", arg: 4, scope: !3779, file: !3, line: 177, type: !930)
!3785 = !DILocalVariable(name: "outstart", scope: !3779, file: !3, line: 178, type: !928)
!3786 = !DILocalVariable(name: "base", scope: !3779, file: !3, line: 179, type: !931)
!3787 = !DILocalVariable(name: "processed", scope: !3779, file: !3, line: 180, type: !931)
!3788 = !DILocalVariable(name: "outend", scope: !3779, file: !3, line: 181, type: !928)
!3789 = !DILocalVariable(name: "inend", scope: !3779, file: !3, line: 182, type: !931)
!3790 = !DILocalVariable(name: "c", scope: !3779, file: !3, line: 183, type: !35)
!3791 = !DILocation(line: 176, column: 28, scope: !3779)
!3792 = !DILocation(line: 176, column: 38, scope: !3779)
!3793 = !DILocation(line: 177, column: 36, scope: !3779)
!3794 = !DILocation(line: 177, column: 45, scope: !3779)
!3795 = !DILocation(line: 178, column: 5, scope: !3779)
!3796 = !DILocation(line: 178, column: 20, scope: !3779)
!3797 = !DILocation(line: 178, column: 31, scope: !3779)
!3798 = !DILocation(line: 179, column: 5, scope: !3779)
!3799 = !DILocation(line: 179, column: 26, scope: !3779)
!3800 = !DILocation(line: 179, column: 33, scope: !3779)
!3801 = !DILocation(line: 180, column: 5, scope: !3779)
!3802 = !DILocation(line: 180, column: 26, scope: !3779)
!3803 = !DILocation(line: 180, column: 38, scope: !3779)
!3804 = !DILocation(line: 181, column: 5, scope: !3779)
!3805 = !DILocation(line: 181, column: 20, scope: !3779)
!3806 = !DILocation(line: 181, column: 29, scope: !3779)
!3807 = !DILocation(line: 181, column: 36, scope: !3779)
!3808 = !DILocation(line: 181, column: 35, scope: !3779)
!3809 = !DILocation(line: 181, column: 33, scope: !3779)
!3810 = !DILocation(line: 182, column: 5, scope: !3779)
!3811 = !DILocation(line: 182, column: 26, scope: !3779)
!3812 = !DILocation(line: 183, column: 5, scope: !3779)
!3813 = !DILocation(line: 183, column: 18, scope: !3779)
!3814 = !DILocation(line: 185, column: 13, scope: !3779)
!3815 = !DILocation(line: 185, column: 20, scope: !3779)
!3816 = !DILocation(line: 185, column: 19, scope: !3779)
!3817 = !DILocation(line: 185, column: 16, scope: !3779)
!3818 = !DILocation(line: 185, column: 11, scope: !3779)
!3819 = !DILocation(line: 186, column: 5, scope: !3779)
!3820 = !DILocation(line: 186, column: 13, scope: !3779)
!3821 = !DILocation(line: 186, column: 18, scope: !3779)
!3822 = !DILocation(line: 186, column: 16, scope: !3779)
!3823 = !DILocation(line: 186, column: 25, scope: !3779)
!3824 = !DILocation(line: 186, column: 29, scope: !3779)
!3825 = !DILocation(line: 186, column: 35, scope: !3779)
!3826 = !DILocation(line: 186, column: 33, scope: !3779)
!3827 = !DILocation(line: 186, column: 44, scope: !3779)
!3828 = !DILocation(line: 186, column: 51, scope: !3779)
!3829 = !DILocation(line: 186, column: 50, scope: !3779)
!3830 = !DILocation(line: 186, column: 48, scope: !3779)
!3831 = !DILocation(line: 0, scope: !3779)
!3832 = !DILocation(line: 187, column: 8, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3779, file: !3, line: 186, column: 60)
!3834 = !DILocation(line: 187, column: 5, scope: !3833)
!3835 = !DILocation(line: 187, column: 3, scope: !3833)
!3836 = !DILocation(line: 189, column: 13, scope: !3837)
!3837 = distinct !DILexicalBlock(scope: !3833, file: !3, line: 189, column: 13)
!3838 = !DILocation(line: 189, column: 20, scope: !3837)
!3839 = !DILocation(line: 189, column: 17, scope: !3837)
!3840 = !DILocation(line: 189, column: 13, scope: !3833)
!3841 = !DILocation(line: 190, column: 6, scope: !3837)
!3842 = !DILocation(line: 191, column: 13, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3833, file: !3, line: 191, column: 13)
!3844 = !DILocation(line: 191, column: 15, scope: !3843)
!3845 = !DILocation(line: 191, column: 13, scope: !3833)
!3846 = !DILocation(line: 192, column: 15, scope: !3847)
!3847 = distinct !DILexicalBlock(scope: !3843, file: !3, line: 191, column: 23)
!3848 = !DILocation(line: 192, column: 10, scope: !3847)
!3849 = !DILocation(line: 192, column: 13, scope: !3847)
!3850 = !DILocation(line: 193, column: 2, scope: !3847)
!3851 = !DILocation(line: 194, column: 16, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3843, file: !3, line: 193, column: 9)
!3853 = !DILocation(line: 194, column: 22, scope: !3852)
!3854 = !DILocation(line: 194, column: 20, scope: !3852)
!3855 = !DILocation(line: 194, column: 7, scope: !3852)
!3856 = !DILocation(line: 194, column: 14, scope: !3852)
!3857 = !DILocation(line: 195, column: 15, scope: !3852)
!3858 = !DILocation(line: 195, column: 27, scope: !3852)
!3859 = !DILocation(line: 195, column: 25, scope: !3852)
!3860 = !DILocation(line: 195, column: 7, scope: !3852)
!3861 = !DILocation(line: 195, column: 13, scope: !3852)
!3862 = !DILocation(line: 196, column: 6, scope: !3852)
!3863 = !DILocation(line: 199, column: 37, scope: !3833)
!3864 = !DILocation(line: 199, column: 12, scope: !3833)
!3865 = distinct !{!3865, !3819, !3866, !1265}
!3866 = !DILocation(line: 200, column: 5, scope: !3779)
!3867 = !DILocation(line: 201, column: 15, scope: !3779)
!3868 = !DILocation(line: 201, column: 21, scope: !3779)
!3869 = !DILocation(line: 201, column: 19, scope: !3779)
!3870 = !DILocation(line: 201, column: 6, scope: !3779)
!3871 = !DILocation(line: 201, column: 13, scope: !3779)
!3872 = !DILocation(line: 202, column: 14, scope: !3779)
!3873 = !DILocation(line: 202, column: 26, scope: !3779)
!3874 = !DILocation(line: 202, column: 24, scope: !3779)
!3875 = !DILocation(line: 202, column: 6, scope: !3779)
!3876 = !DILocation(line: 202, column: 12, scope: !3779)
!3877 = !DILocation(line: 203, column: 13, scope: !3779)
!3878 = !DILocation(line: 203, column: 12, scope: !3779)
!3879 = !DILocation(line: 203, column: 5, scope: !3779)
!3880 = !DILocation(line: 204, column: 1, scope: !3779)
!3881 = distinct !DISubprogram(name: "UTF8Toascii", scope: !3, file: !3, line: 223, type: !926, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3882)
!3882 = !{!3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894}
!3883 = !DILocalVariable(name: "out", arg: 1, scope: !3881, file: !3, line: 223, type: !928)
!3884 = !DILocalVariable(name: "outlen", arg: 2, scope: !3881, file: !3, line: 223, type: !930)
!3885 = !DILocalVariable(name: "in", arg: 3, scope: !3881, file: !3, line: 224, type: !931)
!3886 = !DILocalVariable(name: "inlen", arg: 4, scope: !3881, file: !3, line: 224, type: !930)
!3887 = !DILocalVariable(name: "processed", scope: !3881, file: !3, line: 225, type: !931)
!3888 = !DILocalVariable(name: "outend", scope: !3881, file: !3, line: 226, type: !931)
!3889 = !DILocalVariable(name: "outstart", scope: !3881, file: !3, line: 227, type: !931)
!3890 = !DILocalVariable(name: "instart", scope: !3881, file: !3, line: 228, type: !931)
!3891 = !DILocalVariable(name: "inend", scope: !3881, file: !3, line: 229, type: !931)
!3892 = !DILocalVariable(name: "c", scope: !3881, file: !3, line: 230, type: !35)
!3893 = !DILocalVariable(name: "d", scope: !3881, file: !3, line: 230, type: !35)
!3894 = !DILocalVariable(name: "trailing", scope: !3881, file: !3, line: 231, type: !7)
!3895 = !DILocation(line: 223, column: 28, scope: !3881)
!3896 = !DILocation(line: 223, column: 38, scope: !3881)
!3897 = !DILocation(line: 224, column: 36, scope: !3881)
!3898 = !DILocation(line: 224, column: 45, scope: !3881)
!3899 = !DILocation(line: 225, column: 5, scope: !3881)
!3900 = !DILocation(line: 225, column: 26, scope: !3881)
!3901 = !DILocation(line: 225, column: 38, scope: !3881)
!3902 = !DILocation(line: 226, column: 5, scope: !3881)
!3903 = !DILocation(line: 226, column: 26, scope: !3881)
!3904 = !DILocation(line: 227, column: 5, scope: !3881)
!3905 = !DILocation(line: 227, column: 26, scope: !3881)
!3906 = !DILocation(line: 227, column: 37, scope: !3881)
!3907 = !DILocation(line: 228, column: 5, scope: !3881)
!3908 = !DILocation(line: 228, column: 26, scope: !3881)
!3909 = !DILocation(line: 228, column: 36, scope: !3881)
!3910 = !DILocation(line: 229, column: 5, scope: !3881)
!3911 = !DILocation(line: 229, column: 26, scope: !3881)
!3912 = !DILocation(line: 230, column: 5, scope: !3881)
!3913 = !DILocation(line: 230, column: 18, scope: !3881)
!3914 = !DILocation(line: 230, column: 21, scope: !3881)
!3915 = !DILocation(line: 231, column: 5, scope: !3881)
!3916 = !DILocation(line: 231, column: 9, scope: !3881)
!3917 = !DILocation(line: 233, column: 10, scope: !3918)
!3918 = distinct !DILexicalBlock(scope: !3881, file: !3, line: 233, column: 9)
!3919 = !DILocation(line: 233, column: 14, scope: !3918)
!3920 = !DILocation(line: 233, column: 23, scope: !3918)
!3921 = !DILocation(line: 233, column: 27, scope: !3918)
!3922 = !DILocation(line: 233, column: 34, scope: !3918)
!3923 = !DILocation(line: 233, column: 43, scope: !3918)
!3924 = !DILocation(line: 233, column: 47, scope: !3918)
!3925 = !DILocation(line: 233, column: 53, scope: !3918)
!3926 = !DILocation(line: 233, column: 9, scope: !3881)
!3927 = !DILocation(line: 233, column: 63, scope: !3918)
!3928 = !DILocation(line: 234, column: 9, scope: !3929)
!3929 = distinct !DILexicalBlock(scope: !3881, file: !3, line: 234, column: 9)
!3930 = !DILocation(line: 234, column: 12, scope: !3929)
!3931 = !DILocation(line: 234, column: 9, scope: !3881)
!3932 = !DILocation(line: 238, column: 3, scope: !3933)
!3933 = distinct !DILexicalBlock(scope: !3929, file: !3, line: 234, column: 21)
!3934 = !DILocation(line: 238, column: 10, scope: !3933)
!3935 = !DILocation(line: 239, column: 3, scope: !3933)
!3936 = !DILocation(line: 239, column: 9, scope: !3933)
!3937 = !DILocation(line: 240, column: 2, scope: !3933)
!3938 = !DILocation(line: 242, column: 13, scope: !3881)
!3939 = !DILocation(line: 242, column: 20, scope: !3881)
!3940 = !DILocation(line: 242, column: 19, scope: !3881)
!3941 = !DILocation(line: 242, column: 16, scope: !3881)
!3942 = !DILocation(line: 242, column: 11, scope: !3881)
!3943 = !DILocation(line: 243, column: 14, scope: !3881)
!3944 = !DILocation(line: 243, column: 22, scope: !3881)
!3945 = !DILocation(line: 243, column: 21, scope: !3881)
!3946 = !DILocation(line: 243, column: 18, scope: !3881)
!3947 = !DILocation(line: 243, column: 12, scope: !3881)
!3948 = !DILocation(line: 244, column: 5, scope: !3881)
!3949 = !DILocation(line: 244, column: 12, scope: !3881)
!3950 = !DILocation(line: 244, column: 17, scope: !3881)
!3951 = !DILocation(line: 244, column: 15, scope: !3881)
!3952 = !DILocation(line: 245, column: 9, scope: !3953)
!3953 = distinct !DILexicalBlock(scope: !3881, file: !3, line: 244, column: 24)
!3954 = !DILocation(line: 245, column: 6, scope: !3953)
!3955 = !DILocation(line: 245, column: 4, scope: !3953)
!3956 = !DILocation(line: 246, column: 11, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3953, file: !3, line: 246, column: 11)
!3958 = !DILocation(line: 246, column: 13, scope: !3957)
!3959 = !DILocation(line: 246, column: 11, scope: !3953)
!3960 = !DILocation(line: 246, column: 27, scope: !3961)
!3961 = distinct !DILexicalBlock(scope: !3957, file: !3, line: 246, column: 22)
!3962 = !DILocation(line: 246, column: 25, scope: !3961)
!3963 = !DILocation(line: 246, column: 38, scope: !3961)
!3964 = !DILocation(line: 246, column: 43, scope: !3961)
!3965 = !DILocation(line: 247, column: 11, scope: !3966)
!3966 = distinct !DILexicalBlock(scope: !3957, file: !3, line: 247, column: 11)
!3967 = !DILocation(line: 247, column: 13, scope: !3966)
!3968 = !DILocation(line: 247, column: 11, scope: !3957)
!3969 = !DILocation(line: 249, column: 16, scope: !3970)
!3970 = distinct !DILexicalBlock(scope: !3966, file: !3, line: 247, column: 21)
!3971 = !DILocation(line: 249, column: 22, scope: !3970)
!3972 = !DILocation(line: 249, column: 20, scope: !3970)
!3973 = !DILocation(line: 249, column: 7, scope: !3970)
!3974 = !DILocation(line: 249, column: 14, scope: !3970)
!3975 = !DILocation(line: 250, column: 15, scope: !3970)
!3976 = !DILocation(line: 250, column: 27, scope: !3970)
!3977 = !DILocation(line: 250, column: 25, scope: !3970)
!3978 = !DILocation(line: 250, column: 7, scope: !3970)
!3979 = !DILocation(line: 250, column: 13, scope: !3970)
!3980 = !DILocation(line: 251, column: 6, scope: !3970)
!3981 = !DILocation(line: 252, column: 20, scope: !3982)
!3982 = distinct !DILexicalBlock(scope: !3966, file: !3, line: 252, column: 20)
!3983 = !DILocation(line: 252, column: 22, scope: !3982)
!3984 = !DILocation(line: 252, column: 20, scope: !3966)
!3985 = !DILocation(line: 252, column: 36, scope: !3986)
!3986 = distinct !DILexicalBlock(scope: !3982, file: !3, line: 252, column: 31)
!3987 = !DILocation(line: 252, column: 38, scope: !3986)
!3988 = !DILocation(line: 252, column: 34, scope: !3986)
!3989 = !DILocation(line: 252, column: 54, scope: !3986)
!3990 = !DILocation(line: 252, column: 59, scope: !3986)
!3991 = !DILocation(line: 253, column: 18, scope: !3992)
!3992 = distinct !DILexicalBlock(scope: !3982, file: !3, line: 253, column: 18)
!3993 = !DILocation(line: 253, column: 20, scope: !3992)
!3994 = !DILocation(line: 253, column: 18, scope: !3982)
!3995 = !DILocation(line: 253, column: 34, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3992, file: !3, line: 253, column: 29)
!3997 = !DILocation(line: 253, column: 36, scope: !3996)
!3998 = !DILocation(line: 253, column: 32, scope: !3996)
!3999 = !DILocation(line: 253, column: 52, scope: !3996)
!4000 = !DILocation(line: 253, column: 57, scope: !3996)
!4001 = !DILocation(line: 254, column: 18, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !3992, file: !3, line: 254, column: 18)
!4003 = !DILocation(line: 254, column: 20, scope: !4002)
!4004 = !DILocation(line: 254, column: 18, scope: !3992)
!4005 = !DILocation(line: 254, column: 34, scope: !4006)
!4006 = distinct !DILexicalBlock(scope: !4002, file: !3, line: 254, column: 29)
!4007 = !DILocation(line: 254, column: 36, scope: !4006)
!4008 = !DILocation(line: 254, column: 32, scope: !4006)
!4009 = !DILocation(line: 254, column: 52, scope: !4006)
!4010 = !DILocation(line: 254, column: 57, scope: !4006)
!4011 = !DILocation(line: 257, column: 16, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !4002, file: !3, line: 255, column: 7)
!4013 = !DILocation(line: 257, column: 22, scope: !4012)
!4014 = !DILocation(line: 257, column: 20, scope: !4012)
!4015 = !DILocation(line: 257, column: 7, scope: !4012)
!4016 = !DILocation(line: 257, column: 14, scope: !4012)
!4017 = !DILocation(line: 258, column: 15, scope: !4012)
!4018 = !DILocation(line: 258, column: 27, scope: !4012)
!4019 = !DILocation(line: 258, column: 25, scope: !4012)
!4020 = !DILocation(line: 258, column: 7, scope: !4012)
!4021 = !DILocation(line: 258, column: 13, scope: !4012)
!4022 = !DILocation(line: 259, column: 6, scope: !4012)
!4023 = !DILocation(line: 262, column: 6, scope: !4024)
!4024 = distinct !DILexicalBlock(scope: !3953, file: !3, line: 262, column: 6)
!4025 = !DILocation(line: 262, column: 14, scope: !4024)
!4026 = !DILocation(line: 262, column: 12, scope: !4024)
!4027 = !DILocation(line: 262, column: 19, scope: !4024)
!4028 = !DILocation(line: 262, column: 17, scope: !4024)
!4029 = !DILocation(line: 262, column: 6, scope: !3953)
!4030 = !DILocation(line: 263, column: 6, scope: !4031)
!4031 = distinct !DILexicalBlock(scope: !4024, file: !3, line: 262, column: 29)
!4032 = !DILocation(line: 266, column: 2, scope: !3953)
!4033 = !DILocation(line: 266, column: 10, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !4035, file: !3, line: 266, column: 2)
!4035 = distinct !DILexicalBlock(scope: !3953, file: !3, line: 266, column: 2)
!4036 = !DILocation(line: 266, column: 2, scope: !4035)
!4037 = !DILocation(line: 267, column: 11, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !4039, file: !3, line: 267, column: 10)
!4039 = distinct !DILexicalBlock(scope: !4034, file: !3, line: 266, column: 32)
!4040 = !DILocation(line: 267, column: 17, scope: !4038)
!4041 = !DILocation(line: 267, column: 14, scope: !4038)
!4042 = !DILocation(line: 267, column: 24, scope: !4038)
!4043 = !DILocation(line: 267, column: 36, scope: !4038)
!4044 = !DILocation(line: 267, column: 33, scope: !4038)
!4045 = !DILocation(line: 267, column: 31, scope: !4038)
!4046 = !DILocation(line: 267, column: 40, scope: !4038)
!4047 = !DILocation(line: 267, column: 48, scope: !4038)
!4048 = !DILocation(line: 267, column: 10, scope: !4039)
!4049 = !DILocation(line: 268, column: 3, scope: !4038)
!4050 = !DILocation(line: 269, column: 8, scope: !4039)
!4051 = !DILocation(line: 270, column: 11, scope: !4039)
!4052 = !DILocation(line: 270, column: 13, scope: !4039)
!4053 = !DILocation(line: 270, column: 8, scope: !4039)
!4054 = !DILocation(line: 271, column: 2, scope: !4039)
!4055 = !DILocation(line: 266, column: 28, scope: !4034)
!4056 = !DILocation(line: 266, column: 2, scope: !4034)
!4057 = distinct !{!4057, !4036, !4058, !1265}
!4058 = !DILocation(line: 271, column: 2, scope: !4035)
!4059 = !DILocation(line: 274, column: 6, scope: !4060)
!4060 = distinct !DILexicalBlock(scope: !3953, file: !3, line: 274, column: 6)
!4061 = !DILocation(line: 274, column: 8, scope: !4060)
!4062 = !DILocation(line: 274, column: 6, scope: !3953)
!4063 = !DILocation(line: 275, column: 10, scope: !4064)
!4064 = distinct !DILexicalBlock(scope: !4065, file: !3, line: 275, column: 10)
!4065 = distinct !DILexicalBlock(scope: !4060, file: !3, line: 274, column: 16)
!4066 = !DILocation(line: 275, column: 17, scope: !4064)
!4067 = !DILocation(line: 275, column: 14, scope: !4064)
!4068 = !DILocation(line: 275, column: 10, scope: !4065)
!4069 = !DILocation(line: 276, column: 3, scope: !4064)
!4070 = !DILocation(line: 277, column: 15, scope: !4065)
!4071 = !DILocation(line: 277, column: 10, scope: !4065)
!4072 = !DILocation(line: 277, column: 13, scope: !4065)
!4073 = !DILocation(line: 278, column: 2, scope: !4065)
!4074 = !DILocation(line: 280, column: 16, scope: !4075)
!4075 = distinct !DILexicalBlock(scope: !4060, file: !3, line: 278, column: 9)
!4076 = !DILocation(line: 280, column: 22, scope: !4075)
!4077 = !DILocation(line: 280, column: 20, scope: !4075)
!4078 = !DILocation(line: 280, column: 7, scope: !4075)
!4079 = !DILocation(line: 280, column: 14, scope: !4075)
!4080 = !DILocation(line: 281, column: 15, scope: !4075)
!4081 = !DILocation(line: 281, column: 27, scope: !4075)
!4082 = !DILocation(line: 281, column: 25, scope: !4075)
!4083 = !DILocation(line: 281, column: 7, scope: !4075)
!4084 = !DILocation(line: 281, column: 13, scope: !4075)
!4085 = !DILocation(line: 282, column: 6, scope: !4075)
!4086 = !DILocation(line: 284, column: 14, scope: !3953)
!4087 = !DILocation(line: 284, column: 12, scope: !3953)
!4088 = distinct !{!4088, !3948, !4089, !1265}
!4089 = !DILocation(line: 285, column: 5, scope: !3881)
!4090 = !DILocation(line: 286, column: 15, scope: !3881)
!4091 = !DILocation(line: 286, column: 21, scope: !3881)
!4092 = !DILocation(line: 286, column: 19, scope: !3881)
!4093 = !DILocation(line: 286, column: 6, scope: !3881)
!4094 = !DILocation(line: 286, column: 13, scope: !3881)
!4095 = !DILocation(line: 287, column: 14, scope: !3881)
!4096 = !DILocation(line: 287, column: 26, scope: !3881)
!4097 = !DILocation(line: 287, column: 24, scope: !3881)
!4098 = !DILocation(line: 287, column: 6, scope: !3881)
!4099 = !DILocation(line: 287, column: 12, scope: !3881)
!4100 = !DILocation(line: 288, column: 13, scope: !3881)
!4101 = !DILocation(line: 288, column: 12, scope: !3881)
!4102 = !DILocation(line: 288, column: 5, scope: !3881)
!4103 = !DILocation(line: 289, column: 1, scope: !3881)
!4104 = distinct !DISubprogram(name: "xmlCleanupCharEncodingHandlers__internal_alias", scope: !3, file: !3, line: 1455, type: !1711, scopeLine: 1455, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4105 = !DILocation(line: 1456, column: 5, scope: !4104)
!4106 = !DILocation(line: 1458, column: 9, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4104, file: !3, line: 1458, column: 9)
!4108 = !DILocation(line: 1458, column: 18, scope: !4107)
!4109 = !DILocation(line: 1458, column: 9, scope: !4104)
!4110 = !DILocation(line: 1458, column: 27, scope: !4107)
!4111 = !DILocation(line: 1460, column: 5, scope: !4104)
!4112 = !DILocation(line: 1460, column: 11, scope: !4113)
!4113 = distinct !DILexicalBlock(scope: !4114, file: !3, line: 1460, column: 5)
!4114 = distinct !DILexicalBlock(scope: !4104, file: !3, line: 1460, column: 5)
!4115 = !DILocation(line: 1460, column: 33, scope: !4113)
!4116 = !DILocation(line: 1460, column: 5, scope: !4114)
!4117 = !DILocation(line: 1461, column: 30, scope: !4118)
!4118 = distinct !DILexicalBlock(scope: !4113, file: !3, line: 1460, column: 39)
!4119 = !DILocation(line: 1462, column: 6, scope: !4120)
!4120 = distinct !DILexicalBlock(scope: !4118, file: !3, line: 1462, column: 6)
!4121 = !DILocation(line: 1462, column: 15, scope: !4120)
!4122 = !DILocation(line: 1462, column: 38, scope: !4120)
!4123 = !DILocation(line: 1462, column: 6, scope: !4118)
!4124 = !DILocation(line: 1463, column: 10, scope: !4125)
!4125 = distinct !DILexicalBlock(scope: !4126, file: !3, line: 1463, column: 10)
!4126 = distinct !DILexicalBlock(scope: !4120, file: !3, line: 1462, column: 47)
!4127 = !DILocation(line: 1463, column: 19, scope: !4125)
!4128 = !DILocation(line: 1463, column: 43, scope: !4125)
!4129 = !DILocation(line: 1463, column: 48, scope: !4125)
!4130 = !DILocation(line: 1463, column: 10, scope: !4126)
!4131 = !DILocation(line: 1464, column: 3, scope: !4125)
!4132 = !DILocation(line: 1464, column: 11, scope: !4125)
!4133 = !DILocation(line: 1464, column: 20, scope: !4125)
!4134 = !DILocation(line: 1464, column: 44, scope: !4125)
!4135 = !DILocation(line: 1465, column: 6, scope: !4126)
!4136 = !DILocation(line: 1465, column: 14, scope: !4126)
!4137 = !DILocation(line: 1465, column: 23, scope: !4126)
!4138 = !DILocation(line: 1466, column: 2, scope: !4126)
!4139 = !DILocation(line: 1460, column: 5, scope: !4113)
!4140 = distinct !{!4140, !4116, !4141, !1265}
!4141 = !DILocation(line: 1467, column: 5, scope: !4114)
!4142 = !DILocation(line: 1468, column: 5, scope: !4104)
!4143 = !DILocation(line: 1468, column: 13, scope: !4104)
!4144 = !DILocation(line: 1469, column: 14, scope: !4104)
!4145 = !DILocation(line: 1470, column: 27, scope: !4104)
!4146 = !DILocation(line: 1471, column: 35, scope: !4104)
!4147 = !DILocation(line: 1472, column: 1, scope: !4104)
!4148 = distinct !DISubprogram(name: "xmlGetCharEncodingHandler__internal_alias", scope: !3, file: !3, line: 1507, type: !4149, scopeLine: 1507, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4151)
!4149 = !DISubroutineType(types: !4150)
!4150 = !{!917, !1540}
!4151 = !{!4152, !4153}
!4152 = !DILocalVariable(name: "enc", arg: 1, scope: !4148, file: !3, line: 1507, type: !1540)
!4153 = !DILocalVariable(name: "handler", scope: !4148, file: !3, line: 1508, type: !917)
!4154 = !DILocation(line: 1507, column: 43, scope: !4148)
!4155 = !DILocation(line: 1508, column: 5, scope: !4148)
!4156 = !DILocation(line: 1508, column: 31, scope: !4148)
!4157 = !DILocation(line: 1510, column: 9, scope: !4158)
!4158 = distinct !DILexicalBlock(scope: !4148, file: !3, line: 1510, column: 9)
!4159 = !DILocation(line: 1510, column: 18, scope: !4158)
!4160 = !DILocation(line: 1510, column: 9, scope: !4148)
!4161 = !DILocation(line: 1510, column: 27, scope: !4158)
!4162 = !DILocation(line: 1511, column: 13, scope: !4148)
!4163 = !DILocation(line: 1511, column: 5, scope: !4148)
!4164 = !DILocation(line: 1513, column: 6, scope: !4165)
!4165 = distinct !DILexicalBlock(scope: !4148, file: !3, line: 1511, column: 18)
!4166 = !DILocation(line: 1515, column: 6, scope: !4165)
!4167 = !DILocation(line: 1517, column: 6, scope: !4165)
!4168 = !DILocation(line: 1519, column: 13, scope: !4165)
!4169 = !DILocation(line: 1519, column: 6, scope: !4165)
!4170 = !DILocation(line: 1521, column: 13, scope: !4165)
!4171 = !DILocation(line: 1521, column: 6, scope: !4165)
!4172 = !DILocation(line: 1523, column: 23, scope: !4165)
!4173 = !DILocation(line: 1523, column: 21, scope: !4165)
!4174 = !DILocation(line: 1524, column: 17, scope: !4175)
!4175 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 1524, column: 17)
!4176 = !DILocation(line: 1524, column: 25, scope: !4175)
!4177 = !DILocation(line: 1524, column: 17, scope: !4165)
!4178 = !DILocation(line: 1524, column: 41, scope: !4175)
!4179 = !DILocation(line: 1524, column: 34, scope: !4175)
!4180 = !DILocation(line: 1525, column: 23, scope: !4165)
!4181 = !DILocation(line: 1525, column: 21, scope: !4165)
!4182 = !DILocation(line: 1526, column: 17, scope: !4183)
!4183 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 1526, column: 17)
!4184 = !DILocation(line: 1526, column: 25, scope: !4183)
!4185 = !DILocation(line: 1526, column: 17, scope: !4165)
!4186 = !DILocation(line: 1526, column: 41, scope: !4183)
!4187 = !DILocation(line: 1526, column: 34, scope: !4183)
!4188 = !DILocation(line: 1527, column: 23, scope: !4165)
!4189 = !DILocation(line: 1527, column: 21, scope: !4165)
!4190 = !DILocation(line: 1528, column: 17, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 1528, column: 17)
!4192 = !DILocation(line: 1528, column: 25, scope: !4191)
!4193 = !DILocation(line: 1528, column: 17, scope: !4165)
!4194 = !DILocation(line: 1528, column: 41, scope: !4191)
!4195 = !DILocation(line: 1528, column: 34, scope: !4191)
!4196 = !DILocation(line: 1529, column: 23, scope: !4165)
!4197 = !DILocation(line: 1529, column: 21, scope: !4165)
!4198 = !DILocation(line: 1530, column: 17, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 1530, column: 17)
!4200 = !DILocation(line: 1530, column: 25, scope: !4199)
!4201 = !DILocation(line: 1530, column: 17, scope: !4165)
!4202 = !DILocation(line: 1530, column: 41, scope: !4199)
!4203 = !DILocation(line: 1530, column: 34, scope: !4199)
!4204 = !DILocation(line: 1531, column: 6, scope: !4165)
!4205 = !DILocation(line: 1533, column: 23, scope: !4165)
!4206 = !DILocation(line: 1533, column: 21, scope: !4165)
!4207 = !DILocation(line: 1534, column: 17, scope: !4208)
!4208 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 1534, column: 17)
!4209 = !DILocation(line: 1534, column: 25, scope: !4208)
!4210 = !DILocation(line: 1534, column: 17, scope: !4165)
!4211 = !DILocation(line: 1534, column: 41, scope: !4208)
!4212 = !DILocation(line: 1534, column: 34, scope: !4208)
!4213 = !DILocation(line: 1535, column: 23, scope: !4165)
!4214 = !DILocation(line: 1535, column: 21, scope: !4165)
!4215 = !DILocation(line: 1536, column: 17, scope: !4216)
!4216 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 1536, column: 17)
!4217 = !DILocation(line: 1536, column: 25, scope: !4216)
!4218 = !DILocation(line: 1536, column: 17, scope: !4165)
!4219 = !DILocation(line: 1536, column: 41, scope: !4216)
!4220 = !DILocation(line: 1536, column: 34, scope: !4216)
!4221 = !DILocation(line: 1537, column: 23, scope: !4165)
!4222 = !DILocation(line: 1537, column: 21, scope: !4165)
!4223 = !DILocation(line: 1538, column: 17, scope: !4224)
!4224 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 1538, column: 17)
!4225 = !DILocation(line: 1538, column: 25, scope: !4224)
!4226 = !DILocation(line: 1538, column: 17, scope: !4165)
!4227 = !DILocation(line: 1538, column: 41, scope: !4224)
!4228 = !DILocation(line: 1538, column: 34, scope: !4224)
!4229 = !DILocation(line: 1539, column: 6, scope: !4165)
!4230 = !DILocation(line: 1541, column: 23, scope: !4165)
!4231 = !DILocation(line: 1541, column: 21, scope: !4165)
!4232 = !DILocation(line: 1542, column: 17, scope: !4233)
!4233 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 1542, column: 17)
!4234 = !DILocation(line: 1542, column: 25, scope: !4233)
!4235 = !DILocation(line: 1542, column: 17, scope: !4165)
!4236 = !DILocation(line: 1542, column: 41, scope: !4233)
!4237 = !DILocation(line: 1542, column: 34, scope: !4233)
!4238 = !DILocation(line: 1543, column: 23, scope: !4165)
!4239 = !DILocation(line: 1543, column: 21, scope: !4165)
!4240 = !DILocation(line: 1544, column: 17, scope: !4241)
!4241 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 1544, column: 17)
!4242 = !DILocation(line: 1544, column: 25, scope: !4241)
!4243 = !DILocation(line: 1544, column: 17, scope: !4165)
!4244 = !DILocation(line: 1544, column: 41, scope: !4241)
!4245 = !DILocation(line: 1544, column: 34, scope: !4241)
!4246 = !DILocation(line: 1545, column: 23, scope: !4165)
!4247 = !DILocation(line: 1545, column: 21, scope: !4165)
!4248 = !DILocation(line: 1546, column: 17, scope: !4249)
!4249 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 1546, column: 17)
!4250 = !DILocation(line: 1546, column: 25, scope: !4249)
!4251 = !DILocation(line: 1546, column: 17, scope: !4165)
!4252 = !DILocation(line: 1546, column: 41, scope: !4249)
!4253 = !DILocation(line: 1546, column: 34, scope: !4249)
!4254 = !DILocation(line: 1547, column: 6, scope: !4165)
!4255 = !DILocation(line: 1553, column: 23, scope: !4165)
!4256 = !DILocation(line: 1553, column: 21, scope: !4165)
!4257 = !DILocation(line: 1554, column: 17, scope: !4258)
!4258 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 1554, column: 17)
!4259 = !DILocation(line: 1554, column: 25, scope: !4258)
!4260 = !DILocation(line: 1554, column: 17, scope: !4165)
!4261 = !DILocation(line: 1554, column: 41, scope: !4258)
!4262 = !DILocation(line: 1554, column: 34, scope: !4258)
!4263 = !DILocation(line: 1555, column: 23, scope: !4165)
!4264 = !DILocation(line: 1555, column: 21, scope: !4165)
!4265 = !DILocation(line: 1556, column: 17, scope: !4266)
!4266 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 1556, column: 17)
!4267 = !DILocation(line: 1556, column: 25, scope: !4266)
!4268 = !DILocation(line: 1556, column: 17, scope: !4165)
!4269 = !DILocation(line: 1556, column: 41, scope: !4266)
!4270 = !DILocation(line: 1556, column: 34, scope: !4266)
!4271 = !DILocation(line: 1557, column: 23, scope: !4165)
!4272 = !DILocation(line: 1557, column: 21, scope: !4165)
!4273 = !DILocation(line: 1558, column: 17, scope: !4274)
!4274 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 1558, column: 17)
!4275 = !DILocation(line: 1558, column: 25, scope: !4274)
!4276 = !DILocation(line: 1558, column: 17, scope: !4165)
!4277 = !DILocation(line: 1558, column: 41, scope: !4274)
!4278 = !DILocation(line: 1558, column: 34, scope: !4274)
!4279 = !DILocation(line: 1559, column: 6, scope: !4165)
!4280 = !DILocation(line: 1568, column: 16, scope: !4165)
!4281 = !DILocation(line: 1568, column: 14, scope: !4165)
!4282 = !DILocation(line: 1569, column: 10, scope: !4283)
!4283 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 1569, column: 10)
!4284 = !DILocation(line: 1569, column: 18, scope: !4283)
!4285 = !DILocation(line: 1569, column: 10, scope: !4165)
!4286 = !DILocation(line: 1569, column: 34, scope: !4283)
!4287 = !DILocation(line: 1569, column: 27, scope: !4283)
!4288 = !DILocation(line: 1570, column: 6, scope: !4165)
!4289 = !DILocation(line: 1572, column: 16, scope: !4165)
!4290 = !DILocation(line: 1572, column: 14, scope: !4165)
!4291 = !DILocation(line: 1573, column: 10, scope: !4292)
!4292 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 1573, column: 10)
!4293 = !DILocation(line: 1573, column: 18, scope: !4292)
!4294 = !DILocation(line: 1573, column: 10, scope: !4165)
!4295 = !DILocation(line: 1573, column: 34, scope: !4292)
!4296 = !DILocation(line: 1573, column: 27, scope: !4292)
!4297 = !DILocation(line: 1574, column: 6, scope: !4165)
!4298 = !DILocation(line: 1576, column: 16, scope: !4165)
!4299 = !DILocation(line: 1576, column: 14, scope: !4165)
!4300 = !DILocation(line: 1577, column: 10, scope: !4301)
!4301 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 1577, column: 10)
!4302 = !DILocation(line: 1577, column: 18, scope: !4301)
!4303 = !DILocation(line: 1577, column: 10, scope: !4165)
!4304 = !DILocation(line: 1577, column: 34, scope: !4301)
!4305 = !DILocation(line: 1577, column: 27, scope: !4301)
!4306 = !DILocation(line: 1578, column: 6, scope: !4165)
!4307 = !DILocation(line: 1580, column: 16, scope: !4165)
!4308 = !DILocation(line: 1580, column: 14, scope: !4165)
!4309 = !DILocation(line: 1581, column: 10, scope: !4310)
!4310 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 1581, column: 10)
!4311 = !DILocation(line: 1581, column: 18, scope: !4310)
!4312 = !DILocation(line: 1581, column: 10, scope: !4165)
!4313 = !DILocation(line: 1581, column: 34, scope: !4310)
!4314 = !DILocation(line: 1581, column: 27, scope: !4310)
!4315 = !DILocation(line: 1582, column: 6, scope: !4165)
!4316 = !DILocation(line: 1584, column: 16, scope: !4165)
!4317 = !DILocation(line: 1584, column: 14, scope: !4165)
!4318 = !DILocation(line: 1585, column: 10, scope: !4319)
!4319 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 1585, column: 10)
!4320 = !DILocation(line: 1585, column: 18, scope: !4319)
!4321 = !DILocation(line: 1585, column: 10, scope: !4165)
!4322 = !DILocation(line: 1585, column: 34, scope: !4319)
!4323 = !DILocation(line: 1585, column: 27, scope: !4319)
!4324 = !DILocation(line: 1586, column: 6, scope: !4165)
!4325 = !DILocation(line: 1588, column: 16, scope: !4165)
!4326 = !DILocation(line: 1588, column: 14, scope: !4165)
!4327 = !DILocation(line: 1589, column: 10, scope: !4328)
!4328 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 1589, column: 10)
!4329 = !DILocation(line: 1589, column: 18, scope: !4328)
!4330 = !DILocation(line: 1589, column: 10, scope: !4165)
!4331 = !DILocation(line: 1589, column: 34, scope: !4328)
!4332 = !DILocation(line: 1589, column: 27, scope: !4328)
!4333 = !DILocation(line: 1590, column: 6, scope: !4165)
!4334 = !DILocation(line: 1592, column: 16, scope: !4165)
!4335 = !DILocation(line: 1592, column: 14, scope: !4165)
!4336 = !DILocation(line: 1593, column: 10, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 1593, column: 10)
!4338 = !DILocation(line: 1593, column: 18, scope: !4337)
!4339 = !DILocation(line: 1593, column: 10, scope: !4165)
!4340 = !DILocation(line: 1593, column: 34, scope: !4337)
!4341 = !DILocation(line: 1593, column: 27, scope: !4337)
!4342 = !DILocation(line: 1594, column: 6, scope: !4165)
!4343 = !DILocation(line: 1596, column: 16, scope: !4165)
!4344 = !DILocation(line: 1596, column: 14, scope: !4165)
!4345 = !DILocation(line: 1597, column: 10, scope: !4346)
!4346 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 1597, column: 10)
!4347 = !DILocation(line: 1597, column: 18, scope: !4346)
!4348 = !DILocation(line: 1597, column: 10, scope: !4165)
!4349 = !DILocation(line: 1597, column: 34, scope: !4346)
!4350 = !DILocation(line: 1597, column: 27, scope: !4346)
!4351 = !DILocation(line: 1598, column: 6, scope: !4165)
!4352 = !DILocation(line: 1600, column: 16, scope: !4165)
!4353 = !DILocation(line: 1600, column: 14, scope: !4165)
!4354 = !DILocation(line: 1601, column: 10, scope: !4355)
!4355 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 1601, column: 10)
!4356 = !DILocation(line: 1601, column: 18, scope: !4355)
!4357 = !DILocation(line: 1601, column: 10, scope: !4165)
!4358 = !DILocation(line: 1601, column: 34, scope: !4355)
!4359 = !DILocation(line: 1601, column: 27, scope: !4355)
!4360 = !DILocation(line: 1602, column: 6, scope: !4165)
!4361 = !DILocation(line: 1606, column: 23, scope: !4165)
!4362 = !DILocation(line: 1606, column: 21, scope: !4165)
!4363 = !DILocation(line: 1607, column: 17, scope: !4364)
!4364 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 1607, column: 17)
!4365 = !DILocation(line: 1607, column: 25, scope: !4364)
!4366 = !DILocation(line: 1607, column: 17, scope: !4165)
!4367 = !DILocation(line: 1607, column: 41, scope: !4364)
!4368 = !DILocation(line: 1607, column: 34, scope: !4364)
!4369 = !DILocation(line: 1608, column: 6, scope: !4165)
!4370 = !DILocation(line: 1610, column: 23, scope: !4165)
!4371 = !DILocation(line: 1610, column: 21, scope: !4165)
!4372 = !DILocation(line: 1611, column: 17, scope: !4373)
!4373 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 1611, column: 17)
!4374 = !DILocation(line: 1611, column: 25, scope: !4373)
!4375 = !DILocation(line: 1611, column: 17, scope: !4165)
!4376 = !DILocation(line: 1611, column: 41, scope: !4373)
!4377 = !DILocation(line: 1611, column: 34, scope: !4373)
!4378 = !DILocation(line: 1612, column: 23, scope: !4165)
!4379 = !DILocation(line: 1612, column: 21, scope: !4165)
!4380 = !DILocation(line: 1613, column: 17, scope: !4381)
!4381 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 1613, column: 17)
!4382 = !DILocation(line: 1613, column: 25, scope: !4381)
!4383 = !DILocation(line: 1613, column: 17, scope: !4165)
!4384 = !DILocation(line: 1613, column: 41, scope: !4381)
!4385 = !DILocation(line: 1613, column: 34, scope: !4381)
!4386 = !DILocation(line: 1614, column: 23, scope: !4165)
!4387 = !DILocation(line: 1614, column: 21, scope: !4165)
!4388 = !DILocation(line: 1615, column: 17, scope: !4389)
!4389 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 1615, column: 17)
!4390 = !DILocation(line: 1615, column: 25, scope: !4389)
!4391 = !DILocation(line: 1615, column: 17, scope: !4165)
!4392 = !DILocation(line: 1615, column: 41, scope: !4389)
!4393 = !DILocation(line: 1615, column: 34, scope: !4389)
!4394 = !DILocation(line: 1616, column: 6, scope: !4165)
!4395 = !DILocation(line: 1618, column: 23, scope: !4165)
!4396 = !DILocation(line: 1618, column: 21, scope: !4165)
!4397 = !DILocation(line: 1619, column: 17, scope: !4398)
!4398 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 1619, column: 17)
!4399 = !DILocation(line: 1619, column: 25, scope: !4398)
!4400 = !DILocation(line: 1619, column: 17, scope: !4165)
!4401 = !DILocation(line: 1619, column: 41, scope: !4398)
!4402 = !DILocation(line: 1619, column: 34, scope: !4398)
!4403 = !DILocation(line: 1620, column: 6, scope: !4165)
!4404 = !DILocation(line: 1622, column: 6, scope: !4165)
!4405 = !DILocation(line: 1629, column: 5, scope: !4148)
!4406 = !DILocation(line: 1630, column: 1, scope: !4148)
!4407 = distinct !DISubprogram(name: "xmlFindCharEncodingHandler__internal_alias", scope: !3, file: !3, line: 1641, type: !4408, scopeLine: 1641, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4410)
!4408 = !DISubroutineType(types: !4409)
!4409 = !{!917, !914}
!4410 = !{!4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4425}
!4411 = !DILocalVariable(name: "name", arg: 1, scope: !4407, file: !3, line: 1641, type: !914)
!4412 = !DILocalVariable(name: "nalias", scope: !4407, file: !3, line: 1642, type: !914)
!4413 = !DILocalVariable(name: "norig", scope: !4407, file: !3, line: 1643, type: !914)
!4414 = !DILocalVariable(name: "alias", scope: !4407, file: !3, line: 1644, type: !1540)
!4415 = !DILocalVariable(name: "enc", scope: !4407, file: !3, line: 1646, type: !917)
!4416 = !DILocalVariable(name: "icv_in", scope: !4407, file: !3, line: 1647, type: !936)
!4417 = !DILocalVariable(name: "icv_out", scope: !4407, file: !3, line: 1647, type: !936)
!4418 = !DILocalVariable(name: "upper", scope: !4407, file: !3, line: 1653, type: !1772)
!4419 = !DILocalVariable(name: "i", scope: !4407, file: !3, line: 1654, type: !7)
!4420 = !DILocalVariable(name: "__res", scope: !4421, file: !3, line: 1672, type: !7)
!4421 = distinct !DILexicalBlock(scope: !4422, file: !3, line: 1672, column: 20)
!4422 = distinct !DILexicalBlock(scope: !4423, file: !3, line: 1671, column: 28)
!4423 = distinct !DILexicalBlock(scope: !4424, file: !3, line: 1671, column: 5)
!4424 = distinct !DILexicalBlock(scope: !4407, file: !3, line: 1671, column: 5)
!4425 = !DILocalVariable(name: "canon", scope: !4426, file: !3, line: 1764, type: !914)
!4426 = distinct !DILexicalBlock(scope: !4427, file: !3, line: 1763, column: 43)
!4427 = distinct !DILexicalBlock(scope: !4407, file: !3, line: 1763, column: 9)
!4428 = !DILocation(line: 1641, column: 40, scope: !4407)
!4429 = !DILocation(line: 1642, column: 5, scope: !4407)
!4430 = !DILocation(line: 1642, column: 17, scope: !4407)
!4431 = !DILocation(line: 1643, column: 5, scope: !4407)
!4432 = !DILocation(line: 1643, column: 17, scope: !4407)
!4433 = !DILocation(line: 1644, column: 5, scope: !4407)
!4434 = !DILocation(line: 1644, column: 21, scope: !4407)
!4435 = !DILocation(line: 1646, column: 5, scope: !4407)
!4436 = !DILocation(line: 1646, column: 31, scope: !4407)
!4437 = !DILocation(line: 1647, column: 5, scope: !4407)
!4438 = !DILocation(line: 1647, column: 13, scope: !4407)
!4439 = !DILocation(line: 1647, column: 21, scope: !4407)
!4440 = !DILocation(line: 1653, column: 5, scope: !4407)
!4441 = !DILocation(line: 1653, column: 10, scope: !4407)
!4442 = !DILocation(line: 1654, column: 5, scope: !4407)
!4443 = !DILocation(line: 1654, column: 9, scope: !4407)
!4444 = !DILocation(line: 1656, column: 9, scope: !4445)
!4445 = distinct !DILexicalBlock(scope: !4407, file: !3, line: 1656, column: 9)
!4446 = !DILocation(line: 1656, column: 18, scope: !4445)
!4447 = !DILocation(line: 1656, column: 9, scope: !4407)
!4448 = !DILocation(line: 1656, column: 27, scope: !4445)
!4449 = !DILocation(line: 1657, column: 9, scope: !4450)
!4450 = distinct !DILexicalBlock(scope: !4407, file: !3, line: 1657, column: 9)
!4451 = !DILocation(line: 1657, column: 14, scope: !4450)
!4452 = !DILocation(line: 1657, column: 9, scope: !4407)
!4453 = !DILocation(line: 1657, column: 30, scope: !4450)
!4454 = !DILocation(line: 1657, column: 23, scope: !4450)
!4455 = !DILocation(line: 1658, column: 9, scope: !4456)
!4456 = distinct !DILexicalBlock(scope: !4407, file: !3, line: 1658, column: 9)
!4457 = !DILocation(line: 1658, column: 17, scope: !4456)
!4458 = !DILocation(line: 1658, column: 9, scope: !4407)
!4459 = !DILocation(line: 1658, column: 30, scope: !4456)
!4460 = !DILocation(line: 1658, column: 23, scope: !4456)
!4461 = !DILocation(line: 1663, column: 13, scope: !4407)
!4462 = !DILocation(line: 1663, column: 11, scope: !4407)
!4463 = !DILocation(line: 1664, column: 34, scope: !4407)
!4464 = !DILocation(line: 1664, column: 14, scope: !4407)
!4465 = !DILocation(line: 1664, column: 12, scope: !4407)
!4466 = !DILocation(line: 1665, column: 9, scope: !4467)
!4467 = distinct !DILexicalBlock(scope: !4407, file: !3, line: 1665, column: 9)
!4468 = !DILocation(line: 1665, column: 16, scope: !4467)
!4469 = !DILocation(line: 1665, column: 9, scope: !4407)
!4470 = !DILocation(line: 1666, column: 9, scope: !4467)
!4471 = !DILocation(line: 1666, column: 7, scope: !4467)
!4472 = !DILocation(line: 1666, column: 2, scope: !4467)
!4473 = !DILocation(line: 1671, column: 12, scope: !4424)
!4474 = !DILocation(line: 1671, column: 10, scope: !4424)
!4475 = !DILocation(line: 1671, column: 16, scope: !4423)
!4476 = !DILocation(line: 1671, column: 18, scope: !4423)
!4477 = !DILocation(line: 1671, column: 5, scope: !4424)
!4478 = !DILocation(line: 1672, column: 20, scope: !4421)
!4479 = !DILocation(line: 1672, column: 20, scope: !4480)
!4480 = distinct !DILexicalBlock(scope: !4421, file: !3, line: 1672, column: 20)
!4481 = !DILocation(line: 1672, column: 20, scope: !4422)
!4482 = !DILocation(line: 1672, column: 15, scope: !4422)
!4483 = !DILocation(line: 1672, column: 9, scope: !4422)
!4484 = !DILocation(line: 1672, column: 18, scope: !4422)
!4485 = !DILocation(line: 1673, column: 12, scope: !4486)
!4486 = distinct !DILexicalBlock(scope: !4422, file: !3, line: 1673, column: 6)
!4487 = !DILocation(line: 1673, column: 6, scope: !4486)
!4488 = !DILocation(line: 1673, column: 15, scope: !4486)
!4489 = !DILocation(line: 1673, column: 6, scope: !4422)
!4490 = !DILocation(line: 1673, column: 21, scope: !4486)
!4491 = !DILocation(line: 1674, column: 5, scope: !4422)
!4492 = !DILocation(line: 1671, column: 24, scope: !4423)
!4493 = !DILocation(line: 1671, column: 5, scope: !4423)
!4494 = distinct !{!4494, !4477, !4495, !1265}
!4495 = !DILocation(line: 1674, column: 5, scope: !4424)
!4496 = !DILocation(line: 1675, column: 11, scope: !4407)
!4497 = !DILocation(line: 1675, column: 5, scope: !4407)
!4498 = !DILocation(line: 1675, column: 14, scope: !4407)
!4499 = !DILocation(line: 1677, column: 9, scope: !4500)
!4500 = distinct !DILexicalBlock(scope: !4407, file: !3, line: 1677, column: 9)
!4501 = !DILocation(line: 1677, column: 18, scope: !4500)
!4502 = !DILocation(line: 1677, column: 9, scope: !4407)
!4503 = !DILocation(line: 1678, column: 16, scope: !4504)
!4504 = distinct !DILexicalBlock(scope: !4505, file: !3, line: 1678, column: 9)
!4505 = distinct !DILexicalBlock(scope: !4500, file: !3, line: 1677, column: 27)
!4506 = !DILocation(line: 1678, column: 14, scope: !4504)
!4507 = !DILocation(line: 1678, column: 20, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4504, file: !3, line: 1678, column: 9)
!4509 = !DILocation(line: 1678, column: 24, scope: !4508)
!4510 = !DILocation(line: 1678, column: 22, scope: !4508)
!4511 = !DILocation(line: 1678, column: 9, scope: !4504)
!4512 = !DILocation(line: 1679, column: 25, scope: !4513)
!4513 = distinct !DILexicalBlock(scope: !4514, file: !3, line: 1679, column: 17)
!4514 = distinct !DILexicalBlock(scope: !4508, file: !3, line: 1678, column: 52)
!4515 = !DILocation(line: 1679, column: 32, scope: !4513)
!4516 = !DILocation(line: 1679, column: 41, scope: !4513)
!4517 = !DILocation(line: 1679, column: 45, scope: !4513)
!4518 = !DILocation(line: 1679, column: 18, scope: !4513)
!4519 = !DILocation(line: 1679, column: 17, scope: !4514)
!4520 = !DILocation(line: 1684, column: 24, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4513, file: !3, line: 1679, column: 52)
!4522 = !DILocation(line: 1684, column: 33, scope: !4521)
!4523 = !DILocation(line: 1684, column: 17, scope: !4521)
!4524 = !DILocation(line: 1686, column: 9, scope: !4514)
!4525 = !DILocation(line: 1678, column: 48, scope: !4508)
!4526 = !DILocation(line: 1678, column: 9, scope: !4508)
!4527 = distinct !{!4527, !4511, !4528, !1265}
!4528 = !DILocation(line: 1686, column: 9, scope: !4504)
!4529 = !DILocation(line: 1687, column: 5, scope: !4505)
!4530 = !DILocation(line: 1691, column: 34, scope: !4407)
!4531 = !DILocation(line: 1691, column: 14, scope: !4407)
!4532 = !DILocation(line: 1691, column: 12, scope: !4407)
!4533 = !DILocation(line: 1692, column: 26, scope: !4407)
!4534 = !DILocation(line: 1692, column: 15, scope: !4407)
!4535 = !DILocation(line: 1692, column: 13, scope: !4407)
!4536 = !DILocation(line: 1693, column: 9, scope: !4537)
!4537 = distinct !DILexicalBlock(scope: !4407, file: !3, line: 1693, column: 9)
!4538 = !DILocation(line: 1693, column: 16, scope: !4537)
!4539 = !DILocation(line: 1693, column: 9, scope: !4407)
!4540 = !DILocation(line: 1694, column: 38, scope: !4541)
!4541 = distinct !DILexicalBlock(scope: !4537, file: !3, line: 1693, column: 33)
!4542 = !DILocation(line: 1694, column: 18, scope: !4541)
!4543 = !DILocation(line: 1694, column: 16, scope: !4541)
!4544 = !DILocation(line: 1695, column: 5, scope: !4541)
!4545 = !DILocation(line: 1696, column: 9, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !4407, file: !3, line: 1696, column: 9)
!4547 = !DILocation(line: 1696, column: 17, scope: !4546)
!4548 = !DILocation(line: 1696, column: 9, scope: !4407)
!4549 = !DILocation(line: 1697, column: 23, scope: !4550)
!4550 = distinct !DILexicalBlock(scope: !4546, file: !3, line: 1696, column: 34)
!4551 = !DILocation(line: 1697, column: 12, scope: !4550)
!4552 = !DILocation(line: 1697, column: 10, scope: !4550)
!4553 = !DILocation(line: 1698, column: 5, scope: !4550)
!4554 = !DILocation(line: 1699, column: 10, scope: !4555)
!4555 = distinct !DILexicalBlock(scope: !4407, file: !3, line: 1699, column: 9)
!4556 = !DILocation(line: 1699, column: 17, scope: !4555)
!4557 = !DILocation(line: 1699, column: 34, scope: !4555)
!4558 = !DILocation(line: 1699, column: 38, scope: !4555)
!4559 = !DILocation(line: 1699, column: 46, scope: !4555)
!4560 = !DILocation(line: 1699, column: 9, scope: !4407)
!4561 = !DILocation(line: 1701, column: 12, scope: !4562)
!4562 = distinct !DILexicalBlock(scope: !4555, file: !3, line: 1699, column: 64)
!4563 = !DILocation(line: 1700, column: 10, scope: !4562)
!4564 = !DILocation(line: 1702, column: 10, scope: !4565)
!4565 = distinct !DILexicalBlock(scope: !4562, file: !3, line: 1702, column: 10)
!4566 = !DILocation(line: 1702, column: 14, scope: !4565)
!4567 = !DILocation(line: 1702, column: 10, scope: !4562)
!4568 = !DILocation(line: 1703, column: 22, scope: !4569)
!4569 = distinct !DILexicalBlock(scope: !4565, file: !3, line: 1702, column: 23)
!4570 = !DILocation(line: 1703, column: 10, scope: !4569)
!4571 = !DILocation(line: 1704, column: 22, scope: !4569)
!4572 = !DILocation(line: 1704, column: 10, scope: !4569)
!4573 = !DILocation(line: 1705, column: 3, scope: !4569)
!4574 = !DILocation(line: 1707, column: 20, scope: !4562)
!4575 = !DILocation(line: 1707, column: 13, scope: !4562)
!4576 = !DILocation(line: 1708, column: 18, scope: !4562)
!4577 = !DILocation(line: 1708, column: 31, scope: !4562)
!4578 = !DILocation(line: 1708, column: 6, scope: !4562)
!4579 = !DILocation(line: 1708, column: 11, scope: !4562)
!4580 = !DILocation(line: 1708, column: 16, scope: !4562)
!4581 = !DILocation(line: 1709, column: 6, scope: !4562)
!4582 = !DILocation(line: 1709, column: 11, scope: !4562)
!4583 = !DILocation(line: 1709, column: 17, scope: !4562)
!4584 = !DILocation(line: 1710, column: 6, scope: !4562)
!4585 = !DILocation(line: 1710, column: 11, scope: !4562)
!4586 = !DILocation(line: 1710, column: 18, scope: !4562)
!4587 = !DILocation(line: 1711, column: 22, scope: !4562)
!4588 = !DILocation(line: 1711, column: 6, scope: !4562)
!4589 = !DILocation(line: 1711, column: 11, scope: !4562)
!4590 = !DILocation(line: 1711, column: 20, scope: !4562)
!4591 = !DILocation(line: 1712, column: 23, scope: !4562)
!4592 = !DILocation(line: 1712, column: 6, scope: !4562)
!4593 = !DILocation(line: 1712, column: 11, scope: !4562)
!4594 = !DILocation(line: 1712, column: 21, scope: !4562)
!4595 = !DILocation(line: 1717, column: 13, scope: !4562)
!4596 = !DILocation(line: 1717, column: 6, scope: !4562)
!4597 = !DILocation(line: 1718, column: 17, scope: !4598)
!4598 = distinct !DILexicalBlock(scope: !4555, file: !3, line: 1718, column: 16)
!4599 = !DILocation(line: 1718, column: 24, scope: !4598)
!4600 = !DILocation(line: 1718, column: 41, scope: !4598)
!4601 = !DILocation(line: 1718, column: 44, scope: !4598)
!4602 = !DILocation(line: 1718, column: 52, scope: !4598)
!4603 = !DILocation(line: 1718, column: 16, scope: !4555)
!4604 = !DILocation(line: 1720, column: 51, scope: !4605)
!4605 = distinct !DILexicalBlock(scope: !4598, file: !3, line: 1718, column: 69)
!4606 = !DILocation(line: 1719, column: 6, scope: !4605)
!4607 = !DILocation(line: 1721, column: 5, scope: !4605)
!4608 = !DILocation(line: 1762, column: 34, scope: !4407)
!4609 = !DILocation(line: 1762, column: 13, scope: !4407)
!4610 = !DILocation(line: 1762, column: 11, scope: !4407)
!4611 = !DILocation(line: 1763, column: 9, scope: !4427)
!4612 = !DILocation(line: 1763, column: 15, scope: !4427)
!4613 = !DILocation(line: 1763, column: 9, scope: !4407)
!4614 = !DILocation(line: 1764, column: 9, scope: !4426)
!4615 = !DILocation(line: 1764, column: 21, scope: !4426)
!4616 = !DILocation(line: 1765, column: 40, scope: !4426)
!4617 = !DILocation(line: 1765, column: 17, scope: !4426)
!4618 = !DILocation(line: 1765, column: 15, scope: !4426)
!4619 = !DILocation(line: 1766, column: 14, scope: !4620)
!4620 = distinct !DILexicalBlock(scope: !4426, file: !3, line: 1766, column: 13)
!4621 = !DILocation(line: 1766, column: 20, scope: !4620)
!4622 = !DILocation(line: 1766, column: 29, scope: !4620)
!4623 = !DILocation(line: 1766, column: 40, scope: !4620)
!4624 = !DILocation(line: 1766, column: 46, scope: !4620)
!4625 = !DILocation(line: 1766, column: 33, scope: !4620)
!4626 = !DILocation(line: 1766, column: 13, scope: !4426)
!4627 = !DILocation(line: 1767, column: 40, scope: !4628)
!4628 = distinct !DILexicalBlock(scope: !4620, file: !3, line: 1766, column: 55)
!4629 = !DILocation(line: 1767, column: 13, scope: !4628)
!4630 = !DILocation(line: 1767, column: 6, scope: !4628)
!4631 = !DILocation(line: 1769, column: 5, scope: !4427)
!4632 = !DILocation(line: 1769, column: 5, scope: !4426)
!4633 = !DILocation(line: 1772, column: 5, scope: !4407)
!4634 = !DILocation(line: 1773, column: 1, scope: !4407)
!4635 = !DISubprogram(name: "libiconv_open", scope: !937, file: !937, line: 72, type: !4636, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4636 = !DISubroutineType(types: !4637)
!4637 = !{!936, !914, !914}
!4638 = !DISubprogram(name: "libiconv_close", scope: !937, file: !937, line: 88, type: !4639, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4639 = !DISubroutineType(types: !4640)
!4640 = !{!7, !936}
!4641 = distinct !DISubprogram(name: "xmlCharEncFirstLineInt", scope: !3, file: !3, line: 1989, type: !4642, scopeLine: 1990, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4656)
!4642 = !DISubroutineType(types: !4643)
!4643 = !{!7, !918, !4644, !4644, !7}
!4644 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBufferPtr", file: !772, line: 90, baseType: !4645)
!4645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4646, size: 64)
!4646 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuffer", file: !772, line: 89, baseType: !4647)
!4647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuffer", file: !772, line: 91, size: 256, elements: !4648)
!4648 = !{!4649, !4651, !4652, !4653, !4655}
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !4647, file: !772, line: 92, baseType: !4650, size: 64)
!4650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !4647, file: !772, line: 93, baseType: !35, size: 32, offset: 64)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4647, file: !772, line: 94, baseType: !35, size: 32, offset: 96)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4647, file: !772, line: 95, baseType: !4654, size: 32, offset: 128)
!4654 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBufferAllocationScheme", file: !772, line: 81, baseType: !771)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "contentIO", scope: !4647, file: !772, line: 96, baseType: !4650, size: 64, offset: 192)
!4656 = !{!4657, !4658, !4659, !4660, !4661, !4662, !4663}
!4657 = !DILocalVariable(name: "handler", arg: 1, scope: !4641, file: !3, line: 1989, type: !918)
!4658 = !DILocalVariable(name: "out", arg: 2, scope: !4641, file: !3, line: 1989, type: !4644)
!4659 = !DILocalVariable(name: "in", arg: 3, scope: !4641, file: !3, line: 1990, type: !4644)
!4660 = !DILocalVariable(name: "len", arg: 4, scope: !4641, file: !3, line: 1990, type: !7)
!4661 = !DILocalVariable(name: "ret", scope: !4641, file: !3, line: 1991, type: !7)
!4662 = !DILocalVariable(name: "written", scope: !4641, file: !3, line: 1992, type: !7)
!4663 = !DILocalVariable(name: "toconv", scope: !4641, file: !3, line: 1993, type: !7)
!4664 = !DILocation(line: 1989, column: 48, scope: !4641)
!4665 = !DILocation(line: 1989, column: 70, scope: !4641)
!4666 = !DILocation(line: 1990, column: 37, scope: !4641)
!4667 = !DILocation(line: 1990, column: 45, scope: !4641)
!4668 = !DILocation(line: 1991, column: 5, scope: !4641)
!4669 = !DILocation(line: 1991, column: 9, scope: !4641)
!4670 = !DILocation(line: 1992, column: 5, scope: !4641)
!4671 = !DILocation(line: 1992, column: 9, scope: !4641)
!4672 = !DILocation(line: 1993, column: 5, scope: !4641)
!4673 = !DILocation(line: 1993, column: 9, scope: !4641)
!4674 = !DILocation(line: 1995, column: 9, scope: !4675)
!4675 = distinct !DILexicalBlock(scope: !4641, file: !3, line: 1995, column: 9)
!4676 = !DILocation(line: 1995, column: 17, scope: !4675)
!4677 = !DILocation(line: 1995, column: 9, scope: !4641)
!4678 = !DILocation(line: 1995, column: 26, scope: !4675)
!4679 = !DILocation(line: 1996, column: 9, scope: !4680)
!4680 = distinct !DILexicalBlock(scope: !4641, file: !3, line: 1996, column: 9)
!4681 = !DILocation(line: 1996, column: 13, scope: !4680)
!4682 = !DILocation(line: 1996, column: 9, scope: !4641)
!4683 = !DILocation(line: 1996, column: 22, scope: !4680)
!4684 = !DILocation(line: 1997, column: 9, scope: !4685)
!4685 = distinct !DILexicalBlock(scope: !4641, file: !3, line: 1997, column: 9)
!4686 = !DILocation(line: 1997, column: 12, scope: !4685)
!4687 = !DILocation(line: 1997, column: 9, scope: !4641)
!4688 = !DILocation(line: 1997, column: 21, scope: !4685)
!4689 = !DILocation(line: 2000, column: 15, scope: !4641)
!4690 = !DILocation(line: 2000, column: 20, scope: !4641)
!4691 = !{!4692, !1186, i64 12}
!4692 = !{!"_xmlBuffer", !1149, i64 0, !1186, i64 8, !1186, i64 12, !1150, i64 16, !1149, i64 24}
!4693 = !DILocation(line: 2000, column: 27, scope: !4641)
!4694 = !DILocation(line: 2000, column: 32, scope: !4641)
!4695 = !{!4692, !1186, i64 8}
!4696 = !DILocation(line: 2000, column: 25, scope: !4641)
!4697 = !DILocation(line: 2000, column: 36, scope: !4641)
!4698 = !DILocation(line: 2000, column: 13, scope: !4641)
!4699 = !DILocation(line: 2001, column: 14, scope: !4641)
!4700 = !DILocation(line: 2001, column: 18, scope: !4641)
!4701 = !DILocation(line: 2001, column: 12, scope: !4641)
!4702 = !DILocation(line: 2010, column: 9, scope: !4703)
!4703 = distinct !DILexicalBlock(scope: !4641, file: !3, line: 2010, column: 9)
!4704 = !DILocation(line: 2010, column: 13, scope: !4703)
!4705 = !DILocation(line: 2010, column: 9, scope: !4641)
!4706 = !DILocation(line: 2011, column: 13, scope: !4707)
!4707 = distinct !DILexicalBlock(scope: !4708, file: !3, line: 2011, column: 13)
!4708 = distinct !DILexicalBlock(scope: !4703, file: !3, line: 2010, column: 19)
!4709 = !DILocation(line: 2011, column: 22, scope: !4707)
!4710 = !DILocation(line: 2011, column: 20, scope: !4707)
!4711 = !DILocation(line: 2011, column: 13, scope: !4708)
!4712 = !DILocation(line: 2012, column: 22, scope: !4707)
!4713 = !DILocation(line: 2012, column: 20, scope: !4707)
!4714 = !DILocation(line: 2012, column: 13, scope: !4707)
!4715 = !DILocation(line: 2013, column: 5, scope: !4708)
!4716 = !DILocation(line: 2014, column: 13, scope: !4717)
!4717 = distinct !DILexicalBlock(scope: !4718, file: !3, line: 2014, column: 13)
!4718 = distinct !DILexicalBlock(scope: !4703, file: !3, line: 2013, column: 12)
!4719 = !DILocation(line: 2014, column: 20, scope: !4717)
!4720 = !DILocation(line: 2014, column: 13, scope: !4718)
!4721 = !DILocation(line: 2015, column: 20, scope: !4717)
!4722 = !DILocation(line: 2015, column: 13, scope: !4717)
!4723 = !DILocation(line: 2017, column: 9, scope: !4724)
!4724 = distinct !DILexicalBlock(scope: !4641, file: !3, line: 2017, column: 9)
!4725 = !DILocation(line: 2017, column: 16, scope: !4724)
!4726 = !DILocation(line: 2017, column: 23, scope: !4724)
!4727 = !DILocation(line: 2017, column: 20, scope: !4724)
!4728 = !DILocation(line: 2017, column: 9, scope: !4641)
!4729 = !DILocation(line: 2018, column: 23, scope: !4730)
!4730 = distinct !DILexicalBlock(scope: !4724, file: !3, line: 2017, column: 32)
!4731 = !DILocation(line: 2018, column: 28, scope: !4730)
!4732 = !DILocation(line: 2018, column: 35, scope: !4730)
!4733 = !DILocation(line: 2018, column: 9, scope: !4730)
!4734 = !DILocation(line: 2019, column: 12, scope: !4730)
!4735 = !DILocation(line: 2019, column: 17, scope: !4730)
!4736 = !DILocation(line: 2019, column: 24, scope: !4730)
!4737 = !DILocation(line: 2019, column: 29, scope: !4730)
!4738 = !DILocation(line: 2019, column: 22, scope: !4730)
!4739 = !DILocation(line: 2019, column: 33, scope: !4730)
!4740 = !DILocation(line: 2019, column: 10, scope: !4730)
!4741 = !DILocation(line: 2020, column: 5, scope: !4730)
!4742 = !DILocation(line: 2022, column: 28, scope: !4641)
!4743 = !DILocation(line: 2022, column: 38, scope: !4641)
!4744 = !DILocation(line: 2022, column: 43, scope: !4641)
!4745 = !{!4692, !1149, i64 0}
!4746 = !DILocation(line: 2022, column: 51, scope: !4641)
!4747 = !DILocation(line: 2022, column: 56, scope: !4641)
!4748 = !DILocation(line: 2023, column: 28, scope: !4641)
!4749 = !DILocation(line: 2023, column: 32, scope: !4641)
!4750 = !DILocation(line: 2022, column: 11, scope: !4641)
!4751 = !DILocation(line: 2022, column: 9, scope: !4641)
!4752 = !DILocation(line: 2024, column: 21, scope: !4641)
!4753 = !DILocation(line: 2024, column: 25, scope: !4641)
!4754 = !DILocation(line: 2024, column: 5, scope: !4641)
!4755 = !DILocation(line: 2025, column: 17, scope: !4641)
!4756 = !DILocation(line: 2025, column: 5, scope: !4641)
!4757 = !DILocation(line: 2025, column: 10, scope: !4641)
!4758 = !DILocation(line: 2025, column: 14, scope: !4641)
!4759 = !DILocation(line: 2026, column: 5, scope: !4641)
!4760 = !DILocation(line: 2026, column: 10, scope: !4641)
!4761 = !DILocation(line: 2026, column: 18, scope: !4641)
!4762 = !DILocation(line: 2026, column: 23, scope: !4641)
!4763 = !DILocation(line: 2026, column: 28, scope: !4641)
!4764 = !DILocation(line: 2027, column: 9, scope: !4765)
!4765 = distinct !DILexicalBlock(scope: !4641, file: !3, line: 2027, column: 9)
!4766 = !DILocation(line: 2027, column: 13, scope: !4765)
!4767 = !DILocation(line: 2027, column: 9, scope: !4641)
!4768 = !DILocation(line: 2027, column: 24, scope: !4765)
!4769 = !DILocation(line: 2027, column: 20, scope: !4765)
!4770 = !DILocation(line: 2055, column: 9, scope: !4771)
!4771 = distinct !DILexicalBlock(scope: !4641, file: !3, line: 2055, column: 9)
!4772 = !DILocation(line: 2055, column: 13, scope: !4771)
!4773 = !DILocation(line: 2055, column: 9, scope: !4641)
!4774 = !DILocation(line: 2055, column: 24, scope: !4771)
!4775 = !DILocation(line: 2055, column: 20, scope: !4771)
!4776 = !DILocation(line: 2056, column: 9, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4641, file: !3, line: 2056, column: 9)
!4778 = !DILocation(line: 2056, column: 13, scope: !4777)
!4779 = !DILocation(line: 2056, column: 9, scope: !4641)
!4780 = !DILocation(line: 2056, column: 24, scope: !4777)
!4781 = !DILocation(line: 2056, column: 20, scope: !4777)
!4782 = !DILocation(line: 2057, column: 12, scope: !4641)
!4783 = !DILocation(line: 2057, column: 5, scope: !4641)
!4784 = !DILocation(line: 2058, column: 1, scope: !4641)
!4785 = !DISubprogram(name: "xmlBufferGrow__internal_alias", scope: !4786, file: !4786, line: 1533, type: !4787, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4786 = !DIFile(filename: "./elfgcchack.h", directory: "/local-ssd/libxml2-5hiu2bm3eabodlo3ma2tknpx3yddqhyc-build/aidengro/spack-stage-libxml2-2.9.10-5hiu2bm3eabodlo3ma2tknpx3yddqhyc/spack-src", checksumkind: CSK_MD5, checksum: "8278cf5308b2e49b9b44b5d0704ddb9f")
!4787 = !DISubroutineType(types: !4788)
!4788 = !{!7, !4644, !35}
!4789 = distinct !DISubprogram(name: "xmlEncInputChunk", scope: !3, file: !3, line: 1916, type: !4790, scopeLine: 1917, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4792)
!4790 = !DISubroutineType(types: !4791)
!4791 = !{!7, !918, !928, !930, !931, !930, !7}
!4792 = !{!4793, !4794, !4795, !4796, !4797, !4798, !4799}
!4793 = !DILocalVariable(name: "handler", arg: 1, scope: !4789, file: !3, line: 1916, type: !918)
!4794 = !DILocalVariable(name: "out", arg: 2, scope: !4789, file: !3, line: 1916, type: !928)
!4795 = !DILocalVariable(name: "outlen", arg: 3, scope: !4789, file: !3, line: 1917, type: !930)
!4796 = !DILocalVariable(name: "in", arg: 4, scope: !4789, file: !3, line: 1917, type: !931)
!4797 = !DILocalVariable(name: "inlen", arg: 5, scope: !4789, file: !3, line: 1917, type: !930)
!4798 = !DILocalVariable(name: "flush", arg: 6, scope: !4789, file: !3, line: 1917, type: !7)
!4799 = !DILocalVariable(name: "ret", scope: !4789, file: !3, line: 1918, type: !7)
!4800 = !DILocation(line: 1916, column: 42, scope: !4789)
!4801 = !DILocation(line: 1916, column: 66, scope: !4789)
!4802 = !DILocation(line: 1917, column: 23, scope: !4789)
!4803 = !DILocation(line: 1917, column: 52, scope: !4789)
!4804 = !DILocation(line: 1917, column: 61, scope: !4789)
!4805 = !DILocation(line: 1917, column: 72, scope: !4789)
!4806 = !DILocation(line: 1918, column: 5, scope: !4789)
!4807 = !DILocation(line: 1918, column: 9, scope: !4789)
!4808 = !DILocation(line: 1919, column: 11, scope: !4789)
!4809 = !DILocation(line: 1921, column: 9, scope: !4810)
!4810 = distinct !DILexicalBlock(scope: !4789, file: !3, line: 1921, column: 9)
!4811 = !DILocation(line: 1921, column: 18, scope: !4810)
!4812 = !DILocation(line: 1921, column: 24, scope: !4810)
!4813 = !DILocation(line: 1921, column: 9, scope: !4789)
!4814 = !DILocation(line: 1922, column: 15, scope: !4815)
!4815 = distinct !DILexicalBlock(scope: !4810, file: !3, line: 1921, column: 33)
!4816 = !DILocation(line: 1922, column: 24, scope: !4815)
!4817 = !DILocation(line: 1922, column: 30, scope: !4815)
!4818 = !DILocation(line: 1922, column: 35, scope: !4815)
!4819 = !DILocation(line: 1922, column: 43, scope: !4815)
!4820 = !DILocation(line: 1922, column: 47, scope: !4815)
!4821 = !DILocation(line: 1922, column: 13, scope: !4815)
!4822 = !DILocation(line: 1923, column: 5, scope: !4815)
!4823 = !DILocation(line: 1925, column: 14, scope: !4824)
!4824 = distinct !DILexicalBlock(scope: !4810, file: !3, line: 1925, column: 14)
!4825 = !DILocation(line: 1925, column: 23, scope: !4824)
!4826 = !DILocation(line: 1925, column: 32, scope: !4824)
!4827 = !DILocation(line: 1925, column: 14, scope: !4810)
!4828 = !DILocation(line: 1926, column: 31, scope: !4829)
!4829 = distinct !DILexicalBlock(scope: !4824, file: !3, line: 1925, column: 41)
!4830 = !DILocation(line: 1926, column: 40, scope: !4829)
!4831 = !DILocation(line: 1926, column: 50, scope: !4829)
!4832 = !DILocation(line: 1926, column: 55, scope: !4829)
!4833 = !DILocation(line: 1926, column: 63, scope: !4829)
!4834 = !DILocation(line: 1926, column: 67, scope: !4829)
!4835 = !DILocation(line: 1926, column: 15, scope: !4829)
!4836 = !DILocation(line: 1926, column: 13, scope: !4829)
!4837 = !DILocation(line: 1927, column: 5, scope: !4829)
!4838 = !DILocation(line: 1936, column: 10, scope: !4839)
!4839 = distinct !DILexicalBlock(scope: !4824, file: !3, line: 1935, column: 10)
!4840 = !DILocation(line: 1936, column: 17, scope: !4839)
!4841 = !DILocation(line: 1937, column: 10, scope: !4839)
!4842 = !DILocation(line: 1937, column: 16, scope: !4839)
!4843 = !DILocation(line: 1938, column: 13, scope: !4839)
!4844 = !DILocation(line: 1941, column: 12, scope: !4789)
!4845 = !DILocation(line: 1942, column: 1, scope: !4789)
!4846 = !DILocation(line: 1941, column: 5, scope: !4789)
!4847 = !DISubprogram(name: "xmlBufferShrink__internal_alias", scope: !4786, file: !4786, line: 1573, type: !4787, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4848 = distinct !DISubprogram(name: "xmlCharEncFirstLine__internal_alias", scope: !3, file: !3, line: 2075, type: !4849, scopeLine: 2076, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4851)
!4849 = !DISubroutineType(types: !4850)
!4850 = !{!7, !918, !4644, !4644}
!4851 = !{!4852, !4853, !4854}
!4852 = !DILocalVariable(name: "handler", arg: 1, scope: !4848, file: !3, line: 2075, type: !918)
!4853 = !DILocalVariable(name: "out", arg: 2, scope: !4848, file: !3, line: 2075, type: !4644)
!4854 = !DILocalVariable(name: "in", arg: 3, scope: !4848, file: !3, line: 2076, type: !4644)
!4855 = !DILocation(line: 2075, column: 45, scope: !4848)
!4856 = !DILocation(line: 2075, column: 67, scope: !4848)
!4857 = !DILocation(line: 2076, column: 31, scope: !4848)
!4858 = !DILocation(line: 2077, column: 35, scope: !4848)
!4859 = !DILocation(line: 2077, column: 44, scope: !4848)
!4860 = !DILocation(line: 2077, column: 49, scope: !4848)
!4861 = !DILocation(line: 2077, column: 12, scope: !4848)
!4862 = !DILocation(line: 2077, column: 5, scope: !4848)
!4863 = distinct !DISubprogram(name: "xmlCharEncFirstLineInput", scope: !3, file: !3, line: 2096, type: !4864, scopeLine: 2097, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4894)
!4864 = !DISubroutineType(types: !4865)
!4865 = !{!7, !4866, !7}
!4866 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputBufferPtr", file: !772, line: 29, baseType: !4867)
!4867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4868, size: 64)
!4868 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputBuffer", file: !772, line: 28, baseType: !4869)
!4869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserInputBuffer", file: !4870, line: 125, size: 512, elements: !4871)
!4870 = !DIFile(filename: "./include/libxml/xmlIO.h", directory: "/local-ssd/libxml2-5hiu2bm3eabodlo3ma2tknpx3yddqhyc-build/aidengro/spack-stage-libxml2-2.9.10-5hiu2bm3eabodlo3ma2tknpx3yddqhyc/spack-src", checksumkind: CSK_MD5, checksum: "cb4be47d203f7d54f374b9272db7e3f3")
!4871 = !{!4872, !4873, !4878, !4883, !4884, !4889, !4890, !4891, !4892}
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !4869, file: !4870, line: 126, baseType: !905, size: 64)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "readcallback", scope: !4869, file: !4870, line: 127, baseType: !4874, size: 64, offset: 64)
!4874 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlInputReadCallback", file: !4870, line: 54, baseType: !4875)
!4875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4876, size: 64)
!4876 = !DISubroutineType(types: !4877)
!4877 = !{!7, !905, !906, !7}
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "closecallback", scope: !4869, file: !4870, line: 128, baseType: !4879, size: 64, offset: 128)
!4879 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlInputCloseCallback", file: !4870, line: 63, baseType: !4880)
!4880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4881, size: 64)
!4881 = !DISubroutineType(types: !4882)
!4882 = !{!7, !905}
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !4869, file: !4870, line: 130, baseType: !917, size: 64, offset: 192)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !4869, file: !4870, line: 132, baseType: !4885, size: 64, offset: 256)
!4885 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBufPtr", file: !772, line: 114, baseType: !4886)
!4886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4887, size: 64)
!4887 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuf", file: !772, line: 105, baseType: !4888)
!4888 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuf", file: !772, line: 105, flags: DIFlagFwdDecl)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !4869, file: !4870, line: 133, baseType: !4885, size: 64, offset: 320)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "compressed", scope: !4869, file: !4870, line: 134, baseType: !7, size: 32, offset: 384)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !4869, file: !4870, line: 135, baseType: !7, size: 32, offset: 416)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "rawconsumed", scope: !4869, file: !4870, line: 136, baseType: !4893, size: 64, offset: 448)
!4893 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!4894 = !{!4895, !4896, !4897, !4898, !4901, !4902, !4903, !4904, !4905, !4906, !4912}
!4895 = !DILocalVariable(name: "input", arg: 1, scope: !4863, file: !3, line: 2096, type: !4866)
!4896 = !DILocalVariable(name: "len", arg: 2, scope: !4863, file: !3, line: 2096, type: !7)
!4897 = !DILocalVariable(name: "ret", scope: !4863, file: !3, line: 2098, type: !7)
!4898 = !DILocalVariable(name: "written", scope: !4863, file: !3, line: 2099, type: !4899)
!4899 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !4900, line: 70, baseType: !4893)
!4900 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!4901 = !DILocalVariable(name: "toconv", scope: !4863, file: !3, line: 2100, type: !4899)
!4902 = !DILocalVariable(name: "c_in", scope: !4863, file: !3, line: 2101, type: !7)
!4903 = !DILocalVariable(name: "c_out", scope: !4863, file: !3, line: 2102, type: !7)
!4904 = !DILocalVariable(name: "in", scope: !4863, file: !3, line: 2103, type: !4885)
!4905 = !DILocalVariable(name: "out", scope: !4863, file: !3, line: 2104, type: !4885)
!4906 = !DILocalVariable(name: "buf", scope: !4907, file: !3, line: 2170, type: !4909)
!4907 = distinct !DILexicalBlock(scope: !4908, file: !3, line: 2169, column: 18)
!4908 = distinct !DILexicalBlock(scope: !4863, file: !3, line: 2147, column: 18)
!4909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !907, size: 400, elements: !4910)
!4910 = !{!4911}
!4911 = !DISubrange(count: 50)
!4912 = !DILocalVariable(name: "content", scope: !4907, file: !3, line: 2171, type: !940)
!4913 = !DILocation(line: 2096, column: 50, scope: !4863)
!4914 = !DILocation(line: 2096, column: 61, scope: !4863)
!4915 = !DILocation(line: 2098, column: 5, scope: !4863)
!4916 = !DILocation(line: 2098, column: 9, scope: !4863)
!4917 = !DILocation(line: 2099, column: 5, scope: !4863)
!4918 = !DILocation(line: 2099, column: 12, scope: !4863)
!4919 = !DILocation(line: 2100, column: 5, scope: !4863)
!4920 = !DILocation(line: 2100, column: 12, scope: !4863)
!4921 = !DILocation(line: 2101, column: 5, scope: !4863)
!4922 = !DILocation(line: 2101, column: 9, scope: !4863)
!4923 = !DILocation(line: 2102, column: 5, scope: !4863)
!4924 = !DILocation(line: 2102, column: 9, scope: !4863)
!4925 = !DILocation(line: 2103, column: 5, scope: !4863)
!4926 = !DILocation(line: 2103, column: 15, scope: !4863)
!4927 = !DILocation(line: 2104, column: 5, scope: !4863)
!4928 = !DILocation(line: 2104, column: 15, scope: !4863)
!4929 = !DILocation(line: 2106, column: 10, scope: !4930)
!4930 = distinct !DILexicalBlock(scope: !4863, file: !3, line: 2106, column: 9)
!4931 = !DILocation(line: 2106, column: 16, scope: !4930)
!4932 = !DILocation(line: 2106, column: 25, scope: !4930)
!4933 = !DILocation(line: 2106, column: 29, scope: !4930)
!4934 = !DILocation(line: 2106, column: 36, scope: !4930)
!4935 = !{!4936, !1149, i64 24}
!4936 = !{!"_xmlParserInputBuffer", !1149, i64 0, !1149, i64 8, !1149, i64 16, !1149, i64 24, !1149, i64 32, !1149, i64 40, !1186, i64 48, !1186, i64 52, !4937, i64 56}
!4937 = !{!"long", !1150, i64 0}
!4938 = !DILocation(line: 2106, column: 44, scope: !4930)
!4939 = !DILocation(line: 2106, column: 53, scope: !4930)
!4940 = !DILocation(line: 2107, column: 10, scope: !4930)
!4941 = !DILocation(line: 2107, column: 17, scope: !4930)
!4942 = !{!4936, !1149, i64 32}
!4943 = !DILocation(line: 2107, column: 24, scope: !4930)
!4944 = !DILocation(line: 2107, column: 33, scope: !4930)
!4945 = !DILocation(line: 2107, column: 37, scope: !4930)
!4946 = !DILocation(line: 2107, column: 44, scope: !4930)
!4947 = !{!4936, !1149, i64 40}
!4948 = !DILocation(line: 2107, column: 48, scope: !4930)
!4949 = !DILocation(line: 2106, column: 9, scope: !4863)
!4950 = !DILocation(line: 2108, column: 9, scope: !4930)
!4951 = !DILocation(line: 2109, column: 11, scope: !4863)
!4952 = !DILocation(line: 2109, column: 18, scope: !4863)
!4953 = !DILocation(line: 2109, column: 9, scope: !4863)
!4954 = !DILocation(line: 2110, column: 10, scope: !4863)
!4955 = !DILocation(line: 2110, column: 17, scope: !4863)
!4956 = !DILocation(line: 2110, column: 8, scope: !4863)
!4957 = !DILocation(line: 2112, column: 24, scope: !4863)
!4958 = !DILocation(line: 2112, column: 14, scope: !4863)
!4959 = !DILocation(line: 2112, column: 12, scope: !4863)
!4960 = !{!4937, !4937, i64 0}
!4961 = !DILocation(line: 2113, column: 9, scope: !4962)
!4962 = distinct !DILexicalBlock(scope: !4863, file: !3, line: 2113, column: 9)
!4963 = !DILocation(line: 2113, column: 16, scope: !4962)
!4964 = !DILocation(line: 2113, column: 9, scope: !4863)
!4965 = !DILocation(line: 2114, column: 9, scope: !4962)
!4966 = !DILocation(line: 2115, column: 27, scope: !4863)
!4967 = !DILocation(line: 2115, column: 15, scope: !4863)
!4968 = !DILocation(line: 2115, column: 32, scope: !4863)
!4969 = !DILocation(line: 2115, column: 13, scope: !4863)
!4970 = !DILocation(line: 2124, column: 9, scope: !4971)
!4971 = distinct !DILexicalBlock(scope: !4863, file: !3, line: 2124, column: 9)
!4972 = !DILocation(line: 2124, column: 13, scope: !4971)
!4973 = !DILocation(line: 2124, column: 9, scope: !4863)
!4974 = !DILocation(line: 2125, column: 13, scope: !4975)
!4975 = distinct !DILexicalBlock(scope: !4976, file: !3, line: 2125, column: 13)
!4976 = distinct !DILexicalBlock(scope: !4971, file: !3, line: 2124, column: 19)
!4977 = !DILocation(line: 2125, column: 37, scope: !4975)
!4978 = !DILocation(line: 2125, column: 22, scope: !4975)
!4979 = !DILocation(line: 2125, column: 20, scope: !4975)
!4980 = !DILocation(line: 2125, column: 13, scope: !4976)
!4981 = !DILocation(line: 2126, column: 22, scope: !4975)
!4982 = !DILocation(line: 2126, column: 20, scope: !4975)
!4983 = !DILocation(line: 2126, column: 13, scope: !4975)
!4984 = !DILocation(line: 2127, column: 5, scope: !4976)
!4985 = !DILocation(line: 2128, column: 13, scope: !4986)
!4986 = distinct !DILexicalBlock(scope: !4987, file: !3, line: 2128, column: 13)
!4987 = distinct !DILexicalBlock(scope: !4971, file: !3, line: 2127, column: 12)
!4988 = !DILocation(line: 2128, column: 20, scope: !4986)
!4989 = !DILocation(line: 2128, column: 13, scope: !4987)
!4990 = !DILocation(line: 2129, column: 20, scope: !4986)
!4991 = !DILocation(line: 2129, column: 13, scope: !4986)
!4992 = !DILocation(line: 2131, column: 9, scope: !4993)
!4993 = distinct !DILexicalBlock(scope: !4863, file: !3, line: 2131, column: 9)
!4994 = !DILocation(line: 2131, column: 16, scope: !4993)
!4995 = !DILocation(line: 2131, column: 23, scope: !4993)
!4996 = !DILocation(line: 2131, column: 20, scope: !4993)
!4997 = !DILocation(line: 2131, column: 9, scope: !4863)
!4998 = !DILocation(line: 2132, column: 20, scope: !4999)
!4999 = distinct !DILexicalBlock(scope: !4993, file: !3, line: 2131, column: 32)
!5000 = !DILocation(line: 2132, column: 25, scope: !4999)
!5001 = !DILocation(line: 2132, column: 32, scope: !4999)
!5002 = !DILocation(line: 2132, column: 9, scope: !4999)
!5003 = !DILocation(line: 2133, column: 31, scope: !4999)
!5004 = !DILocation(line: 2133, column: 19, scope: !4999)
!5005 = !DILocation(line: 2133, column: 36, scope: !4999)
!5006 = !DILocation(line: 2133, column: 17, scope: !4999)
!5007 = !DILocation(line: 2134, column: 5, scope: !4999)
!5008 = !DILocation(line: 2135, column: 9, scope: !5009)
!5009 = distinct !DILexicalBlock(scope: !4863, file: !3, line: 2135, column: 9)
!5010 = !DILocation(line: 2135, column: 17, scope: !5009)
!5011 = !DILocation(line: 2135, column: 9, scope: !4863)
!5012 = !DILocation(line: 2136, column: 17, scope: !5009)
!5013 = !DILocation(line: 2136, column: 9, scope: !5009)
!5014 = !DILocation(line: 2138, column: 12, scope: !4863)
!5015 = !DILocation(line: 2138, column: 10, scope: !4863)
!5016 = !DILocation(line: 2139, column: 13, scope: !4863)
!5017 = !DILocation(line: 2139, column: 11, scope: !4863)
!5018 = !DILocation(line: 2140, column: 28, scope: !4863)
!5019 = !DILocation(line: 2140, column: 35, scope: !4863)
!5020 = !DILocation(line: 2140, column: 54, scope: !4863)
!5021 = !DILocation(line: 2140, column: 44, scope: !4863)
!5022 = !DILocation(line: 2141, column: 42, scope: !4863)
!5023 = !DILocation(line: 2141, column: 28, scope: !4863)
!5024 = !DILocation(line: 2140, column: 11, scope: !4863)
!5025 = !DILocation(line: 2140, column: 9, scope: !4863)
!5026 = !DILocation(line: 2142, column: 18, scope: !4863)
!5027 = !DILocation(line: 2142, column: 22, scope: !4863)
!5028 = !DILocation(line: 2142, column: 5, scope: !4863)
!5029 = !DILocation(line: 2143, column: 18, scope: !4863)
!5030 = !DILocation(line: 2143, column: 23, scope: !4863)
!5031 = !DILocation(line: 2143, column: 5, scope: !4863)
!5032 = !DILocation(line: 2144, column: 9, scope: !5033)
!5033 = distinct !DILexicalBlock(scope: !4863, file: !3, line: 2144, column: 9)
!5034 = !DILocation(line: 2144, column: 13, scope: !5033)
!5035 = !DILocation(line: 2144, column: 9, scope: !4863)
!5036 = !DILocation(line: 2145, column: 13, scope: !5033)
!5037 = !DILocation(line: 2145, column: 9, scope: !5033)
!5038 = !DILocation(line: 2147, column: 13, scope: !4863)
!5039 = !DILocation(line: 2147, column: 5, scope: !4863)
!5040 = !DILocation(line: 2170, column: 13, scope: !4907)
!5041 = !DILocation(line: 2170, column: 18, scope: !4907)
!5042 = !DILocation(line: 2171, column: 13, scope: !4907)
!5043 = !DILocation(line: 2171, column: 28, scope: !4907)
!5044 = !DILocation(line: 2171, column: 52, scope: !4907)
!5045 = !DILocation(line: 2171, column: 38, scope: !4907)
!5046 = !DILocation(line: 2173, column: 16, scope: !4907)
!5047 = !DILocation(line: 2174, column: 8, scope: !4907)
!5048 = !DILocation(line: 2174, column: 20, scope: !4907)
!5049 = !DILocation(line: 2175, column: 8, scope: !4907)
!5050 = !DILocation(line: 2175, column: 20, scope: !4907)
!5051 = !DILocation(line: 2173, column: 6, scope: !4907)
!5052 = !DILocation(line: 2176, column: 6, scope: !4907)
!5053 = !DILocation(line: 2176, column: 14, scope: !4907)
!5054 = !DILocation(line: 2179, column: 14, scope: !4907)
!5055 = !DILocation(line: 2177, column: 6, scope: !4907)
!5056 = !DILocation(line: 2180, column: 9, scope: !4908)
!5057 = !DILocation(line: 2181, column: 5, scope: !4908)
!5058 = !DILocation(line: 2185, column: 9, scope: !5059)
!5059 = distinct !DILexicalBlock(scope: !4863, file: !3, line: 2185, column: 9)
!5060 = !DILocation(line: 2185, column: 13, scope: !5059)
!5061 = !DILocation(line: 2185, column: 9, scope: !4863)
!5062 = !DILocation(line: 2185, column: 24, scope: !5059)
!5063 = !DILocation(line: 2185, column: 20, scope: !5059)
!5064 = !DILocation(line: 2186, column: 9, scope: !5065)
!5065 = distinct !DILexicalBlock(scope: !4863, file: !3, line: 2186, column: 9)
!5066 = !DILocation(line: 2186, column: 13, scope: !5065)
!5067 = !DILocation(line: 2186, column: 9, scope: !4863)
!5068 = !DILocation(line: 2186, column: 24, scope: !5065)
!5069 = !DILocation(line: 2186, column: 20, scope: !5065)
!5070 = !DILocation(line: 2187, column: 12, scope: !4863)
!5071 = !DILocation(line: 2187, column: 5, scope: !4863)
!5072 = !DILocation(line: 2188, column: 1, scope: !4863)
!5073 = !DISubprogram(name: "xmlBufUse__internal_alias", scope: !4786, file: !4786, line: 1403, type: !5074, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5074 = !DISubroutineType(types: !5075)
!5075 = !{!4899, !5076}
!5076 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4885)
!5077 = !DISubprogram(name: "xmlBufAvail", scope: !5078, file: !5078, line: 46, type: !5074, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5078 = !DIFile(filename: "./buf.h", directory: "/local-ssd/libxml2-5hiu2bm3eabodlo3ma2tknpx3yddqhyc-build/aidengro/spack-stage-libxml2-2.9.10-5hiu2bm3eabodlo3ma2tknpx3yddqhyc/spack-src", checksumkind: CSK_MD5, checksum: "760feeae2c042ff45bc33ab6ce484557")
!5079 = !DISubprogram(name: "xmlBufGrow", scope: !5078, file: !5078, line: 34, type: !5080, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5080 = !DISubroutineType(types: !5081)
!5081 = !{!7, !4885, !7}
!5082 = !DISubprogram(name: "xmlBufEnd__internal_alias", scope: !4786, file: !4786, line: 1361, type: !5083, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5083 = !DISubroutineType(types: !5084)
!5084 = !{!4650, !4885}
!5085 = !DISubprogram(name: "xmlBufContent__internal_alias", scope: !4786, file: !4786, line: 1351, type: !5086, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5086 = !DISubroutineType(types: !5087)
!5087 = !{!4650, !5088}
!5088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5089, size: 64)
!5089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4887)
!5090 = !DISubprogram(name: "xmlBufShrink__internal_alias", scope: !4786, file: !4786, line: 1393, type: !5091, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5091 = !DISubroutineType(types: !5092)
!5092 = !{!4899, !4885, !4899}
!5093 = !DISubprogram(name: "xmlBufAddLen", scope: !5078, file: !5078, line: 50, type: !5094, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5094 = !DISubroutineType(types: !5095)
!5095 = !{!7, !4885, !4899}
!5096 = !DISubprogram(name: "snprintf", scope: !5097, file: !5097, line: 378, type: !5098, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5097 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!5098 = !DISubroutineType(types: !5099)
!5099 = !{!7, !5100, !4899, !5101, null}
!5100 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !906)
!5101 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !914)
!5102 = distinct !DISubprogram(name: "xmlCharEncInput", scope: !3, file: !3, line: 2203, type: !4864, scopeLine: 2204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5103)
!5103 = !{!5104, !5105, !5106, !5107, !5108, !5109, !5110, !5111, !5112, !5113, !5116}
!5104 = !DILocalVariable(name: "input", arg: 1, scope: !5102, file: !3, line: 2203, type: !4866)
!5105 = !DILocalVariable(name: "flush", arg: 2, scope: !5102, file: !3, line: 2203, type: !7)
!5106 = !DILocalVariable(name: "ret", scope: !5102, file: !3, line: 2205, type: !7)
!5107 = !DILocalVariable(name: "written", scope: !5102, file: !3, line: 2206, type: !4899)
!5108 = !DILocalVariable(name: "toconv", scope: !5102, file: !3, line: 2207, type: !4899)
!5109 = !DILocalVariable(name: "c_in", scope: !5102, file: !3, line: 2208, type: !7)
!5110 = !DILocalVariable(name: "c_out", scope: !5102, file: !3, line: 2209, type: !7)
!5111 = !DILocalVariable(name: "in", scope: !5102, file: !3, line: 2210, type: !4885)
!5112 = !DILocalVariable(name: "out", scope: !5102, file: !3, line: 2211, type: !4885)
!5113 = !DILocalVariable(name: "buf", scope: !5114, file: !3, line: 2268, type: !4909)
!5114 = distinct !DILexicalBlock(scope: !5115, file: !3, line: 2267, column: 18)
!5115 = distinct !DILexicalBlock(scope: !5102, file: !3, line: 2245, column: 18)
!5116 = !DILocalVariable(name: "content", scope: !5114, file: !3, line: 2269, type: !940)
!5117 = !DILocation(line: 2203, column: 41, scope: !5102)
!5118 = !DILocation(line: 2203, column: 52, scope: !5102)
!5119 = !DILocation(line: 2205, column: 5, scope: !5102)
!5120 = !DILocation(line: 2205, column: 9, scope: !5102)
!5121 = !DILocation(line: 2206, column: 5, scope: !5102)
!5122 = !DILocation(line: 2206, column: 12, scope: !5102)
!5123 = !DILocation(line: 2207, column: 5, scope: !5102)
!5124 = !DILocation(line: 2207, column: 12, scope: !5102)
!5125 = !DILocation(line: 2208, column: 5, scope: !5102)
!5126 = !DILocation(line: 2208, column: 9, scope: !5102)
!5127 = !DILocation(line: 2209, column: 5, scope: !5102)
!5128 = !DILocation(line: 2209, column: 9, scope: !5102)
!5129 = !DILocation(line: 2210, column: 5, scope: !5102)
!5130 = !DILocation(line: 2210, column: 15, scope: !5102)
!5131 = !DILocation(line: 2211, column: 5, scope: !5102)
!5132 = !DILocation(line: 2211, column: 15, scope: !5102)
!5133 = !DILocation(line: 2213, column: 10, scope: !5134)
!5134 = distinct !DILexicalBlock(scope: !5102, file: !3, line: 2213, column: 9)
!5135 = !DILocation(line: 2213, column: 16, scope: !5134)
!5136 = !DILocation(line: 2213, column: 25, scope: !5134)
!5137 = !DILocation(line: 2213, column: 29, scope: !5134)
!5138 = !DILocation(line: 2213, column: 36, scope: !5134)
!5139 = !DILocation(line: 2213, column: 44, scope: !5134)
!5140 = !DILocation(line: 2213, column: 53, scope: !5134)
!5141 = !DILocation(line: 2214, column: 10, scope: !5134)
!5142 = !DILocation(line: 2214, column: 17, scope: !5134)
!5143 = !DILocation(line: 2214, column: 24, scope: !5134)
!5144 = !DILocation(line: 2214, column: 33, scope: !5134)
!5145 = !DILocation(line: 2214, column: 37, scope: !5134)
!5146 = !DILocation(line: 2214, column: 44, scope: !5134)
!5147 = !DILocation(line: 2214, column: 48, scope: !5134)
!5148 = !DILocation(line: 2213, column: 9, scope: !5102)
!5149 = !DILocation(line: 2215, column: 9, scope: !5134)
!5150 = !DILocation(line: 2216, column: 11, scope: !5102)
!5151 = !DILocation(line: 2216, column: 18, scope: !5102)
!5152 = !DILocation(line: 2216, column: 9, scope: !5102)
!5153 = !DILocation(line: 2217, column: 10, scope: !5102)
!5154 = !DILocation(line: 2217, column: 17, scope: !5102)
!5155 = !DILocation(line: 2217, column: 8, scope: !5102)
!5156 = !DILocation(line: 2219, column: 24, scope: !5102)
!5157 = !DILocation(line: 2219, column: 14, scope: !5102)
!5158 = !DILocation(line: 2219, column: 12, scope: !5102)
!5159 = !DILocation(line: 2220, column: 9, scope: !5160)
!5160 = distinct !DILexicalBlock(scope: !5102, file: !3, line: 2220, column: 9)
!5161 = !DILocation(line: 2220, column: 16, scope: !5160)
!5162 = !DILocation(line: 2220, column: 9, scope: !5102)
!5163 = !DILocation(line: 2221, column: 9, scope: !5160)
!5164 = !DILocation(line: 2222, column: 10, scope: !5165)
!5165 = distinct !DILexicalBlock(scope: !5102, file: !3, line: 2222, column: 9)
!5166 = !DILocation(line: 2222, column: 17, scope: !5165)
!5167 = !DILocation(line: 2222, column: 30, scope: !5165)
!5168 = !DILocation(line: 2222, column: 34, scope: !5165)
!5169 = !DILocation(line: 2222, column: 40, scope: !5165)
!5170 = !DILocation(line: 2222, column: 9, scope: !5102)
!5171 = !DILocation(line: 2223, column: 16, scope: !5165)
!5172 = !DILocation(line: 2223, column: 9, scope: !5165)
!5173 = !DILocation(line: 2224, column: 27, scope: !5102)
!5174 = !DILocation(line: 2224, column: 15, scope: !5102)
!5175 = !DILocation(line: 2224, column: 13, scope: !5102)
!5176 = !DILocation(line: 2225, column: 9, scope: !5177)
!5177 = distinct !DILexicalBlock(scope: !5102, file: !3, line: 2225, column: 9)
!5178 = !DILocation(line: 2225, column: 17, scope: !5177)
!5179 = !DILocation(line: 2225, column: 9, scope: !5102)
!5180 = !DILocation(line: 2226, column: 16, scope: !5177)
!5181 = !DILocation(line: 2226, column: 9, scope: !5177)
!5182 = !DILocation(line: 2227, column: 9, scope: !5183)
!5183 = distinct !DILexicalBlock(scope: !5102, file: !3, line: 2227, column: 9)
!5184 = !DILocation(line: 2227, column: 16, scope: !5183)
!5185 = !DILocation(line: 2227, column: 23, scope: !5183)
!5186 = !DILocation(line: 2227, column: 20, scope: !5183)
!5187 = !DILocation(line: 2227, column: 9, scope: !5102)
!5188 = !DILocation(line: 2228, column: 20, scope: !5189)
!5189 = distinct !DILexicalBlock(scope: !5183, file: !3, line: 2227, column: 32)
!5190 = !DILocation(line: 2228, column: 25, scope: !5189)
!5191 = !DILocation(line: 2228, column: 32, scope: !5189)
!5192 = !DILocation(line: 2228, column: 9, scope: !5189)
!5193 = !DILocation(line: 2229, column: 31, scope: !5189)
!5194 = !DILocation(line: 2229, column: 19, scope: !5189)
!5195 = !DILocation(line: 2229, column: 17, scope: !5189)
!5196 = !DILocation(line: 2230, column: 13, scope: !5197)
!5197 = distinct !DILexicalBlock(scope: !5189, file: !3, line: 2230, column: 13)
!5198 = !DILocation(line: 2230, column: 21, scope: !5197)
!5199 = !DILocation(line: 2230, column: 13, scope: !5189)
!5200 = !DILocation(line: 2231, column: 20, scope: !5197)
!5201 = !DILocation(line: 2231, column: 13, scope: !5197)
!5202 = !DILocation(line: 2232, column: 5, scope: !5189)
!5203 = !DILocation(line: 2233, column: 10, scope: !5204)
!5204 = distinct !DILexicalBlock(scope: !5102, file: !3, line: 2233, column: 9)
!5205 = !DILocation(line: 2233, column: 18, scope: !5204)
!5206 = !DILocation(line: 2233, column: 32, scope: !5204)
!5207 = !DILocation(line: 2233, column: 36, scope: !5204)
!5208 = !DILocation(line: 2233, column: 42, scope: !5204)
!5209 = !DILocation(line: 2233, column: 9, scope: !5102)
!5210 = !DILocation(line: 2234, column: 17, scope: !5204)
!5211 = !DILocation(line: 2234, column: 9, scope: !5204)
!5212 = !DILocation(line: 2236, column: 12, scope: !5102)
!5213 = !DILocation(line: 2236, column: 10, scope: !5102)
!5214 = !DILocation(line: 2237, column: 13, scope: !5102)
!5215 = !DILocation(line: 2237, column: 11, scope: !5102)
!5216 = !DILocation(line: 2238, column: 28, scope: !5102)
!5217 = !DILocation(line: 2238, column: 35, scope: !5102)
!5218 = !DILocation(line: 2238, column: 54, scope: !5102)
!5219 = !DILocation(line: 2238, column: 44, scope: !5102)
!5220 = !DILocation(line: 2239, column: 42, scope: !5102)
!5221 = !DILocation(line: 2239, column: 28, scope: !5102)
!5222 = !DILocation(line: 2239, column: 54, scope: !5102)
!5223 = !DILocation(line: 2238, column: 11, scope: !5102)
!5224 = !DILocation(line: 2238, column: 9, scope: !5102)
!5225 = !DILocation(line: 2240, column: 18, scope: !5102)
!5226 = !DILocation(line: 2240, column: 22, scope: !5102)
!5227 = !DILocation(line: 2240, column: 5, scope: !5102)
!5228 = !DILocation(line: 2241, column: 18, scope: !5102)
!5229 = !DILocation(line: 2241, column: 23, scope: !5102)
!5230 = !DILocation(line: 2241, column: 5, scope: !5102)
!5231 = !DILocation(line: 2242, column: 9, scope: !5232)
!5232 = distinct !DILexicalBlock(scope: !5102, file: !3, line: 2242, column: 9)
!5233 = !DILocation(line: 2242, column: 13, scope: !5232)
!5234 = !DILocation(line: 2242, column: 9, scope: !5102)
!5235 = !DILocation(line: 2243, column: 13, scope: !5232)
!5236 = !DILocation(line: 2243, column: 9, scope: !5232)
!5237 = !DILocation(line: 2245, column: 13, scope: !5102)
!5238 = !DILocation(line: 2245, column: 5, scope: !5102)
!5239 = !DILocation(line: 2268, column: 13, scope: !5114)
!5240 = !DILocation(line: 2268, column: 18, scope: !5114)
!5241 = !DILocation(line: 2269, column: 13, scope: !5114)
!5242 = !DILocation(line: 2269, column: 28, scope: !5114)
!5243 = !DILocation(line: 2269, column: 52, scope: !5114)
!5244 = !DILocation(line: 2269, column: 38, scope: !5114)
!5245 = !DILocation(line: 2271, column: 16, scope: !5114)
!5246 = !DILocation(line: 2272, column: 8, scope: !5114)
!5247 = !DILocation(line: 2272, column: 20, scope: !5114)
!5248 = !DILocation(line: 2273, column: 8, scope: !5114)
!5249 = !DILocation(line: 2273, column: 20, scope: !5114)
!5250 = !DILocation(line: 2271, column: 6, scope: !5114)
!5251 = !DILocation(line: 2274, column: 6, scope: !5114)
!5252 = !DILocation(line: 2274, column: 14, scope: !5114)
!5253 = !DILocation(line: 2277, column: 14, scope: !5114)
!5254 = !DILocation(line: 2275, column: 6, scope: !5114)
!5255 = !DILocation(line: 2278, column: 9, scope: !5115)
!5256 = !DILocation(line: 2279, column: 5, scope: !5115)
!5257 = !DILocation(line: 2283, column: 9, scope: !5258)
!5258 = distinct !DILexicalBlock(scope: !5102, file: !3, line: 2283, column: 9)
!5259 = !DILocation(line: 2283, column: 13, scope: !5258)
!5260 = !DILocation(line: 2283, column: 9, scope: !5102)
!5261 = !DILocation(line: 2284, column: 13, scope: !5258)
!5262 = !DILocation(line: 2284, column: 9, scope: !5258)
!5263 = !DILocation(line: 2285, column: 13, scope: !5102)
!5264 = !DILocation(line: 2285, column: 20, scope: !5102)
!5265 = !DILocation(line: 2285, column: 28, scope: !5102)
!5266 = !DILocation(line: 2285, column: 5, scope: !5102)
!5267 = !DILocation(line: 2286, column: 1, scope: !5102)
!5268 = distinct !DISubprogram(name: "xmlCharEncInFunc__internal_alias", scope: !3, file: !3, line: 2302, type: !4849, scopeLine: 2304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5269)
!5269 = !{!5270, !5271, !5272, !5273, !5274, !5275, !5276}
!5270 = !DILocalVariable(name: "handler", arg: 1, scope: !5268, file: !3, line: 2302, type: !918)
!5271 = !DILocalVariable(name: "out", arg: 2, scope: !5268, file: !3, line: 2302, type: !4644)
!5272 = !DILocalVariable(name: "in", arg: 3, scope: !5268, file: !3, line: 2303, type: !4644)
!5273 = !DILocalVariable(name: "ret", scope: !5268, file: !3, line: 2305, type: !7)
!5274 = !DILocalVariable(name: "written", scope: !5268, file: !3, line: 2306, type: !7)
!5275 = !DILocalVariable(name: "toconv", scope: !5268, file: !3, line: 2307, type: !7)
!5276 = !DILocalVariable(name: "buf", scope: !5277, file: !3, line: 2355, type: !4909)
!5277 = distinct !DILexicalBlock(scope: !5278, file: !3, line: 2354, column: 18)
!5278 = distinct !DILexicalBlock(scope: !5268, file: !3, line: 2332, column: 18)
!5279 = !DILocation(line: 2302, column: 43, scope: !5268)
!5280 = !DILocation(line: 2302, column: 65, scope: !5268)
!5281 = !DILocation(line: 2303, column: 31, scope: !5268)
!5282 = !DILocation(line: 2305, column: 5, scope: !5268)
!5283 = !DILocation(line: 2305, column: 9, scope: !5268)
!5284 = !DILocation(line: 2306, column: 5, scope: !5268)
!5285 = !DILocation(line: 2306, column: 9, scope: !5268)
!5286 = !DILocation(line: 2307, column: 5, scope: !5268)
!5287 = !DILocation(line: 2307, column: 9, scope: !5268)
!5288 = !DILocation(line: 2309, column: 9, scope: !5289)
!5289 = distinct !DILexicalBlock(scope: !5268, file: !3, line: 2309, column: 9)
!5290 = !DILocation(line: 2309, column: 17, scope: !5289)
!5291 = !DILocation(line: 2309, column: 9, scope: !5268)
!5292 = !DILocation(line: 2310, column: 9, scope: !5289)
!5293 = !DILocation(line: 2311, column: 9, scope: !5294)
!5294 = distinct !DILexicalBlock(scope: !5268, file: !3, line: 2311, column: 9)
!5295 = !DILocation(line: 2311, column: 13, scope: !5294)
!5296 = !DILocation(line: 2311, column: 9, scope: !5268)
!5297 = !DILocation(line: 2312, column: 9, scope: !5294)
!5298 = !DILocation(line: 2313, column: 9, scope: !5299)
!5299 = distinct !DILexicalBlock(scope: !5268, file: !3, line: 2313, column: 9)
!5300 = !DILocation(line: 2313, column: 12, scope: !5299)
!5301 = !DILocation(line: 2313, column: 9, scope: !5268)
!5302 = !DILocation(line: 2314, column: 9, scope: !5299)
!5303 = !DILocation(line: 2316, column: 14, scope: !5268)
!5304 = !DILocation(line: 2316, column: 18, scope: !5268)
!5305 = !DILocation(line: 2316, column: 12, scope: !5268)
!5306 = !DILocation(line: 2317, column: 9, scope: !5307)
!5307 = distinct !DILexicalBlock(scope: !5268, file: !3, line: 2317, column: 9)
!5308 = !DILocation(line: 2317, column: 16, scope: !5307)
!5309 = !DILocation(line: 2317, column: 9, scope: !5268)
!5310 = !DILocation(line: 2318, column: 9, scope: !5307)
!5311 = !DILocation(line: 2319, column: 15, scope: !5268)
!5312 = !DILocation(line: 2319, column: 20, scope: !5268)
!5313 = !DILocation(line: 2319, column: 27, scope: !5268)
!5314 = !DILocation(line: 2319, column: 32, scope: !5268)
!5315 = !DILocation(line: 2319, column: 25, scope: !5268)
!5316 = !DILocation(line: 2319, column: 36, scope: !5268)
!5317 = !DILocation(line: 2319, column: 13, scope: !5268)
!5318 = !DILocation(line: 2320, column: 9, scope: !5319)
!5319 = distinct !DILexicalBlock(scope: !5268, file: !3, line: 2320, column: 9)
!5320 = !DILocation(line: 2320, column: 16, scope: !5319)
!5321 = !DILocation(line: 2320, column: 23, scope: !5319)
!5322 = !DILocation(line: 2320, column: 20, scope: !5319)
!5323 = !DILocation(line: 2320, column: 9, scope: !5268)
!5324 = !DILocation(line: 2321, column: 23, scope: !5325)
!5325 = distinct !DILexicalBlock(scope: !5319, file: !3, line: 2320, column: 32)
!5326 = !DILocation(line: 2321, column: 28, scope: !5325)
!5327 = !DILocation(line: 2321, column: 33, scope: !5325)
!5328 = !DILocation(line: 2321, column: 40, scope: !5325)
!5329 = !DILocation(line: 2321, column: 47, scope: !5325)
!5330 = !DILocation(line: 2321, column: 38, scope: !5325)
!5331 = !DILocation(line: 2321, column: 9, scope: !5325)
!5332 = !DILocation(line: 2322, column: 19, scope: !5325)
!5333 = !DILocation(line: 2322, column: 24, scope: !5325)
!5334 = !DILocation(line: 2322, column: 31, scope: !5325)
!5335 = !DILocation(line: 2322, column: 36, scope: !5325)
!5336 = !DILocation(line: 2322, column: 29, scope: !5325)
!5337 = !DILocation(line: 2322, column: 40, scope: !5325)
!5338 = !DILocation(line: 2322, column: 17, scope: !5325)
!5339 = !DILocation(line: 2323, column: 5, scope: !5325)
!5340 = !DILocation(line: 2324, column: 28, scope: !5268)
!5341 = !DILocation(line: 2324, column: 38, scope: !5268)
!5342 = !DILocation(line: 2324, column: 43, scope: !5268)
!5343 = !DILocation(line: 2324, column: 51, scope: !5268)
!5344 = !DILocation(line: 2324, column: 56, scope: !5268)
!5345 = !DILocation(line: 2325, column: 28, scope: !5268)
!5346 = !DILocation(line: 2325, column: 32, scope: !5268)
!5347 = !DILocation(line: 2324, column: 11, scope: !5268)
!5348 = !DILocation(line: 2324, column: 9, scope: !5268)
!5349 = !DILocation(line: 2326, column: 21, scope: !5268)
!5350 = !DILocation(line: 2326, column: 25, scope: !5268)
!5351 = !DILocation(line: 2326, column: 5, scope: !5268)
!5352 = !DILocation(line: 2327, column: 17, scope: !5268)
!5353 = !DILocation(line: 2327, column: 5, scope: !5268)
!5354 = !DILocation(line: 2327, column: 10, scope: !5268)
!5355 = !DILocation(line: 2327, column: 14, scope: !5268)
!5356 = !DILocation(line: 2328, column: 5, scope: !5268)
!5357 = !DILocation(line: 2328, column: 10, scope: !5268)
!5358 = !DILocation(line: 2328, column: 18, scope: !5268)
!5359 = !DILocation(line: 2328, column: 23, scope: !5268)
!5360 = !DILocation(line: 2328, column: 28, scope: !5268)
!5361 = !DILocation(line: 2329, column: 9, scope: !5362)
!5362 = distinct !DILexicalBlock(scope: !5268, file: !3, line: 2329, column: 9)
!5363 = !DILocation(line: 2329, column: 13, scope: !5362)
!5364 = !DILocation(line: 2329, column: 9, scope: !5268)
!5365 = !DILocation(line: 2330, column: 13, scope: !5362)
!5366 = !DILocation(line: 2330, column: 9, scope: !5362)
!5367 = !DILocation(line: 2332, column: 13, scope: !5268)
!5368 = !DILocation(line: 2332, column: 5, scope: !5268)
!5369 = !DILocation(line: 2355, column: 13, scope: !5277)
!5370 = !DILocation(line: 2355, column: 18, scope: !5277)
!5371 = !DILocation(line: 2357, column: 16, scope: !5277)
!5372 = !DILocation(line: 2358, column: 8, scope: !5277)
!5373 = !DILocation(line: 2358, column: 12, scope: !5277)
!5374 = !DILocation(line: 2358, column: 24, scope: !5277)
!5375 = !DILocation(line: 2358, column: 28, scope: !5277)
!5376 = !DILocation(line: 2359, column: 8, scope: !5277)
!5377 = !DILocation(line: 2359, column: 12, scope: !5277)
!5378 = !DILocation(line: 2359, column: 24, scope: !5277)
!5379 = !DILocation(line: 2359, column: 28, scope: !5277)
!5380 = !DILocation(line: 2357, column: 6, scope: !5277)
!5381 = !DILocation(line: 2360, column: 6, scope: !5277)
!5382 = !DILocation(line: 2360, column: 14, scope: !5277)
!5383 = !DILocation(line: 2363, column: 14, scope: !5277)
!5384 = !DILocation(line: 2361, column: 6, scope: !5277)
!5385 = !DILocation(line: 2364, column: 9, scope: !5278)
!5386 = !DILocation(line: 2365, column: 5, scope: !5278)
!5387 = !DILocation(line: 2369, column: 9, scope: !5388)
!5388 = distinct !DILexicalBlock(scope: !5268, file: !3, line: 2369, column: 9)
!5389 = !DILocation(line: 2369, column: 13, scope: !5388)
!5390 = !DILocation(line: 2369, column: 9, scope: !5268)
!5391 = !DILocation(line: 2370, column: 13, scope: !5388)
!5392 = !DILocation(line: 2370, column: 9, scope: !5388)
!5393 = !DILocation(line: 2371, column: 13, scope: !5268)
!5394 = !DILocation(line: 2371, column: 22, scope: !5268)
!5395 = !DILocation(line: 2371, column: 32, scope: !5268)
!5396 = !DILocation(line: 2371, column: 5, scope: !5268)
!5397 = !DILocation(line: 2372, column: 1, scope: !5268)
!5398 = distinct !DISubprogram(name: "xmlCharEncOutput", scope: !3, file: !3, line: 2393, type: !5399, scopeLine: 2394, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5419)
!5399 = !DISubroutineType(types: !5400)
!5400 = !{!7, !5401, !7}
!5401 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlOutputBufferPtr", file: !772, line: 32, baseType: !5402)
!5402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5403, size: 64)
!5403 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlOutputBuffer", file: !772, line: 31, baseType: !5404)
!5404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlOutputBuffer", file: !4870, line: 141, size: 448, elements: !5405)
!5405 = !{!5406, !5407, !5412, !5414, !5415, !5416, !5417, !5418}
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !5404, file: !4870, line: 142, baseType: !905, size: 64)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "writecallback", scope: !5404, file: !4870, line: 143, baseType: !5408, size: 64, offset: 64)
!5408 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlOutputWriteCallback", file: !4870, line: 100, baseType: !5409)
!5409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5410, size: 64)
!5410 = !DISubroutineType(types: !5411)
!5411 = !{!7, !905, !914, !7}
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "closecallback", scope: !5404, file: !4870, line: 144, baseType: !5413, size: 64, offset: 128)
!5413 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlOutputCloseCallback", file: !4870, line: 110, baseType: !4880)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !5404, file: !4870, line: 146, baseType: !917, size: 64, offset: 192)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !5404, file: !4870, line: 148, baseType: !4885, size: 64, offset: 256)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "conv", scope: !5404, file: !4870, line: 149, baseType: !4885, size: 64, offset: 320)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "written", scope: !5404, file: !4870, line: 150, baseType: !7, size: 32, offset: 384)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !5404, file: !4870, line: 151, baseType: !7, size: 32, offset: 416)
!5419 = !{!5420, !5421, !5422, !5423, !5424, !5425, !5426, !5427, !5428, !5429, !5430, !5431, !5437, !5438, !5439, !5440, !5441}
!5420 = !DILocalVariable(name: "output", arg: 1, scope: !5398, file: !3, line: 2393, type: !5401)
!5421 = !DILocalVariable(name: "init", arg: 2, scope: !5398, file: !3, line: 2393, type: !7)
!5422 = !DILocalVariable(name: "ret", scope: !5398, file: !3, line: 2395, type: !7)
!5423 = !DILocalVariable(name: "written", scope: !5398, file: !3, line: 2396, type: !4899)
!5424 = !DILocalVariable(name: "writtentot", scope: !5398, file: !3, line: 2397, type: !4899)
!5425 = !DILocalVariable(name: "toconv", scope: !5398, file: !3, line: 2398, type: !4899)
!5426 = !DILocalVariable(name: "c_in", scope: !5398, file: !3, line: 2399, type: !7)
!5427 = !DILocalVariable(name: "c_out", scope: !5398, file: !3, line: 2400, type: !7)
!5428 = !DILocalVariable(name: "in", scope: !5398, file: !3, line: 2401, type: !4885)
!5429 = !DILocalVariable(name: "out", scope: !5398, file: !3, line: 2402, type: !4885)
!5430 = !DILabel(scope: !5398, name: "retry", file: !3, line: 2410)
!5431 = !DILocalVariable(name: "charref", scope: !5432, file: !3, line: 2492, type: !5434)
!5432 = distinct !DILexicalBlock(scope: !5433, file: !3, line: 2491, column: 18)
!5433 = distinct !DILexicalBlock(scope: !5398, file: !3, line: 2466, column: 18)
!5434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !942, size: 160, elements: !5435)
!5435 = !{!5436}
!5436 = !DISubrange(count: 20)
!5437 = !DILocalVariable(name: "len", scope: !5432, file: !3, line: 2493, type: !7)
!5438 = !DILocalVariable(name: "content", scope: !5432, file: !3, line: 2494, type: !4650)
!5439 = !DILocalVariable(name: "cur", scope: !5432, file: !3, line: 2495, type: !7)
!5440 = !DILocalVariable(name: "charrefLen", scope: !5432, file: !3, line: 2495, type: !7)
!5441 = !DILocalVariable(name: "buf", scope: !5442, file: !3, line: 2524, type: !4909)
!5442 = distinct !DILexicalBlock(scope: !5443, file: !3, line: 2523, column: 45)
!5443 = distinct !DILexicalBlock(scope: !5432, file: !3, line: 2523, column: 10)
!5444 = !DILocation(line: 2393, column: 37, scope: !5398)
!5445 = !DILocation(line: 2393, column: 49, scope: !5398)
!5446 = !DILocation(line: 2395, column: 5, scope: !5398)
!5447 = !DILocation(line: 2395, column: 9, scope: !5398)
!5448 = !DILocation(line: 2396, column: 5, scope: !5398)
!5449 = !DILocation(line: 2396, column: 12, scope: !5398)
!5450 = !DILocation(line: 2397, column: 5, scope: !5398)
!5451 = !DILocation(line: 2397, column: 12, scope: !5398)
!5452 = !DILocation(line: 2398, column: 5, scope: !5398)
!5453 = !DILocation(line: 2398, column: 12, scope: !5398)
!5454 = !DILocation(line: 2399, column: 5, scope: !5398)
!5455 = !DILocation(line: 2399, column: 9, scope: !5398)
!5456 = !DILocation(line: 2400, column: 5, scope: !5398)
!5457 = !DILocation(line: 2400, column: 9, scope: !5398)
!5458 = !DILocation(line: 2401, column: 5, scope: !5398)
!5459 = !DILocation(line: 2401, column: 15, scope: !5398)
!5460 = !DILocation(line: 2402, column: 5, scope: !5398)
!5461 = !DILocation(line: 2402, column: 15, scope: !5398)
!5462 = !DILocation(line: 2404, column: 10, scope: !5463)
!5463 = distinct !DILexicalBlock(scope: !5398, file: !3, line: 2404, column: 9)
!5464 = !DILocation(line: 2404, column: 17, scope: !5463)
!5465 = !DILocation(line: 2404, column: 26, scope: !5463)
!5466 = !DILocation(line: 2404, column: 30, scope: !5463)
!5467 = !DILocation(line: 2404, column: 38, scope: !5463)
!5468 = !{!5469, !1149, i64 24}
!5469 = !{!"_xmlOutputBuffer", !1149, i64 0, !1149, i64 8, !1149, i64 16, !1149, i64 24, !1149, i64 32, !1149, i64 40, !1186, i64 48, !1186, i64 52}
!5470 = !DILocation(line: 2404, column: 46, scope: !5463)
!5471 = !DILocation(line: 2404, column: 55, scope: !5463)
!5472 = !DILocation(line: 2405, column: 10, scope: !5463)
!5473 = !DILocation(line: 2405, column: 18, scope: !5463)
!5474 = !{!5469, !1149, i64 32}
!5475 = !DILocation(line: 2405, column: 25, scope: !5463)
!5476 = !DILocation(line: 2405, column: 34, scope: !5463)
!5477 = !DILocation(line: 2405, column: 38, scope: !5463)
!5478 = !DILocation(line: 2405, column: 46, scope: !5463)
!5479 = !{!5469, !1149, i64 40}
!5480 = !DILocation(line: 2405, column: 51, scope: !5463)
!5481 = !DILocation(line: 2404, column: 9, scope: !5398)
!5482 = !DILocation(line: 2406, column: 9, scope: !5463)
!5483 = !DILocation(line: 2407, column: 11, scope: !5398)
!5484 = !DILocation(line: 2407, column: 19, scope: !5398)
!5485 = !DILocation(line: 2407, column: 9, scope: !5398)
!5486 = !DILocation(line: 2408, column: 10, scope: !5398)
!5487 = !DILocation(line: 2408, column: 18, scope: !5398)
!5488 = !DILocation(line: 2408, column: 8, scope: !5398)
!5489 = !DILocation(line: 2408, column: 5, scope: !5398)
!5490 = !DILocation(line: 2410, column: 1, scope: !5398)
!5491 = !DILocation(line: 2412, column: 27, scope: !5398)
!5492 = !DILocation(line: 2412, column: 15, scope: !5398)
!5493 = !DILocation(line: 2412, column: 13, scope: !5398)
!5494 = !DILocation(line: 2413, column: 9, scope: !5495)
!5495 = distinct !DILexicalBlock(scope: !5398, file: !3, line: 2413, column: 9)
!5496 = !DILocation(line: 2413, column: 17, scope: !5495)
!5497 = !DILocation(line: 2413, column: 9, scope: !5398)
!5498 = !DILocation(line: 2414, column: 16, scope: !5495)
!5499 = !DILocation(line: 2414, column: 9, scope: !5495)
!5500 = !DILocation(line: 2419, column: 9, scope: !5501)
!5501 = distinct !DILexicalBlock(scope: !5398, file: !3, line: 2419, column: 9)
!5502 = !DILocation(line: 2419, column: 9, scope: !5398)
!5503 = !DILocation(line: 2420, column: 14, scope: !5504)
!5504 = distinct !DILexicalBlock(scope: !5501, file: !3, line: 2419, column: 15)
!5505 = !DILocation(line: 2421, column: 17, scope: !5504)
!5506 = !DILocation(line: 2421, column: 15, scope: !5504)
!5507 = !DILocation(line: 2423, column: 27, scope: !5504)
!5508 = !DILocation(line: 2423, column: 35, scope: !5504)
!5509 = !DILocation(line: 2423, column: 54, scope: !5504)
!5510 = !DILocation(line: 2423, column: 44, scope: !5504)
!5511 = !DILocation(line: 2423, column: 9, scope: !5504)
!5512 = !DILocation(line: 2425, column: 22, scope: !5504)
!5513 = !DILocation(line: 2425, column: 27, scope: !5504)
!5514 = !DILocation(line: 2425, column: 9, scope: !5504)
!5515 = !DILocation(line: 2430, column: 9, scope: !5504)
!5516 = !DILocation(line: 2436, column: 24, scope: !5398)
!5517 = !DILocation(line: 2436, column: 14, scope: !5398)
!5518 = !DILocation(line: 2436, column: 12, scope: !5398)
!5519 = !DILocation(line: 2437, column: 9, scope: !5520)
!5520 = distinct !DILexicalBlock(scope: !5398, file: !3, line: 2437, column: 9)
!5521 = !DILocation(line: 2437, column: 16, scope: !5520)
!5522 = !DILocation(line: 2437, column: 9, scope: !5398)
!5523 = !DILocation(line: 2438, column: 9, scope: !5520)
!5524 = !DILocation(line: 2439, column: 9, scope: !5525)
!5525 = distinct !DILexicalBlock(scope: !5398, file: !3, line: 2439, column: 9)
!5526 = !DILocation(line: 2439, column: 16, scope: !5525)
!5527 = !DILocation(line: 2439, column: 9, scope: !5398)
!5528 = !DILocation(line: 2440, column: 16, scope: !5525)
!5529 = !DILocation(line: 2440, column: 9, scope: !5525)
!5530 = !DILocation(line: 2441, column: 9, scope: !5531)
!5531 = distinct !DILexicalBlock(scope: !5398, file: !3, line: 2441, column: 9)
!5532 = !DILocation(line: 2441, column: 16, scope: !5531)
!5533 = !DILocation(line: 2441, column: 23, scope: !5531)
!5534 = !DILocation(line: 2441, column: 20, scope: !5531)
!5535 = !DILocation(line: 2441, column: 9, scope: !5398)
!5536 = !DILocation(line: 2442, column: 20, scope: !5537)
!5537 = distinct !DILexicalBlock(scope: !5531, file: !3, line: 2441, column: 32)
!5538 = !DILocation(line: 2442, column: 25, scope: !5537)
!5539 = !DILocation(line: 2442, column: 32, scope: !5537)
!5540 = !DILocation(line: 2442, column: 9, scope: !5537)
!5541 = !DILocation(line: 2443, column: 31, scope: !5537)
!5542 = !DILocation(line: 2443, column: 19, scope: !5537)
!5543 = !DILocation(line: 2443, column: 36, scope: !5537)
!5544 = !DILocation(line: 2443, column: 17, scope: !5537)
!5545 = !DILocation(line: 2444, column: 5, scope: !5537)
!5546 = !DILocation(line: 2445, column: 9, scope: !5547)
!5547 = distinct !DILexicalBlock(scope: !5398, file: !3, line: 2445, column: 9)
!5548 = !DILocation(line: 2445, column: 17, scope: !5547)
!5549 = !DILocation(line: 2445, column: 9, scope: !5398)
!5550 = !DILocation(line: 2446, column: 17, scope: !5547)
!5551 = !DILocation(line: 2446, column: 9, scope: !5547)
!5552 = !DILocation(line: 2448, column: 12, scope: !5398)
!5553 = !DILocation(line: 2448, column: 10, scope: !5398)
!5554 = !DILocation(line: 2449, column: 13, scope: !5398)
!5555 = !DILocation(line: 2449, column: 11, scope: !5398)
!5556 = !DILocation(line: 2450, column: 29, scope: !5398)
!5557 = !DILocation(line: 2450, column: 37, scope: !5398)
!5558 = !DILocation(line: 2450, column: 56, scope: !5398)
!5559 = !DILocation(line: 2450, column: 46, scope: !5398)
!5560 = !DILocation(line: 2451, column: 43, scope: !5398)
!5561 = !DILocation(line: 2451, column: 29, scope: !5398)
!5562 = !DILocation(line: 2450, column: 11, scope: !5398)
!5563 = !DILocation(line: 2450, column: 9, scope: !5398)
!5564 = !DILocation(line: 2452, column: 18, scope: !5398)
!5565 = !DILocation(line: 2452, column: 22, scope: !5398)
!5566 = !DILocation(line: 2452, column: 5, scope: !5398)
!5567 = !DILocation(line: 2453, column: 18, scope: !5398)
!5568 = !DILocation(line: 2453, column: 23, scope: !5398)
!5569 = !DILocation(line: 2453, column: 5, scope: !5398)
!5570 = !DILocation(line: 2454, column: 19, scope: !5398)
!5571 = !DILocation(line: 2454, column: 16, scope: !5398)
!5572 = !DILocation(line: 2455, column: 9, scope: !5573)
!5573 = distinct !DILexicalBlock(scope: !5398, file: !3, line: 2455, column: 9)
!5574 = !DILocation(line: 2455, column: 13, scope: !5573)
!5575 = !DILocation(line: 2455, column: 9, scope: !5398)
!5576 = !DILocation(line: 2456, column: 13, scope: !5577)
!5577 = distinct !DILexicalBlock(scope: !5578, file: !3, line: 2456, column: 13)
!5578 = distinct !DILexicalBlock(scope: !5573, file: !3, line: 2455, column: 20)
!5579 = !DILocation(line: 2456, column: 19, scope: !5577)
!5580 = !DILocation(line: 2456, column: 13, scope: !5578)
!5581 = !DILocation(line: 2458, column: 13, scope: !5582)
!5582 = distinct !DILexicalBlock(scope: !5577, file: !3, line: 2456, column: 24)
!5583 = !DILocation(line: 2460, column: 13, scope: !5578)
!5584 = !DILocation(line: 2461, column: 5, scope: !5578)
!5585 = !DILocation(line: 2466, column: 13, scope: !5398)
!5586 = !DILocation(line: 2466, column: 5, scope: !5398)
!5587 = !DILocation(line: 2487, column: 13, scope: !5433)
!5588 = !DILocation(line: 2489, column: 17, scope: !5433)
!5589 = !DILocation(line: 2490, column: 13, scope: !5433)
!5590 = !DILocation(line: 2492, column: 6, scope: !5432)
!5591 = !DILocation(line: 2492, column: 14, scope: !5432)
!5592 = !DILocation(line: 2493, column: 6, scope: !5432)
!5593 = !DILocation(line: 2493, column: 10, scope: !5432)
!5594 = !DILocation(line: 2493, column: 32, scope: !5432)
!5595 = !DILocation(line: 2493, column: 22, scope: !5432)
!5596 = !DILocation(line: 2493, column: 16, scope: !5432)
!5597 = !DILocation(line: 2494, column: 13, scope: !5432)
!5598 = !DILocation(line: 2494, column: 22, scope: !5432)
!5599 = !DILocation(line: 2494, column: 46, scope: !5432)
!5600 = !DILocation(line: 2494, column: 32, scope: !5432)
!5601 = !DILocation(line: 2495, column: 6, scope: !5432)
!5602 = !DILocation(line: 2495, column: 10, scope: !5432)
!5603 = !DILocation(line: 2495, column: 15, scope: !5432)
!5604 = !DILocation(line: 2497, column: 27, scope: !5432)
!5605 = !DILocation(line: 2497, column: 12, scope: !5432)
!5606 = !DILocation(line: 2497, column: 10, scope: !5432)
!5607 = !DILocation(line: 2498, column: 10, scope: !5608)
!5608 = distinct !DILexicalBlock(scope: !5432, file: !3, line: 2498, column: 10)
!5609 = !DILocation(line: 2498, column: 14, scope: !5608)
!5610 = !DILocation(line: 2498, column: 10, scope: !5432)
!5611 = !DILocation(line: 2499, column: 17, scope: !5608)
!5612 = !DILocation(line: 2514, column: 45, scope: !5432)
!5613 = !DILocation(line: 2515, column: 39, scope: !5432)
!5614 = !DILocation(line: 2514, column: 26, scope: !5432)
!5615 = !DILocation(line: 2514, column: 24, scope: !5432)
!5616 = !DILocation(line: 2516, column: 26, scope: !5432)
!5617 = !DILocation(line: 2516, column: 30, scope: !5432)
!5618 = !DILocation(line: 2516, column: 13, scope: !5432)
!5619 = !DILocation(line: 2517, column: 24, scope: !5432)
!5620 = !DILocation(line: 2517, column: 29, scope: !5432)
!5621 = !DILocation(line: 2517, column: 40, scope: !5432)
!5622 = !DILocation(line: 2517, column: 13, scope: !5432)
!5623 = !DILocation(line: 2518, column: 33, scope: !5432)
!5624 = !DILocation(line: 2518, column: 21, scope: !5432)
!5625 = !DILocation(line: 2518, column: 38, scope: !5432)
!5626 = !DILocation(line: 2518, column: 19, scope: !5432)
!5627 = !DILocation(line: 2519, column: 20, scope: !5432)
!5628 = !DILocation(line: 2519, column: 18, scope: !5432)
!5629 = !DILocation(line: 2520, column: 37, scope: !5432)
!5630 = !DILocation(line: 2520, column: 45, scope: !5432)
!5631 = !DILocation(line: 2520, column: 64, scope: !5432)
!5632 = !DILocation(line: 2520, column: 54, scope: !5432)
!5633 = !DILocation(line: 2521, column: 37, scope: !5432)
!5634 = !DILocation(line: 2520, column: 19, scope: !5432)
!5635 = !DILocation(line: 2520, column: 17, scope: !5432)
!5636 = !DILocation(line: 2523, column: 11, scope: !5443)
!5637 = !DILocation(line: 2523, column: 15, scope: !5443)
!5638 = !DILocation(line: 2523, column: 20, scope: !5443)
!5639 = !DILocation(line: 2523, column: 24, scope: !5443)
!5640 = !DILocation(line: 2523, column: 32, scope: !5443)
!5641 = !DILocation(line: 2523, column: 29, scope: !5443)
!5642 = !DILocation(line: 2523, column: 10, scope: !5432)
!5643 = !DILocation(line: 2524, column: 3, scope: !5442)
!5644 = !DILocation(line: 2524, column: 8, scope: !5442)
!5645 = !DILocation(line: 2526, column: 13, scope: !5442)
!5646 = !DILocation(line: 2527, column: 5, scope: !5442)
!5647 = !DILocation(line: 2527, column: 17, scope: !5442)
!5648 = !DILocation(line: 2528, column: 5, scope: !5442)
!5649 = !DILocation(line: 2528, column: 17, scope: !5442)
!5650 = !DILocation(line: 2526, column: 3, scope: !5442)
!5651 = !DILocation(line: 2529, column: 3, scope: !5442)
!5652 = !DILocation(line: 2529, column: 11, scope: !5442)
!5653 = !DILocation(line: 2532, column: 11, scope: !5442)
!5654 = !DILocation(line: 2530, column: 3, scope: !5442)
!5655 = !DILocation(line: 2533, column: 33, scope: !5656)
!5656 = distinct !DILexicalBlock(scope: !5442, file: !3, line: 2533, column: 7)
!5657 = !DILocation(line: 2533, column: 7, scope: !5656)
!5658 = !DILocation(line: 2533, column: 37, scope: !5656)
!5659 = !DILocation(line: 2533, column: 7, scope: !5442)
!5660 = !DILocation(line: 2534, column: 7, scope: !5656)
!5661 = !DILocation(line: 2534, column: 18, scope: !5656)
!5662 = !DILocation(line: 2536, column: 6, scope: !5443)
!5663 = !DILocation(line: 2538, column: 26, scope: !5432)
!5664 = !DILocation(line: 2538, column: 31, scope: !5432)
!5665 = !DILocation(line: 2538, column: 13, scope: !5432)
!5666 = !DILocation(line: 2539, column: 27, scope: !5432)
!5667 = !DILocation(line: 2539, column: 24, scope: !5432)
!5668 = !DILocation(line: 2540, column: 13, scope: !5432)
!5669 = !DILocation(line: 2541, column: 2, scope: !5433)
!5670 = !DILocation(line: 2543, column: 12, scope: !5398)
!5671 = !DILocation(line: 2543, column: 5, scope: !5398)
!5672 = !DILocation(line: 2544, column: 1, scope: !5398)
!5673 = distinct !DISubprogram(name: "xmlEncOutputChunk", scope: !3, file: !3, line: 1946, type: !5674, scopeLine: 1947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5676)
!5674 = !DISubroutineType(types: !5675)
!5675 = !{!7, !918, !928, !930, !931, !930}
!5676 = !{!5677, !5678, !5679, !5680, !5681, !5682}
!5677 = !DILocalVariable(name: "handler", arg: 1, scope: !5673, file: !3, line: 1946, type: !918)
!5678 = !DILocalVariable(name: "out", arg: 2, scope: !5673, file: !3, line: 1946, type: !928)
!5679 = !DILocalVariable(name: "outlen", arg: 3, scope: !5673, file: !3, line: 1947, type: !930)
!5680 = !DILocalVariable(name: "in", arg: 4, scope: !5673, file: !3, line: 1947, type: !931)
!5681 = !DILocalVariable(name: "inlen", arg: 5, scope: !5673, file: !3, line: 1947, type: !930)
!5682 = !DILocalVariable(name: "ret", scope: !5673, file: !3, line: 1948, type: !7)
!5683 = !DILocation(line: 1946, column: 43, scope: !5673)
!5684 = !DILocation(line: 1946, column: 67, scope: !5673)
!5685 = !DILocation(line: 1947, column: 24, scope: !5673)
!5686 = !DILocation(line: 1947, column: 53, scope: !5673)
!5687 = !DILocation(line: 1947, column: 62, scope: !5673)
!5688 = !DILocation(line: 1948, column: 5, scope: !5673)
!5689 = !DILocation(line: 1948, column: 9, scope: !5673)
!5690 = !DILocation(line: 1950, column: 9, scope: !5691)
!5691 = distinct !DILexicalBlock(scope: !5673, file: !3, line: 1950, column: 9)
!5692 = !DILocation(line: 1950, column: 18, scope: !5691)
!5693 = !DILocation(line: 1950, column: 25, scope: !5691)
!5694 = !DILocation(line: 1950, column: 9, scope: !5673)
!5695 = !DILocation(line: 1951, column: 15, scope: !5696)
!5696 = distinct !DILexicalBlock(scope: !5691, file: !3, line: 1950, column: 34)
!5697 = !DILocation(line: 1951, column: 24, scope: !5696)
!5698 = !DILocation(line: 1951, column: 31, scope: !5696)
!5699 = !DILocation(line: 1951, column: 36, scope: !5696)
!5700 = !DILocation(line: 1951, column: 44, scope: !5696)
!5701 = !DILocation(line: 1951, column: 48, scope: !5696)
!5702 = !DILocation(line: 1951, column: 13, scope: !5696)
!5703 = !DILocation(line: 1952, column: 5, scope: !5696)
!5704 = !DILocation(line: 1954, column: 14, scope: !5705)
!5705 = distinct !DILexicalBlock(scope: !5691, file: !3, line: 1954, column: 14)
!5706 = !DILocation(line: 1954, column: 23, scope: !5705)
!5707 = !DILocation(line: 1954, column: 33, scope: !5705)
!5708 = !DILocation(line: 1954, column: 14, scope: !5691)
!5709 = !DILocation(line: 1955, column: 31, scope: !5710)
!5710 = distinct !DILexicalBlock(scope: !5705, file: !3, line: 1954, column: 42)
!5711 = !DILocation(line: 1955, column: 40, scope: !5710)
!5712 = !DILocation(line: 1955, column: 51, scope: !5710)
!5713 = !DILocation(line: 1955, column: 56, scope: !5710)
!5714 = !DILocation(line: 1955, column: 64, scope: !5710)
!5715 = !DILocation(line: 1955, column: 68, scope: !5710)
!5716 = !DILocation(line: 1955, column: 15, scope: !5710)
!5717 = !DILocation(line: 1955, column: 13, scope: !5710)
!5718 = !DILocation(line: 1956, column: 5, scope: !5710)
!5719 = !DILocation(line: 1965, column: 10, scope: !5720)
!5720 = distinct !DILexicalBlock(scope: !5705, file: !3, line: 1964, column: 10)
!5721 = !DILocation(line: 1965, column: 17, scope: !5720)
!5722 = !DILocation(line: 1966, column: 10, scope: !5720)
!5723 = !DILocation(line: 1966, column: 16, scope: !5720)
!5724 = !DILocation(line: 1967, column: 13, scope: !5720)
!5725 = !DILocation(line: 1970, column: 12, scope: !5673)
!5726 = !DILocation(line: 1971, column: 1, scope: !5673)
!5727 = !DILocation(line: 1970, column: 5, scope: !5673)
!5728 = !DISubprogram(name: "xmlGetUTF8Char__internal_alias", scope: !4786, file: !4786, line: 4207, type: !5729, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5729 = !DISubroutineType(types: !5730)
!5730 = !{!7, !931, !930}
!5731 = !DISubprogram(name: "xmlBufGetAllocationScheme", scope: !5078, file: !5078, line: 28, type: !5732, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5732 = !DISubroutineType(types: !5733)
!5733 = !{!7, !4885}
!5734 = distinct !DISubprogram(name: "xmlCharEncOutFunc__internal_alias", scope: !3, file: !3, line: 2566, type: !4849, scopeLine: 2567, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5735)
!5735 = !{!5736, !5737, !5738, !5739, !5740, !5741, !5742, !5743, !5744, !5745, !5748, !5749, !5750, !5751, !5752}
!5736 = !DILocalVariable(name: "handler", arg: 1, scope: !5734, file: !3, line: 2566, type: !918)
!5737 = !DILocalVariable(name: "out", arg: 2, scope: !5734, file: !3, line: 2566, type: !4644)
!5738 = !DILocalVariable(name: "in", arg: 3, scope: !5734, file: !3, line: 2567, type: !4644)
!5739 = !DILocalVariable(name: "ret", scope: !5734, file: !3, line: 2568, type: !7)
!5740 = !DILocalVariable(name: "written", scope: !5734, file: !3, line: 2569, type: !7)
!5741 = !DILocalVariable(name: "writtentot", scope: !5734, file: !3, line: 2570, type: !7)
!5742 = !DILocalVariable(name: "toconv", scope: !5734, file: !3, line: 2571, type: !7)
!5743 = !DILocalVariable(name: "output", scope: !5734, file: !3, line: 2572, type: !7)
!5744 = !DILabel(scope: !5734, name: "retry", file: !3, line: 2577)
!5745 = !DILocalVariable(name: "charref", scope: !5746, file: !3, line: 2656, type: !5434)
!5746 = distinct !DILexicalBlock(scope: !5747, file: !3, line: 2655, column: 18)
!5747 = distinct !DILexicalBlock(scope: !5734, file: !3, line: 2630, column: 18)
!5748 = !DILocalVariable(name: "len", scope: !5746, file: !3, line: 2657, type: !7)
!5749 = !DILocalVariable(name: "utf", scope: !5746, file: !3, line: 2658, type: !940)
!5750 = !DILocalVariable(name: "cur", scope: !5746, file: !3, line: 2659, type: !7)
!5751 = !DILocalVariable(name: "charrefLen", scope: !5746, file: !3, line: 2659, type: !7)
!5752 = !DILocalVariable(name: "buf", scope: !5753, file: !3, line: 2688, type: !4909)
!5753 = distinct !DILexicalBlock(scope: !5754, file: !3, line: 2687, column: 47)
!5754 = distinct !DILexicalBlock(scope: !5746, file: !3, line: 2687, column: 10)
!5755 = !DILocation(line: 2566, column: 43, scope: !5734)
!5756 = !DILocation(line: 2566, column: 65, scope: !5734)
!5757 = !DILocation(line: 2567, column: 32, scope: !5734)
!5758 = !DILocation(line: 2568, column: 5, scope: !5734)
!5759 = !DILocation(line: 2568, column: 9, scope: !5734)
!5760 = !DILocation(line: 2569, column: 5, scope: !5734)
!5761 = !DILocation(line: 2569, column: 9, scope: !5734)
!5762 = !DILocation(line: 2570, column: 5, scope: !5734)
!5763 = !DILocation(line: 2570, column: 9, scope: !5734)
!5764 = !DILocation(line: 2571, column: 5, scope: !5734)
!5765 = !DILocation(line: 2571, column: 9, scope: !5734)
!5766 = !DILocation(line: 2572, column: 5, scope: !5734)
!5767 = !DILocation(line: 2572, column: 9, scope: !5734)
!5768 = !DILocation(line: 2574, column: 9, scope: !5769)
!5769 = distinct !DILexicalBlock(scope: !5734, file: !3, line: 2574, column: 9)
!5770 = !DILocation(line: 2574, column: 17, scope: !5769)
!5771 = !DILocation(line: 2574, column: 9, scope: !5734)
!5772 = !DILocation(line: 2574, column: 26, scope: !5769)
!5773 = !DILocation(line: 2575, column: 9, scope: !5774)
!5774 = distinct !DILexicalBlock(scope: !5734, file: !3, line: 2575, column: 9)
!5775 = !DILocation(line: 2575, column: 13, scope: !5774)
!5776 = !DILocation(line: 2575, column: 9, scope: !5734)
!5777 = !DILocation(line: 2575, column: 22, scope: !5774)
!5778 = !DILocation(line: 2575, column: 16, scope: !5774)
!5779 = !DILocation(line: 2577, column: 1, scope: !5734)
!5780 = !DILocation(line: 2579, column: 15, scope: !5734)
!5781 = !DILocation(line: 2579, column: 20, scope: !5734)
!5782 = !DILocation(line: 2579, column: 27, scope: !5734)
!5783 = !DILocation(line: 2579, column: 32, scope: !5734)
!5784 = !DILocation(line: 2579, column: 25, scope: !5734)
!5785 = !DILocation(line: 2579, column: 13, scope: !5734)
!5786 = !DILocation(line: 2581, column: 9, scope: !5787)
!5787 = distinct !DILexicalBlock(scope: !5734, file: !3, line: 2581, column: 9)
!5788 = !DILocation(line: 2581, column: 17, scope: !5787)
!5789 = !DILocation(line: 2581, column: 9, scope: !5734)
!5790 = !DILocation(line: 2582, column: 9, scope: !5787)
!5791 = !DILocation(line: 2582, column: 2, scope: !5787)
!5792 = !DILocation(line: 2587, column: 9, scope: !5793)
!5793 = distinct !DILexicalBlock(scope: !5734, file: !3, line: 2587, column: 9)
!5794 = !DILocation(line: 2587, column: 12, scope: !5793)
!5795 = !DILocation(line: 2587, column: 9, scope: !5734)
!5796 = !DILocation(line: 2588, column: 16, scope: !5797)
!5797 = distinct !DILexicalBlock(scope: !5793, file: !3, line: 2587, column: 21)
!5798 = !DILocation(line: 2590, column: 27, scope: !5797)
!5799 = !DILocation(line: 2590, column: 37, scope: !5797)
!5800 = !DILocation(line: 2590, column: 42, scope: !5797)
!5801 = !DILocation(line: 2590, column: 50, scope: !5797)
!5802 = !DILocation(line: 2590, column: 55, scope: !5797)
!5803 = !DILocation(line: 2590, column: 9, scope: !5797)
!5804 = !DILocation(line: 2592, column: 21, scope: !5797)
!5805 = !DILocation(line: 2592, column: 9, scope: !5797)
!5806 = !DILocation(line: 2592, column: 14, scope: !5797)
!5807 = !DILocation(line: 2592, column: 18, scope: !5797)
!5808 = !DILocation(line: 2593, column: 9, scope: !5797)
!5809 = !DILocation(line: 2593, column: 14, scope: !5797)
!5810 = !DILocation(line: 2593, column: 22, scope: !5797)
!5811 = !DILocation(line: 2593, column: 27, scope: !5797)
!5812 = !DILocation(line: 2593, column: 32, scope: !5797)
!5813 = !DILocation(line: 2598, column: 9, scope: !5797)
!5814 = !DILocation(line: 2604, column: 14, scope: !5734)
!5815 = !DILocation(line: 2604, column: 18, scope: !5734)
!5816 = !DILocation(line: 2604, column: 12, scope: !5734)
!5817 = !DILocation(line: 2605, column: 9, scope: !5818)
!5818 = distinct !DILexicalBlock(scope: !5734, file: !3, line: 2605, column: 9)
!5819 = !DILocation(line: 2605, column: 16, scope: !5818)
!5820 = !DILocation(line: 2605, column: 9, scope: !5734)
!5821 = !DILocation(line: 2606, column: 2, scope: !5818)
!5822 = !DILocation(line: 2607, column: 9, scope: !5823)
!5823 = distinct !DILexicalBlock(scope: !5734, file: !3, line: 2607, column: 9)
!5824 = !DILocation(line: 2607, column: 16, scope: !5823)
!5825 = !DILocation(line: 2607, column: 23, scope: !5823)
!5826 = !DILocation(line: 2607, column: 20, scope: !5823)
!5827 = !DILocation(line: 2607, column: 9, scope: !5734)
!5828 = !DILocation(line: 2608, column: 23, scope: !5829)
!5829 = distinct !DILexicalBlock(scope: !5823, file: !3, line: 2607, column: 32)
!5830 = !DILocation(line: 2608, column: 28, scope: !5829)
!5831 = !DILocation(line: 2608, column: 35, scope: !5829)
!5832 = !DILocation(line: 2608, column: 9, scope: !5829)
!5833 = !DILocation(line: 2609, column: 12, scope: !5829)
!5834 = !DILocation(line: 2609, column: 17, scope: !5829)
!5835 = !DILocation(line: 2609, column: 24, scope: !5829)
!5836 = !DILocation(line: 2609, column: 29, scope: !5829)
!5837 = !DILocation(line: 2609, column: 22, scope: !5829)
!5838 = !DILocation(line: 2609, column: 33, scope: !5829)
!5839 = !DILocation(line: 2609, column: 10, scope: !5829)
!5840 = !DILocation(line: 2610, column: 5, scope: !5829)
!5841 = !DILocation(line: 2611, column: 29, scope: !5734)
!5842 = !DILocation(line: 2611, column: 39, scope: !5734)
!5843 = !DILocation(line: 2611, column: 44, scope: !5734)
!5844 = !DILocation(line: 2611, column: 52, scope: !5734)
!5845 = !DILocation(line: 2611, column: 57, scope: !5734)
!5846 = !DILocation(line: 2612, column: 29, scope: !5734)
!5847 = !DILocation(line: 2612, column: 33, scope: !5734)
!5848 = !DILocation(line: 2611, column: 11, scope: !5734)
!5849 = !DILocation(line: 2611, column: 9, scope: !5734)
!5850 = !DILocation(line: 2613, column: 21, scope: !5734)
!5851 = !DILocation(line: 2613, column: 25, scope: !5734)
!5852 = !DILocation(line: 2613, column: 5, scope: !5734)
!5853 = !DILocation(line: 2614, column: 17, scope: !5734)
!5854 = !DILocation(line: 2614, column: 5, scope: !5734)
!5855 = !DILocation(line: 2614, column: 10, scope: !5734)
!5856 = !DILocation(line: 2614, column: 14, scope: !5734)
!5857 = !DILocation(line: 2615, column: 19, scope: !5734)
!5858 = !DILocation(line: 2615, column: 16, scope: !5734)
!5859 = !DILocation(line: 2616, column: 5, scope: !5734)
!5860 = !DILocation(line: 2616, column: 10, scope: !5734)
!5861 = !DILocation(line: 2616, column: 18, scope: !5734)
!5862 = !DILocation(line: 2616, column: 23, scope: !5734)
!5863 = !DILocation(line: 2616, column: 28, scope: !5734)
!5864 = !DILocation(line: 2617, column: 9, scope: !5865)
!5865 = distinct !DILexicalBlock(scope: !5734, file: !3, line: 2617, column: 9)
!5866 = !DILocation(line: 2617, column: 13, scope: !5865)
!5867 = !DILocation(line: 2617, column: 9, scope: !5734)
!5868 = !DILocation(line: 2618, column: 13, scope: !5869)
!5869 = distinct !DILexicalBlock(scope: !5870, file: !3, line: 2618, column: 13)
!5870 = distinct !DILexicalBlock(scope: !5865, file: !3, line: 2617, column: 20)
!5871 = !DILocation(line: 2618, column: 21, scope: !5869)
!5872 = !DILocation(line: 2618, column: 13, scope: !5870)
!5873 = !DILocation(line: 2620, column: 13, scope: !5874)
!5874 = distinct !DILexicalBlock(scope: !5869, file: !3, line: 2618, column: 26)
!5875 = !DILocation(line: 2622, column: 13, scope: !5870)
!5876 = !DILocation(line: 2623, column: 5, scope: !5870)
!5877 = !DILocation(line: 2625, column: 9, scope: !5878)
!5878 = distinct !DILexicalBlock(scope: !5734, file: !3, line: 2625, column: 9)
!5879 = !DILocation(line: 2625, column: 13, scope: !5878)
!5880 = !DILocation(line: 2625, column: 9, scope: !5734)
!5881 = !DILocation(line: 2625, column: 29, scope: !5878)
!5882 = !DILocation(line: 2625, column: 26, scope: !5878)
!5883 = !DILocation(line: 2625, column: 19, scope: !5878)
!5884 = !DILocation(line: 2630, column: 13, scope: !5734)
!5885 = !DILocation(line: 2630, column: 5, scope: !5734)
!5886 = !DILocation(line: 2651, column: 6, scope: !5747)
!5887 = !DILocation(line: 2653, column: 10, scope: !5747)
!5888 = !DILocation(line: 2654, column: 13, scope: !5747)
!5889 = !DILocation(line: 2656, column: 6, scope: !5746)
!5890 = !DILocation(line: 2656, column: 14, scope: !5746)
!5891 = !DILocation(line: 2657, column: 6, scope: !5746)
!5892 = !DILocation(line: 2657, column: 10, scope: !5746)
!5893 = !DILocation(line: 2657, column: 16, scope: !5746)
!5894 = !DILocation(line: 2657, column: 20, scope: !5746)
!5895 = !DILocation(line: 2658, column: 6, scope: !5746)
!5896 = !DILocation(line: 2658, column: 21, scope: !5746)
!5897 = !DILocation(line: 2658, column: 45, scope: !5746)
!5898 = !DILocation(line: 2658, column: 49, scope: !5746)
!5899 = !DILocation(line: 2659, column: 6, scope: !5746)
!5900 = !DILocation(line: 2659, column: 10, scope: !5746)
!5901 = !DILocation(line: 2659, column: 15, scope: !5746)
!5902 = !DILocation(line: 2661, column: 27, scope: !5746)
!5903 = !DILocation(line: 2661, column: 12, scope: !5746)
!5904 = !DILocation(line: 2661, column: 10, scope: !5746)
!5905 = !DILocation(line: 2662, column: 10, scope: !5906)
!5906 = distinct !DILexicalBlock(scope: !5746, file: !3, line: 2662, column: 10)
!5907 = !DILocation(line: 2662, column: 14, scope: !5906)
!5908 = !DILocation(line: 2662, column: 10, scope: !5746)
!5909 = !DILocation(line: 2663, column: 17, scope: !5906)
!5910 = !DILocation(line: 2678, column: 45, scope: !5746)
!5911 = !DILocation(line: 2679, column: 39, scope: !5746)
!5912 = !DILocation(line: 2678, column: 26, scope: !5746)
!5913 = !DILocation(line: 2678, column: 24, scope: !5746)
!5914 = !DILocation(line: 2680, column: 29, scope: !5746)
!5915 = !DILocation(line: 2680, column: 33, scope: !5746)
!5916 = !DILocation(line: 2680, column: 13, scope: !5746)
!5917 = !DILocation(line: 2681, column: 27, scope: !5746)
!5918 = !DILocation(line: 2681, column: 32, scope: !5746)
!5919 = !DILocation(line: 2681, column: 43, scope: !5746)
!5920 = !DILocation(line: 2681, column: 13, scope: !5746)
!5921 = !DILocation(line: 2682, column: 16, scope: !5746)
!5922 = !DILocation(line: 2682, column: 21, scope: !5746)
!5923 = !DILocation(line: 2682, column: 28, scope: !5746)
!5924 = !DILocation(line: 2682, column: 33, scope: !5746)
!5925 = !DILocation(line: 2682, column: 26, scope: !5746)
!5926 = !DILocation(line: 2682, column: 37, scope: !5746)
!5927 = !DILocation(line: 2682, column: 14, scope: !5746)
!5928 = !DILocation(line: 2683, column: 22, scope: !5746)
!5929 = !DILocation(line: 2683, column: 20, scope: !5746)
!5930 = !DILocation(line: 2684, column: 37, scope: !5746)
!5931 = !DILocation(line: 2684, column: 47, scope: !5746)
!5932 = !DILocation(line: 2684, column: 52, scope: !5746)
!5933 = !DILocation(line: 2684, column: 60, scope: !5746)
!5934 = !DILocation(line: 2684, column: 65, scope: !5746)
!5935 = !DILocation(line: 2685, column: 37, scope: !5746)
!5936 = !DILocation(line: 2684, column: 19, scope: !5746)
!5937 = !DILocation(line: 2684, column: 17, scope: !5746)
!5938 = !DILocation(line: 2687, column: 11, scope: !5754)
!5939 = !DILocation(line: 2687, column: 15, scope: !5754)
!5940 = !DILocation(line: 2687, column: 20, scope: !5754)
!5941 = !DILocation(line: 2687, column: 24, scope: !5754)
!5942 = !DILocation(line: 2687, column: 34, scope: !5754)
!5943 = !DILocation(line: 2687, column: 31, scope: !5754)
!5944 = !DILocation(line: 2687, column: 10, scope: !5746)
!5945 = !DILocation(line: 2688, column: 3, scope: !5753)
!5946 = !DILocation(line: 2688, column: 8, scope: !5753)
!5947 = !DILocation(line: 2690, column: 13, scope: !5753)
!5948 = !DILocation(line: 2691, column: 5, scope: !5753)
!5949 = !DILocation(line: 2691, column: 9, scope: !5753)
!5950 = !DILocation(line: 2691, column: 21, scope: !5753)
!5951 = !DILocation(line: 2691, column: 25, scope: !5753)
!5952 = !DILocation(line: 2692, column: 5, scope: !5753)
!5953 = !DILocation(line: 2692, column: 9, scope: !5753)
!5954 = !DILocation(line: 2692, column: 21, scope: !5753)
!5955 = !DILocation(line: 2692, column: 25, scope: !5753)
!5956 = !DILocation(line: 2690, column: 3, scope: !5753)
!5957 = !DILocation(line: 2693, column: 3, scope: !5753)
!5958 = !DILocation(line: 2693, column: 11, scope: !5753)
!5959 = !DILocation(line: 2696, column: 11, scope: !5753)
!5960 = !DILocation(line: 2694, column: 3, scope: !5753)
!5961 = !DILocation(line: 2697, column: 7, scope: !5962)
!5962 = distinct !DILexicalBlock(scope: !5753, file: !3, line: 2697, column: 7)
!5963 = !DILocation(line: 2697, column: 11, scope: !5962)
!5964 = !{!4692, !1150, i64 16}
!5965 = !DILocation(line: 2697, column: 17, scope: !5962)
!5966 = !DILocation(line: 2697, column: 7, scope: !5753)
!5967 = !DILocation(line: 2698, column: 7, scope: !5962)
!5968 = !DILocation(line: 2698, column: 11, scope: !5962)
!5969 = !DILocation(line: 2698, column: 22, scope: !5962)
!5970 = !DILocation(line: 2700, column: 6, scope: !5754)
!5971 = !DILocation(line: 2702, column: 25, scope: !5746)
!5972 = !DILocation(line: 2702, column: 13, scope: !5746)
!5973 = !DILocation(line: 2702, column: 18, scope: !5746)
!5974 = !DILocation(line: 2702, column: 22, scope: !5746)
!5975 = !DILocation(line: 2703, column: 27, scope: !5746)
!5976 = !DILocation(line: 2703, column: 24, scope: !5746)
!5977 = !DILocation(line: 2704, column: 13, scope: !5746)
!5978 = !DILocation(line: 2704, column: 18, scope: !5746)
!5979 = !DILocation(line: 2704, column: 26, scope: !5746)
!5980 = !DILocation(line: 2704, column: 31, scope: !5746)
!5981 = !DILocation(line: 2704, column: 36, scope: !5746)
!5982 = !DILocation(line: 2705, column: 13, scope: !5746)
!5983 = !DILocation(line: 2706, column: 2, scope: !5747)
!5984 = !DILocation(line: 2708, column: 12, scope: !5734)
!5985 = !DILocation(line: 2708, column: 5, scope: !5734)
!5986 = !DILocation(line: 2709, column: 1, scope: !5734)
!5987 = distinct !DISubprogram(name: "xmlCharEncCloseFunc__internal_alias", scope: !3, file: !3, line: 2720, type: !5988, scopeLine: 2720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5990)
!5988 = !DISubroutineType(types: !5989)
!5989 = !{!7, !918}
!5990 = !{!5991, !5992, !5993, !5994, !5995}
!5991 = !DILocalVariable(name: "handler", arg: 1, scope: !5987, file: !3, line: 2720, type: !918)
!5992 = !DILocalVariable(name: "ret", scope: !5987, file: !3, line: 2721, type: !7)
!5993 = !DILocalVariable(name: "tofree", scope: !5987, file: !3, line: 2722, type: !7)
!5994 = !DILocalVariable(name: "i", scope: !5987, file: !3, line: 2723, type: !7)
!5995 = !DILocalVariable(name: "handler_in_list", scope: !5987, file: !3, line: 2723, type: !7)
!5996 = !DILocation(line: 2720, column: 45, scope: !5987)
!5997 = !DILocation(line: 2721, column: 5, scope: !5987)
!5998 = !DILocation(line: 2721, column: 9, scope: !5987)
!5999 = !DILocation(line: 2722, column: 5, scope: !5987)
!6000 = !DILocation(line: 2722, column: 9, scope: !5987)
!6001 = !DILocation(line: 2723, column: 5, scope: !5987)
!6002 = !DILocation(line: 2723, column: 9, scope: !5987)
!6003 = !DILocation(line: 2723, column: 12, scope: !5987)
!6004 = !DILocation(line: 2725, column: 9, scope: !6005)
!6005 = distinct !DILexicalBlock(scope: !5987, file: !3, line: 2725, column: 9)
!6006 = !DILocation(line: 2725, column: 17, scope: !6005)
!6007 = !DILocation(line: 2725, column: 9, scope: !5987)
!6008 = !DILocation(line: 2725, column: 26, scope: !6005)
!6009 = !DILocation(line: 2726, column: 9, scope: !6010)
!6010 = distinct !DILexicalBlock(scope: !5987, file: !3, line: 2726, column: 9)
!6011 = !DILocation(line: 2726, column: 18, scope: !6010)
!6012 = !DILocation(line: 2726, column: 23, scope: !6010)
!6013 = !DILocation(line: 2726, column: 9, scope: !5987)
!6014 = !DILocation(line: 2726, column: 32, scope: !6010)
!6015 = !DILocation(line: 2727, column: 9, scope: !6016)
!6016 = distinct !DILexicalBlock(scope: !5987, file: !3, line: 2727, column: 9)
!6017 = !DILocation(line: 2727, column: 18, scope: !6016)
!6018 = !DILocation(line: 2727, column: 9, scope: !5987)
!6019 = !DILocation(line: 2728, column: 16, scope: !6020)
!6020 = distinct !DILexicalBlock(scope: !6021, file: !3, line: 2728, column: 9)
!6021 = distinct !DILexicalBlock(scope: !6016, file: !3, line: 2727, column: 27)
!6022 = !DILocation(line: 2728, column: 14, scope: !6020)
!6023 = !DILocation(line: 2728, column: 20, scope: !6024)
!6024 = distinct !DILexicalBlock(scope: !6020, file: !3, line: 2728, column: 9)
!6025 = !DILocation(line: 2728, column: 24, scope: !6024)
!6026 = !DILocation(line: 2728, column: 22, scope: !6024)
!6027 = !DILocation(line: 2728, column: 9, scope: !6020)
!6028 = !DILocation(line: 2729, column: 17, scope: !6029)
!6029 = distinct !DILexicalBlock(scope: !6030, file: !3, line: 2729, column: 17)
!6030 = distinct !DILexicalBlock(scope: !6024, file: !3, line: 2728, column: 52)
!6031 = !DILocation(line: 2729, column: 28, scope: !6029)
!6032 = !DILocation(line: 2729, column: 37, scope: !6029)
!6033 = !DILocation(line: 2729, column: 25, scope: !6029)
!6034 = !DILocation(line: 2729, column: 17, scope: !6030)
!6035 = !DILocation(line: 2730, column: 26, scope: !6036)
!6036 = distinct !DILexicalBlock(scope: !6029, file: !3, line: 2729, column: 41)
!6037 = !DILocation(line: 2731, column: 3, scope: !6036)
!6038 = !DILocation(line: 2733, column: 2, scope: !6030)
!6039 = !DILocation(line: 2728, column: 48, scope: !6024)
!6040 = !DILocation(line: 2728, column: 9, scope: !6024)
!6041 = distinct !{!6041, !6027, !6042, !1265}
!6042 = !DILocation(line: 2733, column: 2, scope: !6020)
!6043 = !DILocation(line: 2734, column: 5, scope: !6021)
!6044 = !DILocation(line: 2740, column: 10, scope: !6045)
!6045 = distinct !DILexicalBlock(scope: !5987, file: !3, line: 2740, column: 9)
!6046 = !DILocation(line: 2740, column: 26, scope: !6045)
!6047 = !DILocation(line: 2740, column: 32, scope: !6045)
!6048 = !DILocation(line: 2741, column: 11, scope: !6045)
!6049 = !DILocation(line: 2741, column: 20, scope: !6045)
!6050 = !DILocation(line: 2741, column: 30, scope: !6045)
!6051 = !DILocation(line: 2741, column: 39, scope: !6045)
!6052 = !DILocation(line: 2741, column: 43, scope: !6045)
!6053 = !DILocation(line: 2741, column: 52, scope: !6045)
!6054 = !DILocation(line: 2741, column: 61, scope: !6045)
!6055 = !DILocation(line: 2740, column: 9, scope: !5987)
!6056 = !DILocation(line: 2742, column: 16, scope: !6057)
!6057 = distinct !DILexicalBlock(scope: !6045, file: !3, line: 2741, column: 72)
!6058 = !DILocation(line: 2743, column: 6, scope: !6059)
!6059 = distinct !DILexicalBlock(scope: !6057, file: !3, line: 2743, column: 6)
!6060 = !DILocation(line: 2743, column: 15, scope: !6059)
!6061 = !DILocation(line: 2743, column: 25, scope: !6059)
!6062 = !DILocation(line: 2743, column: 6, scope: !6057)
!6063 = !DILocation(line: 2744, column: 22, scope: !6064)
!6064 = distinct !DILexicalBlock(scope: !6065, file: !3, line: 2744, column: 10)
!6065 = distinct !DILexicalBlock(scope: !6059, file: !3, line: 2743, column: 34)
!6066 = !DILocation(line: 2744, column: 31, scope: !6064)
!6067 = !DILocation(line: 2744, column: 10, scope: !6064)
!6068 = !DILocation(line: 2744, column: 10, scope: !6065)
!6069 = !DILocation(line: 2745, column: 7, scope: !6064)
!6070 = !DILocation(line: 2745, column: 3, scope: !6064)
!6071 = !DILocation(line: 2746, column: 6, scope: !6065)
!6072 = !DILocation(line: 2746, column: 15, scope: !6065)
!6073 = !DILocation(line: 2746, column: 25, scope: !6065)
!6074 = !DILocation(line: 2747, column: 2, scope: !6065)
!6075 = !DILocation(line: 2748, column: 6, scope: !6076)
!6076 = distinct !DILexicalBlock(scope: !6057, file: !3, line: 2748, column: 6)
!6077 = !DILocation(line: 2748, column: 15, scope: !6076)
!6078 = !DILocation(line: 2748, column: 24, scope: !6076)
!6079 = !DILocation(line: 2748, column: 6, scope: !6057)
!6080 = !DILocation(line: 2749, column: 22, scope: !6081)
!6081 = distinct !DILexicalBlock(scope: !6082, file: !3, line: 2749, column: 10)
!6082 = distinct !DILexicalBlock(scope: !6076, file: !3, line: 2748, column: 33)
!6083 = !DILocation(line: 2749, column: 31, scope: !6081)
!6084 = !DILocation(line: 2749, column: 10, scope: !6081)
!6085 = !DILocation(line: 2749, column: 10, scope: !6082)
!6086 = !DILocation(line: 2750, column: 7, scope: !6081)
!6087 = !DILocation(line: 2750, column: 3, scope: !6081)
!6088 = !DILocation(line: 2751, column: 6, scope: !6082)
!6089 = !DILocation(line: 2751, column: 15, scope: !6082)
!6090 = !DILocation(line: 2751, column: 24, scope: !6082)
!6091 = !DILocation(line: 2752, column: 2, scope: !6082)
!6092 = !DILocation(line: 2753, column: 5, scope: !6057)
!6093 = !DILocation(line: 2769, column: 9, scope: !6094)
!6094 = distinct !DILexicalBlock(scope: !5987, file: !3, line: 2769, column: 9)
!6095 = !DILocation(line: 2769, column: 9, scope: !5987)
!6096 = !DILocation(line: 2771, column: 13, scope: !6097)
!6097 = distinct !DILexicalBlock(scope: !6098, file: !3, line: 2771, column: 13)
!6098 = distinct !DILexicalBlock(scope: !6094, file: !3, line: 2769, column: 17)
!6099 = !DILocation(line: 2771, column: 22, scope: !6097)
!6100 = !DILocation(line: 2771, column: 27, scope: !6097)
!6101 = !DILocation(line: 2771, column: 13, scope: !6098)
!6102 = !DILocation(line: 2772, column: 13, scope: !6097)
!6103 = !DILocation(line: 2772, column: 21, scope: !6097)
!6104 = !DILocation(line: 2772, column: 30, scope: !6097)
!6105 = !DILocation(line: 2773, column: 9, scope: !6098)
!6106 = !DILocation(line: 2773, column: 18, scope: !6098)
!6107 = !DILocation(line: 2773, column: 23, scope: !6098)
!6108 = !DILocation(line: 2774, column: 9, scope: !6098)
!6109 = !DILocation(line: 2774, column: 17, scope: !6098)
!6110 = !DILocation(line: 2775, column: 5, scope: !6098)
!6111 = !DILocation(line: 2785, column: 12, scope: !5987)
!6112 = !DILocation(line: 2785, column: 5, scope: !5987)
!6113 = !DILocation(line: 2786, column: 1, scope: !5987)
!6114 = distinct !DISubprogram(name: "xmlByteConsumed__internal_alias", scope: !3, file: !3, line: 2803, type: !6115, scopeLine: 2803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6600)
!6115 = !DISubroutineType(types: !6116)
!6116 = !{!6117, !6118}
!6117 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!6118 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxtPtr", file: !772, line: 39, baseType: !6119)
!6119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6120, size: 64)
!6120 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxt", file: !772, line: 38, baseType: !6121)
!6121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserCtxt", file: !843, line: 184, size: 6016, elements: !6122)
!6122 = !{!6123, !6439, !6440, !6444, !6445, !6446, !6447, !6448, !6449, !6450, !6451, !6452, !6453, !6455, !6459, !6460, !6461, !6463, !6464, !6482, !6483, !6484, !6485, !6486, !6487, !6488, !6523, !6525, !6526, !6527, !6528, !6529, !6530, !6531, !6532, !6533, !6534, !6535, !6536, !6537, !6538, !6539, !6540, !6541, !6542, !6543, !6544, !6545, !6546, !6547, !6548, !6549, !6550, !6551, !6552, !6553, !6554, !6555, !6559, !6560, !6561, !6562, !6563, !6564, !6565, !6566, !6567, !6568, !6569, !6570, !6572, !6578, !6579, !6580, !6581, !6582, !6583, !6584, !6585, !6589, !6590, !6592, !6593, !6594, !6595, !6596, !6597, !6598, !6599}
!6123 = !DIDerivedType(tag: DW_TAG_member, name: "sax", scope: !6121, file: !843, line: 185, baseType: !6124, size: 64)
!6124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6125, size: 64)
!6125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSAXHandler", file: !843, line: 719, size: 2048, elements: !6126)
!6126 = !{!6127, !6132, !6134, !6136, !6138, !6167, !6295, !6300, !6302, !6315, !6335, !6340, !6357, !6362, !6364, !6370, !6375, !6377, !6382, !6384, !6389, !6391, !6396, !6398, !6400, !6402, !6404, !6406, !6407, !6408, !6413, !6415}
!6127 = !DIDerivedType(tag: DW_TAG_member, name: "internalSubset", scope: !6125, file: !843, line: 720, baseType: !6128, size: 64)
!6128 = !DIDerivedType(tag: DW_TAG_typedef, name: "internalSubsetSAXFunc", file: !843, line: 362, baseType: !6129)
!6129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6130, size: 64)
!6130 = !DISubroutineType(types: !6131)
!6131 = !{null, !905, !940, !940, !940}
!6132 = !DIDerivedType(tag: DW_TAG_member, name: "isStandalone", scope: !6125, file: !843, line: 721, baseType: !6133, size: 64, offset: 64)
!6133 = !DIDerivedType(tag: DW_TAG_typedef, name: "isStandaloneSAXFunc", file: !843, line: 640, baseType: !4880)
!6134 = !DIDerivedType(tag: DW_TAG_member, name: "hasInternalSubset", scope: !6125, file: !843, line: 722, baseType: !6135, size: 64, offset: 128)
!6135 = !DIDerivedType(tag: DW_TAG_typedef, name: "hasInternalSubsetSAXFunc", file: !843, line: 649, baseType: !4880)
!6136 = !DIDerivedType(tag: DW_TAG_member, name: "hasExternalSubset", scope: !6125, file: !843, line: 723, baseType: !6137, size: 64, offset: 192)
!6137 = !DIDerivedType(tag: DW_TAG_typedef, name: "hasExternalSubsetSAXFunc", file: !843, line: 659, baseType: !4880)
!6138 = !DIDerivedType(tag: DW_TAG_member, name: "resolveEntity", scope: !6125, file: !843, line: 724, baseType: !6139, size: 64, offset: 256)
!6139 = !DIDerivedType(tag: DW_TAG_typedef, name: "resolveEntitySAXFunc", file: !843, line: 350, baseType: !6140)
!6140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6141, size: 64)
!6141 = !DISubroutineType(types: !6142)
!6142 = !{!6143, !905, !940, !940}
!6143 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputPtr", file: !772, line: 36, baseType: !6144)
!6144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6145, size: 64)
!6145 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInput", file: !772, line: 35, baseType: !6146)
!6146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserInput", file: !843, line: 54, size: 832, elements: !6147)
!6147 = !{!6148, !6149, !6150, !6151, !6152, !6153, !6154, !6155, !6156, !6157, !6158, !6163, !6164, !6165, !6166}
!6148 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !6146, file: !843, line: 56, baseType: !4866, size: 64)
!6149 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !6146, file: !843, line: 58, baseType: !914, size: 64, offset: 64)
!6150 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !6146, file: !843, line: 59, baseType: !914, size: 64, offset: 128)
!6151 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !6146, file: !843, line: 60, baseType: !940, size: 64, offset: 192)
!6152 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !6146, file: !843, line: 61, baseType: !940, size: 64, offset: 256)
!6153 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !6146, file: !843, line: 62, baseType: !940, size: 64, offset: 320)
!6154 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !6146, file: !843, line: 63, baseType: !7, size: 32, offset: 384)
!6155 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !6146, file: !843, line: 64, baseType: !7, size: 32, offset: 416)
!6156 = !DIDerivedType(tag: DW_TAG_member, name: "col", scope: !6146, file: !843, line: 65, baseType: !7, size: 32, offset: 448)
!6157 = !DIDerivedType(tag: DW_TAG_member, name: "consumed", scope: !6146, file: !843, line: 71, baseType: !4893, size: 64, offset: 512)
!6158 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !6146, file: !843, line: 72, baseType: !6159, size: 64, offset: 576)
!6159 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputDeallocate", file: !843, line: 52, baseType: !6160)
!6160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6161, size: 64)
!6161 = !DISubroutineType(types: !6162)
!6162 = !{null, !4650}
!6163 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !6146, file: !843, line: 73, baseType: !940, size: 64, offset: 640)
!6164 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !6146, file: !843, line: 74, baseType: !940, size: 64, offset: 704)
!6165 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !6146, file: !843, line: 75, baseType: !7, size: 32, offset: 768)
!6166 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !6146, file: !843, line: 76, baseType: !7, size: 32, offset: 800)
!6167 = !DIDerivedType(tag: DW_TAG_member, name: "getEntity", scope: !6125, file: !843, line: 725, baseType: !6168, size: 64, offset: 320)
!6168 = !DIDerivedType(tag: DW_TAG_typedef, name: "getEntitySAXFunc", file: !843, line: 388, baseType: !6169)
!6169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6170, size: 64)
!6170 = !DISubroutineType(types: !6171)
!6171 = !{!6172, !905, !940}
!6172 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEntityPtr", file: !772, line: 49, baseType: !6173)
!6173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6174, size: 64)
!6174 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEntity", file: !772, line: 48, baseType: !6175)
!6175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlEntity", file: !816, line: 38, size: 1088, elements: !6176)
!6176 = !{!6177, !6178, !6180, !6181, !6278, !6279, !6280, !6281, !6282, !6283, !6284, !6285, !6286, !6288, !6289, !6290, !6292, !6293, !6294}
!6177 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !6175, file: !816, line: 39, baseType: !905, size: 64)
!6178 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6175, file: !816, line: 40, baseType: !6179, size: 32, offset: 64)
!6179 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !772, line: 183, baseType: !780)
!6180 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6175, file: !816, line: 41, baseType: !940, size: 64, offset: 128)
!6181 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !6175, file: !816, line: 42, baseType: !6182, size: 64, offset: 192)
!6182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6183, size: 64)
!6183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !772, line: 489, size: 960, elements: !6184)
!6184 = !{!6185, !6186, !6187, !6188, !6189, !6190, !6191, !6192, !6193, !6253, !6256, !6257, !6274, !6275, !6276, !6277}
!6185 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !6183, file: !772, line: 490, baseType: !905, size: 64)
!6186 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6183, file: !772, line: 491, baseType: !6179, size: 32, offset: 64)
!6187 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6183, file: !772, line: 492, baseType: !940, size: 64, offset: 128)
!6188 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !6183, file: !772, line: 493, baseType: !6182, size: 64, offset: 192)
!6189 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !6183, file: !772, line: 494, baseType: !6182, size: 64, offset: 256)
!6190 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !6183, file: !772, line: 495, baseType: !6182, size: 64, offset: 320)
!6191 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6183, file: !772, line: 496, baseType: !6182, size: 64, offset: 384)
!6192 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !6183, file: !772, line: 497, baseType: !6182, size: 64, offset: 448)
!6193 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !6183, file: !772, line: 498, baseType: !6194, size: 64, offset: 512)
!6194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6195, size: 64)
!6195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !772, line: 551, size: 1408, elements: !6196)
!6196 = !{!6197, !6198, !6199, !6200, !6201, !6202, !6203, !6204, !6205, !6206, !6207, !6208, !6228, !6229, !6240, !6241, !6242, !6243, !6244, !6245, !6246, !6250, !6251, !6252}
!6197 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !6195, file: !772, line: 552, baseType: !905, size: 64)
!6198 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6195, file: !772, line: 553, baseType: !6179, size: 32, offset: 64)
!6199 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6195, file: !772, line: 554, baseType: !906, size: 64, offset: 128)
!6200 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !6195, file: !772, line: 555, baseType: !6182, size: 64, offset: 192)
!6201 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !6195, file: !772, line: 556, baseType: !6182, size: 64, offset: 256)
!6202 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !6195, file: !772, line: 557, baseType: !6182, size: 64, offset: 320)
!6203 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6195, file: !772, line: 558, baseType: !6182, size: 64, offset: 384)
!6204 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !6195, file: !772, line: 559, baseType: !6182, size: 64, offset: 448)
!6205 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !6195, file: !772, line: 560, baseType: !6194, size: 64, offset: 512)
!6206 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !6195, file: !772, line: 563, baseType: !7, size: 32, offset: 576)
!6207 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !6195, file: !772, line: 564, baseType: !7, size: 32, offset: 608)
!6208 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !6195, file: !772, line: 570, baseType: !6209, size: 64, offset: 640)
!6209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6210, size: 64)
!6210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !772, line: 406, size: 1024, elements: !6211)
!6211 = !{!6212, !6213, !6214, !6215, !6216, !6217, !6218, !6219, !6220, !6221, !6222, !6223, !6224, !6225, !6226, !6227}
!6212 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !6210, file: !772, line: 407, baseType: !905, size: 64)
!6213 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6210, file: !772, line: 408, baseType: !6179, size: 32, offset: 64)
!6214 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6210, file: !772, line: 409, baseType: !940, size: 64, offset: 128)
!6215 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !6210, file: !772, line: 410, baseType: !6182, size: 64, offset: 192)
!6216 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !6210, file: !772, line: 411, baseType: !6182, size: 64, offset: 256)
!6217 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !6210, file: !772, line: 412, baseType: !6194, size: 64, offset: 320)
!6218 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6210, file: !772, line: 413, baseType: !6182, size: 64, offset: 384)
!6219 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !6210, file: !772, line: 414, baseType: !6182, size: 64, offset: 448)
!6220 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !6210, file: !772, line: 415, baseType: !6194, size: 64, offset: 512)
!6221 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !6210, file: !772, line: 418, baseType: !905, size: 64, offset: 576)
!6222 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !6210, file: !772, line: 419, baseType: !905, size: 64, offset: 640)
!6223 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !6210, file: !772, line: 420, baseType: !905, size: 64, offset: 704)
!6224 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !6210, file: !772, line: 421, baseType: !905, size: 64, offset: 768)
!6225 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !6210, file: !772, line: 422, baseType: !940, size: 64, offset: 832)
!6226 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !6210, file: !772, line: 423, baseType: !940, size: 64, offset: 896)
!6227 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !6210, file: !772, line: 424, baseType: !905, size: 64, offset: 960)
!6228 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !6195, file: !772, line: 571, baseType: !6209, size: 64, offset: 704)
!6229 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !6195, file: !772, line: 572, baseType: !6230, size: 64, offset: 768)
!6230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6231, size: 64)
!6231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !772, line: 389, size: 384, elements: !6232)
!6232 = !{!6233, !6234, !6236, !6237, !6238, !6239}
!6233 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6231, file: !772, line: 390, baseType: !6230, size: 64)
!6234 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6231, file: !772, line: 391, baseType: !6235, size: 32, offset: 64)
!6235 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !772, line: 375, baseType: !6179)
!6236 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !6231, file: !772, line: 392, baseType: !940, size: 64, offset: 128)
!6237 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !6231, file: !772, line: 393, baseType: !940, size: 64, offset: 192)
!6238 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !6231, file: !772, line: 394, baseType: !905, size: 64, offset: 256)
!6239 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !6231, file: !772, line: 395, baseType: !6194, size: 64, offset: 320)
!6240 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !6195, file: !772, line: 573, baseType: !940, size: 64, offset: 832)
!6241 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !6195, file: !772, line: 574, baseType: !940, size: 64, offset: 896)
!6242 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !6195, file: !772, line: 575, baseType: !905, size: 64, offset: 960)
!6243 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !6195, file: !772, line: 576, baseType: !905, size: 64, offset: 1024)
!6244 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !6195, file: !772, line: 577, baseType: !940, size: 64, offset: 1088)
!6245 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !6195, file: !772, line: 578, baseType: !7, size: 32, offset: 1152)
!6246 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !6195, file: !772, line: 580, baseType: !6247, size: 64, offset: 1216)
!6247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6248, size: 64)
!6248 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !6249, line: 24, flags: DIFlagFwdDecl)
!6249 = !DIFile(filename: "./include/libxml/dict.h", directory: "/local-ssd/libxml2-5hiu2bm3eabodlo3ma2tknpx3yddqhyc-build/aidengro/spack-stage-libxml2-2.9.10-5hiu2bm3eabodlo3ma2tknpx3yddqhyc/spack-src", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!6250 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !6195, file: !772, line: 581, baseType: !905, size: 64, offset: 1280)
!6251 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !6195, file: !772, line: 582, baseType: !7, size: 32, offset: 1344)
!6252 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !6195, file: !772, line: 584, baseType: !7, size: 32, offset: 1376)
!6253 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !6183, file: !772, line: 501, baseType: !6254, size: 64, offset: 576)
!6254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6255, size: 64)
!6255 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !772, line: 387, baseType: !6231)
!6256 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !6183, file: !772, line: 502, baseType: !4650, size: 64, offset: 640)
!6257 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !6183, file: !772, line: 503, baseType: !6258, size: 64, offset: 704)
!6258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6259, size: 64)
!6259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !772, line: 434, size: 768, elements: !6260)
!6260 = !{!6261, !6262, !6263, !6264, !6265, !6266, !6267, !6268, !6269, !6270, !6271, !6273}
!6261 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !6259, file: !772, line: 435, baseType: !905, size: 64)
!6262 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6259, file: !772, line: 436, baseType: !6179, size: 32, offset: 64)
!6263 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6259, file: !772, line: 437, baseType: !940, size: 64, offset: 128)
!6264 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !6259, file: !772, line: 438, baseType: !6182, size: 64, offset: 192)
!6265 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !6259, file: !772, line: 439, baseType: !6182, size: 64, offset: 256)
!6266 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !6259, file: !772, line: 440, baseType: !6182, size: 64, offset: 320)
!6267 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6259, file: !772, line: 441, baseType: !6258, size: 64, offset: 384)
!6268 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !6259, file: !772, line: 442, baseType: !6258, size: 64, offset: 448)
!6269 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !6259, file: !772, line: 443, baseType: !6194, size: 64, offset: 512)
!6270 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !6259, file: !772, line: 444, baseType: !6254, size: 64, offset: 576)
!6271 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !6259, file: !772, line: 445, baseType: !6272, size: 32, offset: 640)
!6272 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !772, line: 217, baseType: !803)
!6273 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !6259, file: !772, line: 446, baseType: !905, size: 64, offset: 704)
!6274 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !6183, file: !772, line: 504, baseType: !6254, size: 64, offset: 768)
!6275 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !6183, file: !772, line: 505, baseType: !905, size: 64, offset: 832)
!6276 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !6183, file: !772, line: 506, baseType: !945, size: 16, offset: 896)
!6277 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !6183, file: !772, line: 507, baseType: !945, size: 16, offset: 912)
!6278 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !6175, file: !816, line: 43, baseType: !6182, size: 64, offset: 256)
!6279 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !6175, file: !816, line: 44, baseType: !6209, size: 64, offset: 320)
!6280 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6175, file: !816, line: 45, baseType: !6182, size: 64, offset: 384)
!6281 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !6175, file: !816, line: 46, baseType: !6182, size: 64, offset: 448)
!6282 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !6175, file: !816, line: 47, baseType: !6194, size: 64, offset: 512)
!6283 = !DIDerivedType(tag: DW_TAG_member, name: "orig", scope: !6175, file: !816, line: 49, baseType: !4650, size: 64, offset: 576)
!6284 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !6175, file: !816, line: 50, baseType: !4650, size: 64, offset: 640)
!6285 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !6175, file: !816, line: 51, baseType: !7, size: 32, offset: 704)
!6286 = !DIDerivedType(tag: DW_TAG_member, name: "etype", scope: !6175, file: !816, line: 52, baseType: !6287, size: 32, offset: 736)
!6287 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEntityType", file: !816, line: 31, baseType: !815)
!6288 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !6175, file: !816, line: 53, baseType: !940, size: 64, offset: 768)
!6289 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !6175, file: !816, line: 54, baseType: !940, size: 64, offset: 832)
!6290 = !DIDerivedType(tag: DW_TAG_member, name: "nexte", scope: !6175, file: !816, line: 56, baseType: !6291, size: 64, offset: 896)
!6291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6175, size: 64)
!6292 = !DIDerivedType(tag: DW_TAG_member, name: "URI", scope: !6175, file: !816, line: 57, baseType: !940, size: 64, offset: 960)
!6293 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !6175, file: !816, line: 58, baseType: !7, size: 32, offset: 1024)
!6294 = !DIDerivedType(tag: DW_TAG_member, name: "checked", scope: !6175, file: !816, line: 59, baseType: !7, size: 32, offset: 1056)
!6295 = !DIDerivedType(tag: DW_TAG_member, name: "entityDecl", scope: !6125, file: !843, line: 726, baseType: !6296, size: 64, offset: 384)
!6296 = !DIDerivedType(tag: DW_TAG_typedef, name: "entityDeclSAXFunc", file: !843, line: 412, baseType: !6297)
!6297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6298, size: 64)
!6298 = !DISubroutineType(types: !6299)
!6299 = !{null, !905, !940, !7, !940, !940, !4650}
!6300 = !DIDerivedType(tag: DW_TAG_member, name: "notationDecl", scope: !6125, file: !843, line: 727, baseType: !6301, size: 64, offset: 448)
!6301 = !DIDerivedType(tag: DW_TAG_typedef, name: "notationDeclSAXFunc", file: !843, line: 427, baseType: !6129)
!6302 = !DIDerivedType(tag: DW_TAG_member, name: "attributeDecl", scope: !6125, file: !843, line: 728, baseType: !6303, size: 64, offset: 512)
!6303 = !DIDerivedType(tag: DW_TAG_typedef, name: "attributeDeclSAXFunc", file: !843, line: 443, baseType: !6304)
!6304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6305, size: 64)
!6305 = !DISubroutineType(types: !6306)
!6306 = !{null, !905, !940, !940, !7, !7, !940, !6307}
!6307 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEnumerationPtr", file: !772, line: 239, baseType: !6308)
!6308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6309, size: 64)
!6309 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEnumeration", file: !772, line: 238, baseType: !6310)
!6310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlEnumeration", file: !772, line: 240, size: 128, elements: !6311)
!6311 = !{!6312, !6314}
!6312 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6310, file: !772, line: 241, baseType: !6313, size: 64)
!6313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6310, size: 64)
!6314 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6310, file: !772, line: 242, baseType: !940, size: 64, offset: 64)
!6315 = !DIDerivedType(tag: DW_TAG_member, name: "elementDecl", scope: !6125, file: !843, line: 729, baseType: !6316, size: 64, offset: 576)
!6316 = !DIDerivedType(tag: DW_TAG_typedef, name: "elementDeclSAXFunc", file: !843, line: 459, baseType: !6317)
!6317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6318, size: 64)
!6318 = !DISubroutineType(types: !6319)
!6319 = !{null, !905, !940, !7, !6320}
!6320 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentPtr", file: !772, line: 305, baseType: !6321)
!6321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6322, size: 64)
!6322 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContent", file: !772, line: 304, baseType: !6323)
!6323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlElementContent", file: !772, line: 306, size: 384, elements: !6324)
!6324 = !{!6325, !6327, !6329, !6330, !6332, !6333, !6334}
!6325 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6323, file: !772, line: 307, baseType: !6326, size: 32)
!6326 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentType", file: !772, line: 283, baseType: !824)
!6327 = !DIDerivedType(tag: DW_TAG_member, name: "ocur", scope: !6323, file: !772, line: 308, baseType: !6328, size: 32, offset: 32)
!6328 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentOccur", file: !772, line: 295, baseType: !830)
!6329 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6323, file: !772, line: 309, baseType: !940, size: 64, offset: 64)
!6330 = !DIDerivedType(tag: DW_TAG_member, name: "c1", scope: !6323, file: !772, line: 310, baseType: !6331, size: 64, offset: 128)
!6331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6323, size: 64)
!6332 = !DIDerivedType(tag: DW_TAG_member, name: "c2", scope: !6323, file: !772, line: 311, baseType: !6331, size: 64, offset: 192)
!6333 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !6323, file: !772, line: 312, baseType: !6331, size: 64, offset: 256)
!6334 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !6323, file: !772, line: 313, baseType: !940, size: 64, offset: 320)
!6335 = !DIDerivedType(tag: DW_TAG_member, name: "unparsedEntityDecl", scope: !6125, file: !843, line: 730, baseType: !6336, size: 64, offset: 640)
!6336 = !DIDerivedType(tag: DW_TAG_typedef, name: "unparsedEntityDeclSAXFunc", file: !843, line: 473, baseType: !6337)
!6337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6338, size: 64)
!6338 = !DISubroutineType(types: !6339)
!6339 = !{null, !905, !940, !940, !940, !940}
!6340 = !DIDerivedType(tag: DW_TAG_member, name: "setDocumentLocator", scope: !6125, file: !843, line: 731, baseType: !6341, size: 64, offset: 704)
!6341 = !DIDerivedType(tag: DW_TAG_typedef, name: "setDocumentLocatorSAXFunc", file: !843, line: 486, baseType: !6342)
!6342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6343, size: 64)
!6343 = !DISubroutineType(types: !6344)
!6344 = !{null, !905, !6345}
!6345 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSAXLocatorPtr", file: !772, line: 42, baseType: !6346)
!6346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6347, size: 64)
!6347 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSAXLocator", file: !772, line: 41, baseType: !6348)
!6348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSAXLocator", file: !843, line: 321, size: 256, elements: !6349)
!6349 = !{!6350, !6354, !6355, !6356}
!6350 = !DIDerivedType(tag: DW_TAG_member, name: "getPublicId", scope: !6348, file: !843, line: 322, baseType: !6351, size: 64)
!6351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6352, size: 64)
!6352 = !DISubroutineType(types: !6353)
!6353 = !{!940, !905}
!6354 = !DIDerivedType(tag: DW_TAG_member, name: "getSystemId", scope: !6348, file: !843, line: 323, baseType: !6351, size: 64, offset: 64)
!6355 = !DIDerivedType(tag: DW_TAG_member, name: "getLineNumber", scope: !6348, file: !843, line: 324, baseType: !4880, size: 64, offset: 128)
!6356 = !DIDerivedType(tag: DW_TAG_member, name: "getColumnNumber", scope: !6348, file: !843, line: 325, baseType: !4880, size: 64, offset: 192)
!6357 = !DIDerivedType(tag: DW_TAG_member, name: "startDocument", scope: !6125, file: !843, line: 732, baseType: !6358, size: 64, offset: 768)
!6358 = !DIDerivedType(tag: DW_TAG_typedef, name: "startDocumentSAXFunc", file: !843, line: 494, baseType: !6359)
!6359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6360, size: 64)
!6360 = !DISubroutineType(types: !6361)
!6361 = !{null, !905}
!6362 = !DIDerivedType(tag: DW_TAG_member, name: "endDocument", scope: !6125, file: !843, line: 733, baseType: !6363, size: 64, offset: 832)
!6363 = !DIDerivedType(tag: DW_TAG_typedef, name: "endDocumentSAXFunc", file: !843, line: 501, baseType: !6359)
!6364 = !DIDerivedType(tag: DW_TAG_member, name: "startElement", scope: !6125, file: !843, line: 734, baseType: !6365, size: 64, offset: 896)
!6365 = !DIDerivedType(tag: DW_TAG_typedef, name: "startElementSAXFunc", file: !843, line: 510, baseType: !6366)
!6366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6367, size: 64)
!6367 = !DISubroutineType(types: !6368)
!6368 = !{null, !905, !940, !6369}
!6369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!6370 = !DIDerivedType(tag: DW_TAG_member, name: "endElement", scope: !6125, file: !843, line: 735, baseType: !6371, size: 64, offset: 960)
!6371 = !DIDerivedType(tag: DW_TAG_typedef, name: "endElementSAXFunc", file: !843, line: 520, baseType: !6372)
!6372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6373, size: 64)
!6373 = !DISubroutineType(types: !6374)
!6374 = !{null, !905, !940}
!6375 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !6125, file: !843, line: 736, baseType: !6376, size: 64, offset: 1024)
!6376 = !DIDerivedType(tag: DW_TAG_typedef, name: "referenceSAXFunc", file: !843, line: 543, baseType: !6372)
!6377 = !DIDerivedType(tag: DW_TAG_member, name: "characters", scope: !6125, file: !843, line: 737, baseType: !6378, size: 64, offset: 1088)
!6378 = !DIDerivedType(tag: DW_TAG_typedef, name: "charactersSAXFunc", file: !843, line: 553, baseType: !6379)
!6379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6380, size: 64)
!6380 = !DISubroutineType(types: !6381)
!6381 = !{null, !905, !940, !7}
!6382 = !DIDerivedType(tag: DW_TAG_member, name: "ignorableWhitespace", scope: !6125, file: !843, line: 738, baseType: !6383, size: 64, offset: 1152)
!6383 = !DIDerivedType(tag: DW_TAG_typedef, name: "ignorableWhitespaceSAXFunc", file: !843, line: 565, baseType: !6379)
!6384 = !DIDerivedType(tag: DW_TAG_member, name: "processingInstruction", scope: !6125, file: !843, line: 739, baseType: !6385, size: 64, offset: 1216)
!6385 = !DIDerivedType(tag: DW_TAG_typedef, name: "processingInstructionSAXFunc", file: !843, line: 576, baseType: !6386)
!6386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6387, size: 64)
!6387 = !DISubroutineType(types: !6388)
!6388 = !{null, !905, !940, !940}
!6389 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !6125, file: !843, line: 740, baseType: !6390, size: 64, offset: 1280)
!6390 = !DIDerivedType(tag: DW_TAG_typedef, name: "commentSAXFunc", file: !843, line: 586, baseType: !6372)
!6391 = !DIDerivedType(tag: DW_TAG_member, name: "warning", scope: !6125, file: !843, line: 741, baseType: !6392, size: 64, offset: 1344)
!6392 = !DIDerivedType(tag: DW_TAG_typedef, name: "warningSAXFunc", file: !843, line: 608, baseType: !6393)
!6393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6394, size: 64)
!6394 = !DISubroutineType(types: !6395)
!6395 = !{null, !905, !914, null}
!6396 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !6125, file: !843, line: 742, baseType: !6397, size: 64, offset: 1408)
!6397 = !DIDerivedType(tag: DW_TAG_typedef, name: "errorSAXFunc", file: !843, line: 618, baseType: !6393)
!6398 = !DIDerivedType(tag: DW_TAG_member, name: "fatalError", scope: !6125, file: !843, line: 743, baseType: !6399, size: 64, offset: 1472)
!6399 = !DIDerivedType(tag: DW_TAG_typedef, name: "fatalErrorSAXFunc", file: !843, line: 630, baseType: !6393)
!6400 = !DIDerivedType(tag: DW_TAG_member, name: "getParameterEntity", scope: !6125, file: !843, line: 744, baseType: !6401, size: 64, offset: 1536)
!6401 = !DIDerivedType(tag: DW_TAG_typedef, name: "getParameterEntitySAXFunc", file: !843, line: 399, baseType: !6169)
!6402 = !DIDerivedType(tag: DW_TAG_member, name: "cdataBlock", scope: !6125, file: !843, line: 745, baseType: !6403, size: 64, offset: 1600)
!6403 = !DIDerivedType(tag: DW_TAG_typedef, name: "cdataBlockSAXFunc", file: !843, line: 596, baseType: !6379)
!6404 = !DIDerivedType(tag: DW_TAG_member, name: "externalSubset", scope: !6125, file: !843, line: 746, baseType: !6405, size: 64, offset: 1664)
!6405 = !DIDerivedType(tag: DW_TAG_typedef, name: "externalSubsetSAXFunc", file: !843, line: 375, baseType: !6129)
!6406 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !6125, file: !843, line: 747, baseType: !35, size: 32, offset: 1728)
!6407 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !6125, file: !843, line: 749, baseType: !905, size: 64, offset: 1792)
!6408 = !DIDerivedType(tag: DW_TAG_member, name: "startElementNs", scope: !6125, file: !843, line: 750, baseType: !6409, size: 64, offset: 1856)
!6409 = !DIDerivedType(tag: DW_TAG_typedef, name: "startElementNsSAX2Func", file: !843, line: 692, baseType: !6410)
!6410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6411, size: 64)
!6411 = !DISubroutineType(types: !6412)
!6412 = !{null, !905, !940, !940, !940, !7, !6369, !7, !7, !6369}
!6413 = !DIDerivedType(tag: DW_TAG_member, name: "endElementNs", scope: !6125, file: !843, line: 751, baseType: !6414, size: 64, offset: 1920)
!6414 = !DIDerivedType(tag: DW_TAG_typedef, name: "endElementNsSAX2Func", file: !843, line: 713, baseType: !6129)
!6415 = !DIDerivedType(tag: DW_TAG_member, name: "serror", scope: !6125, file: !843, line: 752, baseType: !6416, size: 64, offset: 1984)
!6416 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlStructuredErrorFunc", file: !34, line: 856, baseType: !6417)
!6417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6418, size: 64)
!6418 = !DISubroutineType(types: !6419)
!6419 = !{null, !905, !6420}
!6420 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlErrorPtr", file: !34, line: 77, baseType: !6421)
!6421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6422, size: 64)
!6422 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlError", file: !34, line: 76, baseType: !6423)
!6423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlError", file: !34, line: 78, size: 704, elements: !6424)
!6424 = !{!6425, !6426, !6427, !6428, !6430, !6431, !6432, !6433, !6434, !6435, !6436, !6437, !6438}
!6425 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !6423, file: !34, line: 79, baseType: !7, size: 32)
!6426 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !6423, file: !34, line: 80, baseType: !7, size: 32, offset: 32)
!6427 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !6423, file: !34, line: 81, baseType: !906, size: 64, offset: 64)
!6428 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !6423, file: !34, line: 82, baseType: !6429, size: 32, offset: 128)
!6429 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlErrorLevel", file: !34, line: 29, baseType: !836)
!6430 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !6423, file: !34, line: 83, baseType: !906, size: 64, offset: 192)
!6431 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !6423, file: !34, line: 84, baseType: !7, size: 32, offset: 256)
!6432 = !DIDerivedType(tag: DW_TAG_member, name: "str1", scope: !6423, file: !34, line: 85, baseType: !906, size: 64, offset: 320)
!6433 = !DIDerivedType(tag: DW_TAG_member, name: "str2", scope: !6423, file: !34, line: 86, baseType: !906, size: 64, offset: 384)
!6434 = !DIDerivedType(tag: DW_TAG_member, name: "str3", scope: !6423, file: !34, line: 87, baseType: !906, size: 64, offset: 448)
!6435 = !DIDerivedType(tag: DW_TAG_member, name: "int1", scope: !6423, file: !34, line: 88, baseType: !7, size: 32, offset: 512)
!6436 = !DIDerivedType(tag: DW_TAG_member, name: "int2", scope: !6423, file: !34, line: 89, baseType: !7, size: 32, offset: 544)
!6437 = !DIDerivedType(tag: DW_TAG_member, name: "ctxt", scope: !6423, file: !34, line: 90, baseType: !905, size: 64, offset: 576)
!6438 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !6423, file: !34, line: 91, baseType: !905, size: 64, offset: 640)
!6439 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !6121, file: !843, line: 186, baseType: !905, size: 64, offset: 64)
!6440 = !DIDerivedType(tag: DW_TAG_member, name: "myDoc", scope: !6121, file: !843, line: 187, baseType: !6441, size: 64, offset: 128)
!6441 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !772, line: 550, baseType: !6442)
!6442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6443, size: 64)
!6443 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !772, line: 549, baseType: !6195)
!6444 = !DIDerivedType(tag: DW_TAG_member, name: "wellFormed", scope: !6121, file: !843, line: 188, baseType: !7, size: 32, offset: 192)
!6445 = !DIDerivedType(tag: DW_TAG_member, name: "replaceEntities", scope: !6121, file: !843, line: 189, baseType: !7, size: 32, offset: 224)
!6446 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !6121, file: !843, line: 190, baseType: !940, size: 64, offset: 256)
!6447 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !6121, file: !843, line: 191, baseType: !940, size: 64, offset: 320)
!6448 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !6121, file: !843, line: 192, baseType: !7, size: 32, offset: 384)
!6449 = !DIDerivedType(tag: DW_TAG_member, name: "html", scope: !6121, file: !843, line: 193, baseType: !7, size: 32, offset: 416)
!6450 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !6121, file: !843, line: 199, baseType: !6143, size: 64, offset: 448)
!6451 = !DIDerivedType(tag: DW_TAG_member, name: "inputNr", scope: !6121, file: !843, line: 200, baseType: !7, size: 32, offset: 512)
!6452 = !DIDerivedType(tag: DW_TAG_member, name: "inputMax", scope: !6121, file: !843, line: 201, baseType: !7, size: 32, offset: 544)
!6453 = !DIDerivedType(tag: DW_TAG_member, name: "inputTab", scope: !6121, file: !843, line: 202, baseType: !6454, size: 64, offset: 576)
!6454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6143, size: 64)
!6455 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !6121, file: !843, line: 205, baseType: !6456, size: 64, offset: 640)
!6456 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !772, line: 488, baseType: !6457)
!6457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6458, size: 64)
!6458 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !772, line: 487, baseType: !6183)
!6459 = !DIDerivedType(tag: DW_TAG_member, name: "nodeNr", scope: !6121, file: !843, line: 206, baseType: !7, size: 32, offset: 704)
!6460 = !DIDerivedType(tag: DW_TAG_member, name: "nodeMax", scope: !6121, file: !843, line: 207, baseType: !7, size: 32, offset: 736)
!6461 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !6121, file: !843, line: 208, baseType: !6462, size: 64, offset: 768)
!6462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6456, size: 64)
!6463 = !DIDerivedType(tag: DW_TAG_member, name: "record_info", scope: !6121, file: !843, line: 210, baseType: !7, size: 32, offset: 832)
!6464 = !DIDerivedType(tag: DW_TAG_member, name: "node_seq", scope: !6121, file: !843, line: 211, baseType: !6465, size: 192, offset: 896)
!6465 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserNodeInfoSeq", file: !843, line: 98, baseType: !6466)
!6466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserNodeInfoSeq", file: !843, line: 100, size: 192, elements: !6467)
!6467 = !{!6468, !6469, !6470}
!6468 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !6466, file: !843, line: 101, baseType: !4893, size: 64)
!6469 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !6466, file: !843, line: 102, baseType: !4893, size: 64, offset: 64)
!6470 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !6466, file: !843, line: 103, baseType: !6471, size: 64, offset: 128)
!6471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6472, size: 64)
!6472 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserNodeInfo", file: !843, line: 86, baseType: !6473)
!6473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserNodeInfo", file: !843, line: 89, size: 320, elements: !6474)
!6474 = !{!6475, !6478, !6479, !6480, !6481}
!6475 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !6473, file: !843, line: 90, baseType: !6476, size: 64)
!6476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6477, size: 64)
!6477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6183)
!6478 = !DIDerivedType(tag: DW_TAG_member, name: "begin_pos", scope: !6473, file: !843, line: 92, baseType: !4893, size: 64, offset: 64)
!6479 = !DIDerivedType(tag: DW_TAG_member, name: "begin_line", scope: !6473, file: !843, line: 93, baseType: !4893, size: 64, offset: 128)
!6480 = !DIDerivedType(tag: DW_TAG_member, name: "end_pos", scope: !6473, file: !843, line: 94, baseType: !4893, size: 64, offset: 192)
!6481 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !6473, file: !843, line: 95, baseType: !4893, size: 64, offset: 256)
!6482 = !DIDerivedType(tag: DW_TAG_member, name: "errNo", scope: !6121, file: !843, line: 213, baseType: !7, size: 32, offset: 1088)
!6483 = !DIDerivedType(tag: DW_TAG_member, name: "hasExternalSubset", scope: !6121, file: !843, line: 215, baseType: !7, size: 32, offset: 1120)
!6484 = !DIDerivedType(tag: DW_TAG_member, name: "hasPErefs", scope: !6121, file: !843, line: 216, baseType: !7, size: 32, offset: 1152)
!6485 = !DIDerivedType(tag: DW_TAG_member, name: "external", scope: !6121, file: !843, line: 217, baseType: !7, size: 32, offset: 1184)
!6486 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !6121, file: !843, line: 219, baseType: !7, size: 32, offset: 1216)
!6487 = !DIDerivedType(tag: DW_TAG_member, name: "validate", scope: !6121, file: !843, line: 220, baseType: !7, size: 32, offset: 1248)
!6488 = !DIDerivedType(tag: DW_TAG_member, name: "vctxt", scope: !6121, file: !843, line: 221, baseType: !6489, size: 896, offset: 1280)
!6489 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlValidCtxt", file: !6490, line: 80, baseType: !6491)
!6490 = !DIFile(filename: "./include/libxml/valid.h", directory: "/local-ssd/libxml2-5hiu2bm3eabodlo3ma2tknpx3yddqhyc-build/aidengro/spack-stage-libxml2-2.9.10-5hiu2bm3eabodlo3ma2tknpx3yddqhyc/spack-src", checksumkind: CSK_MD5, checksum: "3c082c0a5b81e1bc9fd9a21b69014584")
!6491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlValidCtxt", file: !6490, line: 82, size: 896, elements: !6492)
!6492 = !{!6493, !6494, !6496, !6498, !6499, !6500, !6501, !6502, !6503, !6504, !6505, !6509, !6510, !6511, !6512, !6518}
!6493 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !6491, file: !6490, line: 83, baseType: !905, size: 64)
!6494 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !6491, file: !6490, line: 84, baseType: !6495, size: 64, offset: 64)
!6495 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlValidityErrorFunc", file: !6490, line: 42, baseType: !6393)
!6496 = !DIDerivedType(tag: DW_TAG_member, name: "warning", scope: !6491, file: !6490, line: 85, baseType: !6497, size: 64, offset: 128)
!6497 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlValidityWarningFunc", file: !6490, line: 57, baseType: !6393)
!6498 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !6491, file: !6490, line: 88, baseType: !6456, size: 64, offset: 192)
!6499 = !DIDerivedType(tag: DW_TAG_member, name: "nodeNr", scope: !6491, file: !6490, line: 89, baseType: !7, size: 32, offset: 256)
!6500 = !DIDerivedType(tag: DW_TAG_member, name: "nodeMax", scope: !6491, file: !6490, line: 90, baseType: !7, size: 32, offset: 288)
!6501 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !6491, file: !6490, line: 91, baseType: !6462, size: 64, offset: 320)
!6502 = !DIDerivedType(tag: DW_TAG_member, name: "finishDtd", scope: !6491, file: !6490, line: 93, baseType: !35, size: 32, offset: 384)
!6503 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !6491, file: !6490, line: 94, baseType: !6441, size: 64, offset: 448)
!6504 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !6491, file: !6490, line: 95, baseType: !7, size: 32, offset: 512)
!6505 = !DIDerivedType(tag: DW_TAG_member, name: "vstate", scope: !6491, file: !6490, line: 98, baseType: !6506, size: 64, offset: 576)
!6506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6507, size: 64)
!6507 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlValidState", file: !6490, line: 28, baseType: !6508)
!6508 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlValidState", file: !6490, line: 28, flags: DIFlagFwdDecl)
!6509 = !DIDerivedType(tag: DW_TAG_member, name: "vstateNr", scope: !6491, file: !6490, line: 99, baseType: !7, size: 32, offset: 640)
!6510 = !DIDerivedType(tag: DW_TAG_member, name: "vstateMax", scope: !6491, file: !6490, line: 100, baseType: !7, size: 32, offset: 672)
!6511 = !DIDerivedType(tag: DW_TAG_member, name: "vstateTab", scope: !6491, file: !6490, line: 101, baseType: !6506, size: 64, offset: 704)
!6512 = !DIDerivedType(tag: DW_TAG_member, name: "am", scope: !6491, file: !6490, line: 104, baseType: !6513, size: 64, offset: 768)
!6513 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAutomataPtr", file: !6514, line: 30, baseType: !6515)
!6514 = !DIFile(filename: "./include/libxml/xmlautomata.h", directory: "/local-ssd/libxml2-5hiu2bm3eabodlo3ma2tknpx3yddqhyc-build/aidengro/spack-stage-libxml2-2.9.10-5hiu2bm3eabodlo3ma2tknpx3yddqhyc/spack-src", checksumkind: CSK_MD5, checksum: "3c3c0a7d353bacfbede7c2decf27e62a")
!6515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6516, size: 64)
!6516 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAutomata", file: !6514, line: 29, baseType: !6517)
!6517 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAutomata", file: !6514, line: 29, flags: DIFlagFwdDecl)
!6518 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !6491, file: !6490, line: 105, baseType: !6519, size: 64, offset: 832)
!6519 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAutomataStatePtr", file: !6514, line: 38, baseType: !6520)
!6520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6521, size: 64)
!6521 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAutomataState", file: !6514, line: 37, baseType: !6522)
!6522 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAutomataState", file: !6514, line: 37, flags: DIFlagFwdDecl)
!6523 = !DIDerivedType(tag: DW_TAG_member, name: "instate", scope: !6121, file: !843, line: 223, baseType: !6524, size: 32, offset: 2176)
!6524 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputState", file: !843, line: 131, baseType: !842)
!6525 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !6121, file: !843, line: 224, baseType: !7, size: 32, offset: 2208)
!6526 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !6121, file: !843, line: 226, baseType: !906, size: 64, offset: 2240)
!6527 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6121, file: !843, line: 229, baseType: !940, size: 64, offset: 2304)
!6528 = !DIDerivedType(tag: DW_TAG_member, name: "nameNr", scope: !6121, file: !843, line: 230, baseType: !7, size: 32, offset: 2368)
!6529 = !DIDerivedType(tag: DW_TAG_member, name: "nameMax", scope: !6121, file: !843, line: 231, baseType: !7, size: 32, offset: 2400)
!6530 = !DIDerivedType(tag: DW_TAG_member, name: "nameTab", scope: !6121, file: !843, line: 232, baseType: !6369, size: 64, offset: 2432)
!6531 = !DIDerivedType(tag: DW_TAG_member, name: "nbChars", scope: !6121, file: !843, line: 234, baseType: !6117, size: 64, offset: 2496)
!6532 = !DIDerivedType(tag: DW_TAG_member, name: "checkIndex", scope: !6121, file: !843, line: 235, baseType: !6117, size: 64, offset: 2560)
!6533 = !DIDerivedType(tag: DW_TAG_member, name: "keepBlanks", scope: !6121, file: !843, line: 236, baseType: !7, size: 32, offset: 2624)
!6534 = !DIDerivedType(tag: DW_TAG_member, name: "disableSAX", scope: !6121, file: !843, line: 237, baseType: !7, size: 32, offset: 2656)
!6535 = !DIDerivedType(tag: DW_TAG_member, name: "inSubset", scope: !6121, file: !843, line: 238, baseType: !7, size: 32, offset: 2688)
!6536 = !DIDerivedType(tag: DW_TAG_member, name: "intSubName", scope: !6121, file: !843, line: 239, baseType: !940, size: 64, offset: 2752)
!6537 = !DIDerivedType(tag: DW_TAG_member, name: "extSubURI", scope: !6121, file: !843, line: 240, baseType: !4650, size: 64, offset: 2816)
!6538 = !DIDerivedType(tag: DW_TAG_member, name: "extSubSystem", scope: !6121, file: !843, line: 241, baseType: !4650, size: 64, offset: 2880)
!6539 = !DIDerivedType(tag: DW_TAG_member, name: "space", scope: !6121, file: !843, line: 244, baseType: !930, size: 64, offset: 2944)
!6540 = !DIDerivedType(tag: DW_TAG_member, name: "spaceNr", scope: !6121, file: !843, line: 245, baseType: !7, size: 32, offset: 3008)
!6541 = !DIDerivedType(tag: DW_TAG_member, name: "spaceMax", scope: !6121, file: !843, line: 246, baseType: !7, size: 32, offset: 3040)
!6542 = !DIDerivedType(tag: DW_TAG_member, name: "spaceTab", scope: !6121, file: !843, line: 247, baseType: !930, size: 64, offset: 3072)
!6543 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !6121, file: !843, line: 249, baseType: !7, size: 32, offset: 3136)
!6544 = !DIDerivedType(tag: DW_TAG_member, name: "entity", scope: !6121, file: !843, line: 250, baseType: !6143, size: 64, offset: 3200)
!6545 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !6121, file: !843, line: 251, baseType: !7, size: 32, offset: 3264)
!6546 = !DIDerivedType(tag: DW_TAG_member, name: "nodelen", scope: !6121, file: !843, line: 253, baseType: !7, size: 32, offset: 3296)
!6547 = !DIDerivedType(tag: DW_TAG_member, name: "nodemem", scope: !6121, file: !843, line: 254, baseType: !7, size: 32, offset: 3328)
!6548 = !DIDerivedType(tag: DW_TAG_member, name: "pedantic", scope: !6121, file: !843, line: 255, baseType: !7, size: 32, offset: 3360)
!6549 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !6121, file: !843, line: 256, baseType: !905, size: 64, offset: 3392)
!6550 = !DIDerivedType(tag: DW_TAG_member, name: "loadsubset", scope: !6121, file: !843, line: 258, baseType: !7, size: 32, offset: 3456)
!6551 = !DIDerivedType(tag: DW_TAG_member, name: "linenumbers", scope: !6121, file: !843, line: 259, baseType: !7, size: 32, offset: 3488)
!6552 = !DIDerivedType(tag: DW_TAG_member, name: "catalogs", scope: !6121, file: !843, line: 260, baseType: !905, size: 64, offset: 3520)
!6553 = !DIDerivedType(tag: DW_TAG_member, name: "recovery", scope: !6121, file: !843, line: 261, baseType: !7, size: 32, offset: 3584)
!6554 = !DIDerivedType(tag: DW_TAG_member, name: "progressive", scope: !6121, file: !843, line: 262, baseType: !7, size: 32, offset: 3616)
!6555 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !6121, file: !843, line: 263, baseType: !6556, size: 64, offset: 3648)
!6556 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDictPtr", file: !6249, line: 25, baseType: !6557)
!6557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6558, size: 64)
!6558 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !6249, line: 24, baseType: !6248)
!6559 = !DIDerivedType(tag: DW_TAG_member, name: "atts", scope: !6121, file: !843, line: 264, baseType: !6369, size: 64, offset: 3712)
!6560 = !DIDerivedType(tag: DW_TAG_member, name: "maxatts", scope: !6121, file: !843, line: 265, baseType: !7, size: 32, offset: 3776)
!6561 = !DIDerivedType(tag: DW_TAG_member, name: "docdict", scope: !6121, file: !843, line: 266, baseType: !7, size: 32, offset: 3808)
!6562 = !DIDerivedType(tag: DW_TAG_member, name: "str_xml", scope: !6121, file: !843, line: 271, baseType: !940, size: 64, offset: 3840)
!6563 = !DIDerivedType(tag: DW_TAG_member, name: "str_xmlns", scope: !6121, file: !843, line: 272, baseType: !940, size: 64, offset: 3904)
!6564 = !DIDerivedType(tag: DW_TAG_member, name: "str_xml_ns", scope: !6121, file: !843, line: 273, baseType: !940, size: 64, offset: 3968)
!6565 = !DIDerivedType(tag: DW_TAG_member, name: "sax2", scope: !6121, file: !843, line: 278, baseType: !7, size: 32, offset: 4032)
!6566 = !DIDerivedType(tag: DW_TAG_member, name: "nsNr", scope: !6121, file: !843, line: 279, baseType: !7, size: 32, offset: 4064)
!6567 = !DIDerivedType(tag: DW_TAG_member, name: "nsMax", scope: !6121, file: !843, line: 280, baseType: !7, size: 32, offset: 4096)
!6568 = !DIDerivedType(tag: DW_TAG_member, name: "nsTab", scope: !6121, file: !843, line: 281, baseType: !6369, size: 64, offset: 4160)
!6569 = !DIDerivedType(tag: DW_TAG_member, name: "attallocs", scope: !6121, file: !843, line: 282, baseType: !930, size: 64, offset: 4224)
!6570 = !DIDerivedType(tag: DW_TAG_member, name: "pushTab", scope: !6121, file: !843, line: 283, baseType: !6571, size: 64, offset: 4288)
!6571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!6572 = !DIDerivedType(tag: DW_TAG_member, name: "attsDefault", scope: !6121, file: !843, line: 284, baseType: !6573, size: 64, offset: 4352)
!6573 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTablePtr", file: !6574, line: 22, baseType: !6575)
!6574 = !DIFile(filename: "./include/libxml/hash.h", directory: "/local-ssd/libxml2-5hiu2bm3eabodlo3ma2tknpx3yddqhyc-build/aidengro/spack-stage-libxml2-2.9.10-5hiu2bm3eabodlo3ma2tknpx3yddqhyc/spack-src", checksumkind: CSK_MD5, checksum: "af6927d60ab5a971b68a65626d903bb2")
!6575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6576, size: 64)
!6576 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTable", file: !6574, line: 21, baseType: !6577)
!6577 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashTable", file: !6574, line: 21, flags: DIFlagFwdDecl)
!6578 = !DIDerivedType(tag: DW_TAG_member, name: "attsSpecial", scope: !6121, file: !843, line: 285, baseType: !6573, size: 64, offset: 4416)
!6579 = !DIDerivedType(tag: DW_TAG_member, name: "nsWellFormed", scope: !6121, file: !843, line: 286, baseType: !7, size: 32, offset: 4480)
!6580 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !6121, file: !843, line: 287, baseType: !7, size: 32, offset: 4512)
!6581 = !DIDerivedType(tag: DW_TAG_member, name: "dictNames", scope: !6121, file: !843, line: 292, baseType: !7, size: 32, offset: 4544)
!6582 = !DIDerivedType(tag: DW_TAG_member, name: "freeElemsNr", scope: !6121, file: !843, line: 293, baseType: !7, size: 32, offset: 4576)
!6583 = !DIDerivedType(tag: DW_TAG_member, name: "freeElems", scope: !6121, file: !843, line: 294, baseType: !6456, size: 64, offset: 4608)
!6584 = !DIDerivedType(tag: DW_TAG_member, name: "freeAttrsNr", scope: !6121, file: !843, line: 295, baseType: !7, size: 32, offset: 4672)
!6585 = !DIDerivedType(tag: DW_TAG_member, name: "freeAttrs", scope: !6121, file: !843, line: 296, baseType: !6586, size: 64, offset: 4736)
!6586 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttrPtr", file: !772, line: 433, baseType: !6587)
!6587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6588, size: 64)
!6588 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttr", file: !772, line: 432, baseType: !6259)
!6589 = !DIDerivedType(tag: DW_TAG_member, name: "lastError", scope: !6121, file: !843, line: 301, baseType: !6422, size: 704, offset: 4800)
!6590 = !DIDerivedType(tag: DW_TAG_member, name: "parseMode", scope: !6121, file: !843, line: 302, baseType: !6591, size: 32, offset: 5504)
!6591 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserMode", file: !843, line: 170, baseType: !863)
!6592 = !DIDerivedType(tag: DW_TAG_member, name: "nbentities", scope: !6121, file: !843, line: 303, baseType: !4893, size: 64, offset: 5568)
!6593 = !DIDerivedType(tag: DW_TAG_member, name: "sizeentities", scope: !6121, file: !843, line: 304, baseType: !4893, size: 64, offset: 5632)
!6594 = !DIDerivedType(tag: DW_TAG_member, name: "nodeInfo", scope: !6121, file: !843, line: 307, baseType: !6471, size: 64, offset: 5696)
!6595 = !DIDerivedType(tag: DW_TAG_member, name: "nodeInfoNr", scope: !6121, file: !843, line: 308, baseType: !7, size: 32, offset: 5760)
!6596 = !DIDerivedType(tag: DW_TAG_member, name: "nodeInfoMax", scope: !6121, file: !843, line: 309, baseType: !7, size: 32, offset: 5792)
!6597 = !DIDerivedType(tag: DW_TAG_member, name: "nodeInfoTab", scope: !6121, file: !843, line: 310, baseType: !6471, size: 64, offset: 5824)
!6598 = !DIDerivedType(tag: DW_TAG_member, name: "input_id", scope: !6121, file: !843, line: 312, baseType: !7, size: 32, offset: 5888)
!6599 = !DIDerivedType(tag: DW_TAG_member, name: "sizeentcopy", scope: !6121, file: !843, line: 313, baseType: !4893, size: 64, offset: 5952)
!6600 = !{!6601, !6602, !6603, !6606, !6607, !6613, !6614, !6615, !6616}
!6601 = !DILocalVariable(name: "ctxt", arg: 1, scope: !6114, file: !3, line: 2803, type: !6118)
!6602 = !DILocalVariable(name: "in", scope: !6114, file: !3, line: 2804, type: !6143)
!6603 = !DILocalVariable(name: "unused", scope: !6604, file: !3, line: 2810, type: !35)
!6604 = distinct !DILexicalBlock(scope: !6605, file: !3, line: 2809, column: 58)
!6605 = distinct !DILexicalBlock(scope: !6114, file: !3, line: 2809, column: 9)
!6606 = !DILocalVariable(name: "handler", scope: !6604, file: !3, line: 2811, type: !918)
!6607 = !DILocalVariable(name: "convbuf", scope: !6608, file: !3, line: 2818, type: !6610)
!6608 = distinct !DILexicalBlock(scope: !6609, file: !3, line: 2817, column: 36)
!6609 = distinct !DILexicalBlock(scope: !6604, file: !3, line: 2817, column: 13)
!6610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !929, size: 256000, elements: !6611)
!6611 = !{!6612}
!6612 = !DISubrange(count: 32000)
!6613 = !DILocalVariable(name: "cur", scope: !6608, file: !3, line: 2819, type: !931)
!6614 = !DILocalVariable(name: "toconv", scope: !6608, file: !3, line: 2820, type: !7)
!6615 = !DILocalVariable(name: "written", scope: !6608, file: !3, line: 2820, type: !7)
!6616 = !DILocalVariable(name: "ret", scope: !6608, file: !3, line: 2822, type: !7)
!6617 = !DILocation(line: 2803, column: 34, scope: !6114)
!6618 = !DILocation(line: 2804, column: 5, scope: !6114)
!6619 = !DILocation(line: 2804, column: 23, scope: !6114)
!6620 = !DILocation(line: 2806, column: 9, scope: !6621)
!6621 = distinct !DILexicalBlock(scope: !6114, file: !3, line: 2806, column: 9)
!6622 = !DILocation(line: 2806, column: 14, scope: !6621)
!6623 = !DILocation(line: 2806, column: 9, scope: !6114)
!6624 = !DILocation(line: 2806, column: 23, scope: !6621)
!6625 = !DILocation(line: 2807, column: 10, scope: !6114)
!6626 = !DILocation(line: 2807, column: 16, scope: !6114)
!6627 = !{!6628, !1149, i64 56}
!6628 = !{!"_xmlParserCtxt", !1149, i64 0, !1149, i64 8, !1149, i64 16, !1186, i64 24, !1186, i64 28, !1149, i64 32, !1149, i64 40, !1186, i64 48, !1186, i64 52, !1149, i64 56, !1186, i64 64, !1186, i64 68, !1149, i64 72, !1149, i64 80, !1186, i64 88, !1186, i64 92, !1149, i64 96, !1186, i64 104, !6629, i64 112, !1186, i64 136, !1186, i64 140, !1186, i64 144, !1186, i64 148, !1186, i64 152, !1186, i64 156, !6630, i64 160, !1150, i64 272, !1186, i64 276, !1149, i64 280, !1149, i64 288, !1186, i64 296, !1186, i64 300, !1149, i64 304, !4937, i64 312, !4937, i64 320, !1186, i64 328, !1186, i64 332, !1186, i64 336, !1149, i64 344, !1149, i64 352, !1149, i64 360, !1149, i64 368, !1186, i64 376, !1186, i64 380, !1149, i64 384, !1186, i64 392, !1149, i64 400, !1186, i64 408, !1186, i64 412, !1186, i64 416, !1186, i64 420, !1149, i64 424, !1186, i64 432, !1186, i64 436, !1149, i64 440, !1186, i64 448, !1186, i64 452, !1149, i64 456, !1149, i64 464, !1186, i64 472, !1186, i64 476, !1149, i64 480, !1149, i64 488, !1149, i64 496, !1186, i64 504, !1186, i64 508, !1186, i64 512, !1149, i64 520, !1149, i64 528, !1149, i64 536, !1149, i64 544, !1149, i64 552, !1186, i64 560, !1186, i64 564, !1186, i64 568, !1186, i64 572, !1149, i64 576, !1186, i64 584, !1149, i64 592, !6631, i64 600, !1150, i64 688, !4937, i64 696, !4937, i64 704, !1149, i64 712, !1186, i64 720, !1186, i64 724, !1149, i64 728, !1186, i64 736, !4937, i64 744}
!6629 = !{!"_xmlParserNodeInfoSeq", !4937, i64 0, !4937, i64 8, !1149, i64 16}
!6630 = !{!"_xmlValidCtxt", !1149, i64 0, !1149, i64 8, !1149, i64 16, !1149, i64 24, !1186, i64 32, !1186, i64 36, !1149, i64 40, !1186, i64 48, !1149, i64 56, !1186, i64 64, !1149, i64 72, !1186, i64 80, !1186, i64 84, !1149, i64 88, !1149, i64 96, !1149, i64 104}
!6631 = !{!"_xmlError", !1186, i64 0, !1186, i64 4, !1149, i64 8, !1150, i64 16, !1149, i64 24, !1186, i64 32, !1149, i64 40, !1149, i64 48, !1149, i64 56, !1186, i64 64, !1186, i64 68, !1149, i64 72, !1149, i64 80}
!6632 = !DILocation(line: 2807, column: 8, scope: !6114)
!6633 = !DILocation(line: 2808, column: 9, scope: !6634)
!6634 = distinct !DILexicalBlock(scope: !6114, file: !3, line: 2808, column: 9)
!6635 = !DILocation(line: 2808, column: 12, scope: !6634)
!6636 = !DILocation(line: 2808, column: 9, scope: !6114)
!6637 = !DILocation(line: 2808, column: 22, scope: !6634)
!6638 = !DILocation(line: 2809, column: 10, scope: !6605)
!6639 = !DILocation(line: 2809, column: 14, scope: !6605)
!6640 = !{!6641, !1149, i64 0}
!6641 = !{!"_xmlParserInput", !1149, i64 0, !1149, i64 8, !1149, i64 16, !1149, i64 24, !1149, i64 32, !1149, i64 40, !1186, i64 48, !1186, i64 52, !1186, i64 56, !4937, i64 64, !1149, i64 72, !1149, i64 80, !1149, i64 88, !1186, i64 96, !1186, i64 100}
!6642 = !DILocation(line: 2809, column: 18, scope: !6605)
!6643 = !DILocation(line: 2809, column: 27, scope: !6605)
!6644 = !DILocation(line: 2809, column: 31, scope: !6605)
!6645 = !DILocation(line: 2809, column: 35, scope: !6605)
!6646 = !DILocation(line: 2809, column: 40, scope: !6605)
!6647 = !DILocation(line: 2809, column: 48, scope: !6605)
!6648 = !DILocation(line: 2809, column: 9, scope: !6114)
!6649 = !DILocation(line: 2810, column: 9, scope: !6604)
!6650 = !DILocation(line: 2810, column: 22, scope: !6604)
!6651 = !DILocation(line: 2811, column: 2, scope: !6604)
!6652 = !DILocation(line: 2811, column: 27, scope: !6604)
!6653 = !DILocation(line: 2811, column: 37, scope: !6604)
!6654 = !DILocation(line: 2811, column: 41, scope: !6604)
!6655 = !DILocation(line: 2811, column: 46, scope: !6604)
!6656 = !DILocation(line: 2817, column: 13, scope: !6609)
!6657 = !DILocation(line: 2817, column: 17, scope: !6609)
!6658 = !{!6641, !1149, i64 40}
!6659 = !DILocation(line: 2817, column: 23, scope: !6609)
!6660 = !DILocation(line: 2817, column: 27, scope: !6609)
!6661 = !{!6641, !1149, i64 32}
!6662 = !DILocation(line: 2817, column: 21, scope: !6609)
!6663 = !DILocation(line: 2817, column: 31, scope: !6609)
!6664 = !DILocation(line: 2817, column: 13, scope: !6604)
!6665 = !DILocation(line: 2818, column: 6, scope: !6608)
!6666 = !DILocation(line: 2818, column: 20, scope: !6608)
!6667 = !DILocation(line: 2819, column: 6, scope: !6608)
!6668 = !DILocation(line: 2819, column: 27, scope: !6608)
!6669 = !DILocation(line: 2819, column: 56, scope: !6608)
!6670 = !DILocation(line: 2819, column: 60, scope: !6608)
!6671 = !DILocation(line: 2820, column: 6, scope: !6608)
!6672 = !DILocation(line: 2820, column: 10, scope: !6608)
!6673 = !DILocation(line: 2820, column: 19, scope: !6608)
!6674 = !DILocation(line: 2820, column: 23, scope: !6608)
!6675 = !DILocation(line: 2820, column: 29, scope: !6608)
!6676 = !DILocation(line: 2820, column: 33, scope: !6608)
!6677 = !DILocation(line: 2820, column: 27, scope: !6608)
!6678 = !DILocation(line: 2820, column: 38, scope: !6608)
!6679 = !DILocation(line: 2822, column: 6, scope: !6608)
!6680 = !DILocation(line: 2822, column: 10, scope: !6608)
!6681 = !DILocation(line: 2824, column: 13, scope: !6608)
!6682 = !DILocation(line: 2825, column: 26, scope: !6683)
!6683 = distinct !DILexicalBlock(scope: !6608, file: !3, line: 2824, column: 16)
!6684 = !DILocation(line: 2825, column: 30, scope: !6683)
!6685 = !DILocation(line: 2825, column: 36, scope: !6683)
!6686 = !DILocation(line: 2825, column: 34, scope: !6683)
!6687 = !DILocation(line: 2825, column: 24, scope: !6683)
!6688 = !DILocation(line: 2826, column: 25, scope: !6683)
!6689 = !DILocation(line: 2827, column: 41, scope: !6683)
!6690 = !DILocation(line: 2827, column: 51, scope: !6683)
!6691 = !DILocation(line: 2828, column: 41, scope: !6683)
!6692 = !DILocation(line: 2827, column: 23, scope: !6683)
!6693 = !DILocation(line: 2827, column: 21, scope: !6683)
!6694 = !DILocation(line: 2829, column: 21, scope: !6695)
!6695 = distinct !DILexicalBlock(scope: !6683, file: !3, line: 2829, column: 21)
!6696 = !DILocation(line: 2829, column: 25, scope: !6695)
!6697 = !DILocation(line: 2829, column: 21, scope: !6683)
!6698 = !DILocation(line: 2830, column: 25, scope: !6699)
!6699 = distinct !DILexicalBlock(scope: !6700, file: !3, line: 2830, column: 25)
!6700 = distinct !DILexicalBlock(scope: !6695, file: !3, line: 2829, column: 30)
!6701 = !DILocation(line: 2830, column: 33, scope: !6699)
!6702 = !DILocation(line: 2830, column: 25, scope: !6700)
!6703 = !DILocation(line: 2831, column: 29, scope: !6699)
!6704 = !DILocation(line: 2831, column: 25, scope: !6699)
!6705 = !DILocation(line: 2833, column: 25, scope: !6699)
!6706 = !DILocation(line: 2834, column: 17, scope: !6700)
!6707 = !DILocation(line: 2835, column: 27, scope: !6683)
!6708 = !DILocation(line: 2835, column: 24, scope: !6683)
!6709 = !DILocation(line: 2836, column: 24, scope: !6683)
!6710 = !DILocation(line: 2836, column: 21, scope: !6683)
!6711 = !DILocation(line: 2837, column: 13, scope: !6683)
!6712 = !DILocation(line: 2837, column: 22, scope: !6608)
!6713 = !DILocation(line: 2837, column: 26, scope: !6608)
!6714 = distinct !{!6714, !6681, !6715, !1265}
!6715 = !DILocation(line: 2837, column: 31, scope: !6608)
!6716 = !DILocation(line: 2838, column: 2, scope: !6609)
!6717 = !DILocation(line: 2838, column: 2, scope: !6608)
!6718 = !DILocation(line: 2839, column: 6, scope: !6719)
!6719 = distinct !DILexicalBlock(scope: !6604, file: !3, line: 2839, column: 6)
!6720 = !DILocation(line: 2839, column: 10, scope: !6719)
!6721 = !DILocation(line: 2839, column: 15, scope: !6719)
!6722 = !{!4936, !4937, i64 56}
!6723 = !DILocation(line: 2839, column: 29, scope: !6719)
!6724 = !DILocation(line: 2839, column: 27, scope: !6719)
!6725 = !DILocation(line: 2839, column: 6, scope: !6604)
!6726 = !DILocation(line: 2840, column: 6, scope: !6719)
!6727 = !DILocation(line: 2841, column: 9, scope: !6604)
!6728 = !DILocation(line: 2841, column: 13, scope: !6604)
!6729 = !DILocation(line: 2841, column: 18, scope: !6604)
!6730 = !DILocation(line: 2841, column: 32, scope: !6604)
!6731 = !DILocation(line: 2841, column: 30, scope: !6604)
!6732 = !DILocation(line: 2841, column: 2, scope: !6604)
!6733 = !DILocation(line: 2842, column: 5, scope: !6605)
!6734 = !DILocation(line: 2843, column: 12, scope: !6114)
!6735 = !DILocation(line: 2843, column: 16, scope: !6114)
!6736 = !{!6641, !4937, i64 64}
!6737 = !DILocation(line: 2843, column: 28, scope: !6114)
!6738 = !DILocation(line: 2843, column: 32, scope: !6114)
!6739 = !DILocation(line: 2843, column: 38, scope: !6114)
!6740 = !DILocation(line: 2843, column: 42, scope: !6114)
!6741 = !{!6641, !1149, i64 24}
!6742 = !DILocation(line: 2843, column: 36, scope: !6114)
!6743 = !DILocation(line: 2843, column: 25, scope: !6114)
!6744 = !DILocation(line: 2843, column: 5, scope: !6114)
!6745 = !DILocation(line: 2844, column: 1, scope: !6114)
!6746 = !DISubprogram(name: "__xmlRaiseError", scope: !34, file: !34, line: 918, type: !6747, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6747 = !DISubroutineType(types: !6748)
!6748 = !{null, !6416, !6749, !905, !905, !905, !7, !7, !6429, !914, !7, !914, !914, !914, !7, !7, !914, null}
!6749 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlGenericErrorFunc", file: !34, line: 845, baseType: !6393)
!6750 = !DISubprogram(name: "__xmlSimpleError", scope: !34, file: !34, line: 936, type: !6751, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6751 = !DISubroutineType(types: !6752)
!6752 = !{null, !7, !7, !6456, !914, !914}
!6753 = distinct !DISubprogram(name: "xmlIconvWrapper", scope: !3, file: !3, line: 1801, type: !6754, scopeLine: 1802, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6756)
!6754 = !DISubroutineType(types: !6755)
!6755 = !{!7, !936, !928, !930, !931, !930}
!6756 = !{!6757, !6758, !6759, !6760, !6761, !6762, !6763, !6764, !6765, !6766}
!6757 = !DILocalVariable(name: "cd", arg: 1, scope: !6753, file: !3, line: 1801, type: !936)
!6758 = !DILocalVariable(name: "out", arg: 2, scope: !6753, file: !3, line: 1801, type: !928)
!6759 = !DILocalVariable(name: "outlen", arg: 3, scope: !6753, file: !3, line: 1801, type: !930)
!6760 = !DILocalVariable(name: "in", arg: 4, scope: !6753, file: !3, line: 1802, type: !931)
!6761 = !DILocalVariable(name: "inlen", arg: 5, scope: !6753, file: !3, line: 1802, type: !930)
!6762 = !DILocalVariable(name: "icv_inlen", scope: !6753, file: !3, line: 1803, type: !4899)
!6763 = !DILocalVariable(name: "icv_outlen", scope: !6753, file: !3, line: 1803, type: !4899)
!6764 = !DILocalVariable(name: "icv_in", scope: !6753, file: !3, line: 1804, type: !914)
!6765 = !DILocalVariable(name: "icv_out", scope: !6753, file: !3, line: 1805, type: !906)
!6766 = !DILocalVariable(name: "ret", scope: !6753, file: !3, line: 1806, type: !7)
!6767 = !DILocation(line: 1801, column: 25, scope: !6753)
!6768 = !DILocation(line: 1801, column: 44, scope: !6753)
!6769 = !DILocation(line: 1801, column: 54, scope: !6753)
!6770 = !DILocation(line: 1802, column: 38, scope: !6753)
!6771 = !DILocation(line: 1802, column: 47, scope: !6753)
!6772 = !DILocation(line: 1803, column: 5, scope: !6753)
!6773 = !DILocation(line: 1803, column: 12, scope: !6753)
!6774 = !DILocation(line: 1803, column: 23, scope: !6753)
!6775 = !DILocation(line: 1804, column: 5, scope: !6753)
!6776 = !DILocation(line: 1804, column: 17, scope: !6753)
!6777 = !DILocation(line: 1804, column: 41, scope: !6753)
!6778 = !DILocation(line: 1805, column: 5, scope: !6753)
!6779 = !DILocation(line: 1805, column: 11, scope: !6753)
!6780 = !DILocation(line: 1805, column: 30, scope: !6753)
!6781 = !DILocation(line: 1806, column: 5, scope: !6753)
!6782 = !DILocation(line: 1806, column: 9, scope: !6753)
!6783 = !DILocation(line: 1808, column: 10, scope: !6784)
!6784 = distinct !DILexicalBlock(scope: !6753, file: !3, line: 1808, column: 9)
!6785 = !DILocation(line: 1808, column: 14, scope: !6784)
!6786 = !DILocation(line: 1808, column: 23, scope: !6784)
!6787 = !DILocation(line: 1808, column: 27, scope: !6784)
!6788 = !DILocation(line: 1808, column: 34, scope: !6784)
!6789 = !DILocation(line: 1808, column: 43, scope: !6784)
!6790 = !DILocation(line: 1808, column: 47, scope: !6784)
!6791 = !DILocation(line: 1808, column: 53, scope: !6784)
!6792 = !DILocation(line: 1808, column: 62, scope: !6784)
!6793 = !DILocation(line: 1808, column: 66, scope: !6784)
!6794 = !DILocation(line: 1808, column: 69, scope: !6784)
!6795 = !DILocation(line: 1808, column: 9, scope: !6753)
!6796 = !DILocation(line: 1809, column: 13, scope: !6797)
!6797 = distinct !DILexicalBlock(scope: !6798, file: !3, line: 1809, column: 13)
!6798 = distinct !DILexicalBlock(scope: !6784, file: !3, line: 1808, column: 79)
!6799 = !DILocation(line: 1809, column: 20, scope: !6797)
!6800 = !DILocation(line: 1809, column: 13, scope: !6798)
!6801 = !DILocation(line: 1809, column: 30, scope: !6797)
!6802 = !DILocation(line: 1809, column: 37, scope: !6797)
!6803 = !DILocation(line: 1809, column: 29, scope: !6797)
!6804 = !DILocation(line: 1810, column: 9, scope: !6798)
!6805 = !DILocation(line: 1812, column: 18, scope: !6753)
!6806 = !DILocation(line: 1812, column: 17, scope: !6753)
!6807 = !DILocation(line: 1812, column: 15, scope: !6753)
!6808 = !DILocation(line: 1813, column: 19, scope: !6753)
!6809 = !DILocation(line: 1813, column: 18, scope: !6753)
!6810 = !DILocation(line: 1813, column: 16, scope: !6753)
!6811 = !DILocation(line: 1814, column: 17, scope: !6753)
!6812 = !DILocation(line: 1814, column: 11, scope: !6753)
!6813 = !DILocation(line: 1814, column: 9, scope: !6753)
!6814 = !DILocation(line: 1815, column: 15, scope: !6753)
!6815 = !DILocation(line: 1815, column: 6, scope: !6753)
!6816 = !DILocation(line: 1815, column: 12, scope: !6753)
!6817 = !DILocation(line: 1816, column: 16, scope: !6753)
!6818 = !DILocation(line: 1816, column: 6, scope: !6753)
!6819 = !DILocation(line: 1816, column: 13, scope: !6753)
!6820 = !DILocation(line: 1817, column: 10, scope: !6821)
!6821 = distinct !DILexicalBlock(scope: !6753, file: !3, line: 1817, column: 9)
!6822 = !DILocation(line: 1817, column: 20, scope: !6821)
!6823 = !DILocation(line: 1817, column: 26, scope: !6821)
!6824 = !DILocation(line: 1817, column: 30, scope: !6821)
!6825 = !DILocation(line: 1817, column: 34, scope: !6821)
!6826 = !DILocation(line: 1817, column: 9, scope: !6753)
!6827 = !DILocation(line: 1819, column: 13, scope: !6828)
!6828 = distinct !DILexicalBlock(scope: !6829, file: !3, line: 1819, column: 13)
!6829 = distinct !DILexicalBlock(scope: !6821, file: !3, line: 1817, column: 42)
!6830 = !DILocation(line: 1819, column: 19, scope: !6828)
!6831 = !DILocation(line: 1819, column: 13, scope: !6829)
!6832 = !DILocation(line: 1820, column: 13, scope: !6833)
!6833 = distinct !DILexicalBlock(scope: !6828, file: !3, line: 1819, column: 30)
!6834 = !DILocation(line: 1824, column: 13, scope: !6835)
!6835 = distinct !DILexicalBlock(scope: !6828, file: !3, line: 1824, column: 13)
!6836 = !DILocation(line: 1824, column: 19, scope: !6835)
!6837 = !DILocation(line: 1824, column: 13, scope: !6828)
!6838 = !DILocation(line: 1825, column: 13, scope: !6839)
!6839 = distinct !DILexicalBlock(scope: !6835, file: !3, line: 1824, column: 29)
!6840 = !DILocation(line: 1829, column: 13, scope: !6841)
!6841 = distinct !DILexicalBlock(scope: !6835, file: !3, line: 1829, column: 13)
!6842 = !DILocation(line: 1829, column: 19, scope: !6841)
!6843 = !DILocation(line: 1829, column: 13, scope: !6835)
!6844 = !DILocation(line: 1830, column: 13, scope: !6845)
!6845 = distinct !DILexicalBlock(scope: !6841, file: !3, line: 1829, column: 30)
!6846 = !DILocation(line: 1834, column: 13, scope: !6847)
!6847 = distinct !DILexicalBlock(scope: !6841, file: !3, line: 1833, column: 9)
!6848 = !DILocation(line: 1837, column: 5, scope: !6753)
!6849 = !DILocation(line: 1838, column: 1, scope: !6753)
!6850 = !DISubprogram(name: "libiconv", scope: !937, file: !937, line: 82, type: !6851, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6851 = !DISubroutineType(types: !6852)
!6852 = !{!4899, !936, !946, !6853, !946, !6853}
!6853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4899, size: 64)
!6854 = !DISubprogram(name: "__errno_location", scope: !6855, file: !6855, line: 37, type: !6856, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6855 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!6856 = !DISubroutineType(types: !6857)
!6857 = !{!930}

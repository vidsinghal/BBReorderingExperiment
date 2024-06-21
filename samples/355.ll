; ModuleID = 'samples/355.bc'
source_filename = "./dnssec-verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isc_buffer = type { i32, ptr, i32, i32, i32, i32, %struct.anon.4, ptr, i8 }
%struct.anon.4 = type { ptr, ptr }
%struct.dns_fixedname = type { %struct.dns_name, [128 x i8], %struct.isc_buffer, [255 x i8] }
%struct.dns_name = type { i32, ptr, i32, i32, i32, ptr, ptr, %struct.anon.5, %struct.anon.6 }
%struct.anon.5 = type { ptr, ptr }
%struct.anon.6 = type { ptr, ptr }

@.str = private unnamed_addr constant [14 x i8] c"dnssec-verify\00", align 1, !dbg !0
@program = global ptr @.str, align 8, !dbg !8
@.str.1 = private unnamed_addr constant [17 x i8] c"hm:o:I:c:E:v:Vxz\00", align 1, !dbg !32
@isc_commandline_argument = external global ptr, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"record\00", align 1, !dbg !37
@isc_mem_debugging = external global i32, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"trace\00", align 1, !dbg !42
@.str.4 = private unnamed_addr constant [6 x i8] c"usage\00", align 1, !dbg !47
@.str.5 = private unnamed_addr constant [5 x i8] c"size\00", align 1, !dbg !49
@.str.6 = private unnamed_addr constant [5 x i8] c"mctx\00", align 1, !dbg !54
@isc_commandline_reset = external global i8, align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"isc_app_start\00", align 1, !dbg !56
@mctx = internal global ptr null, align 8, !dbg !972
@.str.8 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1, !dbg !58
@isc_commandline_errprint = external global i8, align 1
@verbose = global i32 0, align 4, !dbg !99
@.str.9 = private unnamed_addr constant [30 x i8] c"verbose level must be numeric\00", align 1, !dbg !60
@keyset_kskonly = internal global i8 0, align 1, !dbg !974
@ignore_kskflag = internal global i8 0, align 1, !dbg !976
@isc_commandline_option = external global i32, align 4
@stderr = external global ptr, align 8
@.str.10 = private unnamed_addr constant [26 x i8] c"%s: invalid argument -%c\0A\00", align 1, !dbg !65
@.str.11 = private unnamed_addr constant [26 x i8] c"%s: unhandled option -%c\0A\00", align 1, !dbg !70
@.str.12 = private unnamed_addr constant [29 x i8] c"could not initialize dst: %s\00", align 1, !dbg !72
@now = internal global i32 0, align 4, !dbg !102
@isc_commandline_index = external global i32, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"text\00", align 1, !dbg !77
@inputformat = internal global i32 1, align 4, !dbg !1039
@.str.14 = private unnamed_addr constant [4 x i8] c"raw\00", align 1, !dbg !79
@.str.15 = private unnamed_addr constant [25 x i8] c"unknown file format: %s\0A\00", align 1, !dbg !84
@gdb = internal global ptr null, align 8, !dbg !110
@.str.16 = private unnamed_addr constant [34 x i8] c"Loading zone '%s' from file '%s'\0A\00", align 1, !dbg !89
@gorigin = internal global ptr null, align 8, !dbg !970
@gclass = internal global i16 0, align 2, !dbg !968
@gversion = internal global ptr null, align 8, !dbg !966
@.str.17 = private unnamed_addr constant [20 x i8] c"dns_db_newversion()\00", align 1, !dbg !94
@stdout = external global ptr, align 8
@.str.18 = private unnamed_addr constant [8 x i8] c"Usage:\0A\00", align 1, !dbg !978
@.str.19 = private unnamed_addr constant [31 x i8] c"\09%s [options] zonefile [keys]\0A\00", align 1, !dbg !981
@.str.20 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !986
@.str.21 = private unnamed_addr constant [13 x i8] c"Version: %s\0A\00", align 1, !dbg !991
@.str.22 = private unnamed_addr constant [7 x i8] c"9.14.6\00", align 1, !dbg !996
@.str.23 = private unnamed_addr constant [42 x i8] c"Options: (default value in parenthesis) \0A\00", align 1, !dbg !998
@.str.24 = private unnamed_addr constant [20 x i8] c"\09-v debuglevel (0)\0A\00", align 1, !dbg !1003
@.str.25 = private unnamed_addr constant [32 x i8] c"\09-V:\09print version information\0A\00", align 1, !dbg !1005
@.str.26 = private unnamed_addr constant [13 x i8] c"\09-o origin:\0A\00", align 1, !dbg !1008
@.str.27 = private unnamed_addr constant [34 x i8] c"\09\09zone origin (name of zonefile)\0A\00", align 1, !dbg !1010
@.str.28 = private unnamed_addr constant [13 x i8] c"\09-I format:\0A\00", align 1, !dbg !1012
@.str.29 = private unnamed_addr constant [40 x i8] c"\09\09file format of input zonefile (text)\0A\00", align 1, !dbg !1014
@.str.30 = private unnamed_addr constant [16 x i8] c"\09-c class (IN)\0A\00", align 1, !dbg !1019
@.str.31 = private unnamed_addr constant [13 x i8] c"\09-E engine:\0A\00", align 1, !dbg !1022
@.str.32 = private unnamed_addr constant [36 x i8] c"\09\09name of an OpenSSL engine to use\0A\00", align 1, !dbg !1024
@.str.33 = private unnamed_addr constant [52 x i8] c"\09-x:\09DNSKEY record signed with KSKs only, not ZSKs\0A\00", align 1, !dbg !1029
@.str.34 = private unnamed_addr constant [35 x i8] c"\09-z:\09All records signed with KSKs\0A\00", align 1, !dbg !1034
@dns_rootname = external global ptr, align 8
@.str.35 = private unnamed_addr constant [46 x i8] c"failed converting name '%s' to dns format: %s\00", align 1, !dbg !1041
@.str.36 = private unnamed_addr constant [4 x i8] c"rbt\00", align 1, !dbg !1046
@.str.37 = private unnamed_addr constant [16 x i8] c"dns_db_create()\00", align 1, !dbg !1048
@.str.38 = private unnamed_addr constant [83 x i8] c"failed loading zone '%s' from file '%s': use -o to specify a different zone origin\00", align 1, !dbg !1050
@.str.39 = private unnamed_addr constant [34 x i8] c"failed loading zone from '%s': %s\00", align 1, !dbg !1055

; Function Attrs: nounwind null_pointer_is_valid uwtable
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 !dbg !1063 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %origin = alloca ptr, align 8
  %file = alloca ptr, align 8
  %inputformatstr = alloca ptr, align 8
  %result = alloca i32, align 4
  %log = alloca ptr, align 8
  %engine = alloca ptr, align 8
  %classname = alloca ptr, align 8
  %rdclass = alloca i16, align 2
  %endp = alloca ptr, align 8
  %ch = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %argc.addr, metadata !1068, metadata !DIExpression()), !dbg !1083
  store ptr %argv, ptr %argv.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %argv.addr, metadata !1069, metadata !DIExpression()), !dbg !1084
  call void @llvm.lifetime.start.p0(i64 8, ptr %origin) #9, !dbg !1085
  tail call void @llvm.dbg.declare(metadata ptr %origin, metadata !1070, metadata !DIExpression()), !dbg !1086
  store ptr null, ptr %origin, align 8, !dbg !1086
  call void @llvm.lifetime.start.p0(i64 8, ptr %file) #9, !dbg !1085
  tail call void @llvm.dbg.declare(metadata ptr %file, metadata !1071, metadata !DIExpression()), !dbg !1087
  store ptr null, ptr %file, align 8, !dbg !1087
  call void @llvm.lifetime.start.p0(i64 8, ptr %inputformatstr) #9, !dbg !1088
  tail call void @llvm.dbg.declare(metadata ptr %inputformatstr, metadata !1072, metadata !DIExpression()), !dbg !1089
  store ptr null, ptr %inputformatstr, align 8, !dbg !1089
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #9, !dbg !1090
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !1073, metadata !DIExpression()), !dbg !1091
  call void @llvm.lifetime.start.p0(i64 8, ptr %log) #9, !dbg !1092
  tail call void @llvm.dbg.declare(metadata ptr %log, metadata !1074, metadata !DIExpression()), !dbg !1093
  store ptr null, ptr %log, align 8, !dbg !1093
  call void @llvm.lifetime.start.p0(i64 8, ptr %engine) #9, !dbg !1094
  tail call void @llvm.dbg.declare(metadata ptr %engine, metadata !1078, metadata !DIExpression()), !dbg !1095
  store ptr null, ptr %engine, align 8, !dbg !1095
  call void @llvm.lifetime.start.p0(i64 8, ptr %classname) #9, !dbg !1096
  tail call void @llvm.dbg.declare(metadata ptr %classname, metadata !1079, metadata !DIExpression()), !dbg !1097
  store ptr null, ptr %classname, align 8, !dbg !1097
  call void @llvm.lifetime.start.p0(i64 2, ptr %rdclass) #9, !dbg !1098
  tail call void @llvm.dbg.declare(metadata ptr %rdclass, metadata !1080, metadata !DIExpression()), !dbg !1099
  call void @llvm.lifetime.start.p0(i64 8, ptr %endp) #9, !dbg !1100
  tail call void @llvm.dbg.declare(metadata ptr %endp, metadata !1081, metadata !DIExpression()), !dbg !1101
  call void @llvm.lifetime.start.p0(i64 4, ptr %ch) #9, !dbg !1102
  tail call void @llvm.dbg.declare(metadata ptr %ch, metadata !1082, metadata !DIExpression()), !dbg !1103
  br label %while.cond, !dbg !1104

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load i32, ptr %argc.addr, align 4, !dbg !1105
  %1 = load ptr, ptr %argv.addr, align 8, !dbg !1106
  %call = call i32 @isc_commandline_parse(i32 noundef %0, ptr noundef %1, ptr noundef @.str.1), !dbg !1107
  store i32 %call, ptr %ch, align 4, !dbg !1108
  %cmp = icmp ne i32 %call, -1, !dbg !1109
  br i1 %cmp, label %while.body, label %while.end, !dbg !1104

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %ch, align 4, !dbg !1110
  switch i32 %2, label %sw.default [
    i32 109, label %sw.bb
  ], !dbg !1112

sw.bb:                                            ; preds = %while.body
  %3 = load ptr, ptr @isc_commandline_argument, align 8, !dbg !1113
  %call1 = call i32 @strcasecmp(ptr noundef %3, ptr noundef @.str.2) #10, !dbg !1116
  %cmp2 = icmp eq i32 %call1, 0, !dbg !1117
  br i1 %cmp2, label %if.then, label %if.end, !dbg !1118

if.then:                                          ; preds = %sw.bb
  %4 = load i32, ptr @isc_mem_debugging, align 4, !dbg !1119
  %or = or i32 %4, 2, !dbg !1119
  store i32 %or, ptr @isc_mem_debugging, align 4, !dbg !1119
  br label %if.end, !dbg !1120

if.end:                                           ; preds = %if.then, %sw.bb
  %5 = load ptr, ptr @isc_commandline_argument, align 8, !dbg !1121
  %call3 = call i32 @strcasecmp(ptr noundef %5, ptr noundef @.str.3) #10, !dbg !1123
  %cmp4 = icmp eq i32 %call3, 0, !dbg !1124
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !1125

if.then5:                                         ; preds = %if.end
  %6 = load i32, ptr @isc_mem_debugging, align 4, !dbg !1126
  %or6 = or i32 %6, 1, !dbg !1126
  store i32 %or6, ptr @isc_mem_debugging, align 4, !dbg !1126
  br label %if.end7, !dbg !1127

if.end7:                                          ; preds = %if.then5, %if.end
  %7 = load ptr, ptr @isc_commandline_argument, align 8, !dbg !1128
  %call8 = call i32 @strcasecmp(ptr noundef %7, ptr noundef @.str.4) #10, !dbg !1130
  %cmp9 = icmp eq i32 %call8, 0, !dbg !1131
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !1132

if.then10:                                        ; preds = %if.end7
  %8 = load i32, ptr @isc_mem_debugging, align 4, !dbg !1133
  %or11 = or i32 %8, 4, !dbg !1133
  store i32 %or11, ptr @isc_mem_debugging, align 4, !dbg !1133
  br label %if.end12, !dbg !1134

if.end12:                                         ; preds = %if.then10, %if.end7
  %9 = load ptr, ptr @isc_commandline_argument, align 8, !dbg !1135
  %call13 = call i32 @strcasecmp(ptr noundef %9, ptr noundef @.str.5) #10, !dbg !1137
  %cmp14 = icmp eq i32 %call13, 0, !dbg !1138
  br i1 %cmp14, label %if.then15, label %if.end17, !dbg !1139

if.then15:                                        ; preds = %if.end12
  %10 = load i32, ptr @isc_mem_debugging, align 4, !dbg !1140
  %or16 = or i32 %10, 8, !dbg !1140
  store i32 %or16, ptr @isc_mem_debugging, align 4, !dbg !1140
  br label %if.end17, !dbg !1141

if.end17:                                         ; preds = %if.then15, %if.end12
  %11 = load ptr, ptr @isc_commandline_argument, align 8, !dbg !1142
  %call18 = call i32 @strcasecmp(ptr noundef %11, ptr noundef @.str.6) #10, !dbg !1144
  %cmp19 = icmp eq i32 %call18, 0, !dbg !1145
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !1146

if.then20:                                        ; preds = %if.end17
  %12 = load i32, ptr @isc_mem_debugging, align 4, !dbg !1147
  %or21 = or i32 %12, 16, !dbg !1147
  store i32 %or21, ptr @isc_mem_debugging, align 4, !dbg !1147
  br label %if.end22, !dbg !1148

if.end22:                                         ; preds = %if.then20, %if.end17
  br label %sw.epilog, !dbg !1149

sw.default:                                       ; preds = %while.body
  br label %sw.epilog, !dbg !1150

sw.epilog:                                        ; preds = %sw.default, %if.end22
  br label %while.cond, !dbg !1104, !llvm.loop !1151

while.end:                                        ; preds = %while.cond
  store i8 1, ptr @isc_commandline_reset, align 1, !dbg !1154
  %call23 = call i32 @isc_app_start(), !dbg !1155
  call void @check_result(i32 noundef %call23, ptr noundef @.str.7), !dbg !1156
  %call24 = call i32 @isc_mem_create(i64 noundef 0, i64 noundef 0, ptr noundef @mctx), !dbg !1157
  store i32 %call24, ptr %result, align 4, !dbg !1158
  %13 = load i32, ptr %result, align 4, !dbg !1159
  %cmp25 = icmp ne i32 %13, 0, !dbg !1161
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !1162

if.then26:                                        ; preds = %while.end
  call void (ptr, ...) @fatal(ptr noundef @.str.8) #11, !dbg !1163
  unreachable, !dbg !1163

if.end27:                                         ; preds = %while.end
  call void @dns_result_register(), !dbg !1164
  store i8 0, ptr @isc_commandline_errprint, align 1, !dbg !1165
  br label %while.cond28, !dbg !1166

while.cond28:                                     ; preds = %sw.epilog55, %if.end27
  %14 = load i32, ptr %argc.addr, align 4, !dbg !1167
  %15 = load ptr, ptr %argv.addr, align 8, !dbg !1168
  %call29 = call i32 @isc_commandline_parse(i32 noundef %14, ptr noundef %15, ptr noundef @.str.1), !dbg !1169
  store i32 %call29, ptr %ch, align 4, !dbg !1170
  %cmp30 = icmp ne i32 %call29, -1, !dbg !1171
  br i1 %cmp30, label %while.body31, label %while.end56, !dbg !1166

while.body31:                                     ; preds = %while.cond28
  %16 = load i32, ptr %ch, align 4, !dbg !1172
  switch i32 %16, label %sw.default53 [
    i32 99, label %sw.bb32
    i32 69, label %sw.bb33
    i32 73, label %sw.bb34
    i32 109, label %sw.epilog55
    i32 111, label %sw.bb35
    i32 118, label %sw.bb36
    i32 120, label %sw.bb43
    i32 122, label %sw.bb44
    i32 63, label %sw.bb45
    i32 104, label %sw.bb51
    i32 86, label %sw.bb52
  ], !dbg !1174

sw.bb32:                                          ; preds = %while.body31
  %17 = load ptr, ptr @isc_commandline_argument, align 8, !dbg !1175
  store ptr %17, ptr %classname, align 8, !dbg !1177
  br label %sw.epilog55, !dbg !1178

sw.bb33:                                          ; preds = %while.body31
  %18 = load ptr, ptr @isc_commandline_argument, align 8, !dbg !1179
  store ptr %18, ptr %engine, align 8, !dbg !1180
  br label %sw.epilog55, !dbg !1181

sw.bb34:                                          ; preds = %while.body31
  %19 = load ptr, ptr @isc_commandline_argument, align 8, !dbg !1182
  store ptr %19, ptr %inputformatstr, align 8, !dbg !1183
  br label %sw.epilog55, !dbg !1184

sw.bb35:                                          ; preds = %while.body31
  %20 = load ptr, ptr @isc_commandline_argument, align 8, !dbg !1185
  store ptr %20, ptr %origin, align 8, !dbg !1186
  br label %sw.epilog55, !dbg !1187

sw.bb36:                                          ; preds = %while.body31
  store ptr null, ptr %endp, align 8, !dbg !1188
  %21 = load ptr, ptr @isc_commandline_argument, align 8, !dbg !1189
  %call37 = call i64 @strtol(ptr noundef %21, ptr noundef %endp, i32 noundef 0) #9, !dbg !1190
  %conv = trunc i64 %call37 to i32, !dbg !1190
  store i32 %conv, ptr @verbose, align 4, !dbg !1191
  %22 = load ptr, ptr %endp, align 8, !dbg !1192
  %23 = load i8, ptr %22, align 1, !dbg !1194
  %conv38 = sext i8 %23 to i32, !dbg !1194
  %cmp39 = icmp ne i32 %conv38, 0, !dbg !1195
  br i1 %cmp39, label %if.then41, label %if.end42, !dbg !1196

if.then41:                                        ; preds = %sw.bb36
  call void (ptr, ...) @fatal(ptr noundef @.str.9) #11, !dbg !1197
  unreachable, !dbg !1197

if.end42:                                         ; preds = %sw.bb36
  br label %sw.epilog55, !dbg !1198

sw.bb43:                                          ; preds = %while.body31
  store i8 1, ptr @keyset_kskonly, align 1, !dbg !1199
  br label %sw.epilog55, !dbg !1200

sw.bb44:                                          ; preds = %while.body31
  store i8 1, ptr @ignore_kskflag, align 1, !dbg !1201
  br label %sw.epilog55, !dbg !1202

sw.bb45:                                          ; preds = %while.body31
  %24 = load i32, ptr @isc_commandline_option, align 4, !dbg !1203
  %cmp46 = icmp ne i32 %24, 63, !dbg !1205
  br i1 %cmp46, label %if.then48, label %if.end50, !dbg !1206

if.then48:                                        ; preds = %sw.bb45
  %25 = load ptr, ptr @stderr, align 8, !dbg !1207
  %26 = load ptr, ptr @program, align 8, !dbg !1208
  %27 = load i32, ptr @isc_commandline_option, align 4, !dbg !1209
  %call49 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef @.str.10, ptr noundef %26, i32 noundef %27), !dbg !1210
  br label %if.end50, !dbg !1210

if.end50:                                         ; preds = %if.then48, %sw.bb45
  br label %sw.bb51, !dbg !1211

sw.bb51:                                          ; preds = %while.body31, %if.end50
  call void @usage() #11, !dbg !1212
  unreachable, !dbg !1212

sw.bb52:                                          ; preds = %while.body31
  %28 = load ptr, ptr @program, align 8, !dbg !1213
  call void @version(ptr noundef %28) #11, !dbg !1214
  unreachable, !dbg !1214

sw.default53:                                     ; preds = %while.body31
  %29 = load ptr, ptr @stderr, align 8, !dbg !1215
  %30 = load ptr, ptr @program, align 8, !dbg !1216
  %31 = load i32, ptr @isc_commandline_option, align 4, !dbg !1217
  %call54 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef @.str.11, ptr noundef %30, i32 noundef %31), !dbg !1218
  call void @exit(i32 noundef 1) #12, !dbg !1219
  unreachable, !dbg !1219

sw.epilog55:                                      ; preds = %while.body31, %sw.bb44, %sw.bb43, %if.end42, %sw.bb35, %sw.bb34, %sw.bb33, %sw.bb32
  br label %while.cond28, !dbg !1166, !llvm.loop !1220

while.end56:                                      ; preds = %while.cond28
  %32 = load ptr, ptr @mctx, align 8, !dbg !1222
  %33 = load ptr, ptr %engine, align 8, !dbg !1223
  %call57 = call i32 @dst_lib_init(ptr noundef %32, ptr noundef %33), !dbg !1224
  store i32 %call57, ptr %result, align 4, !dbg !1225
  %34 = load i32, ptr %result, align 4, !dbg !1226
  %cmp58 = icmp ne i32 %34, 0, !dbg !1228
  br i1 %cmp58, label %if.then60, label %if.end62, !dbg !1229

if.then60:                                        ; preds = %while.end56
  %35 = load i32, ptr %result, align 4, !dbg !1230
  %call61 = call ptr @isc_result_totext(i32 noundef %35), !dbg !1231
  call void (ptr, ...) @fatal(ptr noundef @.str.12, ptr noundef %call61) #11, !dbg !1232
  unreachable, !dbg !1232

if.end62:                                         ; preds = %while.end56
  call void @isc_stdtime_get(ptr noundef @now), !dbg !1233
  %36 = load ptr, ptr %classname, align 8, !dbg !1234
  %call63 = call zeroext i16 @strtoclass(ptr noundef %36), !dbg !1235
  store i16 %call63, ptr %rdclass, align 2, !dbg !1236
  %37 = load ptr, ptr @mctx, align 8, !dbg !1237
  call void @setup_logging(ptr noundef %37, ptr noundef %log), !dbg !1238
  %38 = load i32, ptr @isc_commandline_index, align 4, !dbg !1239
  %39 = load i32, ptr %argc.addr, align 4, !dbg !1240
  %sub = sub nsw i32 %39, %38, !dbg !1240
  store i32 %sub, ptr %argc.addr, align 4, !dbg !1240
  %40 = load i32, ptr @isc_commandline_index, align 4, !dbg !1241
  %41 = load ptr, ptr %argv.addr, align 8, !dbg !1242
  %idx.ext = sext i32 %40 to i64, !dbg !1242
  %add.ptr = getelementptr inbounds ptr, ptr %41, i64 %idx.ext, !dbg !1242
  store ptr %add.ptr, ptr %argv.addr, align 8, !dbg !1242
  %42 = load i32, ptr %argc.addr, align 4, !dbg !1243
  %cmp64 = icmp slt i32 %42, 1, !dbg !1245
  br i1 %cmp64, label %if.then66, label %if.end67, !dbg !1246

if.then66:                                        ; preds = %if.end62
  call void @usage() #11, !dbg !1247
  unreachable, !dbg !1247

if.end67:                                         ; preds = %if.end62
  %43 = load ptr, ptr %argv.addr, align 8, !dbg !1248
  %arrayidx = getelementptr inbounds ptr, ptr %43, i64 0, !dbg !1248
  %44 = load ptr, ptr %arrayidx, align 8, !dbg !1248
  store ptr %44, ptr %file, align 8, !dbg !1249
  %45 = load i32, ptr %argc.addr, align 4, !dbg !1250
  %sub68 = sub nsw i32 %45, 1, !dbg !1250
  store i32 %sub68, ptr %argc.addr, align 4, !dbg !1250
  %46 = load ptr, ptr %argv.addr, align 8, !dbg !1251
  %add.ptr69 = getelementptr inbounds ptr, ptr %46, i64 1, !dbg !1251
  store ptr %add.ptr69, ptr %argv.addr, align 8, !dbg !1251
  %47 = load i32, ptr %argc.addr, align 4, !dbg !1252
  %48 = load ptr, ptr %argv.addr, align 8, !dbg !1253
  %49 = load ptr, ptr %origin, align 8, !dbg !1254
  %cmp70 = icmp eq ptr %49, null, !dbg !1256
  br i1 %cmp70, label %if.then72, label %if.end73, !dbg !1257

if.then72:                                        ; preds = %if.end67
  %50 = load ptr, ptr %file, align 8, !dbg !1258
  store ptr %50, ptr %origin, align 8, !dbg !1259
  br label %if.end73, !dbg !1260

if.end73:                                         ; preds = %if.then72, %if.end67
  %51 = load ptr, ptr %inputformatstr, align 8, !dbg !1261
  %cmp74 = icmp ne ptr %51, null, !dbg !1263
  br i1 %cmp74, label %if.then76, label %if.end88, !dbg !1264

if.then76:                                        ; preds = %if.end73
  %52 = load ptr, ptr %inputformatstr, align 8, !dbg !1265
  %call77 = call i32 @strcasecmp(ptr noundef %52, ptr noundef @.str.13) #10, !dbg !1268
  %cmp78 = icmp eq i32 %call77, 0, !dbg !1269
  br i1 %cmp78, label %if.then80, label %if.else, !dbg !1270

if.then80:                                        ; preds = %if.then76
  store i32 1, ptr @inputformat, align 4, !dbg !1271
  br label %if.end87, !dbg !1272

if.else:                                          ; preds = %if.then76
  %53 = load ptr, ptr %inputformatstr, align 8, !dbg !1273
  %call81 = call i32 @strcasecmp(ptr noundef %53, ptr noundef @.str.14) #10, !dbg !1275
  %cmp82 = icmp eq i32 %call81, 0, !dbg !1276
  br i1 %cmp82, label %if.then84, label %if.else85, !dbg !1277

if.then84:                                        ; preds = %if.else
  store i32 2, ptr @inputformat, align 4, !dbg !1278
  br label %if.end86, !dbg !1279

if.else85:                                        ; preds = %if.else
  %54 = load ptr, ptr %inputformatstr, align 8, !dbg !1280
  call void (ptr, ...) @fatal(ptr noundef @.str.15, ptr noundef %54) #11, !dbg !1281
  unreachable, !dbg !1281

if.end86:                                         ; preds = %if.then84
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %if.then80
  br label %if.end88, !dbg !1282

if.end88:                                         ; preds = %if.end87, %if.end73
  store ptr null, ptr @gdb, align 8, !dbg !1283
  %55 = load ptr, ptr @stderr, align 8, !dbg !1284
  %56 = load ptr, ptr %origin, align 8, !dbg !1285
  %57 = load ptr, ptr %file, align 8, !dbg !1286
  %call89 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef @.str.16, ptr noundef %56, ptr noundef %57), !dbg !1287
  %58 = load ptr, ptr %file, align 8, !dbg !1288
  %59 = load ptr, ptr %origin, align 8, !dbg !1289
  %60 = load i16, ptr %rdclass, align 2, !dbg !1290
  call void @loadzone(ptr noundef %58, ptr noundef %59, i16 noundef zeroext %60, ptr noundef @gdb), !dbg !1291
  %61 = load ptr, ptr @gdb, align 8, !dbg !1292
  %call90 = call ptr @dns_db_origin(ptr noundef %61), !dbg !1293
  store ptr %call90, ptr @gorigin, align 8, !dbg !1294
  %62 = load ptr, ptr @gdb, align 8, !dbg !1295
  %call91 = call zeroext i16 @dns_db_class(ptr noundef %62), !dbg !1296
  store i16 %call91, ptr @gclass, align 2, !dbg !1297
  store ptr null, ptr @gversion, align 8, !dbg !1298
  %63 = load ptr, ptr @gdb, align 8, !dbg !1299
  %call92 = call i32 @dns_db_newversion(ptr noundef %63, ptr noundef @gversion), !dbg !1300
  store i32 %call92, ptr %result, align 4, !dbg !1301
  %64 = load i32, ptr %result, align 4, !dbg !1302
  call void @check_result(i32 noundef %64, ptr noundef @.str.17), !dbg !1303
  %65 = load ptr, ptr @gdb, align 8, !dbg !1304
  %66 = load ptr, ptr @gversion, align 8, !dbg !1305
  %67 = load ptr, ptr @gorigin, align 8, !dbg !1306
  %68 = load ptr, ptr @mctx, align 8, !dbg !1307
  %69 = load i8, ptr @ignore_kskflag, align 1, !dbg !1308, !range !1309, !noundef !1310
  %tobool = trunc i8 %69 to i1, !dbg !1308
  %70 = load i8, ptr @keyset_kskonly, align 1, !dbg !1311, !range !1309, !noundef !1310
  %tobool93 = trunc i8 %70 to i1, !dbg !1311
  %call94 = call i32 @dns_zoneverify_dnssec(ptr noundef null, ptr noundef %65, ptr noundef %66, ptr noundef %67, ptr noundef null, ptr noundef %68, i1 noundef zeroext %tobool, i1 noundef zeroext %tobool93), !dbg !1312
  store i32 %call94, ptr %result, align 4, !dbg !1313
  %71 = load ptr, ptr @gdb, align 8, !dbg !1314
  call void @dns_db_closeversion(ptr noundef %71, ptr noundef @gversion, i1 noundef zeroext false), !dbg !1315
  call void @dns_db_detach(ptr noundef @gdb), !dbg !1316
  call void @cleanup_logging(ptr noundef %log), !dbg !1317
  call void @dst_lib_destroy(), !dbg !1318
  call void @dns_name_destroy(), !dbg !1319
  %72 = load i32, ptr @verbose, align 4, !dbg !1320
  %cmp95 = icmp sgt i32 %72, 10, !dbg !1322
  br i1 %cmp95, label %if.then97, label %if.end98, !dbg !1323

if.then97:                                        ; preds = %if.end88
  %73 = load ptr, ptr @mctx, align 8, !dbg !1324
  %74 = load ptr, ptr @stdout, align 8, !dbg !1325
  call void @isc_mem_stats(ptr noundef %73, ptr noundef %74), !dbg !1326
  br label %if.end98, !dbg !1326

if.end98:                                         ; preds = %if.then97, %if.end88
  call void @isc_mem_destroy(ptr noundef @mctx), !dbg !1327
  call void @isc_app_finish(), !dbg !1328
  %75 = load i32, ptr %result, align 4, !dbg !1329
  %cmp99 = icmp eq i32 %75, 0, !dbg !1330
  %76 = zext i1 %cmp99 to i64, !dbg !1329
  %cond = select i1 %cmp99, i32 0, i32 1, !dbg !1329
  call void @llvm.lifetime.end.p0(i64 4, ptr %ch) #9, !dbg !1331
  call void @llvm.lifetime.end.p0(i64 8, ptr %endp) #9, !dbg !1331
  call void @llvm.lifetime.end.p0(i64 2, ptr %rdclass) #9, !dbg !1331
  call void @llvm.lifetime.end.p0(i64 8, ptr %classname) #9, !dbg !1331
  call void @llvm.lifetime.end.p0(i64 8, ptr %engine) #9, !dbg !1331
  call void @llvm.lifetime.end.p0(i64 8, ptr %log) #9, !dbg !1331
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #9, !dbg !1331
  call void @llvm.lifetime.end.p0(i64 8, ptr %inputformatstr) #9, !dbg !1331
  call void @llvm.lifetime.end.p0(i64 8, ptr %file) #9, !dbg !1331
  call void @llvm.lifetime.end.p0(i64 8, ptr %origin) #9, !dbg !1331
  ret i32 %cond, !dbg !1332
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare !dbg !1333 i32 @isc_commandline_parse(i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid willreturn memory(read)
declare !dbg !1339 i32 @strcasecmp(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare !dbg !1343 void @check_result(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !1347 i32 @isc_app_start() #2

; Function Attrs: null_pointer_is_valid
declare !dbg !1351 i32 @isc_mem_create(i64 noundef, i64 noundef, ptr noundef) #2

; Function Attrs: noreturn null_pointer_is_valid
declare !dbg !1354 void @fatal(ptr noundef, ...) #4

; Function Attrs: null_pointer_is_valid
declare !dbg !1357 void @dns_result_register() #2

; Function Attrs: nounwind null_pointer_is_valid
declare !dbg !1361 i64 @strtol(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare !dbg !1367 i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn nounwind null_pointer_is_valid uwtable
define internal void @usage() #6 !dbg !1372 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !dbg !1373
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.18), !dbg !1374
  %1 = load ptr, ptr @stderr, align 8, !dbg !1375
  %2 = load ptr, ptr @program, align 8, !dbg !1376
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.19, ptr noundef %2), !dbg !1377
  %3 = load ptr, ptr @stderr, align 8, !dbg !1378
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.20), !dbg !1379
  %4 = load ptr, ptr @stderr, align 8, !dbg !1380
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.21, ptr noundef @.str.22), !dbg !1381
  %5 = load ptr, ptr @stderr, align 8, !dbg !1382
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.23), !dbg !1383
  %6 = load ptr, ptr @stderr, align 8, !dbg !1384
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.24), !dbg !1385
  %7 = load ptr, ptr @stderr, align 8, !dbg !1386
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.25), !dbg !1387
  %8 = load ptr, ptr @stderr, align 8, !dbg !1388
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.26), !dbg !1389
  %9 = load ptr, ptr @stderr, align 8, !dbg !1390
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.27), !dbg !1391
  %10 = load ptr, ptr @stderr, align 8, !dbg !1392
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.28), !dbg !1393
  %11 = load ptr, ptr @stderr, align 8, !dbg !1394
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.29), !dbg !1395
  %12 = load ptr, ptr @stderr, align 8, !dbg !1396
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.30), !dbg !1397
  %13 = load ptr, ptr @stderr, align 8, !dbg !1398
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.31), !dbg !1399
  %14 = load ptr, ptr @stderr, align 8, !dbg !1400
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.32), !dbg !1401
  %15 = load ptr, ptr @stderr, align 8, !dbg !1402
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.33), !dbg !1403
  %16 = load ptr, ptr @stderr, align 8, !dbg !1404
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.34), !dbg !1405
  call void @exit(i32 noundef 0) #12, !dbg !1406
  unreachable, !dbg !1406
}

; Function Attrs: noreturn null_pointer_is_valid
declare !dbg !1407 void @version(ptr noundef) #4

; Function Attrs: noreturn nounwind null_pointer_is_valid
declare !dbg !1410 void @exit(i32 noundef) #7

; Function Attrs: null_pointer_is_valid
declare !dbg !1413 i32 @dst_lib_init(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !1416 ptr @isc_result_totext(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !1420 void @isc_stdtime_get(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !1424 zeroext i16 @strtoclass(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !1427 void @setup_logging(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @loadzone(ptr noundef %file, ptr noundef %origin, i16 noundef zeroext %rdclass, ptr noundef %db) #0 !dbg !1431 {
entry:
  %file.addr = alloca ptr, align 8
  %origin.addr = alloca ptr, align 8
  %rdclass.addr = alloca i16, align 2
  %db.addr = alloca ptr, align 8
  %b = alloca %struct.isc_buffer, align 8
  %len = alloca i32, align 4
  %fname = alloca %struct.dns_fixedname, align 8
  %name = alloca ptr, align 8
  %result = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !1435, metadata !DIExpression()), !dbg !1459
  store ptr %origin, ptr %origin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %origin.addr, metadata !1436, metadata !DIExpression()), !dbg !1460
  store i16 %rdclass, ptr %rdclass.addr, align 2
  tail call void @llvm.dbg.declare(metadata ptr %rdclass.addr, metadata !1437, metadata !DIExpression()), !dbg !1461
  store ptr %db, ptr %db.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %db.addr, metadata !1438, metadata !DIExpression()), !dbg !1462
  call void @llvm.lifetime.start.p0(i64 64, ptr %b) #9, !dbg !1463
  tail call void @llvm.dbg.declare(metadata ptr %b, metadata !1439, metadata !DIExpression()), !dbg !1464
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #9, !dbg !1465
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !1440, metadata !DIExpression()), !dbg !1466
  call void @llvm.lifetime.start.p0(i64 528, ptr %fname) #9, !dbg !1467
  tail call void @llvm.dbg.declare(metadata ptr %fname, metadata !1441, metadata !DIExpression()), !dbg !1468
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #9, !dbg !1469
  tail call void @llvm.dbg.declare(metadata ptr %name, metadata !1457, metadata !DIExpression()), !dbg !1470
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #9, !dbg !1471
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !1458, metadata !DIExpression()), !dbg !1472
  %0 = load ptr, ptr %origin.addr, align 8, !dbg !1473
  %call = call i64 @strlen(ptr noundef %0) #10, !dbg !1474
  %conv = trunc i64 %call to i32, !dbg !1474
  store i32 %conv, ptr %len, align 4, !dbg !1475
  br label %do.body, !dbg !1476

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %origin.addr, align 8, !dbg !1477
  %base = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 1, !dbg !1477
  store ptr %1, ptr %base, align 8, !dbg !1477
  %2 = load i32, ptr %len, align 4, !dbg !1477
  %length = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 2, !dbg !1477
  store i32 %2, ptr %length, align 8, !dbg !1477
  %used = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 3, !dbg !1477
  store i32 0, ptr %used, align 4, !dbg !1477
  %current = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 4, !dbg !1477
  store i32 0, ptr %current, align 8, !dbg !1477
  %active = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 5, !dbg !1477
  store i32 0, ptr %active, align 4, !dbg !1477
  %mctx = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 7, !dbg !1477
  store ptr null, ptr %mctx, align 8, !dbg !1477
  br label %do.body1, !dbg !1477

do.body1:                                         ; preds = %do.body
  %link = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 6, !dbg !1479
  %prev = getelementptr inbounds %struct.anon.4, ptr %link, i32 0, i32 0, !dbg !1479
  store ptr inttoptr (i64 -1 to ptr), ptr %prev, align 8, !dbg !1479
  %link2 = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 6, !dbg !1479
  %next = getelementptr inbounds %struct.anon.4, ptr %link2, i32 0, i32 1, !dbg !1479
  store ptr inttoptr (i64 -1 to ptr), ptr %next, align 8, !dbg !1479
  br label %do.cond, !dbg !1479

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !1479

do.end:                                           ; preds = %do.cond
  %magic = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 0, !dbg !1477
  store i32 1114990113, ptr %magic, align 8, !dbg !1477
  %autore = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 8, !dbg !1477
  store i8 0, ptr %autore, align 8, !dbg !1477
  br label %do.cond3, !dbg !1477

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !1477

do.end4:                                          ; preds = %do.cond3
  br label %do.body5, !dbg !1481

do.body5:                                         ; preds = %do.end4
  %3 = load i32, ptr %len, align 4, !dbg !1482
  %used6 = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 3, !dbg !1482
  %4 = load i32, ptr %used6, align 4, !dbg !1482
  %add = add i32 %4, %3, !dbg !1482
  store i32 %add, ptr %used6, align 4, !dbg !1482
  br label %do.cond7, !dbg !1482

do.cond7:                                         ; preds = %do.body5
  br label %do.end8, !dbg !1482

do.end8:                                          ; preds = %do.cond7
  %call9 = call ptr @dns_fixedname_initname(ptr noundef %fname), !dbg !1484
  store ptr %call9, ptr %name, align 8, !dbg !1485
  %5 = load ptr, ptr %name, align 8, !dbg !1486
  %6 = load ptr, ptr @dns_rootname, align 8, !dbg !1487
  %call10 = call i32 @dns_name_fromtext(ptr noundef %5, ptr noundef %b, ptr noundef %6, i32 noundef 0, ptr noundef null), !dbg !1488
  store i32 %call10, ptr %result, align 4, !dbg !1489
  %7 = load i32, ptr %result, align 4, !dbg !1490
  %cmp = icmp ne i32 %7, 0, !dbg !1492
  br i1 %cmp, label %if.then, label %if.end, !dbg !1493

if.then:                                          ; preds = %do.end8
  %8 = load ptr, ptr %origin.addr, align 8, !dbg !1494
  %9 = load i32, ptr %result, align 4, !dbg !1495
  %call12 = call ptr @isc_result_totext(i32 noundef %9), !dbg !1496
  call void (ptr, ...) @fatal(ptr noundef @.str.35, ptr noundef %8, ptr noundef %call12) #11, !dbg !1497
  unreachable, !dbg !1497

if.end:                                           ; preds = %do.end8
  %10 = load ptr, ptr @mctx, align 8, !dbg !1498
  %11 = load ptr, ptr %name, align 8, !dbg !1499
  %12 = load i16, ptr %rdclass.addr, align 2, !dbg !1500
  %13 = load ptr, ptr %db.addr, align 8, !dbg !1501
  %call13 = call i32 @dns_db_create(ptr noundef %10, ptr noundef @.str.36, ptr noundef %11, i32 noundef 0, i16 noundef zeroext %12, i32 noundef 0, ptr noundef null, ptr noundef %13), !dbg !1502
  store i32 %call13, ptr %result, align 4, !dbg !1503
  %14 = load i32, ptr %result, align 4, !dbg !1504
  call void @check_result(i32 noundef %14, ptr noundef @.str.37), !dbg !1505
  %15 = load ptr, ptr %db.addr, align 8, !dbg !1506
  %16 = load ptr, ptr %15, align 8, !dbg !1507
  %17 = load ptr, ptr %file.addr, align 8, !dbg !1508
  %18 = load i32, ptr @inputformat, align 4, !dbg !1509
  %call14 = call i32 @dns_db_load(ptr noundef %16, ptr noundef %17, i32 noundef %18, i32 noundef 0), !dbg !1510
  store i32 %call14, ptr %result, align 4, !dbg !1511
  %19 = load i32, ptr %result, align 4, !dbg !1512
  switch i32 %19, label %sw.default [
    i32 65602, label %sw.bb
    i32 0, label %sw.bb
    i32 65551, label %sw.bb15
  ], !dbg !1513

sw.bb:                                            ; preds = %if.end, %if.end
  br label %sw.epilog, !dbg !1514

sw.bb15:                                          ; preds = %if.end
  %20 = load ptr, ptr %origin.addr, align 8, !dbg !1516
  %21 = load ptr, ptr %file.addr, align 8, !dbg !1518
  %cmp16 = icmp eq ptr %20, %21, !dbg !1519
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !1520

if.then18:                                        ; preds = %sw.bb15
  %22 = load ptr, ptr %origin.addr, align 8, !dbg !1521
  %23 = load ptr, ptr %file.addr, align 8, !dbg !1523
  call void (ptr, ...) @fatal(ptr noundef @.str.38, ptr noundef %22, ptr noundef %23) #11, !dbg !1524
  unreachable, !dbg !1524

if.end19:                                         ; preds = %sw.bb15
  br label %sw.default, !dbg !1518

sw.default:                                       ; preds = %if.end, %if.end19
  %24 = load ptr, ptr %file.addr, align 8, !dbg !1525
  %25 = load i32, ptr %result, align 4, !dbg !1526
  %call20 = call ptr @isc_result_totext(i32 noundef %25), !dbg !1527
  call void (ptr, ...) @fatal(ptr noundef @.str.39, ptr noundef %24, ptr noundef %call20) #11, !dbg !1528
  unreachable, !dbg !1528

sw.epilog:                                        ; preds = %sw.bb
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #9, !dbg !1529
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #9, !dbg !1529
  call void @llvm.lifetime.end.p0(i64 528, ptr %fname) #9, !dbg !1529
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #9, !dbg !1529
  call void @llvm.lifetime.end.p0(i64 64, ptr %b) #9, !dbg !1529
  ret void, !dbg !1529
}

; Function Attrs: null_pointer_is_valid
declare !dbg !1530 ptr @dns_db_origin(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !1533 zeroext i16 @dns_db_class(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !1536 i32 @dns_db_newversion(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !1537 i32 @dns_zoneverify_dnssec(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !1547 void @dns_db_closeversion(ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !1548 void @dns_db_detach(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !1549 void @cleanup_logging(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !1552 void @dst_lib_destroy() #2

; Function Attrs: null_pointer_is_valid
declare !dbg !1553 void @dns_name_destroy() #2

; Function Attrs: null_pointer_is_valid
declare !dbg !1554 void @isc_mem_stats(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !1557 void @isc_mem_destroy(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !1560 void @isc_app_finish() #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid willreturn memory(read)
declare !dbg !1561 i64 @strlen(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare !dbg !1565 ptr @dns_fixedname_initname(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !1569 i32 @dns_name_fromtext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !1572 i32 @dns_db_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !1576 i32 @dns_db_load(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #8

attributes #0 = { nounwind null_pointer_is_valid uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind null_pointer_is_valid willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind null_pointer_is_valid uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { noreturn }
attributes #12 = { noreturn nounwind }

!llvm.dbg.cu = !{!10}
!llvm.module.flags = !{!1057, !1058, !1059, !1060, !1061}
!llvm.ident = !{!1062}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 71, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./dnssec-verify.c", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/bin/dnssec", checksumkind: CSK_MD5, checksum: "da34d5ec6fb2f059fc5381e4ca06d752")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !6)
!4 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{!7}
!7 = !DISubrange(count: 14)
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "program", scope: !10, file: !2, line: 71, type: !210, isLocal: false, isDefinition: true)
!10 = distinct !DICompileUnit(language: DW_LANG_C11, file: !11, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !12, retainedTypes: !29, globals: !31, splitDebugInlining: false, nameTableKind: None)
!11 = !DIFile(filename: "dnssec-verify.c", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/bin/dnssec", checksumkind: CSK_MD5, checksum: "da34d5ec6fb2f059fc5381e4ca06d752")
!12 = !{!13, !21, !24}
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 213, baseType: !15, size: 32, elements: !16)
!14 = !DIFile(filename: "lib/dns/include/dns/types.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "f35a187441d60b1b4301c816339e75b0")
!15 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!16 = !{!17, !18, !19, !20}
!17 = !DIEnumerator(name: "dns_masterformat_none", value: 0)
!18 = !DIEnumerator(name: "dns_masterformat_text", value: 1)
!19 = !DIEnumerator(name: "dns_masterformat_raw", value: 2)
!20 = !DIEnumerator(name: "dns_masterformat_map", value: 3)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 164, baseType: !15, size: 32, elements: !22)
!22 = !{!23}
!23 = !DIEnumerator(name: "dns_hash_sha1", value: 1)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 186, baseType: !15, size: 32, elements: !25)
!25 = !{!26, !27, !28}
!26 = !DIEnumerator(name: "dns_dbtype_zone", value: 0)
!27 = !DIEnumerator(name: "dns_dbtype_cache", value: 1)
!28 = !DIEnumerator(name: "dns_dbtype_stub", value: 3)
!29 = !{!30}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!31 = !{!0, !8, !32, !37, !42, !47, !49, !54, !56, !58, !60, !65, !70, !72, !77, !79, !84, !89, !94, !99, !102, !110, !966, !968, !970, !972, !974, !976, !978, !981, !986, !991, !996, !998, !1003, !1005, !1008, !1010, !1012, !1014, !1019, !1022, !1024, !1029, !1034, !1039, !1041, !1046, !1048, !1050, !1055}
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 183, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 17)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 186, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 7)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 188, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 6)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 190, type: !44, isLocal: true, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 192, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 5)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !2, line: 194, type: !51, isLocal: true, isDefinition: true)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(scope: null, file: !2, line: 202, type: !3, isLocal: true, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !2, line: 206, type: !3, isLocal: true, isDefinition: true)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(scope: null, file: !2, line: 240, type: !62, isLocal: true, isDefinition: true)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 30)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(scope: null, file: !2, line: 253, type: !67, isLocal: true, isDefinition: true)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 26)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(scope: null, file: !2, line: 266, type: !67, isLocal: true, isDefinition: true)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !2, line: 274, type: !74, isLocal: true, isDefinition: true)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 29)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(scope: null, file: !2, line: 301, type: !51, isLocal: true, isDefinition: true)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(scope: null, file: !2, line: 303, type: !81, isLocal: true, isDefinition: true)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 4)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(scope: null, file: !2, line: 306, type: !86, isLocal: true, isDefinition: true)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 25)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(scope: null, file: !2, line: 310, type: !91, isLocal: true, isDefinition: true)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 34)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(scope: null, file: !2, line: 317, type: !96, isLocal: true, isDefinition: true)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 20)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(name: "verbose", scope: !10, file: !2, line: 72, type: !101, isLocal: false, isDefinition: true)
!101 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(name: "now", scope: !10, file: !2, line: 74, type: !104, isLocal: true, isDefinition: true)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_stdtime_t", file: !105, line: 26, baseType: !106)
!105 = !DIFile(filename: "../../lib/isc/unix/include/isc/stdtime.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/bin/dnssec", checksumkind: CSK_MD5, checksum: "b8868fded6c0eb282ad50986c628a693")
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !107, line: 26, baseType: !108)
!107 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !109, line: 42, baseType: !15)
!109 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "gdb", scope: !10, file: !2, line: 77, type: !112, isLocal: true, isDefinition: true)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_db_t", file: !14, line: 54, baseType: !114)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_db", file: !115, line: 223, size: 1024, elements: !116)
!115 = !DIFile(filename: "lib/dns/include/dns/db.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "f7341a6445a0da00d6edbc7f74bf2ce5")
!116 = !{!117, !118, !119, !942, !943, !944, !945, !946}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !114, file: !115, line: 224, baseType: !15, size: 32)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "impmagic", scope: !114, file: !115, line: 225, baseType: !15, size: 32, offset: 32)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "methods", scope: !114, file: !115, line: 226, baseType: !120, size: 64, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_dbmethods_t", file: !115, line: 200, baseType: !122)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_dbmethods", file: !115, line: 71, size: 3072, elements: !123)
!123 = !{!124, !129, !133, !142, !143, !206, !212, !217, !221, !225, !230, !621, !625, !629, !633, !637, !641, !645, !688, !692, !725, !729, !733, !737, !741, !745, !746, !750, !757, !761, !765, !776, !777, !781, !785, !789, !790, !797, !801, !805, !906, !910, !917, !921, !925, !932, !936, !941}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !122, file: !115, line: 72, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{null, !112, !128}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !122, file: !115, line: 73, baseType: !130, size: 64, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{null, !128}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "beginload", scope: !122, file: !115, line: 74, baseType: !134, size: 64, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!137, !112, !139}
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_result_t", file: !138, line: 67, baseType: !15)
!138 = !DIFile(filename: "lib/isc/include/isc/types.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "6a355582c4f962c465b18bab43b68c96")
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdatacallbacks_t", file: !14, line: 120, baseType: !141)
!141 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_rdatacallbacks", file: !14, line: 120, flags: DIFlagFwdDecl)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "endload", scope: !122, file: !115, line: 76, baseType: !134, size: 64, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "serialize", scope: !122, file: !115, line: 78, baseType: !144, size: 64, offset: 256)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DISubroutineType(types: !146)
!146 = !{!137, !112, !147, !149}
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_dbversion_t", file: !14, line: 61, baseType: null)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !151, line: 7, baseType: !152)
!151 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !153, line: 49, size: 1728, elements: !154)
!153 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!154 = !{!155, !156, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !171, !173, !174, !175, !178, !180, !182, !186, !189, !191, !194, !197, !198, !199, !203, !204}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !152, file: !153, line: 51, baseType: !101, size: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !152, file: !153, line: 54, baseType: !157, size: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !152, file: !153, line: 55, baseType: !157, size: 64, offset: 128)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !152, file: !153, line: 56, baseType: !157, size: 64, offset: 192)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !152, file: !153, line: 57, baseType: !157, size: 64, offset: 256)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !152, file: !153, line: 58, baseType: !157, size: 64, offset: 320)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !152, file: !153, line: 59, baseType: !157, size: 64, offset: 384)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !152, file: !153, line: 60, baseType: !157, size: 64, offset: 448)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !152, file: !153, line: 61, baseType: !157, size: 64, offset: 512)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !152, file: !153, line: 64, baseType: !157, size: 64, offset: 576)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !152, file: !153, line: 65, baseType: !157, size: 64, offset: 640)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !152, file: !153, line: 66, baseType: !157, size: 64, offset: 704)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !152, file: !153, line: 68, baseType: !169, size: 64, offset: 768)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !153, line: 36, flags: DIFlagFwdDecl)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !152, file: !153, line: 70, baseType: !172, size: 64, offset: 832)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !152, file: !153, line: 72, baseType: !101, size: 32, offset: 896)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !152, file: !153, line: 73, baseType: !101, size: 32, offset: 928)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !152, file: !153, line: 74, baseType: !176, size: 64, offset: 960)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !109, line: 152, baseType: !177)
!177 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !152, file: !153, line: 77, baseType: !179, size: 16, offset: 1024)
!179 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !152, file: !153, line: 78, baseType: !181, size: 8, offset: 1040)
!181 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !152, file: !153, line: 79, baseType: !183, size: 8, offset: 1048)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 1)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !152, file: !153, line: 81, baseType: !187, size: 64, offset: 1088)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !153, line: 43, baseType: null)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !152, file: !153, line: 89, baseType: !190, size: 64, offset: 1152)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !109, line: 153, baseType: !177)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !152, file: !153, line: 91, baseType: !192, size: 64, offset: 1216)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !153, line: 37, flags: DIFlagFwdDecl)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !152, file: !153, line: 92, baseType: !195, size: 64, offset: 1280)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !153, line: 38, flags: DIFlagFwdDecl)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !152, file: !153, line: 93, baseType: !172, size: 64, offset: 1344)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !152, file: !153, line: 94, baseType: !30, size: 64, offset: 1408)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !152, file: !153, line: 95, baseType: !200, size: 64, offset: 1472)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !201, line: 70, baseType: !202)
!201 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!202 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !152, file: !153, line: 96, baseType: !101, size: 32, offset: 1536)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !152, file: !153, line: 98, baseType: !205, size: 160, offset: 1568)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 160, elements: !97)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !122, file: !115, line: 80, baseType: !207, size: 64, offset: 320)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!137, !112, !147, !210, !211}
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_masterformat_t", file: !14, line: 218, baseType: !13)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "currentversion", scope: !122, file: !115, line: 83, baseType: !213, size: 64, offset: 384)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{null, !112, !216}
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "newversion", scope: !122, file: !115, line: 85, baseType: !218, size: 64, offset: 448)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!137, !112, !216}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "attachversion", scope: !122, file: !115, line: 87, baseType: !222, size: 64, offset: 512)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{null, !112, !147, !216}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "closeversion", scope: !122, file: !115, line: 89, baseType: !226, size: 64, offset: 576)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{null, !112, !216, !229}
!229 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "findnode", scope: !122, file: !115, line: 92, baseType: !231, size: 64, offset: 640)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{!137, !112, !234, !229, !618}
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_name_t", file: !14, line: 107, baseType: !237)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_name", file: !238, line: 104, size: 640, elements: !239)
!238 = !DIFile(filename: "lib/dns/include/dns/name.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "ec64c9a43875cd86cb4b0e37c1191a89")
!239 = !{!240, !241, !244, !245, !246, !247, !248, !305, !311}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !237, file: !238, line: 105, baseType: !15, size: 32)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "ndata", scope: !237, file: !238, line: 106, baseType: !242, size: 64, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !237, file: !238, line: 107, baseType: !15, size: 32, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "labels", scope: !237, file: !238, line: 108, baseType: !15, size: 32, offset: 160)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !237, file: !238, line: 109, baseType: !15, size: 32, offset: 192)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !237, file: !238, line: 110, baseType: !242, size: 64, offset: 256)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !237, file: !238, line: 111, baseType: !249, size: 64, offset: 320)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_buffer_t", file: !138, line: 35, baseType: !251)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_buffer", file: !252, line: 173, size: 512, elements: !253)
!252 = !DIFile(filename: "lib/isc/include/isc/buffer.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "feec9784066f3891a27281dd5bdccd55")
!253 = !{!254, !255, !256, !257, !258, !259, !260, !265, !304}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !251, file: !252, line: 174, baseType: !15, size: 32)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !251, file: !252, line: 175, baseType: !30, size: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !251, file: !252, line: 178, baseType: !15, size: 32, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !251, file: !252, line: 179, baseType: !15, size: 32, offset: 160)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !251, file: !252, line: 180, baseType: !15, size: 32, offset: 192)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !251, file: !252, line: 181, baseType: !15, size: 32, offset: 224)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !251, file: !252, line: 184, baseType: !261, size: 128, offset: 256)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !251, file: !252, line: 184, size: 128, elements: !262)
!262 = !{!263, !264}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !261, file: !252, line: 184, baseType: !249, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !261, file: !252, line: 184, baseType: !249, size: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "mctx", scope: !251, file: !252, line: 186, baseType: !266, size: 64, offset: 384)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_mem_t", file: !138, line: 59, baseType: !268)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_mem", file: !269, line: 191, size: 128, elements: !270)
!269 = !DIFile(filename: "lib/isc/include/isc/mem.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "587a841195795b087519b89f298822b2")
!270 = !{!271, !272, !273}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "impmagic", scope: !268, file: !269, line: 192, baseType: !15, size: 32)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !268, file: !269, line: 193, baseType: !15, size: 32, offset: 32)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "methods", scope: !268, file: !269, line: 194, baseType: !274, size: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_memmethods_t", file: !269, line: 180, baseType: !276)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_memmethods", file: !269, line: 170, size: 448, elements: !277)
!277 = !{!278, !282, !286, !291, !292, !296, !300}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "memget", scope: !276, file: !269, line: 171, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!30, !266, !200, !210, !15}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "memput", scope: !276, file: !269, line: 172, baseType: !283, size: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{null, !266, !30, !200, !210, !15}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "memputanddetach", scope: !276, file: !269, line: 173, baseType: !287, size: 64, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{null, !290, !30, !200, !210, !15}
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "memallocate", scope: !276, file: !269, line: 175, baseType: !279, size: 64, offset: 192)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "memreallocate", scope: !276, file: !269, line: 176, baseType: !293, size: 64, offset: 256)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{!30, !266, !30, !200, !210, !15}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "memstrdup", scope: !276, file: !269, line: 178, baseType: !297, size: 64, offset: 320)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DISubroutineType(types: !299)
!299 = !{!157, !266, !210, !210, !15}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "memfree", scope: !276, file: !269, line: 179, baseType: !301, size: 64, offset: 384)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{null, !266, !30, !210, !15}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "autore", scope: !251, file: !252, line: 188, baseType: !229, size: 8, offset: 448)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !237, file: !238, line: 112, baseType: !306, size: 128, offset: 384)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !237, file: !238, line: 112, size: 128, elements: !307)
!307 = !{!308, !310}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !306, file: !238, line: 112, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !306, file: !238, line: 112, baseType: !309, size: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !237, file: !238, line: 113, baseType: !312, size: 128, offset: 512)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !237, file: !238, line: 113, size: 128, elements: !313)
!313 = !{!314, !617}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !312, file: !238, line: 113, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdataset_t", file: !14, line: 123, baseType: !317)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_rdataset", file: !318, line: 107, size: 960, elements: !319)
!318 = !DIFile(filename: "lib/dns/include/dns/rdataset.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "a2414fd23f718a363582354673aed6a8")
!319 = !{!320, !321, !596, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !317, file: !318, line: 108, baseType: !15, size: 32)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "methods", scope: !317, file: !318, line: 109, baseType: !322, size: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdatasetmethods_t", file: !318, line: 96, baseType: !324)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_rdatasetmethods", file: !318, line: 64, size: 1024, elements: !325)
!325 = !{!326, !330, !334, !335, !358, !362, !366, !370, !374, !375, !376, !381, !382, !383, !387, !393}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "disassociate", scope: !324, file: !318, line: 65, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{null, !315}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !324, file: !318, line: 66, baseType: !331, size: 64, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!137, !315}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !324, file: !318, line: 67, baseType: !331, size: 64, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !324, file: !318, line: 68, baseType: !336, size: 64, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !315, !339}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdata_t", file: !14, line: 119, baseType: !341)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_rdata", file: !342, line: 112, size: 320, elements: !343)
!342 = !DIFile(filename: "lib/dns/include/dns/rdata.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "e790fb4f336bc4fdcd566550403b32a6")
!343 = !{!344, !345, !346, !350, !352, !353}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !341, file: !342, line: 113, baseType: !242, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !341, file: !342, line: 114, baseType: !15, size: 32, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "rdclass", scope: !341, file: !342, line: 115, baseType: !347, size: 16, offset: 96)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdataclass_t", file: !14, line: 121, baseType: !348)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !107, line: 25, baseType: !349)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !109, line: 40, baseType: !179)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !341, file: !342, line: 116, baseType: !351, size: 16, offset: 112)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdatatype_t", file: !14, line: 126, baseType: !348)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !341, file: !342, line: 117, baseType: !15, size: 32, offset: 128)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !341, file: !342, line: 118, baseType: !354, size: 128, offset: 192)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !341, file: !342, line: 118, size: 128, elements: !355)
!355 = !{!356, !357}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !354, file: !342, line: 118, baseType: !339, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !354, file: !342, line: 118, baseType: !339, size: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "clone", scope: !324, file: !318, line: 70, baseType: !359, size: 64, offset: 256)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{null, !315, !315}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !324, file: !318, line: 72, baseType: !363, size: 64, offset: 320)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{!15, !315}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "addnoqname", scope: !324, file: !318, line: 73, baseType: !367, size: 64, offset: 384)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DISubroutineType(types: !369)
!369 = !{!137, !315, !234}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "getnoqname", scope: !324, file: !318, line: 75, baseType: !371, size: 64, offset: 448)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DISubroutineType(types: !373)
!373 = !{!137, !315, !309, !315, !315}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "addclosest", scope: !324, file: !318, line: 79, baseType: !367, size: 64, offset: 512)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "getclosest", scope: !324, file: !318, line: 81, baseType: !371, size: 64, offset: 576)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "settrust", scope: !324, file: !318, line: 85, baseType: !377, size: 64, offset: 640)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DISubroutineType(types: !379)
!379 = !{null, !315, !380}
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_trust_t", file: !14, line: 140, baseType: !348)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "expire", scope: !324, file: !318, line: 87, baseType: !327, size: 64, offset: 704)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "clearprefetch", scope: !324, file: !318, line: 88, baseType: !327, size: 64, offset: 768)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "setownercase", scope: !324, file: !318, line: 89, baseType: !384, size: 64, offset: 832)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !315, !234}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "getownercase", scope: !324, file: !318, line: 91, baseType: !388, size: 64, offset: 896)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DISubroutineType(types: !390)
!390 = !{null, !391, !309}
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !316)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "addglue", scope: !324, file: !318, line: 93, baseType: !394, size: 64, offset: 960)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{!137, !315, !147, !397}
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_message_t", file: !14, line: 103, baseType: !399)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_message", file: !400, line: 197, size: 3840, elements: !401)
!400 = !DIFile(filename: "lib/dns/include/dns/message.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "6416f0e57c4314c86bb1ccbb29bdbc0d")
!401 = !{!402, !403, !405, !406, !408, !410, !411, !413, !420, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !478, !479, !486, !487, !493, !494, !502, !507, !512, !517, !546, !547, !548, !549, !550, !554, !559, !560, !561, !562, !566, !567, !568, !569, !578}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !399, file: !400, line: 199, baseType: !15, size: 32)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !399, file: !400, line: 201, baseType: !404, size: 16, offset: 32)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_messageid_t", file: !14, line: 104, baseType: !348)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !399, file: !400, line: 202, baseType: !15, size: 32, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "rcode", scope: !399, file: !400, line: 203, baseType: !407, size: 16, offset: 96)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rcode_t", file: !14, line: 118, baseType: !348)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !399, file: !400, line: 204, baseType: !409, size: 16, offset: 112)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_opcode_t", file: !14, line: 111, baseType: !348)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "rdclass", scope: !399, file: !400, line: 205, baseType: !347, size: 16, offset: 128)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "counts", scope: !399, file: !400, line: 208, baseType: !412, size: 128, offset: 160)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 128, elements: !82)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "sections", scope: !399, file: !400, line: 211, baseType: !414, size: 512, offset: 320)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !415, size: 512, elements: !82)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_namelist_t", file: !14, line: 108, baseType: !416)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 108, size: 128, elements: !417)
!417 = !{!418, !419}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !416, file: !14, line: 108, baseType: !309, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !416, file: !14, line: 108, baseType: !309, size: 64, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "cursors", scope: !399, file: !400, line: 212, baseType: !421, size: 256, offset: 832)
!421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 256, elements: !82)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "opt", scope: !399, file: !400, line: 213, baseType: !315, size: 64, offset: 1088)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "sig0", scope: !399, file: !400, line: 214, baseType: !315, size: 64, offset: 1152)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "tsig", scope: !399, file: !400, line: 215, baseType: !315, size: 64, offset: 1216)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !399, file: !400, line: 217, baseType: !101, size: 32, offset: 1280)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "from_to_wire", scope: !399, file: !400, line: 218, baseType: !15, size: 2, offset: 1312, flags: DIFlagBitField, extraData: i64 1312)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "header_ok", scope: !399, file: !400, line: 219, baseType: !15, size: 1, offset: 1314, flags: DIFlagBitField, extraData: i64 1312)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "question_ok", scope: !399, file: !400, line: 220, baseType: !15, size: 1, offset: 1315, flags: DIFlagBitField, extraData: i64 1312)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_continuation", scope: !399, file: !400, line: 221, baseType: !15, size: 1, offset: 1316, flags: DIFlagBitField, extraData: i64 1312)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "verified_sig", scope: !399, file: !400, line: 222, baseType: !15, size: 1, offset: 1317, flags: DIFlagBitField, extraData: i64 1312)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "verify_attempted", scope: !399, file: !400, line: 223, baseType: !15, size: 1, offset: 1318, flags: DIFlagBitField, extraData: i64 1312)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "free_query", scope: !399, file: !400, line: 224, baseType: !15, size: 1, offset: 1319, flags: DIFlagBitField, extraData: i64 1312)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "free_saved", scope: !399, file: !400, line: 225, baseType: !15, size: 1, offset: 1320, flags: DIFlagBitField, extraData: i64 1312)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "cc_ok", scope: !399, file: !400, line: 226, baseType: !15, size: 1, offset: 1321, flags: DIFlagBitField, extraData: i64 1312)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "cc_bad", scope: !399, file: !400, line: 227, baseType: !15, size: 1, offset: 1322, flags: DIFlagBitField, extraData: i64 1312)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "tkey", scope: !399, file: !400, line: 228, baseType: !15, size: 1, offset: 1323, flags: DIFlagBitField, extraData: i64 1312)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "rdclass_set", scope: !399, file: !400, line: 229, baseType: !15, size: 1, offset: 1324, flags: DIFlagBitField, extraData: i64 1312)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "opt_reserved", scope: !399, file: !400, line: 231, baseType: !15, size: 32, offset: 1344)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "sig_reserved", scope: !399, file: !400, line: 232, baseType: !15, size: 32, offset: 1376)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !399, file: !400, line: 233, baseType: !15, size: 32, offset: 1408)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !399, file: !400, line: 235, baseType: !348, size: 16, offset: 1440)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "padding_off", scope: !399, file: !400, line: 236, baseType: !15, size: 32, offset: 1472)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !399, file: !400, line: 238, baseType: !249, size: 64, offset: 1536)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "cctx", scope: !399, file: !400, line: 239, baseType: !445, size: 64, offset: 1600)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_compress_t", file: !14, line: 53, baseType: !447)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_compress", file: !448, line: 66, size: 18688, elements: !449)
!448 = !DIFile(filename: "lib/dns/include/dns/compress.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "ae360072e6dd15c4fe76c4efa2dcea4c")
!449 = !{!450, !451, !452, !453, !472, !476, !477}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !447, file: !448, line: 67, baseType: !15, size: 32)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "allowed", scope: !447, file: !448, line: 68, baseType: !15, size: 32, offset: 32)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "edns", scope: !447, file: !448, line: 69, baseType: !101, size: 32, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !447, file: !448, line: 71, baseType: !454, size: 4096, offset: 128)
!454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !455, size: 4096, elements: !470)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_compressnode_t", file: !448, line: 56, baseType: !457)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_compressnode", file: !448, line: 58, size: 896, elements: !458)
!458 = !{!459, !460, !461, !462, !469}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !457, file: !448, line: 59, baseType: !455, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !457, file: !448, line: 60, baseType: !348, size: 16, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !457, file: !448, line: 61, baseType: !348, size: 16, offset: 80)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !457, file: !448, line: 62, baseType: !463, size: 128, offset: 128)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_region_t", file: !138, line: 65, baseType: !464)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_region", file: !465, line: 21, size: 128, elements: !466)
!465 = !DIFile(filename: "lib/isc/include/isc/region.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "2ed4a07dc05ddbd48f51e2dc9be9f317")
!466 = !{!467, !468}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !464, file: !465, line: 22, baseType: !242, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !464, file: !465, line: 23, baseType: !15, size: 32, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !457, file: !448, line: 63, baseType: !236, size: 640, offset: 256)
!470 = !{!471}
!471 = !DISubrange(count: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "initialnodes", scope: !447, file: !448, line: 73, baseType: !473, size: 14336, offset: 4224)
!473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, size: 14336, elements: !474)
!474 = !{!475}
!475 = !DISubrange(count: 16)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !447, file: !448, line: 74, baseType: !348, size: 16, offset: 18560)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "mctx", scope: !447, file: !448, line: 75, baseType: !266, size: 64, offset: 18624)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "mctx", scope: !399, file: !400, line: 241, baseType: !266, size: 64, offset: 1664)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "namepool", scope: !399, file: !400, line: 242, baseType: !480, size: 64, offset: 1728)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_mempool_t", file: !138, line: 60, baseType: !482)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_mempool", file: !269, line: 205, size: 64, elements: !483)
!483 = !{!484, !485}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "impmagic", scope: !482, file: !269, line: 206, baseType: !15, size: 32)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !482, file: !269, line: 207, baseType: !15, size: 32, offset: 32)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "rdspool", scope: !399, file: !400, line: 243, baseType: !480, size: 64, offset: 1792)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "scratchpad", scope: !399, file: !400, line: 245, baseType: !488, size: 128, offset: 1856)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_bufferlist_t", file: !138, line: 36, baseType: !489)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !138, line: 36, size: 128, elements: !490)
!490 = !{!491, !492}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !489, file: !138, line: 36, baseType: !249, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !489, file: !138, line: 36, baseType: !249, size: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !399, file: !400, line: 246, baseType: !488, size: 128, offset: 1984)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "rdatas", scope: !399, file: !400, line: 248, baseType: !495, size: 128, offset: 2112)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !399, file: !400, line: 248, size: 128, elements: !496)
!496 = !{!497, !501}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !495, file: !400, line: 248, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_msgblock_t", file: !400, line: 189, baseType: !500)
!500 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_msgblock", file: !400, line: 189, flags: DIFlagFwdDecl)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !495, file: !400, line: 248, baseType: !498, size: 64, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "rdatalists", scope: !399, file: !400, line: 249, baseType: !503, size: 128, offset: 2240)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !399, file: !400, line: 249, size: 128, elements: !504)
!504 = !{!505, !506}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !503, file: !400, line: 249, baseType: !498, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !503, file: !400, line: 249, baseType: !498, size: 64, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !399, file: !400, line: 250, baseType: !508, size: 128, offset: 2368)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !399, file: !400, line: 250, size: 128, elements: !509)
!509 = !{!510, !511}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !508, file: !400, line: 250, baseType: !498, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !508, file: !400, line: 250, baseType: !498, size: 64, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "freerdata", scope: !399, file: !400, line: 252, baseType: !513, size: 128, offset: 2496)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !399, file: !400, line: 252, size: 128, elements: !514)
!514 = !{!515, !516}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !513, file: !400, line: 252, baseType: !339, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !513, file: !400, line: 252, baseType: !339, size: 64, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "freerdatalist", scope: !399, file: !400, line: 253, baseType: !518, size: 128, offset: 2624)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !399, file: !400, line: 253, size: 128, elements: !519)
!519 = !{!520, !545}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !518, file: !400, line: 253, baseType: !521, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdatalist_t", file: !14, line: 122, baseType: !523)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_rdatalist", file: !524, line: 47, size: 640, elements: !525)
!524 = !DIFile(filename: "lib/dns/include/dns/rdatalist.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "83ad1004003459f099937cac6d2eb8e0")
!525 = !{!526, !527, !528, !529, !531, !536, !541}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "rdclass", scope: !523, file: !524, line: 48, baseType: !347, size: 16)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !523, file: !524, line: 49, baseType: !351, size: 16, offset: 16)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "covers", scope: !523, file: !524, line: 50, baseType: !351, size: 16, offset: 32)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !523, file: !524, line: 51, baseType: !530, size: 32, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_ttl_t", file: !14, line: 144, baseType: !106)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "rdata", scope: !523, file: !524, line: 52, baseType: !532, size: 128, offset: 128)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !523, file: !524, line: 52, size: 128, elements: !533)
!533 = !{!534, !535}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !532, file: !524, line: 52, baseType: !339, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !532, file: !524, line: 52, baseType: !339, size: 64, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !523, file: !524, line: 53, baseType: !537, size: 128, offset: 256)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !523, file: !524, line: 53, size: 128, elements: !538)
!538 = !{!539, !540}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !537, file: !524, line: 53, baseType: !521, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !537, file: !524, line: 53, baseType: !521, size: 64, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "upper", scope: !523, file: !524, line: 59, baseType: !542, size: 256, offset: 384)
!542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 256, elements: !543)
!543 = !{!544}
!544 = !DISubrange(count: 32)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !518, file: !400, line: 253, baseType: !521, size: 64, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "tsigstatus", scope: !399, file: !400, line: 255, baseType: !407, size: 16, offset: 2752)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "querytsigstatus", scope: !399, file: !400, line: 256, baseType: !407, size: 16, offset: 2768)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "tsigname", scope: !399, file: !400, line: 257, baseType: !309, size: 64, offset: 2816)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "querytsig", scope: !399, file: !400, line: 258, baseType: !315, size: 64, offset: 2880)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "tsigkey", scope: !399, file: !400, line: 259, baseType: !551, size: 64, offset: 2944)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_tsigkey_t", file: !14, line: 143, baseType: !553)
!553 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_tsigkey", file: !14, line: 143, flags: DIFlagFwdDecl)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "tsigctx", scope: !399, file: !400, line: 260, baseType: !555, size: 64, offset: 3008)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "dst_context_t", file: !557, line: 45, baseType: !558)
!557 = !DIFile(filename: "lib/dns/include/dst/dst.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "10e76bcacbe005e6cc7dee2ac6ffac9a")
!558 = !DICompositeType(tag: DW_TAG_structure_type, name: "dst_context", file: !557, line: 45, flags: DIFlagFwdDecl)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "sigstart", scope: !399, file: !400, line: 261, baseType: !101, size: 32, offset: 3072)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "timeadjust", scope: !399, file: !400, line: 262, baseType: !101, size: 32, offset: 3104)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "sig0name", scope: !399, file: !400, line: 264, baseType: !309, size: 64, offset: 3136)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "sig0key", scope: !399, file: !400, line: 265, baseType: !563, size: 64, offset: 3200)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "dst_key_t", file: !557, line: 44, baseType: !565)
!565 = !DICompositeType(tag: DW_TAG_structure_type, name: "dst_key", file: !557, line: 44, flags: DIFlagFwdDecl)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "sig0status", scope: !399, file: !400, line: 266, baseType: !407, size: 16, offset: 3264)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "query", scope: !399, file: !400, line: 267, baseType: !463, size: 128, offset: 3328)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "saved", scope: !399, file: !400, line: 268, baseType: !463, size: 128, offset: 3456)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !399, file: !400, line: 270, baseType: !570, size: 64, offset: 3584)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdatasetorderfunc_t", file: !14, line: 415, baseType: !571)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!101, !574, !576}
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "order_arg", scope: !399, file: !400, line: 271, baseType: !579, size: 192, offset: 3648)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_sortlist_arg_t", file: !14, line: 134, baseType: !580)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_sortlist_arg", file: !400, line: 191, size: 192, elements: !581)
!581 = !{!582, !586, !591}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !580, file: !400, line: 192, baseType: !583, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_aclenv_t", file: !14, line: 32, baseType: !585)
!585 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_aclenv", file: !14, line: 32, flags: DIFlagFwdDecl)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "acl", scope: !580, file: !400, line: 193, baseType: !587, size: 64, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !589)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_acl_t", file: !14, line: 30, baseType: !590)
!590 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_acl", file: !14, line: 30, flags: DIFlagFwdDecl)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "element", scope: !580, file: !400, line: 194, baseType: !592, size: 64, offset: 128)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !594)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_aclelement_t", file: !14, line: 31, baseType: !595)
!595 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_aclelement", file: !14, line: 31, flags: DIFlagFwdDecl)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !317, file: !318, line: 110, baseType: !597, size: 128, offset: 128)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !317, file: !318, line: 110, size: 128, elements: !598)
!598 = !{!599, !600}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !597, file: !318, line: 110, baseType: !315, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !597, file: !318, line: 110, baseType: !315, size: 64, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "rdclass", scope: !317, file: !318, line: 117, baseType: !347, size: 16, offset: 256)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !317, file: !318, line: 118, baseType: !351, size: 16, offset: 272)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !317, file: !318, line: 119, baseType: !530, size: 32, offset: 288)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "stale_ttl", scope: !317, file: !318, line: 124, baseType: !530, size: 32, offset: 320)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "trust", scope: !317, file: !318, line: 125, baseType: !380, size: 16, offset: 352)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "covers", scope: !317, file: !318, line: 126, baseType: !351, size: 16, offset: 368)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !317, file: !318, line: 131, baseType: !15, size: 32, offset: 384)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !317, file: !318, line: 139, baseType: !106, size: 32, offset: 416)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "resign", scope: !317, file: !318, line: 145, baseType: !104, size: 32, offset: 448)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "private1", scope: !317, file: !318, line: 152, baseType: !30, size: 64, offset: 512)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "private2", scope: !317, file: !318, line: 153, baseType: !30, size: 64, offset: 576)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "private3", scope: !317, file: !318, line: 154, baseType: !30, size: 64, offset: 640)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "privateuint4", scope: !317, file: !318, line: 155, baseType: !15, size: 32, offset: 704)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "private5", scope: !317, file: !318, line: 156, baseType: !30, size: 64, offset: 768)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "private6", scope: !317, file: !318, line: 157, baseType: !576, size: 64, offset: 832)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "private7", scope: !317, file: !318, line: 158, baseType: !576, size: 64, offset: 896)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !312, file: !238, line: 113, baseType: !315, size: 64, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_dbnode_t", file: !14, line: 58, baseType: null)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "find", scope: !122, file: !115, line: 95, baseType: !622, size: 64, offset: 704)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{!137, !112, !234, !147, !351, !15, !104, !618, !309, !315, !315}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "findzonecut", scope: !122, file: !115, line: 102, baseType: !626, size: 64, offset: 768)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{!137, !112, !234, !15, !104, !618, !309, !309, !315, !315}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "attachnode", scope: !122, file: !115, line: 109, baseType: !630, size: 64, offset: 832)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{null, !112, !619, !618}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "detachnode", scope: !122, file: !115, line: 112, baseType: !634, size: 64, offset: 896)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{null, !112, !618}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "expirenode", scope: !122, file: !115, line: 114, baseType: !638, size: 64, offset: 960)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{!137, !112, !619, !104}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "printnode", scope: !122, file: !115, line: 116, baseType: !642, size: 64, offset: 1024)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{null, !112, !619, !149}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "createiterator", scope: !122, file: !115, line: 118, baseType: !646, size: 64, offset: 1088)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{!137, !112, !15, !649}
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_dbiterator_t", file: !14, line: 56, baseType: !652)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_dbiterator", file: !653, line: 97, size: 256, elements: !654)
!653 = !DIFile(filename: "lib/dns/include/dns/dbiterator.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "e80aa0115ff591a0b9e600123d76473d")
!654 = !{!655, !656, !685, !686, !687}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !652, file: !653, line: 99, baseType: !15, size: 32)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "methods", scope: !652, file: !653, line: 100, baseType: !657, size: 64, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_dbiteratormethods_t", file: !653, line: 83, baseType: !659)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_dbiteratormethods", file: !653, line: 70, size: 576, elements: !660)
!660 = !{!661, !665, !669, !670, !674, !675, !676, !680, !681}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !659, file: !653, line: 71, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DISubroutineType(types: !664)
!664 = !{null, !649}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !659, file: !653, line: 72, baseType: !666, size: 64, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{!137, !650}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !659, file: !653, line: 73, baseType: !666, size: 64, offset: 128)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "seek", scope: !659, file: !653, line: 74, baseType: !671, size: 64, offset: 192)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{!137, !650, !234}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !659, file: !653, line: 76, baseType: !666, size: 64, offset: 256)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !659, file: !653, line: 77, baseType: !666, size: 64, offset: 320)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !659, file: !653, line: 78, baseType: !677, size: 64, offset: 384)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{!137, !650, !618, !309}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "pause", scope: !659, file: !653, line: 80, baseType: !666, size: 64, offset: 448)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !659, file: !653, line: 81, baseType: !682, size: 64, offset: 512)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{!137, !650, !309}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !652, file: !653, line: 101, baseType: !112, size: 64, offset: 128)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "relative_names", scope: !652, file: !653, line: 102, baseType: !229, size: 8, offset: 192)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "cleaning", scope: !652, file: !653, line: 103, baseType: !229, size: 8, offset: 200)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "findrdataset", scope: !122, file: !115, line: 120, baseType: !689, size: 64, offset: 1152)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{!137, !112, !619, !147, !351, !351, !104, !315, !315}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "allrdatasets", scope: !122, file: !115, line: 127, baseType: !693, size: 64, offset: 1216)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DISubroutineType(types: !695)
!695 = !{!137, !112, !619, !147, !104, !696}
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdatasetiter_t", file: !14, line: 125, baseType: !699)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_rdatasetiter", file: !700, line: 89, size: 384, elements: !701)
!700 = !DIFile(filename: "lib/dns/include/dns/rdatasetiter.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "9746ed7a00ac2faebfbf0cffc47d675f")
!701 = !{!702, !703, !721, !722, !723, !724}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !699, file: !700, line: 91, baseType: !15, size: 32)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "methods", scope: !699, file: !700, line: 92, baseType: !704, size: 64, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdatasetitermethods_t", file: !700, line: 75, baseType: !706)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_rdatasetitermethods", file: !700, line: 69, size: 256, elements: !707)
!707 = !{!708, !712, !716, !717}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !706, file: !700, line: 70, baseType: !709, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{null, !696}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !706, file: !700, line: 71, baseType: !713, size: 64, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{!137, !697}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !706, file: !700, line: 72, baseType: !713, size: 64, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !706, file: !700, line: 73, baseType: !718, size: 64, offset: 192)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{null, !697, !315}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !699, file: !700, line: 93, baseType: !112, size: 64, offset: 128)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !699, file: !700, line: 94, baseType: !619, size: 64, offset: 192)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !699, file: !700, line: 95, baseType: !147, size: 64, offset: 256)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "now", scope: !699, file: !700, line: 96, baseType: !104, size: 32, offset: 320)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "addrdataset", scope: !122, file: !115, line: 131, baseType: !726, size: 64, offset: 1280)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{!137, !112, !619, !147, !104, !315, !15, !315}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "subtractrdataset", scope: !122, file: !115, line: 137, baseType: !730, size: 64, offset: 1344)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{!137, !112, !619, !147, !315, !15, !315}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "deleterdataset", scope: !122, file: !115, line: 142, baseType: !734, size: 64, offset: 1408)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!137, !112, !619, !147, !351, !351}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "issecure", scope: !122, file: !115, line: 146, baseType: !738, size: 64, offset: 1472)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{!229, !112}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "nodecount", scope: !122, file: !115, line: 147, baseType: !742, size: 64, offset: 1536)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!15, !112}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "ispersistent", scope: !122, file: !115, line: 148, baseType: !738, size: 64, offset: 1600)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "overmem", scope: !122, file: !115, line: 149, baseType: !747, size: 64, offset: 1664)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{null, !112, !229}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "settask", scope: !122, file: !115, line: 150, baseType: !751, size: 64, offset: 1728)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{null, !112, !754}
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_task_t", file: !138, line: 77, baseType: !756)
!756 = !DICompositeType(tag: DW_TAG_structure_type, name: "isc_task", file: !138, line: 77, flags: DIFlagFwdDecl)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "getoriginnode", scope: !122, file: !115, line: 151, baseType: !758, size: 64, offset: 1792)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DISubroutineType(types: !760)
!760 = !{!137, !112, !618}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "transfernode", scope: !122, file: !115, line: 152, baseType: !762, size: 64, offset: 1856)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DISubroutineType(types: !764)
!764 = !{null, !112, !618, !618}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "getnsec3parameters", scope: !122, file: !115, line: 154, baseType: !766, size: 64, offset: 1920)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{!137, !112, !147, !769, !771, !774, !242, !775}
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_hash_t", file: !14, line: 166, baseType: !21)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !107, line: 24, baseType: !773)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !109, line: 38, baseType: !243)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "findnsec3node", scope: !122, file: !115, line: 161, baseType: !231, size: 64, offset: 1984)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "setsigningtime", scope: !122, file: !115, line: 164, baseType: !778, size: 64, offset: 2048)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{!137, !112, !315, !104}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "getsigningtime", scope: !122, file: !115, line: 167, baseType: !782, size: 64, offset: 2112)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DISubroutineType(types: !784)
!784 = !{!137, !112, !315, !309}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "resigned", scope: !122, file: !115, line: 170, baseType: !786, size: 64, offset: 2176)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{null, !112, !315, !147}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "isdnssec", scope: !122, file: !115, line: 172, baseType: !738, size: 64, offset: 2240)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "getrrsetstats", scope: !122, file: !115, line: 173, baseType: !791, size: 64, offset: 2304)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{!794, !112}
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_stats_t", file: !14, line: 137, baseType: !796)
!796 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_stats", file: !14, line: 137, flags: DIFlagFwdDecl)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "rpz_attach", scope: !122, file: !115, line: 174, baseType: !798, size: 64, offset: 2368)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{null, !112, !30, !772}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "rpz_ready", scope: !122, file: !115, line: 176, baseType: !802, size: 64, offset: 2432)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{!137, !112}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "findnodeext", scope: !122, file: !115, line: 177, baseType: !806, size: 64, offset: 2496)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{!137, !112, !234, !229, !809, !821, !618}
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_clientinfomethods_t", file: !811, line: 68, baseType: !812)
!811 = !DIFile(filename: "lib/dns/include/dns/clientinfo.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "f273dbbef534c5352c6d152e1993b2e9")
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_clientinfomethods", file: !811, line: 64, size: 128, elements: !813)
!813 = !{!814, !815, !816}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !812, file: !811, line: 65, baseType: !348, size: 16)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "age", scope: !812, file: !811, line: 66, baseType: !348, size: 16, offset: 16)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "sourceip", scope: !812, file: !811, line: 67, baseType: !817, size: 64, offset: 64)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_clientinfo_sourceip_t", file: !811, line: 58, baseType: !818)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DISubroutineType(types: !820)
!820 = !{!137, !821, !828}
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_clientinfo_t", file: !811, line: 56, baseType: !823)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_clientinfo", file: !811, line: 52, size: 192, elements: !824)
!824 = !{!825, !826, !827}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !823, file: !811, line: 53, baseType: !348, size: 16)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !823, file: !811, line: 54, baseType: !30, size: 64, offset: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "dbversion", scope: !823, file: !811, line: 55, baseType: !30, size: 64, offset: 128)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_sockaddr_t", file: !138, line: 69, baseType: !831)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_sockaddr", file: !832, line: 27, size: 1216, elements: !833)
!832 = !DIFile(filename: "lib/isc/include/isc/sockaddr.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "b46a0f057942d922d0824c5621821d46")
!833 = !{!834, !899, !900}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !831, file: !832, line: 36, baseType: !835, size: 1024)
!835 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !831, file: !832, line: 28, size: 1024, elements: !836)
!836 = !{!837, !846, !862, !881, !890}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !835, file: !832, line: 29, baseType: !838, size: 128)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !839, line: 180, size: 128, elements: !840)
!839 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!840 = !{!841, !844}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !838, file: !839, line: 182, baseType: !842, size: 16)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !843, line: 28, baseType: !179)
!843 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!844 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !838, file: !839, line: 183, baseType: !845, size: 112, offset: 16)
!845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 112, elements: !6)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "sin", scope: !835, file: !832, line: 30, baseType: !847, size: 128)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !848, line: 245, size: 128, elements: !849)
!848 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!849 = !{!850, !851, !853, !858}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !847, file: !848, line: 247, baseType: !842, size: 16)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !847, file: !848, line: 248, baseType: !852, size: 16, offset: 16)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !848, line: 123, baseType: !348)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !847, file: !848, line: 249, baseType: !854, size: 32, offset: 32)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !848, line: 31, size: 32, elements: !855)
!855 = !{!856}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !854, file: !848, line: 33, baseType: !857, size: 32)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !848, line: 30, baseType: !106)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !847, file: !848, line: 252, baseType: !859, size: 64, offset: 64)
!859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 64, elements: !860)
!860 = !{!861}
!861 = !DISubrange(count: 8)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "sin6", scope: !835, file: !832, line: 31, baseType: !863, size: 224)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !848, line: 260, size: 224, elements: !864)
!864 = !{!865, !866, !867, !868, !880}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !863, file: !848, line: 262, baseType: !842, size: 16)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !863, file: !848, line: 263, baseType: !852, size: 16, offset: 16)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !863, file: !848, line: 264, baseType: !106, size: 32, offset: 32)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !863, file: !848, line: 265, baseType: !869, size: 128, offset: 64)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !848, line: 219, size: 128, elements: !870)
!870 = !{!871}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !869, file: !848, line: 226, baseType: !872, size: 128)
!872 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !869, file: !848, line: 221, size: 128, elements: !873)
!873 = !{!874, !876, !878}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !872, file: !848, line: 223, baseType: !875, size: 128)
!875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !772, size: 128, elements: !474)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !872, file: !848, line: 224, baseType: !877, size: 128)
!877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 128, elements: !860)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !872, file: !848, line: 225, baseType: !879, size: 128)
!879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 128, elements: !82)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !863, file: !848, line: 266, baseType: !106, size: 32, offset: 192)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !835, file: !832, line: 32, baseType: !882, size: 1024)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !839, line: 193, size: 1024, elements: !883)
!883 = !{!884, !885, !889}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !882, file: !839, line: 195, baseType: !842, size: 16)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !882, file: !839, line: 196, baseType: !886, size: 944, offset: 16)
!886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 944, elements: !887)
!887 = !{!888}
!888 = !DISubrange(count: 118)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !882, file: !839, line: 197, baseType: !202, size: 64, offset: 960)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "sunix", scope: !835, file: !832, line: 34, baseType: !891, size: 880)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_un", file: !892, line: 29, size: 880, elements: !893)
!892 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/un.h", directory: "", checksumkind: CSK_MD5, checksum: "543d98cd612c9215c9333043f81a0cd3")
!893 = !{!894, !895}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "sun_family", scope: !891, file: !892, line: 31, baseType: !842, size: 16)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "sun_path", scope: !891, file: !892, line: 32, baseType: !896, size: 864, offset: 16)
!896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 864, elements: !897)
!897 = !{!898}
!898 = !DISubrange(count: 108)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !831, file: !832, line: 37, baseType: !15, size: 32, offset: 1024)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !831, file: !832, line: 38, baseType: !901, size: 128, offset: 1088)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !831, file: !832, line: 38, size: 128, elements: !902)
!902 = !{!903, !905}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !901, file: !832, line: 38, baseType: !904, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !901, file: !832, line: 38, baseType: !904, size: 64, offset: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "findext", scope: !122, file: !115, line: 182, baseType: !907, size: 64, offset: 2560)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DISubroutineType(types: !909)
!909 = !{!137, !112, !234, !147, !351, !15, !104, !618, !309, !809, !821, !315, !315}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "setcachestats", scope: !122, file: !115, line: 191, baseType: !911, size: 64, offset: 2624)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DISubroutineType(types: !913)
!913 = !{!137, !112, !914}
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_stats_t", file: !138, line: 74, baseType: !916)
!916 = !DICompositeType(tag: DW_TAG_structure_type, name: "isc_stats", file: !138, line: 74, flags: DIFlagFwdDecl)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "hashsize", scope: !122, file: !115, line: 192, baseType: !918, size: 64, offset: 2688)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DISubroutineType(types: !920)
!920 = !{!200, !112}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "nodefullname", scope: !122, file: !115, line: 193, baseType: !922, size: 64, offset: 2752)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DISubroutineType(types: !924)
!924 = !{!137, !112, !619, !309}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "getsize", scope: !122, file: !115, line: 195, baseType: !926, size: 64, offset: 2816)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DISubroutineType(types: !928)
!928 = !{!137, !112, !147, !929, !929}
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !107, line: 27, baseType: !931)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !109, line: 45, baseType: !202)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "setservestalettl", scope: !122, file: !115, line: 197, baseType: !933, size: 64, offset: 2880)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DISubroutineType(types: !935)
!935 = !{!137, !112, !530}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "getservestalettl", scope: !122, file: !115, line: 198, baseType: !937, size: 64, offset: 2944)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DISubroutineType(types: !939)
!939 = !{!137, !112, !940}
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "setgluecachestats", scope: !122, file: !115, line: 199, baseType: !911, size: 64, offset: 3008)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !114, file: !115, line: 227, baseType: !348, size: 16, offset: 128)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "rdclass", scope: !114, file: !115, line: 228, baseType: !347, size: 16, offset: 144)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !114, file: !115, line: 229, baseType: !236, size: 640, offset: 192)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "mctx", scope: !114, file: !115, line: 230, baseType: !266, size: 64, offset: 832)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "update_listeners", scope: !114, file: !115, line: 231, baseType: !947, size: 128, offset: 896)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !114, file: !115, line: 231, size: 128, elements: !948)
!948 = !{!949, !965}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !947, file: !115, line: 231, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_dbonupdatelistener_t", file: !14, line: 59, baseType: !952)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_dbonupdatelistener", file: !115, line: 237, size: 256, elements: !953)
!953 = !{!954, !959, !960}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "onupdate", scope: !952, file: !115, line: 238, baseType: !955, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_dbupdate_callback_t", file: !115, line: 209, baseType: !956)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DISubroutineType(types: !958)
!958 = !{!137, !112, !30}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "onupdate_arg", scope: !952, file: !115, line: 239, baseType: !30, size: 64, offset: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !952, file: !115, line: 240, baseType: !961, size: 128, offset: 128)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !952, file: !115, line: 240, size: 128, elements: !962)
!962 = !{!963, !964}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !961, file: !115, line: 240, baseType: !950, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !961, file: !115, line: 240, baseType: !950, size: 64, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !947, file: !115, line: 231, baseType: !950, size: 64, offset: 64)
!966 = !DIGlobalVariableExpression(var: !967, expr: !DIExpression())
!967 = distinct !DIGlobalVariable(name: "gversion", scope: !10, file: !2, line: 78, type: !147, isLocal: true, isDefinition: true)
!968 = !DIGlobalVariableExpression(var: !969, expr: !DIExpression())
!969 = distinct !DIGlobalVariable(name: "gclass", scope: !10, file: !2, line: 79, type: !347, isLocal: true, isDefinition: true)
!970 = !DIGlobalVariableExpression(var: !971, expr: !DIExpression())
!971 = distinct !DIGlobalVariable(name: "gorigin", scope: !10, file: !2, line: 80, type: !309, isLocal: true, isDefinition: true)
!972 = !DIGlobalVariableExpression(var: !973, expr: !DIExpression())
!973 = distinct !DIGlobalVariable(name: "mctx", scope: !10, file: !2, line: 75, type: !266, isLocal: true, isDefinition: true)
!974 = !DIGlobalVariableExpression(var: !975, expr: !DIExpression())
!975 = distinct !DIGlobalVariable(name: "keyset_kskonly", scope: !10, file: !2, line: 82, type: !229, isLocal: true, isDefinition: true)
!976 = !DIGlobalVariableExpression(var: !977, expr: !DIExpression())
!977 = distinct !DIGlobalVariable(name: "ignore_kskflag", scope: !10, file: !2, line: 81, type: !229, isLocal: true, isDefinition: true)
!978 = !DIGlobalVariableExpression(var: !979, expr: !DIExpression())
!979 = distinct !DIGlobalVariable(scope: null, file: !2, line: 137, type: !980, isLocal: true, isDefinition: true)
!980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !860)
!981 = !DIGlobalVariableExpression(var: !982, expr: !DIExpression())
!982 = distinct !DIGlobalVariable(scope: null, file: !2, line: 138, type: !983, isLocal: true, isDefinition: true)
!983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !984)
!984 = !{!985}
!985 = !DISubrange(count: 31)
!986 = !DIGlobalVariableExpression(var: !987, expr: !DIExpression())
!987 = distinct !DIGlobalVariable(scope: null, file: !2, line: 140, type: !988, isLocal: true, isDefinition: true)
!988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !989)
!989 = !{!990}
!990 = !DISubrange(count: 2)
!991 = !DIGlobalVariableExpression(var: !992, expr: !DIExpression())
!992 = distinct !DIGlobalVariable(scope: null, file: !2, line: 142, type: !993, isLocal: true, isDefinition: true)
!993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !994)
!994 = !{!995}
!995 = !DISubrange(count: 13)
!996 = !DIGlobalVariableExpression(var: !997, expr: !DIExpression())
!997 = distinct !DIGlobalVariable(scope: null, file: !2, line: 142, type: !39, isLocal: true, isDefinition: true)
!998 = !DIGlobalVariableExpression(var: !999, expr: !DIExpression())
!999 = distinct !DIGlobalVariable(scope: null, file: !2, line: 144, type: !1000, isLocal: true, isDefinition: true)
!1000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !1001)
!1001 = !{!1002}
!1002 = !DISubrange(count: 42)
!1003 = !DIGlobalVariableExpression(var: !1004, expr: !DIExpression())
!1004 = distinct !DIGlobalVariable(scope: null, file: !2, line: 145, type: !96, isLocal: true, isDefinition: true)
!1005 = !DIGlobalVariableExpression(var: !1006, expr: !DIExpression())
!1006 = distinct !DIGlobalVariable(scope: null, file: !2, line: 146, type: !1007, isLocal: true, isDefinition: true)
!1007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !543)
!1008 = !DIGlobalVariableExpression(var: !1009, expr: !DIExpression())
!1009 = distinct !DIGlobalVariable(scope: null, file: !2, line: 147, type: !993, isLocal: true, isDefinition: true)
!1010 = !DIGlobalVariableExpression(var: !1011, expr: !DIExpression())
!1011 = distinct !DIGlobalVariable(scope: null, file: !2, line: 148, type: !91, isLocal: true, isDefinition: true)
!1012 = !DIGlobalVariableExpression(var: !1013, expr: !DIExpression())
!1013 = distinct !DIGlobalVariable(scope: null, file: !2, line: 149, type: !993, isLocal: true, isDefinition: true)
!1014 = !DIGlobalVariableExpression(var: !1015, expr: !DIExpression())
!1015 = distinct !DIGlobalVariable(scope: null, file: !2, line: 150, type: !1016, isLocal: true, isDefinition: true)
!1016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !1017)
!1017 = !{!1018}
!1018 = !DISubrange(count: 40)
!1019 = !DIGlobalVariableExpression(var: !1020, expr: !DIExpression())
!1020 = distinct !DIGlobalVariable(scope: null, file: !2, line: 151, type: !1021, isLocal: true, isDefinition: true)
!1021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !474)
!1022 = !DIGlobalVariableExpression(var: !1023, expr: !DIExpression())
!1023 = distinct !DIGlobalVariable(scope: null, file: !2, line: 152, type: !993, isLocal: true, isDefinition: true)
!1024 = !DIGlobalVariableExpression(var: !1025, expr: !DIExpression())
!1025 = distinct !DIGlobalVariable(scope: null, file: !2, line: 157, type: !1026, isLocal: true, isDefinition: true)
!1026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !1027)
!1027 = !{!1028}
!1028 = !DISubrange(count: 36)
!1029 = !DIGlobalVariableExpression(var: !1030, expr: !DIExpression())
!1030 = distinct !DIGlobalVariable(scope: null, file: !2, line: 159, type: !1031, isLocal: true, isDefinition: true)
!1031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !1032)
!1032 = !{!1033}
!1033 = !DISubrange(count: 52)
!1034 = !DIGlobalVariableExpression(var: !1035, expr: !DIExpression())
!1035 = distinct !DIGlobalVariable(scope: null, file: !2, line: 161, type: !1036, isLocal: true, isDefinition: true)
!1036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !1037)
!1037 = !{!1038}
!1038 = !DISubrange(count: 35)
!1039 = !DIGlobalVariableExpression(var: !1040, expr: !DIExpression())
!1040 = distinct !DIGlobalVariable(name: "inputformat", scope: !10, file: !2, line: 76, type: !211, isLocal: true, isDefinition: true)
!1041 = !DIGlobalVariableExpression(var: !1042, expr: !DIExpression())
!1042 = distinct !DIGlobalVariable(scope: null, file: !2, line: 102, type: !1043, isLocal: true, isDefinition: true)
!1043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !1044)
!1044 = !{!1045}
!1045 = !DISubrange(count: 46)
!1046 = !DIGlobalVariableExpression(var: !1047, expr: !DIExpression())
!1047 = distinct !DIGlobalVariable(scope: null, file: !2, line: 105, type: !81, isLocal: true, isDefinition: true)
!1048 = !DIGlobalVariableExpression(var: !1049, expr: !DIExpression())
!1049 = distinct !DIGlobalVariable(scope: null, file: !2, line: 107, type: !1021, isLocal: true, isDefinition: true)
!1050 = !DIGlobalVariableExpression(var: !1051, expr: !DIExpression())
!1051 = distinct !DIGlobalVariable(scope: null, file: !2, line: 121, type: !1052, isLocal: true, isDefinition: true)
!1052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 664, elements: !1053)
!1053 = !{!1054}
!1054 = !DISubrange(count: 83)
!1055 = !DIGlobalVariableExpression(var: !1056, expr: !DIExpression())
!1056 = distinct !DIGlobalVariable(scope: null, file: !2, line: 127, type: !91, isLocal: true, isDefinition: true)
!1057 = !{i32 7, !"Dwarf Version", i32 5}
!1058 = !{i32 2, !"Debug Info Version", i32 3}
!1059 = !{i32 1, !"wchar_size", i32 4}
!1060 = !{i32 8, !"PIC Level", i32 2}
!1061 = !{i32 7, !"uwtable", i32 2}
!1062 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!1063 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 166, type: !1064, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1067)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!101, !101, !1066}
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!1067 = !{!1068, !1069, !1070, !1071, !1072, !1073, !1074, !1078, !1079, !1080, !1081, !1082}
!1068 = !DILocalVariable(name: "argc", arg: 1, scope: !1063, file: !2, line: 166, type: !101)
!1069 = !DILocalVariable(name: "argv", arg: 2, scope: !1063, file: !2, line: 166, type: !1066)
!1070 = !DILocalVariable(name: "origin", scope: !1063, file: !2, line: 167, type: !157)
!1071 = !DILocalVariable(name: "file", scope: !1063, file: !2, line: 167, type: !157)
!1072 = !DILocalVariable(name: "inputformatstr", scope: !1063, file: !2, line: 168, type: !157)
!1073 = !DILocalVariable(name: "result", scope: !1063, file: !2, line: 169, type: !137)
!1074 = !DILocalVariable(name: "log", scope: !1063, file: !2, line: 170, type: !1075)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_log_t", file: !138, line: 55, baseType: !1077)
!1077 = !DICompositeType(tag: DW_TAG_structure_type, name: "isc_log", file: !138, line: 55, flags: DIFlagFwdDecl)
!1078 = !DILocalVariable(name: "engine", scope: !1063, file: !2, line: 171, type: !210)
!1079 = !DILocalVariable(name: "classname", scope: !1063, file: !2, line: 172, type: !157)
!1080 = !DILocalVariable(name: "rdclass", scope: !1063, file: !2, line: 173, type: !347)
!1081 = !DILocalVariable(name: "endp", scope: !1063, file: !2, line: 174, type: !157)
!1082 = !DILocalVariable(name: "ch", scope: !1063, file: !2, line: 175, type: !101)
!1083 = !DILocation(line: 166, column: 10, scope: !1063)
!1084 = !DILocation(line: 166, column: 22, scope: !1063)
!1085 = !DILocation(line: 167, column: 2, scope: !1063)
!1086 = !DILocation(line: 167, column: 8, scope: !1063)
!1087 = !DILocation(line: 167, column: 24, scope: !1063)
!1088 = !DILocation(line: 168, column: 2, scope: !1063)
!1089 = !DILocation(line: 168, column: 8, scope: !1063)
!1090 = !DILocation(line: 169, column: 2, scope: !1063)
!1091 = !DILocation(line: 169, column: 15, scope: !1063)
!1092 = !DILocation(line: 170, column: 2, scope: !1063)
!1093 = !DILocation(line: 170, column: 13, scope: !1063)
!1094 = !DILocation(line: 171, column: 2, scope: !1063)
!1095 = !DILocation(line: 171, column: 14, scope: !1063)
!1096 = !DILocation(line: 172, column: 2, scope: !1063)
!1097 = !DILocation(line: 172, column: 8, scope: !1063)
!1098 = !DILocation(line: 173, column: 2, scope: !1063)
!1099 = !DILocation(line: 173, column: 19, scope: !1063)
!1100 = !DILocation(line: 174, column: 2, scope: !1063)
!1101 = !DILocation(line: 174, column: 8, scope: !1063)
!1102 = !DILocation(line: 175, column: 2, scope: !1063)
!1103 = !DILocation(line: 175, column: 6, scope: !1063)
!1104 = !DILocation(line: 183, column: 2, scope: !1063)
!1105 = !DILocation(line: 183, column: 37, scope: !1063)
!1106 = !DILocation(line: 183, column: 43, scope: !1063)
!1107 = !DILocation(line: 183, column: 15, scope: !1063)
!1108 = !DILocation(line: 183, column: 13, scope: !1063)
!1109 = !DILocation(line: 183, column: 65, scope: !1063)
!1110 = !DILocation(line: 184, column: 11, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1063, file: !2, line: 183, column: 72)
!1112 = !DILocation(line: 184, column: 3, scope: !1111)
!1113 = !DILocation(line: 186, column: 19, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1115, file: !2, line: 186, column: 8)
!1115 = distinct !DILexicalBlock(scope: !1111, file: !2, line: 184, column: 15)
!1116 = !DILocation(line: 186, column: 8, scope: !1114)
!1117 = !DILocation(line: 186, column: 55, scope: !1114)
!1118 = !DILocation(line: 186, column: 8, scope: !1115)
!1119 = !DILocation(line: 187, column: 23, scope: !1114)
!1120 = !DILocation(line: 187, column: 5, scope: !1114)
!1121 = !DILocation(line: 188, column: 19, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1115, file: !2, line: 188, column: 8)
!1123 = !DILocation(line: 188, column: 8, scope: !1122)
!1124 = !DILocation(line: 188, column: 54, scope: !1122)
!1125 = !DILocation(line: 188, column: 8, scope: !1115)
!1126 = !DILocation(line: 189, column: 23, scope: !1122)
!1127 = !DILocation(line: 189, column: 5, scope: !1122)
!1128 = !DILocation(line: 190, column: 19, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1115, file: !2, line: 190, column: 8)
!1130 = !DILocation(line: 190, column: 8, scope: !1129)
!1131 = !DILocation(line: 190, column: 54, scope: !1129)
!1132 = !DILocation(line: 190, column: 8, scope: !1115)
!1133 = !DILocation(line: 191, column: 23, scope: !1129)
!1134 = !DILocation(line: 191, column: 5, scope: !1129)
!1135 = !DILocation(line: 192, column: 19, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1115, file: !2, line: 192, column: 8)
!1137 = !DILocation(line: 192, column: 8, scope: !1136)
!1138 = !DILocation(line: 192, column: 53, scope: !1136)
!1139 = !DILocation(line: 192, column: 8, scope: !1115)
!1140 = !DILocation(line: 193, column: 23, scope: !1136)
!1141 = !DILocation(line: 193, column: 5, scope: !1136)
!1142 = !DILocation(line: 194, column: 19, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1115, file: !2, line: 194, column: 8)
!1144 = !DILocation(line: 194, column: 8, scope: !1143)
!1145 = !DILocation(line: 194, column: 53, scope: !1143)
!1146 = !DILocation(line: 194, column: 8, scope: !1115)
!1147 = !DILocation(line: 195, column: 23, scope: !1143)
!1148 = !DILocation(line: 195, column: 5, scope: !1143)
!1149 = !DILocation(line: 196, column: 4, scope: !1115)
!1150 = !DILocation(line: 198, column: 4, scope: !1115)
!1151 = distinct !{!1151, !1104, !1152, !1153}
!1152 = !DILocation(line: 200, column: 2, scope: !1063)
!1153 = !{!"llvm.loop.mustprogress"}
!1154 = !DILocation(line: 201, column: 24, scope: !1063)
!1155 = !DILocation(line: 202, column: 15, scope: !1063)
!1156 = !DILocation(line: 202, column: 2, scope: !1063)
!1157 = !DILocation(line: 204, column: 11, scope: !1063)
!1158 = !DILocation(line: 204, column: 9, scope: !1063)
!1159 = !DILocation(line: 205, column: 6, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1063, file: !2, line: 205, column: 6)
!1161 = !DILocation(line: 205, column: 13, scope: !1160)
!1162 = !DILocation(line: 205, column: 6, scope: !1063)
!1163 = !DILocation(line: 206, column: 3, scope: !1160)
!1164 = !DILocation(line: 211, column: 2, scope: !1063)
!1165 = !DILocation(line: 213, column: 27, scope: !1063)
!1166 = !DILocation(line: 215, column: 2, scope: !1063)
!1167 = !DILocation(line: 215, column: 37, scope: !1063)
!1168 = !DILocation(line: 215, column: 43, scope: !1063)
!1169 = !DILocation(line: 215, column: 15, scope: !1063)
!1170 = !DILocation(line: 215, column: 13, scope: !1063)
!1171 = !DILocation(line: 215, column: 65, scope: !1063)
!1172 = !DILocation(line: 216, column: 11, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1063, file: !2, line: 215, column: 72)
!1174 = !DILocation(line: 216, column: 3, scope: !1173)
!1175 = !DILocation(line: 218, column: 16, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1173, file: !2, line: 216, column: 15)
!1177 = !DILocation(line: 218, column: 14, scope: !1176)
!1178 = !DILocation(line: 219, column: 4, scope: !1176)
!1179 = !DILocation(line: 222, column: 13, scope: !1176)
!1180 = !DILocation(line: 222, column: 11, scope: !1176)
!1181 = !DILocation(line: 223, column: 4, scope: !1176)
!1182 = !DILocation(line: 226, column: 21, scope: !1176)
!1183 = !DILocation(line: 226, column: 19, scope: !1176)
!1184 = !DILocation(line: 227, column: 4, scope: !1176)
!1185 = !DILocation(line: 233, column: 13, scope: !1176)
!1186 = !DILocation(line: 233, column: 11, scope: !1176)
!1187 = !DILocation(line: 234, column: 4, scope: !1176)
!1188 = !DILocation(line: 237, column: 9, scope: !1176)
!1189 = !DILocation(line: 238, column: 21, scope: !1176)
!1190 = !DILocation(line: 238, column: 14, scope: !1176)
!1191 = !DILocation(line: 238, column: 12, scope: !1176)
!1192 = !DILocation(line: 239, column: 9, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1176, file: !2, line: 239, column: 8)
!1194 = !DILocation(line: 239, column: 8, scope: !1193)
!1195 = !DILocation(line: 239, column: 14, scope: !1193)
!1196 = !DILocation(line: 239, column: 8, scope: !1176)
!1197 = !DILocation(line: 240, column: 5, scope: !1193)
!1198 = !DILocation(line: 241, column: 4, scope: !1176)
!1199 = !DILocation(line: 244, column: 19, scope: !1176)
!1200 = !DILocation(line: 245, column: 4, scope: !1176)
!1201 = !DILocation(line: 248, column: 19, scope: !1176)
!1202 = !DILocation(line: 249, column: 4, scope: !1176)
!1203 = !DILocation(line: 252, column: 8, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1176, file: !2, line: 252, column: 8)
!1205 = !DILocation(line: 252, column: 31, scope: !1204)
!1206 = !DILocation(line: 252, column: 8, scope: !1176)
!1207 = !DILocation(line: 253, column: 13, scope: !1204)
!1208 = !DILocation(line: 254, column: 6, scope: !1204)
!1209 = !DILocation(line: 254, column: 15, scope: !1204)
!1210 = !DILocation(line: 253, column: 5, scope: !1204)
!1211 = !DILocation(line: 252, column: 34, scope: !1204)
!1212 = !DILocation(line: 259, column: 4, scope: !1176)
!1213 = !DILocation(line: 263, column: 12, scope: !1176)
!1214 = !DILocation(line: 263, column: 4, scope: !1176)
!1215 = !DILocation(line: 266, column: 12, scope: !1176)
!1216 = !DILocation(line: 267, column: 5, scope: !1176)
!1217 = !DILocation(line: 267, column: 14, scope: !1176)
!1218 = !DILocation(line: 266, column: 4, scope: !1176)
!1219 = !DILocation(line: 268, column: 4, scope: !1176)
!1220 = distinct !{!1220, !1166, !1221, !1153}
!1221 = !DILocation(line: 270, column: 2, scope: !1063)
!1222 = !DILocation(line: 272, column: 24, scope: !1063)
!1223 = !DILocation(line: 272, column: 30, scope: !1063)
!1224 = !DILocation(line: 272, column: 11, scope: !1063)
!1225 = !DILocation(line: 272, column: 9, scope: !1063)
!1226 = !DILocation(line: 273, column: 6, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1063, file: !2, line: 273, column: 6)
!1228 = !DILocation(line: 273, column: 13, scope: !1227)
!1229 = !DILocation(line: 273, column: 6, scope: !1063)
!1230 = !DILocation(line: 275, column: 27, scope: !1227)
!1231 = !DILocation(line: 275, column: 9, scope: !1227)
!1232 = !DILocation(line: 274, column: 3, scope: !1227)
!1233 = !DILocation(line: 277, column: 2, scope: !1063)
!1234 = !DILocation(line: 279, column: 23, scope: !1063)
!1235 = !DILocation(line: 279, column: 12, scope: !1063)
!1236 = !DILocation(line: 279, column: 10, scope: !1063)
!1237 = !DILocation(line: 281, column: 16, scope: !1063)
!1238 = !DILocation(line: 281, column: 2, scope: !1063)
!1239 = !DILocation(line: 283, column: 10, scope: !1063)
!1240 = !DILocation(line: 283, column: 7, scope: !1063)
!1241 = !DILocation(line: 284, column: 10, scope: !1063)
!1242 = !DILocation(line: 284, column: 7, scope: !1063)
!1243 = !DILocation(line: 286, column: 6, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1063, file: !2, line: 286, column: 6)
!1245 = !DILocation(line: 286, column: 11, scope: !1244)
!1246 = !DILocation(line: 286, column: 6, scope: !1063)
!1247 = !DILocation(line: 287, column: 3, scope: !1244)
!1248 = !DILocation(line: 289, column: 9, scope: !1063)
!1249 = !DILocation(line: 289, column: 7, scope: !1063)
!1250 = !DILocation(line: 291, column: 7, scope: !1063)
!1251 = !DILocation(line: 292, column: 7, scope: !1063)
!1252 = !DILocation(line: 294, column: 2, scope: !1063)
!1253 = !DILocation(line: 295, column: 2, scope: !1063)
!1254 = !DILocation(line: 297, column: 6, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1063, file: !2, line: 297, column: 6)
!1256 = !DILocation(line: 297, column: 13, scope: !1255)
!1257 = !DILocation(line: 297, column: 6, scope: !1063)
!1258 = !DILocation(line: 298, column: 12, scope: !1255)
!1259 = !DILocation(line: 298, column: 10, scope: !1255)
!1260 = !DILocation(line: 298, column: 3, scope: !1255)
!1261 = !DILocation(line: 300, column: 6, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1063, file: !2, line: 300, column: 6)
!1263 = !DILocation(line: 300, column: 21, scope: !1262)
!1264 = !DILocation(line: 300, column: 6, scope: !1063)
!1265 = !DILocation(line: 301, column: 18, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1267, file: !2, line: 301, column: 7)
!1267 = distinct !DILexicalBlock(scope: !1262, file: !2, line: 300, column: 30)
!1268 = !DILocation(line: 301, column: 7, scope: !1266)
!1269 = !DILocation(line: 301, column: 42, scope: !1266)
!1270 = !DILocation(line: 301, column: 7, scope: !1267)
!1271 = !DILocation(line: 302, column: 16, scope: !1266)
!1272 = !DILocation(line: 302, column: 4, scope: !1266)
!1273 = !DILocation(line: 303, column: 23, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1266, file: !2, line: 303, column: 12)
!1275 = !DILocation(line: 303, column: 12, scope: !1274)
!1276 = !DILocation(line: 303, column: 46, scope: !1274)
!1277 = !DILocation(line: 303, column: 12, scope: !1266)
!1278 = !DILocation(line: 304, column: 16, scope: !1274)
!1279 = !DILocation(line: 304, column: 4, scope: !1274)
!1280 = !DILocation(line: 306, column: 39, scope: !1274)
!1281 = !DILocation(line: 306, column: 4, scope: !1274)
!1282 = !DILocation(line: 307, column: 2, scope: !1267)
!1283 = !DILocation(line: 309, column: 6, scope: !1063)
!1284 = !DILocation(line: 310, column: 10, scope: !1063)
!1285 = !DILocation(line: 310, column: 56, scope: !1063)
!1286 = !DILocation(line: 310, column: 64, scope: !1063)
!1287 = !DILocation(line: 310, column: 2, scope: !1063)
!1288 = !DILocation(line: 311, column: 11, scope: !1063)
!1289 = !DILocation(line: 311, column: 17, scope: !1063)
!1290 = !DILocation(line: 311, column: 25, scope: !1063)
!1291 = !DILocation(line: 311, column: 2, scope: !1063)
!1292 = !DILocation(line: 312, column: 26, scope: !1063)
!1293 = !DILocation(line: 312, column: 12, scope: !1063)
!1294 = !DILocation(line: 312, column: 10, scope: !1063)
!1295 = !DILocation(line: 313, column: 24, scope: !1063)
!1296 = !DILocation(line: 313, column: 11, scope: !1063)
!1297 = !DILocation(line: 313, column: 9, scope: !1063)
!1298 = !DILocation(line: 315, column: 11, scope: !1063)
!1299 = !DILocation(line: 316, column: 29, scope: !1063)
!1300 = !DILocation(line: 316, column: 11, scope: !1063)
!1301 = !DILocation(line: 316, column: 9, scope: !1063)
!1302 = !DILocation(line: 317, column: 15, scope: !1063)
!1303 = !DILocation(line: 317, column: 2, scope: !1063)
!1304 = !DILocation(line: 319, column: 39, scope: !1063)
!1305 = !DILocation(line: 319, column: 44, scope: !1063)
!1306 = !DILocation(line: 319, column: 54, scope: !1063)
!1307 = !DILocation(line: 320, column: 12, scope: !1063)
!1308 = !DILocation(line: 320, column: 18, scope: !1063)
!1309 = !{i8 0, i8 2}
!1310 = !{}
!1311 = !DILocation(line: 320, column: 34, scope: !1063)
!1312 = !DILocation(line: 319, column: 11, scope: !1063)
!1313 = !DILocation(line: 319, column: 9, scope: !1063)
!1314 = !DILocation(line: 322, column: 22, scope: !1063)
!1315 = !DILocation(line: 322, column: 2, scope: !1063)
!1316 = !DILocation(line: 323, column: 2, scope: !1063)
!1317 = !DILocation(line: 325, column: 2, scope: !1063)
!1318 = !DILocation(line: 326, column: 2, scope: !1063)
!1319 = !DILocation(line: 327, column: 2, scope: !1063)
!1320 = !DILocation(line: 328, column: 6, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1063, file: !2, line: 328, column: 6)
!1322 = !DILocation(line: 328, column: 14, scope: !1321)
!1323 = !DILocation(line: 328, column: 6, scope: !1063)
!1324 = !DILocation(line: 329, column: 17, scope: !1321)
!1325 = !DILocation(line: 329, column: 23, scope: !1321)
!1326 = !DILocation(line: 329, column: 3, scope: !1321)
!1327 = !DILocation(line: 330, column: 2, scope: !1063)
!1328 = !DILocation(line: 332, column: 9, scope: !1063)
!1329 = !DILocation(line: 334, column: 10, scope: !1063)
!1330 = !DILocation(line: 334, column: 17, scope: !1063)
!1331 = !DILocation(line: 335, column: 1, scope: !1063)
!1332 = !DILocation(line: 334, column: 2, scope: !1063)
!1333 = !DISubprogram(name: "isc_commandline_parse", scope: !1334, file: !1334, line: 40, type: !1335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1334 = !DIFile(filename: "lib/isc/include/isc/commandline.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "e2d6ed42554c7c309a715d6bbca56377")
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!101, !101, !1337, !210}
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!1339 = !DISubprogram(name: "strcasecmp", scope: !1340, file: !1340, line: 116, type: !1341, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1340 = !DIFile(filename: "/usr/include/strings.h", directory: "", checksumkind: CSK_MD5, checksum: "7444da68ad94ab9f25ff447750787173")
!1341 = !DISubroutineType(types: !1342)
!1342 = !{!101, !210, !210}
!1343 = !DISubprogram(name: "check_result", scope: !1344, file: !1344, line: 34, type: !1345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1344 = !DIFile(filename: "./dnssectool.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/bin/dnssec", checksumkind: CSK_MD5, checksum: "a3925156dd343f43ce1030829ae687f7")
!1345 = !DISubroutineType(types: !1346)
!1346 = !{null, !137, !210}
!1347 = !DISubprogram(name: "isc_app_start", scope: !1348, file: !1348, line: 121, type: !1349, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1348 = !DIFile(filename: "lib/isc/include/isc/app.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "d7598e37e6160086c077d7e0603d48e1")
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!137}
!1351 = !DISubprogram(name: "isc_mem_create", scope: !269, file: !269, line: 258, type: !1352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!137, !200, !200, !290}
!1354 = !DISubprogram(name: "fatal", scope: !1344, file: !1344, line: 27, type: !1355, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{null, !210, null}
!1357 = !DISubprogram(name: "dns_result_register", scope: !1358, file: !1358, line: 195, type: !1359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1358 = !DIFile(filename: "lib/dns/include/dns/result.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "6f221f4c26ac435952b3c9016391913e")
!1359 = !DISubroutineType(types: !1360)
!1360 = !{null}
!1361 = !DISubprogram(name: "strtol", scope: !1362, file: !1362, line: 177, type: !1363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1362 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!177, !1365, !1366, !101}
!1365 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !210)
!1366 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1066)
!1367 = !DISubprogram(name: "fprintf", scope: !1368, file: !1368, line: 350, type: !1369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1368 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!101, !1371, !1365, null}
!1371 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !149)
!1372 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 136, type: !1359, scopeLine: 136, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10)
!1373 = !DILocation(line: 137, column: 10, scope: !1372)
!1374 = !DILocation(line: 137, column: 2, scope: !1372)
!1375 = !DILocation(line: 138, column: 10, scope: !1372)
!1376 = !DILocation(line: 138, column: 54, scope: !1372)
!1377 = !DILocation(line: 138, column: 2, scope: !1372)
!1378 = !DILocation(line: 140, column: 10, scope: !1372)
!1379 = !DILocation(line: 140, column: 2, scope: !1372)
!1380 = !DILocation(line: 142, column: 10, scope: !1372)
!1381 = !DILocation(line: 142, column: 2, scope: !1372)
!1382 = !DILocation(line: 144, column: 10, scope: !1372)
!1383 = !DILocation(line: 144, column: 2, scope: !1372)
!1384 = !DILocation(line: 145, column: 10, scope: !1372)
!1385 = !DILocation(line: 145, column: 2, scope: !1372)
!1386 = !DILocation(line: 146, column: 10, scope: !1372)
!1387 = !DILocation(line: 146, column: 2, scope: !1372)
!1388 = !DILocation(line: 147, column: 10, scope: !1372)
!1389 = !DILocation(line: 147, column: 2, scope: !1372)
!1390 = !DILocation(line: 148, column: 10, scope: !1372)
!1391 = !DILocation(line: 148, column: 2, scope: !1372)
!1392 = !DILocation(line: 149, column: 10, scope: !1372)
!1393 = !DILocation(line: 149, column: 2, scope: !1372)
!1394 = !DILocation(line: 150, column: 10, scope: !1372)
!1395 = !DILocation(line: 150, column: 2, scope: !1372)
!1396 = !DILocation(line: 151, column: 10, scope: !1372)
!1397 = !DILocation(line: 151, column: 2, scope: !1372)
!1398 = !DILocation(line: 152, column: 10, scope: !1372)
!1399 = !DILocation(line: 152, column: 2, scope: !1372)
!1400 = !DILocation(line: 157, column: 10, scope: !1372)
!1401 = !DILocation(line: 157, column: 2, scope: !1372)
!1402 = !DILocation(line: 159, column: 10, scope: !1372)
!1403 = !DILocation(line: 159, column: 2, scope: !1372)
!1404 = !DILocation(line: 161, column: 10, scope: !1372)
!1405 = !DILocation(line: 161, column: 2, scope: !1372)
!1406 = !DILocation(line: 162, column: 2, scope: !1372)
!1407 = !DISubprogram(name: "version", scope: !1344, file: !1344, line: 40, type: !1408, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{null, !210}
!1410 = !DISubprogram(name: "exit", scope: !1362, file: !1362, line: 624, type: !1411, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{null, !101}
!1413 = !DISubprogram(name: "dst_lib_init", scope: !557, file: !557, line: 134, type: !1414, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!137, !266, !210}
!1416 = !DISubprogram(name: "isc_result_totext", scope: !1417, file: !1417, line: 97, type: !1418, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1417 = !DIFile(filename: "lib/isc/include/isc/result.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "b66e2fce4d36f26ced5288e76c5bf05c")
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!210, !137}
!1420 = !DISubprogram(name: "isc_stdtime_get", scope: !105, file: !105, line: 31, type: !1421, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{null, !1423}
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!1424 = !DISubprogram(name: "strtoclass", scope: !1344, file: !1344, line: 62, type: !1425, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!347, !210}
!1427 = !DISubprogram(name: "setup_logging", scope: !1344, file: !1344, line: 47, type: !1428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{null, !266, !1430}
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1431 = distinct !DISubprogram(name: "loadzone", scope: !2, file: !2, line: 88, type: !1432, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1434)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{null, !157, !157, !347, !128}
!1434 = !{!1435, !1436, !1437, !1438, !1439, !1440, !1441, !1457, !1458}
!1435 = !DILocalVariable(name: "file", arg: 1, scope: !1431, file: !2, line: 88, type: !157)
!1436 = !DILocalVariable(name: "origin", arg: 2, scope: !1431, file: !2, line: 88, type: !157)
!1437 = !DILocalVariable(name: "rdclass", arg: 3, scope: !1431, file: !2, line: 88, type: !347)
!1438 = !DILocalVariable(name: "db", arg: 4, scope: !1431, file: !2, line: 88, type: !128)
!1439 = !DILocalVariable(name: "b", scope: !1431, file: !2, line: 89, type: !250)
!1440 = !DILocalVariable(name: "len", scope: !1431, file: !2, line: 90, type: !101)
!1441 = !DILocalVariable(name: "fname", scope: !1431, file: !2, line: 91, type: !1442)
!1442 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_fixedname_t", file: !14, line: 87, baseType: !1443)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_fixedname", file: !1444, line: 61, size: 4224, elements: !1445)
!1444 = !DIFile(filename: "lib/dns/include/dns/fixedname.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "0de03067a9d468538b5b154e7da6cb18")
!1445 = !{!1446, !1447, !1452, !1453}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1443, file: !1444, line: 62, baseType: !236, size: 640)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !1443, file: !1444, line: 63, baseType: !1448, size: 1024, offset: 640)
!1448 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_offsets_t", file: !14, line: 112, baseType: !1449)
!1449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 1024, elements: !1450)
!1450 = !{!1451}
!1451 = !DISubrange(count: 128)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1443, file: !1444, line: 64, baseType: !250, size: 512, offset: 1664)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1443, file: !1444, line: 65, baseType: !1454, size: 2040, offset: 2176)
!1454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 2040, elements: !1455)
!1455 = !{!1456}
!1456 = !DISubrange(count: 255)
!1457 = !DILocalVariable(name: "name", scope: !1431, file: !2, line: 92, type: !309)
!1458 = !DILocalVariable(name: "result", scope: !1431, file: !2, line: 93, type: !137)
!1459 = !DILocation(line: 88, column: 16, scope: !1431)
!1460 = !DILocation(line: 88, column: 28, scope: !1431)
!1461 = !DILocation(line: 88, column: 53, scope: !1431)
!1462 = !DILocation(line: 88, column: 73, scope: !1431)
!1463 = !DILocation(line: 89, column: 2, scope: !1431)
!1464 = !DILocation(line: 89, column: 15, scope: !1431)
!1465 = !DILocation(line: 90, column: 2, scope: !1431)
!1466 = !DILocation(line: 90, column: 6, scope: !1431)
!1467 = !DILocation(line: 91, column: 2, scope: !1431)
!1468 = !DILocation(line: 91, column: 18, scope: !1431)
!1469 = !DILocation(line: 92, column: 2, scope: !1431)
!1470 = !DILocation(line: 92, column: 14, scope: !1431)
!1471 = !DILocation(line: 93, column: 2, scope: !1431)
!1472 = !DILocation(line: 93, column: 15, scope: !1431)
!1473 = !DILocation(line: 95, column: 15, scope: !1431)
!1474 = !DILocation(line: 95, column: 8, scope: !1431)
!1475 = !DILocation(line: 95, column: 6, scope: !1431)
!1476 = !DILocation(line: 96, column: 2, scope: !1431)
!1477 = !DILocation(line: 96, column: 2, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1431, file: !2, line: 96, column: 2)
!1479 = !DILocation(line: 96, column: 2, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1478, file: !2, line: 96, column: 2)
!1481 = !DILocation(line: 97, column: 2, scope: !1431)
!1482 = !DILocation(line: 97, column: 2, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1431, file: !2, line: 97, column: 2)
!1484 = !DILocation(line: 99, column: 9, scope: !1431)
!1485 = !DILocation(line: 99, column: 7, scope: !1431)
!1486 = !DILocation(line: 100, column: 29, scope: !1431)
!1487 = !DILocation(line: 100, column: 39, scope: !1431)
!1488 = !DILocation(line: 100, column: 11, scope: !1431)
!1489 = !DILocation(line: 100, column: 9, scope: !1431)
!1490 = !DILocation(line: 101, column: 6, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1431, file: !2, line: 101, column: 6)
!1492 = !DILocation(line: 101, column: 13, scope: !1491)
!1493 = !DILocation(line: 101, column: 6, scope: !1431)
!1494 = !DILocation(line: 103, column: 9, scope: !1491)
!1495 = !DILocation(line: 103, column: 35, scope: !1491)
!1496 = !DILocation(line: 103, column: 17, scope: !1491)
!1497 = !DILocation(line: 102, column: 3, scope: !1491)
!1498 = !DILocation(line: 105, column: 25, scope: !1431)
!1499 = !DILocation(line: 105, column: 38, scope: !1431)
!1500 = !DILocation(line: 106, column: 11, scope: !1431)
!1501 = !DILocation(line: 106, column: 29, scope: !1431)
!1502 = !DILocation(line: 105, column: 11, scope: !1431)
!1503 = !DILocation(line: 105, column: 9, scope: !1431)
!1504 = !DILocation(line: 107, column: 15, scope: !1431)
!1505 = !DILocation(line: 107, column: 2, scope: !1431)
!1506 = !DILocation(line: 109, column: 24, scope: !1431)
!1507 = !DILocation(line: 109, column: 23, scope: !1431)
!1508 = !DILocation(line: 109, column: 28, scope: !1431)
!1509 = !DILocation(line: 109, column: 34, scope: !1431)
!1510 = !DILocation(line: 109, column: 11, scope: !1431)
!1511 = !DILocation(line: 109, column: 9, scope: !1431)
!1512 = !DILocation(line: 110, column: 10, scope: !1431)
!1513 = !DILocation(line: 110, column: 2, scope: !1431)
!1514 = !DILocation(line: 113, column: 3, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1431, file: !2, line: 110, column: 18)
!1516 = !DILocation(line: 120, column: 7, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1515, file: !2, line: 120, column: 7)
!1518 = !DILocation(line: 120, column: 17, scope: !1517)
!1519 = !DILocation(line: 120, column: 14, scope: !1517)
!1520 = !DILocation(line: 120, column: 7, scope: !1515)
!1521 = !DILocation(line: 123, column: 10, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1517, file: !2, line: 120, column: 23)
!1523 = !DILocation(line: 123, column: 18, scope: !1522)
!1524 = !DILocation(line: 121, column: 4, scope: !1522)
!1525 = !DILocation(line: 128, column: 9, scope: !1515)
!1526 = !DILocation(line: 128, column: 33, scope: !1515)
!1527 = !DILocation(line: 128, column: 15, scope: !1515)
!1528 = !DILocation(line: 127, column: 3, scope: !1515)
!1529 = !DILocation(line: 130, column: 1, scope: !1431)
!1530 = !DISubprogram(name: "dns_db_origin", scope: !115, file: !115, line: 437, type: !1531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!309, !112}
!1533 = !DISubprogram(name: "dns_db_class", scope: !115, file: !115, line: 453, type: !1534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!347, !112}
!1536 = !DISubprogram(name: "dns_db_newversion", scope: !115, file: !115, line: 616, type: !219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1537 = !DISubprogram(name: "dns_zoneverify_dnssec", scope: !1538, file: !1538, line: 43, type: !1539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1538 = !DIFile(filename: "lib/dns/include/dns/zoneverify.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "3261b8f884f31266ec7fa16dafe4de95")
!1539 = !DISubroutineType(types: !1540)
!1540 = !{!137, !1541, !112, !147, !309, !1544, !266, !229, !229}
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_zone_t", file: !14, line: 149, baseType: !1543)
!1543 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_zone", file: !14, line: 149, flags: DIFlagFwdDecl)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_keytable_t", file: !14, line: 97, baseType: !1546)
!1546 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_keytable", file: !14, line: 97, flags: DIFlagFwdDecl)
!1547 = !DISubprogram(name: "dns_db_closeversion", scope: !115, file: !115, line: 659, type: !227, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1548 = !DISubprogram(name: "dns_db_detach", scope: !115, file: !115, line: 350, type: !131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1549 = !DISubprogram(name: "cleanup_logging", scope: !1344, file: !1344, line: 50, type: !1550, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{null, !1430}
!1552 = !DISubprogram(name: "dst_lib_destroy", scope: !557, file: !557, line: 151, type: !1359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1553 = !DISubprogram(name: "dns_name_destroy", scope: !238, file: !238, line: 1297, type: !1359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1554 = !DISubprogram(name: "isc_mem_stats", scope: !269, file: !269, line: 323, type: !1555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{null, !266, !149}
!1557 = !DISubprogram(name: "isc_mem_destroy", scope: !269, file: !269, line: 317, type: !1558, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{null, !290}
!1560 = !DISubprogram(name: "isc_app_finish", scope: !1348, file: !1348, line: 231, type: !1359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1561 = !DISubprogram(name: "strlen", scope: !1562, file: !1562, line: 407, type: !1563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1562 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!202, !210}
!1565 = !DISubprogram(name: "dns_fixedname_initname", scope: !1444, file: !1444, line: 80, type: !1566, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!309, !1568}
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1569 = !DISubprogram(name: "dns_name_fromtext", scope: !238, file: !238, line: 784, type: !1570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!137, !309, !249, !234, !15, !249}
!1572 = !DISubprogram(name: "dns_db_create", scope: !115, file: !115, line: 295, type: !1573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!137, !266, !210, !234, !1575, !347, !15, !1066, !128}
!1575 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_dbtype_t", file: !14, line: 188, baseType: !24)
!1576 = !DISubprogram(name: "dns_db_load", scope: !115, file: !115, line: 525, type: !1577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!137, !112, !210, !211, !15}

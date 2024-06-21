; ModuleID = 'samples/608.bc'
source_filename = "ncache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dns_rdatasetmethods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.isc_buffer = type { i32, ptr, i32, i32, i32, i32, %struct.anon.5, ptr, i8 }
%struct.anon.5 = type { ptr, ptr }
%struct.isc_region = type { ptr, i32 }
%struct.dns_rdata = type { ptr, i32, i16, i16, i32, %struct.anon.4 }
%struct.anon.4 = type { ptr, ptr }
%struct.dns_rdataset = type { i32, ptr, %struct.anon.8, i16, i16, i32, i32, i16, i16, i32, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.anon.8 = type { ptr, ptr }
%struct.dns_rdatalist = type { i16, i16, i16, i32, %struct.anon.10, %struct.anon.11, [32 x i8] }
%struct.anon.10 = type { ptr, ptr }
%struct.anon.11 = type { ptr, ptr }
%struct.dns_message = type { i32, i16, i32, i16, i16, i16, [4 x i32], [4 x %struct.dns_namelist_t], [4 x ptr], ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, ptr, ptr, ptr, ptr, ptr, %struct.isc_bufferlist_t, %struct.isc_bufferlist_t, %struct.anon, %struct.anon.0, %struct.anon.1, %struct.anon.2, %struct.anon.3, i16, i16, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, %struct.isc_region, %struct.isc_region, ptr, %struct.dns_sortlist_arg }
%struct.dns_namelist_t = type { ptr, ptr }
%struct.isc_bufferlist_t = type { ptr, ptr }
%struct.anon = type { ptr, ptr }
%struct.anon.0 = type { ptr, ptr }
%struct.anon.1 = type { ptr, ptr }
%struct.anon.2 = type { ptr, ptr }
%struct.anon.3 = type { ptr, ptr }
%struct.dns_sortlist_arg = type { ptr, ptr, ptr }
%struct.dns_name = type { i32, ptr, i32, i32, i32, ptr, ptr, %struct.anon.6, %struct.anon.7 }
%struct.anon.6 = type { ptr, ptr }
%struct.anon.7 = type { ptr, ptr }
%struct.dns_rdata_rrsig = type { %struct.dns_rdatacommon, ptr, i16, i8, i8, i32, i32, i32, i16, %struct.dns_name, i16, ptr }
%struct.dns_rdatacommon = type { i16, i16, %struct.anon.9 }
%struct.anon.9 = type { ptr, ptr }

@.str = private unnamed_addr constant [9 x i8] c"ncache.c\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [23 x i8] c"rdataset != ((void*)0)\00", align 1, !dbg !8
@.str.2 = private unnamed_addr constant [20 x i8] c"rdataset->type == 0\00", align 1, !dbg !13
@.str.3 = private unnamed_addr constant [41 x i8] c"(rdataset->attributes & 0x00200000) != 0\00", align 1, !dbg !18
@.str.4 = private unnamed_addr constant [32 x i8] c"remaining.length >= name.length\00", align 1, !dbg !23
@.str.5 = private unnamed_addr constant [22 x i8] c"remaining.length >= 5\00", align 1, !dbg !28
@.str.6 = private unnamed_addr constant [22 x i8] c"remaining.length >= 2\00", align 1, !dbg !33
@.str.7 = private unnamed_addr constant [33 x i8] c"remaining.length >= rdata.length\00", align 1, !dbg !35
@.str.8 = private unnamed_addr constant [46 x i8] c"isc_buffer_reserve(&_tmp, 2) == ISC_R_SUCCESS\00", align 1, !dbg !40
@.str.9 = private unnamed_addr constant [41 x i8] c"isc_buffer_availablelength(target) >= 2U\00", align 1, !dbg !45
@.str.10 = private unnamed_addr constant [46 x i8] c"isc_buffer_reserve(&_tmp, 4) == ISC_R_SUCCESS\00", align 1, !dbg !47
@.str.11 = private unnamed_addr constant [41 x i8] c"isc_buffer_availablelength(target) >= 4U\00", align 1, !dbg !49
@.str.12 = private unnamed_addr constant [76 x i8] c"(target->used >= rdlen.used + 2) && (target->used - rdlen.used - 2 < 65536)\00", align 1, !dbg !51
@.str.13 = private unnamed_addr constant [41 x i8] c"isc_buffer_availablelength(&rdlen) >= 2U\00", align 1, !dbg !56
@.str.14 = private unnamed_addr constant [44 x i8] c"((&source)->used - (&source)->current) == 0\00", align 1, !dbg !58
@.str.15 = private unnamed_addr constant [25 x i8] c"savedbuffer.used < 65536\00", align 1, !dbg !63
@.str.16 = private unnamed_addr constant [29 x i8] c"ncacherdataset != ((void*)0)\00", align 1, !dbg !68
@.str.17 = private unnamed_addr constant [26 x i8] c"ncacherdataset->type == 0\00", align 1, !dbg !73
@.str.18 = private unnamed_addr constant [47 x i8] c"(ncacherdataset->attributes & 0x00200000) != 0\00", align 1, !dbg !78
@.str.19 = private unnamed_addr constant [19 x i8] c"name != ((void*)0)\00", align 1, !dbg !83
@.str.20 = private unnamed_addr constant [37 x i8] c"!dns_rdataset_isassociated(rdataset)\00", align 1, !dbg !88
@.str.21 = private unnamed_addr constant [47 x i8] c"type != ((dns_rdatatype_t)dns_rdatatype_rrsig)\00", align 1, !dbg !93
@.str.22 = private unnamed_addr constant [33 x i8] c"remaining.length >= tname.length\00", align 1, !dbg !95
@.str.23 = private unnamed_addr constant [22 x i8] c"remaining.length >= 3\00", align 1, !dbg !97
@.str.24 = private unnamed_addr constant [43 x i8] c"trust <= ((dns_trust_t)dns_trust_ultimate)\00", align 1, !dbg !99
@.str.25 = private unnamed_addr constant [22 x i8] c"remaining.length != 0\00", align 1, !dbg !104
@rdataset_methods = internal global %struct.dns_rdatasetmethods { ptr @rdataset_disassociate, ptr @rdataset_first, ptr @rdataset_next, ptr @rdataset_current, ptr @rdataset_clone, ptr @rdataset_count, ptr null, ptr null, ptr null, ptr null, ptr @rdataset_settrust, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !106
@.str.26 = private unnamed_addr constant [17 x i8] c"_r->length >= _l\00", align 1, !dbg !256
@.str.27 = private unnamed_addr constant [22 x i8] c"remaining.length >= 1\00", align 1, !dbg !261
@.str.28 = private unnamed_addr constant [10 x i8] c"count > 0\00", align 1, !dbg !263
@.str.29 = private unnamed_addr constant [20 x i8] c"found != ((void*)0)\00", align 1, !dbg !268
@.str.30 = private unnamed_addr constant [34 x i8] c"remaining.length >= found->length\00", align 1, !dbg !270
@.str.31 = private unnamed_addr constant [22 x i8] c"message != ((void*)0)\00", align 1, !dbg !275
@.str.32 = private unnamed_addr constant [42 x i8] c"isc_buffer_availablelength(&buffer) >= 2U\00", align 1, !dbg !277
@.str.33 = private unnamed_addr constant [46 x i8] c"isc_buffer_reserve(&_tmp, 1) == ISC_R_SUCCESS\00", align 1, !dbg !282
@.str.34 = private unnamed_addr constant [42 x i8] c"isc_buffer_availablelength(&buffer) >= 1U\00", align 1, !dbg !284
@.str.35 = private unnamed_addr constant [16 x i8] c"trust != 0xffff\00", align 1, !dbg !286
@.str.36 = private unnamed_addr constant [57 x i8] c"dns_rdatalist_tordataset(&ncrdatalist, &ncrdataset) == 0\00", align 1, !dbg !291
@.str.37 = private unnamed_addr constant [15 x i8] c"count <= 65535\00", align 1, !dbg !296
@.str.38 = private unnamed_addr constant [41 x i8] c"isc_buffer_availablelength(buffer) >= 2U\00", align 1, !dbg !301
@.str.39 = private unnamed_addr constant [18 x i8] c"r.length <= 65535\00", align 1, !dbg !303
@.str.40 = private unnamed_addr constant [18 x i8] c"raw != ((void*)0)\00", align 1, !dbg !308

; Function Attrs: nounwind null_pointer_is_valid uwtable
define i32 @dns_ncache_add(ptr noundef %message, ptr noundef %cache, ptr noundef %node, i16 noundef zeroext %covers, i32 noundef %now, i32 noundef %minttl, i32 noundef %maxttl, ptr noundef %addedrdataset) #0 !dbg !663 {
entry:
  %message.addr = alloca ptr, align 8
  %cache.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %covers.addr = alloca i16, align 2
  %now.addr = alloca i32, align 4
  %minttl.addr = alloca i32, align 4
  %maxttl.addr = alloca i32, align 4
  %addedrdataset.addr = alloca ptr, align 8
  store ptr %message, ptr %message.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %message.addr, metadata !1073, metadata !DIExpression()), !dbg !1081
  store ptr %cache, ptr %cache.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %cache.addr, metadata !1074, metadata !DIExpression()), !dbg !1082
  store ptr %node, ptr %node.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1075, metadata !DIExpression()), !dbg !1083
  store i16 %covers, ptr %covers.addr, align 2
  tail call void @llvm.dbg.declare(metadata ptr %covers.addr, metadata !1076, metadata !DIExpression()), !dbg !1084
  store i32 %now, ptr %now.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %now.addr, metadata !1077, metadata !DIExpression()), !dbg !1085
  store i32 %minttl, ptr %minttl.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %minttl.addr, metadata !1078, metadata !DIExpression()), !dbg !1086
  store i32 %maxttl, ptr %maxttl.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %maxttl.addr, metadata !1079, metadata !DIExpression()), !dbg !1087
  store ptr %addedrdataset, ptr %addedrdataset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %addedrdataset.addr, metadata !1080, metadata !DIExpression()), !dbg !1088
  %0 = load ptr, ptr %message.addr, align 8, !dbg !1089
  %1 = load ptr, ptr %cache.addr, align 8, !dbg !1090
  %2 = load ptr, ptr %node.addr, align 8, !dbg !1091
  %3 = load i16, ptr %covers.addr, align 2, !dbg !1092
  %4 = load i32, ptr %now.addr, align 4, !dbg !1093
  %5 = load i32, ptr %minttl.addr, align 4, !dbg !1094
  %6 = load i32, ptr %maxttl.addr, align 4, !dbg !1095
  %7 = load ptr, ptr %addedrdataset.addr, align 8, !dbg !1096
  %call = call i32 @addoptout(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef %7), !dbg !1097
  ret i32 %call, !dbg !1098
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal i32 @addoptout(ptr noundef %message, ptr noundef %cache, ptr noundef %node, i16 noundef zeroext %covers, i32 noundef %now, i32 noundef %minttl, i32 noundef %maxttl, i1 noundef zeroext %optout, i1 noundef zeroext %secure, ptr noundef %addedrdataset) #0 !dbg !1099 {
entry:
  %retval = alloca i32, align 4
  %message.addr = alloca ptr, align 8
  %cache.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %covers.addr = alloca i16, align 2
  %now.addr = alloca i32, align 4
  %minttl.addr = alloca i32, align 4
  %maxttl.addr = alloca i32, align 4
  %optout.addr = alloca i8, align 1
  %secure.addr = alloca i8, align 1
  %addedrdataset.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %buffer = alloca %struct.isc_buffer, align 8
  %r = alloca %struct.isc_region, align 8
  %rdataset = alloca ptr, align 8
  %type = alloca i16, align 2
  %name = alloca ptr, align 8
  %ttl = alloca i32, align 4
  %trust = alloca i16, align 2
  %rdata = alloca [100 x %struct.dns_rdata], align 16
  %ncrdataset = alloca %struct.dns_rdataset, align 8
  %ncrdatalist = alloca %struct.dns_rdatalist, align 8
  %data = alloca [65536 x i8], align 16
  %next = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %_cp = alloca ptr, align 8
  %_val2 = alloca i16, align 2
  %_tmp = alloca ptr, align 8
  %_cp134 = alloca ptr, align 8
  %_val2135 = alloca i8, align 1
  %_tmp148 = alloca ptr, align 8
  store ptr %message, ptr %message.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %message.addr, metadata !1103, metadata !DIExpression()), !dbg !1152
  store ptr %cache, ptr %cache.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %cache.addr, metadata !1104, metadata !DIExpression()), !dbg !1153
  store ptr %node, ptr %node.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1105, metadata !DIExpression()), !dbg !1154
  store i16 %covers, ptr %covers.addr, align 2
  tail call void @llvm.dbg.declare(metadata ptr %covers.addr, metadata !1106, metadata !DIExpression()), !dbg !1155
  store i32 %now, ptr %now.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %now.addr, metadata !1107, metadata !DIExpression()), !dbg !1156
  store i32 %minttl, ptr %minttl.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %minttl.addr, metadata !1108, metadata !DIExpression()), !dbg !1157
  store i32 %maxttl, ptr %maxttl.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %maxttl.addr, metadata !1109, metadata !DIExpression()), !dbg !1158
  %frombool = zext i1 %optout to i8
  store i8 %frombool, ptr %optout.addr, align 1
  tail call void @llvm.dbg.declare(metadata ptr %optout.addr, metadata !1110, metadata !DIExpression()), !dbg !1159
  %frombool1 = zext i1 %secure to i8
  store i8 %frombool1, ptr %secure.addr, align 1
  tail call void @llvm.dbg.declare(metadata ptr %secure.addr, metadata !1111, metadata !DIExpression()), !dbg !1160
  store ptr %addedrdataset, ptr %addedrdataset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %addedrdataset.addr, metadata !1112, metadata !DIExpression()), !dbg !1161
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #9, !dbg !1162
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !1113, metadata !DIExpression()), !dbg !1163
  call void @llvm.lifetime.start.p0(i64 64, ptr %buffer) #9, !dbg !1164
  tail call void @llvm.dbg.declare(metadata ptr %buffer, metadata !1114, metadata !DIExpression()), !dbg !1165
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #9, !dbg !1166
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !1115, metadata !DIExpression()), !dbg !1167
  call void @llvm.lifetime.start.p0(i64 8, ptr %rdataset) #9, !dbg !1168
  tail call void @llvm.dbg.declare(metadata ptr %rdataset, metadata !1116, metadata !DIExpression()), !dbg !1169
  call void @llvm.lifetime.start.p0(i64 2, ptr %type) #9, !dbg !1170
  tail call void @llvm.dbg.declare(metadata ptr %type, metadata !1117, metadata !DIExpression()), !dbg !1171
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #9, !dbg !1172
  tail call void @llvm.dbg.declare(metadata ptr %name, metadata !1118, metadata !DIExpression()), !dbg !1173
  call void @llvm.lifetime.start.p0(i64 4, ptr %ttl) #9, !dbg !1174
  tail call void @llvm.dbg.declare(metadata ptr %ttl, metadata !1119, metadata !DIExpression()), !dbg !1175
  call void @llvm.lifetime.start.p0(i64 2, ptr %trust) #9, !dbg !1176
  tail call void @llvm.dbg.declare(metadata ptr %trust, metadata !1120, metadata !DIExpression()), !dbg !1177
  call void @llvm.lifetime.start.p0(i64 4000, ptr %rdata) #9, !dbg !1178
  tail call void @llvm.dbg.declare(metadata ptr %rdata, metadata !1121, metadata !DIExpression()), !dbg !1179
  call void @llvm.lifetime.start.p0(i64 120, ptr %ncrdataset) #9, !dbg !1180
  tail call void @llvm.dbg.declare(metadata ptr %ncrdataset, metadata !1125, metadata !DIExpression()), !dbg !1181
  call void @llvm.lifetime.start.p0(i64 80, ptr %ncrdatalist) #9, !dbg !1182
  tail call void @llvm.dbg.declare(metadata ptr %ncrdatalist, metadata !1126, metadata !DIExpression()), !dbg !1183
  call void @llvm.lifetime.start.p0(i64 65536, ptr %data) #9, !dbg !1184
  tail call void @llvm.dbg.declare(metadata ptr %data, metadata !1127, metadata !DIExpression()), !dbg !1185
  call void @llvm.lifetime.start.p0(i64 4, ptr %next) #9, !dbg !1186
  tail call void @llvm.dbg.declare(metadata ptr %next, metadata !1131, metadata !DIExpression()), !dbg !1187
  store i32 0, ptr %next, align 4, !dbg !1187
  %0 = load ptr, ptr %message.addr, align 8, !dbg !1188
  %cmp = icmp ne ptr %0, null, !dbg !1188
  %lnot = xor i1 %cmp, true, !dbg !1188
  %lnot2 = xor i1 %lnot, true, !dbg !1188
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1188
  %conv = sext i32 %lnot.ext to i64, !dbg !1188
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1188
  %tobool = icmp ne i64 %expval, 0, !dbg !1188
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !1188

lor.rhs:                                          ; preds = %entry
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 144, i32 noundef 0, ptr noundef @.str.31) #10, !dbg !1188
  unreachable, !dbg !1188

1:                                                ; No predecessors!
  br label %lor.end, !dbg !1188

lor.end:                                          ; preds = %1, %entry
  %2 = phi i1 [ true, %entry ], [ false, %1 ]
  %lor.ext = zext i1 %2 to i32, !dbg !1188
  call void @dns_rdatalist_init(ptr noundef %ncrdatalist), !dbg !1189
  %3 = load ptr, ptr %cache.addr, align 8, !dbg !1190
  %call = call zeroext i16 @dns_db_class(ptr noundef %3), !dbg !1191
  %rdclass = getelementptr inbounds %struct.dns_rdatalist, ptr %ncrdatalist, i32 0, i32 0, !dbg !1192
  store i16 %call, ptr %rdclass, align 8, !dbg !1193
  %4 = load i16, ptr %covers.addr, align 2, !dbg !1194
  %covers3 = getelementptr inbounds %struct.dns_rdatalist, ptr %ncrdatalist, i32 0, i32 2, !dbg !1195
  store i16 %4, ptr %covers3, align 4, !dbg !1196
  %5 = load i32, ptr %maxttl.addr, align 4, !dbg !1197
  %ttl4 = getelementptr inbounds %struct.dns_rdatalist, ptr %ncrdatalist, i32 0, i32 3, !dbg !1198
  store i32 %5, ptr %ttl4, align 8, !dbg !1199
  %6 = load i32, ptr %maxttl.addr, align 4, !dbg !1200
  store i32 %6, ptr %ttl, align 4, !dbg !1201
  store i16 -1, ptr %trust, align 2, !dbg !1202
  br label %do.body, !dbg !1203

do.body:                                          ; preds = %lor.end
  %arraydecay = getelementptr inbounds [65536 x i8], ptr %data, i64 0, i64 0, !dbg !1204
  %base = getelementptr inbounds %struct.isc_buffer, ptr %buffer, i32 0, i32 1, !dbg !1204
  store ptr %arraydecay, ptr %base, align 8, !dbg !1204
  %length = getelementptr inbounds %struct.isc_buffer, ptr %buffer, i32 0, i32 2, !dbg !1204
  store i32 65536, ptr %length, align 8, !dbg !1204
  %used = getelementptr inbounds %struct.isc_buffer, ptr %buffer, i32 0, i32 3, !dbg !1204
  store i32 0, ptr %used, align 4, !dbg !1204
  %current = getelementptr inbounds %struct.isc_buffer, ptr %buffer, i32 0, i32 4, !dbg !1204
  store i32 0, ptr %current, align 8, !dbg !1204
  %active = getelementptr inbounds %struct.isc_buffer, ptr %buffer, i32 0, i32 5, !dbg !1204
  store i32 0, ptr %active, align 4, !dbg !1204
  %mctx = getelementptr inbounds %struct.isc_buffer, ptr %buffer, i32 0, i32 7, !dbg !1204
  store ptr null, ptr %mctx, align 8, !dbg !1204
  br label %do.body5, !dbg !1204

do.body5:                                         ; preds = %do.body
  %link = getelementptr inbounds %struct.isc_buffer, ptr %buffer, i32 0, i32 6, !dbg !1206
  %prev = getelementptr inbounds %struct.anon.5, ptr %link, i32 0, i32 0, !dbg !1206
  store ptr inttoptr (i64 -1 to ptr), ptr %prev, align 8, !dbg !1206
  %link6 = getelementptr inbounds %struct.isc_buffer, ptr %buffer, i32 0, i32 6, !dbg !1206
  %next7 = getelementptr inbounds %struct.anon.5, ptr %link6, i32 0, i32 1, !dbg !1206
  store ptr inttoptr (i64 -1 to ptr), ptr %next7, align 8, !dbg !1206
  br label %do.cond, !dbg !1206

do.cond:                                          ; preds = %do.body5
  br label %do.end, !dbg !1206

do.end:                                           ; preds = %do.cond
  %magic = getelementptr inbounds %struct.isc_buffer, ptr %buffer, i32 0, i32 0, !dbg !1204
  store i32 1114990113, ptr %magic, align 8, !dbg !1204
  %autore = getelementptr inbounds %struct.isc_buffer, ptr %buffer, i32 0, i32 8, !dbg !1204
  store i8 0, ptr %autore, align 8, !dbg !1204
  br label %do.cond8, !dbg !1204

do.cond8:                                         ; preds = %do.end
  br label %do.end9, !dbg !1204

do.end9:                                          ; preds = %do.cond8
  %7 = load ptr, ptr %message.addr, align 8, !dbg !1208
  %counts = getelementptr inbounds %struct.dns_message, ptr %7, i32 0, i32 6, !dbg !1210
  %arrayidx = getelementptr inbounds [4 x i32], ptr %counts, i64 0, i64 2, !dbg !1208
  %8 = load i32, ptr %arrayidx, align 4, !dbg !1208
  %tobool10 = icmp ne i32 %8, 0, !dbg !1208
  br i1 %tobool10, label %if.then, label %if.else, !dbg !1211

if.then:                                          ; preds = %do.end9
  %9 = load ptr, ptr %message.addr, align 8, !dbg !1212
  %call11 = call i32 @dns_message_firstname(ptr noundef %9, i32 noundef 2), !dbg !1213
  store i32 %call11, ptr %result, align 4, !dbg !1214
  br label %if.end, !dbg !1215

if.else:                                          ; preds = %do.end9
  store i32 29, ptr %result, align 4, !dbg !1216
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !dbg !1217

while.cond:                                       ; preds = %if.end271, %if.end
  %10 = load i32, ptr %result, align 4, !dbg !1218
  %cmp12 = icmp eq i32 %10, 0, !dbg !1219
  br i1 %cmp12, label %while.body, label %while.end, !dbg !1217

while.body:                                       ; preds = %while.cond
  store ptr null, ptr %name, align 8, !dbg !1220
  %11 = load ptr, ptr %message.addr, align 8, !dbg !1221
  call void @dns_message_currentname(ptr noundef %11, i32 noundef 2, ptr noundef %name), !dbg !1222
  %12 = load ptr, ptr %name, align 8, !dbg !1223
  %attributes = getelementptr inbounds %struct.dns_name, ptr %12, i32 0, i32 4, !dbg !1224
  %13 = load i32, ptr %attributes, align 8, !dbg !1224
  %and = and i32 %13, 1024, !dbg !1225
  %cmp14 = icmp ne i32 %and, 0, !dbg !1226
  br i1 %cmp14, label %if.then16, label %if.end271, !dbg !1227

if.then16:                                        ; preds = %while.body
  %14 = load ptr, ptr %name, align 8, !dbg !1228
  %list = getelementptr inbounds %struct.dns_name, ptr %14, i32 0, i32 8, !dbg !1228
  %head = getelementptr inbounds %struct.anon.7, ptr %list, i32 0, i32 0, !dbg !1228
  %15 = load ptr, ptr %head, align 8, !dbg !1228
  store ptr %15, ptr %rdataset, align 8, !dbg !1229
  br label %for.cond, !dbg !1230

for.cond:                                         ; preds = %for.inc, %if.then16
  %16 = load ptr, ptr %rdataset, align 8, !dbg !1231
  %cmp17 = icmp ne ptr %16, null, !dbg !1232
  br i1 %cmp17, label %for.body, label %for.end, !dbg !1233

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %rdataset, align 8, !dbg !1234
  %attributes19 = getelementptr inbounds %struct.dns_rdataset, ptr %17, i32 0, i32 9, !dbg !1236
  %18 = load i32, ptr %attributes19, align 8, !dbg !1236
  %and20 = and i32 %18, 128, !dbg !1237
  %cmp21 = icmp eq i32 %and20, 0, !dbg !1238
  br i1 %cmp21, label %if.then23, label %if.end24, !dbg !1239

if.then23:                                        ; preds = %for.body
  br label %for.inc, !dbg !1240

if.end24:                                         ; preds = %for.body
  %19 = load ptr, ptr %rdataset, align 8, !dbg !1241
  %type25 = getelementptr inbounds %struct.dns_rdataset, ptr %19, i32 0, i32 4, !dbg !1242
  %20 = load i16, ptr %type25, align 2, !dbg !1242
  store i16 %20, ptr %type, align 2, !dbg !1243
  %21 = load i16, ptr %type, align 2, !dbg !1244
  %conv26 = zext i16 %21 to i32, !dbg !1244
  %cmp27 = icmp eq i32 %conv26, 46, !dbg !1246
  br i1 %cmp27, label %if.then29, label %if.end31, !dbg !1247

if.then29:                                        ; preds = %if.end24
  %22 = load ptr, ptr %rdataset, align 8, !dbg !1248
  %covers30 = getelementptr inbounds %struct.dns_rdataset, ptr %22, i32 0, i32 8, !dbg !1249
  %23 = load i16, ptr %covers30, align 2, !dbg !1249
  store i16 %23, ptr %type, align 2, !dbg !1250
  br label %if.end31, !dbg !1251

if.end31:                                         ; preds = %if.then29, %if.end24
  %24 = load i16, ptr %type, align 2, !dbg !1252
  %conv32 = zext i16 %24 to i32, !dbg !1252
  %cmp33 = icmp eq i32 %conv32, 6, !dbg !1253
  br i1 %cmp33, label %if.then42, label %lor.lhs.false, !dbg !1254

lor.lhs.false:                                    ; preds = %if.end31
  %25 = load i16, ptr %type, align 2, !dbg !1255
  %conv35 = zext i16 %25 to i32, !dbg !1255
  %cmp36 = icmp eq i32 %conv35, 47, !dbg !1256
  br i1 %cmp36, label %if.then42, label %lor.lhs.false38, !dbg !1257

lor.lhs.false38:                                  ; preds = %lor.lhs.false
  %26 = load i16, ptr %type, align 2, !dbg !1258
  %conv39 = zext i16 %26 to i32, !dbg !1258
  %cmp40 = icmp eq i32 %conv39, 50, !dbg !1259
  br i1 %cmp40, label %if.then42, label %if.end268, !dbg !1260

if.then42:                                        ; preds = %lor.lhs.false38, %lor.lhs.false, %if.end31
  %27 = load i32, ptr %ttl, align 4, !dbg !1261
  %28 = load ptr, ptr %rdataset, align 8, !dbg !1263
  %ttl43 = getelementptr inbounds %struct.dns_rdataset, ptr %28, i32 0, i32 5, !dbg !1264
  %29 = load i32, ptr %ttl43, align 4, !dbg !1264
  %cmp44 = icmp ugt i32 %27, %29, !dbg !1265
  br i1 %cmp44, label %if.then46, label %if.end48, !dbg !1266

if.then46:                                        ; preds = %if.then42
  %30 = load ptr, ptr %rdataset, align 8, !dbg !1267
  %ttl47 = getelementptr inbounds %struct.dns_rdataset, ptr %30, i32 0, i32 5, !dbg !1269
  %31 = load i32, ptr %ttl47, align 4, !dbg !1269
  store i32 %31, ptr %ttl, align 4, !dbg !1270
  br label %if.end48, !dbg !1271

if.end48:                                         ; preds = %if.then46, %if.then42
  %32 = load i32, ptr %ttl, align 4, !dbg !1272
  %33 = load i32, ptr %minttl.addr, align 4, !dbg !1274
  %cmp49 = icmp ult i32 %32, %33, !dbg !1275
  br i1 %cmp49, label %if.then51, label %if.end52, !dbg !1276

if.then51:                                        ; preds = %if.end48
  %34 = load i32, ptr %minttl.addr, align 4, !dbg !1277
  store i32 %34, ptr %ttl, align 4, !dbg !1279
  br label %if.end52, !dbg !1280

if.end52:                                         ; preds = %if.then51, %if.end48
  %35 = load i16, ptr %trust, align 2, !dbg !1281
  %conv53 = zext i16 %35 to i32, !dbg !1281
  %36 = load ptr, ptr %rdataset, align 8, !dbg !1283
  %trust54 = getelementptr inbounds %struct.dns_rdataset, ptr %36, i32 0, i32 7, !dbg !1284
  %37 = load i16, ptr %trust54, align 4, !dbg !1284
  %conv55 = zext i16 %37 to i32, !dbg !1283
  %cmp56 = icmp sgt i32 %conv53, %conv55, !dbg !1285
  br i1 %cmp56, label %if.then58, label %if.end60, !dbg !1286

if.then58:                                        ; preds = %if.end52
  %38 = load ptr, ptr %rdataset, align 8, !dbg !1287
  %trust59 = getelementptr inbounds %struct.dns_rdataset, ptr %38, i32 0, i32 7, !dbg !1289
  %39 = load i16, ptr %trust59, align 4, !dbg !1289
  store i16 %39, ptr %trust, align 2, !dbg !1290
  br label %if.end60, !dbg !1291

if.end60:                                         ; preds = %if.then58, %if.end52
  %40 = load ptr, ptr %name, align 8, !dbg !1292
  call void @dns_name_toregion(ptr noundef %40, ptr noundef %r), !dbg !1293
  %call61 = call i32 @isc_buffer_copyregion(ptr noundef %buffer, ptr noundef %r), !dbg !1294
  store i32 %call61, ptr %result, align 4, !dbg !1295
  %41 = load i32, ptr %result, align 4, !dbg !1296
  %cmp62 = icmp ne i32 %41, 0, !dbg !1298
  br i1 %cmp62, label %if.then64, label %if.end65, !dbg !1299

if.then64:                                        ; preds = %if.end60
  %42 = load i32, ptr %result, align 4, !dbg !1300
  store i32 %42, ptr %retval, align 4, !dbg !1301
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1301

if.end65:                                         ; preds = %if.end60
  br label %do.body66, !dbg !1302

do.body66:                                        ; preds = %if.end65
  %base67 = getelementptr inbounds %struct.isc_buffer, ptr %buffer, i32 0, i32 1, !dbg !1303
  %43 = load ptr, ptr %base67, align 8, !dbg !1303
  %used68 = getelementptr inbounds %struct.isc_buffer, ptr %buffer, i32 0, i32 3, !dbg !1303
  %44 = load i32, ptr %used68, align 4, !dbg !1303
  %idx.ext = zext i32 %44 to i64, !dbg !1303
  %add.ptr = getelementptr inbounds i8, ptr %43, i64 %idx.ext, !dbg !1303
  %base69 = getelementptr inbounds %struct.isc_region, ptr %r, i32 0, i32 0, !dbg !1303
  store ptr %add.ptr, ptr %base69, align 8, !dbg !1303
  %length70 = getelementptr inbounds %struct.isc_buffer, ptr %buffer, i32 0, i32 2, !dbg !1303
  %45 = load i32, ptr %length70, align 8, !dbg !1303
  %used71 = getelementptr inbounds %struct.isc_buffer, ptr %buffer, i32 0, i32 3, !dbg !1303
  %46 = load i32, ptr %used71, align 4, !dbg !1303
  %sub = sub i32 %45, %46, !dbg !1303
  %length72 = getelementptr inbounds %struct.isc_region, ptr %r, i32 0, i32 1, !dbg !1303
  store i32 %sub, ptr %length72, align 8, !dbg !1303
  br label %do.cond73, !dbg !1303

do.cond73:                                        ; preds = %do.body66
  br label %do.end74, !dbg !1303

do.end74:                                         ; preds = %do.cond73
  %length75 = getelementptr inbounds %struct.isc_region, ptr %r, i32 0, i32 1, !dbg !1305
  %47 = load i32, ptr %length75, align 8, !dbg !1305
  %cmp76 = icmp ult i32 %47, 3, !dbg !1307
  br i1 %cmp76, label %if.then78, label %if.end79, !dbg !1308

if.then78:                                        ; preds = %do.end74
  store i32 19, ptr %retval, align 4, !dbg !1309
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1309

if.end79:                                         ; preds = %do.end74
  br label %do.body80, !dbg !1310

do.body80:                                        ; preds = %if.end79
  call void @llvm.lifetime.start.p0(i64 8, ptr %_cp) #9, !dbg !1311
  tail call void @llvm.dbg.declare(metadata ptr %_cp, metadata !1132, metadata !DIExpression()), !dbg !1311
  call void @llvm.lifetime.start.p0(i64 2, ptr %_val2) #9, !dbg !1311
  tail call void @llvm.dbg.declare(metadata ptr %_val2, metadata !1142, metadata !DIExpression()), !dbg !1311
  %48 = load ptr, ptr %rdataset, align 8, !dbg !1311
  %type81 = getelementptr inbounds %struct.dns_rdataset, ptr %48, i32 0, i32 4, !dbg !1311
  %49 = load i16, ptr %type81, align 2, !dbg !1311
  store i16 %49, ptr %_val2, align 2, !dbg !1311
  %autore82 = getelementptr inbounds %struct.isc_buffer, ptr %buffer, i32 0, i32 8, !dbg !1312
  %50 = load i8, ptr %autore82, align 8, !dbg !1312, !range !1313, !noundef !1314
  %tobool83 = trunc i8 %50 to i1, !dbg !1312
  %lnot84 = xor i1 %tobool83, true, !dbg !1312
  %lnot86 = xor i1 %lnot84, true, !dbg !1312
  %lnot.ext87 = zext i1 %lnot86 to i32, !dbg !1312
  %conv88 = sext i32 %lnot.ext87 to i64, !dbg !1312
  %expval89 = call i64 @llvm.expect.i64(i64 %conv88, i64 0), !dbg !1312
  %tobool90 = icmp ne i64 %expval89, 0, !dbg !1312
  br i1 %tobool90, label %if.then91, label %if.end105, !dbg !1311

if.then91:                                        ; preds = %do.body80
  call void @llvm.lifetime.start.p0(i64 8, ptr %_tmp) #9, !dbg !1315
  tail call void @llvm.dbg.declare(metadata ptr %_tmp, metadata !1143, metadata !DIExpression()), !dbg !1315
  store ptr %buffer, ptr %_tmp, align 8, !dbg !1315
  %call92 = call i32 @isc_buffer_reserve(ptr noundef %_tmp, i32 noundef 2), !dbg !1315
  %cmp93 = icmp eq i32 %call92, 0, !dbg !1315
  %lnot95 = xor i1 %cmp93, true, !dbg !1315
  %lnot97 = xor i1 %lnot95, true, !dbg !1315
  %lnot.ext98 = zext i1 %lnot97 to i32, !dbg !1315
  %conv99 = sext i32 %lnot.ext98 to i64, !dbg !1315
  %expval100 = call i64 @llvm.expect.i64(i64 %conv99, i64 1), !dbg !1315
  %tobool101 = icmp ne i64 %expval100, 0, !dbg !1315
  br i1 %tobool101, label %lor.end103, label %lor.rhs102, !dbg !1315

lor.rhs102:                                       ; preds = %if.then91
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 211, i32 noundef 0, ptr noundef @.str.8) #10, !dbg !1315
  unreachable, !dbg !1315

51:                                               ; No predecessors!
  br label %lor.end103, !dbg !1315

lor.end103:                                       ; preds = %51, %if.then91
  %52 = phi i1 [ true, %if.then91 ], [ false, %51 ]
  %lor.ext104 = zext i1 %52 to i32, !dbg !1315
  call void @llvm.lifetime.end.p0(i64 8, ptr %_tmp) #9, !dbg !1312
  br label %if.end105, !dbg !1315

if.end105:                                        ; preds = %lor.end103, %do.body80
  %length106 = getelementptr inbounds %struct.isc_buffer, ptr %buffer, i32 0, i32 2, !dbg !1311
  %53 = load i32, ptr %length106, align 8, !dbg !1311
  %used107 = getelementptr inbounds %struct.isc_buffer, ptr %buffer, i32 0, i32 3, !dbg !1311
  %54 = load i32, ptr %used107, align 4, !dbg !1311
  %sub108 = sub i32 %53, %54, !dbg !1311
  %cmp109 = icmp uge i32 %sub108, 2, !dbg !1311
  %lnot111 = xor i1 %cmp109, true, !dbg !1311
  %lnot113 = xor i1 %lnot111, true, !dbg !1311
  %lnot.ext114 = zext i1 %lnot113 to i32, !dbg !1311
  %conv115 = sext i32 %lnot.ext114 to i64, !dbg !1311
  %expval116 = call i64 @llvm.expect.i64(i64 %conv115, i64 1), !dbg !1311
  %tobool117 = icmp ne i64 %expval116, 0, !dbg !1311
  br i1 %tobool117, label %lor.end119, label %lor.rhs118, !dbg !1311

lor.rhs118:                                       ; preds = %if.end105
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 211, i32 noundef 0, ptr noundef @.str.32) #10, !dbg !1311
  unreachable, !dbg !1311

55:                                               ; No predecessors!
  br label %lor.end119, !dbg !1311

lor.end119:                                       ; preds = %55, %if.end105
  %56 = phi i1 [ true, %if.end105 ], [ false, %55 ]
  %lor.ext120 = zext i1 %56 to i32, !dbg !1311
  %base121 = getelementptr inbounds %struct.isc_buffer, ptr %buffer, i32 0, i32 1, !dbg !1311
  %57 = load ptr, ptr %base121, align 8, !dbg !1311
  %used122 = getelementptr inbounds %struct.isc_buffer, ptr %buffer, i32 0, i32 3, !dbg !1311
  %58 = load i32, ptr %used122, align 4, !dbg !1311
  %idx.ext123 = zext i32 %58 to i64, !dbg !1311
  %add.ptr124 = getelementptr inbounds i8, ptr %57, i64 %idx.ext123, !dbg !1311
  store ptr %add.ptr124, ptr %_cp, align 8, !dbg !1311
  %used125 = getelementptr inbounds %struct.isc_buffer, ptr %buffer, i32 0, i32 3, !dbg !1311
  %59 = load i32, ptr %used125, align 4, !dbg !1311
  %add = add i32 %59, 2, !dbg !1311
  store i32 %add, ptr %used125, align 4, !dbg !1311
  %60 = load i16, ptr %_val2, align 2, !dbg !1311
  %conv126 = zext i16 %60 to i32, !dbg !1311
  %shr = ashr i32 %conv126, 8, !dbg !1311
  %conv127 = trunc i32 %shr to i8, !dbg !1311
  %61 = load ptr, ptr %_cp, align 8, !dbg !1311
  %arrayidx128 = getelementptr inbounds i8, ptr %61, i64 0, !dbg !1311
  store i8 %conv127, ptr %arrayidx128, align 1, !dbg !1311
  %62 = load i16, ptr %_val2, align 2, !dbg !1311
  %conv129 = trunc i16 %62 to i8, !dbg !1311
  %63 = load ptr, ptr %_cp, align 8, !dbg !1311
  %arrayidx130 = getelementptr inbounds i8, ptr %63, i64 1, !dbg !1311
  store i8 %conv129, ptr %arrayidx130, align 1, !dbg !1311
  call void @llvm.lifetime.end.p0(i64 2, ptr %_val2) #9, !dbg !1310
  call void @llvm.lifetime.end.p0(i64 8, ptr %_cp) #9, !dbg !1310
  br label %do.cond131, !dbg !1311

do.cond131:                                       ; preds = %lor.end119
  br label %do.end132, !dbg !1311

do.end132:                                        ; preds = %do.cond131
  br label %do.body133, !dbg !1316

do.body133:                                       ; preds = %do.end132
  call void @llvm.lifetime.start.p0(i64 8, ptr %_cp134) #9, !dbg !1317
  tail call void @llvm.dbg.declare(metadata ptr %_cp134, metadata !1146, metadata !DIExpression()), !dbg !1317
  call void @llvm.lifetime.start.p0(i64 1, ptr %_val2135) #9, !dbg !1317
  tail call void @llvm.dbg.declare(metadata ptr %_val2135, metadata !1148, metadata !DIExpression()), !dbg !1317
  %64 = load ptr, ptr %rdataset, align 8, !dbg !1317
  %trust136 = getelementptr inbounds %struct.dns_rdataset, ptr %64, i32 0, i32 7, !dbg !1317
  %65 = load i16, ptr %trust136, align 4, !dbg !1317
  %conv137 = trunc i16 %65 to i8, !dbg !1317
  store i8 %conv137, ptr %_val2135, align 1, !dbg !1317
  %autore138 = getelementptr inbounds %struct.isc_buffer, ptr %buffer, i32 0, i32 8, !dbg !1318
  %66 = load i8, ptr %autore138, align 8, !dbg !1318, !range !1313, !noundef !1314
  %tobool139 = trunc i8 %66 to i1, !dbg !1318
  %lnot140 = xor i1 %tobool139, true, !dbg !1318
  %lnot142 = xor i1 %lnot140, true, !dbg !1318
  %lnot.ext143 = zext i1 %lnot142 to i32, !dbg !1318
  %conv144 = sext i32 %lnot.ext143 to i64, !dbg !1318
  %expval145 = call i64 @llvm.expect.i64(i64 %conv144, i64 0), !dbg !1318
  %tobool146 = icmp ne i64 %expval145, 0, !dbg !1318
  br i1 %tobool146, label %if.then147, label %if.end162, !dbg !1317

if.then147:                                       ; preds = %do.body133
  call void @llvm.lifetime.start.p0(i64 8, ptr %_tmp148) #9, !dbg !1319
  tail call void @llvm.dbg.declare(metadata ptr %_tmp148, metadata !1149, metadata !DIExpression()), !dbg !1319
  store ptr %buffer, ptr %_tmp148, align 8, !dbg !1319
  %call149 = call i32 @isc_buffer_reserve(ptr noundef %_tmp148, i32 noundef 1), !dbg !1319
  %cmp150 = icmp eq i32 %call149, 0, !dbg !1319
  %lnot152 = xor i1 %cmp150, true, !dbg !1319
  %lnot154 = xor i1 %lnot152, true, !dbg !1319
  %lnot.ext155 = zext i1 %lnot154 to i32, !dbg !1319
  %conv156 = sext i32 %lnot.ext155 to i64, !dbg !1319
  %expval157 = call i64 @llvm.expect.i64(i64 %conv156, i64 1), !dbg !1319
  %tobool158 = icmp ne i64 %expval157, 0, !dbg !1319
  br i1 %tobool158, label %lor.end160, label %lor.rhs159, !dbg !1319

lor.rhs159:                                       ; preds = %if.then147
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 213, i32 noundef 0, ptr noundef @.str.33) #10, !dbg !1319
  unreachable, !dbg !1319

67:                                               ; No predecessors!
  br label %lor.end160, !dbg !1319

lor.end160:                                       ; preds = %67, %if.then147
  %68 = phi i1 [ true, %if.then147 ], [ false, %67 ]
  %lor.ext161 = zext i1 %68 to i32, !dbg !1319
  call void @llvm.lifetime.end.p0(i64 8, ptr %_tmp148) #9, !dbg !1318
  br label %if.end162, !dbg !1319

if.end162:                                        ; preds = %lor.end160, %do.body133
  %length163 = getelementptr inbounds %struct.isc_buffer, ptr %buffer, i32 0, i32 2, !dbg !1317
  %69 = load i32, ptr %length163, align 8, !dbg !1317
  %used164 = getelementptr inbounds %struct.isc_buffer, ptr %buffer, i32 0, i32 3, !dbg !1317
  %70 = load i32, ptr %used164, align 4, !dbg !1317
  %sub165 = sub i32 %69, %70, !dbg !1317
  %cmp166 = icmp uge i32 %sub165, 1, !dbg !1317
  %lnot168 = xor i1 %cmp166, true, !dbg !1317
  %lnot170 = xor i1 %lnot168, true, !dbg !1317
  %lnot.ext171 = zext i1 %lnot170 to i32, !dbg !1317
  %conv172 = sext i32 %lnot.ext171 to i64, !dbg !1317
  %expval173 = call i64 @llvm.expect.i64(i64 %conv172, i64 1), !dbg !1317
  %tobool174 = icmp ne i64 %expval173, 0, !dbg !1317
  br i1 %tobool174, label %lor.end176, label %lor.rhs175, !dbg !1317

lor.rhs175:                                       ; preds = %if.end162
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 213, i32 noundef 0, ptr noundef @.str.34) #10, !dbg !1317
  unreachable, !dbg !1317

71:                                               ; No predecessors!
  br label %lor.end176, !dbg !1317

lor.end176:                                       ; preds = %71, %if.end162
  %72 = phi i1 [ true, %if.end162 ], [ false, %71 ]
  %lor.ext177 = zext i1 %72 to i32, !dbg !1317
  %base178 = getelementptr inbounds %struct.isc_buffer, ptr %buffer, i32 0, i32 1, !dbg !1317
  %73 = load ptr, ptr %base178, align 8, !dbg !1317
  %used179 = getelementptr inbounds %struct.isc_buffer, ptr %buffer, i32 0, i32 3, !dbg !1317
  %74 = load i32, ptr %used179, align 4, !dbg !1317
  %idx.ext180 = zext i32 %74 to i64, !dbg !1317
  %add.ptr181 = getelementptr inbounds i8, ptr %73, i64 %idx.ext180, !dbg !1317
  store ptr %add.ptr181, ptr %_cp134, align 8, !dbg !1317
  %used182 = getelementptr inbounds %struct.isc_buffer, ptr %buffer, i32 0, i32 3, !dbg !1317
  %75 = load i32, ptr %used182, align 4, !dbg !1317
  %inc = add i32 %75, 1, !dbg !1317
  store i32 %inc, ptr %used182, align 4, !dbg !1317
  %76 = load i8, ptr %_val2135, align 1, !dbg !1317
  %77 = load ptr, ptr %_cp134, align 8, !dbg !1317
  %arrayidx183 = getelementptr inbounds i8, ptr %77, i64 0, !dbg !1317
  store i8 %76, ptr %arrayidx183, align 1, !dbg !1317
  call void @llvm.lifetime.end.p0(i64 1, ptr %_val2135) #9, !dbg !1316
  call void @llvm.lifetime.end.p0(i64 8, ptr %_cp134) #9, !dbg !1316
  br label %do.cond184, !dbg !1317

do.cond184:                                       ; preds = %lor.end176
  br label %do.end185, !dbg !1317

do.end185:                                        ; preds = %do.cond184
  %78 = load ptr, ptr %rdataset, align 8, !dbg !1320
  %call186 = call i32 @copy_rdataset(ptr noundef %78, ptr noundef %buffer), !dbg !1321
  store i32 %call186, ptr %result, align 4, !dbg !1322
  %79 = load i32, ptr %result, align 4, !dbg !1323
  %cmp187 = icmp ne i32 %79, 0, !dbg !1325
  br i1 %cmp187, label %if.then189, label %if.end190, !dbg !1326

if.then189:                                       ; preds = %do.end185
  %80 = load i32, ptr %result, align 4, !dbg !1327
  store i32 %80, ptr %retval, align 4, !dbg !1328
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1328

if.end190:                                        ; preds = %do.end185
  %81 = load i32, ptr %next, align 4, !dbg !1329
  %cmp191 = icmp uge i32 %81, 100, !dbg !1331
  br i1 %cmp191, label %if.then193, label %if.end194, !dbg !1332

if.then193:                                       ; preds = %if.end190
  store i32 19, ptr %retval, align 4, !dbg !1333
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1333

if.end194:                                        ; preds = %if.end190
  %82 = load i32, ptr %next, align 4, !dbg !1334
  %idxprom = zext i32 %82 to i64, !dbg !1335
  %arrayidx195 = getelementptr inbounds [100 x %struct.dns_rdata], ptr %rdata, i64 0, i64 %idxprom, !dbg !1335
  call void @dns_rdata_init(ptr noundef %arrayidx195), !dbg !1336
  br label %do.body196, !dbg !1337

do.body196:                                       ; preds = %if.end194
  %base197 = getelementptr inbounds %struct.isc_buffer, ptr %buffer, i32 0, i32 1, !dbg !1338
  %83 = load ptr, ptr %base197, align 8, !dbg !1338
  %current198 = getelementptr inbounds %struct.isc_buffer, ptr %buffer, i32 0, i32 4, !dbg !1338
  %84 = load i32, ptr %current198, align 8, !dbg !1338
  %idx.ext199 = zext i32 %84 to i64, !dbg !1338
  %add.ptr200 = getelementptr inbounds i8, ptr %83, i64 %idx.ext199, !dbg !1338
  %base201 = getelementptr inbounds %struct.isc_region, ptr %r, i32 0, i32 0, !dbg !1338
  store ptr %add.ptr200, ptr %base201, align 8, !dbg !1338
  %used202 = getelementptr inbounds %struct.isc_buffer, ptr %buffer, i32 0, i32 3, !dbg !1338
  %85 = load i32, ptr %used202, align 4, !dbg !1338
  %current203 = getelementptr inbounds %struct.isc_buffer, ptr %buffer, i32 0, i32 4, !dbg !1338
  %86 = load i32, ptr %current203, align 8, !dbg !1338
  %sub204 = sub i32 %85, %86, !dbg !1338
  %length205 = getelementptr inbounds %struct.isc_region, ptr %r, i32 0, i32 1, !dbg !1338
  store i32 %sub204, ptr %length205, align 8, !dbg !1338
  br label %do.cond206, !dbg !1338

do.cond206:                                       ; preds = %do.body196
  br label %do.end207, !dbg !1338

do.end207:                                        ; preds = %do.cond206
  %base208 = getelementptr inbounds %struct.isc_region, ptr %r, i32 0, i32 0, !dbg !1340
  %87 = load ptr, ptr %base208, align 8, !dbg !1340
  %88 = load i32, ptr %next, align 4, !dbg !1341
  %idxprom209 = zext i32 %88 to i64, !dbg !1342
  %arrayidx210 = getelementptr inbounds [100 x %struct.dns_rdata], ptr %rdata, i64 0, i64 %idxprom209, !dbg !1342
  %data211 = getelementptr inbounds %struct.dns_rdata, ptr %arrayidx210, i32 0, i32 0, !dbg !1343
  store ptr %87, ptr %data211, align 8, !dbg !1344
  %length212 = getelementptr inbounds %struct.isc_region, ptr %r, i32 0, i32 1, !dbg !1345
  %89 = load i32, ptr %length212, align 8, !dbg !1345
  %90 = load i32, ptr %next, align 4, !dbg !1346
  %idxprom213 = zext i32 %90 to i64, !dbg !1347
  %arrayidx214 = getelementptr inbounds [100 x %struct.dns_rdata], ptr %rdata, i64 0, i64 %idxprom213, !dbg !1347
  %length215 = getelementptr inbounds %struct.dns_rdata, ptr %arrayidx214, i32 0, i32 1, !dbg !1348
  store i32 %89, ptr %length215, align 8, !dbg !1349
  %rdclass216 = getelementptr inbounds %struct.dns_rdatalist, ptr %ncrdatalist, i32 0, i32 0, !dbg !1350
  %91 = load i16, ptr %rdclass216, align 8, !dbg !1350
  %92 = load i32, ptr %next, align 4, !dbg !1351
  %idxprom217 = zext i32 %92 to i64, !dbg !1352
  %arrayidx218 = getelementptr inbounds [100 x %struct.dns_rdata], ptr %rdata, i64 0, i64 %idxprom217, !dbg !1352
  %rdclass219 = getelementptr inbounds %struct.dns_rdata, ptr %arrayidx218, i32 0, i32 2, !dbg !1353
  store i16 %91, ptr %rdclass219, align 4, !dbg !1354
  %93 = load i32, ptr %next, align 4, !dbg !1355
  %idxprom220 = zext i32 %93 to i64, !dbg !1356
  %arrayidx221 = getelementptr inbounds [100 x %struct.dns_rdata], ptr %rdata, i64 0, i64 %idxprom220, !dbg !1356
  %type222 = getelementptr inbounds %struct.dns_rdata, ptr %arrayidx221, i32 0, i32 3, !dbg !1357
  store i16 0, ptr %type222, align 2, !dbg !1358
  %94 = load i32, ptr %next, align 4, !dbg !1359
  %idxprom223 = zext i32 %94 to i64, !dbg !1360
  %arrayidx224 = getelementptr inbounds [100 x %struct.dns_rdata], ptr %rdata, i64 0, i64 %idxprom223, !dbg !1360
  %flags = getelementptr inbounds %struct.dns_rdata, ptr %arrayidx224, i32 0, i32 4, !dbg !1361
  store i32 0, ptr %flags, align 8, !dbg !1362
  br label %do.body225, !dbg !1363

do.body225:                                       ; preds = %do.end207
  br label %do.body226, !dbg !1364

do.body226:                                       ; preds = %do.body225
  %rdata227 = getelementptr inbounds %struct.dns_rdatalist, ptr %ncrdatalist, i32 0, i32 4, !dbg !1366
  %tail = getelementptr inbounds %struct.anon.10, ptr %rdata227, i32 0, i32 1, !dbg !1366
  %95 = load ptr, ptr %tail, align 8, !dbg !1366
  %cmp228 = icmp ne ptr %95, null, !dbg !1366
  br i1 %cmp228, label %if.then230, label %if.else237, !dbg !1369

if.then230:                                       ; preds = %do.body226
  %96 = load i32, ptr %next, align 4, !dbg !1366
  %idxprom231 = zext i32 %96 to i64, !dbg !1366
  %arrayidx232 = getelementptr inbounds [100 x %struct.dns_rdata], ptr %rdata, i64 0, i64 %idxprom231, !dbg !1366
  %rdata233 = getelementptr inbounds %struct.dns_rdatalist, ptr %ncrdatalist, i32 0, i32 4, !dbg !1366
  %tail234 = getelementptr inbounds %struct.anon.10, ptr %rdata233, i32 0, i32 1, !dbg !1366
  %97 = load ptr, ptr %tail234, align 8, !dbg !1366
  %link235 = getelementptr inbounds %struct.dns_rdata, ptr %97, i32 0, i32 5, !dbg !1366
  %next236 = getelementptr inbounds %struct.anon.4, ptr %link235, i32 0, i32 1, !dbg !1366
  store ptr %arrayidx232, ptr %next236, align 8, !dbg !1366
  br label %if.end242, !dbg !1366

if.else237:                                       ; preds = %do.body226
  %98 = load i32, ptr %next, align 4, !dbg !1366
  %idxprom238 = zext i32 %98 to i64, !dbg !1366
  %arrayidx239 = getelementptr inbounds [100 x %struct.dns_rdata], ptr %rdata, i64 0, i64 %idxprom238, !dbg !1366
  %rdata240 = getelementptr inbounds %struct.dns_rdatalist, ptr %ncrdatalist, i32 0, i32 4, !dbg !1366
  %head241 = getelementptr inbounds %struct.anon.10, ptr %rdata240, i32 0, i32 0, !dbg !1366
  store ptr %arrayidx239, ptr %head241, align 8, !dbg !1366
  br label %if.end242

if.end242:                                        ; preds = %if.else237, %if.then230
  %rdata243 = getelementptr inbounds %struct.dns_rdatalist, ptr %ncrdatalist, i32 0, i32 4, !dbg !1369
  %tail244 = getelementptr inbounds %struct.anon.10, ptr %rdata243, i32 0, i32 1, !dbg !1369
  %99 = load ptr, ptr %tail244, align 8, !dbg !1369
  %100 = load i32, ptr %next, align 4, !dbg !1369
  %idxprom245 = zext i32 %100 to i64, !dbg !1369
  %arrayidx246 = getelementptr inbounds [100 x %struct.dns_rdata], ptr %rdata, i64 0, i64 %idxprom245, !dbg !1369
  %link247 = getelementptr inbounds %struct.dns_rdata, ptr %arrayidx246, i32 0, i32 5, !dbg !1369
  %prev248 = getelementptr inbounds %struct.anon.4, ptr %link247, i32 0, i32 0, !dbg !1369
  store ptr %99, ptr %prev248, align 8, !dbg !1369
  %101 = load i32, ptr %next, align 4, !dbg !1369
  %idxprom249 = zext i32 %101 to i64, !dbg !1369
  %arrayidx250 = getelementptr inbounds [100 x %struct.dns_rdata], ptr %rdata, i64 0, i64 %idxprom249, !dbg !1369
  %link251 = getelementptr inbounds %struct.dns_rdata, ptr %arrayidx250, i32 0, i32 5, !dbg !1369
  %next252 = getelementptr inbounds %struct.anon.4, ptr %link251, i32 0, i32 1, !dbg !1369
  store ptr null, ptr %next252, align 8, !dbg !1369
  %102 = load i32, ptr %next, align 4, !dbg !1369
  %idxprom253 = zext i32 %102 to i64, !dbg !1369
  %arrayidx254 = getelementptr inbounds [100 x %struct.dns_rdata], ptr %rdata, i64 0, i64 %idxprom253, !dbg !1369
  %rdata255 = getelementptr inbounds %struct.dns_rdatalist, ptr %ncrdatalist, i32 0, i32 4, !dbg !1369
  %tail256 = getelementptr inbounds %struct.anon.10, ptr %rdata255, i32 0, i32 1, !dbg !1369
  store ptr %arrayidx254, ptr %tail256, align 8, !dbg !1369
  br label %do.cond257, !dbg !1369

do.cond257:                                       ; preds = %if.end242
  br label %do.end258, !dbg !1369

do.end258:                                        ; preds = %do.cond257
  br label %do.cond259, !dbg !1364

do.cond259:                                       ; preds = %do.end258
  br label %do.end260, !dbg !1364

do.end260:                                        ; preds = %do.cond259
  br label %do.body261, !dbg !1370

do.body261:                                       ; preds = %do.end260
  %length262 = getelementptr inbounds %struct.isc_region, ptr %r, i32 0, i32 1, !dbg !1371
  %103 = load i32, ptr %length262, align 8, !dbg !1371
  %current263 = getelementptr inbounds %struct.isc_buffer, ptr %buffer, i32 0, i32 4, !dbg !1371
  %104 = load i32, ptr %current263, align 8, !dbg !1371
  %add264 = add i32 %104, %103, !dbg !1371
  store i32 %add264, ptr %current263, align 8, !dbg !1371
  br label %do.cond265, !dbg !1371

do.cond265:                                       ; preds = %do.body261
  br label %do.end266, !dbg !1371

do.end266:                                        ; preds = %do.cond265
  %105 = load i32, ptr %next, align 4, !dbg !1373
  %inc267 = add i32 %105, 1, !dbg !1373
  store i32 %inc267, ptr %next, align 4, !dbg !1373
  br label %if.end268, !dbg !1374

if.end268:                                        ; preds = %do.end266, %lor.lhs.false38
  br label %for.inc, !dbg !1375

for.inc:                                          ; preds = %if.end268, %if.then23
  %106 = load ptr, ptr %rdataset, align 8, !dbg !1376
  %link269 = getelementptr inbounds %struct.dns_rdataset, ptr %106, i32 0, i32 2, !dbg !1376
  %next270 = getelementptr inbounds %struct.anon.8, ptr %link269, i32 0, i32 1, !dbg !1376
  %107 = load ptr, ptr %next270, align 8, !dbg !1376
  store ptr %107, ptr %rdataset, align 8, !dbg !1377
  br label %for.cond, !dbg !1378, !llvm.loop !1379

for.end:                                          ; preds = %for.cond
  br label %if.end271, !dbg !1382

if.end271:                                        ; preds = %for.end, %while.body
  %108 = load ptr, ptr %message.addr, align 8, !dbg !1383
  %call272 = call i32 @dns_message_nextname(ptr noundef %108, i32 noundef 2), !dbg !1384
  store i32 %call272, ptr %result, align 4, !dbg !1385
  br label %while.cond, !dbg !1217, !llvm.loop !1386

while.end:                                        ; preds = %while.cond
  %109 = load i32, ptr %result, align 4, !dbg !1388
  %cmp273 = icmp ne i32 %109, 29, !dbg !1390
  br i1 %cmp273, label %if.then275, label %if.end276, !dbg !1391

if.then275:                                       ; preds = %while.end
  %110 = load i32, ptr %result, align 4, !dbg !1392
  store i32 %110, ptr %retval, align 4, !dbg !1393
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1393

if.end276:                                        ; preds = %while.end
  %111 = load i16, ptr %trust, align 2, !dbg !1394
  %conv277 = zext i16 %111 to i32, !dbg !1394
  %cmp278 = icmp eq i32 %conv277, 65535, !dbg !1396
  br i1 %cmp278, label %if.then280, label %if.end292, !dbg !1397

if.then280:                                       ; preds = %if.end276
  %112 = load ptr, ptr %message.addr, align 8, !dbg !1398
  %flags281 = getelementptr inbounds %struct.dns_message, ptr %112, i32 0, i32 2, !dbg !1401
  %113 = load i32, ptr %flags281, align 8, !dbg !1401
  %and282 = and i32 %113, 1024, !dbg !1402
  %cmp283 = icmp ne i32 %and282, 0, !dbg !1403
  br i1 %cmp283, label %land.lhs.true, label %if.else290, !dbg !1404

land.lhs.true:                                    ; preds = %if.then280
  %114 = load ptr, ptr %message.addr, align 8, !dbg !1405
  %counts285 = getelementptr inbounds %struct.dns_message, ptr %114, i32 0, i32 6, !dbg !1406
  %arrayidx286 = getelementptr inbounds [4 x i32], ptr %counts285, i64 0, i64 1, !dbg !1405
  %115 = load i32, ptr %arrayidx286, align 4, !dbg !1405
  %cmp287 = icmp eq i32 %115, 0, !dbg !1407
  br i1 %cmp287, label %if.then289, label %if.else290, !dbg !1408

if.then289:                                       ; preds = %land.lhs.true
  store i16 6, ptr %trust, align 2, !dbg !1409
  br label %if.end291, !dbg !1411

if.else290:                                       ; preds = %land.lhs.true, %if.then280
  store i16 3, ptr %trust, align 2, !dbg !1412
  br label %if.end291

if.end291:                                        ; preds = %if.else290, %if.then289
  store i32 0, ptr %ttl, align 4, !dbg !1413
  br label %if.end292, !dbg !1414

if.end292:                                        ; preds = %if.end291, %if.end276
  %116 = load i16, ptr %trust, align 2, !dbg !1415
  %conv293 = zext i16 %116 to i32, !dbg !1415
  %cmp294 = icmp ne i32 %conv293, 65535, !dbg !1415
  %lnot296 = xor i1 %cmp294, true, !dbg !1415
  %lnot298 = xor i1 %lnot296, true, !dbg !1415
  %lnot.ext299 = zext i1 %lnot298 to i32, !dbg !1415
  %conv300 = sext i32 %lnot.ext299 to i64, !dbg !1415
  %expval301 = call i64 @llvm.expect.i64(i64 %conv300, i64 1), !dbg !1415
  %tobool302 = icmp ne i64 %expval301, 0, !dbg !1415
  br i1 %tobool302, label %lor.end304, label %lor.rhs303, !dbg !1415

lor.rhs303:                                       ; preds = %if.end292
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 257, i32 noundef 2, ptr noundef @.str.35) #10, !dbg !1415
  unreachable, !dbg !1415

117:                                              ; No predecessors!
  br label %lor.end304, !dbg !1415

lor.end304:                                       ; preds = %117, %if.end292
  %118 = phi i1 [ true, %if.end292 ], [ false, %117 ]
  %lor.ext305 = zext i1 %118 to i32, !dbg !1415
  %119 = load i32, ptr %ttl, align 4, !dbg !1416
  %ttl306 = getelementptr inbounds %struct.dns_rdatalist, ptr %ncrdatalist, i32 0, i32 3, !dbg !1417
  store i32 %119, ptr %ttl306, align 8, !dbg !1418
  call void @dns_rdataset_init(ptr noundef %ncrdataset), !dbg !1419
  %call307 = call i32 @dns_rdatalist_tordataset(ptr noundef %ncrdatalist, ptr noundef %ncrdataset), !dbg !1420
  %cmp308 = icmp eq i32 %call307, 0, !dbg !1420
  %lnot310 = xor i1 %cmp308, true, !dbg !1420
  %lnot312 = xor i1 %lnot310, true, !dbg !1420
  %lnot.ext313 = zext i1 %lnot312 to i32, !dbg !1420
  %conv314 = sext i32 %lnot.ext313 to i64, !dbg !1420
  %expval315 = call i64 @llvm.expect.i64(i64 %conv314, i64 1), !dbg !1420
  %tobool316 = icmp ne i64 %expval315, 0, !dbg !1420
  br i1 %tobool316, label %lor.end318, label %lor.rhs317, !dbg !1420

lor.rhs317:                                       ; preds = %lor.end304
  call void @isc_error_runtimecheck(ptr noundef @.str, i32 noundef 263, ptr noundef @.str.36) #10, !dbg !1420
  unreachable, !dbg !1420

120:                                              ; No predecessors!
  br label %lor.end318, !dbg !1420

lor.end318:                                       ; preds = %120, %lor.end304
  %121 = phi i1 [ true, %lor.end304 ], [ false, %120 ]
  %lor.ext319 = zext i1 %121 to i32, !dbg !1420
  %122 = load i8, ptr %secure.addr, align 1, !dbg !1421, !range !1313, !noundef !1314
  %tobool320 = trunc i8 %122 to i1, !dbg !1421
  br i1 %tobool320, label %if.end326, label %land.lhs.true321, !dbg !1423

land.lhs.true321:                                 ; preds = %lor.end318
  %123 = load i16, ptr %trust, align 2, !dbg !1424
  %conv322 = zext i16 %123 to i32, !dbg !1424
  %cmp323 = icmp sgt i32 %conv322, 5, !dbg !1425
  br i1 %cmp323, label %if.then325, label %if.end326, !dbg !1426

if.then325:                                       ; preds = %land.lhs.true321
  store i16 5, ptr %trust, align 2, !dbg !1427
  br label %if.end326, !dbg !1428

if.end326:                                        ; preds = %if.then325, %land.lhs.true321, %lor.end318
  %124 = load i16, ptr %trust, align 2, !dbg !1429
  %trust327 = getelementptr inbounds %struct.dns_rdataset, ptr %ncrdataset, i32 0, i32 7, !dbg !1430
  store i16 %124, ptr %trust327, align 4, !dbg !1431
  %attributes328 = getelementptr inbounds %struct.dns_rdataset, ptr %ncrdataset, i32 0, i32 9, !dbg !1432
  %125 = load i32, ptr %attributes328, align 8, !dbg !1433
  %or = or i32 %125, 2097152, !dbg !1433
  store i32 %or, ptr %attributes328, align 8, !dbg !1433
  %126 = load ptr, ptr %message.addr, align 8, !dbg !1434
  %rcode = getelementptr inbounds %struct.dns_message, ptr %126, i32 0, i32 3, !dbg !1436
  %127 = load i16, ptr %rcode, align 4, !dbg !1436
  %conv329 = zext i16 %127 to i32, !dbg !1434
  %cmp330 = icmp eq i32 %conv329, 3, !dbg !1437
  br i1 %cmp330, label %if.then332, label %if.end335, !dbg !1438

if.then332:                                       ; preds = %if.end326
  %attributes333 = getelementptr inbounds %struct.dns_rdataset, ptr %ncrdataset, i32 0, i32 9, !dbg !1439
  %128 = load i32, ptr %attributes333, align 8, !dbg !1440
  %or334 = or i32 %128, 8192, !dbg !1440
  store i32 %or334, ptr %attributes333, align 8, !dbg !1440
  br label %if.end335, !dbg !1441

if.end335:                                        ; preds = %if.then332, %if.end326
  %129 = load i8, ptr %optout.addr, align 1, !dbg !1442, !range !1313, !noundef !1314
  %tobool336 = trunc i8 %129 to i1, !dbg !1442
  br i1 %tobool336, label %if.then337, label %if.end340, !dbg !1444

if.then337:                                       ; preds = %if.end335
  %attributes338 = getelementptr inbounds %struct.dns_rdataset, ptr %ncrdataset, i32 0, i32 9, !dbg !1445
  %130 = load i32, ptr %attributes338, align 8, !dbg !1446
  %or339 = or i32 %130, 1048576, !dbg !1446
  store i32 %or339, ptr %attributes338, align 8, !dbg !1446
  br label %if.end340, !dbg !1447

if.end340:                                        ; preds = %if.then337, %if.end335
  %131 = load ptr, ptr %cache.addr, align 8, !dbg !1448
  %132 = load ptr, ptr %node.addr, align 8, !dbg !1449
  %133 = load i32, ptr %now.addr, align 4, !dbg !1450
  %134 = load ptr, ptr %addedrdataset.addr, align 8, !dbg !1451
  %call341 = call i32 @dns_db_addrdataset(ptr noundef %131, ptr noundef %132, ptr noundef null, i32 noundef %133, ptr noundef %ncrdataset, i32 noundef 0, ptr noundef %134), !dbg !1452
  store i32 %call341, ptr %retval, align 4, !dbg !1453
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1453

cleanup:                                          ; preds = %if.end340, %if.then275, %if.then193, %if.then189, %if.then78, %if.then64
  call void @llvm.lifetime.end.p0(i64 4, ptr %next) #9, !dbg !1454
  call void @llvm.lifetime.end.p0(i64 65536, ptr %data) #9, !dbg !1454
  call void @llvm.lifetime.end.p0(i64 80, ptr %ncrdatalist) #9, !dbg !1454
  call void @llvm.lifetime.end.p0(i64 120, ptr %ncrdataset) #9, !dbg !1454
  call void @llvm.lifetime.end.p0(i64 4000, ptr %rdata) #9, !dbg !1454
  call void @llvm.lifetime.end.p0(i64 2, ptr %trust) #9, !dbg !1454
  call void @llvm.lifetime.end.p0(i64 4, ptr %ttl) #9, !dbg !1454
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #9, !dbg !1454
  call void @llvm.lifetime.end.p0(i64 2, ptr %type) #9, !dbg !1454
  call void @llvm.lifetime.end.p0(i64 8, ptr %rdataset) #9, !dbg !1454
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #9, !dbg !1454
  call void @llvm.lifetime.end.p0(i64 64, ptr %buffer) #9, !dbg !1454
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #9, !dbg !1454
  %135 = load i32, ptr %retval, align 4, !dbg !1454
  ret i32 %135, !dbg !1454
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define i32 @dns_ncache_addoptout(ptr noundef %message, ptr noundef %cache, ptr noundef %node, i16 noundef zeroext %covers, i32 noundef %now, i32 noundef %minttl, i32 noundef %maxttl, i1 noundef zeroext %optout, ptr noundef %addedrdataset) #0 !dbg !1455 {
entry:
  %message.addr = alloca ptr, align 8
  %cache.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %covers.addr = alloca i16, align 2
  %now.addr = alloca i32, align 4
  %minttl.addr = alloca i32, align 4
  %maxttl.addr = alloca i32, align 4
  %optout.addr = alloca i8, align 1
  %addedrdataset.addr = alloca ptr, align 8
  store ptr %message, ptr %message.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %message.addr, metadata !1459, metadata !DIExpression()), !dbg !1468
  store ptr %cache, ptr %cache.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %cache.addr, metadata !1460, metadata !DIExpression()), !dbg !1469
  store ptr %node, ptr %node.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1461, metadata !DIExpression()), !dbg !1470
  store i16 %covers, ptr %covers.addr, align 2
  tail call void @llvm.dbg.declare(metadata ptr %covers.addr, metadata !1462, metadata !DIExpression()), !dbg !1471
  store i32 %now, ptr %now.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %now.addr, metadata !1463, metadata !DIExpression()), !dbg !1472
  store i32 %minttl, ptr %minttl.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %minttl.addr, metadata !1464, metadata !DIExpression()), !dbg !1473
  store i32 %maxttl, ptr %maxttl.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %maxttl.addr, metadata !1465, metadata !DIExpression()), !dbg !1474
  %frombool = zext i1 %optout to i8
  store i8 %frombool, ptr %optout.addr, align 1
  tail call void @llvm.dbg.declare(metadata ptr %optout.addr, metadata !1466, metadata !DIExpression()), !dbg !1475
  store ptr %addedrdataset, ptr %addedrdataset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %addedrdataset.addr, metadata !1467, metadata !DIExpression()), !dbg !1476
  %0 = load ptr, ptr %message.addr, align 8, !dbg !1477
  %1 = load ptr, ptr %cache.addr, align 8, !dbg !1478
  %2 = load ptr, ptr %node.addr, align 8, !dbg !1479
  %3 = load i16, ptr %covers.addr, align 2, !dbg !1480
  %4 = load i32, ptr %now.addr, align 4, !dbg !1481
  %5 = load i32, ptr %minttl.addr, align 4, !dbg !1482
  %6 = load i32, ptr %maxttl.addr, align 4, !dbg !1483
  %7 = load i8, ptr %optout.addr, align 1, !dbg !1484, !range !1313, !noundef !1314
  %tobool = trunc i8 %7 to i1, !dbg !1484
  %8 = load ptr, ptr %addedrdataset.addr, align 8, !dbg !1485
  %call = call i32 @addoptout(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %tobool, i1 noundef zeroext true, ptr noundef %8), !dbg !1486
  ret i32 %call, !dbg !1487
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define i32 @dns_ncache_towire(ptr noundef %rdataset, ptr noundef %cctx, ptr noundef %target, i32 noundef %options, ptr noundef %countp) #0 !dbg !1488 {
entry:
  %retval = alloca i32, align 4
  %rdataset.addr = alloca ptr, align 8
  %cctx.addr = alloca ptr, align 8
  %target.addr = alloca ptr, align 8
  %options.addr = alloca i32, align 4
  %countp.addr = alloca ptr, align 8
  %rdata = alloca %struct.dns_rdata, align 8
  %result = alloca i32, align 4
  %remaining = alloca %struct.isc_region, align 8
  %tavailable = alloca %struct.isc_region, align 8
  %source = alloca %struct.isc_buffer, align 8
  %savedbuffer = alloca %struct.isc_buffer, align 8
  %rdlen = alloca %struct.isc_buffer, align 8
  %name = alloca %struct.dns_name, align 8
  %type = alloca i16, align 2
  %i = alloca i32, align 4
  %rcount = alloca i32, align 4
  %count = alloca i32, align 4
  %_cp = alloca ptr, align 8
  %_val2 = alloca i16, align 2
  %_tmp = alloca ptr, align 8
  %_cp239 = alloca ptr, align 8
  %_val2240 = alloca i16, align 2
  %_tmp252 = alloca ptr, align 8
  %_cp297 = alloca ptr, align 8
  %_val2298 = alloca i32, align 4
  %_tmp309 = alloca ptr, align 8
  %_cp390 = alloca ptr, align 8
  %_val2391 = alloca i16, align 2
  %_tmp407 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %rdataset, ptr %rdataset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %rdataset.addr, metadata !1493, metadata !DIExpression()), !dbg !1539
  store ptr %cctx, ptr %cctx.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %cctx.addr, metadata !1494, metadata !DIExpression()), !dbg !1540
  store ptr %target, ptr %target.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %target.addr, metadata !1495, metadata !DIExpression()), !dbg !1541
  store i32 %options, ptr %options.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %options.addr, metadata !1496, metadata !DIExpression()), !dbg !1542
  store ptr %countp, ptr %countp.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %countp.addr, metadata !1497, metadata !DIExpression()), !dbg !1543
  call void @llvm.lifetime.start.p0(i64 40, ptr %rdata) #9, !dbg !1544
  tail call void @llvm.dbg.declare(metadata ptr %rdata, metadata !1498, metadata !DIExpression()), !dbg !1545
  call void @llvm.memset.p0.i64(ptr align 8 %rdata, i8 0, i64 40, i1 false), !dbg !1545
  %0 = getelementptr inbounds %struct.dns_rdata, ptr %rdata, i32 0, i32 5, !dbg !1545
  %1 = getelementptr inbounds %struct.anon.4, ptr %0, i32 0, i32 0, !dbg !1545
  store ptr inttoptr (i64 -1 to ptr), ptr %1, align 8, !dbg !1545
  %2 = getelementptr inbounds %struct.anon.4, ptr %0, i32 0, i32 1, !dbg !1545
  store ptr inttoptr (i64 -1 to ptr), ptr %2, align 8, !dbg !1545
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #9, !dbg !1546
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !1499, metadata !DIExpression()), !dbg !1547
  call void @llvm.lifetime.start.p0(i64 16, ptr %remaining) #9, !dbg !1548
  tail call void @llvm.dbg.declare(metadata ptr %remaining, metadata !1500, metadata !DIExpression()), !dbg !1549
  call void @llvm.lifetime.start.p0(i64 16, ptr %tavailable) #9, !dbg !1548
  tail call void @llvm.dbg.declare(metadata ptr %tavailable, metadata !1501, metadata !DIExpression()), !dbg !1550
  call void @llvm.lifetime.start.p0(i64 64, ptr %source) #9, !dbg !1551
  tail call void @llvm.dbg.declare(metadata ptr %source, metadata !1502, metadata !DIExpression()), !dbg !1552
  call void @llvm.lifetime.start.p0(i64 64, ptr %savedbuffer) #9, !dbg !1551
  tail call void @llvm.dbg.declare(metadata ptr %savedbuffer, metadata !1503, metadata !DIExpression()), !dbg !1553
  call void @llvm.lifetime.start.p0(i64 64, ptr %rdlen) #9, !dbg !1551
  tail call void @llvm.dbg.declare(metadata ptr %rdlen, metadata !1504, metadata !DIExpression()), !dbg !1554
  call void @llvm.lifetime.start.p0(i64 80, ptr %name) #9, !dbg !1555
  tail call void @llvm.dbg.declare(metadata ptr %name, metadata !1505, metadata !DIExpression()), !dbg !1556
  call void @llvm.lifetime.start.p0(i64 2, ptr %type) #9, !dbg !1557
  tail call void @llvm.dbg.declare(metadata ptr %type, metadata !1506, metadata !DIExpression()), !dbg !1558
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !1559
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1507, metadata !DIExpression()), !dbg !1560
  call void @llvm.lifetime.start.p0(i64 4, ptr %rcount) #9, !dbg !1559
  tail call void @llvm.dbg.declare(metadata ptr %rcount, metadata !1508, metadata !DIExpression()), !dbg !1561
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #9, !dbg !1559
  tail call void @llvm.dbg.declare(metadata ptr %count, metadata !1509, metadata !DIExpression()), !dbg !1562
  %3 = load ptr, ptr %rdataset.addr, align 8, !dbg !1563
  %cmp = icmp ne ptr %3, null, !dbg !1563
  %lnot = xor i1 %cmp, true, !dbg !1563
  %lnot1 = xor i1 %lnot, true, !dbg !1563
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1563
  %conv = sext i32 %lnot.ext to i64, !dbg !1563
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1563
  %tobool = icmp ne i64 %expval, 0, !dbg !1563
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !1563

lor.rhs:                                          ; preds = %entry
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 296, i32 noundef 0, ptr noundef @.str.1) #10, !dbg !1563
  unreachable, !dbg !1563

4:                                                ; No predecessors!
  br label %lor.end, !dbg !1563

lor.end:                                          ; preds = %4, %entry
  %5 = phi i1 [ true, %entry ], [ false, %4 ]
  %lor.ext = zext i1 %5 to i32, !dbg !1563
  %6 = load ptr, ptr %rdataset.addr, align 8, !dbg !1564
  %type2 = getelementptr inbounds %struct.dns_rdataset, ptr %6, i32 0, i32 4, !dbg !1564
  %7 = load i16, ptr %type2, align 2, !dbg !1564
  %conv3 = zext i16 %7 to i32, !dbg !1564
  %cmp4 = icmp eq i32 %conv3, 0, !dbg !1564
  %lnot6 = xor i1 %cmp4, true, !dbg !1564
  %lnot8 = xor i1 %lnot6, true, !dbg !1564
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !1564
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !1564
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !1564
  %tobool12 = icmp ne i64 %expval11, 0, !dbg !1564
  br i1 %tobool12, label %lor.end14, label %lor.rhs13, !dbg !1564

lor.rhs13:                                        ; preds = %lor.end
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 297, i32 noundef 0, ptr noundef @.str.2) #10, !dbg !1564
  unreachable, !dbg !1564

8:                                                ; No predecessors!
  br label %lor.end14, !dbg !1564

lor.end14:                                        ; preds = %8, %lor.end
  %9 = phi i1 [ true, %lor.end ], [ false, %8 ]
  %lor.ext15 = zext i1 %9 to i32, !dbg !1564
  %10 = load ptr, ptr %rdataset.addr, align 8, !dbg !1565
  %attributes = getelementptr inbounds %struct.dns_rdataset, ptr %10, i32 0, i32 9, !dbg !1565
  %11 = load i32, ptr %attributes, align 8, !dbg !1565
  %and = and i32 %11, 2097152, !dbg !1565
  %cmp16 = icmp ne i32 %and, 0, !dbg !1565
  %lnot18 = xor i1 %cmp16, true, !dbg !1565
  %lnot20 = xor i1 %lnot18, true, !dbg !1565
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !1565
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !1565
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 1), !dbg !1565
  %tobool24 = icmp ne i64 %expval23, 0, !dbg !1565
  br i1 %tobool24, label %lor.end26, label %lor.rhs25, !dbg !1565

lor.rhs25:                                        ; preds = %lor.end14
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 298, i32 noundef 0, ptr noundef @.str.3) #10, !dbg !1565
  unreachable, !dbg !1565

12:                                               ; No predecessors!
  br label %lor.end26, !dbg !1565

lor.end26:                                        ; preds = %12, %lor.end14
  %13 = phi i1 [ true, %lor.end14 ], [ false, %12 ]
  %lor.ext27 = zext i1 %13 to i32, !dbg !1565
  %14 = load ptr, ptr %target.addr, align 8, !dbg !1566
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %savedbuffer, ptr align 8 %14, i64 64, i1 false), !dbg !1567
  store i32 0, ptr %count, align 4, !dbg !1568
  %15 = load ptr, ptr %rdataset.addr, align 8, !dbg !1569
  %call = call i32 @dns_rdataset_first(ptr noundef %15), !dbg !1570
  store i32 %call, ptr %result, align 4, !dbg !1571
  br label %while.cond, !dbg !1572

while.cond:                                       ; preds = %lor.end465, %lor.end26
  %16 = load i32, ptr %result, align 4, !dbg !1573
  %cmp28 = icmp eq i32 %16, 0, !dbg !1574
  br i1 %cmp28, label %while.body, label %while.end, !dbg !1572

while.body:                                       ; preds = %while.cond
  %17 = load ptr, ptr %rdataset.addr, align 8, !dbg !1575
  call void @dns_rdataset_current(ptr noundef %17, ptr noundef %rdata), !dbg !1576
  br label %do.body, !dbg !1577

do.body:                                          ; preds = %while.body
  %data = getelementptr inbounds %struct.dns_rdata, ptr %rdata, i32 0, i32 0, !dbg !1578
  %18 = load ptr, ptr %data, align 8, !dbg !1578
  %base = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 1, !dbg !1578
  store ptr %18, ptr %base, align 8, !dbg !1578
  %length = getelementptr inbounds %struct.dns_rdata, ptr %rdata, i32 0, i32 1, !dbg !1578
  %19 = load i32, ptr %length, align 8, !dbg !1578
  %length30 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 2, !dbg !1578
  store i32 %19, ptr %length30, align 8, !dbg !1578
  %used = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 3, !dbg !1578
  store i32 0, ptr %used, align 4, !dbg !1578
  %current = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 4, !dbg !1578
  store i32 0, ptr %current, align 8, !dbg !1578
  %active = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 5, !dbg !1578
  store i32 0, ptr %active, align 4, !dbg !1578
  %mctx = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 7, !dbg !1578
  store ptr null, ptr %mctx, align 8, !dbg !1578
  br label %do.body31, !dbg !1578

do.body31:                                        ; preds = %do.body
  %link = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 6, !dbg !1580
  %prev = getelementptr inbounds %struct.anon.5, ptr %link, i32 0, i32 0, !dbg !1580
  store ptr inttoptr (i64 -1 to ptr), ptr %prev, align 8, !dbg !1580
  %link32 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 6, !dbg !1580
  %next = getelementptr inbounds %struct.anon.5, ptr %link32, i32 0, i32 1, !dbg !1580
  store ptr inttoptr (i64 -1 to ptr), ptr %next, align 8, !dbg !1580
  br label %do.cond, !dbg !1580

do.cond:                                          ; preds = %do.body31
  br label %do.end, !dbg !1580

do.end:                                           ; preds = %do.cond
  %magic = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 0, !dbg !1578
  store i32 1114990113, ptr %magic, align 8, !dbg !1578
  %autore = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 8, !dbg !1578
  store i8 0, ptr %autore, align 8, !dbg !1578
  br label %do.cond33, !dbg !1578

do.cond33:                                        ; preds = %do.end
  br label %do.end34, !dbg !1578

do.end34:                                         ; preds = %do.cond33
  br label %do.body35, !dbg !1582

do.body35:                                        ; preds = %do.end34
  %length36 = getelementptr inbounds %struct.dns_rdata, ptr %rdata, i32 0, i32 1, !dbg !1583
  %20 = load i32, ptr %length36, align 8, !dbg !1583
  %used37 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 3, !dbg !1583
  %21 = load i32, ptr %used37, align 4, !dbg !1583
  %add = add i32 %21, %20, !dbg !1583
  store i32 %add, ptr %used37, align 4, !dbg !1583
  br label %do.cond38, !dbg !1583

do.cond38:                                        ; preds = %do.body35
  br label %do.end39, !dbg !1583

do.end39:                                         ; preds = %do.cond38
  call void @dns_name_init(ptr noundef %name, ptr noundef null), !dbg !1585
  br label %do.body40, !dbg !1586

do.body40:                                        ; preds = %do.end39
  %base41 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 1, !dbg !1587
  %22 = load ptr, ptr %base41, align 8, !dbg !1587
  %current42 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 4, !dbg !1587
  %23 = load i32, ptr %current42, align 8, !dbg !1587
  %idx.ext = zext i32 %23 to i64, !dbg !1587
  %add.ptr = getelementptr inbounds i8, ptr %22, i64 %idx.ext, !dbg !1587
  %base43 = getelementptr inbounds %struct.isc_region, ptr %remaining, i32 0, i32 0, !dbg !1587
  store ptr %add.ptr, ptr %base43, align 8, !dbg !1587
  %used44 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 3, !dbg !1587
  %24 = load i32, ptr %used44, align 4, !dbg !1587
  %current45 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 4, !dbg !1587
  %25 = load i32, ptr %current45, align 8, !dbg !1587
  %sub = sub i32 %24, %25, !dbg !1587
  %length46 = getelementptr inbounds %struct.isc_region, ptr %remaining, i32 0, i32 1, !dbg !1587
  store i32 %sub, ptr %length46, align 8, !dbg !1587
  br label %do.cond47, !dbg !1587

do.cond47:                                        ; preds = %do.body40
  br label %do.end48, !dbg !1587

do.end48:                                         ; preds = %do.cond47
  call void @dns_name_fromregion(ptr noundef %name, ptr noundef %remaining), !dbg !1589
  %length49 = getelementptr inbounds %struct.isc_region, ptr %remaining, i32 0, i32 1, !dbg !1590
  %26 = load i32, ptr %length49, align 8, !dbg !1590
  %length50 = getelementptr inbounds %struct.dns_name, ptr %name, i32 0, i32 2, !dbg !1590
  %27 = load i32, ptr %length50, align 8, !dbg !1590
  %cmp51 = icmp uge i32 %26, %27, !dbg !1590
  %lnot53 = xor i1 %cmp51, true, !dbg !1590
  %lnot55 = xor i1 %lnot53, true, !dbg !1590
  %lnot.ext56 = zext i1 %lnot55 to i32, !dbg !1590
  %conv57 = sext i32 %lnot.ext56 to i64, !dbg !1590
  %expval58 = call i64 @llvm.expect.i64(i64 %conv57, i64 1), !dbg !1590
  %tobool59 = icmp ne i64 %expval58, 0, !dbg !1590
  br i1 %tobool59, label %lor.end61, label %lor.rhs60, !dbg !1590

lor.rhs60:                                        ; preds = %do.end48
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 311, i32 noundef 2, ptr noundef @.str.4) #10, !dbg !1590
  unreachable, !dbg !1590

28:                                               ; No predecessors!
  br label %lor.end61, !dbg !1590

lor.end61:                                        ; preds = %28, %do.end48
  %29 = phi i1 [ true, %do.end48 ], [ false, %28 ]
  %lor.ext62 = zext i1 %29 to i32, !dbg !1590
  br label %do.body63, !dbg !1591

do.body63:                                        ; preds = %lor.end61
  %length64 = getelementptr inbounds %struct.dns_name, ptr %name, i32 0, i32 2, !dbg !1592
  %30 = load i32, ptr %length64, align 8, !dbg !1592
  %current65 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 4, !dbg !1592
  %31 = load i32, ptr %current65, align 8, !dbg !1592
  %add66 = add i32 %31, %30, !dbg !1592
  store i32 %add66, ptr %current65, align 8, !dbg !1592
  br label %do.cond67, !dbg !1592

do.cond67:                                        ; preds = %do.body63
  br label %do.end68, !dbg !1592

do.end68:                                         ; preds = %do.cond67
  %length69 = getelementptr inbounds %struct.dns_name, ptr %name, i32 0, i32 2, !dbg !1594
  %32 = load i32, ptr %length69, align 8, !dbg !1594
  %length70 = getelementptr inbounds %struct.isc_region, ptr %remaining, i32 0, i32 1, !dbg !1595
  %33 = load i32, ptr %length70, align 8, !dbg !1596
  %sub71 = sub i32 %33, %32, !dbg !1596
  store i32 %sub71, ptr %length70, align 8, !dbg !1596
  %length72 = getelementptr inbounds %struct.isc_region, ptr %remaining, i32 0, i32 1, !dbg !1597
  %34 = load i32, ptr %length72, align 8, !dbg !1597
  %cmp73 = icmp uge i32 %34, 5, !dbg !1597
  %lnot75 = xor i1 %cmp73, true, !dbg !1597
  %lnot77 = xor i1 %lnot75, true, !dbg !1597
  %lnot.ext78 = zext i1 %lnot77 to i32, !dbg !1597
  %conv79 = sext i32 %lnot.ext78 to i64, !dbg !1597
  %expval80 = call i64 @llvm.expect.i64(i64 %conv79, i64 1), !dbg !1597
  %tobool81 = icmp ne i64 %expval80, 0, !dbg !1597
  br i1 %tobool81, label %lor.end83, label %lor.rhs82, !dbg !1597

lor.rhs82:                                        ; preds = %do.end68
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 315, i32 noundef 2, ptr noundef @.str.5) #10, !dbg !1597
  unreachable, !dbg !1597

35:                                               ; No predecessors!
  br label %lor.end83, !dbg !1597

lor.end83:                                        ; preds = %35, %do.end68
  %36 = phi i1 [ true, %do.end68 ], [ false, %35 ]
  %lor.ext84 = zext i1 %36 to i32, !dbg !1597
  %call85 = call zeroext i16 @isc_buffer_getuint16(ptr noundef %source), !dbg !1598
  store i16 %call85, ptr %type, align 2, !dbg !1599
  br label %do.body86, !dbg !1600

do.body86:                                        ; preds = %lor.end83
  %current87 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 4, !dbg !1601
  %37 = load i32, ptr %current87, align 8, !dbg !1601
  %add88 = add i32 %37, 1, !dbg !1601
  store i32 %add88, ptr %current87, align 8, !dbg !1601
  br label %do.cond89, !dbg !1601

do.cond89:                                        ; preds = %do.body86
  br label %do.end90, !dbg !1601

do.end90:                                         ; preds = %do.cond89
  %call91 = call zeroext i16 @isc_buffer_getuint16(ptr noundef %source), !dbg !1603
  %conv92 = zext i16 %call91 to i32, !dbg !1603
  store i32 %conv92, ptr %rcount, align 4, !dbg !1604
  store i32 0, ptr %i, align 4, !dbg !1605
  br label %for.cond, !dbg !1606

for.cond:                                         ; preds = %for.inc, %do.end90
  %38 = load i32, ptr %i, align 4, !dbg !1607
  %39 = load i32, ptr %rcount, align 4, !dbg !1608
  %cmp93 = icmp ult i32 %38, %39, !dbg !1609
  br i1 %cmp93, label %for.body, label %for.end, !dbg !1610

for.body:                                         ; preds = %for.cond
  br label %do.body95, !dbg !1611

do.body95:                                        ; preds = %for.body
  %base96 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 1, !dbg !1612
  %40 = load ptr, ptr %base96, align 8, !dbg !1612
  %current97 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 4, !dbg !1612
  %41 = load i32, ptr %current97, align 8, !dbg !1612
  %idx.ext98 = zext i32 %41 to i64, !dbg !1612
  %add.ptr99 = getelementptr inbounds i8, ptr %40, i64 %idx.ext98, !dbg !1612
  %base100 = getelementptr inbounds %struct.isc_region, ptr %remaining, i32 0, i32 0, !dbg !1612
  store ptr %add.ptr99, ptr %base100, align 8, !dbg !1612
  %used101 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 3, !dbg !1612
  %42 = load i32, ptr %used101, align 4, !dbg !1612
  %current102 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 4, !dbg !1612
  %43 = load i32, ptr %current102, align 8, !dbg !1612
  %sub103 = sub i32 %42, %43, !dbg !1612
  %length104 = getelementptr inbounds %struct.isc_region, ptr %remaining, i32 0, i32 1, !dbg !1612
  store i32 %sub103, ptr %length104, align 8, !dbg !1612
  br label %do.cond105, !dbg !1612

do.cond105:                                       ; preds = %do.body95
  br label %do.end106, !dbg !1612

do.end106:                                        ; preds = %do.cond105
  %length107 = getelementptr inbounds %struct.isc_region, ptr %remaining, i32 0, i32 1, !dbg !1614
  %44 = load i32, ptr %length107, align 8, !dbg !1614
  %cmp108 = icmp uge i32 %44, 2, !dbg !1614
  %lnot110 = xor i1 %cmp108, true, !dbg !1614
  %lnot112 = xor i1 %lnot110, true, !dbg !1614
  %lnot.ext113 = zext i1 %lnot112 to i32, !dbg !1614
  %conv114 = sext i32 %lnot.ext113 to i64, !dbg !1614
  %expval115 = call i64 @llvm.expect.i64(i64 %conv114, i64 1), !dbg !1614
  %tobool116 = icmp ne i64 %expval115, 0, !dbg !1614
  br i1 %tobool116, label %lor.end118, label %lor.rhs117, !dbg !1614

lor.rhs117:                                       ; preds = %do.end106
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 326, i32 noundef 2, ptr noundef @.str.6) #10, !dbg !1614
  unreachable, !dbg !1614

45:                                               ; No predecessors!
  br label %lor.end118, !dbg !1614

lor.end118:                                       ; preds = %45, %do.end106
  %46 = phi i1 [ true, %do.end106 ], [ false, %45 ]
  %lor.ext119 = zext i1 %46 to i32, !dbg !1614
  call void @dns_rdata_reset(ptr noundef %rdata), !dbg !1615
  %call120 = call zeroext i16 @isc_buffer_getuint16(ptr noundef %source), !dbg !1616
  %conv121 = zext i16 %call120 to i32, !dbg !1616
  %length122 = getelementptr inbounds %struct.dns_rdata, ptr %rdata, i32 0, i32 1, !dbg !1617
  store i32 %conv121, ptr %length122, align 8, !dbg !1618
  br label %do.body123, !dbg !1619

do.body123:                                       ; preds = %lor.end118
  %base124 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 1, !dbg !1620
  %47 = load ptr, ptr %base124, align 8, !dbg !1620
  %current125 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 4, !dbg !1620
  %48 = load i32, ptr %current125, align 8, !dbg !1620
  %idx.ext126 = zext i32 %48 to i64, !dbg !1620
  %add.ptr127 = getelementptr inbounds i8, ptr %47, i64 %idx.ext126, !dbg !1620
  %base128 = getelementptr inbounds %struct.isc_region, ptr %remaining, i32 0, i32 0, !dbg !1620
  store ptr %add.ptr127, ptr %base128, align 8, !dbg !1620
  %used129 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 3, !dbg !1620
  %49 = load i32, ptr %used129, align 4, !dbg !1620
  %current130 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 4, !dbg !1620
  %50 = load i32, ptr %current130, align 8, !dbg !1620
  %sub131 = sub i32 %49, %50, !dbg !1620
  %length132 = getelementptr inbounds %struct.isc_region, ptr %remaining, i32 0, i32 1, !dbg !1620
  store i32 %sub131, ptr %length132, align 8, !dbg !1620
  br label %do.cond133, !dbg !1620

do.cond133:                                       ; preds = %do.body123
  br label %do.end134, !dbg !1620

do.end134:                                        ; preds = %do.cond133
  %base135 = getelementptr inbounds %struct.isc_region, ptr %remaining, i32 0, i32 0, !dbg !1622
  %51 = load ptr, ptr %base135, align 8, !dbg !1622
  %data136 = getelementptr inbounds %struct.dns_rdata, ptr %rdata, i32 0, i32 0, !dbg !1623
  store ptr %51, ptr %data136, align 8, !dbg !1624
  %52 = load i16, ptr %type, align 2, !dbg !1625
  %type137 = getelementptr inbounds %struct.dns_rdata, ptr %rdata, i32 0, i32 3, !dbg !1626
  store i16 %52, ptr %type137, align 2, !dbg !1627
  %53 = load ptr, ptr %rdataset.addr, align 8, !dbg !1628
  %rdclass = getelementptr inbounds %struct.dns_rdataset, ptr %53, i32 0, i32 3, !dbg !1629
  %54 = load i16, ptr %rdclass, align 8, !dbg !1629
  %rdclass138 = getelementptr inbounds %struct.dns_rdata, ptr %rdata, i32 0, i32 2, !dbg !1630
  store i16 %54, ptr %rdclass138, align 4, !dbg !1631
  %length139 = getelementptr inbounds %struct.isc_region, ptr %remaining, i32 0, i32 1, !dbg !1632
  %55 = load i32, ptr %length139, align 8, !dbg !1632
  %length140 = getelementptr inbounds %struct.dns_rdata, ptr %rdata, i32 0, i32 1, !dbg !1632
  %56 = load i32, ptr %length140, align 8, !dbg !1632
  %cmp141 = icmp uge i32 %55, %56, !dbg !1632
  %lnot143 = xor i1 %cmp141, true, !dbg !1632
  %lnot145 = xor i1 %lnot143, true, !dbg !1632
  %lnot.ext146 = zext i1 %lnot145 to i32, !dbg !1632
  %conv147 = sext i32 %lnot.ext146 to i64, !dbg !1632
  %expval148 = call i64 @llvm.expect.i64(i64 %conv147, i64 1), !dbg !1632
  %tobool149 = icmp ne i64 %expval148, 0, !dbg !1632
  br i1 %tobool149, label %lor.end151, label %lor.rhs150, !dbg !1632

lor.rhs150:                                       ; preds = %do.end134
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 333, i32 noundef 2, ptr noundef @.str.7) #10, !dbg !1632
  unreachable, !dbg !1632

57:                                               ; No predecessors!
  br label %lor.end151, !dbg !1632

lor.end151:                                       ; preds = %57, %do.end134
  %58 = phi i1 [ true, %do.end134 ], [ false, %57 ]
  %lor.ext152 = zext i1 %58 to i32, !dbg !1632
  br label %do.body153, !dbg !1633

do.body153:                                       ; preds = %lor.end151
  %length154 = getelementptr inbounds %struct.dns_rdata, ptr %rdata, i32 0, i32 1, !dbg !1634
  %59 = load i32, ptr %length154, align 8, !dbg !1634
  %current155 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 4, !dbg !1634
  %60 = load i32, ptr %current155, align 8, !dbg !1634
  %add156 = add i32 %60, %59, !dbg !1634
  store i32 %add156, ptr %current155, align 8, !dbg !1634
  br label %do.cond157, !dbg !1634

do.cond157:                                       ; preds = %do.body153
  br label %do.end158, !dbg !1634

do.end158:                                        ; preds = %do.cond157
  %61 = load i32, ptr %options.addr, align 4, !dbg !1636
  %and159 = and i32 %61, 1, !dbg !1638
  %cmp160 = icmp ne i32 %and159, 0, !dbg !1639
  br i1 %cmp160, label %land.lhs.true, label %if.end, !dbg !1640

land.lhs.true:                                    ; preds = %do.end158
  %62 = load i16, ptr %type, align 2, !dbg !1641
  %call162 = call zeroext i1 @dns_rdatatype_isdnssec(i16 noundef zeroext %62), !dbg !1642
  br i1 %call162, label %if.then, label %if.end, !dbg !1643

if.then:                                          ; preds = %land.lhs.true
  br label %for.inc, !dbg !1644

if.end:                                           ; preds = %land.lhs.true, %do.end158
  %63 = load ptr, ptr %cctx.addr, align 8, !dbg !1645
  call void @dns_compress_setmethods(ptr noundef %63, i32 noundef 1), !dbg !1646
  %64 = load ptr, ptr %cctx.addr, align 8, !dbg !1647
  %65 = load ptr, ptr %target.addr, align 8, !dbg !1648
  %call164 = call i32 @dns_name_towire(ptr noundef %name, ptr noundef %64, ptr noundef %65), !dbg !1649
  store i32 %call164, ptr %result, align 4, !dbg !1650
  %66 = load i32, ptr %result, align 4, !dbg !1651
  %cmp165 = icmp ne i32 %66, 0, !dbg !1653
  br i1 %cmp165, label %if.then167, label %if.end168, !dbg !1654

if.then167:                                       ; preds = %if.end
  br label %rollback, !dbg !1655

if.end168:                                        ; preds = %if.end
  br label %do.body169, !dbg !1656

do.body169:                                       ; preds = %if.end168
  %67 = load ptr, ptr %target.addr, align 8, !dbg !1657
  %base170 = getelementptr inbounds %struct.isc_buffer, ptr %67, i32 0, i32 1, !dbg !1657
  %68 = load ptr, ptr %base170, align 8, !dbg !1657
  %69 = load ptr, ptr %target.addr, align 8, !dbg !1657
  %used171 = getelementptr inbounds %struct.isc_buffer, ptr %69, i32 0, i32 3, !dbg !1657
  %70 = load i32, ptr %used171, align 4, !dbg !1657
  %idx.ext172 = zext i32 %70 to i64, !dbg !1657
  %add.ptr173 = getelementptr inbounds i8, ptr %68, i64 %idx.ext172, !dbg !1657
  %base174 = getelementptr inbounds %struct.isc_region, ptr %tavailable, i32 0, i32 0, !dbg !1657
  store ptr %add.ptr173, ptr %base174, align 8, !dbg !1657
  %71 = load ptr, ptr %target.addr, align 8, !dbg !1657
  %length175 = getelementptr inbounds %struct.isc_buffer, ptr %71, i32 0, i32 2, !dbg !1657
  %72 = load i32, ptr %length175, align 8, !dbg !1657
  %73 = load ptr, ptr %target.addr, align 8, !dbg !1657
  %used176 = getelementptr inbounds %struct.isc_buffer, ptr %73, i32 0, i32 3, !dbg !1657
  %74 = load i32, ptr %used176, align 4, !dbg !1657
  %sub177 = sub i32 %72, %74, !dbg !1657
  %length178 = getelementptr inbounds %struct.isc_region, ptr %tavailable, i32 0, i32 1, !dbg !1657
  store i32 %sub177, ptr %length178, align 8, !dbg !1657
  br label %do.cond179, !dbg !1657

do.cond179:                                       ; preds = %do.body169
  br label %do.end180, !dbg !1657

do.end180:                                        ; preds = %do.cond179
  %length181 = getelementptr inbounds %struct.isc_region, ptr %tavailable, i32 0, i32 1, !dbg !1659
  %75 = load i32, ptr %length181, align 8, !dbg !1659
  %cmp182 = icmp ult i32 %75, 10, !dbg !1661
  br i1 %cmp182, label %if.then184, label %if.end185, !dbg !1662

if.then184:                                       ; preds = %do.end180
  store i32 19, ptr %result, align 4, !dbg !1663
  br label %rollback, !dbg !1665

if.end185:                                        ; preds = %do.end180
  br label %do.body186, !dbg !1666

do.body186:                                       ; preds = %if.end185
  call void @llvm.lifetime.start.p0(i64 8, ptr %_cp) #9, !dbg !1667
  tail call void @llvm.dbg.declare(metadata ptr %_cp, metadata !1510, metadata !DIExpression()), !dbg !1667
  call void @llvm.lifetime.start.p0(i64 2, ptr %_val2) #9, !dbg !1667
  tail call void @llvm.dbg.declare(metadata ptr %_val2, metadata !1516, metadata !DIExpression()), !dbg !1667
  %76 = load i16, ptr %type, align 2, !dbg !1667
  store i16 %76, ptr %_val2, align 2, !dbg !1667
  %77 = load ptr, ptr %target.addr, align 8, !dbg !1668
  %autore187 = getelementptr inbounds %struct.isc_buffer, ptr %77, i32 0, i32 8, !dbg !1668
  %78 = load i8, ptr %autore187, align 8, !dbg !1668, !range !1313, !noundef !1314
  %tobool188 = trunc i8 %78 to i1, !dbg !1668
  %lnot189 = xor i1 %tobool188, true, !dbg !1668
  %lnot191 = xor i1 %lnot189, true, !dbg !1668
  %lnot.ext192 = zext i1 %lnot191 to i32, !dbg !1668
  %conv193 = sext i32 %lnot.ext192 to i64, !dbg !1668
  %expval194 = call i64 @llvm.expect.i64(i64 %conv193, i64 0), !dbg !1668
  %tobool195 = icmp ne i64 %expval194, 0, !dbg !1668
  br i1 %tobool195, label %if.then196, label %if.end210, !dbg !1667

if.then196:                                       ; preds = %do.body186
  call void @llvm.lifetime.start.p0(i64 8, ptr %_tmp) #9, !dbg !1669
  tail call void @llvm.dbg.declare(metadata ptr %_tmp, metadata !1517, metadata !DIExpression()), !dbg !1669
  %79 = load ptr, ptr %target.addr, align 8, !dbg !1669
  store ptr %79, ptr %_tmp, align 8, !dbg !1669
  %call197 = call i32 @isc_buffer_reserve(ptr noundef %_tmp, i32 noundef 2), !dbg !1669
  %cmp198 = icmp eq i32 %call197, 0, !dbg !1669
  %lnot200 = xor i1 %cmp198, true, !dbg !1669
  %lnot202 = xor i1 %lnot200, true, !dbg !1669
  %lnot.ext203 = zext i1 %lnot202 to i32, !dbg !1669
  %conv204 = sext i32 %lnot.ext203 to i64, !dbg !1669
  %expval205 = call i64 @llvm.expect.i64(i64 %conv204, i64 1), !dbg !1669
  %tobool206 = icmp ne i64 %expval205, 0, !dbg !1669
  br i1 %tobool206, label %lor.end208, label %lor.rhs207, !dbg !1669

lor.rhs207:                                       ; preds = %if.then196
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 357, i32 noundef 0, ptr noundef @.str.8) #10, !dbg !1669
  unreachable, !dbg !1669

80:                                               ; No predecessors!
  br label %lor.end208, !dbg !1669

lor.end208:                                       ; preds = %80, %if.then196
  %81 = phi i1 [ true, %if.then196 ], [ false, %80 ]
  %lor.ext209 = zext i1 %81 to i32, !dbg !1669
  call void @llvm.lifetime.end.p0(i64 8, ptr %_tmp) #9, !dbg !1668
  br label %if.end210, !dbg !1669

if.end210:                                        ; preds = %lor.end208, %do.body186
  %82 = load ptr, ptr %target.addr, align 8, !dbg !1667
  %length211 = getelementptr inbounds %struct.isc_buffer, ptr %82, i32 0, i32 2, !dbg !1667
  %83 = load i32, ptr %length211, align 8, !dbg !1667
  %84 = load ptr, ptr %target.addr, align 8, !dbg !1667
  %used212 = getelementptr inbounds %struct.isc_buffer, ptr %84, i32 0, i32 3, !dbg !1667
  %85 = load i32, ptr %used212, align 4, !dbg !1667
  %sub213 = sub i32 %83, %85, !dbg !1667
  %cmp214 = icmp uge i32 %sub213, 2, !dbg !1667
  %lnot216 = xor i1 %cmp214, true, !dbg !1667
  %lnot218 = xor i1 %lnot216, true, !dbg !1667
  %lnot.ext219 = zext i1 %lnot218 to i32, !dbg !1667
  %conv220 = sext i32 %lnot.ext219 to i64, !dbg !1667
  %expval221 = call i64 @llvm.expect.i64(i64 %conv220, i64 1), !dbg !1667
  %tobool222 = icmp ne i64 %expval221, 0, !dbg !1667
  br i1 %tobool222, label %lor.end224, label %lor.rhs223, !dbg !1667

lor.rhs223:                                       ; preds = %if.end210
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 357, i32 noundef 0, ptr noundef @.str.9) #10, !dbg !1667
  unreachable, !dbg !1667

86:                                               ; No predecessors!
  br label %lor.end224, !dbg !1667

lor.end224:                                       ; preds = %86, %if.end210
  %87 = phi i1 [ true, %if.end210 ], [ false, %86 ]
  %lor.ext225 = zext i1 %87 to i32, !dbg !1667
  %88 = load ptr, ptr %target.addr, align 8, !dbg !1667
  %base226 = getelementptr inbounds %struct.isc_buffer, ptr %88, i32 0, i32 1, !dbg !1667
  %89 = load ptr, ptr %base226, align 8, !dbg !1667
  %90 = load ptr, ptr %target.addr, align 8, !dbg !1667
  %used227 = getelementptr inbounds %struct.isc_buffer, ptr %90, i32 0, i32 3, !dbg !1667
  %91 = load i32, ptr %used227, align 4, !dbg !1667
  %idx.ext228 = zext i32 %91 to i64, !dbg !1667
  %add.ptr229 = getelementptr inbounds i8, ptr %89, i64 %idx.ext228, !dbg !1667
  store ptr %add.ptr229, ptr %_cp, align 8, !dbg !1667
  %92 = load ptr, ptr %target.addr, align 8, !dbg !1667
  %used230 = getelementptr inbounds %struct.isc_buffer, ptr %92, i32 0, i32 3, !dbg !1667
  %93 = load i32, ptr %used230, align 4, !dbg !1667
  %add231 = add i32 %93, 2, !dbg !1667
  store i32 %add231, ptr %used230, align 4, !dbg !1667
  %94 = load i16, ptr %_val2, align 2, !dbg !1667
  %conv232 = zext i16 %94 to i32, !dbg !1667
  %shr = ashr i32 %conv232, 8, !dbg !1667
  %conv233 = trunc i32 %shr to i8, !dbg !1667
  %95 = load ptr, ptr %_cp, align 8, !dbg !1667
  %arrayidx = getelementptr inbounds i8, ptr %95, i64 0, !dbg !1667
  store i8 %conv233, ptr %arrayidx, align 1, !dbg !1667
  %96 = load i16, ptr %_val2, align 2, !dbg !1667
  %conv234 = trunc i16 %96 to i8, !dbg !1667
  %97 = load ptr, ptr %_cp, align 8, !dbg !1667
  %arrayidx235 = getelementptr inbounds i8, ptr %97, i64 1, !dbg !1667
  store i8 %conv234, ptr %arrayidx235, align 1, !dbg !1667
  call void @llvm.lifetime.end.p0(i64 2, ptr %_val2) #9, !dbg !1666
  call void @llvm.lifetime.end.p0(i64 8, ptr %_cp) #9, !dbg !1666
  br label %do.cond236, !dbg !1667

do.cond236:                                       ; preds = %lor.end224
  br label %do.end237, !dbg !1667

do.end237:                                        ; preds = %do.cond236
  br label %do.body238, !dbg !1670

do.body238:                                       ; preds = %do.end237
  call void @llvm.lifetime.start.p0(i64 8, ptr %_cp239) #9, !dbg !1671
  tail call void @llvm.dbg.declare(metadata ptr %_cp239, metadata !1520, metadata !DIExpression()), !dbg !1671
  call void @llvm.lifetime.start.p0(i64 2, ptr %_val2240) #9, !dbg !1671
  tail call void @llvm.dbg.declare(metadata ptr %_val2240, metadata !1522, metadata !DIExpression()), !dbg !1671
  %98 = load ptr, ptr %rdataset.addr, align 8, !dbg !1671
  %rdclass241 = getelementptr inbounds %struct.dns_rdataset, ptr %98, i32 0, i32 3, !dbg !1671
  %99 = load i16, ptr %rdclass241, align 8, !dbg !1671
  store i16 %99, ptr %_val2240, align 2, !dbg !1671
  %100 = load ptr, ptr %target.addr, align 8, !dbg !1672
  %autore242 = getelementptr inbounds %struct.isc_buffer, ptr %100, i32 0, i32 8, !dbg !1672
  %101 = load i8, ptr %autore242, align 8, !dbg !1672, !range !1313, !noundef !1314
  %tobool243 = trunc i8 %101 to i1, !dbg !1672
  %lnot244 = xor i1 %tobool243, true, !dbg !1672
  %lnot246 = xor i1 %lnot244, true, !dbg !1672
  %lnot.ext247 = zext i1 %lnot246 to i32, !dbg !1672
  %conv248 = sext i32 %lnot.ext247 to i64, !dbg !1672
  %expval249 = call i64 @llvm.expect.i64(i64 %conv248, i64 0), !dbg !1672
  %tobool250 = icmp ne i64 %expval249, 0, !dbg !1672
  br i1 %tobool250, label %if.then251, label %if.end266, !dbg !1671

if.then251:                                       ; preds = %do.body238
  call void @llvm.lifetime.start.p0(i64 8, ptr %_tmp252) #9, !dbg !1673
  tail call void @llvm.dbg.declare(metadata ptr %_tmp252, metadata !1523, metadata !DIExpression()), !dbg !1673
  %102 = load ptr, ptr %target.addr, align 8, !dbg !1673
  store ptr %102, ptr %_tmp252, align 8, !dbg !1673
  %call253 = call i32 @isc_buffer_reserve(ptr noundef %_tmp252, i32 noundef 2), !dbg !1673
  %cmp254 = icmp eq i32 %call253, 0, !dbg !1673
  %lnot256 = xor i1 %cmp254, true, !dbg !1673
  %lnot258 = xor i1 %lnot256, true, !dbg !1673
  %lnot.ext259 = zext i1 %lnot258 to i32, !dbg !1673
  %conv260 = sext i32 %lnot.ext259 to i64, !dbg !1673
  %expval261 = call i64 @llvm.expect.i64(i64 %conv260, i64 1), !dbg !1673
  %tobool262 = icmp ne i64 %expval261, 0, !dbg !1673
  br i1 %tobool262, label %lor.end264, label %lor.rhs263, !dbg !1673

lor.rhs263:                                       ; preds = %if.then251
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 358, i32 noundef 0, ptr noundef @.str.8) #10, !dbg !1673
  unreachable, !dbg !1673

103:                                              ; No predecessors!
  br label %lor.end264, !dbg !1673

lor.end264:                                       ; preds = %103, %if.then251
  %104 = phi i1 [ true, %if.then251 ], [ false, %103 ]
  %lor.ext265 = zext i1 %104 to i32, !dbg !1673
  call void @llvm.lifetime.end.p0(i64 8, ptr %_tmp252) #9, !dbg !1672
  br label %if.end266, !dbg !1673

if.end266:                                        ; preds = %lor.end264, %do.body238
  %105 = load ptr, ptr %target.addr, align 8, !dbg !1671
  %length267 = getelementptr inbounds %struct.isc_buffer, ptr %105, i32 0, i32 2, !dbg !1671
  %106 = load i32, ptr %length267, align 8, !dbg !1671
  %107 = load ptr, ptr %target.addr, align 8, !dbg !1671
  %used268 = getelementptr inbounds %struct.isc_buffer, ptr %107, i32 0, i32 3, !dbg !1671
  %108 = load i32, ptr %used268, align 4, !dbg !1671
  %sub269 = sub i32 %106, %108, !dbg !1671
  %cmp270 = icmp uge i32 %sub269, 2, !dbg !1671
  %lnot272 = xor i1 %cmp270, true, !dbg !1671
  %lnot274 = xor i1 %lnot272, true, !dbg !1671
  %lnot.ext275 = zext i1 %lnot274 to i32, !dbg !1671
  %conv276 = sext i32 %lnot.ext275 to i64, !dbg !1671
  %expval277 = call i64 @llvm.expect.i64(i64 %conv276, i64 1), !dbg !1671
  %tobool278 = icmp ne i64 %expval277, 0, !dbg !1671
  br i1 %tobool278, label %lor.end280, label %lor.rhs279, !dbg !1671

lor.rhs279:                                       ; preds = %if.end266
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 358, i32 noundef 0, ptr noundef @.str.9) #10, !dbg !1671
  unreachable, !dbg !1671

109:                                              ; No predecessors!
  br label %lor.end280, !dbg !1671

lor.end280:                                       ; preds = %109, %if.end266
  %110 = phi i1 [ true, %if.end266 ], [ false, %109 ]
  %lor.ext281 = zext i1 %110 to i32, !dbg !1671
  %111 = load ptr, ptr %target.addr, align 8, !dbg !1671
  %base282 = getelementptr inbounds %struct.isc_buffer, ptr %111, i32 0, i32 1, !dbg !1671
  %112 = load ptr, ptr %base282, align 8, !dbg !1671
  %113 = load ptr, ptr %target.addr, align 8, !dbg !1671
  %used283 = getelementptr inbounds %struct.isc_buffer, ptr %113, i32 0, i32 3, !dbg !1671
  %114 = load i32, ptr %used283, align 4, !dbg !1671
  %idx.ext284 = zext i32 %114 to i64, !dbg !1671
  %add.ptr285 = getelementptr inbounds i8, ptr %112, i64 %idx.ext284, !dbg !1671
  store ptr %add.ptr285, ptr %_cp239, align 8, !dbg !1671
  %115 = load ptr, ptr %target.addr, align 8, !dbg !1671
  %used286 = getelementptr inbounds %struct.isc_buffer, ptr %115, i32 0, i32 3, !dbg !1671
  %116 = load i32, ptr %used286, align 4, !dbg !1671
  %add287 = add i32 %116, 2, !dbg !1671
  store i32 %add287, ptr %used286, align 4, !dbg !1671
  %117 = load i16, ptr %_val2240, align 2, !dbg !1671
  %conv288 = zext i16 %117 to i32, !dbg !1671
  %shr289 = ashr i32 %conv288, 8, !dbg !1671
  %conv290 = trunc i32 %shr289 to i8, !dbg !1671
  %118 = load ptr, ptr %_cp239, align 8, !dbg !1671
  %arrayidx291 = getelementptr inbounds i8, ptr %118, i64 0, !dbg !1671
  store i8 %conv290, ptr %arrayidx291, align 1, !dbg !1671
  %119 = load i16, ptr %_val2240, align 2, !dbg !1671
  %conv292 = trunc i16 %119 to i8, !dbg !1671
  %120 = load ptr, ptr %_cp239, align 8, !dbg !1671
  %arrayidx293 = getelementptr inbounds i8, ptr %120, i64 1, !dbg !1671
  store i8 %conv292, ptr %arrayidx293, align 1, !dbg !1671
  call void @llvm.lifetime.end.p0(i64 2, ptr %_val2240) #9, !dbg !1670
  call void @llvm.lifetime.end.p0(i64 8, ptr %_cp239) #9, !dbg !1670
  br label %do.cond294, !dbg !1671

do.cond294:                                       ; preds = %lor.end280
  br label %do.end295, !dbg !1671

do.end295:                                        ; preds = %do.cond294
  br label %do.body296, !dbg !1674

do.body296:                                       ; preds = %do.end295
  call void @llvm.lifetime.start.p0(i64 8, ptr %_cp297) #9, !dbg !1675
  tail call void @llvm.dbg.declare(metadata ptr %_cp297, metadata !1526, metadata !DIExpression()), !dbg !1675
  call void @llvm.lifetime.start.p0(i64 4, ptr %_val2298) #9, !dbg !1675
  tail call void @llvm.dbg.declare(metadata ptr %_val2298, metadata !1528, metadata !DIExpression()), !dbg !1675
  %121 = load ptr, ptr %rdataset.addr, align 8, !dbg !1675
  %ttl = getelementptr inbounds %struct.dns_rdataset, ptr %121, i32 0, i32 5, !dbg !1675
  %122 = load i32, ptr %ttl, align 4, !dbg !1675
  store i32 %122, ptr %_val2298, align 4, !dbg !1675
  %123 = load ptr, ptr %target.addr, align 8, !dbg !1676
  %autore299 = getelementptr inbounds %struct.isc_buffer, ptr %123, i32 0, i32 8, !dbg !1676
  %124 = load i8, ptr %autore299, align 8, !dbg !1676, !range !1313, !noundef !1314
  %tobool300 = trunc i8 %124 to i1, !dbg !1676
  %lnot301 = xor i1 %tobool300, true, !dbg !1676
  %lnot303 = xor i1 %lnot301, true, !dbg !1676
  %lnot.ext304 = zext i1 %lnot303 to i32, !dbg !1676
  %conv305 = sext i32 %lnot.ext304 to i64, !dbg !1676
  %expval306 = call i64 @llvm.expect.i64(i64 %conv305, i64 0), !dbg !1676
  %tobool307 = icmp ne i64 %expval306, 0, !dbg !1676
  br i1 %tobool307, label %if.then308, label %if.end323, !dbg !1675

if.then308:                                       ; preds = %do.body296
  call void @llvm.lifetime.start.p0(i64 8, ptr %_tmp309) #9, !dbg !1677
  tail call void @llvm.dbg.declare(metadata ptr %_tmp309, metadata !1529, metadata !DIExpression()), !dbg !1677
  %125 = load ptr, ptr %target.addr, align 8, !dbg !1677
  store ptr %125, ptr %_tmp309, align 8, !dbg !1677
  %call310 = call i32 @isc_buffer_reserve(ptr noundef %_tmp309, i32 noundef 4), !dbg !1677
  %cmp311 = icmp eq i32 %call310, 0, !dbg !1677
  %lnot313 = xor i1 %cmp311, true, !dbg !1677
  %lnot315 = xor i1 %lnot313, true, !dbg !1677
  %lnot.ext316 = zext i1 %lnot315 to i32, !dbg !1677
  %conv317 = sext i32 %lnot.ext316 to i64, !dbg !1677
  %expval318 = call i64 @llvm.expect.i64(i64 %conv317, i64 1), !dbg !1677
  %tobool319 = icmp ne i64 %expval318, 0, !dbg !1677
  br i1 %tobool319, label %lor.end321, label %lor.rhs320, !dbg !1677

lor.rhs320:                                       ; preds = %if.then308
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 359, i32 noundef 0, ptr noundef @.str.10) #10, !dbg !1677
  unreachable, !dbg !1677

126:                                              ; No predecessors!
  br label %lor.end321, !dbg !1677

lor.end321:                                       ; preds = %126, %if.then308
  %127 = phi i1 [ true, %if.then308 ], [ false, %126 ]
  %lor.ext322 = zext i1 %127 to i32, !dbg !1677
  call void @llvm.lifetime.end.p0(i64 8, ptr %_tmp309) #9, !dbg !1676
  br label %if.end323, !dbg !1677

if.end323:                                        ; preds = %lor.end321, %do.body296
  %128 = load ptr, ptr %target.addr, align 8, !dbg !1675
  %length324 = getelementptr inbounds %struct.isc_buffer, ptr %128, i32 0, i32 2, !dbg !1675
  %129 = load i32, ptr %length324, align 8, !dbg !1675
  %130 = load ptr, ptr %target.addr, align 8, !dbg !1675
  %used325 = getelementptr inbounds %struct.isc_buffer, ptr %130, i32 0, i32 3, !dbg !1675
  %131 = load i32, ptr %used325, align 4, !dbg !1675
  %sub326 = sub i32 %129, %131, !dbg !1675
  %cmp327 = icmp uge i32 %sub326, 4, !dbg !1675
  %lnot329 = xor i1 %cmp327, true, !dbg !1675
  %lnot331 = xor i1 %lnot329, true, !dbg !1675
  %lnot.ext332 = zext i1 %lnot331 to i32, !dbg !1675
  %conv333 = sext i32 %lnot.ext332 to i64, !dbg !1675
  %expval334 = call i64 @llvm.expect.i64(i64 %conv333, i64 1), !dbg !1675
  %tobool335 = icmp ne i64 %expval334, 0, !dbg !1675
  br i1 %tobool335, label %lor.end337, label %lor.rhs336, !dbg !1675

lor.rhs336:                                       ; preds = %if.end323
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 359, i32 noundef 0, ptr noundef @.str.11) #10, !dbg !1675
  unreachable, !dbg !1675

132:                                              ; No predecessors!
  br label %lor.end337, !dbg !1675

lor.end337:                                       ; preds = %132, %if.end323
  %133 = phi i1 [ true, %if.end323 ], [ false, %132 ]
  %lor.ext338 = zext i1 %133 to i32, !dbg !1675
  %134 = load ptr, ptr %target.addr, align 8, !dbg !1675
  %base339 = getelementptr inbounds %struct.isc_buffer, ptr %134, i32 0, i32 1, !dbg !1675
  %135 = load ptr, ptr %base339, align 8, !dbg !1675
  %136 = load ptr, ptr %target.addr, align 8, !dbg !1675
  %used340 = getelementptr inbounds %struct.isc_buffer, ptr %136, i32 0, i32 3, !dbg !1675
  %137 = load i32, ptr %used340, align 4, !dbg !1675
  %idx.ext341 = zext i32 %137 to i64, !dbg !1675
  %add.ptr342 = getelementptr inbounds i8, ptr %135, i64 %idx.ext341, !dbg !1675
  store ptr %add.ptr342, ptr %_cp297, align 8, !dbg !1675
  %138 = load ptr, ptr %target.addr, align 8, !dbg !1675
  %used343 = getelementptr inbounds %struct.isc_buffer, ptr %138, i32 0, i32 3, !dbg !1675
  %139 = load i32, ptr %used343, align 4, !dbg !1675
  %add344 = add i32 %139, 4, !dbg !1675
  store i32 %add344, ptr %used343, align 4, !dbg !1675
  %140 = load i32, ptr %_val2298, align 4, !dbg !1675
  %shr345 = lshr i32 %140, 24, !dbg !1675
  %conv346 = trunc i32 %shr345 to i8, !dbg !1675
  %141 = load ptr, ptr %_cp297, align 8, !dbg !1675
  %arrayidx347 = getelementptr inbounds i8, ptr %141, i64 0, !dbg !1675
  store i8 %conv346, ptr %arrayidx347, align 1, !dbg !1675
  %142 = load i32, ptr %_val2298, align 4, !dbg !1675
  %shr348 = lshr i32 %142, 16, !dbg !1675
  %conv349 = trunc i32 %shr348 to i8, !dbg !1675
  %143 = load ptr, ptr %_cp297, align 8, !dbg !1675
  %arrayidx350 = getelementptr inbounds i8, ptr %143, i64 1, !dbg !1675
  store i8 %conv349, ptr %arrayidx350, align 1, !dbg !1675
  %144 = load i32, ptr %_val2298, align 4, !dbg !1675
  %shr351 = lshr i32 %144, 8, !dbg !1675
  %conv352 = trunc i32 %shr351 to i8, !dbg !1675
  %145 = load ptr, ptr %_cp297, align 8, !dbg !1675
  %arrayidx353 = getelementptr inbounds i8, ptr %145, i64 2, !dbg !1675
  store i8 %conv352, ptr %arrayidx353, align 1, !dbg !1675
  %146 = load i32, ptr %_val2298, align 4, !dbg !1675
  %conv354 = trunc i32 %146 to i8, !dbg !1675
  %147 = load ptr, ptr %_cp297, align 8, !dbg !1675
  %arrayidx355 = getelementptr inbounds i8, ptr %147, i64 3, !dbg !1675
  store i8 %conv354, ptr %arrayidx355, align 1, !dbg !1675
  call void @llvm.lifetime.end.p0(i64 4, ptr %_val2298) #9, !dbg !1674
  call void @llvm.lifetime.end.p0(i64 8, ptr %_cp297) #9, !dbg !1674
  br label %do.cond356, !dbg !1675

do.cond356:                                       ; preds = %lor.end337
  br label %do.end357, !dbg !1675

do.end357:                                        ; preds = %do.cond356
  %148 = load ptr, ptr %target.addr, align 8, !dbg !1678
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rdlen, ptr align 8 %148, i64 64, i1 false), !dbg !1679
  br label %do.body358, !dbg !1680

do.body358:                                       ; preds = %do.end357
  %149 = load ptr, ptr %target.addr, align 8, !dbg !1681
  %used359 = getelementptr inbounds %struct.isc_buffer, ptr %149, i32 0, i32 3, !dbg !1681
  %150 = load i32, ptr %used359, align 4, !dbg !1681
  %add360 = add i32 %150, 2, !dbg !1681
  store i32 %add360, ptr %used359, align 4, !dbg !1681
  br label %do.cond361, !dbg !1681

do.cond361:                                       ; preds = %do.body358
  br label %do.end362, !dbg !1681

do.end362:                                        ; preds = %do.cond361
  %151 = load ptr, ptr %cctx.addr, align 8, !dbg !1683
  %152 = load ptr, ptr %target.addr, align 8, !dbg !1684
  %call363 = call i32 @dns_rdata_towire(ptr noundef %rdata, ptr noundef %151, ptr noundef %152), !dbg !1685
  store i32 %call363, ptr %result, align 4, !dbg !1686
  %153 = load i32, ptr %result, align 4, !dbg !1687
  %cmp364 = icmp ne i32 %153, 0, !dbg !1689
  br i1 %cmp364, label %if.then366, label %if.end367, !dbg !1690

if.then366:                                       ; preds = %do.end362
  br label %rollback, !dbg !1691

if.end367:                                        ; preds = %do.end362
  %154 = load ptr, ptr %target.addr, align 8, !dbg !1692
  %used368 = getelementptr inbounds %struct.isc_buffer, ptr %154, i32 0, i32 3, !dbg !1692
  %155 = load i32, ptr %used368, align 4, !dbg !1692
  %used369 = getelementptr inbounds %struct.isc_buffer, ptr %rdlen, i32 0, i32 3, !dbg !1692
  %156 = load i32, ptr %used369, align 4, !dbg !1692
  %add370 = add i32 %156, 2, !dbg !1692
  %cmp371 = icmp uge i32 %155, %add370, !dbg !1692
  br i1 %cmp371, label %land.rhs, label %land.end, !dbg !1692

land.rhs:                                         ; preds = %if.end367
  %157 = load ptr, ptr %target.addr, align 8, !dbg !1692
  %used373 = getelementptr inbounds %struct.isc_buffer, ptr %157, i32 0, i32 3, !dbg !1692
  %158 = load i32, ptr %used373, align 4, !dbg !1692
  %used374 = getelementptr inbounds %struct.isc_buffer, ptr %rdlen, i32 0, i32 3, !dbg !1692
  %159 = load i32, ptr %used374, align 4, !dbg !1692
  %sub375 = sub i32 %158, %159, !dbg !1692
  %sub376 = sub i32 %sub375, 2, !dbg !1692
  %cmp377 = icmp ult i32 %sub376, 65536, !dbg !1692
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end367
  %160 = phi i1 [ false, %if.end367 ], [ %cmp377, %land.rhs ], !dbg !1693
  %lnot379 = xor i1 %160, true, !dbg !1692
  %lnot381 = xor i1 %lnot379, true, !dbg !1692
  %lnot.ext382 = zext i1 %lnot381 to i32, !dbg !1692
  %conv383 = sext i32 %lnot.ext382 to i64, !dbg !1692
  %expval384 = call i64 @llvm.expect.i64(i64 %conv383, i64 1), !dbg !1692
  %tobool385 = icmp ne i64 %expval384, 0, !dbg !1692
  br i1 %tobool385, label %lor.end387, label %lor.rhs386, !dbg !1692

lor.rhs386:                                       ; preds = %land.end
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 379, i32 noundef 2, ptr noundef @.str.12) #10, !dbg !1692
  unreachable, !dbg !1692

161:                                              ; No predecessors!
  br label %lor.end387, !dbg !1692

lor.end387:                                       ; preds = %161, %land.end
  %162 = phi i1 [ true, %land.end ], [ false, %161 ]
  %lor.ext388 = zext i1 %162 to i32, !dbg !1692
  br label %do.body389, !dbg !1694

do.body389:                                       ; preds = %lor.end387
  call void @llvm.lifetime.start.p0(i64 8, ptr %_cp390) #9, !dbg !1695
  tail call void @llvm.dbg.declare(metadata ptr %_cp390, metadata !1532, metadata !DIExpression()), !dbg !1695
  call void @llvm.lifetime.start.p0(i64 2, ptr %_val2391) #9, !dbg !1695
  tail call void @llvm.dbg.declare(metadata ptr %_val2391, metadata !1534, metadata !DIExpression()), !dbg !1695
  %163 = load ptr, ptr %target.addr, align 8, !dbg !1695
  %used392 = getelementptr inbounds %struct.isc_buffer, ptr %163, i32 0, i32 3, !dbg !1695
  %164 = load i32, ptr %used392, align 4, !dbg !1695
  %used393 = getelementptr inbounds %struct.isc_buffer, ptr %rdlen, i32 0, i32 3, !dbg !1695
  %165 = load i32, ptr %used393, align 4, !dbg !1695
  %sub394 = sub i32 %164, %165, !dbg !1695
  %sub395 = sub i32 %sub394, 2, !dbg !1695
  %conv396 = trunc i32 %sub395 to i16, !dbg !1695
  store i16 %conv396, ptr %_val2391, align 2, !dbg !1695
  %autore397 = getelementptr inbounds %struct.isc_buffer, ptr %rdlen, i32 0, i32 8, !dbg !1696
  %166 = load i8, ptr %autore397, align 8, !dbg !1696, !range !1313, !noundef !1314
  %tobool398 = trunc i8 %166 to i1, !dbg !1696
  %lnot399 = xor i1 %tobool398, true, !dbg !1696
  %lnot401 = xor i1 %lnot399, true, !dbg !1696
  %lnot.ext402 = zext i1 %lnot401 to i32, !dbg !1696
  %conv403 = sext i32 %lnot.ext402 to i64, !dbg !1696
  %expval404 = call i64 @llvm.expect.i64(i64 %conv403, i64 0), !dbg !1696
  %tobool405 = icmp ne i64 %expval404, 0, !dbg !1696
  br i1 %tobool405, label %if.then406, label %if.end421, !dbg !1695

if.then406:                                       ; preds = %do.body389
  call void @llvm.lifetime.start.p0(i64 8, ptr %_tmp407) #9, !dbg !1697
  tail call void @llvm.dbg.declare(metadata ptr %_tmp407, metadata !1535, metadata !DIExpression()), !dbg !1697
  store ptr %rdlen, ptr %_tmp407, align 8, !dbg !1697
  %call408 = call i32 @isc_buffer_reserve(ptr noundef %_tmp407, i32 noundef 2), !dbg !1697
  %cmp409 = icmp eq i32 %call408, 0, !dbg !1697
  %lnot411 = xor i1 %cmp409, true, !dbg !1697
  %lnot413 = xor i1 %lnot411, true, !dbg !1697
  %lnot.ext414 = zext i1 %lnot413 to i32, !dbg !1697
  %conv415 = sext i32 %lnot.ext414 to i64, !dbg !1697
  %expval416 = call i64 @llvm.expect.i64(i64 %conv415, i64 1), !dbg !1697
  %tobool417 = icmp ne i64 %expval416, 0, !dbg !1697
  br i1 %tobool417, label %lor.end419, label %lor.rhs418, !dbg !1697

lor.rhs418:                                       ; preds = %if.then406
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 382, i32 noundef 0, ptr noundef @.str.8) #10, !dbg !1697
  unreachable, !dbg !1697

167:                                              ; No predecessors!
  br label %lor.end419, !dbg !1697

lor.end419:                                       ; preds = %167, %if.then406
  %168 = phi i1 [ true, %if.then406 ], [ false, %167 ]
  %lor.ext420 = zext i1 %168 to i32, !dbg !1697
  call void @llvm.lifetime.end.p0(i64 8, ptr %_tmp407) #9, !dbg !1696
  br label %if.end421, !dbg !1697

if.end421:                                        ; preds = %lor.end419, %do.body389
  %length422 = getelementptr inbounds %struct.isc_buffer, ptr %rdlen, i32 0, i32 2, !dbg !1695
  %169 = load i32, ptr %length422, align 8, !dbg !1695
  %used423 = getelementptr inbounds %struct.isc_buffer, ptr %rdlen, i32 0, i32 3, !dbg !1695
  %170 = load i32, ptr %used423, align 4, !dbg !1695
  %sub424 = sub i32 %169, %170, !dbg !1695
  %cmp425 = icmp uge i32 %sub424, 2, !dbg !1695
  %lnot427 = xor i1 %cmp425, true, !dbg !1695
  %lnot429 = xor i1 %lnot427, true, !dbg !1695
  %lnot.ext430 = zext i1 %lnot429 to i32, !dbg !1695
  %conv431 = sext i32 %lnot.ext430 to i64, !dbg !1695
  %expval432 = call i64 @llvm.expect.i64(i64 %conv431, i64 1), !dbg !1695
  %tobool433 = icmp ne i64 %expval432, 0, !dbg !1695
  br i1 %tobool433, label %lor.end435, label %lor.rhs434, !dbg !1695

lor.rhs434:                                       ; preds = %if.end421
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 382, i32 noundef 0, ptr noundef @.str.13) #10, !dbg !1695
  unreachable, !dbg !1695

171:                                              ; No predecessors!
  br label %lor.end435, !dbg !1695

lor.end435:                                       ; preds = %171, %if.end421
  %172 = phi i1 [ true, %if.end421 ], [ false, %171 ]
  %lor.ext436 = zext i1 %172 to i32, !dbg !1695
  %base437 = getelementptr inbounds %struct.isc_buffer, ptr %rdlen, i32 0, i32 1, !dbg !1695
  %173 = load ptr, ptr %base437, align 8, !dbg !1695
  %used438 = getelementptr inbounds %struct.isc_buffer, ptr %rdlen, i32 0, i32 3, !dbg !1695
  %174 = load i32, ptr %used438, align 4, !dbg !1695
  %idx.ext439 = zext i32 %174 to i64, !dbg !1695
  %add.ptr440 = getelementptr inbounds i8, ptr %173, i64 %idx.ext439, !dbg !1695
  store ptr %add.ptr440, ptr %_cp390, align 8, !dbg !1695
  %used441 = getelementptr inbounds %struct.isc_buffer, ptr %rdlen, i32 0, i32 3, !dbg !1695
  %175 = load i32, ptr %used441, align 4, !dbg !1695
  %add442 = add i32 %175, 2, !dbg !1695
  store i32 %add442, ptr %used441, align 4, !dbg !1695
  %176 = load i16, ptr %_val2391, align 2, !dbg !1695
  %conv443 = zext i16 %176 to i32, !dbg !1695
  %shr444 = ashr i32 %conv443, 8, !dbg !1695
  %conv445 = trunc i32 %shr444 to i8, !dbg !1695
  %177 = load ptr, ptr %_cp390, align 8, !dbg !1695
  %arrayidx446 = getelementptr inbounds i8, ptr %177, i64 0, !dbg !1695
  store i8 %conv445, ptr %arrayidx446, align 1, !dbg !1695
  %178 = load i16, ptr %_val2391, align 2, !dbg !1695
  %conv447 = trunc i16 %178 to i8, !dbg !1695
  %179 = load ptr, ptr %_cp390, align 8, !dbg !1695
  %arrayidx448 = getelementptr inbounds i8, ptr %179, i64 1, !dbg !1695
  store i8 %conv447, ptr %arrayidx448, align 1, !dbg !1695
  call void @llvm.lifetime.end.p0(i64 2, ptr %_val2391) #9, !dbg !1694
  call void @llvm.lifetime.end.p0(i64 8, ptr %_cp390) #9, !dbg !1694
  br label %do.cond449, !dbg !1695

do.cond449:                                       ; preds = %lor.end435
  br label %do.end450, !dbg !1695

do.end450:                                        ; preds = %do.cond449
  %180 = load i32, ptr %count, align 4, !dbg !1698
  %inc = add i32 %180, 1, !dbg !1698
  store i32 %inc, ptr %count, align 4, !dbg !1698
  br label %for.inc, !dbg !1699

for.inc:                                          ; preds = %do.end450, %if.then
  %181 = load i32, ptr %i, align 4, !dbg !1700
  %inc451 = add i32 %181, 1, !dbg !1700
  store i32 %inc451, ptr %i, align 4, !dbg !1700
  br label %for.cond, !dbg !1701, !llvm.loop !1702

for.end:                                          ; preds = %for.cond
  %used452 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 3, !dbg !1704
  %182 = load i32, ptr %used452, align 4, !dbg !1704
  %current453 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 4, !dbg !1704
  %183 = load i32, ptr %current453, align 8, !dbg !1704
  %sub454 = sub i32 %182, %183, !dbg !1704
  %cmp455 = icmp eq i32 %sub454, 0, !dbg !1704
  %lnot457 = xor i1 %cmp455, true, !dbg !1704
  %lnot459 = xor i1 %lnot457, true, !dbg !1704
  %lnot.ext460 = zext i1 %lnot459 to i32, !dbg !1704
  %conv461 = sext i32 %lnot.ext460 to i64, !dbg !1704
  %expval462 = call i64 @llvm.expect.i64(i64 %conv461, i64 1), !dbg !1704
  %tobool463 = icmp ne i64 %expval462, 0, !dbg !1704
  br i1 %tobool463, label %lor.end465, label %lor.rhs464, !dbg !1704

lor.rhs464:                                       ; preds = %for.end
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 386, i32 noundef 2, ptr noundef @.str.14) #10, !dbg !1704
  unreachable, !dbg !1704

184:                                              ; No predecessors!
  br label %lor.end465, !dbg !1704

lor.end465:                                       ; preds = %184, %for.end
  %185 = phi i1 [ true, %for.end ], [ false, %184 ]
  %lor.ext466 = zext i1 %185 to i32, !dbg !1704
  %186 = load ptr, ptr %rdataset.addr, align 8, !dbg !1705
  %call467 = call i32 @dns_rdataset_next(ptr noundef %186), !dbg !1706
  store i32 %call467, ptr %result, align 4, !dbg !1707
  call void @dns_rdata_reset(ptr noundef %rdata), !dbg !1708
  br label %while.cond, !dbg !1572, !llvm.loop !1709

while.end:                                        ; preds = %while.cond
  %187 = load i32, ptr %result, align 4, !dbg !1711
  %cmp468 = icmp ne i32 %187, 29, !dbg !1713
  br i1 %cmp468, label %if.then470, label %if.end471, !dbg !1714

if.then470:                                       ; preds = %while.end
  br label %rollback, !dbg !1715

if.end471:                                        ; preds = %while.end
  %188 = load i32, ptr %count, align 4, !dbg !1716
  %189 = load ptr, ptr %countp.addr, align 8, !dbg !1717
  store i32 %188, ptr %189, align 4, !dbg !1718
  store i32 0, ptr %retval, align 4, !dbg !1719
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1719

rollback:                                         ; preds = %if.then470, %if.then366, %if.then184, %if.then167
  tail call void @llvm.dbg.label(metadata !1538), !dbg !1720
  %used472 = getelementptr inbounds %struct.isc_buffer, ptr %savedbuffer, i32 0, i32 3, !dbg !1721
  %190 = load i32, ptr %used472, align 4, !dbg !1721
  %cmp473 = icmp ult i32 %190, 65536, !dbg !1721
  %lnot475 = xor i1 %cmp473, true, !dbg !1721
  %lnot477 = xor i1 %lnot475, true, !dbg !1721
  %lnot.ext478 = zext i1 %lnot477 to i32, !dbg !1721
  %conv479 = sext i32 %lnot.ext478 to i64, !dbg !1721
  %expval480 = call i64 @llvm.expect.i64(i64 %conv479, i64 1), !dbg !1721
  %tobool481 = icmp ne i64 %expval480, 0, !dbg !1721
  br i1 %tobool481, label %lor.end483, label %lor.rhs482, !dbg !1721

lor.rhs482:                                       ; preds = %rollback
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 398, i32 noundef 2, ptr noundef @.str.15) #10, !dbg !1721
  unreachable, !dbg !1721

191:                                              ; No predecessors!
  br label %lor.end483, !dbg !1721

lor.end483:                                       ; preds = %191, %rollback
  %192 = phi i1 [ true, %rollback ], [ false, %191 ]
  %lor.ext484 = zext i1 %192 to i32, !dbg !1721
  %193 = load ptr, ptr %cctx.addr, align 8, !dbg !1722
  %used485 = getelementptr inbounds %struct.isc_buffer, ptr %savedbuffer, i32 0, i32 3, !dbg !1723
  %194 = load i32, ptr %used485, align 4, !dbg !1723
  %conv486 = trunc i32 %194 to i16, !dbg !1724
  call void @dns_compress_rollback(ptr noundef %193, i16 noundef zeroext %conv486), !dbg !1725
  %195 = load ptr, ptr %countp.addr, align 8, !dbg !1726
  store i32 0, ptr %195, align 4, !dbg !1727
  %196 = load ptr, ptr %target.addr, align 8, !dbg !1728
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %196, ptr align 8 %savedbuffer, i64 64, i1 false), !dbg !1729
  %197 = load i32, ptr %result, align 4, !dbg !1730
  store i32 %197, ptr %retval, align 4, !dbg !1731
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1731

cleanup:                                          ; preds = %lor.end483, %if.end471
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #9, !dbg !1732
  call void @llvm.lifetime.end.p0(i64 4, ptr %rcount) #9, !dbg !1732
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !1732
  call void @llvm.lifetime.end.p0(i64 2, ptr %type) #9, !dbg !1732
  call void @llvm.lifetime.end.p0(i64 80, ptr %name) #9, !dbg !1732
  call void @llvm.lifetime.end.p0(i64 64, ptr %rdlen) #9, !dbg !1732
  call void @llvm.lifetime.end.p0(i64 64, ptr %savedbuffer) #9, !dbg !1732
  call void @llvm.lifetime.end.p0(i64 64, ptr %source) #9, !dbg !1732
  call void @llvm.lifetime.end.p0(i64 16, ptr %tavailable) #9, !dbg !1732
  call void @llvm.lifetime.end.p0(i64 16, ptr %remaining) #9, !dbg !1732
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #9, !dbg !1732
  call void @llvm.lifetime.end.p0(i64 40, ptr %rdata) #9, !dbg !1732
  %198 = load i32, ptr %retval, align 4, !dbg !1732
  ret i32 %198, !dbg !1732
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: noreturn null_pointer_is_valid
declare !dbg !1733 void @isc_assertion_failed(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare !dbg !1737 i32 @dns_rdataset_first(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare !dbg !1738 void @dns_rdataset_current(ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare !dbg !1739 void @dns_name_init(ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare !dbg !1742 void @dns_name_fromregion(ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare !dbg !1747 zeroext i16 @isc_buffer_getuint16(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare !dbg !1750 void @dns_rdata_reset(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare !dbg !1753 zeroext i1 @dns_rdatatype_isdnssec(i16 noundef zeroext) #6

; Function Attrs: null_pointer_is_valid
declare !dbg !1756 void @dns_compress_setmethods(ptr noundef, i32 noundef) #6

; Function Attrs: null_pointer_is_valid
declare !dbg !1759 i32 @dns_name_towire(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare !dbg !1762 i32 @isc_buffer_reserve(ptr noundef, i32 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare !dbg !1766 i32 @dns_rdata_towire(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare !dbg !1769 i32 @dns_rdataset_next(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare !dbg !1770 void @dns_compress_rollback(ptr noundef, i16 noundef zeroext) #6

; Function Attrs: nounwind null_pointer_is_valid uwtable
define i32 @dns_ncache_getrdataset(ptr noundef %ncacherdataset, ptr noundef %name, i16 noundef zeroext %type, ptr noundef %rdataset) #0 !dbg !1773 {
entry:
  %retval = alloca i32, align 4
  %ncacherdataset.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %type.addr = alloca i16, align 2
  %rdataset.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %rdata = alloca %struct.dns_rdata, align 8
  %remaining = alloca %struct.isc_region, align 8
  %source = alloca %struct.isc_buffer, align 8
  %tname = alloca %struct.dns_name, align 8
  %ttype = alloca i16, align 2
  %trust = alloca i16, align 2
  %rclone = alloca %struct.dns_rdataset, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ncacherdataset, ptr %ncacherdataset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %ncacherdataset.addr, metadata !1777, metadata !DIExpression()), !dbg !1789
  store ptr %name, ptr %name.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1778, metadata !DIExpression()), !dbg !1790
  store i16 %type, ptr %type.addr, align 2
  tail call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1779, metadata !DIExpression()), !dbg !1791
  store ptr %rdataset, ptr %rdataset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %rdataset.addr, metadata !1780, metadata !DIExpression()), !dbg !1792
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #9, !dbg !1793
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !1781, metadata !DIExpression()), !dbg !1794
  call void @llvm.lifetime.start.p0(i64 40, ptr %rdata) #9, !dbg !1795
  tail call void @llvm.dbg.declare(metadata ptr %rdata, metadata !1782, metadata !DIExpression()), !dbg !1796
  call void @llvm.memset.p0.i64(ptr align 8 %rdata, i8 0, i64 40, i1 false), !dbg !1796
  %0 = getelementptr inbounds %struct.dns_rdata, ptr %rdata, i32 0, i32 5, !dbg !1796
  %1 = getelementptr inbounds %struct.anon.4, ptr %0, i32 0, i32 0, !dbg !1796
  store ptr inttoptr (i64 -1 to ptr), ptr %1, align 8, !dbg !1796
  %2 = getelementptr inbounds %struct.anon.4, ptr %0, i32 0, i32 1, !dbg !1796
  store ptr inttoptr (i64 -1 to ptr), ptr %2, align 8, !dbg !1796
  call void @llvm.lifetime.start.p0(i64 16, ptr %remaining) #9, !dbg !1797
  tail call void @llvm.dbg.declare(metadata ptr %remaining, metadata !1783, metadata !DIExpression()), !dbg !1798
  call void @llvm.lifetime.start.p0(i64 64, ptr %source) #9, !dbg !1799
  tail call void @llvm.dbg.declare(metadata ptr %source, metadata !1784, metadata !DIExpression()), !dbg !1800
  call void @llvm.lifetime.start.p0(i64 80, ptr %tname) #9, !dbg !1801
  tail call void @llvm.dbg.declare(metadata ptr %tname, metadata !1785, metadata !DIExpression()), !dbg !1802
  call void @llvm.lifetime.start.p0(i64 2, ptr %ttype) #9, !dbg !1803
  tail call void @llvm.dbg.declare(metadata ptr %ttype, metadata !1786, metadata !DIExpression()), !dbg !1804
  call void @llvm.lifetime.start.p0(i64 2, ptr %trust) #9, !dbg !1805
  tail call void @llvm.dbg.declare(metadata ptr %trust, metadata !1787, metadata !DIExpression()), !dbg !1806
  store i16 0, ptr %trust, align 2, !dbg !1806
  call void @llvm.lifetime.start.p0(i64 120, ptr %rclone) #9, !dbg !1807
  tail call void @llvm.dbg.declare(metadata ptr %rclone, metadata !1788, metadata !DIExpression()), !dbg !1808
  %3 = load ptr, ptr %ncacherdataset.addr, align 8, !dbg !1809
  %cmp = icmp ne ptr %3, null, !dbg !1809
  %lnot = xor i1 %cmp, true, !dbg !1809
  %lnot1 = xor i1 %lnot, true, !dbg !1809
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1809
  %conv = sext i32 %lnot.ext to i64, !dbg !1809
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1809
  %tobool = icmp ne i64 %expval, 0, !dbg !1809
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !1809

lor.rhs:                                          ; preds = %entry
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 526, i32 noundef 0, ptr noundef @.str.16) #10, !dbg !1809
  unreachable, !dbg !1809

4:                                                ; No predecessors!
  br label %lor.end, !dbg !1809

lor.end:                                          ; preds = %4, %entry
  %5 = phi i1 [ true, %entry ], [ false, %4 ]
  %lor.ext = zext i1 %5 to i32, !dbg !1809
  %6 = load ptr, ptr %ncacherdataset.addr, align 8, !dbg !1810
  %type2 = getelementptr inbounds %struct.dns_rdataset, ptr %6, i32 0, i32 4, !dbg !1810
  %7 = load i16, ptr %type2, align 2, !dbg !1810
  %conv3 = zext i16 %7 to i32, !dbg !1810
  %cmp4 = icmp eq i32 %conv3, 0, !dbg !1810
  %lnot6 = xor i1 %cmp4, true, !dbg !1810
  %lnot8 = xor i1 %lnot6, true, !dbg !1810
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !1810
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !1810
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !1810
  %tobool12 = icmp ne i64 %expval11, 0, !dbg !1810
  br i1 %tobool12, label %lor.end14, label %lor.rhs13, !dbg !1810

lor.rhs13:                                        ; preds = %lor.end
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 527, i32 noundef 0, ptr noundef @.str.17) #10, !dbg !1810
  unreachable, !dbg !1810

8:                                                ; No predecessors!
  br label %lor.end14, !dbg !1810

lor.end14:                                        ; preds = %8, %lor.end
  %9 = phi i1 [ true, %lor.end ], [ false, %8 ]
  %lor.ext15 = zext i1 %9 to i32, !dbg !1810
  %10 = load ptr, ptr %ncacherdataset.addr, align 8, !dbg !1811
  %attributes = getelementptr inbounds %struct.dns_rdataset, ptr %10, i32 0, i32 9, !dbg !1811
  %11 = load i32, ptr %attributes, align 8, !dbg !1811
  %and = and i32 %11, 2097152, !dbg !1811
  %cmp16 = icmp ne i32 %and, 0, !dbg !1811
  %lnot18 = xor i1 %cmp16, true, !dbg !1811
  %lnot20 = xor i1 %lnot18, true, !dbg !1811
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !1811
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !1811
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 1), !dbg !1811
  %tobool24 = icmp ne i64 %expval23, 0, !dbg !1811
  br i1 %tobool24, label %lor.end26, label %lor.rhs25, !dbg !1811

lor.rhs25:                                        ; preds = %lor.end14
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 528, i32 noundef 0, ptr noundef @.str.18) #10, !dbg !1811
  unreachable, !dbg !1811

12:                                               ; No predecessors!
  br label %lor.end26, !dbg !1811

lor.end26:                                        ; preds = %12, %lor.end14
  %13 = phi i1 [ true, %lor.end14 ], [ false, %12 ]
  %lor.ext27 = zext i1 %13 to i32, !dbg !1811
  %14 = load ptr, ptr %name.addr, align 8, !dbg !1812
  %cmp28 = icmp ne ptr %14, null, !dbg !1812
  %lnot30 = xor i1 %cmp28, true, !dbg !1812
  %lnot32 = xor i1 %lnot30, true, !dbg !1812
  %lnot.ext33 = zext i1 %lnot32 to i32, !dbg !1812
  %conv34 = sext i32 %lnot.ext33 to i64, !dbg !1812
  %expval35 = call i64 @llvm.expect.i64(i64 %conv34, i64 1), !dbg !1812
  %tobool36 = icmp ne i64 %expval35, 0, !dbg !1812
  br i1 %tobool36, label %lor.end38, label %lor.rhs37, !dbg !1812

lor.rhs37:                                        ; preds = %lor.end26
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 529, i32 noundef 0, ptr noundef @.str.19) #10, !dbg !1812
  unreachable, !dbg !1812

15:                                               ; No predecessors!
  br label %lor.end38, !dbg !1812

lor.end38:                                        ; preds = %15, %lor.end26
  %16 = phi i1 [ true, %lor.end26 ], [ false, %15 ]
  %lor.ext39 = zext i1 %16 to i32, !dbg !1812
  %17 = load ptr, ptr %rdataset.addr, align 8, !dbg !1813
  %call = call zeroext i1 @dns_rdataset_isassociated(ptr noundef %17), !dbg !1813
  %lnot40 = xor i1 %call, true, !dbg !1813
  %lnot42 = xor i1 %lnot40, true, !dbg !1813
  %lnot44 = xor i1 %lnot42, true, !dbg !1813
  %lnot.ext45 = zext i1 %lnot44 to i32, !dbg !1813
  %conv46 = sext i32 %lnot.ext45 to i64, !dbg !1813
  %expval47 = call i64 @llvm.expect.i64(i64 %conv46, i64 1), !dbg !1813
  %tobool48 = icmp ne i64 %expval47, 0, !dbg !1813
  br i1 %tobool48, label %lor.end50, label %lor.rhs49, !dbg !1813

lor.rhs49:                                        ; preds = %lor.end38
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 530, i32 noundef 0, ptr noundef @.str.20) #10, !dbg !1813
  unreachable, !dbg !1813

18:                                               ; No predecessors!
  br label %lor.end50, !dbg !1813

lor.end50:                                        ; preds = %18, %lor.end38
  %19 = phi i1 [ true, %lor.end38 ], [ false, %18 ]
  %lor.ext51 = zext i1 %19 to i32, !dbg !1813
  %20 = load i16, ptr %type.addr, align 2, !dbg !1814
  %conv52 = zext i16 %20 to i32, !dbg !1814
  %cmp53 = icmp ne i32 %conv52, 46, !dbg !1814
  %lnot55 = xor i1 %cmp53, true, !dbg !1814
  %lnot57 = xor i1 %lnot55, true, !dbg !1814
  %lnot.ext58 = zext i1 %lnot57 to i32, !dbg !1814
  %conv59 = sext i32 %lnot.ext58 to i64, !dbg !1814
  %expval60 = call i64 @llvm.expect.i64(i64 %conv59, i64 1), !dbg !1814
  %tobool61 = icmp ne i64 %expval60, 0, !dbg !1814
  br i1 %tobool61, label %lor.end63, label %lor.rhs62, !dbg !1814

lor.rhs62:                                        ; preds = %lor.end50
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 531, i32 noundef 0, ptr noundef @.str.21) #10, !dbg !1814
  unreachable, !dbg !1814

21:                                               ; No predecessors!
  br label %lor.end63, !dbg !1814

lor.end63:                                        ; preds = %21, %lor.end50
  %22 = phi i1 [ true, %lor.end50 ], [ false, %21 ]
  %lor.ext64 = zext i1 %22 to i32, !dbg !1814
  call void @dns_rdataset_init(ptr noundef %rclone), !dbg !1815
  %23 = load ptr, ptr %ncacherdataset.addr, align 8, !dbg !1816
  call void @dns_rdataset_clone(ptr noundef %23, ptr noundef %rclone), !dbg !1817
  %call65 = call i32 @dns_rdataset_first(ptr noundef %rclone), !dbg !1818
  store i32 %call65, ptr %result, align 4, !dbg !1819
  br label %while.cond, !dbg !1820

while.cond:                                       ; preds = %if.end, %lor.end63
  %24 = load i32, ptr %result, align 4, !dbg !1821
  %cmp66 = icmp eq i32 %24, 0, !dbg !1822
  br i1 %cmp66, label %while.body, label %while.end, !dbg !1820

while.body:                                       ; preds = %while.cond
  call void @dns_rdataset_current(ptr noundef %rclone, ptr noundef %rdata), !dbg !1823
  br label %do.body, !dbg !1825

do.body:                                          ; preds = %while.body
  %data = getelementptr inbounds %struct.dns_rdata, ptr %rdata, i32 0, i32 0, !dbg !1826
  %25 = load ptr, ptr %data, align 8, !dbg !1826
  %base = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 1, !dbg !1826
  store ptr %25, ptr %base, align 8, !dbg !1826
  %length = getelementptr inbounds %struct.dns_rdata, ptr %rdata, i32 0, i32 1, !dbg !1826
  %26 = load i32, ptr %length, align 8, !dbg !1826
  %length68 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 2, !dbg !1826
  store i32 %26, ptr %length68, align 8, !dbg !1826
  %used = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 3, !dbg !1826
  store i32 0, ptr %used, align 4, !dbg !1826
  %current = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 4, !dbg !1826
  store i32 0, ptr %current, align 8, !dbg !1826
  %active = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 5, !dbg !1826
  store i32 0, ptr %active, align 4, !dbg !1826
  %mctx = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 7, !dbg !1826
  store ptr null, ptr %mctx, align 8, !dbg !1826
  br label %do.body69, !dbg !1826

do.body69:                                        ; preds = %do.body
  %link = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 6, !dbg !1828
  %prev = getelementptr inbounds %struct.anon.5, ptr %link, i32 0, i32 0, !dbg !1828
  store ptr inttoptr (i64 -1 to ptr), ptr %prev, align 8, !dbg !1828
  %link70 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 6, !dbg !1828
  %next = getelementptr inbounds %struct.anon.5, ptr %link70, i32 0, i32 1, !dbg !1828
  store ptr inttoptr (i64 -1 to ptr), ptr %next, align 8, !dbg !1828
  br label %do.cond, !dbg !1828

do.cond:                                          ; preds = %do.body69
  br label %do.end, !dbg !1828

do.end:                                           ; preds = %do.cond
  %magic = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 0, !dbg !1826
  store i32 1114990113, ptr %magic, align 8, !dbg !1826
  %autore = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 8, !dbg !1826
  store i8 0, ptr %autore, align 8, !dbg !1826
  br label %do.cond71, !dbg !1826

do.cond71:                                        ; preds = %do.end
  br label %do.end72, !dbg !1826

do.end72:                                         ; preds = %do.cond71
  br label %do.body73, !dbg !1830

do.body73:                                        ; preds = %do.end72
  %length74 = getelementptr inbounds %struct.dns_rdata, ptr %rdata, i32 0, i32 1, !dbg !1831
  %27 = load i32, ptr %length74, align 8, !dbg !1831
  %used75 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 3, !dbg !1831
  %28 = load i32, ptr %used75, align 4, !dbg !1831
  %add = add i32 %28, %27, !dbg !1831
  store i32 %add, ptr %used75, align 4, !dbg !1831
  br label %do.cond76, !dbg !1831

do.cond76:                                        ; preds = %do.body73
  br label %do.end77, !dbg !1831

do.end77:                                         ; preds = %do.cond76
  call void @dns_name_init(ptr noundef %tname, ptr noundef null), !dbg !1833
  br label %do.body78, !dbg !1834

do.body78:                                        ; preds = %do.end77
  %base79 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 1, !dbg !1835
  %29 = load ptr, ptr %base79, align 8, !dbg !1835
  %current80 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 4, !dbg !1835
  %30 = load i32, ptr %current80, align 8, !dbg !1835
  %idx.ext = zext i32 %30 to i64, !dbg !1835
  %add.ptr = getelementptr inbounds i8, ptr %29, i64 %idx.ext, !dbg !1835
  %base81 = getelementptr inbounds %struct.isc_region, ptr %remaining, i32 0, i32 0, !dbg !1835
  store ptr %add.ptr, ptr %base81, align 8, !dbg !1835
  %used82 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 3, !dbg !1835
  %31 = load i32, ptr %used82, align 4, !dbg !1835
  %current83 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 4, !dbg !1835
  %32 = load i32, ptr %current83, align 8, !dbg !1835
  %sub = sub i32 %31, %32, !dbg !1835
  %length84 = getelementptr inbounds %struct.isc_region, ptr %remaining, i32 0, i32 1, !dbg !1835
  store i32 %sub, ptr %length84, align 8, !dbg !1835
  br label %do.cond85, !dbg !1835

do.cond85:                                        ; preds = %do.body78
  br label %do.end86, !dbg !1835

do.end86:                                         ; preds = %do.cond85
  call void @dns_name_fromregion(ptr noundef %tname, ptr noundef %remaining), !dbg !1837
  %length87 = getelementptr inbounds %struct.isc_region, ptr %remaining, i32 0, i32 1, !dbg !1838
  %33 = load i32, ptr %length87, align 8, !dbg !1838
  %length88 = getelementptr inbounds %struct.dns_name, ptr %tname, i32 0, i32 2, !dbg !1838
  %34 = load i32, ptr %length88, align 8, !dbg !1838
  %cmp89 = icmp uge i32 %33, %34, !dbg !1838
  %lnot91 = xor i1 %cmp89, true, !dbg !1838
  %lnot93 = xor i1 %lnot91, true, !dbg !1838
  %lnot.ext94 = zext i1 %lnot93 to i32, !dbg !1838
  %conv95 = sext i32 %lnot.ext94 to i64, !dbg !1838
  %expval96 = call i64 @llvm.expect.i64(i64 %conv95, i64 1), !dbg !1838
  %tobool97 = icmp ne i64 %expval96, 0, !dbg !1838
  br i1 %tobool97, label %lor.end99, label %lor.rhs98, !dbg !1838

lor.rhs98:                                        ; preds = %do.end86
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 543, i32 noundef 2, ptr noundef @.str.22) #10, !dbg !1838
  unreachable, !dbg !1838

35:                                               ; No predecessors!
  br label %lor.end99, !dbg !1838

lor.end99:                                        ; preds = %35, %do.end86
  %36 = phi i1 [ true, %do.end86 ], [ false, %35 ]
  %lor.ext100 = zext i1 %36 to i32, !dbg !1838
  br label %do.body101, !dbg !1839

do.body101:                                       ; preds = %lor.end99
  %length102 = getelementptr inbounds %struct.dns_name, ptr %tname, i32 0, i32 2, !dbg !1840
  %37 = load i32, ptr %length102, align 8, !dbg !1840
  %current103 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 4, !dbg !1840
  %38 = load i32, ptr %current103, align 8, !dbg !1840
  %add104 = add i32 %38, %37, !dbg !1840
  store i32 %add104, ptr %current103, align 8, !dbg !1840
  br label %do.cond105, !dbg !1840

do.cond105:                                       ; preds = %do.body101
  br label %do.end106, !dbg !1840

do.end106:                                        ; preds = %do.cond105
  %length107 = getelementptr inbounds %struct.dns_name, ptr %tname, i32 0, i32 2, !dbg !1842
  %39 = load i32, ptr %length107, align 8, !dbg !1842
  %length108 = getelementptr inbounds %struct.isc_region, ptr %remaining, i32 0, i32 1, !dbg !1843
  %40 = load i32, ptr %length108, align 8, !dbg !1844
  %sub109 = sub i32 %40, %39, !dbg !1844
  store i32 %sub109, ptr %length108, align 8, !dbg !1844
  %length110 = getelementptr inbounds %struct.isc_region, ptr %remaining, i32 0, i32 1, !dbg !1845
  %41 = load i32, ptr %length110, align 8, !dbg !1845
  %cmp111 = icmp uge i32 %41, 3, !dbg !1845
  %lnot113 = xor i1 %cmp111, true, !dbg !1845
  %lnot115 = xor i1 %lnot113, true, !dbg !1845
  %lnot.ext116 = zext i1 %lnot115 to i32, !dbg !1845
  %conv117 = sext i32 %lnot.ext116 to i64, !dbg !1845
  %expval118 = call i64 @llvm.expect.i64(i64 %conv117, i64 1), !dbg !1845
  %tobool119 = icmp ne i64 %expval118, 0, !dbg !1845
  br i1 %tobool119, label %lor.end121, label %lor.rhs120, !dbg !1845

lor.rhs120:                                       ; preds = %do.end106
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 547, i32 noundef 2, ptr noundef @.str.23) #10, !dbg !1845
  unreachable, !dbg !1845

42:                                               ; No predecessors!
  br label %lor.end121, !dbg !1845

lor.end121:                                       ; preds = %42, %do.end106
  %43 = phi i1 [ true, %do.end106 ], [ false, %42 ]
  %lor.ext122 = zext i1 %43 to i32, !dbg !1845
  %call123 = call zeroext i16 @isc_buffer_getuint16(ptr noundef %source), !dbg !1846
  store i16 %call123, ptr %ttype, align 2, !dbg !1847
  %44 = load i16, ptr %ttype, align 2, !dbg !1848
  %conv124 = zext i16 %44 to i32, !dbg !1848
  %45 = load i16, ptr %type.addr, align 2, !dbg !1850
  %conv125 = zext i16 %45 to i32, !dbg !1850
  %cmp126 = icmp eq i32 %conv124, %conv125, !dbg !1851
  br i1 %cmp126, label %land.lhs.true, label %if.end, !dbg !1852

land.lhs.true:                                    ; preds = %lor.end121
  %46 = load ptr, ptr %name.addr, align 8, !dbg !1853
  %call128 = call zeroext i1 @dns_name_equal(ptr noundef %tname, ptr noundef %46), !dbg !1854
  br i1 %call128, label %if.then, label %if.end, !dbg !1855

if.then:                                          ; preds = %land.lhs.true
  %call130 = call zeroext i8 @isc_buffer_getuint8(ptr noundef %source), !dbg !1856
  %conv131 = zext i8 %call130 to i16, !dbg !1856
  store i16 %conv131, ptr %trust, align 2, !dbg !1858
  %47 = load i16, ptr %trust, align 2, !dbg !1859
  %conv132 = zext i16 %47 to i32, !dbg !1859
  %cmp133 = icmp sle i32 %conv132, 9, !dbg !1859
  %lnot135 = xor i1 %cmp133, true, !dbg !1859
  %lnot137 = xor i1 %lnot135, true, !dbg !1859
  %lnot.ext138 = zext i1 %lnot137 to i32, !dbg !1859
  %conv139 = sext i32 %lnot.ext138 to i64, !dbg !1859
  %expval140 = call i64 @llvm.expect.i64(i64 %conv139, i64 1), !dbg !1859
  %tobool141 = icmp ne i64 %expval140, 0, !dbg !1859
  br i1 %tobool141, label %lor.end143, label %lor.rhs142, !dbg !1859

lor.rhs142:                                       ; preds = %if.then
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 552, i32 noundef 2, ptr noundef @.str.24) #10, !dbg !1859
  unreachable, !dbg !1859

48:                                               ; No predecessors!
  br label %lor.end143, !dbg !1859

lor.end143:                                       ; preds = %48, %if.then
  %49 = phi i1 [ true, %if.then ], [ false, %48 ]
  %lor.ext144 = zext i1 %49 to i32, !dbg !1859
  br label %do.body145, !dbg !1860

do.body145:                                       ; preds = %lor.end143
  %base146 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 1, !dbg !1861
  %50 = load ptr, ptr %base146, align 8, !dbg !1861
  %current147 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 4, !dbg !1861
  %51 = load i32, ptr %current147, align 8, !dbg !1861
  %idx.ext148 = zext i32 %51 to i64, !dbg !1861
  %add.ptr149 = getelementptr inbounds i8, ptr %50, i64 %idx.ext148, !dbg !1861
  %base150 = getelementptr inbounds %struct.isc_region, ptr %remaining, i32 0, i32 0, !dbg !1861
  store ptr %add.ptr149, ptr %base150, align 8, !dbg !1861
  %used151 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 3, !dbg !1861
  %52 = load i32, ptr %used151, align 4, !dbg !1861
  %current152 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 4, !dbg !1861
  %53 = load i32, ptr %current152, align 8, !dbg !1861
  %sub153 = sub i32 %52, %53, !dbg !1861
  %length154 = getelementptr inbounds %struct.isc_region, ptr %remaining, i32 0, i32 1, !dbg !1861
  store i32 %sub153, ptr %length154, align 8, !dbg !1861
  br label %do.cond155, !dbg !1861

do.cond155:                                       ; preds = %do.body145
  br label %do.end156, !dbg !1861

do.end156:                                        ; preds = %do.cond155
  br label %while.end, !dbg !1863

if.end:                                           ; preds = %land.lhs.true, %lor.end121
  %call157 = call i32 @dns_rdataset_next(ptr noundef %rclone), !dbg !1864
  store i32 %call157, ptr %result, align 4, !dbg !1865
  call void @dns_rdata_reset(ptr noundef %rdata), !dbg !1866
  br label %while.cond, !dbg !1820, !llvm.loop !1867

while.end:                                        ; preds = %do.end156, %while.cond
  call void @dns_rdataset_disassociate(ptr noundef %rclone), !dbg !1869
  %54 = load i32, ptr %result, align 4, !dbg !1870
  %cmp158 = icmp eq i32 %54, 29, !dbg !1872
  br i1 %cmp158, label %if.then160, label %if.end161, !dbg !1873

if.then160:                                       ; preds = %while.end
  store i32 23, ptr %retval, align 4, !dbg !1874
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1874

if.end161:                                        ; preds = %while.end
  %55 = load i32, ptr %result, align 4, !dbg !1875
  %cmp162 = icmp ne i32 %55, 0, !dbg !1877
  br i1 %cmp162, label %if.then164, label %if.end165, !dbg !1878

if.then164:                                       ; preds = %if.end161
  %56 = load i32, ptr %result, align 4, !dbg !1879
  store i32 %56, ptr %retval, align 4, !dbg !1880
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1880

if.end165:                                        ; preds = %if.end161
  %length166 = getelementptr inbounds %struct.isc_region, ptr %remaining, i32 0, i32 1, !dbg !1881
  %57 = load i32, ptr %length166, align 8, !dbg !1881
  %cmp167 = icmp ne i32 %57, 0, !dbg !1881
  %lnot169 = xor i1 %cmp167, true, !dbg !1881
  %lnot171 = xor i1 %lnot169, true, !dbg !1881
  %lnot.ext172 = zext i1 %lnot171 to i32, !dbg !1881
  %conv173 = sext i32 %lnot.ext172 to i64, !dbg !1881
  %expval174 = call i64 @llvm.expect.i64(i64 %conv173, i64 1), !dbg !1881
  %tobool175 = icmp ne i64 %expval174, 0, !dbg !1881
  br i1 %tobool175, label %lor.end177, label %lor.rhs176, !dbg !1881

lor.rhs176:                                       ; preds = %if.end165
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 565, i32 noundef 2, ptr noundef @.str.25) #10, !dbg !1881
  unreachable, !dbg !1881

58:                                               ; No predecessors!
  br label %lor.end177, !dbg !1881

lor.end177:                                       ; preds = %58, %if.end165
  %59 = phi i1 [ true, %if.end165 ], [ false, %58 ]
  %lor.ext178 = zext i1 %59 to i32, !dbg !1881
  %60 = load ptr, ptr %rdataset.addr, align 8, !dbg !1882
  %methods = getelementptr inbounds %struct.dns_rdataset, ptr %60, i32 0, i32 1, !dbg !1883
  store ptr @rdataset_methods, ptr %methods, align 8, !dbg !1884
  %61 = load ptr, ptr %ncacherdataset.addr, align 8, !dbg !1885
  %rdclass = getelementptr inbounds %struct.dns_rdataset, ptr %61, i32 0, i32 3, !dbg !1886
  %62 = load i16, ptr %rdclass, align 8, !dbg !1886
  %63 = load ptr, ptr %rdataset.addr, align 8, !dbg !1887
  %rdclass179 = getelementptr inbounds %struct.dns_rdataset, ptr %63, i32 0, i32 3, !dbg !1888
  store i16 %62, ptr %rdclass179, align 8, !dbg !1889
  %64 = load i16, ptr %type.addr, align 2, !dbg !1890
  %65 = load ptr, ptr %rdataset.addr, align 8, !dbg !1891
  %type180 = getelementptr inbounds %struct.dns_rdataset, ptr %65, i32 0, i32 4, !dbg !1892
  store i16 %64, ptr %type180, align 2, !dbg !1893
  %66 = load ptr, ptr %rdataset.addr, align 8, !dbg !1894
  %covers = getelementptr inbounds %struct.dns_rdataset, ptr %66, i32 0, i32 8, !dbg !1895
  store i16 0, ptr %covers, align 2, !dbg !1896
  %67 = load ptr, ptr %ncacherdataset.addr, align 8, !dbg !1897
  %ttl = getelementptr inbounds %struct.dns_rdataset, ptr %67, i32 0, i32 5, !dbg !1898
  %68 = load i32, ptr %ttl, align 4, !dbg !1898
  %69 = load ptr, ptr %rdataset.addr, align 8, !dbg !1899
  %ttl181 = getelementptr inbounds %struct.dns_rdataset, ptr %69, i32 0, i32 5, !dbg !1900
  store i32 %68, ptr %ttl181, align 4, !dbg !1901
  %70 = load i16, ptr %trust, align 2, !dbg !1902
  %71 = load ptr, ptr %rdataset.addr, align 8, !dbg !1903
  %trust182 = getelementptr inbounds %struct.dns_rdataset, ptr %71, i32 0, i32 7, !dbg !1904
  store i16 %70, ptr %trust182, align 4, !dbg !1905
  %72 = load ptr, ptr %rdataset.addr, align 8, !dbg !1906
  %private1 = getelementptr inbounds %struct.dns_rdataset, ptr %72, i32 0, i32 12, !dbg !1907
  store ptr null, ptr %private1, align 8, !dbg !1908
  %73 = load ptr, ptr %rdataset.addr, align 8, !dbg !1909
  %private2 = getelementptr inbounds %struct.dns_rdataset, ptr %73, i32 0, i32 13, !dbg !1910
  store ptr null, ptr %private2, align 8, !dbg !1911
  %base183 = getelementptr inbounds %struct.isc_region, ptr %remaining, i32 0, i32 0, !dbg !1912
  %74 = load ptr, ptr %base183, align 8, !dbg !1912
  %75 = load ptr, ptr %rdataset.addr, align 8, !dbg !1913
  %private3 = getelementptr inbounds %struct.dns_rdataset, ptr %75, i32 0, i32 14, !dbg !1914
  store ptr %74, ptr %private3, align 8, !dbg !1915
  %76 = load ptr, ptr %rdataset.addr, align 8, !dbg !1916
  %privateuint4 = getelementptr inbounds %struct.dns_rdataset, ptr %76, i32 0, i32 15, !dbg !1917
  store i32 0, ptr %privateuint4, align 8, !dbg !1918
  %77 = load ptr, ptr %rdataset.addr, align 8, !dbg !1919
  %private5 = getelementptr inbounds %struct.dns_rdataset, ptr %77, i32 0, i32 16, !dbg !1920
  store ptr null, ptr %private5, align 8, !dbg !1921
  %78 = load ptr, ptr %rdataset.addr, align 8, !dbg !1922
  %private6 = getelementptr inbounds %struct.dns_rdataset, ptr %78, i32 0, i32 17, !dbg !1923
  store ptr null, ptr %private6, align 8, !dbg !1924
  store i32 0, ptr %retval, align 4, !dbg !1925
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1925

cleanup:                                          ; preds = %lor.end177, %if.then164, %if.then160
  call void @llvm.lifetime.end.p0(i64 120, ptr %rclone) #9, !dbg !1926
  call void @llvm.lifetime.end.p0(i64 2, ptr %trust) #9, !dbg !1926
  call void @llvm.lifetime.end.p0(i64 2, ptr %ttype) #9, !dbg !1926
  call void @llvm.lifetime.end.p0(i64 80, ptr %tname) #9, !dbg !1926
  call void @llvm.lifetime.end.p0(i64 64, ptr %source) #9, !dbg !1926
  call void @llvm.lifetime.end.p0(i64 16, ptr %remaining) #9, !dbg !1926
  call void @llvm.lifetime.end.p0(i64 40, ptr %rdata) #9, !dbg !1926
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #9, !dbg !1926
  %79 = load i32, ptr %retval, align 4, !dbg !1926
  ret i32 %79, !dbg !1926
}

; Function Attrs: null_pointer_is_valid
declare !dbg !1927 zeroext i1 @dns_rdataset_isassociated(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare !dbg !1930 void @dns_rdataset_init(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare !dbg !1931 void @dns_rdataset_clone(ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare !dbg !1932 zeroext i1 @dns_name_equal(ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare !dbg !1935 zeroext i8 @isc_buffer_getuint8(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare !dbg !1938 void @dns_rdataset_disassociate(ptr noundef) #6

; Function Attrs: nounwind null_pointer_is_valid uwtable
define i32 @dns_ncache_getsigrdataset(ptr noundef %ncacherdataset, ptr noundef %name, i16 noundef zeroext %covers, ptr noundef %rdataset) #0 !dbg !1939 {
entry:
  %retval = alloca i32, align 4
  %ncacherdataset.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %covers.addr = alloca i16, align 2
  %rdataset.addr = alloca ptr, align 8
  %tname = alloca %struct.dns_name, align 8
  %rrsig = alloca %struct.dns_rdata_rrsig, align 8
  %rdata = alloca %struct.dns_rdata, align 8
  %rclone = alloca %struct.dns_rdataset, align 8
  %type = alloca i16, align 2
  %trust = alloca i16, align 2
  %source = alloca %struct.isc_buffer, align 8
  %remaining = alloca %struct.isc_region, align 8
  %sigregion = alloca %struct.isc_region, align 8
  %result = alloca i32, align 4
  %raw = alloca ptr, align 8
  %count = alloca i32, align 4
  %_r = alloca ptr, align 8
  %_l = alloca i32, align 4
  %_r131 = alloca ptr, align 8
  %_l132 = alloca i32, align 4
  %_r187 = alloca ptr, align 8
  %_l188 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ncacherdataset, ptr %ncacherdataset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %ncacherdataset.addr, metadata !1941, metadata !DIExpression()), !dbg !1996
  store ptr %name, ptr %name.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1942, metadata !DIExpression()), !dbg !1997
  store i16 %covers, ptr %covers.addr, align 2
  tail call void @llvm.dbg.declare(metadata ptr %covers.addr, metadata !1943, metadata !DIExpression()), !dbg !1998
  store ptr %rdataset, ptr %rdataset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %rdataset.addr, metadata !1944, metadata !DIExpression()), !dbg !1999
  call void @llvm.lifetime.start.p0(i64 80, ptr %tname) #9, !dbg !2000
  tail call void @llvm.dbg.declare(metadata ptr %tname, metadata !1945, metadata !DIExpression()), !dbg !2001
  call void @llvm.lifetime.start.p0(i64 152, ptr %rrsig) #9, !dbg !2002
  tail call void @llvm.dbg.declare(metadata ptr %rrsig, metadata !1946, metadata !DIExpression()), !dbg !2003
  call void @llvm.lifetime.start.p0(i64 40, ptr %rdata) #9, !dbg !2004
  tail call void @llvm.dbg.declare(metadata ptr %rdata, metadata !1975, metadata !DIExpression()), !dbg !2005
  call void @llvm.memset.p0.i64(ptr align 8 %rdata, i8 0, i64 40, i1 false), !dbg !2005
  %0 = getelementptr inbounds %struct.dns_rdata, ptr %rdata, i32 0, i32 5, !dbg !2005
  %1 = getelementptr inbounds %struct.anon.4, ptr %0, i32 0, i32 0, !dbg !2005
  store ptr inttoptr (i64 -1 to ptr), ptr %1, align 8, !dbg !2005
  %2 = getelementptr inbounds %struct.anon.4, ptr %0, i32 0, i32 1, !dbg !2005
  store ptr inttoptr (i64 -1 to ptr), ptr %2, align 8, !dbg !2005
  call void @llvm.lifetime.start.p0(i64 120, ptr %rclone) #9, !dbg !2006
  tail call void @llvm.dbg.declare(metadata ptr %rclone, metadata !1976, metadata !DIExpression()), !dbg !2007
  call void @llvm.lifetime.start.p0(i64 2, ptr %type) #9, !dbg !2008
  tail call void @llvm.dbg.declare(metadata ptr %type, metadata !1977, metadata !DIExpression()), !dbg !2009
  call void @llvm.lifetime.start.p0(i64 2, ptr %trust) #9, !dbg !2010
  tail call void @llvm.dbg.declare(metadata ptr %trust, metadata !1978, metadata !DIExpression()), !dbg !2011
  store i16 0, ptr %trust, align 2, !dbg !2011
  call void @llvm.lifetime.start.p0(i64 64, ptr %source) #9, !dbg !2012
  tail call void @llvm.dbg.declare(metadata ptr %source, metadata !1979, metadata !DIExpression()), !dbg !2013
  call void @llvm.lifetime.start.p0(i64 16, ptr %remaining) #9, !dbg !2014
  tail call void @llvm.dbg.declare(metadata ptr %remaining, metadata !1980, metadata !DIExpression()), !dbg !2015
  call void @llvm.lifetime.start.p0(i64 16, ptr %sigregion) #9, !dbg !2014
  tail call void @llvm.dbg.declare(metadata ptr %sigregion, metadata !1981, metadata !DIExpression()), !dbg !2016
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #9, !dbg !2017
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !1982, metadata !DIExpression()), !dbg !2018
  call void @llvm.lifetime.start.p0(i64 8, ptr %raw) #9, !dbg !2019
  tail call void @llvm.dbg.declare(metadata ptr %raw, metadata !1983, metadata !DIExpression()), !dbg !2020
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #9, !dbg !2021
  tail call void @llvm.dbg.declare(metadata ptr %count, metadata !1984, metadata !DIExpression()), !dbg !2022
  %3 = load ptr, ptr %ncacherdataset.addr, align 8, !dbg !2023
  %cmp = icmp ne ptr %3, null, !dbg !2023
  %lnot = xor i1 %cmp, true, !dbg !2023
  %lnot1 = xor i1 %lnot, true, !dbg !2023
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2023
  %conv = sext i32 %lnot.ext to i64, !dbg !2023
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2023
  %tobool = icmp ne i64 %expval, 0, !dbg !2023
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !2023

lor.rhs:                                          ; preds = %entry
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 603, i32 noundef 0, ptr noundef @.str.16) #10, !dbg !2023
  unreachable, !dbg !2023

4:                                                ; No predecessors!
  br label %lor.end, !dbg !2023

lor.end:                                          ; preds = %4, %entry
  %5 = phi i1 [ true, %entry ], [ false, %4 ]
  %lor.ext = zext i1 %5 to i32, !dbg !2023
  %6 = load ptr, ptr %ncacherdataset.addr, align 8, !dbg !2024
  %type2 = getelementptr inbounds %struct.dns_rdataset, ptr %6, i32 0, i32 4, !dbg !2024
  %7 = load i16, ptr %type2, align 2, !dbg !2024
  %conv3 = zext i16 %7 to i32, !dbg !2024
  %cmp4 = icmp eq i32 %conv3, 0, !dbg !2024
  %lnot6 = xor i1 %cmp4, true, !dbg !2024
  %lnot8 = xor i1 %lnot6, true, !dbg !2024
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !2024
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !2024
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !2024
  %tobool12 = icmp ne i64 %expval11, 0, !dbg !2024
  br i1 %tobool12, label %lor.end14, label %lor.rhs13, !dbg !2024

lor.rhs13:                                        ; preds = %lor.end
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 604, i32 noundef 0, ptr noundef @.str.17) #10, !dbg !2024
  unreachable, !dbg !2024

8:                                                ; No predecessors!
  br label %lor.end14, !dbg !2024

lor.end14:                                        ; preds = %8, %lor.end
  %9 = phi i1 [ true, %lor.end ], [ false, %8 ]
  %lor.ext15 = zext i1 %9 to i32, !dbg !2024
  %10 = load ptr, ptr %ncacherdataset.addr, align 8, !dbg !2025
  %attributes = getelementptr inbounds %struct.dns_rdataset, ptr %10, i32 0, i32 9, !dbg !2025
  %11 = load i32, ptr %attributes, align 8, !dbg !2025
  %and = and i32 %11, 2097152, !dbg !2025
  %cmp16 = icmp ne i32 %and, 0, !dbg !2025
  %lnot18 = xor i1 %cmp16, true, !dbg !2025
  %lnot20 = xor i1 %lnot18, true, !dbg !2025
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !2025
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !2025
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 1), !dbg !2025
  %tobool24 = icmp ne i64 %expval23, 0, !dbg !2025
  br i1 %tobool24, label %lor.end26, label %lor.rhs25, !dbg !2025

lor.rhs25:                                        ; preds = %lor.end14
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 605, i32 noundef 0, ptr noundef @.str.18) #10, !dbg !2025
  unreachable, !dbg !2025

12:                                               ; No predecessors!
  br label %lor.end26, !dbg !2025

lor.end26:                                        ; preds = %12, %lor.end14
  %13 = phi i1 [ true, %lor.end14 ], [ false, %12 ]
  %lor.ext27 = zext i1 %13 to i32, !dbg !2025
  %14 = load ptr, ptr %name.addr, align 8, !dbg !2026
  %cmp28 = icmp ne ptr %14, null, !dbg !2026
  %lnot30 = xor i1 %cmp28, true, !dbg !2026
  %lnot32 = xor i1 %lnot30, true, !dbg !2026
  %lnot.ext33 = zext i1 %lnot32 to i32, !dbg !2026
  %conv34 = sext i32 %lnot.ext33 to i64, !dbg !2026
  %expval35 = call i64 @llvm.expect.i64(i64 %conv34, i64 1), !dbg !2026
  %tobool36 = icmp ne i64 %expval35, 0, !dbg !2026
  br i1 %tobool36, label %lor.end38, label %lor.rhs37, !dbg !2026

lor.rhs37:                                        ; preds = %lor.end26
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 606, i32 noundef 0, ptr noundef @.str.19) #10, !dbg !2026
  unreachable, !dbg !2026

15:                                               ; No predecessors!
  br label %lor.end38, !dbg !2026

lor.end38:                                        ; preds = %15, %lor.end26
  %16 = phi i1 [ true, %lor.end26 ], [ false, %15 ]
  %lor.ext39 = zext i1 %16 to i32, !dbg !2026
  %17 = load ptr, ptr %rdataset.addr, align 8, !dbg !2027
  %call = call zeroext i1 @dns_rdataset_isassociated(ptr noundef %17), !dbg !2027
  %lnot40 = xor i1 %call, true, !dbg !2027
  %lnot42 = xor i1 %lnot40, true, !dbg !2027
  %lnot44 = xor i1 %lnot42, true, !dbg !2027
  %lnot.ext45 = zext i1 %lnot44 to i32, !dbg !2027
  %conv46 = sext i32 %lnot.ext45 to i64, !dbg !2027
  %expval47 = call i64 @llvm.expect.i64(i64 %conv46, i64 1), !dbg !2027
  %tobool48 = icmp ne i64 %expval47, 0, !dbg !2027
  br i1 %tobool48, label %lor.end50, label %lor.rhs49, !dbg !2027

lor.rhs49:                                        ; preds = %lor.end38
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 607, i32 noundef 0, ptr noundef @.str.20) #10, !dbg !2027
  unreachable, !dbg !2027

18:                                               ; No predecessors!
  br label %lor.end50, !dbg !2027

lor.end50:                                        ; preds = %18, %lor.end38
  %19 = phi i1 [ true, %lor.end38 ], [ false, %18 ]
  %lor.ext51 = zext i1 %19 to i32, !dbg !2027
  call void @dns_rdataset_init(ptr noundef %rclone), !dbg !2028
  %20 = load ptr, ptr %ncacherdataset.addr, align 8, !dbg !2029
  call void @dns_rdataset_clone(ptr noundef %20, ptr noundef %rclone), !dbg !2030
  %call52 = call i32 @dns_rdataset_first(ptr noundef %rclone), !dbg !2031
  store i32 %call52, ptr %result, align 4, !dbg !2032
  br label %while.cond, !dbg !2033

while.cond:                                       ; preds = %if.end254, %if.then, %lor.end50
  %21 = load i32, ptr %result, align 4, !dbg !2034
  %cmp53 = icmp eq i32 %21, 0, !dbg !2035
  br i1 %cmp53, label %while.body, label %while.end, !dbg !2033

while.body:                                       ; preds = %while.cond
  call void @dns_rdataset_current(ptr noundef %rclone, ptr noundef %rdata), !dbg !2036
  br label %do.body, !dbg !2037

do.body:                                          ; preds = %while.body
  %data = getelementptr inbounds %struct.dns_rdata, ptr %rdata, i32 0, i32 0, !dbg !2038
  %22 = load ptr, ptr %data, align 8, !dbg !2038
  %base = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 1, !dbg !2038
  store ptr %22, ptr %base, align 8, !dbg !2038
  %length = getelementptr inbounds %struct.dns_rdata, ptr %rdata, i32 0, i32 1, !dbg !2038
  %23 = load i32, ptr %length, align 8, !dbg !2038
  %length55 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 2, !dbg !2038
  store i32 %23, ptr %length55, align 8, !dbg !2038
  %used = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 3, !dbg !2038
  store i32 0, ptr %used, align 4, !dbg !2038
  %current = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 4, !dbg !2038
  store i32 0, ptr %current, align 8, !dbg !2038
  %active = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 5, !dbg !2038
  store i32 0, ptr %active, align 4, !dbg !2038
  %mctx = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 7, !dbg !2038
  store ptr null, ptr %mctx, align 8, !dbg !2038
  br label %do.body56, !dbg !2038

do.body56:                                        ; preds = %do.body
  %link = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 6, !dbg !2040
  %prev = getelementptr inbounds %struct.anon.5, ptr %link, i32 0, i32 0, !dbg !2040
  store ptr inttoptr (i64 -1 to ptr), ptr %prev, align 8, !dbg !2040
  %link57 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 6, !dbg !2040
  %next = getelementptr inbounds %struct.anon.5, ptr %link57, i32 0, i32 1, !dbg !2040
  store ptr inttoptr (i64 -1 to ptr), ptr %next, align 8, !dbg !2040
  br label %do.cond, !dbg !2040

do.cond:                                          ; preds = %do.body56
  br label %do.end, !dbg !2040

do.end:                                           ; preds = %do.cond
  %magic = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 0, !dbg !2038
  store i32 1114990113, ptr %magic, align 8, !dbg !2038
  %autore = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 8, !dbg !2038
  store i8 0, ptr %autore, align 8, !dbg !2038
  br label %do.cond58, !dbg !2038

do.cond58:                                        ; preds = %do.end
  br label %do.end59, !dbg !2038

do.end59:                                         ; preds = %do.cond58
  br label %do.body60, !dbg !2042

do.body60:                                        ; preds = %do.end59
  %length61 = getelementptr inbounds %struct.dns_rdata, ptr %rdata, i32 0, i32 1, !dbg !2043
  %24 = load i32, ptr %length61, align 8, !dbg !2043
  %used62 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 3, !dbg !2043
  %25 = load i32, ptr %used62, align 4, !dbg !2043
  %add = add i32 %25, %24, !dbg !2043
  store i32 %add, ptr %used62, align 4, !dbg !2043
  br label %do.cond63, !dbg !2043

do.cond63:                                        ; preds = %do.body60
  br label %do.end64, !dbg !2043

do.end64:                                         ; preds = %do.cond63
  call void @dns_name_init(ptr noundef %tname, ptr noundef null), !dbg !2045
  br label %do.body65, !dbg !2046

do.body65:                                        ; preds = %do.end64
  %base66 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 1, !dbg !2047
  %26 = load ptr, ptr %base66, align 8, !dbg !2047
  %current67 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 4, !dbg !2047
  %27 = load i32, ptr %current67, align 8, !dbg !2047
  %idx.ext = zext i32 %27 to i64, !dbg !2047
  %add.ptr = getelementptr inbounds i8, ptr %26, i64 %idx.ext, !dbg !2047
  %base68 = getelementptr inbounds %struct.isc_region, ptr %remaining, i32 0, i32 0, !dbg !2047
  store ptr %add.ptr, ptr %base68, align 8, !dbg !2047
  %used69 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 3, !dbg !2047
  %28 = load i32, ptr %used69, align 4, !dbg !2047
  %current70 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 4, !dbg !2047
  %29 = load i32, ptr %current70, align 8, !dbg !2047
  %sub = sub i32 %28, %29, !dbg !2047
  %length71 = getelementptr inbounds %struct.isc_region, ptr %remaining, i32 0, i32 1, !dbg !2047
  store i32 %sub, ptr %length71, align 8, !dbg !2047
  br label %do.cond72, !dbg !2047

do.cond72:                                        ; preds = %do.body65
  br label %do.end73, !dbg !2047

do.end73:                                         ; preds = %do.cond72
  call void @dns_name_fromregion(ptr noundef %tname, ptr noundef %remaining), !dbg !2049
  %length74 = getelementptr inbounds %struct.isc_region, ptr %remaining, i32 0, i32 1, !dbg !2050
  %30 = load i32, ptr %length74, align 8, !dbg !2050
  %length75 = getelementptr inbounds %struct.dns_name, ptr %tname, i32 0, i32 2, !dbg !2050
  %31 = load i32, ptr %length75, align 8, !dbg !2050
  %cmp76 = icmp uge i32 %30, %31, !dbg !2050
  %lnot78 = xor i1 %cmp76, true, !dbg !2050
  %lnot80 = xor i1 %lnot78, true, !dbg !2050
  %lnot.ext81 = zext i1 %lnot80 to i32, !dbg !2050
  %conv82 = sext i32 %lnot.ext81 to i64, !dbg !2050
  %expval83 = call i64 @llvm.expect.i64(i64 %conv82, i64 1), !dbg !2050
  %tobool84 = icmp ne i64 %expval83, 0, !dbg !2050
  br i1 %tobool84, label %lor.end86, label %lor.rhs85, !dbg !2050

lor.rhs85:                                        ; preds = %do.end73
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 619, i32 noundef 2, ptr noundef @.str.22) #10, !dbg !2050
  unreachable, !dbg !2050

32:                                               ; No predecessors!
  br label %lor.end86, !dbg !2050

lor.end86:                                        ; preds = %32, %do.end73
  %33 = phi i1 [ true, %do.end73 ], [ false, %32 ]
  %lor.ext87 = zext i1 %33 to i32, !dbg !2050
  br label %do.body88, !dbg !2051

do.body88:                                        ; preds = %lor.end86
  %length89 = getelementptr inbounds %struct.dns_name, ptr %tname, i32 0, i32 2, !dbg !2052
  %34 = load i32, ptr %length89, align 8, !dbg !2052
  %current90 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 4, !dbg !2052
  %35 = load i32, ptr %current90, align 8, !dbg !2052
  %add91 = add i32 %35, %34, !dbg !2052
  store i32 %add91, ptr %current90, align 8, !dbg !2052
  br label %do.cond92, !dbg !2052

do.cond92:                                        ; preds = %do.body88
  br label %do.end93, !dbg !2052

do.end93:                                         ; preds = %do.cond92
  br label %do.body94, !dbg !2054

do.body94:                                        ; preds = %do.end93
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r) #9, !dbg !2055
  tail call void @llvm.dbg.declare(metadata ptr %_r, metadata !1985, metadata !DIExpression()), !dbg !2055
  store ptr %remaining, ptr %_r, align 8, !dbg !2055
  call void @llvm.lifetime.start.p0(i64 4, ptr %_l) #9, !dbg !2055
  tail call void @llvm.dbg.declare(metadata ptr %_l, metadata !1989, metadata !DIExpression()), !dbg !2055
  %length95 = getelementptr inbounds %struct.dns_name, ptr %tname, i32 0, i32 2, !dbg !2055
  %36 = load i32, ptr %length95, align 8, !dbg !2055
  store i32 %36, ptr %_l, align 4, !dbg !2055
  %37 = load ptr, ptr %_r, align 8, !dbg !2055
  %length96 = getelementptr inbounds %struct.isc_region, ptr %37, i32 0, i32 1, !dbg !2055
  %38 = load i32, ptr %length96, align 8, !dbg !2055
  %39 = load i32, ptr %_l, align 4, !dbg !2055
  %cmp97 = icmp uge i32 %38, %39, !dbg !2055
  %lnot99 = xor i1 %cmp97, true, !dbg !2055
  %lnot101 = xor i1 %lnot99, true, !dbg !2055
  %lnot.ext102 = zext i1 %lnot101 to i32, !dbg !2055
  %conv103 = sext i32 %lnot.ext102 to i64, !dbg !2055
  %expval104 = call i64 @llvm.expect.i64(i64 %conv103, i64 1), !dbg !2055
  %tobool105 = icmp ne i64 %expval104, 0, !dbg !2055
  br i1 %tobool105, label %lor.end107, label %lor.rhs106, !dbg !2055

lor.rhs106:                                       ; preds = %do.body94
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 621, i32 noundef 2, ptr noundef @.str.26) #10, !dbg !2055
  unreachable, !dbg !2055

40:                                               ; No predecessors!
  br label %lor.end107, !dbg !2055

lor.end107:                                       ; preds = %40, %do.body94
  %41 = phi i1 [ true, %do.body94 ], [ false, %40 ]
  %lor.ext108 = zext i1 %41 to i32, !dbg !2055
  %42 = load i32, ptr %_l, align 4, !dbg !2055
  %43 = load ptr, ptr %_r, align 8, !dbg !2055
  %base109 = getelementptr inbounds %struct.isc_region, ptr %43, i32 0, i32 0, !dbg !2055
  %44 = load ptr, ptr %base109, align 8, !dbg !2055
  %idx.ext110 = zext i32 %42 to i64, !dbg !2055
  %add.ptr111 = getelementptr inbounds i8, ptr %44, i64 %idx.ext110, !dbg !2055
  store ptr %add.ptr111, ptr %base109, align 8, !dbg !2055
  %45 = load i32, ptr %_l, align 4, !dbg !2055
  %46 = load ptr, ptr %_r, align 8, !dbg !2055
  %length112 = getelementptr inbounds %struct.isc_region, ptr %46, i32 0, i32 1, !dbg !2055
  %47 = load i32, ptr %length112, align 8, !dbg !2055
  %sub113 = sub i32 %47, %45, !dbg !2055
  store i32 %sub113, ptr %length112, align 8, !dbg !2055
  call void @llvm.lifetime.end.p0(i64 4, ptr %_l) #9, !dbg !2054
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r) #9, !dbg !2054
  br label %do.cond114, !dbg !2055

do.cond114:                                       ; preds = %lor.end107
  br label %do.end115, !dbg !2055

do.end115:                                        ; preds = %do.cond114
  %length116 = getelementptr inbounds %struct.isc_region, ptr %remaining, i32 0, i32 1, !dbg !2056
  %48 = load i32, ptr %length116, align 8, !dbg !2056
  %cmp117 = icmp uge i32 %48, 2, !dbg !2056
  %lnot119 = xor i1 %cmp117, true, !dbg !2056
  %lnot121 = xor i1 %lnot119, true, !dbg !2056
  %lnot.ext122 = zext i1 %lnot121 to i32, !dbg !2056
  %conv123 = sext i32 %lnot.ext122 to i64, !dbg !2056
  %expval124 = call i64 @llvm.expect.i64(i64 %conv123, i64 1), !dbg !2056
  %tobool125 = icmp ne i64 %expval124, 0, !dbg !2056
  br i1 %tobool125, label %lor.end127, label %lor.rhs126, !dbg !2056

lor.rhs126:                                       ; preds = %do.end115
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 623, i32 noundef 2, ptr noundef @.str.6) #10, !dbg !2056
  unreachable, !dbg !2056

49:                                               ; No predecessors!
  br label %lor.end127, !dbg !2056

lor.end127:                                       ; preds = %49, %do.end115
  %50 = phi i1 [ true, %do.end115 ], [ false, %49 ]
  %lor.ext128 = zext i1 %50 to i32, !dbg !2056
  %call129 = call zeroext i16 @isc_buffer_getuint16(ptr noundef %source), !dbg !2057
  store i16 %call129, ptr %type, align 2, !dbg !2058
  br label %do.body130, !dbg !2059

do.body130:                                       ; preds = %lor.end127
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r131) #9, !dbg !2060
  tail call void @llvm.dbg.declare(metadata ptr %_r131, metadata !1990, metadata !DIExpression()), !dbg !2060
  store ptr %remaining, ptr %_r131, align 8, !dbg !2060
  call void @llvm.lifetime.start.p0(i64 4, ptr %_l132) #9, !dbg !2060
  tail call void @llvm.dbg.declare(metadata ptr %_l132, metadata !1992, metadata !DIExpression()), !dbg !2060
  store i32 2, ptr %_l132, align 4, !dbg !2060
  %51 = load ptr, ptr %_r131, align 8, !dbg !2060
  %length133 = getelementptr inbounds %struct.isc_region, ptr %51, i32 0, i32 1, !dbg !2060
  %52 = load i32, ptr %length133, align 8, !dbg !2060
  %53 = load i32, ptr %_l132, align 4, !dbg !2060
  %cmp134 = icmp uge i32 %52, %53, !dbg !2060
  %lnot136 = xor i1 %cmp134, true, !dbg !2060
  %lnot138 = xor i1 %lnot136, true, !dbg !2060
  %lnot.ext139 = zext i1 %lnot138 to i32, !dbg !2060
  %conv140 = sext i32 %lnot.ext139 to i64, !dbg !2060
  %expval141 = call i64 @llvm.expect.i64(i64 %conv140, i64 1), !dbg !2060
  %tobool142 = icmp ne i64 %expval141, 0, !dbg !2060
  br i1 %tobool142, label %lor.end144, label %lor.rhs143, !dbg !2060

lor.rhs143:                                       ; preds = %do.body130
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 625, i32 noundef 2, ptr noundef @.str.26) #10, !dbg !2060
  unreachable, !dbg !2060

54:                                               ; No predecessors!
  br label %lor.end144, !dbg !2060

lor.end144:                                       ; preds = %54, %do.body130
  %55 = phi i1 [ true, %do.body130 ], [ false, %54 ]
  %lor.ext145 = zext i1 %55 to i32, !dbg !2060
  %56 = load i32, ptr %_l132, align 4, !dbg !2060
  %57 = load ptr, ptr %_r131, align 8, !dbg !2060
  %base146 = getelementptr inbounds %struct.isc_region, ptr %57, i32 0, i32 0, !dbg !2060
  %58 = load ptr, ptr %base146, align 8, !dbg !2060
  %idx.ext147 = zext i32 %56 to i64, !dbg !2060
  %add.ptr148 = getelementptr inbounds i8, ptr %58, i64 %idx.ext147, !dbg !2060
  store ptr %add.ptr148, ptr %base146, align 8, !dbg !2060
  %59 = load i32, ptr %_l132, align 4, !dbg !2060
  %60 = load ptr, ptr %_r131, align 8, !dbg !2060
  %length149 = getelementptr inbounds %struct.isc_region, ptr %60, i32 0, i32 1, !dbg !2060
  %61 = load i32, ptr %length149, align 8, !dbg !2060
  %sub150 = sub i32 %61, %59, !dbg !2060
  store i32 %sub150, ptr %length149, align 8, !dbg !2060
  call void @llvm.lifetime.end.p0(i64 4, ptr %_l132) #9, !dbg !2059
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r131) #9, !dbg !2059
  br label %do.cond151, !dbg !2060

do.cond151:                                       ; preds = %lor.end144
  br label %do.end152, !dbg !2060

do.end152:                                        ; preds = %do.cond151
  %62 = load i16, ptr %type, align 2, !dbg !2061
  %conv153 = zext i16 %62 to i32, !dbg !2061
  %cmp154 = icmp ne i32 %conv153, 46, !dbg !2063
  br i1 %cmp154, label %if.then, label %lor.lhs.false, !dbg !2064

lor.lhs.false:                                    ; preds = %do.end152
  %63 = load ptr, ptr %name.addr, align 8, !dbg !2065
  %call156 = call zeroext i1 @dns_name_equal(ptr noundef %tname, ptr noundef %63), !dbg !2066
  br i1 %call156, label %if.end, label %if.then, !dbg !2067

if.then:                                          ; preds = %lor.lhs.false, %do.end152
  %call157 = call i32 @dns_rdataset_next(ptr noundef %rclone), !dbg !2068
  store i32 %call157, ptr %result, align 4, !dbg !2070
  call void @dns_rdata_reset(ptr noundef %rdata), !dbg !2071
  br label %while.cond, !dbg !2072, !llvm.loop !2073

if.end:                                           ; preds = %lor.lhs.false
  %length158 = getelementptr inbounds %struct.isc_region, ptr %remaining, i32 0, i32 1, !dbg !2075
  %64 = load i32, ptr %length158, align 8, !dbg !2075
  %cmp159 = icmp uge i32 %64, 1, !dbg !2075
  %lnot161 = xor i1 %cmp159, true, !dbg !2075
  %lnot163 = xor i1 %lnot161, true, !dbg !2075
  %lnot.ext164 = zext i1 %lnot163 to i32, !dbg !2075
  %conv165 = sext i32 %lnot.ext164 to i64, !dbg !2075
  %expval166 = call i64 @llvm.expect.i64(i64 %conv165, i64 1), !dbg !2075
  %tobool167 = icmp ne i64 %expval166, 0, !dbg !2075
  br i1 %tobool167, label %lor.end169, label %lor.rhs168, !dbg !2075

lor.rhs168:                                       ; preds = %if.end
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 634, i32 noundef 2, ptr noundef @.str.27) #10, !dbg !2075
  unreachable, !dbg !2075

65:                                               ; No predecessors!
  br label %lor.end169, !dbg !2075

lor.end169:                                       ; preds = %65, %if.end
  %66 = phi i1 [ true, %if.end ], [ false, %65 ]
  %lor.ext170 = zext i1 %66 to i32, !dbg !2075
  %call171 = call zeroext i8 @isc_buffer_getuint8(ptr noundef %source), !dbg !2076
  %conv172 = zext i8 %call171 to i16, !dbg !2076
  store i16 %conv172, ptr %trust, align 2, !dbg !2077
  %67 = load i16, ptr %trust, align 2, !dbg !2078
  %conv173 = zext i16 %67 to i32, !dbg !2078
  %cmp174 = icmp sle i32 %conv173, 9, !dbg !2078
  %lnot176 = xor i1 %cmp174, true, !dbg !2078
  %lnot178 = xor i1 %lnot176, true, !dbg !2078
  %lnot.ext179 = zext i1 %lnot178 to i32, !dbg !2078
  %conv180 = sext i32 %lnot.ext179 to i64, !dbg !2078
  %expval181 = call i64 @llvm.expect.i64(i64 %conv180, i64 1), !dbg !2078
  %tobool182 = icmp ne i64 %expval181, 0, !dbg !2078
  br i1 %tobool182, label %lor.end184, label %lor.rhs183, !dbg !2078

lor.rhs183:                                       ; preds = %lor.end169
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 636, i32 noundef 2, ptr noundef @.str.24) #10, !dbg !2078
  unreachable, !dbg !2078

68:                                               ; No predecessors!
  br label %lor.end184, !dbg !2078

lor.end184:                                       ; preds = %68, %lor.end169
  %69 = phi i1 [ true, %lor.end169 ], [ false, %68 ]
  %lor.ext185 = zext i1 %69 to i32, !dbg !2078
  br label %do.body186, !dbg !2079

do.body186:                                       ; preds = %lor.end184
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r187) #9, !dbg !2080
  tail call void @llvm.dbg.declare(metadata ptr %_r187, metadata !1993, metadata !DIExpression()), !dbg !2080
  store ptr %remaining, ptr %_r187, align 8, !dbg !2080
  call void @llvm.lifetime.start.p0(i64 4, ptr %_l188) #9, !dbg !2080
  tail call void @llvm.dbg.declare(metadata ptr %_l188, metadata !1995, metadata !DIExpression()), !dbg !2080
  store i32 1, ptr %_l188, align 4, !dbg !2080
  %70 = load ptr, ptr %_r187, align 8, !dbg !2080
  %length189 = getelementptr inbounds %struct.isc_region, ptr %70, i32 0, i32 1, !dbg !2080
  %71 = load i32, ptr %length189, align 8, !dbg !2080
  %72 = load i32, ptr %_l188, align 4, !dbg !2080
  %cmp190 = icmp uge i32 %71, %72, !dbg !2080
  %lnot192 = xor i1 %cmp190, true, !dbg !2080
  %lnot194 = xor i1 %lnot192, true, !dbg !2080
  %lnot.ext195 = zext i1 %lnot194 to i32, !dbg !2080
  %conv196 = sext i32 %lnot.ext195 to i64, !dbg !2080
  %expval197 = call i64 @llvm.expect.i64(i64 %conv196, i64 1), !dbg !2080
  %tobool198 = icmp ne i64 %expval197, 0, !dbg !2080
  br i1 %tobool198, label %lor.end200, label %lor.rhs199, !dbg !2080

lor.rhs199:                                       ; preds = %do.body186
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 637, i32 noundef 2, ptr noundef @.str.26) #10, !dbg !2080
  unreachable, !dbg !2080

73:                                               ; No predecessors!
  br label %lor.end200, !dbg !2080

lor.end200:                                       ; preds = %73, %do.body186
  %74 = phi i1 [ true, %do.body186 ], [ false, %73 ]
  %lor.ext201 = zext i1 %74 to i32, !dbg !2080
  %75 = load i32, ptr %_l188, align 4, !dbg !2080
  %76 = load ptr, ptr %_r187, align 8, !dbg !2080
  %base202 = getelementptr inbounds %struct.isc_region, ptr %76, i32 0, i32 0, !dbg !2080
  %77 = load ptr, ptr %base202, align 8, !dbg !2080
  %idx.ext203 = zext i32 %75 to i64, !dbg !2080
  %add.ptr204 = getelementptr inbounds i8, ptr %77, i64 %idx.ext203, !dbg !2080
  store ptr %add.ptr204, ptr %base202, align 8, !dbg !2080
  %78 = load i32, ptr %_l188, align 4, !dbg !2080
  %79 = load ptr, ptr %_r187, align 8, !dbg !2080
  %length205 = getelementptr inbounds %struct.isc_region, ptr %79, i32 0, i32 1, !dbg !2080
  %80 = load i32, ptr %length205, align 8, !dbg !2080
  %sub206 = sub i32 %80, %78, !dbg !2080
  store i32 %sub206, ptr %length205, align 8, !dbg !2080
  call void @llvm.lifetime.end.p0(i64 4, ptr %_l188) #9, !dbg !2079
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r187) #9, !dbg !2079
  br label %do.cond207, !dbg !2080

do.cond207:                                       ; preds = %lor.end200
  br label %do.end208, !dbg !2080

do.end208:                                        ; preds = %do.cond207
  %base209 = getelementptr inbounds %struct.isc_region, ptr %remaining, i32 0, i32 0, !dbg !2081
  %81 = load ptr, ptr %base209, align 8, !dbg !2081
  store ptr %81, ptr %raw, align 8, !dbg !2082
  %82 = load ptr, ptr %raw, align 8, !dbg !2083
  %arrayidx = getelementptr inbounds i8, ptr %82, i64 0, !dbg !2083
  %83 = load i8, ptr %arrayidx, align 1, !dbg !2083
  %conv210 = zext i8 %83 to i32, !dbg !2083
  %mul = mul nsw i32 %conv210, 256, !dbg !2084
  %84 = load ptr, ptr %raw, align 8, !dbg !2085
  %arrayidx211 = getelementptr inbounds i8, ptr %84, i64 1, !dbg !2085
  %85 = load i8, ptr %arrayidx211, align 1, !dbg !2085
  %conv212 = zext i8 %85 to i32, !dbg !2085
  %add213 = add nsw i32 %mul, %conv212, !dbg !2086
  store i32 %add213, ptr %count, align 4, !dbg !2087
  %86 = load i32, ptr %count, align 4, !dbg !2088
  %cmp214 = icmp ugt i32 %86, 0, !dbg !2088
  %lnot216 = xor i1 %cmp214, true, !dbg !2088
  %lnot218 = xor i1 %lnot216, true, !dbg !2088
  %lnot.ext219 = zext i1 %lnot218 to i32, !dbg !2088
  %conv220 = sext i32 %lnot.ext219 to i64, !dbg !2088
  %expval221 = call i64 @llvm.expect.i64(i64 %conv220, i64 1), !dbg !2088
  %tobool222 = icmp ne i64 %expval221, 0, !dbg !2088
  br i1 %tobool222, label %lor.end224, label %lor.rhs223, !dbg !2088

lor.rhs223:                                       ; preds = %do.end208
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 641, i32 noundef 2, ptr noundef @.str.28) #10, !dbg !2088
  unreachable, !dbg !2088

87:                                               ; No predecessors!
  br label %lor.end224, !dbg !2088

lor.end224:                                       ; preds = %87, %do.end208
  %88 = phi i1 [ true, %do.end208 ], [ false, %87 ]
  %lor.ext225 = zext i1 %88 to i32, !dbg !2088
  %89 = load ptr, ptr %raw, align 8, !dbg !2089
  %add.ptr226 = getelementptr inbounds i8, ptr %89, i64 2, !dbg !2089
  store ptr %add.ptr226, ptr %raw, align 8, !dbg !2089
  %90 = load ptr, ptr %raw, align 8, !dbg !2090
  %arrayidx227 = getelementptr inbounds i8, ptr %90, i64 0, !dbg !2090
  %91 = load i8, ptr %arrayidx227, align 1, !dbg !2090
  %conv228 = zext i8 %91 to i32, !dbg !2090
  %mul229 = mul nsw i32 %conv228, 256, !dbg !2091
  %92 = load ptr, ptr %raw, align 8, !dbg !2092
  %arrayidx230 = getelementptr inbounds i8, ptr %92, i64 1, !dbg !2092
  %93 = load i8, ptr %arrayidx230, align 1, !dbg !2092
  %conv231 = zext i8 %93 to i32, !dbg !2092
  %add232 = add nsw i32 %mul229, %conv231, !dbg !2093
  %length233 = getelementptr inbounds %struct.isc_region, ptr %sigregion, i32 0, i32 1, !dbg !2094
  store i32 %add232, ptr %length233, align 8, !dbg !2095
  %94 = load ptr, ptr %raw, align 8, !dbg !2096
  %add.ptr234 = getelementptr inbounds i8, ptr %94, i64 2, !dbg !2096
  store ptr %add.ptr234, ptr %raw, align 8, !dbg !2096
  %95 = load ptr, ptr %raw, align 8, !dbg !2097
  %base235 = getelementptr inbounds %struct.isc_region, ptr %sigregion, i32 0, i32 0, !dbg !2098
  store ptr %95, ptr %base235, align 8, !dbg !2099
  call void @dns_rdata_reset(ptr noundef %rdata), !dbg !2100
  %96 = load ptr, ptr %rdataset.addr, align 8, !dbg !2101
  %rdclass = getelementptr inbounds %struct.dns_rdataset, ptr %96, i32 0, i32 3, !dbg !2102
  %97 = load i16, ptr %rdclass, align 8, !dbg !2102
  call void @dns_rdata_fromregion(ptr noundef %rdata, i16 noundef zeroext %97, i16 noundef zeroext 46, ptr noundef %sigregion), !dbg !2103
  %call236 = call i32 @dns_rdata_tostruct(ptr noundef %rdata, ptr noundef %rrsig, ptr noundef null), !dbg !2104
  %covered = getelementptr inbounds %struct.dns_rdata_rrsig, ptr %rrsig, i32 0, i32 2, !dbg !2105
  %98 = load i16, ptr %covered, align 8, !dbg !2105
  %conv237 = zext i16 %98 to i32, !dbg !2107
  %99 = load i16, ptr %covers.addr, align 2, !dbg !2108
  %conv238 = zext i16 %99 to i32, !dbg !2108
  %cmp239 = icmp eq i32 %conv237, %conv238, !dbg !2109
  br i1 %cmp239, label %if.then241, label %if.end254, !dbg !2110

if.then241:                                       ; preds = %lor.end224
  br label %do.body242, !dbg !2111

do.body242:                                       ; preds = %if.then241
  %base243 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 1, !dbg !2113
  %100 = load ptr, ptr %base243, align 8, !dbg !2113
  %current244 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 4, !dbg !2113
  %101 = load i32, ptr %current244, align 8, !dbg !2113
  %idx.ext245 = zext i32 %101 to i64, !dbg !2113
  %add.ptr246 = getelementptr inbounds i8, ptr %100, i64 %idx.ext245, !dbg !2113
  %base247 = getelementptr inbounds %struct.isc_region, ptr %remaining, i32 0, i32 0, !dbg !2113
  store ptr %add.ptr246, ptr %base247, align 8, !dbg !2113
  %used248 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 3, !dbg !2113
  %102 = load i32, ptr %used248, align 4, !dbg !2113
  %current249 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 4, !dbg !2113
  %103 = load i32, ptr %current249, align 8, !dbg !2113
  %sub250 = sub i32 %102, %103, !dbg !2113
  %length251 = getelementptr inbounds %struct.isc_region, ptr %remaining, i32 0, i32 1, !dbg !2113
  store i32 %sub250, ptr %length251, align 8, !dbg !2113
  br label %do.cond252, !dbg !2113

do.cond252:                                       ; preds = %do.body242
  br label %do.end253, !dbg !2113

do.end253:                                        ; preds = %do.cond252
  br label %while.end, !dbg !2115

if.end254:                                        ; preds = %lor.end224
  %call255 = call i32 @dns_rdataset_next(ptr noundef %rclone), !dbg !2116
  store i32 %call255, ptr %result, align 4, !dbg !2117
  call void @dns_rdata_reset(ptr noundef %rdata), !dbg !2118
  br label %while.cond, !dbg !2033, !llvm.loop !2073

while.end:                                        ; preds = %do.end253, %while.cond
  call void @dns_rdataset_disassociate(ptr noundef %rclone), !dbg !2119
  %104 = load i32, ptr %result, align 4, !dbg !2120
  %cmp256 = icmp eq i32 %104, 29, !dbg !2122
  br i1 %cmp256, label %if.then258, label %if.end259, !dbg !2123

if.then258:                                       ; preds = %while.end
  store i32 23, ptr %retval, align 4, !dbg !2124
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2124

if.end259:                                        ; preds = %while.end
  %105 = load i32, ptr %result, align 4, !dbg !2125
  %cmp260 = icmp ne i32 %105, 0, !dbg !2127
  br i1 %cmp260, label %if.then262, label %if.end263, !dbg !2128

if.then262:                                       ; preds = %if.end259
  %106 = load i32, ptr %result, align 4, !dbg !2129
  store i32 %106, ptr %retval, align 4, !dbg !2130
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2130

if.end263:                                        ; preds = %if.end259
  %length264 = getelementptr inbounds %struct.isc_region, ptr %remaining, i32 0, i32 1, !dbg !2131
  %107 = load i32, ptr %length264, align 8, !dbg !2131
  %cmp265 = icmp ne i32 %107, 0, !dbg !2131
  %lnot267 = xor i1 %cmp265, true, !dbg !2131
  %lnot269 = xor i1 %lnot267, true, !dbg !2131
  %lnot.ext270 = zext i1 %lnot269 to i32, !dbg !2131
  %conv271 = sext i32 %lnot.ext270 to i64, !dbg !2131
  %expval272 = call i64 @llvm.expect.i64(i64 %conv271, i64 1), !dbg !2131
  %tobool273 = icmp ne i64 %expval272, 0, !dbg !2131
  br i1 %tobool273, label %lor.end275, label %lor.rhs274, !dbg !2131

lor.rhs274:                                       ; preds = %if.end263
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 664, i32 noundef 2, ptr noundef @.str.25) #10, !dbg !2131
  unreachable, !dbg !2131

108:                                              ; No predecessors!
  br label %lor.end275, !dbg !2131

lor.end275:                                       ; preds = %108, %if.end263
  %109 = phi i1 [ true, %if.end263 ], [ false, %108 ]
  %lor.ext276 = zext i1 %109 to i32, !dbg !2131
  %110 = load ptr, ptr %rdataset.addr, align 8, !dbg !2132
  %methods = getelementptr inbounds %struct.dns_rdataset, ptr %110, i32 0, i32 1, !dbg !2133
  store ptr @rdataset_methods, ptr %methods, align 8, !dbg !2134
  %111 = load ptr, ptr %ncacherdataset.addr, align 8, !dbg !2135
  %rdclass277 = getelementptr inbounds %struct.dns_rdataset, ptr %111, i32 0, i32 3, !dbg !2136
  %112 = load i16, ptr %rdclass277, align 8, !dbg !2136
  %113 = load ptr, ptr %rdataset.addr, align 8, !dbg !2137
  %rdclass278 = getelementptr inbounds %struct.dns_rdataset, ptr %113, i32 0, i32 3, !dbg !2138
  store i16 %112, ptr %rdclass278, align 8, !dbg !2139
  %114 = load ptr, ptr %rdataset.addr, align 8, !dbg !2140
  %type279 = getelementptr inbounds %struct.dns_rdataset, ptr %114, i32 0, i32 4, !dbg !2141
  store i16 46, ptr %type279, align 2, !dbg !2142
  %115 = load i16, ptr %covers.addr, align 2, !dbg !2143
  %116 = load ptr, ptr %rdataset.addr, align 8, !dbg !2144
  %covers280 = getelementptr inbounds %struct.dns_rdataset, ptr %116, i32 0, i32 8, !dbg !2145
  store i16 %115, ptr %covers280, align 2, !dbg !2146
  %117 = load ptr, ptr %ncacherdataset.addr, align 8, !dbg !2147
  %ttl = getelementptr inbounds %struct.dns_rdataset, ptr %117, i32 0, i32 5, !dbg !2148
  %118 = load i32, ptr %ttl, align 4, !dbg !2148
  %119 = load ptr, ptr %rdataset.addr, align 8, !dbg !2149
  %ttl281 = getelementptr inbounds %struct.dns_rdataset, ptr %119, i32 0, i32 5, !dbg !2150
  store i32 %118, ptr %ttl281, align 4, !dbg !2151
  %120 = load i16, ptr %trust, align 2, !dbg !2152
  %121 = load ptr, ptr %rdataset.addr, align 8, !dbg !2153
  %trust282 = getelementptr inbounds %struct.dns_rdataset, ptr %121, i32 0, i32 7, !dbg !2154
  store i16 %120, ptr %trust282, align 4, !dbg !2155
  %122 = load ptr, ptr %rdataset.addr, align 8, !dbg !2156
  %private1 = getelementptr inbounds %struct.dns_rdataset, ptr %122, i32 0, i32 12, !dbg !2157
  store ptr null, ptr %private1, align 8, !dbg !2158
  %123 = load ptr, ptr %rdataset.addr, align 8, !dbg !2159
  %private2 = getelementptr inbounds %struct.dns_rdataset, ptr %123, i32 0, i32 13, !dbg !2160
  store ptr null, ptr %private2, align 8, !dbg !2161
  %base283 = getelementptr inbounds %struct.isc_region, ptr %remaining, i32 0, i32 0, !dbg !2162
  %124 = load ptr, ptr %base283, align 8, !dbg !2162
  %125 = load ptr, ptr %rdataset.addr, align 8, !dbg !2163
  %private3 = getelementptr inbounds %struct.dns_rdataset, ptr %125, i32 0, i32 14, !dbg !2164
  store ptr %124, ptr %private3, align 8, !dbg !2165
  %126 = load ptr, ptr %rdataset.addr, align 8, !dbg !2166
  %privateuint4 = getelementptr inbounds %struct.dns_rdataset, ptr %126, i32 0, i32 15, !dbg !2167
  store i32 0, ptr %privateuint4, align 8, !dbg !2168
  %127 = load ptr, ptr %rdataset.addr, align 8, !dbg !2169
  %private5 = getelementptr inbounds %struct.dns_rdataset, ptr %127, i32 0, i32 16, !dbg !2170
  store ptr null, ptr %private5, align 8, !dbg !2171
  %128 = load ptr, ptr %rdataset.addr, align 8, !dbg !2172
  %private6 = getelementptr inbounds %struct.dns_rdataset, ptr %128, i32 0, i32 17, !dbg !2173
  store ptr null, ptr %private6, align 8, !dbg !2174
  store i32 0, ptr %retval, align 4, !dbg !2175
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2175

cleanup:                                          ; preds = %lor.end275, %if.then262, %if.then258
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #9, !dbg !2176
  call void @llvm.lifetime.end.p0(i64 8, ptr %raw) #9, !dbg !2176
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #9, !dbg !2176
  call void @llvm.lifetime.end.p0(i64 16, ptr %sigregion) #9, !dbg !2176
  call void @llvm.lifetime.end.p0(i64 16, ptr %remaining) #9, !dbg !2176
  call void @llvm.lifetime.end.p0(i64 64, ptr %source) #9, !dbg !2176
  call void @llvm.lifetime.end.p0(i64 2, ptr %trust) #9, !dbg !2176
  call void @llvm.lifetime.end.p0(i64 2, ptr %type) #9, !dbg !2176
  call void @llvm.lifetime.end.p0(i64 120, ptr %rclone) #9, !dbg !2176
  call void @llvm.lifetime.end.p0(i64 40, ptr %rdata) #9, !dbg !2176
  call void @llvm.lifetime.end.p0(i64 152, ptr %rrsig) #9, !dbg !2176
  call void @llvm.lifetime.end.p0(i64 80, ptr %tname) #9, !dbg !2176
  %129 = load i32, ptr %retval, align 4, !dbg !2176
  ret i32 %129, !dbg !2176
}

; Function Attrs: null_pointer_is_valid
declare !dbg !2177 void @dns_rdata_fromregion(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare !dbg !2180 i32 @dns_rdata_tostruct(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: nounwind null_pointer_is_valid uwtable
define void @dns_ncache_current(ptr noundef %ncacherdataset, ptr noundef %found, ptr noundef %rdataset) #0 !dbg !2183 {
entry:
  %ncacherdataset.addr = alloca ptr, align 8
  %found.addr = alloca ptr, align 8
  %rdataset.addr = alloca ptr, align 8
  %rdata = alloca %struct.dns_rdata, align 8
  %trust = alloca i16, align 2
  %remaining = alloca %struct.isc_region, align 8
  %sigregion = alloca %struct.isc_region, align 8
  %source = alloca %struct.isc_buffer, align 8
  %tname = alloca %struct.dns_name, align 8
  %type = alloca i16, align 2
  %count = alloca i32, align 4
  %rrsig = alloca %struct.dns_rdata_rrsig, align 8
  %raw = alloca ptr, align 8
  store ptr %ncacherdataset, ptr %ncacherdataset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %ncacherdataset.addr, metadata !2187, metadata !DIExpression()), !dbg !2200
  store ptr %found, ptr %found.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %found.addr, metadata !2188, metadata !DIExpression()), !dbg !2201
  store ptr %rdataset, ptr %rdataset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %rdataset.addr, metadata !2189, metadata !DIExpression()), !dbg !2202
  call void @llvm.lifetime.start.p0(i64 40, ptr %rdata) #9, !dbg !2203
  tail call void @llvm.dbg.declare(metadata ptr %rdata, metadata !2190, metadata !DIExpression()), !dbg !2204
  call void @llvm.memset.p0.i64(ptr align 8 %rdata, i8 0, i64 40, i1 false), !dbg !2204
  %0 = getelementptr inbounds %struct.dns_rdata, ptr %rdata, i32 0, i32 5, !dbg !2204
  %1 = getelementptr inbounds %struct.anon.4, ptr %0, i32 0, i32 0, !dbg !2204
  store ptr inttoptr (i64 -1 to ptr), ptr %1, align 8, !dbg !2204
  %2 = getelementptr inbounds %struct.anon.4, ptr %0, i32 0, i32 1, !dbg !2204
  store ptr inttoptr (i64 -1 to ptr), ptr %2, align 8, !dbg !2204
  call void @llvm.lifetime.start.p0(i64 2, ptr %trust) #9, !dbg !2205
  tail call void @llvm.dbg.declare(metadata ptr %trust, metadata !2191, metadata !DIExpression()), !dbg !2206
  call void @llvm.lifetime.start.p0(i64 16, ptr %remaining) #9, !dbg !2207
  tail call void @llvm.dbg.declare(metadata ptr %remaining, metadata !2192, metadata !DIExpression()), !dbg !2208
  call void @llvm.lifetime.start.p0(i64 16, ptr %sigregion) #9, !dbg !2207
  tail call void @llvm.dbg.declare(metadata ptr %sigregion, metadata !2193, metadata !DIExpression()), !dbg !2209
  call void @llvm.lifetime.start.p0(i64 64, ptr %source) #9, !dbg !2210
  tail call void @llvm.dbg.declare(metadata ptr %source, metadata !2194, metadata !DIExpression()), !dbg !2211
  call void @llvm.lifetime.start.p0(i64 80, ptr %tname) #9, !dbg !2212
  tail call void @llvm.dbg.declare(metadata ptr %tname, metadata !2195, metadata !DIExpression()), !dbg !2213
  call void @llvm.lifetime.start.p0(i64 2, ptr %type) #9, !dbg !2214
  tail call void @llvm.dbg.declare(metadata ptr %type, metadata !2196, metadata !DIExpression()), !dbg !2215
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #9, !dbg !2216
  tail call void @llvm.dbg.declare(metadata ptr %count, metadata !2197, metadata !DIExpression()), !dbg !2217
  call void @llvm.lifetime.start.p0(i64 152, ptr %rrsig) #9, !dbg !2218
  tail call void @llvm.dbg.declare(metadata ptr %rrsig, metadata !2198, metadata !DIExpression()), !dbg !2219
  call void @llvm.lifetime.start.p0(i64 8, ptr %raw) #9, !dbg !2220
  tail call void @llvm.dbg.declare(metadata ptr %raw, metadata !2199, metadata !DIExpression()), !dbg !2221
  %3 = load ptr, ptr %ncacherdataset.addr, align 8, !dbg !2222
  %cmp = icmp ne ptr %3, null, !dbg !2222
  %lnot = xor i1 %cmp, true, !dbg !2222
  %lnot1 = xor i1 %lnot, true, !dbg !2222
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2222
  %conv = sext i32 %lnot.ext to i64, !dbg !2222
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2222
  %tobool = icmp ne i64 %expval, 0, !dbg !2222
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !2222

lor.rhs:                                          ; preds = %entry
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 700, i32 noundef 0, ptr noundef @.str.16) #10, !dbg !2222
  unreachable, !dbg !2222

4:                                                ; No predecessors!
  br label %lor.end, !dbg !2222

lor.end:                                          ; preds = %4, %entry
  %5 = phi i1 [ true, %entry ], [ false, %4 ]
  %lor.ext = zext i1 %5 to i32, !dbg !2222
  %6 = load ptr, ptr %ncacherdataset.addr, align 8, !dbg !2223
  %type2 = getelementptr inbounds %struct.dns_rdataset, ptr %6, i32 0, i32 4, !dbg !2223
  %7 = load i16, ptr %type2, align 2, !dbg !2223
  %conv3 = zext i16 %7 to i32, !dbg !2223
  %cmp4 = icmp eq i32 %conv3, 0, !dbg !2223
  %lnot6 = xor i1 %cmp4, true, !dbg !2223
  %lnot8 = xor i1 %lnot6, true, !dbg !2223
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !2223
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !2223
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !2223
  %tobool12 = icmp ne i64 %expval11, 0, !dbg !2223
  br i1 %tobool12, label %lor.end14, label %lor.rhs13, !dbg !2223

lor.rhs13:                                        ; preds = %lor.end
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 701, i32 noundef 0, ptr noundef @.str.17) #10, !dbg !2223
  unreachable, !dbg !2223

8:                                                ; No predecessors!
  br label %lor.end14, !dbg !2223

lor.end14:                                        ; preds = %8, %lor.end
  %9 = phi i1 [ true, %lor.end ], [ false, %8 ]
  %lor.ext15 = zext i1 %9 to i32, !dbg !2223
  %10 = load ptr, ptr %ncacherdataset.addr, align 8, !dbg !2224
  %attributes = getelementptr inbounds %struct.dns_rdataset, ptr %10, i32 0, i32 9, !dbg !2224
  %11 = load i32, ptr %attributes, align 8, !dbg !2224
  %and = and i32 %11, 2097152, !dbg !2224
  %cmp16 = icmp ne i32 %and, 0, !dbg !2224
  %lnot18 = xor i1 %cmp16, true, !dbg !2224
  %lnot20 = xor i1 %lnot18, true, !dbg !2224
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !2224
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !2224
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 1), !dbg !2224
  %tobool24 = icmp ne i64 %expval23, 0, !dbg !2224
  br i1 %tobool24, label %lor.end26, label %lor.rhs25, !dbg !2224

lor.rhs25:                                        ; preds = %lor.end14
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 702, i32 noundef 0, ptr noundef @.str.18) #10, !dbg !2224
  unreachable, !dbg !2224

12:                                               ; No predecessors!
  br label %lor.end26, !dbg !2224

lor.end26:                                        ; preds = %12, %lor.end14
  %13 = phi i1 [ true, %lor.end14 ], [ false, %12 ]
  %lor.ext27 = zext i1 %13 to i32, !dbg !2224
  %14 = load ptr, ptr %found.addr, align 8, !dbg !2225
  %cmp28 = icmp ne ptr %14, null, !dbg !2225
  %lnot30 = xor i1 %cmp28, true, !dbg !2225
  %lnot32 = xor i1 %lnot30, true, !dbg !2225
  %lnot.ext33 = zext i1 %lnot32 to i32, !dbg !2225
  %conv34 = sext i32 %lnot.ext33 to i64, !dbg !2225
  %expval35 = call i64 @llvm.expect.i64(i64 %conv34, i64 1), !dbg !2225
  %tobool36 = icmp ne i64 %expval35, 0, !dbg !2225
  br i1 %tobool36, label %lor.end38, label %lor.rhs37, !dbg !2225

lor.rhs37:                                        ; preds = %lor.end26
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 703, i32 noundef 0, ptr noundef @.str.29) #10, !dbg !2225
  unreachable, !dbg !2225

15:                                               ; No predecessors!
  br label %lor.end38, !dbg !2225

lor.end38:                                        ; preds = %15, %lor.end26
  %16 = phi i1 [ true, %lor.end26 ], [ false, %15 ]
  %lor.ext39 = zext i1 %16 to i32, !dbg !2225
  %17 = load ptr, ptr %rdataset.addr, align 8, !dbg !2226
  %call = call zeroext i1 @dns_rdataset_isassociated(ptr noundef %17), !dbg !2226
  %lnot40 = xor i1 %call, true, !dbg !2226
  %lnot42 = xor i1 %lnot40, true, !dbg !2226
  %lnot44 = xor i1 %lnot42, true, !dbg !2226
  %lnot.ext45 = zext i1 %lnot44 to i32, !dbg !2226
  %conv46 = sext i32 %lnot.ext45 to i64, !dbg !2226
  %expval47 = call i64 @llvm.expect.i64(i64 %conv46, i64 1), !dbg !2226
  %tobool48 = icmp ne i64 %expval47, 0, !dbg !2226
  br i1 %tobool48, label %lor.end50, label %lor.rhs49, !dbg !2226

lor.rhs49:                                        ; preds = %lor.end38
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 704, i32 noundef 0, ptr noundef @.str.20) #10, !dbg !2226
  unreachable, !dbg !2226

18:                                               ; No predecessors!
  br label %lor.end50, !dbg !2226

lor.end50:                                        ; preds = %18, %lor.end38
  %19 = phi i1 [ true, %lor.end38 ], [ false, %18 ]
  %lor.ext51 = zext i1 %19 to i32, !dbg !2226
  %20 = load ptr, ptr %ncacherdataset.addr, align 8, !dbg !2227
  call void @dns_rdataset_current(ptr noundef %20, ptr noundef %rdata), !dbg !2228
  br label %do.body, !dbg !2229

do.body:                                          ; preds = %lor.end50
  %data = getelementptr inbounds %struct.dns_rdata, ptr %rdata, i32 0, i32 0, !dbg !2230
  %21 = load ptr, ptr %data, align 8, !dbg !2230
  %base = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 1, !dbg !2230
  store ptr %21, ptr %base, align 8, !dbg !2230
  %length = getelementptr inbounds %struct.dns_rdata, ptr %rdata, i32 0, i32 1, !dbg !2230
  %22 = load i32, ptr %length, align 8, !dbg !2230
  %length52 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 2, !dbg !2230
  store i32 %22, ptr %length52, align 8, !dbg !2230
  %used = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 3, !dbg !2230
  store i32 0, ptr %used, align 4, !dbg !2230
  %current = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 4, !dbg !2230
  store i32 0, ptr %current, align 8, !dbg !2230
  %active = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 5, !dbg !2230
  store i32 0, ptr %active, align 4, !dbg !2230
  %mctx = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 7, !dbg !2230
  store ptr null, ptr %mctx, align 8, !dbg !2230
  br label %do.body53, !dbg !2230

do.body53:                                        ; preds = %do.body
  %link = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 6, !dbg !2232
  %prev = getelementptr inbounds %struct.anon.5, ptr %link, i32 0, i32 0, !dbg !2232
  store ptr inttoptr (i64 -1 to ptr), ptr %prev, align 8, !dbg !2232
  %link54 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 6, !dbg !2232
  %next = getelementptr inbounds %struct.anon.5, ptr %link54, i32 0, i32 1, !dbg !2232
  store ptr inttoptr (i64 -1 to ptr), ptr %next, align 8, !dbg !2232
  br label %do.cond, !dbg !2232

do.cond:                                          ; preds = %do.body53
  br label %do.end, !dbg !2232

do.end:                                           ; preds = %do.cond
  %magic = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 0, !dbg !2230
  store i32 1114990113, ptr %magic, align 8, !dbg !2230
  %autore = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 8, !dbg !2230
  store i8 0, ptr %autore, align 8, !dbg !2230
  br label %do.cond55, !dbg !2230

do.cond55:                                        ; preds = %do.end
  br label %do.end56, !dbg !2230

do.end56:                                         ; preds = %do.cond55
  br label %do.body57, !dbg !2234

do.body57:                                        ; preds = %do.end56
  %length58 = getelementptr inbounds %struct.dns_rdata, ptr %rdata, i32 0, i32 1, !dbg !2235
  %23 = load i32, ptr %length58, align 8, !dbg !2235
  %used59 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 3, !dbg !2235
  %24 = load i32, ptr %used59, align 4, !dbg !2235
  %add = add i32 %24, %23, !dbg !2235
  store i32 %add, ptr %used59, align 4, !dbg !2235
  br label %do.cond60, !dbg !2235

do.cond60:                                        ; preds = %do.body57
  br label %do.end61, !dbg !2235

do.end61:                                         ; preds = %do.cond60
  call void @dns_name_init(ptr noundef %tname, ptr noundef null), !dbg !2237
  br label %do.body62, !dbg !2238

do.body62:                                        ; preds = %do.end61
  %base63 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 1, !dbg !2239
  %25 = load ptr, ptr %base63, align 8, !dbg !2239
  %current64 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 4, !dbg !2239
  %26 = load i32, ptr %current64, align 8, !dbg !2239
  %idx.ext = zext i32 %26 to i64, !dbg !2239
  %add.ptr = getelementptr inbounds i8, ptr %25, i64 %idx.ext, !dbg !2239
  %base65 = getelementptr inbounds %struct.isc_region, ptr %remaining, i32 0, i32 0, !dbg !2239
  store ptr %add.ptr, ptr %base65, align 8, !dbg !2239
  %used66 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 3, !dbg !2239
  %27 = load i32, ptr %used66, align 4, !dbg !2239
  %current67 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 4, !dbg !2239
  %28 = load i32, ptr %current67, align 8, !dbg !2239
  %sub = sub i32 %27, %28, !dbg !2239
  %length68 = getelementptr inbounds %struct.isc_region, ptr %remaining, i32 0, i32 1, !dbg !2239
  store i32 %sub, ptr %length68, align 8, !dbg !2239
  br label %do.cond69, !dbg !2239

do.cond69:                                        ; preds = %do.body62
  br label %do.end70, !dbg !2239

do.end70:                                         ; preds = %do.cond69
  %29 = load ptr, ptr %found.addr, align 8, !dbg !2241
  call void @dns_name_fromregion(ptr noundef %29, ptr noundef %remaining), !dbg !2242
  %length71 = getelementptr inbounds %struct.isc_region, ptr %remaining, i32 0, i32 1, !dbg !2243
  %30 = load i32, ptr %length71, align 8, !dbg !2243
  %31 = load ptr, ptr %found.addr, align 8, !dbg !2243
  %length72 = getelementptr inbounds %struct.dns_name, ptr %31, i32 0, i32 2, !dbg !2243
  %32 = load i32, ptr %length72, align 8, !dbg !2243
  %cmp73 = icmp uge i32 %30, %32, !dbg !2243
  %lnot75 = xor i1 %cmp73, true, !dbg !2243
  %lnot77 = xor i1 %lnot75, true, !dbg !2243
  %lnot.ext78 = zext i1 %lnot77 to i32, !dbg !2243
  %conv79 = sext i32 %lnot.ext78 to i64, !dbg !2243
  %expval80 = call i64 @llvm.expect.i64(i64 %conv79, i64 1), !dbg !2243
  %tobool81 = icmp ne i64 %expval80, 0, !dbg !2243
  br i1 %tobool81, label %lor.end83, label %lor.rhs82, !dbg !2243

lor.rhs82:                                        ; preds = %do.end70
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 713, i32 noundef 2, ptr noundef @.str.30) #10, !dbg !2243
  unreachable, !dbg !2243

33:                                               ; No predecessors!
  br label %lor.end83, !dbg !2243

lor.end83:                                        ; preds = %33, %do.end70
  %34 = phi i1 [ true, %do.end70 ], [ false, %33 ]
  %lor.ext84 = zext i1 %34 to i32, !dbg !2243
  br label %do.body85, !dbg !2244

do.body85:                                        ; preds = %lor.end83
  %35 = load ptr, ptr %found.addr, align 8, !dbg !2245
  %length86 = getelementptr inbounds %struct.dns_name, ptr %35, i32 0, i32 2, !dbg !2245
  %36 = load i32, ptr %length86, align 8, !dbg !2245
  %current87 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 4, !dbg !2245
  %37 = load i32, ptr %current87, align 8, !dbg !2245
  %add88 = add i32 %37, %36, !dbg !2245
  store i32 %add88, ptr %current87, align 8, !dbg !2245
  br label %do.cond89, !dbg !2245

do.cond89:                                        ; preds = %do.body85
  br label %do.end90, !dbg !2245

do.end90:                                         ; preds = %do.cond89
  %38 = load ptr, ptr %found.addr, align 8, !dbg !2247
  %length91 = getelementptr inbounds %struct.dns_name, ptr %38, i32 0, i32 2, !dbg !2248
  %39 = load i32, ptr %length91, align 8, !dbg !2248
  %length92 = getelementptr inbounds %struct.isc_region, ptr %remaining, i32 0, i32 1, !dbg !2249
  %40 = load i32, ptr %length92, align 8, !dbg !2250
  %sub93 = sub i32 %40, %39, !dbg !2250
  store i32 %sub93, ptr %length92, align 8, !dbg !2250
  %length94 = getelementptr inbounds %struct.isc_region, ptr %remaining, i32 0, i32 1, !dbg !2251
  %41 = load i32, ptr %length94, align 8, !dbg !2251
  %cmp95 = icmp uge i32 %41, 5, !dbg !2251
  %lnot97 = xor i1 %cmp95, true, !dbg !2251
  %lnot99 = xor i1 %lnot97, true, !dbg !2251
  %lnot.ext100 = zext i1 %lnot99 to i32, !dbg !2251
  %conv101 = sext i32 %lnot.ext100 to i64, !dbg !2251
  %expval102 = call i64 @llvm.expect.i64(i64 %conv101, i64 1), !dbg !2251
  %tobool103 = icmp ne i64 %expval102, 0, !dbg !2251
  br i1 %tobool103, label %lor.end105, label %lor.rhs104, !dbg !2251

lor.rhs104:                                       ; preds = %do.end90
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 717, i32 noundef 2, ptr noundef @.str.5) #10, !dbg !2251
  unreachable, !dbg !2251

42:                                               ; No predecessors!
  br label %lor.end105, !dbg !2251

lor.end105:                                       ; preds = %42, %do.end90
  %43 = phi i1 [ true, %do.end90 ], [ false, %42 ]
  %lor.ext106 = zext i1 %43 to i32, !dbg !2251
  %call107 = call zeroext i16 @isc_buffer_getuint16(ptr noundef %source), !dbg !2252
  store i16 %call107, ptr %type, align 2, !dbg !2253
  %call108 = call zeroext i8 @isc_buffer_getuint8(ptr noundef %source), !dbg !2254
  %conv109 = zext i8 %call108 to i16, !dbg !2254
  store i16 %conv109, ptr %trust, align 2, !dbg !2255
  %44 = load i16, ptr %trust, align 2, !dbg !2256
  %conv110 = zext i16 %44 to i32, !dbg !2256
  %cmp111 = icmp sle i32 %conv110, 9, !dbg !2256
  %lnot113 = xor i1 %cmp111, true, !dbg !2256
  %lnot115 = xor i1 %lnot113, true, !dbg !2256
  %lnot.ext116 = zext i1 %lnot115 to i32, !dbg !2256
  %conv117 = sext i32 %lnot.ext116 to i64, !dbg !2256
  %expval118 = call i64 @llvm.expect.i64(i64 %conv117, i64 1), !dbg !2256
  %tobool119 = icmp ne i64 %expval118, 0, !dbg !2256
  br i1 %tobool119, label %lor.end121, label %lor.rhs120, !dbg !2256

lor.rhs120:                                       ; preds = %lor.end105
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 720, i32 noundef 2, ptr noundef @.str.24) #10, !dbg !2256
  unreachable, !dbg !2256

45:                                               ; No predecessors!
  br label %lor.end121, !dbg !2256

lor.end121:                                       ; preds = %45, %lor.end105
  %46 = phi i1 [ true, %lor.end105 ], [ false, %45 ]
  %lor.ext122 = zext i1 %46 to i32, !dbg !2256
  br label %do.body123, !dbg !2257

do.body123:                                       ; preds = %lor.end121
  %base124 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 1, !dbg !2258
  %47 = load ptr, ptr %base124, align 8, !dbg !2258
  %current125 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 4, !dbg !2258
  %48 = load i32, ptr %current125, align 8, !dbg !2258
  %idx.ext126 = zext i32 %48 to i64, !dbg !2258
  %add.ptr127 = getelementptr inbounds i8, ptr %47, i64 %idx.ext126, !dbg !2258
  %base128 = getelementptr inbounds %struct.isc_region, ptr %remaining, i32 0, i32 0, !dbg !2258
  store ptr %add.ptr127, ptr %base128, align 8, !dbg !2258
  %used129 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 3, !dbg !2258
  %49 = load i32, ptr %used129, align 4, !dbg !2258
  %current130 = getelementptr inbounds %struct.isc_buffer, ptr %source, i32 0, i32 4, !dbg !2258
  %50 = load i32, ptr %current130, align 8, !dbg !2258
  %sub131 = sub i32 %49, %50, !dbg !2258
  %length132 = getelementptr inbounds %struct.isc_region, ptr %remaining, i32 0, i32 1, !dbg !2258
  store i32 %sub131, ptr %length132, align 8, !dbg !2258
  br label %do.cond133, !dbg !2258

do.cond133:                                       ; preds = %do.body123
  br label %do.end134, !dbg !2258

do.end134:                                        ; preds = %do.cond133
  %51 = load ptr, ptr %rdataset.addr, align 8, !dbg !2260
  %methods = getelementptr inbounds %struct.dns_rdataset, ptr %51, i32 0, i32 1, !dbg !2261
  store ptr @rdataset_methods, ptr %methods, align 8, !dbg !2262
  %52 = load ptr, ptr %ncacherdataset.addr, align 8, !dbg !2263
  %rdclass = getelementptr inbounds %struct.dns_rdataset, ptr %52, i32 0, i32 3, !dbg !2264
  %53 = load i16, ptr %rdclass, align 8, !dbg !2264
  %54 = load ptr, ptr %rdataset.addr, align 8, !dbg !2265
  %rdclass135 = getelementptr inbounds %struct.dns_rdataset, ptr %54, i32 0, i32 3, !dbg !2266
  store i16 %53, ptr %rdclass135, align 8, !dbg !2267
  %55 = load i16, ptr %type, align 2, !dbg !2268
  %56 = load ptr, ptr %rdataset.addr, align 8, !dbg !2269
  %type136 = getelementptr inbounds %struct.dns_rdataset, ptr %56, i32 0, i32 4, !dbg !2270
  store i16 %55, ptr %type136, align 2, !dbg !2271
  %57 = load i16, ptr %type, align 2, !dbg !2272
  %conv137 = zext i16 %57 to i32, !dbg !2272
  %cmp138 = icmp eq i32 %conv137, 46, !dbg !2274
  br i1 %cmp138, label %if.then, label %if.else, !dbg !2275

if.then:                                          ; preds = %do.end134
  %base140 = getelementptr inbounds %struct.isc_region, ptr %remaining, i32 0, i32 0, !dbg !2276
  %58 = load ptr, ptr %base140, align 8, !dbg !2276
  store ptr %58, ptr %raw, align 8, !dbg !2278
  %59 = load ptr, ptr %raw, align 8, !dbg !2279
  %arrayidx = getelementptr inbounds i8, ptr %59, i64 0, !dbg !2279
  %60 = load i8, ptr %arrayidx, align 1, !dbg !2279
  %conv141 = zext i8 %60 to i32, !dbg !2279
  %mul = mul nsw i32 %conv141, 256, !dbg !2280
  %61 = load ptr, ptr %raw, align 8, !dbg !2281
  %arrayidx142 = getelementptr inbounds i8, ptr %61, i64 1, !dbg !2281
  %62 = load i8, ptr %arrayidx142, align 1, !dbg !2281
  %conv143 = zext i8 %62 to i32, !dbg !2281
  %add144 = add nsw i32 %mul, %conv143, !dbg !2282
  store i32 %add144, ptr %count, align 4, !dbg !2283
  %63 = load i32, ptr %count, align 4, !dbg !2284
  %cmp145 = icmp ugt i32 %63, 0, !dbg !2284
  %lnot147 = xor i1 %cmp145, true, !dbg !2284
  %lnot149 = xor i1 %lnot147, true, !dbg !2284
  %lnot.ext150 = zext i1 %lnot149 to i32, !dbg !2284
  %conv151 = sext i32 %lnot.ext150 to i64, !dbg !2284
  %expval152 = call i64 @llvm.expect.i64(i64 %conv151, i64 1), !dbg !2284
  %tobool153 = icmp ne i64 %expval152, 0, !dbg !2284
  br i1 %tobool153, label %lor.end155, label %lor.rhs154, !dbg !2284

lor.rhs154:                                       ; preds = %if.then
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 732, i32 noundef 2, ptr noundef @.str.28) #10, !dbg !2284
  unreachable, !dbg !2284

64:                                               ; No predecessors!
  br label %lor.end155, !dbg !2284

lor.end155:                                       ; preds = %64, %if.then
  %65 = phi i1 [ true, %if.then ], [ false, %64 ]
  %lor.ext156 = zext i1 %65 to i32, !dbg !2284
  %66 = load ptr, ptr %raw, align 8, !dbg !2285
  %add.ptr157 = getelementptr inbounds i8, ptr %66, i64 2, !dbg !2285
  store ptr %add.ptr157, ptr %raw, align 8, !dbg !2285
  %67 = load ptr, ptr %raw, align 8, !dbg !2286
  %arrayidx158 = getelementptr inbounds i8, ptr %67, i64 0, !dbg !2286
  %68 = load i8, ptr %arrayidx158, align 1, !dbg !2286
  %conv159 = zext i8 %68 to i32, !dbg !2286
  %mul160 = mul nsw i32 %conv159, 256, !dbg !2287
  %69 = load ptr, ptr %raw, align 8, !dbg !2288
  %arrayidx161 = getelementptr inbounds i8, ptr %69, i64 1, !dbg !2288
  %70 = load i8, ptr %arrayidx161, align 1, !dbg !2288
  %conv162 = zext i8 %70 to i32, !dbg !2288
  %add163 = add nsw i32 %mul160, %conv162, !dbg !2289
  %length164 = getelementptr inbounds %struct.isc_region, ptr %sigregion, i32 0, i32 1, !dbg !2290
  store i32 %add163, ptr %length164, align 8, !dbg !2291
  %71 = load ptr, ptr %raw, align 8, !dbg !2292
  %add.ptr165 = getelementptr inbounds i8, ptr %71, i64 2, !dbg !2292
  store ptr %add.ptr165, ptr %raw, align 8, !dbg !2292
  %72 = load ptr, ptr %raw, align 8, !dbg !2293
  %base166 = getelementptr inbounds %struct.isc_region, ptr %sigregion, i32 0, i32 0, !dbg !2294
  store ptr %72, ptr %base166, align 8, !dbg !2295
  call void @dns_rdata_reset(ptr noundef %rdata), !dbg !2296
  %73 = load ptr, ptr %rdataset.addr, align 8, !dbg !2297
  %rdclass167 = getelementptr inbounds %struct.dns_rdataset, ptr %73, i32 0, i32 3, !dbg !2298
  %74 = load i16, ptr %rdclass167, align 8, !dbg !2298
  %75 = load ptr, ptr %rdataset.addr, align 8, !dbg !2299
  %type168 = getelementptr inbounds %struct.dns_rdataset, ptr %75, i32 0, i32 4, !dbg !2300
  %76 = load i16, ptr %type168, align 2, !dbg !2300
  call void @dns_rdata_fromregion(ptr noundef %rdata, i16 noundef zeroext %74, i16 noundef zeroext %76, ptr noundef %sigregion), !dbg !2301
  %call169 = call i32 @dns_rdata_tostruct(ptr noundef %rdata, ptr noundef %rrsig, ptr noundef null), !dbg !2302
  %covered = getelementptr inbounds %struct.dns_rdata_rrsig, ptr %rrsig, i32 0, i32 2, !dbg !2303
  %77 = load i16, ptr %covered, align 8, !dbg !2303
  %78 = load ptr, ptr %rdataset.addr, align 8, !dbg !2304
  %covers = getelementptr inbounds %struct.dns_rdataset, ptr %78, i32 0, i32 8, !dbg !2305
  store i16 %77, ptr %covers, align 2, !dbg !2306
  br label %if.end, !dbg !2307

if.else:                                          ; preds = %do.end134
  %79 = load ptr, ptr %rdataset.addr, align 8, !dbg !2308
  %covers170 = getelementptr inbounds %struct.dns_rdataset, ptr %79, i32 0, i32 8, !dbg !2309
  store i16 0, ptr %covers170, align 2, !dbg !2310
  br label %if.end

if.end:                                           ; preds = %if.else, %lor.end155
  %80 = load ptr, ptr %ncacherdataset.addr, align 8, !dbg !2311
  %ttl = getelementptr inbounds %struct.dns_rdataset, ptr %80, i32 0, i32 5, !dbg !2312
  %81 = load i32, ptr %ttl, align 4, !dbg !2312
  %82 = load ptr, ptr %rdataset.addr, align 8, !dbg !2313
  %ttl171 = getelementptr inbounds %struct.dns_rdataset, ptr %82, i32 0, i32 5, !dbg !2314
  store i32 %81, ptr %ttl171, align 4, !dbg !2315
  %83 = load i16, ptr %trust, align 2, !dbg !2316
  %84 = load ptr, ptr %rdataset.addr, align 8, !dbg !2317
  %trust172 = getelementptr inbounds %struct.dns_rdataset, ptr %84, i32 0, i32 7, !dbg !2318
  store i16 %83, ptr %trust172, align 4, !dbg !2319
  %85 = load ptr, ptr %rdataset.addr, align 8, !dbg !2320
  %private1 = getelementptr inbounds %struct.dns_rdataset, ptr %85, i32 0, i32 12, !dbg !2321
  store ptr null, ptr %private1, align 8, !dbg !2322
  %86 = load ptr, ptr %rdataset.addr, align 8, !dbg !2323
  %private2 = getelementptr inbounds %struct.dns_rdataset, ptr %86, i32 0, i32 13, !dbg !2324
  store ptr null, ptr %private2, align 8, !dbg !2325
  %base173 = getelementptr inbounds %struct.isc_region, ptr %remaining, i32 0, i32 0, !dbg !2326
  %87 = load ptr, ptr %base173, align 8, !dbg !2326
  %88 = load ptr, ptr %rdataset.addr, align 8, !dbg !2327
  %private3 = getelementptr inbounds %struct.dns_rdataset, ptr %88, i32 0, i32 14, !dbg !2328
  store ptr %87, ptr %private3, align 8, !dbg !2329
  %89 = load ptr, ptr %rdataset.addr, align 8, !dbg !2330
  %privateuint4 = getelementptr inbounds %struct.dns_rdataset, ptr %89, i32 0, i32 15, !dbg !2331
  store i32 0, ptr %privateuint4, align 8, !dbg !2332
  %90 = load ptr, ptr %rdataset.addr, align 8, !dbg !2333
  %private5 = getelementptr inbounds %struct.dns_rdataset, ptr %90, i32 0, i32 16, !dbg !2334
  store ptr null, ptr %private5, align 8, !dbg !2335
  %91 = load ptr, ptr %rdataset.addr, align 8, !dbg !2336
  %private6 = getelementptr inbounds %struct.dns_rdataset, ptr %91, i32 0, i32 17, !dbg !2337
  store ptr null, ptr %private6, align 8, !dbg !2338
  call void @llvm.lifetime.end.p0(i64 8, ptr %raw) #9, !dbg !2339
  call void @llvm.lifetime.end.p0(i64 152, ptr %rrsig) #9, !dbg !2339
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #9, !dbg !2339
  call void @llvm.lifetime.end.p0(i64 2, ptr %type) #9, !dbg !2339
  call void @llvm.lifetime.end.p0(i64 80, ptr %tname) #9, !dbg !2339
  call void @llvm.lifetime.end.p0(i64 64, ptr %source) #9, !dbg !2339
  call void @llvm.lifetime.end.p0(i64 16, ptr %sigregion) #9, !dbg !2339
  call void @llvm.lifetime.end.p0(i64 16, ptr %remaining) #9, !dbg !2339
  call void @llvm.lifetime.end.p0(i64 2, ptr %trust) #9, !dbg !2339
  call void @llvm.lifetime.end.p0(i64 40, ptr %rdata) #9, !dbg !2339
  ret void, !dbg !2339
}

; Function Attrs: null_pointer_is_valid
declare !dbg !2340 void @dns_rdatalist_init(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare !dbg !2343 zeroext i16 @dns_db_class(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare !dbg !2346 i32 @dns_message_firstname(ptr noundef, i32 noundef) #6

; Function Attrs: null_pointer_is_valid
declare !dbg !2350 void @dns_message_currentname(ptr noundef, i32 noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare !dbg !2354 void @dns_name_toregion(ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare !dbg !2357 i32 @isc_buffer_copyregion(ptr noundef, ptr noundef) #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid uwtable
define internal i32 @copy_rdataset(ptr noundef %rdataset, ptr noundef %buffer) #7 !dbg !2360 {
entry:
  %retval = alloca i32, align 4
  %rdataset.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %count = alloca i32, align 4
  %ar = alloca %struct.isc_region, align 8
  %r = alloca %struct.isc_region, align 8
  %rdata = alloca %struct.dns_rdata, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %_cp = alloca ptr, align 8
  %_val2 = alloca i16, align 2
  %_tmp = alloca ptr, align 8
  %_cp92 = alloca ptr, align 8
  %_val293 = alloca i16, align 2
  %_tmp106 = alloca ptr, align 8
  store ptr %rdataset, ptr %rdataset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %rdataset.addr, metadata !2364, metadata !DIExpression()), !dbg !2384
  store ptr %buffer, ptr %buffer.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !2365, metadata !DIExpression()), !dbg !2385
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #9, !dbg !2386
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !2366, metadata !DIExpression()), !dbg !2387
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #9, !dbg !2388
  tail call void @llvm.dbg.declare(metadata ptr %count, metadata !2367, metadata !DIExpression()), !dbg !2389
  call void @llvm.lifetime.start.p0(i64 16, ptr %ar) #9, !dbg !2390
  tail call void @llvm.dbg.declare(metadata ptr %ar, metadata !2368, metadata !DIExpression()), !dbg !2391
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #9, !dbg !2390
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !2369, metadata !DIExpression()), !dbg !2392
  call void @llvm.lifetime.start.p0(i64 40, ptr %rdata) #9, !dbg !2393
  tail call void @llvm.dbg.declare(metadata ptr %rdata, metadata !2370, metadata !DIExpression()), !dbg !2394
  call void @llvm.memset.p0.i64(ptr align 8 %rdata, i8 0, i64 40, i1 false), !dbg !2394
  %0 = getelementptr inbounds %struct.dns_rdata, ptr %rdata, i32 0, i32 5, !dbg !2394
  %1 = getelementptr inbounds %struct.anon.4, ptr %0, i32 0, i32 0, !dbg !2394
  store ptr inttoptr (i64 -1 to ptr), ptr %1, align 8, !dbg !2394
  %2 = getelementptr inbounds %struct.anon.4, ptr %0, i32 0, i32 1, !dbg !2394
  store ptr inttoptr (i64 -1 to ptr), ptr %2, align 8, !dbg !2394
  br label %do.body, !dbg !2395

do.body:                                          ; preds = %entry
  %3 = load ptr, ptr %buffer.addr, align 8, !dbg !2396
  %base = getelementptr inbounds %struct.isc_buffer, ptr %3, i32 0, i32 1, !dbg !2396
  %4 = load ptr, ptr %base, align 8, !dbg !2396
  %5 = load ptr, ptr %buffer.addr, align 8, !dbg !2396
  %used = getelementptr inbounds %struct.isc_buffer, ptr %5, i32 0, i32 3, !dbg !2396
  %6 = load i32, ptr %used, align 4, !dbg !2396
  %idx.ext = zext i32 %6 to i64, !dbg !2396
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %idx.ext, !dbg !2396
  %base1 = getelementptr inbounds %struct.isc_region, ptr %ar, i32 0, i32 0, !dbg !2396
  store ptr %add.ptr, ptr %base1, align 8, !dbg !2396
  %7 = load ptr, ptr %buffer.addr, align 8, !dbg !2396
  %length = getelementptr inbounds %struct.isc_buffer, ptr %7, i32 0, i32 2, !dbg !2396
  %8 = load i32, ptr %length, align 8, !dbg !2396
  %9 = load ptr, ptr %buffer.addr, align 8, !dbg !2396
  %used2 = getelementptr inbounds %struct.isc_buffer, ptr %9, i32 0, i32 3, !dbg !2396
  %10 = load i32, ptr %used2, align 4, !dbg !2396
  %sub = sub i32 %8, %10, !dbg !2396
  %length3 = getelementptr inbounds %struct.isc_region, ptr %ar, i32 0, i32 1, !dbg !2396
  store i32 %sub, ptr %length3, align 8, !dbg !2396
  br label %do.cond, !dbg !2396

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2396

do.end:                                           ; preds = %do.cond
  %length4 = getelementptr inbounds %struct.isc_region, ptr %ar, i32 0, i32 1, !dbg !2398
  %11 = load i32, ptr %length4, align 8, !dbg !2398
  %cmp = icmp ult i32 %11, 2, !dbg !2400
  br i1 %cmp, label %if.then, label %if.end, !dbg !2401

if.then:                                          ; preds = %do.end
  store i32 19, ptr %retval, align 4, !dbg !2402
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2402

if.end:                                           ; preds = %do.end
  %12 = load ptr, ptr %rdataset.addr, align 8, !dbg !2403
  %call = call i32 @dns_rdataset_count(ptr noundef %12), !dbg !2404
  store i32 %call, ptr %count, align 4, !dbg !2405
  %13 = load i32, ptr %count, align 4, !dbg !2406
  %cmp5 = icmp ule i32 %13, 65535, !dbg !2406
  %lnot = xor i1 %cmp5, true, !dbg !2406
  %lnot6 = xor i1 %lnot, true, !dbg !2406
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !2406
  %conv = sext i32 %lnot.ext to i64, !dbg !2406
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2406
  %tobool = icmp ne i64 %expval, 0, !dbg !2406
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !2406

lor.rhs:                                          ; preds = %if.end
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 67, i32 noundef 2, ptr noundef @.str.37) #10, !dbg !2406
  unreachable, !dbg !2406

14:                                               ; No predecessors!
  br label %lor.end, !dbg !2406

lor.end:                                          ; preds = %14, %if.end
  %15 = phi i1 [ true, %if.end ], [ false, %14 ]
  %lor.ext = zext i1 %15 to i32, !dbg !2406
  br label %do.body7, !dbg !2407

do.body7:                                         ; preds = %lor.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %_cp) #9, !dbg !2408
  tail call void @llvm.dbg.declare(metadata ptr %_cp, metadata !2371, metadata !DIExpression()), !dbg !2408
  call void @llvm.lifetime.start.p0(i64 2, ptr %_val2) #9, !dbg !2408
  tail call void @llvm.dbg.declare(metadata ptr %_val2, metadata !2373, metadata !DIExpression()), !dbg !2408
  %16 = load i32, ptr %count, align 4, !dbg !2408
  %conv8 = trunc i32 %16 to i16, !dbg !2408
  store i16 %conv8, ptr %_val2, align 2, !dbg !2408
  %17 = load ptr, ptr %buffer.addr, align 8, !dbg !2409
  %autore = getelementptr inbounds %struct.isc_buffer, ptr %17, i32 0, i32 8, !dbg !2409
  %18 = load i8, ptr %autore, align 8, !dbg !2409, !range !1313, !noundef !1314
  %tobool9 = trunc i8 %18 to i1, !dbg !2409
  %lnot10 = xor i1 %tobool9, true, !dbg !2409
  %lnot12 = xor i1 %lnot10, true, !dbg !2409
  %lnot.ext13 = zext i1 %lnot12 to i32, !dbg !2409
  %conv14 = sext i32 %lnot.ext13 to i64, !dbg !2409
  %expval15 = call i64 @llvm.expect.i64(i64 %conv14, i64 0), !dbg !2409
  %tobool16 = icmp ne i64 %expval15, 0, !dbg !2409
  br i1 %tobool16, label %if.then17, label %if.end31, !dbg !2408

if.then17:                                        ; preds = %do.body7
  call void @llvm.lifetime.start.p0(i64 8, ptr %_tmp) #9, !dbg !2410
  tail call void @llvm.dbg.declare(metadata ptr %_tmp, metadata !2374, metadata !DIExpression()), !dbg !2410
  %19 = load ptr, ptr %buffer.addr, align 8, !dbg !2410
  store ptr %19, ptr %_tmp, align 8, !dbg !2410
  %call18 = call i32 @isc_buffer_reserve(ptr noundef %_tmp, i32 noundef 2), !dbg !2410
  %cmp19 = icmp eq i32 %call18, 0, !dbg !2410
  %lnot21 = xor i1 %cmp19, true, !dbg !2410
  %lnot23 = xor i1 %lnot21, true, !dbg !2410
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !2410
  %conv25 = sext i32 %lnot.ext24 to i64, !dbg !2410
  %expval26 = call i64 @llvm.expect.i64(i64 %conv25, i64 1), !dbg !2410
  %tobool27 = icmp ne i64 %expval26, 0, !dbg !2410
  br i1 %tobool27, label %lor.end29, label %lor.rhs28, !dbg !2410

lor.rhs28:                                        ; preds = %if.then17
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 68, i32 noundef 0, ptr noundef @.str.8) #10, !dbg !2410
  unreachable, !dbg !2410

20:                                               ; No predecessors!
  br label %lor.end29, !dbg !2410

lor.end29:                                        ; preds = %20, %if.then17
  %21 = phi i1 [ true, %if.then17 ], [ false, %20 ]
  %lor.ext30 = zext i1 %21 to i32, !dbg !2410
  call void @llvm.lifetime.end.p0(i64 8, ptr %_tmp) #9, !dbg !2409
  br label %if.end31, !dbg !2410

if.end31:                                         ; preds = %lor.end29, %do.body7
  %22 = load ptr, ptr %buffer.addr, align 8, !dbg !2408
  %length32 = getelementptr inbounds %struct.isc_buffer, ptr %22, i32 0, i32 2, !dbg !2408
  %23 = load i32, ptr %length32, align 8, !dbg !2408
  %24 = load ptr, ptr %buffer.addr, align 8, !dbg !2408
  %used33 = getelementptr inbounds %struct.isc_buffer, ptr %24, i32 0, i32 3, !dbg !2408
  %25 = load i32, ptr %used33, align 4, !dbg !2408
  %sub34 = sub i32 %23, %25, !dbg !2408
  %cmp35 = icmp uge i32 %sub34, 2, !dbg !2408
  %lnot37 = xor i1 %cmp35, true, !dbg !2408
  %lnot39 = xor i1 %lnot37, true, !dbg !2408
  %lnot.ext40 = zext i1 %lnot39 to i32, !dbg !2408
  %conv41 = sext i32 %lnot.ext40 to i64, !dbg !2408
  %expval42 = call i64 @llvm.expect.i64(i64 %conv41, i64 1), !dbg !2408
  %tobool43 = icmp ne i64 %expval42, 0, !dbg !2408
  br i1 %tobool43, label %lor.end45, label %lor.rhs44, !dbg !2408

lor.rhs44:                                        ; preds = %if.end31
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 68, i32 noundef 0, ptr noundef @.str.38) #10, !dbg !2408
  unreachable, !dbg !2408

26:                                               ; No predecessors!
  br label %lor.end45, !dbg !2408

lor.end45:                                        ; preds = %26, %if.end31
  %27 = phi i1 [ true, %if.end31 ], [ false, %26 ]
  %lor.ext46 = zext i1 %27 to i32, !dbg !2408
  %28 = load ptr, ptr %buffer.addr, align 8, !dbg !2408
  %base47 = getelementptr inbounds %struct.isc_buffer, ptr %28, i32 0, i32 1, !dbg !2408
  %29 = load ptr, ptr %base47, align 8, !dbg !2408
  %30 = load ptr, ptr %buffer.addr, align 8, !dbg !2408
  %used48 = getelementptr inbounds %struct.isc_buffer, ptr %30, i32 0, i32 3, !dbg !2408
  %31 = load i32, ptr %used48, align 4, !dbg !2408
  %idx.ext49 = zext i32 %31 to i64, !dbg !2408
  %add.ptr50 = getelementptr inbounds i8, ptr %29, i64 %idx.ext49, !dbg !2408
  store ptr %add.ptr50, ptr %_cp, align 8, !dbg !2408
  %32 = load ptr, ptr %buffer.addr, align 8, !dbg !2408
  %used51 = getelementptr inbounds %struct.isc_buffer, ptr %32, i32 0, i32 3, !dbg !2408
  %33 = load i32, ptr %used51, align 4, !dbg !2408
  %add = add i32 %33, 2, !dbg !2408
  store i32 %add, ptr %used51, align 4, !dbg !2408
  %34 = load i16, ptr %_val2, align 2, !dbg !2408
  %conv52 = zext i16 %34 to i32, !dbg !2408
  %shr = ashr i32 %conv52, 8, !dbg !2408
  %conv53 = trunc i32 %shr to i8, !dbg !2408
  %35 = load ptr, ptr %_cp, align 8, !dbg !2408
  %arrayidx = getelementptr inbounds i8, ptr %35, i64 0, !dbg !2408
  store i8 %conv53, ptr %arrayidx, align 1, !dbg !2408
  %36 = load i16, ptr %_val2, align 2, !dbg !2408
  %conv54 = trunc i16 %36 to i8, !dbg !2408
  %37 = load ptr, ptr %_cp, align 8, !dbg !2408
  %arrayidx55 = getelementptr inbounds i8, ptr %37, i64 1, !dbg !2408
  store i8 %conv54, ptr %arrayidx55, align 1, !dbg !2408
  call void @llvm.lifetime.end.p0(i64 2, ptr %_val2) #9, !dbg !2407
  call void @llvm.lifetime.end.p0(i64 8, ptr %_cp) #9, !dbg !2407
  br label %do.cond56, !dbg !2408

do.cond56:                                        ; preds = %lor.end45
  br label %do.end57, !dbg !2408

do.end57:                                         ; preds = %do.cond56
  %38 = load ptr, ptr %rdataset.addr, align 8, !dbg !2411
  %call58 = call i32 @dns_rdataset_first(ptr noundef %38), !dbg !2412
  store i32 %call58, ptr %result, align 4, !dbg !2413
  br label %while.cond, !dbg !2414

while.cond:                                       ; preds = %if.end154, %do.end57
  %39 = load i32, ptr %result, align 4, !dbg !2415
  %cmp59 = icmp eq i32 %39, 0, !dbg !2416
  br i1 %cmp59, label %while.body, label %while.end, !dbg !2414

while.body:                                       ; preds = %while.cond
  %40 = load ptr, ptr %rdataset.addr, align 8, !dbg !2417
  call void @dns_rdataset_current(ptr noundef %40, ptr noundef %rdata), !dbg !2418
  call void @dns_rdata_toregion(ptr noundef %rdata, ptr noundef %r), !dbg !2419
  %length61 = getelementptr inbounds %struct.isc_region, ptr %r, i32 0, i32 1, !dbg !2420
  %41 = load i32, ptr %length61, align 8, !dbg !2420
  %cmp62 = icmp ule i32 %41, 65535, !dbg !2420
  %lnot64 = xor i1 %cmp62, true, !dbg !2420
  %lnot66 = xor i1 %lnot64, true, !dbg !2420
  %lnot.ext67 = zext i1 %lnot66 to i32, !dbg !2420
  %conv68 = sext i32 %lnot.ext67 to i64, !dbg !2420
  %expval69 = call i64 @llvm.expect.i64(i64 %conv68, i64 1), !dbg !2420
  %tobool70 = icmp ne i64 %expval69, 0, !dbg !2420
  br i1 %tobool70, label %lor.end72, label %lor.rhs71, !dbg !2420

lor.rhs71:                                        ; preds = %while.body
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 74, i32 noundef 2, ptr noundef @.str.39) #10, !dbg !2420
  unreachable, !dbg !2420

42:                                               ; No predecessors!
  br label %lor.end72, !dbg !2420

lor.end72:                                        ; preds = %42, %while.body
  %43 = phi i1 [ true, %while.body ], [ false, %42 ]
  %lor.ext73 = zext i1 %43 to i32, !dbg !2420
  br label %do.body74, !dbg !2421

do.body74:                                        ; preds = %lor.end72
  %44 = load ptr, ptr %buffer.addr, align 8, !dbg !2422
  %base75 = getelementptr inbounds %struct.isc_buffer, ptr %44, i32 0, i32 1, !dbg !2422
  %45 = load ptr, ptr %base75, align 8, !dbg !2422
  %46 = load ptr, ptr %buffer.addr, align 8, !dbg !2422
  %used76 = getelementptr inbounds %struct.isc_buffer, ptr %46, i32 0, i32 3, !dbg !2422
  %47 = load i32, ptr %used76, align 4, !dbg !2422
  %idx.ext77 = zext i32 %47 to i64, !dbg !2422
  %add.ptr78 = getelementptr inbounds i8, ptr %45, i64 %idx.ext77, !dbg !2422
  %base79 = getelementptr inbounds %struct.isc_region, ptr %ar, i32 0, i32 0, !dbg !2422
  store ptr %add.ptr78, ptr %base79, align 8, !dbg !2422
  %48 = load ptr, ptr %buffer.addr, align 8, !dbg !2422
  %length80 = getelementptr inbounds %struct.isc_buffer, ptr %48, i32 0, i32 2, !dbg !2422
  %49 = load i32, ptr %length80, align 8, !dbg !2422
  %50 = load ptr, ptr %buffer.addr, align 8, !dbg !2422
  %used81 = getelementptr inbounds %struct.isc_buffer, ptr %50, i32 0, i32 3, !dbg !2422
  %51 = load i32, ptr %used81, align 4, !dbg !2422
  %sub82 = sub i32 %49, %51, !dbg !2422
  %length83 = getelementptr inbounds %struct.isc_region, ptr %ar, i32 0, i32 1, !dbg !2422
  store i32 %sub82, ptr %length83, align 8, !dbg !2422
  br label %do.cond84, !dbg !2422

do.cond84:                                        ; preds = %do.body74
  br label %do.end85, !dbg !2422

do.end85:                                         ; preds = %do.cond84
  %length86 = getelementptr inbounds %struct.isc_region, ptr %ar, i32 0, i32 1, !dbg !2424
  %52 = load i32, ptr %length86, align 8, !dbg !2424
  %cmp87 = icmp ult i32 %52, 2, !dbg !2426
  br i1 %cmp87, label %if.then89, label %if.end90, !dbg !2427

if.then89:                                        ; preds = %do.end85
  store i32 19, ptr %retval, align 4, !dbg !2428
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2428

if.end90:                                         ; preds = %do.end85
  br label %do.body91, !dbg !2429

do.body91:                                        ; preds = %if.end90
  call void @llvm.lifetime.start.p0(i64 8, ptr %_cp92) #9, !dbg !2430
  tail call void @llvm.dbg.declare(metadata ptr %_cp92, metadata !2377, metadata !DIExpression()), !dbg !2430
  call void @llvm.lifetime.start.p0(i64 2, ptr %_val293) #9, !dbg !2430
  tail call void @llvm.dbg.declare(metadata ptr %_val293, metadata !2380, metadata !DIExpression()), !dbg !2430
  %length94 = getelementptr inbounds %struct.isc_region, ptr %r, i32 0, i32 1, !dbg !2430
  %53 = load i32, ptr %length94, align 8, !dbg !2430
  %conv95 = trunc i32 %53 to i16, !dbg !2430
  store i16 %conv95, ptr %_val293, align 2, !dbg !2430
  %54 = load ptr, ptr %buffer.addr, align 8, !dbg !2431
  %autore96 = getelementptr inbounds %struct.isc_buffer, ptr %54, i32 0, i32 8, !dbg !2431
  %55 = load i8, ptr %autore96, align 8, !dbg !2431, !range !1313, !noundef !1314
  %tobool97 = trunc i8 %55 to i1, !dbg !2431
  %lnot98 = xor i1 %tobool97, true, !dbg !2431
  %lnot100 = xor i1 %lnot98, true, !dbg !2431
  %lnot.ext101 = zext i1 %lnot100 to i32, !dbg !2431
  %conv102 = sext i32 %lnot.ext101 to i64, !dbg !2431
  %expval103 = call i64 @llvm.expect.i64(i64 %conv102, i64 0), !dbg !2431
  %tobool104 = icmp ne i64 %expval103, 0, !dbg !2431
  br i1 %tobool104, label %if.then105, label %if.end120, !dbg !2430

if.then105:                                       ; preds = %do.body91
  call void @llvm.lifetime.start.p0(i64 8, ptr %_tmp106) #9, !dbg !2432
  tail call void @llvm.dbg.declare(metadata ptr %_tmp106, metadata !2381, metadata !DIExpression()), !dbg !2432
  %56 = load ptr, ptr %buffer.addr, align 8, !dbg !2432
  store ptr %56, ptr %_tmp106, align 8, !dbg !2432
  %call107 = call i32 @isc_buffer_reserve(ptr noundef %_tmp106, i32 noundef 2), !dbg !2432
  %cmp108 = icmp eq i32 %call107, 0, !dbg !2432
  %lnot110 = xor i1 %cmp108, true, !dbg !2432
  %lnot112 = xor i1 %lnot110, true, !dbg !2432
  %lnot.ext113 = zext i1 %lnot112 to i32, !dbg !2432
  %conv114 = sext i32 %lnot.ext113 to i64, !dbg !2432
  %expval115 = call i64 @llvm.expect.i64(i64 %conv114, i64 1), !dbg !2432
  %tobool116 = icmp ne i64 %expval115, 0, !dbg !2432
  br i1 %tobool116, label %lor.end118, label %lor.rhs117, !dbg !2432

lor.rhs117:                                       ; preds = %if.then105
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 81, i32 noundef 0, ptr noundef @.str.8) #10, !dbg !2432
  unreachable, !dbg !2432

57:                                               ; No predecessors!
  br label %lor.end118, !dbg !2432

lor.end118:                                       ; preds = %57, %if.then105
  %58 = phi i1 [ true, %if.then105 ], [ false, %57 ]
  %lor.ext119 = zext i1 %58 to i32, !dbg !2432
  call void @llvm.lifetime.end.p0(i64 8, ptr %_tmp106) #9, !dbg !2431
  br label %if.end120, !dbg !2432

if.end120:                                        ; preds = %lor.end118, %do.body91
  %59 = load ptr, ptr %buffer.addr, align 8, !dbg !2430
  %length121 = getelementptr inbounds %struct.isc_buffer, ptr %59, i32 0, i32 2, !dbg !2430
  %60 = load i32, ptr %length121, align 8, !dbg !2430
  %61 = load ptr, ptr %buffer.addr, align 8, !dbg !2430
  %used122 = getelementptr inbounds %struct.isc_buffer, ptr %61, i32 0, i32 3, !dbg !2430
  %62 = load i32, ptr %used122, align 4, !dbg !2430
  %sub123 = sub i32 %60, %62, !dbg !2430
  %cmp124 = icmp uge i32 %sub123, 2, !dbg !2430
  %lnot126 = xor i1 %cmp124, true, !dbg !2430
  %lnot128 = xor i1 %lnot126, true, !dbg !2430
  %lnot.ext129 = zext i1 %lnot128 to i32, !dbg !2430
  %conv130 = sext i32 %lnot.ext129 to i64, !dbg !2430
  %expval131 = call i64 @llvm.expect.i64(i64 %conv130, i64 1), !dbg !2430
  %tobool132 = icmp ne i64 %expval131, 0, !dbg !2430
  br i1 %tobool132, label %lor.end134, label %lor.rhs133, !dbg !2430

lor.rhs133:                                       ; preds = %if.end120
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 81, i32 noundef 0, ptr noundef @.str.38) #10, !dbg !2430
  unreachable, !dbg !2430

63:                                               ; No predecessors!
  br label %lor.end134, !dbg !2430

lor.end134:                                       ; preds = %63, %if.end120
  %64 = phi i1 [ true, %if.end120 ], [ false, %63 ]
  %lor.ext135 = zext i1 %64 to i32, !dbg !2430
  %65 = load ptr, ptr %buffer.addr, align 8, !dbg !2430
  %base136 = getelementptr inbounds %struct.isc_buffer, ptr %65, i32 0, i32 1, !dbg !2430
  %66 = load ptr, ptr %base136, align 8, !dbg !2430
  %67 = load ptr, ptr %buffer.addr, align 8, !dbg !2430
  %used137 = getelementptr inbounds %struct.isc_buffer, ptr %67, i32 0, i32 3, !dbg !2430
  %68 = load i32, ptr %used137, align 4, !dbg !2430
  %idx.ext138 = zext i32 %68 to i64, !dbg !2430
  %add.ptr139 = getelementptr inbounds i8, ptr %66, i64 %idx.ext138, !dbg !2430
  store ptr %add.ptr139, ptr %_cp92, align 8, !dbg !2430
  %69 = load ptr, ptr %buffer.addr, align 8, !dbg !2430
  %used140 = getelementptr inbounds %struct.isc_buffer, ptr %69, i32 0, i32 3, !dbg !2430
  %70 = load i32, ptr %used140, align 4, !dbg !2430
  %add141 = add i32 %70, 2, !dbg !2430
  store i32 %add141, ptr %used140, align 4, !dbg !2430
  %71 = load i16, ptr %_val293, align 2, !dbg !2430
  %conv142 = zext i16 %71 to i32, !dbg !2430
  %shr143 = ashr i32 %conv142, 8, !dbg !2430
  %conv144 = trunc i32 %shr143 to i8, !dbg !2430
  %72 = load ptr, ptr %_cp92, align 8, !dbg !2430
  %arrayidx145 = getelementptr inbounds i8, ptr %72, i64 0, !dbg !2430
  store i8 %conv144, ptr %arrayidx145, align 1, !dbg !2430
  %73 = load i16, ptr %_val293, align 2, !dbg !2430
  %conv146 = trunc i16 %73 to i8, !dbg !2430
  %74 = load ptr, ptr %_cp92, align 8, !dbg !2430
  %arrayidx147 = getelementptr inbounds i8, ptr %74, i64 1, !dbg !2430
  store i8 %conv146, ptr %arrayidx147, align 1, !dbg !2430
  call void @llvm.lifetime.end.p0(i64 2, ptr %_val293) #9, !dbg !2429
  call void @llvm.lifetime.end.p0(i64 8, ptr %_cp92) #9, !dbg !2429
  br label %do.cond148, !dbg !2430

do.cond148:                                       ; preds = %lor.end134
  br label %do.end149, !dbg !2430

do.end149:                                        ; preds = %do.cond148
  %75 = load ptr, ptr %buffer.addr, align 8, !dbg !2433
  %call150 = call i32 @isc_buffer_copyregion(ptr noundef %75, ptr noundef %r), !dbg !2434
  store i32 %call150, ptr %result, align 4, !dbg !2435
  %76 = load i32, ptr %result, align 4, !dbg !2436
  %cmp151 = icmp ne i32 %76, 0, !dbg !2438
  br i1 %cmp151, label %if.then153, label %if.end154, !dbg !2439

if.then153:                                       ; preds = %do.end149
  %77 = load i32, ptr %result, align 4, !dbg !2440
  store i32 %77, ptr %retval, align 4, !dbg !2441
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2441

if.end154:                                        ; preds = %do.end149
  call void @dns_rdata_reset(ptr noundef %rdata), !dbg !2442
  %78 = load ptr, ptr %rdataset.addr, align 8, !dbg !2443
  %call155 = call i32 @dns_rdataset_next(ptr noundef %78), !dbg !2444
  store i32 %call155, ptr %result, align 4, !dbg !2445
  br label %while.cond, !dbg !2414, !llvm.loop !2446

while.end:                                        ; preds = %while.cond
  %79 = load i32, ptr %result, align 4, !dbg !2448
  %cmp156 = icmp ne i32 %79, 29, !dbg !2450
  br i1 %cmp156, label %if.then158, label %if.end159, !dbg !2451

if.then158:                                       ; preds = %while.end
  %80 = load i32, ptr %result, align 4, !dbg !2452
  store i32 %80, ptr %retval, align 4, !dbg !2453
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2453

if.end159:                                        ; preds = %while.end
  store i32 0, ptr %retval, align 4, !dbg !2454
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2454

cleanup:                                          ; preds = %if.end159, %if.then158, %if.then153, %if.then89, %if.then
  call void @llvm.lifetime.end.p0(i64 40, ptr %rdata) #9, !dbg !2455
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #9, !dbg !2455
  call void @llvm.lifetime.end.p0(i64 16, ptr %ar) #9, !dbg !2455
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #9, !dbg !2455
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #9, !dbg !2455
  %81 = load i32, ptr %retval, align 4, !dbg !2455
  ret i32 %81, !dbg !2455
}

; Function Attrs: null_pointer_is_valid
declare !dbg !2456 void @dns_rdata_init(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare !dbg !2457 i32 @dns_message_nextname(ptr noundef, i32 noundef) #6

; Function Attrs: null_pointer_is_valid
declare !dbg !2458 i32 @dns_rdatalist_tordataset(ptr noundef, ptr noundef) #6

; Function Attrs: noreturn null_pointer_is_valid
declare !dbg !2461 void @isc_error_runtimecheck(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare !dbg !2465 i32 @dns_db_addrdataset(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare !dbg !2466 i32 @dns_rdataset_count(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare !dbg !2467 void @dns_rdata_toregion(ptr noundef, ptr noundef) #6

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @rdataset_disassociate(ptr noundef %rdataset) #0 !dbg !2470 {
entry:
  %rdataset.addr = alloca ptr, align 8
  store ptr %rdataset, ptr %rdataset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %rdataset.addr, metadata !2472, metadata !DIExpression()), !dbg !2473
  %0 = load ptr, ptr %rdataset.addr, align 8, !dbg !2474
  ret void, !dbg !2475
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal i32 @rdataset_first(ptr noundef %rdataset) #0 !dbg !2476 {
entry:
  %retval = alloca i32, align 4
  %rdataset.addr = alloca ptr, align 8
  %raw = alloca ptr, align 8
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %rdataset, ptr %rdataset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %rdataset.addr, metadata !2478, metadata !DIExpression()), !dbg !2481
  call void @llvm.lifetime.start.p0(i64 8, ptr %raw) #9, !dbg !2482
  tail call void @llvm.dbg.declare(metadata ptr %raw, metadata !2479, metadata !DIExpression()), !dbg !2483
  %0 = load ptr, ptr %rdataset.addr, align 8, !dbg !2484
  %private3 = getelementptr inbounds %struct.dns_rdataset, ptr %0, i32 0, i32 14, !dbg !2485
  %1 = load ptr, ptr %private3, align 8, !dbg !2485
  store ptr %1, ptr %raw, align 8, !dbg !2483
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #9, !dbg !2486
  tail call void @llvm.dbg.declare(metadata ptr %count, metadata !2480, metadata !DIExpression()), !dbg !2487
  %2 = load ptr, ptr %raw, align 8, !dbg !2488
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 0, !dbg !2488
  %3 = load i8, ptr %arrayidx, align 1, !dbg !2488
  %conv = zext i8 %3 to i32, !dbg !2488
  %mul = mul nsw i32 %conv, 256, !dbg !2489
  %4 = load ptr, ptr %raw, align 8, !dbg !2490
  %arrayidx1 = getelementptr inbounds i8, ptr %4, i64 1, !dbg !2490
  %5 = load i8, ptr %arrayidx1, align 1, !dbg !2490
  %conv2 = zext i8 %5 to i32, !dbg !2490
  %add = add nsw i32 %mul, %conv2, !dbg !2491
  store i32 %add, ptr %count, align 4, !dbg !2492
  %6 = load i32, ptr %count, align 4, !dbg !2493
  %cmp = icmp eq i32 %6, 0, !dbg !2495
  br i1 %cmp, label %if.then, label %if.end, !dbg !2496

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %rdataset.addr, align 8, !dbg !2497
  %private5 = getelementptr inbounds %struct.dns_rdataset, ptr %7, i32 0, i32 16, !dbg !2499
  store ptr null, ptr %private5, align 8, !dbg !2500
  store i32 29, ptr %retval, align 4, !dbg !2501
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2501

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %raw, align 8, !dbg !2502
  %add.ptr = getelementptr inbounds i8, ptr %8, i64 2, !dbg !2502
  store ptr %add.ptr, ptr %raw, align 8, !dbg !2502
  %9 = load i32, ptr %count, align 4, !dbg !2503
  %dec = add i32 %9, -1, !dbg !2503
  store i32 %dec, ptr %count, align 4, !dbg !2503
  %10 = load i32, ptr %count, align 4, !dbg !2504
  %11 = load ptr, ptr %rdataset.addr, align 8, !dbg !2505
  %privateuint4 = getelementptr inbounds %struct.dns_rdataset, ptr %11, i32 0, i32 15, !dbg !2506
  store i32 %10, ptr %privateuint4, align 8, !dbg !2507
  %12 = load ptr, ptr %raw, align 8, !dbg !2508
  %13 = load ptr, ptr %rdataset.addr, align 8, !dbg !2509
  %private54 = getelementptr inbounds %struct.dns_rdataset, ptr %13, i32 0, i32 16, !dbg !2510
  store ptr %12, ptr %private54, align 8, !dbg !2511
  store i32 0, ptr %retval, align 4, !dbg !2512
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2512

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #9, !dbg !2513
  call void @llvm.lifetime.end.p0(i64 8, ptr %raw) #9, !dbg !2513
  %14 = load i32, ptr %retval, align 4, !dbg !2513
  ret i32 %14, !dbg !2513
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal i32 @rdataset_next(ptr noundef %rdataset) #0 !dbg !2514 {
entry:
  %retval = alloca i32, align 4
  %rdataset.addr = alloca ptr, align 8
  %count = alloca i32, align 4
  %length = alloca i32, align 4
  %raw = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %rdataset, ptr %rdataset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %rdataset.addr, metadata !2516, metadata !DIExpression()), !dbg !2520
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #9, !dbg !2521
  tail call void @llvm.dbg.declare(metadata ptr %count, metadata !2517, metadata !DIExpression()), !dbg !2522
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #9, !dbg !2523
  tail call void @llvm.dbg.declare(metadata ptr %length, metadata !2518, metadata !DIExpression()), !dbg !2524
  call void @llvm.lifetime.start.p0(i64 8, ptr %raw) #9, !dbg !2525
  tail call void @llvm.dbg.declare(metadata ptr %raw, metadata !2519, metadata !DIExpression()), !dbg !2526
  %0 = load ptr, ptr %rdataset.addr, align 8, !dbg !2527
  %privateuint4 = getelementptr inbounds %struct.dns_rdataset, ptr %0, i32 0, i32 15, !dbg !2528
  %1 = load i32, ptr %privateuint4, align 8, !dbg !2528
  store i32 %1, ptr %count, align 4, !dbg !2529
  %2 = load i32, ptr %count, align 4, !dbg !2530
  %cmp = icmp eq i32 %2, 0, !dbg !2532
  br i1 %cmp, label %if.then, label %if.end, !dbg !2533

if.then:                                          ; preds = %entry
  store i32 29, ptr %retval, align 4, !dbg !2534
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2534

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %count, align 4, !dbg !2535
  %dec = add i32 %3, -1, !dbg !2535
  store i32 %dec, ptr %count, align 4, !dbg !2535
  %4 = load i32, ptr %count, align 4, !dbg !2536
  %5 = load ptr, ptr %rdataset.addr, align 8, !dbg !2537
  %privateuint41 = getelementptr inbounds %struct.dns_rdataset, ptr %5, i32 0, i32 15, !dbg !2538
  store i32 %4, ptr %privateuint41, align 8, !dbg !2539
  %6 = load ptr, ptr %rdataset.addr, align 8, !dbg !2540
  %private5 = getelementptr inbounds %struct.dns_rdataset, ptr %6, i32 0, i32 16, !dbg !2541
  %7 = load ptr, ptr %private5, align 8, !dbg !2541
  store ptr %7, ptr %raw, align 8, !dbg !2542
  %8 = load ptr, ptr %raw, align 8, !dbg !2543
  %arrayidx = getelementptr inbounds i8, ptr %8, i64 0, !dbg !2543
  %9 = load i8, ptr %arrayidx, align 1, !dbg !2543
  %conv = zext i8 %9 to i32, !dbg !2543
  %mul = mul nsw i32 %conv, 256, !dbg !2544
  %10 = load ptr, ptr %raw, align 8, !dbg !2545
  %arrayidx2 = getelementptr inbounds i8, ptr %10, i64 1, !dbg !2545
  %11 = load i8, ptr %arrayidx2, align 1, !dbg !2545
  %conv3 = zext i8 %11 to i32, !dbg !2545
  %add = add nsw i32 %mul, %conv3, !dbg !2546
  store i32 %add, ptr %length, align 4, !dbg !2547
  %12 = load i32, ptr %length, align 4, !dbg !2548
  %add4 = add i32 %12, 2, !dbg !2549
  %13 = load ptr, ptr %raw, align 8, !dbg !2550
  %idx.ext = zext i32 %add4 to i64, !dbg !2550
  %add.ptr = getelementptr inbounds i8, ptr %13, i64 %idx.ext, !dbg !2550
  store ptr %add.ptr, ptr %raw, align 8, !dbg !2550
  %14 = load ptr, ptr %raw, align 8, !dbg !2551
  %15 = load ptr, ptr %rdataset.addr, align 8, !dbg !2552
  %private55 = getelementptr inbounds %struct.dns_rdataset, ptr %15, i32 0, i32 16, !dbg !2553
  store ptr %14, ptr %private55, align 8, !dbg !2554
  store i32 0, ptr %retval, align 4, !dbg !2555
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2555

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %raw) #9, !dbg !2556
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #9, !dbg !2556
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #9, !dbg !2556
  %16 = load i32, ptr %retval, align 4, !dbg !2556
  ret i32 %16, !dbg !2556
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @rdataset_current(ptr noundef %rdataset, ptr noundef %rdata) #0 !dbg !2557 {
entry:
  %rdataset.addr = alloca ptr, align 8
  %rdata.addr = alloca ptr, align 8
  %raw = alloca ptr, align 8
  %r = alloca %struct.isc_region, align 8
  store ptr %rdataset, ptr %rdataset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %rdataset.addr, metadata !2559, metadata !DIExpression()), !dbg !2563
  store ptr %rdata, ptr %rdata.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %rdata.addr, metadata !2560, metadata !DIExpression()), !dbg !2564
  call void @llvm.lifetime.start.p0(i64 8, ptr %raw) #9, !dbg !2565
  tail call void @llvm.dbg.declare(metadata ptr %raw, metadata !2561, metadata !DIExpression()), !dbg !2566
  %0 = load ptr, ptr %rdataset.addr, align 8, !dbg !2567
  %private5 = getelementptr inbounds %struct.dns_rdataset, ptr %0, i32 0, i32 16, !dbg !2568
  %1 = load ptr, ptr %private5, align 8, !dbg !2568
  store ptr %1, ptr %raw, align 8, !dbg !2566
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #9, !dbg !2569
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !2562, metadata !DIExpression()), !dbg !2570
  %2 = load ptr, ptr %raw, align 8, !dbg !2571
  %cmp = icmp ne ptr %2, null, !dbg !2571
  %lnot = xor i1 %cmp, true, !dbg !2571
  %lnot1 = xor i1 %lnot, true, !dbg !2571
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2571
  %conv = sext i32 %lnot.ext to i64, !dbg !2571
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2571
  %tobool = icmp ne i64 %expval, 0, !dbg !2571
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !2571

lor.rhs:                                          ; preds = %entry
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 458, i32 noundef 0, ptr noundef @.str.40) #10, !dbg !2571
  unreachable, !dbg !2571

3:                                                ; No predecessors!
  br label %lor.end, !dbg !2571

lor.end:                                          ; preds = %3, %entry
  %4 = phi i1 [ true, %entry ], [ false, %3 ]
  %lor.ext = zext i1 %4 to i32, !dbg !2571
  %5 = load ptr, ptr %raw, align 8, !dbg !2572
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 0, !dbg !2572
  %6 = load i8, ptr %arrayidx, align 1, !dbg !2572
  %conv2 = zext i8 %6 to i32, !dbg !2572
  %mul = mul nsw i32 %conv2, 256, !dbg !2573
  %7 = load ptr, ptr %raw, align 8, !dbg !2574
  %arrayidx3 = getelementptr inbounds i8, ptr %7, i64 1, !dbg !2574
  %8 = load i8, ptr %arrayidx3, align 1, !dbg !2574
  %conv4 = zext i8 %8 to i32, !dbg !2574
  %add = add nsw i32 %mul, %conv4, !dbg !2575
  %length = getelementptr inbounds %struct.isc_region, ptr %r, i32 0, i32 1, !dbg !2576
  store i32 %add, ptr %length, align 8, !dbg !2577
  %9 = load ptr, ptr %raw, align 8, !dbg !2578
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 2, !dbg !2578
  store ptr %add.ptr, ptr %raw, align 8, !dbg !2578
  %10 = load ptr, ptr %raw, align 8, !dbg !2579
  %base = getelementptr inbounds %struct.isc_region, ptr %r, i32 0, i32 0, !dbg !2580
  store ptr %10, ptr %base, align 8, !dbg !2581
  %11 = load ptr, ptr %rdata.addr, align 8, !dbg !2582
  %12 = load ptr, ptr %rdataset.addr, align 8, !dbg !2583
  %rdclass = getelementptr inbounds %struct.dns_rdataset, ptr %12, i32 0, i32 3, !dbg !2584
  %13 = load i16, ptr %rdclass, align 8, !dbg !2584
  %14 = load ptr, ptr %rdataset.addr, align 8, !dbg !2585
  %type = getelementptr inbounds %struct.dns_rdataset, ptr %14, i32 0, i32 4, !dbg !2586
  %15 = load i16, ptr %type, align 2, !dbg !2586
  call void @dns_rdata_fromregion(ptr noundef %11, i16 noundef zeroext %13, i16 noundef zeroext %15, ptr noundef %r), !dbg !2587
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #9, !dbg !2588
  call void @llvm.lifetime.end.p0(i64 8, ptr %raw) #9, !dbg !2588
  ret void, !dbg !2588
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @rdataset_clone(ptr noundef %source, ptr noundef %target) #0 !dbg !2589 {
entry:
  %source.addr = alloca ptr, align 8
  %target.addr = alloca ptr, align 8
  store ptr %source, ptr %source.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %source.addr, metadata !2591, metadata !DIExpression()), !dbg !2593
  store ptr %target, ptr %target.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %target.addr, metadata !2592, metadata !DIExpression()), !dbg !2594
  %0 = load ptr, ptr %target.addr, align 8, !dbg !2595
  %1 = load ptr, ptr %source.addr, align 8, !dbg !2596
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %1, i64 120, i1 false), !dbg !2597
  %2 = load ptr, ptr %target.addr, align 8, !dbg !2598
  %privateuint4 = getelementptr inbounds %struct.dns_rdataset, ptr %2, i32 0, i32 15, !dbg !2599
  store i32 0, ptr %privateuint4, align 8, !dbg !2600
  %3 = load ptr, ptr %target.addr, align 8, !dbg !2601
  %private5 = getelementptr inbounds %struct.dns_rdataset, ptr %3, i32 0, i32 16, !dbg !2602
  store ptr null, ptr %private5, align 8, !dbg !2603
  ret void, !dbg !2604
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal i32 @rdataset_count(ptr noundef %rdataset) #0 !dbg !2605 {
entry:
  %rdataset.addr = alloca ptr, align 8
  %raw = alloca ptr, align 8
  %count = alloca i32, align 4
  store ptr %rdataset, ptr %rdataset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %rdataset.addr, metadata !2607, metadata !DIExpression()), !dbg !2610
  call void @llvm.lifetime.start.p0(i64 8, ptr %raw) #9, !dbg !2611
  tail call void @llvm.dbg.declare(metadata ptr %raw, metadata !2608, metadata !DIExpression()), !dbg !2612
  %0 = load ptr, ptr %rdataset.addr, align 8, !dbg !2613
  %private3 = getelementptr inbounds %struct.dns_rdataset, ptr %0, i32 0, i32 14, !dbg !2614
  %1 = load ptr, ptr %private3, align 8, !dbg !2614
  store ptr %1, ptr %raw, align 8, !dbg !2612
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #9, !dbg !2615
  tail call void @llvm.dbg.declare(metadata ptr %count, metadata !2609, metadata !DIExpression()), !dbg !2616
  %2 = load ptr, ptr %raw, align 8, !dbg !2617
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 0, !dbg !2617
  %3 = load i8, ptr %arrayidx, align 1, !dbg !2617
  %conv = zext i8 %3 to i32, !dbg !2617
  %mul = mul nsw i32 %conv, 256, !dbg !2618
  %4 = load ptr, ptr %raw, align 8, !dbg !2619
  %arrayidx1 = getelementptr inbounds i8, ptr %4, i64 1, !dbg !2619
  %5 = load i8, ptr %arrayidx1, align 1, !dbg !2619
  %conv2 = zext i8 %5 to i32, !dbg !2619
  %add = add nsw i32 %mul, %conv2, !dbg !2620
  store i32 %add, ptr %count, align 4, !dbg !2621
  %6 = load i32, ptr %count, align 4, !dbg !2622
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #9, !dbg !2623
  call void @llvm.lifetime.end.p0(i64 8, ptr %raw) #9, !dbg !2623
  ret i32 %6, !dbg !2624
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @rdataset_settrust(ptr noundef %rdataset, i16 noundef zeroext %trust) #0 !dbg !2625 {
entry:
  %rdataset.addr = alloca ptr, align 8
  %trust.addr = alloca i16, align 2
  %raw = alloca ptr, align 8
  store ptr %rdataset, ptr %rdataset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %rdataset.addr, metadata !2627, metadata !DIExpression()), !dbg !2630
  store i16 %trust, ptr %trust.addr, align 2
  tail call void @llvm.dbg.declare(metadata ptr %trust.addr, metadata !2628, metadata !DIExpression()), !dbg !2631
  call void @llvm.lifetime.start.p0(i64 8, ptr %raw) #9, !dbg !2632
  tail call void @llvm.dbg.declare(metadata ptr %raw, metadata !2629, metadata !DIExpression()), !dbg !2633
  %0 = load ptr, ptr %rdataset.addr, align 8, !dbg !2634
  %private3 = getelementptr inbounds %struct.dns_rdataset, ptr %0, i32 0, i32 14, !dbg !2635
  %1 = load ptr, ptr %private3, align 8, !dbg !2635
  store ptr %1, ptr %raw, align 8, !dbg !2633
  %2 = load i16, ptr %trust.addr, align 2, !dbg !2636
  %conv = trunc i16 %2 to i8, !dbg !2637
  %3 = load ptr, ptr %raw, align 8, !dbg !2638
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 -1, !dbg !2638
  store i8 %conv, ptr %arrayidx, align 1, !dbg !2639
  call void @llvm.lifetime.end.p0(i64 8, ptr %raw) #9, !dbg !2640
  ret void, !dbg !2640
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #8

attributes #0 = { nounwind null_pointer_is_valid uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { noreturn }

!llvm.dbg.cu = !{!108}
!llvm.module.flags = !{!657, !658, !659, !660, !661}
!llvm.ident = !{!662}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 296, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "ncache.c", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/dns", checksumkind: CSK_MD5, checksum: "00b4476a51707cb7db4da9a016421e43")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !6)
!4 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{!7}
!7 = !DISubrange(count: 9)
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(scope: null, file: !2, line: 296, type: !10, isLocal: true, isDefinition: true)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !11)
!11 = !{!12}
!12 = !DISubrange(count: 23)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !2, line: 297, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 20)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 298, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 41)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 311, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 32)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 315, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 22)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 326, type: !30, isLocal: true, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(scope: null, file: !2, line: 333, type: !37, isLocal: true, isDefinition: true)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 33)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(scope: null, file: !2, line: 357, type: !42, isLocal: true, isDefinition: true)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 46)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !2, line: 357, type: !20, isLocal: true, isDefinition: true)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 359, type: !42, isLocal: true, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 359, type: !20, isLocal: true, isDefinition: true)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(scope: null, file: !2, line: 378, type: !53, isLocal: true, isDefinition: true)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 608, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 76)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(scope: null, file: !2, line: 380, type: !20, isLocal: true, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !2, line: 386, type: !60, isLocal: true, isDefinition: true)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 44)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(scope: null, file: !2, line: 398, type: !65, isLocal: true, isDefinition: true)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 25)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(scope: null, file: !2, line: 526, type: !70, isLocal: true, isDefinition: true)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 29)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(scope: null, file: !2, line: 527, type: !75, isLocal: true, isDefinition: true)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 26)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(scope: null, file: !2, line: 528, type: !80, isLocal: true, isDefinition: true)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 47)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(scope: null, file: !2, line: 529, type: !85, isLocal: true, isDefinition: true)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 19)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(scope: null, file: !2, line: 530, type: !90, isLocal: true, isDefinition: true)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 37)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(scope: null, file: !2, line: 531, type: !80, isLocal: true, isDefinition: true)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(scope: null, file: !2, line: 543, type: !37, isLocal: true, isDefinition: true)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(scope: null, file: !2, line: 547, type: !30, isLocal: true, isDefinition: true)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(scope: null, file: !2, line: 552, type: !101, isLocal: true, isDefinition: true)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 43)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(scope: null, file: !2, line: 565, type: !30, isLocal: true, isDefinition: true)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(name: "rdataset_methods", scope: !108, file: !2, line: 494, type: !310, isLocal: true, isDefinition: true)
!108 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !109, retainedTypes: !243, globals: !255, splitDebugInlining: false, nameTableKind: None)
!109 = !{!110, !118, !121, !128, !140, !228}
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !111, line: 213, baseType: !112, size: 32, elements: !113)
!111 = !DIFile(filename: "include/dns/types.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/dns", checksumkind: CSK_MD5, checksum: "f35a187441d60b1b4301c816339e75b0")
!112 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!113 = !{!114, !115, !116, !117}
!114 = !DIEnumerator(name: "dns_masterformat_none", value: 0)
!115 = !DIEnumerator(name: "dns_masterformat_text", value: 1)
!116 = !DIEnumerator(name: "dns_masterformat_raw", value: 2)
!117 = !DIEnumerator(name: "dns_masterformat_map", value: 3)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !111, line: 164, baseType: !112, size: 32, elements: !119)
!119 = !{!120}
!120 = !DIEnumerator(name: "dns_hash_sha1", value: 1)
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !122, line: 25, baseType: !112, size: 32, elements: !123)
!122 = !DIFile(filename: "isc/include/isc/assertions.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib", checksumkind: CSK_MD5, checksum: "d437064b1a440cf5712e89d244b6208d")
!123 = !{!124, !125, !126, !127}
!124 = !DIEnumerator(name: "isc_assertiontype_require", value: 0)
!125 = !DIEnumerator(name: "isc_assertiontype_ensure", value: 1)
!126 = !DIEnumerator(name: "isc_assertiontype_insist", value: 2)
!127 = !DIEnumerator(name: "isc_assertiontype_invariant", value: 3)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !111, line: 301, baseType: !112, size: 32, elements: !129)
!129 = !{!130, !131, !132, !133, !134, !135, !136, !137, !138, !139}
!130 = !DIEnumerator(name: "dns_trust_none", value: 0)
!131 = !DIEnumerator(name: "dns_trust_pending_additional", value: 1)
!132 = !DIEnumerator(name: "dns_trust_pending_answer", value: 2)
!133 = !DIEnumerator(name: "dns_trust_additional", value: 3)
!134 = !DIEnumerator(name: "dns_trust_glue", value: 4)
!135 = !DIEnumerator(name: "dns_trust_answer", value: 5)
!136 = !DIEnumerator(name: "dns_trust_authauthority", value: 6)
!137 = !DIEnumerator(name: "dns_trust_authanswer", value: 7)
!138 = !DIEnumerator(name: "dns_trust_secure", value: 8)
!139 = !DIEnumerator(name: "dns_trust_ultimate", value: 9)
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !141, line: 21, baseType: !112, size: 32, elements: !142)
!141 = !DIFile(filename: "include/dns/enumtype.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/dns", checksumkind: CSK_MD5, checksum: "11dbf2b1e0a48ddc2542c96b9ee9da38")
!142 = !{!143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227}
!143 = !DIEnumerator(name: "dns_rdatatype_none", value: 0)
!144 = !DIEnumerator(name: "dns_rdatatype_a", value: 1)
!145 = !DIEnumerator(name: "dns_rdatatype_ns", value: 2)
!146 = !DIEnumerator(name: "dns_rdatatype_md", value: 3)
!147 = !DIEnumerator(name: "dns_rdatatype_mf", value: 4)
!148 = !DIEnumerator(name: "dns_rdatatype_cname", value: 5)
!149 = !DIEnumerator(name: "dns_rdatatype_soa", value: 6)
!150 = !DIEnumerator(name: "dns_rdatatype_mb", value: 7)
!151 = !DIEnumerator(name: "dns_rdatatype_mg", value: 8)
!152 = !DIEnumerator(name: "dns_rdatatype_mr", value: 9)
!153 = !DIEnumerator(name: "dns_rdatatype_null", value: 10)
!154 = !DIEnumerator(name: "dns_rdatatype_wks", value: 11)
!155 = !DIEnumerator(name: "dns_rdatatype_ptr", value: 12)
!156 = !DIEnumerator(name: "dns_rdatatype_hinfo", value: 13)
!157 = !DIEnumerator(name: "dns_rdatatype_minfo", value: 14)
!158 = !DIEnumerator(name: "dns_rdatatype_mx", value: 15)
!159 = !DIEnumerator(name: "dns_rdatatype_txt", value: 16)
!160 = !DIEnumerator(name: "dns_rdatatype_rp", value: 17)
!161 = !DIEnumerator(name: "dns_rdatatype_afsdb", value: 18)
!162 = !DIEnumerator(name: "dns_rdatatype_x25", value: 19)
!163 = !DIEnumerator(name: "dns_rdatatype_isdn", value: 20)
!164 = !DIEnumerator(name: "dns_rdatatype_rt", value: 21)
!165 = !DIEnumerator(name: "dns_rdatatype_nsap", value: 22)
!166 = !DIEnumerator(name: "dns_rdatatype_nsap_ptr", value: 23)
!167 = !DIEnumerator(name: "dns_rdatatype_sig", value: 24)
!168 = !DIEnumerator(name: "dns_rdatatype_key", value: 25)
!169 = !DIEnumerator(name: "dns_rdatatype_px", value: 26)
!170 = !DIEnumerator(name: "dns_rdatatype_gpos", value: 27)
!171 = !DIEnumerator(name: "dns_rdatatype_aaaa", value: 28)
!172 = !DIEnumerator(name: "dns_rdatatype_loc", value: 29)
!173 = !DIEnumerator(name: "dns_rdatatype_nxt", value: 30)
!174 = !DIEnumerator(name: "dns_rdatatype_eid", value: 31)
!175 = !DIEnumerator(name: "dns_rdatatype_nimloc", value: 32)
!176 = !DIEnumerator(name: "dns_rdatatype_srv", value: 33)
!177 = !DIEnumerator(name: "dns_rdatatype_atma", value: 34)
!178 = !DIEnumerator(name: "dns_rdatatype_naptr", value: 35)
!179 = !DIEnumerator(name: "dns_rdatatype_kx", value: 36)
!180 = !DIEnumerator(name: "dns_rdatatype_cert", value: 37)
!181 = !DIEnumerator(name: "dns_rdatatype_a6", value: 38)
!182 = !DIEnumerator(name: "dns_rdatatype_dname", value: 39)
!183 = !DIEnumerator(name: "dns_rdatatype_sink", value: 40)
!184 = !DIEnumerator(name: "dns_rdatatype_opt", value: 41)
!185 = !DIEnumerator(name: "dns_rdatatype_apl", value: 42)
!186 = !DIEnumerator(name: "dns_rdatatype_ds", value: 43)
!187 = !DIEnumerator(name: "dns_rdatatype_sshfp", value: 44)
!188 = !DIEnumerator(name: "dns_rdatatype_ipseckey", value: 45)
!189 = !DIEnumerator(name: "dns_rdatatype_rrsig", value: 46)
!190 = !DIEnumerator(name: "dns_rdatatype_nsec", value: 47)
!191 = !DIEnumerator(name: "dns_rdatatype_dnskey", value: 48)
!192 = !DIEnumerator(name: "dns_rdatatype_dhcid", value: 49)
!193 = !DIEnumerator(name: "dns_rdatatype_nsec3", value: 50)
!194 = !DIEnumerator(name: "dns_rdatatype_nsec3param", value: 51)
!195 = !DIEnumerator(name: "dns_rdatatype_tlsa", value: 52)
!196 = !DIEnumerator(name: "dns_rdatatype_smimea", value: 53)
!197 = !DIEnumerator(name: "dns_rdatatype_hip", value: 55)
!198 = !DIEnumerator(name: "dns_rdatatype_ninfo", value: 56)
!199 = !DIEnumerator(name: "dns_rdatatype_rkey", value: 57)
!200 = !DIEnumerator(name: "dns_rdatatype_talink", value: 58)
!201 = !DIEnumerator(name: "dns_rdatatype_cds", value: 59)
!202 = !DIEnumerator(name: "dns_rdatatype_cdnskey", value: 60)
!203 = !DIEnumerator(name: "dns_rdatatype_openpgpkey", value: 61)
!204 = !DIEnumerator(name: "dns_rdatatype_csync", value: 62)
!205 = !DIEnumerator(name: "dns_rdatatype_zonemd", value: 63)
!206 = !DIEnumerator(name: "dns_rdatatype_spf", value: 99)
!207 = !DIEnumerator(name: "dns_rdatatype_nid", value: 104)
!208 = !DIEnumerator(name: "dns_rdatatype_l32", value: 105)
!209 = !DIEnumerator(name: "dns_rdatatype_l64", value: 106)
!210 = !DIEnumerator(name: "dns_rdatatype_lp", value: 107)
!211 = !DIEnumerator(name: "dns_rdatatype_eui48", value: 108)
!212 = !DIEnumerator(name: "dns_rdatatype_eui64", value: 109)
!213 = !DIEnumerator(name: "dns_rdatatype_tkey", value: 249)
!214 = !DIEnumerator(name: "dns_rdatatype_tsig", value: 250)
!215 = !DIEnumerator(name: "dns_rdatatype_uri", value: 256)
!216 = !DIEnumerator(name: "dns_rdatatype_caa", value: 257)
!217 = !DIEnumerator(name: "dns_rdatatype_avc", value: 258)
!218 = !DIEnumerator(name: "dns_rdatatype_doa", value: 259)
!219 = !DIEnumerator(name: "dns_rdatatype_amtrelay", value: 260)
!220 = !DIEnumerator(name: "dns_rdatatype_ta", value: 32768)
!221 = !DIEnumerator(name: "dns_rdatatype_dlv", value: 32769)
!222 = !DIEnumerator(name: "dns_rdatatype_keydata", value: 65533)
!223 = !DIEnumerator(name: "dns_rdatatype_ixfr", value: 251)
!224 = !DIEnumerator(name: "dns_rdatatype_axfr", value: 252)
!225 = !DIEnumerator(name: "dns_rdatatype_mailb", value: 253)
!226 = !DIEnumerator(name: "dns_rdatatype_maila", value: 254)
!227 = !DIEnumerator(name: "dns_rdatatype_any", value: 255)
!228 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !111, line: 229, baseType: !112, size: 32, elements: !229)
!229 = !{!230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242}
!230 = !DIEnumerator(name: "dns_rcode_noerror", value: 0)
!231 = !DIEnumerator(name: "dns_rcode_formerr", value: 1)
!232 = !DIEnumerator(name: "dns_rcode_servfail", value: 2)
!233 = !DIEnumerator(name: "dns_rcode_nxdomain", value: 3)
!234 = !DIEnumerator(name: "dns_rcode_notimp", value: 4)
!235 = !DIEnumerator(name: "dns_rcode_refused", value: 5)
!236 = !DIEnumerator(name: "dns_rcode_yxdomain", value: 6)
!237 = !DIEnumerator(name: "dns_rcode_yxrrset", value: 7)
!238 = !DIEnumerator(name: "dns_rcode_nxrrset", value: 8)
!239 = !DIEnumerator(name: "dns_rcode_notauth", value: 9)
!240 = !DIEnumerator(name: "dns_rcode_notzone", value: 10)
!241 = !DIEnumerator(name: "dns_rcode_badvers", value: 16)
!242 = !DIEnumerator(name: "dns_rcode_badcookie", value: 23)
!243 = !{!244, !245, !246, !247, !252, !253, !254}
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !248, line: 25, baseType: !249)
!248 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !250, line: 40, baseType: !251)
!250 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!251 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_trust_t", file: !111, line: 140, baseType: !247)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdatatype_t", file: !111, line: 126, baseType: !247)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rcode_t", file: !111, line: 118, baseType: !247)
!255 = !{!0, !8, !13, !18, !23, !28, !33, !35, !40, !45, !47, !49, !51, !56, !58, !63, !68, !73, !78, !83, !88, !93, !95, !97, !99, !104, !256, !261, !263, !268, !270, !275, !277, !282, !284, !286, !291, !296, !301, !303, !106, !308}
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(scope: null, file: !2, line: 621, type: !258, isLocal: true, isDefinition: true)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !259)
!259 = !{!260}
!260 = !DISubrange(count: 17)
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(scope: null, file: !2, line: 634, type: !30, isLocal: true, isDefinition: true)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(scope: null, file: !2, line: 641, type: !265, isLocal: true, isDefinition: true)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !266)
!266 = !{!267}
!267 = !DISubrange(count: 10)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(scope: null, file: !2, line: 703, type: !15, isLocal: true, isDefinition: true)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(scope: null, file: !2, line: 713, type: !272, isLocal: true, isDefinition: true)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !273)
!273 = !{!274}
!274 = !DISubrange(count: 34)
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(scope: null, file: !2, line: 144, type: !30, isLocal: true, isDefinition: true)
!277 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression())
!278 = distinct !DIGlobalVariable(scope: null, file: !2, line: 210, type: !279, isLocal: true, isDefinition: true)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: 42)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(scope: null, file: !2, line: 212, type: !42, isLocal: true, isDefinition: true)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(scope: null, file: !2, line: 212, type: !279, isLocal: true, isDefinition: true)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(scope: null, file: !2, line: 257, type: !288, isLocal: true, isDefinition: true)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !289)
!289 = !{!290}
!290 = !DISubrange(count: 16)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(scope: null, file: !2, line: 262, type: !293, isLocal: true, isDefinition: true)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 456, elements: !294)
!294 = !{!295}
!295 = !DISubrange(count: 57)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !298, isLocal: true, isDefinition: true)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !299)
!299 = !{!300}
!300 = !DISubrange(count: 15)
!301 = !DIGlobalVariableExpression(var: !302, expr: !DIExpression())
!302 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !20, isLocal: true, isDefinition: true)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(scope: null, file: !2, line: 74, type: !305, isLocal: true, isDefinition: true)
!305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !306)
!306 = !{!307}
!307 = !DISubrange(count: 18)
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression())
!309 = distinct !DIGlobalVariable(scope: null, file: !2, line: 458, type: !305, isLocal: true, isDefinition: true)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdatasetmethods_t", file: !311, line: 96, baseType: !312)
!311 = !DIFile(filename: "include/dns/rdataset.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/dns", checksumkind: CSK_MD5, checksum: "a2414fd23f718a363582354673aed6a8")
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_rdatasetmethods", file: !311, line: 64, size: 1024, elements: !313)
!313 = !{!314, !354, !360, !361, !380, !384, !388, !438, !442, !443, !444, !448, !449, !450, !454, !460}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "disassociate", scope: !312, file: !311, line: 65, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{null, !318}
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdataset_t", file: !111, line: 123, baseType: !320)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_rdataset", file: !311, line: 107, size: 960, elements: !321)
!321 = !{!322, !323, !325, !330, !332, !333, !337, !338, !339, !340, !341, !342, !345, !346, !347, !348, !349, !350, !353}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !320, file: !311, line: 108, baseType: !112, size: 32)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "methods", scope: !320, file: !311, line: 109, baseType: !324, size: 64, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !320, file: !311, line: 110, baseType: !326, size: 128, offset: 128)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !320, file: !311, line: 110, size: 128, elements: !327)
!327 = !{!328, !329}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !326, file: !311, line: 110, baseType: !318, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !326, file: !311, line: 110, baseType: !318, size: 64, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "rdclass", scope: !320, file: !311, line: 117, baseType: !331, size: 16, offset: 256)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdataclass_t", file: !111, line: 121, baseType: !247)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !320, file: !311, line: 118, baseType: !253, size: 16, offset: 272)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !320, file: !311, line: 119, baseType: !334, size: 32, offset: 288)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_ttl_t", file: !111, line: 144, baseType: !335)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !248, line: 26, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !250, line: 42, baseType: !112)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "stale_ttl", scope: !320, file: !311, line: 124, baseType: !334, size: 32, offset: 320)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "trust", scope: !320, file: !311, line: 125, baseType: !252, size: 16, offset: 352)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "covers", scope: !320, file: !311, line: 126, baseType: !253, size: 16, offset: 368)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !320, file: !311, line: 131, baseType: !112, size: 32, offset: 384)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !320, file: !311, line: 139, baseType: !335, size: 32, offset: 416)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "resign", scope: !320, file: !311, line: 145, baseType: !343, size: 32, offset: 448)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_stdtime_t", file: !344, line: 26, baseType: !335)
!344 = !DIFile(filename: "../../lib/isc/unix/include/isc/stdtime.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/dns", checksumkind: CSK_MD5, checksum: "b8868fded6c0eb282ad50986c628a693")
!345 = !DIDerivedType(tag: DW_TAG_member, name: "private1", scope: !320, file: !311, line: 152, baseType: !244, size: 64, offset: 512)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "private2", scope: !320, file: !311, line: 153, baseType: !244, size: 64, offset: 576)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "private3", scope: !320, file: !311, line: 154, baseType: !244, size: 64, offset: 640)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "privateuint4", scope: !320, file: !311, line: 155, baseType: !112, size: 32, offset: 704)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "private5", scope: !320, file: !311, line: 156, baseType: !244, size: 64, offset: 768)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "private6", scope: !320, file: !311, line: 157, baseType: !351, size: 64, offset: 832)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "private7", scope: !320, file: !311, line: 158, baseType: !351, size: 64, offset: 896)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !312, file: !311, line: 66, baseType: !355, size: 64, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!358, !318}
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_result_t", file: !359, line: 67, baseType: !112)
!359 = !DIFile(filename: "isc/include/isc/types.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib", checksumkind: CSK_MD5, checksum: "6a355582c4f962c465b18bab43b68c96")
!360 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !312, file: !311, line: 67, baseType: !355, size: 64, offset: 128)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !312, file: !311, line: 68, baseType: !362, size: 64, offset: 192)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DISubroutineType(types: !364)
!364 = !{null, !318, !365}
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdata_t", file: !111, line: 119, baseType: !367)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_rdata", file: !368, line: 112, size: 320, elements: !369)
!368 = !DIFile(filename: "include/dns/rdata.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/dns", checksumkind: CSK_MD5, checksum: "e790fb4f336bc4fdcd566550403b32a6")
!369 = !{!370, !371, !372, !373, !374, !375}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !367, file: !368, line: 113, baseType: !245, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !367, file: !368, line: 114, baseType: !112, size: 32, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "rdclass", scope: !367, file: !368, line: 115, baseType: !331, size: 16, offset: 96)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !367, file: !368, line: 116, baseType: !253, size: 16, offset: 112)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !367, file: !368, line: 117, baseType: !112, size: 32, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !367, file: !368, line: 118, baseType: !376, size: 128, offset: 192)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !367, file: !368, line: 118, size: 128, elements: !377)
!377 = !{!378, !379}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !376, file: !368, line: 118, baseType: !365, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !376, file: !368, line: 118, baseType: !365, size: 64, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "clone", scope: !312, file: !311, line: 70, baseType: !381, size: 64, offset: 256)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{null, !318, !318}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !312, file: !311, line: 72, baseType: !385, size: 64, offset: 320)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{!112, !318}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "addnoqname", scope: !312, file: !311, line: 73, baseType: !389, size: 64, offset: 384)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DISubroutineType(types: !391)
!391 = !{!358, !318, !392}
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !394)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_name_t", file: !111, line: 107, baseType: !395)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_name", file: !396, line: 104, size: 640, elements: !397)
!396 = !DIFile(filename: "include/dns/name.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/dns", checksumkind: CSK_MD5, checksum: "ec64c9a43875cd86cb4b0e37c1191a89")
!397 = !{!398, !399, !400, !401, !402, !403, !404, !427, !433}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !395, file: !396, line: 105, baseType: !112, size: 32)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "ndata", scope: !395, file: !396, line: 106, baseType: !245, size: 64, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !395, file: !396, line: 107, baseType: !112, size: 32, offset: 128)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "labels", scope: !395, file: !396, line: 108, baseType: !112, size: 32, offset: 160)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !395, file: !396, line: 109, baseType: !112, size: 32, offset: 192)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !395, file: !396, line: 110, baseType: !245, size: 64, offset: 256)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !395, file: !396, line: 111, baseType: !405, size: 64, offset: 320)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_buffer_t", file: !359, line: 35, baseType: !407)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_buffer", file: !408, line: 173, size: 512, elements: !409)
!408 = !DIFile(filename: "isc/include/isc/buffer.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib", checksumkind: CSK_MD5, checksum: "feec9784066f3891a27281dd5bdccd55")
!409 = !{!410, !411, !412, !413, !414, !415, !416, !421, !425}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !407, file: !408, line: 174, baseType: !112, size: 32)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !407, file: !408, line: 175, baseType: !244, size: 64, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !407, file: !408, line: 178, baseType: !112, size: 32, offset: 128)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !407, file: !408, line: 179, baseType: !112, size: 32, offset: 160)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !407, file: !408, line: 180, baseType: !112, size: 32, offset: 192)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !407, file: !408, line: 181, baseType: !112, size: 32, offset: 224)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !407, file: !408, line: 184, baseType: !417, size: 128, offset: 256)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !407, file: !408, line: 184, size: 128, elements: !418)
!418 = !{!419, !420}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !417, file: !408, line: 184, baseType: !405, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !417, file: !408, line: 184, baseType: !405, size: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "mctx", scope: !407, file: !408, line: 186, baseType: !422, size: 64, offset: 384)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_mem_t", file: !359, line: 59, baseType: !424)
!424 = !DICompositeType(tag: DW_TAG_structure_type, name: "isc_mem", file: !359, line: 59, flags: DIFlagFwdDecl)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "autore", scope: !407, file: !408, line: 188, baseType: !426, size: 8, offset: 448)
!426 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !395, file: !396, line: 112, baseType: !428, size: 128, offset: 384)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !395, file: !396, line: 112, size: 128, elements: !429)
!429 = !{!430, !432}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !428, file: !396, line: 112, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !428, file: !396, line: 112, baseType: !431, size: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !395, file: !396, line: 113, baseType: !434, size: 128, offset: 512)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !395, file: !396, line: 113, size: 128, elements: !435)
!435 = !{!436, !437}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !434, file: !396, line: 113, baseType: !318, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !434, file: !396, line: 113, baseType: !318, size: 64, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "getnoqname", scope: !312, file: !311, line: 75, baseType: !439, size: 64, offset: 448)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{!358, !318, !431, !318, !318}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "addclosest", scope: !312, file: !311, line: 79, baseType: !389, size: 64, offset: 512)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "getclosest", scope: !312, file: !311, line: 81, baseType: !439, size: 64, offset: 576)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "settrust", scope: !312, file: !311, line: 85, baseType: !445, size: 64, offset: 640)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{null, !318, !252}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "expire", scope: !312, file: !311, line: 87, baseType: !315, size: 64, offset: 704)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "clearprefetch", scope: !312, file: !311, line: 88, baseType: !315, size: 64, offset: 768)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "setownercase", scope: !312, file: !311, line: 89, baseType: !451, size: 64, offset: 832)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{null, !318, !392}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "getownercase", scope: !312, file: !311, line: 91, baseType: !455, size: 64, offset: 896)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{null, !458, !431}
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !319)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "addglue", scope: !312, file: !311, line: 93, baseType: !461, size: 64, offset: 960)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{!358, !318, !464, !466}
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_dbversion_t", file: !111, line: 61, baseType: null)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_message_t", file: !111, line: 103, baseType: !468)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_message", file: !469, line: 197, size: 3840, elements: !470)
!469 = !DIFile(filename: "include/dns/message.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/dns", checksumkind: CSK_MD5, checksum: "6416f0e57c4314c86bb1ccbb29bdbc0d")
!470 = !{!471, !472, !474, !475, !476, !478, !479, !483, !490, !492, !493, !494, !495, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !547, !548, !552, !553, !559, !560, !568, !573, !578, !583, !609, !610, !611, !612, !613, !617, !622, !623, !624, !625, !629, !630, !631, !632, !639}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !468, file: !469, line: 199, baseType: !112, size: 32)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !468, file: !469, line: 201, baseType: !473, size: 16, offset: 32)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_messageid_t", file: !111, line: 104, baseType: !247)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !468, file: !469, line: 202, baseType: !112, size: 32, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "rcode", scope: !468, file: !469, line: 203, baseType: !254, size: 16, offset: 96)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !468, file: !469, line: 204, baseType: !477, size: 16, offset: 112)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_opcode_t", file: !111, line: 111, baseType: !247)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "rdclass", scope: !468, file: !469, line: 205, baseType: !331, size: 16, offset: 128)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "counts", scope: !468, file: !469, line: 208, baseType: !480, size: 128, offset: 160)
!480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 128, elements: !481)
!481 = !{!482}
!482 = !DISubrange(count: 4)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "sections", scope: !468, file: !469, line: 211, baseType: !484, size: 512, offset: 320)
!484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !485, size: 512, elements: !481)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_namelist_t", file: !111, line: 108, baseType: !486)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !111, line: 108, size: 128, elements: !487)
!487 = !{!488, !489}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !486, file: !111, line: 108, baseType: !431, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !486, file: !111, line: 108, baseType: !431, size: 64, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "cursors", scope: !468, file: !469, line: 212, baseType: !491, size: 256, offset: 832)
!491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 256, elements: !481)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "opt", scope: !468, file: !469, line: 213, baseType: !318, size: 64, offset: 1088)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "sig0", scope: !468, file: !469, line: 214, baseType: !318, size: 64, offset: 1152)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "tsig", scope: !468, file: !469, line: 215, baseType: !318, size: 64, offset: 1216)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !468, file: !469, line: 217, baseType: !496, size: 32, offset: 1280)
!496 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "from_to_wire", scope: !468, file: !469, line: 218, baseType: !112, size: 2, offset: 1312, flags: DIFlagBitField, extraData: i64 1312)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "header_ok", scope: !468, file: !469, line: 219, baseType: !112, size: 1, offset: 1314, flags: DIFlagBitField, extraData: i64 1312)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "question_ok", scope: !468, file: !469, line: 220, baseType: !112, size: 1, offset: 1315, flags: DIFlagBitField, extraData: i64 1312)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_continuation", scope: !468, file: !469, line: 221, baseType: !112, size: 1, offset: 1316, flags: DIFlagBitField, extraData: i64 1312)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "verified_sig", scope: !468, file: !469, line: 222, baseType: !112, size: 1, offset: 1317, flags: DIFlagBitField, extraData: i64 1312)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "verify_attempted", scope: !468, file: !469, line: 223, baseType: !112, size: 1, offset: 1318, flags: DIFlagBitField, extraData: i64 1312)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "free_query", scope: !468, file: !469, line: 224, baseType: !112, size: 1, offset: 1319, flags: DIFlagBitField, extraData: i64 1312)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "free_saved", scope: !468, file: !469, line: 225, baseType: !112, size: 1, offset: 1320, flags: DIFlagBitField, extraData: i64 1312)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "cc_ok", scope: !468, file: !469, line: 226, baseType: !112, size: 1, offset: 1321, flags: DIFlagBitField, extraData: i64 1312)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "cc_bad", scope: !468, file: !469, line: 227, baseType: !112, size: 1, offset: 1322, flags: DIFlagBitField, extraData: i64 1312)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "tkey", scope: !468, file: !469, line: 228, baseType: !112, size: 1, offset: 1323, flags: DIFlagBitField, extraData: i64 1312)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "rdclass_set", scope: !468, file: !469, line: 229, baseType: !112, size: 1, offset: 1324, flags: DIFlagBitField, extraData: i64 1312)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "opt_reserved", scope: !468, file: !469, line: 231, baseType: !112, size: 32, offset: 1344)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "sig_reserved", scope: !468, file: !469, line: 232, baseType: !112, size: 32, offset: 1376)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !468, file: !469, line: 233, baseType: !112, size: 32, offset: 1408)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !468, file: !469, line: 235, baseType: !247, size: 16, offset: 1440)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "padding_off", scope: !468, file: !469, line: 236, baseType: !112, size: 32, offset: 1472)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !468, file: !469, line: 238, baseType: !405, size: 64, offset: 1536)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "cctx", scope: !468, file: !469, line: 239, baseType: !516, size: 64, offset: 1600)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_compress_t", file: !111, line: 53, baseType: !518)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_compress", file: !519, line: 66, size: 18688, elements: !520)
!519 = !DIFile(filename: "include/dns/compress.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/dns", checksumkind: CSK_MD5, checksum: "ae360072e6dd15c4fe76c4efa2dcea4c")
!520 = !{!521, !522, !523, !524, !543, !545, !546}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !518, file: !519, line: 67, baseType: !112, size: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "allowed", scope: !518, file: !519, line: 68, baseType: !112, size: 32, offset: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "edns", scope: !518, file: !519, line: 69, baseType: !496, size: 32, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !518, file: !519, line: 71, baseType: !525, size: 4096, offset: 128)
!525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !526, size: 4096, elements: !541)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_compressnode_t", file: !519, line: 56, baseType: !528)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_compressnode", file: !519, line: 58, size: 896, elements: !529)
!529 = !{!530, !531, !532, !533, !540}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !528, file: !519, line: 59, baseType: !526, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !528, file: !519, line: 60, baseType: !247, size: 16, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !528, file: !519, line: 61, baseType: !247, size: 16, offset: 80)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !528, file: !519, line: 62, baseType: !534, size: 128, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_region_t", file: !359, line: 65, baseType: !535)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_region", file: !536, line: 21, size: 128, elements: !537)
!536 = !DIFile(filename: "isc/include/isc/region.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib", checksumkind: CSK_MD5, checksum: "2ed4a07dc05ddbd48f51e2dc9be9f317")
!537 = !{!538, !539}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !535, file: !536, line: 22, baseType: !245, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !535, file: !536, line: 23, baseType: !112, size: 32, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !528, file: !519, line: 63, baseType: !394, size: 640, offset: 256)
!541 = !{!542}
!542 = !DISubrange(count: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "initialnodes", scope: !518, file: !519, line: 73, baseType: !544, size: 14336, offset: 4224)
!544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !527, size: 14336, elements: !289)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !518, file: !519, line: 74, baseType: !247, size: 16, offset: 18560)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "mctx", scope: !518, file: !519, line: 75, baseType: !422, size: 64, offset: 18624)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "mctx", scope: !468, file: !469, line: 241, baseType: !422, size: 64, offset: 1664)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "namepool", scope: !468, file: !469, line: 242, baseType: !549, size: 64, offset: 1728)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_mempool_t", file: !359, line: 60, baseType: !551)
!551 = !DICompositeType(tag: DW_TAG_structure_type, name: "isc_mempool", file: !359, line: 60, flags: DIFlagFwdDecl)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "rdspool", scope: !468, file: !469, line: 243, baseType: !549, size: 64, offset: 1792)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "scratchpad", scope: !468, file: !469, line: 245, baseType: !554, size: 128, offset: 1856)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_bufferlist_t", file: !359, line: 36, baseType: !555)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !359, line: 36, size: 128, elements: !556)
!556 = !{!557, !558}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !555, file: !359, line: 36, baseType: !405, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !555, file: !359, line: 36, baseType: !405, size: 64, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !468, file: !469, line: 246, baseType: !554, size: 128, offset: 1984)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "rdatas", scope: !468, file: !469, line: 248, baseType: !561, size: 128, offset: 2112)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !468, file: !469, line: 248, size: 128, elements: !562)
!562 = !{!563, !567}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !561, file: !469, line: 248, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_msgblock_t", file: !469, line: 189, baseType: !566)
!566 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_msgblock", file: !469, line: 189, flags: DIFlagFwdDecl)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !561, file: !469, line: 248, baseType: !564, size: 64, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "rdatalists", scope: !468, file: !469, line: 249, baseType: !569, size: 128, offset: 2240)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !468, file: !469, line: 249, size: 128, elements: !570)
!570 = !{!571, !572}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !569, file: !469, line: 249, baseType: !564, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !569, file: !469, line: 249, baseType: !564, size: 64, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !468, file: !469, line: 250, baseType: !574, size: 128, offset: 2368)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !468, file: !469, line: 250, size: 128, elements: !575)
!575 = !{!576, !577}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !574, file: !469, line: 250, baseType: !564, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !574, file: !469, line: 250, baseType: !564, size: 64, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "freerdata", scope: !468, file: !469, line: 252, baseType: !579, size: 128, offset: 2496)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !468, file: !469, line: 252, size: 128, elements: !580)
!580 = !{!581, !582}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !579, file: !469, line: 252, baseType: !365, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !579, file: !469, line: 252, baseType: !365, size: 64, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "freerdatalist", scope: !468, file: !469, line: 253, baseType: !584, size: 128, offset: 2624)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !468, file: !469, line: 253, size: 128, elements: !585)
!585 = !{!586, !608}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !584, file: !469, line: 253, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdatalist_t", file: !111, line: 122, baseType: !589)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_rdatalist", file: !590, line: 47, size: 640, elements: !591)
!590 = !DIFile(filename: "include/dns/rdatalist.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/dns", checksumkind: CSK_MD5, checksum: "83ad1004003459f099937cac6d2eb8e0")
!591 = !{!592, !593, !594, !595, !596, !601, !606}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "rdclass", scope: !589, file: !590, line: 48, baseType: !331, size: 16)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !589, file: !590, line: 49, baseType: !253, size: 16, offset: 16)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "covers", scope: !589, file: !590, line: 50, baseType: !253, size: 16, offset: 32)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !589, file: !590, line: 51, baseType: !334, size: 32, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "rdata", scope: !589, file: !590, line: 52, baseType: !597, size: 128, offset: 128)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !589, file: !590, line: 52, size: 128, elements: !598)
!598 = !{!599, !600}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !597, file: !590, line: 52, baseType: !365, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !597, file: !590, line: 52, baseType: !365, size: 64, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !589, file: !590, line: 53, baseType: !602, size: 128, offset: 256)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !589, file: !590, line: 53, size: 128, elements: !603)
!603 = !{!604, !605}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !602, file: !590, line: 53, baseType: !587, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !602, file: !590, line: 53, baseType: !587, size: 64, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "upper", scope: !589, file: !590, line: 59, baseType: !607, size: 256, offset: 384)
!607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 256, elements: !26)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !584, file: !469, line: 253, baseType: !587, size: 64, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "tsigstatus", scope: !468, file: !469, line: 255, baseType: !254, size: 16, offset: 2752)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "querytsigstatus", scope: !468, file: !469, line: 256, baseType: !254, size: 16, offset: 2768)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "tsigname", scope: !468, file: !469, line: 257, baseType: !431, size: 64, offset: 2816)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "querytsig", scope: !468, file: !469, line: 258, baseType: !318, size: 64, offset: 2880)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "tsigkey", scope: !468, file: !469, line: 259, baseType: !614, size: 64, offset: 2944)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_tsigkey_t", file: !111, line: 143, baseType: !616)
!616 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_tsigkey", file: !111, line: 143, flags: DIFlagFwdDecl)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "tsigctx", scope: !468, file: !469, line: 260, baseType: !618, size: 64, offset: 3008)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "dst_context_t", file: !620, line: 45, baseType: !621)
!620 = !DIFile(filename: "include/dst/dst.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/dns", checksumkind: CSK_MD5, checksum: "10e76bcacbe005e6cc7dee2ac6ffac9a")
!621 = !DICompositeType(tag: DW_TAG_structure_type, name: "dst_context", file: !620, line: 45, flags: DIFlagFwdDecl)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "sigstart", scope: !468, file: !469, line: 261, baseType: !496, size: 32, offset: 3072)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "timeadjust", scope: !468, file: !469, line: 262, baseType: !496, size: 32, offset: 3104)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "sig0name", scope: !468, file: !469, line: 264, baseType: !431, size: 64, offset: 3136)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "sig0key", scope: !468, file: !469, line: 265, baseType: !626, size: 64, offset: 3200)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "dst_key_t", file: !620, line: 44, baseType: !628)
!628 = !DICompositeType(tag: DW_TAG_structure_type, name: "dst_key", file: !620, line: 44, flags: DIFlagFwdDecl)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "sig0status", scope: !468, file: !469, line: 266, baseType: !254, size: 16, offset: 3264)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "query", scope: !468, file: !469, line: 267, baseType: !534, size: 128, offset: 3328)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "saved", scope: !468, file: !469, line: 268, baseType: !534, size: 128, offset: 3456)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !468, file: !469, line: 270, baseType: !633, size: 64, offset: 3584)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdatasetorderfunc_t", file: !111, line: 415, baseType: !634)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!496, !637, !351}
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !366)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "order_arg", scope: !468, file: !469, line: 271, baseType: !640, size: 192, offset: 3648)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_sortlist_arg_t", file: !111, line: 134, baseType: !641)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_sortlist_arg", file: !469, line: 191, size: 192, elements: !642)
!642 = !{!643, !647, !652}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !641, file: !469, line: 192, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_aclenv_t", file: !111, line: 32, baseType: !646)
!646 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_aclenv", file: !111, line: 32, flags: DIFlagFwdDecl)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "acl", scope: !641, file: !469, line: 193, baseType: !648, size: 64, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !650)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_acl_t", file: !111, line: 30, baseType: !651)
!651 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_acl", file: !111, line: 30, flags: DIFlagFwdDecl)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "element", scope: !641, file: !469, line: 194, baseType: !653, size: 64, offset: 128)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !655)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_aclelement_t", file: !111, line: 31, baseType: !656)
!656 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_aclelement", file: !111, line: 31, flags: DIFlagFwdDecl)
!657 = !{i32 7, !"Dwarf Version", i32 5}
!658 = !{i32 2, !"Debug Info Version", i32 3}
!659 = !{i32 1, !"wchar_size", i32 4}
!660 = !{i32 8, !"PIC Level", i32 2}
!661 = !{i32 7, !"uwtable", i32 2}
!662 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!663 = distinct !DISubprogram(name: "dns_ncache_add", scope: !2, file: !2, line: 98, type: !664, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !108, retainedNodes: !1072)
!664 = !DISubroutineType(types: !665)
!665 = !{!358, !466, !666, !783, !253, !343, !334, !334, !318}
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_db_t", file: !111, line: 54, baseType: !668)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_db", file: !669, line: 223, size: 1024, elements: !670)
!669 = !DIFile(filename: "include/dns/db.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/dns", checksumkind: CSK_MD5, checksum: "f7341a6445a0da00d6edbc7f74bf2ce5")
!670 = !{!671, !672, !673, !1048, !1049, !1050, !1051, !1052}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !668, file: !669, line: 224, baseType: !112, size: 32)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "impmagic", scope: !668, file: !669, line: 225, baseType: !112, size: 32, offset: 32)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "methods", scope: !668, file: !669, line: 226, baseType: !674, size: 64, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_dbmethods_t", file: !669, line: 200, baseType: !676)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_dbmethods", file: !669, line: 71, size: 3072, elements: !677)
!677 = !{!678, !683, !687, !694, !695, !755, !761, !766, !770, !774, !778, !785, !789, !793, !797, !801, !805, !809, !817, !821, !829, !833, !837, !841, !845, !849, !850, !854, !861, !865, !869, !880, !881, !885, !889, !893, !894, !901, !905, !909, !1012, !1016, !1023, !1027, !1031, !1038, !1042, !1047}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !676, file: !669, line: 72, baseType: !679, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DISubroutineType(types: !681)
!681 = !{null, !666, !682}
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !676, file: !669, line: 73, baseType: !684, size: 64, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DISubroutineType(types: !686)
!686 = !{null, !682}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "beginload", scope: !676, file: !669, line: 74, baseType: !688, size: 64, offset: 128)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DISubroutineType(types: !690)
!690 = !{!358, !666, !691}
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdatacallbacks_t", file: !111, line: 120, baseType: !693)
!693 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_rdatacallbacks", file: !111, line: 120, flags: DIFlagFwdDecl)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "endload", scope: !676, file: !669, line: 76, baseType: !688, size: 64, offset: 192)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "serialize", scope: !676, file: !669, line: 78, baseType: !696, size: 64, offset: 256)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DISubroutineType(types: !698)
!698 = !{!358, !666, !464, !699}
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !701, line: 7, baseType: !702)
!701 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !703, line: 49, size: 1728, elements: !704)
!703 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!704 = !{!705, !706, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !721, !723, !724, !725, !728, !729, !731, !735, !738, !740, !743, !746, !747, !748, !752, !753}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !702, file: !703, line: 51, baseType: !496, size: 32)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !702, file: !703, line: 54, baseType: !707, size: 64, offset: 64)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !702, file: !703, line: 55, baseType: !707, size: 64, offset: 128)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !702, file: !703, line: 56, baseType: !707, size: 64, offset: 192)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !702, file: !703, line: 57, baseType: !707, size: 64, offset: 256)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !702, file: !703, line: 58, baseType: !707, size: 64, offset: 320)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !702, file: !703, line: 59, baseType: !707, size: 64, offset: 384)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !702, file: !703, line: 60, baseType: !707, size: 64, offset: 448)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !702, file: !703, line: 61, baseType: !707, size: 64, offset: 512)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !702, file: !703, line: 64, baseType: !707, size: 64, offset: 576)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !702, file: !703, line: 65, baseType: !707, size: 64, offset: 640)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !702, file: !703, line: 66, baseType: !707, size: 64, offset: 704)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !702, file: !703, line: 68, baseType: !719, size: 64, offset: 768)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !703, line: 36, flags: DIFlagFwdDecl)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !702, file: !703, line: 70, baseType: !722, size: 64, offset: 832)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !702, file: !703, line: 72, baseType: !496, size: 32, offset: 896)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !702, file: !703, line: 73, baseType: !496, size: 32, offset: 928)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !702, file: !703, line: 74, baseType: !726, size: 64, offset: 960)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !250, line: 152, baseType: !727)
!727 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !702, file: !703, line: 77, baseType: !251, size: 16, offset: 1024)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !702, file: !703, line: 78, baseType: !730, size: 8, offset: 1040)
!730 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !702, file: !703, line: 79, baseType: !732, size: 8, offset: 1048)
!732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8, elements: !733)
!733 = !{!734}
!734 = !DISubrange(count: 1)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !702, file: !703, line: 81, baseType: !736, size: 64, offset: 1088)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !703, line: 43, baseType: null)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !702, file: !703, line: 89, baseType: !739, size: 64, offset: 1152)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !250, line: 153, baseType: !727)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !702, file: !703, line: 91, baseType: !741, size: 64, offset: 1216)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !703, line: 37, flags: DIFlagFwdDecl)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !702, file: !703, line: 92, baseType: !744, size: 64, offset: 1280)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !703, line: 38, flags: DIFlagFwdDecl)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !702, file: !703, line: 93, baseType: !722, size: 64, offset: 1344)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !702, file: !703, line: 94, baseType: !244, size: 64, offset: 1408)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !702, file: !703, line: 95, baseType: !749, size: 64, offset: 1472)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !750, line: 70, baseType: !751)
!750 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!751 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !702, file: !703, line: 96, baseType: !496, size: 32, offset: 1536)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !702, file: !703, line: 98, baseType: !754, size: 160, offset: 1568)
!754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 160, elements: !16)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !676, file: !669, line: 80, baseType: !756, size: 64, offset: 320)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!358, !666, !464, !759, !760}
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_masterformat_t", file: !111, line: 218, baseType: !110)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "currentversion", scope: !676, file: !669, line: 83, baseType: !762, size: 64, offset: 384)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DISubroutineType(types: !764)
!764 = !{null, !666, !765}
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "newversion", scope: !676, file: !669, line: 85, baseType: !767, size: 64, offset: 448)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DISubroutineType(types: !769)
!769 = !{!358, !666, !765}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "attachversion", scope: !676, file: !669, line: 87, baseType: !771, size: 64, offset: 512)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{null, !666, !464, !765}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "closeversion", scope: !676, file: !669, line: 89, baseType: !775, size: 64, offset: 576)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DISubroutineType(types: !777)
!777 = !{null, !666, !765, !426}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "findnode", scope: !676, file: !669, line: 92, baseType: !779, size: 64, offset: 640)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DISubroutineType(types: !781)
!781 = !{!358, !666, !392, !426, !782}
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_dbnode_t", file: !111, line: 58, baseType: null)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "find", scope: !676, file: !669, line: 95, baseType: !786, size: 64, offset: 704)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!358, !666, !392, !464, !253, !112, !343, !782, !431, !318, !318}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "findzonecut", scope: !676, file: !669, line: 102, baseType: !790, size: 64, offset: 768)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{!358, !666, !392, !112, !343, !782, !431, !431, !318, !318}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "attachnode", scope: !676, file: !669, line: 109, baseType: !794, size: 64, offset: 832)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DISubroutineType(types: !796)
!796 = !{null, !666, !783, !782}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "detachnode", scope: !676, file: !669, line: 112, baseType: !798, size: 64, offset: 896)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{null, !666, !782}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "expirenode", scope: !676, file: !669, line: 114, baseType: !802, size: 64, offset: 960)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{!358, !666, !783, !343}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "printnode", scope: !676, file: !669, line: 116, baseType: !806, size: 64, offset: 1024)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{null, !666, !783, !699}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "createiterator", scope: !676, file: !669, line: 118, baseType: !810, size: 64, offset: 1088)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DISubroutineType(types: !812)
!812 = !{!358, !666, !112, !813}
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_dbiterator_t", file: !111, line: 56, baseType: !816)
!816 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_dbiterator", file: !111, line: 56, flags: DIFlagFwdDecl)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "findrdataset", scope: !676, file: !669, line: 120, baseType: !818, size: 64, offset: 1152)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DISubroutineType(types: !820)
!820 = !{!358, !666, !783, !464, !253, !253, !343, !318, !318}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "allrdatasets", scope: !676, file: !669, line: 127, baseType: !822, size: 64, offset: 1216)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{!358, !666, !783, !464, !343, !825}
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdatasetiter_t", file: !111, line: 125, baseType: !828)
!828 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_rdatasetiter", file: !111, line: 125, flags: DIFlagFwdDecl)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "addrdataset", scope: !676, file: !669, line: 131, baseType: !830, size: 64, offset: 1280)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{!358, !666, !783, !464, !343, !318, !112, !318}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "subtractrdataset", scope: !676, file: !669, line: 137, baseType: !834, size: 64, offset: 1344)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{!358, !666, !783, !464, !318, !112, !318}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "deleterdataset", scope: !676, file: !669, line: 142, baseType: !838, size: 64, offset: 1408)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DISubroutineType(types: !840)
!840 = !{!358, !666, !783, !464, !253, !253}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "issecure", scope: !676, file: !669, line: 146, baseType: !842, size: 64, offset: 1472)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{!426, !666}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "nodecount", scope: !676, file: !669, line: 147, baseType: !846, size: 64, offset: 1536)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{!112, !666}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "ispersistent", scope: !676, file: !669, line: 148, baseType: !842, size: 64, offset: 1600)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "overmem", scope: !676, file: !669, line: 149, baseType: !851, size: 64, offset: 1664)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DISubroutineType(types: !853)
!853 = !{null, !666, !426}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "settask", scope: !676, file: !669, line: 150, baseType: !855, size: 64, offset: 1728)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DISubroutineType(types: !857)
!857 = !{null, !666, !858}
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_task_t", file: !359, line: 77, baseType: !860)
!860 = !DICompositeType(tag: DW_TAG_structure_type, name: "isc_task", file: !359, line: 77, flags: DIFlagFwdDecl)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "getoriginnode", scope: !676, file: !669, line: 151, baseType: !862, size: 64, offset: 1792)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DISubroutineType(types: !864)
!864 = !{!358, !666, !782}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "transfernode", scope: !676, file: !669, line: 152, baseType: !866, size: 64, offset: 1856)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{null, !666, !782, !782}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "getnsec3parameters", scope: !676, file: !669, line: 154, baseType: !870, size: 64, offset: 1920)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{!358, !666, !464, !873, !875, !878, !245, !879}
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_hash_t", file: !111, line: 166, baseType: !118)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !248, line: 24, baseType: !877)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !250, line: 38, baseType: !246)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "findnsec3node", scope: !676, file: !669, line: 161, baseType: !779, size: 64, offset: 1984)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "setsigningtime", scope: !676, file: !669, line: 164, baseType: !882, size: 64, offset: 2048)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DISubroutineType(types: !884)
!884 = !{!358, !666, !318, !343}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "getsigningtime", scope: !676, file: !669, line: 167, baseType: !886, size: 64, offset: 2112)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DISubroutineType(types: !888)
!888 = !{!358, !666, !318, !431}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "resigned", scope: !676, file: !669, line: 170, baseType: !890, size: 64, offset: 2176)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DISubroutineType(types: !892)
!892 = !{null, !666, !318, !464}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "isdnssec", scope: !676, file: !669, line: 172, baseType: !842, size: 64, offset: 2240)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "getrrsetstats", scope: !676, file: !669, line: 173, baseType: !895, size: 64, offset: 2304)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DISubroutineType(types: !897)
!897 = !{!898, !666}
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_stats_t", file: !111, line: 137, baseType: !900)
!900 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_stats", file: !111, line: 137, flags: DIFlagFwdDecl)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "rpz_attach", scope: !676, file: !669, line: 174, baseType: !902, size: 64, offset: 2368)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DISubroutineType(types: !904)
!904 = !{null, !666, !244, !876}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "rpz_ready", scope: !676, file: !669, line: 176, baseType: !906, size: 64, offset: 2432)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DISubroutineType(types: !908)
!908 = !{!358, !666}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "findnodeext", scope: !676, file: !669, line: 177, baseType: !910, size: 64, offset: 2496)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DISubroutineType(types: !912)
!912 = !{!358, !666, !392, !426, !913, !925, !782}
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_clientinfomethods_t", file: !915, line: 68, baseType: !916)
!915 = !DIFile(filename: "include/dns/clientinfo.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/dns", checksumkind: CSK_MD5, checksum: "f273dbbef534c5352c6d152e1993b2e9")
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_clientinfomethods", file: !915, line: 64, size: 128, elements: !917)
!917 = !{!918, !919, !920}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !916, file: !915, line: 65, baseType: !247, size: 16)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "age", scope: !916, file: !915, line: 66, baseType: !247, size: 16, offset: 16)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "sourceip", scope: !916, file: !915, line: 67, baseType: !921, size: 64, offset: 64)
!921 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_clientinfo_sourceip_t", file: !915, line: 58, baseType: !922)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DISubroutineType(types: !924)
!924 = !{!358, !925, !932}
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_clientinfo_t", file: !915, line: 56, baseType: !927)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_clientinfo", file: !915, line: 52, size: 192, elements: !928)
!928 = !{!929, !930, !931}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !927, file: !915, line: 53, baseType: !247, size: 16)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !927, file: !915, line: 54, baseType: !244, size: 64, offset: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "dbversion", scope: !927, file: !915, line: 55, baseType: !244, size: 64, offset: 128)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_sockaddr_t", file: !359, line: 69, baseType: !935)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_sockaddr", file: !936, line: 27, size: 1216, elements: !937)
!936 = !DIFile(filename: "isc/include/isc/sockaddr.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib", checksumkind: CSK_MD5, checksum: "b46a0f057942d922d0824c5621821d46")
!937 = !{!938, !1005, !1006}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !935, file: !936, line: 36, baseType: !939, size: 1024)
!939 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !935, file: !936, line: 28, size: 1024, elements: !940)
!940 = !{!941, !952, !968, !987, !996}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !939, file: !936, line: 29, baseType: !942, size: 128)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !943, line: 180, size: 128, elements: !944)
!943 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!944 = !{!945, !948}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !942, file: !943, line: 182, baseType: !946, size: 16)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !947, line: 28, baseType: !251)
!947 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!948 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !942, file: !943, line: 183, baseType: !949, size: 112, offset: 16)
!949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 112, elements: !950)
!950 = !{!951}
!951 = !DISubrange(count: 14)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "sin", scope: !939, file: !936, line: 30, baseType: !953, size: 128)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !954, line: 245, size: 128, elements: !955)
!954 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!955 = !{!956, !957, !959, !964}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !953, file: !954, line: 247, baseType: !946, size: 16)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !953, file: !954, line: 248, baseType: !958, size: 16, offset: 16)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !954, line: 123, baseType: !247)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !953, file: !954, line: 249, baseType: !960, size: 32, offset: 32)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !954, line: 31, size: 32, elements: !961)
!961 = !{!962}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !960, file: !954, line: 33, baseType: !963, size: 32)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !954, line: 30, baseType: !335)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !953, file: !954, line: 252, baseType: !965, size: 64, offset: 64)
!965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 64, elements: !966)
!966 = !{!967}
!967 = !DISubrange(count: 8)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "sin6", scope: !939, file: !936, line: 31, baseType: !969, size: 224)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !954, line: 260, size: 224, elements: !970)
!970 = !{!971, !972, !973, !974, !986}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !969, file: !954, line: 262, baseType: !946, size: 16)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !969, file: !954, line: 263, baseType: !958, size: 16, offset: 16)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !969, file: !954, line: 264, baseType: !335, size: 32, offset: 32)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !969, file: !954, line: 265, baseType: !975, size: 128, offset: 64)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !954, line: 219, size: 128, elements: !976)
!976 = !{!977}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !975, file: !954, line: 226, baseType: !978, size: 128)
!978 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !975, file: !954, line: 221, size: 128, elements: !979)
!979 = !{!980, !982, !984}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !978, file: !954, line: 223, baseType: !981, size: 128)
!981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !876, size: 128, elements: !289)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !978, file: !954, line: 224, baseType: !983, size: 128)
!983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 128, elements: !966)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !978, file: !954, line: 225, baseType: !985, size: 128)
!985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 128, elements: !481)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !969, file: !954, line: 266, baseType: !335, size: 32, offset: 192)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !939, file: !936, line: 32, baseType: !988, size: 1024)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !943, line: 193, size: 1024, elements: !989)
!989 = !{!990, !991, !995}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !988, file: !943, line: 195, baseType: !946, size: 16)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !988, file: !943, line: 196, baseType: !992, size: 944, offset: 16)
!992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 944, elements: !993)
!993 = !{!994}
!994 = !DISubrange(count: 118)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !988, file: !943, line: 197, baseType: !751, size: 64, offset: 960)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "sunix", scope: !939, file: !936, line: 34, baseType: !997, size: 880)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_un", file: !998, line: 29, size: 880, elements: !999)
!998 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/un.h", directory: "", checksumkind: CSK_MD5, checksum: "543d98cd612c9215c9333043f81a0cd3")
!999 = !{!1000, !1001}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "sun_family", scope: !997, file: !998, line: 31, baseType: !946, size: 16)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "sun_path", scope: !997, file: !998, line: 32, baseType: !1002, size: 864, offset: 16)
!1002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 864, elements: !1003)
!1003 = !{!1004}
!1004 = !DISubrange(count: 108)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !935, file: !936, line: 37, baseType: !112, size: 32, offset: 1024)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !935, file: !936, line: 38, baseType: !1007, size: 128, offset: 1088)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !935, file: !936, line: 38, size: 128, elements: !1008)
!1008 = !{!1009, !1011}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1007, file: !936, line: 38, baseType: !1010, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1007, file: !936, line: 38, baseType: !1010, size: 64, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "findext", scope: !676, file: !669, line: 182, baseType: !1013, size: 64, offset: 2560)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!358, !666, !392, !464, !253, !112, !343, !782, !431, !913, !925, !318, !318}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "setcachestats", scope: !676, file: !669, line: 191, baseType: !1017, size: 64, offset: 2624)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!358, !666, !1020}
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_stats_t", file: !359, line: 74, baseType: !1022)
!1022 = !DICompositeType(tag: DW_TAG_structure_type, name: "isc_stats", file: !359, line: 74, flags: DIFlagFwdDecl)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "hashsize", scope: !676, file: !669, line: 192, baseType: !1024, size: 64, offset: 2688)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!749, !666}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "nodefullname", scope: !676, file: !669, line: 193, baseType: !1028, size: 64, offset: 2752)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!358, !666, !783, !431}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "getsize", scope: !676, file: !669, line: 195, baseType: !1032, size: 64, offset: 2816)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!358, !666, !464, !1035, !1035}
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !248, line: 27, baseType: !1037)
!1037 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !250, line: 45, baseType: !751)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "setservestalettl", scope: !676, file: !669, line: 197, baseType: !1039, size: 64, offset: 2880)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!358, !666, !334}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "getservestalettl", scope: !676, file: !669, line: 198, baseType: !1043, size: 64, offset: 2944)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!358, !666, !1046}
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "setgluecachestats", scope: !676, file: !669, line: 199, baseType: !1017, size: 64, offset: 3008)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !668, file: !669, line: 227, baseType: !247, size: 16, offset: 128)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "rdclass", scope: !668, file: !669, line: 228, baseType: !331, size: 16, offset: 144)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !668, file: !669, line: 229, baseType: !394, size: 640, offset: 192)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "mctx", scope: !668, file: !669, line: 230, baseType: !422, size: 64, offset: 832)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "update_listeners", scope: !668, file: !669, line: 231, baseType: !1053, size: 128, offset: 896)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !668, file: !669, line: 231, size: 128, elements: !1054)
!1054 = !{!1055, !1071}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1053, file: !669, line: 231, baseType: !1056, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_dbonupdatelistener_t", file: !111, line: 59, baseType: !1058)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_dbonupdatelistener", file: !669, line: 237, size: 256, elements: !1059)
!1059 = !{!1060, !1065, !1066}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "onupdate", scope: !1058, file: !669, line: 238, baseType: !1061, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_dbupdate_callback_t", file: !669, line: 209, baseType: !1062)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!358, !666, !244}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "onupdate_arg", scope: !1058, file: !669, line: 239, baseType: !244, size: 64, offset: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1058, file: !669, line: 240, baseType: !1067, size: 128, offset: 128)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1058, file: !669, line: 240, size: 128, elements: !1068)
!1068 = !{!1069, !1070}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1067, file: !669, line: 240, baseType: !1056, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1067, file: !669, line: 240, baseType: !1056, size: 64, offset: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1053, file: !669, line: 231, baseType: !1056, size: 64, offset: 64)
!1072 = !{!1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080}
!1073 = !DILocalVariable(name: "message", arg: 1, scope: !663, file: !2, line: 98, type: !466)
!1074 = !DILocalVariable(name: "cache", arg: 2, scope: !663, file: !2, line: 98, type: !666)
!1075 = !DILocalVariable(name: "node", arg: 3, scope: !663, file: !2, line: 98, type: !783)
!1076 = !DILocalVariable(name: "covers", arg: 4, scope: !663, file: !2, line: 99, type: !253)
!1077 = !DILocalVariable(name: "now", arg: 5, scope: !663, file: !2, line: 99, type: !343)
!1078 = !DILocalVariable(name: "minttl", arg: 6, scope: !663, file: !2, line: 100, type: !334)
!1079 = !DILocalVariable(name: "maxttl", arg: 7, scope: !663, file: !2, line: 100, type: !334)
!1080 = !DILocalVariable(name: "addedrdataset", arg: 8, scope: !663, file: !2, line: 101, type: !318)
!1081 = !DILocation(line: 98, column: 31, scope: !663)
!1082 = !DILocation(line: 98, column: 50, scope: !663)
!1083 = !DILocation(line: 98, column: 71, scope: !663)
!1084 = !DILocation(line: 99, column: 25, scope: !663)
!1085 = !DILocation(line: 99, column: 47, scope: !663)
!1086 = !DILocation(line: 100, column: 19, scope: !663)
!1087 = !DILocation(line: 100, column: 37, scope: !663)
!1088 = !DILocation(line: 101, column: 25, scope: !663)
!1089 = !DILocation(line: 103, column: 20, scope: !663)
!1090 = !DILocation(line: 103, column: 29, scope: !663)
!1091 = !DILocation(line: 103, column: 36, scope: !663)
!1092 = !DILocation(line: 103, column: 42, scope: !663)
!1093 = !DILocation(line: 103, column: 50, scope: !663)
!1094 = !DILocation(line: 103, column: 55, scope: !663)
!1095 = !DILocation(line: 103, column: 63, scope: !663)
!1096 = !DILocation(line: 104, column: 20, scope: !663)
!1097 = !DILocation(line: 103, column: 10, scope: !663)
!1098 = !DILocation(line: 103, column: 2, scope: !663)
!1099 = distinct !DISubprogram(name: "addoptout", scope: !2, file: !2, line: 119, type: !1100, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !108, retainedNodes: !1102)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!358, !466, !666, !783, !253, !343, !334, !334, !426, !426, !318}
!1102 = !{!1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1125, !1126, !1127, !1131, !1132, !1142, !1143, !1146, !1148, !1149}
!1103 = !DILocalVariable(name: "message", arg: 1, scope: !1099, file: !2, line: 119, type: !466)
!1104 = !DILocalVariable(name: "cache", arg: 2, scope: !1099, file: !2, line: 119, type: !666)
!1105 = !DILocalVariable(name: "node", arg: 3, scope: !1099, file: !2, line: 119, type: !783)
!1106 = !DILocalVariable(name: "covers", arg: 4, scope: !1099, file: !2, line: 120, type: !253)
!1107 = !DILocalVariable(name: "now", arg: 5, scope: !1099, file: !2, line: 120, type: !343)
!1108 = !DILocalVariable(name: "minttl", arg: 6, scope: !1099, file: !2, line: 121, type: !334)
!1109 = !DILocalVariable(name: "maxttl", arg: 7, scope: !1099, file: !2, line: 121, type: !334)
!1110 = !DILocalVariable(name: "optout", arg: 8, scope: !1099, file: !2, line: 122, type: !426)
!1111 = !DILocalVariable(name: "secure", arg: 9, scope: !1099, file: !2, line: 122, type: !426)
!1112 = !DILocalVariable(name: "addedrdataset", arg: 10, scope: !1099, file: !2, line: 123, type: !318)
!1113 = !DILocalVariable(name: "result", scope: !1099, file: !2, line: 125, type: !358)
!1114 = !DILocalVariable(name: "buffer", scope: !1099, file: !2, line: 126, type: !406)
!1115 = !DILocalVariable(name: "r", scope: !1099, file: !2, line: 127, type: !534)
!1116 = !DILocalVariable(name: "rdataset", scope: !1099, file: !2, line: 128, type: !318)
!1117 = !DILocalVariable(name: "type", scope: !1099, file: !2, line: 129, type: !253)
!1118 = !DILocalVariable(name: "name", scope: !1099, file: !2, line: 130, type: !431)
!1119 = !DILocalVariable(name: "ttl", scope: !1099, file: !2, line: 131, type: !334)
!1120 = !DILocalVariable(name: "trust", scope: !1099, file: !2, line: 132, type: !252)
!1121 = !DILocalVariable(name: "rdata", scope: !1099, file: !2, line: 133, type: !1122)
!1122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 32000, elements: !1123)
!1123 = !{!1124}
!1124 = !DISubrange(count: 100)
!1125 = !DILocalVariable(name: "ncrdataset", scope: !1099, file: !2, line: 134, type: !319)
!1126 = !DILocalVariable(name: "ncrdatalist", scope: !1099, file: !2, line: 135, type: !588)
!1127 = !DILocalVariable(name: "data", scope: !1099, file: !2, line: 136, type: !1128)
!1128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 524288, elements: !1129)
!1129 = !{!1130}
!1130 = !DISubrange(count: 65536)
!1131 = !DILocalVariable(name: "next", scope: !1099, file: !2, line: 137, type: !112)
!1132 = !DILocalVariable(name: "_cp", scope: !1133, file: !2, line: 210, type: !245)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !2, line: 210, column: 6)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !2, line: 185, column: 38)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !2, line: 183, column: 9)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !2, line: 176, column: 51)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !2, line: 174, column: 4)
!1138 = distinct !DILexicalBlock(scope: !1139, file: !2, line: 174, column: 4)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !2, line: 173, column: 54)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !2, line: 173, column: 7)
!1141 = distinct !DILexicalBlock(scope: !1099, file: !2, line: 169, column: 34)
!1142 = !DILocalVariable(name: "_val2", scope: !1133, file: !2, line: 210, type: !247)
!1143 = !DILocalVariable(name: "_tmp", scope: !1144, file: !2, line: 210, type: !405)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !2, line: 210, column: 6)
!1145 = distinct !DILexicalBlock(scope: !1133, file: !2, line: 210, column: 6)
!1146 = !DILocalVariable(name: "_cp", scope: !1147, file: !2, line: 212, type: !245)
!1147 = distinct !DILexicalBlock(scope: !1134, file: !2, line: 212, column: 6)
!1148 = !DILocalVariable(name: "_val2", scope: !1147, file: !2, line: 212, type: !876)
!1149 = !DILocalVariable(name: "_tmp", scope: !1150, file: !2, line: 212, type: !405)
!1150 = distinct !DILexicalBlock(scope: !1151, file: !2, line: 212, column: 6)
!1151 = distinct !DILexicalBlock(scope: !1147, file: !2, line: 212, column: 6)
!1152 = !DILocation(line: 119, column: 26, scope: !1099)
!1153 = !DILocation(line: 119, column: 45, scope: !1099)
!1154 = !DILocation(line: 119, column: 66, scope: !1099)
!1155 = !DILocation(line: 120, column: 20, scope: !1099)
!1156 = !DILocation(line: 120, column: 42, scope: !1099)
!1157 = !DILocation(line: 121, column: 14, scope: !1099)
!1158 = !DILocation(line: 121, column: 32, scope: !1099)
!1159 = !DILocation(line: 122, column: 9, scope: !1099)
!1160 = !DILocation(line: 122, column: 22, scope: !1099)
!1161 = !DILocation(line: 123, column: 20, scope: !1099)
!1162 = !DILocation(line: 125, column: 2, scope: !1099)
!1163 = !DILocation(line: 125, column: 15, scope: !1099)
!1164 = !DILocation(line: 126, column: 2, scope: !1099)
!1165 = !DILocation(line: 126, column: 15, scope: !1099)
!1166 = !DILocation(line: 127, column: 2, scope: !1099)
!1167 = !DILocation(line: 127, column: 15, scope: !1099)
!1168 = !DILocation(line: 128, column: 2, scope: !1099)
!1169 = !DILocation(line: 128, column: 18, scope: !1099)
!1170 = !DILocation(line: 129, column: 2, scope: !1099)
!1171 = !DILocation(line: 129, column: 18, scope: !1099)
!1172 = !DILocation(line: 130, column: 2, scope: !1099)
!1173 = !DILocation(line: 130, column: 14, scope: !1099)
!1174 = !DILocation(line: 131, column: 2, scope: !1099)
!1175 = !DILocation(line: 131, column: 12, scope: !1099)
!1176 = !DILocation(line: 132, column: 2, scope: !1099)
!1177 = !DILocation(line: 132, column: 14, scope: !1099)
!1178 = !DILocation(line: 133, column: 2, scope: !1099)
!1179 = !DILocation(line: 133, column: 14, scope: !1099)
!1180 = !DILocation(line: 134, column: 2, scope: !1099)
!1181 = !DILocation(line: 134, column: 17, scope: !1099)
!1182 = !DILocation(line: 135, column: 2, scope: !1099)
!1183 = !DILocation(line: 135, column: 18, scope: !1099)
!1184 = !DILocation(line: 136, column: 2, scope: !1099)
!1185 = !DILocation(line: 136, column: 16, scope: !1099)
!1186 = !DILocation(line: 137, column: 2, scope: !1099)
!1187 = !DILocation(line: 137, column: 15, scope: !1099)
!1188 = !DILocation(line: 144, column: 2, scope: !1099)
!1189 = !DILocation(line: 154, column: 2, scope: !1099)
!1190 = !DILocation(line: 155, column: 37, scope: !1099)
!1191 = !DILocation(line: 155, column: 24, scope: !1099)
!1192 = !DILocation(line: 155, column: 14, scope: !1099)
!1193 = !DILocation(line: 155, column: 22, scope: !1099)
!1194 = !DILocation(line: 156, column: 23, scope: !1099)
!1195 = !DILocation(line: 156, column: 14, scope: !1099)
!1196 = !DILocation(line: 156, column: 21, scope: !1099)
!1197 = !DILocation(line: 157, column: 20, scope: !1099)
!1198 = !DILocation(line: 157, column: 14, scope: !1099)
!1199 = !DILocation(line: 157, column: 18, scope: !1099)
!1200 = !DILocation(line: 162, column: 8, scope: !1099)
!1201 = !DILocation(line: 162, column: 6, scope: !1099)
!1202 = !DILocation(line: 163, column: 8, scope: !1099)
!1203 = !DILocation(line: 164, column: 2, scope: !1099)
!1204 = !DILocation(line: 164, column: 2, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1099, file: !2, line: 164, column: 2)
!1206 = !DILocation(line: 164, column: 2, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1205, file: !2, line: 164, column: 2)
!1208 = !DILocation(line: 165, column: 6, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1099, file: !2, line: 165, column: 6)
!1210 = !DILocation(line: 165, column: 15, scope: !1209)
!1211 = !DILocation(line: 165, column: 6, scope: !1099)
!1212 = !DILocation(line: 166, column: 34, scope: !1209)
!1213 = !DILocation(line: 166, column: 12, scope: !1209)
!1214 = !DILocation(line: 166, column: 10, scope: !1209)
!1215 = !DILocation(line: 166, column: 3, scope: !1209)
!1216 = !DILocation(line: 168, column: 10, scope: !1209)
!1217 = !DILocation(line: 169, column: 2, scope: !1099)
!1218 = !DILocation(line: 169, column: 9, scope: !1099)
!1219 = !DILocation(line: 169, column: 16, scope: !1099)
!1220 = !DILocation(line: 170, column: 8, scope: !1141)
!1221 = !DILocation(line: 171, column: 27, scope: !1141)
!1222 = !DILocation(line: 171, column: 3, scope: !1141)
!1223 = !DILocation(line: 173, column: 8, scope: !1140)
!1224 = !DILocation(line: 173, column: 14, scope: !1140)
!1225 = !DILocation(line: 173, column: 25, scope: !1140)
!1226 = !DILocation(line: 173, column: 48, scope: !1140)
!1227 = !DILocation(line: 173, column: 7, scope: !1141)
!1228 = !DILocation(line: 174, column: 20, scope: !1138)
!1229 = !DILocation(line: 174, column: 18, scope: !1138)
!1230 = !DILocation(line: 174, column: 9, scope: !1138)
!1231 = !DILocation(line: 175, column: 9, scope: !1137)
!1232 = !DILocation(line: 175, column: 18, scope: !1137)
!1233 = !DILocation(line: 174, column: 4, scope: !1138)
!1234 = !DILocation(line: 177, column: 10, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1136, file: !2, line: 177, column: 9)
!1236 = !DILocation(line: 177, column: 20, scope: !1235)
!1237 = !DILocation(line: 177, column: 31, scope: !1235)
!1238 = !DILocation(line: 178, column: 35, scope: !1235)
!1239 = !DILocation(line: 177, column: 9, scope: !1136)
!1240 = !DILocation(line: 179, column: 6, scope: !1235)
!1241 = !DILocation(line: 180, column: 12, scope: !1136)
!1242 = !DILocation(line: 180, column: 22, scope: !1136)
!1243 = !DILocation(line: 180, column: 10, scope: !1136)
!1244 = !DILocation(line: 181, column: 9, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1136, file: !2, line: 181, column: 9)
!1246 = !DILocation(line: 181, column: 14, scope: !1245)
!1247 = !DILocation(line: 181, column: 9, scope: !1136)
!1248 = !DILocation(line: 182, column: 13, scope: !1245)
!1249 = !DILocation(line: 182, column: 23, scope: !1245)
!1250 = !DILocation(line: 182, column: 11, scope: !1245)
!1251 = !DILocation(line: 182, column: 6, scope: !1245)
!1252 = !DILocation(line: 183, column: 9, scope: !1135)
!1253 = !DILocation(line: 183, column: 14, scope: !1135)
!1254 = !DILocation(line: 183, column: 35, scope: !1135)
!1255 = !DILocation(line: 184, column: 9, scope: !1135)
!1256 = !DILocation(line: 184, column: 14, scope: !1135)
!1257 = !DILocation(line: 184, column: 36, scope: !1135)
!1258 = !DILocation(line: 185, column: 9, scope: !1135)
!1259 = !DILocation(line: 185, column: 14, scope: !1135)
!1260 = !DILocation(line: 183, column: 9, scope: !1136)
!1261 = !DILocation(line: 186, column: 10, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1134, file: !2, line: 186, column: 10)
!1263 = !DILocation(line: 186, column: 16, scope: !1262)
!1264 = !DILocation(line: 186, column: 26, scope: !1262)
!1265 = !DILocation(line: 186, column: 14, scope: !1262)
!1266 = !DILocation(line: 186, column: 10, scope: !1134)
!1267 = !DILocation(line: 187, column: 13, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1262, file: !2, line: 186, column: 31)
!1269 = !DILocation(line: 187, column: 23, scope: !1268)
!1270 = !DILocation(line: 187, column: 11, scope: !1268)
!1271 = !DILocation(line: 188, column: 6, scope: !1268)
!1272 = !DILocation(line: 189, column: 10, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1134, file: !2, line: 189, column: 10)
!1274 = !DILocation(line: 189, column: 16, scope: !1273)
!1275 = !DILocation(line: 189, column: 14, scope: !1273)
!1276 = !DILocation(line: 189, column: 10, scope: !1134)
!1277 = !DILocation(line: 190, column: 13, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1273, file: !2, line: 189, column: 24)
!1279 = !DILocation(line: 190, column: 11, scope: !1278)
!1280 = !DILocation(line: 191, column: 6, scope: !1278)
!1281 = !DILocation(line: 192, column: 10, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1134, file: !2, line: 192, column: 10)
!1283 = !DILocation(line: 192, column: 18, scope: !1282)
!1284 = !DILocation(line: 192, column: 28, scope: !1282)
!1285 = !DILocation(line: 192, column: 16, scope: !1282)
!1286 = !DILocation(line: 192, column: 10, scope: !1134)
!1287 = !DILocation(line: 193, column: 15, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1282, file: !2, line: 192, column: 35)
!1289 = !DILocation(line: 193, column: 25, scope: !1288)
!1290 = !DILocation(line: 193, column: 13, scope: !1288)
!1291 = !DILocation(line: 194, column: 6, scope: !1288)
!1292 = !DILocation(line: 198, column: 24, scope: !1134)
!1293 = !DILocation(line: 198, column: 6, scope: !1134)
!1294 = !DILocation(line: 199, column: 15, scope: !1134)
!1295 = !DILocation(line: 199, column: 13, scope: !1134)
!1296 = !DILocation(line: 201, column: 10, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1134, file: !2, line: 201, column: 10)
!1298 = !DILocation(line: 201, column: 17, scope: !1297)
!1299 = !DILocation(line: 201, column: 10, scope: !1134)
!1300 = !DILocation(line: 202, column: 15, scope: !1297)
!1301 = !DILocation(line: 202, column: 7, scope: !1297)
!1302 = !DILocation(line: 206, column: 6, scope: !1134)
!1303 = !DILocation(line: 206, column: 6, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1134, file: !2, line: 206, column: 6)
!1305 = !DILocation(line: 208, column: 12, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1134, file: !2, line: 208, column: 10)
!1307 = !DILocation(line: 208, column: 19, scope: !1306)
!1308 = !DILocation(line: 208, column: 10, scope: !1134)
!1309 = !DILocation(line: 209, column: 7, scope: !1306)
!1310 = !DILocation(line: 210, column: 6, scope: !1134)
!1311 = !DILocation(line: 210, column: 6, scope: !1133)
!1312 = !DILocation(line: 210, column: 6, scope: !1145)
!1313 = !{i8 0, i8 2}
!1314 = !{}
!1315 = !DILocation(line: 210, column: 6, scope: !1144)
!1316 = !DILocation(line: 212, column: 6, scope: !1134)
!1317 = !DILocation(line: 212, column: 6, scope: !1147)
!1318 = !DILocation(line: 212, column: 6, scope: !1151)
!1319 = !DILocation(line: 212, column: 6, scope: !1150)
!1320 = !DILocation(line: 217, column: 29, scope: !1134)
!1321 = !DILocation(line: 217, column: 15, scope: !1134)
!1322 = !DILocation(line: 217, column: 13, scope: !1134)
!1323 = !DILocation(line: 219, column: 10, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1134, file: !2, line: 219, column: 10)
!1325 = !DILocation(line: 219, column: 17, scope: !1324)
!1326 = !DILocation(line: 219, column: 10, scope: !1134)
!1327 = !DILocation(line: 220, column: 15, scope: !1324)
!1328 = !DILocation(line: 220, column: 7, scope: !1324)
!1329 = !DILocation(line: 222, column: 10, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1134, file: !2, line: 222, column: 10)
!1331 = !DILocation(line: 222, column: 15, scope: !1330)
!1332 = !DILocation(line: 222, column: 10, scope: !1134)
!1333 = !DILocation(line: 223, column: 7, scope: !1330)
!1334 = !DILocation(line: 224, column: 28, scope: !1134)
!1335 = !DILocation(line: 224, column: 22, scope: !1134)
!1336 = !DILocation(line: 224, column: 6, scope: !1134)
!1337 = !DILocation(line: 225, column: 6, scope: !1134)
!1338 = !DILocation(line: 225, column: 6, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1134, file: !2, line: 225, column: 6)
!1340 = !DILocation(line: 226, column: 27, scope: !1134)
!1341 = !DILocation(line: 226, column: 12, scope: !1134)
!1342 = !DILocation(line: 226, column: 6, scope: !1134)
!1343 = !DILocation(line: 226, column: 18, scope: !1134)
!1344 = !DILocation(line: 226, column: 23, scope: !1134)
!1345 = !DILocation(line: 227, column: 29, scope: !1134)
!1346 = !DILocation(line: 227, column: 12, scope: !1134)
!1347 = !DILocation(line: 227, column: 6, scope: !1134)
!1348 = !DILocation(line: 227, column: 18, scope: !1134)
!1349 = !DILocation(line: 227, column: 25, scope: !1134)
!1350 = !DILocation(line: 229, column: 19, scope: !1134)
!1351 = !DILocation(line: 228, column: 12, scope: !1134)
!1352 = !DILocation(line: 228, column: 6, scope: !1134)
!1353 = !DILocation(line: 228, column: 18, scope: !1134)
!1354 = !DILocation(line: 228, column: 26, scope: !1134)
!1355 = !DILocation(line: 230, column: 12, scope: !1134)
!1356 = !DILocation(line: 230, column: 6, scope: !1134)
!1357 = !DILocation(line: 230, column: 18, scope: !1134)
!1358 = !DILocation(line: 230, column: 23, scope: !1134)
!1359 = !DILocation(line: 231, column: 12, scope: !1134)
!1360 = !DILocation(line: 231, column: 6, scope: !1134)
!1361 = !DILocation(line: 231, column: 18, scope: !1134)
!1362 = !DILocation(line: 231, column: 24, scope: !1134)
!1363 = !DILocation(line: 232, column: 6, scope: !1134)
!1364 = !DILocation(line: 232, column: 6, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1134, file: !2, line: 232, column: 6)
!1366 = !DILocation(line: 232, column: 6, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1368, file: !2, line: 232, column: 6)
!1368 = distinct !DILexicalBlock(scope: !1365, file: !2, line: 232, column: 6)
!1369 = !DILocation(line: 232, column: 6, scope: !1368)
!1370 = !DILocation(line: 234, column: 6, scope: !1134)
!1371 = !DILocation(line: 234, column: 6, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1134, file: !2, line: 234, column: 6)
!1373 = !DILocation(line: 235, column: 10, scope: !1134)
!1374 = !DILocation(line: 236, column: 5, scope: !1134)
!1375 = !DILocation(line: 237, column: 4, scope: !1136)
!1376 = !DILocation(line: 176, column: 20, scope: !1137)
!1377 = !DILocation(line: 176, column: 18, scope: !1137)
!1378 = !DILocation(line: 174, column: 4, scope: !1137)
!1379 = distinct !{!1379, !1233, !1380, !1381}
!1380 = !DILocation(line: 237, column: 4, scope: !1138)
!1381 = !{!"llvm.loop.mustprogress"}
!1382 = !DILocation(line: 238, column: 3, scope: !1139)
!1383 = !DILocation(line: 239, column: 33, scope: !1141)
!1384 = !DILocation(line: 239, column: 12, scope: !1141)
!1385 = !DILocation(line: 239, column: 10, scope: !1141)
!1386 = distinct !{!1386, !1217, !1387, !1381}
!1387 = !DILocation(line: 240, column: 2, scope: !1099)
!1388 = !DILocation(line: 241, column: 6, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1099, file: !2, line: 241, column: 6)
!1390 = !DILocation(line: 241, column: 13, scope: !1389)
!1391 = !DILocation(line: 241, column: 6, scope: !1099)
!1392 = !DILocation(line: 242, column: 11, scope: !1389)
!1393 = !DILocation(line: 242, column: 3, scope: !1389)
!1394 = !DILocation(line: 244, column: 6, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1099, file: !2, line: 244, column: 6)
!1396 = !DILocation(line: 244, column: 12, scope: !1395)
!1397 = !DILocation(line: 244, column: 6, scope: !1099)
!1398 = !DILocation(line: 245, column: 8, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !2, line: 245, column: 7)
!1400 = distinct !DILexicalBlock(scope: !1395, file: !2, line: 244, column: 23)
!1401 = !DILocation(line: 245, column: 17, scope: !1399)
!1402 = !DILocation(line: 245, column: 23, scope: !1399)
!1403 = !DILocation(line: 245, column: 45, scope: !1399)
!1404 = !DILocation(line: 245, column: 50, scope: !1399)
!1405 = !DILocation(line: 246, column: 7, scope: !1399)
!1406 = !DILocation(line: 246, column: 16, scope: !1399)
!1407 = !DILocation(line: 246, column: 43, scope: !1399)
!1408 = !DILocation(line: 245, column: 7, scope: !1400)
!1409 = !DILocation(line: 251, column: 10, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1399, file: !2, line: 246, column: 49)
!1411 = !DILocation(line: 252, column: 3, scope: !1410)
!1412 = !DILocation(line: 253, column: 10, scope: !1399)
!1413 = !DILocation(line: 254, column: 7, scope: !1400)
!1414 = !DILocation(line: 255, column: 2, scope: !1400)
!1415 = !DILocation(line: 257, column: 2, scope: !1099)
!1416 = !DILocation(line: 259, column: 20, scope: !1099)
!1417 = !DILocation(line: 259, column: 14, scope: !1099)
!1418 = !DILocation(line: 259, column: 18, scope: !1099)
!1419 = !DILocation(line: 261, column: 2, scope: !1099)
!1420 = !DILocation(line: 262, column: 2, scope: !1099)
!1421 = !DILocation(line: 264, column: 7, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1099, file: !2, line: 264, column: 6)
!1423 = !DILocation(line: 264, column: 14, scope: !1422)
!1424 = !DILocation(line: 264, column: 17, scope: !1422)
!1425 = !DILocation(line: 264, column: 23, scope: !1422)
!1426 = !DILocation(line: 264, column: 6, scope: !1099)
!1427 = !DILocation(line: 265, column: 9, scope: !1422)
!1428 = !DILocation(line: 265, column: 3, scope: !1422)
!1429 = !DILocation(line: 266, column: 21, scope: !1099)
!1430 = !DILocation(line: 266, column: 13, scope: !1099)
!1431 = !DILocation(line: 266, column: 19, scope: !1099)
!1432 = !DILocation(line: 267, column: 13, scope: !1099)
!1433 = !DILocation(line: 267, column: 24, scope: !1099)
!1434 = !DILocation(line: 268, column: 6, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1099, file: !2, line: 268, column: 6)
!1436 = !DILocation(line: 268, column: 15, scope: !1435)
!1437 = !DILocation(line: 268, column: 21, scope: !1435)
!1438 = !DILocation(line: 268, column: 6, scope: !1099)
!1439 = !DILocation(line: 269, column: 14, scope: !1435)
!1440 = !DILocation(line: 269, column: 25, scope: !1435)
!1441 = !DILocation(line: 269, column: 3, scope: !1435)
!1442 = !DILocation(line: 270, column: 6, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1099, file: !2, line: 270, column: 6)
!1444 = !DILocation(line: 270, column: 6, scope: !1099)
!1445 = !DILocation(line: 271, column: 14, scope: !1443)
!1446 = !DILocation(line: 271, column: 25, scope: !1443)
!1447 = !DILocation(line: 271, column: 3, scope: !1443)
!1448 = !DILocation(line: 273, column: 29, scope: !1099)
!1449 = !DILocation(line: 273, column: 36, scope: !1099)
!1450 = !DILocation(line: 273, column: 48, scope: !1099)
!1451 = !DILocation(line: 274, column: 11, scope: !1099)
!1452 = !DILocation(line: 273, column: 10, scope: !1099)
!1453 = !DILocation(line: 273, column: 2, scope: !1099)
!1454 = !DILocation(line: 275, column: 1, scope: !1099)
!1455 = distinct !DISubprogram(name: "dns_ncache_addoptout", scope: !2, file: !2, line: 108, type: !1456, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !108, retainedNodes: !1458)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!358, !466, !666, !783, !253, !343, !334, !334, !426, !318}
!1458 = !{!1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467}
!1459 = !DILocalVariable(name: "message", arg: 1, scope: !1455, file: !2, line: 108, type: !466)
!1460 = !DILocalVariable(name: "cache", arg: 2, scope: !1455, file: !2, line: 108, type: !666)
!1461 = !DILocalVariable(name: "node", arg: 3, scope: !1455, file: !2, line: 109, type: !783)
!1462 = !DILocalVariable(name: "covers", arg: 4, scope: !1455, file: !2, line: 109, type: !253)
!1463 = !DILocalVariable(name: "now", arg: 5, scope: !1455, file: !2, line: 110, type: !343)
!1464 = !DILocalVariable(name: "minttl", arg: 6, scope: !1455, file: !2, line: 111, type: !334)
!1465 = !DILocalVariable(name: "maxttl", arg: 7, scope: !1455, file: !2, line: 111, type: !334)
!1466 = !DILocalVariable(name: "optout", arg: 8, scope: !1455, file: !2, line: 112, type: !426)
!1467 = !DILocalVariable(name: "addedrdataset", arg: 9, scope: !1455, file: !2, line: 112, type: !318)
!1468 = !DILocation(line: 108, column: 37, scope: !1455)
!1469 = !DILocation(line: 108, column: 56, scope: !1455)
!1470 = !DILocation(line: 109, column: 22, scope: !1455)
!1471 = !DILocation(line: 109, column: 44, scope: !1455)
!1472 = !DILocation(line: 110, column: 22, scope: !1455)
!1473 = !DILocation(line: 111, column: 18, scope: !1455)
!1474 = !DILocation(line: 111, column: 36, scope: !1455)
!1475 = !DILocation(line: 112, column: 13, scope: !1455)
!1476 = !DILocation(line: 112, column: 37, scope: !1455)
!1477 = !DILocation(line: 114, column: 20, scope: !1455)
!1478 = !DILocation(line: 114, column: 29, scope: !1455)
!1479 = !DILocation(line: 114, column: 36, scope: !1455)
!1480 = !DILocation(line: 114, column: 42, scope: !1455)
!1481 = !DILocation(line: 114, column: 50, scope: !1455)
!1482 = !DILocation(line: 114, column: 55, scope: !1455)
!1483 = !DILocation(line: 114, column: 63, scope: !1455)
!1484 = !DILocation(line: 115, column: 6, scope: !1455)
!1485 = !DILocation(line: 115, column: 20, scope: !1455)
!1486 = !DILocation(line: 114, column: 10, scope: !1455)
!1487 = !DILocation(line: 114, column: 2, scope: !1455)
!1488 = distinct !DISubprogram(name: "dns_ncache_towire", scope: !2, file: !2, line: 278, type: !1489, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !108, retainedNodes: !1492)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!358, !318, !516, !405, !112, !1491}
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!1492 = !{!1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1516, !1517, !1520, !1522, !1523, !1526, !1528, !1529, !1532, !1534, !1535, !1538}
!1493 = !DILocalVariable(name: "rdataset", arg: 1, scope: !1488, file: !2, line: 278, type: !318)
!1494 = !DILocalVariable(name: "cctx", arg: 2, scope: !1488, file: !2, line: 278, type: !516)
!1495 = !DILocalVariable(name: "target", arg: 3, scope: !1488, file: !2, line: 279, type: !405)
!1496 = !DILocalVariable(name: "options", arg: 4, scope: !1488, file: !2, line: 279, type: !112)
!1497 = !DILocalVariable(name: "countp", arg: 5, scope: !1488, file: !2, line: 280, type: !1491)
!1498 = !DILocalVariable(name: "rdata", scope: !1488, file: !2, line: 282, type: !366)
!1499 = !DILocalVariable(name: "result", scope: !1488, file: !2, line: 283, type: !358)
!1500 = !DILocalVariable(name: "remaining", scope: !1488, file: !2, line: 284, type: !534)
!1501 = !DILocalVariable(name: "tavailable", scope: !1488, file: !2, line: 284, type: !534)
!1502 = !DILocalVariable(name: "source", scope: !1488, file: !2, line: 285, type: !406)
!1503 = !DILocalVariable(name: "savedbuffer", scope: !1488, file: !2, line: 285, type: !406)
!1504 = !DILocalVariable(name: "rdlen", scope: !1488, file: !2, line: 285, type: !406)
!1505 = !DILocalVariable(name: "name", scope: !1488, file: !2, line: 286, type: !394)
!1506 = !DILocalVariable(name: "type", scope: !1488, file: !2, line: 287, type: !253)
!1507 = !DILocalVariable(name: "i", scope: !1488, file: !2, line: 288, type: !112)
!1508 = !DILocalVariable(name: "rcount", scope: !1488, file: !2, line: 288, type: !112)
!1509 = !DILocalVariable(name: "count", scope: !1488, file: !2, line: 288, type: !112)
!1510 = !DILocalVariable(name: "_cp", scope: !1511, file: !2, line: 357, type: !245)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !2, line: 357, column: 4)
!1512 = distinct !DILexicalBlock(scope: !1513, file: !2, line: 320, column: 32)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !2, line: 320, column: 3)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !2, line: 320, column: 3)
!1515 = distinct !DILexicalBlock(scope: !1488, file: !2, line: 304, column: 34)
!1516 = !DILocalVariable(name: "_val2", scope: !1511, file: !2, line: 357, type: !247)
!1517 = !DILocalVariable(name: "_tmp", scope: !1518, file: !2, line: 357, type: !405)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !2, line: 357, column: 4)
!1519 = distinct !DILexicalBlock(scope: !1511, file: !2, line: 357, column: 4)
!1520 = !DILocalVariable(name: "_cp", scope: !1521, file: !2, line: 358, type: !245)
!1521 = distinct !DILexicalBlock(scope: !1512, file: !2, line: 358, column: 4)
!1522 = !DILocalVariable(name: "_val2", scope: !1521, file: !2, line: 358, type: !247)
!1523 = !DILocalVariable(name: "_tmp", scope: !1524, file: !2, line: 358, type: !405)
!1524 = distinct !DILexicalBlock(scope: !1525, file: !2, line: 358, column: 4)
!1525 = distinct !DILexicalBlock(scope: !1521, file: !2, line: 358, column: 4)
!1526 = !DILocalVariable(name: "_cp", scope: !1527, file: !2, line: 359, type: !245)
!1527 = distinct !DILexicalBlock(scope: !1512, file: !2, line: 359, column: 4)
!1528 = !DILocalVariable(name: "_val2", scope: !1527, file: !2, line: 359, type: !335)
!1529 = !DILocalVariable(name: "_tmp", scope: !1530, file: !2, line: 359, type: !405)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !2, line: 359, column: 4)
!1531 = distinct !DILexicalBlock(scope: !1527, file: !2, line: 359, column: 4)
!1532 = !DILocalVariable(name: "_cp", scope: !1533, file: !2, line: 380, type: !245)
!1533 = distinct !DILexicalBlock(scope: !1512, file: !2, line: 380, column: 4)
!1534 = !DILocalVariable(name: "_val2", scope: !1533, file: !2, line: 380, type: !247)
!1535 = !DILocalVariable(name: "_tmp", scope: !1536, file: !2, line: 380, type: !405)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !2, line: 380, column: 4)
!1537 = distinct !DILexicalBlock(scope: !1533, file: !2, line: 380, column: 4)
!1538 = !DILabel(scope: !1488, name: "rollback", file: !2, line: 397)
!1539 = !DILocation(line: 278, column: 35, scope: !1488)
!1540 = !DILocation(line: 278, column: 61, scope: !1488)
!1541 = !DILocation(line: 279, column: 19, scope: !1488)
!1542 = !DILocation(line: 279, column: 40, scope: !1488)
!1543 = !DILocation(line: 280, column: 19, scope: !1488)
!1544 = !DILocation(line: 282, column: 2, scope: !1488)
!1545 = !DILocation(line: 282, column: 14, scope: !1488)
!1546 = !DILocation(line: 283, column: 2, scope: !1488)
!1547 = !DILocation(line: 283, column: 15, scope: !1488)
!1548 = !DILocation(line: 284, column: 2, scope: !1488)
!1549 = !DILocation(line: 284, column: 15, scope: !1488)
!1550 = !DILocation(line: 284, column: 26, scope: !1488)
!1551 = !DILocation(line: 285, column: 2, scope: !1488)
!1552 = !DILocation(line: 285, column: 15, scope: !1488)
!1553 = !DILocation(line: 285, column: 23, scope: !1488)
!1554 = !DILocation(line: 285, column: 36, scope: !1488)
!1555 = !DILocation(line: 286, column: 2, scope: !1488)
!1556 = !DILocation(line: 286, column: 13, scope: !1488)
!1557 = !DILocation(line: 287, column: 2, scope: !1488)
!1558 = !DILocation(line: 287, column: 18, scope: !1488)
!1559 = !DILocation(line: 288, column: 2, scope: !1488)
!1560 = !DILocation(line: 288, column: 15, scope: !1488)
!1561 = !DILocation(line: 288, column: 18, scope: !1488)
!1562 = !DILocation(line: 288, column: 26, scope: !1488)
!1563 = !DILocation(line: 296, column: 2, scope: !1488)
!1564 = !DILocation(line: 297, column: 2, scope: !1488)
!1565 = !DILocation(line: 298, column: 2, scope: !1488)
!1566 = !DILocation(line: 300, column: 17, scope: !1488)
!1567 = !DILocation(line: 300, column: 16, scope: !1488)
!1568 = !DILocation(line: 301, column: 8, scope: !1488)
!1569 = !DILocation(line: 303, column: 30, scope: !1488)
!1570 = !DILocation(line: 303, column: 11, scope: !1488)
!1571 = !DILocation(line: 303, column: 9, scope: !1488)
!1572 = !DILocation(line: 304, column: 2, scope: !1488)
!1573 = !DILocation(line: 304, column: 9, scope: !1488)
!1574 = !DILocation(line: 304, column: 16, scope: !1488)
!1575 = !DILocation(line: 305, column: 24, scope: !1515)
!1576 = !DILocation(line: 305, column: 3, scope: !1515)
!1577 = !DILocation(line: 306, column: 3, scope: !1515)
!1578 = !DILocation(line: 306, column: 3, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1515, file: !2, line: 306, column: 3)
!1580 = !DILocation(line: 306, column: 3, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1579, file: !2, line: 306, column: 3)
!1582 = !DILocation(line: 307, column: 3, scope: !1515)
!1583 = !DILocation(line: 307, column: 3, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1515, file: !2, line: 307, column: 3)
!1585 = !DILocation(line: 308, column: 3, scope: !1515)
!1586 = !DILocation(line: 309, column: 3, scope: !1515)
!1587 = !DILocation(line: 309, column: 3, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1515, file: !2, line: 309, column: 3)
!1589 = !DILocation(line: 310, column: 3, scope: !1515)
!1590 = !DILocation(line: 311, column: 3, scope: !1515)
!1591 = !DILocation(line: 312, column: 3, scope: !1515)
!1592 = !DILocation(line: 312, column: 3, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1515, file: !2, line: 312, column: 3)
!1594 = !DILocation(line: 313, column: 28, scope: !1515)
!1595 = !DILocation(line: 313, column: 13, scope: !1515)
!1596 = !DILocation(line: 313, column: 20, scope: !1515)
!1597 = !DILocation(line: 315, column: 3, scope: !1515)
!1598 = !DILocation(line: 316, column: 10, scope: !1515)
!1599 = !DILocation(line: 316, column: 8, scope: !1515)
!1600 = !DILocation(line: 317, column: 3, scope: !1515)
!1601 = !DILocation(line: 317, column: 3, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1515, file: !2, line: 317, column: 3)
!1603 = !DILocation(line: 318, column: 12, scope: !1515)
!1604 = !DILocation(line: 318, column: 10, scope: !1515)
!1605 = !DILocation(line: 320, column: 10, scope: !1514)
!1606 = !DILocation(line: 320, column: 8, scope: !1514)
!1607 = !DILocation(line: 320, column: 15, scope: !1513)
!1608 = !DILocation(line: 320, column: 19, scope: !1513)
!1609 = !DILocation(line: 320, column: 17, scope: !1513)
!1610 = !DILocation(line: 320, column: 3, scope: !1514)
!1611 = !DILocation(line: 325, column: 4, scope: !1512)
!1612 = !DILocation(line: 325, column: 4, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1512, file: !2, line: 325, column: 4)
!1614 = !DILocation(line: 326, column: 4, scope: !1512)
!1615 = !DILocation(line: 327, column: 4, scope: !1512)
!1616 = !DILocation(line: 328, column: 19, scope: !1512)
!1617 = !DILocation(line: 328, column: 10, scope: !1512)
!1618 = !DILocation(line: 328, column: 17, scope: !1512)
!1619 = !DILocation(line: 329, column: 4, scope: !1512)
!1620 = !DILocation(line: 329, column: 4, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1512, file: !2, line: 329, column: 4)
!1622 = !DILocation(line: 330, column: 27, scope: !1512)
!1623 = !DILocation(line: 330, column: 10, scope: !1512)
!1624 = !DILocation(line: 330, column: 15, scope: !1512)
!1625 = !DILocation(line: 331, column: 17, scope: !1512)
!1626 = !DILocation(line: 331, column: 10, scope: !1512)
!1627 = !DILocation(line: 331, column: 15, scope: !1512)
!1628 = !DILocation(line: 332, column: 20, scope: !1512)
!1629 = !DILocation(line: 332, column: 30, scope: !1512)
!1630 = !DILocation(line: 332, column: 10, scope: !1512)
!1631 = !DILocation(line: 332, column: 18, scope: !1512)
!1632 = !DILocation(line: 333, column: 4, scope: !1512)
!1633 = !DILocation(line: 334, column: 4, scope: !1512)
!1634 = !DILocation(line: 334, column: 4, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1512, file: !2, line: 334, column: 4)
!1636 = !DILocation(line: 336, column: 9, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1512, file: !2, line: 336, column: 8)
!1638 = !DILocation(line: 336, column: 17, scope: !1637)
!1639 = !DILocation(line: 336, column: 48, scope: !1637)
!1640 = !DILocation(line: 336, column: 53, scope: !1637)
!1641 = !DILocation(line: 337, column: 31, scope: !1637)
!1642 = !DILocation(line: 337, column: 8, scope: !1637)
!1643 = !DILocation(line: 336, column: 8, scope: !1512)
!1644 = !DILocation(line: 338, column: 5, scope: !1637)
!1645 = !DILocation(line: 343, column: 28, scope: !1512)
!1646 = !DILocation(line: 343, column: 4, scope: !1512)
!1647 = !DILocation(line: 344, column: 36, scope: !1512)
!1648 = !DILocation(line: 344, column: 42, scope: !1512)
!1649 = !DILocation(line: 344, column: 13, scope: !1512)
!1650 = !DILocation(line: 344, column: 11, scope: !1512)
!1651 = !DILocation(line: 345, column: 8, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1512, file: !2, line: 345, column: 8)
!1653 = !DILocation(line: 345, column: 15, scope: !1652)
!1654 = !DILocation(line: 345, column: 8, scope: !1512)
!1655 = !DILocation(line: 346, column: 5, scope: !1652)
!1656 = !DILocation(line: 352, column: 4, scope: !1512)
!1657 = !DILocation(line: 352, column: 4, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1512, file: !2, line: 352, column: 4)
!1659 = !DILocation(line: 353, column: 19, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1512, file: !2, line: 353, column: 8)
!1661 = !DILocation(line: 353, column: 26, scope: !1660)
!1662 = !DILocation(line: 353, column: 8, scope: !1512)
!1663 = !DILocation(line: 354, column: 12, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1660, file: !2, line: 353, column: 32)
!1665 = !DILocation(line: 355, column: 5, scope: !1664)
!1666 = !DILocation(line: 357, column: 4, scope: !1512)
!1667 = !DILocation(line: 357, column: 4, scope: !1511)
!1668 = !DILocation(line: 357, column: 4, scope: !1519)
!1669 = !DILocation(line: 357, column: 4, scope: !1518)
!1670 = !DILocation(line: 358, column: 4, scope: !1512)
!1671 = !DILocation(line: 358, column: 4, scope: !1521)
!1672 = !DILocation(line: 358, column: 4, scope: !1525)
!1673 = !DILocation(line: 358, column: 4, scope: !1524)
!1674 = !DILocation(line: 359, column: 4, scope: !1512)
!1675 = !DILocation(line: 359, column: 4, scope: !1527)
!1676 = !DILocation(line: 359, column: 4, scope: !1531)
!1677 = !DILocation(line: 359, column: 4, scope: !1530)
!1678 = !DILocation(line: 364, column: 13, scope: !1512)
!1679 = !DILocation(line: 364, column: 12, scope: !1512)
!1680 = !DILocation(line: 365, column: 4, scope: !1512)
!1681 = !DILocation(line: 365, column: 4, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1512, file: !2, line: 365, column: 4)
!1683 = !DILocation(line: 370, column: 38, scope: !1512)
!1684 = !DILocation(line: 370, column: 44, scope: !1512)
!1685 = !DILocation(line: 370, column: 13, scope: !1512)
!1686 = !DILocation(line: 370, column: 11, scope: !1512)
!1687 = !DILocation(line: 371, column: 8, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1512, file: !2, line: 371, column: 8)
!1689 = !DILocation(line: 371, column: 15, scope: !1688)
!1690 = !DILocation(line: 371, column: 8, scope: !1512)
!1691 = !DILocation(line: 372, column: 5, scope: !1688)
!1692 = !DILocation(line: 378, column: 4, scope: !1512)
!1693 = !DILocation(line: 0, scope: !1512)
!1694 = !DILocation(line: 380, column: 4, scope: !1512)
!1695 = !DILocation(line: 380, column: 4, scope: !1533)
!1696 = !DILocation(line: 380, column: 4, scope: !1537)
!1697 = !DILocation(line: 380, column: 4, scope: !1536)
!1698 = !DILocation(line: 384, column: 9, scope: !1512)
!1699 = !DILocation(line: 385, column: 3, scope: !1512)
!1700 = !DILocation(line: 320, column: 28, scope: !1513)
!1701 = !DILocation(line: 320, column: 3, scope: !1513)
!1702 = distinct !{!1702, !1610, !1703, !1381}
!1703 = !DILocation(line: 385, column: 3, scope: !1514)
!1704 = !DILocation(line: 386, column: 3, scope: !1515)
!1705 = !DILocation(line: 387, column: 30, scope: !1515)
!1706 = !DILocation(line: 387, column: 12, scope: !1515)
!1707 = !DILocation(line: 387, column: 10, scope: !1515)
!1708 = !DILocation(line: 388, column: 3, scope: !1515)
!1709 = distinct !{!1709, !1572, !1710, !1381}
!1710 = !DILocation(line: 389, column: 2, scope: !1488)
!1711 = !DILocation(line: 390, column: 6, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1488, file: !2, line: 390, column: 6)
!1713 = !DILocation(line: 390, column: 13, scope: !1712)
!1714 = !DILocation(line: 390, column: 6, scope: !1488)
!1715 = !DILocation(line: 391, column: 3, scope: !1712)
!1716 = !DILocation(line: 393, column: 12, scope: !1488)
!1717 = !DILocation(line: 393, column: 3, scope: !1488)
!1718 = !DILocation(line: 393, column: 10, scope: !1488)
!1719 = !DILocation(line: 395, column: 2, scope: !1488)
!1720 = !DILocation(line: 397, column: 2, scope: !1488)
!1721 = !DILocation(line: 398, column: 2, scope: !1488)
!1722 = !DILocation(line: 399, column: 24, scope: !1488)
!1723 = !DILocation(line: 399, column: 52, scope: !1488)
!1724 = !DILocation(line: 399, column: 30, scope: !1488)
!1725 = !DILocation(line: 399, column: 2, scope: !1488)
!1726 = !DILocation(line: 400, column: 3, scope: !1488)
!1727 = !DILocation(line: 400, column: 10, scope: !1488)
!1728 = !DILocation(line: 401, column: 3, scope: !1488)
!1729 = !DILocation(line: 401, column: 12, scope: !1488)
!1730 = !DILocation(line: 403, column: 10, scope: !1488)
!1731 = !DILocation(line: 403, column: 2, scope: !1488)
!1732 = !DILocation(line: 404, column: 1, scope: !1488)
!1733 = !DISubprogram(name: "isc_assertion_failed", scope: !122, file: !122, line: 37, type: !1734, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{null, !759, !496, !1736, !759}
!1736 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_assertiontype_t", file: !122, line: 30, baseType: !121)
!1737 = !DISubprogram(name: "dns_rdataset_first", scope: !311, file: !311, line: 307, type: !356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1738 = !DISubprogram(name: "dns_rdataset_current", scope: !311, file: !311, line: 333, type: !363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1739 = !DISubprogram(name: "dns_name_init", scope: !396, file: !396, line: 208, type: !1740, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{null, !431, !245}
!1742 = !DISubprogram(name: "dns_name_fromregion", scope: !396, file: !396, line: 663, type: !1743, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{null, !431, !1745}
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !534)
!1747 = !DISubprogram(name: "isc_buffer_getuint16", scope: !408, file: !408, line: 530, type: !1748, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1748 = !DISubroutineType(types: !1749)
!1749 = !{!247, !405}
!1750 = !DISubprogram(name: "dns_rdata_reset", scope: !368, file: !368, line: 197, type: !1751, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{null, !365}
!1753 = !DISubprogram(name: "dns_rdatatype_isdnssec", scope: !368, file: !368, line: 562, type: !1754, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!426, !253}
!1756 = !DISubprogram(name: "dns_compress_setmethods", scope: !519, file: !519, line: 120, type: !1757, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{null, !516, !112}
!1759 = !DISubprogram(name: "dns_name_towire", scope: !396, file: !396, line: 747, type: !1760, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{!358, !392, !516, !405}
!1762 = !DISubprogram(name: "isc_buffer_reserve", scope: !408, file: !408, line: 216, type: !1763, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{!358, !1765, !112}
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!1766 = !DISubprogram(name: "dns_rdata_towire", scope: !368, file: !368, line: 320, type: !1767, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!358, !365, !516, !405}
!1769 = !DISubprogram(name: "dns_rdataset_next", scope: !311, file: !311, line: 320, type: !356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1770 = !DISubprogram(name: "dns_compress_rollback", scope: !519, file: !519, line: 223, type: !1771, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{null, !516, !247}
!1773 = distinct !DISubprogram(name: "dns_ncache_getrdataset", scope: !2, file: !2, line: 514, type: !1774, scopeLine: 516, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !108, retainedNodes: !1776)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!358, !318, !431, !253, !318}
!1776 = !{!1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788}
!1777 = !DILocalVariable(name: "ncacherdataset", arg: 1, scope: !1773, file: !2, line: 514, type: !318)
!1778 = !DILocalVariable(name: "name", arg: 2, scope: !1773, file: !2, line: 514, type: !431)
!1779 = !DILocalVariable(name: "type", arg: 3, scope: !1773, file: !2, line: 515, type: !253)
!1780 = !DILocalVariable(name: "rdataset", arg: 4, scope: !1773, file: !2, line: 515, type: !318)
!1781 = !DILocalVariable(name: "result", scope: !1773, file: !2, line: 517, type: !358)
!1782 = !DILocalVariable(name: "rdata", scope: !1773, file: !2, line: 518, type: !366)
!1783 = !DILocalVariable(name: "remaining", scope: !1773, file: !2, line: 519, type: !534)
!1784 = !DILocalVariable(name: "source", scope: !1773, file: !2, line: 520, type: !406)
!1785 = !DILocalVariable(name: "tname", scope: !1773, file: !2, line: 521, type: !394)
!1786 = !DILocalVariable(name: "ttype", scope: !1773, file: !2, line: 522, type: !253)
!1787 = !DILocalVariable(name: "trust", scope: !1773, file: !2, line: 523, type: !252)
!1788 = !DILocalVariable(name: "rclone", scope: !1773, file: !2, line: 524, type: !319)
!1789 = !DILocation(line: 514, column: 40, scope: !1773)
!1790 = !DILocation(line: 514, column: 68, scope: !1773)
!1791 = !DILocation(line: 515, column: 26, scope: !1773)
!1792 = !DILocation(line: 515, column: 48, scope: !1773)
!1793 = !DILocation(line: 517, column: 2, scope: !1773)
!1794 = !DILocation(line: 517, column: 15, scope: !1773)
!1795 = !DILocation(line: 518, column: 2, scope: !1773)
!1796 = !DILocation(line: 518, column: 14, scope: !1773)
!1797 = !DILocation(line: 519, column: 2, scope: !1773)
!1798 = !DILocation(line: 519, column: 15, scope: !1773)
!1799 = !DILocation(line: 520, column: 2, scope: !1773)
!1800 = !DILocation(line: 520, column: 15, scope: !1773)
!1801 = !DILocation(line: 521, column: 2, scope: !1773)
!1802 = !DILocation(line: 521, column: 13, scope: !1773)
!1803 = !DILocation(line: 522, column: 2, scope: !1773)
!1804 = !DILocation(line: 522, column: 18, scope: !1773)
!1805 = !DILocation(line: 523, column: 2, scope: !1773)
!1806 = !DILocation(line: 523, column: 14, scope: !1773)
!1807 = !DILocation(line: 524, column: 2, scope: !1773)
!1808 = !DILocation(line: 524, column: 17, scope: !1773)
!1809 = !DILocation(line: 526, column: 2, scope: !1773)
!1810 = !DILocation(line: 527, column: 2, scope: !1773)
!1811 = !DILocation(line: 528, column: 2, scope: !1773)
!1812 = !DILocation(line: 529, column: 2, scope: !1773)
!1813 = !DILocation(line: 530, column: 2, scope: !1773)
!1814 = !DILocation(line: 531, column: 2, scope: !1773)
!1815 = !DILocation(line: 533, column: 2, scope: !1773)
!1816 = !DILocation(line: 534, column: 21, scope: !1773)
!1817 = !DILocation(line: 534, column: 2, scope: !1773)
!1818 = !DILocation(line: 535, column: 11, scope: !1773)
!1819 = !DILocation(line: 535, column: 9, scope: !1773)
!1820 = !DILocation(line: 536, column: 2, scope: !1773)
!1821 = !DILocation(line: 536, column: 9, scope: !1773)
!1822 = !DILocation(line: 536, column: 16, scope: !1773)
!1823 = !DILocation(line: 537, column: 3, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1773, file: !2, line: 536, column: 34)
!1825 = !DILocation(line: 538, column: 3, scope: !1824)
!1826 = !DILocation(line: 538, column: 3, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1824, file: !2, line: 538, column: 3)
!1828 = !DILocation(line: 538, column: 3, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1827, file: !2, line: 538, column: 3)
!1830 = !DILocation(line: 539, column: 3, scope: !1824)
!1831 = !DILocation(line: 539, column: 3, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1824, file: !2, line: 539, column: 3)
!1833 = !DILocation(line: 540, column: 3, scope: !1824)
!1834 = !DILocation(line: 541, column: 3, scope: !1824)
!1835 = !DILocation(line: 541, column: 3, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1824, file: !2, line: 541, column: 3)
!1837 = !DILocation(line: 542, column: 3, scope: !1824)
!1838 = !DILocation(line: 543, column: 3, scope: !1824)
!1839 = !DILocation(line: 544, column: 3, scope: !1824)
!1840 = !DILocation(line: 544, column: 3, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1824, file: !2, line: 544, column: 3)
!1842 = !DILocation(line: 545, column: 29, scope: !1824)
!1843 = !DILocation(line: 545, column: 13, scope: !1824)
!1844 = !DILocation(line: 545, column: 20, scope: !1824)
!1845 = !DILocation(line: 547, column: 3, scope: !1824)
!1846 = !DILocation(line: 548, column: 11, scope: !1824)
!1847 = !DILocation(line: 548, column: 9, scope: !1824)
!1848 = !DILocation(line: 550, column: 7, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1824, file: !2, line: 550, column: 7)
!1850 = !DILocation(line: 550, column: 16, scope: !1849)
!1851 = !DILocation(line: 550, column: 13, scope: !1849)
!1852 = !DILocation(line: 550, column: 21, scope: !1849)
!1853 = !DILocation(line: 550, column: 47, scope: !1849)
!1854 = !DILocation(line: 550, column: 24, scope: !1849)
!1855 = !DILocation(line: 550, column: 7, scope: !1824)
!1856 = !DILocation(line: 551, column: 12, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1849, file: !2, line: 550, column: 54)
!1858 = !DILocation(line: 551, column: 10, scope: !1857)
!1859 = !DILocation(line: 552, column: 4, scope: !1857)
!1860 = !DILocation(line: 553, column: 4, scope: !1857)
!1861 = !DILocation(line: 553, column: 4, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1857, file: !2, line: 553, column: 4)
!1863 = !DILocation(line: 554, column: 4, scope: !1857)
!1864 = !DILocation(line: 556, column: 12, scope: !1824)
!1865 = !DILocation(line: 556, column: 10, scope: !1824)
!1866 = !DILocation(line: 557, column: 3, scope: !1824)
!1867 = distinct !{!1867, !1820, !1868, !1381}
!1868 = !DILocation(line: 558, column: 2, scope: !1773)
!1869 = !DILocation(line: 559, column: 2, scope: !1773)
!1870 = !DILocation(line: 560, column: 6, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1773, file: !2, line: 560, column: 6)
!1872 = !DILocation(line: 560, column: 13, scope: !1871)
!1873 = !DILocation(line: 560, column: 6, scope: !1773)
!1874 = !DILocation(line: 561, column: 3, scope: !1871)
!1875 = !DILocation(line: 562, column: 6, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1773, file: !2, line: 562, column: 6)
!1877 = !DILocation(line: 562, column: 13, scope: !1876)
!1878 = !DILocation(line: 562, column: 6, scope: !1773)
!1879 = !DILocation(line: 563, column: 11, scope: !1876)
!1880 = !DILocation(line: 563, column: 3, scope: !1876)
!1881 = !DILocation(line: 565, column: 2, scope: !1773)
!1882 = !DILocation(line: 567, column: 2, scope: !1773)
!1883 = !DILocation(line: 567, column: 12, scope: !1773)
!1884 = !DILocation(line: 567, column: 20, scope: !1773)
!1885 = !DILocation(line: 568, column: 22, scope: !1773)
!1886 = !DILocation(line: 568, column: 38, scope: !1773)
!1887 = !DILocation(line: 568, column: 2, scope: !1773)
!1888 = !DILocation(line: 568, column: 12, scope: !1773)
!1889 = !DILocation(line: 568, column: 20, scope: !1773)
!1890 = !DILocation(line: 569, column: 19, scope: !1773)
!1891 = !DILocation(line: 569, column: 2, scope: !1773)
!1892 = !DILocation(line: 569, column: 12, scope: !1773)
!1893 = !DILocation(line: 569, column: 17, scope: !1773)
!1894 = !DILocation(line: 570, column: 2, scope: !1773)
!1895 = !DILocation(line: 570, column: 12, scope: !1773)
!1896 = !DILocation(line: 570, column: 19, scope: !1773)
!1897 = !DILocation(line: 571, column: 18, scope: !1773)
!1898 = !DILocation(line: 571, column: 34, scope: !1773)
!1899 = !DILocation(line: 571, column: 2, scope: !1773)
!1900 = !DILocation(line: 571, column: 12, scope: !1773)
!1901 = !DILocation(line: 571, column: 16, scope: !1773)
!1902 = !DILocation(line: 572, column: 20, scope: !1773)
!1903 = !DILocation(line: 572, column: 2, scope: !1773)
!1904 = !DILocation(line: 572, column: 12, scope: !1773)
!1905 = !DILocation(line: 572, column: 18, scope: !1773)
!1906 = !DILocation(line: 573, column: 2, scope: !1773)
!1907 = !DILocation(line: 573, column: 12, scope: !1773)
!1908 = !DILocation(line: 573, column: 21, scope: !1773)
!1909 = !DILocation(line: 574, column: 2, scope: !1773)
!1910 = !DILocation(line: 574, column: 12, scope: !1773)
!1911 = !DILocation(line: 574, column: 21, scope: !1773)
!1912 = !DILocation(line: 576, column: 33, scope: !1773)
!1913 = !DILocation(line: 576, column: 2, scope: !1773)
!1914 = !DILocation(line: 576, column: 12, scope: !1773)
!1915 = !DILocation(line: 576, column: 21, scope: !1773)
!1916 = !DILocation(line: 581, column: 2, scope: !1773)
!1917 = !DILocation(line: 581, column: 12, scope: !1773)
!1918 = !DILocation(line: 581, column: 25, scope: !1773)
!1919 = !DILocation(line: 582, column: 2, scope: !1773)
!1920 = !DILocation(line: 582, column: 12, scope: !1773)
!1921 = !DILocation(line: 582, column: 21, scope: !1773)
!1922 = !DILocation(line: 583, column: 2, scope: !1773)
!1923 = !DILocation(line: 583, column: 12, scope: !1773)
!1924 = !DILocation(line: 583, column: 21, scope: !1773)
!1925 = !DILocation(line: 584, column: 2, scope: !1773)
!1926 = !DILocation(line: 585, column: 1, scope: !1773)
!1927 = !DISubprogram(name: "dns_rdataset_isassociated", scope: !311, file: !311, line: 251, type: !1928, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!426, !318}
!1930 = !DISubprogram(name: "dns_rdataset_init", scope: !311, file: !311, line: 210, type: !316, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1931 = !DISubprogram(name: "dns_rdataset_clone", scope: !311, file: !311, line: 281, type: !382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1932 = !DISubprogram(name: "dns_name_equal", scope: !396, file: !396, line: 452, type: !1933, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!426, !392, !392}
!1935 = !DISubprogram(name: "isc_buffer_getuint8", scope: !408, file: !408, line: 495, type: !1936, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!876, !405}
!1938 = !DISubprogram(name: "dns_rdataset_disassociate", scope: !311, file: !311, line: 235, type: !316, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1939 = distinct !DISubprogram(name: "dns_ncache_getsigrdataset", scope: !2, file: !2, line: 588, type: !1774, scopeLine: 590, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !108, retainedNodes: !1940)
!1940 = !{!1941, !1942, !1943, !1944, !1945, !1946, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1989, !1990, !1992, !1993, !1995}
!1941 = !DILocalVariable(name: "ncacherdataset", arg: 1, scope: !1939, file: !2, line: 588, type: !318)
!1942 = !DILocalVariable(name: "name", arg: 2, scope: !1939, file: !2, line: 588, type: !431)
!1943 = !DILocalVariable(name: "covers", arg: 3, scope: !1939, file: !2, line: 589, type: !253)
!1944 = !DILocalVariable(name: "rdataset", arg: 4, scope: !1939, file: !2, line: 589, type: !318)
!1945 = !DILocalVariable(name: "tname", scope: !1939, file: !2, line: 591, type: !394)
!1946 = !DILocalVariable(name: "rrsig", scope: !1939, file: !2, line: 592, type: !1947)
!1947 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdata_rrsig_t", file: !1948, line: 1388, baseType: !1949)
!1948 = !DIFile(filename: "include/dns/rdatastruct.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/dns", checksumkind: CSK_MD5, checksum: "2fa7912eeb1b296a4fc4f0b7f3b904fc")
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_rdata_rrsig", file: !1948, line: 1375, size: 1216, elements: !1950)
!1950 = !{!1951, !1963, !1964, !1965, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1949, file: !1948, line: 1376, baseType: !1952, size: 192)
!1952 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdatacommon_t", file: !1948, line: 45, baseType: !1953)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_rdatacommon", file: !1948, line: 41, size: 192, elements: !1954)
!1954 = !{!1955, !1956, !1957}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "rdclass", scope: !1953, file: !1948, line: 42, baseType: !331, size: 16)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "rdtype", scope: !1953, file: !1948, line: 43, baseType: !253, size: 16, offset: 16)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1953, file: !1948, line: 44, baseType: !1958, size: 128, offset: 64)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1953, file: !1948, line: 44, size: 128, elements: !1959)
!1959 = !{!1960, !1962}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1958, file: !1948, line: 44, baseType: !1961, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1958, file: !1948, line: 44, baseType: !1961, size: 64, offset: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "mctx", scope: !1949, file: !1948, line: 1377, baseType: !422, size: 64, offset: 192)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "covered", scope: !1949, file: !1948, line: 1378, baseType: !253, size: 16, offset: 256)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm", scope: !1949, file: !1948, line: 1379, baseType: !1966, size: 8, offset: 272)
!1966 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_secalg_t", file: !111, line: 131, baseType: !876)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "labels", scope: !1949, file: !1948, line: 1380, baseType: !876, size: 8, offset: 280)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "originalttl", scope: !1949, file: !1948, line: 1381, baseType: !335, size: 32, offset: 288)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "timeexpire", scope: !1949, file: !1948, line: 1382, baseType: !335, size: 32, offset: 320)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "timesigned", scope: !1949, file: !1948, line: 1383, baseType: !335, size: 32, offset: 352)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "keyid", scope: !1949, file: !1948, line: 1384, baseType: !247, size: 16, offset: 384)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "signer", scope: !1949, file: !1948, line: 1385, baseType: !394, size: 640, offset: 448)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "siglen", scope: !1949, file: !1948, line: 1386, baseType: !247, size: 16, offset: 1088)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !1949, file: !1948, line: 1387, baseType: !245, size: 64, offset: 1152)
!1975 = !DILocalVariable(name: "rdata", scope: !1939, file: !2, line: 593, type: !366)
!1976 = !DILocalVariable(name: "rclone", scope: !1939, file: !2, line: 594, type: !319)
!1977 = !DILocalVariable(name: "type", scope: !1939, file: !2, line: 595, type: !253)
!1978 = !DILocalVariable(name: "trust", scope: !1939, file: !2, line: 596, type: !252)
!1979 = !DILocalVariable(name: "source", scope: !1939, file: !2, line: 597, type: !406)
!1980 = !DILocalVariable(name: "remaining", scope: !1939, file: !2, line: 598, type: !534)
!1981 = !DILocalVariable(name: "sigregion", scope: !1939, file: !2, line: 598, type: !534)
!1982 = !DILocalVariable(name: "result", scope: !1939, file: !2, line: 599, type: !358)
!1983 = !DILocalVariable(name: "raw", scope: !1939, file: !2, line: 600, type: !245)
!1984 = !DILocalVariable(name: "count", scope: !1939, file: !2, line: 601, type: !112)
!1985 = !DILocalVariable(name: "_r", scope: !1986, file: !2, line: 621, type: !1988)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !2, line: 621, column: 3)
!1987 = distinct !DILexicalBlock(scope: !1939, file: !2, line: 612, column: 34)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!1989 = !DILocalVariable(name: "_l", scope: !1986, file: !2, line: 621, type: !112)
!1990 = !DILocalVariable(name: "_r", scope: !1991, file: !2, line: 625, type: !1988)
!1991 = distinct !DILexicalBlock(scope: !1987, file: !2, line: 625, column: 3)
!1992 = !DILocalVariable(name: "_l", scope: !1991, file: !2, line: 625, type: !112)
!1993 = !DILocalVariable(name: "_r", scope: !1994, file: !2, line: 637, type: !1988)
!1994 = distinct !DILexicalBlock(scope: !1987, file: !2, line: 637, column: 3)
!1995 = !DILocalVariable(name: "_l", scope: !1994, file: !2, line: 637, type: !112)
!1996 = !DILocation(line: 588, column: 43, scope: !1939)
!1997 = !DILocation(line: 588, column: 71, scope: !1939)
!1998 = !DILocation(line: 589, column: 22, scope: !1939)
!1999 = !DILocation(line: 589, column: 46, scope: !1939)
!2000 = !DILocation(line: 591, column: 2, scope: !1939)
!2001 = !DILocation(line: 591, column: 13, scope: !1939)
!2002 = !DILocation(line: 592, column: 2, scope: !1939)
!2003 = !DILocation(line: 592, column: 20, scope: !1939)
!2004 = !DILocation(line: 593, column: 2, scope: !1939)
!2005 = !DILocation(line: 593, column: 14, scope: !1939)
!2006 = !DILocation(line: 594, column: 2, scope: !1939)
!2007 = !DILocation(line: 594, column: 17, scope: !1939)
!2008 = !DILocation(line: 595, column: 2, scope: !1939)
!2009 = !DILocation(line: 595, column: 18, scope: !1939)
!2010 = !DILocation(line: 596, column: 2, scope: !1939)
!2011 = !DILocation(line: 596, column: 14, scope: !1939)
!2012 = !DILocation(line: 597, column: 2, scope: !1939)
!2013 = !DILocation(line: 597, column: 15, scope: !1939)
!2014 = !DILocation(line: 598, column: 2, scope: !1939)
!2015 = !DILocation(line: 598, column: 15, scope: !1939)
!2016 = !DILocation(line: 598, column: 26, scope: !1939)
!2017 = !DILocation(line: 599, column: 2, scope: !1939)
!2018 = !DILocation(line: 599, column: 15, scope: !1939)
!2019 = !DILocation(line: 600, column: 2, scope: !1939)
!2020 = !DILocation(line: 600, column: 17, scope: !1939)
!2021 = !DILocation(line: 601, column: 2, scope: !1939)
!2022 = !DILocation(line: 601, column: 15, scope: !1939)
!2023 = !DILocation(line: 603, column: 2, scope: !1939)
!2024 = !DILocation(line: 604, column: 2, scope: !1939)
!2025 = !DILocation(line: 605, column: 2, scope: !1939)
!2026 = !DILocation(line: 606, column: 2, scope: !1939)
!2027 = !DILocation(line: 607, column: 2, scope: !1939)
!2028 = !DILocation(line: 609, column: 2, scope: !1939)
!2029 = !DILocation(line: 610, column: 21, scope: !1939)
!2030 = !DILocation(line: 610, column: 2, scope: !1939)
!2031 = !DILocation(line: 611, column: 11, scope: !1939)
!2032 = !DILocation(line: 611, column: 9, scope: !1939)
!2033 = !DILocation(line: 612, column: 2, scope: !1939)
!2034 = !DILocation(line: 612, column: 9, scope: !1939)
!2035 = !DILocation(line: 612, column: 16, scope: !1939)
!2036 = !DILocation(line: 613, column: 3, scope: !1987)
!2037 = !DILocation(line: 614, column: 3, scope: !1987)
!2038 = !DILocation(line: 614, column: 3, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !1987, file: !2, line: 614, column: 3)
!2040 = !DILocation(line: 614, column: 3, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2039, file: !2, line: 614, column: 3)
!2042 = !DILocation(line: 615, column: 3, scope: !1987)
!2043 = !DILocation(line: 615, column: 3, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !1987, file: !2, line: 615, column: 3)
!2045 = !DILocation(line: 616, column: 3, scope: !1987)
!2046 = !DILocation(line: 617, column: 3, scope: !1987)
!2047 = !DILocation(line: 617, column: 3, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !1987, file: !2, line: 617, column: 3)
!2049 = !DILocation(line: 618, column: 3, scope: !1987)
!2050 = !DILocation(line: 619, column: 3, scope: !1987)
!2051 = !DILocation(line: 620, column: 3, scope: !1987)
!2052 = !DILocation(line: 620, column: 3, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !1987, file: !2, line: 620, column: 3)
!2054 = !DILocation(line: 621, column: 3, scope: !1987)
!2055 = !DILocation(line: 621, column: 3, scope: !1986)
!2056 = !DILocation(line: 623, column: 3, scope: !1987)
!2057 = !DILocation(line: 624, column: 10, scope: !1987)
!2058 = !DILocation(line: 624, column: 8, scope: !1987)
!2059 = !DILocation(line: 625, column: 3, scope: !1987)
!2060 = !DILocation(line: 625, column: 3, scope: !1991)
!2061 = !DILocation(line: 627, column: 7, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !1987, file: !2, line: 627, column: 7)
!2063 = !DILocation(line: 627, column: 12, scope: !2062)
!2064 = !DILocation(line: 627, column: 35, scope: !2062)
!2065 = !DILocation(line: 628, column: 31, scope: !2062)
!2066 = !DILocation(line: 628, column: 8, scope: !2062)
!2067 = !DILocation(line: 627, column: 7, scope: !1987)
!2068 = !DILocation(line: 629, column: 13, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2062, file: !2, line: 628, column: 38)
!2070 = !DILocation(line: 629, column: 11, scope: !2069)
!2071 = !DILocation(line: 630, column: 4, scope: !2069)
!2072 = !DILocation(line: 631, column: 4, scope: !2069)
!2073 = distinct !{!2073, !2033, !2074, !1381}
!2074 = !DILocation(line: 657, column: 2, scope: !1939)
!2075 = !DILocation(line: 634, column: 3, scope: !1987)
!2076 = !DILocation(line: 635, column: 11, scope: !1987)
!2077 = !DILocation(line: 635, column: 9, scope: !1987)
!2078 = !DILocation(line: 636, column: 3, scope: !1987)
!2079 = !DILocation(line: 637, column: 3, scope: !1987)
!2080 = !DILocation(line: 637, column: 3, scope: !1994)
!2081 = !DILocation(line: 639, column: 19, scope: !1987)
!2082 = !DILocation(line: 639, column: 7, scope: !1987)
!2083 = !DILocation(line: 640, column: 11, scope: !1987)
!2084 = !DILocation(line: 640, column: 18, scope: !1987)
!2085 = !DILocation(line: 640, column: 26, scope: !1987)
!2086 = !DILocation(line: 640, column: 24, scope: !1987)
!2087 = !DILocation(line: 640, column: 9, scope: !1987)
!2088 = !DILocation(line: 641, column: 3, scope: !1987)
!2089 = !DILocation(line: 642, column: 7, scope: !1987)
!2090 = !DILocation(line: 643, column: 22, scope: !1987)
!2091 = !DILocation(line: 643, column: 29, scope: !1987)
!2092 = !DILocation(line: 643, column: 37, scope: !1987)
!2093 = !DILocation(line: 643, column: 35, scope: !1987)
!2094 = !DILocation(line: 643, column: 13, scope: !1987)
!2095 = !DILocation(line: 643, column: 20, scope: !1987)
!2096 = !DILocation(line: 644, column: 7, scope: !1987)
!2097 = !DILocation(line: 645, column: 20, scope: !1987)
!2098 = !DILocation(line: 645, column: 13, scope: !1987)
!2099 = !DILocation(line: 645, column: 18, scope: !1987)
!2100 = !DILocation(line: 646, column: 3, scope: !1987)
!2101 = !DILocation(line: 647, column: 32, scope: !1987)
!2102 = !DILocation(line: 647, column: 42, scope: !1987)
!2103 = !DILocation(line: 647, column: 3, scope: !1987)
!2104 = !DILocation(line: 649, column: 9, scope: !1987)
!2105 = !DILocation(line: 650, column: 13, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !1987, file: !2, line: 650, column: 7)
!2107 = !DILocation(line: 650, column: 7, scope: !2106)
!2108 = !DILocation(line: 650, column: 24, scope: !2106)
!2109 = !DILocation(line: 650, column: 21, scope: !2106)
!2110 = !DILocation(line: 650, column: 7, scope: !1987)
!2111 = !DILocation(line: 651, column: 4, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2106, file: !2, line: 650, column: 32)
!2113 = !DILocation(line: 651, column: 4, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2112, file: !2, line: 651, column: 4)
!2115 = !DILocation(line: 652, column: 4, scope: !2112)
!2116 = !DILocation(line: 655, column: 12, scope: !1987)
!2117 = !DILocation(line: 655, column: 10, scope: !1987)
!2118 = !DILocation(line: 656, column: 3, scope: !1987)
!2119 = !DILocation(line: 658, column: 2, scope: !1939)
!2120 = !DILocation(line: 659, column: 6, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !1939, file: !2, line: 659, column: 6)
!2122 = !DILocation(line: 659, column: 13, scope: !2121)
!2123 = !DILocation(line: 659, column: 6, scope: !1939)
!2124 = !DILocation(line: 660, column: 3, scope: !2121)
!2125 = !DILocation(line: 661, column: 6, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !1939, file: !2, line: 661, column: 6)
!2127 = !DILocation(line: 661, column: 13, scope: !2126)
!2128 = !DILocation(line: 661, column: 6, scope: !1939)
!2129 = !DILocation(line: 662, column: 11, scope: !2126)
!2130 = !DILocation(line: 662, column: 3, scope: !2126)
!2131 = !DILocation(line: 664, column: 2, scope: !1939)
!2132 = !DILocation(line: 666, column: 2, scope: !1939)
!2133 = !DILocation(line: 666, column: 12, scope: !1939)
!2134 = !DILocation(line: 666, column: 20, scope: !1939)
!2135 = !DILocation(line: 667, column: 22, scope: !1939)
!2136 = !DILocation(line: 667, column: 38, scope: !1939)
!2137 = !DILocation(line: 667, column: 2, scope: !1939)
!2138 = !DILocation(line: 667, column: 12, scope: !1939)
!2139 = !DILocation(line: 667, column: 20, scope: !1939)
!2140 = !DILocation(line: 668, column: 2, scope: !1939)
!2141 = !DILocation(line: 668, column: 12, scope: !1939)
!2142 = !DILocation(line: 668, column: 17, scope: !1939)
!2143 = !DILocation(line: 669, column: 21, scope: !1939)
!2144 = !DILocation(line: 669, column: 2, scope: !1939)
!2145 = !DILocation(line: 669, column: 12, scope: !1939)
!2146 = !DILocation(line: 669, column: 19, scope: !1939)
!2147 = !DILocation(line: 670, column: 18, scope: !1939)
!2148 = !DILocation(line: 670, column: 34, scope: !1939)
!2149 = !DILocation(line: 670, column: 2, scope: !1939)
!2150 = !DILocation(line: 670, column: 12, scope: !1939)
!2151 = !DILocation(line: 670, column: 16, scope: !1939)
!2152 = !DILocation(line: 671, column: 20, scope: !1939)
!2153 = !DILocation(line: 671, column: 2, scope: !1939)
!2154 = !DILocation(line: 671, column: 12, scope: !1939)
!2155 = !DILocation(line: 671, column: 18, scope: !1939)
!2156 = !DILocation(line: 672, column: 2, scope: !1939)
!2157 = !DILocation(line: 672, column: 12, scope: !1939)
!2158 = !DILocation(line: 672, column: 21, scope: !1939)
!2159 = !DILocation(line: 673, column: 2, scope: !1939)
!2160 = !DILocation(line: 673, column: 12, scope: !1939)
!2161 = !DILocation(line: 673, column: 21, scope: !1939)
!2162 = !DILocation(line: 675, column: 33, scope: !1939)
!2163 = !DILocation(line: 675, column: 2, scope: !1939)
!2164 = !DILocation(line: 675, column: 12, scope: !1939)
!2165 = !DILocation(line: 675, column: 21, scope: !1939)
!2166 = !DILocation(line: 680, column: 2, scope: !1939)
!2167 = !DILocation(line: 680, column: 12, scope: !1939)
!2168 = !DILocation(line: 680, column: 25, scope: !1939)
!2169 = !DILocation(line: 681, column: 2, scope: !1939)
!2170 = !DILocation(line: 681, column: 12, scope: !1939)
!2171 = !DILocation(line: 681, column: 21, scope: !1939)
!2172 = !DILocation(line: 682, column: 2, scope: !1939)
!2173 = !DILocation(line: 682, column: 12, scope: !1939)
!2174 = !DILocation(line: 682, column: 21, scope: !1939)
!2175 = !DILocation(line: 683, column: 2, scope: !1939)
!2176 = !DILocation(line: 684, column: 1, scope: !1939)
!2177 = !DISubprogram(name: "dns_rdata_fromregion", scope: !368, file: !368, line: 261, type: !2178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{null, !365, !331, !253, !1988}
!2180 = !DISubprogram(name: "dns_rdata_tostruct", scope: !368, file: !368, line: 506, type: !2181, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2181 = !DISubroutineType(types: !2182)
!2182 = !{!358, !637, !244, !422}
!2183 = distinct !DISubprogram(name: "dns_ncache_current", scope: !2, file: !2, line: 687, type: !2184, scopeLine: 689, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !108, retainedNodes: !2186)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{null, !318, !431, !318}
!2186 = !{!2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199}
!2187 = !DILocalVariable(name: "ncacherdataset", arg: 1, scope: !2183, file: !2, line: 687, type: !318)
!2188 = !DILocalVariable(name: "found", arg: 2, scope: !2183, file: !2, line: 687, type: !431)
!2189 = !DILocalVariable(name: "rdataset", arg: 3, scope: !2183, file: !2, line: 688, type: !318)
!2190 = !DILocalVariable(name: "rdata", scope: !2183, file: !2, line: 690, type: !366)
!2191 = !DILocalVariable(name: "trust", scope: !2183, file: !2, line: 691, type: !252)
!2192 = !DILocalVariable(name: "remaining", scope: !2183, file: !2, line: 692, type: !534)
!2193 = !DILocalVariable(name: "sigregion", scope: !2183, file: !2, line: 692, type: !534)
!2194 = !DILocalVariable(name: "source", scope: !2183, file: !2, line: 693, type: !406)
!2195 = !DILocalVariable(name: "tname", scope: !2183, file: !2, line: 694, type: !394)
!2196 = !DILocalVariable(name: "type", scope: !2183, file: !2, line: 695, type: !253)
!2197 = !DILocalVariable(name: "count", scope: !2183, file: !2, line: 696, type: !112)
!2198 = !DILocalVariable(name: "rrsig", scope: !2183, file: !2, line: 697, type: !1947)
!2199 = !DILocalVariable(name: "raw", scope: !2183, file: !2, line: 698, type: !245)
!2200 = !DILocation(line: 687, column: 36, scope: !2183)
!2201 = !DILocation(line: 687, column: 64, scope: !2183)
!2202 = !DILocation(line: 688, column: 22, scope: !2183)
!2203 = !DILocation(line: 690, column: 2, scope: !2183)
!2204 = !DILocation(line: 690, column: 14, scope: !2183)
!2205 = !DILocation(line: 691, column: 2, scope: !2183)
!2206 = !DILocation(line: 691, column: 14, scope: !2183)
!2207 = !DILocation(line: 692, column: 2, scope: !2183)
!2208 = !DILocation(line: 692, column: 15, scope: !2183)
!2209 = !DILocation(line: 692, column: 26, scope: !2183)
!2210 = !DILocation(line: 693, column: 2, scope: !2183)
!2211 = !DILocation(line: 693, column: 15, scope: !2183)
!2212 = !DILocation(line: 694, column: 2, scope: !2183)
!2213 = !DILocation(line: 694, column: 13, scope: !2183)
!2214 = !DILocation(line: 695, column: 2, scope: !2183)
!2215 = !DILocation(line: 695, column: 18, scope: !2183)
!2216 = !DILocation(line: 696, column: 2, scope: !2183)
!2217 = !DILocation(line: 696, column: 15, scope: !2183)
!2218 = !DILocation(line: 697, column: 2, scope: !2183)
!2219 = !DILocation(line: 697, column: 20, scope: !2183)
!2220 = !DILocation(line: 698, column: 2, scope: !2183)
!2221 = !DILocation(line: 698, column: 17, scope: !2183)
!2222 = !DILocation(line: 700, column: 2, scope: !2183)
!2223 = !DILocation(line: 701, column: 2, scope: !2183)
!2224 = !DILocation(line: 702, column: 2, scope: !2183)
!2225 = !DILocation(line: 703, column: 2, scope: !2183)
!2226 = !DILocation(line: 704, column: 2, scope: !2183)
!2227 = !DILocation(line: 706, column: 23, scope: !2183)
!2228 = !DILocation(line: 706, column: 2, scope: !2183)
!2229 = !DILocation(line: 707, column: 2, scope: !2183)
!2230 = !DILocation(line: 707, column: 2, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2183, file: !2, line: 707, column: 2)
!2232 = !DILocation(line: 707, column: 2, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2231, file: !2, line: 707, column: 2)
!2234 = !DILocation(line: 708, column: 2, scope: !2183)
!2235 = !DILocation(line: 708, column: 2, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2183, file: !2, line: 708, column: 2)
!2237 = !DILocation(line: 710, column: 2, scope: !2183)
!2238 = !DILocation(line: 711, column: 2, scope: !2183)
!2239 = !DILocation(line: 711, column: 2, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2183, file: !2, line: 711, column: 2)
!2241 = !DILocation(line: 712, column: 22, scope: !2183)
!2242 = !DILocation(line: 712, column: 2, scope: !2183)
!2243 = !DILocation(line: 713, column: 2, scope: !2183)
!2244 = !DILocation(line: 714, column: 2, scope: !2183)
!2245 = !DILocation(line: 714, column: 2, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2183, file: !2, line: 714, column: 2)
!2247 = !DILocation(line: 715, column: 22, scope: !2183)
!2248 = !DILocation(line: 715, column: 29, scope: !2183)
!2249 = !DILocation(line: 715, column: 12, scope: !2183)
!2250 = !DILocation(line: 715, column: 19, scope: !2183)
!2251 = !DILocation(line: 717, column: 2, scope: !2183)
!2252 = !DILocation(line: 718, column: 9, scope: !2183)
!2253 = !DILocation(line: 718, column: 7, scope: !2183)
!2254 = !DILocation(line: 719, column: 10, scope: !2183)
!2255 = !DILocation(line: 719, column: 8, scope: !2183)
!2256 = !DILocation(line: 720, column: 2, scope: !2183)
!2257 = !DILocation(line: 721, column: 2, scope: !2183)
!2258 = !DILocation(line: 721, column: 2, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2183, file: !2, line: 721, column: 2)
!2260 = !DILocation(line: 723, column: 2, scope: !2183)
!2261 = !DILocation(line: 723, column: 12, scope: !2183)
!2262 = !DILocation(line: 723, column: 20, scope: !2183)
!2263 = !DILocation(line: 724, column: 22, scope: !2183)
!2264 = !DILocation(line: 724, column: 38, scope: !2183)
!2265 = !DILocation(line: 724, column: 2, scope: !2183)
!2266 = !DILocation(line: 724, column: 12, scope: !2183)
!2267 = !DILocation(line: 724, column: 20, scope: !2183)
!2268 = !DILocation(line: 725, column: 19, scope: !2183)
!2269 = !DILocation(line: 725, column: 2, scope: !2183)
!2270 = !DILocation(line: 725, column: 12, scope: !2183)
!2271 = !DILocation(line: 725, column: 17, scope: !2183)
!2272 = !DILocation(line: 726, column: 6, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2183, file: !2, line: 726, column: 6)
!2274 = !DILocation(line: 726, column: 11, scope: !2273)
!2275 = !DILocation(line: 726, column: 6, scope: !2183)
!2276 = !DILocation(line: 730, column: 19, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2273, file: !2, line: 726, column: 35)
!2278 = !DILocation(line: 730, column: 7, scope: !2277)
!2279 = !DILocation(line: 731, column: 11, scope: !2277)
!2280 = !DILocation(line: 731, column: 18, scope: !2277)
!2281 = !DILocation(line: 731, column: 26, scope: !2277)
!2282 = !DILocation(line: 731, column: 24, scope: !2277)
!2283 = !DILocation(line: 731, column: 9, scope: !2277)
!2284 = !DILocation(line: 732, column: 3, scope: !2277)
!2285 = !DILocation(line: 733, column: 7, scope: !2277)
!2286 = !DILocation(line: 734, column: 22, scope: !2277)
!2287 = !DILocation(line: 734, column: 29, scope: !2277)
!2288 = !DILocation(line: 734, column: 37, scope: !2277)
!2289 = !DILocation(line: 734, column: 35, scope: !2277)
!2290 = !DILocation(line: 734, column: 13, scope: !2277)
!2291 = !DILocation(line: 734, column: 20, scope: !2277)
!2292 = !DILocation(line: 735, column: 7, scope: !2277)
!2293 = !DILocation(line: 736, column: 20, scope: !2277)
!2294 = !DILocation(line: 736, column: 13, scope: !2277)
!2295 = !DILocation(line: 736, column: 18, scope: !2277)
!2296 = !DILocation(line: 737, column: 3, scope: !2277)
!2297 = !DILocation(line: 738, column: 32, scope: !2277)
!2298 = !DILocation(line: 738, column: 42, scope: !2277)
!2299 = !DILocation(line: 739, column: 10, scope: !2277)
!2300 = !DILocation(line: 739, column: 20, scope: !2277)
!2301 = !DILocation(line: 738, column: 3, scope: !2277)
!2302 = !DILocation(line: 740, column: 9, scope: !2277)
!2303 = !DILocation(line: 741, column: 28, scope: !2277)
!2304 = !DILocation(line: 741, column: 3, scope: !2277)
!2305 = !DILocation(line: 741, column: 13, scope: !2277)
!2306 = !DILocation(line: 741, column: 20, scope: !2277)
!2307 = !DILocation(line: 742, column: 2, scope: !2277)
!2308 = !DILocation(line: 743, column: 3, scope: !2273)
!2309 = !DILocation(line: 743, column: 13, scope: !2273)
!2310 = !DILocation(line: 743, column: 20, scope: !2273)
!2311 = !DILocation(line: 744, column: 18, scope: !2183)
!2312 = !DILocation(line: 744, column: 34, scope: !2183)
!2313 = !DILocation(line: 744, column: 2, scope: !2183)
!2314 = !DILocation(line: 744, column: 12, scope: !2183)
!2315 = !DILocation(line: 744, column: 16, scope: !2183)
!2316 = !DILocation(line: 745, column: 20, scope: !2183)
!2317 = !DILocation(line: 745, column: 2, scope: !2183)
!2318 = !DILocation(line: 745, column: 12, scope: !2183)
!2319 = !DILocation(line: 745, column: 18, scope: !2183)
!2320 = !DILocation(line: 746, column: 2, scope: !2183)
!2321 = !DILocation(line: 746, column: 12, scope: !2183)
!2322 = !DILocation(line: 746, column: 21, scope: !2183)
!2323 = !DILocation(line: 747, column: 2, scope: !2183)
!2324 = !DILocation(line: 747, column: 12, scope: !2183)
!2325 = !DILocation(line: 747, column: 21, scope: !2183)
!2326 = !DILocation(line: 749, column: 33, scope: !2183)
!2327 = !DILocation(line: 749, column: 2, scope: !2183)
!2328 = !DILocation(line: 749, column: 12, scope: !2183)
!2329 = !DILocation(line: 749, column: 21, scope: !2183)
!2330 = !DILocation(line: 754, column: 2, scope: !2183)
!2331 = !DILocation(line: 754, column: 12, scope: !2183)
!2332 = !DILocation(line: 754, column: 25, scope: !2183)
!2333 = !DILocation(line: 755, column: 2, scope: !2183)
!2334 = !DILocation(line: 755, column: 12, scope: !2183)
!2335 = !DILocation(line: 755, column: 21, scope: !2183)
!2336 = !DILocation(line: 756, column: 2, scope: !2183)
!2337 = !DILocation(line: 756, column: 12, scope: !2183)
!2338 = !DILocation(line: 756, column: 21, scope: !2183)
!2339 = !DILocation(line: 757, column: 1, scope: !2183)
!2340 = !DISubprogram(name: "dns_rdatalist_init", scope: !590, file: !590, line: 65, type: !2341, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2341 = !DISubroutineType(types: !2342)
!2342 = !{null, !587}
!2343 = !DISubprogram(name: "dns_db_class", scope: !669, file: !669, line: 453, type: !2344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{!331, !666}
!2346 = !DISubprogram(name: "dns_message_firstname", scope: !469, file: !469, line: 639, type: !2347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!358, !466, !2349}
!2349 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_section_t", file: !469, line: 130, baseType: !496)
!2350 = !DISubprogram(name: "dns_message_currentname", scope: !469, file: !469, line: 678, type: !2351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{null, !466, !2349, !2353}
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!2354 = !DISubprogram(name: "dns_name_toregion", scope: !396, file: !396, line: 678, type: !2355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{null, !392, !1988}
!2357 = !DISubprogram(name: "isc_buffer_copyregion", scope: !408, file: !408, line: 698, type: !2358, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!358, !405, !1745}
!2360 = distinct !DISubprogram(name: "copy_rdataset", scope: !2, file: !2, line: 54, type: !2361, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !108, retainedNodes: !2363)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!358, !318, !405}
!2363 = !{!2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2373, !2374, !2377, !2380, !2381}
!2364 = !DILocalVariable(name: "rdataset", arg: 1, scope: !2360, file: !2, line: 54, type: !318)
!2365 = !DILocalVariable(name: "buffer", arg: 2, scope: !2360, file: !2, line: 54, type: !405)
!2366 = !DILocalVariable(name: "result", scope: !2360, file: !2, line: 55, type: !358)
!2367 = !DILocalVariable(name: "count", scope: !2360, file: !2, line: 56, type: !112)
!2368 = !DILocalVariable(name: "ar", scope: !2360, file: !2, line: 57, type: !534)
!2369 = !DILocalVariable(name: "r", scope: !2360, file: !2, line: 57, type: !534)
!2370 = !DILocalVariable(name: "rdata", scope: !2360, file: !2, line: 58, type: !366)
!2371 = !DILocalVariable(name: "_cp", scope: !2372, file: !2, line: 68, type: !245)
!2372 = distinct !DILexicalBlock(scope: !2360, file: !2, line: 68, column: 2)
!2373 = !DILocalVariable(name: "_val2", scope: !2372, file: !2, line: 68, type: !247)
!2374 = !DILocalVariable(name: "_tmp", scope: !2375, file: !2, line: 68, type: !405)
!2375 = distinct !DILexicalBlock(scope: !2376, file: !2, line: 68, column: 2)
!2376 = distinct !DILexicalBlock(scope: !2372, file: !2, line: 68, column: 2)
!2377 = !DILocalVariable(name: "_cp", scope: !2378, file: !2, line: 81, type: !245)
!2378 = distinct !DILexicalBlock(scope: !2379, file: !2, line: 81, column: 3)
!2379 = distinct !DILexicalBlock(scope: !2360, file: !2, line: 71, column: 34)
!2380 = !DILocalVariable(name: "_val2", scope: !2378, file: !2, line: 81, type: !247)
!2381 = !DILocalVariable(name: "_tmp", scope: !2382, file: !2, line: 81, type: !405)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !2, line: 81, column: 3)
!2383 = distinct !DILexicalBlock(scope: !2378, file: !2, line: 81, column: 3)
!2384 = !DILocation(line: 54, column: 31, scope: !2360)
!2385 = !DILocation(line: 54, column: 55, scope: !2360)
!2386 = !DILocation(line: 55, column: 2, scope: !2360)
!2387 = !DILocation(line: 55, column: 15, scope: !2360)
!2388 = !DILocation(line: 56, column: 2, scope: !2360)
!2389 = !DILocation(line: 56, column: 15, scope: !2360)
!2390 = !DILocation(line: 57, column: 2, scope: !2360)
!2391 = !DILocation(line: 57, column: 15, scope: !2360)
!2392 = !DILocation(line: 57, column: 19, scope: !2360)
!2393 = !DILocation(line: 58, column: 2, scope: !2360)
!2394 = !DILocation(line: 58, column: 14, scope: !2360)
!2395 = !DILocation(line: 63, column: 2, scope: !2360)
!2396 = !DILocation(line: 63, column: 2, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2360, file: !2, line: 63, column: 2)
!2398 = !DILocation(line: 64, column: 9, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2360, file: !2, line: 64, column: 6)
!2400 = !DILocation(line: 64, column: 16, scope: !2399)
!2401 = !DILocation(line: 64, column: 6, scope: !2360)
!2402 = !DILocation(line: 65, column: 3, scope: !2399)
!2403 = !DILocation(line: 66, column: 29, scope: !2360)
!2404 = !DILocation(line: 66, column: 10, scope: !2360)
!2405 = !DILocation(line: 66, column: 8, scope: !2360)
!2406 = !DILocation(line: 67, column: 2, scope: !2360)
!2407 = !DILocation(line: 68, column: 2, scope: !2360)
!2408 = !DILocation(line: 68, column: 2, scope: !2372)
!2409 = !DILocation(line: 68, column: 2, scope: !2376)
!2410 = !DILocation(line: 68, column: 2, scope: !2375)
!2411 = !DILocation(line: 70, column: 30, scope: !2360)
!2412 = !DILocation(line: 70, column: 11, scope: !2360)
!2413 = !DILocation(line: 70, column: 9, scope: !2360)
!2414 = !DILocation(line: 71, column: 2, scope: !2360)
!2415 = !DILocation(line: 71, column: 9, scope: !2360)
!2416 = !DILocation(line: 71, column: 16, scope: !2360)
!2417 = !DILocation(line: 72, column: 24, scope: !2379)
!2418 = !DILocation(line: 72, column: 3, scope: !2379)
!2419 = !DILocation(line: 73, column: 3, scope: !2379)
!2420 = !DILocation(line: 74, column: 3, scope: !2379)
!2421 = !DILocation(line: 75, column: 3, scope: !2379)
!2422 = !DILocation(line: 75, column: 3, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2379, file: !2, line: 75, column: 3)
!2424 = !DILocation(line: 76, column: 10, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2379, file: !2, line: 76, column: 7)
!2426 = !DILocation(line: 76, column: 17, scope: !2425)
!2427 = !DILocation(line: 76, column: 7, scope: !2379)
!2428 = !DILocation(line: 77, column: 4, scope: !2425)
!2429 = !DILocation(line: 81, column: 3, scope: !2379)
!2430 = !DILocation(line: 81, column: 3, scope: !2378)
!2431 = !DILocation(line: 81, column: 3, scope: !2383)
!2432 = !DILocation(line: 81, column: 3, scope: !2382)
!2433 = !DILocation(line: 85, column: 34, scope: !2379)
!2434 = !DILocation(line: 85, column: 12, scope: !2379)
!2435 = !DILocation(line: 85, column: 10, scope: !2379)
!2436 = !DILocation(line: 86, column: 7, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2379, file: !2, line: 86, column: 7)
!2438 = !DILocation(line: 86, column: 14, scope: !2437)
!2439 = !DILocation(line: 86, column: 7, scope: !2379)
!2440 = !DILocation(line: 87, column: 12, scope: !2437)
!2441 = !DILocation(line: 87, column: 4, scope: !2437)
!2442 = !DILocation(line: 88, column: 3, scope: !2379)
!2443 = !DILocation(line: 89, column: 30, scope: !2379)
!2444 = !DILocation(line: 89, column: 12, scope: !2379)
!2445 = !DILocation(line: 89, column: 10, scope: !2379)
!2446 = distinct !{!2446, !2414, !2447, !1381}
!2447 = !DILocation(line: 90, column: 2, scope: !2360)
!2448 = !DILocation(line: 91, column: 6, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2360, file: !2, line: 91, column: 6)
!2450 = !DILocation(line: 91, column: 13, scope: !2449)
!2451 = !DILocation(line: 91, column: 6, scope: !2360)
!2452 = !DILocation(line: 92, column: 11, scope: !2449)
!2453 = !DILocation(line: 92, column: 3, scope: !2449)
!2454 = !DILocation(line: 94, column: 2, scope: !2360)
!2455 = !DILocation(line: 95, column: 1, scope: !2360)
!2456 = !DISubprogram(name: "dns_rdata_init", scope: !368, file: !368, line: 188, type: !1751, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2457 = !DISubprogram(name: "dns_message_nextname", scope: !469, file: !469, line: 658, type: !2347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2458 = !DISubprogram(name: "dns_rdatalist_tordataset", scope: !590, file: !590, line: 75, type: !2459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!358, !587, !318}
!2461 = !DISubprogram(name: "isc_error_runtimecheck", scope: !2462, file: !2462, line: 49, type: !2463, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2462 = !DIFile(filename: "isc/include/isc/error.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib", checksumkind: CSK_MD5, checksum: "e90b8298ea6c947397fab383c61a094d")
!2463 = !DISubroutineType(types: !2464)
!2464 = !{null, !759, !496, !759}
!2465 = !DISubprogram(name: "dns_db_addrdataset", scope: !669, file: !669, line: 1201, type: !831, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2466 = !DISubprogram(name: "dns_rdataset_count", scope: !311, file: !311, line: 295, type: !386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2467 = !DISubprogram(name: "dns_rdata_toregion", scope: !368, file: !368, line: 272, type: !2468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{null, !637, !1988}
!2470 = distinct !DISubprogram(name: "rdataset_disassociate", scope: !2, file: !2, line: 407, type: !316, scopeLine: 407, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !108, retainedNodes: !2471)
!2471 = !{!2472}
!2472 = !DILocalVariable(name: "rdataset", arg: 1, scope: !2470, file: !2, line: 407, type: !318)
!2473 = !DILocation(line: 407, column: 39, scope: !2470)
!2474 = !DILocation(line: 408, column: 2, scope: !2470)
!2475 = !DILocation(line: 409, column: 1, scope: !2470)
!2476 = distinct !DISubprogram(name: "rdataset_first", scope: !2, file: !2, line: 412, type: !356, scopeLine: 412, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !108, retainedNodes: !2477)
!2477 = !{!2478, !2479, !2480}
!2478 = !DILocalVariable(name: "rdataset", arg: 1, scope: !2476, file: !2, line: 412, type: !318)
!2479 = !DILocalVariable(name: "raw", scope: !2476, file: !2, line: 413, type: !245)
!2480 = !DILocalVariable(name: "count", scope: !2476, file: !2, line: 414, type: !112)
!2481 = !DILocation(line: 412, column: 32, scope: !2476)
!2482 = !DILocation(line: 413, column: 2, scope: !2476)
!2483 = !DILocation(line: 413, column: 17, scope: !2476)
!2484 = !DILocation(line: 413, column: 23, scope: !2476)
!2485 = !DILocation(line: 413, column: 33, scope: !2476)
!2486 = !DILocation(line: 414, column: 2, scope: !2476)
!2487 = !DILocation(line: 414, column: 15, scope: !2476)
!2488 = !DILocation(line: 416, column: 10, scope: !2476)
!2489 = !DILocation(line: 416, column: 17, scope: !2476)
!2490 = !DILocation(line: 416, column: 25, scope: !2476)
!2491 = !DILocation(line: 416, column: 23, scope: !2476)
!2492 = !DILocation(line: 416, column: 8, scope: !2476)
!2493 = !DILocation(line: 417, column: 6, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2476, file: !2, line: 417, column: 6)
!2495 = !DILocation(line: 417, column: 12, scope: !2494)
!2496 = !DILocation(line: 417, column: 6, scope: !2476)
!2497 = !DILocation(line: 418, column: 3, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2494, file: !2, line: 417, column: 18)
!2499 = !DILocation(line: 418, column: 13, scope: !2498)
!2500 = !DILocation(line: 418, column: 22, scope: !2498)
!2501 = !DILocation(line: 419, column: 3, scope: !2498)
!2502 = !DILocation(line: 421, column: 6, scope: !2476)
!2503 = !DILocation(line: 427, column: 7, scope: !2476)
!2504 = !DILocation(line: 428, column: 27, scope: !2476)
!2505 = !DILocation(line: 428, column: 2, scope: !2476)
!2506 = !DILocation(line: 428, column: 12, scope: !2476)
!2507 = !DILocation(line: 428, column: 25, scope: !2476)
!2508 = !DILocation(line: 429, column: 23, scope: !2476)
!2509 = !DILocation(line: 429, column: 2, scope: !2476)
!2510 = !DILocation(line: 429, column: 12, scope: !2476)
!2511 = !DILocation(line: 429, column: 21, scope: !2476)
!2512 = !DILocation(line: 431, column: 2, scope: !2476)
!2513 = !DILocation(line: 432, column: 1, scope: !2476)
!2514 = distinct !DISubprogram(name: "rdataset_next", scope: !2, file: !2, line: 435, type: !356, scopeLine: 435, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !108, retainedNodes: !2515)
!2515 = !{!2516, !2517, !2518, !2519}
!2516 = !DILocalVariable(name: "rdataset", arg: 1, scope: !2514, file: !2, line: 435, type: !318)
!2517 = !DILocalVariable(name: "count", scope: !2514, file: !2, line: 436, type: !112)
!2518 = !DILocalVariable(name: "length", scope: !2514, file: !2, line: 437, type: !112)
!2519 = !DILocalVariable(name: "raw", scope: !2514, file: !2, line: 438, type: !245)
!2520 = !DILocation(line: 435, column: 31, scope: !2514)
!2521 = !DILocation(line: 436, column: 2, scope: !2514)
!2522 = !DILocation(line: 436, column: 15, scope: !2514)
!2523 = !DILocation(line: 437, column: 2, scope: !2514)
!2524 = !DILocation(line: 437, column: 15, scope: !2514)
!2525 = !DILocation(line: 438, column: 2, scope: !2514)
!2526 = !DILocation(line: 438, column: 17, scope: !2514)
!2527 = !DILocation(line: 440, column: 10, scope: !2514)
!2528 = !DILocation(line: 440, column: 20, scope: !2514)
!2529 = !DILocation(line: 440, column: 8, scope: !2514)
!2530 = !DILocation(line: 441, column: 6, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2514, file: !2, line: 441, column: 6)
!2532 = !DILocation(line: 441, column: 12, scope: !2531)
!2533 = !DILocation(line: 441, column: 6, scope: !2514)
!2534 = !DILocation(line: 442, column: 3, scope: !2531)
!2535 = !DILocation(line: 443, column: 7, scope: !2514)
!2536 = !DILocation(line: 444, column: 27, scope: !2514)
!2537 = !DILocation(line: 444, column: 2, scope: !2514)
!2538 = !DILocation(line: 444, column: 12, scope: !2514)
!2539 = !DILocation(line: 444, column: 25, scope: !2514)
!2540 = !DILocation(line: 445, column: 8, scope: !2514)
!2541 = !DILocation(line: 445, column: 18, scope: !2514)
!2542 = !DILocation(line: 445, column: 6, scope: !2514)
!2543 = !DILocation(line: 446, column: 11, scope: !2514)
!2544 = !DILocation(line: 446, column: 18, scope: !2514)
!2545 = !DILocation(line: 446, column: 26, scope: !2514)
!2546 = !DILocation(line: 446, column: 24, scope: !2514)
!2547 = !DILocation(line: 446, column: 9, scope: !2514)
!2548 = !DILocation(line: 447, column: 9, scope: !2514)
!2549 = !DILocation(line: 447, column: 16, scope: !2514)
!2550 = !DILocation(line: 447, column: 6, scope: !2514)
!2551 = !DILocation(line: 448, column: 23, scope: !2514)
!2552 = !DILocation(line: 448, column: 2, scope: !2514)
!2553 = !DILocation(line: 448, column: 12, scope: !2514)
!2554 = !DILocation(line: 448, column: 21, scope: !2514)
!2555 = !DILocation(line: 450, column: 2, scope: !2514)
!2556 = !DILocation(line: 451, column: 1, scope: !2514)
!2557 = distinct !DISubprogram(name: "rdataset_current", scope: !2, file: !2, line: 454, type: !363, scopeLine: 454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !108, retainedNodes: !2558)
!2558 = !{!2559, !2560, !2561, !2562}
!2559 = !DILocalVariable(name: "rdataset", arg: 1, scope: !2557, file: !2, line: 454, type: !318)
!2560 = !DILocalVariable(name: "rdata", arg: 2, scope: !2557, file: !2, line: 454, type: !365)
!2561 = !DILocalVariable(name: "raw", scope: !2557, file: !2, line: 455, type: !245)
!2562 = !DILocalVariable(name: "r", scope: !2557, file: !2, line: 456, type: !534)
!2563 = !DILocation(line: 454, column: 34, scope: !2557)
!2564 = !DILocation(line: 454, column: 57, scope: !2557)
!2565 = !DILocation(line: 455, column: 2, scope: !2557)
!2566 = !DILocation(line: 455, column: 17, scope: !2557)
!2567 = !DILocation(line: 455, column: 23, scope: !2557)
!2568 = !DILocation(line: 455, column: 33, scope: !2557)
!2569 = !DILocation(line: 456, column: 2, scope: !2557)
!2570 = !DILocation(line: 456, column: 15, scope: !2557)
!2571 = !DILocation(line: 458, column: 2, scope: !2557)
!2572 = !DILocation(line: 460, column: 13, scope: !2557)
!2573 = !DILocation(line: 460, column: 20, scope: !2557)
!2574 = !DILocation(line: 460, column: 28, scope: !2557)
!2575 = !DILocation(line: 460, column: 26, scope: !2557)
!2576 = !DILocation(line: 460, column: 4, scope: !2557)
!2577 = !DILocation(line: 460, column: 11, scope: !2557)
!2578 = !DILocation(line: 461, column: 6, scope: !2557)
!2579 = !DILocation(line: 462, column: 11, scope: !2557)
!2580 = !DILocation(line: 462, column: 4, scope: !2557)
!2581 = !DILocation(line: 462, column: 9, scope: !2557)
!2582 = !DILocation(line: 463, column: 23, scope: !2557)
!2583 = !DILocation(line: 463, column: 30, scope: !2557)
!2584 = !DILocation(line: 463, column: 40, scope: !2557)
!2585 = !DILocation(line: 463, column: 49, scope: !2557)
!2586 = !DILocation(line: 463, column: 59, scope: !2557)
!2587 = !DILocation(line: 463, column: 2, scope: !2557)
!2588 = !DILocation(line: 464, column: 1, scope: !2557)
!2589 = distinct !DISubprogram(name: "rdataset_clone", scope: !2, file: !2, line: 467, type: !382, scopeLine: 467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !108, retainedNodes: !2590)
!2590 = !{!2591, !2592}
!2591 = !DILocalVariable(name: "source", arg: 1, scope: !2589, file: !2, line: 467, type: !318)
!2592 = !DILocalVariable(name: "target", arg: 2, scope: !2589, file: !2, line: 467, type: !318)
!2593 = !DILocation(line: 467, column: 32, scope: !2589)
!2594 = !DILocation(line: 467, column: 56, scope: !2589)
!2595 = !DILocation(line: 468, column: 3, scope: !2589)
!2596 = !DILocation(line: 468, column: 13, scope: !2589)
!2597 = !DILocation(line: 468, column: 12, scope: !2589)
!2598 = !DILocation(line: 473, column: 2, scope: !2589)
!2599 = !DILocation(line: 473, column: 10, scope: !2589)
!2600 = !DILocation(line: 473, column: 23, scope: !2589)
!2601 = !DILocation(line: 474, column: 2, scope: !2589)
!2602 = !DILocation(line: 474, column: 10, scope: !2589)
!2603 = !DILocation(line: 474, column: 19, scope: !2589)
!2604 = !DILocation(line: 475, column: 1, scope: !2589)
!2605 = distinct !DISubprogram(name: "rdataset_count", scope: !2, file: !2, line: 478, type: !386, scopeLine: 478, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !108, retainedNodes: !2606)
!2606 = !{!2607, !2608, !2609}
!2607 = !DILocalVariable(name: "rdataset", arg: 1, scope: !2605, file: !2, line: 478, type: !318)
!2608 = !DILocalVariable(name: "raw", scope: !2605, file: !2, line: 479, type: !245)
!2609 = !DILocalVariable(name: "count", scope: !2605, file: !2, line: 480, type: !112)
!2610 = !DILocation(line: 478, column: 32, scope: !2605)
!2611 = !DILocation(line: 479, column: 2, scope: !2605)
!2612 = !DILocation(line: 479, column: 17, scope: !2605)
!2613 = !DILocation(line: 479, column: 23, scope: !2605)
!2614 = !DILocation(line: 479, column: 33, scope: !2605)
!2615 = !DILocation(line: 480, column: 2, scope: !2605)
!2616 = !DILocation(line: 480, column: 15, scope: !2605)
!2617 = !DILocation(line: 482, column: 10, scope: !2605)
!2618 = !DILocation(line: 482, column: 17, scope: !2605)
!2619 = !DILocation(line: 482, column: 25, scope: !2605)
!2620 = !DILocation(line: 482, column: 23, scope: !2605)
!2621 = !DILocation(line: 482, column: 8, scope: !2605)
!2622 = !DILocation(line: 484, column: 10, scope: !2605)
!2623 = !DILocation(line: 485, column: 1, scope: !2605)
!2624 = !DILocation(line: 484, column: 2, scope: !2605)
!2625 = distinct !DISubprogram(name: "rdataset_settrust", scope: !2, file: !2, line: 488, type: !446, scopeLine: 488, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !108, retainedNodes: !2626)
!2626 = !{!2627, !2628, !2629}
!2627 = !DILocalVariable(name: "rdataset", arg: 1, scope: !2625, file: !2, line: 488, type: !318)
!2628 = !DILocalVariable(name: "trust", arg: 2, scope: !2625, file: !2, line: 488, type: !252)
!2629 = !DILocalVariable(name: "raw", scope: !2625, file: !2, line: 489, type: !245)
!2630 = !DILocation(line: 488, column: 35, scope: !2625)
!2631 = !DILocation(line: 488, column: 57, scope: !2625)
!2632 = !DILocation(line: 489, column: 2, scope: !2625)
!2633 = !DILocation(line: 489, column: 17, scope: !2625)
!2634 = !DILocation(line: 489, column: 23, scope: !2625)
!2635 = !DILocation(line: 489, column: 33, scope: !2625)
!2636 = !DILocation(line: 491, column: 27, scope: !2625)
!2637 = !DILocation(line: 491, column: 12, scope: !2625)
!2638 = !DILocation(line: 491, column: 2, scope: !2625)
!2639 = !DILocation(line: 491, column: 10, scope: !2625)
!2640 = !DILocation(line: 492, column: 1, scope: !2625)

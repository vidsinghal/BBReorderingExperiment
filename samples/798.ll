; ModuleID = 'samples/798.bc'
source_filename = "src/stream/ngx_stream_upstream_hash_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngx_stream_module_t = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ngx_command_s = type { %struct.ngx_str_t, i64, ptr, i64, i64, ptr }
%struct.ngx_str_t = type { i64, ptr }
%struct.ngx_module_s = type { i64, i64, ptr, i64, i64, i64, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ngx_conf_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr }
%struct.ngx_stream_upstream_hash_srv_conf_t = type { %struct.ngx_stream_complex_value_t, ptr }
%struct.ngx_stream_complex_value_t = type { %struct.ngx_str_t, ptr, ptr, ptr }
%struct.ngx_stream_compile_complex_value_t = type { ptr, ptr, ptr, i8 }
%struct.ngx_array_t = type { ptr, i64, i64, i64, ptr }
%struct.ngx_stream_conf_ctx_t = type { ptr, ptr }
%struct.ngx_stream_upstream_srv_conf_s = type { %struct.ngx_stream_upstream_peer_t, ptr, ptr, i64, %struct.ngx_str_t, ptr, i64, i16, i64, ptr }
%struct.ngx_stream_upstream_peer_t = type { ptr, ptr, ptr }
%union.anon.2 = type { i32 }
%struct.ngx_stream_upstream_rr_peers_s = type { i64, ptr, i64, ptr, i64, i8, ptr, ptr, ptr }
%struct.ngx_stream_upstream_chash_points_t = type { i64, [1 x %struct.ngx_stream_upstream_chash_point_t] }
%struct.ngx_stream_upstream_chash_point_t = type { i32, ptr }
%struct.ngx_stream_upstream_rr_peer_s = type { ptr, i32, %struct.ngx_str_t, %struct.ngx_str_t, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, i32, i64, ptr }
%struct.ngx_stream_session_s = type { i32, ptr, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i8 }
%struct.ngx_connection_s = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, i32, ptr, i32, %struct.ngx_str_t, %struct.ngx_str_t, i16, ptr, ptr, ptr, i32, ptr, %struct.ngx_queue_s, i64, i64, i32 }
%struct.ngx_queue_s = type { ptr, ptr }
%struct.ngx_stream_upstream_hash_peer_data_t = type { %struct.ngx_stream_upstream_rr_peer_data_t, ptr, %struct.ngx_str_t, i64, i64, i32, ptr }
%struct.ngx_stream_upstream_rr_peer_data_t = type { i64, ptr, ptr, ptr, i64 }
%struct.ngx_stream_upstream_t = type { %struct.ngx_peer_connection_s, %struct.ngx_buf_s, %struct.ngx_buf_s, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, %struct.ngx_str_t, ptr, ptr, ptr, i8 }
%struct.ngx_peer_connection_s = type { ptr, ptr, i32, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i8 }
%struct.ngx_buf_s = type { ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, i16, i32 }
%struct.ngx_time_t = type { i64, i64, i64 }

@.str = private unnamed_addr constant [41 x i8] c"8,4,8,0000111111010111001110011111000110\00", align 1, !dbg !0
@ngx_stream_upstream_hash_module_ctx = internal global %struct.ngx_stream_module_t { ptr null, ptr null, ptr null, ptr null, ptr @ngx_stream_upstream_hash_create_conf, ptr null }, align 8, !dbg !7
@ngx_stream_upstream_hash_commands = internal global [2 x %struct.ngx_command_s] [%struct.ngx_command_s { %struct.ngx_str_t { i64 4, ptr @.str.1 }, i64 134217734, ptr @ngx_stream_upstream_hash, i64 8, i64 0, ptr null }, %struct.ngx_command_s zeroinitializer], align 16, !dbg !622
@ngx_stream_upstream_hash_module = dso_local global %struct.ngx_module_s { i64 -1, i64 -1, ptr null, i64 0, i64 0, i64 1015008, ptr @.str, ptr @ngx_stream_upstream_hash_module_ctx, ptr @ngx_stream_upstream_hash_commands, i64 1297241171, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, align 8, !dbg !53
@.str.1 = private unnamed_addr constant [5 x i8] c"hash\00", align 1, !dbg !617
@ngx_stream_upstream_module = external global %struct.ngx_module_s, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"load balancing method redefined\00", align 1, !dbg !627
@.str.3 = private unnamed_addr constant [11 x i8] c"consistent\00", align 1, !dbg !632
@.str.4 = private unnamed_addr constant [23 x i8] c"invalid parameter \22%V\22\00", align 1, !dbg !637
@ngx_cached_time = external global ptr, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"%ui\00", align 1, !dbg !642
@ngx_crc32_table256 = external global [0 x i32], align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"unix:\00", align 1, !dbg !647
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !652

; Function Attrs: nounwind uwtable
define internal ptr @ngx_stream_upstream_hash_create_conf(ptr noundef %cf) #0 !dbg !685 {
entry:
  %retval = alloca ptr, align 8
  %cf.addr = alloca ptr, align 8
  %conf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !711
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !687, metadata !DIExpression()), !dbg !715
  call void @llvm.lifetime.start.p0(i64 8, ptr %conf) #8, !dbg !716
  tail call void @llvm.dbg.declare(metadata ptr %conf, metadata !688, metadata !DIExpression()), !dbg !717
  %0 = load ptr, ptr %cf.addr, align 8, !dbg !718, !tbaa !711
  %pool = getelementptr inbounds %struct.ngx_conf_s, ptr %0, i32 0, i32 3, !dbg !719
  %1 = load ptr, ptr %pool, align 8, !dbg !719, !tbaa !720
  %call = call ptr @ngx_palloc(ptr noundef %1, i64 noundef 48), !dbg !723
  store ptr %call, ptr %conf, align 8, !dbg !724, !tbaa !711
  %2 = load ptr, ptr %conf, align 8, !dbg !725, !tbaa !711
  %cmp = icmp eq ptr %2, null, !dbg !727
  br i1 %cmp, label %if.then, label %if.end, !dbg !728

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !729
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !729

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %conf, align 8, !dbg !731, !tbaa !711
  %points = getelementptr inbounds %struct.ngx_stream_upstream_hash_srv_conf_t, ptr %3, i32 0, i32 1, !dbg !732
  store ptr null, ptr %points, align 8, !dbg !733, !tbaa !734
  %4 = load ptr, ptr %conf, align 8, !dbg !738, !tbaa !711
  store ptr %4, ptr %retval, align 8, !dbg !739
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !739

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %conf) #8, !dbg !740
  %5 = load ptr, ptr %retval, align 8, !dbg !740
  ret ptr %5, !dbg !740
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !741 ptr @ngx_palloc(ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal ptr @ngx_stream_upstream_hash(ptr noundef %cf, ptr noundef %cmd, ptr noundef %conf) #0 !dbg !744 {
entry:
  %retval = alloca ptr, align 8
  %cf.addr = alloca ptr, align 8
  %cmd.addr = alloca ptr, align 8
  %conf.addr = alloca ptr, align 8
  %hcf = alloca ptr, align 8
  %value = alloca ptr, align 8
  %uscf = alloca ptr, align 8
  %ccv = alloca %struct.ngx_stream_compile_complex_value_t, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !711
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !746, metadata !DIExpression()), !dbg !1102
  store ptr %cmd, ptr %cmd.addr, align 8, !tbaa !711
  tail call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !747, metadata !DIExpression()), !dbg !1103
  store ptr %conf, ptr %conf.addr, align 8, !tbaa !711
  tail call void @llvm.dbg.declare(metadata ptr %conf.addr, metadata !748, metadata !DIExpression()), !dbg !1104
  call void @llvm.lifetime.start.p0(i64 8, ptr %hcf) #8, !dbg !1105
  tail call void @llvm.dbg.declare(metadata ptr %hcf, metadata !749, metadata !DIExpression()), !dbg !1106
  %0 = load ptr, ptr %conf.addr, align 8, !dbg !1107, !tbaa !711
  store ptr %0, ptr %hcf, align 8, !dbg !1106, !tbaa !711
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #8, !dbg !1108
  tail call void @llvm.dbg.declare(metadata ptr %value, metadata !750, metadata !DIExpression()), !dbg !1109
  call void @llvm.lifetime.start.p0(i64 8, ptr %uscf) #8, !dbg !1110
  tail call void @llvm.dbg.declare(metadata ptr %uscf, metadata !751, metadata !DIExpression()), !dbg !1111
  call void @llvm.lifetime.start.p0(i64 32, ptr %ccv) #8, !dbg !1112
  tail call void @llvm.dbg.declare(metadata ptr %ccv, metadata !1091, metadata !DIExpression()), !dbg !1113
  %1 = load ptr, ptr %cf.addr, align 8, !dbg !1114, !tbaa !711
  %args = getelementptr inbounds %struct.ngx_conf_s, ptr %1, i32 0, i32 1, !dbg !1115
  %2 = load ptr, ptr %args, align 8, !dbg !1115, !tbaa !1116
  %elts = getelementptr inbounds %struct.ngx_array_t, ptr %2, i32 0, i32 0, !dbg !1117
  %3 = load ptr, ptr %elts, align 8, !dbg !1117, !tbaa !1118
  store ptr %3, ptr %value, align 8, !dbg !1120, !tbaa !711
  call void @llvm.memset.p0.i64(ptr align 8 %ccv, i8 0, i64 32, i1 false), !dbg !1121
  %4 = load ptr, ptr %cf.addr, align 8, !dbg !1122, !tbaa !711
  %cf1 = getelementptr inbounds %struct.ngx_stream_compile_complex_value_t, ptr %ccv, i32 0, i32 0, !dbg !1123
  store ptr %4, ptr %cf1, align 8, !dbg !1124, !tbaa !1125
  %5 = load ptr, ptr %value, align 8, !dbg !1128, !tbaa !711
  %arrayidx = getelementptr inbounds %struct.ngx_str_t, ptr %5, i64 1, !dbg !1128
  %value2 = getelementptr inbounds %struct.ngx_stream_compile_complex_value_t, ptr %ccv, i32 0, i32 1, !dbg !1129
  store ptr %arrayidx, ptr %value2, align 8, !dbg !1130, !tbaa !1131
  %6 = load ptr, ptr %hcf, align 8, !dbg !1132, !tbaa !711
  %key = getelementptr inbounds %struct.ngx_stream_upstream_hash_srv_conf_t, ptr %6, i32 0, i32 0, !dbg !1133
  %complex_value = getelementptr inbounds %struct.ngx_stream_compile_complex_value_t, ptr %ccv, i32 0, i32 2, !dbg !1134
  store ptr %key, ptr %complex_value, align 8, !dbg !1135, !tbaa !1136
  %call = call i64 @ngx_stream_compile_complex_value(ptr noundef %ccv), !dbg !1137
  %cmp = icmp ne i64 %call, 0, !dbg !1139
  br i1 %cmp, label %if.then, label %if.end, !dbg !1140

if.then:                                          ; preds = %entry
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !1141
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1141

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %cf.addr, align 8, !dbg !1143, !tbaa !711
  %ctx = getelementptr inbounds %struct.ngx_conf_s, ptr %7, i32 0, i32 7, !dbg !1143
  %8 = load ptr, ptr %ctx, align 8, !dbg !1143, !tbaa !1144
  %srv_conf = getelementptr inbounds %struct.ngx_stream_conf_ctx_t, ptr %8, i32 0, i32 1, !dbg !1143
  %9 = load ptr, ptr %srv_conf, align 8, !dbg !1143, !tbaa !1145
  %10 = load i64, ptr @ngx_stream_upstream_module, align 8, !dbg !1143, !tbaa !1147
  %arrayidx3 = getelementptr inbounds ptr, ptr %9, i64 %10, !dbg !1143
  %11 = load ptr, ptr %arrayidx3, align 8, !dbg !1143, !tbaa !711
  store ptr %11, ptr %uscf, align 8, !dbg !1149, !tbaa !711
  %12 = load ptr, ptr %uscf, align 8, !dbg !1150, !tbaa !711
  %peer = getelementptr inbounds %struct.ngx_stream_upstream_srv_conf_s, ptr %12, i32 0, i32 0, !dbg !1152
  %init_upstream = getelementptr inbounds %struct.ngx_stream_upstream_peer_t, ptr %peer, i32 0, i32 0, !dbg !1153
  %13 = load ptr, ptr %init_upstream, align 8, !dbg !1153, !tbaa !1154
  %tobool = icmp ne ptr %13, null, !dbg !1150
  br i1 %tobool, label %if.then4, label %if.end5, !dbg !1158

if.then4:                                         ; preds = %if.end
  %14 = load ptr, ptr %cf.addr, align 8, !dbg !1159, !tbaa !711
  call void (i64, ptr, i32, ptr, ...) @ngx_conf_log_error(i64 noundef 5, ptr noundef %14, i32 noundef 0, ptr noundef @.str.2), !dbg !1161
  br label %if.end5, !dbg !1162

if.end5:                                          ; preds = %if.then4, %if.end
  %15 = load ptr, ptr %uscf, align 8, !dbg !1163, !tbaa !711
  %flags = getelementptr inbounds %struct.ngx_stream_upstream_srv_conf_s, ptr %15, i32 0, i32 3, !dbg !1164
  store i64 287, ptr %flags, align 8, !dbg !1165, !tbaa !1166
  %16 = load ptr, ptr %cf.addr, align 8, !dbg !1167, !tbaa !711
  %args6 = getelementptr inbounds %struct.ngx_conf_s, ptr %16, i32 0, i32 1, !dbg !1169
  %17 = load ptr, ptr %args6, align 8, !dbg !1169, !tbaa !1116
  %nelts = getelementptr inbounds %struct.ngx_array_t, ptr %17, i32 0, i32 1, !dbg !1170
  %18 = load i64, ptr %nelts, align 8, !dbg !1170, !tbaa !1171
  %cmp7 = icmp eq i64 %18, 2, !dbg !1172
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !1173

if.then8:                                         ; preds = %if.end5
  %19 = load ptr, ptr %uscf, align 8, !dbg !1174, !tbaa !711
  %peer9 = getelementptr inbounds %struct.ngx_stream_upstream_srv_conf_s, ptr %19, i32 0, i32 0, !dbg !1176
  %init_upstream10 = getelementptr inbounds %struct.ngx_stream_upstream_peer_t, ptr %peer9, i32 0, i32 0, !dbg !1177
  store ptr @ngx_stream_upstream_init_hash, ptr %init_upstream10, align 8, !dbg !1178, !tbaa !1154
  br label %if.end20, !dbg !1179

if.else:                                          ; preds = %if.end5
  %20 = load ptr, ptr %value, align 8, !dbg !1180, !tbaa !711
  %arrayidx11 = getelementptr inbounds %struct.ngx_str_t, ptr %20, i64 2, !dbg !1180
  %data = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx11, i32 0, i32 1, !dbg !1180
  %21 = load ptr, ptr %data, align 8, !dbg !1180, !tbaa !1182
  %call12 = call i32 @strcmp(ptr noundef %21, ptr noundef @.str.3) #9, !dbg !1180
  %cmp13 = icmp eq i32 %call12, 0, !dbg !1183
  br i1 %cmp13, label %if.then14, label %if.else17, !dbg !1184

if.then14:                                        ; preds = %if.else
  %22 = load ptr, ptr %uscf, align 8, !dbg !1185, !tbaa !711
  %peer15 = getelementptr inbounds %struct.ngx_stream_upstream_srv_conf_s, ptr %22, i32 0, i32 0, !dbg !1187
  %init_upstream16 = getelementptr inbounds %struct.ngx_stream_upstream_peer_t, ptr %peer15, i32 0, i32 0, !dbg !1188
  store ptr @ngx_stream_upstream_init_chash, ptr %init_upstream16, align 8, !dbg !1189, !tbaa !1154
  br label %if.end19, !dbg !1190

if.else17:                                        ; preds = %if.else
  %23 = load ptr, ptr %cf.addr, align 8, !dbg !1191, !tbaa !711
  %24 = load ptr, ptr %value, align 8, !dbg !1193, !tbaa !711
  %arrayidx18 = getelementptr inbounds %struct.ngx_str_t, ptr %24, i64 2, !dbg !1193
  call void (i64, ptr, i32, ptr, ...) @ngx_conf_log_error(i64 noundef 1, ptr noundef %23, i32 noundef 0, ptr noundef @.str.4, ptr noundef %arrayidx18), !dbg !1194
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !1195
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1195

if.end19:                                         ; preds = %if.then14
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then8
  store ptr null, ptr %retval, align 8, !dbg !1196
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1196

cleanup:                                          ; preds = %if.end20, %if.else17, %if.then
  call void @llvm.lifetime.end.p0(i64 32, ptr %ccv) #8, !dbg !1197
  call void @llvm.lifetime.end.p0(i64 8, ptr %uscf) #8, !dbg !1197
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #8, !dbg !1197
  call void @llvm.lifetime.end.p0(i64 8, ptr %hcf) #8, !dbg !1197
  %25 = load ptr, ptr %retval, align 8, !dbg !1197
  ret ptr %25, !dbg !1197
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare !dbg !1198 i64 @ngx_stream_compile_complex_value(ptr noundef) #2

declare !dbg !1202 void @ngx_conf_log_error(i64 noundef, ptr noundef, i32 noundef, ptr noundef, ...) #2

; Function Attrs: nounwind uwtable
define internal i64 @ngx_stream_upstream_init_hash(ptr noundef %cf, ptr noundef %us) #0 !dbg !1207 {
entry:
  %retval = alloca i64, align 8
  %cf.addr = alloca ptr, align 8
  %us.addr = alloca ptr, align 8
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !711
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !1209, metadata !DIExpression()), !dbg !1211
  store ptr %us, ptr %us.addr, align 8, !tbaa !711
  tail call void @llvm.dbg.declare(metadata ptr %us.addr, metadata !1210, metadata !DIExpression()), !dbg !1212
  %0 = load ptr, ptr %cf.addr, align 8, !dbg !1213, !tbaa !711
  %1 = load ptr, ptr %us.addr, align 8, !dbg !1215, !tbaa !711
  %call = call i64 @ngx_stream_upstream_init_round_robin(ptr noundef %0, ptr noundef %1), !dbg !1216
  %cmp = icmp ne i64 %call, 0, !dbg !1217
  br i1 %cmp, label %if.then, label %if.end, !dbg !1218

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !1219
  br label %return, !dbg !1219

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %us.addr, align 8, !dbg !1221, !tbaa !711
  %peer = getelementptr inbounds %struct.ngx_stream_upstream_srv_conf_s, ptr %2, i32 0, i32 0, !dbg !1222
  %init = getelementptr inbounds %struct.ngx_stream_upstream_peer_t, ptr %peer, i32 0, i32 1, !dbg !1223
  store ptr @ngx_stream_upstream_init_hash_peer, ptr %init, align 8, !dbg !1224, !tbaa !1225
  store i64 0, ptr %retval, align 8, !dbg !1226
  br label %return, !dbg !1226

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, ptr %retval, align 8, !dbg !1227
  ret i64 %3, !dbg !1227
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1228 i32 @strcmp(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal i64 @ngx_stream_upstream_init_chash(ptr noundef %cf, ptr noundef %us) #0 !dbg !1232 {
entry:
  %retval = alloca i64, align 8
  %cf.addr = alloca ptr, align 8
  %us.addr = alloca ptr, align 8
  %host = alloca ptr, align 8
  %port = alloca ptr, align 8
  %c = alloca i8, align 1
  %host_len = alloca i64, align 8
  %port_len = alloca i64, align 8
  %size = alloca i64, align 8
  %hash = alloca i32, align 4
  %base_hash = alloca i32, align 4
  %server = alloca ptr, align 8
  %npoints = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %peer = alloca ptr, align 8
  %peers = alloca ptr, align 8
  %points = alloca ptr, align 8
  %hcf = alloca ptr, align 8
  %prev_hash = alloca %union.anon.2, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !711
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !1234, metadata !DIExpression()), !dbg !1361
  store ptr %us, ptr %us.addr, align 8, !tbaa !711
  tail call void @llvm.dbg.declare(metadata ptr %us.addr, metadata !1235, metadata !DIExpression()), !dbg !1362
  call void @llvm.lifetime.start.p0(i64 8, ptr %host) #8, !dbg !1363
  tail call void @llvm.dbg.declare(metadata ptr %host, metadata !1236, metadata !DIExpression()), !dbg !1364
  call void @llvm.lifetime.start.p0(i64 8, ptr %port) #8, !dbg !1363
  tail call void @llvm.dbg.declare(metadata ptr %port, metadata !1237, metadata !DIExpression()), !dbg !1365
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #8, !dbg !1363
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !1238, metadata !DIExpression()), !dbg !1366
  call void @llvm.lifetime.start.p0(i64 8, ptr %host_len) #8, !dbg !1367
  tail call void @llvm.dbg.declare(metadata ptr %host_len, metadata !1239, metadata !DIExpression()), !dbg !1368
  call void @llvm.lifetime.start.p0(i64 8, ptr %port_len) #8, !dbg !1367
  tail call void @llvm.dbg.declare(metadata ptr %port_len, metadata !1240, metadata !DIExpression()), !dbg !1369
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #8, !dbg !1367
  tail call void @llvm.dbg.declare(metadata ptr %size, metadata !1241, metadata !DIExpression()), !dbg !1370
  call void @llvm.lifetime.start.p0(i64 4, ptr %hash) #8, !dbg !1371
  tail call void @llvm.dbg.declare(metadata ptr %hash, metadata !1242, metadata !DIExpression()), !dbg !1372
  call void @llvm.lifetime.start.p0(i64 4, ptr %base_hash) #8, !dbg !1371
  tail call void @llvm.dbg.declare(metadata ptr %base_hash, metadata !1243, metadata !DIExpression()), !dbg !1373
  call void @llvm.lifetime.start.p0(i64 8, ptr %server) #8, !dbg !1374
  tail call void @llvm.dbg.declare(metadata ptr %server, metadata !1244, metadata !DIExpression()), !dbg !1375
  call void @llvm.lifetime.start.p0(i64 8, ptr %npoints) #8, !dbg !1376
  tail call void @llvm.dbg.declare(metadata ptr %npoints, metadata !1245, metadata !DIExpression()), !dbg !1377
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #8, !dbg !1376
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1246, metadata !DIExpression()), !dbg !1378
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #8, !dbg !1376
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !1247, metadata !DIExpression()), !dbg !1379
  call void @llvm.lifetime.start.p0(i64 8, ptr %peer) #8, !dbg !1380
  tail call void @llvm.dbg.declare(metadata ptr %peer, metadata !1248, metadata !DIExpression()), !dbg !1381
  call void @llvm.lifetime.start.p0(i64 8, ptr %peers) #8, !dbg !1382
  tail call void @llvm.dbg.declare(metadata ptr %peers, metadata !1277, metadata !DIExpression()), !dbg !1383
  call void @llvm.lifetime.start.p0(i64 8, ptr %points) #8, !dbg !1384
  tail call void @llvm.dbg.declare(metadata ptr %points, metadata !1349, metadata !DIExpression()), !dbg !1385
  call void @llvm.lifetime.start.p0(i64 8, ptr %hcf) #8, !dbg !1386
  tail call void @llvm.dbg.declare(metadata ptr %hcf, metadata !1350, metadata !DIExpression()), !dbg !1387
  call void @llvm.lifetime.start.p0(i64 4, ptr %prev_hash) #8, !dbg !1388
  tail call void @llvm.dbg.declare(metadata ptr %prev_hash, metadata !1351, metadata !DIExpression()), !dbg !1389
  %0 = load ptr, ptr %cf.addr, align 8, !dbg !1390, !tbaa !711
  %1 = load ptr, ptr %us.addr, align 8, !dbg !1392, !tbaa !711
  %call = call i64 @ngx_stream_upstream_init_round_robin(ptr noundef %0, ptr noundef %1), !dbg !1393
  %cmp = icmp ne i64 %call, 0, !dbg !1394
  br i1 %cmp, label %if.then, label %if.end, !dbg !1395

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !1396
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1396

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %us.addr, align 8, !dbg !1398, !tbaa !711
  %peer1 = getelementptr inbounds %struct.ngx_stream_upstream_srv_conf_s, ptr %2, i32 0, i32 0, !dbg !1399
  %init = getelementptr inbounds %struct.ngx_stream_upstream_peer_t, ptr %peer1, i32 0, i32 1, !dbg !1400
  store ptr @ngx_stream_upstream_init_chash_peer, ptr %init, align 8, !dbg !1401, !tbaa !1225
  %3 = load ptr, ptr %us.addr, align 8, !dbg !1402, !tbaa !711
  %peer2 = getelementptr inbounds %struct.ngx_stream_upstream_srv_conf_s, ptr %3, i32 0, i32 0, !dbg !1403
  %data = getelementptr inbounds %struct.ngx_stream_upstream_peer_t, ptr %peer2, i32 0, i32 2, !dbg !1404
  %4 = load ptr, ptr %data, align 8, !dbg !1404, !tbaa !1405
  store ptr %4, ptr %peers, align 8, !dbg !1406, !tbaa !711
  %5 = load ptr, ptr %peers, align 8, !dbg !1407, !tbaa !711
  %total_weight = getelementptr inbounds %struct.ngx_stream_upstream_rr_peers_s, ptr %5, i32 0, i32 4, !dbg !1408
  %6 = load i64, ptr %total_weight, align 8, !dbg !1408, !tbaa !1409
  %mul = mul i64 %6, 160, !dbg !1411
  store i64 %mul, ptr %npoints, align 8, !dbg !1412, !tbaa !1413
  %7 = load i64, ptr %npoints, align 8, !dbg !1414, !tbaa !1413
  %sub = sub i64 %7, 1, !dbg !1415
  %mul3 = mul i64 16, %sub, !dbg !1416
  %add = add i64 24, %mul3, !dbg !1417
  store i64 %add, ptr %size, align 8, !dbg !1418, !tbaa !1413
  %8 = load ptr, ptr %cf.addr, align 8, !dbg !1419, !tbaa !711
  %pool = getelementptr inbounds %struct.ngx_conf_s, ptr %8, i32 0, i32 3, !dbg !1420
  %9 = load ptr, ptr %pool, align 8, !dbg !1420, !tbaa !720
  %10 = load i64, ptr %size, align 8, !dbg !1421, !tbaa !1413
  %call4 = call ptr @ngx_palloc(ptr noundef %9, i64 noundef %10), !dbg !1422
  store ptr %call4, ptr %points, align 8, !dbg !1423, !tbaa !711
  %11 = load ptr, ptr %points, align 8, !dbg !1424, !tbaa !711
  %cmp5 = icmp eq ptr %11, null, !dbg !1426
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !1427

if.then6:                                         ; preds = %if.end
  store i64 -1, ptr %retval, align 8, !dbg !1428
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1428

if.end7:                                          ; preds = %if.end
  %12 = load ptr, ptr %points, align 8, !dbg !1430, !tbaa !711
  %number = getelementptr inbounds %struct.ngx_stream_upstream_chash_points_t, ptr %12, i32 0, i32 0, !dbg !1431
  store i64 0, ptr %number, align 8, !dbg !1432, !tbaa !1433
  %13 = load ptr, ptr %peers, align 8, !dbg !1435, !tbaa !711
  %peer8 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peers_s, ptr %13, i32 0, i32 8, !dbg !1436
  %14 = load ptr, ptr %peer8, align 8, !dbg !1436, !tbaa !1437
  store ptr %14, ptr %peer, align 8, !dbg !1438, !tbaa !711
  br label %for.cond, !dbg !1439

for.cond:                                         ; preds = %for.inc66, %if.end7
  %15 = load ptr, ptr %peer, align 8, !dbg !1440, !tbaa !711
  %tobool = icmp ne ptr %15, null, !dbg !1441
  br i1 %tobool, label %for.body, label %for.end67, !dbg !1441

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %peer, align 8, !dbg !1442, !tbaa !711
  %server9 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %16, i32 0, i32 3, !dbg !1443
  store ptr %server9, ptr %server, align 8, !dbg !1444, !tbaa !711
  %17 = load ptr, ptr %server, align 8, !dbg !1445, !tbaa !711
  %len = getelementptr inbounds %struct.ngx_str_t, ptr %17, i32 0, i32 0, !dbg !1447
  %18 = load i64, ptr %len, align 8, !dbg !1447, !tbaa !1448
  %cmp10 = icmp uge i64 %18, 5, !dbg !1449
  br i1 %cmp10, label %land.lhs.true, label %if.end18, !dbg !1450

land.lhs.true:                                    ; preds = %for.body
  %19 = load ptr, ptr %server, align 8, !dbg !1451, !tbaa !711
  %data11 = getelementptr inbounds %struct.ngx_str_t, ptr %19, i32 0, i32 1, !dbg !1452
  %20 = load ptr, ptr %data11, align 8, !dbg !1452, !tbaa !1182
  %call12 = call i64 @ngx_strncasecmp(ptr noundef %20, ptr noundef @.str.6, i64 noundef 5), !dbg !1453
  %cmp13 = icmp eq i64 %call12, 0, !dbg !1454
  br i1 %cmp13, label %if.then14, label %if.end18, !dbg !1455

if.then14:                                        ; preds = %land.lhs.true
  %21 = load ptr, ptr %server, align 8, !dbg !1456, !tbaa !711
  %data15 = getelementptr inbounds %struct.ngx_str_t, ptr %21, i32 0, i32 1, !dbg !1458
  %22 = load ptr, ptr %data15, align 8, !dbg !1458, !tbaa !1182
  %add.ptr = getelementptr inbounds i8, ptr %22, i64 5, !dbg !1459
  store ptr %add.ptr, ptr %host, align 8, !dbg !1460, !tbaa !711
  %23 = load ptr, ptr %server, align 8, !dbg !1461, !tbaa !711
  %len16 = getelementptr inbounds %struct.ngx_str_t, ptr %23, i32 0, i32 0, !dbg !1462
  %24 = load i64, ptr %len16, align 8, !dbg !1462, !tbaa !1448
  %sub17 = sub i64 %24, 5, !dbg !1463
  store i64 %sub17, ptr %host_len, align 8, !dbg !1464, !tbaa !1413
  store ptr null, ptr %port, align 8, !dbg !1465, !tbaa !711
  store i64 0, ptr %port_len, align 8, !dbg !1466, !tbaa !1413
  br label %done, !dbg !1467

if.end18:                                         ; preds = %land.lhs.true, %for.body
  store i64 0, ptr %j, align 8, !dbg !1468, !tbaa !1413
  br label %for.cond19, !dbg !1470

for.cond19:                                       ; preds = %for.inc, %if.end18
  %25 = load i64, ptr %j, align 8, !dbg !1471, !tbaa !1413
  %26 = load ptr, ptr %server, align 8, !dbg !1473, !tbaa !711
  %len20 = getelementptr inbounds %struct.ngx_str_t, ptr %26, i32 0, i32 0, !dbg !1474
  %27 = load i64, ptr %len20, align 8, !dbg !1474, !tbaa !1448
  %cmp21 = icmp ult i64 %25, %27, !dbg !1475
  br i1 %cmp21, label %for.body22, label %for.end, !dbg !1476

for.body22:                                       ; preds = %for.cond19
  %28 = load ptr, ptr %server, align 8, !dbg !1477, !tbaa !711
  %data23 = getelementptr inbounds %struct.ngx_str_t, ptr %28, i32 0, i32 1, !dbg !1479
  %29 = load ptr, ptr %data23, align 8, !dbg !1479, !tbaa !1182
  %30 = load ptr, ptr %server, align 8, !dbg !1480, !tbaa !711
  %len24 = getelementptr inbounds %struct.ngx_str_t, ptr %30, i32 0, i32 0, !dbg !1481
  %31 = load i64, ptr %len24, align 8, !dbg !1481, !tbaa !1448
  %32 = load i64, ptr %j, align 8, !dbg !1482, !tbaa !1413
  %sub25 = sub i64 %31, %32, !dbg !1483
  %sub26 = sub i64 %sub25, 1, !dbg !1484
  %arrayidx = getelementptr inbounds i8, ptr %29, i64 %sub26, !dbg !1477
  %33 = load i8, ptr %arrayidx, align 1, !dbg !1477, !tbaa !1485
  store i8 %33, ptr %c, align 1, !dbg !1486, !tbaa !1485
  %34 = load i8, ptr %c, align 1, !dbg !1487, !tbaa !1485
  %conv = zext i8 %34 to i32, !dbg !1487
  %cmp27 = icmp eq i32 %conv, 58, !dbg !1489
  br i1 %cmp27, label %if.then29, label %if.end38, !dbg !1490

if.then29:                                        ; preds = %for.body22
  %35 = load ptr, ptr %server, align 8, !dbg !1491, !tbaa !711
  %data30 = getelementptr inbounds %struct.ngx_str_t, ptr %35, i32 0, i32 1, !dbg !1493
  %36 = load ptr, ptr %data30, align 8, !dbg !1493, !tbaa !1182
  store ptr %36, ptr %host, align 8, !dbg !1494, !tbaa !711
  %37 = load ptr, ptr %server, align 8, !dbg !1495, !tbaa !711
  %len31 = getelementptr inbounds %struct.ngx_str_t, ptr %37, i32 0, i32 0, !dbg !1496
  %38 = load i64, ptr %len31, align 8, !dbg !1496, !tbaa !1448
  %39 = load i64, ptr %j, align 8, !dbg !1497, !tbaa !1413
  %sub32 = sub i64 %38, %39, !dbg !1498
  %sub33 = sub i64 %sub32, 1, !dbg !1499
  store i64 %sub33, ptr %host_len, align 8, !dbg !1500, !tbaa !1413
  %40 = load ptr, ptr %server, align 8, !dbg !1501, !tbaa !711
  %data34 = getelementptr inbounds %struct.ngx_str_t, ptr %40, i32 0, i32 1, !dbg !1502
  %41 = load ptr, ptr %data34, align 8, !dbg !1502, !tbaa !1182
  %42 = load ptr, ptr %server, align 8, !dbg !1503, !tbaa !711
  %len35 = getelementptr inbounds %struct.ngx_str_t, ptr %42, i32 0, i32 0, !dbg !1504
  %43 = load i64, ptr %len35, align 8, !dbg !1504, !tbaa !1448
  %add.ptr36 = getelementptr inbounds i8, ptr %41, i64 %43, !dbg !1505
  %44 = load i64, ptr %j, align 8, !dbg !1506, !tbaa !1413
  %idx.neg = sub i64 0, %44, !dbg !1507
  %add.ptr37 = getelementptr inbounds i8, ptr %add.ptr36, i64 %idx.neg, !dbg !1507
  store ptr %add.ptr37, ptr %port, align 8, !dbg !1508, !tbaa !711
  %45 = load i64, ptr %j, align 8, !dbg !1509, !tbaa !1413
  store i64 %45, ptr %port_len, align 8, !dbg !1510, !tbaa !1413
  br label %done, !dbg !1511

if.end38:                                         ; preds = %for.body22
  %46 = load i8, ptr %c, align 1, !dbg !1512, !tbaa !1485
  %conv39 = zext i8 %46 to i32, !dbg !1512
  %cmp40 = icmp slt i32 %conv39, 48, !dbg !1514
  br i1 %cmp40, label %if.then45, label %lor.lhs.false, !dbg !1515

lor.lhs.false:                                    ; preds = %if.end38
  %47 = load i8, ptr %c, align 1, !dbg !1516, !tbaa !1485
  %conv42 = zext i8 %47 to i32, !dbg !1516
  %cmp43 = icmp sgt i32 %conv42, 57, !dbg !1517
  br i1 %cmp43, label %if.then45, label %if.end46, !dbg !1518

if.then45:                                        ; preds = %lor.lhs.false, %if.end38
  br label %for.end, !dbg !1519

if.end46:                                         ; preds = %lor.lhs.false
  br label %for.inc, !dbg !1521

for.inc:                                          ; preds = %if.end46
  %48 = load i64, ptr %j, align 8, !dbg !1522, !tbaa !1413
  %inc = add i64 %48, 1, !dbg !1522
  store i64 %inc, ptr %j, align 8, !dbg !1522, !tbaa !1413
  br label %for.cond19, !dbg !1523, !llvm.loop !1524

for.end:                                          ; preds = %if.then45, %for.cond19
  %49 = load ptr, ptr %server, align 8, !dbg !1527, !tbaa !711
  %data47 = getelementptr inbounds %struct.ngx_str_t, ptr %49, i32 0, i32 1, !dbg !1528
  %50 = load ptr, ptr %data47, align 8, !dbg !1528, !tbaa !1182
  store ptr %50, ptr %host, align 8, !dbg !1529, !tbaa !711
  %51 = load ptr, ptr %server, align 8, !dbg !1530, !tbaa !711
  %len48 = getelementptr inbounds %struct.ngx_str_t, ptr %51, i32 0, i32 0, !dbg !1531
  %52 = load i64, ptr %len48, align 8, !dbg !1531, !tbaa !1448
  store i64 %52, ptr %host_len, align 8, !dbg !1532, !tbaa !1413
  store ptr null, ptr %port, align 8, !dbg !1533, !tbaa !711
  store i64 0, ptr %port_len, align 8, !dbg !1534, !tbaa !1413
  br label %done, !dbg !1535

done:                                             ; preds = %for.end, %if.then29, %if.then14
  tail call void @llvm.dbg.label(metadata !1357), !dbg !1536
  store i32 -1, ptr %base_hash, align 4, !dbg !1537, !tbaa !1538
  %53 = load ptr, ptr %host, align 8, !dbg !1539, !tbaa !711
  %54 = load i64, ptr %host_len, align 8, !dbg !1540, !tbaa !1413
  call void @ngx_crc32_update(ptr noundef %base_hash, ptr noundef %53, i64 noundef %54), !dbg !1541
  call void @ngx_crc32_update(ptr noundef %base_hash, ptr noundef @.str.7, i64 noundef 1), !dbg !1542
  %55 = load ptr, ptr %port, align 8, !dbg !1543, !tbaa !711
  %56 = load i64, ptr %port_len, align 8, !dbg !1544, !tbaa !1413
  call void @ngx_crc32_update(ptr noundef %base_hash, ptr noundef %55, i64 noundef %56), !dbg !1545
  store i32 0, ptr %prev_hash, align 4, !dbg !1546, !tbaa !1485
  %57 = load ptr, ptr %peer, align 8, !dbg !1547, !tbaa !711
  %weight = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %57, i32 0, i32 6, !dbg !1548
  %58 = load i64, ptr %weight, align 8, !dbg !1548, !tbaa !1549
  %mul49 = mul nsw i64 %58, 160, !dbg !1551
  store i64 %mul49, ptr %npoints, align 8, !dbg !1552, !tbaa !1413
  store i64 0, ptr %j, align 8, !dbg !1553, !tbaa !1413
  br label %for.cond50, !dbg !1555

for.cond50:                                       ; preds = %for.inc63, %done
  %59 = load i64, ptr %j, align 8, !dbg !1556, !tbaa !1413
  %60 = load i64, ptr %npoints, align 8, !dbg !1558, !tbaa !1413
  %cmp51 = icmp ult i64 %59, %60, !dbg !1559
  br i1 %cmp51, label %for.body53, label %for.end65, !dbg !1560

for.body53:                                       ; preds = %for.cond50
  %61 = load i32, ptr %base_hash, align 4, !dbg !1561, !tbaa !1538
  store i32 %61, ptr %hash, align 4, !dbg !1563, !tbaa !1538
  %arraydecay = getelementptr inbounds [4 x i8], ptr %prev_hash, i64 0, i64 0, !dbg !1564
  call void @ngx_crc32_update(ptr noundef %hash, ptr noundef %arraydecay, i64 noundef 4), !dbg !1565
  %62 = load i32, ptr %hash, align 4, !dbg !1566, !tbaa !1538
  %xor = xor i32 %62, -1, !dbg !1566
  store i32 %xor, ptr %hash, align 4, !dbg !1566, !tbaa !1538
  %63 = load i32, ptr %hash, align 4, !dbg !1567, !tbaa !1538
  %64 = load ptr, ptr %points, align 8, !dbg !1568, !tbaa !711
  %point = getelementptr inbounds %struct.ngx_stream_upstream_chash_points_t, ptr %64, i32 0, i32 1, !dbg !1569
  %65 = load ptr, ptr %points, align 8, !dbg !1570, !tbaa !711
  %number54 = getelementptr inbounds %struct.ngx_stream_upstream_chash_points_t, ptr %65, i32 0, i32 0, !dbg !1571
  %66 = load i64, ptr %number54, align 8, !dbg !1571, !tbaa !1433
  %arrayidx55 = getelementptr inbounds [1 x %struct.ngx_stream_upstream_chash_point_t], ptr %point, i64 0, i64 %66, !dbg !1568
  %hash56 = getelementptr inbounds %struct.ngx_stream_upstream_chash_point_t, ptr %arrayidx55, i32 0, i32 0, !dbg !1572
  store i32 %63, ptr %hash56, align 8, !dbg !1573, !tbaa !1574
  %67 = load ptr, ptr %server, align 8, !dbg !1576, !tbaa !711
  %68 = load ptr, ptr %points, align 8, !dbg !1577, !tbaa !711
  %point57 = getelementptr inbounds %struct.ngx_stream_upstream_chash_points_t, ptr %68, i32 0, i32 1, !dbg !1578
  %69 = load ptr, ptr %points, align 8, !dbg !1579, !tbaa !711
  %number58 = getelementptr inbounds %struct.ngx_stream_upstream_chash_points_t, ptr %69, i32 0, i32 0, !dbg !1580
  %70 = load i64, ptr %number58, align 8, !dbg !1580, !tbaa !1433
  %arrayidx59 = getelementptr inbounds [1 x %struct.ngx_stream_upstream_chash_point_t], ptr %point57, i64 0, i64 %70, !dbg !1577
  %server60 = getelementptr inbounds %struct.ngx_stream_upstream_chash_point_t, ptr %arrayidx59, i32 0, i32 1, !dbg !1581
  store ptr %67, ptr %server60, align 8, !dbg !1582, !tbaa !1583
  %71 = load ptr, ptr %points, align 8, !dbg !1584, !tbaa !711
  %number61 = getelementptr inbounds %struct.ngx_stream_upstream_chash_points_t, ptr %71, i32 0, i32 0, !dbg !1585
  %72 = load i64, ptr %number61, align 8, !dbg !1586, !tbaa !1433
  %inc62 = add i64 %72, 1, !dbg !1586
  store i64 %inc62, ptr %number61, align 8, !dbg !1586, !tbaa !1433
  %73 = load i32, ptr %hash, align 4, !dbg !1587, !tbaa !1538
  store i32 %73, ptr %prev_hash, align 4, !dbg !1588, !tbaa !1485
  br label %for.inc63, !dbg !1589

for.inc63:                                        ; preds = %for.body53
  %74 = load i64, ptr %j, align 8, !dbg !1590, !tbaa !1413
  %inc64 = add i64 %74, 1, !dbg !1590
  store i64 %inc64, ptr %j, align 8, !dbg !1590, !tbaa !1413
  br label %for.cond50, !dbg !1591, !llvm.loop !1592

for.end65:                                        ; preds = %for.cond50
  br label %for.inc66, !dbg !1594

for.inc66:                                        ; preds = %for.end65
  %75 = load ptr, ptr %peer, align 8, !dbg !1595, !tbaa !711
  %next = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %75, i32 0, i32 20, !dbg !1596
  %76 = load ptr, ptr %next, align 8, !dbg !1596, !tbaa !1597
  store ptr %76, ptr %peer, align 8, !dbg !1598, !tbaa !711
  br label %for.cond, !dbg !1599, !llvm.loop !1600

for.end67:                                        ; preds = %for.cond
  %77 = load ptr, ptr %points, align 8, !dbg !1602, !tbaa !711
  %point68 = getelementptr inbounds %struct.ngx_stream_upstream_chash_points_t, ptr %77, i32 0, i32 1, !dbg !1603
  %arraydecay69 = getelementptr inbounds [1 x %struct.ngx_stream_upstream_chash_point_t], ptr %point68, i64 0, i64 0, !dbg !1602
  %78 = load ptr, ptr %points, align 8, !dbg !1604, !tbaa !711
  %number70 = getelementptr inbounds %struct.ngx_stream_upstream_chash_points_t, ptr %78, i32 0, i32 0, !dbg !1605
  %79 = load i64, ptr %number70, align 8, !dbg !1605, !tbaa !1433
  call void @qsort(ptr noundef %arraydecay69, i64 noundef %79, i64 noundef 16, ptr noundef @ngx_stream_upstream_chash_cmp_points), !dbg !1606
  store i64 0, ptr %i, align 8, !dbg !1607, !tbaa !1413
  store i64 1, ptr %j, align 8, !dbg !1609, !tbaa !1413
  br label %for.cond71, !dbg !1610

for.cond71:                                       ; preds = %for.inc91, %for.end67
  %80 = load i64, ptr %j, align 8, !dbg !1611, !tbaa !1413
  %81 = load ptr, ptr %points, align 8, !dbg !1613, !tbaa !711
  %number72 = getelementptr inbounds %struct.ngx_stream_upstream_chash_points_t, ptr %81, i32 0, i32 0, !dbg !1614
  %82 = load i64, ptr %number72, align 8, !dbg !1614, !tbaa !1433
  %cmp73 = icmp ult i64 %80, %82, !dbg !1615
  br i1 %cmp73, label %for.body75, label %for.end93, !dbg !1616

for.body75:                                       ; preds = %for.cond71
  %83 = load ptr, ptr %points, align 8, !dbg !1617, !tbaa !711
  %point76 = getelementptr inbounds %struct.ngx_stream_upstream_chash_points_t, ptr %83, i32 0, i32 1, !dbg !1620
  %84 = load i64, ptr %i, align 8, !dbg !1621, !tbaa !1413
  %arrayidx77 = getelementptr inbounds [1 x %struct.ngx_stream_upstream_chash_point_t], ptr %point76, i64 0, i64 %84, !dbg !1617
  %hash78 = getelementptr inbounds %struct.ngx_stream_upstream_chash_point_t, ptr %arrayidx77, i32 0, i32 0, !dbg !1622
  %85 = load i32, ptr %hash78, align 8, !dbg !1622, !tbaa !1574
  %86 = load ptr, ptr %points, align 8, !dbg !1623, !tbaa !711
  %point79 = getelementptr inbounds %struct.ngx_stream_upstream_chash_points_t, ptr %86, i32 0, i32 1, !dbg !1624
  %87 = load i64, ptr %j, align 8, !dbg !1625, !tbaa !1413
  %arrayidx80 = getelementptr inbounds [1 x %struct.ngx_stream_upstream_chash_point_t], ptr %point79, i64 0, i64 %87, !dbg !1623
  %hash81 = getelementptr inbounds %struct.ngx_stream_upstream_chash_point_t, ptr %arrayidx80, i32 0, i32 0, !dbg !1626
  %88 = load i32, ptr %hash81, align 8, !dbg !1626, !tbaa !1574
  %cmp82 = icmp ne i32 %85, %88, !dbg !1627
  br i1 %cmp82, label %if.then84, label %if.end90, !dbg !1628

if.then84:                                        ; preds = %for.body75
  %89 = load ptr, ptr %points, align 8, !dbg !1629, !tbaa !711
  %point85 = getelementptr inbounds %struct.ngx_stream_upstream_chash_points_t, ptr %89, i32 0, i32 1, !dbg !1631
  %90 = load i64, ptr %i, align 8, !dbg !1632, !tbaa !1413
  %inc86 = add i64 %90, 1, !dbg !1632
  store i64 %inc86, ptr %i, align 8, !dbg !1632, !tbaa !1413
  %arrayidx87 = getelementptr inbounds [1 x %struct.ngx_stream_upstream_chash_point_t], ptr %point85, i64 0, i64 %inc86, !dbg !1629
  %91 = load ptr, ptr %points, align 8, !dbg !1633, !tbaa !711
  %point88 = getelementptr inbounds %struct.ngx_stream_upstream_chash_points_t, ptr %91, i32 0, i32 1, !dbg !1634
  %92 = load i64, ptr %j, align 8, !dbg !1635, !tbaa !1413
  %arrayidx89 = getelementptr inbounds [1 x %struct.ngx_stream_upstream_chash_point_t], ptr %point88, i64 0, i64 %92, !dbg !1633
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx87, ptr align 8 %arrayidx89, i64 16, i1 false), !dbg !1633, !tbaa.struct !1636
  br label %if.end90, !dbg !1637

if.end90:                                         ; preds = %if.then84, %for.body75
  br label %for.inc91, !dbg !1638

for.inc91:                                        ; preds = %if.end90
  %93 = load i64, ptr %j, align 8, !dbg !1639, !tbaa !1413
  %inc92 = add i64 %93, 1, !dbg !1639
  store i64 %inc92, ptr %j, align 8, !dbg !1639, !tbaa !1413
  br label %for.cond71, !dbg !1640, !llvm.loop !1641

for.end93:                                        ; preds = %for.cond71
  %94 = load i64, ptr %i, align 8, !dbg !1643, !tbaa !1413
  %add94 = add i64 %94, 1, !dbg !1644
  %95 = load ptr, ptr %points, align 8, !dbg !1645, !tbaa !711
  %number95 = getelementptr inbounds %struct.ngx_stream_upstream_chash_points_t, ptr %95, i32 0, i32 0, !dbg !1646
  store i64 %add94, ptr %number95, align 8, !dbg !1647, !tbaa !1433
  %96 = load ptr, ptr %us.addr, align 8, !dbg !1648, !tbaa !711
  %srv_conf = getelementptr inbounds %struct.ngx_stream_upstream_srv_conf_s, ptr %96, i32 0, i32 1, !dbg !1648
  %97 = load ptr, ptr %srv_conf, align 8, !dbg !1648, !tbaa !1649
  %98 = load i64, ptr @ngx_stream_upstream_hash_module, align 8, !dbg !1648, !tbaa !1147
  %arrayidx96 = getelementptr inbounds ptr, ptr %97, i64 %98, !dbg !1648
  %99 = load ptr, ptr %arrayidx96, align 8, !dbg !1648, !tbaa !711
  store ptr %99, ptr %hcf, align 8, !dbg !1650, !tbaa !711
  %100 = load ptr, ptr %points, align 8, !dbg !1651, !tbaa !711
  %101 = load ptr, ptr %hcf, align 8, !dbg !1652, !tbaa !711
  %points97 = getelementptr inbounds %struct.ngx_stream_upstream_hash_srv_conf_t, ptr %101, i32 0, i32 1, !dbg !1653
  store ptr %100, ptr %points97, align 8, !dbg !1654, !tbaa !734
  store i64 0, ptr %retval, align 8, !dbg !1655
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1655

cleanup:                                          ; preds = %for.end93, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %prev_hash) #8, !dbg !1656
  call void @llvm.lifetime.end.p0(i64 8, ptr %hcf) #8, !dbg !1656
  call void @llvm.lifetime.end.p0(i64 8, ptr %points) #8, !dbg !1656
  call void @llvm.lifetime.end.p0(i64 8, ptr %peers) #8, !dbg !1656
  call void @llvm.lifetime.end.p0(i64 8, ptr %peer) #8, !dbg !1656
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #8, !dbg !1656
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #8, !dbg !1656
  call void @llvm.lifetime.end.p0(i64 8, ptr %npoints) #8, !dbg !1656
  call void @llvm.lifetime.end.p0(i64 8, ptr %server) #8, !dbg !1656
  call void @llvm.lifetime.end.p0(i64 4, ptr %base_hash) #8, !dbg !1656
  call void @llvm.lifetime.end.p0(i64 4, ptr %hash) #8, !dbg !1656
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #8, !dbg !1656
  call void @llvm.lifetime.end.p0(i64 8, ptr %port_len) #8, !dbg !1656
  call void @llvm.lifetime.end.p0(i64 8, ptr %host_len) #8, !dbg !1656
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #8, !dbg !1656
  call void @llvm.lifetime.end.p0(i64 8, ptr %port) #8, !dbg !1656
  call void @llvm.lifetime.end.p0(i64 8, ptr %host) #8, !dbg !1656
  %102 = load i64, ptr %retval, align 8, !dbg !1656
  ret i64 %102, !dbg !1656
}

declare !dbg !1657 i64 @ngx_stream_upstream_init_round_robin(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i64 @ngx_stream_upstream_init_hash_peer(ptr noundef %s, ptr noundef %us) #0 !dbg !1658 {
entry:
  %retval = alloca i64, align 8
  %s.addr = alloca ptr, align 8
  %us.addr = alloca ptr, align 8
  %hcf = alloca ptr, align 8
  %hp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8, !tbaa !711
  tail call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1660, metadata !DIExpression()), !dbg !1684
  store ptr %us, ptr %us.addr, align 8, !tbaa !711
  tail call void @llvm.dbg.declare(metadata ptr %us.addr, metadata !1661, metadata !DIExpression()), !dbg !1685
  call void @llvm.lifetime.start.p0(i64 8, ptr %hcf) #8, !dbg !1686
  tail call void @llvm.dbg.declare(metadata ptr %hcf, metadata !1662, metadata !DIExpression()), !dbg !1687
  call void @llvm.lifetime.start.p0(i64 8, ptr %hp) #8, !dbg !1688
  tail call void @llvm.dbg.declare(metadata ptr %hp, metadata !1663, metadata !DIExpression()), !dbg !1689
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1690, !tbaa !711
  %connection = getelementptr inbounds %struct.ngx_stream_session_s, ptr %0, i32 0, i32 1, !dbg !1691
  %1 = load ptr, ptr %connection, align 8, !dbg !1691, !tbaa !1692
  %pool = getelementptr inbounds %struct.ngx_connection_s, ptr %1, i32 0, i32 11, !dbg !1694
  %2 = load ptr, ptr %pool, align 8, !dbg !1694, !tbaa !1695
  %call = call ptr @ngx_palloc(ptr noundef %2, i64 noundef 96), !dbg !1698
  store ptr %call, ptr %hp, align 8, !dbg !1699, !tbaa !711
  %3 = load ptr, ptr %hp, align 8, !dbg !1700, !tbaa !711
  %cmp = icmp eq ptr %3, null, !dbg !1702
  br i1 %cmp, label %if.then, label %if.end, !dbg !1703

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !1704
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1704

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %hp, align 8, !dbg !1706, !tbaa !711
  %rrp = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %4, i32 0, i32 0, !dbg !1707
  %5 = load ptr, ptr %s.addr, align 8, !dbg !1708, !tbaa !711
  %upstream = getelementptr inbounds %struct.ngx_stream_session_s, ptr %5, i32 0, i32 9, !dbg !1709
  %6 = load ptr, ptr %upstream, align 8, !dbg !1709, !tbaa !1710
  %peer = getelementptr inbounds %struct.ngx_stream_upstream_t, ptr %6, i32 0, i32 0, !dbg !1711
  %data = getelementptr inbounds %struct.ngx_peer_connection_s, ptr %peer, i32 0, i32 9, !dbg !1712
  store ptr %rrp, ptr %data, align 8, !dbg !1713, !tbaa !1714
  %7 = load ptr, ptr %s.addr, align 8, !dbg !1718, !tbaa !711
  %8 = load ptr, ptr %us.addr, align 8, !dbg !1720, !tbaa !711
  %call1 = call i64 @ngx_stream_upstream_init_round_robin_peer(ptr noundef %7, ptr noundef %8), !dbg !1721
  %cmp2 = icmp ne i64 %call1, 0, !dbg !1722
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !1723

if.then3:                                         ; preds = %if.end
  store i64 -1, ptr %retval, align 8, !dbg !1724
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1724

if.end4:                                          ; preds = %if.end
  %9 = load ptr, ptr %s.addr, align 8, !dbg !1726, !tbaa !711
  %upstream5 = getelementptr inbounds %struct.ngx_stream_session_s, ptr %9, i32 0, i32 9, !dbg !1727
  %10 = load ptr, ptr %upstream5, align 8, !dbg !1727, !tbaa !1710
  %peer6 = getelementptr inbounds %struct.ngx_stream_upstream_t, ptr %10, i32 0, i32 0, !dbg !1728
  %get = getelementptr inbounds %struct.ngx_peer_connection_s, ptr %peer6, i32 0, i32 6, !dbg !1729
  store ptr @ngx_stream_upstream_get_hash_peer, ptr %get, align 8, !dbg !1730, !tbaa !1731
  %11 = load ptr, ptr %us.addr, align 8, !dbg !1732, !tbaa !711
  %srv_conf = getelementptr inbounds %struct.ngx_stream_upstream_srv_conf_s, ptr %11, i32 0, i32 1, !dbg !1732
  %12 = load ptr, ptr %srv_conf, align 8, !dbg !1732, !tbaa !1649
  %13 = load i64, ptr @ngx_stream_upstream_hash_module, align 8, !dbg !1732, !tbaa !1147
  %arrayidx = getelementptr inbounds ptr, ptr %12, i64 %13, !dbg !1732
  %14 = load ptr, ptr %arrayidx, align 8, !dbg !1732, !tbaa !711
  store ptr %14, ptr %hcf, align 8, !dbg !1733, !tbaa !711
  %15 = load ptr, ptr %s.addr, align 8, !dbg !1734, !tbaa !711
  %16 = load ptr, ptr %hcf, align 8, !dbg !1736, !tbaa !711
  %key = getelementptr inbounds %struct.ngx_stream_upstream_hash_srv_conf_t, ptr %16, i32 0, i32 0, !dbg !1737
  %17 = load ptr, ptr %hp, align 8, !dbg !1738, !tbaa !711
  %key7 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %17, i32 0, i32 2, !dbg !1739
  %call8 = call i64 @ngx_stream_complex_value(ptr noundef %15, ptr noundef %key, ptr noundef %key7), !dbg !1740
  %cmp9 = icmp ne i64 %call8, 0, !dbg !1741
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1742

if.then10:                                        ; preds = %if.end4
  store i64 -1, ptr %retval, align 8, !dbg !1743
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1743

if.end11:                                         ; preds = %if.end4
  %18 = load ptr, ptr %hcf, align 8, !dbg !1745, !tbaa !711
  %19 = load ptr, ptr %hp, align 8, !dbg !1746, !tbaa !711
  %conf = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %19, i32 0, i32 1, !dbg !1747
  store ptr %18, ptr %conf, align 8, !dbg !1748, !tbaa !1749
  %20 = load ptr, ptr %hp, align 8, !dbg !1752, !tbaa !711
  %tries = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %20, i32 0, i32 3, !dbg !1753
  store i64 0, ptr %tries, align 8, !dbg !1754, !tbaa !1755
  %21 = load ptr, ptr %hp, align 8, !dbg !1756, !tbaa !711
  %rehash = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %21, i32 0, i32 4, !dbg !1757
  store i64 0, ptr %rehash, align 8, !dbg !1758, !tbaa !1759
  %22 = load ptr, ptr %hp, align 8, !dbg !1760, !tbaa !711
  %hash = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %22, i32 0, i32 5, !dbg !1761
  store i32 0, ptr %hash, align 8, !dbg !1762, !tbaa !1763
  %23 = load ptr, ptr %hp, align 8, !dbg !1764, !tbaa !711
  %get_rr_peer = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %23, i32 0, i32 6, !dbg !1765
  store ptr @ngx_stream_upstream_get_round_robin_peer, ptr %get_rr_peer, align 8, !dbg !1766, !tbaa !1767
  store i64 0, ptr %retval, align 8, !dbg !1768
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1768

cleanup:                                          ; preds = %if.end11, %if.then10, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %hp) #8, !dbg !1769
  call void @llvm.lifetime.end.p0(i64 8, ptr %hcf) #8, !dbg !1769
  %24 = load i64, ptr %retval, align 8, !dbg !1769
  ret i64 %24, !dbg !1769
}

declare !dbg !1770 i64 @ngx_stream_upstream_init_round_robin_peer(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i64 @ngx_stream_upstream_get_hash_peer(ptr noundef %pc, ptr noundef %data) #0 !dbg !1771 {
entry:
  %retval = alloca i64, align 8
  %pc.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %hp = alloca ptr, align 8
  %now = alloca i64, align 8
  %buf = alloca [20 x i8], align 16
  %size = alloca i64, align 8
  %hash = alloca i32, align 4
  %w = alloca i64, align 8
  %m = alloca i64, align 8
  %n = alloca i64, align 8
  %p = alloca i64, align 8
  %peer = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pc, ptr %pc.addr, align 8, !tbaa !711
  tail call void @llvm.dbg.declare(metadata ptr %pc.addr, metadata !1773, metadata !DIExpression()), !dbg !1792
  store ptr %data, ptr %data.addr, align 8, !tbaa !711
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1774, metadata !DIExpression()), !dbg !1793
  call void @llvm.lifetime.start.p0(i64 8, ptr %hp) #8, !dbg !1794
  tail call void @llvm.dbg.declare(metadata ptr %hp, metadata !1775, metadata !DIExpression()), !dbg !1795
  %0 = load ptr, ptr %data.addr, align 8, !dbg !1796, !tbaa !711
  store ptr %0, ptr %hp, align 8, !dbg !1795, !tbaa !711
  call void @llvm.lifetime.start.p0(i64 8, ptr %now) #8, !dbg !1797
  tail call void @llvm.dbg.declare(metadata ptr %now, metadata !1776, metadata !DIExpression()), !dbg !1798
  call void @llvm.lifetime.start.p0(i64 20, ptr %buf) #8, !dbg !1799
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !1777, metadata !DIExpression()), !dbg !1800
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #8, !dbg !1801
  tail call void @llvm.dbg.declare(metadata ptr %size, metadata !1781, metadata !DIExpression()), !dbg !1802
  call void @llvm.lifetime.start.p0(i64 4, ptr %hash) #8, !dbg !1803
  tail call void @llvm.dbg.declare(metadata ptr %hash, metadata !1782, metadata !DIExpression()), !dbg !1804
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #8, !dbg !1805
  tail call void @llvm.dbg.declare(metadata ptr %w, metadata !1783, metadata !DIExpression()), !dbg !1806
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #8, !dbg !1807
  tail call void @llvm.dbg.declare(metadata ptr %m, metadata !1784, metadata !DIExpression()), !dbg !1808
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #8, !dbg !1809
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !1785, metadata !DIExpression()), !dbg !1810
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #8, !dbg !1809
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !1786, metadata !DIExpression()), !dbg !1811
  call void @llvm.lifetime.start.p0(i64 8, ptr %peer) #8, !dbg !1812
  tail call void @llvm.dbg.declare(metadata ptr %peer, metadata !1787, metadata !DIExpression()), !dbg !1813
  %1 = load ptr, ptr %hp, align 8, !dbg !1814, !tbaa !711
  %rrp = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %1, i32 0, i32 0, !dbg !1814
  %peers = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_data_t, ptr %rrp, i32 0, i32 1, !dbg !1814
  %2 = load ptr, ptr %peers, align 8, !dbg !1814, !tbaa !1816
  %shpool = getelementptr inbounds %struct.ngx_stream_upstream_rr_peers_s, ptr %2, i32 0, i32 1, !dbg !1814
  %3 = load ptr, ptr %shpool, align 8, !dbg !1814, !tbaa !1817
  %tobool = icmp ne ptr %3, null, !dbg !1814
  br i1 %tobool, label %if.then, label %if.end, !dbg !1818

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %hp, align 8, !dbg !1819, !tbaa !711
  %rrp1 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %4, i32 0, i32 0, !dbg !1819
  %peers2 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_data_t, ptr %rrp1, i32 0, i32 1, !dbg !1819
  %5 = load ptr, ptr %peers2, align 8, !dbg !1819, !tbaa !1816
  %rwlock = getelementptr inbounds %struct.ngx_stream_upstream_rr_peers_s, ptr %5, i32 0, i32 2, !dbg !1819
  call void @ngx_rwlock_rlock(ptr noundef %rwlock), !dbg !1819
  br label %if.end, !dbg !1819

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %hp, align 8, !dbg !1821, !tbaa !711
  %tries = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %6, i32 0, i32 3, !dbg !1823
  %7 = load i64, ptr %tries, align 8, !dbg !1823, !tbaa !1755
  %cmp = icmp ugt i64 %7, 20, !dbg !1824
  br i1 %cmp, label %if.then6, label %lor.lhs.false, !dbg !1825

lor.lhs.false:                                    ; preds = %if.end
  %8 = load ptr, ptr %hp, align 8, !dbg !1826, !tbaa !711
  %rrp3 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %8, i32 0, i32 0, !dbg !1827
  %peers4 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_data_t, ptr %rrp3, i32 0, i32 1, !dbg !1828
  %9 = load ptr, ptr %peers4, align 8, !dbg !1828, !tbaa !1816
  %single = getelementptr inbounds %struct.ngx_stream_upstream_rr_peers_s, ptr %9, i32 0, i32 5, !dbg !1829
  %bf.load = load i8, ptr %single, align 8, !dbg !1829
  %bf.clear = and i8 %bf.load, 1, !dbg !1829
  %bf.cast = zext i8 %bf.clear to i32, !dbg !1829
  %tobool5 = icmp ne i32 %bf.cast, 0, !dbg !1826
  br i1 %tobool5, label %if.then6, label %if.end17, !dbg !1830

if.then6:                                         ; preds = %lor.lhs.false, %if.end
  %10 = load ptr, ptr %hp, align 8, !dbg !1831, !tbaa !711
  %rrp7 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %10, i32 0, i32 0, !dbg !1831
  %peers8 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_data_t, ptr %rrp7, i32 0, i32 1, !dbg !1831
  %11 = load ptr, ptr %peers8, align 8, !dbg !1831, !tbaa !1816
  %shpool9 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peers_s, ptr %11, i32 0, i32 1, !dbg !1831
  %12 = load ptr, ptr %shpool9, align 8, !dbg !1831, !tbaa !1817
  %tobool10 = icmp ne ptr %12, null, !dbg !1831
  br i1 %tobool10, label %if.then11, label %if.end15, !dbg !1834

if.then11:                                        ; preds = %if.then6
  %13 = load ptr, ptr %hp, align 8, !dbg !1835, !tbaa !711
  %rrp12 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %13, i32 0, i32 0, !dbg !1835
  %peers13 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_data_t, ptr %rrp12, i32 0, i32 1, !dbg !1835
  %14 = load ptr, ptr %peers13, align 8, !dbg !1835, !tbaa !1816
  %rwlock14 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peers_s, ptr %14, i32 0, i32 2, !dbg !1835
  call void @ngx_rwlock_unlock(ptr noundef %rwlock14), !dbg !1835
  br label %if.end15, !dbg !1835

if.end15:                                         ; preds = %if.then11, %if.then6
  %15 = load ptr, ptr %hp, align 8, !dbg !1837, !tbaa !711
  %get_rr_peer = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %15, i32 0, i32 6, !dbg !1838
  %16 = load ptr, ptr %get_rr_peer, align 8, !dbg !1838, !tbaa !1767
  %17 = load ptr, ptr %pc.addr, align 8, !dbg !1839, !tbaa !711
  %18 = load ptr, ptr %hp, align 8, !dbg !1840, !tbaa !711
  %rrp16 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %18, i32 0, i32 0, !dbg !1841
  %call = call i64 %16(ptr noundef %17, ptr noundef %rrp16), !dbg !1837
  store i64 %call, ptr %retval, align 8, !dbg !1842
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1842

if.end17:                                         ; preds = %lor.lhs.false
  %19 = load ptr, ptr @ngx_cached_time, align 8, !dbg !1843, !tbaa !711
  %sec = getelementptr inbounds %struct.ngx_time_t, ptr %19, i32 0, i32 0, !dbg !1843
  %20 = load volatile i64, ptr %sec, align 8, !dbg !1843, !tbaa !1844
  store i64 %20, ptr %now, align 8, !dbg !1846, !tbaa !1413
  %21 = load ptr, ptr %pc.addr, align 8, !dbg !1847, !tbaa !711
  %connection = getelementptr inbounds %struct.ngx_peer_connection_s, ptr %21, i32 0, i32 0, !dbg !1848
  store ptr null, ptr %connection, align 8, !dbg !1849, !tbaa !1850
  br label %for.cond, !dbg !1851

for.cond:                                         ; preds = %if.end110, %if.end17
  store i32 -1, ptr %hash, align 4, !dbg !1852, !tbaa !1538
  %22 = load ptr, ptr %hp, align 8, !dbg !1853, !tbaa !711
  %rehash = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %22, i32 0, i32 4, !dbg !1855
  %23 = load i64, ptr %rehash, align 8, !dbg !1855, !tbaa !1759
  %cmp18 = icmp ugt i64 %23, 0, !dbg !1856
  br i1 %cmp18, label %if.then19, label %if.end24, !dbg !1857

if.then19:                                        ; preds = %for.cond
  %arraydecay = getelementptr inbounds [20 x i8], ptr %buf, i64 0, i64 0, !dbg !1858
  %24 = load ptr, ptr %hp, align 8, !dbg !1860, !tbaa !711
  %rehash20 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %24, i32 0, i32 4, !dbg !1861
  %25 = load i64, ptr %rehash20, align 8, !dbg !1861, !tbaa !1759
  %call21 = call ptr (ptr, ptr, ...) @ngx_sprintf(ptr noundef %arraydecay, ptr noundef @.str.5, i64 noundef %25), !dbg !1862
  %arraydecay22 = getelementptr inbounds [20 x i8], ptr %buf, i64 0, i64 0, !dbg !1863
  %sub.ptr.lhs.cast = ptrtoint ptr %call21 to i64, !dbg !1864
  %sub.ptr.rhs.cast = ptrtoint ptr %arraydecay22 to i64, !dbg !1864
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1864
  store i64 %sub.ptr.sub, ptr %size, align 8, !dbg !1865, !tbaa !1413
  %arraydecay23 = getelementptr inbounds [20 x i8], ptr %buf, i64 0, i64 0, !dbg !1866
  %26 = load i64, ptr %size, align 8, !dbg !1867, !tbaa !1413
  call void @ngx_crc32_update(ptr noundef %hash, ptr noundef %arraydecay23, i64 noundef %26), !dbg !1868
  br label %if.end24, !dbg !1869

if.end24:                                         ; preds = %if.then19, %for.cond
  %27 = load ptr, ptr %hp, align 8, !dbg !1870, !tbaa !711
  %key = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %27, i32 0, i32 2, !dbg !1871
  %data25 = getelementptr inbounds %struct.ngx_str_t, ptr %key, i32 0, i32 1, !dbg !1872
  %28 = load ptr, ptr %data25, align 8, !dbg !1872, !tbaa !1873
  %29 = load ptr, ptr %hp, align 8, !dbg !1874, !tbaa !711
  %key26 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %29, i32 0, i32 2, !dbg !1875
  %len = getelementptr inbounds %struct.ngx_str_t, ptr %key26, i32 0, i32 0, !dbg !1876
  %30 = load i64, ptr %len, align 8, !dbg !1876, !tbaa !1877
  call void @ngx_crc32_update(ptr noundef %hash, ptr noundef %28, i64 noundef %30), !dbg !1878
  %31 = load i32, ptr %hash, align 4, !dbg !1879, !tbaa !1538
  %xor = xor i32 %31, -1, !dbg !1879
  store i32 %xor, ptr %hash, align 4, !dbg !1879, !tbaa !1538
  %32 = load i32, ptr %hash, align 4, !dbg !1880, !tbaa !1538
  %shr = lshr i32 %32, 16, !dbg !1881
  %and = and i32 %shr, 32767, !dbg !1882
  store i32 %and, ptr %hash, align 4, !dbg !1883, !tbaa !1538
  %33 = load i32, ptr %hash, align 4, !dbg !1884, !tbaa !1538
  %34 = load ptr, ptr %hp, align 8, !dbg !1885, !tbaa !711
  %hash27 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %34, i32 0, i32 5, !dbg !1886
  %35 = load i32, ptr %hash27, align 8, !dbg !1887, !tbaa !1763
  %add = add i32 %35, %33, !dbg !1887
  store i32 %add, ptr %hash27, align 8, !dbg !1887, !tbaa !1763
  %36 = load ptr, ptr %hp, align 8, !dbg !1888, !tbaa !711
  %rehash28 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %36, i32 0, i32 4, !dbg !1889
  %37 = load i64, ptr %rehash28, align 8, !dbg !1890, !tbaa !1759
  %inc = add i64 %37, 1, !dbg !1890
  store i64 %inc, ptr %rehash28, align 8, !dbg !1890, !tbaa !1759
  %38 = load ptr, ptr %hp, align 8, !dbg !1891, !tbaa !711
  %hash29 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %38, i32 0, i32 5, !dbg !1892
  %39 = load i32, ptr %hash29, align 8, !dbg !1892, !tbaa !1763
  %conv = zext i32 %39 to i64, !dbg !1891
  %40 = load ptr, ptr %hp, align 8, !dbg !1893, !tbaa !711
  %rrp30 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %40, i32 0, i32 0, !dbg !1894
  %peers31 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_data_t, ptr %rrp30, i32 0, i32 1, !dbg !1895
  %41 = load ptr, ptr %peers31, align 8, !dbg !1895, !tbaa !1816
  %total_weight = getelementptr inbounds %struct.ngx_stream_upstream_rr_peers_s, ptr %41, i32 0, i32 4, !dbg !1896
  %42 = load i64, ptr %total_weight, align 8, !dbg !1896, !tbaa !1409
  %rem = urem i64 %conv, %42, !dbg !1897
  store i64 %rem, ptr %w, align 8, !dbg !1898, !tbaa !1413
  %43 = load ptr, ptr %hp, align 8, !dbg !1899, !tbaa !711
  %rrp32 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %43, i32 0, i32 0, !dbg !1900
  %peers33 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_data_t, ptr %rrp32, i32 0, i32 1, !dbg !1901
  %44 = load ptr, ptr %peers33, align 8, !dbg !1901, !tbaa !1816
  %peer34 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peers_s, ptr %44, i32 0, i32 8, !dbg !1902
  %45 = load ptr, ptr %peer34, align 8, !dbg !1902, !tbaa !1437
  store ptr %45, ptr %peer, align 8, !dbg !1903, !tbaa !711
  store i64 0, ptr %p, align 8, !dbg !1904, !tbaa !1413
  br label %while.cond, !dbg !1905

while.cond:                                       ; preds = %while.body, %if.end24
  %46 = load i64, ptr %w, align 8, !dbg !1906, !tbaa !1413
  %47 = load ptr, ptr %peer, align 8, !dbg !1907, !tbaa !711
  %weight = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %47, i32 0, i32 6, !dbg !1908
  %48 = load i64, ptr %weight, align 8, !dbg !1908, !tbaa !1549
  %cmp35 = icmp sge i64 %46, %48, !dbg !1909
  br i1 %cmp35, label %while.body, label %while.end, !dbg !1905

while.body:                                       ; preds = %while.cond
  %49 = load ptr, ptr %peer, align 8, !dbg !1910, !tbaa !711
  %weight37 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %49, i32 0, i32 6, !dbg !1912
  %50 = load i64, ptr %weight37, align 8, !dbg !1912, !tbaa !1549
  %51 = load i64, ptr %w, align 8, !dbg !1913, !tbaa !1413
  %sub = sub nsw i64 %51, %50, !dbg !1913
  store i64 %sub, ptr %w, align 8, !dbg !1913, !tbaa !1413
  %52 = load ptr, ptr %peer, align 8, !dbg !1914, !tbaa !711
  %next = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %52, i32 0, i32 20, !dbg !1915
  %53 = load ptr, ptr %next, align 8, !dbg !1915, !tbaa !1597
  store ptr %53, ptr %peer, align 8, !dbg !1916, !tbaa !711
  %54 = load i64, ptr %p, align 8, !dbg !1917, !tbaa !1413
  %inc38 = add i64 %54, 1, !dbg !1917
  store i64 %inc38, ptr %p, align 8, !dbg !1917, !tbaa !1413
  br label %while.cond, !dbg !1905, !llvm.loop !1918

while.end:                                        ; preds = %while.cond
  %55 = load i64, ptr %p, align 8, !dbg !1920, !tbaa !1413
  %div = udiv i64 %55, 64, !dbg !1921
  store i64 %div, ptr %n, align 8, !dbg !1922, !tbaa !1413
  %56 = load i64, ptr %p, align 8, !dbg !1923, !tbaa !1413
  %rem39 = urem i64 %56, 64, !dbg !1924
  %shl = shl i64 1, %rem39, !dbg !1925
  store i64 %shl, ptr %m, align 8, !dbg !1926, !tbaa !1413
  %57 = load ptr, ptr %hp, align 8, !dbg !1927, !tbaa !711
  %rrp40 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %57, i32 0, i32 0, !dbg !1929
  %tried = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_data_t, ptr %rrp40, i32 0, i32 3, !dbg !1930
  %58 = load ptr, ptr %tried, align 8, !dbg !1930, !tbaa !1931
  %59 = load i64, ptr %n, align 8, !dbg !1932, !tbaa !1413
  %arrayidx = getelementptr inbounds i64, ptr %58, i64 %59, !dbg !1927
  %60 = load i64, ptr %arrayidx, align 8, !dbg !1927, !tbaa !1413
  %61 = load i64, ptr %m, align 8, !dbg !1933, !tbaa !1413
  %and41 = and i64 %60, %61, !dbg !1934
  %tobool42 = icmp ne i64 %and41, 0, !dbg !1934
  br i1 %tobool42, label %if.then43, label %if.end44, !dbg !1935

if.then43:                                        ; preds = %while.end
  br label %next92, !dbg !1936

if.end44:                                         ; preds = %while.end
  %62 = load ptr, ptr %hp, align 8, !dbg !1938, !tbaa !711
  %rrp45 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %62, i32 0, i32 0, !dbg !1938
  %peers46 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_data_t, ptr %rrp45, i32 0, i32 1, !dbg !1938
  %63 = load ptr, ptr %peers46, align 8, !dbg !1938, !tbaa !1816
  %shpool47 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peers_s, ptr %63, i32 0, i32 1, !dbg !1938
  %64 = load ptr, ptr %shpool47, align 8, !dbg !1938, !tbaa !1817
  %tobool48 = icmp ne ptr %64, null, !dbg !1938
  br i1 %tobool48, label %if.then49, label %if.end50, !dbg !1940

if.then49:                                        ; preds = %if.end44
  %65 = load ptr, ptr %peer, align 8, !dbg !1941, !tbaa !711
  %lock = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %65, i32 0, i32 19, !dbg !1941
  call void @ngx_rwlock_wlock(ptr noundef %lock), !dbg !1941
  br label %if.end50, !dbg !1941

if.end50:                                         ; preds = %if.then49, %if.end44
  %66 = load ptr, ptr %peer, align 8, !dbg !1943, !tbaa !711
  %down = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %66, i32 0, i32 16, !dbg !1945
  %67 = load i64, ptr %down, align 8, !dbg !1945, !tbaa !1946
  %tobool51 = icmp ne i64 %67, 0, !dbg !1943
  br i1 %tobool51, label %if.then52, label %if.end60, !dbg !1947

if.then52:                                        ; preds = %if.end50
  %68 = load ptr, ptr %hp, align 8, !dbg !1948, !tbaa !711
  %rrp53 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %68, i32 0, i32 0, !dbg !1948
  %peers54 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_data_t, ptr %rrp53, i32 0, i32 1, !dbg !1948
  %69 = load ptr, ptr %peers54, align 8, !dbg !1948, !tbaa !1816
  %shpool55 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peers_s, ptr %69, i32 0, i32 1, !dbg !1948
  %70 = load ptr, ptr %shpool55, align 8, !dbg !1948, !tbaa !1817
  %tobool56 = icmp ne ptr %70, null, !dbg !1948
  br i1 %tobool56, label %if.then57, label %if.end59, !dbg !1951

if.then57:                                        ; preds = %if.then52
  %71 = load ptr, ptr %peer, align 8, !dbg !1952, !tbaa !711
  %lock58 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %71, i32 0, i32 19, !dbg !1952
  call void @ngx_rwlock_unlock(ptr noundef %lock58), !dbg !1952
  br label %if.end59, !dbg !1952

if.end59:                                         ; preds = %if.then57, %if.then52
  br label %next92, !dbg !1954

if.end60:                                         ; preds = %if.end50
  %72 = load ptr, ptr %peer, align 8, !dbg !1955, !tbaa !711
  %max_fails = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %72, i32 0, i32 12, !dbg !1957
  %73 = load i64, ptr %max_fails, align 8, !dbg !1957, !tbaa !1958
  %tobool61 = icmp ne i64 %73, 0, !dbg !1955
  br i1 %tobool61, label %land.lhs.true, label %if.end77, !dbg !1959

land.lhs.true:                                    ; preds = %if.end60
  %74 = load ptr, ptr %peer, align 8, !dbg !1960, !tbaa !711
  %fails = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %74, i32 0, i32 9, !dbg !1961
  %75 = load i64, ptr %fails, align 8, !dbg !1961, !tbaa !1962
  %76 = load ptr, ptr %peer, align 8, !dbg !1963, !tbaa !711
  %max_fails62 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %76, i32 0, i32 12, !dbg !1964
  %77 = load i64, ptr %max_fails62, align 8, !dbg !1964, !tbaa !1958
  %cmp63 = icmp uge i64 %75, %77, !dbg !1965
  br i1 %cmp63, label %land.lhs.true65, label %if.end77, !dbg !1966

land.lhs.true65:                                  ; preds = %land.lhs.true
  %78 = load i64, ptr %now, align 8, !dbg !1967, !tbaa !1413
  %79 = load ptr, ptr %peer, align 8, !dbg !1968, !tbaa !711
  %checked = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %79, i32 0, i32 11, !dbg !1969
  %80 = load i64, ptr %checked, align 8, !dbg !1969, !tbaa !1970
  %sub66 = sub nsw i64 %78, %80, !dbg !1971
  %81 = load ptr, ptr %peer, align 8, !dbg !1972, !tbaa !711
  %fail_timeout = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %81, i32 0, i32 13, !dbg !1973
  %82 = load i64, ptr %fail_timeout, align 8, !dbg !1973, !tbaa !1974
  %cmp67 = icmp sle i64 %sub66, %82, !dbg !1975
  br i1 %cmp67, label %if.then69, label %if.end77, !dbg !1976

if.then69:                                        ; preds = %land.lhs.true65
  %83 = load ptr, ptr %hp, align 8, !dbg !1977, !tbaa !711
  %rrp70 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %83, i32 0, i32 0, !dbg !1977
  %peers71 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_data_t, ptr %rrp70, i32 0, i32 1, !dbg !1977
  %84 = load ptr, ptr %peers71, align 8, !dbg !1977, !tbaa !1816
  %shpool72 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peers_s, ptr %84, i32 0, i32 1, !dbg !1977
  %85 = load ptr, ptr %shpool72, align 8, !dbg !1977, !tbaa !1817
  %tobool73 = icmp ne ptr %85, null, !dbg !1977
  br i1 %tobool73, label %if.then74, label %if.end76, !dbg !1980

if.then74:                                        ; preds = %if.then69
  %86 = load ptr, ptr %peer, align 8, !dbg !1981, !tbaa !711
  %lock75 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %86, i32 0, i32 19, !dbg !1981
  call void @ngx_rwlock_unlock(ptr noundef %lock75), !dbg !1981
  br label %if.end76, !dbg !1981

if.end76:                                         ; preds = %if.then74, %if.then69
  br label %next92, !dbg !1983

if.end77:                                         ; preds = %land.lhs.true65, %land.lhs.true, %if.end60
  %87 = load ptr, ptr %peer, align 8, !dbg !1984, !tbaa !711
  %max_conns = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %87, i32 0, i32 8, !dbg !1986
  %88 = load i64, ptr %max_conns, align 8, !dbg !1986, !tbaa !1987
  %tobool78 = icmp ne i64 %88, 0, !dbg !1984
  br i1 %tobool78, label %land.lhs.true79, label %if.end91, !dbg !1988

land.lhs.true79:                                  ; preds = %if.end77
  %89 = load ptr, ptr %peer, align 8, !dbg !1989, !tbaa !711
  %conns = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %89, i32 0, i32 7, !dbg !1990
  %90 = load i64, ptr %conns, align 8, !dbg !1990, !tbaa !1991
  %91 = load ptr, ptr %peer, align 8, !dbg !1992, !tbaa !711
  %max_conns80 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %91, i32 0, i32 8, !dbg !1993
  %92 = load i64, ptr %max_conns80, align 8, !dbg !1993, !tbaa !1987
  %cmp81 = icmp uge i64 %90, %92, !dbg !1994
  br i1 %cmp81, label %if.then83, label %if.end91, !dbg !1995

if.then83:                                        ; preds = %land.lhs.true79
  %93 = load ptr, ptr %hp, align 8, !dbg !1996, !tbaa !711
  %rrp84 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %93, i32 0, i32 0, !dbg !1996
  %peers85 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_data_t, ptr %rrp84, i32 0, i32 1, !dbg !1996
  %94 = load ptr, ptr %peers85, align 8, !dbg !1996, !tbaa !1816
  %shpool86 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peers_s, ptr %94, i32 0, i32 1, !dbg !1996
  %95 = load ptr, ptr %shpool86, align 8, !dbg !1996, !tbaa !1817
  %tobool87 = icmp ne ptr %95, null, !dbg !1996
  br i1 %tobool87, label %if.then88, label %if.end90, !dbg !1999

if.then88:                                        ; preds = %if.then83
  %96 = load ptr, ptr %peer, align 8, !dbg !2000, !tbaa !711
  %lock89 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %96, i32 0, i32 19, !dbg !2000
  call void @ngx_rwlock_unlock(ptr noundef %lock89), !dbg !2000
  br label %if.end90, !dbg !2000

if.end90:                                         ; preds = %if.then88, %if.then83
  br label %next92, !dbg !2002

if.end91:                                         ; preds = %land.lhs.true79, %if.end77
  br label %for.end, !dbg !2003

next92:                                           ; preds = %if.end90, %if.end76, %if.end59, %if.then43
  tail call void @llvm.dbg.label(metadata !1788), !dbg !2004
  %97 = load ptr, ptr %hp, align 8, !dbg !2005, !tbaa !711
  %tries93 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %97, i32 0, i32 3, !dbg !2007
  %98 = load i64, ptr %tries93, align 8, !dbg !2008, !tbaa !1755
  %inc94 = add i64 %98, 1, !dbg !2008
  store i64 %inc94, ptr %tries93, align 8, !dbg !2008, !tbaa !1755
  %cmp95 = icmp ugt i64 %inc94, 20, !dbg !2009
  br i1 %cmp95, label %if.then97, label %if.end110, !dbg !2010

if.then97:                                        ; preds = %next92
  %99 = load ptr, ptr %hp, align 8, !dbg !2011, !tbaa !711
  %rrp98 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %99, i32 0, i32 0, !dbg !2011
  %peers99 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_data_t, ptr %rrp98, i32 0, i32 1, !dbg !2011
  %100 = load ptr, ptr %peers99, align 8, !dbg !2011, !tbaa !1816
  %shpool100 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peers_s, ptr %100, i32 0, i32 1, !dbg !2011
  %101 = load ptr, ptr %shpool100, align 8, !dbg !2011, !tbaa !1817
  %tobool101 = icmp ne ptr %101, null, !dbg !2011
  br i1 %tobool101, label %if.then102, label %if.end106, !dbg !2014

if.then102:                                       ; preds = %if.then97
  %102 = load ptr, ptr %hp, align 8, !dbg !2015, !tbaa !711
  %rrp103 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %102, i32 0, i32 0, !dbg !2015
  %peers104 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_data_t, ptr %rrp103, i32 0, i32 1, !dbg !2015
  %103 = load ptr, ptr %peers104, align 8, !dbg !2015, !tbaa !1816
  %rwlock105 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peers_s, ptr %103, i32 0, i32 2, !dbg !2015
  call void @ngx_rwlock_unlock(ptr noundef %rwlock105), !dbg !2015
  br label %if.end106, !dbg !2015

if.end106:                                        ; preds = %if.then102, %if.then97
  %104 = load ptr, ptr %hp, align 8, !dbg !2017, !tbaa !711
  %get_rr_peer107 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %104, i32 0, i32 6, !dbg !2018
  %105 = load ptr, ptr %get_rr_peer107, align 8, !dbg !2018, !tbaa !1767
  %106 = load ptr, ptr %pc.addr, align 8, !dbg !2019, !tbaa !711
  %107 = load ptr, ptr %hp, align 8, !dbg !2020, !tbaa !711
  %rrp108 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %107, i32 0, i32 0, !dbg !2021
  %call109 = call i64 %105(ptr noundef %106, ptr noundef %rrp108), !dbg !2017
  store i64 %call109, ptr %retval, align 8, !dbg !2022
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2022

if.end110:                                        ; preds = %next92
  br label %for.cond, !dbg !2023, !llvm.loop !2024

for.end:                                          ; preds = %if.end91
  %108 = load ptr, ptr %peer, align 8, !dbg !2027, !tbaa !711
  %109 = load ptr, ptr %hp, align 8, !dbg !2028, !tbaa !711
  %rrp111 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %109, i32 0, i32 0, !dbg !2029
  %current = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_data_t, ptr %rrp111, i32 0, i32 2, !dbg !2030
  store ptr %108, ptr %current, align 8, !dbg !2031, !tbaa !2032
  %110 = load ptr, ptr %peer, align 8, !dbg !2033, !tbaa !711
  %sockaddr = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %110, i32 0, i32 0, !dbg !2034
  %111 = load ptr, ptr %sockaddr, align 8, !dbg !2034, !tbaa !2035
  %112 = load ptr, ptr %pc.addr, align 8, !dbg !2036, !tbaa !711
  %sockaddr112 = getelementptr inbounds %struct.ngx_peer_connection_s, ptr %112, i32 0, i32 1, !dbg !2037
  store ptr %111, ptr %sockaddr112, align 8, !dbg !2038, !tbaa !2039
  %113 = load ptr, ptr %peer, align 8, !dbg !2040, !tbaa !711
  %socklen = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %113, i32 0, i32 1, !dbg !2041
  %114 = load i32, ptr %socklen, align 8, !dbg !2041, !tbaa !2042
  %115 = load ptr, ptr %pc.addr, align 8, !dbg !2043, !tbaa !711
  %socklen113 = getelementptr inbounds %struct.ngx_peer_connection_s, ptr %115, i32 0, i32 2, !dbg !2044
  store i32 %114, ptr %socklen113, align 8, !dbg !2045, !tbaa !2046
  %116 = load ptr, ptr %peer, align 8, !dbg !2047, !tbaa !711
  %name = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %116, i32 0, i32 2, !dbg !2048
  %117 = load ptr, ptr %pc.addr, align 8, !dbg !2049, !tbaa !711
  %name114 = getelementptr inbounds %struct.ngx_peer_connection_s, ptr %117, i32 0, i32 3, !dbg !2050
  store ptr %name, ptr %name114, align 8, !dbg !2051, !tbaa !2052
  %118 = load ptr, ptr %peer, align 8, !dbg !2053, !tbaa !711
  %conns115 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %118, i32 0, i32 7, !dbg !2054
  %119 = load i64, ptr %conns115, align 8, !dbg !2055, !tbaa !1991
  %inc116 = add i64 %119, 1, !dbg !2055
  store i64 %inc116, ptr %conns115, align 8, !dbg !2055, !tbaa !1991
  %120 = load i64, ptr %now, align 8, !dbg !2056, !tbaa !1413
  %121 = load ptr, ptr %peer, align 8, !dbg !2058, !tbaa !711
  %checked117 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %121, i32 0, i32 11, !dbg !2059
  %122 = load i64, ptr %checked117, align 8, !dbg !2059, !tbaa !1970
  %sub118 = sub nsw i64 %120, %122, !dbg !2060
  %123 = load ptr, ptr %peer, align 8, !dbg !2061, !tbaa !711
  %fail_timeout119 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %123, i32 0, i32 13, !dbg !2062
  %124 = load i64, ptr %fail_timeout119, align 8, !dbg !2062, !tbaa !1974
  %cmp120 = icmp sgt i64 %sub118, %124, !dbg !2063
  br i1 %cmp120, label %if.then122, label %if.end124, !dbg !2064

if.then122:                                       ; preds = %for.end
  %125 = load i64, ptr %now, align 8, !dbg !2065, !tbaa !1413
  %126 = load ptr, ptr %peer, align 8, !dbg !2067, !tbaa !711
  %checked123 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %126, i32 0, i32 11, !dbg !2068
  store i64 %125, ptr %checked123, align 8, !dbg !2069, !tbaa !1970
  br label %if.end124, !dbg !2070

if.end124:                                        ; preds = %if.then122, %for.end
  %127 = load ptr, ptr %hp, align 8, !dbg !2071, !tbaa !711
  %rrp125 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %127, i32 0, i32 0, !dbg !2071
  %peers126 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_data_t, ptr %rrp125, i32 0, i32 1, !dbg !2071
  %128 = load ptr, ptr %peers126, align 8, !dbg !2071, !tbaa !1816
  %shpool127 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peers_s, ptr %128, i32 0, i32 1, !dbg !2071
  %129 = load ptr, ptr %shpool127, align 8, !dbg !2071, !tbaa !1817
  %tobool128 = icmp ne ptr %129, null, !dbg !2071
  br i1 %tobool128, label %if.then129, label %if.end131, !dbg !2073

if.then129:                                       ; preds = %if.end124
  %130 = load ptr, ptr %peer, align 8, !dbg !2074, !tbaa !711
  %lock130 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %130, i32 0, i32 19, !dbg !2074
  call void @ngx_rwlock_unlock(ptr noundef %lock130), !dbg !2074
  br label %if.end131, !dbg !2074

if.end131:                                        ; preds = %if.then129, %if.end124
  %131 = load ptr, ptr %hp, align 8, !dbg !2076, !tbaa !711
  %rrp132 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %131, i32 0, i32 0, !dbg !2076
  %peers133 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_data_t, ptr %rrp132, i32 0, i32 1, !dbg !2076
  %132 = load ptr, ptr %peers133, align 8, !dbg !2076, !tbaa !1816
  %shpool134 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peers_s, ptr %132, i32 0, i32 1, !dbg !2076
  %133 = load ptr, ptr %shpool134, align 8, !dbg !2076, !tbaa !1817
  %tobool135 = icmp ne ptr %133, null, !dbg !2076
  br i1 %tobool135, label %if.then136, label %if.end140, !dbg !2078

if.then136:                                       ; preds = %if.end131
  %134 = load ptr, ptr %hp, align 8, !dbg !2079, !tbaa !711
  %rrp137 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %134, i32 0, i32 0, !dbg !2079
  %peers138 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_data_t, ptr %rrp137, i32 0, i32 1, !dbg !2079
  %135 = load ptr, ptr %peers138, align 8, !dbg !2079, !tbaa !1816
  %rwlock139 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peers_s, ptr %135, i32 0, i32 2, !dbg !2079
  call void @ngx_rwlock_unlock(ptr noundef %rwlock139), !dbg !2079
  br label %if.end140, !dbg !2079

if.end140:                                        ; preds = %if.then136, %if.end131
  %136 = load i64, ptr %m, align 8, !dbg !2081, !tbaa !1413
  %137 = load ptr, ptr %hp, align 8, !dbg !2082, !tbaa !711
  %rrp141 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %137, i32 0, i32 0, !dbg !2083
  %tried142 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_data_t, ptr %rrp141, i32 0, i32 3, !dbg !2084
  %138 = load ptr, ptr %tried142, align 8, !dbg !2084, !tbaa !1931
  %139 = load i64, ptr %n, align 8, !dbg !2085, !tbaa !1413
  %arrayidx143 = getelementptr inbounds i64, ptr %138, i64 %139, !dbg !2082
  %140 = load i64, ptr %arrayidx143, align 8, !dbg !2086, !tbaa !1413
  %or = or i64 %140, %136, !dbg !2086
  store i64 %or, ptr %arrayidx143, align 8, !dbg !2086, !tbaa !1413
  store i64 0, ptr %retval, align 8, !dbg !2087
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2087

cleanup:                                          ; preds = %if.end140, %if.end106, %if.end15
  call void @llvm.lifetime.end.p0(i64 8, ptr %peer) #8, !dbg !2088
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #8, !dbg !2088
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #8, !dbg !2088
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #8, !dbg !2088
  call void @llvm.lifetime.end.p0(i64 8, ptr %w) #8, !dbg !2088
  call void @llvm.lifetime.end.p0(i64 4, ptr %hash) #8, !dbg !2088
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #8, !dbg !2088
  call void @llvm.lifetime.end.p0(i64 20, ptr %buf) #8, !dbg !2088
  call void @llvm.lifetime.end.p0(i64 8, ptr %now) #8, !dbg !2088
  call void @llvm.lifetime.end.p0(i64 8, ptr %hp) #8, !dbg !2088
  %141 = load i64, ptr %retval, align 8, !dbg !2088
  ret i64 %141, !dbg !2088
}

declare !dbg !2089 i64 @ngx_stream_complex_value(ptr noundef, ptr noundef, ptr noundef) #2

declare i64 @ngx_stream_upstream_get_round_robin_peer(ptr noundef, ptr noundef) #2

declare !dbg !2092 void @ngx_rwlock_rlock(ptr noundef) #2

declare !dbg !2096 void @ngx_rwlock_unlock(ptr noundef) #2

declare !dbg !2097 ptr @ngx_sprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @ngx_crc32_update(ptr noundef %crc, ptr noundef %p, i64 noundef %len) #5 !dbg !2100 {
entry:
  %crc.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %c = alloca i32, align 4
  store ptr %crc, ptr %crc.addr, align 8, !tbaa !711
  tail call void @llvm.dbg.declare(metadata ptr %crc.addr, metadata !2106, metadata !DIExpression()), !dbg !2110
  store ptr %p, ptr %p.addr, align 8, !tbaa !711
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2107, metadata !DIExpression()), !dbg !2111
  store i64 %len, ptr %len.addr, align 8, !tbaa !1413
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !2108, metadata !DIExpression()), !dbg !2112
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #8, !dbg !2113
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !2109, metadata !DIExpression()), !dbg !2114
  %0 = load ptr, ptr %crc.addr, align 8, !dbg !2115, !tbaa !711
  %1 = load i32, ptr %0, align 4, !dbg !2116, !tbaa !1538
  store i32 %1, ptr %c, align 4, !dbg !2117, !tbaa !1538
  br label %while.cond, !dbg !2118

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i64, ptr %len.addr, align 8, !dbg !2119, !tbaa !1413
  %dec = add i64 %2, -1, !dbg !2119
  store i64 %dec, ptr %len.addr, align 8, !dbg !2119, !tbaa !1413
  %tobool = icmp ne i64 %2, 0, !dbg !2118
  br i1 %tobool, label %while.body, label %while.end, !dbg !2118

while.body:                                       ; preds = %while.cond
  %3 = load i32, ptr %c, align 4, !dbg !2120, !tbaa !1538
  %4 = load ptr, ptr %p.addr, align 8, !dbg !2122, !tbaa !711
  %incdec.ptr = getelementptr inbounds i8, ptr %4, i32 1, !dbg !2122
  store ptr %incdec.ptr, ptr %p.addr, align 8, !dbg !2122, !tbaa !711
  %5 = load i8, ptr %4, align 1, !dbg !2123, !tbaa !1485
  %conv = zext i8 %5 to i32, !dbg !2123
  %xor = xor i32 %3, %conv, !dbg !2124
  %and = and i32 %xor, 255, !dbg !2125
  %idxprom = zext i32 %and to i64, !dbg !2126
  %arrayidx = getelementptr inbounds [0 x i32], ptr @ngx_crc32_table256, i64 0, i64 %idxprom, !dbg !2126
  %6 = load i32, ptr %arrayidx, align 4, !dbg !2126, !tbaa !1538
  %7 = load i32, ptr %c, align 4, !dbg !2127, !tbaa !1538
  %shr = lshr i32 %7, 8, !dbg !2128
  %xor1 = xor i32 %6, %shr, !dbg !2129
  store i32 %xor1, ptr %c, align 4, !dbg !2130, !tbaa !1538
  br label %while.cond, !dbg !2118, !llvm.loop !2131

while.end:                                        ; preds = %while.cond
  %8 = load i32, ptr %c, align 4, !dbg !2133, !tbaa !1538
  %9 = load ptr, ptr %crc.addr, align 8, !dbg !2134, !tbaa !711
  store i32 %8, ptr %9, align 4, !dbg !2135, !tbaa !1538
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #8, !dbg !2136
  ret void, !dbg !2136
}

declare !dbg !2137 void @ngx_rwlock_wlock(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i64 @ngx_stream_upstream_init_chash_peer(ptr noundef %s, ptr noundef %us) #0 !dbg !2138 {
entry:
  %retval = alloca i64, align 8
  %s.addr = alloca ptr, align 8
  %us.addr = alloca ptr, align 8
  %hash = alloca i32, align 4
  %hcf = alloca ptr, align 8
  %hp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8, !tbaa !711
  tail call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !2140, metadata !DIExpression()), !dbg !2145
  store ptr %us, ptr %us.addr, align 8, !tbaa !711
  tail call void @llvm.dbg.declare(metadata ptr %us.addr, metadata !2141, metadata !DIExpression()), !dbg !2146
  call void @llvm.lifetime.start.p0(i64 4, ptr %hash) #8, !dbg !2147
  tail call void @llvm.dbg.declare(metadata ptr %hash, metadata !2142, metadata !DIExpression()), !dbg !2148
  call void @llvm.lifetime.start.p0(i64 8, ptr %hcf) #8, !dbg !2149
  tail call void @llvm.dbg.declare(metadata ptr %hcf, metadata !2143, metadata !DIExpression()), !dbg !2150
  call void @llvm.lifetime.start.p0(i64 8, ptr %hp) #8, !dbg !2151
  tail call void @llvm.dbg.declare(metadata ptr %hp, metadata !2144, metadata !DIExpression()), !dbg !2152
  %0 = load ptr, ptr %s.addr, align 8, !dbg !2153, !tbaa !711
  %1 = load ptr, ptr %us.addr, align 8, !dbg !2155, !tbaa !711
  %call = call i64 @ngx_stream_upstream_init_hash_peer(ptr noundef %0, ptr noundef %1), !dbg !2156
  %cmp = icmp ne i64 %call, 0, !dbg !2157
  br i1 %cmp, label %if.then, label %if.end, !dbg !2158

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !2159
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2159

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %s.addr, align 8, !dbg !2161, !tbaa !711
  %upstream = getelementptr inbounds %struct.ngx_stream_session_s, ptr %2, i32 0, i32 9, !dbg !2162
  %3 = load ptr, ptr %upstream, align 8, !dbg !2162, !tbaa !1710
  %peer = getelementptr inbounds %struct.ngx_stream_upstream_t, ptr %3, i32 0, i32 0, !dbg !2163
  %get = getelementptr inbounds %struct.ngx_peer_connection_s, ptr %peer, i32 0, i32 6, !dbg !2164
  store ptr @ngx_stream_upstream_get_chash_peer, ptr %get, align 8, !dbg !2165, !tbaa !1731
  %4 = load ptr, ptr %s.addr, align 8, !dbg !2166, !tbaa !711
  %upstream1 = getelementptr inbounds %struct.ngx_stream_session_s, ptr %4, i32 0, i32 9, !dbg !2167
  %5 = load ptr, ptr %upstream1, align 8, !dbg !2167, !tbaa !1710
  %peer2 = getelementptr inbounds %struct.ngx_stream_upstream_t, ptr %5, i32 0, i32 0, !dbg !2168
  %data = getelementptr inbounds %struct.ngx_peer_connection_s, ptr %peer2, i32 0, i32 9, !dbg !2169
  %6 = load ptr, ptr %data, align 8, !dbg !2169, !tbaa !1714
  store ptr %6, ptr %hp, align 8, !dbg !2170, !tbaa !711
  %7 = load ptr, ptr %us.addr, align 8, !dbg !2171, !tbaa !711
  %srv_conf = getelementptr inbounds %struct.ngx_stream_upstream_srv_conf_s, ptr %7, i32 0, i32 1, !dbg !2171
  %8 = load ptr, ptr %srv_conf, align 8, !dbg !2171, !tbaa !1649
  %9 = load i64, ptr @ngx_stream_upstream_hash_module, align 8, !dbg !2171, !tbaa !1147
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 %9, !dbg !2171
  %10 = load ptr, ptr %arrayidx, align 8, !dbg !2171, !tbaa !711
  store ptr %10, ptr %hcf, align 8, !dbg !2172, !tbaa !711
  %11 = load ptr, ptr %hp, align 8, !dbg !2173, !tbaa !711
  %key = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %11, i32 0, i32 2, !dbg !2174
  %data3 = getelementptr inbounds %struct.ngx_str_t, ptr %key, i32 0, i32 1, !dbg !2175
  %12 = load ptr, ptr %data3, align 8, !dbg !2175, !tbaa !1873
  %13 = load ptr, ptr %hp, align 8, !dbg !2176, !tbaa !711
  %key4 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %13, i32 0, i32 2, !dbg !2177
  %len = getelementptr inbounds %struct.ngx_str_t, ptr %key4, i32 0, i32 0, !dbg !2178
  %14 = load i64, ptr %len, align 8, !dbg !2178, !tbaa !1877
  %call5 = call i32 @ngx_crc32_long(ptr noundef %12, i64 noundef %14), !dbg !2179
  store i32 %call5, ptr %hash, align 4, !dbg !2180, !tbaa !1538
  %15 = load ptr, ptr %hp, align 8, !dbg !2181, !tbaa !711
  %rrp = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %15, i32 0, i32 0, !dbg !2181
  %peers = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_data_t, ptr %rrp, i32 0, i32 1, !dbg !2181
  %16 = load ptr, ptr %peers, align 8, !dbg !2181, !tbaa !1816
  %shpool = getelementptr inbounds %struct.ngx_stream_upstream_rr_peers_s, ptr %16, i32 0, i32 1, !dbg !2181
  %17 = load ptr, ptr %shpool, align 8, !dbg !2181, !tbaa !1817
  %tobool = icmp ne ptr %17, null, !dbg !2181
  br i1 %tobool, label %if.then6, label %if.end9, !dbg !2183

if.then6:                                         ; preds = %if.end
  %18 = load ptr, ptr %hp, align 8, !dbg !2184, !tbaa !711
  %rrp7 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %18, i32 0, i32 0, !dbg !2184
  %peers8 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_data_t, ptr %rrp7, i32 0, i32 1, !dbg !2184
  %19 = load ptr, ptr %peers8, align 8, !dbg !2184, !tbaa !1816
  %rwlock = getelementptr inbounds %struct.ngx_stream_upstream_rr_peers_s, ptr %19, i32 0, i32 2, !dbg !2184
  call void @ngx_rwlock_rlock(ptr noundef %rwlock), !dbg !2184
  br label %if.end9, !dbg !2184

if.end9:                                          ; preds = %if.then6, %if.end
  %20 = load ptr, ptr %hcf, align 8, !dbg !2186, !tbaa !711
  %points = getelementptr inbounds %struct.ngx_stream_upstream_hash_srv_conf_t, ptr %20, i32 0, i32 1, !dbg !2187
  %21 = load ptr, ptr %points, align 8, !dbg !2187, !tbaa !734
  %22 = load i32, ptr %hash, align 4, !dbg !2188, !tbaa !1538
  %call10 = call i64 @ngx_stream_upstream_find_chash_point(ptr noundef %21, i32 noundef %22), !dbg !2189
  %conv = trunc i64 %call10 to i32, !dbg !2189
  %23 = load ptr, ptr %hp, align 8, !dbg !2190, !tbaa !711
  %hash11 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %23, i32 0, i32 5, !dbg !2191
  store i32 %conv, ptr %hash11, align 8, !dbg !2192, !tbaa !1763
  %24 = load ptr, ptr %hp, align 8, !dbg !2193, !tbaa !711
  %rrp12 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %24, i32 0, i32 0, !dbg !2193
  %peers13 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_data_t, ptr %rrp12, i32 0, i32 1, !dbg !2193
  %25 = load ptr, ptr %peers13, align 8, !dbg !2193, !tbaa !1816
  %shpool14 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peers_s, ptr %25, i32 0, i32 1, !dbg !2193
  %26 = load ptr, ptr %shpool14, align 8, !dbg !2193, !tbaa !1817
  %tobool15 = icmp ne ptr %26, null, !dbg !2193
  br i1 %tobool15, label %if.then16, label %if.end20, !dbg !2195

if.then16:                                        ; preds = %if.end9
  %27 = load ptr, ptr %hp, align 8, !dbg !2196, !tbaa !711
  %rrp17 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %27, i32 0, i32 0, !dbg !2196
  %peers18 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_data_t, ptr %rrp17, i32 0, i32 1, !dbg !2196
  %28 = load ptr, ptr %peers18, align 8, !dbg !2196, !tbaa !1816
  %rwlock19 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peers_s, ptr %28, i32 0, i32 2, !dbg !2196
  call void @ngx_rwlock_unlock(ptr noundef %rwlock19), !dbg !2196
  br label %if.end20, !dbg !2196

if.end20:                                         ; preds = %if.then16, %if.end9
  store i64 0, ptr %retval, align 8, !dbg !2198
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2198

cleanup:                                          ; preds = %if.end20, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %hp) #8, !dbg !2199
  call void @llvm.lifetime.end.p0(i64 8, ptr %hcf) #8, !dbg !2199
  call void @llvm.lifetime.end.p0(i64 4, ptr %hash) #8, !dbg !2199
  %29 = load i64, ptr %retval, align 8, !dbg !2199
  ret i64 %29, !dbg !2199
}

declare !dbg !2200 i64 @ngx_strncasecmp(ptr noundef, ptr noundef, i64 noundef) #2

declare !dbg !2203 void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @ngx_stream_upstream_chash_cmp_points(ptr noundef %one, ptr noundef %two) #0 !dbg !2215 {
entry:
  %retval = alloca i32, align 4
  %one.addr = alloca ptr, align 8
  %two.addr = alloca ptr, align 8
  %first = alloca ptr, align 8
  %second = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %one, ptr %one.addr, align 8, !tbaa !711
  tail call void @llvm.dbg.declare(metadata ptr %one.addr, metadata !2217, metadata !DIExpression()), !dbg !2221
  store ptr %two, ptr %two.addr, align 8, !tbaa !711
  tail call void @llvm.dbg.declare(metadata ptr %two.addr, metadata !2218, metadata !DIExpression()), !dbg !2222
  call void @llvm.lifetime.start.p0(i64 8, ptr %first) #8, !dbg !2223
  tail call void @llvm.dbg.declare(metadata ptr %first, metadata !2219, metadata !DIExpression()), !dbg !2224
  %0 = load ptr, ptr %one.addr, align 8, !dbg !2225, !tbaa !711
  store ptr %0, ptr %first, align 8, !dbg !2224, !tbaa !711
  call void @llvm.lifetime.start.p0(i64 8, ptr %second) #8, !dbg !2226
  tail call void @llvm.dbg.declare(metadata ptr %second, metadata !2220, metadata !DIExpression()), !dbg !2227
  %1 = load ptr, ptr %two.addr, align 8, !dbg !2228, !tbaa !711
  store ptr %1, ptr %second, align 8, !dbg !2227, !tbaa !711
  %2 = load ptr, ptr %first, align 8, !dbg !2229, !tbaa !711
  %hash = getelementptr inbounds %struct.ngx_stream_upstream_chash_point_t, ptr %2, i32 0, i32 0, !dbg !2231
  %3 = load i32, ptr %hash, align 8, !dbg !2231, !tbaa !1574
  %4 = load ptr, ptr %second, align 8, !dbg !2232, !tbaa !711
  %hash1 = getelementptr inbounds %struct.ngx_stream_upstream_chash_point_t, ptr %4, i32 0, i32 0, !dbg !2233
  %5 = load i32, ptr %hash1, align 8, !dbg !2233, !tbaa !1574
  %cmp = icmp ult i32 %3, %5, !dbg !2234
  br i1 %cmp, label %if.then, label %if.else, !dbg !2235

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !2236
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2236

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %first, align 8, !dbg !2238, !tbaa !711
  %hash2 = getelementptr inbounds %struct.ngx_stream_upstream_chash_point_t, ptr %6, i32 0, i32 0, !dbg !2240
  %7 = load i32, ptr %hash2, align 8, !dbg !2240, !tbaa !1574
  %8 = load ptr, ptr %second, align 8, !dbg !2241, !tbaa !711
  %hash3 = getelementptr inbounds %struct.ngx_stream_upstream_chash_point_t, ptr %8, i32 0, i32 0, !dbg !2242
  %9 = load i32, ptr %hash3, align 8, !dbg !2242, !tbaa !1574
  %cmp4 = icmp ugt i32 %7, %9, !dbg !2243
  br i1 %cmp4, label %if.then5, label %if.else6, !dbg !2244

if.then5:                                         ; preds = %if.else
  store i32 1, ptr %retval, align 4, !dbg !2245
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2245

if.else6:                                         ; preds = %if.else
  store i32 0, ptr %retval, align 4, !dbg !2247
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2247

cleanup:                                          ; preds = %if.else6, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %second) #8, !dbg !2249
  call void @llvm.lifetime.end.p0(i64 8, ptr %first) #8, !dbg !2249
  %10 = load i32, ptr %retval, align 4, !dbg !2249
  ret i32 %10, !dbg !2249
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define internal i64 @ngx_stream_upstream_get_chash_peer(ptr noundef %pc, ptr noundef %data) #0 !dbg !2250 {
entry:
  %retval = alloca i64, align 8
  %pc.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %hp = alloca ptr, align 8
  %now = alloca i64, align 8
  %m = alloca i64, align 8
  %server = alloca ptr, align 8
  %total = alloca i64, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %best_i = alloca i64, align 8
  %peer = alloca ptr, align 8
  %best = alloca ptr, align 8
  %point = alloca ptr, align 8
  %points = alloca ptr, align 8
  %hcf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pc, ptr %pc.addr, align 8, !tbaa !711
  tail call void @llvm.dbg.declare(metadata ptr %pc.addr, metadata !2252, metadata !DIExpression()), !dbg !2267
  store ptr %data, ptr %data.addr, align 8, !tbaa !711
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !2253, metadata !DIExpression()), !dbg !2268
  call void @llvm.lifetime.start.p0(i64 8, ptr %hp) #8, !dbg !2269
  tail call void @llvm.dbg.declare(metadata ptr %hp, metadata !2254, metadata !DIExpression()), !dbg !2270
  %0 = load ptr, ptr %data.addr, align 8, !dbg !2271, !tbaa !711
  store ptr %0, ptr %hp, align 8, !dbg !2270, !tbaa !711
  call void @llvm.lifetime.start.p0(i64 8, ptr %now) #8, !dbg !2272
  tail call void @llvm.dbg.declare(metadata ptr %now, metadata !2255, metadata !DIExpression()), !dbg !2273
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #8, !dbg !2274
  tail call void @llvm.dbg.declare(metadata ptr %m, metadata !2256, metadata !DIExpression()), !dbg !2275
  call void @llvm.lifetime.start.p0(i64 8, ptr %server) #8, !dbg !2276
  tail call void @llvm.dbg.declare(metadata ptr %server, metadata !2257, metadata !DIExpression()), !dbg !2277
  call void @llvm.lifetime.start.p0(i64 8, ptr %total) #8, !dbg !2278
  tail call void @llvm.dbg.declare(metadata ptr %total, metadata !2258, metadata !DIExpression()), !dbg !2279
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #8, !dbg !2280
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2259, metadata !DIExpression()), !dbg !2281
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #8, !dbg !2280
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !2260, metadata !DIExpression()), !dbg !2282
  call void @llvm.lifetime.start.p0(i64 8, ptr %best_i) #8, !dbg !2280
  tail call void @llvm.dbg.declare(metadata ptr %best_i, metadata !2261, metadata !DIExpression()), !dbg !2283
  call void @llvm.lifetime.start.p0(i64 8, ptr %peer) #8, !dbg !2284
  tail call void @llvm.dbg.declare(metadata ptr %peer, metadata !2262, metadata !DIExpression()), !dbg !2285
  call void @llvm.lifetime.start.p0(i64 8, ptr %best) #8, !dbg !2284
  tail call void @llvm.dbg.declare(metadata ptr %best, metadata !2263, metadata !DIExpression()), !dbg !2286
  call void @llvm.lifetime.start.p0(i64 8, ptr %point) #8, !dbg !2287
  tail call void @llvm.dbg.declare(metadata ptr %point, metadata !2264, metadata !DIExpression()), !dbg !2288
  call void @llvm.lifetime.start.p0(i64 8, ptr %points) #8, !dbg !2289
  tail call void @llvm.dbg.declare(metadata ptr %points, metadata !2265, metadata !DIExpression()), !dbg !2290
  call void @llvm.lifetime.start.p0(i64 8, ptr %hcf) #8, !dbg !2291
  tail call void @llvm.dbg.declare(metadata ptr %hcf, metadata !2266, metadata !DIExpression()), !dbg !2292
  %1 = load ptr, ptr %hp, align 8, !dbg !2293, !tbaa !711
  %rrp = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %1, i32 0, i32 0, !dbg !2293
  %peers = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_data_t, ptr %rrp, i32 0, i32 1, !dbg !2293
  %2 = load ptr, ptr %peers, align 8, !dbg !2293, !tbaa !1816
  %shpool = getelementptr inbounds %struct.ngx_stream_upstream_rr_peers_s, ptr %2, i32 0, i32 1, !dbg !2293
  %3 = load ptr, ptr %shpool, align 8, !dbg !2293, !tbaa !1817
  %tobool = icmp ne ptr %3, null, !dbg !2293
  br i1 %tobool, label %if.then, label %if.end, !dbg !2295

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %hp, align 8, !dbg !2296, !tbaa !711
  %rrp1 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %4, i32 0, i32 0, !dbg !2296
  %peers2 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_data_t, ptr %rrp1, i32 0, i32 1, !dbg !2296
  %5 = load ptr, ptr %peers2, align 8, !dbg !2296, !tbaa !1816
  %rwlock = getelementptr inbounds %struct.ngx_stream_upstream_rr_peers_s, ptr %5, i32 0, i32 2, !dbg !2296
  call void @ngx_rwlock_wlock(ptr noundef %rwlock), !dbg !2296
  br label %if.end, !dbg !2296

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %hp, align 8, !dbg !2298, !tbaa !711
  %tries = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %6, i32 0, i32 3, !dbg !2300
  %7 = load i64, ptr %tries, align 8, !dbg !2300, !tbaa !1755
  %cmp = icmp ugt i64 %7, 20, !dbg !2301
  br i1 %cmp, label %if.then6, label %lor.lhs.false, !dbg !2302

lor.lhs.false:                                    ; preds = %if.end
  %8 = load ptr, ptr %hp, align 8, !dbg !2303, !tbaa !711
  %rrp3 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %8, i32 0, i32 0, !dbg !2304
  %peers4 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_data_t, ptr %rrp3, i32 0, i32 1, !dbg !2305
  %9 = load ptr, ptr %peers4, align 8, !dbg !2305, !tbaa !1816
  %single = getelementptr inbounds %struct.ngx_stream_upstream_rr_peers_s, ptr %9, i32 0, i32 5, !dbg !2306
  %bf.load = load i8, ptr %single, align 8, !dbg !2306
  %bf.clear = and i8 %bf.load, 1, !dbg !2306
  %bf.cast = zext i8 %bf.clear to i32, !dbg !2306
  %tobool5 = icmp ne i32 %bf.cast, 0, !dbg !2303
  br i1 %tobool5, label %if.then6, label %if.end17, !dbg !2307

if.then6:                                         ; preds = %lor.lhs.false, %if.end
  %10 = load ptr, ptr %hp, align 8, !dbg !2308, !tbaa !711
  %rrp7 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %10, i32 0, i32 0, !dbg !2308
  %peers8 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_data_t, ptr %rrp7, i32 0, i32 1, !dbg !2308
  %11 = load ptr, ptr %peers8, align 8, !dbg !2308, !tbaa !1816
  %shpool9 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peers_s, ptr %11, i32 0, i32 1, !dbg !2308
  %12 = load ptr, ptr %shpool9, align 8, !dbg !2308, !tbaa !1817
  %tobool10 = icmp ne ptr %12, null, !dbg !2308
  br i1 %tobool10, label %if.then11, label %if.end15, !dbg !2311

if.then11:                                        ; preds = %if.then6
  %13 = load ptr, ptr %hp, align 8, !dbg !2312, !tbaa !711
  %rrp12 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %13, i32 0, i32 0, !dbg !2312
  %peers13 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_data_t, ptr %rrp12, i32 0, i32 1, !dbg !2312
  %14 = load ptr, ptr %peers13, align 8, !dbg !2312, !tbaa !1816
  %rwlock14 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peers_s, ptr %14, i32 0, i32 2, !dbg !2312
  call void @ngx_rwlock_unlock(ptr noundef %rwlock14), !dbg !2312
  br label %if.end15, !dbg !2312

if.end15:                                         ; preds = %if.then11, %if.then6
  %15 = load ptr, ptr %hp, align 8, !dbg !2314, !tbaa !711
  %get_rr_peer = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %15, i32 0, i32 6, !dbg !2315
  %16 = load ptr, ptr %get_rr_peer, align 8, !dbg !2315, !tbaa !1767
  %17 = load ptr, ptr %pc.addr, align 8, !dbg !2316, !tbaa !711
  %18 = load ptr, ptr %hp, align 8, !dbg !2317, !tbaa !711
  %rrp16 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %18, i32 0, i32 0, !dbg !2318
  %call = call i64 %16(ptr noundef %17, ptr noundef %rrp16), !dbg !2314
  store i64 %call, ptr %retval, align 8, !dbg !2319
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2319

if.end17:                                         ; preds = %lor.lhs.false
  %19 = load ptr, ptr %pc.addr, align 8, !dbg !2320, !tbaa !711
  %connection = getelementptr inbounds %struct.ngx_peer_connection_s, ptr %19, i32 0, i32 0, !dbg !2321
  store ptr null, ptr %connection, align 8, !dbg !2322, !tbaa !1850
  %20 = load ptr, ptr @ngx_cached_time, align 8, !dbg !2323, !tbaa !711
  %sec = getelementptr inbounds %struct.ngx_time_t, ptr %20, i32 0, i32 0, !dbg !2323
  %21 = load volatile i64, ptr %sec, align 8, !dbg !2323, !tbaa !1844
  store i64 %21, ptr %now, align 8, !dbg !2324, !tbaa !1413
  %22 = load ptr, ptr %hp, align 8, !dbg !2325, !tbaa !711
  %conf = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %22, i32 0, i32 1, !dbg !2326
  %23 = load ptr, ptr %conf, align 8, !dbg !2326, !tbaa !1749
  store ptr %23, ptr %hcf, align 8, !dbg !2327, !tbaa !711
  %24 = load ptr, ptr %hcf, align 8, !dbg !2328, !tbaa !711
  %points18 = getelementptr inbounds %struct.ngx_stream_upstream_hash_srv_conf_t, ptr %24, i32 0, i32 1, !dbg !2329
  %25 = load ptr, ptr %points18, align 8, !dbg !2329, !tbaa !734
  store ptr %25, ptr %points, align 8, !dbg !2330, !tbaa !711
  %26 = load ptr, ptr %points, align 8, !dbg !2331, !tbaa !711
  %point19 = getelementptr inbounds %struct.ngx_stream_upstream_chash_points_t, ptr %26, i32 0, i32 1, !dbg !2332
  %arrayidx = getelementptr inbounds [1 x %struct.ngx_stream_upstream_chash_point_t], ptr %point19, i64 0, i64 0, !dbg !2331
  store ptr %arrayidx, ptr %point, align 8, !dbg !2333, !tbaa !711
  br label %for.cond, !dbg !2334

for.cond:                                         ; preds = %if.end109, %if.end17
  %27 = load ptr, ptr %point, align 8, !dbg !2335, !tbaa !711
  %28 = load ptr, ptr %hp, align 8, !dbg !2339, !tbaa !711
  %hash = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %28, i32 0, i32 5, !dbg !2340
  %29 = load i32, ptr %hash, align 8, !dbg !2340, !tbaa !1763
  %conv = zext i32 %29 to i64, !dbg !2339
  %30 = load ptr, ptr %points, align 8, !dbg !2341, !tbaa !711
  %number = getelementptr inbounds %struct.ngx_stream_upstream_chash_points_t, ptr %30, i32 0, i32 0, !dbg !2342
  %31 = load i64, ptr %number, align 8, !dbg !2342, !tbaa !1433
  %rem = urem i64 %conv, %31, !dbg !2343
  %arrayidx20 = getelementptr inbounds %struct.ngx_stream_upstream_chash_point_t, ptr %27, i64 %rem, !dbg !2335
  %server21 = getelementptr inbounds %struct.ngx_stream_upstream_chash_point_t, ptr %arrayidx20, i32 0, i32 1, !dbg !2344
  %32 = load ptr, ptr %server21, align 8, !dbg !2344, !tbaa !1583
  store ptr %32, ptr %server, align 8, !dbg !2345, !tbaa !711
  store ptr null, ptr %best, align 8, !dbg !2346, !tbaa !711
  store i64 0, ptr %best_i, align 8, !dbg !2347, !tbaa !1413
  store i64 0, ptr %total, align 8, !dbg !2348, !tbaa !1413
  %33 = load ptr, ptr %hp, align 8, !dbg !2349, !tbaa !711
  %rrp22 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %33, i32 0, i32 0, !dbg !2351
  %peers23 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_data_t, ptr %rrp22, i32 0, i32 1, !dbg !2352
  %34 = load ptr, ptr %peers23, align 8, !dbg !2352, !tbaa !1816
  %peer24 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peers_s, ptr %34, i32 0, i32 8, !dbg !2353
  %35 = load ptr, ptr %peer24, align 8, !dbg !2353, !tbaa !1437
  store ptr %35, ptr %peer, align 8, !dbg !2354, !tbaa !711
  store i64 0, ptr %i, align 8, !dbg !2355, !tbaa !1413
  br label %for.cond25, !dbg !2356

for.cond25:                                       ; preds = %for.inc, %for.cond
  %36 = load ptr, ptr %peer, align 8, !dbg !2357, !tbaa !711
  %tobool26 = icmp ne ptr %36, null, !dbg !2359
  br i1 %tobool26, label %for.body, label %for.end, !dbg !2359

for.body:                                         ; preds = %for.cond25
  %37 = load i64, ptr %i, align 8, !dbg !2360, !tbaa !1413
  %div = udiv i64 %37, 64, !dbg !2362
  store i64 %div, ptr %n, align 8, !dbg !2363, !tbaa !1413
  %38 = load i64, ptr %i, align 8, !dbg !2364, !tbaa !1413
  %rem27 = urem i64 %38, 64, !dbg !2365
  %shl = shl i64 1, %rem27, !dbg !2366
  store i64 %shl, ptr %m, align 8, !dbg !2367, !tbaa !1413
  %39 = load ptr, ptr %hp, align 8, !dbg !2368, !tbaa !711
  %rrp28 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %39, i32 0, i32 0, !dbg !2370
  %tried = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_data_t, ptr %rrp28, i32 0, i32 3, !dbg !2371
  %40 = load ptr, ptr %tried, align 8, !dbg !2371, !tbaa !1931
  %41 = load i64, ptr %n, align 8, !dbg !2372, !tbaa !1413
  %arrayidx29 = getelementptr inbounds i64, ptr %40, i64 %41, !dbg !2368
  %42 = load i64, ptr %arrayidx29, align 8, !dbg !2368, !tbaa !1413
  %43 = load i64, ptr %m, align 8, !dbg !2373, !tbaa !1413
  %and = and i64 %42, %43, !dbg !2374
  %tobool30 = icmp ne i64 %and, 0, !dbg !2374
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !2375

if.then31:                                        ; preds = %for.body
  br label %for.inc, !dbg !2376

if.end32:                                         ; preds = %for.body
  %44 = load ptr, ptr %peer, align 8, !dbg !2378, !tbaa !711
  %down = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %44, i32 0, i32 16, !dbg !2380
  %45 = load i64, ptr %down, align 8, !dbg !2380, !tbaa !1946
  %tobool33 = icmp ne i64 %45, 0, !dbg !2378
  br i1 %tobool33, label %if.then34, label %if.end35, !dbg !2381

if.then34:                                        ; preds = %if.end32
  br label %for.inc, !dbg !2382

if.end35:                                         ; preds = %if.end32
  %46 = load ptr, ptr %peer, align 8, !dbg !2384, !tbaa !711
  %max_fails = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %46, i32 0, i32 12, !dbg !2386
  %47 = load i64, ptr %max_fails, align 8, !dbg !2386, !tbaa !1958
  %tobool36 = icmp ne i64 %47, 0, !dbg !2384
  br i1 %tobool36, label %land.lhs.true, label %if.end44, !dbg !2387

land.lhs.true:                                    ; preds = %if.end35
  %48 = load ptr, ptr %peer, align 8, !dbg !2388, !tbaa !711
  %fails = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %48, i32 0, i32 9, !dbg !2389
  %49 = load i64, ptr %fails, align 8, !dbg !2389, !tbaa !1962
  %50 = load ptr, ptr %peer, align 8, !dbg !2390, !tbaa !711
  %max_fails37 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %50, i32 0, i32 12, !dbg !2391
  %51 = load i64, ptr %max_fails37, align 8, !dbg !2391, !tbaa !1958
  %cmp38 = icmp uge i64 %49, %51, !dbg !2392
  br i1 %cmp38, label %land.lhs.true40, label %if.end44, !dbg !2393

land.lhs.true40:                                  ; preds = %land.lhs.true
  %52 = load i64, ptr %now, align 8, !dbg !2394, !tbaa !1413
  %53 = load ptr, ptr %peer, align 8, !dbg !2395, !tbaa !711
  %checked = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %53, i32 0, i32 11, !dbg !2396
  %54 = load i64, ptr %checked, align 8, !dbg !2396, !tbaa !1970
  %sub = sub nsw i64 %52, %54, !dbg !2397
  %55 = load ptr, ptr %peer, align 8, !dbg !2398, !tbaa !711
  %fail_timeout = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %55, i32 0, i32 13, !dbg !2399
  %56 = load i64, ptr %fail_timeout, align 8, !dbg !2399, !tbaa !1974
  %cmp41 = icmp sle i64 %sub, %56, !dbg !2400
  br i1 %cmp41, label %if.then43, label %if.end44, !dbg !2401

if.then43:                                        ; preds = %land.lhs.true40
  br label %for.inc, !dbg !2402

if.end44:                                         ; preds = %land.lhs.true40, %land.lhs.true, %if.end35
  %57 = load ptr, ptr %peer, align 8, !dbg !2404, !tbaa !711
  %max_conns = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %57, i32 0, i32 8, !dbg !2406
  %58 = load i64, ptr %max_conns, align 8, !dbg !2406, !tbaa !1987
  %tobool45 = icmp ne i64 %58, 0, !dbg !2404
  br i1 %tobool45, label %land.lhs.true46, label %if.end51, !dbg !2407

land.lhs.true46:                                  ; preds = %if.end44
  %59 = load ptr, ptr %peer, align 8, !dbg !2408, !tbaa !711
  %conns = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %59, i32 0, i32 7, !dbg !2409
  %60 = load i64, ptr %conns, align 8, !dbg !2409, !tbaa !1991
  %61 = load ptr, ptr %peer, align 8, !dbg !2410, !tbaa !711
  %max_conns47 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %61, i32 0, i32 8, !dbg !2411
  %62 = load i64, ptr %max_conns47, align 8, !dbg !2411, !tbaa !1987
  %cmp48 = icmp uge i64 %60, %62, !dbg !2412
  br i1 %cmp48, label %if.then50, label %if.end51, !dbg !2413

if.then50:                                        ; preds = %land.lhs.true46
  br label %for.inc, !dbg !2414

if.end51:                                         ; preds = %land.lhs.true46, %if.end44
  %63 = load ptr, ptr %peer, align 8, !dbg !2416, !tbaa !711
  %server52 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %63, i32 0, i32 3, !dbg !2418
  %len = getelementptr inbounds %struct.ngx_str_t, ptr %server52, i32 0, i32 0, !dbg !2419
  %64 = load i64, ptr %len, align 8, !dbg !2419, !tbaa !2420
  %65 = load ptr, ptr %server, align 8, !dbg !2421, !tbaa !711
  %len53 = getelementptr inbounds %struct.ngx_str_t, ptr %65, i32 0, i32 0, !dbg !2422
  %66 = load i64, ptr %len53, align 8, !dbg !2422, !tbaa !1448
  %cmp54 = icmp ne i64 %64, %66, !dbg !2423
  br i1 %cmp54, label %if.then64, label %lor.lhs.false56, !dbg !2424

lor.lhs.false56:                                  ; preds = %if.end51
  %67 = load ptr, ptr %peer, align 8, !dbg !2425, !tbaa !711
  %server57 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %67, i32 0, i32 3, !dbg !2425
  %data58 = getelementptr inbounds %struct.ngx_str_t, ptr %server57, i32 0, i32 1, !dbg !2425
  %68 = load ptr, ptr %data58, align 8, !dbg !2425, !tbaa !2426
  %69 = load ptr, ptr %server, align 8, !dbg !2425, !tbaa !711
  %data59 = getelementptr inbounds %struct.ngx_str_t, ptr %69, i32 0, i32 1, !dbg !2425
  %70 = load ptr, ptr %data59, align 8, !dbg !2425, !tbaa !1182
  %71 = load ptr, ptr %server, align 8, !dbg !2425, !tbaa !711
  %len60 = getelementptr inbounds %struct.ngx_str_t, ptr %71, i32 0, i32 0, !dbg !2425
  %72 = load i64, ptr %len60, align 8, !dbg !2425, !tbaa !1448
  %call61 = call i32 @strncmp(ptr noundef %68, ptr noundef %70, i64 noundef %72) #9, !dbg !2425
  %cmp62 = icmp ne i32 %call61, 0, !dbg !2427
  br i1 %cmp62, label %if.then64, label %if.end65, !dbg !2428

if.then64:                                        ; preds = %lor.lhs.false56, %if.end51
  br label %for.inc, !dbg !2429

if.end65:                                         ; preds = %lor.lhs.false56
  %73 = load ptr, ptr %peer, align 8, !dbg !2431, !tbaa !711
  %effective_weight = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %73, i32 0, i32 5, !dbg !2432
  %74 = load i64, ptr %effective_weight, align 8, !dbg !2432, !tbaa !2433
  %75 = load ptr, ptr %peer, align 8, !dbg !2434, !tbaa !711
  %current_weight = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %75, i32 0, i32 4, !dbg !2435
  %76 = load i64, ptr %current_weight, align 8, !dbg !2436, !tbaa !2437
  %add = add nsw i64 %76, %74, !dbg !2436
  store i64 %add, ptr %current_weight, align 8, !dbg !2436, !tbaa !2437
  %77 = load ptr, ptr %peer, align 8, !dbg !2438, !tbaa !711
  %effective_weight66 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %77, i32 0, i32 5, !dbg !2439
  %78 = load i64, ptr %effective_weight66, align 8, !dbg !2439, !tbaa !2433
  %79 = load i64, ptr %total, align 8, !dbg !2440, !tbaa !1413
  %add67 = add nsw i64 %79, %78, !dbg !2440
  store i64 %add67, ptr %total, align 8, !dbg !2440, !tbaa !1413
  %80 = load ptr, ptr %peer, align 8, !dbg !2441, !tbaa !711
  %effective_weight68 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %80, i32 0, i32 5, !dbg !2443
  %81 = load i64, ptr %effective_weight68, align 8, !dbg !2443, !tbaa !2433
  %82 = load ptr, ptr %peer, align 8, !dbg !2444, !tbaa !711
  %weight = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %82, i32 0, i32 6, !dbg !2445
  %83 = load i64, ptr %weight, align 8, !dbg !2445, !tbaa !1549
  %cmp69 = icmp slt i64 %81, %83, !dbg !2446
  br i1 %cmp69, label %if.then71, label %if.end73, !dbg !2447

if.then71:                                        ; preds = %if.end65
  %84 = load ptr, ptr %peer, align 8, !dbg !2448, !tbaa !711
  %effective_weight72 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %84, i32 0, i32 5, !dbg !2450
  %85 = load i64, ptr %effective_weight72, align 8, !dbg !2451, !tbaa !2433
  %inc = add nsw i64 %85, 1, !dbg !2451
  store i64 %inc, ptr %effective_weight72, align 8, !dbg !2451, !tbaa !2433
  br label %if.end73, !dbg !2452

if.end73:                                         ; preds = %if.then71, %if.end65
  %86 = load ptr, ptr %best, align 8, !dbg !2453, !tbaa !711
  %cmp74 = icmp eq ptr %86, null, !dbg !2455
  br i1 %cmp74, label %if.then81, label %lor.lhs.false76, !dbg !2456

lor.lhs.false76:                                  ; preds = %if.end73
  %87 = load ptr, ptr %peer, align 8, !dbg !2457, !tbaa !711
  %current_weight77 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %87, i32 0, i32 4, !dbg !2458
  %88 = load i64, ptr %current_weight77, align 8, !dbg !2458, !tbaa !2437
  %89 = load ptr, ptr %best, align 8, !dbg !2459, !tbaa !711
  %current_weight78 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %89, i32 0, i32 4, !dbg !2460
  %90 = load i64, ptr %current_weight78, align 8, !dbg !2460, !tbaa !2437
  %cmp79 = icmp sgt i64 %88, %90, !dbg !2461
  br i1 %cmp79, label %if.then81, label %if.end82, !dbg !2462

if.then81:                                        ; preds = %lor.lhs.false76, %if.end73
  %91 = load ptr, ptr %peer, align 8, !dbg !2463, !tbaa !711
  store ptr %91, ptr %best, align 8, !dbg !2465, !tbaa !711
  %92 = load i64, ptr %i, align 8, !dbg !2466, !tbaa !1413
  store i64 %92, ptr %best_i, align 8, !dbg !2467, !tbaa !1413
  br label %if.end82, !dbg !2468

if.end82:                                         ; preds = %if.then81, %lor.lhs.false76
  br label %for.inc, !dbg !2469

for.inc:                                          ; preds = %if.end82, %if.then64, %if.then50, %if.then43, %if.then34, %if.then31
  %93 = load ptr, ptr %peer, align 8, !dbg !2470, !tbaa !711
  %next = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %93, i32 0, i32 20, !dbg !2471
  %94 = load ptr, ptr %next, align 8, !dbg !2471, !tbaa !1597
  store ptr %94, ptr %peer, align 8, !dbg !2472, !tbaa !711
  %95 = load i64, ptr %i, align 8, !dbg !2473, !tbaa !1413
  %inc83 = add i64 %95, 1, !dbg !2473
  store i64 %inc83, ptr %i, align 8, !dbg !2473, !tbaa !1413
  br label %for.cond25, !dbg !2474, !llvm.loop !2475

for.end:                                          ; preds = %for.cond25
  %96 = load ptr, ptr %best, align 8, !dbg !2477, !tbaa !711
  %tobool84 = icmp ne ptr %96, null, !dbg !2477
  br i1 %tobool84, label %if.then85, label %if.end88, !dbg !2479

if.then85:                                        ; preds = %for.end
  %97 = load i64, ptr %total, align 8, !dbg !2480, !tbaa !1413
  %98 = load ptr, ptr %best, align 8, !dbg !2482, !tbaa !711
  %current_weight86 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %98, i32 0, i32 4, !dbg !2483
  %99 = load i64, ptr %current_weight86, align 8, !dbg !2484, !tbaa !2437
  %sub87 = sub nsw i64 %99, %97, !dbg !2484
  store i64 %sub87, ptr %current_weight86, align 8, !dbg !2484, !tbaa !2437
  br label %for.end110, !dbg !2485

if.end88:                                         ; preds = %for.end
  %100 = load ptr, ptr %hp, align 8, !dbg !2486, !tbaa !711
  %hash89 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %100, i32 0, i32 5, !dbg !2487
  %101 = load i32, ptr %hash89, align 8, !dbg !2488, !tbaa !1763
  %inc90 = add i32 %101, 1, !dbg !2488
  store i32 %inc90, ptr %hash89, align 8, !dbg !2488, !tbaa !1763
  %102 = load ptr, ptr %hp, align 8, !dbg !2489, !tbaa !711
  %tries91 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %102, i32 0, i32 3, !dbg !2490
  %103 = load i64, ptr %tries91, align 8, !dbg !2491, !tbaa !1755
  %inc92 = add i64 %103, 1, !dbg !2491
  store i64 %inc92, ptr %tries91, align 8, !dbg !2491, !tbaa !1755
  %104 = load ptr, ptr %hp, align 8, !dbg !2492, !tbaa !711
  %tries93 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %104, i32 0, i32 3, !dbg !2494
  %105 = load i64, ptr %tries93, align 8, !dbg !2494, !tbaa !1755
  %cmp94 = icmp ugt i64 %105, 20, !dbg !2495
  br i1 %cmp94, label %if.then96, label %if.end109, !dbg !2496

if.then96:                                        ; preds = %if.end88
  %106 = load ptr, ptr %hp, align 8, !dbg !2497, !tbaa !711
  %rrp97 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %106, i32 0, i32 0, !dbg !2497
  %peers98 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_data_t, ptr %rrp97, i32 0, i32 1, !dbg !2497
  %107 = load ptr, ptr %peers98, align 8, !dbg !2497, !tbaa !1816
  %shpool99 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peers_s, ptr %107, i32 0, i32 1, !dbg !2497
  %108 = load ptr, ptr %shpool99, align 8, !dbg !2497, !tbaa !1817
  %tobool100 = icmp ne ptr %108, null, !dbg !2497
  br i1 %tobool100, label %if.then101, label %if.end105, !dbg !2500

if.then101:                                       ; preds = %if.then96
  %109 = load ptr, ptr %hp, align 8, !dbg !2501, !tbaa !711
  %rrp102 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %109, i32 0, i32 0, !dbg !2501
  %peers103 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_data_t, ptr %rrp102, i32 0, i32 1, !dbg !2501
  %110 = load ptr, ptr %peers103, align 8, !dbg !2501, !tbaa !1816
  %rwlock104 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peers_s, ptr %110, i32 0, i32 2, !dbg !2501
  call void @ngx_rwlock_unlock(ptr noundef %rwlock104), !dbg !2501
  br label %if.end105, !dbg !2501

if.end105:                                        ; preds = %if.then101, %if.then96
  %111 = load ptr, ptr %hp, align 8, !dbg !2503, !tbaa !711
  %get_rr_peer106 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %111, i32 0, i32 6, !dbg !2504
  %112 = load ptr, ptr %get_rr_peer106, align 8, !dbg !2504, !tbaa !1767
  %113 = load ptr, ptr %pc.addr, align 8, !dbg !2505, !tbaa !711
  %114 = load ptr, ptr %hp, align 8, !dbg !2506, !tbaa !711
  %rrp107 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %114, i32 0, i32 0, !dbg !2507
  %call108 = call i64 %112(ptr noundef %113, ptr noundef %rrp107), !dbg !2503
  store i64 %call108, ptr %retval, align 8, !dbg !2508
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2508

if.end109:                                        ; preds = %if.end88
  br label %for.cond, !dbg !2509, !llvm.loop !2510

for.end110:                                       ; preds = %if.then85
  %115 = load ptr, ptr %best, align 8, !dbg !2513, !tbaa !711
  %116 = load ptr, ptr %hp, align 8, !dbg !2514, !tbaa !711
  %rrp111 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %116, i32 0, i32 0, !dbg !2515
  %current = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_data_t, ptr %rrp111, i32 0, i32 2, !dbg !2516
  store ptr %115, ptr %current, align 8, !dbg !2517, !tbaa !2032
  %117 = load ptr, ptr %best, align 8, !dbg !2518, !tbaa !711
  %sockaddr = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %117, i32 0, i32 0, !dbg !2519
  %118 = load ptr, ptr %sockaddr, align 8, !dbg !2519, !tbaa !2035
  %119 = load ptr, ptr %pc.addr, align 8, !dbg !2520, !tbaa !711
  %sockaddr112 = getelementptr inbounds %struct.ngx_peer_connection_s, ptr %119, i32 0, i32 1, !dbg !2521
  store ptr %118, ptr %sockaddr112, align 8, !dbg !2522, !tbaa !2039
  %120 = load ptr, ptr %best, align 8, !dbg !2523, !tbaa !711
  %socklen = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %120, i32 0, i32 1, !dbg !2524
  %121 = load i32, ptr %socklen, align 8, !dbg !2524, !tbaa !2042
  %122 = load ptr, ptr %pc.addr, align 8, !dbg !2525, !tbaa !711
  %socklen113 = getelementptr inbounds %struct.ngx_peer_connection_s, ptr %122, i32 0, i32 2, !dbg !2526
  store i32 %121, ptr %socklen113, align 8, !dbg !2527, !tbaa !2046
  %123 = load ptr, ptr %best, align 8, !dbg !2528, !tbaa !711
  %name = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %123, i32 0, i32 2, !dbg !2529
  %124 = load ptr, ptr %pc.addr, align 8, !dbg !2530, !tbaa !711
  %name114 = getelementptr inbounds %struct.ngx_peer_connection_s, ptr %124, i32 0, i32 3, !dbg !2531
  store ptr %name, ptr %name114, align 8, !dbg !2532, !tbaa !2052
  %125 = load ptr, ptr %best, align 8, !dbg !2533, !tbaa !711
  %conns115 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %125, i32 0, i32 7, !dbg !2534
  %126 = load i64, ptr %conns115, align 8, !dbg !2535, !tbaa !1991
  %inc116 = add i64 %126, 1, !dbg !2535
  store i64 %inc116, ptr %conns115, align 8, !dbg !2535, !tbaa !1991
  %127 = load i64, ptr %now, align 8, !dbg !2536, !tbaa !1413
  %128 = load ptr, ptr %best, align 8, !dbg !2538, !tbaa !711
  %checked117 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %128, i32 0, i32 11, !dbg !2539
  %129 = load i64, ptr %checked117, align 8, !dbg !2539, !tbaa !1970
  %sub118 = sub nsw i64 %127, %129, !dbg !2540
  %130 = load ptr, ptr %best, align 8, !dbg !2541, !tbaa !711
  %fail_timeout119 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %130, i32 0, i32 13, !dbg !2542
  %131 = load i64, ptr %fail_timeout119, align 8, !dbg !2542, !tbaa !1974
  %cmp120 = icmp sgt i64 %sub118, %131, !dbg !2543
  br i1 %cmp120, label %if.then122, label %if.end124, !dbg !2544

if.then122:                                       ; preds = %for.end110
  %132 = load i64, ptr %now, align 8, !dbg !2545, !tbaa !1413
  %133 = load ptr, ptr %best, align 8, !dbg !2547, !tbaa !711
  %checked123 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_s, ptr %133, i32 0, i32 11, !dbg !2548
  store i64 %132, ptr %checked123, align 8, !dbg !2549, !tbaa !1970
  br label %if.end124, !dbg !2550

if.end124:                                        ; preds = %if.then122, %for.end110
  %134 = load ptr, ptr %hp, align 8, !dbg !2551, !tbaa !711
  %rrp125 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %134, i32 0, i32 0, !dbg !2551
  %peers126 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_data_t, ptr %rrp125, i32 0, i32 1, !dbg !2551
  %135 = load ptr, ptr %peers126, align 8, !dbg !2551, !tbaa !1816
  %shpool127 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peers_s, ptr %135, i32 0, i32 1, !dbg !2551
  %136 = load ptr, ptr %shpool127, align 8, !dbg !2551, !tbaa !1817
  %tobool128 = icmp ne ptr %136, null, !dbg !2551
  br i1 %tobool128, label %if.then129, label %if.end133, !dbg !2553

if.then129:                                       ; preds = %if.end124
  %137 = load ptr, ptr %hp, align 8, !dbg !2554, !tbaa !711
  %rrp130 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %137, i32 0, i32 0, !dbg !2554
  %peers131 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_data_t, ptr %rrp130, i32 0, i32 1, !dbg !2554
  %138 = load ptr, ptr %peers131, align 8, !dbg !2554, !tbaa !1816
  %rwlock132 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peers_s, ptr %138, i32 0, i32 2, !dbg !2554
  call void @ngx_rwlock_unlock(ptr noundef %rwlock132), !dbg !2554
  br label %if.end133, !dbg !2554

if.end133:                                        ; preds = %if.then129, %if.end124
  %139 = load i64, ptr %best_i, align 8, !dbg !2556, !tbaa !1413
  %div134 = udiv i64 %139, 64, !dbg !2557
  store i64 %div134, ptr %n, align 8, !dbg !2558, !tbaa !1413
  %140 = load i64, ptr %best_i, align 8, !dbg !2559, !tbaa !1413
  %rem135 = urem i64 %140, 64, !dbg !2560
  %shl136 = shl i64 1, %rem135, !dbg !2561
  store i64 %shl136, ptr %m, align 8, !dbg !2562, !tbaa !1413
  %141 = load i64, ptr %m, align 8, !dbg !2563, !tbaa !1413
  %142 = load ptr, ptr %hp, align 8, !dbg !2564, !tbaa !711
  %rrp137 = getelementptr inbounds %struct.ngx_stream_upstream_hash_peer_data_t, ptr %142, i32 0, i32 0, !dbg !2565
  %tried138 = getelementptr inbounds %struct.ngx_stream_upstream_rr_peer_data_t, ptr %rrp137, i32 0, i32 3, !dbg !2566
  %143 = load ptr, ptr %tried138, align 8, !dbg !2566, !tbaa !1931
  %144 = load i64, ptr %n, align 8, !dbg !2567, !tbaa !1413
  %arrayidx139 = getelementptr inbounds i64, ptr %143, i64 %144, !dbg !2564
  %145 = load i64, ptr %arrayidx139, align 8, !dbg !2568, !tbaa !1413
  %or = or i64 %145, %141, !dbg !2568
  store i64 %or, ptr %arrayidx139, align 8, !dbg !2568, !tbaa !1413
  store i64 0, ptr %retval, align 8, !dbg !2569
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2569

cleanup:                                          ; preds = %if.end133, %if.end105, %if.end15
  call void @llvm.lifetime.end.p0(i64 8, ptr %hcf) #8, !dbg !2570
  call void @llvm.lifetime.end.p0(i64 8, ptr %points) #8, !dbg !2570
  call void @llvm.lifetime.end.p0(i64 8, ptr %point) #8, !dbg !2570
  call void @llvm.lifetime.end.p0(i64 8, ptr %best) #8, !dbg !2570
  call void @llvm.lifetime.end.p0(i64 8, ptr %peer) #8, !dbg !2570
  call void @llvm.lifetime.end.p0(i64 8, ptr %best_i) #8, !dbg !2570
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #8, !dbg !2570
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #8, !dbg !2570
  call void @llvm.lifetime.end.p0(i64 8, ptr %total) #8, !dbg !2570
  call void @llvm.lifetime.end.p0(i64 8, ptr %server) #8, !dbg !2570
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #8, !dbg !2570
  call void @llvm.lifetime.end.p0(i64 8, ptr %now) #8, !dbg !2570
  call void @llvm.lifetime.end.p0(i64 8, ptr %hp) #8, !dbg !2570
  %146 = load i64, ptr %retval, align 8, !dbg !2570
  ret i64 %146, !dbg !2570
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ngx_crc32_long(ptr noundef %p, i64 noundef %len) #5 !dbg !2571 {
entry:
  %p.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %crc = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8, !tbaa !711
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2575, metadata !DIExpression()), !dbg !2578
  store i64 %len, ptr %len.addr, align 8, !tbaa !1413
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !2576, metadata !DIExpression()), !dbg !2579
  call void @llvm.lifetime.start.p0(i64 4, ptr %crc) #8, !dbg !2580
  tail call void @llvm.dbg.declare(metadata ptr %crc, metadata !2577, metadata !DIExpression()), !dbg !2581
  store i32 -1, ptr %crc, align 4, !dbg !2582, !tbaa !1538
  br label %while.cond, !dbg !2583

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, ptr %len.addr, align 8, !dbg !2584, !tbaa !1413
  %dec = add i64 %0, -1, !dbg !2584
  store i64 %dec, ptr %len.addr, align 8, !dbg !2584, !tbaa !1413
  %tobool = icmp ne i64 %0, 0, !dbg !2583
  br i1 %tobool, label %while.body, label %while.end, !dbg !2583

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %crc, align 4, !dbg !2585, !tbaa !1538
  %2 = load ptr, ptr %p.addr, align 8, !dbg !2587, !tbaa !711
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i32 1, !dbg !2587
  store ptr %incdec.ptr, ptr %p.addr, align 8, !dbg !2587, !tbaa !711
  %3 = load i8, ptr %2, align 1, !dbg !2588, !tbaa !1485
  %conv = zext i8 %3 to i32, !dbg !2588
  %xor = xor i32 %1, %conv, !dbg !2589
  %and = and i32 %xor, 255, !dbg !2590
  %idxprom = zext i32 %and to i64, !dbg !2591
  %arrayidx = getelementptr inbounds [0 x i32], ptr @ngx_crc32_table256, i64 0, i64 %idxprom, !dbg !2591
  %4 = load i32, ptr %arrayidx, align 4, !dbg !2591, !tbaa !1538
  %5 = load i32, ptr %crc, align 4, !dbg !2592, !tbaa !1538
  %shr = lshr i32 %5, 8, !dbg !2593
  %xor1 = xor i32 %4, %shr, !dbg !2594
  store i32 %xor1, ptr %crc, align 4, !dbg !2595, !tbaa !1538
  br label %while.cond, !dbg !2583, !llvm.loop !2596

while.end:                                        ; preds = %while.cond
  %6 = load i32, ptr %crc, align 4, !dbg !2598, !tbaa !1538
  %xor2 = xor i32 %6, -1, !dbg !2599
  call void @llvm.lifetime.end.p0(i64 4, ptr %crc) #8, !dbg !2600
  ret i32 %xor2, !dbg !2601
}

; Function Attrs: nounwind uwtable
define internal i64 @ngx_stream_upstream_find_chash_point(ptr noundef %points, i32 noundef %hash) #0 !dbg !2602 {
entry:
  %retval = alloca i64, align 8
  %points.addr = alloca ptr, align 8
  %hash.addr = alloca i32, align 4
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  %point = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %points, ptr %points.addr, align 8, !tbaa !711
  tail call void @llvm.dbg.declare(metadata ptr %points.addr, metadata !2606, metadata !DIExpression()), !dbg !2612
  store i32 %hash, ptr %hash.addr, align 4, !tbaa !1538
  tail call void @llvm.dbg.declare(metadata ptr %hash.addr, metadata !2607, metadata !DIExpression()), !dbg !2613
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #8, !dbg !2614
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2608, metadata !DIExpression()), !dbg !2615
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #8, !dbg !2614
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !2609, metadata !DIExpression()), !dbg !2616
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #8, !dbg !2614
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !2610, metadata !DIExpression()), !dbg !2617
  call void @llvm.lifetime.start.p0(i64 8, ptr %point) #8, !dbg !2618
  tail call void @llvm.dbg.declare(metadata ptr %point, metadata !2611, metadata !DIExpression()), !dbg !2619
  %0 = load ptr, ptr %points.addr, align 8, !dbg !2620, !tbaa !711
  %point1 = getelementptr inbounds %struct.ngx_stream_upstream_chash_points_t, ptr %0, i32 0, i32 1, !dbg !2621
  %arrayidx = getelementptr inbounds [1 x %struct.ngx_stream_upstream_chash_point_t], ptr %point1, i64 0, i64 0, !dbg !2620
  store ptr %arrayidx, ptr %point, align 8, !dbg !2622, !tbaa !711
  store i64 0, ptr %i, align 8, !dbg !2623, !tbaa !1413
  %1 = load ptr, ptr %points.addr, align 8, !dbg !2624, !tbaa !711
  %number = getelementptr inbounds %struct.ngx_stream_upstream_chash_points_t, ptr %1, i32 0, i32 0, !dbg !2625
  %2 = load i64, ptr %number, align 8, !dbg !2625, !tbaa !1433
  store i64 %2, ptr %j, align 8, !dbg !2626, !tbaa !1413
  br label %while.cond, !dbg !2627

while.cond:                                       ; preds = %if.end11, %entry
  %3 = load i64, ptr %i, align 8, !dbg !2628, !tbaa !1413
  %4 = load i64, ptr %j, align 8, !dbg !2629, !tbaa !1413
  %cmp = icmp ult i64 %3, %4, !dbg !2630
  br i1 %cmp, label %while.body, label %while.end, !dbg !2627

while.body:                                       ; preds = %while.cond
  %5 = load i64, ptr %i, align 8, !dbg !2631, !tbaa !1413
  %6 = load i64, ptr %j, align 8, !dbg !2633, !tbaa !1413
  %add = add i64 %5, %6, !dbg !2634
  %div = udiv i64 %add, 2, !dbg !2635
  store i64 %div, ptr %k, align 8, !dbg !2636, !tbaa !1413
  %7 = load i32, ptr %hash.addr, align 4, !dbg !2637, !tbaa !1538
  %8 = load ptr, ptr %point, align 8, !dbg !2639, !tbaa !711
  %9 = load i64, ptr %k, align 8, !dbg !2640, !tbaa !1413
  %arrayidx2 = getelementptr inbounds %struct.ngx_stream_upstream_chash_point_t, ptr %8, i64 %9, !dbg !2639
  %hash3 = getelementptr inbounds %struct.ngx_stream_upstream_chash_point_t, ptr %arrayidx2, i32 0, i32 0, !dbg !2641
  %10 = load i32, ptr %hash3, align 8, !dbg !2641, !tbaa !1574
  %cmp4 = icmp ugt i32 %7, %10, !dbg !2642
  br i1 %cmp4, label %if.then, label %if.else, !dbg !2643

if.then:                                          ; preds = %while.body
  %11 = load i64, ptr %k, align 8, !dbg !2644, !tbaa !1413
  %add5 = add i64 %11, 1, !dbg !2646
  store i64 %add5, ptr %i, align 8, !dbg !2647, !tbaa !1413
  br label %if.end11, !dbg !2648

if.else:                                          ; preds = %while.body
  %12 = load i32, ptr %hash.addr, align 4, !dbg !2649, !tbaa !1538
  %13 = load ptr, ptr %point, align 8, !dbg !2651, !tbaa !711
  %14 = load i64, ptr %k, align 8, !dbg !2652, !tbaa !1413
  %arrayidx6 = getelementptr inbounds %struct.ngx_stream_upstream_chash_point_t, ptr %13, i64 %14, !dbg !2651
  %hash7 = getelementptr inbounds %struct.ngx_stream_upstream_chash_point_t, ptr %arrayidx6, i32 0, i32 0, !dbg !2653
  %15 = load i32, ptr %hash7, align 8, !dbg !2653, !tbaa !1574
  %cmp8 = icmp ult i32 %12, %15, !dbg !2654
  br i1 %cmp8, label %if.then9, label %if.else10, !dbg !2655

if.then9:                                         ; preds = %if.else
  %16 = load i64, ptr %k, align 8, !dbg !2656, !tbaa !1413
  store i64 %16, ptr %j, align 8, !dbg !2658, !tbaa !1413
  br label %if.end, !dbg !2659

if.else10:                                        ; preds = %if.else
  %17 = load i64, ptr %k, align 8, !dbg !2660, !tbaa !1413
  store i64 %17, ptr %retval, align 8, !dbg !2662
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2662

if.end:                                           ; preds = %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then
  br label %while.cond, !dbg !2627, !llvm.loop !2663

while.end:                                        ; preds = %while.cond
  %18 = load i64, ptr %i, align 8, !dbg !2665, !tbaa !1413
  store i64 %18, ptr %retval, align 8, !dbg !2666
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2666

cleanup:                                          ; preds = %while.end, %if.else10
  call void @llvm.lifetime.end.p0(i64 8, ptr %point) #8, !dbg !2667
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #8, !dbg !2667
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #8, !dbg !2667
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #8, !dbg !2667
  %19 = load i64, ptr %retval, align 8, !dbg !2667
  ret i64 %19, !dbg !2667
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !2668 i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!678, !679, !680, !681, !682, !683}
!llvm.ident = !{!684}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 92, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/stream/ngx_stream_upstream_hash_module.c", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "bf2af6eaba04b07ad6b2d23783acf78d")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 41)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "ngx_stream_upstream_hash_module_ctx", scope: !9, file: !2, line: 79, type: !657, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !10, globals: !52, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !16, !17, !23, !31, !13, !33}
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_uint_t", file: !12, line: 79, baseType: !13)
!12 = !DIFile(filename: "src/core/ngx_config.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "1030e66de4bc6fae79f292da1593286a")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !14, line: 90, baseType: !15)
!14 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!15 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !19, line: 33, baseType: !20)
!19 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !21, line: 31, baseType: !22)
!21 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!22 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_conf_ctx_t", file: !25, line: 41, baseType: !26)
!25 = !DIFile(filename: "src/stream/ngx_stream.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "5b43959b152802dd9a372cd63f29aa49")
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 38, size: 128, elements: !27)
!27 = !{!28, !30}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "main_conf", scope: !26, file: !25, line: 39, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "srv_conf", scope: !26, file: !25, line: 40, baseType: !29, size: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_upstream_chash_point_t", file: !2, line: 16, baseType: !35)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 13, size: 128, elements: !36)
!36 = !{!37, !42}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !35, file: !2, line: 14, baseType: !38, size: 32)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !39, line: 26, baseType: !40)
!39 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !21, line: 42, baseType: !41)
!41 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !35, file: !2, line: 15, baseType: !43, size: 64, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_str_t", file: !45, line: 19, baseType: !46)
!45 = !DIFile(filename: "src/core/ngx_string.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "aecf67ab89c624000ba2e2684dbcfdc8")
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 16, size: 128, elements: !47)
!47 = !{!48, !51}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !46, file: !45, line: 17, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !50, line: 29, baseType: !15)
!50 = !DIFile(filename: "/usr/include/glob.h", directory: "", checksumkind: CSK_MD5, checksum: "fe493b50b1dc220fe9bcfb4d648abdef")
!51 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !46, file: !45, line: 18, baseType: !17, size: 64, offset: 64)
!52 = !{!0, !53, !7, !617, !622, !627, !632, !637, !642, !647, !652}
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "ngx_stream_upstream_hash_module", scope: !9, file: !2, line: 91, type: !55, isLocal: false, isDefinition: true)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_module_t", file: !56, line: 15, baseType: !57)
!56 = !DIFile(filename: "src/core/ngx_core.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "1c4d8383f329aa1de050d17038ecb169")
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_module_s", file: !58, line: 222, size: 1600, elements: !59)
!58 = !DIFile(filename: "src/core/ngx_module.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "1b2032f87974a892f93f4098e8fc0619")
!59 = !{!60, !61, !62, !64, !65, !66, !67, !68, !69, !592, !593, !597, !601, !602, !603, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_index", scope: !57, file: !58, line: 223, baseType: !11, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !57, file: !58, line: 224, baseType: !11, size: 64, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !57, file: !58, line: 226, baseType: !63, size: 64, offset: 128)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "spare0", scope: !57, file: !58, line: 228, baseType: !11, size: 64, offset: 192)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "spare1", scope: !57, file: !58, line: 229, baseType: !11, size: 64, offset: 256)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !57, file: !58, line: 231, baseType: !11, size: 64, offset: 320)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !57, file: !58, line: 232, baseType: !31, size: 64, offset: 384)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !57, file: !58, line: 234, baseType: !16, size: 64, offset: 448)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !57, file: !58, line: 235, baseType: !70, size: 64, offset: 512)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_command_t", file: !56, line: 22, baseType: !72)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_command_s", file: !73, line: 77, size: 448, elements: !74)
!73 = !DIFile(filename: "src/core/ngx_conf_file.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "6ae6b72e2fd6bbb6ecc9de2e6386072c")
!74 = !{!75, !76, !77, !589, !590, !591}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !72, file: !73, line: 78, baseType: !44, size: 128)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !72, file: !73, line: 79, baseType: !11, size: 64, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !72, file: !73, line: 80, baseType: !78, size: 64, offset: 192)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DISubroutineType(types: !80)
!80 = !{!63, !81, !70, !16}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_conf_t", file: !56, line: 16, baseType: !83)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_conf_s", file: !73, line: 116, size: 768, elements: !84)
!84 = !{!85, !86, !261, !571, !572, !573, !582, !583, !584, !585, !586, !588}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !83, file: !73, line: 117, baseType: !63, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !83, file: !73, line: 118, baseType: !87, size: 64, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_array_t", file: !89, line: 22, baseType: !90)
!89 = !DIFile(filename: "src/core/ngx_array.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "225c765b8c2d594417b07329b35d9ae4")
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !89, line: 16, size: 320, elements: !91)
!91 = !{!92, !93, !94, !95, !96}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !90, file: !89, line: 17, baseType: !16, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "nelts", scope: !90, file: !89, line: 18, baseType: !11, size: 64, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !90, file: !89, line: 19, baseType: !49, size: 64, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "nalloc", scope: !90, file: !89, line: 20, baseType: !11, size: 64, offset: 192)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !90, file: !89, line: 21, baseType: !97, size: 64, offset: 256)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_t", file: !56, line: 18, baseType: !99)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_pool_s", file: !100, line: 57, size: 640, elements: !101)
!100 = !DIFile(filename: "src/core/ngx_palloc.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "6555a54b944797708293a47c3c8684b9")
!101 = !{!102, !110, !111, !112, !241, !248, !260}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !99, file: !100, line: 58, baseType: !103, size: 256)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_data_t", file: !100, line: 54, baseType: !104)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !100, line: 49, size: 256, elements: !105)
!105 = !{!106, !107, !108, !109}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !104, file: !100, line: 50, baseType: !17, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !104, file: !100, line: 51, baseType: !17, size: 64, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !104, file: !100, line: 52, baseType: !97, size: 64, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "failed", scope: !104, file: !100, line: 53, baseType: !11, size: 64, offset: 192)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !99, file: !100, line: 59, baseType: !49, size: 64, offset: 256)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !99, file: !100, line: 60, baseType: !97, size: 64, offset: 320)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !99, file: !100, line: 61, baseType: !113, size: 64, offset: 384)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_chain_t", file: !56, line: 19, baseType: !115)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_chain_s", file: !116, line: 59, size: 128, elements: !117)
!116 = !DIFile(filename: "src/core/ngx_buf.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "6fc45f3cccbbf41b239dcfa9e2c5b7b1")
!117 = !{!118, !240}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !115, file: !116, line: 60, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_buf_t", file: !116, line: 18, baseType: !121)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_buf_s", file: !116, line: 20, size: 640, elements: !122)
!122 = !{!123, !124, !125, !129, !130, !131, !132, !134, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !121, file: !116, line: 21, baseType: !17, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !121, file: !116, line: 22, baseType: !17, size: 64, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "file_pos", scope: !121, file: !116, line: 23, baseType: !126, size: 64, offset: 128)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !19, line: 87, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !21, line: 153, baseType: !128)
!128 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "file_last", scope: !121, file: !116, line: 24, baseType: !126, size: 64, offset: 192)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !121, file: !116, line: 26, baseType: !17, size: 64, offset: 256)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !121, file: !116, line: 27, baseType: !17, size: 64, offset: 320)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !121, file: !116, line: 28, baseType: !133, size: 64, offset: 384)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_buf_tag_t", file: !116, line: 16, baseType: !16)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !121, file: !116, line: 29, baseType: !135, size: 64, offset: 448)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_file_t", file: !56, line: 23, baseType: !137)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_file_s", file: !138, line: 16, size: 1600, elements: !139)
!138 = !DIFile(filename: "src/core/ngx_file.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "25b6ae7999feb045abc19bb7a7bd4ab8")
!139 = !{!140, !144, !145, !184, !185, !186, !225, !226}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !137, file: !138, line: 17, baseType: !141, size: 32)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_fd_t", file: !142, line: 16, baseType: !143)
!142 = !DIFile(filename: "src/os/unix/ngx_files.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "7b9a751e8c1ad1afef5467d60ed94e69")
!143 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !137, file: !138, line: 18, baseType: !44, size: 128, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !137, file: !138, line: 19, baseType: !146, size: 1152, offset: 192)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_file_info_t", file: !142, line: 17, baseType: !147)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !148, line: 26, size: 1152, elements: !149)
!148 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!149 = !{!150, !152, !154, !156, !158, !160, !162, !163, !164, !166, !168, !170, !178, !179, !180}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !147, file: !148, line: 31, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !21, line: 145, baseType: !15)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !147, file: !148, line: 36, baseType: !153, size: 64, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !21, line: 148, baseType: !15)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !147, file: !148, line: 44, baseType: !155, size: 64, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !21, line: 151, baseType: !15)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !147, file: !148, line: 45, baseType: !157, size: 32, offset: 192)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !21, line: 150, baseType: !41)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !147, file: !148, line: 47, baseType: !159, size: 32, offset: 224)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !21, line: 146, baseType: !41)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !147, file: !148, line: 48, baseType: !161, size: 32, offset: 256)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !21, line: 147, baseType: !41)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !147, file: !148, line: 50, baseType: !143, size: 32, offset: 288)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !147, file: !148, line: 52, baseType: !151, size: 64, offset: 320)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !147, file: !148, line: 57, baseType: !165, size: 64, offset: 384)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !21, line: 152, baseType: !128)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !147, file: !148, line: 61, baseType: !167, size: 64, offset: 448)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !21, line: 175, baseType: !128)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !147, file: !148, line: 63, baseType: !169, size: 64, offset: 512)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !21, line: 180, baseType: !128)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !147, file: !148, line: 74, baseType: !171, size: 128, offset: 576)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !172, line: 11, size: 128, elements: !173)
!172 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!173 = !{!174, !176}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !171, file: !172, line: 16, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !21, line: 160, baseType: !128)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !171, file: !172, line: 21, baseType: !177, size: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !21, line: 197, baseType: !128)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !147, file: !148, line: 75, baseType: !171, size: 128, offset: 704)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !147, file: !148, line: 76, baseType: !171, size: 128, offset: 832)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !147, file: !148, line: 89, baseType: !181, size: 192, offset: 960)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 192, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 3)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !137, file: !138, line: 21, baseType: !126, size: 64, offset: 1344)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "sys_offset", scope: !137, file: !138, line: 22, baseType: !126, size: 64, offset: 1408)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !137, file: !138, line: 24, baseType: !187, size: 64, offset: 1472)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_log_t", file: !56, line: 20, baseType: !189)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_log_s", file: !190, line: 50, size: 640, elements: !191)
!190 = !DIFile(filename: "src/core/ngx_log.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "f35895306f847777914ce99ffeccfabd")
!191 = !{!192, !193, !205, !208, !211, !216, !217, !222, !223, !224}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "log_level", scope: !189, file: !190, line: 51, baseType: !11, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !189, file: !190, line: 52, baseType: !194, size: 64, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_open_file_t", file: !56, line: 21, baseType: !196)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_open_file_s", file: !73, line: 89, size: 320, elements: !197)
!197 = !{!198, !199, !200, !204}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !196, file: !73, line: 90, baseType: !141, size: 32)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !196, file: !73, line: 91, baseType: !44, size: 128, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !196, file: !73, line: 93, baseType: !201, size: 64, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{null, !194, !187}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !196, file: !73, line: 94, baseType: !16, size: 64, offset: 256)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !189, file: !190, line: 54, baseType: !206, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_atomic_uint_t", file: !207, line: 98, baseType: !15)
!207 = !DIFile(filename: "src/os/unix/ngx_atomic.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "eac8f0294f941da9268c3a72c9fca0e1")
!208 = !DIDerivedType(tag: DW_TAG_member, name: "disk_full_time", scope: !189, file: !190, line: 56, baseType: !209, size: 64, offset: 192)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !210, line: 10, baseType: !175)
!210 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!211 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !189, file: !190, line: 58, baseType: !212, size: 64, offset: 256)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_log_handler_pt", file: !190, line: 45, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!17, !187, !17, !49}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !189, file: !190, line: 59, baseType: !16, size: 64, offset: 320)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !189, file: !190, line: 61, baseType: !218, size: 64, offset: 384)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_log_writer_pt", file: !190, line: 46, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{null, !187, !11, !17, !49}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "wdata", scope: !189, file: !190, line: 62, baseType: !16, size: 64, offset: 448)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !189, file: !190, line: 70, baseType: !63, size: 64, offset: 512)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !189, file: !190, line: 72, baseType: !187, size: 64, offset: 576)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "valid_info", scope: !137, file: !138, line: 37, baseType: !41, size: 1, offset: 1536, flags: DIFlagBitField, extraData: i64 1536)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "directio", scope: !137, file: !138, line: 38, baseType: !41, size: 1, offset: 1537, flags: DIFlagBitField, extraData: i64 1536)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "shadow", scope: !121, file: !116, line: 30, baseType: !119, size: 64, offset: 512)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "temporary", scope: !121, file: !116, line: 34, baseType: !41, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "memory", scope: !121, file: !116, line: 40, baseType: !41, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !121, file: !116, line: 43, baseType: !41, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "recycled", scope: !121, file: !116, line: 45, baseType: !41, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "in_file", scope: !121, file: !116, line: 46, baseType: !41, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !121, file: !116, line: 47, baseType: !41, size: 1, offset: 581, flags: DIFlagBitField, extraData: i64 576)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !121, file: !116, line: 48, baseType: !41, size: 1, offset: 582, flags: DIFlagBitField, extraData: i64 576)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "last_buf", scope: !121, file: !116, line: 49, baseType: !41, size: 1, offset: 583, flags: DIFlagBitField, extraData: i64 576)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "last_in_chain", scope: !121, file: !116, line: 50, baseType: !41, size: 1, offset: 584, flags: DIFlagBitField, extraData: i64 576)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "last_shadow", scope: !121, file: !116, line: 52, baseType: !41, size: 1, offset: 585, flags: DIFlagBitField, extraData: i64 576)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file", scope: !121, file: !116, line: 53, baseType: !41, size: 1, offset: 586, flags: DIFlagBitField, extraData: i64 576)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !121, file: !116, line: 55, baseType: !143, size: 32, offset: 608)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !115, file: !116, line: 61, baseType: !113, size: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "large", scope: !99, file: !100, line: 62, baseType: !242, size: 64, offset: 448)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_large_t", file: !100, line: 41, baseType: !244)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_pool_large_s", file: !100, line: 43, size: 128, elements: !245)
!245 = !{!246, !247}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !244, file: !100, line: 44, baseType: !242, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !244, file: !100, line: 45, baseType: !16, size: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !99, file: !100, line: 63, baseType: !249, size: 64, offset: 512)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_cleanup_t", file: !100, line: 32, baseType: !251)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_pool_cleanup_s", file: !100, line: 34, size: 192, elements: !252)
!252 = !{!253, !258, !259}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !251, file: !100, line: 35, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_cleanup_pt", file: !100, line: 30, baseType: !255)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{null, !16}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !251, file: !100, line: 36, baseType: !16, size: 64, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !251, file: !100, line: 37, baseType: !249, size: 64, offset: 128)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !99, file: !100, line: 64, baseType: !187, size: 64, offset: 576)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "cycle", scope: !83, file: !73, line: 120, baseType: !262, size: 64, offset: 128)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_cycle_t", file: !56, line: 17, baseType: !264)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_cycle_s", file: !265, line: 47, size: 5184, elements: !266)
!265 = !DIFile(filename: "src/core/ngx_cycle.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "084646d0d3ecf791b89c14281fd46376")
!266 = !{!267, !270, !271, !272, !273, !274, !520, !521, !522, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !569, !570}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "conf_ctx", scope: !264, file: !265, line: 48, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !264, file: !265, line: 49, baseType: !97, size: 64, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !264, file: !265, line: 51, baseType: !187, size: 64, offset: 128)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "new_log", scope: !264, file: !265, line: 52, baseType: !188, size: 640, offset: 192)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "log_use_stderr", scope: !264, file: !265, line: 54, baseType: !11, size: 64, offset: 832)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !264, file: !265, line: 56, baseType: !275, size: 64, offset: 896)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_connection_t", file: !56, line: 26, baseType: !278)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_connection_s", file: !279, line: 124, size: 1920, elements: !280)
!279 = !DIFile(filename: "src/core/ngx_connection.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "bf513a87e959064e14502903e9282b0e")
!280 = !{!281, !282, !339, !340, !343, !351, !353, !358, !363, !442, !443, !444, !445, !446, !447, !448, !449, !450, !455, !496, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !278, file: !279, line: 125, baseType: !16, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !278, file: !279, line: 126, baseType: !283, size: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_t", file: !56, line: 24, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_event_s", file: !286, line: 30, size: 768, elements: !287)
!286 = !DIFile(filename: "src/event/ngx_event.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "c79f651cc4aca504d9d912404beb8bf3")
!287 = !{!288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !316, !317, !318, !331}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !285, file: !286, line: 31, baseType: !16, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !285, file: !286, line: 33, baseType: !41, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !285, file: !286, line: 35, baseType: !41, size: 1, offset: 65, flags: DIFlagBitField, extraData: i64 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "instance", scope: !285, file: !286, line: 38, baseType: !41, size: 1, offset: 66, flags: DIFlagBitField, extraData: i64 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !285, file: !286, line: 44, baseType: !41, size: 1, offset: 67, flags: DIFlagBitField, extraData: i64 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !285, file: !286, line: 46, baseType: !41, size: 1, offset: 68, flags: DIFlagBitField, extraData: i64 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !285, file: !286, line: 49, baseType: !41, size: 1, offset: 69, flags: DIFlagBitField, extraData: i64 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "oneshot", scope: !285, file: !286, line: 51, baseType: !41, size: 1, offset: 70, flags: DIFlagBitField, extraData: i64 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !285, file: !286, line: 54, baseType: !41, size: 1, offset: 71, flags: DIFlagBitField, extraData: i64 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "eof", scope: !285, file: !286, line: 56, baseType: !41, size: 1, offset: 72, flags: DIFlagBitField, extraData: i64 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !285, file: !286, line: 57, baseType: !41, size: 1, offset: 73, flags: DIFlagBitField, extraData: i64 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "timedout", scope: !285, file: !286, line: 59, baseType: !41, size: 1, offset: 74, flags: DIFlagBitField, extraData: i64 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "timer_set", scope: !285, file: !286, line: 60, baseType: !41, size: 1, offset: 75, flags: DIFlagBitField, extraData: i64 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "delayed", scope: !285, file: !286, line: 62, baseType: !41, size: 1, offset: 76, flags: DIFlagBitField, extraData: i64 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_accept", scope: !285, file: !286, line: 64, baseType: !41, size: 1, offset: 77, flags: DIFlagBitField, extraData: i64 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "pending_eof", scope: !285, file: !286, line: 67, baseType: !41, size: 1, offset: 78, flags: DIFlagBitField, extraData: i64 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "posted", scope: !285, file: !286, line: 69, baseType: !41, size: 1, offset: 79, flags: DIFlagBitField, extraData: i64 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "closed", scope: !285, file: !286, line: 71, baseType: !41, size: 1, offset: 80, flags: DIFlagBitField, extraData: i64 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !285, file: !286, line: 74, baseType: !41, size: 1, offset: 81, flags: DIFlagBitField, extraData: i64 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "resolver", scope: !285, file: !286, line: 75, baseType: !41, size: 1, offset: 82, flags: DIFlagBitField, extraData: i64 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "skip_socket_leak_check", scope: !285, file: !286, line: 77, baseType: !41, size: 1, offset: 83, flags: DIFlagBitField, extraData: i64 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "cancelable", scope: !285, file: !286, line: 80, baseType: !41, size: 1, offset: 84, flags: DIFlagBitField, extraData: i64 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !285, file: !286, line: 110, baseType: !41, size: 1, offset: 85, flags: DIFlagBitField, extraData: i64 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !285, file: !286, line: 113, baseType: !312, size: 64, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_handler_pt", file: !56, line: 32, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{null, !283}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !285, file: !286, line: 120, baseType: !11, size: 64, offset: 192)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !285, file: !286, line: 122, baseType: !187, size: 64, offset: 256)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !285, file: !286, line: 124, baseType: !319, size: 320, offset: 320)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_rbtree_node_t", file: !320, line: 20, baseType: !321)
!320 = !DIFile(filename: "src/core/ngx_rbtree.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "ee5b3151c1c48b156833d321f8e1946a")
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_rbtree_node_s", file: !320, line: 22, size: 320, elements: !322)
!322 = !{!323, !325, !327, !328, !329, !330}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !321, file: !320, line: 23, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_rbtree_key_t", file: !320, line: 16, baseType: !11)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !321, file: !320, line: 24, baseType: !326, size: 64, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !321, file: !320, line: 25, baseType: !326, size: 64, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !321, file: !320, line: 26, baseType: !326, size: 64, offset: 192)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !321, file: !320, line: 27, baseType: !18, size: 8, offset: 256)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !321, file: !320, line: 28, baseType: !18, size: 8, offset: 264)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !285, file: !286, line: 127, baseType: !332, size: 128, offset: 640)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_queue_t", file: !333, line: 16, baseType: !334)
!333 = !DIFile(filename: "src/core/ngx_queue.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "2c59b395537893ba5e88100999d73c03")
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_queue_s", file: !333, line: 18, size: 128, elements: !335)
!335 = !{!336, !338}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !334, file: !333, line: 19, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !334, file: !333, line: 20, baseType: !337, size: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !278, file: !279, line: 127, baseType: !283, size: 64, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !278, file: !279, line: 129, baseType: !341, size: 32, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_socket_t", file: !342, line: 17, baseType: !143)
!342 = !DIFile(filename: "src/os/unix/ngx_socket.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "ad64fd7b9f2b4876e8c9dcdeeb2305ce")
!343 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !278, file: !279, line: 131, baseType: !344, size: 64, offset: 256)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_recv_pt", file: !345, line: 19, baseType: !346)
!345 = !DIFile(filename: "src/os/unix/ngx_os.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "f9335bbb6e5d9856f7d75990ec765c0d")
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DISubroutineType(types: !348)
!348 = !{!349, !276, !17, !49}
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !19, line: 108, baseType: !350)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !21, line: 194, baseType: !128)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "send", scope: !278, file: !279, line: 132, baseType: !352, size: 64, offset: 320)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_send_pt", file: !345, line: 22, baseType: !346)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "recv_chain", scope: !278, file: !279, line: 133, baseType: !354, size: 64, offset: 384)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_recv_chain_pt", file: !345, line: 20, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!349, !276, !113, !126}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "send_chain", scope: !278, file: !279, line: 134, baseType: !359, size: 64, offset: 448)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_send_chain_pt", file: !345, line: 23, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{!113, !276, !113, !126}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "listening", scope: !278, file: !279, line: 136, baseType: !364, size: 64, offset: 512)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_listening_t", file: !279, line: 16, baseType: !366)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_listening_s", file: !279, line: 18, size: 2432, elements: !367)
!367 = !{!368, !369, !382, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !400, !401, !402, !403, !404, !405, !408, !409, !410, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !366, file: !279, line: 19, baseType: !341, size: 32)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !366, file: !279, line: 21, baseType: !370, size: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !372, line: 180, size: 128, elements: !373)
!372 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!373 = !{!374, !378}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !371, file: !372, line: 182, baseType: !375, size: 16)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !376, line: 28, baseType: !377)
!376 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!377 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !371, file: !372, line: 183, baseType: !379, size: 112, offset: 16)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !380)
!380 = !{!381}
!381 = !DISubrange(count: 14)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !366, file: !279, line: 22, baseType: !383, size: 32, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !384, line: 274, baseType: !385)
!384 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !21, line: 210, baseType: !41)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "addr_text_max_len", scope: !366, file: !279, line: 23, baseType: !49, size: 64, offset: 192)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "addr_text", scope: !366, file: !279, line: 24, baseType: !44, size: 128, offset: 256)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !366, file: !279, line: 26, baseType: !143, size: 32, offset: 384)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "backlog", scope: !366, file: !279, line: 28, baseType: !143, size: 32, offset: 416)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "rcvbuf", scope: !366, file: !279, line: 29, baseType: !143, size: 32, offset: 448)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "sndbuf", scope: !366, file: !279, line: 30, baseType: !143, size: 32, offset: 480)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "keepidle", scope: !366, file: !279, line: 32, baseType: !143, size: 32, offset: 512)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "keepintvl", scope: !366, file: !279, line: 33, baseType: !143, size: 32, offset: 544)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "keepcnt", scope: !366, file: !279, line: 34, baseType: !143, size: 32, offset: 576)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !366, file: !279, line: 38, baseType: !396, size: 64, offset: 640)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_connection_handler_pt", file: !56, line: 33, baseType: !397)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DISubroutineType(types: !399)
!399 = !{null, !276}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "servers", scope: !366, file: !279, line: 40, baseType: !16, size: 64, offset: 704)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !366, file: !279, line: 42, baseType: !188, size: 640, offset: 768)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "logp", scope: !366, file: !279, line: 43, baseType: !187, size: 64, offset: 1408)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "pool_size", scope: !366, file: !279, line: 45, baseType: !49, size: 64, offset: 1472)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "post_accept_buffer_size", scope: !366, file: !279, line: 47, baseType: !49, size: 64, offset: 1536)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "post_accept_timeout", scope: !366, file: !279, line: 49, baseType: !406, size: 64, offset: 1600)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_msec_t", file: !407, line: 16, baseType: !324)
!407 = !DIFile(filename: "src/os/unix/ngx_time.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "dcb54d32e6c10d0319e2777a5d39953b")
!408 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !366, file: !279, line: 51, baseType: !364, size: 64, offset: 1664)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !366, file: !279, line: 52, baseType: !276, size: 64, offset: 1728)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "rbtree", scope: !366, file: !279, line: 54, baseType: !411, size: 192, offset: 1792)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_rbtree_t", file: !320, line: 32, baseType: !412)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_rbtree_s", file: !320, line: 37, size: 192, elements: !413)
!413 = !{!414, !415, !416}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !412, file: !320, line: 38, baseType: !326, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !412, file: !320, line: 39, baseType: !326, size: 64, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "insert", scope: !412, file: !320, line: 40, baseType: !417, size: 64, offset: 128)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_rbtree_insert_pt", file: !320, line: 34, baseType: !418)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DISubroutineType(types: !420)
!420 = !{null, !326, !326, !326}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !366, file: !279, line: 55, baseType: !319, size: 320, offset: 1984)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !366, file: !279, line: 57, baseType: !11, size: 64, offset: 2304)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !366, file: !279, line: 59, baseType: !41, size: 1, offset: 2368, flags: DIFlagBitField, extraData: i64 2368)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "remain", scope: !366, file: !279, line: 60, baseType: !41, size: 1, offset: 2369, flags: DIFlagBitField, extraData: i64 2368)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "ignore", scope: !366, file: !279, line: 61, baseType: !41, size: 1, offset: 2370, flags: DIFlagBitField, extraData: i64 2368)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !366, file: !279, line: 63, baseType: !41, size: 1, offset: 2371, flags: DIFlagBitField, extraData: i64 2368)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "inherited", scope: !366, file: !279, line: 64, baseType: !41, size: 1, offset: 2372, flags: DIFlagBitField, extraData: i64 2368)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "nonblocking_accept", scope: !366, file: !279, line: 65, baseType: !41, size: 1, offset: 2373, flags: DIFlagBitField, extraData: i64 2368)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "listen", scope: !366, file: !279, line: 66, baseType: !41, size: 1, offset: 2374, flags: DIFlagBitField, extraData: i64 2368)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "nonblocking", scope: !366, file: !279, line: 67, baseType: !41, size: 1, offset: 2375, flags: DIFlagBitField, extraData: i64 2368)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !366, file: !279, line: 68, baseType: !41, size: 1, offset: 2376, flags: DIFlagBitField, extraData: i64 2368)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "addr_ntop", scope: !366, file: !279, line: 69, baseType: !41, size: 1, offset: 2377, flags: DIFlagBitField, extraData: i64 2368)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "wildcard", scope: !366, file: !279, line: 70, baseType: !41, size: 1, offset: 2378, flags: DIFlagBitField, extraData: i64 2368)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6only", scope: !366, file: !279, line: 73, baseType: !41, size: 1, offset: 2379, flags: DIFlagBitField, extraData: i64 2368)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "reuseport", scope: !366, file: !279, line: 75, baseType: !41, size: 1, offset: 2380, flags: DIFlagBitField, extraData: i64 2368)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "add_reuseport", scope: !366, file: !279, line: 76, baseType: !41, size: 1, offset: 2381, flags: DIFlagBitField, extraData: i64 2368)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive", scope: !366, file: !279, line: 77, baseType: !41, size: 2, offset: 2382, flags: DIFlagBitField, extraData: i64 2368)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_accept", scope: !366, file: !279, line: 79, baseType: !41, size: 1, offset: 2384, flags: DIFlagBitField, extraData: i64 2368)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "delete_deferred", scope: !366, file: !279, line: 80, baseType: !41, size: 1, offset: 2385, flags: DIFlagBitField, extraData: i64 2368)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "add_deferred", scope: !366, file: !279, line: 81, baseType: !41, size: 1, offset: 2386, flags: DIFlagBitField, extraData: i64 2368)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "fastopen", scope: !366, file: !279, line: 90, baseType: !143, size: 32, offset: 2400)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "sent", scope: !278, file: !279, line: 138, baseType: !126, size: 64, offset: 576)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !278, file: !279, line: 140, baseType: !187, size: 64, offset: 640)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !278, file: !279, line: 142, baseType: !97, size: 64, offset: 704)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !278, file: !279, line: 144, baseType: !143, size: 32, offset: 768)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !278, file: !279, line: 146, baseType: !370, size: 64, offset: 832)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !278, file: !279, line: 147, baseType: !383, size: 32, offset: 896)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "addr_text", scope: !278, file: !279, line: 148, baseType: !44, size: 128, offset: 960)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_protocol_addr", scope: !278, file: !279, line: 150, baseType: !44, size: 128, offset: 1088)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_protocol_port", scope: !278, file: !279, line: 151, baseType: !451, size: 16, offset: 1216)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !452, line: 123, baseType: !453)
!452 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !39, line: 25, baseType: !454)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !21, line: 40, baseType: !377)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !278, file: !279, line: 154, baseType: !456, size: 64, offset: 1280)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_ssl_connection_t", file: !56, line: 29, baseType: !458)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_ssl_connection_s", file: !459, line: 74, size: 704, elements: !460)
!459 = !DIFile(filename: "src/event/ngx_event_openssl.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "51639b814b1b55c5b35047c033281672")
!460 = !{!461, !466, !470, !474, !475, !476, !477, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !458, file: !459, line: 75, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL", file: !464, line: 184, baseType: !465)
!464 = !DIFile(filename: "/usr/include/openssl/types.h", directory: "", checksumkind: CSK_MD5, checksum: "44f1236065e4ee65cf4cd545c3e12ab9")
!465 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_st", file: !464, line: 184, flags: DIFlagFwdDecl)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "session_ctx", scope: !458, file: !459, line: 76, baseType: !467, size: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_CTX", file: !464, line: 185, baseType: !469)
!469 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_ctx_st", file: !464, line: 185, flags: DIFlagFwdDecl)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !458, file: !459, line: 78, baseType: !471, size: 64, offset: 128)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_int_t", file: !12, line: 78, baseType: !472)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !384, line: 267, baseType: !473)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intptr_t", file: !21, line: 207, baseType: !128)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !458, file: !459, line: 79, baseType: !119, size: 64, offset: 192)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size", scope: !458, file: !459, line: 80, baseType: !49, size: 64, offset: 256)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !458, file: !459, line: 82, baseType: !396, size: 64, offset: 320)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !458, file: !459, line: 84, baseType: !478, size: 64, offset: 384)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_SESSION", file: !480, line: 231, baseType: !481)
!480 = !DIFile(filename: "/usr/include/openssl/ssl.h", directory: "", checksumkind: CSK_MD5, checksum: "848d42aedd0da44ffda19088217823c7")
!481 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_session_st", file: !480, line: 231, flags: DIFlagFwdDecl)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "save_session", scope: !458, file: !459, line: 85, baseType: !396, size: 64, offset: 448)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "saved_read_handler", scope: !458, file: !459, line: 87, baseType: !312, size: 64, offset: 512)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "saved_write_handler", scope: !458, file: !459, line: 88, baseType: !312, size: 64, offset: 576)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "early_buf", scope: !458, file: !459, line: 90, baseType: !18, size: 8, offset: 640)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "handshaked", scope: !458, file: !459, line: 92, baseType: !41, size: 1, offset: 648, flags: DIFlagBitField, extraData: i64 648)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "renegotiation", scope: !458, file: !459, line: 93, baseType: !41, size: 1, offset: 649, flags: DIFlagBitField, extraData: i64 648)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !458, file: !459, line: 94, baseType: !41, size: 1, offset: 650, flags: DIFlagBitField, extraData: i64 648)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "no_wait_shutdown", scope: !458, file: !459, line: 95, baseType: !41, size: 1, offset: 651, flags: DIFlagBitField, extraData: i64 648)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "no_send_shutdown", scope: !458, file: !459, line: 96, baseType: !41, size: 1, offset: 652, flags: DIFlagBitField, extraData: i64 648)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_buffer_set", scope: !458, file: !459, line: 97, baseType: !41, size: 1, offset: 653, flags: DIFlagBitField, extraData: i64 648)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "try_early_data", scope: !458, file: !459, line: 98, baseType: !41, size: 1, offset: 654, flags: DIFlagBitField, extraData: i64 648)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "in_early", scope: !458, file: !459, line: 99, baseType: !41, size: 1, offset: 655, flags: DIFlagBitField, extraData: i64 648)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "early_preread", scope: !458, file: !459, line: 100, baseType: !41, size: 1, offset: 656, flags: DIFlagBitField, extraData: i64 648)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "write_blocked", scope: !458, file: !459, line: 101, baseType: !41, size: 1, offset: 657, flags: DIFlagBitField, extraData: i64 648)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "udp", scope: !278, file: !279, line: 157, baseType: !497, size: 64, offset: 1344)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_udp_connection_t", file: !56, line: 30, baseType: !499)
!499 = !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_udp_connection_s", file: !56, line: 30, flags: DIFlagFwdDecl)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "local_sockaddr", scope: !278, file: !279, line: 159, baseType: !370, size: 64, offset: 1408)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "local_socklen", scope: !278, file: !279, line: 160, baseType: !383, size: 32, offset: 1472)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !278, file: !279, line: 162, baseType: !119, size: 64, offset: 1536)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !278, file: !279, line: 164, baseType: !332, size: 128, offset: 1600)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !278, file: !279, line: 166, baseType: !206, size: 64, offset: 1728)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "requests", scope: !278, file: !279, line: 168, baseType: !11, size: 64, offset: 1792)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "buffered", scope: !278, file: !279, line: 170, baseType: !41, size: 8, offset: 1856, flags: DIFlagBitField, extraData: i64 1856)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "log_error", scope: !278, file: !279, line: 172, baseType: !41, size: 3, offset: 1864, flags: DIFlagBitField, extraData: i64 1856)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "timedout", scope: !278, file: !279, line: 174, baseType: !41, size: 1, offset: 1867, flags: DIFlagBitField, extraData: i64 1856)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !278, file: !279, line: 175, baseType: !41, size: 1, offset: 1868, flags: DIFlagBitField, extraData: i64 1856)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "destroyed", scope: !278, file: !279, line: 176, baseType: !41, size: 1, offset: 1869, flags: DIFlagBitField, extraData: i64 1856)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !278, file: !279, line: 178, baseType: !41, size: 1, offset: 1870, flags: DIFlagBitField, extraData: i64 1856)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "reusable", scope: !278, file: !279, line: 179, baseType: !41, size: 1, offset: 1871, flags: DIFlagBitField, extraData: i64 1856)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !278, file: !279, line: 180, baseType: !41, size: 1, offset: 1872, flags: DIFlagBitField, extraData: i64 1856)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !278, file: !279, line: 181, baseType: !41, size: 1, offset: 1873, flags: DIFlagBitField, extraData: i64 1856)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "sendfile", scope: !278, file: !279, line: 183, baseType: !41, size: 1, offset: 1874, flags: DIFlagBitField, extraData: i64 1856)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "sndlowat", scope: !278, file: !279, line: 184, baseType: !41, size: 1, offset: 1875, flags: DIFlagBitField, extraData: i64 1856)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_nodelay", scope: !278, file: !279, line: 185, baseType: !41, size: 2, offset: 1876, flags: DIFlagBitField, extraData: i64 1856)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_nopush", scope: !278, file: !279, line: 186, baseType: !41, size: 2, offset: 1878, flags: DIFlagBitField, extraData: i64 1856)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "need_last_buf", scope: !278, file: !279, line: 188, baseType: !41, size: 1, offset: 1880, flags: DIFlagBitField, extraData: i64 1856)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "free_connections", scope: !264, file: !265, line: 57, baseType: !276, size: 64, offset: 960)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "free_connection_n", scope: !264, file: !265, line: 58, baseType: !11, size: 64, offset: 1024)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !264, file: !265, line: 60, baseType: !523, size: 64, offset: 1088)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "modules_n", scope: !264, file: !265, line: 61, baseType: !11, size: 64, offset: 1152)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "modules_used", scope: !264, file: !265, line: 62, baseType: !11, size: 64, offset: 1216)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "reusable_connections_queue", scope: !264, file: !265, line: 64, baseType: !332, size: 128, offset: 1280)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "reusable_connections_n", scope: !264, file: !265, line: 65, baseType: !11, size: 64, offset: 1408)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "listening", scope: !264, file: !265, line: 67, baseType: !88, size: 320, offset: 1472)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "paths", scope: !264, file: !265, line: 68, baseType: !88, size: 320, offset: 1792)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "config_dump", scope: !264, file: !265, line: 70, baseType: !88, size: 320, offset: 2112)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "config_dump_rbtree", scope: !264, file: !265, line: 71, baseType: !411, size: 192, offset: 2432)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "config_dump_sentinel", scope: !264, file: !265, line: 72, baseType: !319, size: 320, offset: 2624)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "open_files", scope: !264, file: !265, line: 74, baseType: !535, size: 448, offset: 2944)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_list_t", file: !536, line: 31, baseType: !537)
!536 = !DIFile(filename: "src/core/ngx_list.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "580525d954b127a1c35170a83ca4d8b1")
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !536, line: 25, size: 448, elements: !538)
!538 = !{!539, !547, !548, !549, !550}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !537, file: !536, line: 26, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_list_part_t", file: !536, line: 16, baseType: !542)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_list_part_s", file: !536, line: 18, size: 192, elements: !543)
!543 = !{!544, !545, !546}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !542, file: !536, line: 19, baseType: !16, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "nelts", scope: !542, file: !536, line: 20, baseType: !11, size: 64, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !542, file: !536, line: 21, baseType: !540, size: 64, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !537, file: !536, line: 27, baseType: !541, size: 192, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !537, file: !536, line: 28, baseType: !49, size: 64, offset: 256)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "nalloc", scope: !537, file: !536, line: 29, baseType: !11, size: 64, offset: 320)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !537, file: !536, line: 30, baseType: !97, size: 64, offset: 384)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "shared_memory", scope: !264, file: !265, line: 75, baseType: !535, size: 448, offset: 3392)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "connection_n", scope: !264, file: !265, line: 77, baseType: !11, size: 64, offset: 3840)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "files_n", scope: !264, file: !265, line: 78, baseType: !11, size: 64, offset: 3904)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "connections", scope: !264, file: !265, line: 80, baseType: !276, size: 64, offset: 3968)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "read_events", scope: !264, file: !265, line: 81, baseType: !283, size: 64, offset: 4032)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "write_events", scope: !264, file: !265, line: 82, baseType: !283, size: 64, offset: 4096)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "old_cycle", scope: !264, file: !265, line: 84, baseType: !262, size: 64, offset: 4160)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "conf_file", scope: !264, file: !265, line: 86, baseType: !44, size: 128, offset: 4224)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "conf_param", scope: !264, file: !265, line: 87, baseType: !44, size: 128, offset: 4352)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "conf_prefix", scope: !264, file: !265, line: 88, baseType: !44, size: 128, offset: 4480)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !264, file: !265, line: 89, baseType: !44, size: 128, offset: 4608)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "lock_file", scope: !264, file: !265, line: 90, baseType: !44, size: 128, offset: 4736)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "hostname", scope: !264, file: !265, line: 91, baseType: !44, size: 128, offset: 4864)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "intercept_error_log_handler", scope: !264, file: !265, line: 93, baseType: !565, size: 64, offset: 4992)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_log_intercept_pt", file: !265, line: 34, baseType: !566)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DISubroutineType(types: !568)
!568 = !{!471, !187, !11, !17, !49}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "intercept_error_log_data", scope: !264, file: !265, line: 94, baseType: !16, size: 64, offset: 5056)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "entered_logger", scope: !264, file: !265, line: 95, baseType: !41, size: 32, offset: 5120)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !83, file: !73, line: 121, baseType: !97, size: 64, offset: 192)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "temp_pool", scope: !83, file: !73, line: 122, baseType: !97, size: 64, offset: 256)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "conf_file", scope: !83, file: !73, line: 123, baseType: !574, size: 64, offset: 320)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_conf_file_t", file: !73, line: 103, baseType: !576)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !73, line: 98, size: 1792, elements: !577)
!577 = !{!578, !579, !580, !581}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !576, file: !73, line: 99, baseType: !136, size: 1600)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !576, file: !73, line: 100, baseType: !119, size: 64, offset: 1600)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !576, file: !73, line: 101, baseType: !119, size: 64, offset: 1664)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !576, file: !73, line: 102, baseType: !11, size: 64, offset: 1728)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !83, file: !73, line: 124, baseType: !187, size: 64, offset: 384)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !83, file: !73, line: 126, baseType: !16, size: 64, offset: 448)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "module_type", scope: !83, file: !73, line: 127, baseType: !11, size: 64, offset: 512)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_type", scope: !83, file: !73, line: 128, baseType: !11, size: 64, offset: 576)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !83, file: !73, line: 130, baseType: !587, size: 64, offset: 640)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_conf_handler_pt", file: !73, line: 112, baseType: !78)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "handler_conf", scope: !83, file: !73, line: 131, baseType: !16, size: 64, offset: 704)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !72, file: !73, line: 81, baseType: !11, size: 64, offset: 256)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !72, file: !73, line: 82, baseType: !11, size: 64, offset: 320)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "post", scope: !72, file: !73, line: 83, baseType: !16, size: 64, offset: 384)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !57, file: !58, line: 236, baseType: !11, size: 64, offset: 576)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "init_master", scope: !57, file: !58, line: 238, baseType: !594, size: 64, offset: 640)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{!471, !187}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "init_module", scope: !57, file: !58, line: 240, baseType: !598, size: 64, offset: 704)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{!471, !262}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "init_process", scope: !57, file: !58, line: 242, baseType: !598, size: 64, offset: 768)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "init_thread", scope: !57, file: !58, line: 243, baseType: !598, size: 64, offset: 832)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "exit_thread", scope: !57, file: !58, line: 244, baseType: !604, size: 64, offset: 896)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{null, !262}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "exit_process", scope: !57, file: !58, line: 245, baseType: !604, size: 64, offset: 960)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "exit_master", scope: !57, file: !58, line: 247, baseType: !604, size: 64, offset: 1024)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook0", scope: !57, file: !58, line: 249, baseType: !13, size: 64, offset: 1088)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook1", scope: !57, file: !58, line: 250, baseType: !13, size: 64, offset: 1152)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook2", scope: !57, file: !58, line: 251, baseType: !13, size: 64, offset: 1216)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook3", scope: !57, file: !58, line: 252, baseType: !13, size: 64, offset: 1280)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook4", scope: !57, file: !58, line: 253, baseType: !13, size: 64, offset: 1344)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook5", scope: !57, file: !58, line: 254, baseType: !13, size: 64, offset: 1408)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook6", scope: !57, file: !58, line: 255, baseType: !13, size: 64, offset: 1472)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook7", scope: !57, file: !58, line: 256, baseType: !13, size: 64, offset: 1536)
!617 = !DIGlobalVariableExpression(var: !618, expr: !DIExpression())
!618 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !619, isLocal: true, isDefinition: true)
!619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !620)
!620 = !{!621}
!621 = !DISubrange(count: 5)
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(name: "ngx_stream_upstream_hash_commands", scope: !9, file: !2, line: 66, type: !624, isLocal: true, isDefinition: true)
!624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 896, elements: !625)
!625 = !{!626}
!626 = !DISubrange(count: 2)
!627 = !DIGlobalVariableExpression(var: !628, expr: !DIExpression())
!628 = distinct !DIGlobalVariable(scope: null, file: !2, line: 662, type: !629, isLocal: true, isDefinition: true)
!629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !630)
!630 = !{!631}
!631 = !DISubrange(count: 32)
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(scope: null, file: !2, line: 675, type: !634, isLocal: true, isDefinition: true)
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !635)
!635 = !{!636}
!636 = !DISubrange(count: 11)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(scope: null, file: !2, line: 680, type: !639, isLocal: true, isDefinition: true)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !640)
!640 = !{!641}
!641 = !DISubrange(count: 23)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !2, line: 201, type: !644, isLocal: true, isDefinition: true)
!644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !645)
!645 = !{!646}
!646 = !DISubrange(count: 4)
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(scope: null, file: !2, line: 330, type: !649, isLocal: true, isDefinition: true)
!649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !650)
!650 = !{!651}
!651 = !DISubrange(count: 6)
!652 = !DIGlobalVariableExpression(var: !653, expr: !DIExpression())
!653 = distinct !DIGlobalVariable(scope: null, file: !2, line: 364, type: !654, isLocal: true, isDefinition: true)
!654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !655)
!655 = !{!656}
!656 = !DISubrange(count: 1)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_module_t", file: !25, line: 242, baseType: !658)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 232, size: 384, elements: !659)
!659 = !{!660, !664, !665, !669, !673, !674}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "preconfiguration", scope: !658, file: !25, line: 233, baseType: !661, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{!471, !81}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "postconfiguration", scope: !658, file: !25, line: 234, baseType: !661, size: 64, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "create_main_conf", scope: !658, file: !25, line: 236, baseType: !666, size: 64, offset: 128)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{!16, !81}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "init_main_conf", scope: !658, file: !25, line: 237, baseType: !670, size: 64, offset: 192)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{!63, !81, !16}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "create_srv_conf", scope: !658, file: !25, line: 239, baseType: !666, size: 64, offset: 256)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "merge_srv_conf", scope: !658, file: !25, line: 240, baseType: !675, size: 64, offset: 320)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DISubroutineType(types: !677)
!677 = !{!63, !81, !16, !16}
!678 = !{i32 7, !"Dwarf Version", i32 5}
!679 = !{i32 2, !"Debug Info Version", i32 3}
!680 = !{i32 1, !"wchar_size", i32 4}
!681 = !{i32 8, !"PIC Level", i32 2}
!682 = !{i32 7, !"PIE Level", i32 2}
!683 = !{i32 7, !"uwtable", i32 2}
!684 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!685 = distinct !DISubprogram(name: "ngx_stream_upstream_hash_create_conf", scope: !2, file: !2, line: 622, type: !667, scopeLine: 623, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !686)
!686 = !{!687, !688}
!687 = !DILocalVariable(name: "cf", arg: 1, scope: !685, file: !2, line: 622, type: !81)
!688 = !DILocalVariable(name: "conf", scope: !685, file: !2, line: 624, type: !689)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_upstream_hash_srv_conf_t", file: !2, line: 28, baseType: !691)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 25, size: 384, elements: !692)
!692 = !{!693, !703}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !691, file: !2, line: 26, baseType: !694, size: 320)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_complex_value_t", file: !695, line: 59, baseType: !696)
!695 = !DIFile(filename: "src/stream/ngx_stream_script.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "906ce9701d29af90406e83a550e671a7")
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !695, line: 54, size: 320, elements: !697)
!697 = !{!698, !699, !701, !702}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !696, file: !695, line: 55, baseType: !44, size: 128)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "flushes", scope: !696, file: !695, line: 56, baseType: !700, size: 64, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "lengths", scope: !696, file: !695, line: 57, baseType: !16, size: 64, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !696, file: !695, line: 58, baseType: !16, size: 64, offset: 256)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "points", scope: !691, file: !2, line: 27, baseType: !704, size: 64, offset: 320)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_upstream_chash_points_t", file: !2, line: 22, baseType: !706)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 19, size: 192, elements: !707)
!707 = !{!708, !709}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !706, file: !2, line: 20, baseType: !11, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "point", scope: !706, file: !2, line: 21, baseType: !710, size: 128, offset: 64)
!710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 128, elements: !655)
!711 = !{!712, !712, i64 0}
!712 = !{!"any pointer", !713, i64 0}
!713 = !{!"omnipotent char", !714, i64 0}
!714 = !{!"Simple C/C++ TBAA"}
!715 = !DILocation(line: 622, column: 50, scope: !685)
!716 = !DILocation(line: 624, column: 5, scope: !685)
!717 = !DILocation(line: 624, column: 43, scope: !685)
!718 = !DILocation(line: 626, column: 23, scope: !685)
!719 = !DILocation(line: 626, column: 27, scope: !685)
!720 = !{!721, !712, i64 24}
!721 = !{!"ngx_conf_s", !712, i64 0, !712, i64 8, !712, i64 16, !712, i64 24, !712, i64 32, !712, i64 40, !712, i64 48, !712, i64 56, !722, i64 64, !722, i64 72, !712, i64 80, !712, i64 88}
!722 = !{!"long", !713, i64 0}
!723 = !DILocation(line: 626, column: 12, scope: !685)
!724 = !DILocation(line: 626, column: 10, scope: !685)
!725 = !DILocation(line: 627, column: 9, scope: !726)
!726 = distinct !DILexicalBlock(scope: !685, file: !2, line: 627, column: 9)
!727 = !DILocation(line: 627, column: 14, scope: !726)
!728 = !DILocation(line: 627, column: 9, scope: !685)
!729 = !DILocation(line: 628, column: 9, scope: !730)
!730 = distinct !DILexicalBlock(scope: !726, file: !2, line: 627, column: 23)
!731 = !DILocation(line: 631, column: 5, scope: !685)
!732 = !DILocation(line: 631, column: 11, scope: !685)
!733 = !DILocation(line: 631, column: 18, scope: !685)
!734 = !{!735, !712, i64 40}
!735 = !{!"", !736, i64 0, !712, i64 40}
!736 = !{!"", !737, i64 0, !712, i64 16, !712, i64 24, !712, i64 32}
!737 = !{!"", !722, i64 0, !712, i64 8}
!738 = !DILocation(line: 633, column: 12, scope: !685)
!739 = !DILocation(line: 633, column: 5, scope: !685)
!740 = !DILocation(line: 634, column: 1, scope: !685)
!741 = !DISubprogram(name: "ngx_palloc", scope: !100, file: !100, line: 79, type: !742, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!742 = !DISubroutineType(types: !743)
!743 = !{!16, !97, !49}
!744 = distinct !DISubprogram(name: "ngx_stream_upstream_hash", scope: !2, file: !2, line: 638, type: !79, scopeLine: 639, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !745)
!745 = !{!746, !747, !748, !749, !750, !751, !1091}
!746 = !DILocalVariable(name: "cf", arg: 1, scope: !744, file: !2, line: 638, type: !81)
!747 = !DILocalVariable(name: "cmd", arg: 2, scope: !744, file: !2, line: 638, type: !70)
!748 = !DILocalVariable(name: "conf", arg: 3, scope: !744, file: !2, line: 638, type: !16)
!749 = !DILocalVariable(name: "hcf", scope: !744, file: !2, line: 640, type: !689)
!750 = !DILocalVariable(name: "value", scope: !744, file: !2, line: 642, type: !43)
!751 = !DILocalVariable(name: "uscf", scope: !744, file: !2, line: 643, type: !752)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_upstream_srv_conf_t", file: !754, line: 36, baseType: !755)
!754 = !DIFile(filename: "src/stream/ngx_stream_upstream.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "3f8e5475e314f6b689847c899b77180e")
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_stream_upstream_srv_conf_s", file: !754, line: 70, size: 832, elements: !756)
!756 = !{!757, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !755, file: !754, line: 71, baseType: !758, size: 192)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_upstream_peer_t", file: !754, line: 49, baseType: !759)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !754, line: 45, size: 192, elements: !760)
!760 = !{!761, !766, !1058}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "init_upstream", scope: !759, file: !754, line: 46, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_upstream_init_pt", file: !754, line: 39, baseType: !763)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{!471, !81, !752}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !759, file: !754, line: 47, baseType: !767, size: 64, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_upstream_init_peer_pt", file: !754, line: 41, baseType: !768)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{!471, !771, !752}
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_session_t", file: !25, line: 20, baseType: !773)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_stream_session_s", file: !25, line: 195, size: 960, elements: !774)
!774 = !{!775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !1039, !1040, !1053, !1054, !1055, !1056, !1057}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !773, file: !25, line: 196, baseType: !38, size: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !773, file: !25, line: 198, baseType: !276, size: 64, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "received", scope: !773, file: !25, line: 200, baseType: !126, size: 64, offset: 128)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "start_sec", scope: !773, file: !25, line: 201, baseType: !209, size: 64, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "start_msec", scope: !773, file: !25, line: 202, baseType: !406, size: 64, offset: 256)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "log_handler", scope: !773, file: !25, line: 204, baseType: !212, size: 64, offset: 320)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !773, file: !25, line: 206, baseType: !29, size: 64, offset: 384)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "main_conf", scope: !773, file: !25, line: 207, baseType: !29, size: 64, offset: 448)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "srv_conf", scope: !773, file: !25, line: 208, baseType: !29, size: 64, offset: 512)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "upstream", scope: !773, file: !25, line: 210, baseType: !785, size: 64, offset: 576)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_upstream_t", file: !754, line: 142, baseType: !787)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !754, line: 117, size: 3328, elements: !788)
!788 = !{!789, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !1026, !1037, !1038}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !787, file: !754, line: 118, baseType: !790, size: 1024)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_peer_connection_t", file: !791, line: 22, baseType: !792)
!791 = !DIFile(filename: "src/event/ngx_event_connect.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "ac5aedde14d2cb26bc31b0019c79e36b")
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_peer_connection_s", file: !791, line: 36, size: 1024, elements: !793)
!793 = !{!794, !795, !796, !797, !798, !799, !800, !806, !811, !813, !814, !816, !821, !830, !831, !832, !833, !834, !835, !836}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !792, file: !791, line: 37, baseType: !276, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !792, file: !791, line: 39, baseType: !370, size: 64, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !792, file: !791, line: 40, baseType: !383, size: 32, offset: 128)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !792, file: !791, line: 41, baseType: !43, size: 64, offset: 192)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "tries", scope: !792, file: !791, line: 43, baseType: !11, size: 64, offset: 256)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !792, file: !791, line: 44, baseType: !406, size: 64, offset: 320)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !792, file: !791, line: 46, baseType: !801, size: 64, offset: 384)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_get_peer_pt", file: !791, line: 24, baseType: !802)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{!471, !805, !16}
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !792, file: !791, line: 47, baseType: !807, size: 64, offset: 448)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_free_peer_pt", file: !791, line: 26, baseType: !808)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{null, !805, !16, !11}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !792, file: !791, line: 48, baseType: !812, size: 64, offset: 512)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_notify_peer_pt", file: !791, line: 28, baseType: !808)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !792, file: !791, line: 49, baseType: !16, size: 64, offset: 576)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "set_session", scope: !792, file: !791, line: 52, baseType: !815, size: 64, offset: 640)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_set_peer_session_pt", file: !791, line: 30, baseType: !802)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "save_session", scope: !792, file: !791, line: 53, baseType: !817, size: 64, offset: 704)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_save_peer_session_pt", file: !791, line: 32, baseType: !818)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DISubroutineType(types: !820)
!820 = !{null, !805, !16}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !792, file: !791, line: 56, baseType: !822, size: 64, offset: 768)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_addr_t", file: !824, line: 78, baseType: !825)
!824 = !DIFile(filename: "src/core/ngx_inet.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "6d8b5de9d803e9eabdd54c00fd750bd0")
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !824, line: 74, size: 256, elements: !826)
!826 = !{!827, !828, !829}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !825, file: !824, line: 75, baseType: !370, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !825, file: !824, line: 76, baseType: !383, size: 32, offset: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !825, file: !824, line: 77, baseType: !44, size: 128, offset: 128)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !792, file: !791, line: 58, baseType: !143, size: 32, offset: 832)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "rcvbuf", scope: !792, file: !791, line: 59, baseType: !143, size: 32, offset: 864)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !792, file: !791, line: 61, baseType: !187, size: 64, offset: 896)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "cached", scope: !792, file: !791, line: 63, baseType: !41, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !792, file: !791, line: 64, baseType: !41, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "so_keepalive", scope: !792, file: !791, line: 65, baseType: !41, size: 1, offset: 962, flags: DIFlagBitField, extraData: i64 960)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "log_error", scope: !792, file: !791, line: 68, baseType: !41, size: 2, offset: 963, flags: DIFlagBitField, extraData: i64 960)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "downstream_buf", scope: !787, file: !754, line: 120, baseType: !120, size: 640, offset: 1024)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_buf", scope: !787, file: !754, line: 121, baseType: !120, size: 640, offset: 1664)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !787, file: !754, line: 123, baseType: !113, size: 64, offset: 2304)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_out", scope: !787, file: !754, line: 124, baseType: !113, size: 64, offset: 2368)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_busy", scope: !787, file: !754, line: 125, baseType: !113, size: 64, offset: 2432)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "downstream_out", scope: !787, file: !754, line: 126, baseType: !113, size: 64, offset: 2496)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "downstream_busy", scope: !787, file: !754, line: 127, baseType: !113, size: 64, offset: 2560)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "received", scope: !787, file: !754, line: 129, baseType: !126, size: 64, offset: 2624)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "start_sec", scope: !787, file: !754, line: 130, baseType: !209, size: 64, offset: 2688)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "requests", scope: !787, file: !754, line: 131, baseType: !11, size: 64, offset: 2752)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "responses", scope: !787, file: !754, line: 132, baseType: !11, size: 64, offset: 2816)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !787, file: !754, line: 133, baseType: !406, size: 64, offset: 2880)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_name", scope: !787, file: !754, line: 135, baseType: !44, size: 128, offset: 2944)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "upstream", scope: !787, file: !754, line: 137, baseType: !752, size: 64, offset: 3072)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !787, file: !754, line: 138, baseType: !852, size: 64, offset: 3136)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_upstream_resolved_t", file: !754, line: 114, baseType: !854)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !754, line: 101, size: 704, elements: !855)
!855 = !{!856, !857, !858, !859, !860, !873, !874, !875, !876}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !854, file: !754, line: 102, baseType: !44, size: 128)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !854, file: !754, line: 103, baseType: !451, size: 16, offset: 128)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "no_port", scope: !854, file: !754, line: 104, baseType: !11, size: 64, offset: 192)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !854, file: !754, line: 106, baseType: !11, size: 64, offset: 256)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !854, file: !754, line: 107, baseType: !861, size: 64, offset: 320)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_addr_t", file: !863, line: 67, baseType: !864)
!863 = !DIFile(filename: "src/core/ngx_resolver.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "f052cfe8812cf8cb9c2edba7fbbb264b")
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !863, line: 61, size: 320, elements: !865)
!865 = !{!866, !867, !868, !869, !872}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !864, file: !863, line: 62, baseType: !370, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !864, file: !863, line: 63, baseType: !383, size: 32, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !864, file: !863, line: 64, baseType: !44, size: 128, offset: 128)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !864, file: !863, line: 65, baseType: !870, size: 16, offset: 256)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_short", file: !19, line: 34, baseType: !871)
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_short", file: !21, line: 32, baseType: !377)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !864, file: !863, line: 66, baseType: !870, size: 16, offset: 272)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !854, file: !754, line: 109, baseType: !370, size: 64, offset: 384)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !854, file: !754, line: 110, baseType: !383, size: 32, offset: 448)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !854, file: !754, line: 111, baseType: !44, size: 128, offset: 512)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !854, file: !754, line: 113, baseType: !877, size: 64, offset: 640)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_ctx_t", file: !863, line: 56, baseType: !879)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_resolver_ctx_s", file: !863, line: 195, size: 1792, elements: !880)
!880 = !{!881, !882, !915, !980, !981, !982, !983, !984, !985, !986, !987, !988, !999, !1000, !1001, !1014, !1019, !1020, !1021, !1022, !1023, !1024, !1025}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !879, file: !863, line: 196, baseType: !877, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "resolver", scope: !879, file: !863, line: 197, baseType: !883, size: 64, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_t", file: !863, line: 40, baseType: !885)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_resolver_s", file: !863, line: 148, size: 4096, elements: !886)
!886 = !{!887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !885, file: !863, line: 150, baseType: !283, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !885, file: !863, line: 151, baseType: !16, size: 64, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !885, file: !863, line: 152, baseType: !187, size: 64, offset: 128)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !885, file: !863, line: 155, baseType: !471, size: 64, offset: 192)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "connections", scope: !885, file: !863, line: 158, baseType: !88, size: 320, offset: 256)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "last_connection", scope: !885, file: !863, line: 159, baseType: !11, size: 64, offset: 576)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "name_rbtree", scope: !885, file: !863, line: 161, baseType: !411, size: 192, offset: 640)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "name_sentinel", scope: !885, file: !863, line: 162, baseType: !319, size: 320, offset: 832)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "srv_rbtree", scope: !885, file: !863, line: 164, baseType: !411, size: 192, offset: 1152)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "srv_sentinel", scope: !885, file: !863, line: 165, baseType: !319, size: 320, offset: 1344)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "addr_rbtree", scope: !885, file: !863, line: 167, baseType: !411, size: 192, offset: 1664)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "addr_sentinel", scope: !885, file: !863, line: 168, baseType: !319, size: 320, offset: 1856)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "name_resend_queue", scope: !885, file: !863, line: 170, baseType: !332, size: 128, offset: 2176)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "srv_resend_queue", scope: !885, file: !863, line: 171, baseType: !332, size: 128, offset: 2304)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "addr_resend_queue", scope: !885, file: !863, line: 172, baseType: !332, size: 128, offset: 2432)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "name_expire_queue", scope: !885, file: !863, line: 174, baseType: !332, size: 128, offset: 2560)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "srv_expire_queue", scope: !885, file: !863, line: 175, baseType: !332, size: 128, offset: 2688)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "addr_expire_queue", scope: !885, file: !863, line: 176, baseType: !332, size: 128, offset: 2816)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6", scope: !885, file: !863, line: 179, baseType: !11, size: 64, offset: 2944)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "addr6_rbtree", scope: !885, file: !863, line: 180, baseType: !411, size: 192, offset: 3008)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "addr6_sentinel", scope: !885, file: !863, line: 181, baseType: !319, size: 320, offset: 3200)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "addr6_resend_queue", scope: !885, file: !863, line: 182, baseType: !332, size: 128, offset: 3520)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "addr6_expire_queue", scope: !885, file: !863, line: 183, baseType: !332, size: 128, offset: 3648)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "resend_timeout", scope: !885, file: !863, line: 186, baseType: !209, size: 64, offset: 3776)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_timeout", scope: !885, file: !863, line: 187, baseType: !209, size: 64, offset: 3840)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "expire", scope: !885, file: !863, line: 188, baseType: !209, size: 64, offset: 3904)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !885, file: !863, line: 189, baseType: !209, size: 64, offset: 3968)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "log_level", scope: !885, file: !863, line: 191, baseType: !11, size: 64, offset: 4032)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !879, file: !863, line: 198, baseType: !916, size: 64, offset: 128)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_node_t", file: !863, line: 145, baseType: !918)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !863, line: 92, size: 1472, elements: !919)
!919 = !{!920, !921, !922, !923, !941, !942, !943, !944, !945, !962, !963, !964, !965, !966, !972, !973, !974, !975, !976, !977, !978, !979}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !918, file: !863, line: 93, baseType: !319, size: 320)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !918, file: !863, line: 94, baseType: !332, size: 128, offset: 320)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !918, file: !863, line: 97, baseType: !17, size: 64, offset: 448)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "addr6", scope: !918, file: !863, line: 101, baseType: !924, size: 128, offset: 512)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !452, line: 219, size: 128, elements: !925)
!925 = !{!926}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !924, file: !452, line: 226, baseType: !927, size: 128)
!927 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !924, file: !452, line: 221, size: 128, elements: !928)
!928 = !{!929, !935, !939}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !927, file: !452, line: 223, baseType: !930, size: 128)
!930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !931, size: 128, elements: !933)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !39, line: 24, baseType: !932)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !21, line: 38, baseType: !22)
!933 = !{!934}
!934 = !DISubrange(count: 16)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !927, file: !452, line: 224, baseType: !936, size: 128)
!936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !453, size: 128, elements: !937)
!937 = !{!938}
!938 = !DISubrange(count: 8)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !927, file: !452, line: 225, baseType: !940, size: 128)
!940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 128, elements: !645)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "nlen", scope: !918, file: !863, line: 104, baseType: !870, size: 16, offset: 640)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "qlen", scope: !918, file: !863, line: 105, baseType: !870, size: 16, offset: 656)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "query", scope: !918, file: !863, line: 107, baseType: !17, size: 64, offset: 704)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "query6", scope: !918, file: !863, line: 109, baseType: !17, size: 64, offset: 768)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !918, file: !863, line: 117, baseType: !946, size: 64, offset: 832)
!946 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !918, file: !863, line: 112, size: 64, elements: !947)
!947 = !{!948, !950, !952, !953}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !946, file: !863, line: 113, baseType: !949, size: 32)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !452, line: 30, baseType: !38)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !946, file: !863, line: 114, baseType: !951, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "cname", scope: !946, file: !863, line: 115, baseType: !17, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "srvs", scope: !946, file: !863, line: 116, baseType: !954, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_srv_t", file: !863, line: 75, baseType: !956)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !863, line: 70, size: 192, elements: !957)
!957 = !{!958, !959, !960, !961}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !956, file: !863, line: 71, baseType: !44, size: 128)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !956, file: !863, line: 72, baseType: !870, size: 16, offset: 128)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !956, file: !863, line: 73, baseType: !870, size: 16, offset: 144)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !956, file: !863, line: 74, baseType: !870, size: 16, offset: 160)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !918, file: !863, line: 119, baseType: !18, size: 8, offset: 896)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !918, file: !863, line: 120, baseType: !870, size: 16, offset: 912)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "nsrvs", scope: !918, file: !863, line: 121, baseType: !870, size: 16, offset: 928)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "cnlen", scope: !918, file: !863, line: 122, baseType: !870, size: 16, offset: 944)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "u6", scope: !918, file: !863, line: 128, baseType: !967, size: 128, offset: 960)
!967 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !918, file: !863, line: 125, size: 128, elements: !968)
!968 = !{!969, !970}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "addr6", scope: !967, file: !863, line: 126, baseType: !924, size: 128)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "addrs6", scope: !967, file: !863, line: 127, baseType: !971, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs6", scope: !918, file: !863, line: 130, baseType: !870, size: 16, offset: 1088)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "expire", scope: !918, file: !863, line: 133, baseType: !209, size: 64, offset: 1152)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !918, file: !863, line: 134, baseType: !209, size: 64, offset: 1216)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !918, file: !863, line: 135, baseType: !38, size: 32, offset: 1280)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "tcp", scope: !918, file: !863, line: 137, baseType: !41, size: 1, offset: 1312, flags: DIFlagBitField, extraData: i64 1312)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "tcp6", scope: !918, file: !863, line: 139, baseType: !41, size: 1, offset: 1313, flags: DIFlagBitField, extraData: i64 1312)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "last_connection", scope: !918, file: !863, line: 142, baseType: !11, size: 64, offset: 1344)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !918, file: !863, line: 144, baseType: !877, size: 64, offset: 1408)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !879, file: !863, line: 201, baseType: !471, size: 64, offset: 192)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !879, file: !863, line: 203, baseType: !471, size: 64, offset: 256)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !879, file: !863, line: 204, baseType: !44, size: 128, offset: 320)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "service", scope: !879, file: !863, line: 205, baseType: !44, size: 128, offset: 448)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !879, file: !863, line: 207, baseType: !209, size: 64, offset: 576)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !879, file: !863, line: 208, baseType: !11, size: 64, offset: 640)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !879, file: !863, line: 209, baseType: !861, size: 64, offset: 704)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !879, file: !863, line: 210, baseType: !862, size: 320, offset: 768)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "sin", scope: !879, file: !863, line: 211, baseType: !989, size: 128, offset: 1088)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !452, line: 245, size: 128, elements: !990)
!990 = !{!991, !992, !993, !997}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !989, file: !452, line: 247, baseType: !375, size: 16)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !989, file: !452, line: 248, baseType: !451, size: 16, offset: 16)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !989, file: !452, line: 249, baseType: !994, size: 32, offset: 32)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !452, line: 31, size: 32, elements: !995)
!995 = !{!996}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !994, file: !452, line: 33, baseType: !949, size: 32)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !989, file: !452, line: 252, baseType: !998, size: 64, offset: 64)
!998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 64, elements: !937)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !879, file: !863, line: 213, baseType: !11, size: 64, offset: 1216)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "nsrvs", scope: !879, file: !863, line: 214, baseType: !11, size: 64, offset: 1280)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "srvs", scope: !879, file: !863, line: 215, baseType: !1002, size: 64, offset: 1344)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_srv_name_t", file: !863, line: 89, baseType: !1004)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !863, line: 78, size: 448, elements: !1005)
!1005 = !{!1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1004, file: !863, line: 79, baseType: !44, size: 128)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1004, file: !863, line: 80, baseType: !870, size: 16, offset: 128)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1004, file: !863, line: 81, baseType: !870, size: 16, offset: 144)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1004, file: !863, line: 82, baseType: !870, size: 16, offset: 160)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1004, file: !863, line: 84, baseType: !877, size: 64, offset: 192)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1004, file: !863, line: 85, baseType: !471, size: 64, offset: 256)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !1004, file: !863, line: 87, baseType: !11, size: 64, offset: 320)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !1004, file: !863, line: 88, baseType: !822, size: 64, offset: 384)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !879, file: !863, line: 217, baseType: !1015, size: 64, offset: 1408)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_handler_pt", file: !863, line: 58, baseType: !1016)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{null, !877}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !879, file: !863, line: 218, baseType: !16, size: 64, offset: 1472)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !879, file: !863, line: 219, baseType: !406, size: 64, offset: 1536)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "quick", scope: !879, file: !863, line: 221, baseType: !41, size: 1, offset: 1600, flags: DIFlagBitField, extraData: i64 1600)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "async", scope: !879, file: !863, line: 222, baseType: !41, size: 1, offset: 1601, flags: DIFlagBitField, extraData: i64 1600)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "cancelable", scope: !879, file: !863, line: 223, baseType: !41, size: 1, offset: 1602, flags: DIFlagBitField, extraData: i64 1600)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "recursion", scope: !879, file: !863, line: 224, baseType: !11, size: 64, offset: 1664)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !879, file: !863, line: 225, baseType: !283, size: 64, offset: 1728)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !787, file: !754, line: 139, baseType: !1027, size: 64, offset: 3200)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_upstream_state_t", file: !754, line: 98, baseType: !1029)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !754, line: 90, size: 384, elements: !1030)
!1030 = !{!1031, !1032, !1033, !1034, !1035, !1036}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "response_time", scope: !1029, file: !754, line: 91, baseType: !406, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !1029, file: !754, line: 92, baseType: !406, size: 64, offset: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "first_byte_time", scope: !1029, file: !754, line: 93, baseType: !406, size: 64, offset: 128)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_sent", scope: !1029, file: !754, line: 94, baseType: !126, size: 64, offset: 192)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_received", scope: !1029, file: !754, line: 95, baseType: !126, size: 64, offset: 256)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !1029, file: !754, line: 97, baseType: !43, size: 64, offset: 320)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !787, file: !754, line: 140, baseType: !41, size: 1, offset: 3264, flags: DIFlagBitField, extraData: i64 3264)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_protocol", scope: !787, file: !754, line: 141, baseType: !41, size: 1, offset: 3265, flags: DIFlagBitField, extraData: i64 3264)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_states", scope: !773, file: !25, line: 211, baseType: !87, size: 64, offset: 640)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "variables", scope: !773, file: !25, line: 213, baseType: !1041, size: 64, offset: 704)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_variable_value_t", file: !1043, line: 17, baseType: !1044)
!1043 = !DIFile(filename: "src/stream/ngx_stream_variables.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "9fb175b04865878c75328ce50a6318ed")
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_variable_value_t", file: !45, line: 37, baseType: !1045)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 28, size: 128, elements: !1046)
!1046 = !{!1047, !1048, !1049, !1050, !1051, !1052}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1045, file: !45, line: 29, baseType: !41, size: 28, flags: DIFlagBitField, extraData: i64 0)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1045, file: !45, line: 31, baseType: !41, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "no_cacheable", scope: !1045, file: !45, line: 32, baseType: !41, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "not_found", scope: !1045, file: !45, line: 33, baseType: !41, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "escape", scope: !1045, file: !45, line: 34, baseType: !41, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1045, file: !45, line: 36, baseType: !17, size: 64, offset: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "phase_handler", scope: !773, file: !25, line: 221, baseType: !471, size: 64, offset: 768)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !773, file: !25, line: 222, baseType: !11, size: 64, offset: 832)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !773, file: !25, line: 224, baseType: !41, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "stat_processing", scope: !773, file: !25, line: 226, baseType: !41, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "health_check", scope: !773, file: !25, line: 228, baseType: !41, size: 1, offset: 898, flags: DIFlagBitField, extraData: i64 896)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !759, file: !754, line: 48, baseType: !16, size: 64, offset: 128)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "srv_conf", scope: !755, file: !754, line: 72, baseType: !29, size: 64, offset: 192)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "servers", scope: !755, file: !754, line: 74, baseType: !87, size: 64, offset: 256)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !755, file: !754, line: 77, baseType: !11, size: 64, offset: 320)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !755, file: !754, line: 78, baseType: !44, size: 128, offset: 384)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "file_name", scope: !755, file: !754, line: 79, baseType: !17, size: 64, offset: 512)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !755, file: !754, line: 80, baseType: !11, size: 64, offset: 576)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !755, file: !754, line: 81, baseType: !451, size: 16, offset: 640)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "no_port", scope: !755, file: !754, line: 82, baseType: !11, size: 64, offset: 704)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "shm_zone", scope: !755, file: !754, line: 85, baseType: !1068, size: 64, offset: 768)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shm_zone_t", file: !265, line: 31, baseType: !1070)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_shm_zone_s", file: !265, line: 37, size: 704, elements: !1071)
!1071 = !{!1072, !1073, !1083, !1088, !1089, !1090}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1070, file: !265, line: 38, baseType: !16, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "shm", scope: !1070, file: !265, line: 39, baseType: !1074, size: 384, offset: 64)
!1074 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shm_t", file: !1075, line: 22, baseType: !1076)
!1075 = !DIFile(filename: "src/os/unix/ngx_shmem.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "bf27d4781f3b25ce5eb9a764f55ea2d4")
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1075, line: 16, size: 384, elements: !1077)
!1077 = !{!1078, !1079, !1080, !1081, !1082}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1076, file: !1075, line: 17, baseType: !17, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1076, file: !1075, line: 18, baseType: !49, size: 64, offset: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1076, file: !1075, line: 19, baseType: !44, size: 128, offset: 128)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !1076, file: !1075, line: 20, baseType: !187, size: 64, offset: 256)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "exists", scope: !1076, file: !1075, line: 21, baseType: !11, size: 64, offset: 320)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1070, file: !265, line: 40, baseType: !1084, size: 64, offset: 448)
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shm_zone_init_pt", file: !265, line: 33, baseType: !1085)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!471, !1068, !16}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !1070, file: !265, line: 41, baseType: !16, size: 64, offset: 512)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1070, file: !265, line: 42, baseType: !16, size: 64, offset: 576)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "noreuse", scope: !1070, file: !265, line: 43, baseType: !11, size: 64, offset: 640)
!1091 = !DILocalVariable(name: "ccv", scope: !744, file: !2, line: 644, type: !1092)
!1092 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_compile_complex_value_t", file: !695, line: 70, baseType: !1093)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !695, line: 62, size: 256, elements: !1094)
!1094 = !{!1095, !1096, !1097, !1099, !1100, !1101}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "cf", scope: !1093, file: !695, line: 63, baseType: !81, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1093, file: !695, line: 64, baseType: !43, size: 64, offset: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "complex_value", scope: !1093, file: !695, line: 65, baseType: !1098, size: 64, offset: 128)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "zero", scope: !1093, file: !695, line: 67, baseType: !41, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "conf_prefix", scope: !1093, file: !695, line: 68, baseType: !41, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "root_prefix", scope: !1093, file: !695, line: 69, baseType: !41, size: 1, offset: 194, flags: DIFlagBitField, extraData: i64 192)
!1102 = !DILocation(line: 638, column: 38, scope: !744)
!1103 = !DILocation(line: 638, column: 57, scope: !744)
!1104 = !DILocation(line: 638, column: 68, scope: !744)
!1105 = !DILocation(line: 640, column: 5, scope: !744)
!1106 = !DILocation(line: 640, column: 43, scope: !744)
!1107 = !DILocation(line: 640, column: 49, scope: !744)
!1108 = !DILocation(line: 642, column: 5, scope: !744)
!1109 = !DILocation(line: 642, column: 42, scope: !744)
!1110 = !DILocation(line: 643, column: 5, scope: !744)
!1111 = !DILocation(line: 643, column: 42, scope: !744)
!1112 = !DILocation(line: 644, column: 5, scope: !744)
!1113 = !DILocation(line: 644, column: 42, scope: !744)
!1114 = !DILocation(line: 646, column: 13, scope: !744)
!1115 = !DILocation(line: 646, column: 17, scope: !744)
!1116 = !{!721, !712, i64 8}
!1117 = !DILocation(line: 646, column: 23, scope: !744)
!1118 = !{!1119, !712, i64 0}
!1119 = !{!"", !712, i64 0, !722, i64 8, !722, i64 16, !722, i64 24, !712, i64 32}
!1120 = !DILocation(line: 646, column: 11, scope: !744)
!1121 = !DILocation(line: 648, column: 5, scope: !744)
!1122 = !DILocation(line: 650, column: 14, scope: !744)
!1123 = !DILocation(line: 650, column: 9, scope: !744)
!1124 = !DILocation(line: 650, column: 12, scope: !744)
!1125 = !{!1126, !712, i64 0}
!1126 = !{!"", !712, i64 0, !712, i64 8, !712, i64 16, !1127, i64 24, !1127, i64 24, !1127, i64 24}
!1127 = !{!"int", !713, i64 0}
!1128 = !DILocation(line: 651, column: 18, scope: !744)
!1129 = !DILocation(line: 651, column: 9, scope: !744)
!1130 = !DILocation(line: 651, column: 15, scope: !744)
!1131 = !{!1126, !712, i64 8}
!1132 = !DILocation(line: 652, column: 26, scope: !744)
!1133 = !DILocation(line: 652, column: 31, scope: !744)
!1134 = !DILocation(line: 652, column: 9, scope: !744)
!1135 = !DILocation(line: 652, column: 23, scope: !744)
!1136 = !{!1126, !712, i64 16}
!1137 = !DILocation(line: 654, column: 9, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !744, file: !2, line: 654, column: 9)
!1139 = !DILocation(line: 654, column: 48, scope: !1138)
!1140 = !DILocation(line: 654, column: 9, scope: !744)
!1141 = !DILocation(line: 655, column: 9, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1138, file: !2, line: 654, column: 59)
!1143 = !DILocation(line: 658, column: 12, scope: !744)
!1144 = !{!721, !712, i64 56}
!1145 = !{!1146, !712, i64 8}
!1146 = !{!"", !712, i64 0, !712, i64 8}
!1147 = !{!1148, !722, i64 0}
!1148 = !{!"ngx_module_s", !722, i64 0, !722, i64 8, !712, i64 16, !722, i64 24, !722, i64 32, !722, i64 40, !712, i64 48, !712, i64 56, !712, i64 64, !722, i64 72, !712, i64 80, !712, i64 88, !712, i64 96, !712, i64 104, !712, i64 112, !712, i64 120, !712, i64 128, !722, i64 136, !722, i64 144, !722, i64 152, !722, i64 160, !722, i64 168, !722, i64 176, !722, i64 184, !722, i64 192}
!1149 = !DILocation(line: 658, column: 10, scope: !744)
!1150 = !DILocation(line: 660, column: 9, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !744, file: !2, line: 660, column: 9)
!1152 = !DILocation(line: 660, column: 15, scope: !1151)
!1153 = !DILocation(line: 660, column: 20, scope: !1151)
!1154 = !{!1155, !712, i64 0}
!1155 = !{!"ngx_stream_upstream_srv_conf_s", !1156, i64 0, !712, i64 24, !712, i64 32, !722, i64 40, !737, i64 48, !712, i64 64, !722, i64 72, !1157, i64 80, !722, i64 88, !712, i64 96}
!1156 = !{!"", !712, i64 0, !712, i64 8, !712, i64 16}
!1157 = !{!"short", !713, i64 0}
!1158 = !DILocation(line: 660, column: 9, scope: !744)
!1159 = !DILocation(line: 661, column: 42, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1151, file: !2, line: 660, column: 35)
!1161 = !DILocation(line: 661, column: 9, scope: !1160)
!1162 = !DILocation(line: 663, column: 5, scope: !1160)
!1163 = !DILocation(line: 665, column: 5, scope: !744)
!1164 = !DILocation(line: 665, column: 11, scope: !744)
!1165 = !DILocation(line: 665, column: 17, scope: !744)
!1166 = !{!1155, !722, i64 40}
!1167 = !DILocation(line: 672, column: 9, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !744, file: !2, line: 672, column: 9)
!1169 = !DILocation(line: 672, column: 13, scope: !1168)
!1170 = !DILocation(line: 672, column: 19, scope: !1168)
!1171 = !{!1119, !722, i64 8}
!1172 = !DILocation(line: 672, column: 25, scope: !1168)
!1173 = !DILocation(line: 672, column: 9, scope: !744)
!1174 = !DILocation(line: 673, column: 9, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1168, file: !2, line: 672, column: 31)
!1176 = !DILocation(line: 673, column: 15, scope: !1175)
!1177 = !DILocation(line: 673, column: 20, scope: !1175)
!1178 = !DILocation(line: 673, column: 34, scope: !1175)
!1179 = !DILocation(line: 675, column: 5, scope: !1175)
!1180 = !DILocation(line: 675, column: 16, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1168, file: !2, line: 675, column: 16)
!1182 = !{!737, !712, i64 8}
!1183 = !DILocation(line: 675, column: 56, scope: !1181)
!1184 = !DILocation(line: 675, column: 16, scope: !1168)
!1185 = !DILocation(line: 676, column: 9, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1181, file: !2, line: 675, column: 62)
!1187 = !DILocation(line: 676, column: 15, scope: !1186)
!1188 = !DILocation(line: 676, column: 20, scope: !1186)
!1189 = !DILocation(line: 676, column: 34, scope: !1186)
!1190 = !DILocation(line: 678, column: 5, scope: !1186)
!1191 = !DILocation(line: 679, column: 43, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1181, file: !2, line: 678, column: 12)
!1193 = !DILocation(line: 680, column: 57, scope: !1192)
!1194 = !DILocation(line: 679, column: 9, scope: !1192)
!1195 = !DILocation(line: 681, column: 9, scope: !1192)
!1196 = !DILocation(line: 684, column: 5, scope: !744)
!1197 = !DILocation(line: 685, column: 1, scope: !744)
!1198 = !DISubprogram(name: "ngx_stream_compile_complex_value", scope: !695, file: !695, line: 105, type: !1199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!471, !1201}
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1202 = !DISubprogram(name: "ngx_conf_log_error", scope: !73, file: !73, line: 276, type: !1203, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{null, !11, !81, !1205, !31, null}
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_err_t", file: !1206, line: 16, baseType: !143)
!1206 = !DIFile(filename: "src/os/unix/ngx_errno.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "30ed2ad8bb523aef1235abc1478ad7cf")
!1207 = distinct !DISubprogram(name: "ngx_stream_upstream_init_hash", scope: !2, file: !2, line: 108, type: !764, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1208)
!1208 = !{!1209, !1210}
!1209 = !DILocalVariable(name: "cf", arg: 1, scope: !1207, file: !2, line: 108, type: !81)
!1210 = !DILocalVariable(name: "us", arg: 2, scope: !1207, file: !2, line: 109, type: !752)
!1211 = !DILocation(line: 108, column: 43, scope: !1207)
!1212 = !DILocation(line: 109, column: 37, scope: !1207)
!1213 = !DILocation(line: 111, column: 46, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1207, file: !2, line: 111, column: 9)
!1215 = !DILocation(line: 111, column: 50, scope: !1214)
!1216 = !DILocation(line: 111, column: 9, scope: !1214)
!1217 = !DILocation(line: 111, column: 54, scope: !1214)
!1218 = !DILocation(line: 111, column: 9, scope: !1207)
!1219 = !DILocation(line: 112, column: 9, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1214, file: !2, line: 111, column: 65)
!1221 = !DILocation(line: 115, column: 5, scope: !1207)
!1222 = !DILocation(line: 115, column: 9, scope: !1207)
!1223 = !DILocation(line: 115, column: 14, scope: !1207)
!1224 = !DILocation(line: 115, column: 19, scope: !1207)
!1225 = !{!1155, !712, i64 8}
!1226 = !DILocation(line: 117, column: 5, scope: !1207)
!1227 = !DILocation(line: 118, column: 1, scope: !1207)
!1228 = !DISubprogram(name: "strcmp", scope: !1229, file: !1229, line: 156, type: !1230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1229 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!143, !31, !31}
!1232 = distinct !DISubprogram(name: "ngx_stream_upstream_init_chash", scope: !2, file: !2, line: 285, type: !764, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1233)
!1233 = !{!1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1277, !1349, !1350, !1351, !1357}
!1234 = !DILocalVariable(name: "cf", arg: 1, scope: !1232, file: !2, line: 285, type: !81)
!1235 = !DILocalVariable(name: "us", arg: 2, scope: !1232, file: !2, line: 286, type: !752)
!1236 = !DILocalVariable(name: "host", scope: !1232, file: !2, line: 288, type: !17)
!1237 = !DILocalVariable(name: "port", scope: !1232, file: !2, line: 288, type: !17)
!1238 = !DILocalVariable(name: "c", scope: !1232, file: !2, line: 288, type: !18)
!1239 = !DILocalVariable(name: "host_len", scope: !1232, file: !2, line: 289, type: !49)
!1240 = !DILocalVariable(name: "port_len", scope: !1232, file: !2, line: 289, type: !49)
!1241 = !DILocalVariable(name: "size", scope: !1232, file: !2, line: 289, type: !49)
!1242 = !DILocalVariable(name: "hash", scope: !1232, file: !2, line: 290, type: !38)
!1243 = !DILocalVariable(name: "base_hash", scope: !1232, file: !2, line: 290, type: !38)
!1244 = !DILocalVariable(name: "server", scope: !1232, file: !2, line: 291, type: !43)
!1245 = !DILocalVariable(name: "npoints", scope: !1232, file: !2, line: 292, type: !11)
!1246 = !DILocalVariable(name: "i", scope: !1232, file: !2, line: 292, type: !11)
!1247 = !DILocalVariable(name: "j", scope: !1232, file: !2, line: 292, type: !11)
!1248 = !DILocalVariable(name: "peer", scope: !1232, file: !2, line: 293, type: !1249)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_upstream_rr_peer_t", file: !1251, line: 17, baseType: !1252)
!1251 = !DIFile(filename: "src/stream/ngx_stream_upstream_round_robin.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "1effd4de6ca8ed0beca52f4f0c5304eb")
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_stream_upstream_rr_peer_s", file: !1251, line: 19, size: 1472, elements: !1253)
!1253 = !{!1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1276}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !1252, file: !1251, line: 20, baseType: !370, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !1252, file: !1251, line: 21, baseType: !383, size: 32, offset: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1252, file: !1251, line: 22, baseType: !44, size: 128, offset: 128)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1252, file: !1251, line: 23, baseType: !44, size: 128, offset: 256)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "current_weight", scope: !1252, file: !1251, line: 25, baseType: !471, size: 64, offset: 384)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "effective_weight", scope: !1252, file: !1251, line: 26, baseType: !471, size: 64, offset: 448)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1252, file: !1251, line: 27, baseType: !471, size: 64, offset: 512)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "conns", scope: !1252, file: !1251, line: 29, baseType: !11, size: 64, offset: 576)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "max_conns", scope: !1252, file: !1251, line: 30, baseType: !11, size: 64, offset: 640)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "fails", scope: !1252, file: !1251, line: 32, baseType: !11, size: 64, offset: 704)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "accessed", scope: !1252, file: !1251, line: 33, baseType: !209, size: 64, offset: 768)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "checked", scope: !1252, file: !1251, line: 34, baseType: !209, size: 64, offset: 832)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "max_fails", scope: !1252, file: !1251, line: 36, baseType: !11, size: 64, offset: 896)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "fail_timeout", scope: !1252, file: !1251, line: 37, baseType: !209, size: 64, offset: 960)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "slow_start", scope: !1252, file: !1251, line: 38, baseType: !406, size: 64, offset: 1024)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1252, file: !1251, line: 39, baseType: !406, size: 64, offset: 1088)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "down", scope: !1252, file: !1251, line: 41, baseType: !11, size: 64, offset: 1152)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_session", scope: !1252, file: !1251, line: 43, baseType: !16, size: 64, offset: 1216)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_session_len", scope: !1252, file: !1251, line: 44, baseType: !143, size: 32, offset: 1280)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1252, file: !1251, line: 47, baseType: !1274, size: 64, offset: 1344)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_atomic_t", file: !207, line: 106, baseType: !1275)
!1275 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !206)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1252, file: !1251, line: 50, baseType: !1249, size: 64, offset: 1408)
!1277 = !DILocalVariable(name: "peers", scope: !1232, file: !2, line: 294, type: !1278)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_upstream_rr_peers_t", file: !1251, line: 57, baseType: !1280)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_stream_upstream_rr_peers_s", file: !1251, line: 59, size: 576, elements: !1281)
!1281 = !{!1282, !1283, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !1280, file: !1251, line: 60, baseType: !11, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "shpool", scope: !1280, file: !1251, line: 63, baseType: !1284, size: 64, offset: 64)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_slab_pool_t", file: !1286, line: 59, baseType: !1287)
!1286 = !DIFile(filename: "src/core/ngx_slab.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "6137611cd598fa2ecc498e6967a03177")
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1286, line: 34, size: 1600, elements: !1288)
!1288 = !{!1289, !1296, !1297, !1298, !1306, !1307, !1308, !1317, !1318, !1319, !1320, !1336, !1337, !1338, !1339, !1340}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1287, file: !1286, line: 35, baseType: !1290, size: 128)
!1290 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shmtx_sh_t", file: !1291, line: 21, baseType: !1292)
!1291 = !DIFile(filename: "src/core/ngx_shmtx.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "56a332e5761f46e2bb83cbdaf8b18a9f")
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1291, line: 16, size: 128, elements: !1293)
!1293 = !{!1294, !1295}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1292, file: !1291, line: 17, baseType: !1274, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1292, file: !1291, line: 19, baseType: !1274, size: 64, offset: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "min_size", scope: !1287, file: !1286, line: 37, baseType: !49, size: 64, offset: 128)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "min_shift", scope: !1287, file: !1286, line: 38, baseType: !49, size: 64, offset: 192)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1287, file: !1286, line: 40, baseType: !1299, size: 64, offset: 256)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_slab_page_t", file: !1286, line: 16, baseType: !1301)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_slab_page_s", file: !1286, line: 18, size: 192, elements: !1302)
!1302 = !{!1303, !1304, !1305}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "slab", scope: !1301, file: !1286, line: 19, baseType: !13, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1301, file: !1286, line: 20, baseType: !1299, size: 64, offset: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1301, file: !1286, line: 21, baseType: !13, size: 64, offset: 128)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1287, file: !1286, line: 41, baseType: !1299, size: 64, offset: 320)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1287, file: !1286, line: 42, baseType: !1300, size: 192, offset: 384)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1287, file: !1286, line: 44, baseType: !1309, size: 64, offset: 576)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_slab_stat_t", file: !1286, line: 31, baseType: !1311)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1286, line: 25, size: 256, elements: !1312)
!1312 = !{!1313, !1314, !1315, !1316}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !1311, file: !1286, line: 26, baseType: !11, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1311, file: !1286, line: 27, baseType: !11, size: 64, offset: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "reqs", scope: !1311, file: !1286, line: 29, baseType: !11, size: 64, offset: 128)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "fails", scope: !1311, file: !1286, line: 30, baseType: !11, size: 64, offset: 192)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !1287, file: !1286, line: 45, baseType: !11, size: 64, offset: 640)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1287, file: !1286, line: 47, baseType: !17, size: 64, offset: 704)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1287, file: !1286, line: 48, baseType: !17, size: 64, offset: 768)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1287, file: !1286, line: 50, baseType: !1321, size: 512, offset: 832)
!1321 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shmtx_t", file: !1291, line: 37, baseType: !1322)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1291, line: 24, size: 512, elements: !1323)
!1323 = !{!1324, !1326, !1327, !1328, !1335}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1322, file: !1291, line: 26, baseType: !1325, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1322, file: !1291, line: 28, baseType: !1325, size: 64, offset: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !1322, file: !1291, line: 29, baseType: !11, size: 64, offset: 128)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1322, file: !1291, line: 30, baseType: !1329, size: 256, offset: 192)
!1329 = !DIDerivedType(tag: DW_TAG_typedef, name: "sem_t", file: !1330, line: 39, baseType: !1331)
!1330 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/semaphore.h", directory: "", checksumkind: CSK_MD5, checksum: "f0ec69aef73516c696d526041269f8fd")
!1331 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !1330, line: 35, size: 256, elements: !1332)
!1332 = !{!1333, !1334}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !1331, file: !1330, line: 37, baseType: !629, size: 256)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !1331, file: !1330, line: 38, baseType: !128, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "spin", scope: !1322, file: !1291, line: 36, baseType: !11, size: 64, offset: 448)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "log_ctx", scope: !1287, file: !1286, line: 52, baseType: !17, size: 64, offset: 1344)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "zero", scope: !1287, file: !1286, line: 53, baseType: !18, size: 8, offset: 1408)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "log_nomem", scope: !1287, file: !1286, line: 55, baseType: !41, size: 1, offset: 1416, flags: DIFlagBitField, extraData: i64 1416)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1287, file: !1286, line: 57, baseType: !16, size: 64, offset: 1472)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1287, file: !1286, line: 58, baseType: !16, size: 64, offset: 1536)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "rwlock", scope: !1280, file: !1251, line: 64, baseType: !1274, size: 64, offset: 128)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "zone_next", scope: !1280, file: !1251, line: 65, baseType: !1278, size: 64, offset: 192)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "total_weight", scope: !1280, file: !1251, line: 68, baseType: !11, size: 64, offset: 256)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "single", scope: !1280, file: !1251, line: 70, baseType: !41, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "weighted", scope: !1280, file: !1251, line: 71, baseType: !41, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1280, file: !1251, line: 73, baseType: !43, size: 64, offset: 384)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1280, file: !1251, line: 75, baseType: !1278, size: 64, offset: 448)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !1280, file: !1251, line: 77, baseType: !1249, size: 64, offset: 512)
!1349 = !DILocalVariable(name: "points", scope: !1232, file: !2, line: 295, type: !704)
!1350 = !DILocalVariable(name: "hcf", scope: !1232, file: !2, line: 296, type: !689)
!1351 = !DILocalVariable(name: "prev_hash", scope: !1232, file: !2, line: 300, type: !1352)
!1352 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1232, file: !2, line: 297, size: 32, elements: !1353)
!1353 = !{!1354, !1355}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1352, file: !2, line: 298, baseType: !38, size: 32)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !1352, file: !2, line: 299, baseType: !1356, size: 32)
!1356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 32, elements: !645)
!1357 = !DILabel(scope: !1358, name: "done", file: !2, line: 360)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !2, line: 321, column: 55)
!1359 = distinct !DILexicalBlock(scope: !1360, file: !2, line: 321, column: 5)
!1360 = distinct !DILexicalBlock(scope: !1232, file: !2, line: 321, column: 5)
!1361 = !DILocation(line: 285, column: 44, scope: !1232)
!1362 = !DILocation(line: 286, column: 37, scope: !1232)
!1363 = !DILocation(line: 288, column: 5, scope: !1232)
!1364 = !DILocation(line: 288, column: 43, scope: !1232)
!1365 = !DILocation(line: 288, column: 50, scope: !1232)
!1366 = !DILocation(line: 288, column: 56, scope: !1232)
!1367 = !DILocation(line: 289, column: 5, scope: !1232)
!1368 = !DILocation(line: 289, column: 43, scope: !1232)
!1369 = !DILocation(line: 289, column: 53, scope: !1232)
!1370 = !DILocation(line: 289, column: 63, scope: !1232)
!1371 = !DILocation(line: 290, column: 5, scope: !1232)
!1372 = !DILocation(line: 290, column: 43, scope: !1232)
!1373 = !DILocation(line: 290, column: 49, scope: !1232)
!1374 = !DILocation(line: 291, column: 5, scope: !1232)
!1375 = !DILocation(line: 291, column: 43, scope: !1232)
!1376 = !DILocation(line: 292, column: 5, scope: !1232)
!1377 = !DILocation(line: 292, column: 43, scope: !1232)
!1378 = !DILocation(line: 292, column: 52, scope: !1232)
!1379 = !DILocation(line: 292, column: 55, scope: !1232)
!1380 = !DILocation(line: 293, column: 5, scope: !1232)
!1381 = !DILocation(line: 293, column: 43, scope: !1232)
!1382 = !DILocation(line: 294, column: 5, scope: !1232)
!1383 = !DILocation(line: 294, column: 43, scope: !1232)
!1384 = !DILocation(line: 295, column: 5, scope: !1232)
!1385 = !DILocation(line: 295, column: 43, scope: !1232)
!1386 = !DILocation(line: 296, column: 5, scope: !1232)
!1387 = !DILocation(line: 296, column: 43, scope: !1232)
!1388 = !DILocation(line: 297, column: 5, scope: !1232)
!1389 = !DILocation(line: 300, column: 7, scope: !1232)
!1390 = !DILocation(line: 302, column: 46, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1232, file: !2, line: 302, column: 9)
!1392 = !DILocation(line: 302, column: 50, scope: !1391)
!1393 = !DILocation(line: 302, column: 9, scope: !1391)
!1394 = !DILocation(line: 302, column: 54, scope: !1391)
!1395 = !DILocation(line: 302, column: 9, scope: !1232)
!1396 = !DILocation(line: 303, column: 9, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1391, file: !2, line: 302, column: 65)
!1398 = !DILocation(line: 306, column: 5, scope: !1232)
!1399 = !DILocation(line: 306, column: 9, scope: !1232)
!1400 = !DILocation(line: 306, column: 14, scope: !1232)
!1401 = !DILocation(line: 306, column: 19, scope: !1232)
!1402 = !DILocation(line: 308, column: 13, scope: !1232)
!1403 = !DILocation(line: 308, column: 17, scope: !1232)
!1404 = !DILocation(line: 308, column: 22, scope: !1232)
!1405 = !{!1155, !712, i64 16}
!1406 = !DILocation(line: 308, column: 11, scope: !1232)
!1407 = !DILocation(line: 309, column: 15, scope: !1232)
!1408 = !DILocation(line: 309, column: 22, scope: !1232)
!1409 = !{!1410, !722, i64 32}
!1410 = !{!"ngx_stream_upstream_rr_peers_s", !722, i64 0, !712, i64 8, !722, i64 16, !712, i64 24, !722, i64 32, !1127, i64 40, !1127, i64 40, !712, i64 48, !712, i64 56, !712, i64 64}
!1411 = !DILocation(line: 309, column: 35, scope: !1232)
!1412 = !DILocation(line: 309, column: 13, scope: !1232)
!1413 = !{!722, !722, i64 0}
!1414 = !DILocation(line: 312, column: 59, scope: !1232)
!1415 = !DILocation(line: 312, column: 67, scope: !1232)
!1416 = !DILocation(line: 312, column: 56, scope: !1232)
!1417 = !DILocation(line: 312, column: 12, scope: !1232)
!1418 = !DILocation(line: 311, column: 10, scope: !1232)
!1419 = !DILocation(line: 314, column: 25, scope: !1232)
!1420 = !DILocation(line: 314, column: 29, scope: !1232)
!1421 = !DILocation(line: 314, column: 35, scope: !1232)
!1422 = !DILocation(line: 314, column: 14, scope: !1232)
!1423 = !DILocation(line: 314, column: 12, scope: !1232)
!1424 = !DILocation(line: 315, column: 9, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1232, file: !2, line: 315, column: 9)
!1426 = !DILocation(line: 315, column: 16, scope: !1425)
!1427 = !DILocation(line: 315, column: 9, scope: !1232)
!1428 = !DILocation(line: 316, column: 9, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1425, file: !2, line: 315, column: 25)
!1430 = !DILocation(line: 319, column: 5, scope: !1232)
!1431 = !DILocation(line: 319, column: 13, scope: !1232)
!1432 = !DILocation(line: 319, column: 20, scope: !1232)
!1433 = !{!1434, !722, i64 0}
!1434 = !{!"", !722, i64 0, !713, i64 8}
!1435 = !DILocation(line: 321, column: 17, scope: !1360)
!1436 = !DILocation(line: 321, column: 24, scope: !1360)
!1437 = !{!1410, !712, i64 64}
!1438 = !DILocation(line: 321, column: 15, scope: !1360)
!1439 = !DILocation(line: 321, column: 10, scope: !1360)
!1440 = !DILocation(line: 321, column: 30, scope: !1359)
!1441 = !DILocation(line: 321, column: 5, scope: !1360)
!1442 = !DILocation(line: 322, column: 19, scope: !1358)
!1443 = !DILocation(line: 322, column: 25, scope: !1358)
!1444 = !DILocation(line: 322, column: 16, scope: !1358)
!1445 = !DILocation(line: 329, column: 13, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1358, file: !2, line: 329, column: 13)
!1447 = !DILocation(line: 329, column: 21, scope: !1446)
!1448 = !{!737, !722, i64 0}
!1449 = !DILocation(line: 329, column: 25, scope: !1446)
!1450 = !DILocation(line: 330, column: 13, scope: !1446)
!1451 = !DILocation(line: 330, column: 32, scope: !1446)
!1452 = !DILocation(line: 330, column: 40, scope: !1446)
!1453 = !DILocation(line: 330, column: 16, scope: !1446)
!1454 = !DILocation(line: 330, column: 69, scope: !1446)
!1455 = !DILocation(line: 329, column: 13, scope: !1358)
!1456 = !DILocation(line: 332, column: 20, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1446, file: !2, line: 331, column: 9)
!1458 = !DILocation(line: 332, column: 28, scope: !1457)
!1459 = !DILocation(line: 332, column: 33, scope: !1457)
!1460 = !DILocation(line: 332, column: 18, scope: !1457)
!1461 = !DILocation(line: 333, column: 24, scope: !1457)
!1462 = !DILocation(line: 333, column: 32, scope: !1457)
!1463 = !DILocation(line: 333, column: 36, scope: !1457)
!1464 = !DILocation(line: 333, column: 22, scope: !1457)
!1465 = !DILocation(line: 334, column: 18, scope: !1457)
!1466 = !DILocation(line: 335, column: 22, scope: !1457)
!1467 = !DILocation(line: 336, column: 13, scope: !1457)
!1468 = !DILocation(line: 339, column: 16, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1358, file: !2, line: 339, column: 9)
!1470 = !DILocation(line: 339, column: 14, scope: !1469)
!1471 = !DILocation(line: 339, column: 21, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1469, file: !2, line: 339, column: 9)
!1473 = !DILocation(line: 339, column: 25, scope: !1472)
!1474 = !DILocation(line: 339, column: 33, scope: !1472)
!1475 = !DILocation(line: 339, column: 23, scope: !1472)
!1476 = !DILocation(line: 339, column: 9, scope: !1469)
!1477 = !DILocation(line: 340, column: 17, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1472, file: !2, line: 339, column: 43)
!1479 = !DILocation(line: 340, column: 25, scope: !1478)
!1480 = !DILocation(line: 340, column: 30, scope: !1478)
!1481 = !DILocation(line: 340, column: 38, scope: !1478)
!1482 = !DILocation(line: 340, column: 44, scope: !1478)
!1483 = !DILocation(line: 340, column: 42, scope: !1478)
!1484 = !DILocation(line: 340, column: 46, scope: !1478)
!1485 = !{!713, !713, i64 0}
!1486 = !DILocation(line: 340, column: 15, scope: !1478)
!1487 = !DILocation(line: 342, column: 17, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1478, file: !2, line: 342, column: 17)
!1489 = !DILocation(line: 342, column: 19, scope: !1488)
!1490 = !DILocation(line: 342, column: 17, scope: !1478)
!1491 = !DILocation(line: 343, column: 24, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1488, file: !2, line: 342, column: 27)
!1493 = !DILocation(line: 343, column: 32, scope: !1492)
!1494 = !DILocation(line: 343, column: 22, scope: !1492)
!1495 = !DILocation(line: 344, column: 28, scope: !1492)
!1496 = !DILocation(line: 344, column: 36, scope: !1492)
!1497 = !DILocation(line: 344, column: 42, scope: !1492)
!1498 = !DILocation(line: 344, column: 40, scope: !1492)
!1499 = !DILocation(line: 344, column: 44, scope: !1492)
!1500 = !DILocation(line: 344, column: 26, scope: !1492)
!1501 = !DILocation(line: 345, column: 24, scope: !1492)
!1502 = !DILocation(line: 345, column: 32, scope: !1492)
!1503 = !DILocation(line: 345, column: 39, scope: !1492)
!1504 = !DILocation(line: 345, column: 47, scope: !1492)
!1505 = !DILocation(line: 345, column: 37, scope: !1492)
!1506 = !DILocation(line: 345, column: 53, scope: !1492)
!1507 = !DILocation(line: 345, column: 51, scope: !1492)
!1508 = !DILocation(line: 345, column: 22, scope: !1492)
!1509 = !DILocation(line: 346, column: 28, scope: !1492)
!1510 = !DILocation(line: 346, column: 26, scope: !1492)
!1511 = !DILocation(line: 347, column: 17, scope: !1492)
!1512 = !DILocation(line: 350, column: 17, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1478, file: !2, line: 350, column: 17)
!1514 = !DILocation(line: 350, column: 19, scope: !1513)
!1515 = !DILocation(line: 350, column: 25, scope: !1513)
!1516 = !DILocation(line: 350, column: 28, scope: !1513)
!1517 = !DILocation(line: 350, column: 30, scope: !1513)
!1518 = !DILocation(line: 350, column: 17, scope: !1478)
!1519 = !DILocation(line: 351, column: 17, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1513, file: !2, line: 350, column: 37)
!1521 = !DILocation(line: 353, column: 9, scope: !1478)
!1522 = !DILocation(line: 339, column: 39, scope: !1472)
!1523 = !DILocation(line: 339, column: 9, scope: !1472)
!1524 = distinct !{!1524, !1476, !1525, !1526}
!1525 = !DILocation(line: 353, column: 9, scope: !1469)
!1526 = !{!"llvm.loop.mustprogress"}
!1527 = !DILocation(line: 355, column: 16, scope: !1358)
!1528 = !DILocation(line: 355, column: 24, scope: !1358)
!1529 = !DILocation(line: 355, column: 14, scope: !1358)
!1530 = !DILocation(line: 356, column: 20, scope: !1358)
!1531 = !DILocation(line: 356, column: 28, scope: !1358)
!1532 = !DILocation(line: 356, column: 18, scope: !1358)
!1533 = !DILocation(line: 357, column: 14, scope: !1358)
!1534 = !DILocation(line: 358, column: 18, scope: !1358)
!1535 = !DILocation(line: 358, column: 9, scope: !1358)
!1536 = !DILocation(line: 360, column: 5, scope: !1358)
!1537 = !DILocation(line: 362, column: 9, scope: !1358)
!1538 = !{!1127, !1127, i64 0}
!1539 = !DILocation(line: 363, column: 38, scope: !1358)
!1540 = !DILocation(line: 363, column: 44, scope: !1358)
!1541 = !DILocation(line: 363, column: 9, scope: !1358)
!1542 = !DILocation(line: 364, column: 9, scope: !1358)
!1543 = !DILocation(line: 365, column: 38, scope: !1358)
!1544 = !DILocation(line: 365, column: 44, scope: !1358)
!1545 = !DILocation(line: 365, column: 9, scope: !1358)
!1546 = !DILocation(line: 367, column: 25, scope: !1358)
!1547 = !DILocation(line: 368, column: 19, scope: !1358)
!1548 = !DILocation(line: 368, column: 25, scope: !1358)
!1549 = !{!1550, !722, i64 64}
!1550 = !{!"ngx_stream_upstream_rr_peer_s", !712, i64 0, !1127, i64 8, !737, i64 16, !737, i64 32, !722, i64 48, !722, i64 56, !722, i64 64, !722, i64 72, !722, i64 80, !722, i64 88, !722, i64 96, !722, i64 104, !722, i64 112, !722, i64 120, !722, i64 128, !722, i64 136, !722, i64 144, !712, i64 152, !1127, i64 160, !722, i64 168, !712, i64 176}
!1551 = !DILocation(line: 368, column: 32, scope: !1358)
!1552 = !DILocation(line: 368, column: 17, scope: !1358)
!1553 = !DILocation(line: 370, column: 16, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1358, file: !2, line: 370, column: 9)
!1555 = !DILocation(line: 370, column: 14, scope: !1554)
!1556 = !DILocation(line: 370, column: 21, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1554, file: !2, line: 370, column: 9)
!1558 = !DILocation(line: 370, column: 25, scope: !1557)
!1559 = !DILocation(line: 370, column: 23, scope: !1557)
!1560 = !DILocation(line: 370, column: 9, scope: !1554)
!1561 = !DILocation(line: 371, column: 20, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1557, file: !2, line: 370, column: 39)
!1563 = !DILocation(line: 371, column: 18, scope: !1562)
!1564 = !DILocation(line: 373, column: 37, scope: !1562)
!1565 = !DILocation(line: 373, column: 13, scope: !1562)
!1566 = !DILocation(line: 374, column: 13, scope: !1562)
!1567 = !DILocation(line: 376, column: 50, scope: !1562)
!1568 = !DILocation(line: 376, column: 13, scope: !1562)
!1569 = !DILocation(line: 376, column: 21, scope: !1562)
!1570 = !DILocation(line: 376, column: 27, scope: !1562)
!1571 = !DILocation(line: 376, column: 35, scope: !1562)
!1572 = !DILocation(line: 376, column: 43, scope: !1562)
!1573 = !DILocation(line: 376, column: 48, scope: !1562)
!1574 = !{!1575, !1127, i64 0}
!1575 = !{!"", !1127, i64 0, !712, i64 8}
!1576 = !DILocation(line: 377, column: 52, scope: !1562)
!1577 = !DILocation(line: 377, column: 13, scope: !1562)
!1578 = !DILocation(line: 377, column: 21, scope: !1562)
!1579 = !DILocation(line: 377, column: 27, scope: !1562)
!1580 = !DILocation(line: 377, column: 35, scope: !1562)
!1581 = !DILocation(line: 377, column: 43, scope: !1562)
!1582 = !DILocation(line: 377, column: 50, scope: !1562)
!1583 = !{!1575, !712, i64 8}
!1584 = !DILocation(line: 378, column: 13, scope: !1562)
!1585 = !DILocation(line: 378, column: 21, scope: !1562)
!1586 = !DILocation(line: 378, column: 27, scope: !1562)
!1587 = !DILocation(line: 381, column: 31, scope: !1562)
!1588 = !DILocation(line: 381, column: 29, scope: !1562)
!1589 = !DILocation(line: 388, column: 9, scope: !1562)
!1590 = !DILocation(line: 370, column: 35, scope: !1557)
!1591 = !DILocation(line: 370, column: 9, scope: !1557)
!1592 = distinct !{!1592, !1560, !1593, !1526}
!1593 = !DILocation(line: 388, column: 9, scope: !1554)
!1594 = !DILocation(line: 389, column: 5, scope: !1358)
!1595 = !DILocation(line: 321, column: 43, scope: !1359)
!1596 = !DILocation(line: 321, column: 49, scope: !1359)
!1597 = !{!1550, !712, i64 176}
!1598 = !DILocation(line: 321, column: 41, scope: !1359)
!1599 = !DILocation(line: 321, column: 5, scope: !1359)
!1600 = distinct !{!1600, !1441, !1601, !1526}
!1601 = !DILocation(line: 389, column: 5, scope: !1360)
!1602 = !DILocation(line: 391, column: 15, scope: !1232)
!1603 = !DILocation(line: 391, column: 23, scope: !1232)
!1604 = !DILocation(line: 392, column: 15, scope: !1232)
!1605 = !DILocation(line: 392, column: 23, scope: !1232)
!1606 = !DILocation(line: 391, column: 5, scope: !1232)
!1607 = !DILocation(line: 396, column: 12, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1232, file: !2, line: 396, column: 5)
!1609 = !DILocation(line: 396, column: 19, scope: !1608)
!1610 = !DILocation(line: 396, column: 10, scope: !1608)
!1611 = !DILocation(line: 396, column: 24, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1608, file: !2, line: 396, column: 5)
!1613 = !DILocation(line: 396, column: 28, scope: !1612)
!1614 = !DILocation(line: 396, column: 36, scope: !1612)
!1615 = !DILocation(line: 396, column: 26, scope: !1612)
!1616 = !DILocation(line: 396, column: 5, scope: !1608)
!1617 = !DILocation(line: 397, column: 13, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1619, file: !2, line: 397, column: 13)
!1619 = distinct !DILexicalBlock(scope: !1612, file: !2, line: 396, column: 49)
!1620 = !DILocation(line: 397, column: 21, scope: !1618)
!1621 = !DILocation(line: 397, column: 27, scope: !1618)
!1622 = !DILocation(line: 397, column: 30, scope: !1618)
!1623 = !DILocation(line: 397, column: 38, scope: !1618)
!1624 = !DILocation(line: 397, column: 46, scope: !1618)
!1625 = !DILocation(line: 397, column: 52, scope: !1618)
!1626 = !DILocation(line: 397, column: 55, scope: !1618)
!1627 = !DILocation(line: 397, column: 35, scope: !1618)
!1628 = !DILocation(line: 397, column: 13, scope: !1619)
!1629 = !DILocation(line: 398, column: 13, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1618, file: !2, line: 397, column: 61)
!1631 = !DILocation(line: 398, column: 21, scope: !1630)
!1632 = !DILocation(line: 398, column: 27, scope: !1630)
!1633 = !DILocation(line: 398, column: 34, scope: !1630)
!1634 = !DILocation(line: 398, column: 42, scope: !1630)
!1635 = !DILocation(line: 398, column: 48, scope: !1630)
!1636 = !{i64 0, i64 4, !1538, i64 8, i64 8, !711}
!1637 = !DILocation(line: 399, column: 9, scope: !1630)
!1638 = !DILocation(line: 400, column: 5, scope: !1619)
!1639 = !DILocation(line: 396, column: 45, scope: !1612)
!1640 = !DILocation(line: 396, column: 5, scope: !1612)
!1641 = distinct !{!1641, !1616, !1642, !1526}
!1642 = !DILocation(line: 400, column: 5, scope: !1608)
!1643 = !DILocation(line: 402, column: 22, scope: !1232)
!1644 = !DILocation(line: 402, column: 24, scope: !1232)
!1645 = !DILocation(line: 402, column: 5, scope: !1232)
!1646 = !DILocation(line: 402, column: 13, scope: !1232)
!1647 = !DILocation(line: 402, column: 20, scope: !1232)
!1648 = !DILocation(line: 404, column: 11, scope: !1232)
!1649 = !{!1155, !712, i64 24}
!1650 = !DILocation(line: 404, column: 9, scope: !1232)
!1651 = !DILocation(line: 406, column: 19, scope: !1232)
!1652 = !DILocation(line: 406, column: 5, scope: !1232)
!1653 = !DILocation(line: 406, column: 10, scope: !1232)
!1654 = !DILocation(line: 406, column: 17, scope: !1232)
!1655 = !DILocation(line: 408, column: 5, scope: !1232)
!1656 = !DILocation(line: 409, column: 1, scope: !1232)
!1657 = !DISubprogram(name: "ngx_stream_upstream_init_round_robin", scope: !1251, file: !1251, line: 134, type: !764, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1658 = distinct !DISubprogram(name: "ngx_stream_upstream_init_hash_peer", scope: !2, file: !2, line: 122, type: !769, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1659)
!1659 = !{!1660, !1661, !1662, !1663}
!1660 = !DILocalVariable(name: "s", arg: 1, scope: !1658, file: !2, line: 122, type: !771)
!1661 = !DILocalVariable(name: "us", arg: 2, scope: !1658, file: !2, line: 123, type: !752)
!1662 = !DILocalVariable(name: "hcf", scope: !1658, file: !2, line: 125, type: !689)
!1663 = !DILocalVariable(name: "hp", scope: !1658, file: !2, line: 126, type: !1664)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_upstream_hash_peer_data_t", file: !2, line: 40, baseType: !1666)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 31, size: 768, elements: !1667)
!1667 = !{!1668, !1678, !1679, !1680, !1681, !1682, !1683}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "rrp", scope: !1666, file: !2, line: 33, baseType: !1669, size: 320)
!1669 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_upstream_rr_peer_data_t", file: !1251, line: 131, baseType: !1670)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1251, line: 125, size: 320, elements: !1671)
!1671 = !{!1672, !1673, !1674, !1675, !1677}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !1670, file: !1251, line: 126, baseType: !11, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "peers", scope: !1670, file: !1251, line: 127, baseType: !1278, size: 64, offset: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !1670, file: !1251, line: 128, baseType: !1249, size: 64, offset: 128)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "tried", scope: !1670, file: !1251, line: 129, baseType: !1676, size: 64, offset: 192)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1670, file: !1251, line: 130, baseType: !13, size: 64, offset: 256)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !1666, file: !2, line: 34, baseType: !689, size: 64, offset: 320)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1666, file: !2, line: 35, baseType: !44, size: 128, offset: 384)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "tries", scope: !1666, file: !2, line: 36, baseType: !11, size: 64, offset: 512)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "rehash", scope: !1666, file: !2, line: 37, baseType: !11, size: 64, offset: 576)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1666, file: !2, line: 38, baseType: !38, size: 32, offset: 640)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "get_rr_peer", scope: !1666, file: !2, line: 39, baseType: !801, size: 64, offset: 704)
!1684 = !DILocation(line: 122, column: 58, scope: !1658)
!1685 = !DILocation(line: 123, column: 37, scope: !1658)
!1686 = !DILocation(line: 125, column: 5, scope: !1658)
!1687 = !DILocation(line: 125, column: 44, scope: !1658)
!1688 = !DILocation(line: 126, column: 5, scope: !1658)
!1689 = !DILocation(line: 126, column: 44, scope: !1658)
!1690 = !DILocation(line: 128, column: 21, scope: !1658)
!1691 = !DILocation(line: 128, column: 24, scope: !1658)
!1692 = !{!1693, !712, i64 8}
!1693 = !{!"ngx_stream_session_s", !1127, i64 0, !712, i64 8, !722, i64 16, !722, i64 24, !722, i64 32, !712, i64 40, !712, i64 48, !712, i64 56, !712, i64 64, !712, i64 72, !712, i64 80, !712, i64 88, !722, i64 96, !722, i64 104, !1127, i64 112, !1127, i64 112, !1127, i64 112}
!1694 = !DILocation(line: 128, column: 36, scope: !1658)
!1695 = !{!1696, !712, i64 88}
!1696 = !{!"ngx_connection_s", !712, i64 0, !712, i64 8, !712, i64 16, !1127, i64 24, !712, i64 32, !712, i64 40, !712, i64 48, !712, i64 56, !712, i64 64, !722, i64 72, !712, i64 80, !712, i64 88, !1127, i64 96, !712, i64 104, !1127, i64 112, !737, i64 120, !737, i64 136, !1157, i64 152, !712, i64 160, !712, i64 168, !712, i64 176, !1127, i64 184, !712, i64 192, !1697, i64 200, !722, i64 216, !722, i64 224, !1127, i64 232, !1127, i64 233, !1127, i64 233, !1127, i64 233, !1127, i64 233, !1127, i64 233, !1127, i64 233, !1127, i64 234, !1127, i64 234, !1127, i64 234, !1127, i64 234, !1127, i64 234, !1127, i64 234, !1127, i64 235}
!1697 = !{!"ngx_queue_s", !712, i64 0, !712, i64 8}
!1698 = !DILocation(line: 128, column: 10, scope: !1658)
!1699 = !DILocation(line: 128, column: 8, scope: !1658)
!1700 = !DILocation(line: 130, column: 9, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1658, file: !2, line: 130, column: 9)
!1702 = !DILocation(line: 130, column: 12, scope: !1701)
!1703 = !DILocation(line: 130, column: 9, scope: !1658)
!1704 = !DILocation(line: 131, column: 9, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1701, file: !2, line: 130, column: 21)
!1706 = !DILocation(line: 134, column: 31, scope: !1658)
!1707 = !DILocation(line: 134, column: 35, scope: !1658)
!1708 = !DILocation(line: 134, column: 5, scope: !1658)
!1709 = !DILocation(line: 134, column: 8, scope: !1658)
!1710 = !{!1693, !712, i64 72}
!1711 = !DILocation(line: 134, column: 18, scope: !1658)
!1712 = !DILocation(line: 134, column: 23, scope: !1658)
!1713 = !DILocation(line: 134, column: 28, scope: !1658)
!1714 = !{!1715, !712, i64 72}
!1715 = !{!"", !1716, i64 0, !1717, i64 128, !1717, i64 208, !712, i64 288, !712, i64 296, !712, i64 304, !712, i64 312, !712, i64 320, !722, i64 328, !722, i64 336, !722, i64 344, !722, i64 352, !722, i64 360, !737, i64 368, !712, i64 384, !712, i64 392, !712, i64 400, !1127, i64 408, !1127, i64 408}
!1716 = !{!"ngx_peer_connection_s", !712, i64 0, !712, i64 8, !1127, i64 16, !712, i64 24, !722, i64 32, !722, i64 40, !712, i64 48, !712, i64 56, !712, i64 64, !712, i64 72, !712, i64 80, !712, i64 88, !712, i64 96, !1127, i64 104, !1127, i64 108, !712, i64 112, !1127, i64 120, !1127, i64 120, !1127, i64 120, !1127, i64 120}
!1717 = !{!"ngx_buf_s", !712, i64 0, !712, i64 8, !722, i64 16, !722, i64 24, !712, i64 32, !712, i64 40, !712, i64 48, !712, i64 56, !712, i64 64, !1127, i64 72, !1127, i64 72, !1127, i64 72, !1127, i64 72, !1127, i64 72, !1127, i64 72, !1127, i64 72, !1127, i64 72, !1127, i64 73, !1127, i64 73, !1127, i64 73, !1127, i64 76}
!1718 = !DILocation(line: 136, column: 51, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1658, file: !2, line: 136, column: 9)
!1720 = !DILocation(line: 136, column: 54, scope: !1719)
!1721 = !DILocation(line: 136, column: 9, scope: !1719)
!1722 = !DILocation(line: 136, column: 58, scope: !1719)
!1723 = !DILocation(line: 136, column: 9, scope: !1658)
!1724 = !DILocation(line: 137, column: 9, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1719, file: !2, line: 136, column: 69)
!1726 = !DILocation(line: 140, column: 5, scope: !1658)
!1727 = !DILocation(line: 140, column: 8, scope: !1658)
!1728 = !DILocation(line: 140, column: 18, scope: !1658)
!1729 = !DILocation(line: 140, column: 23, scope: !1658)
!1730 = !DILocation(line: 140, column: 27, scope: !1658)
!1731 = !{!1715, !712, i64 48}
!1732 = !DILocation(line: 142, column: 11, scope: !1658)
!1733 = !DILocation(line: 142, column: 9, scope: !1658)
!1734 = !DILocation(line: 145, column: 34, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1658, file: !2, line: 145, column: 9)
!1736 = !DILocation(line: 145, column: 38, scope: !1735)
!1737 = !DILocation(line: 145, column: 43, scope: !1735)
!1738 = !DILocation(line: 145, column: 49, scope: !1735)
!1739 = !DILocation(line: 145, column: 53, scope: !1735)
!1740 = !DILocation(line: 145, column: 9, scope: !1735)
!1741 = !DILocation(line: 145, column: 58, scope: !1735)
!1742 = !DILocation(line: 145, column: 9, scope: !1658)
!1743 = !DILocation(line: 146, column: 9, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1735, file: !2, line: 145, column: 69)
!1745 = !DILocation(line: 152, column: 16, scope: !1658)
!1746 = !DILocation(line: 152, column: 5, scope: !1658)
!1747 = !DILocation(line: 152, column: 9, scope: !1658)
!1748 = !DILocation(line: 152, column: 14, scope: !1658)
!1749 = !{!1750, !712, i64 40}
!1750 = !{!"", !1751, i64 0, !712, i64 40, !737, i64 48, !722, i64 64, !722, i64 72, !1127, i64 80, !712, i64 88}
!1751 = !{!"", !722, i64 0, !712, i64 8, !712, i64 16, !712, i64 24, !722, i64 32}
!1752 = !DILocation(line: 153, column: 5, scope: !1658)
!1753 = !DILocation(line: 153, column: 9, scope: !1658)
!1754 = !DILocation(line: 153, column: 15, scope: !1658)
!1755 = !{!1750, !722, i64 64}
!1756 = !DILocation(line: 154, column: 5, scope: !1658)
!1757 = !DILocation(line: 154, column: 9, scope: !1658)
!1758 = !DILocation(line: 154, column: 16, scope: !1658)
!1759 = !{!1750, !722, i64 72}
!1760 = !DILocation(line: 155, column: 5, scope: !1658)
!1761 = !DILocation(line: 155, column: 9, scope: !1658)
!1762 = !DILocation(line: 155, column: 14, scope: !1658)
!1763 = !{!1750, !1127, i64 80}
!1764 = !DILocation(line: 156, column: 5, scope: !1658)
!1765 = !DILocation(line: 156, column: 9, scope: !1658)
!1766 = !DILocation(line: 156, column: 21, scope: !1658)
!1767 = !{!1750, !712, i64 88}
!1768 = !DILocation(line: 158, column: 5, scope: !1658)
!1769 = !DILocation(line: 159, column: 1, scope: !1658)
!1770 = !DISubprogram(name: "ngx_stream_upstream_init_round_robin_peer", scope: !1251, file: !1251, line: 136, type: !769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1771 = distinct !DISubprogram(name: "ngx_stream_upstream_get_hash_peer", scope: !2, file: !2, line: 163, type: !803, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1772)
!1772 = !{!1773, !1774, !1775, !1776, !1777, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788}
!1773 = !DILocalVariable(name: "pc", arg: 1, scope: !1771, file: !2, line: 163, type: !805)
!1774 = !DILocalVariable(name: "data", arg: 2, scope: !1771, file: !2, line: 163, type: !16)
!1775 = !DILocalVariable(name: "hp", scope: !1771, file: !2, line: 165, type: !1664)
!1776 = !DILocalVariable(name: "now", scope: !1771, file: !2, line: 167, type: !209)
!1777 = !DILocalVariable(name: "buf", scope: !1771, file: !2, line: 168, type: !1778)
!1778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 160, elements: !1779)
!1779 = !{!1780}
!1780 = !DISubrange(count: 20)
!1781 = !DILocalVariable(name: "size", scope: !1771, file: !2, line: 169, type: !49)
!1782 = !DILocalVariable(name: "hash", scope: !1771, file: !2, line: 170, type: !38)
!1783 = !DILocalVariable(name: "w", scope: !1771, file: !2, line: 171, type: !471)
!1784 = !DILocalVariable(name: "m", scope: !1771, file: !2, line: 172, type: !13)
!1785 = !DILocalVariable(name: "n", scope: !1771, file: !2, line: 173, type: !11)
!1786 = !DILocalVariable(name: "p", scope: !1771, file: !2, line: 173, type: !11)
!1787 = !DILocalVariable(name: "peer", scope: !1771, file: !2, line: 174, type: !1249)
!1788 = !DILabel(scope: !1789, name: "next", file: !2, line: 255)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !2, line: 190, column: 16)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !2, line: 190, column: 5)
!1791 = distinct !DILexicalBlock(scope: !1771, file: !2, line: 190, column: 5)
!1792 = !DILocation(line: 163, column: 58, scope: !1771)
!1793 = !DILocation(line: 163, column: 68, scope: !1771)
!1794 = !DILocation(line: 165, column: 5, scope: !1771)
!1795 = !DILocation(line: 165, column: 43, scope: !1771)
!1796 = !DILocation(line: 165, column: 48, scope: !1771)
!1797 = !DILocation(line: 167, column: 5, scope: !1771)
!1798 = !DILocation(line: 167, column: 37, scope: !1771)
!1799 = !DILocation(line: 168, column: 5, scope: !1771)
!1800 = !DILocation(line: 168, column: 37, scope: !1771)
!1801 = !DILocation(line: 169, column: 5, scope: !1771)
!1802 = !DILocation(line: 169, column: 37, scope: !1771)
!1803 = !DILocation(line: 170, column: 5, scope: !1771)
!1804 = !DILocation(line: 170, column: 37, scope: !1771)
!1805 = !DILocation(line: 171, column: 5, scope: !1771)
!1806 = !DILocation(line: 171, column: 37, scope: !1771)
!1807 = !DILocation(line: 172, column: 5, scope: !1771)
!1808 = !DILocation(line: 172, column: 37, scope: !1771)
!1809 = !DILocation(line: 173, column: 5, scope: !1771)
!1810 = !DILocation(line: 173, column: 37, scope: !1771)
!1811 = !DILocation(line: 173, column: 40, scope: !1771)
!1812 = !DILocation(line: 174, column: 5, scope: !1771)
!1813 = !DILocation(line: 174, column: 37, scope: !1771)
!1814 = !DILocation(line: 179, column: 5, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1771, file: !2, line: 179, column: 5)
!1816 = !{!1750, !712, i64 8}
!1817 = !{!1410, !712, i64 8}
!1818 = !DILocation(line: 179, column: 5, scope: !1771)
!1819 = !DILocation(line: 179, column: 5, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1815, file: !2, line: 179, column: 5)
!1821 = !DILocation(line: 181, column: 9, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1771, file: !2, line: 181, column: 9)
!1823 = !DILocation(line: 181, column: 13, scope: !1822)
!1824 = !DILocation(line: 181, column: 19, scope: !1822)
!1825 = !DILocation(line: 181, column: 24, scope: !1822)
!1826 = !DILocation(line: 181, column: 27, scope: !1822)
!1827 = !DILocation(line: 181, column: 31, scope: !1822)
!1828 = !DILocation(line: 181, column: 35, scope: !1822)
!1829 = !DILocation(line: 181, column: 42, scope: !1822)
!1830 = !DILocation(line: 181, column: 9, scope: !1771)
!1831 = !DILocation(line: 182, column: 9, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1833, file: !2, line: 182, column: 9)
!1833 = distinct !DILexicalBlock(scope: !1822, file: !2, line: 181, column: 50)
!1834 = !DILocation(line: 182, column: 9, scope: !1833)
!1835 = !DILocation(line: 182, column: 9, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1832, file: !2, line: 182, column: 9)
!1837 = !DILocation(line: 183, column: 16, scope: !1833)
!1838 = !DILocation(line: 183, column: 20, scope: !1833)
!1839 = !DILocation(line: 183, column: 32, scope: !1833)
!1840 = !DILocation(line: 183, column: 37, scope: !1833)
!1841 = !DILocation(line: 183, column: 41, scope: !1833)
!1842 = !DILocation(line: 183, column: 9, scope: !1833)
!1843 = !DILocation(line: 186, column: 11, scope: !1771)
!1844 = !{!1845, !722, i64 0}
!1845 = !{!"", !722, i64 0, !722, i64 8, !722, i64 16}
!1846 = !DILocation(line: 186, column: 9, scope: !1771)
!1847 = !DILocation(line: 188, column: 5, scope: !1771)
!1848 = !DILocation(line: 188, column: 9, scope: !1771)
!1849 = !DILocation(line: 188, column: 20, scope: !1771)
!1850 = !{!1716, !712, i64 0}
!1851 = !DILocation(line: 190, column: 5, scope: !1771)
!1852 = !DILocation(line: 198, column: 9, scope: !1789)
!1853 = !DILocation(line: 200, column: 13, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1789, file: !2, line: 200, column: 13)
!1855 = !DILocation(line: 200, column: 17, scope: !1854)
!1856 = !DILocation(line: 200, column: 24, scope: !1854)
!1857 = !DILocation(line: 200, column: 13, scope: !1789)
!1858 = !DILocation(line: 201, column: 32, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1854, file: !2, line: 200, column: 29)
!1860 = !DILocation(line: 201, column: 44, scope: !1859)
!1861 = !DILocation(line: 201, column: 48, scope: !1859)
!1862 = !DILocation(line: 201, column: 20, scope: !1859)
!1863 = !DILocation(line: 201, column: 58, scope: !1859)
!1864 = !DILocation(line: 201, column: 56, scope: !1859)
!1865 = !DILocation(line: 201, column: 18, scope: !1859)
!1866 = !DILocation(line: 202, column: 37, scope: !1859)
!1867 = !DILocation(line: 202, column: 42, scope: !1859)
!1868 = !DILocation(line: 202, column: 13, scope: !1859)
!1869 = !DILocation(line: 203, column: 9, scope: !1859)
!1870 = !DILocation(line: 205, column: 33, scope: !1789)
!1871 = !DILocation(line: 205, column: 37, scope: !1789)
!1872 = !DILocation(line: 205, column: 41, scope: !1789)
!1873 = !{!1750, !712, i64 56}
!1874 = !DILocation(line: 205, column: 47, scope: !1789)
!1875 = !DILocation(line: 205, column: 51, scope: !1789)
!1876 = !DILocation(line: 205, column: 55, scope: !1789)
!1877 = !{!1750, !722, i64 48}
!1878 = !DILocation(line: 205, column: 9, scope: !1789)
!1879 = !DILocation(line: 206, column: 9, scope: !1789)
!1880 = !DILocation(line: 208, column: 17, scope: !1789)
!1881 = !DILocation(line: 208, column: 22, scope: !1789)
!1882 = !DILocation(line: 208, column: 29, scope: !1789)
!1883 = !DILocation(line: 208, column: 14, scope: !1789)
!1884 = !DILocation(line: 210, column: 21, scope: !1789)
!1885 = !DILocation(line: 210, column: 9, scope: !1789)
!1886 = !DILocation(line: 210, column: 13, scope: !1789)
!1887 = !DILocation(line: 210, column: 18, scope: !1789)
!1888 = !DILocation(line: 211, column: 9, scope: !1789)
!1889 = !DILocation(line: 211, column: 13, scope: !1789)
!1890 = !DILocation(line: 211, column: 19, scope: !1789)
!1891 = !DILocation(line: 213, column: 13, scope: !1789)
!1892 = !DILocation(line: 213, column: 17, scope: !1789)
!1893 = !DILocation(line: 213, column: 24, scope: !1789)
!1894 = !DILocation(line: 213, column: 28, scope: !1789)
!1895 = !DILocation(line: 213, column: 32, scope: !1789)
!1896 = !DILocation(line: 213, column: 39, scope: !1789)
!1897 = !DILocation(line: 213, column: 22, scope: !1789)
!1898 = !DILocation(line: 213, column: 11, scope: !1789)
!1899 = !DILocation(line: 214, column: 16, scope: !1789)
!1900 = !DILocation(line: 214, column: 20, scope: !1789)
!1901 = !DILocation(line: 214, column: 24, scope: !1789)
!1902 = !DILocation(line: 214, column: 31, scope: !1789)
!1903 = !DILocation(line: 214, column: 14, scope: !1789)
!1904 = !DILocation(line: 215, column: 11, scope: !1789)
!1905 = !DILocation(line: 217, column: 9, scope: !1789)
!1906 = !DILocation(line: 217, column: 16, scope: !1789)
!1907 = !DILocation(line: 217, column: 21, scope: !1789)
!1908 = !DILocation(line: 217, column: 27, scope: !1789)
!1909 = !DILocation(line: 217, column: 18, scope: !1789)
!1910 = !DILocation(line: 218, column: 18, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1789, file: !2, line: 217, column: 35)
!1912 = !DILocation(line: 218, column: 24, scope: !1911)
!1913 = !DILocation(line: 218, column: 15, scope: !1911)
!1914 = !DILocation(line: 219, column: 20, scope: !1911)
!1915 = !DILocation(line: 219, column: 26, scope: !1911)
!1916 = !DILocation(line: 219, column: 18, scope: !1911)
!1917 = !DILocation(line: 220, column: 14, scope: !1911)
!1918 = distinct !{!1918, !1905, !1919, !1526}
!1919 = !DILocation(line: 221, column: 9, scope: !1789)
!1920 = !DILocation(line: 223, column: 13, scope: !1789)
!1921 = !DILocation(line: 223, column: 15, scope: !1789)
!1922 = !DILocation(line: 223, column: 11, scope: !1789)
!1923 = !DILocation(line: 224, column: 30, scope: !1789)
!1924 = !DILocation(line: 224, column: 32, scope: !1789)
!1925 = !DILocation(line: 224, column: 27, scope: !1789)
!1926 = !DILocation(line: 224, column: 11, scope: !1789)
!1927 = !DILocation(line: 226, column: 13, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1789, file: !2, line: 226, column: 13)
!1929 = !DILocation(line: 226, column: 17, scope: !1928)
!1930 = !DILocation(line: 226, column: 21, scope: !1928)
!1931 = !{!1750, !712, i64 24}
!1932 = !DILocation(line: 226, column: 27, scope: !1928)
!1933 = !DILocation(line: 226, column: 32, scope: !1928)
!1934 = !DILocation(line: 226, column: 30, scope: !1928)
!1935 = !DILocation(line: 226, column: 13, scope: !1789)
!1936 = !DILocation(line: 227, column: 13, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1928, file: !2, line: 226, column: 35)
!1938 = !DILocation(line: 230, column: 9, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1789, file: !2, line: 230, column: 9)
!1940 = !DILocation(line: 230, column: 9, scope: !1789)
!1941 = !DILocation(line: 230, column: 9, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1939, file: !2, line: 230, column: 9)
!1943 = !DILocation(line: 235, column: 13, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1789, file: !2, line: 235, column: 13)
!1945 = !DILocation(line: 235, column: 19, scope: !1944)
!1946 = !{!1550, !722, i64 144}
!1947 = !DILocation(line: 235, column: 13, scope: !1789)
!1948 = !DILocation(line: 236, column: 13, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !2, line: 236, column: 13)
!1950 = distinct !DILexicalBlock(scope: !1944, file: !2, line: 235, column: 25)
!1951 = !DILocation(line: 236, column: 13, scope: !1950)
!1952 = !DILocation(line: 236, column: 13, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1949, file: !2, line: 236, column: 13)
!1954 = !DILocation(line: 237, column: 13, scope: !1950)
!1955 = !DILocation(line: 240, column: 13, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1789, file: !2, line: 240, column: 13)
!1957 = !DILocation(line: 240, column: 19, scope: !1956)
!1958 = !{!1550, !722, i64 112}
!1959 = !DILocation(line: 241, column: 13, scope: !1956)
!1960 = !DILocation(line: 241, column: 16, scope: !1956)
!1961 = !DILocation(line: 241, column: 22, scope: !1956)
!1962 = !{!1550, !722, i64 88}
!1963 = !DILocation(line: 241, column: 31, scope: !1956)
!1964 = !DILocation(line: 241, column: 37, scope: !1956)
!1965 = !DILocation(line: 241, column: 28, scope: !1956)
!1966 = !DILocation(line: 242, column: 13, scope: !1956)
!1967 = !DILocation(line: 242, column: 16, scope: !1956)
!1968 = !DILocation(line: 242, column: 22, scope: !1956)
!1969 = !DILocation(line: 242, column: 28, scope: !1956)
!1970 = !{!1550, !722, i64 104}
!1971 = !DILocation(line: 242, column: 20, scope: !1956)
!1972 = !DILocation(line: 242, column: 39, scope: !1956)
!1973 = !DILocation(line: 242, column: 45, scope: !1956)
!1974 = !{!1550, !722, i64 120}
!1975 = !DILocation(line: 242, column: 36, scope: !1956)
!1976 = !DILocation(line: 240, column: 13, scope: !1789)
!1977 = !DILocation(line: 244, column: 13, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !2, line: 244, column: 13)
!1979 = distinct !DILexicalBlock(scope: !1956, file: !2, line: 243, column: 9)
!1980 = !DILocation(line: 244, column: 13, scope: !1979)
!1981 = !DILocation(line: 244, column: 13, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1978, file: !2, line: 244, column: 13)
!1983 = !DILocation(line: 245, column: 13, scope: !1979)
!1984 = !DILocation(line: 248, column: 13, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1789, file: !2, line: 248, column: 13)
!1986 = !DILocation(line: 248, column: 19, scope: !1985)
!1987 = !{!1550, !722, i64 80}
!1988 = !DILocation(line: 248, column: 29, scope: !1985)
!1989 = !DILocation(line: 248, column: 32, scope: !1985)
!1990 = !DILocation(line: 248, column: 38, scope: !1985)
!1991 = !{!1550, !722, i64 72}
!1992 = !DILocation(line: 248, column: 47, scope: !1985)
!1993 = !DILocation(line: 248, column: 53, scope: !1985)
!1994 = !DILocation(line: 248, column: 44, scope: !1985)
!1995 = !DILocation(line: 248, column: 13, scope: !1789)
!1996 = !DILocation(line: 249, column: 13, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !2, line: 249, column: 13)
!1998 = distinct !DILexicalBlock(scope: !1985, file: !2, line: 248, column: 64)
!1999 = !DILocation(line: 249, column: 13, scope: !1998)
!2000 = !DILocation(line: 249, column: 13, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1997, file: !2, line: 249, column: 13)
!2002 = !DILocation(line: 250, column: 13, scope: !1998)
!2003 = !DILocation(line: 253, column: 9, scope: !1789)
!2004 = !DILocation(line: 255, column: 5, scope: !1789)
!2005 = !DILocation(line: 257, column: 15, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1789, file: !2, line: 257, column: 13)
!2007 = !DILocation(line: 257, column: 19, scope: !2006)
!2008 = !DILocation(line: 257, column: 13, scope: !2006)
!2009 = !DILocation(line: 257, column: 25, scope: !2006)
!2010 = !DILocation(line: 257, column: 13, scope: !1789)
!2011 = !DILocation(line: 258, column: 13, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !2, line: 258, column: 13)
!2013 = distinct !DILexicalBlock(scope: !2006, file: !2, line: 257, column: 31)
!2014 = !DILocation(line: 258, column: 13, scope: !2013)
!2015 = !DILocation(line: 258, column: 13, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2012, file: !2, line: 258, column: 13)
!2017 = !DILocation(line: 259, column: 20, scope: !2013)
!2018 = !DILocation(line: 259, column: 24, scope: !2013)
!2019 = !DILocation(line: 259, column: 36, scope: !2013)
!2020 = !DILocation(line: 259, column: 41, scope: !2013)
!2021 = !DILocation(line: 259, column: 45, scope: !2013)
!2022 = !DILocation(line: 259, column: 13, scope: !2013)
!2023 = !DILocation(line: 190, column: 5, scope: !1790)
!2024 = distinct !{!2024, !2025, !2026}
!2025 = !DILocation(line: 190, column: 5, scope: !1791)
!2026 = !DILocation(line: 261, column: 5, scope: !1791)
!2027 = !DILocation(line: 263, column: 23, scope: !1771)
!2028 = !DILocation(line: 263, column: 5, scope: !1771)
!2029 = !DILocation(line: 263, column: 9, scope: !1771)
!2030 = !DILocation(line: 263, column: 13, scope: !1771)
!2031 = !DILocation(line: 263, column: 21, scope: !1771)
!2032 = !{!1750, !712, i64 16}
!2033 = !DILocation(line: 265, column: 20, scope: !1771)
!2034 = !DILocation(line: 265, column: 26, scope: !1771)
!2035 = !{!1550, !712, i64 0}
!2036 = !DILocation(line: 265, column: 5, scope: !1771)
!2037 = !DILocation(line: 265, column: 9, scope: !1771)
!2038 = !DILocation(line: 265, column: 18, scope: !1771)
!2039 = !{!1716, !712, i64 8}
!2040 = !DILocation(line: 266, column: 19, scope: !1771)
!2041 = !DILocation(line: 266, column: 25, scope: !1771)
!2042 = !{!1550, !1127, i64 8}
!2043 = !DILocation(line: 266, column: 5, scope: !1771)
!2044 = !DILocation(line: 266, column: 9, scope: !1771)
!2045 = !DILocation(line: 266, column: 17, scope: !1771)
!2046 = !{!1716, !1127, i64 16}
!2047 = !DILocation(line: 267, column: 17, scope: !1771)
!2048 = !DILocation(line: 267, column: 23, scope: !1771)
!2049 = !DILocation(line: 267, column: 5, scope: !1771)
!2050 = !DILocation(line: 267, column: 9, scope: !1771)
!2051 = !DILocation(line: 267, column: 14, scope: !1771)
!2052 = !{!1716, !712, i64 24}
!2053 = !DILocation(line: 269, column: 5, scope: !1771)
!2054 = !DILocation(line: 269, column: 11, scope: !1771)
!2055 = !DILocation(line: 269, column: 16, scope: !1771)
!2056 = !DILocation(line: 271, column: 9, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !1771, file: !2, line: 271, column: 9)
!2058 = !DILocation(line: 271, column: 15, scope: !2057)
!2059 = !DILocation(line: 271, column: 21, scope: !2057)
!2060 = !DILocation(line: 271, column: 13, scope: !2057)
!2061 = !DILocation(line: 271, column: 31, scope: !2057)
!2062 = !DILocation(line: 271, column: 37, scope: !2057)
!2063 = !DILocation(line: 271, column: 29, scope: !2057)
!2064 = !DILocation(line: 271, column: 9, scope: !1771)
!2065 = !DILocation(line: 272, column: 25, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2057, file: !2, line: 271, column: 51)
!2067 = !DILocation(line: 272, column: 9, scope: !2066)
!2068 = !DILocation(line: 272, column: 15, scope: !2066)
!2069 = !DILocation(line: 272, column: 23, scope: !2066)
!2070 = !DILocation(line: 273, column: 5, scope: !2066)
!2071 = !DILocation(line: 275, column: 5, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !1771, file: !2, line: 275, column: 5)
!2073 = !DILocation(line: 275, column: 5, scope: !1771)
!2074 = !DILocation(line: 275, column: 5, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2072, file: !2, line: 275, column: 5)
!2076 = !DILocation(line: 276, column: 5, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !1771, file: !2, line: 276, column: 5)
!2078 = !DILocation(line: 276, column: 5, scope: !1771)
!2079 = !DILocation(line: 276, column: 5, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2077, file: !2, line: 276, column: 5)
!2081 = !DILocation(line: 278, column: 25, scope: !1771)
!2082 = !DILocation(line: 278, column: 5, scope: !1771)
!2083 = !DILocation(line: 278, column: 9, scope: !1771)
!2084 = !DILocation(line: 278, column: 13, scope: !1771)
!2085 = !DILocation(line: 278, column: 19, scope: !1771)
!2086 = !DILocation(line: 278, column: 22, scope: !1771)
!2087 = !DILocation(line: 280, column: 5, scope: !1771)
!2088 = !DILocation(line: 281, column: 1, scope: !1771)
!2089 = !DISubprogram(name: "ngx_stream_complex_value", scope: !695, file: !695, line: 103, type: !2090, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!471, !771, !1098, !43}
!2092 = !DISubprogram(name: "ngx_rwlock_rlock", scope: !2093, file: !2093, line: 17, type: !2094, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2093 = !DIFile(filename: "src/core/ngx_rwlock.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "b1b4b782e626c38d56141aa5bb8d0b03")
!2094 = !DISubroutineType(types: !2095)
!2095 = !{null, !1325}
!2096 = !DISubprogram(name: "ngx_rwlock_unlock", scope: !2093, file: !2093, line: 18, type: !2094, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2097 = !DISubprogram(name: "ngx_sprintf", scope: !45, file: !45, line: 153, type: !2098, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!17, !17, !31, null}
!2100 = distinct !DISubprogram(name: "ngx_crc32_update", scope: !2101, file: !2101, line: 58, type: !2102, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2105)
!2101 = !DIFile(filename: "src/core/ngx_crc32.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "819aa128125e366726c48a8c9a8aea55")
!2102 = !DISubroutineType(types: !2103)
!2103 = !{null, !2104, !17, !49}
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!2105 = !{!2106, !2107, !2108, !2109}
!2106 = !DILocalVariable(name: "crc", arg: 1, scope: !2100, file: !2101, line: 58, type: !2104)
!2107 = !DILocalVariable(name: "p", arg: 2, scope: !2100, file: !2101, line: 58, type: !17)
!2108 = !DILocalVariable(name: "len", arg: 3, scope: !2100, file: !2101, line: 58, type: !49)
!2109 = !DILocalVariable(name: "c", scope: !2100, file: !2101, line: 60, type: !38)
!2110 = !DILocation(line: 58, column: 28, scope: !2100)
!2111 = !DILocation(line: 58, column: 41, scope: !2100)
!2112 = !DILocation(line: 58, column: 51, scope: !2100)
!2113 = !DILocation(line: 60, column: 5, scope: !2100)
!2114 = !DILocation(line: 60, column: 15, scope: !2100)
!2115 = !DILocation(line: 62, column: 10, scope: !2100)
!2116 = !DILocation(line: 62, column: 9, scope: !2100)
!2117 = !DILocation(line: 62, column: 7, scope: !2100)
!2118 = !DILocation(line: 64, column: 5, scope: !2100)
!2119 = !DILocation(line: 64, column: 15, scope: !2100)
!2120 = !DILocation(line: 65, column: 33, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2100, file: !2101, line: 64, column: 19)
!2122 = !DILocation(line: 65, column: 39, scope: !2121)
!2123 = !DILocation(line: 65, column: 37, scope: !2121)
!2124 = !DILocation(line: 65, column: 35, scope: !2121)
!2125 = !DILocation(line: 65, column: 43, scope: !2121)
!2126 = !DILocation(line: 65, column: 13, scope: !2121)
!2127 = !DILocation(line: 65, column: 54, scope: !2121)
!2128 = !DILocation(line: 65, column: 56, scope: !2121)
!2129 = !DILocation(line: 65, column: 51, scope: !2121)
!2130 = !DILocation(line: 65, column: 11, scope: !2121)
!2131 = distinct !{!2131, !2118, !2132, !1526}
!2132 = !DILocation(line: 66, column: 5, scope: !2100)
!2133 = !DILocation(line: 68, column: 12, scope: !2100)
!2134 = !DILocation(line: 68, column: 6, scope: !2100)
!2135 = !DILocation(line: 68, column: 10, scope: !2100)
!2136 = !DILocation(line: 69, column: 1, scope: !2100)
!2137 = !DISubprogram(name: "ngx_rwlock_wlock", scope: !2093, file: !2093, line: 16, type: !2094, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2138 = distinct !DISubprogram(name: "ngx_stream_upstream_init_chash_peer", scope: !2, file: !2, line: 465, type: !769, scopeLine: 467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2139)
!2139 = !{!2140, !2141, !2142, !2143, !2144}
!2140 = !DILocalVariable(name: "s", arg: 1, scope: !2138, file: !2, line: 465, type: !771)
!2141 = !DILocalVariable(name: "us", arg: 2, scope: !2138, file: !2, line: 466, type: !752)
!2142 = !DILocalVariable(name: "hash", scope: !2138, file: !2, line: 468, type: !38)
!2143 = !DILocalVariable(name: "hcf", scope: !2138, file: !2, line: 469, type: !689)
!2144 = !DILocalVariable(name: "hp", scope: !2138, file: !2, line: 470, type: !1664)
!2145 = !DILocation(line: 465, column: 59, scope: !2138)
!2146 = !DILocation(line: 466, column: 37, scope: !2138)
!2147 = !DILocation(line: 468, column: 5, scope: !2138)
!2148 = !DILocation(line: 468, column: 44, scope: !2138)
!2149 = !DILocation(line: 469, column: 5, scope: !2138)
!2150 = !DILocation(line: 469, column: 44, scope: !2138)
!2151 = !DILocation(line: 470, column: 5, scope: !2138)
!2152 = !DILocation(line: 470, column: 44, scope: !2138)
!2153 = !DILocation(line: 472, column: 44, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2138, file: !2, line: 472, column: 9)
!2155 = !DILocation(line: 472, column: 47, scope: !2154)
!2156 = !DILocation(line: 472, column: 9, scope: !2154)
!2157 = !DILocation(line: 472, column: 51, scope: !2154)
!2158 = !DILocation(line: 472, column: 9, scope: !2138)
!2159 = !DILocation(line: 473, column: 9, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2154, file: !2, line: 472, column: 62)
!2161 = !DILocation(line: 476, column: 5, scope: !2138)
!2162 = !DILocation(line: 476, column: 8, scope: !2138)
!2163 = !DILocation(line: 476, column: 18, scope: !2138)
!2164 = !DILocation(line: 476, column: 23, scope: !2138)
!2165 = !DILocation(line: 476, column: 27, scope: !2138)
!2166 = !DILocation(line: 478, column: 10, scope: !2138)
!2167 = !DILocation(line: 478, column: 13, scope: !2138)
!2168 = !DILocation(line: 478, column: 23, scope: !2138)
!2169 = !DILocation(line: 478, column: 28, scope: !2138)
!2170 = !DILocation(line: 478, column: 8, scope: !2138)
!2171 = !DILocation(line: 479, column: 11, scope: !2138)
!2172 = !DILocation(line: 479, column: 9, scope: !2138)
!2173 = !DILocation(line: 482, column: 27, scope: !2138)
!2174 = !DILocation(line: 482, column: 31, scope: !2138)
!2175 = !DILocation(line: 482, column: 35, scope: !2138)
!2176 = !DILocation(line: 482, column: 41, scope: !2138)
!2177 = !DILocation(line: 482, column: 45, scope: !2138)
!2178 = !DILocation(line: 482, column: 49, scope: !2138)
!2179 = !DILocation(line: 482, column: 12, scope: !2138)
!2180 = !DILocation(line: 482, column: 10, scope: !2138)
!2181 = !DILocation(line: 484, column: 5, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2138, file: !2, line: 484, column: 5)
!2183 = !DILocation(line: 484, column: 5, scope: !2138)
!2184 = !DILocation(line: 484, column: 5, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2182, file: !2, line: 484, column: 5)
!2186 = !DILocation(line: 486, column: 53, scope: !2138)
!2187 = !DILocation(line: 486, column: 58, scope: !2138)
!2188 = !DILocation(line: 486, column: 66, scope: !2138)
!2189 = !DILocation(line: 486, column: 16, scope: !2138)
!2190 = !DILocation(line: 486, column: 5, scope: !2138)
!2191 = !DILocation(line: 486, column: 9, scope: !2138)
!2192 = !DILocation(line: 486, column: 14, scope: !2138)
!2193 = !DILocation(line: 488, column: 5, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2138, file: !2, line: 488, column: 5)
!2195 = !DILocation(line: 488, column: 5, scope: !2138)
!2196 = !DILocation(line: 488, column: 5, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2194, file: !2, line: 488, column: 5)
!2198 = !DILocation(line: 490, column: 5, scope: !2138)
!2199 = !DILocation(line: 491, column: 1, scope: !2138)
!2200 = !DISubprogram(name: "ngx_strncasecmp", scope: !45, file: !45, line: 162, type: !2201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!471, !17, !17, !49}
!2203 = !DISubprogram(name: "qsort", scope: !2204, file: !2204, line: 838, type: !2205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2204 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!2205 = !DISubroutineType(types: !2206)
!2206 = !{null, !16, !2207, !2207, !2209}
!2207 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !2208, line: 70, baseType: !15)
!2208 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!2209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2204, line: 816, baseType: !2210)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{!143, !2213, !2213}
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2215 = distinct !DISubprogram(name: "ngx_stream_upstream_chash_cmp_points", scope: !2, file: !2, line: 413, type: !2211, scopeLine: 414, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2216)
!2216 = !{!2217, !2218, !2219, !2220}
!2217 = !DILocalVariable(name: "one", arg: 1, scope: !2215, file: !2, line: 413, type: !2213)
!2218 = !DILocalVariable(name: "two", arg: 2, scope: !2215, file: !2, line: 413, type: !2213)
!2219 = !DILocalVariable(name: "first", scope: !2215, file: !2, line: 415, type: !33)
!2220 = !DILocalVariable(name: "second", scope: !2215, file: !2, line: 417, type: !33)
!2221 = !DILocation(line: 413, column: 50, scope: !2215)
!2222 = !DILocation(line: 413, column: 67, scope: !2215)
!2223 = !DILocation(line: 415, column: 5, scope: !2215)
!2224 = !DILocation(line: 415, column: 40, scope: !2215)
!2225 = !DILocation(line: 416, column: 76, scope: !2215)
!2226 = !DILocation(line: 417, column: 5, scope: !2215)
!2227 = !DILocation(line: 417, column: 40, scope: !2215)
!2228 = !DILocation(line: 418, column: 76, scope: !2215)
!2229 = !DILocation(line: 420, column: 9, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2215, file: !2, line: 420, column: 9)
!2231 = !DILocation(line: 420, column: 16, scope: !2230)
!2232 = !DILocation(line: 420, column: 23, scope: !2230)
!2233 = !DILocation(line: 420, column: 31, scope: !2230)
!2234 = !DILocation(line: 420, column: 21, scope: !2230)
!2235 = !DILocation(line: 420, column: 9, scope: !2215)
!2236 = !DILocation(line: 421, column: 9, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2230, file: !2, line: 420, column: 37)
!2238 = !DILocation(line: 423, column: 16, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2230, file: !2, line: 423, column: 16)
!2240 = !DILocation(line: 423, column: 23, scope: !2239)
!2241 = !DILocation(line: 423, column: 30, scope: !2239)
!2242 = !DILocation(line: 423, column: 38, scope: !2239)
!2243 = !DILocation(line: 423, column: 28, scope: !2239)
!2244 = !DILocation(line: 423, column: 16, scope: !2230)
!2245 = !DILocation(line: 424, column: 9, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2239, file: !2, line: 423, column: 44)
!2247 = !DILocation(line: 427, column: 9, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2239, file: !2, line: 426, column: 12)
!2249 = !DILocation(line: 429, column: 1, scope: !2215)
!2250 = distinct !DISubprogram(name: "ngx_stream_upstream_get_chash_peer", scope: !2, file: !2, line: 495, type: !803, scopeLine: 496, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2251)
!2251 = !{!2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266}
!2252 = !DILocalVariable(name: "pc", arg: 1, scope: !2250, file: !2, line: 495, type: !805)
!2253 = !DILocalVariable(name: "data", arg: 2, scope: !2250, file: !2, line: 495, type: !16)
!2254 = !DILocalVariable(name: "hp", scope: !2250, file: !2, line: 497, type: !1664)
!2255 = !DILocalVariable(name: "now", scope: !2250, file: !2, line: 499, type: !209)
!2256 = !DILocalVariable(name: "m", scope: !2250, file: !2, line: 500, type: !472)
!2257 = !DILocalVariable(name: "server", scope: !2250, file: !2, line: 501, type: !43)
!2258 = !DILocalVariable(name: "total", scope: !2250, file: !2, line: 502, type: !471)
!2259 = !DILocalVariable(name: "i", scope: !2250, file: !2, line: 503, type: !11)
!2260 = !DILocalVariable(name: "n", scope: !2250, file: !2, line: 503, type: !11)
!2261 = !DILocalVariable(name: "best_i", scope: !2250, file: !2, line: 503, type: !11)
!2262 = !DILocalVariable(name: "peer", scope: !2250, file: !2, line: 504, type: !1249)
!2263 = !DILocalVariable(name: "best", scope: !2250, file: !2, line: 504, type: !1249)
!2264 = !DILocalVariable(name: "point", scope: !2250, file: !2, line: 505, type: !33)
!2265 = !DILocalVariable(name: "points", scope: !2250, file: !2, line: 506, type: !704)
!2266 = !DILocalVariable(name: "hcf", scope: !2250, file: !2, line: 507, type: !689)
!2267 = !DILocation(line: 495, column: 59, scope: !2250)
!2268 = !DILocation(line: 495, column: 69, scope: !2250)
!2269 = !DILocation(line: 497, column: 5, scope: !2250)
!2270 = !DILocation(line: 497, column: 43, scope: !2250)
!2271 = !DILocation(line: 497, column: 48, scope: !2250)
!2272 = !DILocation(line: 499, column: 5, scope: !2250)
!2273 = !DILocation(line: 499, column: 43, scope: !2250)
!2274 = !DILocation(line: 500, column: 5, scope: !2250)
!2275 = !DILocation(line: 500, column: 43, scope: !2250)
!2276 = !DILocation(line: 501, column: 5, scope: !2250)
!2277 = !DILocation(line: 501, column: 43, scope: !2250)
!2278 = !DILocation(line: 502, column: 5, scope: !2250)
!2279 = !DILocation(line: 502, column: 43, scope: !2250)
!2280 = !DILocation(line: 503, column: 5, scope: !2250)
!2281 = !DILocation(line: 503, column: 43, scope: !2250)
!2282 = !DILocation(line: 503, column: 46, scope: !2250)
!2283 = !DILocation(line: 503, column: 49, scope: !2250)
!2284 = !DILocation(line: 504, column: 5, scope: !2250)
!2285 = !DILocation(line: 504, column: 43, scope: !2250)
!2286 = !DILocation(line: 504, column: 50, scope: !2250)
!2287 = !DILocation(line: 505, column: 5, scope: !2250)
!2288 = !DILocation(line: 505, column: 43, scope: !2250)
!2289 = !DILocation(line: 506, column: 5, scope: !2250)
!2290 = !DILocation(line: 506, column: 43, scope: !2250)
!2291 = !DILocation(line: 507, column: 5, scope: !2250)
!2292 = !DILocation(line: 507, column: 43, scope: !2250)
!2293 = !DILocation(line: 512, column: 5, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2250, file: !2, line: 512, column: 5)
!2295 = !DILocation(line: 512, column: 5, scope: !2250)
!2296 = !DILocation(line: 512, column: 5, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2294, file: !2, line: 512, column: 5)
!2298 = !DILocation(line: 514, column: 9, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2250, file: !2, line: 514, column: 9)
!2300 = !DILocation(line: 514, column: 13, scope: !2299)
!2301 = !DILocation(line: 514, column: 19, scope: !2299)
!2302 = !DILocation(line: 514, column: 24, scope: !2299)
!2303 = !DILocation(line: 514, column: 27, scope: !2299)
!2304 = !DILocation(line: 514, column: 31, scope: !2299)
!2305 = !DILocation(line: 514, column: 35, scope: !2299)
!2306 = !DILocation(line: 514, column: 42, scope: !2299)
!2307 = !DILocation(line: 514, column: 9, scope: !2250)
!2308 = !DILocation(line: 515, column: 9, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2310, file: !2, line: 515, column: 9)
!2310 = distinct !DILexicalBlock(scope: !2299, file: !2, line: 514, column: 50)
!2311 = !DILocation(line: 515, column: 9, scope: !2310)
!2312 = !DILocation(line: 515, column: 9, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2309, file: !2, line: 515, column: 9)
!2314 = !DILocation(line: 516, column: 16, scope: !2310)
!2315 = !DILocation(line: 516, column: 20, scope: !2310)
!2316 = !DILocation(line: 516, column: 32, scope: !2310)
!2317 = !DILocation(line: 516, column: 37, scope: !2310)
!2318 = !DILocation(line: 516, column: 41, scope: !2310)
!2319 = !DILocation(line: 516, column: 9, scope: !2310)
!2320 = !DILocation(line: 519, column: 5, scope: !2250)
!2321 = !DILocation(line: 519, column: 9, scope: !2250)
!2322 = !DILocation(line: 519, column: 20, scope: !2250)
!2323 = !DILocation(line: 521, column: 11, scope: !2250)
!2324 = !DILocation(line: 521, column: 9, scope: !2250)
!2325 = !DILocation(line: 522, column: 11, scope: !2250)
!2326 = !DILocation(line: 522, column: 15, scope: !2250)
!2327 = !DILocation(line: 522, column: 9, scope: !2250)
!2328 = !DILocation(line: 524, column: 14, scope: !2250)
!2329 = !DILocation(line: 524, column: 19, scope: !2250)
!2330 = !DILocation(line: 524, column: 12, scope: !2250)
!2331 = !DILocation(line: 525, column: 14, scope: !2250)
!2332 = !DILocation(line: 525, column: 22, scope: !2250)
!2333 = !DILocation(line: 525, column: 11, scope: !2250)
!2334 = !DILocation(line: 527, column: 5, scope: !2250)
!2335 = !DILocation(line: 528, column: 18, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2337, file: !2, line: 527, column: 16)
!2337 = distinct !DILexicalBlock(scope: !2338, file: !2, line: 527, column: 5)
!2338 = distinct !DILexicalBlock(scope: !2250, file: !2, line: 527, column: 5)
!2339 = !DILocation(line: 528, column: 24, scope: !2336)
!2340 = !DILocation(line: 528, column: 28, scope: !2336)
!2341 = !DILocation(line: 528, column: 35, scope: !2336)
!2342 = !DILocation(line: 528, column: 43, scope: !2336)
!2343 = !DILocation(line: 528, column: 33, scope: !2336)
!2344 = !DILocation(line: 528, column: 51, scope: !2336)
!2345 = !DILocation(line: 528, column: 16, scope: !2336)
!2346 = !DILocation(line: 534, column: 14, scope: !2336)
!2347 = !DILocation(line: 535, column: 16, scope: !2336)
!2348 = !DILocation(line: 536, column: 15, scope: !2336)
!2349 = !DILocation(line: 538, column: 21, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2336, file: !2, line: 538, column: 9)
!2351 = !DILocation(line: 538, column: 25, scope: !2350)
!2352 = !DILocation(line: 538, column: 29, scope: !2350)
!2353 = !DILocation(line: 538, column: 36, scope: !2350)
!2354 = !DILocation(line: 538, column: 19, scope: !2350)
!2355 = !DILocation(line: 538, column: 44, scope: !2350)
!2356 = !DILocation(line: 538, column: 14, scope: !2350)
!2357 = !DILocation(line: 539, column: 14, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2350, file: !2, line: 538, column: 9)
!2359 = !DILocation(line: 538, column: 9, scope: !2350)
!2360 = !DILocation(line: 542, column: 17, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2358, file: !2, line: 541, column: 9)
!2362 = !DILocation(line: 542, column: 19, scope: !2361)
!2363 = !DILocation(line: 542, column: 15, scope: !2361)
!2364 = !DILocation(line: 543, column: 34, scope: !2361)
!2365 = !DILocation(line: 543, column: 36, scope: !2361)
!2366 = !DILocation(line: 543, column: 31, scope: !2361)
!2367 = !DILocation(line: 543, column: 15, scope: !2361)
!2368 = !DILocation(line: 545, column: 17, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2361, file: !2, line: 545, column: 17)
!2370 = !DILocation(line: 545, column: 21, scope: !2369)
!2371 = !DILocation(line: 545, column: 25, scope: !2369)
!2372 = !DILocation(line: 545, column: 31, scope: !2369)
!2373 = !DILocation(line: 545, column: 36, scope: !2369)
!2374 = !DILocation(line: 545, column: 34, scope: !2369)
!2375 = !DILocation(line: 545, column: 17, scope: !2361)
!2376 = !DILocation(line: 546, column: 17, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2369, file: !2, line: 545, column: 39)
!2378 = !DILocation(line: 549, column: 17, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2361, file: !2, line: 549, column: 17)
!2380 = !DILocation(line: 549, column: 23, scope: !2379)
!2381 = !DILocation(line: 549, column: 17, scope: !2361)
!2382 = !DILocation(line: 550, column: 17, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2379, file: !2, line: 549, column: 29)
!2384 = !DILocation(line: 553, column: 17, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2361, file: !2, line: 553, column: 17)
!2386 = !DILocation(line: 553, column: 23, scope: !2385)
!2387 = !DILocation(line: 554, column: 17, scope: !2385)
!2388 = !DILocation(line: 554, column: 20, scope: !2385)
!2389 = !DILocation(line: 554, column: 26, scope: !2385)
!2390 = !DILocation(line: 554, column: 35, scope: !2385)
!2391 = !DILocation(line: 554, column: 41, scope: !2385)
!2392 = !DILocation(line: 554, column: 32, scope: !2385)
!2393 = !DILocation(line: 555, column: 17, scope: !2385)
!2394 = !DILocation(line: 555, column: 20, scope: !2385)
!2395 = !DILocation(line: 555, column: 26, scope: !2385)
!2396 = !DILocation(line: 555, column: 32, scope: !2385)
!2397 = !DILocation(line: 555, column: 24, scope: !2385)
!2398 = !DILocation(line: 555, column: 43, scope: !2385)
!2399 = !DILocation(line: 555, column: 49, scope: !2385)
!2400 = !DILocation(line: 555, column: 40, scope: !2385)
!2401 = !DILocation(line: 553, column: 17, scope: !2361)
!2402 = !DILocation(line: 557, column: 17, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2385, file: !2, line: 556, column: 13)
!2404 = !DILocation(line: 560, column: 17, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2361, file: !2, line: 560, column: 17)
!2406 = !DILocation(line: 560, column: 23, scope: !2405)
!2407 = !DILocation(line: 560, column: 33, scope: !2405)
!2408 = !DILocation(line: 560, column: 36, scope: !2405)
!2409 = !DILocation(line: 560, column: 42, scope: !2405)
!2410 = !DILocation(line: 560, column: 51, scope: !2405)
!2411 = !DILocation(line: 560, column: 57, scope: !2405)
!2412 = !DILocation(line: 560, column: 48, scope: !2405)
!2413 = !DILocation(line: 560, column: 17, scope: !2361)
!2414 = !DILocation(line: 561, column: 17, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2405, file: !2, line: 560, column: 68)
!2416 = !DILocation(line: 564, column: 17, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2361, file: !2, line: 564, column: 17)
!2418 = !DILocation(line: 564, column: 23, scope: !2417)
!2419 = !DILocation(line: 564, column: 30, scope: !2417)
!2420 = !{!1550, !722, i64 32}
!2421 = !DILocation(line: 564, column: 37, scope: !2417)
!2422 = !DILocation(line: 564, column: 45, scope: !2417)
!2423 = !DILocation(line: 564, column: 34, scope: !2417)
!2424 = !DILocation(line: 565, column: 17, scope: !2417)
!2425 = !DILocation(line: 565, column: 20, scope: !2417)
!2426 = !{!1550, !712, i64 40}
!2427 = !DILocation(line: 566, column: 20, scope: !2417)
!2428 = !DILocation(line: 564, column: 17, scope: !2361)
!2429 = !DILocation(line: 568, column: 17, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2417, file: !2, line: 567, column: 13)
!2431 = !DILocation(line: 571, column: 37, scope: !2361)
!2432 = !DILocation(line: 571, column: 43, scope: !2361)
!2433 = !{!1550, !722, i64 56}
!2434 = !DILocation(line: 571, column: 13, scope: !2361)
!2435 = !DILocation(line: 571, column: 19, scope: !2361)
!2436 = !DILocation(line: 571, column: 34, scope: !2361)
!2437 = !{!1550, !722, i64 48}
!2438 = !DILocation(line: 572, column: 22, scope: !2361)
!2439 = !DILocation(line: 572, column: 28, scope: !2361)
!2440 = !DILocation(line: 572, column: 19, scope: !2361)
!2441 = !DILocation(line: 574, column: 17, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2361, file: !2, line: 574, column: 17)
!2443 = !DILocation(line: 574, column: 23, scope: !2442)
!2444 = !DILocation(line: 574, column: 42, scope: !2442)
!2445 = !DILocation(line: 574, column: 48, scope: !2442)
!2446 = !DILocation(line: 574, column: 40, scope: !2442)
!2447 = !DILocation(line: 574, column: 17, scope: !2361)
!2448 = !DILocation(line: 575, column: 17, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2442, file: !2, line: 574, column: 56)
!2450 = !DILocation(line: 575, column: 23, scope: !2449)
!2451 = !DILocation(line: 575, column: 39, scope: !2449)
!2452 = !DILocation(line: 576, column: 13, scope: !2449)
!2453 = !DILocation(line: 578, column: 17, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2361, file: !2, line: 578, column: 17)
!2455 = !DILocation(line: 578, column: 22, scope: !2454)
!2456 = !DILocation(line: 578, column: 30, scope: !2454)
!2457 = !DILocation(line: 578, column: 33, scope: !2454)
!2458 = !DILocation(line: 578, column: 39, scope: !2454)
!2459 = !DILocation(line: 578, column: 56, scope: !2454)
!2460 = !DILocation(line: 578, column: 62, scope: !2454)
!2461 = !DILocation(line: 578, column: 54, scope: !2454)
!2462 = !DILocation(line: 578, column: 17, scope: !2361)
!2463 = !DILocation(line: 579, column: 24, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2454, file: !2, line: 578, column: 78)
!2465 = !DILocation(line: 579, column: 22, scope: !2464)
!2466 = !DILocation(line: 580, column: 26, scope: !2464)
!2467 = !DILocation(line: 580, column: 24, scope: !2464)
!2468 = !DILocation(line: 581, column: 13, scope: !2464)
!2469 = !DILocation(line: 582, column: 9, scope: !2361)
!2470 = !DILocation(line: 540, column: 21, scope: !2358)
!2471 = !DILocation(line: 540, column: 27, scope: !2358)
!2472 = !DILocation(line: 540, column: 19, scope: !2358)
!2473 = !DILocation(line: 540, column: 34, scope: !2358)
!2474 = !DILocation(line: 538, column: 9, scope: !2358)
!2475 = distinct !{!2475, !2359, !2476, !1526}
!2476 = !DILocation(line: 582, column: 9, scope: !2350)
!2477 = !DILocation(line: 584, column: 13, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2336, file: !2, line: 584, column: 13)
!2479 = !DILocation(line: 584, column: 13, scope: !2336)
!2480 = !DILocation(line: 585, column: 37, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2478, file: !2, line: 584, column: 19)
!2482 = !DILocation(line: 585, column: 13, scope: !2481)
!2483 = !DILocation(line: 585, column: 19, scope: !2481)
!2484 = !DILocation(line: 585, column: 34, scope: !2481)
!2485 = !DILocation(line: 586, column: 13, scope: !2481)
!2486 = !DILocation(line: 589, column: 9, scope: !2336)
!2487 = !DILocation(line: 589, column: 13, scope: !2336)
!2488 = !DILocation(line: 589, column: 17, scope: !2336)
!2489 = !DILocation(line: 590, column: 9, scope: !2336)
!2490 = !DILocation(line: 590, column: 13, scope: !2336)
!2491 = !DILocation(line: 590, column: 18, scope: !2336)
!2492 = !DILocation(line: 592, column: 13, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2336, file: !2, line: 592, column: 13)
!2494 = !DILocation(line: 592, column: 17, scope: !2493)
!2495 = !DILocation(line: 592, column: 23, scope: !2493)
!2496 = !DILocation(line: 592, column: 13, scope: !2336)
!2497 = !DILocation(line: 593, column: 13, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2499, file: !2, line: 593, column: 13)
!2499 = distinct !DILexicalBlock(scope: !2493, file: !2, line: 592, column: 29)
!2500 = !DILocation(line: 593, column: 13, scope: !2499)
!2501 = !DILocation(line: 593, column: 13, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2498, file: !2, line: 593, column: 13)
!2503 = !DILocation(line: 594, column: 20, scope: !2499)
!2504 = !DILocation(line: 594, column: 24, scope: !2499)
!2505 = !DILocation(line: 594, column: 36, scope: !2499)
!2506 = !DILocation(line: 594, column: 41, scope: !2499)
!2507 = !DILocation(line: 594, column: 45, scope: !2499)
!2508 = !DILocation(line: 594, column: 13, scope: !2499)
!2509 = !DILocation(line: 527, column: 5, scope: !2337)
!2510 = distinct !{!2510, !2511, !2512}
!2511 = !DILocation(line: 527, column: 5, scope: !2338)
!2512 = !DILocation(line: 596, column: 5, scope: !2338)
!2513 = !DILocation(line: 598, column: 23, scope: !2250)
!2514 = !DILocation(line: 598, column: 5, scope: !2250)
!2515 = !DILocation(line: 598, column: 9, scope: !2250)
!2516 = !DILocation(line: 598, column: 13, scope: !2250)
!2517 = !DILocation(line: 598, column: 21, scope: !2250)
!2518 = !DILocation(line: 600, column: 20, scope: !2250)
!2519 = !DILocation(line: 600, column: 26, scope: !2250)
!2520 = !DILocation(line: 600, column: 5, scope: !2250)
!2521 = !DILocation(line: 600, column: 9, scope: !2250)
!2522 = !DILocation(line: 600, column: 18, scope: !2250)
!2523 = !DILocation(line: 601, column: 19, scope: !2250)
!2524 = !DILocation(line: 601, column: 25, scope: !2250)
!2525 = !DILocation(line: 601, column: 5, scope: !2250)
!2526 = !DILocation(line: 601, column: 9, scope: !2250)
!2527 = !DILocation(line: 601, column: 17, scope: !2250)
!2528 = !DILocation(line: 602, column: 17, scope: !2250)
!2529 = !DILocation(line: 602, column: 23, scope: !2250)
!2530 = !DILocation(line: 602, column: 5, scope: !2250)
!2531 = !DILocation(line: 602, column: 9, scope: !2250)
!2532 = !DILocation(line: 602, column: 14, scope: !2250)
!2533 = !DILocation(line: 604, column: 5, scope: !2250)
!2534 = !DILocation(line: 604, column: 11, scope: !2250)
!2535 = !DILocation(line: 604, column: 16, scope: !2250)
!2536 = !DILocation(line: 606, column: 9, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2250, file: !2, line: 606, column: 9)
!2538 = !DILocation(line: 606, column: 15, scope: !2537)
!2539 = !DILocation(line: 606, column: 21, scope: !2537)
!2540 = !DILocation(line: 606, column: 13, scope: !2537)
!2541 = !DILocation(line: 606, column: 31, scope: !2537)
!2542 = !DILocation(line: 606, column: 37, scope: !2537)
!2543 = !DILocation(line: 606, column: 29, scope: !2537)
!2544 = !DILocation(line: 606, column: 9, scope: !2250)
!2545 = !DILocation(line: 607, column: 25, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2537, file: !2, line: 606, column: 51)
!2547 = !DILocation(line: 607, column: 9, scope: !2546)
!2548 = !DILocation(line: 607, column: 15, scope: !2546)
!2549 = !DILocation(line: 607, column: 23, scope: !2546)
!2550 = !DILocation(line: 608, column: 5, scope: !2546)
!2551 = !DILocation(line: 610, column: 5, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2250, file: !2, line: 610, column: 5)
!2553 = !DILocation(line: 610, column: 5, scope: !2250)
!2554 = !DILocation(line: 610, column: 5, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2552, file: !2, line: 610, column: 5)
!2556 = !DILocation(line: 612, column: 9, scope: !2250)
!2557 = !DILocation(line: 612, column: 16, scope: !2250)
!2558 = !DILocation(line: 612, column: 7, scope: !2250)
!2559 = !DILocation(line: 613, column: 26, scope: !2250)
!2560 = !DILocation(line: 613, column: 33, scope: !2250)
!2561 = !DILocation(line: 613, column: 23, scope: !2250)
!2562 = !DILocation(line: 613, column: 7, scope: !2250)
!2563 = !DILocation(line: 615, column: 25, scope: !2250)
!2564 = !DILocation(line: 615, column: 5, scope: !2250)
!2565 = !DILocation(line: 615, column: 9, scope: !2250)
!2566 = !DILocation(line: 615, column: 13, scope: !2250)
!2567 = !DILocation(line: 615, column: 19, scope: !2250)
!2568 = !DILocation(line: 615, column: 22, scope: !2250)
!2569 = !DILocation(line: 617, column: 5, scope: !2250)
!2570 = !DILocation(line: 618, column: 1, scope: !2250)
!2571 = distinct !DISubprogram(name: "ngx_crc32_long", scope: !2101, file: !2101, line: 39, type: !2572, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2574)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!38, !17, !49}
!2574 = !{!2575, !2576, !2577}
!2575 = !DILocalVariable(name: "p", arg: 1, scope: !2571, file: !2101, line: 39, type: !17)
!2576 = !DILocalVariable(name: "len", arg: 2, scope: !2571, file: !2101, line: 39, type: !49)
!2577 = !DILocalVariable(name: "crc", scope: !2571, file: !2101, line: 41, type: !38)
!2578 = !DILocation(line: 39, column: 24, scope: !2571)
!2579 = !DILocation(line: 39, column: 34, scope: !2571)
!2580 = !DILocation(line: 41, column: 5, scope: !2571)
!2581 = !DILocation(line: 41, column: 15, scope: !2571)
!2582 = !DILocation(line: 43, column: 9, scope: !2571)
!2583 = !DILocation(line: 45, column: 5, scope: !2571)
!2584 = !DILocation(line: 45, column: 15, scope: !2571)
!2585 = !DILocation(line: 46, column: 35, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2571, file: !2101, line: 45, column: 19)
!2587 = !DILocation(line: 46, column: 43, scope: !2586)
!2588 = !DILocation(line: 46, column: 41, scope: !2586)
!2589 = !DILocation(line: 46, column: 39, scope: !2586)
!2590 = !DILocation(line: 46, column: 47, scope: !2586)
!2591 = !DILocation(line: 46, column: 15, scope: !2586)
!2592 = !DILocation(line: 46, column: 58, scope: !2586)
!2593 = !DILocation(line: 46, column: 62, scope: !2586)
!2594 = !DILocation(line: 46, column: 55, scope: !2586)
!2595 = !DILocation(line: 46, column: 13, scope: !2586)
!2596 = distinct !{!2596, !2583, !2597, !1526}
!2597 = !DILocation(line: 47, column: 5, scope: !2571)
!2598 = !DILocation(line: 49, column: 12, scope: !2571)
!2599 = !DILocation(line: 49, column: 16, scope: !2571)
!2600 = !DILocation(line: 50, column: 1, scope: !2571)
!2601 = !DILocation(line: 49, column: 5, scope: !2571)
!2602 = distinct !DISubprogram(name: "ngx_stream_upstream_find_chash_point", scope: !2, file: !2, line: 433, type: !2603, scopeLine: 435, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2605)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!11, !704, !38}
!2605 = !{!2606, !2607, !2608, !2609, !2610, !2611}
!2606 = !DILocalVariable(name: "points", arg: 1, scope: !2602, file: !2, line: 433, type: !704)
!2607 = !DILocalVariable(name: "hash", arg: 2, scope: !2602, file: !2, line: 434, type: !38)
!2608 = !DILocalVariable(name: "i", scope: !2602, file: !2, line: 436, type: !11)
!2609 = !DILocalVariable(name: "j", scope: !2602, file: !2, line: 436, type: !11)
!2610 = !DILocalVariable(name: "k", scope: !2602, file: !2, line: 436, type: !11)
!2611 = !DILocalVariable(name: "point", scope: !2602, file: !2, line: 437, type: !33)
!2612 = !DILocation(line: 433, column: 74, scope: !2602)
!2613 = !DILocation(line: 434, column: 14, scope: !2602)
!2614 = !DILocation(line: 436, column: 5, scope: !2602)
!2615 = !DILocation(line: 436, column: 41, scope: !2602)
!2616 = !DILocation(line: 436, column: 44, scope: !2602)
!2617 = !DILocation(line: 436, column: 47, scope: !2602)
!2618 = !DILocation(line: 437, column: 5, scope: !2602)
!2619 = !DILocation(line: 437, column: 41, scope: !2602)
!2620 = !DILocation(line: 441, column: 14, scope: !2602)
!2621 = !DILocation(line: 441, column: 22, scope: !2602)
!2622 = !DILocation(line: 441, column: 11, scope: !2602)
!2623 = !DILocation(line: 443, column: 7, scope: !2602)
!2624 = !DILocation(line: 444, column: 9, scope: !2602)
!2625 = !DILocation(line: 444, column: 17, scope: !2602)
!2626 = !DILocation(line: 444, column: 7, scope: !2602)
!2627 = !DILocation(line: 446, column: 5, scope: !2602)
!2628 = !DILocation(line: 446, column: 12, scope: !2602)
!2629 = !DILocation(line: 446, column: 16, scope: !2602)
!2630 = !DILocation(line: 446, column: 14, scope: !2602)
!2631 = !DILocation(line: 447, column: 14, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2602, file: !2, line: 446, column: 19)
!2633 = !DILocation(line: 447, column: 18, scope: !2632)
!2634 = !DILocation(line: 447, column: 16, scope: !2632)
!2635 = !DILocation(line: 447, column: 21, scope: !2632)
!2636 = !DILocation(line: 447, column: 11, scope: !2632)
!2637 = !DILocation(line: 449, column: 13, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2632, file: !2, line: 449, column: 13)
!2639 = !DILocation(line: 449, column: 20, scope: !2638)
!2640 = !DILocation(line: 449, column: 26, scope: !2638)
!2641 = !DILocation(line: 449, column: 29, scope: !2638)
!2642 = !DILocation(line: 449, column: 18, scope: !2638)
!2643 = !DILocation(line: 449, column: 13, scope: !2632)
!2644 = !DILocation(line: 450, column: 17, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2638, file: !2, line: 449, column: 35)
!2646 = !DILocation(line: 450, column: 19, scope: !2645)
!2647 = !DILocation(line: 450, column: 15, scope: !2645)
!2648 = !DILocation(line: 452, column: 9, scope: !2645)
!2649 = !DILocation(line: 452, column: 20, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2638, file: !2, line: 452, column: 20)
!2651 = !DILocation(line: 452, column: 27, scope: !2650)
!2652 = !DILocation(line: 452, column: 33, scope: !2650)
!2653 = !DILocation(line: 452, column: 36, scope: !2650)
!2654 = !DILocation(line: 452, column: 25, scope: !2650)
!2655 = !DILocation(line: 452, column: 20, scope: !2638)
!2656 = !DILocation(line: 453, column: 17, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2650, file: !2, line: 452, column: 42)
!2658 = !DILocation(line: 453, column: 15, scope: !2657)
!2659 = !DILocation(line: 455, column: 9, scope: !2657)
!2660 = !DILocation(line: 456, column: 20, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2650, file: !2, line: 455, column: 16)
!2662 = !DILocation(line: 456, column: 13, scope: !2661)
!2663 = distinct !{!2663, !2627, !2664, !1526}
!2664 = !DILocation(line: 458, column: 5, scope: !2602)
!2665 = !DILocation(line: 460, column: 12, scope: !2602)
!2666 = !DILocation(line: 460, column: 5, scope: !2602)
!2667 = !DILocation(line: 461, column: 1, scope: !2602)
!2668 = !DISubprogram(name: "strncmp", scope: !1229, file: !1229, line: 159, type: !2669, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2669 = !DISubroutineType(types: !2670)
!2670 = !{!143, !31, !31, !2207}

; ModuleID = 'samples/923.bc'
source_filename = "lj_snap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit_State = type { %struct.GCtrace, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, i8, %struct.IRType1, i8, %struct.FoldState, ptr, i32, i32, i32, i32, i32, i32, i32, [5 x %union.TValue], [3 x %union.TValue], [1 x i32], ptr, i32, i32, i32, i32, ptr, ptr, i32, i32, i8, ptr, i32, i32, i16, [100 x i16], [257 x i32], [15 x i32], [16 x ptr], [64 x %struct.HotPenalty], i32, i32, [16 x %struct.BPropEntry], i32, %struct.ScEvEntry, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, i64, i64, %union.TValue, ptr, i32, i32 }
%struct.GCtrace = type { %struct.GCRef, i8, i8, i16, i32, i32, %struct.GCRef, ptr, i32, i32, ptr, ptr, %struct.GCRef, %struct.MRef, i32, i32, ptr, i32, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8 }
%struct.GCRef = type { i64 }
%struct.MRef = type { i64 }
%struct.IRType1 = type { i8 }
%struct.FoldState = type { %union.IRIns, [2 x %union.IRIns], [2 x %union.IRIns] }
%union.IRIns = type { %struct.GCRef }
%struct.HotPenalty = type { %struct.MRef, i16, i16 }
%struct.BPropEntry = type { i16, i16, i32 }
%struct.ScEvEntry = type { %struct.MRef, i16, i16, i16, i16, %struct.IRType1, i8 }
%union.TValue = type { i64 }
%struct.SnapShot = type { i32, i16, i8, i8, i8, i8 }
%struct.anon = type { i16, i16, i16, i16 }
%struct.lua_State = type { %struct.GCRef, i8, i8, i8, i8, %struct.MRef, %struct.GCRef, ptr, ptr, %struct.MRef, %struct.MRef, %struct.GCRef, %struct.GCRef, ptr, i32, ptr }
%struct.GCupval = type { %struct.GCRef, i8, i8, i8, i8, %union.anon, %struct.MRef, i32 }
%union.anon = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.GCRef, %struct.GCRef }
%struct.GChead = type { %struct.GCRef, i8, i8, i8, i8, %struct.GCRef, %struct.GCRef, %struct.GCRef }
%struct.anon.0 = type { i32, %struct.IRType1, i8, i8, i8 }
%struct.GCfuncL = type { %struct.GCRef, i8, i8, i8, i8, %struct.GCRef, %struct.GCRef, %struct.MRef, [1 x %struct.GCRef] }
%struct.GCproto = type { %struct.GCRef, i8, i8, i8, i8, i32, i32, %struct.GCRef, %struct.MRef, %struct.MRef, i32, i32, i32, i8, i8, i16, %struct.GCRef, i32, i32, %struct.MRef, %struct.MRef, %struct.MRef }
%struct.GCcdata = type { %struct.GCRef, i8, i8, i16 }
%struct.GCtab = type { %struct.GCRef, i8, i8, i8, i8, %struct.MRef, %struct.GCRef, %struct.GCRef, %struct.MRef, i32, i32, %struct.MRef }
%struct.ExitState = type { [16 x double], [16 x i64], [256 x i32] }
%struct.GCfuncC = type { %struct.GCRef, i8, i8, i8, i8, %struct.GCRef, %struct.GCRef, %struct.MRef, ptr, [1 x %union.TValue] }
%struct.global_State = type { ptr, i32, i32, ptr, ptr, %struct.GCState, i32, %struct.SBuf, %struct.GCstr, i8, i8, i8, i8, %struct.GCRef, %union.TValue, %union.TValue, %union.TValue, %struct.Node, %struct.GCupval, i32, i32, ptr, ptr, ptr, i32, i32, %struct.GCRef, %struct.MRef, %struct.MRef, %struct.MRef, [38 x %struct.GCRef] }
%struct.GCState = type { i64, i64, i8, i8, i8, i8, i32, %struct.GCRef, %struct.MRef, %struct.GCRef, %struct.GCRef, %struct.GCRef, %struct.GCRef, i64, i64, i32, i32 }
%struct.SBuf = type { %struct.MRef, %struct.MRef, %struct.MRef, %struct.MRef }
%struct.GCstr = type { %struct.GCRef, i8, i8, i8, i8, i32, i32 }
%struct.Node = type { %union.TValue, %union.TValue, %struct.MRef }
%struct.CTState = type { ptr, i32, i32, ptr, ptr, ptr, ptr, %struct.CCallback, [128 x i16] }
%struct.CCallback = type { [8 x %union.FPRCBArg], [8 x i64], ptr, ptr, ptr, i32, i32, i32 }
%union.FPRCBArg = type { double }

@lj_bc_mode = external hidden constant [0 x i16], align 2

; Function Attrs: nounwind uwtable
define hidden void @lj_snap_grow_buf_(ptr noundef %J, i32 noundef %need) #0 !dbg !934 {
entry:
  %J.addr = alloca ptr, align 8
  %need.addr = alloca i32, align 4
  %maxsnap = alloca i32, align 4
  store ptr %J, ptr %J.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %J.addr, metadata !1064, metadata !DIExpression()), !dbg !1071
  store i32 %need, ptr %need.addr, align 4, !tbaa !1072
  tail call void @llvm.dbg.declare(metadata ptr %need.addr, metadata !1065, metadata !DIExpression()), !dbg !1074
  call void @llvm.lifetime.start.p0(i64 4, ptr %maxsnap) #9, !dbg !1075
  tail call void @llvm.dbg.declare(metadata ptr %maxsnap, metadata !1066, metadata !DIExpression()), !dbg !1076
  %0 = load ptr, ptr %J.addr, align 8, !dbg !1077, !tbaa !1067
  %param = getelementptr inbounds %struct.jit_State, ptr %0, i32 0, i32 42, !dbg !1078
  %arrayidx = getelementptr inbounds [15 x i32], ptr %param, i64 0, i64 4, !dbg !1077
  %1 = load i32, ptr %arrayidx, align 8, !dbg !1077, !tbaa !1072
  store i32 %1, ptr %maxsnap, align 4, !dbg !1076, !tbaa !1072
  %2 = load i32, ptr %need.addr, align 4, !dbg !1079, !tbaa !1072
  %3 = load i32, ptr %maxsnap, align 4, !dbg !1081, !tbaa !1072
  %cmp = icmp ugt i32 %2, %3, !dbg !1082
  br i1 %cmp, label %if.then, label %if.end, !dbg !1083

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %J.addr, align 8, !dbg !1084, !tbaa !1067
  call void @lj_trace_err(ptr noundef %4, i32 noundef 4) #10, !dbg !1085
  unreachable, !dbg !1085

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %J.addr, align 8, !dbg !1086, !tbaa !1067
  %L = getelementptr inbounds %struct.jit_State, ptr %5, i32 0, i32 2, !dbg !1086
  %6 = load ptr, ptr %L, align 8, !dbg !1086, !tbaa !1087
  %7 = load ptr, ptr %J.addr, align 8, !dbg !1086, !tbaa !1067
  %snapbuf = getelementptr inbounds %struct.jit_State, ptr %7, i32 0, i32 31, !dbg !1086
  %8 = load ptr, ptr %snapbuf, align 8, !dbg !1086, !tbaa !1097
  %9 = load ptr, ptr %J.addr, align 8, !dbg !1086, !tbaa !1067
  %sizesnap = getelementptr inbounds %struct.jit_State, ptr %9, i32 0, i32 30, !dbg !1086
  %10 = load i32, ptr %maxsnap, align 4, !dbg !1086, !tbaa !1072
  %call = call ptr @lj_mem_grow(ptr noundef %6, ptr noundef %8, ptr noundef %sizesnap, i32 noundef %10, i32 noundef 12), !dbg !1086
  %11 = load ptr, ptr %J.addr, align 8, !dbg !1086, !tbaa !1067
  %snapbuf1 = getelementptr inbounds %struct.jit_State, ptr %11, i32 0, i32 31, !dbg !1086
  store ptr %call, ptr %snapbuf1, align 8, !dbg !1086, !tbaa !1097
  %12 = load ptr, ptr %J.addr, align 8, !dbg !1098, !tbaa !1067
  %snapbuf2 = getelementptr inbounds %struct.jit_State, ptr %12, i32 0, i32 31, !dbg !1099
  %13 = load ptr, ptr %snapbuf2, align 8, !dbg !1099, !tbaa !1097
  %14 = load ptr, ptr %J.addr, align 8, !dbg !1100, !tbaa !1067
  %cur = getelementptr inbounds %struct.jit_State, ptr %14, i32 0, i32 0, !dbg !1101
  %snap = getelementptr inbounds %struct.GCtrace, ptr %cur, i32 0, i32 10, !dbg !1102
  store ptr %13, ptr %snap, align 8, !dbg !1103, !tbaa !1104
  call void @llvm.lifetime.end.p0(i64 4, ptr %maxsnap) #9, !dbg !1105
  ret void, !dbg !1105
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noreturn
declare !dbg !1106 hidden void @lj_trace_err(ptr noundef, i32 noundef) #2

declare !dbg !1110 hidden ptr @lj_mem_grow(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define hidden void @lj_snap_grow_map_(ptr noundef %J, i32 noundef %need) #0 !dbg !1115 {
entry:
  %J.addr = alloca ptr, align 8
  %need.addr = alloca i32, align 4
  store ptr %J, ptr %J.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %J.addr, metadata !1117, metadata !DIExpression()), !dbg !1119
  store i32 %need, ptr %need.addr, align 4, !tbaa !1072
  tail call void @llvm.dbg.declare(metadata ptr %need.addr, metadata !1118, metadata !DIExpression()), !dbg !1120
  %0 = load i32, ptr %need.addr, align 4, !dbg !1121, !tbaa !1072
  %1 = load ptr, ptr %J.addr, align 8, !dbg !1123, !tbaa !1067
  %sizesnapmap = getelementptr inbounds %struct.jit_State, ptr %1, i32 0, i32 33, !dbg !1124
  %2 = load i32, ptr %sizesnapmap, align 8, !dbg !1124, !tbaa !1125
  %mul = mul i32 2, %2, !dbg !1126
  %cmp = icmp ult i32 %0, %mul, !dbg !1127
  br i1 %cmp, label %if.then, label %if.else, !dbg !1128

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %J.addr, align 8, !dbg !1129, !tbaa !1067
  %sizesnapmap1 = getelementptr inbounds %struct.jit_State, ptr %3, i32 0, i32 33, !dbg !1130
  %4 = load i32, ptr %sizesnapmap1, align 8, !dbg !1130, !tbaa !1125
  %mul2 = mul i32 2, %4, !dbg !1131
  store i32 %mul2, ptr %need.addr, align 4, !dbg !1132, !tbaa !1072
  br label %if.end5, !dbg !1133

if.else:                                          ; preds = %entry
  %5 = load i32, ptr %need.addr, align 4, !dbg !1134, !tbaa !1072
  %cmp3 = icmp ult i32 %5, 64, !dbg !1136
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !1137

if.then4:                                         ; preds = %if.else
  store i32 64, ptr %need.addr, align 4, !dbg !1138, !tbaa !1072
  br label %if.end, !dbg !1139

if.end:                                           ; preds = %if.then4, %if.else
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  %6 = load ptr, ptr %J.addr, align 8, !dbg !1140, !tbaa !1067
  %L = getelementptr inbounds %struct.jit_State, ptr %6, i32 0, i32 2, !dbg !1141
  %7 = load ptr, ptr %L, align 8, !dbg !1141, !tbaa !1087
  %8 = load ptr, ptr %J.addr, align 8, !dbg !1142, !tbaa !1067
  %snapmapbuf = getelementptr inbounds %struct.jit_State, ptr %8, i32 0, i32 32, !dbg !1143
  %9 = load ptr, ptr %snapmapbuf, align 8, !dbg !1143, !tbaa !1144
  %10 = load ptr, ptr %J.addr, align 8, !dbg !1145, !tbaa !1067
  %sizesnapmap6 = getelementptr inbounds %struct.jit_State, ptr %10, i32 0, i32 33, !dbg !1146
  %11 = load i32, ptr %sizesnapmap6, align 8, !dbg !1146, !tbaa !1125
  %conv = zext i32 %11 to i64, !dbg !1145
  %mul7 = mul i64 %conv, 4, !dbg !1147
  %12 = load i32, ptr %need.addr, align 4, !dbg !1148, !tbaa !1072
  %conv8 = zext i32 %12 to i64, !dbg !1148
  %mul9 = mul i64 %conv8, 4, !dbg !1149
  %call = call ptr @lj_mem_realloc(ptr noundef %7, ptr noundef %9, i64 noundef %mul7, i64 noundef %mul9), !dbg !1150
  %13 = load ptr, ptr %J.addr, align 8, !dbg !1151, !tbaa !1067
  %snapmapbuf10 = getelementptr inbounds %struct.jit_State, ptr %13, i32 0, i32 32, !dbg !1152
  store ptr %call, ptr %snapmapbuf10, align 8, !dbg !1153, !tbaa !1144
  %14 = load ptr, ptr %J.addr, align 8, !dbg !1154, !tbaa !1067
  %snapmapbuf11 = getelementptr inbounds %struct.jit_State, ptr %14, i32 0, i32 32, !dbg !1155
  %15 = load ptr, ptr %snapmapbuf11, align 8, !dbg !1155, !tbaa !1144
  %16 = load ptr, ptr %J.addr, align 8, !dbg !1156, !tbaa !1067
  %cur = getelementptr inbounds %struct.jit_State, ptr %16, i32 0, i32 0, !dbg !1157
  %snapmap = getelementptr inbounds %struct.GCtrace, ptr %cur, i32 0, i32 11, !dbg !1158
  store ptr %15, ptr %snapmap, align 8, !dbg !1159, !tbaa !1160
  %17 = load i32, ptr %need.addr, align 4, !dbg !1161, !tbaa !1072
  %18 = load ptr, ptr %J.addr, align 8, !dbg !1162, !tbaa !1067
  %sizesnapmap12 = getelementptr inbounds %struct.jit_State, ptr %18, i32 0, i32 33, !dbg !1163
  store i32 %17, ptr %sizesnapmap12, align 8, !dbg !1164, !tbaa !1125
  ret void, !dbg !1165
}

declare !dbg !1166 hidden ptr @lj_mem_realloc(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: nounwind uwtable
define hidden void @lj_snap_add(ptr noundef %J) #0 !dbg !1169 {
entry:
  %J.addr = alloca ptr, align 8
  %nsnap = alloca i32, align 4
  %nsnapmap = alloca i32, align 4
  store ptr %J, ptr %J.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %J.addr, metadata !1173, metadata !DIExpression()), !dbg !1179
  call void @llvm.lifetime.start.p0(i64 4, ptr %nsnap) #9, !dbg !1180
  tail call void @llvm.dbg.declare(metadata ptr %nsnap, metadata !1174, metadata !DIExpression()), !dbg !1181
  %0 = load ptr, ptr %J.addr, align 8, !dbg !1182, !tbaa !1067
  %cur = getelementptr inbounds %struct.jit_State, ptr %0, i32 0, i32 0, !dbg !1183
  %nsnap1 = getelementptr inbounds %struct.GCtrace, ptr %cur, i32 0, i32 3, !dbg !1184
  %1 = load i16, ptr %nsnap1, align 2, !dbg !1184, !tbaa !1185
  %conv = zext i16 %1 to i32, !dbg !1182
  store i32 %conv, ptr %nsnap, align 4, !dbg !1181, !tbaa !1072
  call void @llvm.lifetime.start.p0(i64 4, ptr %nsnapmap) #9, !dbg !1186
  tail call void @llvm.dbg.declare(metadata ptr %nsnapmap, metadata !1175, metadata !DIExpression()), !dbg !1187
  %2 = load ptr, ptr %J.addr, align 8, !dbg !1188, !tbaa !1067
  %cur2 = getelementptr inbounds %struct.jit_State, ptr %2, i32 0, i32 0, !dbg !1189
  %nsnapmap3 = getelementptr inbounds %struct.GCtrace, ptr %cur2, i32 0, i32 9, !dbg !1190
  %3 = load i32, ptr %nsnapmap3, align 4, !dbg !1190, !tbaa !1191
  store i32 %3, ptr %nsnapmap, align 4, !dbg !1187, !tbaa !1072
  %4 = load i32, ptr %nsnap, align 4, !dbg !1192, !tbaa !1072
  %cmp = icmp ugt i32 %4, 0, !dbg !1193
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !1194

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %J.addr, align 8, !dbg !1195, !tbaa !1067
  %cur5 = getelementptr inbounds %struct.jit_State, ptr %5, i32 0, i32 0, !dbg !1196
  %snap = getelementptr inbounds %struct.GCtrace, ptr %cur5, i32 0, i32 10, !dbg !1197
  %6 = load ptr, ptr %snap, align 8, !dbg !1197, !tbaa !1104
  %7 = load i32, ptr %nsnap, align 4, !dbg !1198, !tbaa !1072
  %sub = sub i32 %7, 1, !dbg !1199
  %idxprom = zext i32 %sub to i64, !dbg !1195
  %arrayidx = getelementptr inbounds %struct.SnapShot, ptr %6, i64 %idxprom, !dbg !1195
  %ref = getelementptr inbounds %struct.SnapShot, ptr %arrayidx, i32 0, i32 1, !dbg !1200
  %8 = load i16, ptr %ref, align 4, !dbg !1200, !tbaa !1201
  %conv6 = zext i16 %8 to i32, !dbg !1195
  %9 = load ptr, ptr %J.addr, align 8, !dbg !1203, !tbaa !1067
  %cur7 = getelementptr inbounds %struct.jit_State, ptr %9, i32 0, i32 0, !dbg !1204
  %nins = getelementptr inbounds %struct.GCtrace, ptr %cur7, i32 0, i32 4, !dbg !1205
  %10 = load i32, ptr %nins, align 4, !dbg !1205, !tbaa !1206
  %cmp8 = icmp eq i32 %conv6, %10, !dbg !1207
  br i1 %cmp8, label %if.then, label %lor.lhs.false, !dbg !1208

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %11 = load ptr, ptr %J.addr, align 8, !dbg !1209, !tbaa !1067
  %mergesnap = getelementptr inbounds %struct.jit_State, ptr %11, i32 0, i32 10, !dbg !1210
  %12 = load i8, ptr %mergesnap, align 4, !dbg !1210, !tbaa !1211
  %conv10 = zext i8 %12 to i32, !dbg !1209
  %tobool = icmp ne i32 %conv10, 0, !dbg !1209
  br i1 %tobool, label %land.lhs.true11, label %if.else, !dbg !1212

land.lhs.true11:                                  ; preds = %lor.lhs.false
  %13 = load ptr, ptr %J.addr, align 8, !dbg !1213, !tbaa !1067
  %guardemit = getelementptr inbounds %struct.jit_State, ptr %13, i32 0, i32 12, !dbg !1213
  %irt = getelementptr inbounds %struct.IRType1, ptr %guardemit, i32 0, i32 0, !dbg !1213
  %14 = load i8, ptr %irt, align 2, !dbg !1213, !tbaa !1214
  %conv12 = zext i8 %14 to i32, !dbg !1213
  %and = and i32 %conv12, 128, !dbg !1213
  %tobool13 = icmp ne i32 %and, 0, !dbg !1213
  br i1 %tobool13, label %if.else, label %if.then, !dbg !1215

if.then:                                          ; preds = %land.lhs.true11, %land.lhs.true
  %15 = load i32, ptr %nsnap, align 4, !dbg !1216, !tbaa !1072
  %cmp14 = icmp eq i32 %15, 1, !dbg !1219
  br i1 %cmp14, label %if.then16, label %if.end, !dbg !1220

if.then16:                                        ; preds = %if.then
  %16 = load ptr, ptr %J.addr, align 8, !dbg !1221, !tbaa !1067
  call void @lj_ir_set_(ptr noundef %16, i16 noundef zeroext 3072, i16 noundef zeroext 0, i16 noundef zeroext 0), !dbg !1221
  %17 = load ptr, ptr %J.addr, align 8, !dbg !1221, !tbaa !1067
  %call = call i32 @lj_ir_emit(ptr noundef %17), !dbg !1221
  br label %nomerge, !dbg !1223

if.end:                                           ; preds = %if.then
  %18 = load ptr, ptr %J.addr, align 8, !dbg !1224, !tbaa !1067
  %cur17 = getelementptr inbounds %struct.jit_State, ptr %18, i32 0, i32 0, !dbg !1225
  %snap18 = getelementptr inbounds %struct.GCtrace, ptr %cur17, i32 0, i32 10, !dbg !1226
  %19 = load ptr, ptr %snap18, align 8, !dbg !1226, !tbaa !1104
  %20 = load i32, ptr %nsnap, align 4, !dbg !1227, !tbaa !1072
  %dec = add i32 %20, -1, !dbg !1227
  store i32 %dec, ptr %nsnap, align 4, !dbg !1227, !tbaa !1072
  %idxprom19 = zext i32 %dec to i64, !dbg !1224
  %arrayidx20 = getelementptr inbounds %struct.SnapShot, ptr %19, i64 %idxprom19, !dbg !1224
  %mapofs = getelementptr inbounds %struct.SnapShot, ptr %arrayidx20, i32 0, i32 0, !dbg !1228
  %21 = load i32, ptr %mapofs, align 4, !dbg !1228, !tbaa !1229
  store i32 %21, ptr %nsnapmap, align 4, !dbg !1230, !tbaa !1072
  br label %if.end25, !dbg !1231

if.else:                                          ; preds = %land.lhs.true11, %lor.lhs.false
  br label %nomerge, !dbg !1232

nomerge:                                          ; preds = %if.else, %if.then16
  tail call void @llvm.dbg.label(metadata !1176), !dbg !1233
  %22 = load ptr, ptr %J.addr, align 8, !dbg !1234, !tbaa !1067
  %23 = load i32, ptr %nsnap, align 4, !dbg !1235, !tbaa !1072
  %add = add i32 %23, 1, !dbg !1236
  call void @lj_snap_grow_buf(ptr noundef %22, i32 noundef %add), !dbg !1237
  %24 = load i32, ptr %nsnap, align 4, !dbg !1238, !tbaa !1072
  %add21 = add i32 %24, 1, !dbg !1239
  %conv22 = trunc i32 %add21 to i16, !dbg !1240
  %25 = load ptr, ptr %J.addr, align 8, !dbg !1241, !tbaa !1067
  %cur23 = getelementptr inbounds %struct.jit_State, ptr %25, i32 0, i32 0, !dbg !1242
  %nsnap24 = getelementptr inbounds %struct.GCtrace, ptr %cur23, i32 0, i32 3, !dbg !1243
  store i16 %conv22, ptr %nsnap24, align 2, !dbg !1244, !tbaa !1185
  br label %if.end25

if.end25:                                         ; preds = %nomerge, %if.end
  %26 = load ptr, ptr %J.addr, align 8, !dbg !1245, !tbaa !1067
  %mergesnap26 = getelementptr inbounds %struct.jit_State, ptr %26, i32 0, i32 10, !dbg !1246
  store i8 0, ptr %mergesnap26, align 4, !dbg !1247, !tbaa !1211
  %27 = load ptr, ptr %J.addr, align 8, !dbg !1248, !tbaa !1067
  %guardemit27 = getelementptr inbounds %struct.jit_State, ptr %27, i32 0, i32 12, !dbg !1249
  %irt28 = getelementptr inbounds %struct.IRType1, ptr %guardemit27, i32 0, i32 0, !dbg !1250
  store i8 0, ptr %irt28, align 2, !dbg !1251, !tbaa !1214
  %28 = load ptr, ptr %J.addr, align 8, !dbg !1252, !tbaa !1067
  %29 = load ptr, ptr %J.addr, align 8, !dbg !1253, !tbaa !1067
  %cur29 = getelementptr inbounds %struct.jit_State, ptr %29, i32 0, i32 0, !dbg !1254
  %snap30 = getelementptr inbounds %struct.GCtrace, ptr %cur29, i32 0, i32 10, !dbg !1255
  %30 = load ptr, ptr %snap30, align 8, !dbg !1255, !tbaa !1104
  %31 = load i32, ptr %nsnap, align 4, !dbg !1256, !tbaa !1072
  %idxprom31 = zext i32 %31 to i64, !dbg !1253
  %arrayidx32 = getelementptr inbounds %struct.SnapShot, ptr %30, i64 %idxprom31, !dbg !1253
  %32 = load i32, ptr %nsnapmap, align 4, !dbg !1257, !tbaa !1072
  call void @snapshot_stack(ptr noundef %28, ptr noundef %arrayidx32, i32 noundef %32), !dbg !1258
  call void @llvm.lifetime.end.p0(i64 4, ptr %nsnapmap) #9, !dbg !1259
  call void @llvm.lifetime.end.p0(i64 4, ptr %nsnap) #9, !dbg !1259
  ret void, !dbg !1259
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @lj_ir_set_(ptr noundef %J, i16 noundef zeroext %ot, i16 noundef zeroext %a, i16 noundef zeroext %b) #4 !dbg !1260 {
entry:
  %J.addr = alloca ptr, align 8
  %ot.addr = alloca i16, align 2
  %a.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  store ptr %J, ptr %J.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %J.addr, metadata !1265, metadata !DIExpression()), !dbg !1269
  store i16 %ot, ptr %ot.addr, align 2, !tbaa !1270
  tail call void @llvm.dbg.declare(metadata ptr %ot.addr, metadata !1266, metadata !DIExpression()), !dbg !1271
  store i16 %a, ptr %a.addr, align 2, !tbaa !1270
  tail call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !1267, metadata !DIExpression()), !dbg !1272
  store i16 %b, ptr %b.addr, align 2, !tbaa !1270
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1268, metadata !DIExpression()), !dbg !1273
  %0 = load i16, ptr %ot.addr, align 2, !dbg !1274, !tbaa !1270
  %1 = load ptr, ptr %J.addr, align 8, !dbg !1275, !tbaa !1067
  %fold = getelementptr inbounds %struct.jit_State, ptr %1, i32 0, i32 14, !dbg !1276
  %ins = getelementptr inbounds %struct.FoldState, ptr %fold, i32 0, i32 0, !dbg !1277
  %ot1 = getelementptr inbounds %struct.anon, ptr %ins, i32 0, i32 2, !dbg !1278
  store i16 %0, ptr %ot1, align 4, !dbg !1279, !tbaa !1280
  %2 = load i16, ptr %a.addr, align 2, !dbg !1281, !tbaa !1270
  %3 = load ptr, ptr %J.addr, align 8, !dbg !1282, !tbaa !1067
  %fold2 = getelementptr inbounds %struct.jit_State, ptr %3, i32 0, i32 14, !dbg !1283
  %ins3 = getelementptr inbounds %struct.FoldState, ptr %fold2, i32 0, i32 0, !dbg !1284
  %op1 = getelementptr inbounds %struct.anon, ptr %ins3, i32 0, i32 0, !dbg !1285
  store i16 %2, ptr %op1, align 8, !dbg !1286, !tbaa !1280
  %4 = load i16, ptr %b.addr, align 2, !dbg !1287, !tbaa !1270
  %5 = load ptr, ptr %J.addr, align 8, !dbg !1288, !tbaa !1067
  %fold4 = getelementptr inbounds %struct.jit_State, ptr %5, i32 0, i32 14, !dbg !1289
  %ins5 = getelementptr inbounds %struct.FoldState, ptr %fold4, i32 0, i32 0, !dbg !1290
  %op2 = getelementptr inbounds %struct.anon, ptr %ins5, i32 0, i32 1, !dbg !1291
  store i16 %4, ptr %op2, align 2, !dbg !1292, !tbaa !1280
  ret void, !dbg !1293
}

declare !dbg !1294 hidden i32 @lj_ir_emit(ptr noundef) #3

; Function Attrs: alwaysinline nounwind uwtable
define internal void @lj_snap_grow_buf(ptr noundef %J, i32 noundef %need) #4 !dbg !1297 {
entry:
  %J.addr = alloca ptr, align 8
  %need.addr = alloca i32, align 4
  store ptr %J, ptr %J.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %J.addr, metadata !1300, metadata !DIExpression()), !dbg !1302
  store i32 %need, ptr %need.addr, align 4, !tbaa !1072
  tail call void @llvm.dbg.declare(metadata ptr %need.addr, metadata !1301, metadata !DIExpression()), !dbg !1303
  %0 = load i32, ptr %need.addr, align 4, !dbg !1304, !tbaa !1072
  %1 = load ptr, ptr %J.addr, align 8, !dbg !1304, !tbaa !1067
  %sizesnap = getelementptr inbounds %struct.jit_State, ptr %1, i32 0, i32 30, !dbg !1304
  %2 = load i32, ptr %sizesnap, align 4, !dbg !1304, !tbaa !1306
  %cmp = icmp ugt i32 %0, %2, !dbg !1304
  %lnot = xor i1 %cmp, true, !dbg !1304
  %lnot1 = xor i1 %lnot, true, !dbg !1304
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1304
  %conv = sext i32 %lnot.ext to i64, !dbg !1304
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1304
  %tobool = icmp ne i64 %expval, 0, !dbg !1304
  br i1 %tobool, label %if.then, label %if.end, !dbg !1307

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %J.addr, align 8, !dbg !1308, !tbaa !1067
  %4 = load i32, ptr %need.addr, align 4, !dbg !1309, !tbaa !1072
  call void @lj_snap_grow_buf_(ptr noundef %3, i32 noundef %4), !dbg !1310
  br label %if.end, !dbg !1310

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1311
}

; Function Attrs: nounwind uwtable
define internal void @snapshot_stack(ptr noundef %J, ptr noundef %snap, i32 noundef %nsnapmap) #0 !dbg !1312 {
entry:
  %J.addr = alloca ptr, align 8
  %snap.addr = alloca ptr, align 8
  %nsnapmap.addr = alloca i32, align 4
  %nslots = alloca i32, align 4
  %nent = alloca i32, align 4
  %p = alloca ptr, align 8
  store ptr %J, ptr %J.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %J.addr, metadata !1316, metadata !DIExpression()), !dbg !1322
  store ptr %snap, ptr %snap.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %snap.addr, metadata !1317, metadata !DIExpression()), !dbg !1323
  store i32 %nsnapmap, ptr %nsnapmap.addr, align 4, !tbaa !1072
  tail call void @llvm.dbg.declare(metadata ptr %nsnapmap.addr, metadata !1318, metadata !DIExpression()), !dbg !1324
  call void @llvm.lifetime.start.p0(i64 4, ptr %nslots) #9, !dbg !1325
  tail call void @llvm.dbg.declare(metadata ptr %nslots, metadata !1319, metadata !DIExpression()), !dbg !1326
  %0 = load ptr, ptr %J.addr, align 8, !dbg !1327, !tbaa !1067
  %baseslot = getelementptr inbounds %struct.jit_State, ptr %0, i32 0, i32 9, !dbg !1328
  %1 = load i32, ptr %baseslot, align 8, !dbg !1328, !tbaa !1329
  %2 = load ptr, ptr %J.addr, align 8, !dbg !1330, !tbaa !1067
  %maxslot = getelementptr inbounds %struct.jit_State, ptr %2, i32 0, i32 8, !dbg !1331
  %3 = load i32, ptr %maxslot, align 4, !dbg !1331, !tbaa !1332
  %add = add i32 %1, %3, !dbg !1333
  store i32 %add, ptr %nslots, align 4, !dbg !1326, !tbaa !1072
  call void @llvm.lifetime.start.p0(i64 4, ptr %nent) #9, !dbg !1334
  tail call void @llvm.dbg.declare(metadata ptr %nent, metadata !1320, metadata !DIExpression()), !dbg !1335
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #9, !dbg !1336
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !1321, metadata !DIExpression()), !dbg !1337
  %4 = load ptr, ptr %J.addr, align 8, !dbg !1338, !tbaa !1067
  %5 = load i32, ptr %nsnapmap.addr, align 4, !dbg !1339, !tbaa !1072
  %6 = load i32, ptr %nslots, align 4, !dbg !1340, !tbaa !1072
  %add1 = add i32 %5, %6, !dbg !1341
  %add2 = add i32 %add1, 2, !dbg !1342
  call void @lj_snap_grow_map(ptr noundef %4, i32 noundef %add2), !dbg !1343
  %7 = load ptr, ptr %J.addr, align 8, !dbg !1344, !tbaa !1067
  %cur = getelementptr inbounds %struct.jit_State, ptr %7, i32 0, i32 0, !dbg !1345
  %snapmap = getelementptr inbounds %struct.GCtrace, ptr %cur, i32 0, i32 11, !dbg !1346
  %8 = load ptr, ptr %snapmap, align 8, !dbg !1346, !tbaa !1160
  %9 = load i32, ptr %nsnapmap.addr, align 4, !dbg !1347, !tbaa !1072
  %idxprom = zext i32 %9 to i64, !dbg !1344
  %arrayidx = getelementptr inbounds i32, ptr %8, i64 %idxprom, !dbg !1344
  store ptr %arrayidx, ptr %p, align 8, !dbg !1348, !tbaa !1067
  %10 = load ptr, ptr %J.addr, align 8, !dbg !1349, !tbaa !1067
  %11 = load ptr, ptr %p, align 8, !dbg !1350, !tbaa !1067
  %12 = load i32, ptr %nslots, align 4, !dbg !1351, !tbaa !1072
  %call = call i32 @snapshot_slots(ptr noundef %10, ptr noundef %11, i32 noundef %12), !dbg !1352
  store i32 %call, ptr %nent, align 4, !dbg !1353, !tbaa !1072
  %13 = load i32, ptr %nent, align 4, !dbg !1354, !tbaa !1072
  %conv = trunc i32 %13 to i8, !dbg !1355
  %14 = load ptr, ptr %snap.addr, align 8, !dbg !1356, !tbaa !1067
  %nent3 = getelementptr inbounds %struct.SnapShot, ptr %14, i32 0, i32 4, !dbg !1357
  store i8 %conv, ptr %nent3, align 4, !dbg !1358, !tbaa !1359
  %15 = load ptr, ptr %J.addr, align 8, !dbg !1360, !tbaa !1067
  %16 = load ptr, ptr %p, align 8, !dbg !1361, !tbaa !1067
  %17 = load i32, ptr %nent, align 4, !dbg !1362, !tbaa !1072
  %idx.ext = zext i32 %17 to i64, !dbg !1363
  %add.ptr = getelementptr inbounds i32, ptr %16, i64 %idx.ext, !dbg !1363
  %18 = load ptr, ptr %snap.addr, align 8, !dbg !1364, !tbaa !1067
  %topslot = getelementptr inbounds %struct.SnapShot, ptr %18, i32 0, i32 3, !dbg !1365
  %call4 = call i32 @snapshot_framelinks(ptr noundef %15, ptr noundef %add.ptr, ptr noundef %topslot), !dbg !1366
  %19 = load i32, ptr %nent, align 4, !dbg !1367, !tbaa !1072
  %add5 = add i32 %19, %call4, !dbg !1367
  store i32 %add5, ptr %nent, align 4, !dbg !1367, !tbaa !1072
  %20 = load i32, ptr %nsnapmap.addr, align 4, !dbg !1368, !tbaa !1072
  %21 = load ptr, ptr %snap.addr, align 8, !dbg !1369, !tbaa !1067
  %mapofs = getelementptr inbounds %struct.SnapShot, ptr %21, i32 0, i32 0, !dbg !1370
  store i32 %20, ptr %mapofs, align 4, !dbg !1371, !tbaa !1229
  %22 = load ptr, ptr %J.addr, align 8, !dbg !1372, !tbaa !1067
  %cur6 = getelementptr inbounds %struct.jit_State, ptr %22, i32 0, i32 0, !dbg !1373
  %nins = getelementptr inbounds %struct.GCtrace, ptr %cur6, i32 0, i32 4, !dbg !1374
  %23 = load i32, ptr %nins, align 4, !dbg !1374, !tbaa !1206
  %conv7 = trunc i32 %23 to i16, !dbg !1375
  %24 = load ptr, ptr %snap.addr, align 8, !dbg !1376, !tbaa !1067
  %ref = getelementptr inbounds %struct.SnapShot, ptr %24, i32 0, i32 1, !dbg !1377
  store i16 %conv7, ptr %ref, align 4, !dbg !1378, !tbaa !1201
  %25 = load i32, ptr %nslots, align 4, !dbg !1379, !tbaa !1072
  %conv8 = trunc i32 %25 to i8, !dbg !1380
  %26 = load ptr, ptr %snap.addr, align 8, !dbg !1381, !tbaa !1067
  %nslots9 = getelementptr inbounds %struct.SnapShot, ptr %26, i32 0, i32 2, !dbg !1382
  store i8 %conv8, ptr %nslots9, align 2, !dbg !1383, !tbaa !1384
  %27 = load ptr, ptr %snap.addr, align 8, !dbg !1385, !tbaa !1067
  %count = getelementptr inbounds %struct.SnapShot, ptr %27, i32 0, i32 5, !dbg !1386
  store i8 0, ptr %count, align 1, !dbg !1387, !tbaa !1388
  %28 = load i32, ptr %nsnapmap.addr, align 4, !dbg !1389, !tbaa !1072
  %29 = load i32, ptr %nent, align 4, !dbg !1390, !tbaa !1072
  %add10 = add i32 %28, %29, !dbg !1391
  %30 = load ptr, ptr %J.addr, align 8, !dbg !1392, !tbaa !1067
  %cur11 = getelementptr inbounds %struct.jit_State, ptr %30, i32 0, i32 0, !dbg !1393
  %nsnapmap12 = getelementptr inbounds %struct.GCtrace, ptr %cur11, i32 0, i32 9, !dbg !1394
  store i32 %add10, ptr %nsnapmap12, align 4, !dbg !1395, !tbaa !1191
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #9, !dbg !1396
  call void @llvm.lifetime.end.p0(i64 4, ptr %nent) #9, !dbg !1396
  call void @llvm.lifetime.end.p0(i64 4, ptr %nslots) #9, !dbg !1396
  ret void, !dbg !1396
}

; Function Attrs: nounwind uwtable
define hidden void @lj_snap_purge(ptr noundef %J) #0 !dbg !1397 {
entry:
  %J.addr = alloca ptr, align 8
  %udf = alloca [257 x i8], align 16
  %maxslot = alloca i32, align 4
  %s = alloca i32, align 4
  store ptr %J, ptr %J.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %J.addr, metadata !1399, metadata !DIExpression()), !dbg !1404
  call void @llvm.lifetime.start.p0(i64 257, ptr %udf) #9, !dbg !1405
  tail call void @llvm.dbg.declare(metadata ptr %udf, metadata !1400, metadata !DIExpression()), !dbg !1406
  call void @llvm.lifetime.start.p0(i64 4, ptr %maxslot) #9, !dbg !1407
  tail call void @llvm.dbg.declare(metadata ptr %maxslot, metadata !1402, metadata !DIExpression()), !dbg !1408
  %0 = load ptr, ptr %J.addr, align 8, !dbg !1409, !tbaa !1067
  %maxslot1 = getelementptr inbounds %struct.jit_State, ptr %0, i32 0, i32 8, !dbg !1410
  %1 = load i32, ptr %maxslot1, align 4, !dbg !1410, !tbaa !1332
  store i32 %1, ptr %maxslot, align 4, !dbg !1408, !tbaa !1072
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #9, !dbg !1411
  tail call void @llvm.dbg.declare(metadata ptr %s, metadata !1403, metadata !DIExpression()), !dbg !1412
  %2 = load ptr, ptr %J.addr, align 8, !dbg !1413, !tbaa !1067
  %arraydecay = getelementptr inbounds [257 x i8], ptr %udf, i64 0, i64 0, !dbg !1414
  %3 = load ptr, ptr %J.addr, align 8, !dbg !1415, !tbaa !1067
  %pc = getelementptr inbounds %struct.jit_State, ptr %3, i32 0, i32 3, !dbg !1416
  %4 = load ptr, ptr %pc, align 8, !dbg !1416, !tbaa !1417
  %5 = load i32, ptr %maxslot, align 4, !dbg !1418, !tbaa !1072
  %call = call i32 @snap_usedef(ptr noundef %2, ptr noundef %arraydecay, ptr noundef %4, i32 noundef %5), !dbg !1419
  store i32 %call, ptr %s, align 4, !dbg !1412, !tbaa !1072
  br label %for.cond, !dbg !1420

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, ptr %s, align 4, !dbg !1421, !tbaa !1072
  %7 = load i32, ptr %maxslot, align 4, !dbg !1424, !tbaa !1072
  %cmp = icmp ult i32 %6, %7, !dbg !1425
  br i1 %cmp, label %for.body, label %for.end, !dbg !1426

for.body:                                         ; preds = %for.cond
  %8 = load i32, ptr %s, align 4, !dbg !1427, !tbaa !1072
  %idxprom = zext i32 %8 to i64, !dbg !1429
  %arrayidx = getelementptr inbounds [257 x i8], ptr %udf, i64 0, i64 %idxprom, !dbg !1429
  %9 = load i8, ptr %arrayidx, align 1, !dbg !1429, !tbaa !1280
  %conv = zext i8 %9 to i32, !dbg !1429
  %cmp2 = icmp ne i32 %conv, 0, !dbg !1430
  br i1 %cmp2, label %if.then, label %if.end, !dbg !1431

if.then:                                          ; preds = %for.body
  %10 = load ptr, ptr %J.addr, align 8, !dbg !1432, !tbaa !1067
  %base = getelementptr inbounds %struct.jit_State, ptr %10, i32 0, i32 6, !dbg !1433
  %11 = load ptr, ptr %base, align 8, !dbg !1433, !tbaa !1434
  %12 = load i32, ptr %s, align 4, !dbg !1435, !tbaa !1072
  %idxprom4 = zext i32 %12 to i64, !dbg !1432
  %arrayidx5 = getelementptr inbounds i32, ptr %11, i64 %idxprom4, !dbg !1432
  store i32 0, ptr %arrayidx5, align 4, !dbg !1436, !tbaa !1072
  br label %if.end, !dbg !1432

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !1437

for.inc:                                          ; preds = %if.end
  %13 = load i32, ptr %s, align 4, !dbg !1438, !tbaa !1072
  %inc = add i32 %13, 1, !dbg !1438
  store i32 %inc, ptr %s, align 4, !dbg !1438, !tbaa !1072
  br label %for.cond, !dbg !1439, !llvm.loop !1440

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #9, !dbg !1443
  call void @llvm.lifetime.end.p0(i64 4, ptr %maxslot) #9, !dbg !1443
  call void @llvm.lifetime.end.p0(i64 257, ptr %udf) #9, !dbg !1443
  ret void, !dbg !1443
}

; Function Attrs: nounwind uwtable
define internal i32 @snap_usedef(ptr noundef %J, ptr noundef %udf, ptr noundef %pc, i32 noundef %maxslot) #0 !dbg !1444 {
entry:
  %retval = alloca i32, align 4
  %J.addr = alloca ptr, align 8
  %udf.addr = alloca ptr, align 8
  %pc.addr = alloca ptr, align 8
  %maxslot.addr = alloca i32, align 4
  %s = alloca i32, align 4
  %o = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %ins = alloca i32, align 4
  %op = alloca i32, align 4
  %minslot = alloca i32, align 4
  %top = alloca i32, align 4
  %top198 = alloca i32, align 4
  store ptr %J, ptr %J.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %J.addr, metadata !1448, metadata !DIExpression()), !dbg !1471
  store ptr %udf, ptr %udf.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %udf.addr, metadata !1449, metadata !DIExpression()), !dbg !1472
  store ptr %pc, ptr %pc.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %pc.addr, metadata !1450, metadata !DIExpression()), !dbg !1473
  store i32 %maxslot, ptr %maxslot.addr, align 4, !tbaa !1072
  tail call void @llvm.dbg.declare(metadata ptr %maxslot.addr, metadata !1451, metadata !DIExpression()), !dbg !1474
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #9, !dbg !1475
  tail call void @llvm.dbg.declare(metadata ptr %s, metadata !1452, metadata !DIExpression()), !dbg !1476
  call void @llvm.lifetime.start.p0(i64 8, ptr %o) #9, !dbg !1477
  tail call void @llvm.dbg.declare(metadata ptr %o, metadata !1453, metadata !DIExpression()), !dbg !1478
  %0 = load i32, ptr %maxslot.addr, align 4, !dbg !1479, !tbaa !1072
  %cmp = icmp eq i32 %0, 0, !dbg !1481
  br i1 %cmp, label %if.then, label %if.end, !dbg !1482

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1483
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup329, !dbg !1483

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %udf.addr, align 8, !dbg !1484, !tbaa !1067
  %2 = load i32, ptr %maxslot.addr, align 4, !dbg !1485, !tbaa !1072
  %conv = zext i32 %2 to i64, !dbg !1485
  call void @llvm.memset.p0.i64(ptr align 1 %1, i8 1, i64 %conv, i1 false), !dbg !1486
  %3 = load ptr, ptr %J.addr, align 8, !dbg !1487, !tbaa !1067
  %L = getelementptr inbounds %struct.jit_State, ptr %3, i32 0, i32 2, !dbg !1487
  %4 = load ptr, ptr %L, align 8, !dbg !1487, !tbaa !1087
  %openupval = getelementptr inbounds %struct.lua_State, ptr %4, i32 0, i32 11, !dbg !1487
  %gcptr64 = getelementptr inbounds %struct.GCRef, ptr %openupval, i32 0, i32 0, !dbg !1487
  %5 = load i64, ptr %gcptr64, align 8, !dbg !1487, !tbaa !1488
  %6 = inttoptr i64 %5 to ptr, !dbg !1487
  store ptr %6, ptr %o, align 8, !dbg !1490, !tbaa !1067
  br label %while.cond, !dbg !1491

while.cond:                                       ; preds = %if.end5, %if.end
  %7 = load ptr, ptr %o, align 8, !dbg !1492, !tbaa !1067
  %tobool = icmp ne ptr %7, null, !dbg !1491
  br i1 %tobool, label %while.body, label %while.end, !dbg !1491

while.body:                                       ; preds = %while.cond
  %8 = load ptr, ptr %o, align 8, !dbg !1493, !tbaa !1067
  %v = getelementptr inbounds %struct.GCupval, ptr %8, i32 0, i32 6, !dbg !1493
  %ptr64 = getelementptr inbounds %struct.MRef, ptr %v, i32 0, i32 0, !dbg !1493
  %9 = load i64, ptr %ptr64, align 8, !dbg !1493, !tbaa !1280
  %10 = inttoptr i64 %9 to ptr, !dbg !1493
  %11 = load ptr, ptr %J.addr, align 8, !dbg !1496, !tbaa !1067
  %L1 = getelementptr inbounds %struct.jit_State, ptr %11, i32 0, i32 2, !dbg !1497
  %12 = load ptr, ptr %L1, align 8, !dbg !1497, !tbaa !1087
  %base = getelementptr inbounds %struct.lua_State, ptr %12, i32 0, i32 7, !dbg !1498
  %13 = load ptr, ptr %base, align 8, !dbg !1498, !tbaa !1499
  %cmp2 = icmp ult ptr %10, %13, !dbg !1500
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !1501

if.then4:                                         ; preds = %while.body
  br label %while.end, !dbg !1502

if.end5:                                          ; preds = %while.body
  %14 = load ptr, ptr %udf.addr, align 8, !dbg !1503, !tbaa !1067
  %15 = load ptr, ptr %o, align 8, !dbg !1504, !tbaa !1067
  %v6 = getelementptr inbounds %struct.GCupval, ptr %15, i32 0, i32 6, !dbg !1504
  %ptr647 = getelementptr inbounds %struct.MRef, ptr %v6, i32 0, i32 0, !dbg !1504
  %16 = load i64, ptr %ptr647, align 8, !dbg !1504, !tbaa !1280
  %17 = inttoptr i64 %16 to ptr, !dbg !1504
  %18 = load ptr, ptr %J.addr, align 8, !dbg !1505, !tbaa !1067
  %L8 = getelementptr inbounds %struct.jit_State, ptr %18, i32 0, i32 2, !dbg !1506
  %19 = load ptr, ptr %L8, align 8, !dbg !1506, !tbaa !1087
  %base9 = getelementptr inbounds %struct.lua_State, ptr %19, i32 0, i32 7, !dbg !1507
  %20 = load ptr, ptr %base9, align 8, !dbg !1507, !tbaa !1499
  %sub.ptr.lhs.cast = ptrtoint ptr %17 to i64, !dbg !1508
  %sub.ptr.rhs.cast = ptrtoint ptr %20 to i64, !dbg !1508
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1508
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8, !dbg !1508
  %arrayidx = getelementptr inbounds i8, ptr %14, i64 %sub.ptr.div, !dbg !1503
  store i8 0, ptr %arrayidx, align 1, !dbg !1509, !tbaa !1280
  %21 = load ptr, ptr %o, align 8, !dbg !1510, !tbaa !1067
  %nextgc = getelementptr inbounds %struct.GChead, ptr %21, i32 0, i32 0, !dbg !1510
  %gcptr6410 = getelementptr inbounds %struct.GCRef, ptr %nextgc, i32 0, i32 0, !dbg !1510
  %22 = load i64, ptr %gcptr6410, align 8, !dbg !1510, !tbaa !1280
  %23 = inttoptr i64 %22 to ptr, !dbg !1510
  store ptr %23, ptr %o, align 8, !dbg !1511, !tbaa !1067
  br label %while.cond, !dbg !1491, !llvm.loop !1512

while.end:                                        ; preds = %if.then4, %while.cond
  br label %for.cond, !dbg !1514

for.cond:                                         ; preds = %cleanup.cont328, %while.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %ins) #9, !dbg !1515
  tail call void @llvm.dbg.declare(metadata ptr %ins, metadata !1454, metadata !DIExpression()), !dbg !1516
  %24 = load ptr, ptr %pc.addr, align 8, !dbg !1517, !tbaa !1067
  %incdec.ptr = getelementptr inbounds i32, ptr %24, i32 1, !dbg !1517
  store ptr %incdec.ptr, ptr %pc.addr, align 8, !dbg !1517, !tbaa !1067
  %25 = load i32, ptr %24, align 4, !dbg !1518, !tbaa !1072
  store i32 %25, ptr %ins, align 4, !dbg !1516, !tbaa !1072
  call void @llvm.lifetime.start.p0(i64 4, ptr %op) #9, !dbg !1519
  tail call void @llvm.dbg.declare(metadata ptr %op, metadata !1458, metadata !DIExpression()), !dbg !1520
  %26 = load i32, ptr %ins, align 4, !dbg !1521, !tbaa !1072
  %and = and i32 %26, 255, !dbg !1521
  store i32 %and, ptr %op, align 4, !dbg !1520, !tbaa !1280
  %27 = load i32, ptr %op, align 4, !dbg !1522, !tbaa !1280
  %idxprom = zext i32 %27 to i64, !dbg !1522
  %arrayidx11 = getelementptr inbounds [0 x i16], ptr @lj_bc_mode, i64 0, i64 %idxprom, !dbg !1522
  %28 = load i16, ptr %arrayidx11, align 2, !dbg !1522, !tbaa !1270
  %conv12 = zext i16 %28 to i32, !dbg !1522
  %shr = ashr i32 %conv12, 3, !dbg !1522
  %and13 = and i32 %shr, 15, !dbg !1522
  switch i32 %and13, label %sw.default [
    i32 3, label %sw.bb
  ], !dbg !1523

sw.bb:                                            ; preds = %for.cond
  %29 = load ptr, ptr %udf.addr, align 8, !dbg !1524, !tbaa !1067
  %30 = load i32, ptr %ins, align 4, !dbg !1524, !tbaa !1072
  %shr14 = lshr i32 %30, 24, !dbg !1524
  %idxprom15 = zext i32 %shr14 to i64, !dbg !1524
  %arrayidx16 = getelementptr inbounds i8, ptr %29, i64 %idxprom15, !dbg !1524
  %31 = load i8, ptr %arrayidx16, align 1, !dbg !1524, !tbaa !1280
  %conv17 = zext i8 %31 to i32, !dbg !1524
  %and18 = and i32 %conv17, -2, !dbg !1524
  %conv19 = trunc i32 %and18 to i8, !dbg !1524
  store i8 %conv19, ptr %arrayidx16, align 1, !dbg !1524, !tbaa !1280
  br label %sw.epilog, !dbg !1526

sw.default:                                       ; preds = %for.cond
  br label %sw.epilog, !dbg !1527

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %32 = load i32, ptr %op, align 4, !dbg !1528, !tbaa !1280
  %idxprom20 = zext i32 %32 to i64, !dbg !1528
  %arrayidx21 = getelementptr inbounds [0 x i16], ptr @lj_bc_mode, i64 0, i64 %idxprom20, !dbg !1528
  %33 = load i16, ptr %arrayidx21, align 2, !dbg !1528, !tbaa !1270
  %conv22 = zext i16 %33 to i32, !dbg !1528
  %shr23 = ashr i32 %conv22, 7, !dbg !1528
  %and24 = and i32 %shr23, 15, !dbg !1528
  switch i32 %and24, label %sw.default162 [
    i32 3, label %sw.bb25
    i32 4, label %sw.bb33
    i32 13, label %sw.bb56
    i32 6, label %sw.bb97
    i32 12, label %sw.bb161
  ], !dbg !1529

sw.bb25:                                          ; preds = %sw.epilog
  %34 = load ptr, ptr %udf.addr, align 8, !dbg !1530, !tbaa !1067
  %35 = load i32, ptr %ins, align 4, !dbg !1530, !tbaa !1072
  %shr26 = lshr i32 %35, 16, !dbg !1530
  %and27 = and i32 %shr26, 255, !dbg !1530
  %idxprom28 = zext i32 %and27 to i64, !dbg !1530
  %arrayidx29 = getelementptr inbounds i8, ptr %34, i64 %idxprom28, !dbg !1530
  %36 = load i8, ptr %arrayidx29, align 1, !dbg !1530, !tbaa !1280
  %conv30 = zext i8 %36 to i32, !dbg !1530
  %and31 = and i32 %conv30, -2, !dbg !1530
  %conv32 = trunc i32 %and31 to i8, !dbg !1530
  store i8 %conv32, ptr %arrayidx29, align 1, !dbg !1530, !tbaa !1280
  br label %sw.epilog163, !dbg !1531

sw.bb33:                                          ; preds = %sw.epilog
  %37 = load i32, ptr %ins, align 4, !dbg !1532, !tbaa !1072
  %shr34 = lshr i32 %37, 24, !dbg !1532
  store i32 %shr34, ptr %s, align 4, !dbg !1534, !tbaa !1072
  br label %for.cond35, !dbg !1535

for.cond35:                                       ; preds = %for.inc, %sw.bb33
  %38 = load i32, ptr %s, align 4, !dbg !1536, !tbaa !1072
  %39 = load i32, ptr %ins, align 4, !dbg !1538, !tbaa !1072
  %shr36 = lshr i32 %39, 16, !dbg !1538
  %and37 = and i32 %shr36, 255, !dbg !1538
  %cmp38 = icmp ule i32 %38, %and37, !dbg !1539
  br i1 %cmp38, label %for.body, label %for.end, !dbg !1540

for.body:                                         ; preds = %for.cond35
  %40 = load ptr, ptr %udf.addr, align 8, !dbg !1541, !tbaa !1067
  %41 = load i32, ptr %s, align 4, !dbg !1541, !tbaa !1072
  %idxprom40 = zext i32 %41 to i64, !dbg !1541
  %arrayidx41 = getelementptr inbounds i8, ptr %40, i64 %idxprom40, !dbg !1541
  %42 = load i8, ptr %arrayidx41, align 1, !dbg !1541, !tbaa !1280
  %conv42 = zext i8 %42 to i32, !dbg !1541
  %and43 = and i32 %conv42, -2, !dbg !1541
  %conv44 = trunc i32 %and43 to i8, !dbg !1541
  store i8 %conv44, ptr %arrayidx41, align 1, !dbg !1541, !tbaa !1280
  br label %for.inc, !dbg !1541

for.inc:                                          ; preds = %for.body
  %43 = load i32, ptr %s, align 4, !dbg !1542, !tbaa !1072
  %inc = add i32 %43, 1, !dbg !1542
  store i32 %inc, ptr %s, align 4, !dbg !1542, !tbaa !1072
  br label %for.cond35, !dbg !1543, !llvm.loop !1544

for.end:                                          ; preds = %for.cond35
  br label %for.cond45, !dbg !1546

for.cond45:                                       ; preds = %for.inc53, %for.end
  %44 = load i32, ptr %s, align 4, !dbg !1547, !tbaa !1072
  %45 = load i32, ptr %maxslot.addr, align 4, !dbg !1550, !tbaa !1072
  %cmp46 = icmp ult i32 %44, %45, !dbg !1551
  br i1 %cmp46, label %for.body48, label %for.end55, !dbg !1552

for.body48:                                       ; preds = %for.cond45
  %46 = load ptr, ptr %udf.addr, align 8, !dbg !1553, !tbaa !1067
  %47 = load i32, ptr %s, align 4, !dbg !1553, !tbaa !1072
  %idxprom49 = zext i32 %47 to i64, !dbg !1553
  %arrayidx50 = getelementptr inbounds i8, ptr %46, i64 %idxprom49, !dbg !1553
  %48 = load i8, ptr %arrayidx50, align 1, !dbg !1553, !tbaa !1280
  %conv51 = zext i8 %48 to i32, !dbg !1553
  %mul = mul nsw i32 %conv51, 3, !dbg !1553
  %conv52 = trunc i32 %mul to i8, !dbg !1553
  store i8 %conv52, ptr %arrayidx50, align 1, !dbg !1553, !tbaa !1280
  br label %for.inc53, !dbg !1553

for.inc53:                                        ; preds = %for.body48
  %49 = load i32, ptr %s, align 4, !dbg !1554, !tbaa !1072
  %inc54 = add i32 %49, 1, !dbg !1554
  store i32 %inc54, ptr %s, align 4, !dbg !1554, !tbaa !1072
  br label %for.cond45, !dbg !1555, !llvm.loop !1556

for.end55:                                        ; preds = %for.cond45
  br label %sw.epilog163, !dbg !1558

sw.bb56:                                          ; preds = %sw.epilog
  br label %handle_jump, !dbg !1558

handle_jump:                                      ; preds = %if.then105, %sw.bb56
  tail call void @llvm.dbg.label(metadata !1459), !dbg !1559
  call void @llvm.lifetime.start.p0(i64 4, ptr %minslot) #9, !dbg !1560
  tail call void @llvm.dbg.declare(metadata ptr %minslot, metadata !1461, metadata !DIExpression()), !dbg !1561
  %50 = load i32, ptr %ins, align 4, !dbg !1562, !tbaa !1072
  %shr57 = lshr i32 %50, 8, !dbg !1562
  %and58 = and i32 %shr57, 255, !dbg !1562
  store i32 %and58, ptr %minslot, align 4, !dbg !1561, !tbaa !1072
  %51 = load i32, ptr %op, align 4, !dbg !1563, !tbaa !1280
  %cmp59 = icmp uge i32 %51, 77, !dbg !1565
  br i1 %cmp59, label %land.lhs.true, label %if.else, !dbg !1566

land.lhs.true:                                    ; preds = %handle_jump
  %52 = load i32, ptr %op, align 4, !dbg !1567, !tbaa !1280
  %cmp61 = icmp ule i32 %52, 81, !dbg !1568
  br i1 %cmp61, label %if.then63, label %if.else, !dbg !1569

if.then63:                                        ; preds = %land.lhs.true
  %53 = load i32, ptr %minslot, align 4, !dbg !1570, !tbaa !1072
  %add = add i32 %53, 3, !dbg !1570
  store i32 %add, ptr %minslot, align 4, !dbg !1570, !tbaa !1072
  br label %if.end82, !dbg !1571

if.else:                                          ; preds = %land.lhs.true, %handle_jump
  %54 = load i32, ptr %op, align 4, !dbg !1572, !tbaa !1280
  %cmp64 = icmp uge i32 %54, 82, !dbg !1574
  br i1 %cmp64, label %land.lhs.true66, label %if.else73, !dbg !1575

land.lhs.true66:                                  ; preds = %if.else
  %55 = load i32, ptr %op, align 4, !dbg !1576, !tbaa !1280
  %cmp67 = icmp ule i32 %55, 84, !dbg !1577
  br i1 %cmp67, label %if.then69, label %if.else73, !dbg !1578

if.then69:                                        ; preds = %land.lhs.true66
  %56 = load ptr, ptr %pc.addr, align 8, !dbg !1579, !tbaa !1067
  %arrayidx70 = getelementptr inbounds i32, ptr %56, i64 -2, !dbg !1579
  %57 = load i32, ptr %arrayidx70, align 4, !dbg !1579, !tbaa !1072
  %shr71 = lshr i32 %57, 24, !dbg !1579
  %sub = sub i32 %shr71, 1, !dbg !1580
  %58 = load i32, ptr %minslot, align 4, !dbg !1581, !tbaa !1072
  %add72 = add i32 %58, %sub, !dbg !1581
  store i32 %add72, ptr %minslot, align 4, !dbg !1581, !tbaa !1072
  br label %if.end81, !dbg !1582

if.else73:                                        ; preds = %land.lhs.true66, %if.else
  %59 = load i32, ptr %op, align 4, !dbg !1583, !tbaa !1280
  %cmp74 = icmp eq i32 %59, 50, !dbg !1585
  br i1 %cmp74, label %if.then76, label %if.end80, !dbg !1586

if.then76:                                        ; preds = %if.else73
  %60 = load i32, ptr %ins, align 4, !dbg !1587, !tbaa !1072
  %shr77 = lshr i32 %60, 16, !dbg !1587
  %conv78 = zext i32 %shr77 to i64, !dbg !1587
  %sub79 = sub nsw i64 %conv78, 32768, !dbg !1587
  %61 = load ptr, ptr %pc.addr, align 8, !dbg !1589, !tbaa !1067
  %add.ptr = getelementptr inbounds i32, ptr %61, i64 %sub79, !dbg !1589
  store ptr %add.ptr, ptr %pc.addr, align 8, !dbg !1589, !tbaa !1067
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1590

if.end80:                                         ; preds = %if.else73
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.then69
  br label %if.end82

if.end82:                                         ; preds = %if.end81, %if.then63
  %62 = load i32, ptr %minslot, align 4, !dbg !1591, !tbaa !1072
  store i32 %62, ptr %s, align 4, !dbg !1593, !tbaa !1072
  br label %for.cond83, !dbg !1594

for.cond83:                                       ; preds = %for.inc92, %if.end82
  %63 = load i32, ptr %s, align 4, !dbg !1595, !tbaa !1072
  %64 = load i32, ptr %maxslot.addr, align 4, !dbg !1597, !tbaa !1072
  %cmp84 = icmp ult i32 %63, %64, !dbg !1598
  br i1 %cmp84, label %for.body86, label %for.end94, !dbg !1599

for.body86:                                       ; preds = %for.cond83
  %65 = load ptr, ptr %udf.addr, align 8, !dbg !1600, !tbaa !1067
  %66 = load i32, ptr %s, align 4, !dbg !1600, !tbaa !1072
  %idxprom87 = zext i32 %66 to i64, !dbg !1600
  %arrayidx88 = getelementptr inbounds i8, ptr %65, i64 %idxprom87, !dbg !1600
  %67 = load i8, ptr %arrayidx88, align 1, !dbg !1600, !tbaa !1280
  %conv89 = zext i8 %67 to i32, !dbg !1600
  %mul90 = mul nsw i32 %conv89, 3, !dbg !1600
  %conv91 = trunc i32 %mul90 to i8, !dbg !1600
  store i8 %conv91, ptr %arrayidx88, align 1, !dbg !1600, !tbaa !1280
  br label %for.inc92, !dbg !1600

for.inc92:                                        ; preds = %for.body86
  %68 = load i32, ptr %s, align 4, !dbg !1601, !tbaa !1072
  %inc93 = add i32 %68, 1, !dbg !1601
  store i32 %inc93, ptr %s, align 4, !dbg !1601, !tbaa !1072
  br label %for.cond83, !dbg !1602, !llvm.loop !1603

for.end94:                                        ; preds = %for.cond83
  %69 = load i32, ptr %minslot, align 4, !dbg !1605, !tbaa !1072
  %70 = load i32, ptr %maxslot.addr, align 4, !dbg !1606, !tbaa !1072
  %cmp95 = icmp ult i32 %69, %70, !dbg !1607
  br i1 %cmp95, label %cond.true, label %cond.false, !dbg !1605

cond.true:                                        ; preds = %for.end94
  %71 = load i32, ptr %minslot, align 4, !dbg !1608, !tbaa !1072
  br label %cond.end, !dbg !1605

cond.false:                                       ; preds = %for.end94
  %72 = load i32, ptr %maxslot.addr, align 4, !dbg !1609, !tbaa !1072
  br label %cond.end, !dbg !1605

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %71, %cond.true ], [ %72, %cond.false ], !dbg !1605
  store i32 %cond, ptr %retval, align 4, !dbg !1610
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1610

cleanup:                                          ; preds = %cond.end, %if.then76
  call void @llvm.lifetime.end.p0(i64 4, ptr %minslot) #9, !dbg !1611
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup325 [
    i32 7, label %sw.epilog163
  ]

sw.bb97:                                          ; preds = %sw.epilog
  %73 = load i32, ptr %op, align 4, !dbg !1612, !tbaa !1280
  %cmp98 = icmp eq i32 %73, 81, !dbg !1613
  br i1 %cmp98, label %if.then105, label %lor.lhs.false, !dbg !1614

lor.lhs.false:                                    ; preds = %sw.bb97
  %74 = load i32, ptr %op, align 4, !dbg !1615, !tbaa !1280
  %cmp100 = icmp eq i32 %74, 84, !dbg !1616
  br i1 %cmp100, label %if.then105, label %lor.lhs.false102, !dbg !1617

lor.lhs.false102:                                 ; preds = %lor.lhs.false
  %75 = load i32, ptr %op, align 4, !dbg !1618, !tbaa !1280
  %cmp103 = icmp eq i32 %75, 87, !dbg !1619
  br i1 %cmp103, label %if.then105, label %if.else106, !dbg !1620

if.then105:                                       ; preds = %lor.lhs.false102, %lor.lhs.false, %sw.bb97
  br label %handle_jump, !dbg !1621

if.else106:                                       ; preds = %lor.lhs.false102
  %76 = load i32, ptr %op, align 4, !dbg !1623, !tbaa !1280
  %call = call i32 @bc_isret(i32 noundef %76), !dbg !1624
  %tobool107 = icmp ne i32 %call, 0, !dbg !1624
  br i1 %tobool107, label %if.then108, label %if.end159, !dbg !1625

if.then108:                                       ; preds = %if.else106
  call void @llvm.lifetime.start.p0(i64 4, ptr %top) #9, !dbg !1626
  tail call void @llvm.dbg.declare(metadata ptr %top, metadata !1463, metadata !DIExpression()), !dbg !1627
  %77 = load i32, ptr %op, align 4, !dbg !1628, !tbaa !1280
  %cmp109 = icmp eq i32 %77, 73, !dbg !1629
  br i1 %cmp109, label %cond.true111, label %cond.false112, !dbg !1628

cond.true111:                                     ; preds = %if.then108
  %78 = load i32, ptr %maxslot.addr, align 4, !dbg !1630, !tbaa !1072
  br label %cond.end118, !dbg !1628

cond.false112:                                    ; preds = %if.then108
  %79 = load i32, ptr %ins, align 4, !dbg !1631, !tbaa !1072
  %shr113 = lshr i32 %79, 8, !dbg !1631
  %and114 = and i32 %shr113, 255, !dbg !1631
  %80 = load i32, ptr %ins, align 4, !dbg !1632, !tbaa !1072
  %shr115 = lshr i32 %80, 16, !dbg !1632
  %add116 = add i32 %and114, %shr115, !dbg !1633
  %sub117 = sub i32 %add116, 1, !dbg !1634
  br label %cond.end118, !dbg !1628

cond.end118:                                      ; preds = %cond.false112, %cond.true111
  %cond119 = phi i32 [ %78, %cond.true111 ], [ %sub117, %cond.false112 ], !dbg !1628
  store i32 %cond119, ptr %top, align 4, !dbg !1627, !tbaa !1072
  store i32 0, ptr %s, align 4, !dbg !1635, !tbaa !1072
  br label %for.cond120, !dbg !1637

for.cond120:                                      ; preds = %for.inc131, %cond.end118
  %81 = load i32, ptr %s, align 4, !dbg !1638, !tbaa !1072
  %82 = load i32, ptr %ins, align 4, !dbg !1640, !tbaa !1072
  %shr121 = lshr i32 %82, 8, !dbg !1640
  %and122 = and i32 %shr121, 255, !dbg !1640
  %cmp123 = icmp ult i32 %81, %and122, !dbg !1641
  br i1 %cmp123, label %for.body125, label %for.end133, !dbg !1642

for.body125:                                      ; preds = %for.cond120
  %83 = load ptr, ptr %udf.addr, align 8, !dbg !1643, !tbaa !1067
  %84 = load i32, ptr %s, align 4, !dbg !1643, !tbaa !1072
  %idxprom126 = zext i32 %84 to i64, !dbg !1643
  %arrayidx127 = getelementptr inbounds i8, ptr %83, i64 %idxprom126, !dbg !1643
  %85 = load i8, ptr %arrayidx127, align 1, !dbg !1643, !tbaa !1280
  %conv128 = zext i8 %85 to i32, !dbg !1643
  %mul129 = mul nsw i32 %conv128, 3, !dbg !1643
  %conv130 = trunc i32 %mul129 to i8, !dbg !1643
  store i8 %conv130, ptr %arrayidx127, align 1, !dbg !1643, !tbaa !1280
  br label %for.inc131, !dbg !1643

for.inc131:                                       ; preds = %for.body125
  %86 = load i32, ptr %s, align 4, !dbg !1644, !tbaa !1072
  %inc132 = add i32 %86, 1, !dbg !1644
  store i32 %inc132, ptr %s, align 4, !dbg !1644, !tbaa !1072
  br label %for.cond120, !dbg !1645, !llvm.loop !1646

for.end133:                                       ; preds = %for.cond120
  br label %for.cond134, !dbg !1648

for.cond134:                                      ; preds = %for.inc143, %for.end133
  %87 = load i32, ptr %s, align 4, !dbg !1649, !tbaa !1072
  %88 = load i32, ptr %top, align 4, !dbg !1652, !tbaa !1072
  %cmp135 = icmp ult i32 %87, %88, !dbg !1653
  br i1 %cmp135, label %for.body137, label %for.end145, !dbg !1654

for.body137:                                      ; preds = %for.cond134
  %89 = load ptr, ptr %udf.addr, align 8, !dbg !1655, !tbaa !1067
  %90 = load i32, ptr %s, align 4, !dbg !1655, !tbaa !1072
  %idxprom138 = zext i32 %90 to i64, !dbg !1655
  %arrayidx139 = getelementptr inbounds i8, ptr %89, i64 %idxprom138, !dbg !1655
  %91 = load i8, ptr %arrayidx139, align 1, !dbg !1655, !tbaa !1280
  %conv140 = zext i8 %91 to i32, !dbg !1655
  %and141 = and i32 %conv140, -2, !dbg !1655
  %conv142 = trunc i32 %and141 to i8, !dbg !1655
  store i8 %conv142, ptr %arrayidx139, align 1, !dbg !1655, !tbaa !1280
  br label %for.inc143, !dbg !1655

for.inc143:                                       ; preds = %for.body137
  %92 = load i32, ptr %s, align 4, !dbg !1656, !tbaa !1072
  %inc144 = add i32 %92, 1, !dbg !1656
  store i32 %inc144, ptr %s, align 4, !dbg !1656, !tbaa !1072
  br label %for.cond134, !dbg !1657, !llvm.loop !1658

for.end145:                                       ; preds = %for.cond134
  br label %for.cond146, !dbg !1660

for.cond146:                                      ; preds = %for.inc155, %for.end145
  %93 = load i32, ptr %s, align 4, !dbg !1661, !tbaa !1072
  %94 = load i32, ptr %maxslot.addr, align 4, !dbg !1664, !tbaa !1072
  %cmp147 = icmp ult i32 %93, %94, !dbg !1665
  br i1 %cmp147, label %for.body149, label %for.end157, !dbg !1666

for.body149:                                      ; preds = %for.cond146
  %95 = load ptr, ptr %udf.addr, align 8, !dbg !1667, !tbaa !1067
  %96 = load i32, ptr %s, align 4, !dbg !1667, !tbaa !1072
  %idxprom150 = zext i32 %96 to i64, !dbg !1667
  %arrayidx151 = getelementptr inbounds i8, ptr %95, i64 %idxprom150, !dbg !1667
  %97 = load i8, ptr %arrayidx151, align 1, !dbg !1667, !tbaa !1280
  %conv152 = zext i8 %97 to i32, !dbg !1667
  %mul153 = mul nsw i32 %conv152, 3, !dbg !1667
  %conv154 = trunc i32 %mul153 to i8, !dbg !1667
  store i8 %conv154, ptr %arrayidx151, align 1, !dbg !1667, !tbaa !1280
  br label %for.inc155, !dbg !1667

for.inc155:                                       ; preds = %for.body149
  %98 = load i32, ptr %s, align 4, !dbg !1668, !tbaa !1072
  %inc156 = add i32 %98, 1, !dbg !1668
  store i32 %inc156, ptr %s, align 4, !dbg !1668, !tbaa !1072
  br label %for.cond146, !dbg !1669, !llvm.loop !1670

for.end157:                                       ; preds = %for.cond146
  store i32 0, ptr %retval, align 4, !dbg !1672
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %top) #9, !dbg !1673
  br label %cleanup325

if.end159:                                        ; preds = %if.else106
  br label %if.end160

if.end160:                                        ; preds = %if.end159
  br label %sw.epilog163, !dbg !1674

sw.bb161:                                         ; preds = %sw.epilog
  %99 = load i32, ptr %maxslot.addr, align 4, !dbg !1675, !tbaa !1072
  store i32 %99, ptr %retval, align 4, !dbg !1676
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup325, !dbg !1676

sw.default162:                                    ; preds = %sw.epilog
  br label %sw.epilog163, !dbg !1677

sw.epilog163:                                     ; preds = %sw.default162, %if.end160, %cleanup, %for.end55, %sw.bb25
  %100 = load i32, ptr %op, align 4, !dbg !1678, !tbaa !1280
  %idxprom164 = zext i32 %100 to i64, !dbg !1678
  %arrayidx165 = getelementptr inbounds [0 x i16], ptr @lj_bc_mode, i64 0, i64 %idxprom164, !dbg !1678
  %101 = load i16, ptr %arrayidx165, align 2, !dbg !1678, !tbaa !1270
  %conv166 = zext i16 %101 to i32, !dbg !1678
  %and167 = and i32 %conv166, 7, !dbg !1678
  switch i32 %and167, label %sw.default323 [
    i32 3, label %sw.bb168
    i32 1, label %sw.bb176
    i32 2, label %sw.bb191
  ], !dbg !1679

sw.bb168:                                         ; preds = %sw.epilog163
  %102 = load ptr, ptr %udf.addr, align 8, !dbg !1680, !tbaa !1067
  %103 = load i32, ptr %ins, align 4, !dbg !1680, !tbaa !1072
  %shr169 = lshr i32 %103, 8, !dbg !1680
  %and170 = and i32 %shr169, 255, !dbg !1680
  %idxprom171 = zext i32 %and170 to i64, !dbg !1680
  %arrayidx172 = getelementptr inbounds i8, ptr %102, i64 %idxprom171, !dbg !1680
  %104 = load i8, ptr %arrayidx172, align 1, !dbg !1680, !tbaa !1280
  %conv173 = zext i8 %104 to i32, !dbg !1680
  %and174 = and i32 %conv173, -2, !dbg !1680
  %conv175 = trunc i32 %and174 to i8, !dbg !1680
  store i8 %conv175, ptr %arrayidx172, align 1, !dbg !1680, !tbaa !1280
  br label %sw.epilog324, !dbg !1681

sw.bb176:                                         ; preds = %sw.epilog163
  %105 = load i32, ptr %op, align 4, !dbg !1682, !tbaa !1280
  %cmp177 = icmp eq i32 %105, 12, !dbg !1684
  br i1 %cmp177, label %if.end190, label %lor.lhs.false179, !dbg !1685

lor.lhs.false179:                                 ; preds = %sw.bb176
  %106 = load i32, ptr %op, align 4, !dbg !1686, !tbaa !1280
  %cmp180 = icmp eq i32 %106, 13, !dbg !1687
  br i1 %cmp180, label %if.end190, label %if.then182, !dbg !1688

if.then182:                                       ; preds = %lor.lhs.false179
  %107 = load ptr, ptr %udf.addr, align 8, !dbg !1689, !tbaa !1067
  %108 = load i32, ptr %ins, align 4, !dbg !1689, !tbaa !1072
  %shr183 = lshr i32 %108, 8, !dbg !1689
  %and184 = and i32 %shr183, 255, !dbg !1689
  %idxprom185 = zext i32 %and184 to i64, !dbg !1689
  %arrayidx186 = getelementptr inbounds i8, ptr %107, i64 %idxprom185, !dbg !1689
  %109 = load i8, ptr %arrayidx186, align 1, !dbg !1689, !tbaa !1280
  %conv187 = zext i8 %109 to i32, !dbg !1689
  %mul188 = mul nsw i32 %conv187, 3, !dbg !1689
  %conv189 = trunc i32 %mul188 to i8, !dbg !1689
  store i8 %conv189, ptr %arrayidx186, align 1, !dbg !1689, !tbaa !1280
  br label %if.end190, !dbg !1689

if.end190:                                        ; preds = %if.then182, %lor.lhs.false179, %sw.bb176
  br label %sw.epilog324, !dbg !1690

sw.bb191:                                         ; preds = %sw.epilog163
  %110 = load i32, ptr %op, align 4, !dbg !1691, !tbaa !1280
  %cmp192 = icmp uge i32 %110, 65, !dbg !1692
  br i1 %cmp192, label %land.lhs.true194, label %if.else282, !dbg !1693

land.lhs.true194:                                 ; preds = %sw.bb191
  %111 = load i32, ptr %op, align 4, !dbg !1694, !tbaa !1280
  %cmp195 = icmp ule i32 %111, 71, !dbg !1695
  br i1 %cmp195, label %if.then197, label %if.else282, !dbg !1696

if.then197:                                       ; preds = %land.lhs.true194
  call void @llvm.lifetime.start.p0(i64 4, ptr %top198) #9, !dbg !1697
  tail call void @llvm.dbg.declare(metadata ptr %top198, metadata !1467, metadata !DIExpression()), !dbg !1698
  %112 = load i32, ptr %op, align 4, !dbg !1699, !tbaa !1280
  %cmp199 = icmp eq i32 %112, 65, !dbg !1700
  br i1 %cmp199, label %cond.true209, label %lor.lhs.false201, !dbg !1701

lor.lhs.false201:                                 ; preds = %if.then197
  %113 = load i32, ptr %op, align 4, !dbg !1702, !tbaa !1280
  %cmp202 = icmp eq i32 %113, 67, !dbg !1703
  br i1 %cmp202, label %cond.true209, label %lor.lhs.false204, !dbg !1704

lor.lhs.false204:                                 ; preds = %lor.lhs.false201
  %114 = load i32, ptr %ins, align 4, !dbg !1705, !tbaa !1072
  %shr205 = lshr i32 %114, 16, !dbg !1705
  %and206 = and i32 %shr205, 255, !dbg !1705
  %cmp207 = icmp eq i32 %and206, 0, !dbg !1706
  br i1 %cmp207, label %cond.true209, label %cond.false210, !dbg !1707

cond.true209:                                     ; preds = %lor.lhs.false204, %lor.lhs.false201, %if.then197
  %115 = load i32, ptr %maxslot.addr, align 4, !dbg !1708, !tbaa !1072
  br label %cond.end217, !dbg !1707

cond.false210:                                    ; preds = %lor.lhs.false204
  %116 = load i32, ptr %ins, align 4, !dbg !1709, !tbaa !1072
  %shr211 = lshr i32 %116, 8, !dbg !1709
  %and212 = and i32 %shr211, 255, !dbg !1709
  %117 = load i32, ptr %ins, align 4, !dbg !1710, !tbaa !1072
  %shr213 = lshr i32 %117, 16, !dbg !1710
  %and214 = and i32 %shr213, 255, !dbg !1710
  %add215 = add i32 %and212, %and214, !dbg !1711
  %add216 = add i32 %add215, 1, !dbg !1712
  br label %cond.end217, !dbg !1707

cond.end217:                                      ; preds = %cond.false210, %cond.true209
  %cond218 = phi i32 [ %115, %cond.true209 ], [ %add216, %cond.false210 ], !dbg !1707
  store i32 %cond218, ptr %top198, align 4, !dbg !1698, !tbaa !1072
  %118 = load ptr, ptr %udf.addr, align 8, !dbg !1713, !tbaa !1067
  %119 = load i32, ptr %ins, align 4, !dbg !1713, !tbaa !1072
  %shr219 = lshr i32 %119, 8, !dbg !1713
  %and220 = and i32 %shr219, 255, !dbg !1713
  %add221 = add i32 %and220, 1, !dbg !1713
  %idxprom222 = zext i32 %add221 to i64, !dbg !1713
  %arrayidx223 = getelementptr inbounds i8, ptr %118, i64 %idxprom222, !dbg !1713
  %120 = load i8, ptr %arrayidx223, align 1, !dbg !1713, !tbaa !1280
  %conv224 = zext i8 %120 to i32, !dbg !1713
  %mul225 = mul nsw i32 %conv224, 3, !dbg !1713
  %conv226 = trunc i32 %mul225 to i8, !dbg !1713
  store i8 %conv226, ptr %arrayidx223, align 1, !dbg !1713, !tbaa !1280
  %121 = load i32, ptr %ins, align 4, !dbg !1715, !tbaa !1072
  %shr227 = lshr i32 %121, 8, !dbg !1715
  %and228 = and i32 %shr227, 255, !dbg !1715
  %122 = load i32, ptr %op, align 4, !dbg !1716, !tbaa !1280
  %cmp229 = icmp eq i32 %122, 69, !dbg !1717
  br i1 %cmp229, label %lor.end, label %lor.rhs, !dbg !1718

lor.rhs:                                          ; preds = %cond.end217
  %123 = load i32, ptr %op, align 4, !dbg !1719, !tbaa !1280
  %cmp231 = icmp eq i32 %123, 70, !dbg !1720
  br label %lor.end, !dbg !1718

lor.end:                                          ; preds = %lor.rhs, %cond.end217
  %124 = phi i1 [ true, %cond.end217 ], [ %cmp231, %lor.rhs ]
  %125 = zext i1 %124 to i64, !dbg !1721
  %cond233 = select i1 %124, i32 3, i32 0, !dbg !1721
  %sub234 = sub i32 %and228, %cond233, !dbg !1722
  store i32 %sub234, ptr %s, align 4, !dbg !1723, !tbaa !1072
  br label %for.cond235, !dbg !1724

for.cond235:                                      ; preds = %for.inc244, %lor.end
  %126 = load i32, ptr %s, align 4, !dbg !1725, !tbaa !1072
  %127 = load i32, ptr %top198, align 4, !dbg !1728, !tbaa !1072
  %cmp236 = icmp ult i32 %126, %127, !dbg !1729
  br i1 %cmp236, label %for.body238, label %for.end246, !dbg !1730

for.body238:                                      ; preds = %for.cond235
  %128 = load ptr, ptr %udf.addr, align 8, !dbg !1731, !tbaa !1067
  %129 = load i32, ptr %s, align 4, !dbg !1731, !tbaa !1072
  %idxprom239 = zext i32 %129 to i64, !dbg !1731
  %arrayidx240 = getelementptr inbounds i8, ptr %128, i64 %idxprom239, !dbg !1731
  %130 = load i8, ptr %arrayidx240, align 1, !dbg !1731, !tbaa !1280
  %conv241 = zext i8 %130 to i32, !dbg !1731
  %and242 = and i32 %conv241, -2, !dbg !1731
  %conv243 = trunc i32 %and242 to i8, !dbg !1731
  store i8 %conv243, ptr %arrayidx240, align 1, !dbg !1731, !tbaa !1280
  br label %for.inc244, !dbg !1731

for.inc244:                                       ; preds = %for.body238
  %131 = load i32, ptr %s, align 4, !dbg !1732, !tbaa !1072
  %inc245 = add i32 %131, 1, !dbg !1732
  store i32 %inc245, ptr %s, align 4, !dbg !1732, !tbaa !1072
  br label %for.cond235, !dbg !1733, !llvm.loop !1734

for.end246:                                       ; preds = %for.cond235
  br label %for.cond247, !dbg !1736

for.cond247:                                      ; preds = %for.inc256, %for.end246
  %132 = load i32, ptr %s, align 4, !dbg !1737, !tbaa !1072
  %133 = load i32, ptr %maxslot.addr, align 4, !dbg !1740, !tbaa !1072
  %cmp248 = icmp ult i32 %132, %133, !dbg !1741
  br i1 %cmp248, label %for.body250, label %for.end258, !dbg !1742

for.body250:                                      ; preds = %for.cond247
  %134 = load ptr, ptr %udf.addr, align 8, !dbg !1743, !tbaa !1067
  %135 = load i32, ptr %s, align 4, !dbg !1743, !tbaa !1072
  %idxprom251 = zext i32 %135 to i64, !dbg !1743
  %arrayidx252 = getelementptr inbounds i8, ptr %134, i64 %idxprom251, !dbg !1743
  %136 = load i8, ptr %arrayidx252, align 1, !dbg !1743, !tbaa !1280
  %conv253 = zext i8 %136 to i32, !dbg !1743
  %mul254 = mul nsw i32 %conv253, 3, !dbg !1743
  %conv255 = trunc i32 %mul254 to i8, !dbg !1743
  store i8 %conv255, ptr %arrayidx252, align 1, !dbg !1743, !tbaa !1280
  br label %for.inc256, !dbg !1743

for.inc256:                                       ; preds = %for.body250
  %137 = load i32, ptr %s, align 4, !dbg !1744, !tbaa !1072
  %inc257 = add i32 %137, 1, !dbg !1744
  store i32 %inc257, ptr %s, align 4, !dbg !1744, !tbaa !1072
  br label %for.cond247, !dbg !1745, !llvm.loop !1746

for.end258:                                       ; preds = %for.cond247
  %138 = load i32, ptr %op, align 4, !dbg !1748, !tbaa !1280
  %cmp259 = icmp eq i32 %138, 68, !dbg !1750
  br i1 %cmp259, label %if.then264, label %lor.lhs.false261, !dbg !1751

lor.lhs.false261:                                 ; preds = %for.end258
  %139 = load i32, ptr %op, align 4, !dbg !1752, !tbaa !1280
  %cmp262 = icmp eq i32 %139, 67, !dbg !1753
  br i1 %cmp262, label %if.then264, label %if.end279, !dbg !1754

if.then264:                                       ; preds = %lor.lhs.false261, %for.end258
  store i32 0, ptr %s, align 4, !dbg !1755, !tbaa !1072
  br label %for.cond265, !dbg !1758

for.cond265:                                      ; preds = %for.inc276, %if.then264
  %140 = load i32, ptr %s, align 4, !dbg !1759, !tbaa !1072
  %141 = load i32, ptr %ins, align 4, !dbg !1761, !tbaa !1072
  %shr266 = lshr i32 %141, 8, !dbg !1761
  %and267 = and i32 %shr266, 255, !dbg !1761
  %cmp268 = icmp ult i32 %140, %and267, !dbg !1762
  br i1 %cmp268, label %for.body270, label %for.end278, !dbg !1763

for.body270:                                      ; preds = %for.cond265
  %142 = load ptr, ptr %udf.addr, align 8, !dbg !1764, !tbaa !1067
  %143 = load i32, ptr %s, align 4, !dbg !1764, !tbaa !1072
  %idxprom271 = zext i32 %143 to i64, !dbg !1764
  %arrayidx272 = getelementptr inbounds i8, ptr %142, i64 %idxprom271, !dbg !1764
  %144 = load i8, ptr %arrayidx272, align 1, !dbg !1764, !tbaa !1280
  %conv273 = zext i8 %144 to i32, !dbg !1764
  %mul274 = mul nsw i32 %conv273, 3, !dbg !1764
  %conv275 = trunc i32 %mul274 to i8, !dbg !1764
  store i8 %conv275, ptr %arrayidx272, align 1, !dbg !1764, !tbaa !1280
  br label %for.inc276, !dbg !1764

for.inc276:                                       ; preds = %for.body270
  %145 = load i32, ptr %s, align 4, !dbg !1765, !tbaa !1072
  %inc277 = add i32 %145, 1, !dbg !1765
  store i32 %inc277, ptr %s, align 4, !dbg !1765, !tbaa !1072
  br label %for.cond265, !dbg !1766, !llvm.loop !1767

for.end278:                                       ; preds = %for.cond265
  store i32 0, ptr %retval, align 4, !dbg !1769
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup280, !dbg !1769

if.end279:                                        ; preds = %lor.lhs.false261
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1770
  br label %cleanup280, !dbg !1770

cleanup280:                                       ; preds = %if.end279, %for.end278
  call void @llvm.lifetime.end.p0(i64 4, ptr %top198) #9, !dbg !1770
  %cleanup.dest281 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest281, label %cleanup325 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup280
  br label %if.end322, !dbg !1771

if.else282:                                       ; preds = %land.lhs.true194, %sw.bb191
  %146 = load i32, ptr %op, align 4, !dbg !1772, !tbaa !1280
  %cmp283 = icmp eq i32 %146, 44, !dbg !1774
  br i1 %cmp283, label %if.then285, label %if.else301, !dbg !1775

if.then285:                                       ; preds = %if.else282
  %147 = load i32, ptr %ins, align 4, !dbg !1776, !tbaa !1072
  %shr286 = lshr i32 %147, 8, !dbg !1776
  %and287 = and i32 %shr286, 255, !dbg !1776
  store i32 %and287, ptr %s, align 4, !dbg !1779, !tbaa !1072
  br label %for.cond288, !dbg !1780

for.cond288:                                      ; preds = %for.inc298, %if.then285
  %148 = load i32, ptr %s, align 4, !dbg !1781, !tbaa !1072
  %149 = load i32, ptr %ins, align 4, !dbg !1783, !tbaa !1072
  %shr289 = lshr i32 %149, 16, !dbg !1783
  %cmp290 = icmp ule i32 %148, %shr289, !dbg !1784
  br i1 %cmp290, label %for.body292, label %for.end300, !dbg !1785

for.body292:                                      ; preds = %for.cond288
  %150 = load ptr, ptr %udf.addr, align 8, !dbg !1786, !tbaa !1067
  %151 = load i32, ptr %s, align 4, !dbg !1786, !tbaa !1072
  %idxprom293 = zext i32 %151 to i64, !dbg !1786
  %arrayidx294 = getelementptr inbounds i8, ptr %150, i64 %idxprom293, !dbg !1786
  %152 = load i8, ptr %arrayidx294, align 1, !dbg !1786, !tbaa !1280
  %conv295 = zext i8 %152 to i32, !dbg !1786
  %mul296 = mul nsw i32 %conv295, 3, !dbg !1786
  %conv297 = trunc i32 %mul296 to i8, !dbg !1786
  store i8 %conv297, ptr %arrayidx294, align 1, !dbg !1786, !tbaa !1280
  br label %for.inc298, !dbg !1786

for.inc298:                                       ; preds = %for.body292
  %153 = load i32, ptr %s, align 4, !dbg !1787, !tbaa !1072
  %inc299 = add i32 %153, 1, !dbg !1787
  store i32 %inc299, ptr %s, align 4, !dbg !1787, !tbaa !1072
  br label %for.cond288, !dbg !1788, !llvm.loop !1789

for.end300:                                       ; preds = %for.cond288
  br label %if.end321, !dbg !1791

if.else301:                                       ; preds = %if.else282
  %154 = load i32, ptr %op, align 4, !dbg !1792, !tbaa !1280
  %cmp302 = icmp eq i32 %154, 63, !dbg !1794
  br i1 %cmp302, label %if.then304, label %if.end320, !dbg !1795

if.then304:                                       ; preds = %if.else301
  %155 = load i32, ptr %ins, align 4, !dbg !1796, !tbaa !1072
  %shr305 = lshr i32 %155, 8, !dbg !1796
  %and306 = and i32 %shr305, 255, !dbg !1796
  %sub307 = sub i32 %and306, 1, !dbg !1799
  store i32 %sub307, ptr %s, align 4, !dbg !1800, !tbaa !1072
  br label %for.cond308, !dbg !1801

for.cond308:                                      ; preds = %for.inc317, %if.then304
  %156 = load i32, ptr %s, align 4, !dbg !1802, !tbaa !1072
  %157 = load i32, ptr %maxslot.addr, align 4, !dbg !1804, !tbaa !1072
  %cmp309 = icmp ult i32 %156, %157, !dbg !1805
  br i1 %cmp309, label %for.body311, label %for.end319, !dbg !1806

for.body311:                                      ; preds = %for.cond308
  %158 = load ptr, ptr %udf.addr, align 8, !dbg !1807, !tbaa !1067
  %159 = load i32, ptr %s, align 4, !dbg !1807, !tbaa !1072
  %idxprom312 = zext i32 %159 to i64, !dbg !1807
  %arrayidx313 = getelementptr inbounds i8, ptr %158, i64 %idxprom312, !dbg !1807
  %160 = load i8, ptr %arrayidx313, align 1, !dbg !1807, !tbaa !1280
  %conv314 = zext i8 %160 to i32, !dbg !1807
  %and315 = and i32 %conv314, -2, !dbg !1807
  %conv316 = trunc i32 %and315 to i8, !dbg !1807
  store i8 %conv316, ptr %arrayidx313, align 1, !dbg !1807, !tbaa !1280
  br label %for.inc317, !dbg !1807

for.inc317:                                       ; preds = %for.body311
  %161 = load i32, ptr %s, align 4, !dbg !1808, !tbaa !1072
  %inc318 = add i32 %161, 1, !dbg !1808
  store i32 %inc318, ptr %s, align 4, !dbg !1808, !tbaa !1072
  br label %for.cond308, !dbg !1809, !llvm.loop !1810

for.end319:                                       ; preds = %for.cond308
  br label %if.end320, !dbg !1812

if.end320:                                        ; preds = %for.end319, %if.else301
  br label %if.end321

if.end321:                                        ; preds = %if.end320, %for.end300
  br label %if.end322

if.end322:                                        ; preds = %if.end321, %cleanup.cont
  br label %sw.epilog324, !dbg !1813

sw.default323:                                    ; preds = %sw.epilog163
  br label %sw.epilog324, !dbg !1814

sw.epilog324:                                     ; preds = %sw.default323, %if.end322, %if.end190, %sw.bb168
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1815
  br label %cleanup325, !dbg !1815

cleanup325:                                       ; preds = %sw.epilog324, %cleanup280, %sw.bb161, %for.end157, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %op) #9, !dbg !1815
  call void @llvm.lifetime.end.p0(i64 4, ptr %ins) #9, !dbg !1815
  %cleanup.dest327 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest327, label %cleanup329 [
    i32 0, label %cleanup.cont328
  ]

cleanup.cont328:                                  ; preds = %cleanup325
  br label %for.cond, !dbg !1816, !llvm.loop !1817

cleanup329:                                       ; preds = %cleanup325, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %o) #9, !dbg !1820
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #9, !dbg !1820
  %162 = load i32, ptr %retval, align 4, !dbg !1820
  ret i32 %162, !dbg !1820
}

; Function Attrs: nounwind uwtable
define hidden void @lj_snap_shrink(ptr noundef %J) #0 !dbg !1821 {
entry:
  %J.addr = alloca ptr, align 8
  %snap = alloca ptr, align 8
  %map = alloca ptr, align 8
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %nlim = alloca i32, align 4
  %nent = alloca i32, align 4
  %udf = alloca [257 x i8], align 16
  %maxslot = alloca i32, align 4
  %baseslot = alloca i32, align 4
  %minslot = alloca i32, align 4
  %s = alloca i32, align 4
  store ptr %J, ptr %J.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %J.addr, metadata !1823, metadata !DIExpression()), !dbg !1838
  call void @llvm.lifetime.start.p0(i64 8, ptr %snap) #9, !dbg !1839
  tail call void @llvm.dbg.declare(metadata ptr %snap, metadata !1824, metadata !DIExpression()), !dbg !1840
  %0 = load ptr, ptr %J.addr, align 8, !dbg !1841, !tbaa !1067
  %cur = getelementptr inbounds %struct.jit_State, ptr %0, i32 0, i32 0, !dbg !1842
  %snap1 = getelementptr inbounds %struct.GCtrace, ptr %cur, i32 0, i32 10, !dbg !1843
  %1 = load ptr, ptr %snap1, align 8, !dbg !1843, !tbaa !1104
  %2 = load ptr, ptr %J.addr, align 8, !dbg !1844, !tbaa !1067
  %cur2 = getelementptr inbounds %struct.jit_State, ptr %2, i32 0, i32 0, !dbg !1845
  %nsnap = getelementptr inbounds %struct.GCtrace, ptr %cur2, i32 0, i32 3, !dbg !1846
  %3 = load i16, ptr %nsnap, align 2, !dbg !1846, !tbaa !1185
  %conv = zext i16 %3 to i32, !dbg !1844
  %sub = sub nsw i32 %conv, 1, !dbg !1847
  %idxprom = sext i32 %sub to i64, !dbg !1841
  %arrayidx = getelementptr inbounds %struct.SnapShot, ptr %1, i64 %idxprom, !dbg !1841
  store ptr %arrayidx, ptr %snap, align 8, !dbg !1840, !tbaa !1067
  call void @llvm.lifetime.start.p0(i64 8, ptr %map) #9, !dbg !1848
  tail call void @llvm.dbg.declare(metadata ptr %map, metadata !1825, metadata !DIExpression()), !dbg !1849
  %4 = load ptr, ptr %J.addr, align 8, !dbg !1850, !tbaa !1067
  %cur3 = getelementptr inbounds %struct.jit_State, ptr %4, i32 0, i32 0, !dbg !1851
  %snapmap = getelementptr inbounds %struct.GCtrace, ptr %cur3, i32 0, i32 11, !dbg !1852
  %5 = load ptr, ptr %snapmap, align 8, !dbg !1852, !tbaa !1160
  %6 = load ptr, ptr %snap, align 8, !dbg !1853, !tbaa !1067
  %mapofs = getelementptr inbounds %struct.SnapShot, ptr %6, i32 0, i32 0, !dbg !1854
  %7 = load i32, ptr %mapofs, align 4, !dbg !1854, !tbaa !1229
  %idxprom4 = zext i32 %7 to i64, !dbg !1850
  %arrayidx5 = getelementptr inbounds i32, ptr %5, i64 %idxprom4, !dbg !1850
  store ptr %arrayidx5, ptr %map, align 8, !dbg !1849, !tbaa !1067
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #9, !dbg !1855
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !1826, metadata !DIExpression()), !dbg !1856
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #9, !dbg !1855
  tail call void @llvm.dbg.declare(metadata ptr %m, metadata !1827, metadata !DIExpression()), !dbg !1857
  call void @llvm.lifetime.start.p0(i64 4, ptr %nlim) #9, !dbg !1855
  tail call void @llvm.dbg.declare(metadata ptr %nlim, metadata !1828, metadata !DIExpression()), !dbg !1858
  call void @llvm.lifetime.start.p0(i64 4, ptr %nent) #9, !dbg !1855
  tail call void @llvm.dbg.declare(metadata ptr %nent, metadata !1829, metadata !DIExpression()), !dbg !1859
  %8 = load ptr, ptr %snap, align 8, !dbg !1860, !tbaa !1067
  %nent6 = getelementptr inbounds %struct.SnapShot, ptr %8, i32 0, i32 4, !dbg !1861
  %9 = load i8, ptr %nent6, align 4, !dbg !1861, !tbaa !1359
  %conv7 = zext i8 %9 to i32, !dbg !1860
  store i32 %conv7, ptr %nent, align 4, !dbg !1859, !tbaa !1072
  call void @llvm.lifetime.start.p0(i64 257, ptr %udf) #9, !dbg !1862
  tail call void @llvm.dbg.declare(metadata ptr %udf, metadata !1830, metadata !DIExpression()), !dbg !1863
  call void @llvm.lifetime.start.p0(i64 4, ptr %maxslot) #9, !dbg !1864
  tail call void @llvm.dbg.declare(metadata ptr %maxslot, metadata !1831, metadata !DIExpression()), !dbg !1865
  %10 = load ptr, ptr %J.addr, align 8, !dbg !1866, !tbaa !1067
  %maxslot8 = getelementptr inbounds %struct.jit_State, ptr %10, i32 0, i32 8, !dbg !1867
  %11 = load i32, ptr %maxslot8, align 4, !dbg !1867, !tbaa !1332
  store i32 %11, ptr %maxslot, align 4, !dbg !1865, !tbaa !1072
  call void @llvm.lifetime.start.p0(i64 4, ptr %baseslot) #9, !dbg !1868
  tail call void @llvm.dbg.declare(metadata ptr %baseslot, metadata !1832, metadata !DIExpression()), !dbg !1869
  %12 = load ptr, ptr %J.addr, align 8, !dbg !1870, !tbaa !1067
  %baseslot9 = getelementptr inbounds %struct.jit_State, ptr %12, i32 0, i32 9, !dbg !1871
  %13 = load i32, ptr %baseslot9, align 8, !dbg !1871, !tbaa !1329
  store i32 %13, ptr %baseslot, align 4, !dbg !1869, !tbaa !1072
  call void @llvm.lifetime.start.p0(i64 4, ptr %minslot) #9, !dbg !1872
  tail call void @llvm.dbg.declare(metadata ptr %minslot, metadata !1833, metadata !DIExpression()), !dbg !1873
  %14 = load ptr, ptr %J.addr, align 8, !dbg !1874, !tbaa !1067
  %arraydecay = getelementptr inbounds [257 x i8], ptr %udf, i64 0, i64 0, !dbg !1875
  %15 = load ptr, ptr %map, align 8, !dbg !1876, !tbaa !1067
  %16 = load i32, ptr %nent, align 4, !dbg !1877, !tbaa !1072
  %idxprom10 = zext i32 %16 to i64, !dbg !1876
  %arrayidx11 = getelementptr inbounds i32, ptr %15, i64 %idxprom10, !dbg !1876
  %call = call ptr @snap_pc(ptr noundef %arrayidx11), !dbg !1878
  %17 = load i32, ptr %maxslot, align 4, !dbg !1879, !tbaa !1072
  %call12 = call i32 @snap_usedef(ptr noundef %14, ptr noundef %arraydecay, ptr noundef %call, i32 noundef %17), !dbg !1880
  store i32 %call12, ptr %minslot, align 4, !dbg !1873, !tbaa !1072
  %18 = load i32, ptr %baseslot, align 4, !dbg !1881, !tbaa !1072
  %19 = load i32, ptr %maxslot, align 4, !dbg !1882, !tbaa !1072
  %add = add i32 %19, %18, !dbg !1882
  store i32 %add, ptr %maxslot, align 4, !dbg !1882, !tbaa !1072
  %20 = load i32, ptr %baseslot, align 4, !dbg !1883, !tbaa !1072
  %21 = load i32, ptr %minslot, align 4, !dbg !1884, !tbaa !1072
  %add13 = add i32 %21, %20, !dbg !1884
  store i32 %add13, ptr %minslot, align 4, !dbg !1884, !tbaa !1072
  %22 = load i32, ptr %maxslot, align 4, !dbg !1885, !tbaa !1072
  %conv14 = trunc i32 %22 to i8, !dbg !1886
  %23 = load ptr, ptr %snap, align 8, !dbg !1887, !tbaa !1067
  %nslots = getelementptr inbounds %struct.SnapShot, ptr %23, i32 0, i32 2, !dbg !1888
  store i8 %conv14, ptr %nslots, align 2, !dbg !1889, !tbaa !1384
  store i32 0, ptr %m, align 4, !dbg !1890, !tbaa !1072
  store i32 0, ptr %n, align 4, !dbg !1891, !tbaa !1072
  br label %for.cond, !dbg !1892

for.cond:                                         ; preds = %for.inc, %entry
  %24 = load i32, ptr %n, align 4, !dbg !1893, !tbaa !1072
  %25 = load i32, ptr %nent, align 4, !dbg !1894, !tbaa !1072
  %cmp = icmp ult i32 %24, %25, !dbg !1895
  br i1 %cmp, label %for.body, label %for.end, !dbg !1896

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #9, !dbg !1897
  tail call void @llvm.dbg.declare(metadata ptr %s, metadata !1834, metadata !DIExpression()), !dbg !1898
  %26 = load ptr, ptr %map, align 8, !dbg !1899, !tbaa !1067
  %27 = load i32, ptr %n, align 4, !dbg !1899, !tbaa !1072
  %idxprom16 = zext i32 %27 to i64, !dbg !1899
  %arrayidx17 = getelementptr inbounds i32, ptr %26, i64 %idxprom16, !dbg !1899
  %28 = load i32, ptr %arrayidx17, align 4, !dbg !1899, !tbaa !1072
  %shr = lshr i32 %28, 24, !dbg !1899
  store i32 %shr, ptr %s, align 4, !dbg !1898, !tbaa !1072
  %29 = load i32, ptr %s, align 4, !dbg !1900, !tbaa !1072
  %30 = load i32, ptr %minslot, align 4, !dbg !1902, !tbaa !1072
  %cmp18 = icmp ult i32 %29, %30, !dbg !1903
  br i1 %cmp18, label %if.then, label %lor.lhs.false, !dbg !1904

lor.lhs.false:                                    ; preds = %for.body
  %31 = load i32, ptr %s, align 4, !dbg !1905, !tbaa !1072
  %32 = load i32, ptr %maxslot, align 4, !dbg !1906, !tbaa !1072
  %cmp20 = icmp ult i32 %31, %32, !dbg !1907
  br i1 %cmp20, label %land.lhs.true, label %if.end, !dbg !1908

land.lhs.true:                                    ; preds = %lor.lhs.false
  %33 = load i32, ptr %s, align 4, !dbg !1909, !tbaa !1072
  %34 = load i32, ptr %baseslot, align 4, !dbg !1910, !tbaa !1072
  %sub22 = sub i32 %33, %34, !dbg !1911
  %idxprom23 = zext i32 %sub22 to i64, !dbg !1912
  %arrayidx24 = getelementptr inbounds [257 x i8], ptr %udf, i64 0, i64 %idxprom23, !dbg !1912
  %35 = load i8, ptr %arrayidx24, align 1, !dbg !1912, !tbaa !1280
  %conv25 = zext i8 %35 to i32, !dbg !1912
  %cmp26 = icmp eq i32 %conv25, 0, !dbg !1913
  br i1 %cmp26, label %if.then, label %if.end, !dbg !1914

if.then:                                          ; preds = %land.lhs.true, %for.body
  %36 = load ptr, ptr %map, align 8, !dbg !1915, !tbaa !1067
  %37 = load i32, ptr %n, align 4, !dbg !1916, !tbaa !1072
  %idxprom28 = zext i32 %37 to i64, !dbg !1915
  %arrayidx29 = getelementptr inbounds i32, ptr %36, i64 %idxprom28, !dbg !1915
  %38 = load i32, ptr %arrayidx29, align 4, !dbg !1915, !tbaa !1072
  %39 = load ptr, ptr %map, align 8, !dbg !1917, !tbaa !1067
  %40 = load i32, ptr %m, align 4, !dbg !1918, !tbaa !1072
  %inc = add i32 %40, 1, !dbg !1918
  store i32 %inc, ptr %m, align 4, !dbg !1918, !tbaa !1072
  %idxprom30 = zext i32 %40 to i64, !dbg !1917
  %arrayidx31 = getelementptr inbounds i32, ptr %39, i64 %idxprom30, !dbg !1917
  store i32 %38, ptr %arrayidx31, align 4, !dbg !1919, !tbaa !1072
  br label %if.end, !dbg !1917

if.end:                                           ; preds = %if.then, %land.lhs.true, %lor.lhs.false
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #9, !dbg !1920
  br label %for.inc, !dbg !1921

for.inc:                                          ; preds = %if.end
  %41 = load i32, ptr %n, align 4, !dbg !1922, !tbaa !1072
  %inc32 = add i32 %41, 1, !dbg !1922
  store i32 %inc32, ptr %n, align 4, !dbg !1922, !tbaa !1072
  br label %for.cond, !dbg !1923, !llvm.loop !1924

for.end:                                          ; preds = %for.cond
  %42 = load i32, ptr %m, align 4, !dbg !1926, !tbaa !1072
  %conv33 = trunc i32 %42 to i8, !dbg !1927
  %43 = load ptr, ptr %snap, align 8, !dbg !1928, !tbaa !1067
  %nent34 = getelementptr inbounds %struct.SnapShot, ptr %43, i32 0, i32 4, !dbg !1929
  store i8 %conv33, ptr %nent34, align 4, !dbg !1930, !tbaa !1359
  %44 = load ptr, ptr %J.addr, align 8, !dbg !1931, !tbaa !1067
  %cur35 = getelementptr inbounds %struct.jit_State, ptr %44, i32 0, i32 0, !dbg !1932
  %nsnapmap = getelementptr inbounds %struct.GCtrace, ptr %cur35, i32 0, i32 9, !dbg !1933
  %45 = load i32, ptr %nsnapmap, align 4, !dbg !1933, !tbaa !1191
  %46 = load ptr, ptr %snap, align 8, !dbg !1934, !tbaa !1067
  %mapofs36 = getelementptr inbounds %struct.SnapShot, ptr %46, i32 0, i32 0, !dbg !1935
  %47 = load i32, ptr %mapofs36, align 4, !dbg !1935, !tbaa !1229
  %sub37 = sub i32 %45, %47, !dbg !1936
  %sub38 = sub i32 %sub37, 1, !dbg !1937
  store i32 %sub38, ptr %nlim, align 4, !dbg !1938, !tbaa !1072
  br label %while.cond, !dbg !1939

while.cond:                                       ; preds = %while.body, %for.end
  %48 = load i32, ptr %n, align 4, !dbg !1940, !tbaa !1072
  %49 = load i32, ptr %nlim, align 4, !dbg !1941, !tbaa !1072
  %cmp39 = icmp ule i32 %48, %49, !dbg !1942
  br i1 %cmp39, label %while.body, label %while.end, !dbg !1939

while.body:                                       ; preds = %while.cond
  %50 = load ptr, ptr %map, align 8, !dbg !1943, !tbaa !1067
  %51 = load i32, ptr %n, align 4, !dbg !1944, !tbaa !1072
  %inc41 = add i32 %51, 1, !dbg !1944
  store i32 %inc41, ptr %n, align 4, !dbg !1944, !tbaa !1072
  %idxprom42 = zext i32 %51 to i64, !dbg !1943
  %arrayidx43 = getelementptr inbounds i32, ptr %50, i64 %idxprom42, !dbg !1943
  %52 = load i32, ptr %arrayidx43, align 4, !dbg !1943, !tbaa !1072
  %53 = load ptr, ptr %map, align 8, !dbg !1945, !tbaa !1067
  %54 = load i32, ptr %m, align 4, !dbg !1946, !tbaa !1072
  %inc44 = add i32 %54, 1, !dbg !1946
  store i32 %inc44, ptr %m, align 4, !dbg !1946, !tbaa !1072
  %idxprom45 = zext i32 %54 to i64, !dbg !1945
  %arrayidx46 = getelementptr inbounds i32, ptr %53, i64 %idxprom45, !dbg !1945
  store i32 %52, ptr %arrayidx46, align 4, !dbg !1947, !tbaa !1072
  br label %while.cond, !dbg !1939, !llvm.loop !1948

while.end:                                        ; preds = %while.cond
  %55 = load ptr, ptr %snap, align 8, !dbg !1950, !tbaa !1067
  %mapofs47 = getelementptr inbounds %struct.SnapShot, ptr %55, i32 0, i32 0, !dbg !1951
  %56 = load i32, ptr %mapofs47, align 4, !dbg !1951, !tbaa !1229
  %57 = load i32, ptr %m, align 4, !dbg !1952, !tbaa !1072
  %add48 = add i32 %56, %57, !dbg !1953
  %58 = load ptr, ptr %J.addr, align 8, !dbg !1954, !tbaa !1067
  %cur49 = getelementptr inbounds %struct.jit_State, ptr %58, i32 0, i32 0, !dbg !1955
  %nsnapmap50 = getelementptr inbounds %struct.GCtrace, ptr %cur49, i32 0, i32 9, !dbg !1956
  store i32 %add48, ptr %nsnapmap50, align 4, !dbg !1957, !tbaa !1191
  call void @llvm.lifetime.end.p0(i64 4, ptr %minslot) #9, !dbg !1958
  call void @llvm.lifetime.end.p0(i64 4, ptr %baseslot) #9, !dbg !1958
  call void @llvm.lifetime.end.p0(i64 4, ptr %maxslot) #9, !dbg !1958
  call void @llvm.lifetime.end.p0(i64 257, ptr %udf) #9, !dbg !1958
  call void @llvm.lifetime.end.p0(i64 4, ptr %nent) #9, !dbg !1958
  call void @llvm.lifetime.end.p0(i64 4, ptr %nlim) #9, !dbg !1958
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #9, !dbg !1958
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #9, !dbg !1958
  call void @llvm.lifetime.end.p0(i64 8, ptr %map) #9, !dbg !1958
  call void @llvm.lifetime.end.p0(i64 8, ptr %snap) #9, !dbg !1958
  ret void, !dbg !1958
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @snap_pc(ptr noundef %sn) #4 !dbg !1959 {
entry:
  %sn.addr = alloca ptr, align 8
  %pcbase = alloca i64, align 8
  store ptr %sn, ptr %sn.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %sn.addr, metadata !1963, metadata !DIExpression()), !dbg !1965
  call void @llvm.lifetime.start.p0(i64 8, ptr %pcbase) #9, !dbg !1966
  tail call void @llvm.dbg.declare(metadata ptr %pcbase, metadata !1964, metadata !DIExpression()), !dbg !1967
  %0 = load ptr, ptr %sn.addr, align 8, !dbg !1968, !tbaa !1067
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pcbase, ptr align 4 %0, i64 8, i1 false), !dbg !1969
  %1 = load i64, ptr %pcbase, align 8, !dbg !1970, !tbaa !1971
  %shr = lshr i64 %1, 8, !dbg !1972
  %2 = inttoptr i64 %shr to ptr, !dbg !1973
  call void @llvm.lifetime.end.p0(i64 8, ptr %pcbase) #9, !dbg !1974
  ret ptr %2, !dbg !1975
}

; Function Attrs: nounwind uwtable
define hidden ptr @lj_snap_regspmap(ptr noundef %T, i32 noundef %snapno, ptr noundef %ir) #0 !dbg !1976 {
entry:
  %T.addr = alloca ptr, align 8
  %snapno.addr = alloca i32, align 4
  %ir.addr = alloca ptr, align 8
  %snap = alloca ptr, align 8
  %map = alloca ptr, align 8
  %rfilt = alloca i64, align 8
  %n = alloca i32, align 4
  %ref = alloca i32, align 4
  %rs = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %T, ptr %T.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %T.addr, metadata !1981, metadata !DIExpression()), !dbg !1995
  store i32 %snapno, ptr %snapno.addr, align 4, !tbaa !1072
  tail call void @llvm.dbg.declare(metadata ptr %snapno.addr, metadata !1982, metadata !DIExpression()), !dbg !1996
  store ptr %ir, ptr %ir.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %ir.addr, metadata !1983, metadata !DIExpression()), !dbg !1997
  call void @llvm.lifetime.start.p0(i64 8, ptr %snap) #9, !dbg !1998
  tail call void @llvm.dbg.declare(metadata ptr %snap, metadata !1984, metadata !DIExpression()), !dbg !1999
  %0 = load ptr, ptr %T.addr, align 8, !dbg !2000, !tbaa !1067
  %snap1 = getelementptr inbounds %struct.GCtrace, ptr %0, i32 0, i32 10, !dbg !2001
  %1 = load ptr, ptr %snap1, align 8, !dbg !2001, !tbaa !2002
  %2 = load i32, ptr %snapno.addr, align 4, !dbg !2003, !tbaa !1072
  %idxprom = zext i32 %2 to i64, !dbg !2000
  %arrayidx = getelementptr inbounds %struct.SnapShot, ptr %1, i64 %idxprom, !dbg !2000
  store ptr %arrayidx, ptr %snap, align 8, !dbg !1999, !tbaa !1067
  call void @llvm.lifetime.start.p0(i64 8, ptr %map) #9, !dbg !2004
  tail call void @llvm.dbg.declare(metadata ptr %map, metadata !1985, metadata !DIExpression()), !dbg !2005
  %3 = load ptr, ptr %T.addr, align 8, !dbg !2006, !tbaa !1067
  %snapmap = getelementptr inbounds %struct.GCtrace, ptr %3, i32 0, i32 11, !dbg !2007
  %4 = load ptr, ptr %snapmap, align 8, !dbg !2007, !tbaa !2008
  %5 = load ptr, ptr %snap, align 8, !dbg !2009, !tbaa !1067
  %mapofs = getelementptr inbounds %struct.SnapShot, ptr %5, i32 0, i32 0, !dbg !2010
  %6 = load i32, ptr %mapofs, align 4, !dbg !2010, !tbaa !1229
  %idxprom2 = zext i32 %6 to i64, !dbg !2006
  %arrayidx3 = getelementptr inbounds i32, ptr %4, i64 %idxprom2, !dbg !2006
  store ptr %arrayidx3, ptr %map, align 8, !dbg !2005, !tbaa !1067
  call void @llvm.lifetime.start.p0(i64 8, ptr %rfilt) #9, !dbg !2011
  tail call void @llvm.dbg.declare(metadata ptr %rfilt, metadata !1986, metadata !DIExpression()), !dbg !2012
  %7 = load ptr, ptr %T.addr, align 8, !dbg !2013, !tbaa !1067
  %8 = load i32, ptr %snapno.addr, align 4, !dbg !2014, !tbaa !1072
  %call = call i64 @snap_renamefilter(ptr noundef %7, i32 noundef %8), !dbg !2015
  store i64 %call, ptr %rfilt, align 8, !dbg !2012, !tbaa !1971
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #9, !dbg !2016
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !1989, metadata !DIExpression()), !dbg !2017
  store i32 0, ptr %n, align 4, !dbg !2017, !tbaa !1072
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref) #9, !dbg !2018
  tail call void @llvm.dbg.declare(metadata ptr %ref, metadata !1990, metadata !DIExpression()), !dbg !2019
  store i32 0, ptr %ref, align 4, !dbg !2019, !tbaa !1072
  br label %for.cond, !dbg !2020

for.cond:                                         ; preds = %for.inc42, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %rs) #9, !dbg !2021
  tail call void @llvm.dbg.declare(metadata ptr %rs, metadata !1991, metadata !DIExpression()), !dbg !2022
  %9 = load ptr, ptr %ir.addr, align 8, !dbg !2023, !tbaa !1067
  %o = getelementptr inbounds %struct.anon.0, ptr %9, i32 0, i32 2, !dbg !2025
  %10 = load i8, ptr %o, align 1, !dbg !2025, !tbaa !1280
  %conv = zext i8 %10 to i32, !dbg !2023
  %cmp = icmp eq i32 %conv, 71, !dbg !2026
  br i1 %cmp, label %if.then, label %if.else, !dbg !2027

if.then:                                          ; preds = %for.cond
  %11 = load ptr, ptr %ir.addr, align 8, !dbg !2028, !tbaa !1067
  %op2 = getelementptr inbounds %struct.anon, ptr %11, i32 0, i32 1, !dbg !2031
  %12 = load i16, ptr %op2, align 2, !dbg !2031, !tbaa !1280
  %conv5 = zext i16 %12 to i32, !dbg !2028
  %and = and i32 %conv5, 1, !dbg !2032
  %tobool = icmp ne i32 %and, 0, !dbg !2032
  br i1 %tobool, label %if.end, label %if.then6, !dbg !2033

if.then6:                                         ; preds = %if.then
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2034

if.end:                                           ; preds = %if.then
  br label %for.cond7, !dbg !2035

for.cond7:                                        ; preds = %for.inc, %if.end
  %13 = load ptr, ptr %map, align 8, !dbg !2036, !tbaa !1067
  %14 = load i32, ptr %n, align 4, !dbg !2036, !tbaa !1072
  %idxprom8 = zext i32 %14 to i64, !dbg !2036
  %arrayidx9 = getelementptr inbounds i32, ptr %13, i64 %idxprom8, !dbg !2036
  %15 = load i32, ptr %arrayidx9, align 4, !dbg !2036, !tbaa !1072
  %shr = lshr i32 %15, 24, !dbg !2036
  %16 = load ptr, ptr %ir.addr, align 8, !dbg !2041, !tbaa !1067
  %op1 = getelementptr inbounds %struct.anon, ptr %16, i32 0, i32 0, !dbg !2042
  %17 = load i16, ptr %op1, align 8, !dbg !2042, !tbaa !1280
  %conv10 = zext i16 %17 to i32, !dbg !2041
  %cmp11 = icmp eq i32 %shr, %conv10, !dbg !2043
  br i1 %cmp11, label %if.then13, label %if.end17, !dbg !2044

if.then13:                                        ; preds = %for.cond7
  %18 = load ptr, ptr %map, align 8, !dbg !2045, !tbaa !1067
  %19 = load i32, ptr %n, align 4, !dbg !2045, !tbaa !1072
  %inc = add i32 %19, 1, !dbg !2045
  store i32 %inc, ptr %n, align 4, !dbg !2045, !tbaa !1072
  %idxprom14 = zext i32 %19 to i64, !dbg !2045
  %arrayidx15 = getelementptr inbounds i32, ptr %18, i64 %idxprom14, !dbg !2045
  %20 = load i32, ptr %arrayidx15, align 4, !dbg !2045, !tbaa !1072
  %and16 = and i32 %20, 65535, !dbg !2045
  store i32 %and16, ptr %ref, align 4, !dbg !2047, !tbaa !1072
  br label %for.end, !dbg !2048

if.end17:                                         ; preds = %for.cond7
  br label %for.inc, !dbg !2049

for.inc:                                          ; preds = %if.end17
  %21 = load i32, ptr %n, align 4, !dbg !2050, !tbaa !1072
  %inc18 = add i32 %21, 1, !dbg !2050
  store i32 %inc18, ptr %n, align 4, !dbg !2050, !tbaa !1072
  br label %for.cond7, !dbg !2051, !llvm.loop !2052

for.end:                                          ; preds = %if.then13
  br label %if.end28, !dbg !2055

if.else:                                          ; preds = %for.cond
  %22 = load ptr, ptr %ir.addr, align 8, !dbg !2056, !tbaa !1067
  %o19 = getelementptr inbounds %struct.anon.0, ptr %22, i32 0, i32 2, !dbg !2059
  %23 = load i8, ptr %o19, align 1, !dbg !2059, !tbaa !1280
  %conv20 = zext i8 %23 to i32, !dbg !2056
  %cmp21 = icmp eq i32 %conv20, 14, !dbg !2060
  br i1 %cmp21, label %if.then23, label %if.else26, !dbg !2061

if.then23:                                        ; preds = %if.else
  %24 = load ptr, ptr %ir.addr, align 8, !dbg !2062, !tbaa !1067
  %op124 = getelementptr inbounds %struct.anon, ptr %24, i32 0, i32 0, !dbg !2064
  %25 = load i16, ptr %op124, align 8, !dbg !2064, !tbaa !1280
  %conv25 = zext i16 %25 to i32, !dbg !2062
  %add = add nsw i32 %conv25, 32768, !dbg !2065
  store i32 %add, ptr %ref, align 4, !dbg !2066, !tbaa !1072
  br label %if.end27, !dbg !2067

if.else26:                                        ; preds = %if.else
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2068

if.end27:                                         ; preds = %if.then23
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %for.end
  %26 = load ptr, ptr %T.addr, align 8, !dbg !2070, !tbaa !1067
  %ir29 = getelementptr inbounds %struct.GCtrace, ptr %26, i32 0, i32 7, !dbg !2071
  %27 = load ptr, ptr %ir29, align 8, !dbg !2071, !tbaa !2072
  %28 = load i32, ptr %ref, align 4, !dbg !2073, !tbaa !1072
  %idxprom30 = zext i32 %28 to i64, !dbg !2070
  %arrayidx31 = getelementptr inbounds %union.IRIns, ptr %27, i64 %idxprom30, !dbg !2070
  %prev = getelementptr inbounds %struct.anon, ptr %arrayidx31, i32 0, i32 3, !dbg !2074
  %29 = load i16, ptr %prev, align 2, !dbg !2074, !tbaa !1280
  %conv32 = zext i16 %29 to i32, !dbg !2070
  store i32 %conv32, ptr %rs, align 4, !dbg !2075, !tbaa !1072
  %30 = load i64, ptr %rfilt, align 8, !dbg !2076, !tbaa !1971
  %31 = load i32, ptr %ref, align 4, !dbg !2076, !tbaa !1072
  %conv33 = zext i32 %31 to i64, !dbg !2076
  %and34 = and i64 %conv33, 63, !dbg !2076
  %shl = shl i64 1, %and34, !dbg !2076
  %and35 = and i64 %30, %shl, !dbg !2076
  %tobool36 = icmp ne i64 %and35, 0, !dbg !2076
  br i1 %tobool36, label %if.then37, label %if.end39, !dbg !2078

if.then37:                                        ; preds = %if.end28
  %32 = load ptr, ptr %T.addr, align 8, !dbg !2079, !tbaa !1067
  %33 = load i32, ptr %snapno.addr, align 4, !dbg !2080, !tbaa !1072
  %34 = load i32, ptr %ref, align 4, !dbg !2081, !tbaa !1072
  %35 = load i32, ptr %rs, align 4, !dbg !2082, !tbaa !1072
  %call38 = call i32 @snap_renameref(ptr noundef %32, i32 noundef %33, i32 noundef %34, i32 noundef %35), !dbg !2083
  store i32 %call38, ptr %rs, align 4, !dbg !2084, !tbaa !1072
  br label %if.end39, !dbg !2085

if.end39:                                         ; preds = %if.then37, %if.end28
  %36 = load i32, ptr %rs, align 4, !dbg !2086, !tbaa !1072
  %conv40 = trunc i32 %36 to i16, !dbg !2087
  %37 = load ptr, ptr %ir.addr, align 8, !dbg !2088, !tbaa !1067
  %prev41 = getelementptr inbounds %struct.anon, ptr %37, i32 0, i32 3, !dbg !2089
  store i16 %conv40, ptr %prev41, align 2, !dbg !2090, !tbaa !1280
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2091
  br label %cleanup, !dbg !2091

cleanup:                                          ; preds = %if.end39, %if.else26, %if.then6
  call void @llvm.lifetime.end.p0(i64 4, ptr %rs) #9, !dbg !2091
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end43
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc42, !dbg !2092

for.inc42:                                        ; preds = %cleanup.cont
  %38 = load ptr, ptr %ir.addr, align 8, !dbg !2093, !tbaa !1067
  %incdec.ptr = getelementptr inbounds %union.IRIns, ptr %38, i32 1, !dbg !2093
  store ptr %incdec.ptr, ptr %ir.addr, align 8, !dbg !2093, !tbaa !1067
  br label %for.cond, !dbg !2094, !llvm.loop !2095

for.end43:                                        ; preds = %cleanup
  %39 = load ptr, ptr %ir.addr, align 8, !dbg !2098, !tbaa !1067
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref) #9, !dbg !2099
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #9, !dbg !2099
  call void @llvm.lifetime.end.p0(i64 8, ptr %rfilt) #9, !dbg !2099
  call void @llvm.lifetime.end.p0(i64 8, ptr %map) #9, !dbg !2099
  call void @llvm.lifetime.end.p0(i64 8, ptr %snap) #9, !dbg !2099
  ret ptr %39, !dbg !2100

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i64 @snap_renamefilter(ptr noundef %T, i32 noundef %lim) #0 !dbg !2101 {
entry:
  %T.addr = alloca ptr, align 8
  %lim.addr = alloca i32, align 4
  %rfilt = alloca i64, align 8
  %ir = alloca ptr, align 8
  store ptr %T, ptr %T.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %T.addr, metadata !2105, metadata !DIExpression()), !dbg !2109
  store i32 %lim, ptr %lim.addr, align 4, !tbaa !1072
  tail call void @llvm.dbg.declare(metadata ptr %lim.addr, metadata !2106, metadata !DIExpression()), !dbg !2110
  call void @llvm.lifetime.start.p0(i64 8, ptr %rfilt) #9, !dbg !2111
  tail call void @llvm.dbg.declare(metadata ptr %rfilt, metadata !2107, metadata !DIExpression()), !dbg !2112
  store i64 0, ptr %rfilt, align 8, !dbg !2112, !tbaa !1971
  call void @llvm.lifetime.start.p0(i64 8, ptr %ir) #9, !dbg !2113
  tail call void @llvm.dbg.declare(metadata ptr %ir, metadata !2108, metadata !DIExpression()), !dbg !2114
  %0 = load ptr, ptr %T.addr, align 8, !dbg !2115, !tbaa !1067
  %ir1 = getelementptr inbounds %struct.GCtrace, ptr %0, i32 0, i32 7, !dbg !2117
  %1 = load ptr, ptr %ir1, align 8, !dbg !2117, !tbaa !2072
  %2 = load ptr, ptr %T.addr, align 8, !dbg !2118, !tbaa !1067
  %nins = getelementptr inbounds %struct.GCtrace, ptr %2, i32 0, i32 4, !dbg !2119
  %3 = load i32, ptr %nins, align 4, !dbg !2119, !tbaa !2120
  %sub = sub i32 %3, 1, !dbg !2121
  %idxprom = zext i32 %sub to i64, !dbg !2115
  %arrayidx = getelementptr inbounds %union.IRIns, ptr %1, i64 %idxprom, !dbg !2115
  store ptr %arrayidx, ptr %ir, align 8, !dbg !2122, !tbaa !1067
  br label %for.cond, !dbg !2123

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %ir, align 8, !dbg !2124, !tbaa !1067
  %o = getelementptr inbounds %struct.anon.0, ptr %4, i32 0, i32 2, !dbg !2126
  %5 = load i8, ptr %o, align 1, !dbg !2126, !tbaa !1280
  %conv = zext i8 %5 to i32, !dbg !2124
  %cmp = icmp eq i32 %conv, 20, !dbg !2127
  br i1 %cmp, label %for.body, label %for.end, !dbg !2128

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %ir, align 8, !dbg !2129, !tbaa !1067
  %op2 = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 1, !dbg !2131
  %7 = load i16, ptr %op2, align 2, !dbg !2131, !tbaa !1280
  %conv3 = zext i16 %7 to i32, !dbg !2129
  %8 = load i32, ptr %lim.addr, align 4, !dbg !2132, !tbaa !1072
  %cmp4 = icmp ule i32 %conv3, %8, !dbg !2133
  br i1 %cmp4, label %if.then, label %if.end, !dbg !2134

if.then:                                          ; preds = %for.body
  %9 = load ptr, ptr %ir, align 8, !dbg !2135, !tbaa !1067
  %op1 = getelementptr inbounds %struct.anon, ptr %9, i32 0, i32 0, !dbg !2135
  %10 = load i16, ptr %op1, align 8, !dbg !2135, !tbaa !1280
  %conv6 = zext i16 %10 to i64, !dbg !2135
  %and = and i64 %conv6, 63, !dbg !2135
  %shl = shl i64 1, %and, !dbg !2135
  %11 = load i64, ptr %rfilt, align 8, !dbg !2135, !tbaa !1971
  %or = or i64 %11, %shl, !dbg !2135
  store i64 %or, ptr %rfilt, align 8, !dbg !2135, !tbaa !1971
  br label %if.end, !dbg !2135

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !2132

for.inc:                                          ; preds = %if.end
  %12 = load ptr, ptr %ir, align 8, !dbg !2136, !tbaa !1067
  %incdec.ptr = getelementptr inbounds %union.IRIns, ptr %12, i32 -1, !dbg !2136
  store ptr %incdec.ptr, ptr %ir, align 8, !dbg !2136, !tbaa !1067
  br label %for.cond, !dbg !2137, !llvm.loop !2138

for.end:                                          ; preds = %for.cond
  %13 = load i64, ptr %rfilt, align 8, !dbg !2140, !tbaa !1971
  call void @llvm.lifetime.end.p0(i64 8, ptr %ir) #9, !dbg !2141
  call void @llvm.lifetime.end.p0(i64 8, ptr %rfilt) #9, !dbg !2141
  ret i64 %13, !dbg !2142
}

; Function Attrs: nounwind uwtable
define internal i32 @snap_renameref(ptr noundef %T, i32 noundef %lim, i32 noundef %ref, i32 noundef %rs) #0 !dbg !2143 {
entry:
  %T.addr = alloca ptr, align 8
  %lim.addr = alloca i32, align 4
  %ref.addr = alloca i32, align 4
  %rs.addr = alloca i32, align 4
  %ir = alloca ptr, align 8
  store ptr %T, ptr %T.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %T.addr, metadata !2149, metadata !DIExpression()), !dbg !2154
  store i32 %lim, ptr %lim.addr, align 4, !tbaa !1072
  tail call void @llvm.dbg.declare(metadata ptr %lim.addr, metadata !2150, metadata !DIExpression()), !dbg !2155
  store i32 %ref, ptr %ref.addr, align 4, !tbaa !1072
  tail call void @llvm.dbg.declare(metadata ptr %ref.addr, metadata !2151, metadata !DIExpression()), !dbg !2156
  store i32 %rs, ptr %rs.addr, align 4, !tbaa !1072
  tail call void @llvm.dbg.declare(metadata ptr %rs.addr, metadata !2152, metadata !DIExpression()), !dbg !2157
  call void @llvm.lifetime.start.p0(i64 8, ptr %ir) #9, !dbg !2158
  tail call void @llvm.dbg.declare(metadata ptr %ir, metadata !2153, metadata !DIExpression()), !dbg !2159
  %0 = load ptr, ptr %T.addr, align 8, !dbg !2160, !tbaa !1067
  %ir1 = getelementptr inbounds %struct.GCtrace, ptr %0, i32 0, i32 7, !dbg !2162
  %1 = load ptr, ptr %ir1, align 8, !dbg !2162, !tbaa !2072
  %2 = load ptr, ptr %T.addr, align 8, !dbg !2163, !tbaa !1067
  %nins = getelementptr inbounds %struct.GCtrace, ptr %2, i32 0, i32 4, !dbg !2164
  %3 = load i32, ptr %nins, align 4, !dbg !2164, !tbaa !2120
  %sub = sub i32 %3, 1, !dbg !2165
  %idxprom = zext i32 %sub to i64, !dbg !2160
  %arrayidx = getelementptr inbounds %union.IRIns, ptr %1, i64 %idxprom, !dbg !2160
  store ptr %arrayidx, ptr %ir, align 8, !dbg !2166, !tbaa !1067
  br label %for.cond, !dbg !2167

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %ir, align 8, !dbg !2168, !tbaa !1067
  %o = getelementptr inbounds %struct.anon.0, ptr %4, i32 0, i32 2, !dbg !2170
  %5 = load i8, ptr %o, align 1, !dbg !2170, !tbaa !1280
  %conv = zext i8 %5 to i32, !dbg !2168
  %cmp = icmp eq i32 %conv, 20, !dbg !2171
  br i1 %cmp, label %for.body, label %for.end, !dbg !2172

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %ir, align 8, !dbg !2173, !tbaa !1067
  %op1 = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 0, !dbg !2175
  %7 = load i16, ptr %op1, align 8, !dbg !2175, !tbaa !1280
  %conv3 = zext i16 %7 to i32, !dbg !2173
  %8 = load i32, ptr %ref.addr, align 4, !dbg !2176, !tbaa !1072
  %cmp4 = icmp eq i32 %conv3, %8, !dbg !2177
  br i1 %cmp4, label %land.lhs.true, label %if.end, !dbg !2178

land.lhs.true:                                    ; preds = %for.body
  %9 = load ptr, ptr %ir, align 8, !dbg !2179, !tbaa !1067
  %op2 = getelementptr inbounds %struct.anon, ptr %9, i32 0, i32 1, !dbg !2180
  %10 = load i16, ptr %op2, align 2, !dbg !2180, !tbaa !1280
  %conv6 = zext i16 %10 to i32, !dbg !2179
  %11 = load i32, ptr %lim.addr, align 4, !dbg !2181, !tbaa !1072
  %cmp7 = icmp ule i32 %conv6, %11, !dbg !2182
  br i1 %cmp7, label %if.then, label %if.end, !dbg !2183

if.then:                                          ; preds = %land.lhs.true
  %12 = load ptr, ptr %ir, align 8, !dbg !2184, !tbaa !1067
  %prev = getelementptr inbounds %struct.anon, ptr %12, i32 0, i32 3, !dbg !2185
  %13 = load i16, ptr %prev, align 2, !dbg !2185, !tbaa !1280
  %conv9 = zext i16 %13 to i32, !dbg !2184
  store i32 %conv9, ptr %rs.addr, align 4, !dbg !2186, !tbaa !1072
  br label %if.end, !dbg !2187

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc, !dbg !2181

for.inc:                                          ; preds = %if.end
  %14 = load ptr, ptr %ir, align 8, !dbg !2188, !tbaa !1067
  %incdec.ptr = getelementptr inbounds %union.IRIns, ptr %14, i32 -1, !dbg !2188
  store ptr %incdec.ptr, ptr %ir, align 8, !dbg !2188, !tbaa !1067
  br label %for.cond, !dbg !2189, !llvm.loop !2190

for.end:                                          ; preds = %for.cond
  %15 = load i32, ptr %rs.addr, align 4, !dbg !2192, !tbaa !1072
  call void @llvm.lifetime.end.p0(i64 8, ptr %ir) #9, !dbg !2193
  ret i32 %15, !dbg !2194
}

; Function Attrs: nounwind uwtable
define hidden void @lj_snap_replay(ptr noundef %J, ptr noundef %T) #0 !dbg !2195 {
entry:
  %J.addr = alloca ptr, align 8
  %T.addr = alloca ptr, align 8
  %snap = alloca ptr, align 8
  %map = alloca ptr, align 8
  %n = alloca i32, align 4
  %nent = alloca i32, align 4
  %seen = alloca i64, align 8
  %pass23 = alloca i32, align 4
  %sn = alloca i32, align 4
  %s = alloca i32, align 4
  %ref = alloca i32, align 4
  %ir = alloca ptr, align 8
  %tr = alloca i32, align 4
  %t = alloca i32, align 4
  %mode = alloca i32, align 4
  %irlast = alloca ptr, align 8
  %sn76 = alloca i32, align 4
  %refp = alloca i32, align 4
  %ir80 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %irs = alloca ptr, align 8
  %sn185 = alloca i32, align 4
  %refp188 = alloca i32, align 4
  %ir190 = alloca ptr, align 8
  %op1200 = alloca i32, align 4
  %op2201 = alloca i32, align 4
  %irs254 = alloca ptr, align 8
  %tr255 = alloca i32, align 4
  %irr = alloca ptr, align 8
  %val = alloca i32, align 4
  %key = alloca i32, align 4
  %tmp = alloca i32, align 4
  %irk = alloca ptr, align 8
  %irf = alloca ptr, align 8
  %irc = alloca ptr, align 8
  store ptr %J, ptr %J.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %J.addr, metadata !2199, metadata !DIExpression()), !dbg !2266
  store ptr %T, ptr %T.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %T.addr, metadata !2200, metadata !DIExpression()), !dbg !2267
  call void @llvm.lifetime.start.p0(i64 8, ptr %snap) #9, !dbg !2268
  tail call void @llvm.dbg.declare(metadata ptr %snap, metadata !2201, metadata !DIExpression()), !dbg !2269
  %0 = load ptr, ptr %T.addr, align 8, !dbg !2270, !tbaa !1067
  %snap1 = getelementptr inbounds %struct.GCtrace, ptr %0, i32 0, i32 10, !dbg !2271
  %1 = load ptr, ptr %snap1, align 8, !dbg !2271, !tbaa !2002
  %2 = load ptr, ptr %J.addr, align 8, !dbg !2272, !tbaa !1067
  %exitno = getelementptr inbounds %struct.jit_State, ptr %2, i32 0, i32 52, !dbg !2273
  %3 = load i32, ptr %exitno, align 4, !dbg !2273, !tbaa !2274
  %idxprom = zext i32 %3 to i64, !dbg !2270
  %arrayidx = getelementptr inbounds %struct.SnapShot, ptr %1, i64 %idxprom, !dbg !2270
  store ptr %arrayidx, ptr %snap, align 8, !dbg !2269, !tbaa !1067
  call void @llvm.lifetime.start.p0(i64 8, ptr %map) #9, !dbg !2275
  tail call void @llvm.dbg.declare(metadata ptr %map, metadata !2202, metadata !DIExpression()), !dbg !2276
  %4 = load ptr, ptr %T.addr, align 8, !dbg !2277, !tbaa !1067
  %snapmap = getelementptr inbounds %struct.GCtrace, ptr %4, i32 0, i32 11, !dbg !2278
  %5 = load ptr, ptr %snapmap, align 8, !dbg !2278, !tbaa !2008
  %6 = load ptr, ptr %snap, align 8, !dbg !2279, !tbaa !1067
  %mapofs = getelementptr inbounds %struct.SnapShot, ptr %6, i32 0, i32 0, !dbg !2280
  %7 = load i32, ptr %mapofs, align 4, !dbg !2280, !tbaa !1229
  %idxprom2 = zext i32 %7 to i64, !dbg !2277
  %arrayidx3 = getelementptr inbounds i32, ptr %5, i64 %idxprom2, !dbg !2277
  store ptr %arrayidx3, ptr %map, align 8, !dbg !2276, !tbaa !1067
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #9, !dbg !2281
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !2203, metadata !DIExpression()), !dbg !2282
  call void @llvm.lifetime.start.p0(i64 4, ptr %nent) #9, !dbg !2281
  tail call void @llvm.dbg.declare(metadata ptr %nent, metadata !2204, metadata !DIExpression()), !dbg !2283
  %8 = load ptr, ptr %snap, align 8, !dbg !2284, !tbaa !1067
  %nent4 = getelementptr inbounds %struct.SnapShot, ptr %8, i32 0, i32 4, !dbg !2285
  %9 = load i8, ptr %nent4, align 4, !dbg !2285, !tbaa !1359
  %conv = zext i8 %9 to i32, !dbg !2284
  store i32 %conv, ptr %nent, align 4, !dbg !2283, !tbaa !1072
  call void @llvm.lifetime.start.p0(i64 8, ptr %seen) #9, !dbg !2286
  tail call void @llvm.dbg.declare(metadata ptr %seen, metadata !2205, metadata !DIExpression()), !dbg !2287
  store i64 0, ptr %seen, align 8, !dbg !2287, !tbaa !1971
  call void @llvm.lifetime.start.p0(i64 4, ptr %pass23) #9, !dbg !2288
  tail call void @llvm.dbg.declare(metadata ptr %pass23, metadata !2206, metadata !DIExpression()), !dbg !2289
  store i32 0, ptr %pass23, align 4, !dbg !2289, !tbaa !1072
  %10 = load ptr, ptr %J.addr, align 8, !dbg !2290, !tbaa !1067
  %framedepth = getelementptr inbounds %struct.jit_State, ptr %10, i32 0, i32 21, !dbg !2291
  store i32 0, ptr %framedepth, align 4, !dbg !2292, !tbaa !2293
  store i32 0, ptr %n, align 4, !dbg !2294, !tbaa !1072
  br label %for.cond, !dbg !2295

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, ptr %n, align 4, !dbg !2296, !tbaa !1072
  %12 = load i32, ptr %nent, align 4, !dbg !2297, !tbaa !1072
  %cmp = icmp ult i32 %11, %12, !dbg !2298
  br i1 %cmp, label %for.body, label %for.end, !dbg !2299

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %sn) #9, !dbg !2300
  tail call void @llvm.dbg.declare(metadata ptr %sn, metadata !2207, metadata !DIExpression()), !dbg !2301
  %13 = load ptr, ptr %map, align 8, !dbg !2302, !tbaa !1067
  %14 = load i32, ptr %n, align 4, !dbg !2303, !tbaa !1072
  %idxprom6 = zext i32 %14 to i64, !dbg !2302
  %arrayidx7 = getelementptr inbounds i32, ptr %13, i64 %idxprom6, !dbg !2302
  %15 = load i32, ptr %arrayidx7, align 4, !dbg !2302, !tbaa !1072
  store i32 %15, ptr %sn, align 4, !dbg !2301, !tbaa !1072
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #9, !dbg !2304
  tail call void @llvm.dbg.declare(metadata ptr %s, metadata !2211, metadata !DIExpression()), !dbg !2305
  %16 = load i32, ptr %sn, align 4, !dbg !2306, !tbaa !1072
  %shr = lshr i32 %16, 24, !dbg !2306
  store i32 %shr, ptr %s, align 4, !dbg !2305, !tbaa !1072
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref) #9, !dbg !2307
  tail call void @llvm.dbg.declare(metadata ptr %ref, metadata !2212, metadata !DIExpression()), !dbg !2308
  %17 = load i32, ptr %sn, align 4, !dbg !2309, !tbaa !1072
  %and = and i32 %17, 65535, !dbg !2309
  store i32 %and, ptr %ref, align 4, !dbg !2308, !tbaa !1072
  call void @llvm.lifetime.start.p0(i64 8, ptr %ir) #9, !dbg !2310
  tail call void @llvm.dbg.declare(metadata ptr %ir, metadata !2213, metadata !DIExpression()), !dbg !2311
  %18 = load ptr, ptr %T.addr, align 8, !dbg !2312, !tbaa !1067
  %ir8 = getelementptr inbounds %struct.GCtrace, ptr %18, i32 0, i32 7, !dbg !2313
  %19 = load ptr, ptr %ir8, align 8, !dbg !2313, !tbaa !2072
  %20 = load i32, ptr %ref, align 4, !dbg !2314, !tbaa !1072
  %idxprom9 = zext i32 %20 to i64, !dbg !2312
  %arrayidx10 = getelementptr inbounds %union.IRIns, ptr %19, i64 %idxprom9, !dbg !2312
  store ptr %arrayidx10, ptr %ir, align 8, !dbg !2311, !tbaa !1067
  call void @llvm.lifetime.start.p0(i64 4, ptr %tr) #9, !dbg !2315
  tail call void @llvm.dbg.declare(metadata ptr %tr, metadata !2214, metadata !DIExpression()), !dbg !2316
  %21 = load i64, ptr %seen, align 8, !dbg !2317, !tbaa !1971
  %22 = load i32, ptr %ref, align 4, !dbg !2317, !tbaa !1072
  %conv11 = zext i32 %22 to i64, !dbg !2317
  %and12 = and i64 %conv11, 63, !dbg !2317
  %shl = shl i64 1, %and12, !dbg !2317
  %and13 = and i64 %21, %shl, !dbg !2317
  %tobool = icmp ne i64 %and13, 0, !dbg !2317
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !2319

land.lhs.true:                                    ; preds = %for.body
  %23 = load ptr, ptr %J.addr, align 8, !dbg !2320, !tbaa !1067
  %24 = load ptr, ptr %map, align 8, !dbg !2321, !tbaa !1067
  %25 = load i32, ptr %n, align 4, !dbg !2322, !tbaa !1072
  %26 = load i32, ptr %ref, align 4, !dbg !2323, !tbaa !1072
  %call = call i32 @snap_dedup(ptr noundef %23, ptr noundef %24, i32 noundef %25, i32 noundef %26), !dbg !2324
  store i32 %call, ptr %tr, align 4, !dbg !2325, !tbaa !1072
  %cmp14 = icmp ne i32 %call, 0, !dbg !2326
  br i1 %cmp14, label %if.then, label %if.end, !dbg !2327

if.then:                                          ; preds = %land.lhs.true
  br label %setslot, !dbg !2328

if.end:                                           ; preds = %land.lhs.true, %for.body
  %27 = load i32, ptr %ref, align 4, !dbg !2329, !tbaa !1072
  %conv16 = zext i32 %27 to i64, !dbg !2329
  %and17 = and i64 %conv16, 63, !dbg !2329
  %shl18 = shl i64 1, %and17, !dbg !2329
  %28 = load i64, ptr %seen, align 8, !dbg !2329, !tbaa !1971
  %or = or i64 %28, %shl18, !dbg !2329
  store i64 %or, ptr %seen, align 8, !dbg !2329, !tbaa !1971
  %29 = load i32, ptr %ref, align 4, !dbg !2330, !tbaa !1072
  %cmp19 = icmp ult i32 %29, 32768, !dbg !2330
  br i1 %cmp19, label %if.then21, label %if.else27, !dbg !2331

if.then21:                                        ; preds = %if.end
  %30 = load i32, ptr %sn, align 4, !dbg !2332, !tbaa !1072
  %cmp22 = icmp eq i32 %30, 17137663, !dbg !2335
  br i1 %cmp22, label %if.then24, label %if.else, !dbg !2336

if.then24:                                        ; preds = %if.then21
  store i32 0, ptr %tr, align 4, !dbg !2337, !tbaa !1072
  br label %if.end26, !dbg !2338

if.else:                                          ; preds = %if.then21
  %31 = load ptr, ptr %J.addr, align 8, !dbg !2339, !tbaa !1067
  %32 = load ptr, ptr %ir, align 8, !dbg !2340, !tbaa !1067
  %call25 = call i32 @snap_replay_const(ptr noundef %31, ptr noundef %32), !dbg !2341
  store i32 %call25, ptr %tr, align 4, !dbg !2342, !tbaa !1072
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then24
  br label %if.end51, !dbg !2343

if.else27:                                        ; preds = %if.end
  %33 = load ptr, ptr %ir, align 8, !dbg !2344, !tbaa !1067
  %prev = getelementptr inbounds %struct.anon, ptr %33, i32 0, i32 3, !dbg !2344
  %34 = load i16, ptr %prev, align 2, !dbg !2344, !tbaa !1280
  %conv28 = zext i16 %34 to i32, !dbg !2344
  %and29 = and i32 %conv28, -128, !dbg !2344
  %cmp30 = icmp ne i32 %and29, 128, !dbg !2344
  br i1 %cmp30, label %if.else33, label %if.then32, !dbg !2345

if.then32:                                        ; preds = %if.else27
  store i32 1, ptr %pass23, align 4, !dbg !2346, !tbaa !1072
  %35 = load i32, ptr %s, align 4, !dbg !2348, !tbaa !1072
  store i32 %35, ptr %tr, align 4, !dbg !2349, !tbaa !1072
  br label %if.end50, !dbg !2350

if.else33:                                        ; preds = %if.else27
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #9, !dbg !2351
  tail call void @llvm.dbg.declare(metadata ptr %t, metadata !2215, metadata !DIExpression()), !dbg !2352
  %36 = load ptr, ptr %ir, align 8, !dbg !2353, !tbaa !1067
  %t34 = getelementptr inbounds %struct.anon.0, ptr %36, i32 0, i32 1, !dbg !2353
  %irt = getelementptr inbounds %struct.IRType1, ptr %t34, i32 0, i32 0, !dbg !2353
  %37 = load i8, ptr %irt, align 4, !dbg !2353, !tbaa !1280
  %conv35 = zext i8 %37 to i32, !dbg !2353
  %and36 = and i32 %conv35, 31, !dbg !2353
  store i32 %and36, ptr %t, align 4, !dbg !2352, !tbaa !1280
  call void @llvm.lifetime.start.p0(i64 4, ptr %mode) #9, !dbg !2354
  tail call void @llvm.dbg.declare(metadata ptr %mode, metadata !2219, metadata !DIExpression()), !dbg !2355
  store i32 33, ptr %mode, align 4, !dbg !2355, !tbaa !1072
  %38 = load ptr, ptr %ir, align 8, !dbg !2356, !tbaa !1067
  %o = getelementptr inbounds %struct.anon.0, ptr %38, i32 0, i32 2, !dbg !2358
  %39 = load i8, ptr %o, align 1, !dbg !2358, !tbaa !1280
  %conv37 = zext i8 %39 to i32, !dbg !2356
  %cmp38 = icmp eq i32 %conv37, 71, !dbg !2359
  br i1 %cmp38, label %if.then40, label %if.end44, !dbg !2360

if.then40:                                        ; preds = %if.else33
  %40 = load ptr, ptr %ir, align 8, !dbg !2361, !tbaa !1067
  %op2 = getelementptr inbounds %struct.anon, ptr %40, i32 0, i32 1, !dbg !2362
  %41 = load i16, ptr %op2, align 2, !dbg !2362, !tbaa !1280
  %conv41 = zext i16 %41 to i32, !dbg !2361
  %and42 = and i32 %conv41, 16, !dbg !2363
  %42 = load i32, ptr %mode, align 4, !dbg !2364, !tbaa !1072
  %or43 = or i32 %42, %and42, !dbg !2364
  store i32 %or43, ptr %mode, align 4, !dbg !2364, !tbaa !1072
  br label %if.end44, !dbg !2365

if.end44:                                         ; preds = %if.then40, %if.else33
  %43 = load ptr, ptr %J.addr, align 8, !dbg !2366, !tbaa !1067
  %44 = load i32, ptr %t, align 4, !dbg !2366, !tbaa !1280
  %or45 = or i32 18176, %44, !dbg !2366
  %conv46 = trunc i32 %or45 to i16, !dbg !2366
  %45 = load i32, ptr %s, align 4, !dbg !2366, !tbaa !1072
  %conv47 = trunc i32 %45 to i16, !dbg !2366
  %46 = load i32, ptr %mode, align 4, !dbg !2366, !tbaa !1072
  %conv48 = trunc i32 %46 to i16, !dbg !2366
  call void @lj_ir_set_(ptr noundef %43, i16 noundef zeroext %conv46, i16 noundef zeroext %conv47, i16 noundef zeroext %conv48), !dbg !2366
  %47 = load ptr, ptr %J.addr, align 8, !dbg !2366, !tbaa !1067
  %call49 = call i32 @lj_ir_emit(ptr noundef %47), !dbg !2366
  store i32 %call49, ptr %tr, align 4, !dbg !2367, !tbaa !1072
  call void @llvm.lifetime.end.p0(i64 4, ptr %mode) #9, !dbg !2368
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #9, !dbg !2368
  br label %if.end50

if.end50:                                         ; preds = %if.end44, %if.then32
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.end26
  br label %setslot, !dbg !2330

setslot:                                          ; preds = %if.end51, %if.then
  tail call void @llvm.dbg.label(metadata !2220), !dbg !2369
  %48 = load i32, ptr %tr, align 4, !dbg !2370, !tbaa !1072
  %49 = load i32, ptr %sn, align 4, !dbg !2371, !tbaa !1072
  %and52 = and i32 %49, 196608, !dbg !2372
  %or53 = or i32 %48, %and52, !dbg !2373
  %50 = load ptr, ptr %J.addr, align 8, !dbg !2374, !tbaa !1067
  %slot = getelementptr inbounds %struct.jit_State, ptr %50, i32 0, i32 41, !dbg !2375
  %51 = load i32, ptr %s, align 4, !dbg !2376, !tbaa !1072
  %idxprom54 = zext i32 %51 to i64, !dbg !2374
  %arrayidx55 = getelementptr inbounds [257 x i32], ptr %slot, i64 0, i64 %idxprom54, !dbg !2374
  store i32 %or53, ptr %arrayidx55, align 4, !dbg !2377, !tbaa !1072
  %52 = load i32, ptr %sn, align 4, !dbg !2378, !tbaa !1072
  %and56 = and i32 %52, 196608, !dbg !2379
  %tobool57 = icmp ne i32 %and56, 0, !dbg !2379
  br i1 %tobool57, label %land.rhs, label %land.end, !dbg !2380

land.rhs:                                         ; preds = %setslot
  %53 = load i32, ptr %s, align 4, !dbg !2381, !tbaa !1072
  %cmp58 = icmp ne i32 %53, 1, !dbg !2382
  br label %land.end

land.end:                                         ; preds = %land.rhs, %setslot
  %54 = phi i1 [ false, %setslot ], [ %cmp58, %land.rhs ], !dbg !2383
  %land.ext = zext i1 %54 to i32, !dbg !2380
  %55 = load ptr, ptr %J.addr, align 8, !dbg !2384, !tbaa !1067
  %framedepth60 = getelementptr inbounds %struct.jit_State, ptr %55, i32 0, i32 21, !dbg !2385
  %56 = load i32, ptr %framedepth60, align 4, !dbg !2386, !tbaa !2293
  %add = add nsw i32 %56, %land.ext, !dbg !2386
  store i32 %add, ptr %framedepth60, align 4, !dbg !2386, !tbaa !2293
  %57 = load i32, ptr %sn, align 4, !dbg !2387, !tbaa !1072
  %and61 = and i32 %57, 65536, !dbg !2389
  %tobool62 = icmp ne i32 %and61, 0, !dbg !2389
  br i1 %tobool62, label %if.then63, label %if.end65, !dbg !2390

if.then63:                                        ; preds = %land.end
  %58 = load i32, ptr %s, align 4, !dbg !2391, !tbaa !1072
  %add64 = add i32 %58, 1, !dbg !2392
  %59 = load ptr, ptr %J.addr, align 8, !dbg !2393, !tbaa !1067
  %baseslot = getelementptr inbounds %struct.jit_State, ptr %59, i32 0, i32 9, !dbg !2394
  store i32 %add64, ptr %baseslot, align 8, !dbg !2395, !tbaa !1329
  br label %if.end65, !dbg !2393

if.end65:                                         ; preds = %if.then63, %land.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %tr) #9, !dbg !2396
  call void @llvm.lifetime.end.p0(i64 8, ptr %ir) #9, !dbg !2396
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref) #9, !dbg !2396
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #9, !dbg !2396
  call void @llvm.lifetime.end.p0(i64 4, ptr %sn) #9, !dbg !2396
  br label %for.inc, !dbg !2397

for.inc:                                          ; preds = %if.end65
  %60 = load i32, ptr %n, align 4, !dbg !2398, !tbaa !1072
  %inc = add i32 %60, 1, !dbg !2398
  store i32 %inc, ptr %n, align 4, !dbg !2398, !tbaa !1072
  br label %for.cond, !dbg !2399, !llvm.loop !2400

for.end:                                          ; preds = %for.cond
  %61 = load i32, ptr %pass23, align 4, !dbg !2402, !tbaa !1072
  %tobool66 = icmp ne i32 %61, 0, !dbg !2402
  br i1 %tobool66, label %if.then67, label %if.end382, !dbg !2403

if.then67:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %irlast) #9, !dbg !2404
  tail call void @llvm.dbg.declare(metadata ptr %irlast, metadata !2221, metadata !DIExpression()), !dbg !2405
  %62 = load ptr, ptr %T.addr, align 8, !dbg !2406, !tbaa !1067
  %ir68 = getelementptr inbounds %struct.GCtrace, ptr %62, i32 0, i32 7, !dbg !2407
  %63 = load ptr, ptr %ir68, align 8, !dbg !2407, !tbaa !2072
  %64 = load ptr, ptr %snap, align 8, !dbg !2408, !tbaa !1067
  %ref69 = getelementptr inbounds %struct.SnapShot, ptr %64, i32 0, i32 1, !dbg !2409
  %65 = load i16, ptr %ref69, align 4, !dbg !2409, !tbaa !1201
  %idxprom70 = zext i16 %65 to i64, !dbg !2406
  %arrayidx71 = getelementptr inbounds %union.IRIns, ptr %63, i64 %idxprom70, !dbg !2406
  store ptr %arrayidx71, ptr %irlast, align 8, !dbg !2405, !tbaa !1067
  store i32 0, ptr %pass23, align 4, !dbg !2410, !tbaa !1072
  store i32 0, ptr %n, align 4, !dbg !2411, !tbaa !1072
  br label %for.cond72, !dbg !2412

for.cond72:                                       ; preds = %for.inc174, %if.then67
  %66 = load i32, ptr %n, align 4, !dbg !2413, !tbaa !1072
  %67 = load i32, ptr %nent, align 4, !dbg !2414, !tbaa !1072
  %cmp73 = icmp ult i32 %66, %67, !dbg !2415
  br i1 %cmp73, label %for.body75, label %for.end176, !dbg !2416

for.body75:                                       ; preds = %for.cond72
  call void @llvm.lifetime.start.p0(i64 4, ptr %sn76) #9, !dbg !2417
  tail call void @llvm.dbg.declare(metadata ptr %sn76, metadata !2224, metadata !DIExpression()), !dbg !2418
  %68 = load ptr, ptr %map, align 8, !dbg !2419, !tbaa !1067
  %69 = load i32, ptr %n, align 4, !dbg !2420, !tbaa !1072
  %idxprom77 = zext i32 %69 to i64, !dbg !2419
  %arrayidx78 = getelementptr inbounds i32, ptr %68, i64 %idxprom77, !dbg !2419
  %70 = load i32, ptr %arrayidx78, align 4, !dbg !2419, !tbaa !1072
  store i32 %70, ptr %sn76, align 4, !dbg !2418, !tbaa !1072
  call void @llvm.lifetime.start.p0(i64 4, ptr %refp) #9, !dbg !2421
  tail call void @llvm.dbg.declare(metadata ptr %refp, metadata !2228, metadata !DIExpression()), !dbg !2422
  %71 = load i32, ptr %sn76, align 4, !dbg !2423, !tbaa !1072
  %and79 = and i32 %71, 65535, !dbg !2423
  store i32 %and79, ptr %refp, align 4, !dbg !2422, !tbaa !1072
  call void @llvm.lifetime.start.p0(i64 8, ptr %ir80) #9, !dbg !2424
  tail call void @llvm.dbg.declare(metadata ptr %ir80, metadata !2229, metadata !DIExpression()), !dbg !2425
  %72 = load ptr, ptr %T.addr, align 8, !dbg !2426, !tbaa !1067
  %ir81 = getelementptr inbounds %struct.GCtrace, ptr %72, i32 0, i32 7, !dbg !2427
  %73 = load ptr, ptr %ir81, align 8, !dbg !2427, !tbaa !2072
  %74 = load i32, ptr %refp, align 4, !dbg !2428, !tbaa !1072
  %idxprom82 = zext i32 %74 to i64, !dbg !2426
  %arrayidx83 = getelementptr inbounds %union.IRIns, ptr %73, i64 %idxprom82, !dbg !2426
  store ptr %arrayidx83, ptr %ir80, align 8, !dbg !2425, !tbaa !1067
  %75 = load ptr, ptr %ir80, align 8, !dbg !2429, !tbaa !1067
  %r = getelementptr inbounds %struct.anon.0, ptr %75, i32 0, i32 3, !dbg !2429
  %76 = load i8, ptr %r, align 2, !dbg !2429, !tbaa !1280
  %conv84 = zext i8 %76 to i32, !dbg !2429
  %and85 = and i32 %conv84, 255, !dbg !2429
  %cmp86 = icmp eq i32 %and85, 253, !dbg !2430
  br i1 %cmp86, label %if.then88, label %if.else153, !dbg !2431

if.then88:                                        ; preds = %for.body75
  %77 = load ptr, ptr %J.addr, align 8, !dbg !2432, !tbaa !1067
  %slot89 = getelementptr inbounds %struct.jit_State, ptr %77, i32 0, i32 41, !dbg !2434
  %78 = load i32, ptr %sn76, align 4, !dbg !2435, !tbaa !1072
  %shr90 = lshr i32 %78, 24, !dbg !2435
  %idxprom91 = zext i32 %shr90 to i64, !dbg !2432
  %arrayidx92 = getelementptr inbounds [257 x i32], ptr %slot89, i64 0, i64 %idxprom91, !dbg !2432
  %79 = load i32, ptr %arrayidx92, align 4, !dbg !2432, !tbaa !1072
  %80 = load i32, ptr %sn76, align 4, !dbg !2436, !tbaa !1072
  %shr93 = lshr i32 %80, 24, !dbg !2436
  %cmp94 = icmp ne i32 %79, %shr93, !dbg !2437
  br i1 %cmp94, label %if.then96, label %if.end97, !dbg !2438

if.then96:                                        ; preds = %if.then88
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2439

if.end97:                                         ; preds = %if.then88
  store i32 1, ptr %pass23, align 4, !dbg !2440, !tbaa !1072
  %81 = load ptr, ptr %ir80, align 8, !dbg !2441, !tbaa !1067
  %op1 = getelementptr inbounds %struct.anon, ptr %81, i32 0, i32 0, !dbg !2443
  %82 = load i16, ptr %op1, align 8, !dbg !2443, !tbaa !1280
  %conv98 = zext i16 %82 to i32, !dbg !2441
  %83 = load ptr, ptr %T.addr, align 8, !dbg !2444, !tbaa !1067
  %nk = getelementptr inbounds %struct.GCtrace, ptr %83, i32 0, i32 8, !dbg !2445
  %84 = load i32, ptr %nk, align 8, !dbg !2445, !tbaa !2446
  %cmp99 = icmp uge i32 %conv98, %84, !dbg !2447
  br i1 %cmp99, label %if.then101, label %if.end105, !dbg !2448

if.then101:                                       ; preds = %if.end97
  %85 = load ptr, ptr %J.addr, align 8, !dbg !2449, !tbaa !1067
  %86 = load ptr, ptr %T.addr, align 8, !dbg !2450, !tbaa !1067
  %87 = load ptr, ptr %map, align 8, !dbg !2451, !tbaa !1067
  %88 = load i32, ptr %nent, align 4, !dbg !2452, !tbaa !1072
  %89 = load i64, ptr %seen, align 8, !dbg !2453, !tbaa !1971
  %90 = load ptr, ptr %ir80, align 8, !dbg !2454, !tbaa !1067
  %op1102 = getelementptr inbounds %struct.anon, ptr %90, i32 0, i32 0, !dbg !2455
  %91 = load i16, ptr %op1102, align 8, !dbg !2455, !tbaa !1280
  %conv103 = zext i16 %91 to i32, !dbg !2454
  %call104 = call i32 @snap_pref(ptr noundef %85, ptr noundef %86, ptr noundef %87, i32 noundef %88, i64 noundef %89, i32 noundef %conv103), !dbg !2456
  br label %if.end105, !dbg !2456

if.end105:                                        ; preds = %if.then101, %if.end97
  %92 = load ptr, ptr %ir80, align 8, !dbg !2457, !tbaa !1067
  %op2106 = getelementptr inbounds %struct.anon, ptr %92, i32 0, i32 1, !dbg !2459
  %93 = load i16, ptr %op2106, align 2, !dbg !2459, !tbaa !1280
  %conv107 = zext i16 %93 to i32, !dbg !2457
  %94 = load ptr, ptr %T.addr, align 8, !dbg !2460, !tbaa !1067
  %nk108 = getelementptr inbounds %struct.GCtrace, ptr %94, i32 0, i32 8, !dbg !2461
  %95 = load i32, ptr %nk108, align 8, !dbg !2461, !tbaa !2446
  %cmp109 = icmp uge i32 %conv107, %95, !dbg !2462
  br i1 %cmp109, label %if.then111, label %if.end115, !dbg !2463

if.then111:                                       ; preds = %if.end105
  %96 = load ptr, ptr %J.addr, align 8, !dbg !2464, !tbaa !1067
  %97 = load ptr, ptr %T.addr, align 8, !dbg !2465, !tbaa !1067
  %98 = load ptr, ptr %map, align 8, !dbg !2466, !tbaa !1067
  %99 = load i32, ptr %nent, align 4, !dbg !2467, !tbaa !1072
  %100 = load i64, ptr %seen, align 8, !dbg !2468, !tbaa !1971
  %101 = load ptr, ptr %ir80, align 8, !dbg !2469, !tbaa !1067
  %op2112 = getelementptr inbounds %struct.anon, ptr %101, i32 0, i32 1, !dbg !2470
  %102 = load i16, ptr %op2112, align 2, !dbg !2470, !tbaa !1280
  %conv113 = zext i16 %102 to i32, !dbg !2469
  %call114 = call i32 @snap_pref(ptr noundef %96, ptr noundef %97, ptr noundef %98, i32 noundef %99, i64 noundef %100, i32 noundef %conv113), !dbg !2471
  br label %if.end115, !dbg !2471

if.end115:                                        ; preds = %if.then111, %if.end105
  %103 = load ptr, ptr %ir80, align 8, !dbg !2472, !tbaa !1067
  %o116 = getelementptr inbounds %struct.anon.0, ptr %103, i32 0, i32 2, !dbg !2473
  %104 = load i8, ptr %o116, align 1, !dbg !2473, !tbaa !1280
  %conv117 = zext i8 %104 to i32, !dbg !2472
  %cmp118 = icmp eq i32 %conv117, 83, !dbg !2474
  br i1 %cmp118, label %if.then120, label %if.else121, !dbg !2475

if.then120:                                       ; preds = %if.end115
  br label %if.end152, !dbg !2476

if.else121:                                       ; preds = %if.end115
  call void @llvm.lifetime.start.p0(i64 8, ptr %irs) #9, !dbg !2478
  tail call void @llvm.dbg.declare(metadata ptr %irs, metadata !2230, metadata !DIExpression()), !dbg !2479
  %105 = load ptr, ptr %ir80, align 8, !dbg !2480, !tbaa !1067
  %add.ptr = getelementptr inbounds %union.IRIns, ptr %105, i64 1, !dbg !2482
  store ptr %add.ptr, ptr %irs, align 8, !dbg !2483, !tbaa !1067
  br label %for.cond122, !dbg !2484

for.cond122:                                      ; preds = %for.inc150, %if.else121
  %106 = load ptr, ptr %irs, align 8, !dbg !2485, !tbaa !1067
  %107 = load ptr, ptr %irlast, align 8, !dbg !2487, !tbaa !1067
  %cmp123 = icmp ult ptr %106, %107, !dbg !2488
  br i1 %cmp123, label %for.body125, label %for.end151, !dbg !2489

for.body125:                                      ; preds = %for.cond122
  %108 = load ptr, ptr %irs, align 8, !dbg !2490, !tbaa !1067
  %r126 = getelementptr inbounds %struct.anon.0, ptr %108, i32 0, i32 3, !dbg !2492
  %109 = load i8, ptr %r126, align 2, !dbg !2492, !tbaa !1280
  %conv127 = zext i8 %109 to i32, !dbg !2490
  %cmp128 = icmp eq i32 %conv127, 254, !dbg !2493
  br i1 %cmp128, label %land.lhs.true130, label %if.end149, !dbg !2494

land.lhs.true130:                                 ; preds = %for.body125
  %110 = load ptr, ptr %T.addr, align 8, !dbg !2495, !tbaa !1067
  %111 = load ptr, ptr %ir80, align 8, !dbg !2496, !tbaa !1067
  %112 = load ptr, ptr %irs, align 8, !dbg !2497, !tbaa !1067
  %call131 = call i32 @snap_sunk_store(ptr noundef %110, ptr noundef %111, ptr noundef %112), !dbg !2498
  %tobool132 = icmp ne i32 %call131, 0, !dbg !2498
  br i1 %tobool132, label %if.then133, label %if.end149, !dbg !2499

if.then133:                                       ; preds = %land.lhs.true130
  %113 = load ptr, ptr %J.addr, align 8, !dbg !2500, !tbaa !1067
  %114 = load ptr, ptr %T.addr, align 8, !dbg !2503, !tbaa !1067
  %115 = load ptr, ptr %map, align 8, !dbg !2504, !tbaa !1067
  %116 = load i32, ptr %nent, align 4, !dbg !2505, !tbaa !1072
  %117 = load i64, ptr %seen, align 8, !dbg !2506, !tbaa !1971
  %118 = load ptr, ptr %irs, align 8, !dbg !2507, !tbaa !1067
  %op2134 = getelementptr inbounds %struct.anon, ptr %118, i32 0, i32 1, !dbg !2508
  %119 = load i16, ptr %op2134, align 2, !dbg !2508, !tbaa !1280
  %conv135 = zext i16 %119 to i32, !dbg !2507
  %call136 = call i32 @snap_pref(ptr noundef %113, ptr noundef %114, ptr noundef %115, i32 noundef %116, i64 noundef %117, i32 noundef %conv135), !dbg !2509
  %cmp137 = icmp eq i32 %call136, 0, !dbg !2510
  br i1 %cmp137, label %if.then139, label %if.else147, !dbg !2511

if.then139:                                       ; preds = %if.then133
  %120 = load ptr, ptr %J.addr, align 8, !dbg !2512, !tbaa !1067
  %121 = load ptr, ptr %T.addr, align 8, !dbg !2513, !tbaa !1067
  %122 = load ptr, ptr %map, align 8, !dbg !2514, !tbaa !1067
  %123 = load i32, ptr %nent, align 4, !dbg !2515, !tbaa !1072
  %124 = load i64, ptr %seen, align 8, !dbg !2516, !tbaa !1971
  %125 = load ptr, ptr %T.addr, align 8, !dbg !2517, !tbaa !1067
  %ir140 = getelementptr inbounds %struct.GCtrace, ptr %125, i32 0, i32 7, !dbg !2518
  %126 = load ptr, ptr %ir140, align 8, !dbg !2518, !tbaa !2072
  %127 = load ptr, ptr %irs, align 8, !dbg !2519, !tbaa !1067
  %op2141 = getelementptr inbounds %struct.anon, ptr %127, i32 0, i32 1, !dbg !2520
  %128 = load i16, ptr %op2141, align 2, !dbg !2520, !tbaa !1280
  %idxprom142 = zext i16 %128 to i64, !dbg !2517
  %arrayidx143 = getelementptr inbounds %union.IRIns, ptr %126, i64 %idxprom142, !dbg !2517
  %op1144 = getelementptr inbounds %struct.anon, ptr %arrayidx143, i32 0, i32 0, !dbg !2521
  %129 = load i16, ptr %op1144, align 8, !dbg !2521, !tbaa !1280
  %conv145 = zext i16 %129 to i32, !dbg !2517
  %call146 = call i32 @snap_pref(ptr noundef %120, ptr noundef %121, ptr noundef %122, i32 noundef %123, i64 noundef %124, i32 noundef %conv145), !dbg !2522
  br label %if.end148, !dbg !2522

if.else147:                                       ; preds = %if.then133
  br label %if.end148

if.end148:                                        ; preds = %if.else147, %if.then139
  br label %if.end149, !dbg !2523

if.end149:                                        ; preds = %if.end148, %land.lhs.true130, %for.body125
  br label %for.inc150, !dbg !2524

for.inc150:                                       ; preds = %if.end149
  %130 = load ptr, ptr %irs, align 8, !dbg !2525, !tbaa !1067
  %incdec.ptr = getelementptr inbounds %union.IRIns, ptr %130, i32 1, !dbg !2525
  store ptr %incdec.ptr, ptr %irs, align 8, !dbg !2525, !tbaa !1067
  br label %for.cond122, !dbg !2526, !llvm.loop !2527

for.end151:                                       ; preds = %for.cond122
  call void @llvm.lifetime.end.p0(i64 8, ptr %irs) #9, !dbg !2529
  br label %if.end152

if.end152:                                        ; preds = %for.end151, %if.then120
  br label %if.end171, !dbg !2530

if.else153:                                       ; preds = %for.body75
  %131 = load i32, ptr %refp, align 4, !dbg !2531, !tbaa !1072
  %cmp154 = icmp ult i32 %131, 32768, !dbg !2531
  br i1 %cmp154, label %if.end170, label %land.lhs.true156, !dbg !2533

land.lhs.true156:                                 ; preds = %if.else153
  %132 = load ptr, ptr %ir80, align 8, !dbg !2534, !tbaa !1067
  %prev157 = getelementptr inbounds %struct.anon, ptr %132, i32 0, i32 3, !dbg !2534
  %133 = load i16, ptr %prev157, align 2, !dbg !2534, !tbaa !1280
  %conv158 = zext i16 %133 to i32, !dbg !2534
  %and159 = and i32 %conv158, -128, !dbg !2534
  %cmp160 = icmp ne i32 %and159, 128, !dbg !2534
  br i1 %cmp160, label %if.end170, label %if.then162, !dbg !2535

if.then162:                                       ; preds = %land.lhs.true156
  %134 = load ptr, ptr %J.addr, align 8, !dbg !2536, !tbaa !1067
  %135 = load ptr, ptr %T.addr, align 8, !dbg !2538, !tbaa !1067
  %136 = load ptr, ptr %map, align 8, !dbg !2539, !tbaa !1067
  %137 = load i32, ptr %nent, align 4, !dbg !2540, !tbaa !1072
  %138 = load i64, ptr %seen, align 8, !dbg !2541, !tbaa !1971
  %139 = load ptr, ptr %ir80, align 8, !dbg !2542, !tbaa !1067
  %op1163 = getelementptr inbounds %struct.anon, ptr %139, i32 0, i32 0, !dbg !2543
  %140 = load i16, ptr %op1163, align 8, !dbg !2543, !tbaa !1280
  %conv164 = zext i16 %140 to i32, !dbg !2542
  %call165 = call i32 @snap_pref(ptr noundef %134, ptr noundef %135, ptr noundef %136, i32 noundef %137, i64 noundef %138, i32 noundef %conv164), !dbg !2544
  %141 = load ptr, ptr %J.addr, align 8, !dbg !2545, !tbaa !1067
  %slot166 = getelementptr inbounds %struct.jit_State, ptr %141, i32 0, i32 41, !dbg !2546
  %142 = load i32, ptr %sn76, align 4, !dbg !2547, !tbaa !1072
  %shr167 = lshr i32 %142, 24, !dbg !2547
  %idxprom168 = zext i32 %shr167 to i64, !dbg !2545
  %arrayidx169 = getelementptr inbounds [257 x i32], ptr %slot166, i64 0, i64 %idxprom168, !dbg !2545
  store i32 %call165, ptr %arrayidx169, align 4, !dbg !2548, !tbaa !1072
  br label %if.end170, !dbg !2549

if.end170:                                        ; preds = %if.then162, %land.lhs.true156, %if.else153
  br label %if.end171

if.end171:                                        ; preds = %if.end170, %if.end152
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2550
  br label %cleanup, !dbg !2550

cleanup:                                          ; preds = %if.end171, %if.then96
  call void @llvm.lifetime.end.p0(i64 8, ptr %ir80) #9, !dbg !2550
  call void @llvm.lifetime.end.p0(i64 4, ptr %refp) #9, !dbg !2550
  call void @llvm.lifetime.end.p0(i64 4, ptr %sn76) #9, !dbg !2550
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 8, label %for.inc174
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc174, !dbg !2551

for.inc174:                                       ; preds = %cleanup.cont, %cleanup
  %143 = load i32, ptr %n, align 4, !dbg !2552, !tbaa !1072
  %inc175 = add i32 %143, 1, !dbg !2552
  store i32 %inc175, ptr %n, align 4, !dbg !2552, !tbaa !1072
  br label %for.cond72, !dbg !2553, !llvm.loop !2554

for.end176:                                       ; preds = %for.cond72
  store i32 0, ptr %n, align 4, !dbg !2556, !tbaa !1072
  br label %for.cond177, !dbg !2557

for.cond177:                                      ; preds = %for.inc379, %for.end176
  %144 = load i32, ptr %pass23, align 4, !dbg !2558, !tbaa !1072
  %tobool178 = icmp ne i32 %144, 0, !dbg !2558
  br i1 %tobool178, label %land.rhs179, label %land.end182, !dbg !2559

land.rhs179:                                      ; preds = %for.cond177
  %145 = load i32, ptr %n, align 4, !dbg !2560, !tbaa !1072
  %146 = load i32, ptr %nent, align 4, !dbg !2561, !tbaa !1072
  %cmp180 = icmp ult i32 %145, %146, !dbg !2562
  br label %land.end182

land.end182:                                      ; preds = %land.rhs179, %for.cond177
  %147 = phi i1 [ false, %for.cond177 ], [ %cmp180, %land.rhs179 ], !dbg !2563
  br i1 %147, label %for.body184, label %for.end381, !dbg !2564

for.body184:                                      ; preds = %land.end182
  call void @llvm.lifetime.start.p0(i64 4, ptr %sn185) #9, !dbg !2565
  tail call void @llvm.dbg.declare(metadata ptr %sn185, metadata !2235, metadata !DIExpression()), !dbg !2566
  %148 = load ptr, ptr %map, align 8, !dbg !2567, !tbaa !1067
  %149 = load i32, ptr %n, align 4, !dbg !2568, !tbaa !1072
  %idxprom186 = zext i32 %149 to i64, !dbg !2567
  %arrayidx187 = getelementptr inbounds i32, ptr %148, i64 %idxprom186, !dbg !2567
  %150 = load i32, ptr %arrayidx187, align 4, !dbg !2567, !tbaa !1072
  store i32 %150, ptr %sn185, align 4, !dbg !2566, !tbaa !1072
  call void @llvm.lifetime.start.p0(i64 4, ptr %refp188) #9, !dbg !2569
  tail call void @llvm.dbg.declare(metadata ptr %refp188, metadata !2239, metadata !DIExpression()), !dbg !2570
  %151 = load i32, ptr %sn185, align 4, !dbg !2571, !tbaa !1072
  %and189 = and i32 %151, 65535, !dbg !2571
  store i32 %and189, ptr %refp188, align 4, !dbg !2570, !tbaa !1072
  call void @llvm.lifetime.start.p0(i64 8, ptr %ir190) #9, !dbg !2572
  tail call void @llvm.dbg.declare(metadata ptr %ir190, metadata !2240, metadata !DIExpression()), !dbg !2573
  %152 = load ptr, ptr %T.addr, align 8, !dbg !2574, !tbaa !1067
  %ir191 = getelementptr inbounds %struct.GCtrace, ptr %152, i32 0, i32 7, !dbg !2575
  %153 = load ptr, ptr %ir191, align 8, !dbg !2575, !tbaa !2072
  %154 = load i32, ptr %refp188, align 4, !dbg !2576, !tbaa !1072
  %idxprom192 = zext i32 %154 to i64, !dbg !2574
  %arrayidx193 = getelementptr inbounds %union.IRIns, ptr %153, i64 %idxprom192, !dbg !2574
  store ptr %arrayidx193, ptr %ir190, align 8, !dbg !2573, !tbaa !1067
  %155 = load ptr, ptr %ir190, align 8, !dbg !2577, !tbaa !1067
  %r194 = getelementptr inbounds %struct.anon.0, ptr %155, i32 0, i32 3, !dbg !2577
  %156 = load i8, ptr %r194, align 2, !dbg !2577, !tbaa !1280
  %conv195 = zext i8 %156 to i32, !dbg !2577
  %and196 = and i32 %conv195, 255, !dbg !2577
  %cmp197 = icmp eq i32 %and196, 253, !dbg !2578
  br i1 %cmp197, label %if.then199, label %if.end373, !dbg !2579

if.then199:                                       ; preds = %for.body184
  call void @llvm.lifetime.start.p0(i64 4, ptr %op1200) #9, !dbg !2580
  tail call void @llvm.dbg.declare(metadata ptr %op1200, metadata !2241, metadata !DIExpression()), !dbg !2581
  call void @llvm.lifetime.start.p0(i64 4, ptr %op2201) #9, !dbg !2580
  tail call void @llvm.dbg.declare(metadata ptr %op2201, metadata !2244, metadata !DIExpression()), !dbg !2582
  %157 = load ptr, ptr %J.addr, align 8, !dbg !2583, !tbaa !1067
  %slot202 = getelementptr inbounds %struct.jit_State, ptr %157, i32 0, i32 41, !dbg !2585
  %158 = load i32, ptr %sn185, align 4, !dbg !2586, !tbaa !1072
  %shr203 = lshr i32 %158, 24, !dbg !2586
  %idxprom204 = zext i32 %shr203 to i64, !dbg !2583
  %arrayidx205 = getelementptr inbounds [257 x i32], ptr %slot202, i64 0, i64 %idxprom204, !dbg !2583
  %159 = load i32, ptr %arrayidx205, align 4, !dbg !2583, !tbaa !1072
  %160 = load i32, ptr %sn185, align 4, !dbg !2587, !tbaa !1072
  %shr206 = lshr i32 %160, 24, !dbg !2587
  %cmp207 = icmp ne i32 %159, %shr206, !dbg !2588
  br i1 %cmp207, label %if.then209, label %if.end221, !dbg !2589

if.then209:                                       ; preds = %if.then199
  %161 = load ptr, ptr %J.addr, align 8, !dbg !2590, !tbaa !1067
  %slot210 = getelementptr inbounds %struct.jit_State, ptr %161, i32 0, i32 41, !dbg !2592
  %162 = load ptr, ptr %J.addr, align 8, !dbg !2593, !tbaa !1067
  %slot211 = getelementptr inbounds %struct.jit_State, ptr %162, i32 0, i32 41, !dbg !2594
  %163 = load i32, ptr %sn185, align 4, !dbg !2595, !tbaa !1072
  %shr212 = lshr i32 %163, 24, !dbg !2595
  %idxprom213 = zext i32 %shr212 to i64, !dbg !2593
  %arrayidx214 = getelementptr inbounds [257 x i32], ptr %slot211, i64 0, i64 %idxprom213, !dbg !2593
  %164 = load i32, ptr %arrayidx214, align 4, !dbg !2593, !tbaa !1072
  %idxprom215 = zext i32 %164 to i64, !dbg !2590
  %arrayidx216 = getelementptr inbounds [257 x i32], ptr %slot210, i64 0, i64 %idxprom215, !dbg !2590
  %165 = load i32, ptr %arrayidx216, align 4, !dbg !2590, !tbaa !1072
  %166 = load ptr, ptr %J.addr, align 8, !dbg !2596, !tbaa !1067
  %slot217 = getelementptr inbounds %struct.jit_State, ptr %166, i32 0, i32 41, !dbg !2597
  %167 = load i32, ptr %sn185, align 4, !dbg !2598, !tbaa !1072
  %shr218 = lshr i32 %167, 24, !dbg !2598
  %idxprom219 = zext i32 %shr218 to i64, !dbg !2596
  %arrayidx220 = getelementptr inbounds [257 x i32], ptr %slot217, i64 0, i64 %idxprom219, !dbg !2596
  store i32 %165, ptr %arrayidx220, align 4, !dbg !2599, !tbaa !1072
  store i32 14, ptr %cleanup.dest.slot, align 4
  br label %cleanup369, !dbg !2600

if.end221:                                        ; preds = %if.then199
  %168 = load ptr, ptr %ir190, align 8, !dbg !2601, !tbaa !1067
  %op1222 = getelementptr inbounds %struct.anon, ptr %168, i32 0, i32 0, !dbg !2602
  %169 = load i16, ptr %op1222, align 8, !dbg !2602, !tbaa !1280
  %conv223 = zext i16 %169 to i32, !dbg !2601
  store i32 %conv223, ptr %op1200, align 4, !dbg !2603, !tbaa !1072
  %170 = load i32, ptr %op1200, align 4, !dbg !2604, !tbaa !1072
  %171 = load ptr, ptr %T.addr, align 8, !dbg !2606, !tbaa !1067
  %nk224 = getelementptr inbounds %struct.GCtrace, ptr %171, i32 0, i32 8, !dbg !2607
  %172 = load i32, ptr %nk224, align 8, !dbg !2607, !tbaa !2446
  %cmp225 = icmp uge i32 %170, %172, !dbg !2608
  br i1 %cmp225, label %if.then227, label %if.end229, !dbg !2609

if.then227:                                       ; preds = %if.end221
  %173 = load ptr, ptr %J.addr, align 8, !dbg !2610, !tbaa !1067
  %174 = load ptr, ptr %T.addr, align 8, !dbg !2611, !tbaa !1067
  %175 = load ptr, ptr %map, align 8, !dbg !2612, !tbaa !1067
  %176 = load i32, ptr %nent, align 4, !dbg !2613, !tbaa !1072
  %177 = load i64, ptr %seen, align 8, !dbg !2614, !tbaa !1971
  %178 = load i32, ptr %op1200, align 4, !dbg !2615, !tbaa !1072
  %call228 = call i32 @snap_pref(ptr noundef %173, ptr noundef %174, ptr noundef %175, i32 noundef %176, i64 noundef %177, i32 noundef %178), !dbg !2616
  store i32 %call228, ptr %op1200, align 4, !dbg !2617, !tbaa !1072
  br label %if.end229, !dbg !2618

if.end229:                                        ; preds = %if.then227, %if.end221
  %179 = load ptr, ptr %ir190, align 8, !dbg !2619, !tbaa !1067
  %op2230 = getelementptr inbounds %struct.anon, ptr %179, i32 0, i32 1, !dbg !2620
  %180 = load i16, ptr %op2230, align 2, !dbg !2620, !tbaa !1280
  %conv231 = zext i16 %180 to i32, !dbg !2619
  store i32 %conv231, ptr %op2201, align 4, !dbg !2621, !tbaa !1072
  %181 = load i32, ptr %op2201, align 4, !dbg !2622, !tbaa !1072
  %182 = load ptr, ptr %T.addr, align 8, !dbg !2624, !tbaa !1067
  %nk232 = getelementptr inbounds %struct.GCtrace, ptr %182, i32 0, i32 8, !dbg !2625
  %183 = load i32, ptr %nk232, align 8, !dbg !2625, !tbaa !2446
  %cmp233 = icmp uge i32 %181, %183, !dbg !2626
  br i1 %cmp233, label %if.then235, label %if.end237, !dbg !2627

if.then235:                                       ; preds = %if.end229
  %184 = load ptr, ptr %J.addr, align 8, !dbg !2628, !tbaa !1067
  %185 = load ptr, ptr %T.addr, align 8, !dbg !2629, !tbaa !1067
  %186 = load ptr, ptr %map, align 8, !dbg !2630, !tbaa !1067
  %187 = load i32, ptr %nent, align 4, !dbg !2631, !tbaa !1072
  %188 = load i64, ptr %seen, align 8, !dbg !2632, !tbaa !1971
  %189 = load i32, ptr %op2201, align 4, !dbg !2633, !tbaa !1072
  %call236 = call i32 @snap_pref(ptr noundef %184, ptr noundef %185, ptr noundef %186, i32 noundef %187, i64 noundef %188, i32 noundef %189), !dbg !2634
  store i32 %call236, ptr %op2201, align 4, !dbg !2635, !tbaa !1072
  br label %if.end237, !dbg !2636

if.end237:                                        ; preds = %if.then235, %if.end229
  %190 = load ptr, ptr %ir190, align 8, !dbg !2637, !tbaa !1067
  %o238 = getelementptr inbounds %struct.anon.0, ptr %190, i32 0, i32 2, !dbg !2638
  %191 = load i8, ptr %o238, align 1, !dbg !2638, !tbaa !1280
  %conv239 = zext i8 %191 to i32, !dbg !2637
  %cmp240 = icmp eq i32 %conv239, 83, !dbg !2639
  br i1 %cmp240, label %if.then242, label %if.else253, !dbg !2640

if.then242:                                       ; preds = %if.end237
  %192 = load ptr, ptr %J.addr, align 8, !dbg !2641, !tbaa !1067
  %193 = load ptr, ptr %ir190, align 8, !dbg !2641, !tbaa !1067
  %ot = getelementptr inbounds %struct.anon, ptr %193, i32 0, i32 2, !dbg !2641
  %194 = load i16, ptr %ot, align 4, !dbg !2641, !tbaa !1280
  %conv243 = zext i16 %194 to i32, !dbg !2641
  %and244 = and i32 %conv243, -97, !dbg !2641
  %conv245 = trunc i32 %and244 to i16, !dbg !2641
  %195 = load i32, ptr %op1200, align 4, !dbg !2641, !tbaa !1072
  %conv246 = trunc i32 %195 to i16, !dbg !2641
  %196 = load i32, ptr %op2201, align 4, !dbg !2641, !tbaa !1072
  %conv247 = trunc i32 %196 to i16, !dbg !2641
  call void @lj_ir_set_(ptr noundef %192, i16 noundef zeroext %conv245, i16 noundef zeroext %conv246, i16 noundef zeroext %conv247), !dbg !2641
  %197 = load ptr, ptr %J.addr, align 8, !dbg !2641, !tbaa !1067
  %call248 = call i32 @lj_opt_fold(ptr noundef %197), !dbg !2641
  %198 = load ptr, ptr %J.addr, align 8, !dbg !2643, !tbaa !1067
  %slot249 = getelementptr inbounds %struct.jit_State, ptr %198, i32 0, i32 41, !dbg !2644
  %199 = load i32, ptr %sn185, align 4, !dbg !2645, !tbaa !1072
  %shr250 = lshr i32 %199, 24, !dbg !2645
  %idxprom251 = zext i32 %shr250 to i64, !dbg !2643
  %arrayidx252 = getelementptr inbounds [257 x i32], ptr %slot249, i64 0, i64 %idxprom251, !dbg !2643
  store i32 %call248, ptr %arrayidx252, align 4, !dbg !2646, !tbaa !1072
  br label %if.end368, !dbg !2647

if.else253:                                       ; preds = %if.end237
  call void @llvm.lifetime.start.p0(i64 8, ptr %irs254) #9, !dbg !2648
  tail call void @llvm.dbg.declare(metadata ptr %irs254, metadata !2245, metadata !DIExpression()), !dbg !2649
  call void @llvm.lifetime.start.p0(i64 4, ptr %tr255) #9, !dbg !2650
  tail call void @llvm.dbg.declare(metadata ptr %tr255, metadata !2248, metadata !DIExpression()), !dbg !2651
  %200 = load ptr, ptr %J.addr, align 8, !dbg !2652, !tbaa !1067
  %201 = load ptr, ptr %ir190, align 8, !dbg !2652, !tbaa !1067
  %ot256 = getelementptr inbounds %struct.anon, ptr %201, i32 0, i32 2, !dbg !2652
  %202 = load i16, ptr %ot256, align 4, !dbg !2652, !tbaa !1280
  %203 = load i32, ptr %op1200, align 4, !dbg !2652, !tbaa !1072
  %conv257 = trunc i32 %203 to i16, !dbg !2652
  %204 = load i32, ptr %op2201, align 4, !dbg !2652, !tbaa !1072
  %conv258 = trunc i32 %204 to i16, !dbg !2652
  call void @lj_ir_set_(ptr noundef %200, i16 noundef zeroext %202, i16 noundef zeroext %conv257, i16 noundef zeroext %conv258), !dbg !2652
  %205 = load ptr, ptr %J.addr, align 8, !dbg !2652, !tbaa !1067
  %call259 = call i32 @lj_opt_fold(ptr noundef %205), !dbg !2652
  store i32 %call259, ptr %tr255, align 4, !dbg !2651, !tbaa !1072
  %206 = load i32, ptr %tr255, align 4, !dbg !2653, !tbaa !1072
  %207 = load ptr, ptr %J.addr, align 8, !dbg !2654, !tbaa !1067
  %slot260 = getelementptr inbounds %struct.jit_State, ptr %207, i32 0, i32 41, !dbg !2655
  %208 = load i32, ptr %sn185, align 4, !dbg !2656, !tbaa !1072
  %shr261 = lshr i32 %208, 24, !dbg !2656
  %idxprom262 = zext i32 %shr261 to i64, !dbg !2654
  %arrayidx263 = getelementptr inbounds [257 x i32], ptr %slot260, i64 0, i64 %idxprom262, !dbg !2654
  store i32 %206, ptr %arrayidx263, align 4, !dbg !2657, !tbaa !1072
  %209 = load ptr, ptr %ir190, align 8, !dbg !2658, !tbaa !1067
  %add.ptr264 = getelementptr inbounds %union.IRIns, ptr %209, i64 1, !dbg !2659
  store ptr %add.ptr264, ptr %irs254, align 8, !dbg !2660, !tbaa !1067
  br label %for.cond265, !dbg !2661

for.cond265:                                      ; preds = %for.inc365, %if.else253
  %210 = load ptr, ptr %irs254, align 8, !dbg !2662, !tbaa !1067
  %211 = load ptr, ptr %irlast, align 8, !dbg !2663, !tbaa !1067
  %cmp266 = icmp ult ptr %210, %211, !dbg !2664
  br i1 %cmp266, label %for.body268, label %for.end367, !dbg !2665

for.body268:                                      ; preds = %for.cond265
  %212 = load ptr, ptr %irs254, align 8, !dbg !2666, !tbaa !1067
  %r269 = getelementptr inbounds %struct.anon.0, ptr %212, i32 0, i32 3, !dbg !2667
  %213 = load i8, ptr %r269, align 2, !dbg !2667, !tbaa !1280
  %conv270 = zext i8 %213 to i32, !dbg !2666
  %cmp271 = icmp eq i32 %conv270, 254, !dbg !2668
  br i1 %cmp271, label %land.lhs.true273, label %if.else351, !dbg !2669

land.lhs.true273:                                 ; preds = %for.body268
  %214 = load ptr, ptr %T.addr, align 8, !dbg !2670, !tbaa !1067
  %215 = load ptr, ptr %ir190, align 8, !dbg !2671, !tbaa !1067
  %216 = load ptr, ptr %irs254, align 8, !dbg !2672, !tbaa !1067
  %call274 = call i32 @snap_sunk_store(ptr noundef %214, ptr noundef %215, ptr noundef %216), !dbg !2673
  %tobool275 = icmp ne i32 %call274, 0, !dbg !2673
  br i1 %tobool275, label %if.then276, label %if.else351, !dbg !2674

if.then276:                                       ; preds = %land.lhs.true273
  call void @llvm.lifetime.start.p0(i64 8, ptr %irr) #9, !dbg !2675
  tail call void @llvm.dbg.declare(metadata ptr %irr, metadata !2249, metadata !DIExpression()), !dbg !2676
  %217 = load ptr, ptr %T.addr, align 8, !dbg !2677, !tbaa !1067
  %ir277 = getelementptr inbounds %struct.GCtrace, ptr %217, i32 0, i32 7, !dbg !2678
  %218 = load ptr, ptr %ir277, align 8, !dbg !2678, !tbaa !2072
  %219 = load ptr, ptr %irs254, align 8, !dbg !2679, !tbaa !1067
  %op1278 = getelementptr inbounds %struct.anon, ptr %219, i32 0, i32 0, !dbg !2680
  %220 = load i16, ptr %op1278, align 8, !dbg !2680, !tbaa !1280
  %idxprom279 = zext i16 %220 to i64, !dbg !2677
  %arrayidx280 = getelementptr inbounds %union.IRIns, ptr %218, i64 %idxprom279, !dbg !2677
  store ptr %arrayidx280, ptr %irr, align 8, !dbg !2676, !tbaa !1067
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #9, !dbg !2681
  tail call void @llvm.dbg.declare(metadata ptr %val, metadata !2254, metadata !DIExpression()), !dbg !2682
  call void @llvm.lifetime.start.p0(i64 4, ptr %key) #9, !dbg !2681
  tail call void @llvm.dbg.declare(metadata ptr %key, metadata !2255, metadata !DIExpression()), !dbg !2683
  %221 = load ptr, ptr %irr, align 8, !dbg !2684, !tbaa !1067
  %op2281 = getelementptr inbounds %struct.anon, ptr %221, i32 0, i32 1, !dbg !2685
  %222 = load i16, ptr %op2281, align 2, !dbg !2685, !tbaa !1280
  %conv282 = zext i16 %222 to i32, !dbg !2684
  store i32 %conv282, ptr %key, align 4, !dbg !2683, !tbaa !1072
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #9, !dbg !2681
  tail call void @llvm.dbg.declare(metadata ptr %tmp, metadata !2256, metadata !DIExpression()), !dbg !2686
  %223 = load i32, ptr %tr255, align 4, !dbg !2687, !tbaa !1072
  store i32 %223, ptr %tmp, align 4, !dbg !2686, !tbaa !1072
  %224 = load ptr, ptr %irr, align 8, !dbg !2688, !tbaa !1067
  %o283 = getelementptr inbounds %struct.anon.0, ptr %224, i32 0, i32 2, !dbg !2689
  %225 = load i8, ptr %o283, align 1, !dbg !2689, !tbaa !1280
  %conv284 = zext i8 %225 to i32, !dbg !2688
  %cmp285 = icmp ne i32 %conv284, 63, !dbg !2690
  br i1 %cmp285, label %if.then287, label %if.end325, !dbg !2691

if.then287:                                       ; preds = %if.then276
  call void @llvm.lifetime.start.p0(i64 8, ptr %irk) #9, !dbg !2692
  tail call void @llvm.dbg.declare(metadata ptr %irk, metadata !2257, metadata !DIExpression()), !dbg !2693
  %226 = load ptr, ptr %T.addr, align 8, !dbg !2694, !tbaa !1067
  %ir288 = getelementptr inbounds %struct.GCtrace, ptr %226, i32 0, i32 7, !dbg !2695
  %227 = load ptr, ptr %ir288, align 8, !dbg !2695, !tbaa !2072
  %228 = load i32, ptr %key, align 4, !dbg !2696, !tbaa !1072
  %idxprom289 = zext i32 %228 to i64, !dbg !2694
  %arrayidx290 = getelementptr inbounds %union.IRIns, ptr %227, i64 %idxprom289, !dbg !2694
  store ptr %arrayidx290, ptr %irk, align 8, !dbg !2693, !tbaa !1067
  %229 = load ptr, ptr %irr, align 8, !dbg !2697, !tbaa !1067
  %o291 = getelementptr inbounds %struct.anon.0, ptr %229, i32 0, i32 2, !dbg !2699
  %230 = load i8, ptr %o291, align 1, !dbg !2699, !tbaa !1280
  %conv292 = zext i8 %230 to i32, !dbg !2697
  %cmp293 = icmp eq i32 %conv292, 58, !dbg !2700
  br i1 %cmp293, label %if.then295, label %if.else304, !dbg !2701

if.then295:                                       ; preds = %if.then287
  %231 = load ptr, ptr %J.addr, align 8, !dbg !2702, !tbaa !1067
  %232 = load ptr, ptr %J.addr, align 8, !dbg !2703, !tbaa !1067
  %233 = load ptr, ptr %T.addr, align 8, !dbg !2704, !tbaa !1067
  %ir296 = getelementptr inbounds %struct.GCtrace, ptr %233, i32 0, i32 7, !dbg !2705
  %234 = load ptr, ptr %ir296, align 8, !dbg !2705, !tbaa !2072
  %235 = load ptr, ptr %irk, align 8, !dbg !2706, !tbaa !1067
  %op1297 = getelementptr inbounds %struct.anon, ptr %235, i32 0, i32 0, !dbg !2707
  %236 = load i16, ptr %op1297, align 8, !dbg !2707, !tbaa !1280
  %idxprom298 = zext i16 %236 to i64, !dbg !2704
  %arrayidx299 = getelementptr inbounds %union.IRIns, ptr %234, i64 %idxprom298, !dbg !2704
  %call300 = call i32 @snap_replay_const(ptr noundef %232, ptr noundef %arrayidx299), !dbg !2708
  %237 = load ptr, ptr %irk, align 8, !dbg !2709, !tbaa !1067
  %op2301 = getelementptr inbounds %struct.anon, ptr %237, i32 0, i32 1, !dbg !2710
  %238 = load i16, ptr %op2301, align 2, !dbg !2710, !tbaa !1280
  %conv302 = zext i16 %238 to i32, !dbg !2709
  %call303 = call i32 @lj_ir_kslot(ptr noundef %231, i32 noundef %call300, i32 noundef %conv302), !dbg !2711
  store i32 %call303, ptr %key, align 4, !dbg !2712, !tbaa !1072
  br label %if.end306, !dbg !2713

if.else304:                                       ; preds = %if.then287
  %239 = load ptr, ptr %J.addr, align 8, !dbg !2714, !tbaa !1067
  %240 = load ptr, ptr %irk, align 8, !dbg !2715, !tbaa !1067
  %call305 = call i32 @snap_replay_const(ptr noundef %239, ptr noundef %240), !dbg !2716
  store i32 %call305, ptr %key, align 4, !dbg !2717, !tbaa !1072
  br label %if.end306

if.end306:                                        ; preds = %if.else304, %if.then295
  %241 = load ptr, ptr %irr, align 8, !dbg !2718, !tbaa !1067
  %o307 = getelementptr inbounds %struct.anon.0, ptr %241, i32 0, i32 2, !dbg !2719
  %242 = load i8, ptr %o307, align 1, !dbg !2719, !tbaa !1280
  %conv308 = zext i8 %242 to i32, !dbg !2718
  %cmp309 = icmp eq i32 %conv308, 58, !dbg !2720
  br i1 %cmp309, label %if.then315, label %lor.lhs.false, !dbg !2721

lor.lhs.false:                                    ; preds = %if.end306
  %243 = load ptr, ptr %irr, align 8, !dbg !2722, !tbaa !1067
  %o311 = getelementptr inbounds %struct.anon.0, ptr %243, i32 0, i32 2, !dbg !2723
  %244 = load i8, ptr %o311, align 1, !dbg !2723, !tbaa !1280
  %conv312 = zext i8 %244 to i32, !dbg !2722
  %cmp313 = icmp eq i32 %conv312, 57, !dbg !2724
  br i1 %cmp313, label %if.then315, label %if.end324, !dbg !2725

if.then315:                                       ; preds = %lor.lhs.false, %if.end306
  call void @llvm.lifetime.start.p0(i64 8, ptr %irf) #9, !dbg !2726
  tail call void @llvm.dbg.declare(metadata ptr %irf, metadata !2260, metadata !DIExpression()), !dbg !2727
  %245 = load ptr, ptr %T.addr, align 8, !dbg !2728, !tbaa !1067
  %ir316 = getelementptr inbounds %struct.GCtrace, ptr %245, i32 0, i32 7, !dbg !2729
  %246 = load ptr, ptr %ir316, align 8, !dbg !2729, !tbaa !2072
  %247 = load ptr, ptr %irr, align 8, !dbg !2730, !tbaa !1067
  %op1317 = getelementptr inbounds %struct.anon, ptr %247, i32 0, i32 0, !dbg !2731
  %248 = load i16, ptr %op1317, align 8, !dbg !2731, !tbaa !1280
  %idxprom318 = zext i16 %248 to i64, !dbg !2728
  %arrayidx319 = getelementptr inbounds %union.IRIns, ptr %246, i64 %idxprom318, !dbg !2728
  store ptr %arrayidx319, ptr %irf, align 8, !dbg !2727, !tbaa !1067
  %249 = load ptr, ptr %J.addr, align 8, !dbg !2732, !tbaa !1067
  %250 = load ptr, ptr %irf, align 8, !dbg !2732, !tbaa !1067
  %ot320 = getelementptr inbounds %struct.anon, ptr %250, i32 0, i32 2, !dbg !2732
  %251 = load i16, ptr %ot320, align 4, !dbg !2732, !tbaa !1280
  %252 = load i32, ptr %tmp, align 4, !dbg !2732, !tbaa !1072
  %conv321 = trunc i32 %252 to i16, !dbg !2732
  %253 = load ptr, ptr %irf, align 8, !dbg !2732, !tbaa !1067
  %op2322 = getelementptr inbounds %struct.anon, ptr %253, i32 0, i32 1, !dbg !2732
  %254 = load i16, ptr %op2322, align 2, !dbg !2732, !tbaa !1280
  call void @lj_ir_set_(ptr noundef %249, i16 noundef zeroext %251, i16 noundef zeroext %conv321, i16 noundef zeroext %254), !dbg !2732
  %255 = load ptr, ptr %J.addr, align 8, !dbg !2732, !tbaa !1067
  %call323 = call i32 @lj_opt_fold(ptr noundef %255), !dbg !2732
  store i32 %call323, ptr %tmp, align 4, !dbg !2733, !tbaa !1072
  call void @llvm.lifetime.end.p0(i64 8, ptr %irf) #9, !dbg !2734
  br label %if.end324, !dbg !2735

if.end324:                                        ; preds = %if.then315, %lor.lhs.false
  call void @llvm.lifetime.end.p0(i64 8, ptr %irk) #9, !dbg !2736
  br label %if.end325, !dbg !2737

if.end325:                                        ; preds = %if.end324, %if.then276
  %256 = load ptr, ptr %J.addr, align 8, !dbg !2738, !tbaa !1067
  %257 = load ptr, ptr %irr, align 8, !dbg !2738, !tbaa !1067
  %ot326 = getelementptr inbounds %struct.anon, ptr %257, i32 0, i32 2, !dbg !2738
  %258 = load i16, ptr %ot326, align 4, !dbg !2738, !tbaa !1280
  %259 = load i32, ptr %tmp, align 4, !dbg !2738, !tbaa !1072
  %conv327 = trunc i32 %259 to i16, !dbg !2738
  %260 = load i32, ptr %key, align 4, !dbg !2738, !tbaa !1072
  %conv328 = trunc i32 %260 to i16, !dbg !2738
  call void @lj_ir_set_(ptr noundef %256, i16 noundef zeroext %258, i16 noundef zeroext %conv327, i16 noundef zeroext %conv328), !dbg !2738
  %261 = load ptr, ptr %J.addr, align 8, !dbg !2738, !tbaa !1067
  %call329 = call i32 @lj_opt_fold(ptr noundef %261), !dbg !2738
  store i32 %call329, ptr %tmp, align 4, !dbg !2739, !tbaa !1072
  %262 = load ptr, ptr %J.addr, align 8, !dbg !2740, !tbaa !1067
  %263 = load ptr, ptr %T.addr, align 8, !dbg !2741, !tbaa !1067
  %264 = load ptr, ptr %map, align 8, !dbg !2742, !tbaa !1067
  %265 = load i32, ptr %nent, align 4, !dbg !2743, !tbaa !1072
  %266 = load i64, ptr %seen, align 8, !dbg !2744, !tbaa !1971
  %267 = load ptr, ptr %irs254, align 8, !dbg !2745, !tbaa !1067
  %op2330 = getelementptr inbounds %struct.anon, ptr %267, i32 0, i32 1, !dbg !2746
  %268 = load i16, ptr %op2330, align 2, !dbg !2746, !tbaa !1280
  %conv331 = zext i16 %268 to i32, !dbg !2745
  %call332 = call i32 @snap_pref(ptr noundef %262, ptr noundef %263, ptr noundef %264, i32 noundef %265, i64 noundef %266, i32 noundef %conv331), !dbg !2747
  store i32 %call332, ptr %val, align 4, !dbg !2748, !tbaa !1072
  %269 = load i32, ptr %val, align 4, !dbg !2749, !tbaa !1072
  %cmp333 = icmp eq i32 %269, 0, !dbg !2750
  br i1 %cmp333, label %if.then335, label %if.else345, !dbg !2751

if.then335:                                       ; preds = %if.end325
  call void @llvm.lifetime.start.p0(i64 8, ptr %irc) #9, !dbg !2752
  tail call void @llvm.dbg.declare(metadata ptr %irc, metadata !2263, metadata !DIExpression()), !dbg !2753
  %270 = load ptr, ptr %T.addr, align 8, !dbg !2754, !tbaa !1067
  %ir336 = getelementptr inbounds %struct.GCtrace, ptr %270, i32 0, i32 7, !dbg !2755
  %271 = load ptr, ptr %ir336, align 8, !dbg !2755, !tbaa !2072
  %272 = load ptr, ptr %irs254, align 8, !dbg !2756, !tbaa !1067
  %op2337 = getelementptr inbounds %struct.anon, ptr %272, i32 0, i32 1, !dbg !2757
  %273 = load i16, ptr %op2337, align 2, !dbg !2757, !tbaa !1280
  %idxprom338 = zext i16 %273 to i64, !dbg !2754
  %arrayidx339 = getelementptr inbounds %union.IRIns, ptr %271, i64 %idxprom338, !dbg !2754
  store ptr %arrayidx339, ptr %irc, align 8, !dbg !2753, !tbaa !1067
  %274 = load ptr, ptr %J.addr, align 8, !dbg !2758, !tbaa !1067
  %275 = load ptr, ptr %T.addr, align 8, !dbg !2759, !tbaa !1067
  %276 = load ptr, ptr %map, align 8, !dbg !2760, !tbaa !1067
  %277 = load i32, ptr %nent, align 4, !dbg !2761, !tbaa !1072
  %278 = load i64, ptr %seen, align 8, !dbg !2762, !tbaa !1971
  %279 = load ptr, ptr %irc, align 8, !dbg !2763, !tbaa !1067
  %op1340 = getelementptr inbounds %struct.anon, ptr %279, i32 0, i32 0, !dbg !2764
  %280 = load i16, ptr %op1340, align 8, !dbg !2764, !tbaa !1280
  %conv341 = zext i16 %280 to i32, !dbg !2763
  %call342 = call i32 @snap_pref(ptr noundef %274, ptr noundef %275, ptr noundef %276, i32 noundef %277, i64 noundef %278, i32 noundef %conv341), !dbg !2765
  store i32 %call342, ptr %val, align 4, !dbg !2766, !tbaa !1072
  %281 = load ptr, ptr %J.addr, align 8, !dbg !2767, !tbaa !1067
  %282 = load i32, ptr %val, align 4, !dbg !2767, !tbaa !1072
  %conv343 = trunc i32 %282 to i16, !dbg !2767
  call void @lj_ir_set_(ptr noundef %281, i16 noundef zeroext 23054, i16 noundef zeroext %conv343, i16 noundef zeroext 467), !dbg !2767
  %283 = load ptr, ptr %J.addr, align 8, !dbg !2767, !tbaa !1067
  %call344 = call i32 @lj_opt_fold(ptr noundef %283), !dbg !2767
  store i32 %call344, ptr %val, align 4, !dbg !2768, !tbaa !1072
  call void @llvm.lifetime.end.p0(i64 8, ptr %irc) #9, !dbg !2769
  br label %if.end346, !dbg !2770

if.else345:                                       ; preds = %if.end325
  br label %if.end346

if.end346:                                        ; preds = %if.else345, %if.then335
  %284 = load ptr, ptr %J.addr, align 8, !dbg !2771, !tbaa !1067
  %285 = load ptr, ptr %irs254, align 8, !dbg !2771, !tbaa !1067
  %ot347 = getelementptr inbounds %struct.anon, ptr %285, i32 0, i32 2, !dbg !2771
  %286 = load i16, ptr %ot347, align 4, !dbg !2771, !tbaa !1280
  %287 = load i32, ptr %tmp, align 4, !dbg !2771, !tbaa !1072
  %conv348 = trunc i32 %287 to i16, !dbg !2771
  %288 = load i32, ptr %val, align 4, !dbg !2771, !tbaa !1072
  %conv349 = trunc i32 %288 to i16, !dbg !2771
  call void @lj_ir_set_(ptr noundef %284, i16 noundef zeroext %286, i16 noundef zeroext %conv348, i16 noundef zeroext %conv349), !dbg !2771
  %289 = load ptr, ptr %J.addr, align 8, !dbg !2771, !tbaa !1067
  %call350 = call i32 @lj_opt_fold(ptr noundef %289), !dbg !2771
  store i32 %call350, ptr %tmp, align 4, !dbg !2772, !tbaa !1072
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #9, !dbg !2773
  call void @llvm.lifetime.end.p0(i64 4, ptr %key) #9, !dbg !2773
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #9, !dbg !2773
  call void @llvm.lifetime.end.p0(i64 8, ptr %irr) #9, !dbg !2773
  br label %if.end364, !dbg !2774

if.else351:                                       ; preds = %land.lhs.true273, %for.body268
  %290 = load ptr, ptr %irs254, align 8, !dbg !2775, !tbaa !1067
  %o352 = getelementptr inbounds %struct.anon.0, ptr %290, i32 0, i32 2, !dbg !2777
  %291 = load i8, ptr %o352, align 1, !dbg !2777, !tbaa !1280
  %conv353 = zext i8 %291 to i32, !dbg !2775
  %cmp354 = icmp eq i32 %conv353, 89, !dbg !2778
  br i1 %cmp354, label %land.lhs.true356, label %if.end363, !dbg !2779

land.lhs.true356:                                 ; preds = %if.else351
  %292 = load ptr, ptr %ir190, align 8, !dbg !2780, !tbaa !1067
  %o357 = getelementptr inbounds %struct.anon.0, ptr %292, i32 0, i32 2, !dbg !2781
  %293 = load i8, ptr %o357, align 1, !dbg !2781, !tbaa !1280
  %conv358 = zext i8 %293 to i32, !dbg !2780
  %cmp359 = icmp eq i32 %conv358, 82, !dbg !2782
  br i1 %cmp359, label %if.then361, label %if.end363, !dbg !2783

if.then361:                                       ; preds = %land.lhs.true356
  %294 = load ptr, ptr %J.addr, align 8, !dbg !2784, !tbaa !1067
  call void @lj_ir_set_(ptr noundef %294, i16 noundef zeroext 22784, i16 noundef zeroext 0, i16 noundef zeroext 0), !dbg !2784
  %295 = load ptr, ptr %J.addr, align 8, !dbg !2784, !tbaa !1067
  %call362 = call i32 @lj_opt_fold(ptr noundef %295), !dbg !2784
  br label %if.end363, !dbg !2786

if.end363:                                        ; preds = %if.then361, %land.lhs.true356, %if.else351
  br label %if.end364

if.end364:                                        ; preds = %if.end363, %if.end346
  br label %for.inc365, !dbg !2787

for.inc365:                                       ; preds = %if.end364
  %296 = load ptr, ptr %irs254, align 8, !dbg !2788, !tbaa !1067
  %incdec.ptr366 = getelementptr inbounds %union.IRIns, ptr %296, i32 1, !dbg !2788
  store ptr %incdec.ptr366, ptr %irs254, align 8, !dbg !2788, !tbaa !1067
  br label %for.cond265, !dbg !2789, !llvm.loop !2790

for.end367:                                       ; preds = %for.cond265
  call void @llvm.lifetime.end.p0(i64 4, ptr %tr255) #9, !dbg !2792
  call void @llvm.lifetime.end.p0(i64 8, ptr %irs254) #9, !dbg !2792
  br label %if.end368

if.end368:                                        ; preds = %for.end367, %if.then242
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2793
  br label %cleanup369, !dbg !2793

cleanup369:                                       ; preds = %if.end368, %if.then209
  call void @llvm.lifetime.end.p0(i64 4, ptr %op2201) #9, !dbg !2793
  call void @llvm.lifetime.end.p0(i64 4, ptr %op1200) #9, !dbg !2793
  %cleanup.dest371 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest371, label %cleanup374 [
    i32 0, label %cleanup.cont372
  ]

cleanup.cont372:                                  ; preds = %cleanup369
  br label %if.end373, !dbg !2794

if.end373:                                        ; preds = %cleanup.cont372, %for.body184
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2795
  br label %cleanup374, !dbg !2795

cleanup374:                                       ; preds = %if.end373, %cleanup369
  call void @llvm.lifetime.end.p0(i64 8, ptr %ir190) #9, !dbg !2795
  call void @llvm.lifetime.end.p0(i64 4, ptr %refp188) #9, !dbg !2795
  call void @llvm.lifetime.end.p0(i64 4, ptr %sn185) #9, !dbg !2795
  %cleanup.dest377 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest377, label %unreachable [
    i32 0, label %cleanup.cont378
    i32 14, label %for.inc379
  ]

cleanup.cont378:                                  ; preds = %cleanup374
  br label %for.inc379, !dbg !2796

for.inc379:                                       ; preds = %cleanup.cont378, %cleanup374
  %297 = load i32, ptr %n, align 4, !dbg !2797, !tbaa !1072
  %inc380 = add i32 %297, 1, !dbg !2797
  store i32 %inc380, ptr %n, align 4, !dbg !2797, !tbaa !1072
  br label %for.cond177, !dbg !2798, !llvm.loop !2799

for.end381:                                       ; preds = %land.end182
  call void @llvm.lifetime.end.p0(i64 8, ptr %irlast) #9, !dbg !2801
  br label %if.end382, !dbg !2802

if.end382:                                        ; preds = %for.end381, %for.end
  %298 = load ptr, ptr %J.addr, align 8, !dbg !2803, !tbaa !1067
  %slot383 = getelementptr inbounds %struct.jit_State, ptr %298, i32 0, i32 41, !dbg !2804
  %arraydecay = getelementptr inbounds [257 x i32], ptr %slot383, i64 0, i64 0, !dbg !2803
  %299 = load ptr, ptr %J.addr, align 8, !dbg !2805, !tbaa !1067
  %baseslot384 = getelementptr inbounds %struct.jit_State, ptr %299, i32 0, i32 9, !dbg !2806
  %300 = load i32, ptr %baseslot384, align 8, !dbg !2806, !tbaa !1329
  %idx.ext = zext i32 %300 to i64, !dbg !2807
  %add.ptr385 = getelementptr inbounds i32, ptr %arraydecay, i64 %idx.ext, !dbg !2807
  %301 = load ptr, ptr %J.addr, align 8, !dbg !2808, !tbaa !1067
  %base = getelementptr inbounds %struct.jit_State, ptr %301, i32 0, i32 6, !dbg !2809
  store ptr %add.ptr385, ptr %base, align 8, !dbg !2810, !tbaa !1434
  %302 = load ptr, ptr %snap, align 8, !dbg !2811, !tbaa !1067
  %nslots = getelementptr inbounds %struct.SnapShot, ptr %302, i32 0, i32 2, !dbg !2812
  %303 = load i8, ptr %nslots, align 2, !dbg !2812, !tbaa !1384
  %conv386 = zext i8 %303 to i32, !dbg !2811
  %304 = load ptr, ptr %J.addr, align 8, !dbg !2813, !tbaa !1067
  %baseslot387 = getelementptr inbounds %struct.jit_State, ptr %304, i32 0, i32 9, !dbg !2814
  %305 = load i32, ptr %baseslot387, align 8, !dbg !2814, !tbaa !1329
  %sub = sub i32 %conv386, %305, !dbg !2815
  %306 = load ptr, ptr %J.addr, align 8, !dbg !2816, !tbaa !1067
  %maxslot = getelementptr inbounds %struct.jit_State, ptr %306, i32 0, i32 8, !dbg !2817
  store i32 %sub, ptr %maxslot, align 4, !dbg !2818, !tbaa !1332
  %307 = load ptr, ptr %J.addr, align 8, !dbg !2819, !tbaa !1067
  call void @lj_snap_add(ptr noundef %307), !dbg !2820
  %308 = load i32, ptr %pass23, align 4, !dbg !2821, !tbaa !1072
  %tobool388 = icmp ne i32 %308, 0, !dbg !2821
  br i1 %tobool388, label %if.then389, label %if.end391, !dbg !2823

if.then389:                                       ; preds = %if.end382
  %309 = load ptr, ptr %J.addr, align 8, !dbg !2824, !tbaa !1067
  call void @lj_ir_set_(ptr noundef %309, i16 noundef zeroext 3968, i16 noundef zeroext 0, i16 noundef zeroext 0), !dbg !2824
  %310 = load ptr, ptr %J.addr, align 8, !dbg !2824, !tbaa !1067
  %call390 = call i32 @lj_ir_emit(ptr noundef %310), !dbg !2824
  br label %if.end391, !dbg !2824

if.end391:                                        ; preds = %if.then389, %if.end382
  call void @llvm.lifetime.end.p0(i64 4, ptr %pass23) #9, !dbg !2825
  call void @llvm.lifetime.end.p0(i64 8, ptr %seen) #9, !dbg !2825
  call void @llvm.lifetime.end.p0(i64 4, ptr %nent) #9, !dbg !2825
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #9, !dbg !2825
  call void @llvm.lifetime.end.p0(i64 8, ptr %map) #9, !dbg !2825
  call void @llvm.lifetime.end.p0(i64 8, ptr %snap) #9, !dbg !2825
  ret void, !dbg !2825

unreachable:                                      ; preds = %cleanup374, %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @snap_dedup(ptr noundef %J, ptr noundef %map, i32 noundef %nmax, i32 noundef %ref) #0 !dbg !2826 {
entry:
  %retval = alloca i32, align 4
  %J.addr = alloca ptr, align 8
  %map.addr = alloca ptr, align 8
  %nmax.addr = alloca i32, align 4
  %ref.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %J, ptr %J.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %J.addr, metadata !2830, metadata !DIExpression()), !dbg !2835
  store ptr %map, ptr %map.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !2831, metadata !DIExpression()), !dbg !2836
  store i32 %nmax, ptr %nmax.addr, align 4, !tbaa !1072
  tail call void @llvm.dbg.declare(metadata ptr %nmax.addr, metadata !2832, metadata !DIExpression()), !dbg !2837
  store i32 %ref, ptr %ref.addr, align 4, !tbaa !1072
  tail call void @llvm.dbg.declare(metadata ptr %ref.addr, metadata !2833, metadata !DIExpression()), !dbg !2838
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #9, !dbg !2839
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !2834, metadata !DIExpression()), !dbg !2840
  store i32 0, ptr %j, align 4, !dbg !2841, !tbaa !1072
  br label %for.cond, !dbg !2843

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %j, align 4, !dbg !2844, !tbaa !1072
  %1 = load i32, ptr %nmax.addr, align 4, !dbg !2846, !tbaa !1072
  %cmp = icmp ult i32 %0, %1, !dbg !2847
  br i1 %cmp, label %for.body, label %for.end, !dbg !2848

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %map.addr, align 8, !dbg !2849, !tbaa !1067
  %3 = load i32, ptr %j, align 4, !dbg !2849, !tbaa !1072
  %idxprom = zext i32 %3 to i64, !dbg !2849
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom, !dbg !2849
  %4 = load i32, ptr %arrayidx, align 4, !dbg !2849, !tbaa !1072
  %and = and i32 %4, 65535, !dbg !2849
  %5 = load i32, ptr %ref.addr, align 4, !dbg !2851, !tbaa !1072
  %cmp1 = icmp eq i32 %and, %5, !dbg !2852
  br i1 %cmp1, label %if.then, label %if.end, !dbg !2853

if.then:                                          ; preds = %for.body
  %6 = load ptr, ptr %J.addr, align 8, !dbg !2854, !tbaa !1067
  %slot = getelementptr inbounds %struct.jit_State, ptr %6, i32 0, i32 41, !dbg !2855
  %7 = load ptr, ptr %map.addr, align 8, !dbg !2856, !tbaa !1067
  %8 = load i32, ptr %j, align 4, !dbg !2856, !tbaa !1072
  %idxprom2 = zext i32 %8 to i64, !dbg !2856
  %arrayidx3 = getelementptr inbounds i32, ptr %7, i64 %idxprom2, !dbg !2856
  %9 = load i32, ptr %arrayidx3, align 4, !dbg !2856, !tbaa !1072
  %shr = lshr i32 %9, 24, !dbg !2856
  %idxprom4 = zext i32 %shr to i64, !dbg !2854
  %arrayidx5 = getelementptr inbounds [257 x i32], ptr %slot, i64 0, i64 %idxprom4, !dbg !2854
  %10 = load i32, ptr %arrayidx5, align 4, !dbg !2854, !tbaa !1072
  %and6 = and i32 %10, -196609, !dbg !2857
  store i32 %and6, ptr %retval, align 4, !dbg !2858
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2858

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !2851

for.inc:                                          ; preds = %if.end
  %11 = load i32, ptr %j, align 4, !dbg !2859, !tbaa !1072
  %inc = add i32 %11, 1, !dbg !2859
  store i32 %inc, ptr %j, align 4, !dbg !2859, !tbaa !1072
  br label %for.cond, !dbg !2860, !llvm.loop !2861

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !2863
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2863

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #9, !dbg !2864
  %12 = load i32, ptr %retval, align 4, !dbg !2864
  ret i32 %12, !dbg !2864
}

; Function Attrs: nounwind uwtable
define internal i32 @snap_replay_const(ptr noundef %J, ptr noundef %ir) #0 !dbg !2865 {
entry:
  %retval = alloca i32, align 4
  %J.addr = alloca ptr, align 8
  %ir.addr = alloca ptr, align 8
  store ptr %J, ptr %J.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %J.addr, metadata !2869, metadata !DIExpression()), !dbg !2871
  store ptr %ir, ptr %ir.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %ir.addr, metadata !2870, metadata !DIExpression()), !dbg !2872
  %0 = load ptr, ptr %ir.addr, align 8, !dbg !2873, !tbaa !1067
  %o = getelementptr inbounds %struct.anon.0, ptr %0, i32 0, i32 2, !dbg !2874
  %1 = load i8, ptr %o, align 1, !dbg !2874, !tbaa !1280
  %conv = zext i8 %1 to i32, !dbg !2875
  switch i32 %conv, label %sw.default [
    i32 22, label %sw.bb
    i32 23, label %sw.bb6
    i32 24, label %sw.bb7
    i32 28, label %sw.bb12
    i32 29, label %sw.bb12
    i32 25, label %sw.bb17
  ], !dbg !2876

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %ir.addr, align 8, !dbg !2877, !tbaa !1067
  %t = getelementptr inbounds %struct.anon.0, ptr %2, i32 0, i32 1, !dbg !2877
  %irt = getelementptr inbounds %struct.IRType1, ptr %t, i32 0, i32 0, !dbg !2877
  %3 = load i8, ptr %irt, align 4, !dbg !2877, !tbaa !1280
  %conv1 = zext i8 %3 to i32, !dbg !2877
  %and = and i32 %conv1, 31, !dbg !2877
  %sub = sub i32 32767, %and, !dbg !2877
  %4 = load ptr, ptr %ir.addr, align 8, !dbg !2877, !tbaa !1067
  %t2 = getelementptr inbounds %struct.anon.0, ptr %4, i32 0, i32 1, !dbg !2877
  %irt3 = getelementptr inbounds %struct.IRType1, ptr %t2, i32 0, i32 0, !dbg !2877
  %5 = load i8, ptr %irt3, align 4, !dbg !2877, !tbaa !1280
  %conv4 = zext i8 %5 to i32, !dbg !2877
  %and5 = and i32 %conv4, 31, !dbg !2877
  %shl = shl i32 %and5, 24, !dbg !2877
  %add = add i32 %sub, %shl, !dbg !2877
  store i32 %add, ptr %retval, align 4, !dbg !2879
  br label %return, !dbg !2879

sw.bb6:                                           ; preds = %entry
  %6 = load ptr, ptr %J.addr, align 8, !dbg !2880, !tbaa !1067
  %7 = load ptr, ptr %ir.addr, align 8, !dbg !2881, !tbaa !1067
  %8 = load i32, ptr %7, align 8, !dbg !2882, !tbaa !1280
  %call = call i32 @lj_ir_kint(ptr noundef %6, i32 noundef %8), !dbg !2883
  store i32 %call, ptr %retval, align 4, !dbg !2884
  br label %return, !dbg !2884

sw.bb7:                                           ; preds = %entry
  %9 = load ptr, ptr %J.addr, align 8, !dbg !2885, !tbaa !1067
  %10 = load ptr, ptr %ir.addr, align 8, !dbg !2886, !tbaa !1067
  %arrayidx = getelementptr inbounds %union.IRIns, ptr %10, i64 1, !dbg !2886
  %gcptr64 = getelementptr inbounds %struct.GCRef, ptr %arrayidx, i32 0, i32 0, !dbg !2886
  %11 = load i64, ptr %gcptr64, align 8, !dbg !2886, !tbaa !1280
  %12 = inttoptr i64 %11 to ptr, !dbg !2886
  %13 = load ptr, ptr %ir.addr, align 8, !dbg !2887, !tbaa !1067
  %t8 = getelementptr inbounds %struct.anon.0, ptr %13, i32 0, i32 1, !dbg !2887
  %irt9 = getelementptr inbounds %struct.IRType1, ptr %t8, i32 0, i32 0, !dbg !2887
  %14 = load i8, ptr %irt9, align 4, !dbg !2887, !tbaa !1280
  %conv10 = zext i8 %14 to i32, !dbg !2887
  %call11 = call i32 @lj_ir_kgc(ptr noundef %9, ptr noundef %12, i32 noundef %conv10), !dbg !2888
  store i32 %call11, ptr %retval, align 4, !dbg !2889
  br label %return, !dbg !2889

sw.bb12:                                          ; preds = %entry, %entry
  %15 = load ptr, ptr %J.addr, align 8, !dbg !2890, !tbaa !1067
  %16 = load ptr, ptr %ir.addr, align 8, !dbg !2891, !tbaa !1067
  %o13 = getelementptr inbounds %struct.anon.0, ptr %16, i32 0, i32 2, !dbg !2892
  %17 = load i8, ptr %o13, align 1, !dbg !2892, !tbaa !1280
  %conv14 = zext i8 %17 to i32, !dbg !2893
  %18 = load ptr, ptr %ir.addr, align 8, !dbg !2894, !tbaa !1067
  %arrayidx15 = getelementptr inbounds %union.IRIns, ptr %18, i64 1, !dbg !2894
  %19 = load i64, ptr %arrayidx15, align 8, !dbg !2895, !tbaa !1280
  %call16 = call i32 @lj_ir_k64(ptr noundef %15, i32 noundef %conv14, i64 noundef %19), !dbg !2896
  store i32 %call16, ptr %retval, align 4, !dbg !2897
  br label %return, !dbg !2897

sw.bb17:                                          ; preds = %entry
  %20 = load ptr, ptr %J.addr, align 8, !dbg !2898, !tbaa !1067
  %21 = load ptr, ptr %ir.addr, align 8, !dbg !2898, !tbaa !1067
  %arrayidx18 = getelementptr inbounds %union.IRIns, ptr %21, i64 1, !dbg !2898
  %ptr64 = getelementptr inbounds %struct.MRef, ptr %arrayidx18, i32 0, i32 0, !dbg !2898
  %22 = load i64, ptr %ptr64, align 8, !dbg !2898, !tbaa !1280
  %23 = inttoptr i64 %22 to ptr, !dbg !2898
  %call19 = call i32 @lj_ir_kptr_(ptr noundef %20, i32 noundef 25, ptr noundef %23), !dbg !2898
  store i32 %call19, ptr %retval, align 4, !dbg !2899
  br label %return, !dbg !2899

sw.default:                                       ; preds = %entry
  store i32 32767, ptr %retval, align 4, !dbg !2900
  br label %return, !dbg !2900

return:                                           ; preds = %sw.default, %sw.bb17, %sw.bb12, %sw.bb7, %sw.bb6, %sw.bb
  %24 = load i32, ptr %retval, align 4, !dbg !2901
  ret i32 %24, !dbg !2901
}

; Function Attrs: nounwind uwtable
define internal i32 @snap_pref(ptr noundef %J, ptr noundef %T, ptr noundef %map, i32 noundef %nmax, i64 noundef %seen, i32 noundef %ref) #0 !dbg !2902 {
entry:
  %J.addr = alloca ptr, align 8
  %T.addr = alloca ptr, align 8
  %map.addr = alloca ptr, align 8
  %nmax.addr = alloca i32, align 4
  %seen.addr = alloca i64, align 8
  %ref.addr = alloca i32, align 4
  %ir = alloca ptr, align 8
  %tr = alloca i32, align 4
  store ptr %J, ptr %J.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %J.addr, metadata !2906, metadata !DIExpression()), !dbg !2914
  store ptr %T, ptr %T.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %T.addr, metadata !2907, metadata !DIExpression()), !dbg !2915
  store ptr %map, ptr %map.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !2908, metadata !DIExpression()), !dbg !2916
  store i32 %nmax, ptr %nmax.addr, align 4, !tbaa !1072
  tail call void @llvm.dbg.declare(metadata ptr %nmax.addr, metadata !2909, metadata !DIExpression()), !dbg !2917
  store i64 %seen, ptr %seen.addr, align 8, !tbaa !1971
  tail call void @llvm.dbg.declare(metadata ptr %seen.addr, metadata !2910, metadata !DIExpression()), !dbg !2918
  store i32 %ref, ptr %ref.addr, align 4, !tbaa !1072
  tail call void @llvm.dbg.declare(metadata ptr %ref.addr, metadata !2911, metadata !DIExpression()), !dbg !2919
  call void @llvm.lifetime.start.p0(i64 8, ptr %ir) #9, !dbg !2920
  tail call void @llvm.dbg.declare(metadata ptr %ir, metadata !2912, metadata !DIExpression()), !dbg !2921
  %0 = load ptr, ptr %T.addr, align 8, !dbg !2922, !tbaa !1067
  %ir1 = getelementptr inbounds %struct.GCtrace, ptr %0, i32 0, i32 7, !dbg !2923
  %1 = load ptr, ptr %ir1, align 8, !dbg !2923, !tbaa !2072
  %2 = load i32, ptr %ref.addr, align 4, !dbg !2924, !tbaa !1072
  %idxprom = zext i32 %2 to i64, !dbg !2922
  %arrayidx = getelementptr inbounds %union.IRIns, ptr %1, i64 %idxprom, !dbg !2922
  store ptr %arrayidx, ptr %ir, align 8, !dbg !2921, !tbaa !1067
  call void @llvm.lifetime.start.p0(i64 4, ptr %tr) #9, !dbg !2925
  tail call void @llvm.dbg.declare(metadata ptr %tr, metadata !2913, metadata !DIExpression()), !dbg !2926
  %3 = load i32, ptr %ref.addr, align 4, !dbg !2927, !tbaa !1072
  %cmp = icmp ult i32 %3, 32768, !dbg !2927
  br i1 %cmp, label %if.then, label %if.else, !dbg !2929

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %J.addr, align 8, !dbg !2930, !tbaa !1067
  %5 = load ptr, ptr %ir, align 8, !dbg !2931, !tbaa !1067
  %call = call i32 @snap_replay_const(ptr noundef %4, ptr noundef %5), !dbg !2932
  store i32 %call, ptr %tr, align 4, !dbg !2933, !tbaa !1072
  br label %if.end19, !dbg !2934

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %ir, align 8, !dbg !2935, !tbaa !1067
  %prev = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 3, !dbg !2935
  %7 = load i16, ptr %prev, align 2, !dbg !2935, !tbaa !1280
  %conv = zext i16 %7 to i32, !dbg !2935
  %and = and i32 %conv, -128, !dbg !2935
  %cmp2 = icmp ne i32 %and, 128, !dbg !2935
  br i1 %cmp2, label %if.else5, label %if.then4, !dbg !2937

if.then4:                                         ; preds = %if.else
  store i32 0, ptr %tr, align 4, !dbg !2938, !tbaa !1072
  br label %if.end18, !dbg !2939

if.else5:                                         ; preds = %if.else
  %8 = load i64, ptr %seen.addr, align 8, !dbg !2940, !tbaa !1971
  %9 = load i32, ptr %ref.addr, align 4, !dbg !2940, !tbaa !1072
  %conv6 = zext i32 %9 to i64, !dbg !2940
  %and7 = and i64 %conv6, 63, !dbg !2940
  %shl = shl i64 1, %and7, !dbg !2940
  %and8 = and i64 %8, %shl, !dbg !2940
  %tobool = icmp ne i64 %and8, 0, !dbg !2940
  br i1 %tobool, label %lor.lhs.false, label %if.then12, !dbg !2942

lor.lhs.false:                                    ; preds = %if.else5
  %10 = load ptr, ptr %J.addr, align 8, !dbg !2943, !tbaa !1067
  %11 = load ptr, ptr %map.addr, align 8, !dbg !2944, !tbaa !1067
  %12 = load i32, ptr %nmax.addr, align 4, !dbg !2945, !tbaa !1072
  %13 = load i32, ptr %ref.addr, align 4, !dbg !2946, !tbaa !1072
  %call9 = call i32 @snap_dedup(ptr noundef %10, ptr noundef %11, i32 noundef %12, i32 noundef %13), !dbg !2947
  store i32 %call9, ptr %tr, align 4, !dbg !2948, !tbaa !1072
  %cmp10 = icmp eq i32 %call9, 0, !dbg !2949
  br i1 %cmp10, label %if.then12, label %if.end, !dbg !2950

if.then12:                                        ; preds = %lor.lhs.false, %if.else5
  %14 = load ptr, ptr %J.addr, align 8, !dbg !2951, !tbaa !1067
  %15 = load ptr, ptr %ir, align 8, !dbg !2951, !tbaa !1067
  %t = getelementptr inbounds %struct.anon.0, ptr %15, i32 0, i32 1, !dbg !2951
  %irt = getelementptr inbounds %struct.IRType1, ptr %t, i32 0, i32 0, !dbg !2951
  %16 = load i8, ptr %irt, align 4, !dbg !2951, !tbaa !1280
  %conv13 = zext i8 %16 to i32, !dbg !2951
  %and14 = and i32 %conv13, 31, !dbg !2951
  %or = or i32 3584, %and14, !dbg !2951
  %conv15 = trunc i32 %or to i16, !dbg !2951
  %17 = load i32, ptr %ref.addr, align 4, !dbg !2951, !tbaa !1072
  %sub = sub i32 %17, 32768, !dbg !2951
  %conv16 = trunc i32 %sub to i16, !dbg !2951
  call void @lj_ir_set_(ptr noundef %14, i16 noundef zeroext %conv15, i16 noundef zeroext %conv16, i16 noundef zeroext 0), !dbg !2951
  %18 = load ptr, ptr %J.addr, align 8, !dbg !2951, !tbaa !1067
  %call17 = call i32 @lj_opt_fold(ptr noundef %18), !dbg !2951
  store i32 %call17, ptr %tr, align 4, !dbg !2952, !tbaa !1072
  br label %if.end, !dbg !2953

if.end:                                           ; preds = %if.then12, %lor.lhs.false
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then4
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then
  %19 = load i32, ptr %tr, align 4, !dbg !2954, !tbaa !1072
  call void @llvm.lifetime.end.p0(i64 4, ptr %tr) #9, !dbg !2955
  call void @llvm.lifetime.end.p0(i64 8, ptr %ir) #9, !dbg !2955
  ret i32 %19, !dbg !2956
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @snap_sunk_store(ptr noundef %T, ptr noundef %ira, ptr noundef %irs) #4 !dbg !2957 {
entry:
  %retval = alloca i32, align 4
  %T.addr = alloca ptr, align 8
  %ira.addr = alloca ptr, align 8
  %irs.addr = alloca ptr, align 8
  store ptr %T, ptr %T.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %T.addr, metadata !2961, metadata !DIExpression()), !dbg !2964
  store ptr %ira, ptr %ira.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %ira.addr, metadata !2962, metadata !DIExpression()), !dbg !2965
  store ptr %irs, ptr %irs.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %irs.addr, metadata !2963, metadata !DIExpression()), !dbg !2966
  %0 = load ptr, ptr %irs.addr, align 8, !dbg !2967, !tbaa !1067
  %s = getelementptr inbounds %struct.anon.0, ptr %0, i32 0, i32 4, !dbg !2969
  %1 = load i8, ptr %s, align 1, !dbg !2969, !tbaa !1280
  %conv = zext i8 %1 to i32, !dbg !2967
  %cmp = icmp ne i32 %conv, 255, !dbg !2970
  br i1 %cmp, label %if.then, label %if.end, !dbg !2971

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %ira.addr, align 8, !dbg !2972, !tbaa !1067
  %3 = load ptr, ptr %irs.addr, align 8, !dbg !2973, !tbaa !1067
  %s2 = getelementptr inbounds %struct.anon.0, ptr %3, i32 0, i32 4, !dbg !2974
  %4 = load i8, ptr %s2, align 1, !dbg !2974, !tbaa !1280
  %conv3 = zext i8 %4 to i32, !dbg !2973
  %idx.ext = sext i32 %conv3 to i64, !dbg !2975
  %add.ptr = getelementptr inbounds %union.IRIns, ptr %2, i64 %idx.ext, !dbg !2975
  %5 = load ptr, ptr %irs.addr, align 8, !dbg !2976, !tbaa !1067
  %cmp4 = icmp eq ptr %add.ptr, %5, !dbg !2977
  %conv5 = zext i1 %cmp4 to i32, !dbg !2977
  store i32 %conv5, ptr %retval, align 4, !dbg !2978
  br label %return, !dbg !2978

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %T.addr, align 8, !dbg !2979, !tbaa !1067
  %7 = load ptr, ptr %ira.addr, align 8, !dbg !2980, !tbaa !1067
  %8 = load ptr, ptr %irs.addr, align 8, !dbg !2981, !tbaa !1067
  %call = call i32 @snap_sunk_store2(ptr noundef %6, ptr noundef %7, ptr noundef %8), !dbg !2982
  store i32 %call, ptr %retval, align 4, !dbg !2983
  br label %return, !dbg !2983

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, ptr %retval, align 4, !dbg !2984
  ret i32 %9, !dbg !2984
}

declare !dbg !2985 hidden i32 @lj_opt_fold(ptr noundef) #3

declare !dbg !2986 hidden i32 @lj_ir_kslot(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind uwtable
define hidden ptr @lj_snap_restore(ptr noundef %J, ptr noundef %exptr) #0 !dbg !2989 {
entry:
  %J.addr = alloca ptr, align 8
  %exptr.addr = alloca ptr, align 8
  %ex = alloca ptr, align 8
  %snapno = alloca i32, align 4
  %T = alloca ptr, align 8
  %snap = alloca ptr, align 8
  %n = alloca i32, align 4
  %nent = alloca i32, align 4
  %map = alloca ptr, align 8
  %frame = alloca ptr, align 8
  %rfilt = alloca i64, align 8
  %pc = alloca ptr, align 8
  %L = alloca ptr, align 8
  %sn = alloca i32, align 4
  %o = alloca ptr, align 8
  %ref = alloca i32, align 4
  %ir = alloca ptr, align 8
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %J, ptr %J.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %J.addr, metadata !2993, metadata !DIExpression()), !dbg !3019
  store ptr %exptr, ptr %exptr.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %exptr.addr, metadata !2994, metadata !DIExpression()), !dbg !3020
  call void @llvm.lifetime.start.p0(i64 8, ptr %ex) #9, !dbg !3021
  tail call void @llvm.dbg.declare(metadata ptr %ex, metadata !2995, metadata !DIExpression()), !dbg !3022
  %0 = load ptr, ptr %exptr.addr, align 8, !dbg !3023, !tbaa !1067
  store ptr %0, ptr %ex, align 8, !dbg !3022, !tbaa !1067
  call void @llvm.lifetime.start.p0(i64 4, ptr %snapno) #9, !dbg !3024
  tail call void @llvm.dbg.declare(metadata ptr %snapno, metadata !2996, metadata !DIExpression()), !dbg !3025
  %1 = load ptr, ptr %J.addr, align 8, !dbg !3026, !tbaa !1067
  %exitno = getelementptr inbounds %struct.jit_State, ptr %1, i32 0, i32 52, !dbg !3027
  %2 = load i32, ptr %exitno, align 4, !dbg !3027, !tbaa !2274
  store i32 %2, ptr %snapno, align 4, !dbg !3025, !tbaa !1072
  call void @llvm.lifetime.start.p0(i64 8, ptr %T) #9, !dbg !3028
  tail call void @llvm.dbg.declare(metadata ptr %T, metadata !2997, metadata !DIExpression()), !dbg !3029
  %3 = load ptr, ptr %J.addr, align 8, !dbg !3030, !tbaa !1067
  %trace = getelementptr inbounds %struct.jit_State, ptr %3, i32 0, i32 36, !dbg !3030
  %4 = load ptr, ptr %trace, align 8, !dbg !3030, !tbaa !3031
  %5 = load ptr, ptr %J.addr, align 8, !dbg !3030, !tbaa !1067
  %parent = getelementptr inbounds %struct.jit_State, ptr %5, i32 0, i32 51, !dbg !3030
  %6 = load i32, ptr %parent, align 8, !dbg !3030, !tbaa !3032
  %idxprom = zext i32 %6 to i64, !dbg !3030
  %arrayidx = getelementptr inbounds %struct.GCRef, ptr %4, i64 %idxprom, !dbg !3030
  %gcptr64 = getelementptr inbounds %struct.GCRef, ptr %arrayidx, i32 0, i32 0, !dbg !3030
  %7 = load i64, ptr %gcptr64, align 8, !dbg !3030, !tbaa !3033
  %8 = inttoptr i64 %7 to ptr, !dbg !3030
  store ptr %8, ptr %T, align 8, !dbg !3029, !tbaa !1067
  call void @llvm.lifetime.start.p0(i64 8, ptr %snap) #9, !dbg !3034
  tail call void @llvm.dbg.declare(metadata ptr %snap, metadata !2998, metadata !DIExpression()), !dbg !3035
  %9 = load ptr, ptr %T, align 8, !dbg !3036, !tbaa !1067
  %snap1 = getelementptr inbounds %struct.GCtrace, ptr %9, i32 0, i32 10, !dbg !3037
  %10 = load ptr, ptr %snap1, align 8, !dbg !3037, !tbaa !2002
  %11 = load i32, ptr %snapno, align 4, !dbg !3038, !tbaa !1072
  %idxprom2 = zext i32 %11 to i64, !dbg !3036
  %arrayidx3 = getelementptr inbounds %struct.SnapShot, ptr %10, i64 %idxprom2, !dbg !3036
  store ptr %arrayidx3, ptr %snap, align 8, !dbg !3035, !tbaa !1067
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #9, !dbg !3039
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !2999, metadata !DIExpression()), !dbg !3040
  call void @llvm.lifetime.start.p0(i64 4, ptr %nent) #9, !dbg !3039
  tail call void @llvm.dbg.declare(metadata ptr %nent, metadata !3000, metadata !DIExpression()), !dbg !3041
  %12 = load ptr, ptr %snap, align 8, !dbg !3042, !tbaa !1067
  %nent4 = getelementptr inbounds %struct.SnapShot, ptr %12, i32 0, i32 4, !dbg !3043
  %13 = load i8, ptr %nent4, align 4, !dbg !3043, !tbaa !1359
  %conv = zext i8 %13 to i32, !dbg !3042
  store i32 %conv, ptr %nent, align 4, !dbg !3041, !tbaa !1072
  call void @llvm.lifetime.start.p0(i64 8, ptr %map) #9, !dbg !3044
  tail call void @llvm.dbg.declare(metadata ptr %map, metadata !3001, metadata !DIExpression()), !dbg !3045
  %14 = load ptr, ptr %T, align 8, !dbg !3046, !tbaa !1067
  %snapmap = getelementptr inbounds %struct.GCtrace, ptr %14, i32 0, i32 11, !dbg !3047
  %15 = load ptr, ptr %snapmap, align 8, !dbg !3047, !tbaa !2008
  %16 = load ptr, ptr %snap, align 8, !dbg !3048, !tbaa !1067
  %mapofs = getelementptr inbounds %struct.SnapShot, ptr %16, i32 0, i32 0, !dbg !3049
  %17 = load i32, ptr %mapofs, align 4, !dbg !3049, !tbaa !1229
  %idxprom5 = zext i32 %17 to i64, !dbg !3046
  %arrayidx6 = getelementptr inbounds i32, ptr %15, i64 %idxprom5, !dbg !3046
  store ptr %arrayidx6, ptr %map, align 8, !dbg !3045, !tbaa !1067
  call void @llvm.lifetime.start.p0(i64 8, ptr %frame) #9, !dbg !3050
  tail call void @llvm.dbg.declare(metadata ptr %frame, metadata !3002, metadata !DIExpression()), !dbg !3051
  call void @llvm.lifetime.start.p0(i64 8, ptr %rfilt) #9, !dbg !3052
  tail call void @llvm.dbg.declare(metadata ptr %rfilt, metadata !3003, metadata !DIExpression()), !dbg !3053
  %18 = load ptr, ptr %T, align 8, !dbg !3054, !tbaa !1067
  %19 = load i32, ptr %snapno, align 4, !dbg !3055, !tbaa !1072
  %call = call i64 @snap_renamefilter(ptr noundef %18, i32 noundef %19), !dbg !3056
  store i64 %call, ptr %rfilt, align 8, !dbg !3053, !tbaa !1971
  call void @llvm.lifetime.start.p0(i64 8, ptr %pc) #9, !dbg !3057
  tail call void @llvm.dbg.declare(metadata ptr %pc, metadata !3004, metadata !DIExpression()), !dbg !3058
  %20 = load ptr, ptr %map, align 8, !dbg !3059, !tbaa !1067
  %21 = load i32, ptr %nent, align 4, !dbg !3060, !tbaa !1072
  %idxprom7 = zext i32 %21 to i64, !dbg !3059
  %arrayidx8 = getelementptr inbounds i32, ptr %20, i64 %idxprom7, !dbg !3059
  %call9 = call ptr @snap_pc(ptr noundef %arrayidx8), !dbg !3061
  store ptr %call9, ptr %pc, align 8, !dbg !3058, !tbaa !1067
  call void @llvm.lifetime.start.p0(i64 8, ptr %L) #9, !dbg !3062
  tail call void @llvm.dbg.declare(metadata ptr %L, metadata !3005, metadata !DIExpression()), !dbg !3063
  %22 = load ptr, ptr %J.addr, align 8, !dbg !3064, !tbaa !1067
  %L10 = getelementptr inbounds %struct.jit_State, ptr %22, i32 0, i32 2, !dbg !3065
  %23 = load ptr, ptr %L10, align 8, !dbg !3065, !tbaa !1087
  store ptr %23, ptr %L, align 8, !dbg !3063, !tbaa !1067
  %24 = load ptr, ptr %pc, align 8, !dbg !3066, !tbaa !1067
  %add.ptr = getelementptr inbounds i32, ptr %24, i64 1, !dbg !3066
  %25 = ptrtoint ptr %add.ptr to i64, !dbg !3066
  %26 = load ptr, ptr %L, align 8, !dbg !3066, !tbaa !1067
  %cframe = getelementptr inbounds %struct.lua_State, ptr %26, i32 0, i32 13, !dbg !3066
  %27 = load ptr, ptr %cframe, align 8, !dbg !3066, !tbaa !3067
  %28 = ptrtoint ptr %27 to i64, !dbg !3066
  %and = and i64 %28, -4, !dbg !3066
  %29 = inttoptr i64 %and to ptr, !dbg !3066
  %add.ptr11 = getelementptr inbounds i8, ptr %29, i64 24, !dbg !3066
  %ptr64 = getelementptr inbounds %struct.MRef, ptr %add.ptr11, i32 0, i32 0, !dbg !3066
  store i64 %25, ptr %ptr64, align 8, !dbg !3066, !tbaa !3068
  %30 = load ptr, ptr %L, align 8, !dbg !3069, !tbaa !1067
  %base = getelementptr inbounds %struct.lua_State, ptr %30, i32 0, i32 7, !dbg !3069
  %31 = load ptr, ptr %base, align 8, !dbg !3069, !tbaa !1499
  %32 = load ptr, ptr %snap, align 8, !dbg !3069, !tbaa !1067
  %topslot = getelementptr inbounds %struct.SnapShot, ptr %32, i32 0, i32 3, !dbg !3069
  %33 = load i8, ptr %topslot, align 1, !dbg !3069, !tbaa !3071
  %conv12 = zext i8 %33 to i32, !dbg !3069
  %idx.ext = sext i32 %conv12 to i64, !dbg !3069
  %add.ptr13 = getelementptr inbounds %union.TValue, ptr %31, i64 %idx.ext, !dbg !3069
  %34 = load ptr, ptr %L, align 8, !dbg !3069, !tbaa !1067
  %maxstack = getelementptr inbounds %struct.lua_State, ptr %34, i32 0, i32 9, !dbg !3069
  %ptr6414 = getelementptr inbounds %struct.MRef, ptr %maxstack, i32 0, i32 0, !dbg !3069
  %35 = load i64, ptr %ptr6414, align 8, !dbg !3069, !tbaa !3072
  %36 = inttoptr i64 %35 to ptr, !dbg !3069
  %cmp = icmp uge ptr %add.ptr13, %36, !dbg !3069
  %lnot = xor i1 %cmp, true, !dbg !3069
  %lnot16 = xor i1 %lnot, true, !dbg !3069
  %lnot.ext = zext i1 %lnot16 to i32, !dbg !3069
  %conv17 = sext i32 %lnot.ext to i64, !dbg !3069
  %expval = call i64 @llvm.expect.i64(i64 %conv17, i64 0), !dbg !3069
  %tobool = icmp ne i64 %expval, 0, !dbg !3069
  br i1 %tobool, label %if.then, label %if.end, !dbg !3073

if.then:                                          ; preds = %entry
  %37 = load ptr, ptr %L, align 8, !dbg !3074, !tbaa !1067
  %base18 = getelementptr inbounds %struct.lua_State, ptr %37, i32 0, i32 7, !dbg !3074
  %38 = load ptr, ptr %base18, align 8, !dbg !3074, !tbaa !1499
  %39 = load ptr, ptr %L, align 8, !dbg !3074, !tbaa !1067
  %base19 = getelementptr inbounds %struct.lua_State, ptr %39, i32 0, i32 7, !dbg !3074
  %40 = load ptr, ptr %base19, align 8, !dbg !3074, !tbaa !1499
  %add.ptr20 = getelementptr inbounds %union.TValue, ptr %40, i64 -2, !dbg !3074
  %gcptr6421 = getelementptr inbounds %struct.GCRef, ptr %add.ptr20, i32 0, i32 0, !dbg !3074
  %41 = load i64, ptr %gcptr6421, align 8, !dbg !3074, !tbaa !1280
  %and22 = and i64 %41, 140737488355327, !dbg !3074
  %42 = inttoptr i64 %and22 to ptr, !dbg !3074
  %pc23 = getelementptr inbounds %struct.GCfuncL, ptr %42, i32 0, i32 7, !dbg !3074
  %ptr6424 = getelementptr inbounds %struct.MRef, ptr %pc23, i32 0, i32 0, !dbg !3074
  %43 = load i64, ptr %ptr6424, align 8, !dbg !3074, !tbaa !1280
  %44 = inttoptr i64 %43 to ptr, !dbg !3074
  %add.ptr25 = getelementptr inbounds i8, ptr %44, i64 -104, !dbg !3074
  %framesize = getelementptr inbounds %struct.GCproto, ptr %add.ptr25, i32 0, i32 4, !dbg !3074
  %45 = load i8, ptr %framesize, align 1, !dbg !3074, !tbaa !3076
  %conv26 = zext i8 %45 to i32, !dbg !3074
  %idx.ext27 = sext i32 %conv26 to i64, !dbg !3074
  %add.ptr28 = getelementptr inbounds %union.TValue, ptr %38, i64 %idx.ext27, !dbg !3074
  %46 = load ptr, ptr %L, align 8, !dbg !3078, !tbaa !1067
  %top = getelementptr inbounds %struct.lua_State, ptr %46, i32 0, i32 8, !dbg !3079
  store ptr %add.ptr28, ptr %top, align 8, !dbg !3080, !tbaa !3081
  %47 = load ptr, ptr %L, align 8, !dbg !3082, !tbaa !1067
  %48 = load ptr, ptr %snap, align 8, !dbg !3083, !tbaa !1067
  %topslot29 = getelementptr inbounds %struct.SnapShot, ptr %48, i32 0, i32 3, !dbg !3084
  %49 = load i8, ptr %topslot29, align 1, !dbg !3084, !tbaa !3071
  %conv30 = zext i8 %49 to i32, !dbg !3083
  %50 = load ptr, ptr %L, align 8, !dbg !3085, !tbaa !1067
  %base31 = getelementptr inbounds %struct.lua_State, ptr %50, i32 0, i32 7, !dbg !3085
  %51 = load ptr, ptr %base31, align 8, !dbg !3085, !tbaa !1499
  %add.ptr32 = getelementptr inbounds %union.TValue, ptr %51, i64 -2, !dbg !3085
  %gcptr6433 = getelementptr inbounds %struct.GCRef, ptr %add.ptr32, i32 0, i32 0, !dbg !3085
  %52 = load i64, ptr %gcptr6433, align 8, !dbg !3085, !tbaa !1280
  %and34 = and i64 %52, 140737488355327, !dbg !3085
  %53 = inttoptr i64 %and34 to ptr, !dbg !3085
  %pc35 = getelementptr inbounds %struct.GCfuncL, ptr %53, i32 0, i32 7, !dbg !3085
  %ptr6436 = getelementptr inbounds %struct.MRef, ptr %pc35, i32 0, i32 0, !dbg !3085
  %54 = load i64, ptr %ptr6436, align 8, !dbg !3085, !tbaa !1280
  %55 = inttoptr i64 %54 to ptr, !dbg !3085
  %add.ptr37 = getelementptr inbounds i8, ptr %55, i64 -104, !dbg !3085
  %framesize38 = getelementptr inbounds %struct.GCproto, ptr %add.ptr37, i32 0, i32 4, !dbg !3086
  %56 = load i8, ptr %framesize38, align 1, !dbg !3086, !tbaa !3076
  %conv39 = zext i8 %56 to i32, !dbg !3085
  %sub = sub nsw i32 %conv30, %conv39, !dbg !3087
  call void @lj_state_growstack(ptr noundef %47, i32 noundef %sub), !dbg !3088
  br label %if.end, !dbg !3089

if.end:                                           ; preds = %if.then, %entry
  %57 = load ptr, ptr %L, align 8, !dbg !3090, !tbaa !1067
  %base40 = getelementptr inbounds %struct.lua_State, ptr %57, i32 0, i32 7, !dbg !3091
  %58 = load ptr, ptr %base40, align 8, !dbg !3091, !tbaa !1499
  %add.ptr41 = getelementptr inbounds %union.TValue, ptr %58, i64 -1, !dbg !3092
  %add.ptr42 = getelementptr inbounds %union.TValue, ptr %add.ptr41, i64 -1, !dbg !3093
  store ptr %add.ptr42, ptr %frame, align 8, !dbg !3094, !tbaa !1067
  store i32 0, ptr %n, align 4, !dbg !3095, !tbaa !1072
  br label %for.cond, !dbg !3096

for.cond:                                         ; preds = %for.inc83, %if.end
  %59 = load i32, ptr %n, align 4, !dbg !3097, !tbaa !1072
  %60 = load i32, ptr %nent, align 4, !dbg !3098, !tbaa !1072
  %cmp43 = icmp ult i32 %59, %60, !dbg !3099
  br i1 %cmp43, label %for.body, label %for.end85, !dbg !3100

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %sn) #9, !dbg !3101
  tail call void @llvm.dbg.declare(metadata ptr %sn, metadata !3006, metadata !DIExpression()), !dbg !3102
  %61 = load ptr, ptr %map, align 8, !dbg !3103, !tbaa !1067
  %62 = load i32, ptr %n, align 4, !dbg !3104, !tbaa !1072
  %idxprom45 = zext i32 %62 to i64, !dbg !3103
  %arrayidx46 = getelementptr inbounds i32, ptr %61, i64 %idxprom45, !dbg !3103
  %63 = load i32, ptr %arrayidx46, align 4, !dbg !3103, !tbaa !1072
  store i32 %63, ptr %sn, align 4, !dbg !3102, !tbaa !1072
  %64 = load i32, ptr %sn, align 4, !dbg !3105, !tbaa !1072
  %and47 = and i32 %64, 262144, !dbg !3106
  %tobool48 = icmp ne i32 %and47, 0, !dbg !3106
  br i1 %tobool48, label %if.end79, label %if.then49, !dbg !3107

if.then49:                                        ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %o) #9, !dbg !3108
  tail call void @llvm.dbg.declare(metadata ptr %o, metadata !3010, metadata !DIExpression()), !dbg !3109
  %65 = load ptr, ptr %frame, align 8, !dbg !3110, !tbaa !1067
  %66 = load i32, ptr %sn, align 4, !dbg !3111, !tbaa !1072
  %shr = lshr i32 %66, 24, !dbg !3111
  %idxprom50 = zext i32 %shr to i64, !dbg !3110
  %arrayidx51 = getelementptr inbounds %union.TValue, ptr %65, i64 %idxprom50, !dbg !3110
  store ptr %arrayidx51, ptr %o, align 8, !dbg !3109, !tbaa !1067
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref) #9, !dbg !3112
  tail call void @llvm.dbg.declare(metadata ptr %ref, metadata !3013, metadata !DIExpression()), !dbg !3113
  %67 = load i32, ptr %sn, align 4, !dbg !3114, !tbaa !1072
  %and52 = and i32 %67, 65535, !dbg !3114
  store i32 %and52, ptr %ref, align 4, !dbg !3113, !tbaa !1072
  call void @llvm.lifetime.start.p0(i64 8, ptr %ir) #9, !dbg !3115
  tail call void @llvm.dbg.declare(metadata ptr %ir, metadata !3014, metadata !DIExpression()), !dbg !3116
  %68 = load ptr, ptr %T, align 8, !dbg !3117, !tbaa !1067
  %ir53 = getelementptr inbounds %struct.GCtrace, ptr %68, i32 0, i32 7, !dbg !3118
  %69 = load ptr, ptr %ir53, align 8, !dbg !3118, !tbaa !2072
  %70 = load i32, ptr %ref, align 4, !dbg !3119, !tbaa !1072
  %idxprom54 = zext i32 %70 to i64, !dbg !3117
  %arrayidx55 = getelementptr inbounds %union.IRIns, ptr %69, i64 %idxprom54, !dbg !3117
  store ptr %arrayidx55, ptr %ir, align 8, !dbg !3116, !tbaa !1067
  %71 = load ptr, ptr %ir, align 8, !dbg !3120, !tbaa !1067
  %r = getelementptr inbounds %struct.anon.0, ptr %71, i32 0, i32 3, !dbg !3121
  %72 = load i8, ptr %r, align 2, !dbg !3121, !tbaa !1280
  %conv56 = zext i8 %72 to i32, !dbg !3120
  %cmp57 = icmp eq i32 %conv56, 253, !dbg !3122
  br i1 %cmp57, label %if.then59, label %if.end76, !dbg !3123

if.then59:                                        ; preds = %if.then49
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #9, !dbg !3124
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !3015, metadata !DIExpression()), !dbg !3125
  store i32 0, ptr %j, align 4, !dbg !3126, !tbaa !1072
  br label %for.cond60, !dbg !3128

for.cond60:                                       ; preds = %for.inc, %if.then59
  %73 = load i32, ptr %j, align 4, !dbg !3129, !tbaa !1072
  %74 = load i32, ptr %n, align 4, !dbg !3131, !tbaa !1072
  %cmp61 = icmp ult i32 %73, %74, !dbg !3132
  br i1 %cmp61, label %for.body63, label %for.end, !dbg !3133

for.body63:                                       ; preds = %for.cond60
  %75 = load ptr, ptr %map, align 8, !dbg !3134, !tbaa !1067
  %76 = load i32, ptr %j, align 4, !dbg !3134, !tbaa !1072
  %idxprom64 = zext i32 %76 to i64, !dbg !3134
  %arrayidx65 = getelementptr inbounds i32, ptr %75, i64 %idxprom64, !dbg !3134
  %77 = load i32, ptr %arrayidx65, align 4, !dbg !3134, !tbaa !1072
  %and66 = and i32 %77, 65535, !dbg !3134
  %78 = load i32, ptr %ref, align 4, !dbg !3136, !tbaa !1072
  %cmp67 = icmp eq i32 %and66, %78, !dbg !3137
  br i1 %cmp67, label %if.then69, label %if.end75, !dbg !3138

if.then69:                                        ; preds = %for.body63
  %79 = load ptr, ptr %L, align 8, !dbg !3139, !tbaa !1067
  %80 = load ptr, ptr %o, align 8, !dbg !3141, !tbaa !1067
  %81 = load ptr, ptr %frame, align 8, !dbg !3142, !tbaa !1067
  %82 = load ptr, ptr %map, align 8, !dbg !3143, !tbaa !1067
  %83 = load i32, ptr %j, align 4, !dbg !3143, !tbaa !1072
  %idxprom70 = zext i32 %83 to i64, !dbg !3143
  %arrayidx71 = getelementptr inbounds i32, ptr %82, i64 %idxprom70, !dbg !3143
  %84 = load i32, ptr %arrayidx71, align 4, !dbg !3143, !tbaa !1072
  %shr72 = lshr i32 %84, 24, !dbg !3143
  %idxprom73 = zext i32 %shr72 to i64, !dbg !3142
  %arrayidx74 = getelementptr inbounds %union.TValue, ptr %81, i64 %idxprom73, !dbg !3142
  call void @copyTV(ptr noundef %79, ptr noundef %80, ptr noundef %arrayidx74), !dbg !3144
  br label %dupslot, !dbg !3145

if.end75:                                         ; preds = %for.body63
  br label %for.inc, !dbg !3136

for.inc:                                          ; preds = %if.end75
  %85 = load i32, ptr %j, align 4, !dbg !3146, !tbaa !1072
  %inc = add i32 %85, 1, !dbg !3146
  store i32 %inc, ptr %j, align 4, !dbg !3146, !tbaa !1072
  br label %for.cond60, !dbg !3147, !llvm.loop !3148

for.end:                                          ; preds = %for.cond60
  %86 = load ptr, ptr %J.addr, align 8, !dbg !3150, !tbaa !1067
  %87 = load ptr, ptr %T, align 8, !dbg !3151, !tbaa !1067
  %88 = load ptr, ptr %ex, align 8, !dbg !3152, !tbaa !1067
  %89 = load i32, ptr %snapno, align 4, !dbg !3153, !tbaa !1072
  %90 = load i64, ptr %rfilt, align 8, !dbg !3154, !tbaa !1971
  %91 = load ptr, ptr %ir, align 8, !dbg !3155, !tbaa !1067
  %92 = load ptr, ptr %o, align 8, !dbg !3156, !tbaa !1067
  call void @snap_unsink(ptr noundef %86, ptr noundef %87, ptr noundef %88, i32 noundef %89, i64 noundef %90, ptr noundef %91, ptr noundef %92), !dbg !3157
  br label %dupslot, !dbg !3157

dupslot:                                          ; preds = %for.end, %if.then69
  tail call void @llvm.dbg.label(metadata !3018), !dbg !3158
  store i32 4, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #9, !dbg !3159
  br label %cleanup

if.end76:                                         ; preds = %if.then49
  %93 = load ptr, ptr %J.addr, align 8, !dbg !3160, !tbaa !1067
  %94 = load ptr, ptr %T, align 8, !dbg !3161, !tbaa !1067
  %95 = load ptr, ptr %ex, align 8, !dbg !3162, !tbaa !1067
  %96 = load i32, ptr %snapno, align 4, !dbg !3163, !tbaa !1072
  %97 = load i64, ptr %rfilt, align 8, !dbg !3164, !tbaa !1971
  %98 = load i32, ptr %ref, align 4, !dbg !3165, !tbaa !1072
  %99 = load ptr, ptr %o, align 8, !dbg !3166, !tbaa !1067
  call void @snap_restoreval(ptr noundef %93, ptr noundef %94, ptr noundef %95, i32 noundef %96, i64 noundef %97, i32 noundef %98, ptr noundef %99), !dbg !3167
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3168
  br label %cleanup, !dbg !3168

cleanup:                                          ; preds = %if.end76, %dupslot
  call void @llvm.lifetime.end.p0(i64 8, ptr %ir) #9, !dbg !3168
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref) #9, !dbg !3168
  call void @llvm.lifetime.end.p0(i64 8, ptr %o) #9, !dbg !3168
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup80 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end79, !dbg !3169

if.end79:                                         ; preds = %cleanup.cont, %for.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3170
  br label %cleanup80, !dbg !3170

cleanup80:                                        ; preds = %if.end79, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %sn) #9, !dbg !3170
  %cleanup.dest81 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest81, label %unreachable [
    i32 0, label %cleanup.cont82
    i32 4, label %for.inc83
  ]

cleanup.cont82:                                   ; preds = %cleanup80
  br label %for.inc83, !dbg !3171

for.inc83:                                        ; preds = %cleanup.cont82, %cleanup80
  %100 = load i32, ptr %n, align 4, !dbg !3172, !tbaa !1072
  %inc84 = add i32 %100, 1, !dbg !3172
  store i32 %inc84, ptr %n, align 4, !dbg !3172, !tbaa !1072
  br label %for.cond, !dbg !3173, !llvm.loop !3174

for.end85:                                        ; preds = %for.cond
  %101 = load ptr, ptr %map, align 8, !dbg !3176, !tbaa !1067
  %102 = load i32, ptr %nent, align 4, !dbg !3177, !tbaa !1072
  %add = add i32 %102, 0, !dbg !3178
  %idxprom86 = zext i32 %add to i64, !dbg !3176
  %arrayidx87 = getelementptr inbounds i32, ptr %101, i64 %idxprom86, !dbg !3176
  %103 = load i32, ptr %arrayidx87, align 4, !dbg !3176, !tbaa !1072
  %and88 = and i32 %103, 255, !dbg !3179
  %104 = load ptr, ptr %L, align 8, !dbg !3180, !tbaa !1067
  %base89 = getelementptr inbounds %struct.lua_State, ptr %104, i32 0, i32 7, !dbg !3181
  %105 = load ptr, ptr %base89, align 8, !dbg !3182, !tbaa !1499
  %idx.ext90 = zext i32 %and88 to i64, !dbg !3182
  %add.ptr91 = getelementptr inbounds %union.TValue, ptr %105, i64 %idx.ext90, !dbg !3182
  store ptr %add.ptr91, ptr %base89, align 8, !dbg !3182, !tbaa !1499
  %106 = load ptr, ptr %pc, align 8, !dbg !3183, !tbaa !1067
  %107 = load i32, ptr %106, align 4, !dbg !3183, !tbaa !1072
  %and92 = and i32 %107, 255, !dbg !3183
  switch i32 %and92, label %sw.default [
    i32 65, label %sw.bb
    i32 67, label %sw.bb
    i32 73, label %sw.bb
    i32 63, label %sw.bb
  ], !dbg !3184

sw.default:                                       ; preds = %for.end85
  %108 = load ptr, ptr %pc, align 8, !dbg !3185, !tbaa !1067
  %109 = load i32, ptr %108, align 4, !dbg !3185, !tbaa !1072
  %and93 = and i32 %109, 255, !dbg !3185
  %cmp94 = icmp ult i32 %and93, 89, !dbg !3188
  br i1 %cmp94, label %if.then96, label %if.end110, !dbg !3189

if.then96:                                        ; preds = %sw.default
  %110 = load ptr, ptr %L, align 8, !dbg !3190, !tbaa !1067
  %base97 = getelementptr inbounds %struct.lua_State, ptr %110, i32 0, i32 7, !dbg !3190
  %111 = load ptr, ptr %base97, align 8, !dbg !3190, !tbaa !1499
  %112 = load ptr, ptr %L, align 8, !dbg !3190, !tbaa !1067
  %base98 = getelementptr inbounds %struct.lua_State, ptr %112, i32 0, i32 7, !dbg !3190
  %113 = load ptr, ptr %base98, align 8, !dbg !3190, !tbaa !1499
  %add.ptr99 = getelementptr inbounds %union.TValue, ptr %113, i64 -2, !dbg !3190
  %gcptr64100 = getelementptr inbounds %struct.GCRef, ptr %add.ptr99, i32 0, i32 0, !dbg !3190
  %114 = load i64, ptr %gcptr64100, align 8, !dbg !3190, !tbaa !1280
  %and101 = and i64 %114, 140737488355327, !dbg !3190
  %115 = inttoptr i64 %and101 to ptr, !dbg !3190
  %pc102 = getelementptr inbounds %struct.GCfuncL, ptr %115, i32 0, i32 7, !dbg !3190
  %ptr64103 = getelementptr inbounds %struct.MRef, ptr %pc102, i32 0, i32 0, !dbg !3190
  %116 = load i64, ptr %ptr64103, align 8, !dbg !3190, !tbaa !1280
  %117 = inttoptr i64 %116 to ptr, !dbg !3190
  %add.ptr104 = getelementptr inbounds i8, ptr %117, i64 -104, !dbg !3190
  %framesize105 = getelementptr inbounds %struct.GCproto, ptr %add.ptr104, i32 0, i32 4, !dbg !3190
  %118 = load i8, ptr %framesize105, align 1, !dbg !3190, !tbaa !3076
  %conv106 = zext i8 %118 to i32, !dbg !3190
  %idx.ext107 = sext i32 %conv106 to i64, !dbg !3190
  %add.ptr108 = getelementptr inbounds %union.TValue, ptr %111, i64 %idx.ext107, !dbg !3190
  %119 = load ptr, ptr %L, align 8, !dbg !3192, !tbaa !1067
  %top109 = getelementptr inbounds %struct.lua_State, ptr %119, i32 0, i32 8, !dbg !3193
  store ptr %add.ptr108, ptr %top109, align 8, !dbg !3194, !tbaa !3081
  br label %sw.epilog, !dbg !3195

if.end110:                                        ; preds = %sw.default
  br label %sw.bb, !dbg !3196

sw.bb:                                            ; preds = %for.end85, %for.end85, %for.end85, %for.end85, %if.end110
  %120 = load ptr, ptr %frame, align 8, !dbg !3197, !tbaa !1067
  %121 = load ptr, ptr %snap, align 8, !dbg !3198, !tbaa !1067
  %nslots = getelementptr inbounds %struct.SnapShot, ptr %121, i32 0, i32 2, !dbg !3199
  %122 = load i8, ptr %nslots, align 2, !dbg !3199, !tbaa !1384
  %conv111 = zext i8 %122 to i32, !dbg !3198
  %idx.ext112 = sext i32 %conv111 to i64, !dbg !3200
  %add.ptr113 = getelementptr inbounds %union.TValue, ptr %120, i64 %idx.ext112, !dbg !3200
  %123 = load ptr, ptr %L, align 8, !dbg !3201, !tbaa !1067
  %top114 = getelementptr inbounds %struct.lua_State, ptr %123, i32 0, i32 8, !dbg !3202
  store ptr %add.ptr113, ptr %top114, align 8, !dbg !3203, !tbaa !3081
  br label %sw.epilog, !dbg !3204

sw.epilog:                                        ; preds = %sw.bb, %if.then96
  %124 = load ptr, ptr %pc, align 8, !dbg !3205, !tbaa !1067
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %L) #9, !dbg !3206
  call void @llvm.lifetime.end.p0(i64 8, ptr %pc) #9, !dbg !3206
  call void @llvm.lifetime.end.p0(i64 8, ptr %rfilt) #9, !dbg !3206
  call void @llvm.lifetime.end.p0(i64 8, ptr %frame) #9, !dbg !3206
  call void @llvm.lifetime.end.p0(i64 8, ptr %map) #9, !dbg !3206
  call void @llvm.lifetime.end.p0(i64 4, ptr %nent) #9, !dbg !3206
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #9, !dbg !3206
  call void @llvm.lifetime.end.p0(i64 8, ptr %snap) #9, !dbg !3206
  call void @llvm.lifetime.end.p0(i64 8, ptr %T) #9, !dbg !3206
  call void @llvm.lifetime.end.p0(i64 4, ptr %snapno) #9, !dbg !3206
  call void @llvm.lifetime.end.p0(i64 8, ptr %ex) #9, !dbg !3206
  ret ptr %124, !dbg !3207

unreachable:                                      ; preds = %cleanup80
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

declare !dbg !3208 hidden void @lj_state_growstack(ptr noundef, i32 noundef) #3

; Function Attrs: alwaysinline nounwind uwtable
define internal void @copyTV(ptr noundef %L, ptr noundef %o1, ptr noundef %o2) #4 !dbg !3212 {
entry:
  %L.addr = alloca ptr, align 8
  %o1.addr = alloca ptr, align 8
  %o2.addr = alloca ptr, align 8
  store ptr %L, ptr %L.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %L.addr, metadata !3218, metadata !DIExpression()), !dbg !3221
  store ptr %o1, ptr %o1.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %o1.addr, metadata !3219, metadata !DIExpression()), !dbg !3222
  store ptr %o2, ptr %o2.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %o2.addr, metadata !3220, metadata !DIExpression()), !dbg !3223
  %0 = load ptr, ptr %o1.addr, align 8, !dbg !3224, !tbaa !1067
  %1 = load ptr, ptr %o2.addr, align 8, !dbg !3225, !tbaa !1067
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %1, i64 8, i1 false), !dbg !3226, !tbaa.struct !3227
  %2 = load ptr, ptr %L.addr, align 8, !dbg !3230, !tbaa !1067
  ret void, !dbg !3231
}

; Function Attrs: nounwind uwtable
define internal void @snap_unsink(ptr noundef %J, ptr noundef %T, ptr noundef %ex, i32 noundef %snapno, i64 noundef %rfilt, ptr noundef %ir, ptr noundef %o) #0 !dbg !3232 {
entry:
  %J.addr = alloca ptr, align 8
  %T.addr = alloca ptr, align 8
  %ex.addr = alloca ptr, align 8
  %snapno.addr = alloca i32, align 4
  %rfilt.addr = alloca i64, align 8
  %ir.addr = alloca ptr, align 8
  %o.addr = alloca ptr, align 8
  %cts = alloca ptr, align 8
  %id = alloca i32, align 4
  %sz = alloca i32, align 4
  %info = alloca i32, align 4
  %cd = alloca ptr, align 8
  %p = alloca ptr, align 8
  %irs = alloca ptr, align 8
  %irlast = alloca ptr, align 8
  %iro = alloca ptr, align 8
  %p38 = alloca ptr, align 8
  %szs = alloca i32, align 4
  %irs91 = alloca ptr, align 8
  %irlast92 = alloca ptr, align 8
  %t93 = alloca ptr, align 8
  %irk = alloca ptr, align 8
  %tmp = alloca %union.TValue, align 8
  %val = alloca ptr, align 8
  store ptr %J, ptr %J.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %J.addr, metadata !3236, metadata !DIExpression()), !dbg !3275
  store ptr %T, ptr %T.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %T.addr, metadata !3237, metadata !DIExpression()), !dbg !3276
  store ptr %ex, ptr %ex.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %ex.addr, metadata !3238, metadata !DIExpression()), !dbg !3277
  store i32 %snapno, ptr %snapno.addr, align 4, !tbaa !1072
  tail call void @llvm.dbg.declare(metadata ptr %snapno.addr, metadata !3239, metadata !DIExpression()), !dbg !3278
  store i64 %rfilt, ptr %rfilt.addr, align 8, !tbaa !1971
  tail call void @llvm.dbg.declare(metadata ptr %rfilt.addr, metadata !3240, metadata !DIExpression()), !dbg !3279
  store ptr %ir, ptr %ir.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %ir.addr, metadata !3241, metadata !DIExpression()), !dbg !3280
  store ptr %o, ptr %o.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %o.addr, metadata !3242, metadata !DIExpression()), !dbg !3281
  %0 = load ptr, ptr %ir.addr, align 8, !dbg !3282, !tbaa !1067
  %o1 = getelementptr inbounds %struct.anon.0, ptr %0, i32 0, i32 2, !dbg !3283
  %1 = load i8, ptr %o1, align 1, !dbg !3283, !tbaa !1280
  %conv = zext i8 %1 to i32, !dbg !3282
  %cmp = icmp eq i32 %conv, 82, !dbg !3284
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3285

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %ir.addr, align 8, !dbg !3286, !tbaa !1067
  %o3 = getelementptr inbounds %struct.anon.0, ptr %2, i32 0, i32 2, !dbg !3287
  %3 = load i8, ptr %o3, align 1, !dbg !3287, !tbaa !1280
  %conv4 = zext i8 %3 to i32, !dbg !3286
  %cmp5 = icmp eq i32 %conv4, 83, !dbg !3288
  br i1 %cmp5, label %if.then, label %if.else90, !dbg !3289

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %cts) #9, !dbg !3290
  tail call void @llvm.dbg.declare(metadata ptr %cts, metadata !3243, metadata !DIExpression()), !dbg !3291
  %4 = load ptr, ptr %J.addr, align 8, !dbg !3292, !tbaa !1067
  %L = getelementptr inbounds %struct.jit_State, ptr %4, i32 0, i32 2, !dbg !3293
  %5 = load ptr, ptr %L, align 8, !dbg !3293, !tbaa !1087
  %call = call ptr @ctype_cts(ptr noundef %5), !dbg !3294
  store ptr %call, ptr %cts, align 8, !dbg !3291, !tbaa !1067
  call void @llvm.lifetime.start.p0(i64 4, ptr %id) #9, !dbg !3295
  tail call void @llvm.dbg.declare(metadata ptr %id, metadata !3246, metadata !DIExpression()), !dbg !3296
  %6 = load ptr, ptr %T.addr, align 8, !dbg !3297, !tbaa !1067
  %ir7 = getelementptr inbounds %struct.GCtrace, ptr %6, i32 0, i32 7, !dbg !3298
  %7 = load ptr, ptr %ir7, align 8, !dbg !3298, !tbaa !2072
  %8 = load ptr, ptr %ir.addr, align 8, !dbg !3299, !tbaa !1067
  %op1 = getelementptr inbounds %struct.anon, ptr %8, i32 0, i32 0, !dbg !3300
  %9 = load i16, ptr %op1, align 8, !dbg !3300, !tbaa !1280
  %idxprom = zext i16 %9 to i64, !dbg !3297
  %arrayidx = getelementptr inbounds %union.IRIns, ptr %7, i64 %idxprom, !dbg !3297
  %10 = load i32, ptr %arrayidx, align 8, !dbg !3301, !tbaa !1280
  store i32 %10, ptr %id, align 4, !dbg !3296, !tbaa !1072
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #9, !dbg !3302
  tail call void @llvm.dbg.declare(metadata ptr %sz, metadata !3247, metadata !DIExpression()), !dbg !3303
  call void @llvm.lifetime.start.p0(i64 4, ptr %info) #9, !dbg !3304
  tail call void @llvm.dbg.declare(metadata ptr %info, metadata !3248, metadata !DIExpression()), !dbg !3305
  %11 = load ptr, ptr %cts, align 8, !dbg !3306, !tbaa !1067
  %12 = load i32, ptr %id, align 4, !dbg !3307, !tbaa !1072
  %call8 = call i32 @lj_ctype_info(ptr noundef %11, i32 noundef %12, ptr noundef %sz), !dbg !3308
  store i32 %call8, ptr %info, align 4, !dbg !3305, !tbaa !1072
  call void @llvm.lifetime.start.p0(i64 8, ptr %cd) #9, !dbg !3309
  tail call void @llvm.dbg.declare(metadata ptr %cd, metadata !3249, metadata !DIExpression()), !dbg !3310
  %13 = load ptr, ptr %cts, align 8, !dbg !3311, !tbaa !1067
  %14 = load i32, ptr %id, align 4, !dbg !3312, !tbaa !1072
  %15 = load i32, ptr %sz, align 4, !dbg !3313, !tbaa !1072
  %16 = load i32, ptr %info, align 4, !dbg !3314, !tbaa !1072
  %call9 = call ptr @lj_cdata_newx(ptr noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16), !dbg !3315
  store ptr %call9, ptr %cd, align 8, !dbg !3310, !tbaa !1067
  %17 = load ptr, ptr %J.addr, align 8, !dbg !3316, !tbaa !1067
  %L10 = getelementptr inbounds %struct.jit_State, ptr %17, i32 0, i32 2, !dbg !3317
  %18 = load ptr, ptr %L10, align 8, !dbg !3317, !tbaa !1087
  %19 = load ptr, ptr %o.addr, align 8, !dbg !3318, !tbaa !1067
  %20 = load ptr, ptr %cd, align 8, !dbg !3319, !tbaa !1067
  call void @setcdataV(ptr noundef %18, ptr noundef %19, ptr noundef %20), !dbg !3320
  %21 = load ptr, ptr %ir.addr, align 8, !dbg !3321, !tbaa !1067
  %o11 = getelementptr inbounds %struct.anon.0, ptr %21, i32 0, i32 2, !dbg !3322
  %22 = load i8, ptr %o11, align 1, !dbg !3322, !tbaa !1280
  %conv12 = zext i8 %22 to i32, !dbg !3321
  %cmp13 = icmp eq i32 %conv12, 83, !dbg !3323
  br i1 %cmp13, label %if.then15, label %if.else, !dbg !3324

if.then15:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #9, !dbg !3325
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !3251, metadata !DIExpression()), !dbg !3326
  %23 = load ptr, ptr %cd, align 8, !dbg !3327, !tbaa !1067
  %add.ptr = getelementptr inbounds %struct.GCcdata, ptr %23, i64 1, !dbg !3327
  store ptr %add.ptr, ptr %p, align 8, !dbg !3326, !tbaa !1067
  %24 = load ptr, ptr %T.addr, align 8, !dbg !3328, !tbaa !1067
  %25 = load ptr, ptr %ex.addr, align 8, !dbg !3329, !tbaa !1067
  %26 = load i32, ptr %snapno.addr, align 4, !dbg !3330, !tbaa !1072
  %27 = load i64, ptr %rfilt.addr, align 8, !dbg !3331, !tbaa !1971
  %28 = load ptr, ptr %ir.addr, align 8, !dbg !3332, !tbaa !1067
  %op2 = getelementptr inbounds %struct.anon, ptr %28, i32 0, i32 1, !dbg !3333
  %29 = load i16, ptr %op2, align 2, !dbg !3333, !tbaa !1280
  %conv16 = zext i16 %29 to i32, !dbg !3332
  %30 = load ptr, ptr %p, align 8, !dbg !3334, !tbaa !1067
  %31 = load i32, ptr %sz, align 4, !dbg !3335, !tbaa !1072
  call void @snap_restoredata(ptr noundef %24, ptr noundef %25, i32 noundef %26, i64 noundef %27, i32 noundef %conv16, ptr noundef %30, i32 noundef %31), !dbg !3336
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #9, !dbg !3337
  br label %if.end89, !dbg !3338

if.else:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %irs) #9, !dbg !3339
  tail call void @llvm.dbg.declare(metadata ptr %irs, metadata !3254, metadata !DIExpression()), !dbg !3340
  call void @llvm.lifetime.start.p0(i64 8, ptr %irlast) #9, !dbg !3339
  tail call void @llvm.dbg.declare(metadata ptr %irlast, metadata !3256, metadata !DIExpression()), !dbg !3341
  %32 = load ptr, ptr %T.addr, align 8, !dbg !3342, !tbaa !1067
  %ir17 = getelementptr inbounds %struct.GCtrace, ptr %32, i32 0, i32 7, !dbg !3343
  %33 = load ptr, ptr %ir17, align 8, !dbg !3343, !tbaa !2072
  %34 = load ptr, ptr %T.addr, align 8, !dbg !3344, !tbaa !1067
  %snap = getelementptr inbounds %struct.GCtrace, ptr %34, i32 0, i32 10, !dbg !3345
  %35 = load ptr, ptr %snap, align 8, !dbg !3345, !tbaa !2002
  %36 = load i32, ptr %snapno.addr, align 4, !dbg !3346, !tbaa !1072
  %idxprom18 = zext i32 %36 to i64, !dbg !3344
  %arrayidx19 = getelementptr inbounds %struct.SnapShot, ptr %35, i64 %idxprom18, !dbg !3344
  %ref = getelementptr inbounds %struct.SnapShot, ptr %arrayidx19, i32 0, i32 1, !dbg !3347
  %37 = load i16, ptr %ref, align 4, !dbg !3347, !tbaa !1201
  %idxprom20 = zext i16 %37 to i64, !dbg !3342
  %arrayidx21 = getelementptr inbounds %union.IRIns, ptr %33, i64 %idxprom20, !dbg !3342
  store ptr %arrayidx21, ptr %irlast, align 8, !dbg !3341, !tbaa !1067
  %38 = load ptr, ptr %ir.addr, align 8, !dbg !3348, !tbaa !1067
  %add.ptr22 = getelementptr inbounds %union.IRIns, ptr %38, i64 1, !dbg !3349
  store ptr %add.ptr22, ptr %irs, align 8, !dbg !3350, !tbaa !1067
  br label %for.cond, !dbg !3351

for.cond:                                         ; preds = %for.inc, %if.else
  %39 = load ptr, ptr %irs, align 8, !dbg !3352, !tbaa !1067
  %40 = load ptr, ptr %irlast, align 8, !dbg !3353, !tbaa !1067
  %cmp23 = icmp ult ptr %39, %40, !dbg !3354
  br i1 %cmp23, label %for.body, label %for.end, !dbg !3355

for.body:                                         ; preds = %for.cond
  %41 = load ptr, ptr %irs, align 8, !dbg !3356, !tbaa !1067
  %r = getelementptr inbounds %struct.anon.0, ptr %41, i32 0, i32 3, !dbg !3357
  %42 = load i8, ptr %r, align 2, !dbg !3357, !tbaa !1280
  %conv25 = zext i8 %42 to i32, !dbg !3356
  %cmp26 = icmp eq i32 %conv25, 254, !dbg !3358
  br i1 %cmp26, label %land.lhs.true, label %if.end88, !dbg !3359

land.lhs.true:                                    ; preds = %for.body
  %43 = load ptr, ptr %T.addr, align 8, !dbg !3360, !tbaa !1067
  %44 = load ptr, ptr %ir.addr, align 8, !dbg !3361, !tbaa !1067
  %45 = load ptr, ptr %irs, align 8, !dbg !3362, !tbaa !1067
  %call28 = call i32 @snap_sunk_store(ptr noundef %43, ptr noundef %44, ptr noundef %45), !dbg !3363
  %tobool = icmp ne i32 %call28, 0, !dbg !3363
  br i1 %tobool, label %if.then29, label %if.end88, !dbg !3364

if.then29:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %iro) #9, !dbg !3365
  tail call void @llvm.dbg.declare(metadata ptr %iro, metadata !3257, metadata !DIExpression()), !dbg !3366
  %46 = load ptr, ptr %T.addr, align 8, !dbg !3367, !tbaa !1067
  %ir30 = getelementptr inbounds %struct.GCtrace, ptr %46, i32 0, i32 7, !dbg !3368
  %47 = load ptr, ptr %ir30, align 8, !dbg !3368, !tbaa !2072
  %48 = load ptr, ptr %T.addr, align 8, !dbg !3369, !tbaa !1067
  %ir31 = getelementptr inbounds %struct.GCtrace, ptr %48, i32 0, i32 7, !dbg !3370
  %49 = load ptr, ptr %ir31, align 8, !dbg !3370, !tbaa !2072
  %50 = load ptr, ptr %irs, align 8, !dbg !3371, !tbaa !1067
  %op132 = getelementptr inbounds %struct.anon, ptr %50, i32 0, i32 0, !dbg !3372
  %51 = load i16, ptr %op132, align 8, !dbg !3372, !tbaa !1280
  %idxprom33 = zext i16 %51 to i64, !dbg !3369
  %arrayidx34 = getelementptr inbounds %union.IRIns, ptr %49, i64 %idxprom33, !dbg !3369
  %op235 = getelementptr inbounds %struct.anon, ptr %arrayidx34, i32 0, i32 1, !dbg !3373
  %52 = load i16, ptr %op235, align 2, !dbg !3373, !tbaa !1280
  %idxprom36 = zext i16 %52 to i64, !dbg !3367
  %arrayidx37 = getelementptr inbounds %union.IRIns, ptr %47, i64 %idxprom36, !dbg !3367
  store ptr %arrayidx37, ptr %iro, align 8, !dbg !3366, !tbaa !1067
  call void @llvm.lifetime.start.p0(i64 8, ptr %p38) #9, !dbg !3374
  tail call void @llvm.dbg.declare(metadata ptr %p38, metadata !3262, metadata !DIExpression()), !dbg !3375
  %53 = load ptr, ptr %cd, align 8, !dbg !3376, !tbaa !1067
  store ptr %53, ptr %p38, align 8, !dbg !3375, !tbaa !1067
  call void @llvm.lifetime.start.p0(i64 4, ptr %szs) #9, !dbg !3377
  tail call void @llvm.dbg.declare(metadata ptr %szs, metadata !3263, metadata !DIExpression()), !dbg !3378
  %54 = load ptr, ptr %irs, align 8, !dbg !3379, !tbaa !1067
  %t = getelementptr inbounds %struct.anon.0, ptr %54, i32 0, i32 1, !dbg !3379
  %irt = getelementptr inbounds %struct.IRType1, ptr %t, i32 0, i32 0, !dbg !3379
  %55 = load i8, ptr %irt, align 4, !dbg !3379, !tbaa !1280
  %conv39 = zext i8 %55 to i32, !dbg !3379
  %and = and i32 %conv39, 31, !dbg !3379
  %shr = lshr i32 6315993, %and, !dbg !3379
  %and40 = and i32 %shr, 1, !dbg !3379
  %tobool41 = icmp ne i32 %and40, 0, !dbg !3379
  br i1 %tobool41, label %if.then42, label %if.else43, !dbg !3381

if.then42:                                        ; preds = %if.then29
  store i32 8, ptr %szs, align 4, !dbg !3382, !tbaa !1072
  br label %if.end75, !dbg !3383

if.else43:                                        ; preds = %if.then29
  %56 = load ptr, ptr %irs, align 8, !dbg !3384, !tbaa !1067
  %t44 = getelementptr inbounds %struct.anon.0, ptr %56, i32 0, i32 1, !dbg !3384
  %irt45 = getelementptr inbounds %struct.IRType1, ptr %t44, i32 0, i32 0, !dbg !3384
  %57 = load i8, ptr %irt45, align 4, !dbg !3384, !tbaa !1280
  %conv46 = zext i8 %57 to i32, !dbg !3384
  %and47 = and i32 %conv46, 31, !dbg !3384
  %cmp48 = icmp eq i32 %and47, 15, !dbg !3384
  br i1 %cmp48, label %if.then57, label %lor.lhs.false50, !dbg !3386

lor.lhs.false50:                                  ; preds = %if.else43
  %58 = load ptr, ptr %irs, align 8, !dbg !3387, !tbaa !1067
  %t51 = getelementptr inbounds %struct.anon.0, ptr %58, i32 0, i32 1, !dbg !3387
  %irt52 = getelementptr inbounds %struct.IRType1, ptr %t51, i32 0, i32 0, !dbg !3387
  %59 = load i8, ptr %irt52, align 4, !dbg !3387, !tbaa !1280
  %conv53 = zext i8 %59 to i32, !dbg !3387
  %and54 = and i32 %conv53, 31, !dbg !3387
  %cmp55 = icmp eq i32 %and54, 16, !dbg !3387
  br i1 %cmp55, label %if.then57, label %if.else58, !dbg !3388

if.then57:                                        ; preds = %lor.lhs.false50, %if.else43
  store i32 1, ptr %szs, align 4, !dbg !3389, !tbaa !1072
  br label %if.end74, !dbg !3390

if.else58:                                        ; preds = %lor.lhs.false50
  %60 = load ptr, ptr %irs, align 8, !dbg !3391, !tbaa !1067
  %t59 = getelementptr inbounds %struct.anon.0, ptr %60, i32 0, i32 1, !dbg !3391
  %irt60 = getelementptr inbounds %struct.IRType1, ptr %t59, i32 0, i32 0, !dbg !3391
  %61 = load i8, ptr %irt60, align 4, !dbg !3391, !tbaa !1280
  %conv61 = zext i8 %61 to i32, !dbg !3391
  %and62 = and i32 %conv61, 31, !dbg !3391
  %cmp63 = icmp eq i32 %and62, 17, !dbg !3391
  br i1 %cmp63, label %if.then72, label %lor.lhs.false65, !dbg !3393

lor.lhs.false65:                                  ; preds = %if.else58
  %62 = load ptr, ptr %irs, align 8, !dbg !3394, !tbaa !1067
  %t66 = getelementptr inbounds %struct.anon.0, ptr %62, i32 0, i32 1, !dbg !3394
  %irt67 = getelementptr inbounds %struct.IRType1, ptr %t66, i32 0, i32 0, !dbg !3394
  %63 = load i8, ptr %irt67, align 4, !dbg !3394, !tbaa !1280
  %conv68 = zext i8 %63 to i32, !dbg !3394
  %and69 = and i32 %conv68, 31, !dbg !3394
  %cmp70 = icmp eq i32 %and69, 18, !dbg !3394
  br i1 %cmp70, label %if.then72, label %if.else73, !dbg !3395

if.then72:                                        ; preds = %lor.lhs.false65, %if.else58
  store i32 2, ptr %szs, align 4, !dbg !3396, !tbaa !1072
  br label %if.end, !dbg !3397

if.else73:                                        ; preds = %lor.lhs.false65
  store i32 4, ptr %szs, align 4, !dbg !3398, !tbaa !1072
  br label %if.end

if.end:                                           ; preds = %if.else73, %if.then72
  br label %if.end74

if.end74:                                         ; preds = %if.end, %if.then57
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.then42
  %64 = load ptr, ptr %iro, align 8, !dbg !3399, !tbaa !1067
  %o76 = getelementptr inbounds %struct.anon.0, ptr %64, i32 0, i32 2, !dbg !3401
  %65 = load i8, ptr %o76, align 1, !dbg !3401, !tbaa !1280
  %conv77 = zext i8 %65 to i32, !dbg !3399
  %cmp78 = icmp eq i32 %conv77, 29, !dbg !3402
  br i1 %cmp78, label %if.then80, label %if.else83, !dbg !3403

if.then80:                                        ; preds = %if.end75
  %66 = load ptr, ptr %iro, align 8, !dbg !3404, !tbaa !1067
  %arrayidx81 = getelementptr inbounds %union.IRIns, ptr %66, i64 1, !dbg !3404
  %67 = load i64, ptr %arrayidx81, align 8, !dbg !3405, !tbaa !1280
  %68 = load ptr, ptr %p38, align 8, !dbg !3406, !tbaa !1067
  %add.ptr82 = getelementptr inbounds i8, ptr %68, i64 %67, !dbg !3406
  store ptr %add.ptr82, ptr %p38, align 8, !dbg !3406, !tbaa !1067
  br label %if.end85, !dbg !3407

if.else83:                                        ; preds = %if.end75
  %69 = load ptr, ptr %iro, align 8, !dbg !3408, !tbaa !1067
  %70 = load i32, ptr %69, align 8, !dbg !3409, !tbaa !1280
  %71 = load ptr, ptr %p38, align 8, !dbg !3410, !tbaa !1067
  %idx.ext = sext i32 %70 to i64, !dbg !3410
  %add.ptr84 = getelementptr inbounds i8, ptr %71, i64 %idx.ext, !dbg !3410
  store ptr %add.ptr84, ptr %p38, align 8, !dbg !3410, !tbaa !1067
  br label %if.end85

if.end85:                                         ; preds = %if.else83, %if.then80
  %72 = load ptr, ptr %T.addr, align 8, !dbg !3411, !tbaa !1067
  %73 = load ptr, ptr %ex.addr, align 8, !dbg !3412, !tbaa !1067
  %74 = load i32, ptr %snapno.addr, align 4, !dbg !3413, !tbaa !1072
  %75 = load i64, ptr %rfilt.addr, align 8, !dbg !3414, !tbaa !1971
  %76 = load ptr, ptr %irs, align 8, !dbg !3415, !tbaa !1067
  %op286 = getelementptr inbounds %struct.anon, ptr %76, i32 0, i32 1, !dbg !3416
  %77 = load i16, ptr %op286, align 2, !dbg !3416, !tbaa !1280
  %conv87 = zext i16 %77 to i32, !dbg !3415
  %78 = load ptr, ptr %p38, align 8, !dbg !3417, !tbaa !1067
  %79 = load i32, ptr %szs, align 4, !dbg !3418, !tbaa !1072
  call void @snap_restoredata(ptr noundef %72, ptr noundef %73, i32 noundef %74, i64 noundef %75, i32 noundef %conv87, ptr noundef %78, i32 noundef %79), !dbg !3419
  call void @llvm.lifetime.end.p0(i64 4, ptr %szs) #9, !dbg !3420
  call void @llvm.lifetime.end.p0(i64 8, ptr %p38) #9, !dbg !3420
  call void @llvm.lifetime.end.p0(i64 8, ptr %iro) #9, !dbg !3420
  br label %if.end88, !dbg !3421

if.end88:                                         ; preds = %if.end85, %land.lhs.true, %for.body
  br label %for.inc, !dbg !3422

for.inc:                                          ; preds = %if.end88
  %80 = load ptr, ptr %irs, align 8, !dbg !3423, !tbaa !1067
  %incdec.ptr = getelementptr inbounds %union.IRIns, ptr %80, i32 1, !dbg !3423
  store ptr %incdec.ptr, ptr %irs, align 8, !dbg !3423, !tbaa !1067
  br label %for.cond, !dbg !3424, !llvm.loop !3425

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %irlast) #9, !dbg !3427
  call void @llvm.lifetime.end.p0(i64 8, ptr %irs) #9, !dbg !3427
  br label %if.end89

if.end89:                                         ; preds = %for.end, %if.then15
  call void @llvm.lifetime.end.p0(i64 8, ptr %cd) #9, !dbg !3428
  call void @llvm.lifetime.end.p0(i64 4, ptr %info) #9, !dbg !3428
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #9, !dbg !3428
  call void @llvm.lifetime.end.p0(i64 4, ptr %id) #9, !dbg !3428
  call void @llvm.lifetime.end.p0(i64 8, ptr %cts) #9, !dbg !3428
  br label %if.end171, !dbg !3429

if.else90:                                        ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %irs91) #9, !dbg !3430
  tail call void @llvm.dbg.declare(metadata ptr %irs91, metadata !3264, metadata !DIExpression()), !dbg !3431
  call void @llvm.lifetime.start.p0(i64 8, ptr %irlast92) #9, !dbg !3430
  tail call void @llvm.dbg.declare(metadata ptr %irlast92, metadata !3266, metadata !DIExpression()), !dbg !3432
  call void @llvm.lifetime.start.p0(i64 8, ptr %t93) #9, !dbg !3433
  tail call void @llvm.dbg.declare(metadata ptr %t93, metadata !3267, metadata !DIExpression()), !dbg !3434
  %81 = load ptr, ptr %ir.addr, align 8, !dbg !3435, !tbaa !1067
  %o94 = getelementptr inbounds %struct.anon.0, ptr %81, i32 0, i32 2, !dbg !3436
  %82 = load i8, ptr %o94, align 1, !dbg !3436, !tbaa !1280
  %conv95 = zext i8 %82 to i32, !dbg !3435
  %cmp96 = icmp eq i32 %conv95, 80, !dbg !3437
  br i1 %cmp96, label %cond.true, label %cond.false, !dbg !3435

cond.true:                                        ; preds = %if.else90
  %83 = load ptr, ptr %J.addr, align 8, !dbg !3438, !tbaa !1067
  %L98 = getelementptr inbounds %struct.jit_State, ptr %83, i32 0, i32 2, !dbg !3439
  %84 = load ptr, ptr %L98, align 8, !dbg !3439, !tbaa !1087
  %85 = load ptr, ptr %ir.addr, align 8, !dbg !3440, !tbaa !1067
  %op199 = getelementptr inbounds %struct.anon, ptr %85, i32 0, i32 0, !dbg !3441
  %86 = load i16, ptr %op199, align 8, !dbg !3441, !tbaa !1280
  %conv100 = zext i16 %86 to i32, !dbg !3440
  %87 = load ptr, ptr %ir.addr, align 8, !dbg !3442, !tbaa !1067
  %op2101 = getelementptr inbounds %struct.anon, ptr %87, i32 0, i32 1, !dbg !3443
  %88 = load i16, ptr %op2101, align 2, !dbg !3443, !tbaa !1280
  %conv102 = zext i16 %88 to i32, !dbg !3442
  %call103 = call ptr @lj_tab_new(ptr noundef %84, i32 noundef %conv100, i32 noundef %conv102), !dbg !3444
  br label %cond.end, !dbg !3435

cond.false:                                       ; preds = %if.else90
  %89 = load ptr, ptr %J.addr, align 8, !dbg !3445, !tbaa !1067
  %L104 = getelementptr inbounds %struct.jit_State, ptr %89, i32 0, i32 2, !dbg !3446
  %90 = load ptr, ptr %L104, align 8, !dbg !3446, !tbaa !1087
  %91 = load ptr, ptr %T.addr, align 8, !dbg !3447, !tbaa !1067
  %ir105 = getelementptr inbounds %struct.GCtrace, ptr %91, i32 0, i32 7, !dbg !3447
  %92 = load ptr, ptr %ir105, align 8, !dbg !3447, !tbaa !2072
  %93 = load ptr, ptr %ir.addr, align 8, !dbg !3447, !tbaa !1067
  %op1106 = getelementptr inbounds %struct.anon, ptr %93, i32 0, i32 0, !dbg !3447
  %94 = load i16, ptr %op1106, align 8, !dbg !3447, !tbaa !1280
  %idxprom107 = zext i16 %94 to i64, !dbg !3447
  %arrayidx108 = getelementptr inbounds %union.IRIns, ptr %92, i64 %idxprom107, !dbg !3447
  %arrayidx109 = getelementptr inbounds %union.IRIns, ptr %arrayidx108, i64 1, !dbg !3447
  %gcptr64 = getelementptr inbounds %struct.GCRef, ptr %arrayidx109, i32 0, i32 0, !dbg !3447
  %95 = load i64, ptr %gcptr64, align 8, !dbg !3447, !tbaa !1280
  %96 = inttoptr i64 %95 to ptr, !dbg !3447
  %call110 = call ptr @lj_tab_dup(ptr noundef %90, ptr noundef %96), !dbg !3448
  br label %cond.end, !dbg !3435

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call103, %cond.true ], [ %call110, %cond.false ], !dbg !3435
  store ptr %cond, ptr %t93, align 8, !dbg !3434, !tbaa !1067
  %97 = load ptr, ptr %J.addr, align 8, !dbg !3449, !tbaa !1067
  %L111 = getelementptr inbounds %struct.jit_State, ptr %97, i32 0, i32 2, !dbg !3450
  %98 = load ptr, ptr %L111, align 8, !dbg !3450, !tbaa !1087
  %99 = load ptr, ptr %o.addr, align 8, !dbg !3451, !tbaa !1067
  %100 = load ptr, ptr %t93, align 8, !dbg !3452, !tbaa !1067
  call void @settabV(ptr noundef %98, ptr noundef %99, ptr noundef %100), !dbg !3453
  %101 = load ptr, ptr %T.addr, align 8, !dbg !3454, !tbaa !1067
  %ir112 = getelementptr inbounds %struct.GCtrace, ptr %101, i32 0, i32 7, !dbg !3455
  %102 = load ptr, ptr %ir112, align 8, !dbg !3455, !tbaa !2072
  %103 = load ptr, ptr %T.addr, align 8, !dbg !3456, !tbaa !1067
  %snap113 = getelementptr inbounds %struct.GCtrace, ptr %103, i32 0, i32 10, !dbg !3457
  %104 = load ptr, ptr %snap113, align 8, !dbg !3457, !tbaa !2002
  %105 = load i32, ptr %snapno.addr, align 4, !dbg !3458, !tbaa !1072
  %idxprom114 = zext i32 %105 to i64, !dbg !3456
  %arrayidx115 = getelementptr inbounds %struct.SnapShot, ptr %104, i64 %idxprom114, !dbg !3456
  %ref116 = getelementptr inbounds %struct.SnapShot, ptr %arrayidx115, i32 0, i32 1, !dbg !3459
  %106 = load i16, ptr %ref116, align 4, !dbg !3459, !tbaa !1201
  %idxprom117 = zext i16 %106 to i64, !dbg !3454
  %arrayidx118 = getelementptr inbounds %union.IRIns, ptr %102, i64 %idxprom117, !dbg !3454
  store ptr %arrayidx118, ptr %irlast92, align 8, !dbg !3460, !tbaa !1067
  %107 = load ptr, ptr %ir.addr, align 8, !dbg !3461, !tbaa !1067
  %add.ptr119 = getelementptr inbounds %union.IRIns, ptr %107, i64 1, !dbg !3462
  store ptr %add.ptr119, ptr %irs91, align 8, !dbg !3463, !tbaa !1067
  br label %for.cond120, !dbg !3464

for.cond120:                                      ; preds = %for.inc168, %cond.end
  %108 = load ptr, ptr %irs91, align 8, !dbg !3465, !tbaa !1067
  %109 = load ptr, ptr %irlast92, align 8, !dbg !3466, !tbaa !1067
  %cmp121 = icmp ult ptr %108, %109, !dbg !3467
  br i1 %cmp121, label %for.body123, label %for.end170, !dbg !3468

for.body123:                                      ; preds = %for.cond120
  %110 = load ptr, ptr %irs91, align 8, !dbg !3469, !tbaa !1067
  %r124 = getelementptr inbounds %struct.anon.0, ptr %110, i32 0, i32 3, !dbg !3470
  %111 = load i8, ptr %r124, align 2, !dbg !3470, !tbaa !1280
  %conv125 = zext i8 %111 to i32, !dbg !3469
  %cmp126 = icmp eq i32 %conv125, 254, !dbg !3471
  br i1 %cmp126, label %land.lhs.true128, label %if.end167, !dbg !3472

land.lhs.true128:                                 ; preds = %for.body123
  %112 = load ptr, ptr %T.addr, align 8, !dbg !3473, !tbaa !1067
  %113 = load ptr, ptr %ir.addr, align 8, !dbg !3474, !tbaa !1067
  %114 = load ptr, ptr %irs91, align 8, !dbg !3475, !tbaa !1067
  %call129 = call i32 @snap_sunk_store(ptr noundef %112, ptr noundef %113, ptr noundef %114), !dbg !3476
  %tobool130 = icmp ne i32 %call129, 0, !dbg !3476
  br i1 %tobool130, label %if.then131, label %if.end167, !dbg !3477

if.then131:                                       ; preds = %land.lhs.true128
  call void @llvm.lifetime.start.p0(i64 8, ptr %irk) #9, !dbg !3478
  tail call void @llvm.dbg.declare(metadata ptr %irk, metadata !3268, metadata !DIExpression()), !dbg !3479
  %115 = load ptr, ptr %T.addr, align 8, !dbg !3480, !tbaa !1067
  %ir132 = getelementptr inbounds %struct.GCtrace, ptr %115, i32 0, i32 7, !dbg !3481
  %116 = load ptr, ptr %ir132, align 8, !dbg !3481, !tbaa !2072
  %117 = load ptr, ptr %irs91, align 8, !dbg !3482, !tbaa !1067
  %op1133 = getelementptr inbounds %struct.anon, ptr %117, i32 0, i32 0, !dbg !3483
  %118 = load i16, ptr %op1133, align 8, !dbg !3483, !tbaa !1280
  %idxprom134 = zext i16 %118 to i64, !dbg !3480
  %arrayidx135 = getelementptr inbounds %union.IRIns, ptr %116, i64 %idxprom134, !dbg !3480
  store ptr %arrayidx135, ptr %irk, align 8, !dbg !3479, !tbaa !1067
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #9, !dbg !3484
  tail call void @llvm.dbg.declare(metadata ptr %tmp, metadata !3273, metadata !DIExpression()), !dbg !3485
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #9, !dbg !3484
  tail call void @llvm.dbg.declare(metadata ptr %val, metadata !3274, metadata !DIExpression()), !dbg !3486
  %119 = load ptr, ptr %irk, align 8, !dbg !3487, !tbaa !1067
  %o136 = getelementptr inbounds %struct.anon.0, ptr %119, i32 0, i32 2, !dbg !3489
  %120 = load i8, ptr %o136, align 1, !dbg !3489, !tbaa !1280
  %conv137 = zext i8 %120 to i32, !dbg !3487
  %cmp138 = icmp eq i32 %conv137, 63, !dbg !3490
  br i1 %cmp138, label %if.then140, label %if.else146, !dbg !3491

if.then140:                                       ; preds = %if.then131
  %121 = load ptr, ptr %J.addr, align 8, !dbg !3492, !tbaa !1067
  %122 = load ptr, ptr %T.addr, align 8, !dbg !3494, !tbaa !1067
  %123 = load ptr, ptr %ex.addr, align 8, !dbg !3495, !tbaa !1067
  %124 = load i32, ptr %snapno.addr, align 4, !dbg !3496, !tbaa !1072
  %125 = load i64, ptr %rfilt.addr, align 8, !dbg !3497, !tbaa !1971
  %126 = load ptr, ptr %irs91, align 8, !dbg !3498, !tbaa !1067
  %op2141 = getelementptr inbounds %struct.anon, ptr %126, i32 0, i32 1, !dbg !3499
  %127 = load i16, ptr %op2141, align 2, !dbg !3499, !tbaa !1280
  %conv142 = zext i16 %127 to i32, !dbg !3498
  call void @snap_restoreval(ptr noundef %121, ptr noundef %122, ptr noundef %123, i32 noundef %124, i64 noundef %125, i32 noundef %conv142, ptr noundef %tmp), !dbg !3500
  %gcptr64143 = getelementptr inbounds %struct.GCRef, ptr %tmp, i32 0, i32 0, !dbg !3501
  %128 = load i64, ptr %gcptr64143, align 8, !dbg !3501, !tbaa !1280
  %and144 = and i64 %128, 140737488355327, !dbg !3501
  %129 = inttoptr i64 %and144 to ptr, !dbg !3501
  %130 = ptrtoint ptr %129 to i64, !dbg !3501
  %131 = load ptr, ptr %t93, align 8, !dbg !3501, !tbaa !1067
  %metatable = getelementptr inbounds %struct.GCtab, ptr %131, i32 0, i32 7, !dbg !3501
  %gcptr64145 = getelementptr inbounds %struct.GCRef, ptr %metatable, i32 0, i32 0, !dbg !3501
  store i64 %130, ptr %gcptr64145, align 8, !dbg !3501, !tbaa !3502
  br label %if.end166, !dbg !3504

if.else146:                                       ; preds = %if.then131
  %132 = load ptr, ptr %T.addr, align 8, !dbg !3505, !tbaa !1067
  %ir147 = getelementptr inbounds %struct.GCtrace, ptr %132, i32 0, i32 7, !dbg !3507
  %133 = load ptr, ptr %ir147, align 8, !dbg !3507, !tbaa !2072
  %134 = load ptr, ptr %irk, align 8, !dbg !3508, !tbaa !1067
  %op2148 = getelementptr inbounds %struct.anon, ptr %134, i32 0, i32 1, !dbg !3509
  %135 = load i16, ptr %op2148, align 2, !dbg !3509, !tbaa !1280
  %idxprom149 = zext i16 %135 to i64, !dbg !3505
  %arrayidx150 = getelementptr inbounds %union.IRIns, ptr %133, i64 %idxprom149, !dbg !3505
  store ptr %arrayidx150, ptr %irk, align 8, !dbg !3510, !tbaa !1067
  %136 = load ptr, ptr %irk, align 8, !dbg !3511, !tbaa !1067
  %o151 = getelementptr inbounds %struct.anon.0, ptr %136, i32 0, i32 2, !dbg !3513
  %137 = load i8, ptr %o151, align 1, !dbg !3513, !tbaa !1280
  %conv152 = zext i8 %137 to i32, !dbg !3511
  %cmp153 = icmp eq i32 %conv152, 30, !dbg !3514
  br i1 %cmp153, label %if.then155, label %if.end160, !dbg !3515

if.then155:                                       ; preds = %if.else146
  %138 = load ptr, ptr %T.addr, align 8, !dbg !3516, !tbaa !1067
  %ir156 = getelementptr inbounds %struct.GCtrace, ptr %138, i32 0, i32 7, !dbg !3517
  %139 = load ptr, ptr %ir156, align 8, !dbg !3517, !tbaa !2072
  %140 = load ptr, ptr %irk, align 8, !dbg !3518, !tbaa !1067
  %op1157 = getelementptr inbounds %struct.anon, ptr %140, i32 0, i32 0, !dbg !3519
  %141 = load i16, ptr %op1157, align 8, !dbg !3519, !tbaa !1280
  %idxprom158 = zext i16 %141 to i64, !dbg !3516
  %arrayidx159 = getelementptr inbounds %union.IRIns, ptr %139, i64 %idxprom158, !dbg !3516
  store ptr %arrayidx159, ptr %irk, align 8, !dbg !3520, !tbaa !1067
  br label %if.end160, !dbg !3521

if.end160:                                        ; preds = %if.then155, %if.else146
  %142 = load ptr, ptr %J.addr, align 8, !dbg !3522, !tbaa !1067
  %L161 = getelementptr inbounds %struct.jit_State, ptr %142, i32 0, i32 2, !dbg !3523
  %143 = load ptr, ptr %L161, align 8, !dbg !3523, !tbaa !1087
  %144 = load ptr, ptr %irk, align 8, !dbg !3524, !tbaa !1067
  call void @lj_ir_kvalue(ptr noundef %143, ptr noundef %tmp, ptr noundef %144), !dbg !3525
  %145 = load ptr, ptr %J.addr, align 8, !dbg !3526, !tbaa !1067
  %L162 = getelementptr inbounds %struct.jit_State, ptr %145, i32 0, i32 2, !dbg !3527
  %146 = load ptr, ptr %L162, align 8, !dbg !3527, !tbaa !1087
  %147 = load ptr, ptr %t93, align 8, !dbg !3528, !tbaa !1067
  %call163 = call ptr @lj_tab_set(ptr noundef %146, ptr noundef %147, ptr noundef %tmp), !dbg !3529
  store ptr %call163, ptr %val, align 8, !dbg !3530, !tbaa !1067
  %148 = load ptr, ptr %J.addr, align 8, !dbg !3531, !tbaa !1067
  %149 = load ptr, ptr %T.addr, align 8, !dbg !3532, !tbaa !1067
  %150 = load ptr, ptr %ex.addr, align 8, !dbg !3533, !tbaa !1067
  %151 = load i32, ptr %snapno.addr, align 4, !dbg !3534, !tbaa !1072
  %152 = load i64, ptr %rfilt.addr, align 8, !dbg !3535, !tbaa !1971
  %153 = load ptr, ptr %irs91, align 8, !dbg !3536, !tbaa !1067
  %op2164 = getelementptr inbounds %struct.anon, ptr %153, i32 0, i32 1, !dbg !3537
  %154 = load i16, ptr %op2164, align 2, !dbg !3537, !tbaa !1280
  %conv165 = zext i16 %154 to i32, !dbg !3536
  %155 = load ptr, ptr %val, align 8, !dbg !3538, !tbaa !1067
  call void @snap_restoreval(ptr noundef %148, ptr noundef %149, ptr noundef %150, i32 noundef %151, i64 noundef %152, i32 noundef %conv165, ptr noundef %155), !dbg !3539
  br label %if.end166

if.end166:                                        ; preds = %if.end160, %if.then140
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #9, !dbg !3540
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #9, !dbg !3540
  call void @llvm.lifetime.end.p0(i64 8, ptr %irk) #9, !dbg !3540
  br label %if.end167, !dbg !3541

if.end167:                                        ; preds = %if.end166, %land.lhs.true128, %for.body123
  br label %for.inc168, !dbg !3542

for.inc168:                                       ; preds = %if.end167
  %156 = load ptr, ptr %irs91, align 8, !dbg !3543, !tbaa !1067
  %incdec.ptr169 = getelementptr inbounds %union.IRIns, ptr %156, i32 1, !dbg !3543
  store ptr %incdec.ptr169, ptr %irs91, align 8, !dbg !3543, !tbaa !1067
  br label %for.cond120, !dbg !3544, !llvm.loop !3545

for.end170:                                       ; preds = %for.cond120
  call void @llvm.lifetime.end.p0(i64 8, ptr %t93) #9, !dbg !3547
  call void @llvm.lifetime.end.p0(i64 8, ptr %irlast92) #9, !dbg !3547
  call void @llvm.lifetime.end.p0(i64 8, ptr %irs91) #9, !dbg !3547
  br label %if.end171

if.end171:                                        ; preds = %for.end170, %if.end89
  ret void, !dbg !3548
}

; Function Attrs: nounwind uwtable
define internal void @snap_restoreval(ptr noundef %J, ptr noundef %T, ptr noundef %ex, i32 noundef %snapno, i64 noundef %rfilt, i32 noundef %ref, ptr noundef %o) #0 !dbg !3549 {
entry:
  %J.addr = alloca ptr, align 8
  %T.addr = alloca ptr, align 8
  %ex.addr = alloca ptr, align 8
  %snapno.addr = alloca i32, align 4
  %rfilt.addr = alloca i64, align 8
  %ref.addr = alloca i32, align 4
  %o.addr = alloca ptr, align 8
  %ir = alloca ptr, align 8
  %t = alloca %struct.IRType1, align 1
  %rs = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %sps = alloca ptr, align 8
  %r = alloca i32, align 4
  store ptr %J, ptr %J.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %J.addr, metadata !3553, metadata !DIExpression()), !dbg !3569
  store ptr %T, ptr %T.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %T.addr, metadata !3554, metadata !DIExpression()), !dbg !3570
  store ptr %ex, ptr %ex.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %ex.addr, metadata !3555, metadata !DIExpression()), !dbg !3571
  store i32 %snapno, ptr %snapno.addr, align 4, !tbaa !1072
  tail call void @llvm.dbg.declare(metadata ptr %snapno.addr, metadata !3556, metadata !DIExpression()), !dbg !3572
  store i64 %rfilt, ptr %rfilt.addr, align 8, !tbaa !1971
  tail call void @llvm.dbg.declare(metadata ptr %rfilt.addr, metadata !3557, metadata !DIExpression()), !dbg !3573
  store i32 %ref, ptr %ref.addr, align 4, !tbaa !1072
  tail call void @llvm.dbg.declare(metadata ptr %ref.addr, metadata !3558, metadata !DIExpression()), !dbg !3574
  store ptr %o, ptr %o.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %o.addr, metadata !3559, metadata !DIExpression()), !dbg !3575
  call void @llvm.lifetime.start.p0(i64 8, ptr %ir) #9, !dbg !3576
  tail call void @llvm.dbg.declare(metadata ptr %ir, metadata !3560, metadata !DIExpression()), !dbg !3577
  %0 = load ptr, ptr %T.addr, align 8, !dbg !3578, !tbaa !1067
  %ir1 = getelementptr inbounds %struct.GCtrace, ptr %0, i32 0, i32 7, !dbg !3579
  %1 = load ptr, ptr %ir1, align 8, !dbg !3579, !tbaa !2072
  %2 = load i32, ptr %ref.addr, align 4, !dbg !3580, !tbaa !1072
  %idxprom = zext i32 %2 to i64, !dbg !3578
  %arrayidx = getelementptr inbounds %union.IRIns, ptr %1, i64 %idxprom, !dbg !3578
  store ptr %arrayidx, ptr %ir, align 8, !dbg !3577, !tbaa !1067
  call void @llvm.lifetime.start.p0(i64 1, ptr %t) #9, !dbg !3581
  tail call void @llvm.dbg.declare(metadata ptr %t, metadata !3561, metadata !DIExpression()), !dbg !3582
  %3 = load ptr, ptr %ir, align 8, !dbg !3583, !tbaa !1067
  %t2 = getelementptr inbounds %struct.anon.0, ptr %3, i32 0, i32 1, !dbg !3584
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %t, ptr align 4 %t2, i64 1, i1 false), !dbg !3584, !tbaa.struct !3585
  call void @llvm.lifetime.start.p0(i64 4, ptr %rs) #9, !dbg !3586
  tail call void @llvm.dbg.declare(metadata ptr %rs, metadata !3562, metadata !DIExpression()), !dbg !3587
  %4 = load ptr, ptr %ir, align 8, !dbg !3588, !tbaa !1067
  %prev = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 3, !dbg !3589
  %5 = load i16, ptr %prev, align 2, !dbg !3589, !tbaa !1280
  %conv = zext i16 %5 to i32, !dbg !3588
  store i32 %conv, ptr %rs, align 4, !dbg !3587, !tbaa !1072
  %6 = load i32, ptr %ref.addr, align 4, !dbg !3590, !tbaa !1072
  %cmp = icmp ult i32 %6, 32768, !dbg !3590
  br i1 %cmp, label %if.then, label %if.end, !dbg !3592

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %J.addr, align 8, !dbg !3593, !tbaa !1067
  %L = getelementptr inbounds %struct.jit_State, ptr %7, i32 0, i32 2, !dbg !3595
  %8 = load ptr, ptr %L, align 8, !dbg !3595, !tbaa !1087
  %9 = load ptr, ptr %o.addr, align 8, !dbg !3596, !tbaa !1067
  %10 = load ptr, ptr %ir, align 8, !dbg !3597, !tbaa !1067
  call void @lj_ir_kvalue(ptr noundef %8, ptr noundef %9, ptr noundef %10), !dbg !3598
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup93, !dbg !3599

if.end:                                           ; preds = %entry
  %11 = load i64, ptr %rfilt.addr, align 8, !dbg !3600, !tbaa !1971
  %12 = load i32, ptr %ref.addr, align 4, !dbg !3600, !tbaa !1072
  %conv4 = zext i32 %12 to i64, !dbg !3600
  %and = and i64 %conv4, 63, !dbg !3600
  %shl = shl i64 1, %and, !dbg !3600
  %and5 = and i64 %11, %shl, !dbg !3600
  %tobool = icmp ne i64 %and5, 0, !dbg !3600
  %lnot = xor i1 %tobool, true, !dbg !3600
  %lnot6 = xor i1 %lnot, true, !dbg !3600
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !3600
  %conv7 = sext i32 %lnot.ext to i64, !dbg !3600
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !3600
  %tobool8 = icmp ne i64 %expval, 0, !dbg !3600
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !3602

if.then9:                                         ; preds = %if.end
  %13 = load ptr, ptr %T.addr, align 8, !dbg !3603, !tbaa !1067
  %14 = load i32, ptr %snapno.addr, align 4, !dbg !3604, !tbaa !1072
  %15 = load i32, ptr %ref.addr, align 4, !dbg !3605, !tbaa !1072
  %16 = load i32, ptr %rs, align 4, !dbg !3606, !tbaa !1072
  %call = call i32 @snap_renameref(ptr noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16), !dbg !3607
  store i32 %call, ptr %rs, align 4, !dbg !3608, !tbaa !1072
  br label %if.end10, !dbg !3609

if.end10:                                         ; preds = %if.then9, %if.end
  %17 = load i32, ptr %rs, align 4, !dbg !3610, !tbaa !1072
  %shr = lshr i32 %17, 8, !dbg !3610
  %cmp11 = icmp ne i32 %shr, 0, !dbg !3610
  br i1 %cmp11, label %if.then13, label %if.else36, !dbg !3611

if.then13:                                        ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 8, ptr %sps) #9, !dbg !3612
  tail call void @llvm.dbg.declare(metadata ptr %sps, metadata !3563, metadata !DIExpression()), !dbg !3613
  %18 = load ptr, ptr %ex.addr, align 8, !dbg !3614, !tbaa !1067
  %spill = getelementptr inbounds %struct.ExitState, ptr %18, i32 0, i32 2, !dbg !3615
  %19 = load i32, ptr %rs, align 4, !dbg !3616, !tbaa !1072
  %shr14 = lshr i32 %19, 8, !dbg !3616
  %idxprom15 = zext i32 %shr14 to i64, !dbg !3614
  %arrayidx16 = getelementptr inbounds [256 x i32], ptr %spill, i64 0, i64 %idxprom15, !dbg !3614
  store ptr %arrayidx16, ptr %sps, align 8, !dbg !3613, !tbaa !1067
  %irt = getelementptr inbounds %struct.IRType1, ptr %t, i32 0, i32 0, !dbg !3617
  %20 = load i8, ptr %irt, align 1, !dbg !3617, !tbaa !3619
  %conv17 = zext i8 %20 to i32, !dbg !3617
  %and18 = and i32 %conv17, 31, !dbg !3617
  %sub = sub i32 %and18, 15, !dbg !3617
  %cmp19 = icmp ule i32 %sub, 4, !dbg !3617
  br i1 %cmp19, label %if.then21, label %if.else, !dbg !3620

if.then21:                                        ; preds = %if.then13
  %21 = load ptr, ptr %o.addr, align 8, !dbg !3621, !tbaa !1067
  %22 = load ptr, ptr %sps, align 8, !dbg !3623, !tbaa !1067
  %23 = load i32, ptr %22, align 4, !dbg !3624, !tbaa !1072
  call void @setintV(ptr noundef %21, i32 noundef %23), !dbg !3625
  br label %if.end35, !dbg !3626

if.else:                                          ; preds = %if.then13
  %irt22 = getelementptr inbounds %struct.IRType1, ptr %t, i32 0, i32 0, !dbg !3627
  %24 = load i8, ptr %irt22, align 1, !dbg !3627, !tbaa !3619
  %conv23 = zext i8 %24 to i32, !dbg !3627
  %and24 = and i32 %conv23, 31, !dbg !3627
  %cmp25 = icmp eq i32 %and24, 14, !dbg !3627
  br i1 %cmp25, label %if.then27, label %if.else28, !dbg !3629

if.then27:                                        ; preds = %if.else
  %25 = load ptr, ptr %sps, align 8, !dbg !3630, !tbaa !1067
  %26 = load i64, ptr %25, align 8, !dbg !3632, !tbaa !1971
  %27 = load ptr, ptr %o.addr, align 8, !dbg !3633, !tbaa !1067
  store i64 %26, ptr %27, align 8, !dbg !3634, !tbaa !1280
  br label %if.end34, !dbg !3635

if.else28:                                        ; preds = %if.else
  %28 = load ptr, ptr %J.addr, align 8, !dbg !3636, !tbaa !1067
  %L29 = getelementptr inbounds %struct.jit_State, ptr %28, i32 0, i32 2, !dbg !3638
  %29 = load ptr, ptr %L29, align 8, !dbg !3638, !tbaa !1087
  %30 = load ptr, ptr %o.addr, align 8, !dbg !3639, !tbaa !1067
  %31 = load ptr, ptr %sps, align 8, !dbg !3640, !tbaa !1067
  %32 = load i64, ptr %31, align 8, !dbg !3641, !tbaa !1971
  %33 = inttoptr i64 %32 to ptr, !dbg !3642
  %irt30 = getelementptr inbounds %struct.IRType1, ptr %t, i32 0, i32 0, !dbg !3643
  %34 = load i8, ptr %irt30, align 1, !dbg !3643, !tbaa !3619
  %conv31 = zext i8 %34 to i32, !dbg !3643
  %and32 = and i32 %conv31, 31, !dbg !3643
  %call33 = call i32 @irt_toitype_(i32 noundef %and32), !dbg !3643
  call void @setgcV(ptr noundef %29, ptr noundef %30, ptr noundef %33, i32 noundef %call33), !dbg !3644
  br label %if.end34

if.end34:                                         ; preds = %if.else28, %if.then27
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then21
  call void @llvm.lifetime.end.p0(i64 8, ptr %sps) #9, !dbg !3645
  br label %if.end92, !dbg !3646

if.else36:                                        ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #9, !dbg !3647
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !3566, metadata !DIExpression()), !dbg !3648
  %35 = load i32, ptr %rs, align 4, !dbg !3649, !tbaa !1072
  %and37 = and i32 %35, 255, !dbg !3649
  store i32 %and37, ptr %r, align 4, !dbg !3648, !tbaa !1072
  %36 = load i32, ptr %r, align 4, !dbg !3650, !tbaa !1072
  %and38 = and i32 %36, 128, !dbg !3650
  %tobool39 = icmp ne i32 %and38, 0, !dbg !3650
  br i1 %tobool39, label %if.then40, label %if.else42, !dbg !3652

if.then40:                                        ; preds = %if.else36
  %37 = load ptr, ptr %J.addr, align 8, !dbg !3653, !tbaa !1067
  %38 = load ptr, ptr %T.addr, align 8, !dbg !3655, !tbaa !1067
  %39 = load ptr, ptr %ex.addr, align 8, !dbg !3656, !tbaa !1067
  %40 = load i32, ptr %snapno.addr, align 4, !dbg !3657, !tbaa !1072
  %41 = load i64, ptr %rfilt.addr, align 8, !dbg !3658, !tbaa !1971
  %42 = load ptr, ptr %ir, align 8, !dbg !3659, !tbaa !1067
  %op1 = getelementptr inbounds %struct.anon, ptr %42, i32 0, i32 0, !dbg !3660
  %43 = load i16, ptr %op1, align 8, !dbg !3660, !tbaa !1280
  %conv41 = zext i16 %43 to i32, !dbg !3659
  %44 = load ptr, ptr %o.addr, align 8, !dbg !3661, !tbaa !1067
  call void @snap_restoreval(ptr noundef %37, ptr noundef %38, ptr noundef %39, i32 noundef %40, i64 noundef %41, i32 noundef %conv41, ptr noundef %44), !dbg !3662
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3663

if.else42:                                        ; preds = %if.else36
  %irt43 = getelementptr inbounds %struct.IRType1, ptr %t, i32 0, i32 0, !dbg !3664
  %45 = load i8, ptr %irt43, align 1, !dbg !3664, !tbaa !3619
  %conv44 = zext i8 %45 to i32, !dbg !3664
  %and45 = and i32 %conv44, 31, !dbg !3664
  %sub46 = sub i32 %and45, 15, !dbg !3664
  %cmp47 = icmp ule i32 %sub46, 4, !dbg !3664
  br i1 %cmp47, label %if.then49, label %if.else54, !dbg !3666

if.then49:                                        ; preds = %if.else42
  %46 = load ptr, ptr %o.addr, align 8, !dbg !3667, !tbaa !1067
  %47 = load ptr, ptr %ex.addr, align 8, !dbg !3669, !tbaa !1067
  %gpr = getelementptr inbounds %struct.ExitState, ptr %47, i32 0, i32 1, !dbg !3670
  %48 = load i32, ptr %r, align 4, !dbg !3671, !tbaa !1072
  %sub50 = sub i32 %48, 0, !dbg !3672
  %idxprom51 = zext i32 %sub50 to i64, !dbg !3669
  %arrayidx52 = getelementptr inbounds [16 x i64], ptr %gpr, i64 0, i64 %idxprom51, !dbg !3669
  %49 = load i64, ptr %arrayidx52, align 8, !dbg !3669, !tbaa !1971
  %conv53 = trunc i64 %49 to i32, !dbg !3673
  call void @setintV(ptr noundef %46, i32 noundef %conv53), !dbg !3674
  br label %if.end90, !dbg !3675

if.else54:                                        ; preds = %if.else42
  %irt55 = getelementptr inbounds %struct.IRType1, ptr %t, i32 0, i32 0, !dbg !3676
  %50 = load i8, ptr %irt55, align 1, !dbg !3676, !tbaa !3619
  %conv56 = zext i8 %50 to i32, !dbg !3676
  %and57 = and i32 %conv56, 31, !dbg !3676
  %cmp58 = icmp eq i32 %and57, 14, !dbg !3676
  br i1 %cmp58, label %if.then60, label %if.else64, !dbg !3678

if.then60:                                        ; preds = %if.else54
  %51 = load ptr, ptr %ex.addr, align 8, !dbg !3679, !tbaa !1067
  %fpr = getelementptr inbounds %struct.ExitState, ptr %51, i32 0, i32 0, !dbg !3679
  %52 = load i32, ptr %r, align 4, !dbg !3679, !tbaa !1072
  %sub61 = sub i32 %52, 16, !dbg !3679
  %idxprom62 = zext i32 %sub61 to i64, !dbg !3679
  %arrayidx63 = getelementptr inbounds [16 x double], ptr %fpr, i64 0, i64 %idxprom62, !dbg !3679
  %53 = load double, ptr %arrayidx63, align 8, !dbg !3679, !tbaa !3228
  %54 = load ptr, ptr %o.addr, align 8, !dbg !3679, !tbaa !1067
  store double %53, ptr %54, align 8, !dbg !3679, !tbaa !1280
  br label %if.end89, !dbg !3681

if.else64:                                        ; preds = %if.else54
  %irt65 = getelementptr inbounds %struct.IRType1, ptr %t, i32 0, i32 0, !dbg !3682
  %55 = load i8, ptr %irt65, align 1, !dbg !3682, !tbaa !3619
  %conv66 = zext i8 %55 to i32, !dbg !3682
  %and67 = and i32 %conv66, 31, !dbg !3682
  %cmp68 = icmp ule i32 %and67, 2, !dbg !3682
  br i1 %cmp68, label %if.then70, label %if.else78, !dbg !3684

if.then70:                                        ; preds = %if.else64
  %irt71 = getelementptr inbounds %struct.IRType1, ptr %t, i32 0, i32 0, !dbg !3685
  %56 = load i8, ptr %irt71, align 1, !dbg !3685, !tbaa !3619
  %conv72 = zext i8 %56 to i32, !dbg !3685
  %and73 = and i32 %conv72, 31, !dbg !3685
  %call74 = call i32 @irt_toitype_(i32 noundef %and73), !dbg !3685
  %not = xor i32 %call74, -1, !dbg !3685
  %conv75 = zext i32 %not to i64, !dbg !3685
  %shl76 = shl i64 %conv75, 47, !dbg !3685
  %not77 = xor i64 %shl76, -1, !dbg !3685
  %57 = load ptr, ptr %o.addr, align 8, !dbg !3685, !tbaa !1067
  store i64 %not77, ptr %57, align 8, !dbg !3685, !tbaa !1280
  br label %if.end88, !dbg !3687

if.else78:                                        ; preds = %if.else64
  %58 = load ptr, ptr %J.addr, align 8, !dbg !3688, !tbaa !1067
  %L79 = getelementptr inbounds %struct.jit_State, ptr %58, i32 0, i32 2, !dbg !3690
  %59 = load ptr, ptr %L79, align 8, !dbg !3690, !tbaa !1087
  %60 = load ptr, ptr %o.addr, align 8, !dbg !3691, !tbaa !1067
  %61 = load ptr, ptr %ex.addr, align 8, !dbg !3692, !tbaa !1067
  %gpr80 = getelementptr inbounds %struct.ExitState, ptr %61, i32 0, i32 1, !dbg !3693
  %62 = load i32, ptr %r, align 4, !dbg !3694, !tbaa !1072
  %sub81 = sub i32 %62, 0, !dbg !3695
  %idxprom82 = zext i32 %sub81 to i64, !dbg !3692
  %arrayidx83 = getelementptr inbounds [16 x i64], ptr %gpr80, i64 0, i64 %idxprom82, !dbg !3692
  %63 = load i64, ptr %arrayidx83, align 8, !dbg !3692, !tbaa !1971
  %64 = inttoptr i64 %63 to ptr, !dbg !3696
  %irt84 = getelementptr inbounds %struct.IRType1, ptr %t, i32 0, i32 0, !dbg !3697
  %65 = load i8, ptr %irt84, align 1, !dbg !3697, !tbaa !3619
  %conv85 = zext i8 %65 to i32, !dbg !3697
  %and86 = and i32 %conv85, 31, !dbg !3697
  %call87 = call i32 @irt_toitype_(i32 noundef %and86), !dbg !3697
  call void @setgcV(ptr noundef %59, ptr noundef %60, ptr noundef %64, i32 noundef %call87), !dbg !3698
  br label %if.end88

if.end88:                                         ; preds = %if.else78, %if.then70
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %if.then60
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %if.then49
  br label %if.end91

if.end91:                                         ; preds = %if.end90
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3699
  br label %cleanup, !dbg !3699

cleanup:                                          ; preds = %if.end91, %if.then40
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #9, !dbg !3699
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup93 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end92

if.end92:                                         ; preds = %cleanup.cont, %if.end35
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3700
  br label %cleanup93, !dbg !3700

cleanup93:                                        ; preds = %if.end92, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rs) #9, !dbg !3700
  call void @llvm.lifetime.end.p0(i64 1, ptr %t) #9, !dbg !3700
  call void @llvm.lifetime.end.p0(i64 8, ptr %ir) #9, !dbg !3700
  %cleanup.dest96 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest96, label %unreachable [
    i32 0, label %cleanup.cont97
    i32 1, label %cleanup.cont97
  ]

cleanup.cont97:                                   ; preds = %cleanup93, %cleanup93
  ret void, !dbg !3700

unreachable:                                      ; preds = %cleanup93
  unreachable
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @lj_snap_grow_map(ptr noundef %J, i32 noundef %need) #4 !dbg !3701 {
entry:
  %J.addr = alloca ptr, align 8
  %need.addr = alloca i32, align 4
  store ptr %J, ptr %J.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %J.addr, metadata !3703, metadata !DIExpression()), !dbg !3705
  store i32 %need, ptr %need.addr, align 4, !tbaa !1072
  tail call void @llvm.dbg.declare(metadata ptr %need.addr, metadata !3704, metadata !DIExpression()), !dbg !3706
  %0 = load i32, ptr %need.addr, align 4, !dbg !3707, !tbaa !1072
  %1 = load ptr, ptr %J.addr, align 8, !dbg !3707, !tbaa !1067
  %sizesnapmap = getelementptr inbounds %struct.jit_State, ptr %1, i32 0, i32 33, !dbg !3707
  %2 = load i32, ptr %sizesnapmap, align 8, !dbg !3707, !tbaa !1125
  %cmp = icmp ugt i32 %0, %2, !dbg !3707
  %lnot = xor i1 %cmp, true, !dbg !3707
  %lnot1 = xor i1 %lnot, true, !dbg !3707
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3707
  %conv = sext i32 %lnot.ext to i64, !dbg !3707
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3707
  %tobool = icmp ne i64 %expval, 0, !dbg !3707
  br i1 %tobool, label %if.then, label %if.end, !dbg !3709

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %J.addr, align 8, !dbg !3710, !tbaa !1067
  %4 = load i32, ptr %need.addr, align 4, !dbg !3711, !tbaa !1072
  call void @lj_snap_grow_map_(ptr noundef %3, i32 noundef %4), !dbg !3712
  br label %if.end, !dbg !3712

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3713
}

; Function Attrs: nounwind uwtable
define internal i32 @snapshot_slots(ptr noundef %J, ptr noundef %map, i32 noundef %nslots) #0 !dbg !3714 {
entry:
  %J.addr = alloca ptr, align 8
  %map.addr = alloca ptr, align 8
  %nslots.addr = alloca i32, align 4
  %retf = alloca i32, align 4
  %s = alloca i32, align 4
  %n = alloca i32, align 4
  %tr = alloca i32, align 4
  %ref = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %base = alloca ptr, align 8
  %sn = alloca i32, align 4
  %ir = alloca ptr, align 8
  store ptr %J, ptr %J.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %J.addr, metadata !3718, metadata !DIExpression()), !dbg !3738
  store ptr %map, ptr %map.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !3719, metadata !DIExpression()), !dbg !3739
  store i32 %nslots, ptr %nslots.addr, align 4, !tbaa !1072
  tail call void @llvm.dbg.declare(metadata ptr %nslots.addr, metadata !3720, metadata !DIExpression()), !dbg !3740
  call void @llvm.lifetime.start.p0(i64 4, ptr %retf) #9, !dbg !3741
  tail call void @llvm.dbg.declare(metadata ptr %retf, metadata !3721, metadata !DIExpression()), !dbg !3742
  %0 = load ptr, ptr %J.addr, align 8, !dbg !3743, !tbaa !1067
  %chain = getelementptr inbounds %struct.jit_State, ptr %0, i32 0, i32 40, !dbg !3744
  %arrayidx = getelementptr inbounds [100 x i16], ptr %chain, i64 0, i64 11, !dbg !3743
  %1 = load i16, ptr %arrayidx, align 2, !dbg !3743, !tbaa !1270
  %conv = zext i16 %1 to i32, !dbg !3743
  store i32 %conv, ptr %retf, align 4, !dbg !3742, !tbaa !1072
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #9, !dbg !3745
  tail call void @llvm.dbg.declare(metadata ptr %s, metadata !3722, metadata !DIExpression()), !dbg !3746
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #9, !dbg !3747
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !3723, metadata !DIExpression()), !dbg !3748
  store i32 0, ptr %n, align 4, !dbg !3748, !tbaa !1072
  store i32 0, ptr %s, align 4, !dbg !3749, !tbaa !1072
  br label %for.cond, !dbg !3750

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %s, align 4, !dbg !3751, !tbaa !1072
  %3 = load i32, ptr %nslots.addr, align 4, !dbg !3752, !tbaa !1072
  %cmp = icmp ult i32 %2, %3, !dbg !3753
  br i1 %cmp, label %for.body, label %for.end, !dbg !3754

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %tr) #9, !dbg !3755
  tail call void @llvm.dbg.declare(metadata ptr %tr, metadata !3724, metadata !DIExpression()), !dbg !3756
  %4 = load ptr, ptr %J.addr, align 8, !dbg !3757, !tbaa !1067
  %slot = getelementptr inbounds %struct.jit_State, ptr %4, i32 0, i32 41, !dbg !3758
  %5 = load i32, ptr %s, align 4, !dbg !3759, !tbaa !1072
  %idxprom = zext i32 %5 to i64, !dbg !3757
  %arrayidx2 = getelementptr inbounds [257 x i32], ptr %slot, i64 0, i64 %idxprom, !dbg !3757
  %6 = load i32, ptr %arrayidx2, align 4, !dbg !3757, !tbaa !1072
  store i32 %6, ptr %tr, align 4, !dbg !3756, !tbaa !1072
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref) #9, !dbg !3760
  tail call void @llvm.dbg.declare(metadata ptr %ref, metadata !3728, metadata !DIExpression()), !dbg !3761
  %7 = load i32, ptr %tr, align 4, !dbg !3762, !tbaa !1072
  %conv3 = trunc i32 %7 to i16, !dbg !3762
  %conv4 = zext i16 %conv3 to i32, !dbg !3762
  store i32 %conv4, ptr %ref, align 4, !dbg !3761, !tbaa !1072
  %8 = load i32, ptr %s, align 4, !dbg !3763, !tbaa !1072
  %cmp5 = icmp eq i32 %8, 1, !dbg !3765
  br i1 %cmp5, label %if.then, label %if.end10, !dbg !3766

if.then:                                          ; preds = %for.body
  %9 = load i32, ptr %tr, align 4, !dbg !3767, !tbaa !1072
  %and = and i32 %9, 65536, !dbg !3770
  %tobool = icmp ne i32 %and, 0, !dbg !3770
  br i1 %tobool, label %if.then7, label %if.end, !dbg !3771

if.then7:                                         ; preds = %if.then
  %10 = load ptr, ptr %map.addr, align 8, !dbg !3772, !tbaa !1067
  %11 = load i32, ptr %n, align 4, !dbg !3773, !tbaa !1072
  %inc = add i32 %11, 1, !dbg !3773
  store i32 %inc, ptr %n, align 4, !dbg !3773, !tbaa !1072
  %idxprom8 = zext i32 %11 to i64, !dbg !3772
  %arrayidx9 = getelementptr inbounds i32, ptr %10, i64 %idxprom8, !dbg !3772
  store i32 17137663, ptr %arrayidx9, align 4, !dbg !3774, !tbaa !1072
  br label %if.end, !dbg !3772

if.end:                                           ; preds = %if.then7, %if.then
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup61, !dbg !3775

if.end10:                                         ; preds = %for.body
  %12 = load i32, ptr %tr, align 4, !dbg !3776, !tbaa !1072
  %and11 = and i32 %12, 196608, !dbg !3777
  %tobool12 = icmp ne i32 %and11, 0, !dbg !3777
  br i1 %tobool12, label %land.lhs.true, label %if.end24, !dbg !3778

land.lhs.true:                                    ; preds = %if.end10
  %13 = load i32, ptr %ref, align 4, !dbg !3779, !tbaa !1072
  %tobool13 = icmp ne i32 %13, 0, !dbg !3779
  br i1 %tobool13, label %if.end24, label %if.then14, !dbg !3780

if.then14:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #9, !dbg !3781
  tail call void @llvm.dbg.declare(metadata ptr %base, metadata !3729, metadata !DIExpression()), !dbg !3782
  %14 = load ptr, ptr %J.addr, align 8, !dbg !3783, !tbaa !1067
  %L = getelementptr inbounds %struct.jit_State, ptr %14, i32 0, i32 2, !dbg !3784
  %15 = load ptr, ptr %L, align 8, !dbg !3784, !tbaa !1087
  %base15 = getelementptr inbounds %struct.lua_State, ptr %15, i32 0, i32 7, !dbg !3785
  %16 = load ptr, ptr %base15, align 8, !dbg !3785, !tbaa !1499
  %17 = load ptr, ptr %J.addr, align 8, !dbg !3786, !tbaa !1067
  %baseslot = getelementptr inbounds %struct.jit_State, ptr %17, i32 0, i32 9, !dbg !3787
  %18 = load i32, ptr %baseslot, align 8, !dbg !3787, !tbaa !1329
  %idx.ext = zext i32 %18 to i64, !dbg !3788
  %idx.neg = sub i64 0, %idx.ext, !dbg !3788
  %add.ptr = getelementptr inbounds %union.TValue, ptr %16, i64 %idx.neg, !dbg !3788
  store ptr %add.ptr, ptr %base, align 8, !dbg !3782, !tbaa !1067
  %19 = load i32, ptr %tr, align 4, !dbg !3789, !tbaa !1072
  %and16 = and i32 %19, 16711680, !dbg !3790
  %20 = load ptr, ptr %J.addr, align 8, !dbg !3791, !tbaa !1067
  %21 = load ptr, ptr %base, align 8, !dbg !3792, !tbaa !1067
  %22 = load i32, ptr %s, align 4, !dbg !3793, !tbaa !1072
  %idxprom17 = zext i32 %22 to i64, !dbg !3792
  %arrayidx18 = getelementptr inbounds %union.TValue, ptr %21, i64 %idxprom17, !dbg !3792
  %23 = load i64, ptr %arrayidx18, align 8, !dbg !3794, !tbaa !1280
  %call = call i32 @lj_ir_k64(ptr noundef %20, i32 noundef 28, i64 noundef %23), !dbg !3795
  %or = or i32 %and16, %call, !dbg !3796
  %24 = load ptr, ptr %J.addr, align 8, !dbg !3797, !tbaa !1067
  %slot19 = getelementptr inbounds %struct.jit_State, ptr %24, i32 0, i32 41, !dbg !3798
  %25 = load i32, ptr %s, align 4, !dbg !3799, !tbaa !1072
  %idxprom20 = zext i32 %25 to i64, !dbg !3797
  %arrayidx21 = getelementptr inbounds [257 x i32], ptr %slot19, i64 0, i64 %idxprom20, !dbg !3797
  store i32 %or, ptr %arrayidx21, align 4, !dbg !3800, !tbaa !1072
  store i32 %or, ptr %tr, align 4, !dbg !3801, !tbaa !1072
  %26 = load i32, ptr %tr, align 4, !dbg !3802, !tbaa !1072
  %conv22 = trunc i32 %26 to i16, !dbg !3802
  %conv23 = zext i16 %conv22 to i32, !dbg !3802
  store i32 %conv23, ptr %ref, align 4, !dbg !3803, !tbaa !1072
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #9, !dbg !3804
  br label %if.end24, !dbg !3805

if.end24:                                         ; preds = %if.then14, %land.lhs.true, %if.end10
  %27 = load i32, ptr %ref, align 4, !dbg !3806, !tbaa !1072
  %tobool25 = icmp ne i32 %27, 0, !dbg !3806
  br i1 %tobool25, label %if.then26, label %if.end60, !dbg !3807

if.then26:                                        ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 4, ptr %sn) #9, !dbg !3808
  tail call void @llvm.dbg.declare(metadata ptr %sn, metadata !3734, metadata !DIExpression()), !dbg !3809
  %28 = load i32, ptr %s, align 4, !dbg !3810, !tbaa !1072
  %shl = shl i32 %28, 24, !dbg !3810
  %29 = load i32, ptr %tr, align 4, !dbg !3810, !tbaa !1072
  %and27 = and i32 %29, 262143, !dbg !3810
  %add = add i32 %shl, %and27, !dbg !3810
  store i32 %add, ptr %sn, align 4, !dbg !3809, !tbaa !1072
  call void @llvm.lifetime.start.p0(i64 8, ptr %ir) #9, !dbg !3811
  tail call void @llvm.dbg.declare(metadata ptr %ir, metadata !3737, metadata !DIExpression()), !dbg !3812
  %30 = load ptr, ptr %J.addr, align 8, !dbg !3813, !tbaa !1067
  %cur = getelementptr inbounds %struct.jit_State, ptr %30, i32 0, i32 0, !dbg !3814
  %ir28 = getelementptr inbounds %struct.GCtrace, ptr %cur, i32 0, i32 7, !dbg !3815
  %31 = load ptr, ptr %ir28, align 8, !dbg !3815, !tbaa !3816
  %32 = load i32, ptr %ref, align 4, !dbg !3817, !tbaa !1072
  %idxprom29 = zext i32 %32 to i64, !dbg !3813
  %arrayidx30 = getelementptr inbounds %union.IRIns, ptr %31, i64 %idxprom29, !dbg !3813
  store ptr %arrayidx30, ptr %ir, align 8, !dbg !3812, !tbaa !1067
  %33 = load ptr, ptr %ir, align 8, !dbg !3818, !tbaa !1067
  %o = getelementptr inbounds %struct.anon.0, ptr %33, i32 0, i32 2, !dbg !3820
  %34 = load i8, ptr %o, align 1, !dbg !3820, !tbaa !1280
  %conv31 = zext i8 %34 to i32, !dbg !3818
  %cmp32 = icmp eq i32 %conv31, 71, !dbg !3821
  br i1 %cmp32, label %land.lhs.true34, label %if.end55, !dbg !3822

land.lhs.true34:                                  ; preds = %if.then26
  %35 = load ptr, ptr %ir, align 8, !dbg !3823, !tbaa !1067
  %op1 = getelementptr inbounds %struct.anon, ptr %35, i32 0, i32 0, !dbg !3824
  %36 = load i16, ptr %op1, align 8, !dbg !3824, !tbaa !1280
  %conv35 = zext i16 %36 to i32, !dbg !3823
  %37 = load i32, ptr %s, align 4, !dbg !3825, !tbaa !1072
  %cmp36 = icmp eq i32 %conv35, %37, !dbg !3826
  br i1 %cmp36, label %land.lhs.true38, label %if.end55, !dbg !3827

land.lhs.true38:                                  ; preds = %land.lhs.true34
  %38 = load i32, ptr %ref, align 4, !dbg !3828, !tbaa !1072
  %39 = load i32, ptr %retf, align 4, !dbg !3829, !tbaa !1072
  %cmp39 = icmp ugt i32 %38, %39, !dbg !3830
  br i1 %cmp39, label %if.then41, label %if.end55, !dbg !3831

if.then41:                                        ; preds = %land.lhs.true38
  %40 = load ptr, ptr %ir, align 8, !dbg !3832, !tbaa !1067
  %op2 = getelementptr inbounds %struct.anon, ptr %40, i32 0, i32 1, !dbg !3835
  %41 = load i16, ptr %op2, align 2, !dbg !3835, !tbaa !1280
  %conv42 = zext i16 %41 to i32, !dbg !3832
  %and43 = and i32 %conv42, 32, !dbg !3836
  %tobool44 = icmp ne i32 %and43, 0, !dbg !3836
  br i1 %tobool44, label %if.end46, label %if.then45, !dbg !3837

if.then45:                                        ; preds = %if.then41
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3838

if.end46:                                         ; preds = %if.then41
  %42 = load ptr, ptr %ir, align 8, !dbg !3839, !tbaa !1067
  %op247 = getelementptr inbounds %struct.anon, ptr %42, i32 0, i32 1, !dbg !3841
  %43 = load i16, ptr %op247, align 2, !dbg !3841, !tbaa !1280
  %conv48 = zext i16 %43 to i32, !dbg !3839
  %and49 = and i32 %conv48, 17, !dbg !3842
  %cmp50 = icmp ne i32 %and49, 1, !dbg !3843
  br i1 %cmp50, label %if.then52, label %if.end54, !dbg !3844

if.then52:                                        ; preds = %if.end46
  %44 = load i32, ptr %sn, align 4, !dbg !3845, !tbaa !1072
  %or53 = or i32 %44, 262144, !dbg !3845
  store i32 %or53, ptr %sn, align 4, !dbg !3845, !tbaa !1072
  br label %if.end54, !dbg !3846

if.end54:                                         ; preds = %if.then52, %if.end46
  br label %if.end55, !dbg !3847

if.end55:                                         ; preds = %if.end54, %land.lhs.true38, %land.lhs.true34, %if.then26
  %45 = load i32, ptr %sn, align 4, !dbg !3848, !tbaa !1072
  %46 = load ptr, ptr %map.addr, align 8, !dbg !3849, !tbaa !1067
  %47 = load i32, ptr %n, align 4, !dbg !3850, !tbaa !1072
  %inc56 = add i32 %47, 1, !dbg !3850
  store i32 %inc56, ptr %n, align 4, !dbg !3850, !tbaa !1072
  %idxprom57 = zext i32 %47 to i64, !dbg !3849
  %arrayidx58 = getelementptr inbounds i32, ptr %46, i64 %idxprom57, !dbg !3849
  store i32 %45, ptr %arrayidx58, align 4, !dbg !3851, !tbaa !1072
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3852
  br label %cleanup, !dbg !3852

cleanup:                                          ; preds = %if.end55, %if.then45
  call void @llvm.lifetime.end.p0(i64 8, ptr %ir) #9, !dbg !3852
  call void @llvm.lifetime.end.p0(i64 4, ptr %sn) #9, !dbg !3852
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup61 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end60, !dbg !3853

if.end60:                                         ; preds = %cleanup.cont, %if.end24
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3854
  br label %cleanup61, !dbg !3854

cleanup61:                                        ; preds = %if.end60, %cleanup, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref) #9, !dbg !3854
  call void @llvm.lifetime.end.p0(i64 4, ptr %tr) #9, !dbg !3854
  %cleanup.dest63 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest63, label %unreachable [
    i32 0, label %cleanup.cont64
    i32 4, label %for.inc
  ]

cleanup.cont64:                                   ; preds = %cleanup61
  br label %for.inc, !dbg !3855

for.inc:                                          ; preds = %cleanup.cont64, %cleanup61
  %48 = load i32, ptr %s, align 4, !dbg !3856, !tbaa !1072
  %inc65 = add i32 %48, 1, !dbg !3856
  store i32 %inc65, ptr %s, align 4, !dbg !3856, !tbaa !1072
  br label %for.cond, !dbg !3857, !llvm.loop !3858

for.end:                                          ; preds = %for.cond
  %49 = load i32, ptr %n, align 4, !dbg !3860, !tbaa !1072
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #9, !dbg !3861
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #9, !dbg !3861
  call void @llvm.lifetime.end.p0(i64 4, ptr %retf) #9, !dbg !3861
  ret i32 %49, !dbg !3862

unreachable:                                      ; preds = %cleanup61
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @snapshot_framelinks(ptr noundef %J, ptr noundef %map, ptr noundef %topslot) #0 !dbg !3863 {
entry:
  %J.addr = alloca ptr, align 8
  %map.addr = alloca ptr, align 8
  %topslot.addr = alloca ptr, align 8
  %frame = alloca ptr, align 8
  %lim = alloca ptr, align 8
  %fn = alloca ptr, align 8
  %ftop = alloca ptr, align 8
  %pcbase = alloca i64, align 8
  store ptr %J, ptr %J.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %J.addr, metadata !3867, metadata !DIExpression()), !dbg !3875
  store ptr %map, ptr %map.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !3868, metadata !DIExpression()), !dbg !3876
  store ptr %topslot, ptr %topslot.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %topslot.addr, metadata !3869, metadata !DIExpression()), !dbg !3877
  call void @llvm.lifetime.start.p0(i64 8, ptr %frame) #9, !dbg !3878
  tail call void @llvm.dbg.declare(metadata ptr %frame, metadata !3870, metadata !DIExpression()), !dbg !3879
  %0 = load ptr, ptr %J.addr, align 8, !dbg !3880, !tbaa !1067
  %L = getelementptr inbounds %struct.jit_State, ptr %0, i32 0, i32 2, !dbg !3881
  %1 = load ptr, ptr %L, align 8, !dbg !3881, !tbaa !1087
  %base = getelementptr inbounds %struct.lua_State, ptr %1, i32 0, i32 7, !dbg !3882
  %2 = load ptr, ptr %base, align 8, !dbg !3882, !tbaa !1499
  %add.ptr = getelementptr inbounds %union.TValue, ptr %2, i64 -1, !dbg !3883
  store ptr %add.ptr, ptr %frame, align 8, !dbg !3879, !tbaa !1067
  call void @llvm.lifetime.start.p0(i64 8, ptr %lim) #9, !dbg !3884
  tail call void @llvm.dbg.declare(metadata ptr %lim, metadata !3871, metadata !DIExpression()), !dbg !3885
  %3 = load ptr, ptr %J.addr, align 8, !dbg !3886, !tbaa !1067
  %L1 = getelementptr inbounds %struct.jit_State, ptr %3, i32 0, i32 2, !dbg !3887
  %4 = load ptr, ptr %L1, align 8, !dbg !3887, !tbaa !1087
  %base2 = getelementptr inbounds %struct.lua_State, ptr %4, i32 0, i32 7, !dbg !3888
  %5 = load ptr, ptr %base2, align 8, !dbg !3888, !tbaa !1499
  %6 = load ptr, ptr %J.addr, align 8, !dbg !3889, !tbaa !1067
  %baseslot = getelementptr inbounds %struct.jit_State, ptr %6, i32 0, i32 9, !dbg !3890
  %7 = load i32, ptr %baseslot, align 8, !dbg !3890, !tbaa !1329
  %idx.ext = zext i32 %7 to i64, !dbg !3891
  %idx.neg = sub i64 0, %idx.ext, !dbg !3891
  %add.ptr3 = getelementptr inbounds %union.TValue, ptr %5, i64 %idx.neg, !dbg !3891
  %add.ptr4 = getelementptr inbounds %union.TValue, ptr %add.ptr3, i64 1, !dbg !3892
  store ptr %add.ptr4, ptr %lim, align 8, !dbg !3885, !tbaa !1067
  call void @llvm.lifetime.start.p0(i64 8, ptr %fn) #9, !dbg !3893
  tail call void @llvm.dbg.declare(metadata ptr %fn, metadata !3872, metadata !DIExpression()), !dbg !3894
  %8 = load ptr, ptr %frame, align 8, !dbg !3895, !tbaa !1067
  %add.ptr5 = getelementptr inbounds %union.TValue, ptr %8, i64 -1, !dbg !3895
  %gcptr64 = getelementptr inbounds %struct.GCRef, ptr %add.ptr5, i32 0, i32 0, !dbg !3895
  %9 = load i64, ptr %gcptr64, align 8, !dbg !3895, !tbaa !1280
  %and = and i64 %9, 140737488355327, !dbg !3895
  %10 = inttoptr i64 %and to ptr, !dbg !3895
  store ptr %10, ptr %fn, align 8, !dbg !3894, !tbaa !1067
  call void @llvm.lifetime.start.p0(i64 8, ptr %ftop) #9, !dbg !3896
  tail call void @llvm.dbg.declare(metadata ptr %ftop, metadata !3873, metadata !DIExpression()), !dbg !3897
  %11 = load ptr, ptr %fn, align 8, !dbg !3898, !tbaa !1067
  %ffid = getelementptr inbounds %struct.GCfuncC, ptr %11, i32 0, i32 3, !dbg !3898
  %12 = load i8, ptr %ffid, align 2, !dbg !3898, !tbaa !1280
  %conv = zext i8 %12 to i32, !dbg !3898
  %cmp = icmp eq i32 %conv, 0, !dbg !3898
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3898

cond.true:                                        ; preds = %entry
  %13 = load ptr, ptr %frame, align 8, !dbg !3899, !tbaa !1067
  %14 = load ptr, ptr %fn, align 8, !dbg !3900, !tbaa !1067
  %pc = getelementptr inbounds %struct.GCfuncL, ptr %14, i32 0, i32 7, !dbg !3900
  %ptr64 = getelementptr inbounds %struct.MRef, ptr %pc, i32 0, i32 0, !dbg !3900
  %15 = load i64, ptr %ptr64, align 8, !dbg !3900, !tbaa !1280
  %16 = inttoptr i64 %15 to ptr, !dbg !3900
  %add.ptr7 = getelementptr inbounds i8, ptr %16, i64 -104, !dbg !3900
  %framesize = getelementptr inbounds %struct.GCproto, ptr %add.ptr7, i32 0, i32 4, !dbg !3901
  %17 = load i8, ptr %framesize, align 1, !dbg !3901, !tbaa !3076
  %conv8 = zext i8 %17 to i32, !dbg !3900
  %idx.ext9 = sext i32 %conv8 to i64, !dbg !3902
  %add.ptr10 = getelementptr inbounds %union.TValue, ptr %13, i64 %idx.ext9, !dbg !3902
  br label %cond.end, !dbg !3898

cond.false:                                       ; preds = %entry
  %18 = load ptr, ptr %J.addr, align 8, !dbg !3903, !tbaa !1067
  %L11 = getelementptr inbounds %struct.jit_State, ptr %18, i32 0, i32 2, !dbg !3904
  %19 = load ptr, ptr %L11, align 8, !dbg !3904, !tbaa !1087
  %top = getelementptr inbounds %struct.lua_State, ptr %19, i32 0, i32 8, !dbg !3905
  %20 = load ptr, ptr %top, align 8, !dbg !3905, !tbaa !3081
  br label %cond.end, !dbg !3898

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr10, %cond.true ], [ %20, %cond.false ], !dbg !3898
  store ptr %cond, ptr %ftop, align 8, !dbg !3897, !tbaa !1067
  call void @llvm.lifetime.start.p0(i64 8, ptr %pcbase) #9, !dbg !3906
  tail call void @llvm.dbg.declare(metadata ptr %pcbase, metadata !3874, metadata !DIExpression()), !dbg !3907
  %21 = load ptr, ptr %J.addr, align 8, !dbg !3908, !tbaa !1067
  %pc12 = getelementptr inbounds %struct.jit_State, ptr %21, i32 0, i32 3, !dbg !3908
  %22 = load ptr, ptr %pc12, align 8, !dbg !3908, !tbaa !1417
  %23 = ptrtoint ptr %22 to i64, !dbg !3908
  %shl = shl i64 %23, 8, !dbg !3909
  %24 = load ptr, ptr %J.addr, align 8, !dbg !3910, !tbaa !1067
  %baseslot13 = getelementptr inbounds %struct.jit_State, ptr %24, i32 0, i32 9, !dbg !3911
  %25 = load i32, ptr %baseslot13, align 8, !dbg !3911, !tbaa !1329
  %sub = sub i32 %25, 2, !dbg !3912
  %conv14 = zext i32 %sub to i64, !dbg !3913
  %or = or i64 %shl, %conv14, !dbg !3914
  store i64 %or, ptr %pcbase, align 8, !dbg !3907, !tbaa !1971
  %26 = load ptr, ptr %map.addr, align 8, !dbg !3915, !tbaa !1067
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %26, ptr align 8 %pcbase, i64 8, i1 false), !dbg !3916
  br label %while.cond, !dbg !3917

while.cond:                                       ; preds = %if.end59, %if.else31, %cond.end
  %27 = load ptr, ptr %frame, align 8, !dbg !3918, !tbaa !1067
  %28 = load ptr, ptr %lim, align 8, !dbg !3919, !tbaa !1067
  %cmp15 = icmp ugt ptr %27, %28, !dbg !3920
  br i1 %cmp15, label %while.body, label %while.end, !dbg !3917

while.body:                                       ; preds = %while.cond
  %29 = load ptr, ptr %frame, align 8, !dbg !3921, !tbaa !1067
  %30 = load i64, ptr %29, align 8, !dbg !3921, !tbaa !1280
  %and17 = and i64 %30, 3, !dbg !3921
  %cmp18 = icmp eq i64 %and17, 0, !dbg !3921
  br i1 %cmp18, label %if.then, label %if.else, !dbg !3924

if.then:                                          ; preds = %while.body
  %31 = load ptr, ptr %frame, align 8, !dbg !3925, !tbaa !1067
  %32 = load ptr, ptr %frame, align 8, !dbg !3925, !tbaa !1067
  %33 = load i64, ptr %32, align 8, !dbg !3925, !tbaa !1280
  %34 = inttoptr i64 %33 to ptr, !dbg !3925
  %arrayidx = getelementptr inbounds i32, ptr %34, i64 -1, !dbg !3925
  %35 = load i32, ptr %arrayidx, align 4, !dbg !3925, !tbaa !1072
  %shr = lshr i32 %35, 8, !dbg !3925
  %and20 = and i32 %shr, 255, !dbg !3925
  %add = add i32 2, %and20, !dbg !3925
  %idx.ext21 = zext i32 %add to i64, !dbg !3925
  %idx.neg22 = sub i64 0, %idx.ext21, !dbg !3925
  %add.ptr23 = getelementptr inbounds %union.TValue, ptr %31, i64 %idx.neg22, !dbg !3925
  store ptr %add.ptr23, ptr %frame, align 8, !dbg !3927, !tbaa !1067
  br label %if.end35, !dbg !3928

if.else:                                          ; preds = %while.body
  %36 = load ptr, ptr %frame, align 8, !dbg !3929, !tbaa !1067
  %37 = load i64, ptr %36, align 8, !dbg !3929, !tbaa !1280
  %and24 = and i64 %37, 7, !dbg !3929
  %cmp25 = icmp eq i64 %and24, 2, !dbg !3929
  br i1 %cmp25, label %if.then27, label %if.else31, !dbg !3931

if.then27:                                        ; preds = %if.else
  %38 = load ptr, ptr %frame, align 8, !dbg !3932, !tbaa !1067
  %39 = load ptr, ptr %frame, align 8, !dbg !3932, !tbaa !1067
  %40 = load i64, ptr %39, align 8, !dbg !3932, !tbaa !1280
  %and28 = and i64 %40, -8, !dbg !3932
  %idx.neg29 = sub i64 0, %and28, !dbg !3932
  %add.ptr30 = getelementptr inbounds i8, ptr %38, i64 %idx.neg29, !dbg !3932
  store ptr %add.ptr30, ptr %frame, align 8, !dbg !3934, !tbaa !1067
  br label %if.end, !dbg !3935

if.else31:                                        ; preds = %if.else
  %41 = load ptr, ptr %frame, align 8, !dbg !3936, !tbaa !1067
  %42 = load ptr, ptr %frame, align 8, !dbg !3936, !tbaa !1067
  %43 = load i64, ptr %42, align 8, !dbg !3936, !tbaa !1280
  %and32 = and i64 %43, -8, !dbg !3936
  %idx.neg33 = sub i64 0, %and32, !dbg !3936
  %add.ptr34 = getelementptr inbounds i8, ptr %41, i64 %idx.neg33, !dbg !3936
  store ptr %add.ptr34, ptr %frame, align 8, !dbg !3938, !tbaa !1067
  br label %while.cond, !dbg !3939, !llvm.loop !3940

if.end:                                           ; preds = %if.then27
  br label %if.end35

if.end35:                                         ; preds = %if.end, %if.then
  %44 = load ptr, ptr %frame, align 8, !dbg !3942, !tbaa !1067
  %45 = load ptr, ptr %frame, align 8, !dbg !3944, !tbaa !1067
  %add.ptr36 = getelementptr inbounds %union.TValue, ptr %45, i64 -1, !dbg !3944
  %gcptr6437 = getelementptr inbounds %struct.GCRef, ptr %add.ptr36, i32 0, i32 0, !dbg !3944
  %46 = load i64, ptr %gcptr6437, align 8, !dbg !3944, !tbaa !1280
  %and38 = and i64 %46, 140737488355327, !dbg !3944
  %47 = inttoptr i64 %and38 to ptr, !dbg !3944
  %pc39 = getelementptr inbounds %struct.GCfuncL, ptr %47, i32 0, i32 7, !dbg !3944
  %ptr6440 = getelementptr inbounds %struct.MRef, ptr %pc39, i32 0, i32 0, !dbg !3944
  %48 = load i64, ptr %ptr6440, align 8, !dbg !3944, !tbaa !1280
  %49 = inttoptr i64 %48 to ptr, !dbg !3944
  %add.ptr41 = getelementptr inbounds i8, ptr %49, i64 -104, !dbg !3944
  %framesize42 = getelementptr inbounds %struct.GCproto, ptr %add.ptr41, i32 0, i32 4, !dbg !3945
  %50 = load i8, ptr %framesize42, align 1, !dbg !3945, !tbaa !3076
  %conv43 = zext i8 %50 to i32, !dbg !3944
  %idx.ext44 = sext i32 %conv43 to i64, !dbg !3946
  %add.ptr45 = getelementptr inbounds %union.TValue, ptr %44, i64 %idx.ext44, !dbg !3946
  %51 = load ptr, ptr %ftop, align 8, !dbg !3947, !tbaa !1067
  %cmp46 = icmp ugt ptr %add.ptr45, %51, !dbg !3948
  br i1 %cmp46, label %if.then48, label %if.end59, !dbg !3949

if.then48:                                        ; preds = %if.end35
  %52 = load ptr, ptr %frame, align 8, !dbg !3950, !tbaa !1067
  %53 = load ptr, ptr %frame, align 8, !dbg !3951, !tbaa !1067
  %add.ptr49 = getelementptr inbounds %union.TValue, ptr %53, i64 -1, !dbg !3951
  %gcptr6450 = getelementptr inbounds %struct.GCRef, ptr %add.ptr49, i32 0, i32 0, !dbg !3951
  %54 = load i64, ptr %gcptr6450, align 8, !dbg !3951, !tbaa !1280
  %and51 = and i64 %54, 140737488355327, !dbg !3951
  %55 = inttoptr i64 %and51 to ptr, !dbg !3951
  %pc52 = getelementptr inbounds %struct.GCfuncL, ptr %55, i32 0, i32 7, !dbg !3951
  %ptr6453 = getelementptr inbounds %struct.MRef, ptr %pc52, i32 0, i32 0, !dbg !3951
  %56 = load i64, ptr %ptr6453, align 8, !dbg !3951, !tbaa !1280
  %57 = inttoptr i64 %56 to ptr, !dbg !3951
  %add.ptr54 = getelementptr inbounds i8, ptr %57, i64 -104, !dbg !3951
  %framesize55 = getelementptr inbounds %struct.GCproto, ptr %add.ptr54, i32 0, i32 4, !dbg !3952
  %58 = load i8, ptr %framesize55, align 1, !dbg !3952, !tbaa !3076
  %conv56 = zext i8 %58 to i32, !dbg !3951
  %idx.ext57 = sext i32 %conv56 to i64, !dbg !3953
  %add.ptr58 = getelementptr inbounds %union.TValue, ptr %52, i64 %idx.ext57, !dbg !3953
  store ptr %add.ptr58, ptr %ftop, align 8, !dbg !3954, !tbaa !1067
  br label %if.end59, !dbg !3955

if.end59:                                         ; preds = %if.then48, %if.end35
  br label %while.cond, !dbg !3917, !llvm.loop !3940

while.end:                                        ; preds = %while.cond
  %59 = load ptr, ptr %ftop, align 8, !dbg !3956, !tbaa !1067
  %60 = load ptr, ptr %lim, align 8, !dbg !3957, !tbaa !1067
  %sub.ptr.lhs.cast = ptrtoint ptr %59 to i64, !dbg !3958
  %sub.ptr.rhs.cast = ptrtoint ptr %60 to i64, !dbg !3958
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3958
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8, !dbg !3958
  %conv60 = trunc i64 %sub.ptr.div to i8, !dbg !3959
  %61 = load ptr, ptr %topslot.addr, align 8, !dbg !3960, !tbaa !1067
  store i8 %conv60, ptr %61, align 1, !dbg !3961, !tbaa !1280
  call void @llvm.lifetime.end.p0(i64 8, ptr %pcbase) #9, !dbg !3962
  call void @llvm.lifetime.end.p0(i64 8, ptr %ftop) #9, !dbg !3962
  call void @llvm.lifetime.end.p0(i64 8, ptr %fn) #9, !dbg !3962
  call void @llvm.lifetime.end.p0(i64 8, ptr %lim) #9, !dbg !3962
  call void @llvm.lifetime.end.p0(i64 8, ptr %frame) #9, !dbg !3962
  ret i32 2, !dbg !3963
}

declare !dbg !3964 hidden i32 @lj_ir_k64(ptr noundef, i32 noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @bc_isret(i32 noundef %op) #4 !dbg !3967 {
entry:
  %op.addr = alloca i32, align 4
  store i32 %op, ptr %op.addr, align 4, !tbaa !1280
  tail call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !3971, metadata !DIExpression()), !dbg !3972
  %0 = load i32, ptr %op.addr, align 4, !dbg !3973, !tbaa !1280
  %cmp = icmp eq i32 %0, 73, !dbg !3974
  br i1 %cmp, label %lor.end, label %lor.lhs.false, !dbg !3975

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %op.addr, align 4, !dbg !3976, !tbaa !1280
  %cmp1 = icmp eq i32 %1, 74, !dbg !3977
  br i1 %cmp1, label %lor.end, label %lor.lhs.false2, !dbg !3978

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i32, ptr %op.addr, align 4, !dbg !3979, !tbaa !1280
  %cmp3 = icmp eq i32 %2, 75, !dbg !3980
  br i1 %cmp3, label %lor.end, label %lor.rhs, !dbg !3981

lor.rhs:                                          ; preds = %lor.lhs.false2
  %3 = load i32, ptr %op.addr, align 4, !dbg !3982, !tbaa !1280
  %cmp4 = icmp eq i32 %3, 76, !dbg !3983
  br label %lor.end, !dbg !3981

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false2, %lor.lhs.false, %entry
  %4 = phi i1 [ true, %lor.lhs.false2 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp4, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32, !dbg !3981
  ret i32 %lor.ext, !dbg !3984
}

declare !dbg !3985 hidden i32 @lj_ir_kint(ptr noundef, i32 noundef) #3

declare !dbg !3988 hidden i32 @lj_ir_kgc(ptr noundef, ptr noundef, i32 noundef) #3

declare !dbg !3991 hidden i32 @lj_ir_kptr_(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @snap_sunk_store2(ptr noundef %T, ptr noundef %ira, ptr noundef %irs) #0 !dbg !3994 {
entry:
  %retval = alloca i32, align 4
  %T.addr = alloca ptr, align 8
  %ira.addr = alloca ptr, align 8
  %irs.addr = alloca ptr, align 8
  %irk = alloca ptr, align 8
  store ptr %T, ptr %T.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %T.addr, metadata !3996, metadata !DIExpression()), !dbg !4002
  store ptr %ira, ptr %ira.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %ira.addr, metadata !3997, metadata !DIExpression()), !dbg !4003
  store ptr %irs, ptr %irs.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %irs.addr, metadata !3998, metadata !DIExpression()), !dbg !4004
  %0 = load ptr, ptr %irs.addr, align 8, !dbg !4005, !tbaa !1067
  %o = getelementptr inbounds %struct.anon.0, ptr %0, i32 0, i32 2, !dbg !4006
  %1 = load i8, ptr %o, align 1, !dbg !4006, !tbaa !1280
  %conv = zext i8 %1 to i32, !dbg !4005
  %cmp = icmp eq i32 %conv, 73, !dbg !4007
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4008

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %irs.addr, align 8, !dbg !4009, !tbaa !1067
  %o2 = getelementptr inbounds %struct.anon.0, ptr %2, i32 0, i32 2, !dbg !4010
  %3 = load i8, ptr %o2, align 1, !dbg !4010, !tbaa !1280
  %conv3 = zext i8 %3 to i32, !dbg !4009
  %cmp4 = icmp eq i32 %conv3, 74, !dbg !4011
  br i1 %cmp4, label %if.then, label %lor.lhs.false6, !dbg !4012

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %4 = load ptr, ptr %irs.addr, align 8, !dbg !4013, !tbaa !1067
  %o7 = getelementptr inbounds %struct.anon.0, ptr %4, i32 0, i32 2, !dbg !4014
  %5 = load i8, ptr %o7, align 1, !dbg !4014, !tbaa !1280
  %conv8 = zext i8 %5 to i32, !dbg !4013
  %cmp9 = icmp eq i32 %conv8, 76, !dbg !4015
  br i1 %cmp9, label %if.then, label %lor.lhs.false11, !dbg !4016

lor.lhs.false11:                                  ; preds = %lor.lhs.false6
  %6 = load ptr, ptr %irs.addr, align 8, !dbg !4017, !tbaa !1067
  %o12 = getelementptr inbounds %struct.anon.0, ptr %6, i32 0, i32 2, !dbg !4018
  %7 = load i8, ptr %o12, align 1, !dbg !4018, !tbaa !1280
  %conv13 = zext i8 %7 to i32, !dbg !4017
  %cmp14 = icmp eq i32 %conv13, 77, !dbg !4019
  br i1 %cmp14, label %if.then, label %if.end36, !dbg !4020

if.then:                                          ; preds = %lor.lhs.false11, %lor.lhs.false6, %lor.lhs.false, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %irk) #9, !dbg !4021
  tail call void @llvm.dbg.declare(metadata ptr %irk, metadata !3999, metadata !DIExpression()), !dbg !4022
  %8 = load ptr, ptr %T.addr, align 8, !dbg !4023, !tbaa !1067
  %ir = getelementptr inbounds %struct.GCtrace, ptr %8, i32 0, i32 7, !dbg !4024
  %9 = load ptr, ptr %ir, align 8, !dbg !4024, !tbaa !2072
  %10 = load ptr, ptr %irs.addr, align 8, !dbg !4025, !tbaa !1067
  %op1 = getelementptr inbounds %struct.anon, ptr %10, i32 0, i32 0, !dbg !4026
  %11 = load i16, ptr %op1, align 8, !dbg !4026, !tbaa !1280
  %idxprom = zext i16 %11 to i64, !dbg !4023
  %arrayidx = getelementptr inbounds %union.IRIns, ptr %9, i64 %idxprom, !dbg !4023
  store ptr %arrayidx, ptr %irk, align 8, !dbg !4022, !tbaa !1067
  %12 = load ptr, ptr %irk, align 8, !dbg !4027, !tbaa !1067
  %o16 = getelementptr inbounds %struct.anon.0, ptr %12, i32 0, i32 2, !dbg !4029
  %13 = load i8, ptr %o16, align 1, !dbg !4029, !tbaa !1280
  %conv17 = zext i8 %13 to i32, !dbg !4027
  %cmp18 = icmp eq i32 %conv17, 57, !dbg !4030
  br i1 %cmp18, label %if.then25, label %lor.lhs.false20, !dbg !4031

lor.lhs.false20:                                  ; preds = %if.then
  %14 = load ptr, ptr %irk, align 8, !dbg !4032, !tbaa !1067
  %o21 = getelementptr inbounds %struct.anon.0, ptr %14, i32 0, i32 2, !dbg !4033
  %15 = load i8, ptr %o21, align 1, !dbg !4033, !tbaa !1280
  %conv22 = zext i8 %15 to i32, !dbg !4032
  %cmp23 = icmp eq i32 %conv22, 58, !dbg !4034
  br i1 %cmp23, label %if.then25, label %if.end, !dbg !4035

if.then25:                                        ; preds = %lor.lhs.false20, %if.then
  %16 = load ptr, ptr %T.addr, align 8, !dbg !4036, !tbaa !1067
  %ir26 = getelementptr inbounds %struct.GCtrace, ptr %16, i32 0, i32 7, !dbg !4037
  %17 = load ptr, ptr %ir26, align 8, !dbg !4037, !tbaa !2072
  %18 = load ptr, ptr %irk, align 8, !dbg !4038, !tbaa !1067
  %op127 = getelementptr inbounds %struct.anon, ptr %18, i32 0, i32 0, !dbg !4039
  %19 = load i16, ptr %op127, align 8, !dbg !4039, !tbaa !1280
  %idxprom28 = zext i16 %19 to i64, !dbg !4036
  %arrayidx29 = getelementptr inbounds %union.IRIns, ptr %17, i64 %idxprom28, !dbg !4036
  store ptr %arrayidx29, ptr %irk, align 8, !dbg !4040, !tbaa !1067
  br label %if.end, !dbg !4041

if.end:                                           ; preds = %if.then25, %lor.lhs.false20
  %20 = load ptr, ptr %T.addr, align 8, !dbg !4042, !tbaa !1067
  %ir30 = getelementptr inbounds %struct.GCtrace, ptr %20, i32 0, i32 7, !dbg !4043
  %21 = load ptr, ptr %ir30, align 8, !dbg !4043, !tbaa !2072
  %22 = load ptr, ptr %irk, align 8, !dbg !4044, !tbaa !1067
  %op131 = getelementptr inbounds %struct.anon, ptr %22, i32 0, i32 0, !dbg !4045
  %23 = load i16, ptr %op131, align 8, !dbg !4045, !tbaa !1280
  %idxprom32 = zext i16 %23 to i64, !dbg !4042
  %arrayidx33 = getelementptr inbounds %union.IRIns, ptr %21, i64 %idxprom32, !dbg !4042
  %24 = load ptr, ptr %ira.addr, align 8, !dbg !4046, !tbaa !1067
  %cmp34 = icmp eq ptr %arrayidx33, %24, !dbg !4047
  %conv35 = zext i1 %cmp34 to i32, !dbg !4047
  store i32 %conv35, ptr %retval, align 4, !dbg !4048
  call void @llvm.lifetime.end.p0(i64 8, ptr %irk) #9, !dbg !4049
  br label %return

if.end36:                                         ; preds = %lor.lhs.false11
  store i32 0, ptr %retval, align 4, !dbg !4050
  br label %return, !dbg !4050

return:                                           ; preds = %if.end36, %if.end
  %25 = load i32, ptr %retval, align 4, !dbg !4051
  ret i32 %25, !dbg !4051
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @ctype_cts(ptr noundef %L) #4 !dbg !4052 {
entry:
  %L.addr = alloca ptr, align 8
  %cts = alloca ptr, align 8
  store ptr %L, ptr %L.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %L.addr, metadata !4056, metadata !DIExpression()), !dbg !4058
  call void @llvm.lifetime.start.p0(i64 8, ptr %cts) #9, !dbg !4059
  tail call void @llvm.dbg.declare(metadata ptr %cts, metadata !4057, metadata !DIExpression()), !dbg !4060
  %0 = load ptr, ptr %L.addr, align 8, !dbg !4061, !tbaa !1067
  %glref = getelementptr inbounds %struct.lua_State, ptr %0, i32 0, i32 5, !dbg !4061
  %ptr64 = getelementptr inbounds %struct.MRef, ptr %glref, i32 0, i32 0, !dbg !4061
  %1 = load i64, ptr %ptr64, align 8, !dbg !4061, !tbaa !4062
  %2 = inttoptr i64 %1 to ptr, !dbg !4061
  %ctype_state = getelementptr inbounds %struct.global_State, ptr %2, i32 0, i32 29, !dbg !4061
  %ptr641 = getelementptr inbounds %struct.MRef, ptr %ctype_state, i32 0, i32 0, !dbg !4061
  %3 = load i64, ptr %ptr641, align 8, !dbg !4061, !tbaa !4063
  %4 = inttoptr i64 %3 to ptr, !dbg !4061
  store ptr %4, ptr %cts, align 8, !dbg !4060, !tbaa !1067
  %5 = load ptr, ptr %L.addr, align 8, !dbg !4070, !tbaa !1067
  %6 = load ptr, ptr %cts, align 8, !dbg !4071, !tbaa !1067
  %L2 = getelementptr inbounds %struct.CTState, ptr %6, i32 0, i32 3, !dbg !4072
  store ptr %5, ptr %L2, align 8, !dbg !4073, !tbaa !4074
  %7 = load ptr, ptr %cts, align 8, !dbg !4077, !tbaa !1067
  call void @llvm.lifetime.end.p0(i64 8, ptr %cts) #9, !dbg !4078
  ret ptr %7, !dbg !4079
}

declare !dbg !4080 hidden i32 @lj_ctype_info(ptr noundef, i32 noundef, ptr noundef) #3

declare !dbg !4084 hidden ptr @lj_cdata_newx(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: alwaysinline nounwind uwtable
define internal void @setcdataV(ptr noundef %L, ptr noundef %o, ptr noundef %v) #4 !dbg !4088 {
entry:
  %L.addr = alloca ptr, align 8
  %o.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  store ptr %L, ptr %L.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %L.addr, metadata !4092, metadata !DIExpression()), !dbg !4095
  store ptr %o, ptr %o.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %o.addr, metadata !4093, metadata !DIExpression()), !dbg !4095
  store ptr %v, ptr %v.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4094, metadata !DIExpression()), !dbg !4095
  %0 = load ptr, ptr %L.addr, align 8, !dbg !4095, !tbaa !1067
  %1 = load ptr, ptr %o.addr, align 8, !dbg !4095, !tbaa !1067
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4095, !tbaa !1067
  call void @setgcV(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef -11), !dbg !4095
  ret void, !dbg !4095
}

; Function Attrs: nounwind uwtable
define internal void @snap_restoredata(ptr noundef %T, ptr noundef %ex, i32 noundef %snapno, i64 noundef %rfilt, i32 noundef %ref, ptr noundef %dst, i32 noundef %sz) #0 !dbg !4096 {
entry:
  %T.addr = alloca ptr, align 8
  %ex.addr = alloca ptr, align 8
  %snapno.addr = alloca i32, align 4
  %rfilt.addr = alloca i64, align 8
  %ref.addr = alloca i32, align 4
  %dst.addr = alloca ptr, align 8
  %sz.addr = alloca i32, align 4
  %ir = alloca ptr, align 8
  %rs = alloca i32, align 4
  %src = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %r = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %T, ptr %T.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %T.addr, metadata !4100, metadata !DIExpression()), !dbg !4116
  store ptr %ex, ptr %ex.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %ex.addr, metadata !4101, metadata !DIExpression()), !dbg !4117
  store i32 %snapno, ptr %snapno.addr, align 4, !tbaa !1072
  tail call void @llvm.dbg.declare(metadata ptr %snapno.addr, metadata !4102, metadata !DIExpression()), !dbg !4118
  store i64 %rfilt, ptr %rfilt.addr, align 8, !tbaa !1971
  tail call void @llvm.dbg.declare(metadata ptr %rfilt.addr, metadata !4103, metadata !DIExpression()), !dbg !4119
  store i32 %ref, ptr %ref.addr, align 4, !tbaa !1072
  tail call void @llvm.dbg.declare(metadata ptr %ref.addr, metadata !4104, metadata !DIExpression()), !dbg !4120
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !4105, metadata !DIExpression()), !dbg !4121
  store i32 %sz, ptr %sz.addr, align 4, !tbaa !1072
  tail call void @llvm.dbg.declare(metadata ptr %sz.addr, metadata !4106, metadata !DIExpression()), !dbg !4122
  call void @llvm.lifetime.start.p0(i64 8, ptr %ir) #9, !dbg !4123
  tail call void @llvm.dbg.declare(metadata ptr %ir, metadata !4107, metadata !DIExpression()), !dbg !4124
  %0 = load ptr, ptr %T.addr, align 8, !dbg !4125, !tbaa !1067
  %ir1 = getelementptr inbounds %struct.GCtrace, ptr %0, i32 0, i32 7, !dbg !4126
  %1 = load ptr, ptr %ir1, align 8, !dbg !4126, !tbaa !2072
  %2 = load i32, ptr %ref.addr, align 4, !dbg !4127, !tbaa !1072
  %idxprom = zext i32 %2 to i64, !dbg !4125
  %arrayidx = getelementptr inbounds %union.IRIns, ptr %1, i64 %idxprom, !dbg !4125
  store ptr %arrayidx, ptr %ir, align 8, !dbg !4124, !tbaa !1067
  call void @llvm.lifetime.start.p0(i64 4, ptr %rs) #9, !dbg !4128
  tail call void @llvm.dbg.declare(metadata ptr %rs, metadata !4108, metadata !DIExpression()), !dbg !4129
  %3 = load ptr, ptr %ir, align 8, !dbg !4130, !tbaa !1067
  %prev = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 3, !dbg !4131
  %4 = load i16, ptr %prev, align 2, !dbg !4131, !tbaa !1280
  %conv = zext i16 %4 to i32, !dbg !4130
  store i32 %conv, ptr %rs, align 4, !dbg !4129, !tbaa !1072
  call void @llvm.lifetime.start.p0(i64 8, ptr %src) #9, !dbg !4132
  tail call void @llvm.dbg.declare(metadata ptr %src, metadata !4109, metadata !DIExpression()), !dbg !4133
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #9, !dbg !4134
  tail call void @llvm.dbg.declare(metadata ptr %tmp, metadata !4110, metadata !DIExpression()), !dbg !4135
  %5 = load i32, ptr %ref.addr, align 4, !dbg !4136, !tbaa !1072
  %cmp = icmp ult i32 %5, 32768, !dbg !4136
  br i1 %cmp, label %if.then, label %if.else33, !dbg !4137

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %ir, align 8, !dbg !4138, !tbaa !1067
  %o = getelementptr inbounds %struct.anon.0, ptr %6, i32 0, i32 2, !dbg !4138
  %7 = load i8, ptr %o, align 1, !dbg !4138, !tbaa !1280
  %conv3 = zext i8 %7 to i32, !dbg !4138
  %cmp4 = icmp eq i32 %conv3, 28, !dbg !4138
  br i1 %cmp4, label %if.then25, label %lor.lhs.false, !dbg !4138

lor.lhs.false:                                    ; preds = %if.then
  %8 = load ptr, ptr %ir, align 8, !dbg !4138, !tbaa !1067
  %o6 = getelementptr inbounds %struct.anon.0, ptr %8, i32 0, i32 2, !dbg !4138
  %9 = load i8, ptr %o6, align 1, !dbg !4138, !tbaa !1280
  %conv7 = zext i8 %9 to i32, !dbg !4138
  %cmp8 = icmp eq i32 %conv7, 29, !dbg !4138
  br i1 %cmp8, label %if.then25, label %lor.lhs.false10, !dbg !4138

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %10 = load ptr, ptr %ir, align 8, !dbg !4138, !tbaa !1067
  %o11 = getelementptr inbounds %struct.anon.0, ptr %10, i32 0, i32 2, !dbg !4138
  %11 = load i8, ptr %o11, align 1, !dbg !4138, !tbaa !1280
  %conv12 = zext i8 %11 to i32, !dbg !4138
  %cmp13 = icmp eq i32 %conv12, 24, !dbg !4138
  br i1 %cmp13, label %if.then25, label %lor.lhs.false15, !dbg !4138

lor.lhs.false15:                                  ; preds = %lor.lhs.false10
  %12 = load ptr, ptr %ir, align 8, !dbg !4138, !tbaa !1067
  %o16 = getelementptr inbounds %struct.anon.0, ptr %12, i32 0, i32 2, !dbg !4138
  %13 = load i8, ptr %o16, align 1, !dbg !4138, !tbaa !1280
  %conv17 = zext i8 %13 to i32, !dbg !4138
  %cmp18 = icmp eq i32 %conv17, 25, !dbg !4138
  br i1 %cmp18, label %if.then25, label %lor.lhs.false20, !dbg !4138

lor.lhs.false20:                                  ; preds = %lor.lhs.false15
  %14 = load ptr, ptr %ir, align 8, !dbg !4138, !tbaa !1067
  %o21 = getelementptr inbounds %struct.anon.0, ptr %14, i32 0, i32 2, !dbg !4138
  %15 = load i8, ptr %o21, align 1, !dbg !4138, !tbaa !1280
  %conv22 = zext i8 %15 to i32, !dbg !4138
  %cmp23 = icmp eq i32 %conv22, 26, !dbg !4138
  br i1 %cmp23, label %if.then25, label %if.else, !dbg !4141

if.then25:                                        ; preds = %lor.lhs.false20, %lor.lhs.false15, %lor.lhs.false10, %lor.lhs.false, %if.then
  %16 = load ptr, ptr %ir, align 8, !dbg !4142, !tbaa !1067
  %arrayidx26 = getelementptr inbounds %union.IRIns, ptr %16, i64 1, !dbg !4142
  store ptr %arrayidx26, ptr %src, align 8, !dbg !4144, !tbaa !1067
  br label %if.end32, !dbg !4145

if.else:                                          ; preds = %lor.lhs.false20
  %17 = load i32, ptr %sz.addr, align 4, !dbg !4146, !tbaa !1072
  %cmp27 = icmp eq i32 %17, 8, !dbg !4148
  br i1 %cmp27, label %if.then29, label %if.else31, !dbg !4149

if.then29:                                        ; preds = %if.else
  %18 = load ptr, ptr %ir, align 8, !dbg !4150, !tbaa !1067
  %19 = load i32, ptr %18, align 8, !dbg !4152, !tbaa !1280
  %conv30 = zext i32 %19 to i64, !dbg !4153
  store i64 %conv30, ptr %tmp, align 8, !dbg !4154, !tbaa !1971
  store ptr %tmp, ptr %src, align 8, !dbg !4155, !tbaa !1067
  br label %if.end, !dbg !4156

if.else31:                                        ; preds = %if.else
  %20 = load ptr, ptr %ir, align 8, !dbg !4157, !tbaa !1067
  store ptr %20, ptr %src, align 8, !dbg !4159, !tbaa !1067
  br label %if.end

if.end:                                           ; preds = %if.else31, %if.then29
  br label %if.end32

if.end32:                                         ; preds = %if.end, %if.then25
  br label %if.end76, !dbg !4160

if.else33:                                        ; preds = %entry
  %21 = load i64, ptr %rfilt.addr, align 8, !dbg !4161, !tbaa !1971
  %22 = load i32, ptr %ref.addr, align 4, !dbg !4161, !tbaa !1072
  %conv34 = zext i32 %22 to i64, !dbg !4161
  %and = and i64 %conv34, 63, !dbg !4161
  %shl = shl i64 1, %and, !dbg !4161
  %and35 = and i64 %21, %shl, !dbg !4161
  %tobool = icmp ne i64 %and35, 0, !dbg !4161
  %lnot = xor i1 %tobool, true, !dbg !4161
  %lnot36 = xor i1 %lnot, true, !dbg !4161
  %lnot.ext = zext i1 %lnot36 to i32, !dbg !4161
  %conv37 = sext i32 %lnot.ext to i64, !dbg !4161
  %expval = call i64 @llvm.expect.i64(i64 %conv37, i64 0), !dbg !4161
  %tobool38 = icmp ne i64 %expval, 0, !dbg !4161
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !4163

if.then39:                                        ; preds = %if.else33
  %23 = load ptr, ptr %T.addr, align 8, !dbg !4164, !tbaa !1067
  %24 = load i32, ptr %snapno.addr, align 4, !dbg !4165, !tbaa !1072
  %25 = load i32, ptr %ref.addr, align 4, !dbg !4166, !tbaa !1072
  %26 = load i32, ptr %rs, align 4, !dbg !4167, !tbaa !1072
  %call = call i32 @snap_renameref(ptr noundef %23, i32 noundef %24, i32 noundef %25, i32 noundef %26), !dbg !4168
  store i32 %call, ptr %rs, align 4, !dbg !4169, !tbaa !1072
  br label %if.end40, !dbg !4170

if.end40:                                         ; preds = %if.then39, %if.else33
  %27 = load i32, ptr %rs, align 4, !dbg !4171, !tbaa !1072
  %shr = lshr i32 %27, 8, !dbg !4171
  %cmp41 = icmp ne i32 %shr, 0, !dbg !4171
  br i1 %cmp41, label %if.then43, label %if.else57, !dbg !4172

if.then43:                                        ; preds = %if.end40
  %28 = load ptr, ptr %ex.addr, align 8, !dbg !4173, !tbaa !1067
  %spill = getelementptr inbounds %struct.ExitState, ptr %28, i32 0, i32 2, !dbg !4175
  %29 = load i32, ptr %rs, align 4, !dbg !4176, !tbaa !1072
  %shr44 = lshr i32 %29, 8, !dbg !4176
  %idxprom45 = zext i32 %shr44 to i64, !dbg !4173
  %arrayidx46 = getelementptr inbounds [256 x i32], ptr %spill, i64 0, i64 %idxprom45, !dbg !4173
  store ptr %arrayidx46, ptr %src, align 8, !dbg !4177, !tbaa !1067
  %30 = load i32, ptr %sz.addr, align 4, !dbg !4178, !tbaa !1072
  %cmp47 = icmp eq i32 %30, 8, !dbg !4180
  br i1 %cmp47, label %land.lhs.true, label %if.end56, !dbg !4181

land.lhs.true:                                    ; preds = %if.then43
  %31 = load ptr, ptr %ir, align 8, !dbg !4182, !tbaa !1067
  %t = getelementptr inbounds %struct.anon.0, ptr %31, i32 0, i32 1, !dbg !4182
  %irt = getelementptr inbounds %struct.IRType1, ptr %t, i32 0, i32 0, !dbg !4182
  %32 = load i8, ptr %irt, align 4, !dbg !4182, !tbaa !1280
  %conv49 = zext i8 %32 to i32, !dbg !4182
  %and50 = and i32 %conv49, 31, !dbg !4182
  %shr51 = lshr i32 6315993, %and50, !dbg !4182
  %and52 = and i32 %shr51, 1, !dbg !4182
  %tobool53 = icmp ne i32 %and52, 0, !dbg !4182
  br i1 %tobool53, label %if.end56, label %if.then54, !dbg !4183

if.then54:                                        ; preds = %land.lhs.true
  %33 = load ptr, ptr %src, align 8, !dbg !4184, !tbaa !1067
  %34 = load i32, ptr %33, align 4, !dbg !4186, !tbaa !1072
  %conv55 = zext i32 %34 to i64, !dbg !4187
  store i64 %conv55, ptr %tmp, align 8, !dbg !4188, !tbaa !1971
  store ptr %tmp, ptr %src, align 8, !dbg !4189, !tbaa !1067
  br label %if.end56, !dbg !4190

if.end56:                                         ; preds = %if.then54, %land.lhs.true, %if.then43
  br label %if.end75, !dbg !4191

if.else57:                                        ; preds = %if.end40
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #9, !dbg !4192
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !4111, metadata !DIExpression()), !dbg !4193
  %35 = load i32, ptr %rs, align 4, !dbg !4194, !tbaa !1072
  %and58 = and i32 %35, 255, !dbg !4194
  store i32 %and58, ptr %r, align 4, !dbg !4193, !tbaa !1072
  %36 = load i32, ptr %r, align 4, !dbg !4195, !tbaa !1072
  %and59 = and i32 %36, 128, !dbg !4195
  %tobool60 = icmp ne i32 %and59, 0, !dbg !4195
  br i1 %tobool60, label %if.then61, label %if.end64, !dbg !4197

if.then61:                                        ; preds = %if.else57
  %37 = load ptr, ptr %T.addr, align 8, !dbg !4198, !tbaa !1067
  %38 = load ptr, ptr %ex.addr, align 8, !dbg !4200, !tbaa !1067
  %39 = load i32, ptr %snapno.addr, align 4, !dbg !4201, !tbaa !1072
  %40 = load i64, ptr %rfilt.addr, align 8, !dbg !4202, !tbaa !1971
  %41 = load ptr, ptr %ir, align 8, !dbg !4203, !tbaa !1067
  %op1 = getelementptr inbounds %struct.anon, ptr %41, i32 0, i32 0, !dbg !4204
  %42 = load i16, ptr %op1, align 8, !dbg !4204, !tbaa !1280
  %conv62 = zext i16 %42 to i32, !dbg !4203
  %43 = load ptr, ptr %dst.addr, align 8, !dbg !4205, !tbaa !1067
  call void @snap_restoredata(ptr noundef %37, ptr noundef %38, i32 noundef %39, i64 noundef %40, i32 noundef %conv62, ptr noundef %43, i32 noundef 4), !dbg !4206
  %44 = load ptr, ptr %dst.addr, align 8, !dbg !4207, !tbaa !1067
  %45 = load i32, ptr %44, align 4, !dbg !4208, !tbaa !1072
  %conv63 = sitofp i32 %45 to double, !dbg !4209
  %46 = load ptr, ptr %dst.addr, align 8, !dbg !4210, !tbaa !1067
  store double %conv63, ptr %46, align 8, !dbg !4211, !tbaa !3228
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4212

if.end64:                                         ; preds = %if.else57
  %47 = load ptr, ptr %ex.addr, align 8, !dbg !4213, !tbaa !1067
  %gpr = getelementptr inbounds %struct.ExitState, ptr %47, i32 0, i32 1, !dbg !4214
  %48 = load i32, ptr %r, align 4, !dbg !4215, !tbaa !1072
  %sub = sub i32 %48, 0, !dbg !4216
  %idxprom65 = zext i32 %sub to i64, !dbg !4213
  %arrayidx66 = getelementptr inbounds [16 x i64], ptr %gpr, i64 0, i64 %idxprom65, !dbg !4213
  store ptr %arrayidx66, ptr %src, align 8, !dbg !4217, !tbaa !1067
  %49 = load i32, ptr %r, align 4, !dbg !4218, !tbaa !1072
  %cmp67 = icmp uge i32 %49, 16, !dbg !4220
  br i1 %cmp67, label %if.then69, label %if.else73, !dbg !4221

if.then69:                                        ; preds = %if.end64
  %50 = load ptr, ptr %ex.addr, align 8, !dbg !4222, !tbaa !1067
  %fpr = getelementptr inbounds %struct.ExitState, ptr %50, i32 0, i32 0, !dbg !4224
  %51 = load i32, ptr %r, align 4, !dbg !4225, !tbaa !1072
  %sub70 = sub i32 %51, 16, !dbg !4226
  %idxprom71 = zext i32 %sub70 to i64, !dbg !4222
  %arrayidx72 = getelementptr inbounds [16 x double], ptr %fpr, i64 0, i64 %idxprom71, !dbg !4222
  store ptr %arrayidx72, ptr %src, align 8, !dbg !4227, !tbaa !1067
  br label %if.end74, !dbg !4228

if.else73:                                        ; preds = %if.end64
  br label %if.end74

if.end74:                                         ; preds = %if.else73, %if.then69
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4229
  br label %cleanup, !dbg !4229

cleanup:                                          ; preds = %if.end74, %if.then61
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #9, !dbg !4229
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup94 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end75

if.end75:                                         ; preds = %cleanup.cont, %if.end56
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.end32
  %52 = load i32, ptr %sz.addr, align 4, !dbg !4230, !tbaa !1072
  %cmp77 = icmp eq i32 %52, 4, !dbg !4232
  br i1 %cmp77, label %if.then79, label %if.else80, !dbg !4233

if.then79:                                        ; preds = %if.end76
  %53 = load ptr, ptr %src, align 8, !dbg !4234, !tbaa !1067
  %54 = load i32, ptr %53, align 4, !dbg !4235, !tbaa !1072
  %55 = load ptr, ptr %dst.addr, align 8, !dbg !4236, !tbaa !1067
  store i32 %54, ptr %55, align 4, !dbg !4237, !tbaa !1072
  br label %if.end93, !dbg !4238

if.else80:                                        ; preds = %if.end76
  %56 = load i32, ptr %sz.addr, align 4, !dbg !4239, !tbaa !1072
  %cmp81 = icmp eq i32 %56, 8, !dbg !4241
  br i1 %cmp81, label %if.then83, label %if.else84, !dbg !4242

if.then83:                                        ; preds = %if.else80
  %57 = load ptr, ptr %src, align 8, !dbg !4243, !tbaa !1067
  %58 = load i64, ptr %57, align 8, !dbg !4244, !tbaa !1971
  %59 = load ptr, ptr %dst.addr, align 8, !dbg !4245, !tbaa !1067
  store i64 %58, ptr %59, align 8, !dbg !4246, !tbaa !1971
  br label %if.end92, !dbg !4247

if.else84:                                        ; preds = %if.else80
  %60 = load i32, ptr %sz.addr, align 4, !dbg !4248, !tbaa !1072
  %cmp85 = icmp eq i32 %60, 1, !dbg !4250
  br i1 %cmp85, label %if.then87, label %if.else89, !dbg !4251

if.then87:                                        ; preds = %if.else84
  %61 = load ptr, ptr %src, align 8, !dbg !4252, !tbaa !1067
  %62 = load i32, ptr %61, align 4, !dbg !4253, !tbaa !1072
  %conv88 = trunc i32 %62 to i8, !dbg !4254
  %63 = load ptr, ptr %dst.addr, align 8, !dbg !4255, !tbaa !1067
  store i8 %conv88, ptr %63, align 1, !dbg !4256, !tbaa !1280
  br label %if.end91, !dbg !4257

if.else89:                                        ; preds = %if.else84
  %64 = load ptr, ptr %src, align 8, !dbg !4258, !tbaa !1067
  %65 = load i32, ptr %64, align 4, !dbg !4259, !tbaa !1072
  %conv90 = trunc i32 %65 to i16, !dbg !4260
  %66 = load ptr, ptr %dst.addr, align 8, !dbg !4261, !tbaa !1067
  store i16 %conv90, ptr %66, align 2, !dbg !4262, !tbaa !1270
  br label %if.end91

if.end91:                                         ; preds = %if.else89, %if.then87
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %if.then83
  br label %if.end93

if.end93:                                         ; preds = %if.end92, %if.then79
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4263
  br label %cleanup94, !dbg !4263

cleanup94:                                        ; preds = %if.end93, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #9, !dbg !4263
  call void @llvm.lifetime.end.p0(i64 8, ptr %src) #9, !dbg !4263
  call void @llvm.lifetime.end.p0(i64 4, ptr %rs) #9, !dbg !4263
  call void @llvm.lifetime.end.p0(i64 8, ptr %ir) #9, !dbg !4263
  %cleanup.dest98 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest98, label %unreachable [
    i32 0, label %cleanup.cont99
    i32 1, label %cleanup.cont99
  ]

cleanup.cont99:                                   ; preds = %cleanup94, %cleanup94
  ret void, !dbg !4263

unreachable:                                      ; preds = %cleanup94
  unreachable
}

declare !dbg !4264 hidden ptr @lj_tab_new(ptr noundef, i32 noundef, i32 noundef) #3

declare !dbg !4268 hidden ptr @lj_tab_dup(ptr noundef, ptr noundef) #3

; Function Attrs: alwaysinline nounwind uwtable
define internal void @settabV(ptr noundef %L, ptr noundef %o, ptr noundef %v) #4 !dbg !4273 {
entry:
  %L.addr = alloca ptr, align 8
  %o.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  store ptr %L, ptr %L.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %L.addr, metadata !4277, metadata !DIExpression()), !dbg !4280
  store ptr %o, ptr %o.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %o.addr, metadata !4278, metadata !DIExpression()), !dbg !4280
  store ptr %v, ptr %v.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4279, metadata !DIExpression()), !dbg !4280
  %0 = load ptr, ptr %L.addr, align 8, !dbg !4280, !tbaa !1067
  %1 = load ptr, ptr %o.addr, align 8, !dbg !4280, !tbaa !1067
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4280, !tbaa !1067
  call void @setgcV(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef -12), !dbg !4280
  ret void, !dbg !4280
}

declare !dbg !4281 hidden void @lj_ir_kvalue(ptr noundef, ptr noundef, ptr noundef) #3

declare !dbg !4286 hidden ptr @lj_tab_set(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: alwaysinline nounwind uwtable
define internal void @setgcV(ptr noundef %L, ptr noundef %o, ptr noundef %v, i32 noundef %it) #4 !dbg !4289 {
entry:
  %L.addr = alloca ptr, align 8
  %o.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %it.addr = alloca i32, align 4
  store ptr %L, ptr %L.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %L.addr, metadata !4293, metadata !DIExpression()), !dbg !4297
  store ptr %o, ptr %o.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %o.addr, metadata !4294, metadata !DIExpression()), !dbg !4298
  store ptr %v, ptr %v.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4295, metadata !DIExpression()), !dbg !4299
  store i32 %it, ptr %it.addr, align 4, !tbaa !1072
  tail call void @llvm.dbg.declare(metadata ptr %it.addr, metadata !4296, metadata !DIExpression()), !dbg !4300
  %0 = load ptr, ptr %o.addr, align 8, !dbg !4301, !tbaa !1067
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4302, !tbaa !1067
  %2 = load i32, ptr %it.addr, align 4, !dbg !4303, !tbaa !1072
  call void @setgcVraw(ptr noundef %0, ptr noundef %1, i32 noundef %2), !dbg !4304
  %3 = load ptr, ptr %L.addr, align 8, !dbg !4305, !tbaa !1067
  ret void, !dbg !4306
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @setgcVraw(ptr noundef %o, ptr noundef %v, i32 noundef %itype) #4 !dbg !4307 {
entry:
  %o.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %itype.addr = alloca i32, align 4
  store ptr %o, ptr %o.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %o.addr, metadata !4311, metadata !DIExpression()), !dbg !4314
  store ptr %v, ptr %v.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4312, metadata !DIExpression()), !dbg !4315
  store i32 %itype, ptr %itype.addr, align 4, !tbaa !1072
  tail call void @llvm.dbg.declare(metadata ptr %itype.addr, metadata !4313, metadata !DIExpression()), !dbg !4316
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4317, !tbaa !1067
  %1 = ptrtoint ptr %0 to i64, !dbg !4317
  %2 = load i32, ptr %itype.addr, align 4, !dbg !4317, !tbaa !1072
  %conv = zext i32 %2 to i64, !dbg !4317
  %shl = shl i64 %conv, 47, !dbg !4317
  %or = or i64 %1, %shl, !dbg !4317
  %3 = load ptr, ptr %o.addr, align 8, !dbg !4317, !tbaa !1067
  %gcptr64 = getelementptr inbounds %struct.GCRef, ptr %3, i32 0, i32 0, !dbg !4317
  store i64 %or, ptr %gcptr64, align 8, !dbg !4317, !tbaa !1280
  ret void, !dbg !4318
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @setintV(ptr noundef %o, i32 noundef %i) #4 !dbg !4319 {
entry:
  %o.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %o, ptr %o.addr, align 8, !tbaa !1067
  tail call void @llvm.dbg.declare(metadata ptr %o.addr, metadata !4323, metadata !DIExpression()), !dbg !4325
  store i32 %i, ptr %i.addr, align 4, !tbaa !1072
  tail call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4324, metadata !DIExpression()), !dbg !4326
  %0 = load i32, ptr %i.addr, align 4, !dbg !4327, !tbaa !1072
  %conv = sitofp i32 %0 to double, !dbg !4328
  %1 = load ptr, ptr %o.addr, align 8, !dbg !4329, !tbaa !1067
  store double %conv, ptr %1, align 8, !dbg !4330, !tbaa !1280
  ret void, !dbg !4331
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @irt_toitype_(i32 noundef %t) #4 !dbg !4332 {
entry:
  %t.addr = alloca i32, align 4
  store i32 %t, ptr %t.addr, align 4, !tbaa !1280
  tail call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !4336, metadata !DIExpression()), !dbg !4337
  %0 = load i32, ptr %t.addr, align 4, !dbg !4338, !tbaa !1280
  %not = xor i32 %0, -1, !dbg !4341
  ret i32 %not, !dbg !4342
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { alwaysinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!927, !928, !929, !930, !931, !932}
!llvm.ident = !{!933}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !416, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "lj_snap.c", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/LuaJIT-2.1-20190507/src", checksumkind: CSK_MD5, checksum: "3403921e4e3e3de59989ce9f93a38f5a")
!2 = !{!3, !14, !23, !41, !80, !118, !221, !230, !331, !342, !360, !366}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 133, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./lj_jit.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/LuaJIT-2.1-20190507/src", checksumkind: CSK_MD5, checksum: "4d316f563ff4c9f1d89543d63ed15ee9")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13}
!7 = !DIEnumerator(name: "LJ_TRACE_IDLE", value: 0)
!8 = !DIEnumerator(name: "LJ_TRACE_ACTIVE", value: 16)
!9 = !DIEnumerator(name: "LJ_TRACE_RECORD", value: 17)
!10 = !DIEnumerator(name: "LJ_TRACE_START", value: 18)
!11 = !DIEnumerator(name: "LJ_TRACE_END", value: 19)
!12 = !DIEnumerator(name: "LJ_TRACE_ASM", value: 20)
!13 = !DIEnumerator(name: "LJ_TRACE_ERR", value: 21)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 144, baseType: !5, size: 32, elements: !15)
!15 = !{!16, !17, !18, !19, !20, !21, !22}
!16 = !DIEnumerator(name: "LJ_POST_NONE", value: 0)
!17 = !DIEnumerator(name: "LJ_POST_FIXCOMP", value: 1)
!18 = !DIEnumerator(name: "LJ_POST_FIXGUARD", value: 2)
!19 = !DIEnumerator(name: "LJ_POST_FIXGUARDSNAP", value: 3)
!20 = !DIEnumerator(name: "LJ_POST_FIXBOOL", value: 4)
!21 = !DIEnumerator(name: "LJ_POST_FIXCONST", value: 5)
!22 = !DIEnumerator(name: "LJ_POST_FFRETRY", value: 6)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 122, baseType: !5, size: 32, elements: !24)
!24 = !{!25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40}
!25 = !DIEnumerator(name: "JIT_P_maxtrace", value: 0)
!26 = !DIEnumerator(name: "JIT_P_maxrecord", value: 1)
!27 = !DIEnumerator(name: "JIT_P_maxirconst", value: 2)
!28 = !DIEnumerator(name: "JIT_P_maxside", value: 3)
!29 = !DIEnumerator(name: "JIT_P_maxsnap", value: 4)
!30 = !DIEnumerator(name: "JIT_P_minstitch", value: 5)
!31 = !DIEnumerator(name: "JIT_P_hotloop", value: 6)
!32 = !DIEnumerator(name: "JIT_P_hotexit", value: 7)
!33 = !DIEnumerator(name: "JIT_P_tryside", value: 8)
!34 = !DIEnumerator(name: "JIT_P_instunroll", value: 9)
!35 = !DIEnumerator(name: "JIT_P_loopunroll", value: 10)
!36 = !DIEnumerator(name: "JIT_P_callunroll", value: 11)
!37 = !DIEnumerator(name: "JIT_P_recunroll", value: 12)
!38 = !DIEnumerator(name: "JIT_P_sizemcode", value: 13)
!39 = !DIEnumerator(name: "JIT_P_maxmcode", value: 14)
!40 = !DIEnumerator(name: "JIT_P__MAX", value: 15)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !42, line: 16, baseType: !5, size: 32, elements: !43)
!42 = !DIFile(filename: "./lj_trace.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/LuaJIT-2.1-20190507/src", checksumkind: CSK_MD5, checksum: "67a021397472ceebfd2db39e4d4c41db")
!43 = !{!44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79}
!44 = !DIEnumerator(name: "LJ_TRERR_RECERR", value: 0)
!45 = !DIEnumerator(name: "LJ_TRERR_TRACEUV", value: 1)
!46 = !DIEnumerator(name: "LJ_TRERR_TRACEOV", value: 2)
!47 = !DIEnumerator(name: "LJ_TRERR_STACKOV", value: 3)
!48 = !DIEnumerator(name: "LJ_TRERR_SNAPOV", value: 4)
!49 = !DIEnumerator(name: "LJ_TRERR_BLACKL", value: 5)
!50 = !DIEnumerator(name: "LJ_TRERR_RETRY", value: 6)
!51 = !DIEnumerator(name: "LJ_TRERR_NYIBC", value: 7)
!52 = !DIEnumerator(name: "LJ_TRERR_LLEAVE", value: 8)
!53 = !DIEnumerator(name: "LJ_TRERR_LINNER", value: 9)
!54 = !DIEnumerator(name: "LJ_TRERR_LUNROLL", value: 10)
!55 = !DIEnumerator(name: "LJ_TRERR_BADTYPE", value: 11)
!56 = !DIEnumerator(name: "LJ_TRERR_CJITOFF", value: 12)
!57 = !DIEnumerator(name: "LJ_TRERR_CUNROLL", value: 13)
!58 = !DIEnumerator(name: "LJ_TRERR_DOWNREC", value: 14)
!59 = !DIEnumerator(name: "LJ_TRERR_NYIFFU", value: 15)
!60 = !DIEnumerator(name: "LJ_TRERR_NYIRETL", value: 16)
!61 = !DIEnumerator(name: "LJ_TRERR_STORENN", value: 17)
!62 = !DIEnumerator(name: "LJ_TRERR_NOMM", value: 18)
!63 = !DIEnumerator(name: "LJ_TRERR_IDXLOOP", value: 19)
!64 = !DIEnumerator(name: "LJ_TRERR_NYITMIX", value: 20)
!65 = !DIEnumerator(name: "LJ_TRERR_NOCACHE", value: 21)
!66 = !DIEnumerator(name: "LJ_TRERR_NYICONV", value: 22)
!67 = !DIEnumerator(name: "LJ_TRERR_NYICALL", value: 23)
!68 = !DIEnumerator(name: "LJ_TRERR_GFAIL", value: 24)
!69 = !DIEnumerator(name: "LJ_TRERR_PHIOV", value: 25)
!70 = !DIEnumerator(name: "LJ_TRERR_TYPEINS", value: 26)
!71 = !DIEnumerator(name: "LJ_TRERR_MCODEAL", value: 27)
!72 = !DIEnumerator(name: "LJ_TRERR_MCODEOV", value: 28)
!73 = !DIEnumerator(name: "LJ_TRERR_MCODELM", value: 29)
!74 = !DIEnumerator(name: "LJ_TRERR_SPILLOV", value: 30)
!75 = !DIEnumerator(name: "LJ_TRERR_BADRA", value: 31)
!76 = !DIEnumerator(name: "LJ_TRERR_NYIIR", value: 32)
!77 = !DIEnumerator(name: "LJ_TRERR_NYIPHI", value: 33)
!78 = !DIEnumerator(name: "LJ_TRERR_NYICOAL", value: 34)
!79 = !DIEnumerator(name: "LJ_TRERR__MAX", value: 35)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !81, line: 317, baseType: !5, size: 32, elements: !82)
!81 = !DIFile(filename: "./lj_ir.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/LuaJIT-2.1-20190507/src", checksumkind: CSK_MD5, checksum: "a183e51ef277e432e8d33b7e11ad7e3f")
!82 = !{!83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117}
!83 = !DIEnumerator(name: "IRT_NIL", value: 0)
!84 = !DIEnumerator(name: "IRT_FALSE", value: 1)
!85 = !DIEnumerator(name: "IRT_TRUE", value: 2)
!86 = !DIEnumerator(name: "IRT_LIGHTUD", value: 3)
!87 = !DIEnumerator(name: "IRT_STR", value: 4)
!88 = !DIEnumerator(name: "IRT_P32", value: 5)
!89 = !DIEnumerator(name: "IRT_THREAD", value: 6)
!90 = !DIEnumerator(name: "IRT_PROTO", value: 7)
!91 = !DIEnumerator(name: "IRT_FUNC", value: 8)
!92 = !DIEnumerator(name: "IRT_P64", value: 9)
!93 = !DIEnumerator(name: "IRT_CDATA", value: 10)
!94 = !DIEnumerator(name: "IRT_TAB", value: 11)
!95 = !DIEnumerator(name: "IRT_UDATA", value: 12)
!96 = !DIEnumerator(name: "IRT_FLOAT", value: 13)
!97 = !DIEnumerator(name: "IRT_NUM", value: 14)
!98 = !DIEnumerator(name: "IRT_I8", value: 15)
!99 = !DIEnumerator(name: "IRT_U8", value: 16)
!100 = !DIEnumerator(name: "IRT_I16", value: 17)
!101 = !DIEnumerator(name: "IRT_U16", value: 18)
!102 = !DIEnumerator(name: "IRT_INT", value: 19)
!103 = !DIEnumerator(name: "IRT_U32", value: 20)
!104 = !DIEnumerator(name: "IRT_I64", value: 21)
!105 = !DIEnumerator(name: "IRT_U64", value: 22)
!106 = !DIEnumerator(name: "IRT_SOFTFP", value: 23)
!107 = !DIEnumerator(name: "IRT__MAX", value: 24)
!108 = !DIEnumerator(name: "IRT_PTR", value: 9)
!109 = !DIEnumerator(name: "IRT_PGC", value: 9)
!110 = !DIEnumerator(name: "IRT_IGC", value: 21)
!111 = !DIEnumerator(name: "IRT_INTP", value: 21)
!112 = !DIEnumerator(name: "IRT_UINTP", value: 22)
!113 = !DIEnumerator(name: "IRT_MARK", value: 32)
!114 = !DIEnumerator(name: "IRT_ISPHI", value: 64)
!115 = !DIEnumerator(name: "IRT_GUARD", value: 128)
!116 = !DIEnumerator(name: "IRT_TYPE", value: 31)
!117 = !DIEnumerator(name: "IRT_T", value: 255)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !81, line: 152, baseType: !5, size: 32, elements: !119)
!119 = !{!120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220}
!120 = !DIEnumerator(name: "IR_LT", value: 0)
!121 = !DIEnumerator(name: "IR_GE", value: 1)
!122 = !DIEnumerator(name: "IR_LE", value: 2)
!123 = !DIEnumerator(name: "IR_GT", value: 3)
!124 = !DIEnumerator(name: "IR_ULT", value: 4)
!125 = !DIEnumerator(name: "IR_UGE", value: 5)
!126 = !DIEnumerator(name: "IR_ULE", value: 6)
!127 = !DIEnumerator(name: "IR_UGT", value: 7)
!128 = !DIEnumerator(name: "IR_EQ", value: 8)
!129 = !DIEnumerator(name: "IR_NE", value: 9)
!130 = !DIEnumerator(name: "IR_ABC", value: 10)
!131 = !DIEnumerator(name: "IR_RETF", value: 11)
!132 = !DIEnumerator(name: "IR_NOP", value: 12)
!133 = !DIEnumerator(name: "IR_BASE", value: 13)
!134 = !DIEnumerator(name: "IR_PVAL", value: 14)
!135 = !DIEnumerator(name: "IR_GCSTEP", value: 15)
!136 = !DIEnumerator(name: "IR_HIOP", value: 16)
!137 = !DIEnumerator(name: "IR_LOOP", value: 17)
!138 = !DIEnumerator(name: "IR_USE", value: 18)
!139 = !DIEnumerator(name: "IR_PHI", value: 19)
!140 = !DIEnumerator(name: "IR_RENAME", value: 20)
!141 = !DIEnumerator(name: "IR_PROF", value: 21)
!142 = !DIEnumerator(name: "IR_KPRI", value: 22)
!143 = !DIEnumerator(name: "IR_KINT", value: 23)
!144 = !DIEnumerator(name: "IR_KGC", value: 24)
!145 = !DIEnumerator(name: "IR_KPTR", value: 25)
!146 = !DIEnumerator(name: "IR_KKPTR", value: 26)
!147 = !DIEnumerator(name: "IR_KNULL", value: 27)
!148 = !DIEnumerator(name: "IR_KNUM", value: 28)
!149 = !DIEnumerator(name: "IR_KINT64", value: 29)
!150 = !DIEnumerator(name: "IR_KSLOT", value: 30)
!151 = !DIEnumerator(name: "IR_BNOT", value: 31)
!152 = !DIEnumerator(name: "IR_BSWAP", value: 32)
!153 = !DIEnumerator(name: "IR_BAND", value: 33)
!154 = !DIEnumerator(name: "IR_BOR", value: 34)
!155 = !DIEnumerator(name: "IR_BXOR", value: 35)
!156 = !DIEnumerator(name: "IR_BSHL", value: 36)
!157 = !DIEnumerator(name: "IR_BSHR", value: 37)
!158 = !DIEnumerator(name: "IR_BSAR", value: 38)
!159 = !DIEnumerator(name: "IR_BROL", value: 39)
!160 = !DIEnumerator(name: "IR_BROR", value: 40)
!161 = !DIEnumerator(name: "IR_ADD", value: 41)
!162 = !DIEnumerator(name: "IR_SUB", value: 42)
!163 = !DIEnumerator(name: "IR_MUL", value: 43)
!164 = !DIEnumerator(name: "IR_DIV", value: 44)
!165 = !DIEnumerator(name: "IR_MOD", value: 45)
!166 = !DIEnumerator(name: "IR_POW", value: 46)
!167 = !DIEnumerator(name: "IR_NEG", value: 47)
!168 = !DIEnumerator(name: "IR_ABS", value: 48)
!169 = !DIEnumerator(name: "IR_ATAN2", value: 49)
!170 = !DIEnumerator(name: "IR_LDEXP", value: 50)
!171 = !DIEnumerator(name: "IR_MIN", value: 51)
!172 = !DIEnumerator(name: "IR_MAX", value: 52)
!173 = !DIEnumerator(name: "IR_FPMATH", value: 53)
!174 = !DIEnumerator(name: "IR_ADDOV", value: 54)
!175 = !DIEnumerator(name: "IR_SUBOV", value: 55)
!176 = !DIEnumerator(name: "IR_MULOV", value: 56)
!177 = !DIEnumerator(name: "IR_AREF", value: 57)
!178 = !DIEnumerator(name: "IR_HREFK", value: 58)
!179 = !DIEnumerator(name: "IR_HREF", value: 59)
!180 = !DIEnumerator(name: "IR_NEWREF", value: 60)
!181 = !DIEnumerator(name: "IR_UREFO", value: 61)
!182 = !DIEnumerator(name: "IR_UREFC", value: 62)
!183 = !DIEnumerator(name: "IR_FREF", value: 63)
!184 = !DIEnumerator(name: "IR_STRREF", value: 64)
!185 = !DIEnumerator(name: "IR_LREF", value: 65)
!186 = !DIEnumerator(name: "IR_ALOAD", value: 66)
!187 = !DIEnumerator(name: "IR_HLOAD", value: 67)
!188 = !DIEnumerator(name: "IR_ULOAD", value: 68)
!189 = !DIEnumerator(name: "IR_FLOAD", value: 69)
!190 = !DIEnumerator(name: "IR_XLOAD", value: 70)
!191 = !DIEnumerator(name: "IR_SLOAD", value: 71)
!192 = !DIEnumerator(name: "IR_VLOAD", value: 72)
!193 = !DIEnumerator(name: "IR_ASTORE", value: 73)
!194 = !DIEnumerator(name: "IR_HSTORE", value: 74)
!195 = !DIEnumerator(name: "IR_USTORE", value: 75)
!196 = !DIEnumerator(name: "IR_FSTORE", value: 76)
!197 = !DIEnumerator(name: "IR_XSTORE", value: 77)
!198 = !DIEnumerator(name: "IR_SNEW", value: 78)
!199 = !DIEnumerator(name: "IR_XSNEW", value: 79)
!200 = !DIEnumerator(name: "IR_TNEW", value: 80)
!201 = !DIEnumerator(name: "IR_TDUP", value: 81)
!202 = !DIEnumerator(name: "IR_CNEW", value: 82)
!203 = !DIEnumerator(name: "IR_CNEWI", value: 83)
!204 = !DIEnumerator(name: "IR_BUFHDR", value: 84)
!205 = !DIEnumerator(name: "IR_BUFPUT", value: 85)
!206 = !DIEnumerator(name: "IR_BUFSTR", value: 86)
!207 = !DIEnumerator(name: "IR_TBAR", value: 87)
!208 = !DIEnumerator(name: "IR_OBAR", value: 88)
!209 = !DIEnumerator(name: "IR_XBAR", value: 89)
!210 = !DIEnumerator(name: "IR_CONV", value: 90)
!211 = !DIEnumerator(name: "IR_TOBIT", value: 91)
!212 = !DIEnumerator(name: "IR_TOSTR", value: 92)
!213 = !DIEnumerator(name: "IR_STRTO", value: 93)
!214 = !DIEnumerator(name: "IR_CALLN", value: 94)
!215 = !DIEnumerator(name: "IR_CALLA", value: 95)
!216 = !DIEnumerator(name: "IR_CALLL", value: 96)
!217 = !DIEnumerator(name: "IR_CALLS", value: 97)
!218 = !DIEnumerator(name: "IR_CALLXS", value: 98)
!219 = !DIEnumerator(name: "IR_CARG", value: 99)
!220 = !DIEnumerator(name: "IR__MAX", value: 100)
!221 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !81, line: 448, baseType: !5, size: 32, elements: !222)
!222 = !{!223, !224, !225, !226, !227, !228, !229}
!223 = !DIEnumerator(name: "REF_BIAS", value: 32768)
!224 = !DIEnumerator(name: "REF_TRUE", value: 32765)
!225 = !DIEnumerator(name: "REF_FALSE", value: 32766)
!226 = !DIEnumerator(name: "REF_NIL", value: 32767)
!227 = !DIEnumerator(name: "REF_BASE", value: 32768)
!228 = !DIEnumerator(name: "REF_FIRST", value: 32769)
!229 = !DIEnumerator(name: "REF_DROP", value: 65535)
!230 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !231, line: 200, baseType: !5, size: 32, elements: !232)
!231 = !DIFile(filename: "./lj_bc.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/LuaJIT-2.1-20190507/src", checksumkind: CSK_MD5, checksum: "9142ba392a0c486f5f4d342bf1d6af0e")
!232 = !{!233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330}
!233 = !DIEnumerator(name: "BC_ISLT", value: 0)
!234 = !DIEnumerator(name: "BC_ISGE", value: 1)
!235 = !DIEnumerator(name: "BC_ISLE", value: 2)
!236 = !DIEnumerator(name: "BC_ISGT", value: 3)
!237 = !DIEnumerator(name: "BC_ISEQV", value: 4)
!238 = !DIEnumerator(name: "BC_ISNEV", value: 5)
!239 = !DIEnumerator(name: "BC_ISEQS", value: 6)
!240 = !DIEnumerator(name: "BC_ISNES", value: 7)
!241 = !DIEnumerator(name: "BC_ISEQN", value: 8)
!242 = !DIEnumerator(name: "BC_ISNEN", value: 9)
!243 = !DIEnumerator(name: "BC_ISEQP", value: 10)
!244 = !DIEnumerator(name: "BC_ISNEP", value: 11)
!245 = !DIEnumerator(name: "BC_ISTC", value: 12)
!246 = !DIEnumerator(name: "BC_ISFC", value: 13)
!247 = !DIEnumerator(name: "BC_IST", value: 14)
!248 = !DIEnumerator(name: "BC_ISF", value: 15)
!249 = !DIEnumerator(name: "BC_ISTYPE", value: 16)
!250 = !DIEnumerator(name: "BC_ISNUM", value: 17)
!251 = !DIEnumerator(name: "BC_MOV", value: 18)
!252 = !DIEnumerator(name: "BC_NOT", value: 19)
!253 = !DIEnumerator(name: "BC_UNM", value: 20)
!254 = !DIEnumerator(name: "BC_LEN", value: 21)
!255 = !DIEnumerator(name: "BC_ADDVN", value: 22)
!256 = !DIEnumerator(name: "BC_SUBVN", value: 23)
!257 = !DIEnumerator(name: "BC_MULVN", value: 24)
!258 = !DIEnumerator(name: "BC_DIVVN", value: 25)
!259 = !DIEnumerator(name: "BC_MODVN", value: 26)
!260 = !DIEnumerator(name: "BC_ADDNV", value: 27)
!261 = !DIEnumerator(name: "BC_SUBNV", value: 28)
!262 = !DIEnumerator(name: "BC_MULNV", value: 29)
!263 = !DIEnumerator(name: "BC_DIVNV", value: 30)
!264 = !DIEnumerator(name: "BC_MODNV", value: 31)
!265 = !DIEnumerator(name: "BC_ADDVV", value: 32)
!266 = !DIEnumerator(name: "BC_SUBVV", value: 33)
!267 = !DIEnumerator(name: "BC_MULVV", value: 34)
!268 = !DIEnumerator(name: "BC_DIVVV", value: 35)
!269 = !DIEnumerator(name: "BC_MODVV", value: 36)
!270 = !DIEnumerator(name: "BC_POW", value: 37)
!271 = !DIEnumerator(name: "BC_CAT", value: 38)
!272 = !DIEnumerator(name: "BC_KSTR", value: 39)
!273 = !DIEnumerator(name: "BC_KCDATA", value: 40)
!274 = !DIEnumerator(name: "BC_KSHORT", value: 41)
!275 = !DIEnumerator(name: "BC_KNUM", value: 42)
!276 = !DIEnumerator(name: "BC_KPRI", value: 43)
!277 = !DIEnumerator(name: "BC_KNIL", value: 44)
!278 = !DIEnumerator(name: "BC_UGET", value: 45)
!279 = !DIEnumerator(name: "BC_USETV", value: 46)
!280 = !DIEnumerator(name: "BC_USETS", value: 47)
!281 = !DIEnumerator(name: "BC_USETN", value: 48)
!282 = !DIEnumerator(name: "BC_USETP", value: 49)
!283 = !DIEnumerator(name: "BC_UCLO", value: 50)
!284 = !DIEnumerator(name: "BC_FNEW", value: 51)
!285 = !DIEnumerator(name: "BC_TNEW", value: 52)
!286 = !DIEnumerator(name: "BC_TDUP", value: 53)
!287 = !DIEnumerator(name: "BC_GGET", value: 54)
!288 = !DIEnumerator(name: "BC_GSET", value: 55)
!289 = !DIEnumerator(name: "BC_TGETV", value: 56)
!290 = !DIEnumerator(name: "BC_TGETS", value: 57)
!291 = !DIEnumerator(name: "BC_TGETB", value: 58)
!292 = !DIEnumerator(name: "BC_TGETR", value: 59)
!293 = !DIEnumerator(name: "BC_TSETV", value: 60)
!294 = !DIEnumerator(name: "BC_TSETS", value: 61)
!295 = !DIEnumerator(name: "BC_TSETB", value: 62)
!296 = !DIEnumerator(name: "BC_TSETM", value: 63)
!297 = !DIEnumerator(name: "BC_TSETR", value: 64)
!298 = !DIEnumerator(name: "BC_CALLM", value: 65)
!299 = !DIEnumerator(name: "BC_CALL", value: 66)
!300 = !DIEnumerator(name: "BC_CALLMT", value: 67)
!301 = !DIEnumerator(name: "BC_CALLT", value: 68)
!302 = !DIEnumerator(name: "BC_ITERC", value: 69)
!303 = !DIEnumerator(name: "BC_ITERN", value: 70)
!304 = !DIEnumerator(name: "BC_VARG", value: 71)
!305 = !DIEnumerator(name: "BC_ISNEXT", value: 72)
!306 = !DIEnumerator(name: "BC_RETM", value: 73)
!307 = !DIEnumerator(name: "BC_RET", value: 74)
!308 = !DIEnumerator(name: "BC_RET0", value: 75)
!309 = !DIEnumerator(name: "BC_RET1", value: 76)
!310 = !DIEnumerator(name: "BC_FORI", value: 77)
!311 = !DIEnumerator(name: "BC_JFORI", value: 78)
!312 = !DIEnumerator(name: "BC_FORL", value: 79)
!313 = !DIEnumerator(name: "BC_IFORL", value: 80)
!314 = !DIEnumerator(name: "BC_JFORL", value: 81)
!315 = !DIEnumerator(name: "BC_ITERL", value: 82)
!316 = !DIEnumerator(name: "BC_IITERL", value: 83)
!317 = !DIEnumerator(name: "BC_JITERL", value: 84)
!318 = !DIEnumerator(name: "BC_LOOP", value: 85)
!319 = !DIEnumerator(name: "BC_ILOOP", value: 86)
!320 = !DIEnumerator(name: "BC_JLOOP", value: 87)
!321 = !DIEnumerator(name: "BC_JMP", value: 88)
!322 = !DIEnumerator(name: "BC_FUNCF", value: 89)
!323 = !DIEnumerator(name: "BC_IFUNCF", value: 90)
!324 = !DIEnumerator(name: "BC_JFUNCF", value: 91)
!325 = !DIEnumerator(name: "BC_FUNCV", value: 92)
!326 = !DIEnumerator(name: "BC_IFUNCV", value: 93)
!327 = !DIEnumerator(name: "BC_JFUNCV", value: 94)
!328 = !DIEnumerator(name: "BC_FUNCC", value: 95)
!329 = !DIEnumerator(name: "BC_FUNCCW", value: 96)
!330 = !DIEnumerator(name: "BC__MAX", value: 97)
!331 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !332, line: 24, baseType: !5, size: 32, elements: !333)
!332 = !DIFile(filename: "./lj_frame.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/LuaJIT-2.1-20190507/src", checksumkind: CSK_MD5, checksum: "412ae8ccfe6dd4d27855393186d8dedc")
!333 = !{!334, !335, !336, !337, !338, !339, !340, !341}
!334 = !DIEnumerator(name: "FRAME_LUA", value: 0)
!335 = !DIEnumerator(name: "FRAME_C", value: 1)
!336 = !DIEnumerator(name: "FRAME_CONT", value: 2)
!337 = !DIEnumerator(name: "FRAME_VARG", value: 3)
!338 = !DIEnumerator(name: "FRAME_LUAP", value: 4)
!339 = !DIEnumerator(name: "FRAME_CP", value: 5)
!340 = !DIEnumerator(name: "FRAME_PCALL", value: 6)
!341 = !DIEnumerator(name: "FRAME_PCALLH", value: 7)
!342 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !231, line: 239, baseType: !5, size: 32, elements: !343)
!343 = !{!344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359}
!344 = !DIEnumerator(name: "BCMnone", value: 0)
!345 = !DIEnumerator(name: "BCMdst", value: 1)
!346 = !DIEnumerator(name: "BCMbase", value: 2)
!347 = !DIEnumerator(name: "BCMvar", value: 3)
!348 = !DIEnumerator(name: "BCMrbase", value: 4)
!349 = !DIEnumerator(name: "BCMuv", value: 5)
!350 = !DIEnumerator(name: "BCMlit", value: 6)
!351 = !DIEnumerator(name: "BCMlits", value: 7)
!352 = !DIEnumerator(name: "BCMpri", value: 8)
!353 = !DIEnumerator(name: "BCMnum", value: 9)
!354 = !DIEnumerator(name: "BCMstr", value: 10)
!355 = !DIEnumerator(name: "BCMtab", value: 11)
!356 = !DIEnumerator(name: "BCMfunc", value: 12)
!357 = !DIEnumerator(name: "BCMjump", value: 13)
!358 = !DIEnumerator(name: "BCMcdata", value: 14)
!359 = !DIEnumerator(name: "BCM_max", value: 15)
!360 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !231, line: 234, baseType: !5, size: 32, elements: !361)
!361 = !{!362, !363, !364, !365}
!362 = !DIEnumerator(name: "FORL_IDX", value: 0)
!363 = !DIEnumerator(name: "FORL_STOP", value: 1)
!364 = !DIEnumerator(name: "FORL_STEP", value: 2)
!365 = !DIEnumerator(name: "FORL_EXT", value: 3)
!366 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !367, line: 29, baseType: !5, size: 32, elements: !368)
!367 = !DIFile(filename: "./lj_target_x86.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/LuaJIT-2.1-20190507/src", checksumkind: CSK_MD5, checksum: "6cc428797e875ed9ee8ba91423fe3dc6")
!368 = !{!369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415}
!369 = !DIEnumerator(name: "RID_EAX", value: 0)
!370 = !DIEnumerator(name: "RID_ECX", value: 1)
!371 = !DIEnumerator(name: "RID_EDX", value: 2)
!372 = !DIEnumerator(name: "RID_EBX", value: 3)
!373 = !DIEnumerator(name: "RID_ESP", value: 4)
!374 = !DIEnumerator(name: "RID_EBP", value: 5)
!375 = !DIEnumerator(name: "RID_ESI", value: 6)
!376 = !DIEnumerator(name: "RID_EDI", value: 7)
!377 = !DIEnumerator(name: "RID_R8D", value: 8)
!378 = !DIEnumerator(name: "RID_R9D", value: 9)
!379 = !DIEnumerator(name: "RID_R10D", value: 10)
!380 = !DIEnumerator(name: "RID_R11D", value: 11)
!381 = !DIEnumerator(name: "RID_R12D", value: 12)
!382 = !DIEnumerator(name: "RID_R13D", value: 13)
!383 = !DIEnumerator(name: "RID_R14D", value: 14)
!384 = !DIEnumerator(name: "RID_R15D", value: 15)
!385 = !DIEnumerator(name: "RID_XMM0", value: 16)
!386 = !DIEnumerator(name: "RID_XMM1", value: 17)
!387 = !DIEnumerator(name: "RID_XMM2", value: 18)
!388 = !DIEnumerator(name: "RID_XMM3", value: 19)
!389 = !DIEnumerator(name: "RID_XMM4", value: 20)
!390 = !DIEnumerator(name: "RID_XMM5", value: 21)
!391 = !DIEnumerator(name: "RID_XMM6", value: 22)
!392 = !DIEnumerator(name: "RID_XMM7", value: 23)
!393 = !DIEnumerator(name: "RID_XMM8", value: 24)
!394 = !DIEnumerator(name: "RID_XMM9", value: 25)
!395 = !DIEnumerator(name: "RID_XMM10", value: 26)
!396 = !DIEnumerator(name: "RID_XMM11", value: 27)
!397 = !DIEnumerator(name: "RID_XMM12", value: 28)
!398 = !DIEnumerator(name: "RID_XMM13", value: 29)
!399 = !DIEnumerator(name: "RID_XMM14", value: 30)
!400 = !DIEnumerator(name: "RID_XMM15", value: 31)
!401 = !DIEnumerator(name: "RID_MAX", value: 32)
!402 = !DIEnumerator(name: "RID_MRM", value: 32)
!403 = !DIEnumerator(name: "RID_RIP", value: 37)
!404 = !DIEnumerator(name: "RID_SP", value: 4)
!405 = !DIEnumerator(name: "RID_RET", value: 0)
!406 = !DIEnumerator(name: "RID_FPRET", value: 16)
!407 = !DIEnumerator(name: "RID_BASE", value: 2)
!408 = !DIEnumerator(name: "RID_LPC", value: 3)
!409 = !DIEnumerator(name: "RID_DISPATCH", value: 14)
!410 = !DIEnumerator(name: "RID_MIN_GPR", value: 0)
!411 = !DIEnumerator(name: "RID_MIN_FPR", value: 16)
!412 = !DIEnumerator(name: "RID_MAX_GPR", value: 16)
!413 = !DIEnumerator(name: "RID_MAX_FPR", value: 32)
!414 = !DIEnumerator(name: "RID_NUM_GPR", value: 16)
!415 = !DIEnumerator(name: "RID_NUM_FPR", value: 16)
!416 = !{!417, !423, !440, !430, !419, !429, !434, !442, !443, !441, !446, !447, !470, !568, !479, !634, !744, !745, !460, !627, !747, !748, !749, !751, !753, !754, !755, !756, !758, !530, !759, !780, !917, !453, !918, !919, !721, !920, !921, !924, !925, !926, !464}
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "MSize", file: !418, line: 19, baseType: !419)
!418 = !DIFile(filename: "./lj_obj.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/LuaJIT-2.1-20190507/src", checksumkind: CSK_MD5, checksum: "06795d992b420007c7090a7fd52688df")
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !420, line: 26, baseType: !421)
!420 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !422, line: 42, baseType: !5)
!422 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "SnapShot", file: !4, line: 175, baseType: !425)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SnapShot", file: !4, line: 168, size: 96, elements: !426)
!426 = !{!427, !428, !433, !437, !438, !439}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "mapofs", scope: !425, file: !4, line: 169, baseType: !419, size: 32)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !425, file: !4, line: 170, baseType: !429, size: 16, offset: 32)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRRef1", file: !81, line: 443, baseType: !430)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !420, line: 25, baseType: !431)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !422, line: 40, baseType: !432)
!432 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "nslots", scope: !425, file: !4, line: 171, baseType: !434, size: 8, offset: 48)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !420, line: 24, baseType: !435)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !422, line: 38, baseType: !436)
!436 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "topslot", scope: !425, file: !4, line: 172, baseType: !434, size: 8, offset: 56)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "nent", scope: !425, file: !4, line: 173, baseType: !434, size: 8, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !425, file: !4, line: 174, baseType: !434, size: 8, offset: 72)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "SnapEntry", file: !4, line: 180, baseType: !419)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "BCReg", file: !418, line: 149, baseType: !419)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !444, line: 90, baseType: !445)
!444 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!445 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRType", file: !81, line: 338, baseType: !80)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExitState", file: !367, line: 162, baseType: !449)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !367, line: 158, size: 10240, elements: !450)
!450 = !{!451, !458, !462}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "fpr", scope: !449, file: !367, line: 159, baseType: !452, size: 1024)
!452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !453, size: 1024, elements: !456)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Number", file: !454, line: 100, baseType: !455)
!454 = !DIFile(filename: "./lua.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/LuaJIT-2.1-20190507/src", checksumkind: CSK_MD5, checksum: "255fa697efe8afbe3c913e4a8fc1e62f")
!455 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!456 = !{!457}
!457 = !DISubrange(count: 16)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "gpr", scope: !449, file: !367, line: 160, baseType: !459, size: 1024, offset: 1024)
!459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 1024, elements: !456)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !444, line: 87, baseType: !461)
!461 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "spill", scope: !449, file: !367, line: 161, baseType: !463, size: 8192, offset: 2048)
!463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 8192, elements: !468)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !465, line: 26, baseType: !466)
!465 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !422, line: 41, baseType: !467)
!467 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!468 = !{!469}
!469 = !DISubrange(count: 256)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCtrace", file: !4, line: 267, baseType: !472)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GCtrace", file: !4, line: 234, size: 960, elements: !473)
!473 = !{!474, !481, !482, !483, !484, !486, !487, !488, !543, !544, !545, !546, !547, !548, !549, !551, !552, !555, !556, !557, !558, !560, !561, !562, !563, !564, !565, !566, !567}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "nextgc", scope: !472, file: !4, line: 235, baseType: !475, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCRef", file: !418, line: 56, baseType: !476)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GCRef", file: !418, line: 50, size: 64, elements: !477)
!477 = !{!478}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "gcptr64", scope: !476, file: !418, line: 52, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !420, line: 27, baseType: !480)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !422, line: 45, baseType: !445)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !472, file: !4, line: 235, baseType: !434, size: 8, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "gct", scope: !472, file: !4, line: 235, baseType: !434, size: 8, offset: 72)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "nsnap", scope: !472, file: !4, line: 236, baseType: !430, size: 16, offset: 80)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "nins", scope: !472, file: !4, line: 237, baseType: !485, size: 32, offset: 96)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRRef", file: !81, line: 445, baseType: !419)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "unused_gc64", scope: !472, file: !4, line: 239, baseType: !419, size: 32, offset: 128)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !472, file: !4, line: 241, baseType: !475, size: 64, offset: 192)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "ir", scope: !472, file: !4, line: 242, baseType: !489, size: 64, offset: 256)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRIns", file: !81, line: 564, baseType: !491)
!491 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "IRIns", file: !81, line: 540, size: 64, elements: !492)
!492 = !{!493, !501, !515, !516, !517, !522}
!493 = !DIDerivedType(tag: DW_TAG_member, scope: !491, file: !81, line: 541, baseType: !494, size: 64)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !491, file: !81, line: 541, size: 64, elements: !495)
!495 = !{!496, !497, !498, !500}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "op1", scope: !494, file: !81, line: 542, baseType: !429, size: 16)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "op2", scope: !494, file: !81, line: 542, baseType: !429, size: 16, offset: 16)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "ot", scope: !494, file: !81, line: 546, baseType: !499, size: 16, offset: 32)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "IROpT", file: !81, line: 438, baseType: !430)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !494, file: !81, line: 547, baseType: !429, size: 16, offset: 48)
!501 = !DIDerivedType(tag: DW_TAG_member, scope: !491, file: !81, line: 549, baseType: !502, size: 64)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !491, file: !81, line: 549, size: 64, elements: !503)
!503 = !{!504, !506, !511, !513, !514}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "op12", scope: !502, file: !81, line: 550, baseType: !505, size: 32)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRRef2", file: !81, line: 444, baseType: !419)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !502, file: !81, line: 551, baseType: !507, size: 8, offset: 32)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRType1", file: !81, line: 343, baseType: !508)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "IRType1", file: !81, line: 343, size: 8, elements: !509)
!509 = !{!510}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "irt", scope: !508, file: !81, line: 343, baseType: !434, size: 8)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !502, file: !81, line: 551, baseType: !512, size: 8, offset: 40)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "IROp1", file: !81, line: 160, baseType: !434)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !502, file: !81, line: 555, baseType: !434, size: 8, offset: 48)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !502, file: !81, line: 555, baseType: !434, size: 8, offset: 56)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !491, file: !81, line: 560, baseType: !464, size: 32)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "gcr", scope: !491, file: !81, line: 561, baseType: !475, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !491, file: !81, line: 562, baseType: !518, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "MRef", file: !418, line: 33, baseType: !519)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MRef", file: !418, line: 27, size: 64, elements: !520)
!520 = !{!521}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !519, file: !418, line: 29, baseType: !479, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "tv", scope: !491, file: !81, line: 563, baseType: !523, size: 64, align: 64)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "TValue", file: !418, line: 211, baseType: !524, align: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "TValue", file: !418, line: 172, size: 64, elements: !525)
!525 = !{!526, !527, !528, !529, !532, !537, !538}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !524, file: !418, line: 173, baseType: !479, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !524, file: !418, line: 174, baseType: !453, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "gcr", scope: !524, file: !418, line: 176, baseType: !475, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "it64", scope: !524, file: !418, line: 177, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !465, line: 27, baseType: !531)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !422, line: 44, baseType: !461)
!532 = !DIDerivedType(tag: DW_TAG_member, scope: !524, file: !418, line: 178, baseType: !533, size: 64)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !524, file: !418, line: 178, size: 64, elements: !534)
!534 = !{!535, !536}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !533, file: !418, line: 179, baseType: !464, size: 32)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !533, file: !418, line: 179, baseType: !419, size: 32, offset: 32)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "ftsz", scope: !524, file: !418, line: 196, baseType: !530, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "u32", scope: !524, file: !418, line: 210, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !524, file: !418, line: 205, size: 64, elements: !540)
!540 = !{!541, !542}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "lo", scope: !539, file: !418, line: 206, baseType: !419, size: 32)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "hi", scope: !539, file: !418, line: 206, baseType: !419, size: 32, offset: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "nk", scope: !472, file: !4, line: 243, baseType: !485, size: 32, offset: 320)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "nsnapmap", scope: !472, file: !4, line: 244, baseType: !419, size: 32, offset: 352)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "snap", scope: !472, file: !4, line: 245, baseType: !423, size: 64, offset: 384)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "snapmap", scope: !472, file: !4, line: 246, baseType: !440, size: 64, offset: 448)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "startpt", scope: !472, file: !4, line: 247, baseType: !475, size: 64, offset: 512)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "startpc", scope: !472, file: !4, line: 248, baseType: !518, size: 64, offset: 576)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "startins", scope: !472, file: !4, line: 249, baseType: !550, size: 32, offset: 640)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "BCIns", file: !418, line: 147, baseType: !419)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "szmcode", scope: !472, file: !4, line: 250, baseType: !417, size: 32, offset: 672)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "mcode", scope: !472, file: !4, line: 251, baseType: !553, size: 64, offset: 704)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "MCode", file: !4, line: 156, baseType: !434)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "mcloop", scope: !472, file: !4, line: 252, baseType: !417, size: 32, offset: 768)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "nchild", scope: !472, file: !4, line: 253, baseType: !430, size: 16, offset: 800)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "spadjust", scope: !472, file: !4, line: 254, baseType: !430, size: 16, offset: 816)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "traceno", scope: !472, file: !4, line: 255, baseType: !559, size: 16, offset: 832)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "TraceNo1", file: !4, line: 218, baseType: !430)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !472, file: !4, line: 256, baseType: !559, size: 16, offset: 848)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !472, file: !4, line: 257, baseType: !559, size: 16, offset: 864)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "nextroot", scope: !472, file: !4, line: 258, baseType: !559, size: 16, offset: 880)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "nextside", scope: !472, file: !4, line: 259, baseType: !559, size: 16, offset: 896)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "sinktags", scope: !472, file: !4, line: 260, baseType: !434, size: 8, offset: 912)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "topslot", scope: !472, file: !4, line: 261, baseType: !434, size: 8, offset: 920)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "linktype", scope: !472, file: !4, line: 262, baseType: !434, size: 8, offset: 928)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "unused1", scope: !472, file: !4, line: 263, baseType: !434, size: 8, offset: 936)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCobj", file: !418, line: 723, baseType: !570)
!570 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "GCobj", file: !418, line: 713, size: 832, elements: !571)
!571 = !{!572, !584, !595, !615, !637, !664, !704, !712, !731}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "gch", scope: !570, file: !418, line: 714, baseType: !573, size: 320)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "GChead", file: !418, line: 697, baseType: !574)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GChead", file: !418, line: 690, size: 320, elements: !575)
!575 = !{!576, !577, !578, !579, !580, !581, !582, !583}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "nextgc", scope: !574, file: !418, line: 691, baseType: !475, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !574, file: !418, line: 691, baseType: !434, size: 8, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "gct", scope: !574, file: !418, line: 691, baseType: !434, size: 8, offset: 72)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "unused1", scope: !574, file: !418, line: 692, baseType: !434, size: 8, offset: 80)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "unused2", scope: !574, file: !418, line: 693, baseType: !434, size: 8, offset: 88)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !574, file: !418, line: 694, baseType: !475, size: 64, offset: 128)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !574, file: !418, line: 695, baseType: !475, size: 64, offset: 192)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "metatable", scope: !574, file: !418, line: 696, baseType: !475, size: 64, offset: 256)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !570, file: !418, line: 715, baseType: !585, size: 192)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCstr", file: !418, line: 297, baseType: !586)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GCstr", file: !418, line: 291, size: 192, elements: !587)
!587 = !{!588, !589, !590, !591, !592, !593, !594}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "nextgc", scope: !586, file: !418, line: 292, baseType: !475, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !586, file: !418, line: 292, baseType: !434, size: 8, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "gct", scope: !586, file: !418, line: 292, baseType: !434, size: 8, offset: 72)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !586, file: !418, line: 293, baseType: !434, size: 8, offset: 80)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !586, file: !418, line: 294, baseType: !434, size: 8, offset: 88)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !586, file: !418, line: 295, baseType: !417, size: 32, offset: 96)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !586, file: !418, line: 296, baseType: !417, size: 32, offset: 128)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "uv", scope: !570, file: !418, line: 716, baseType: !596, size: 384)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCupval", file: !418, line: 429, baseType: !597)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GCupval", file: !418, line: 416, size: 384, elements: !598)
!598 = !{!599, !600, !601, !602, !603, !604, !613, !614}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "nextgc", scope: !597, file: !418, line: 417, baseType: !475, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !597, file: !418, line: 417, baseType: !434, size: 8, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "gct", scope: !597, file: !418, line: 417, baseType: !434, size: 8, offset: 72)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "closed", scope: !597, file: !418, line: 418, baseType: !434, size: 8, offset: 80)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "immutable", scope: !597, file: !418, line: 419, baseType: !434, size: 8, offset: 88)
!604 = !DIDerivedType(tag: DW_TAG_member, scope: !597, file: !418, line: 420, baseType: !605, size: 128, offset: 128)
!605 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !597, file: !418, line: 420, size: 128, elements: !606)
!606 = !{!607, !608}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "tv", scope: !605, file: !418, line: 421, baseType: !523, size: 64, align: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, scope: !605, file: !418, line: 422, baseType: !609, size: 128)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !605, file: !418, line: 422, size: 128, elements: !610)
!610 = !{!611, !612}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !609, file: !418, line: 423, baseType: !475, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !609, file: !418, line: 424, baseType: !475, size: 64, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !597, file: !418, line: 427, baseType: !518, size: 64, offset: 256)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "dhash", scope: !597, file: !418, line: 428, baseType: !419, size: 32, offset: 320)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "th", scope: !570, file: !418, line: 717, baseType: !616, size: 832)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_State", file: !454, line: 51, baseType: !617)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_State", file: !418, line: 650, size: 832, elements: !618)
!618 = !{!619, !620, !621, !622, !623, !624, !625, !626, !628, !629, !630, !631, !632, !633, !635, !636}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "nextgc", scope: !617, file: !418, line: 651, baseType: !475, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !617, file: !418, line: 651, baseType: !434, size: 8, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "gct", scope: !617, file: !418, line: 651, baseType: !434, size: 8, offset: 72)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "dummy_ffid", scope: !617, file: !418, line: 652, baseType: !434, size: 8, offset: 80)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !617, file: !418, line: 653, baseType: !434, size: 8, offset: 88)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "glref", scope: !617, file: !418, line: 654, baseType: !518, size: 64, offset: 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !617, file: !418, line: 655, baseType: !475, size: 64, offset: 192)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !617, file: !418, line: 656, baseType: !627, size: 64, offset: 256)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !617, file: !418, line: 657, baseType: !627, size: 64, offset: 320)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "maxstack", scope: !617, file: !418, line: 658, baseType: !518, size: 64, offset: 384)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !617, file: !418, line: 659, baseType: !518, size: 64, offset: 448)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "openupval", scope: !617, file: !418, line: 660, baseType: !475, size: 64, offset: 512)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !617, file: !418, line: 661, baseType: !475, size: 64, offset: 576)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "cframe", scope: !617, file: !418, line: 662, baseType: !634, size: 64, offset: 640)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "stacksize", scope: !617, file: !418, line: 663, baseType: !417, size: 32, offset: 704)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "exdata", scope: !617, file: !418, line: 664, baseType: !634, size: 64, offset: 768)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !570, file: !418, line: 718, baseType: !638, size: 832)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCproto", file: !418, line: 380, baseType: !639)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GCproto", file: !418, line: 356, size: 832, elements: !640)
!640 = !{!641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !660, !661, !662, !663}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "nextgc", scope: !639, file: !418, line: 357, baseType: !475, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !639, file: !418, line: 357, baseType: !434, size: 8, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "gct", scope: !639, file: !418, line: 357, baseType: !434, size: 8, offset: 72)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "numparams", scope: !639, file: !418, line: 358, baseType: !434, size: 8, offset: 80)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "framesize", scope: !639, file: !418, line: 359, baseType: !434, size: 8, offset: 88)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "sizebc", scope: !639, file: !418, line: 360, baseType: !417, size: 32, offset: 96)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "unused_gc64", scope: !639, file: !418, line: 362, baseType: !419, size: 32, offset: 128)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !639, file: !418, line: 364, baseType: !475, size: 64, offset: 192)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !639, file: !418, line: 365, baseType: !518, size: 64, offset: 256)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "uv", scope: !639, file: !418, line: 366, baseType: !518, size: 64, offset: 320)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "sizekgc", scope: !639, file: !418, line: 367, baseType: !417, size: 32, offset: 384)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "sizekn", scope: !639, file: !418, line: 368, baseType: !417, size: 32, offset: 416)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "sizept", scope: !639, file: !418, line: 369, baseType: !417, size: 32, offset: 448)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "sizeuv", scope: !639, file: !418, line: 370, baseType: !434, size: 8, offset: 480)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !639, file: !418, line: 371, baseType: !434, size: 8, offset: 488)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !639, file: !418, line: 372, baseType: !430, size: 16, offset: 496)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "chunkname", scope: !639, file: !418, line: 374, baseType: !475, size: 64, offset: 512)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "firstline", scope: !639, file: !418, line: 375, baseType: !659, size: 32, offset: 576)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "BCLine", file: !418, line: 150, baseType: !464)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "numline", scope: !639, file: !418, line: 376, baseType: !659, size: 32, offset: 608)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "lineinfo", scope: !639, file: !418, line: 377, baseType: !518, size: 64, offset: 640)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "uvinfo", scope: !639, file: !418, line: 378, baseType: !518, size: 64, offset: 704)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "varinfo", scope: !639, file: !418, line: 379, baseType: !518, size: 64, offset: 768)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !570, file: !418, line: 719, baseType: !665, size: 448)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCfunc", file: !418, line: 456, baseType: !666)
!666 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "GCfunc", file: !418, line: 453, size: 448, elements: !667)
!667 = !{!668, !690}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !666, file: !418, line: 454, baseType: !669, size: 448)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCfuncC", file: !418, line: 446, baseType: !670)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GCfuncC", file: !418, line: 442, size: 448, elements: !671)
!671 = !{!672, !673, !674, !675, !676, !677, !678, !679, !680, !686}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "nextgc", scope: !670, file: !418, line: 443, baseType: !475, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !670, file: !418, line: 443, baseType: !434, size: 8, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "gct", scope: !670, file: !418, line: 443, baseType: !434, size: 8, offset: 72)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "ffid", scope: !670, file: !418, line: 443, baseType: !434, size: 8, offset: 80)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "nupvalues", scope: !670, file: !418, line: 443, baseType: !434, size: 8, offset: 88)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !670, file: !418, line: 443, baseType: !475, size: 64, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !670, file: !418, line: 443, baseType: !475, size: 64, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "pc", scope: !670, file: !418, line: 443, baseType: !518, size: 64, offset: 256)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !670, file: !418, line: 444, baseType: !681, size: 64, offset: 320)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_CFunction", file: !454, line: 53, baseType: !682)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{!467, !685}
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "upvalue", scope: !670, file: !418, line: 445, baseType: !687, size: 64, align: 64, offset: 384)
!687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !523, size: 64, align: 64, elements: !688)
!688 = !{!689}
!689 = !DISubrange(count: 1)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !666, file: !418, line: 455, baseType: !691, size: 384)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCfuncL", file: !418, line: 451, baseType: !692)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GCfuncL", file: !418, line: 448, size: 384, elements: !693)
!693 = !{!694, !695, !696, !697, !698, !699, !700, !701, !702}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "nextgc", scope: !692, file: !418, line: 449, baseType: !475, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !692, file: !418, line: 449, baseType: !434, size: 8, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "gct", scope: !692, file: !418, line: 449, baseType: !434, size: 8, offset: 72)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "ffid", scope: !692, file: !418, line: 449, baseType: !434, size: 8, offset: 80)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "nupvalues", scope: !692, file: !418, line: 449, baseType: !434, size: 8, offset: 88)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !692, file: !418, line: 449, baseType: !475, size: 64, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !692, file: !418, line: 449, baseType: !475, size: 64, offset: 192)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "pc", scope: !692, file: !418, line: 449, baseType: !518, size: 64, offset: 256)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "uvptr", scope: !692, file: !418, line: 450, baseType: !703, size: 64, offset: 320)
!703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !475, size: 64, elements: !688)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "cd", scope: !570, file: !418, line: 720, baseType: !705, size: 128)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCcdata", file: !418, line: 335, baseType: !706)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GCcdata", file: !418, line: 332, size: 128, elements: !707)
!707 = !{!708, !709, !710, !711}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "nextgc", scope: !706, file: !418, line: 333, baseType: !475, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !706, file: !418, line: 333, baseType: !434, size: 8, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "gct", scope: !706, file: !418, line: 333, baseType: !434, size: 8, offset: 72)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "ctypeid", scope: !706, file: !418, line: 334, baseType: !430, size: 16, offset: 80)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "tab", scope: !570, file: !418, line: 721, baseType: !713, size: 512)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCtab", file: !418, line: 495, baseType: !714)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GCtab", file: !418, line: 482, size: 512, elements: !715)
!715 = !{!716, !717, !718, !719, !720, !724, !725, !726, !727, !728, !729, !730}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "nextgc", scope: !714, file: !418, line: 483, baseType: !475, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !714, file: !418, line: 483, baseType: !434, size: 8, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "gct", scope: !714, file: !418, line: 483, baseType: !434, size: 8, offset: 72)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "nomm", scope: !714, file: !418, line: 484, baseType: !434, size: 8, offset: 80)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "colo", scope: !714, file: !418, line: 485, baseType: !721, size: 8, offset: 88)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !465, line: 24, baseType: !722)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !422, line: 37, baseType: !723)
!723 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !714, file: !418, line: 486, baseType: !518, size: 64, offset: 128)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !714, file: !418, line: 487, baseType: !475, size: 64, offset: 192)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "metatable", scope: !714, file: !418, line: 488, baseType: !475, size: 64, offset: 256)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !714, file: !418, line: 489, baseType: !518, size: 64, offset: 320)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "asize", scope: !714, file: !418, line: 490, baseType: !419, size: 32, offset: 384)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "hmask", scope: !714, file: !418, line: 491, baseType: !419, size: 32, offset: 416)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "freetop", scope: !714, file: !418, line: 493, baseType: !518, size: 64, offset: 448)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "ud", scope: !570, file: !418, line: 722, baseType: !732, size: 384)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCudata", file: !418, line: 316, baseType: !733)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GCudata", file: !418, line: 308, size: 384, elements: !734)
!734 = !{!735, !736, !737, !738, !739, !740, !741, !742, !743}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "nextgc", scope: !733, file: !418, line: 309, baseType: !475, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !733, file: !418, line: 309, baseType: !434, size: 8, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "gct", scope: !733, file: !418, line: 309, baseType: !434, size: 8, offset: 72)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "udtype", scope: !733, file: !418, line: 310, baseType: !434, size: 8, offset: 80)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "unused2", scope: !733, file: !418, line: 311, baseType: !434, size: 8, offset: 88)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !733, file: !418, line: 312, baseType: !475, size: 64, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !733, file: !418, line: 313, baseType: !417, size: 32, offset: 192)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "metatable", scope: !733, file: !418, line: 314, baseType: !475, size: 64, offset: 256)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "align1", scope: !733, file: !418, line: 315, baseType: !419, size: 32, offset: 320)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "BCOp", file: !231, line: 205, baseType: !230)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !750, line: 59, baseType: !461)
!750 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !550)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "BCMode", file: !231, line: 243, baseType: !342)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "IROp", file: !81, line: 157, baseType: !118)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "TRef", file: !81, line: 480, baseType: !419)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "CTypeID", file: !757, line: 139, baseType: !419)
!757 = !DIFile(filename: "./lj_ctype.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/LuaJIT-2.1-20190507/src", checksumkind: CSK_MD5, checksum: "f6829f23df8df6ff4e189f073a1c6e61")
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "CTState", file: !757, line: 184, baseType: !761)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CTState", file: !757, line: 174, size: 3776, elements: !762)
!762 = !{!763, !776, !777, !778, !779, !883, !885, !886, !913}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "tab", scope: !761, file: !757, line: 175, baseType: !764, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "CType", file: !757, line: 149, baseType: !766)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CType", file: !757, line: 143, size: 192, elements: !767)
!767 = !{!768, !770, !772, !774, !775}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !766, file: !757, line: 144, baseType: !769, size: 32)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "CTInfo", file: !757, line: 137, baseType: !419)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !766, file: !757, line: 145, baseType: !771, size: 32, offset: 32)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "CTSize", file: !757, line: 138, baseType: !419)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "sib", scope: !766, file: !757, line: 146, baseType: !773, size: 16, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "CTypeID1", file: !757, line: 140, baseType: !430)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !766, file: !757, line: 147, baseType: !773, size: 16, offset: 80)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !766, file: !757, line: 148, baseType: !475, size: 64, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !761, file: !757, line: 176, baseType: !756, size: 32, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "sizetab", scope: !761, file: !757, line: 177, baseType: !417, size: 32, offset: 96)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "L", scope: !761, file: !757, line: 178, baseType: !685, size: 64, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !761, file: !757, line: 179, baseType: !780, size: 64, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "global_State", file: !418, line: 625, baseType: !782)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "global_State", file: !418, line: 594, size: 5440, elements: !783)
!783 = !{!784, !786, !787, !788, !794, !795, !817, !819, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !843, !844, !845, !846, !871, !872, !873, !874, !875, !876, !877, !878, !879}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "strhash", scope: !782, file: !418, line: 595, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "strmask", scope: !782, file: !418, line: 596, baseType: !417, size: 32, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "strnum", scope: !782, file: !418, line: 597, baseType: !417, size: 32, offset: 96)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "allocf", scope: !782, file: !418, line: 598, baseType: !789, size: 64, offset: 128)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Alloc", file: !454, line: 67, baseType: !790)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{!634, !634, !634, !793, !793}
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !750, line: 70, baseType: !445)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "allocd", scope: !782, file: !418, line: 599, baseType: !634, size: 64, offset: 192)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !782, file: !418, line: 600, baseType: !796, size: 768, offset: 256)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCState", file: !418, line: 591, baseType: !797)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GCState", file: !418, line: 573, size: 768, elements: !798)
!798 = !{!799, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !797, file: !418, line: 574, baseType: !800, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCSize", file: !418, line: 21, baseType: !479)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "threshold", scope: !797, file: !418, line: 575, baseType: !800, size: 64, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "currentwhite", scope: !797, file: !418, line: 576, baseType: !434, size: 8, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !797, file: !418, line: 577, baseType: !434, size: 8, offset: 136)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "nocdatafin", scope: !797, file: !418, line: 578, baseType: !434, size: 8, offset: 144)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "unused2", scope: !797, file: !418, line: 579, baseType: !434, size: 8, offset: 152)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "sweepstr", scope: !797, file: !418, line: 580, baseType: !417, size: 32, offset: 160)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !797, file: !418, line: 581, baseType: !475, size: 64, offset: 192)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "sweep", scope: !797, file: !418, line: 582, baseType: !518, size: 64, offset: 256)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "gray", scope: !797, file: !418, line: 583, baseType: !475, size: 64, offset: 320)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "grayagain", scope: !797, file: !418, line: 584, baseType: !475, size: 64, offset: 384)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "weak", scope: !797, file: !418, line: 585, baseType: !475, size: 64, offset: 448)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "mmudata", scope: !797, file: !418, line: 586, baseType: !475, size: 64, offset: 512)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "debt", scope: !797, file: !418, line: 587, baseType: !800, size: 64, offset: 576)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "estimate", scope: !797, file: !418, line: 588, baseType: !800, size: 64, offset: 640)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "stepmul", scope: !797, file: !418, line: 589, baseType: !417, size: 32, offset: 704)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "pause", scope: !797, file: !418, line: 590, baseType: !417, size: 32, offset: 736)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "vmstate", scope: !782, file: !418, line: 601, baseType: !818, size: 32, offset: 1024)
!818 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !464)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "tmpbuf", scope: !782, file: !418, line: 602, baseType: !820, size: 256, offset: 1088)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "SBuf", file: !418, line: 161, baseType: !821)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SBuf", file: !418, line: 156, size: 256, elements: !822)
!822 = !{!823, !824, !825, !826}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !821, file: !418, line: 157, baseType: !518, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !821, file: !418, line: 158, baseType: !518, size: 64, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !821, file: !418, line: 159, baseType: !518, size: 64, offset: 128)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "L", scope: !821, file: !418, line: 160, baseType: !518, size: 64, offset: 192)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "strempty", scope: !782, file: !418, line: 603, baseType: !585, size: 192, offset: 1344)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "stremptyz", scope: !782, file: !418, line: 604, baseType: !434, size: 8, offset: 1536)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "hookmask", scope: !782, file: !418, line: 605, baseType: !434, size: 8, offset: 1544)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "dispatchmode", scope: !782, file: !418, line: 606, baseType: !434, size: 8, offset: 1552)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "vmevmask", scope: !782, file: !418, line: 607, baseType: !434, size: 8, offset: 1560)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "mainthref", scope: !782, file: !418, line: 608, baseType: !475, size: 64, offset: 1600)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "registrytv", scope: !782, file: !418, line: 609, baseType: !523, size: 64, align: 64, offset: 1664)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "tmptv", scope: !782, file: !418, line: 610, baseType: !523, size: 64, align: 64, offset: 1728)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "tmptv2", scope: !782, file: !418, line: 610, baseType: !523, size: 64, align: 64, offset: 1792)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "nilnode", scope: !782, file: !418, line: 611, baseType: !837, size: 192, offset: 1856)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "Node", file: !418, line: 478, baseType: !838)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Node", file: !418, line: 471, size: 192, elements: !839)
!839 = !{!840, !841, !842}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !838, file: !418, line: 472, baseType: !523, size: 64, align: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !838, file: !418, line: 473, baseType: !523, size: 64, align: 64, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !838, file: !418, line: 474, baseType: !518, size: 64, offset: 128)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "uvhead", scope: !782, file: !418, line: 612, baseType: !596, size: 384, offset: 2048)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "hookcount", scope: !782, file: !418, line: 613, baseType: !464, size: 32, offset: 2432)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "hookcstart", scope: !782, file: !418, line: 614, baseType: !464, size: 32, offset: 2464)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "hookf", scope: !782, file: !418, line: 615, baseType: !847, size: 64, offset: 2496)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Hook", file: !454, line: 334, baseType: !848)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DISubroutineType(types: !850)
!850 = !{null, !685, !851}
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Debug", file: !454, line: 330, baseType: !853)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_Debug", file: !454, line: 362, size: 960, elements: !854)
!854 = !{!855, !856, !859, !860, !861, !862, !863, !864, !865, !866, !870}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !853, file: !454, line: 363, baseType: !467, size: 32)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !853, file: !454, line: 364, baseType: !857, size: 64, offset: 64)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !746)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "namewhat", scope: !853, file: !454, line: 365, baseType: !857, size: 64, offset: 128)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "what", scope: !853, file: !454, line: 366, baseType: !857, size: 64, offset: 192)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !853, file: !454, line: 367, baseType: !857, size: 64, offset: 256)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "currentline", scope: !853, file: !454, line: 368, baseType: !467, size: 32, offset: 320)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !853, file: !454, line: 369, baseType: !467, size: 32, offset: 352)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !853, file: !454, line: 370, baseType: !467, size: 32, offset: 384)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !853, file: !454, line: 371, baseType: !467, size: 32, offset: 416)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "short_src", scope: !853, file: !454, line: 372, baseType: !867, size: 480, offset: 448)
!867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !746, size: 480, elements: !868)
!868 = !{!869}
!869 = !DISubrange(count: 60)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "i_ci", scope: !853, file: !454, line: 374, baseType: !467, size: 32, offset: 928)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "wrapf", scope: !782, file: !418, line: 616, baseType: !681, size: 64, offset: 2560)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "panic", scope: !782, file: !418, line: 617, baseType: !681, size: 64, offset: 2624)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "bc_cfunc_int", scope: !782, file: !418, line: 618, baseType: !550, size: 32, offset: 2688)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "bc_cfunc_ext", scope: !782, file: !418, line: 619, baseType: !550, size: 32, offset: 2720)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "cur_L", scope: !782, file: !418, line: 620, baseType: !475, size: 64, offset: 2752)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "jit_base", scope: !782, file: !418, line: 621, baseType: !518, size: 64, offset: 2816)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "saved_jit_base", scope: !782, file: !418, line: 622, baseType: !518, size: 64, offset: 2880)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_state", scope: !782, file: !418, line: 623, baseType: !518, size: 64, offset: 2944)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "gcroot", scope: !782, file: !418, line: 624, baseType: !880, size: 2432, offset: 3008)
!880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !475, size: 2432, elements: !881)
!881 = !{!882}
!882 = !DISubrange(count: 38)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "finalizer", scope: !761, file: !757, line: 180, baseType: !884, size: 64, offset: 256)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "miscmap", scope: !761, file: !757, line: 181, baseType: !884, size: 64, offset: 320)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !761, file: !757, line: 182, baseType: !887, size: 1344, align: 64, offset: 384)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "CCallback", file: !757, line: 171, baseType: !888, align: 64)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CCallback", file: !757, line: 162, size: 1344, elements: !889)
!889 = !{!890, !903, !905, !907, !908, !910, !911, !912}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "fpr", scope: !888, file: !757, line: 163, baseType: !891, size: 512, align: 64)
!891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !892, size: 512, align: 64, elements: !901)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "FPRCBArg", file: !757, line: 158, baseType: !893, align: 64)
!893 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "FPRCBArg", file: !757, line: 158, size: 64, elements: !894)
!894 = !{!895, !896}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !893, file: !757, line: 158, baseType: !455, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !893, file: !757, line: 158, baseType: !897, size: 64)
!897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !898, size: 64, elements: !899)
!898 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!899 = !{!900}
!900 = !DISubrange(count: 2)
!901 = !{!902}
!902 = !DISubrange(count: 8)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "gpr", scope: !888, file: !757, line: 164, baseType: !904, size: 512, offset: 512)
!904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 512, elements: !901)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !888, file: !757, line: 165, baseType: !906, size: 64, offset: 1024)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "mcode", scope: !888, file: !757, line: 166, baseType: !634, size: 64, offset: 1088)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "cbid", scope: !888, file: !757, line: 167, baseType: !909, size: 64, offset: 1152)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "sizeid", scope: !888, file: !757, line: 168, baseType: !417, size: 32, offset: 1216)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "topid", scope: !888, file: !757, line: 169, baseType: !417, size: 32, offset: 1248)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !888, file: !757, line: 170, baseType: !417, size: 32, offset: 1280)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !761, file: !757, line: 183, baseType: !914, size: 2048, offset: 1728)
!914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !773, size: 2048, elements: !915)
!915 = !{!916}
!916 = !DISubrange(count: 128)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !465, line: 25, baseType: !922)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !422, line: 39, baseType: !923)
!923 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!927 = !{i32 7, !"Dwarf Version", i32 5}
!928 = !{i32 2, !"Debug Info Version", i32 3}
!929 = !{i32 1, !"wchar_size", i32 4}
!930 = !{i32 8, !"PIC Level", i32 2}
!931 = !{i32 7, !"PIE Level", i32 2}
!932 = !{i32 7, !"uwtable", i32 2}
!933 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!934 = distinct !DISubprogram(name: "lj_snap_grow_buf_", scope: !1, file: !1, line: 38, type: !935, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1063)
!935 = !DISubroutineType(types: !936)
!936 = !{null, !937, !417}
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "jit_State", file: !4, line: 495, baseType: !939)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jit_State", file: !4, line: 393, size: 24960, elements: !940)
!940 = !{!941, !942, !943, !944, !945, !947, !948, !950, !951, !952, !953, !954, !955, !956, !957, !965, !966, !967, !969, !970, !971, !972, !973, !974, !978, !982, !984, !985, !986, !987, !988, !989, !990, !991, !992, !994, !995, !996, !998, !999, !1000, !1004, !1008, !1012, !1014, !1024, !1025, !1026, !1034, !1035, !1046, !1047, !1048, !1050, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !939, file: !4, line: 394, baseType: !471, size: 960)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "curfinal", scope: !939, file: !4, line: 395, baseType: !470, size: 64, offset: 960)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "L", scope: !939, file: !4, line: 397, baseType: !685, size: 64, offset: 1024)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "pc", scope: !939, file: !4, line: 398, baseType: !751, size: 64, offset: 1088)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !939, file: !4, line: 399, baseType: !946, size: 64, offset: 1152)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !939, file: !4, line: 400, baseType: !747, size: 64, offset: 1216)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !939, file: !4, line: 401, baseType: !949, size: 64, offset: 1280)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !939, file: !4, line: 403, baseType: !419, size: 32, offset: 1344)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "maxslot", scope: !939, file: !4, line: 404, baseType: !442, size: 32, offset: 1376)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "baseslot", scope: !939, file: !4, line: 405, baseType: !442, size: 32, offset: 1408)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "mergesnap", scope: !939, file: !4, line: 407, baseType: !434, size: 8, offset: 1440)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "needsnap", scope: !939, file: !4, line: 408, baseType: !434, size: 8, offset: 1448)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "guardemit", scope: !939, file: !4, line: 409, baseType: !507, size: 8, offset: 1456)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "bcskip", scope: !939, file: !4, line: 410, baseType: !434, size: 8, offset: 1464)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "fold", scope: !939, file: !4, line: 412, baseType: !958, size: 320, offset: 1472)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "FoldState", file: !4, line: 390, baseType: !959)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FoldState", file: !4, line: 386, size: 320, elements: !960)
!960 = !{!961, !962, !964}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "ins", scope: !959, file: !4, line: 387, baseType: !490, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !959, file: !4, line: 388, baseType: !963, size: 128, offset: 64)
!963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, size: 128, elements: !899)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !959, file: !4, line: 389, baseType: !963, size: 128, offset: 192)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "bc_min", scope: !939, file: !4, line: 414, baseType: !751, size: 64, offset: 1792)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "bc_extent", scope: !939, file: !4, line: 415, baseType: !417, size: 32, offset: 1856)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !939, file: !4, line: 417, baseType: !968, size: 32, offset: 1888)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "TraceState", file: !4, line: 141, baseType: !3)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "instunroll", scope: !939, file: !4, line: 419, baseType: !464, size: 32, offset: 1920)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "loopunroll", scope: !939, file: !4, line: 420, baseType: !464, size: 32, offset: 1952)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "tailcalled", scope: !939, file: !4, line: 421, baseType: !464, size: 32, offset: 1984)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "framedepth", scope: !939, file: !4, line: 422, baseType: !464, size: 32, offset: 2016)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "retdepth", scope: !939, file: !4, line: 423, baseType: !464, size: 32, offset: 2048)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "ksimd", scope: !939, file: !4, line: 425, baseType: !975, size: 320, align: 64, offset: 2112)
!975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !523, size: 320, align: 64, elements: !976)
!976 = !{!977}
!977 = !DISubrange(count: 5)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "k64", scope: !939, file: !4, line: 426, baseType: !979, size: 192, align: 64, offset: 2432)
!979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !523, size: 192, align: 64, elements: !980)
!980 = !{!981}
!981 = !DISubrange(count: 3)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "k32", scope: !939, file: !4, line: 427, baseType: !983, size: 32, offset: 2624)
!983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 32, elements: !688)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "irbuf", scope: !939, file: !4, line: 429, baseType: !489, size: 64, offset: 2688)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "irtoplim", scope: !939, file: !4, line: 430, baseType: !485, size: 32, offset: 2752)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "irbotlim", scope: !939, file: !4, line: 431, baseType: !485, size: 32, offset: 2784)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "loopref", scope: !939, file: !4, line: 432, baseType: !485, size: 32, offset: 2816)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "sizesnap", scope: !939, file: !4, line: 434, baseType: !417, size: 32, offset: 2848)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "snapbuf", scope: !939, file: !4, line: 435, baseType: !423, size: 64, offset: 2880)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "snapmapbuf", scope: !939, file: !4, line: 436, baseType: !440, size: 64, offset: 2944)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "sizesnapmap", scope: !939, file: !4, line: 437, baseType: !417, size: 32, offset: 3008)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "postproc", scope: !939, file: !4, line: 439, baseType: !993, size: 32, offset: 3040)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "PostProc", file: !4, line: 152, baseType: !14)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "retryrec", scope: !939, file: !4, line: 443, baseType: !434, size: 8, offset: 3072)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !939, file: !4, line: 445, baseType: !785, size: 64, offset: 3136)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "freetrace", scope: !939, file: !4, line: 446, baseType: !997, size: 32, offset: 3200)
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "TraceNo", file: !4, line: 217, baseType: !419)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "sizetrace", scope: !939, file: !4, line: 447, baseType: !417, size: 32, offset: 3232)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "ktrace", scope: !939, file: !4, line: 448, baseType: !429, size: 16, offset: 3264)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !939, file: !4, line: 450, baseType: !1001, size: 1600, offset: 3280)
!1001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 1600, elements: !1002)
!1002 = !{!1003}
!1003 = !DISubrange(count: 100)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !939, file: !4, line: 451, baseType: !1005, size: 8224, offset: 4896)
!1005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !755, size: 8224, elements: !1006)
!1006 = !{!1007}
!1007 = !DISubrange(count: 257)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !939, file: !4, line: 453, baseType: !1009, size: 480, offset: 13120)
!1009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 480, elements: !1010)
!1010 = !{!1011}
!1011 = !DISubrange(count: 15)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "exitstubgroup", scope: !939, file: !4, line: 455, baseType: !1013, size: 1024, offset: 13632)
!1013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !553, size: 1024, elements: !456)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "penalty", scope: !939, file: !4, line: 457, baseType: !1015, size: 8192, offset: 14656)
!1015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1016, size: 8192, elements: !1022)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "HotPenalty", file: !4, line: 288, baseType: !1017)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HotPenalty", file: !4, line: 284, size: 128, elements: !1018)
!1018 = !{!1019, !1020, !1021}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "pc", scope: !1017, file: !4, line: 285, baseType: !518, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1017, file: !4, line: 286, baseType: !430, size: 16, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !1017, file: !4, line: 287, baseType: !430, size: 16, offset: 80)
!1022 = !{!1023}
!1023 = !DISubrange(count: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "penaltyslot", scope: !939, file: !4, line: 458, baseType: !419, size: 32, offset: 22848)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "prngstate", scope: !939, file: !4, line: 459, baseType: !419, size: 32, offset: 22880)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "bpropcache", scope: !939, file: !4, line: 465, baseType: !1027, size: 1024, offset: 22912)
!1027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1028, size: 1024, elements: !456)
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "BPropEntry", file: !4, line: 300, baseType: !1029)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "BPropEntry", file: !4, line: 296, size: 64, elements: !1030)
!1030 = !{!1031, !1032, !1033}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1029, file: !4, line: 297, baseType: !429, size: 16)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1029, file: !4, line: 298, baseType: !429, size: 16, offset: 16)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1029, file: !4, line: 299, baseType: !485, size: 32, offset: 32)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "bpropslot", scope: !939, file: !4, line: 466, baseType: !419, size: 32, offset: 23936)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "scev", scope: !939, file: !4, line: 468, baseType: !1036, size: 192, offset: 24000)
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "ScEvEntry", file: !4, line: 314, baseType: !1037)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ScEvEntry", file: !4, line: 306, size: 192, elements: !1038)
!1038 = !{!1039, !1040, !1041, !1042, !1043, !1044, !1045}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "pc", scope: !1037, file: !4, line: 307, baseType: !518, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !1037, file: !4, line: 308, baseType: !429, size: 16, offset: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1037, file: !4, line: 309, baseType: !429, size: 16, offset: 80)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1037, file: !4, line: 310, baseType: !429, size: 16, offset: 96)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !1037, file: !4, line: 311, baseType: !429, size: 16, offset: 112)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !1037, file: !4, line: 312, baseType: !507, size: 8, offset: 128)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1037, file: !4, line: 313, baseType: !434, size: 8, offset: 136)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "startpc", scope: !939, file: !4, line: 470, baseType: !751, size: 64, offset: 24192)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !939, file: !4, line: 471, baseType: !997, size: 32, offset: 24256)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "exitno", scope: !939, file: !4, line: 472, baseType: !1049, size: 32, offset: 24288)
!1049 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExitNo", file: !4, line: 214, baseType: !419)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "patchpc", scope: !939, file: !4, line: 474, baseType: !1051, size: 64, offset: 24320)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "patchins", scope: !939, file: !4, line: 475, baseType: !550, size: 32, offset: 24384)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "mcprot", scope: !939, file: !4, line: 477, baseType: !467, size: 32, offset: 24416)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "mcarea", scope: !939, file: !4, line: 478, baseType: !553, size: 64, offset: 24448)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "mctop", scope: !939, file: !4, line: 479, baseType: !553, size: 64, offset: 24512)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "mcbot", scope: !939, file: !4, line: 480, baseType: !553, size: 64, offset: 24576)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "szmcarea", scope: !939, file: !4, line: 481, baseType: !793, size: 64, offset: 24640)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "szallmcarea", scope: !939, file: !4, line: 482, baseType: !793, size: 64, offset: 24704)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "errinfo", scope: !939, file: !4, line: 484, baseType: !523, size: 64, align: 64, offset: 24768)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pt", scope: !939, file: !4, line: 487, baseType: !747, size: 64, offset: 24832)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "prev_line", scope: !939, file: !4, line: 488, baseType: !659, size: 32, offset: 24896)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "prof_mode", scope: !939, file: !4, line: 489, baseType: !467, size: 32, offset: 24928)
!1063 = !{!1064, !1065, !1066}
!1064 = !DILocalVariable(name: "J", arg: 1, scope: !934, file: !1, line: 38, type: !937)
!1065 = !DILocalVariable(name: "need", arg: 2, scope: !934, file: !1, line: 38, type: !417)
!1066 = !DILocalVariable(name: "maxsnap", scope: !934, file: !1, line: 40, type: !417)
!1067 = !{!1068, !1068, i64 0}
!1068 = !{!"any pointer", !1069, i64 0}
!1069 = !{!"omnipotent char", !1070, i64 0}
!1070 = !{!"Simple C/C++ TBAA"}
!1071 = !DILocation(line: 38, column: 35, scope: !934)
!1072 = !{!1073, !1073, i64 0}
!1073 = !{!"int", !1069, i64 0}
!1074 = !DILocation(line: 38, column: 44, scope: !934)
!1075 = !DILocation(line: 40, column: 3, scope: !934)
!1076 = !DILocation(line: 40, column: 9, scope: !934)
!1077 = !DILocation(line: 40, column: 26, scope: !934)
!1078 = !DILocation(line: 40, column: 29, scope: !934)
!1079 = !DILocation(line: 41, column: 7, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !934, file: !1, line: 41, column: 7)
!1081 = !DILocation(line: 41, column: 14, scope: !1080)
!1082 = !DILocation(line: 41, column: 12, scope: !1080)
!1083 = !DILocation(line: 41, column: 7, scope: !934)
!1084 = !DILocation(line: 42, column: 18, scope: !1080)
!1085 = !DILocation(line: 42, column: 5, scope: !1080)
!1086 = !DILocation(line: 43, column: 3, scope: !934)
!1087 = !{!1088, !1068, i64 128}
!1088 = !{!"jit_State", !1089, i64 0, !1068, i64 120, !1068, i64 128, !1068, i64 136, !1068, i64 144, !1068, i64 152, !1068, i64 160, !1073, i64 168, !1073, i64 172, !1073, i64 176, !1069, i64 180, !1069, i64 181, !1094, i64 182, !1069, i64 183, !1095, i64 184, !1068, i64 224, !1073, i64 232, !1069, i64 236, !1073, i64 240, !1073, i64 244, !1073, i64 248, !1073, i64 252, !1073, i64 256, !1069, i64 264, !1069, i64 304, !1069, i64 328, !1068, i64 336, !1073, i64 344, !1073, i64 348, !1073, i64 352, !1073, i64 356, !1068, i64 360, !1068, i64 368, !1073, i64 376, !1069, i64 380, !1069, i64 384, !1068, i64 392, !1073, i64 400, !1073, i64 404, !1092, i64 408, !1069, i64 410, !1069, i64 612, !1069, i64 1640, !1069, i64 1704, !1069, i64 1832, !1073, i64 2856, !1073, i64 2860, !1069, i64 2864, !1073, i64 2992, !1096, i64 3000, !1068, i64 3024, !1073, i64 3032, !1073, i64 3036, !1068, i64 3040, !1073, i64 3048, !1073, i64 3052, !1068, i64 3056, !1068, i64 3064, !1068, i64 3072, !1091, i64 3080, !1091, i64 3088, !1069, i64 3096, !1068, i64 3104, !1073, i64 3112, !1073, i64 3116}
!1089 = !{!"GCtrace", !1090, i64 0, !1069, i64 8, !1069, i64 9, !1092, i64 10, !1073, i64 12, !1073, i64 16, !1090, i64 24, !1068, i64 32, !1073, i64 40, !1073, i64 44, !1068, i64 48, !1068, i64 56, !1090, i64 64, !1093, i64 72, !1073, i64 80, !1073, i64 84, !1068, i64 88, !1073, i64 96, !1092, i64 100, !1092, i64 102, !1092, i64 104, !1092, i64 106, !1092, i64 108, !1092, i64 110, !1092, i64 112, !1069, i64 114, !1069, i64 115, !1069, i64 116, !1069, i64 117}
!1090 = !{!"GCRef", !1091, i64 0}
!1091 = !{!"long", !1069, i64 0}
!1092 = !{!"short", !1069, i64 0}
!1093 = !{!"MRef", !1091, i64 0}
!1094 = !{!"IRType1", !1069, i64 0}
!1095 = !{!"FoldState", !1069, i64 0, !1069, i64 8, !1069, i64 24}
!1096 = !{!"ScEvEntry", !1093, i64 0, !1092, i64 8, !1092, i64 10, !1092, i64 12, !1092, i64 14, !1094, i64 16, !1069, i64 17}
!1097 = !{!1088, !1068, i64 360}
!1098 = !DILocation(line: 44, column: 17, scope: !934)
!1099 = !DILocation(line: 44, column: 20, scope: !934)
!1100 = !DILocation(line: 44, column: 3, scope: !934)
!1101 = !DILocation(line: 44, column: 6, scope: !934)
!1102 = !DILocation(line: 44, column: 10, scope: !934)
!1103 = !DILocation(line: 44, column: 15, scope: !934)
!1104 = !{!1088, !1068, i64 48}
!1105 = !DILocation(line: 45, column: 1, scope: !934)
!1106 = !DISubprogram(name: "lj_trace_err", scope: !42, file: !42, line: 22, type: !1107, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{null, !937, !1109}
!1109 = !DIDerivedType(tag: DW_TAG_typedef, name: "TraceError", file: !42, line: 20, baseType: !41)
!1110 = !DISubprogram(name: "lj_mem_grow", scope: !1111, file: !1111, line: 112, type: !1112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1111 = !DIFile(filename: "./lj_gc.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/LuaJIT-2.1-20190507/src", checksumkind: CSK_MD5, checksum: "b232f8e47431e231dd0feddef8495286")
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!634, !685, !634, !1114, !417, !417}
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!1115 = distinct !DISubprogram(name: "lj_snap_grow_map_", scope: !1, file: !1, line: 48, type: !935, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1116)
!1116 = !{!1117, !1118}
!1117 = !DILocalVariable(name: "J", arg: 1, scope: !1115, file: !1, line: 48, type: !937)
!1118 = !DILocalVariable(name: "need", arg: 2, scope: !1115, file: !1, line: 48, type: !417)
!1119 = !DILocation(line: 48, column: 35, scope: !1115)
!1120 = !DILocation(line: 48, column: 44, scope: !1115)
!1121 = !DILocation(line: 50, column: 7, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1115, file: !1, line: 50, column: 7)
!1123 = !DILocation(line: 50, column: 16, scope: !1122)
!1124 = !DILocation(line: 50, column: 19, scope: !1122)
!1125 = !{!1088, !1073, i64 376}
!1126 = !DILocation(line: 50, column: 15, scope: !1122)
!1127 = !DILocation(line: 50, column: 12, scope: !1122)
!1128 = !DILocation(line: 50, column: 7, scope: !1115)
!1129 = !DILocation(line: 51, column: 14, scope: !1122)
!1130 = !DILocation(line: 51, column: 17, scope: !1122)
!1131 = !DILocation(line: 51, column: 13, scope: !1122)
!1132 = !DILocation(line: 51, column: 10, scope: !1122)
!1133 = !DILocation(line: 51, column: 5, scope: !1122)
!1134 = !DILocation(line: 52, column: 12, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1122, file: !1, line: 52, column: 12)
!1136 = !DILocation(line: 52, column: 17, scope: !1135)
!1137 = !DILocation(line: 52, column: 12, scope: !1122)
!1138 = !DILocation(line: 53, column: 10, scope: !1135)
!1139 = !DILocation(line: 53, column: 5, scope: !1135)
!1140 = !DILocation(line: 54, column: 47, scope: !1115)
!1141 = !DILocation(line: 54, column: 50, scope: !1115)
!1142 = !DILocation(line: 54, column: 53, scope: !1115)
!1143 = !DILocation(line: 54, column: 56, scope: !1115)
!1144 = !{!1088, !1068, i64 368}
!1145 = !DILocation(line: 55, column: 7, scope: !1115)
!1146 = !DILocation(line: 55, column: 10, scope: !1115)
!1147 = !DILocation(line: 55, column: 21, scope: !1115)
!1148 = !DILocation(line: 55, column: 41, scope: !1115)
!1149 = !DILocation(line: 55, column: 45, scope: !1115)
!1150 = !DILocation(line: 54, column: 32, scope: !1115)
!1151 = !DILocation(line: 54, column: 3, scope: !1115)
!1152 = !DILocation(line: 54, column: 6, scope: !1115)
!1153 = !DILocation(line: 54, column: 17, scope: !1115)
!1154 = !DILocation(line: 56, column: 20, scope: !1115)
!1155 = !DILocation(line: 56, column: 23, scope: !1115)
!1156 = !DILocation(line: 56, column: 3, scope: !1115)
!1157 = !DILocation(line: 56, column: 6, scope: !1115)
!1158 = !DILocation(line: 56, column: 10, scope: !1115)
!1159 = !DILocation(line: 56, column: 18, scope: !1115)
!1160 = !{!1088, !1068, i64 56}
!1161 = !DILocation(line: 57, column: 20, scope: !1115)
!1162 = !DILocation(line: 57, column: 3, scope: !1115)
!1163 = !DILocation(line: 57, column: 6, scope: !1115)
!1164 = !DILocation(line: 57, column: 18, scope: !1115)
!1165 = !DILocation(line: 58, column: 1, scope: !1115)
!1166 = !DISubprogram(name: "lj_mem_realloc", scope: !1111, file: !1111, line: 110, type: !1167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!634, !685, !634, !800, !800}
!1169 = distinct !DISubprogram(name: "lj_snap_add", scope: !1, file: !1, line: 172, type: !1170, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1172)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{null, !937}
!1172 = !{!1173, !1174, !1175, !1176}
!1173 = !DILocalVariable(name: "J", arg: 1, scope: !1169, file: !1, line: 172, type: !937)
!1174 = !DILocalVariable(name: "nsnap", scope: !1169, file: !1, line: 174, type: !417)
!1175 = !DILocalVariable(name: "nsnapmap", scope: !1169, file: !1, line: 175, type: !417)
!1176 = !DILabel(scope: !1177, name: "nomerge", file: !1, line: 185)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !1, line: 184, column: 10)
!1178 = distinct !DILexicalBlock(scope: !1169, file: !1, line: 177, column: 7)
!1179 = !DILocation(line: 172, column: 29, scope: !1169)
!1180 = !DILocation(line: 174, column: 3, scope: !1169)
!1181 = !DILocation(line: 174, column: 9, scope: !1169)
!1182 = !DILocation(line: 174, column: 17, scope: !1169)
!1183 = !DILocation(line: 174, column: 20, scope: !1169)
!1184 = !DILocation(line: 174, column: 24, scope: !1169)
!1185 = !{!1088, !1092, i64 10}
!1186 = !DILocation(line: 175, column: 3, scope: !1169)
!1187 = !DILocation(line: 175, column: 9, scope: !1169)
!1188 = !DILocation(line: 175, column: 20, scope: !1169)
!1189 = !DILocation(line: 175, column: 23, scope: !1169)
!1190 = !DILocation(line: 175, column: 27, scope: !1169)
!1191 = !{!1088, !1073, i64 44}
!1192 = !DILocation(line: 177, column: 8, scope: !1178)
!1193 = !DILocation(line: 177, column: 14, scope: !1178)
!1194 = !DILocation(line: 177, column: 18, scope: !1178)
!1195 = !DILocation(line: 177, column: 21, scope: !1178)
!1196 = !DILocation(line: 177, column: 24, scope: !1178)
!1197 = !DILocation(line: 177, column: 28, scope: !1178)
!1198 = !DILocation(line: 177, column: 33, scope: !1178)
!1199 = !DILocation(line: 177, column: 38, scope: !1178)
!1200 = !DILocation(line: 177, column: 42, scope: !1178)
!1201 = !{!1202, !1092, i64 4}
!1202 = !{!"SnapShot", !1073, i64 0, !1092, i64 4, !1069, i64 6, !1069, i64 7, !1069, i64 8, !1069, i64 9}
!1203 = !DILocation(line: 177, column: 49, scope: !1178)
!1204 = !DILocation(line: 177, column: 52, scope: !1178)
!1205 = !DILocation(line: 177, column: 56, scope: !1178)
!1206 = !{!1088, !1073, i64 12}
!1207 = !DILocation(line: 177, column: 46, scope: !1178)
!1208 = !DILocation(line: 177, column: 62, scope: !1178)
!1209 = !DILocation(line: 178, column: 8, scope: !1178)
!1210 = !DILocation(line: 178, column: 11, scope: !1178)
!1211 = !{!1088, !1069, i64 180}
!1212 = !DILocation(line: 178, column: 21, scope: !1178)
!1213 = !DILocation(line: 178, column: 25, scope: !1178)
!1214 = !{!1088, !1069, i64 182}
!1215 = !DILocation(line: 177, column: 7, scope: !1169)
!1216 = !DILocation(line: 179, column: 9, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !1, line: 179, column: 9)
!1218 = distinct !DILexicalBlock(scope: !1178, file: !1, line: 178, column: 53)
!1219 = !DILocation(line: 179, column: 15, scope: !1217)
!1220 = !DILocation(line: 179, column: 9, scope: !1218)
!1221 = !DILocation(line: 180, column: 7, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1217, file: !1, line: 179, column: 21)
!1223 = !DILocation(line: 181, column: 7, scope: !1222)
!1224 = !DILocation(line: 183, column: 16, scope: !1218)
!1225 = !DILocation(line: 183, column: 19, scope: !1218)
!1226 = !DILocation(line: 183, column: 23, scope: !1218)
!1227 = !DILocation(line: 183, column: 28, scope: !1218)
!1228 = !DILocation(line: 183, column: 37, scope: !1218)
!1229 = !{!1202, !1073, i64 0}
!1230 = !DILocation(line: 183, column: 14, scope: !1218)
!1231 = !DILocation(line: 184, column: 3, scope: !1218)
!1232 = !DILocation(line: 184, column: 10, scope: !1178)
!1233 = !DILocation(line: 185, column: 3, scope: !1177)
!1234 = !DILocation(line: 186, column: 22, scope: !1177)
!1235 = !DILocation(line: 186, column: 25, scope: !1177)
!1236 = !DILocation(line: 186, column: 30, scope: !1177)
!1237 = !DILocation(line: 186, column: 5, scope: !1177)
!1238 = !DILocation(line: 187, column: 31, scope: !1177)
!1239 = !DILocation(line: 187, column: 36, scope: !1177)
!1240 = !DILocation(line: 187, column: 20, scope: !1177)
!1241 = !DILocation(line: 187, column: 5, scope: !1177)
!1242 = !DILocation(line: 187, column: 8, scope: !1177)
!1243 = !DILocation(line: 187, column: 12, scope: !1177)
!1244 = !DILocation(line: 187, column: 18, scope: !1177)
!1245 = !DILocation(line: 189, column: 3, scope: !1169)
!1246 = !DILocation(line: 189, column: 6, scope: !1169)
!1247 = !DILocation(line: 189, column: 16, scope: !1169)
!1248 = !DILocation(line: 190, column: 3, scope: !1169)
!1249 = !DILocation(line: 190, column: 6, scope: !1169)
!1250 = !DILocation(line: 190, column: 16, scope: !1169)
!1251 = !DILocation(line: 190, column: 20, scope: !1169)
!1252 = !DILocation(line: 191, column: 18, scope: !1169)
!1253 = !DILocation(line: 191, column: 22, scope: !1169)
!1254 = !DILocation(line: 191, column: 25, scope: !1169)
!1255 = !DILocation(line: 191, column: 29, scope: !1169)
!1256 = !DILocation(line: 191, column: 34, scope: !1169)
!1257 = !DILocation(line: 191, column: 42, scope: !1169)
!1258 = !DILocation(line: 191, column: 3, scope: !1169)
!1259 = !DILocation(line: 192, column: 1, scope: !1169)
!1260 = distinct !DISubprogram(name: "lj_ir_set_", scope: !1261, file: !1261, line: 20, type: !1262, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1264)
!1261 = !DIFile(filename: "./lj_iropt.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/LuaJIT-2.1-20190507/src", checksumkind: CSK_MD5, checksum: "75a62e7adb0165613e8464bfdeca0f6d")
!1262 = !DISubroutineType(types: !1263)
!1263 = !{null, !937, !430, !429, !429}
!1264 = !{!1265, !1266, !1267, !1268}
!1265 = !DILocalVariable(name: "J", arg: 1, scope: !1260, file: !1261, line: 20, type: !937)
!1266 = !DILocalVariable(name: "ot", arg: 2, scope: !1260, file: !1261, line: 20, type: !430)
!1267 = !DILocalVariable(name: "a", arg: 3, scope: !1260, file: !1261, line: 20, type: !429)
!1268 = !DILocalVariable(name: "b", arg: 4, scope: !1260, file: !1261, line: 20, type: !429)
!1269 = !DILocation(line: 20, column: 46, scope: !1260)
!1270 = !{!1092, !1092, i64 0}
!1271 = !DILocation(line: 20, column: 58, scope: !1260)
!1272 = !DILocation(line: 20, column: 69, scope: !1260)
!1273 = !DILocation(line: 20, column: 79, scope: !1260)
!1274 = !DILocation(line: 22, column: 20, scope: !1260)
!1275 = !DILocation(line: 22, column: 3, scope: !1260)
!1276 = !DILocation(line: 22, column: 6, scope: !1260)
!1277 = !DILocation(line: 22, column: 11, scope: !1260)
!1278 = !DILocation(line: 22, column: 15, scope: !1260)
!1279 = !DILocation(line: 22, column: 18, scope: !1260)
!1280 = !{!1069, !1069, i64 0}
!1281 = !DILocation(line: 22, column: 42, scope: !1260)
!1282 = !DILocation(line: 22, column: 24, scope: !1260)
!1283 = !DILocation(line: 22, column: 27, scope: !1260)
!1284 = !DILocation(line: 22, column: 32, scope: !1260)
!1285 = !DILocation(line: 22, column: 36, scope: !1260)
!1286 = !DILocation(line: 22, column: 40, scope: !1260)
!1287 = !DILocation(line: 22, column: 63, scope: !1260)
!1288 = !DILocation(line: 22, column: 45, scope: !1260)
!1289 = !DILocation(line: 22, column: 48, scope: !1260)
!1290 = !DILocation(line: 22, column: 53, scope: !1260)
!1291 = !DILocation(line: 22, column: 57, scope: !1260)
!1292 = !DILocation(line: 22, column: 61, scope: !1260)
!1293 = !DILocation(line: 23, column: 1, scope: !1260)
!1294 = !DISubprogram(name: "lj_ir_emit", scope: !1261, file: !1261, line: 17, type: !1295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!755, !937}
!1297 = distinct !DISubprogram(name: "lj_snap_grow_buf", scope: !1298, file: !1298, line: 22, type: !935, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1299)
!1298 = !DIFile(filename: "./lj_snap.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/LuaJIT-2.1-20190507/src", checksumkind: CSK_MD5, checksum: "bcb8fb82f357ce8e8176a94bf24ccfbb")
!1299 = !{!1300, !1301}
!1300 = !DILocalVariable(name: "J", arg: 1, scope: !1297, file: !1298, line: 22, type: !937)
!1301 = !DILocalVariable(name: "need", arg: 2, scope: !1297, file: !1298, line: 22, type: !417)
!1302 = !DILocation(line: 22, column: 52, scope: !1297)
!1303 = !DILocation(line: 22, column: 61, scope: !1297)
!1304 = !DILocation(line: 24, column: 7, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1297, file: !1298, line: 24, column: 7)
!1306 = !{!1088, !1073, i64 356}
!1307 = !DILocation(line: 24, column: 7, scope: !1297)
!1308 = !DILocation(line: 24, column: 58, scope: !1305)
!1309 = !DILocation(line: 24, column: 61, scope: !1305)
!1310 = !DILocation(line: 24, column: 40, scope: !1305)
!1311 = !DILocation(line: 25, column: 1, scope: !1297)
!1312 = distinct !DISubprogram(name: "snapshot_stack", scope: !1, file: !1, line: 153, type: !1313, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1315)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{null, !937, !423, !417}
!1315 = !{!1316, !1317, !1318, !1319, !1320, !1321}
!1316 = !DILocalVariable(name: "J", arg: 1, scope: !1312, file: !1, line: 153, type: !937)
!1317 = !DILocalVariable(name: "snap", arg: 2, scope: !1312, file: !1, line: 153, type: !423)
!1318 = !DILocalVariable(name: "nsnapmap", arg: 3, scope: !1312, file: !1, line: 153, type: !417)
!1319 = !DILocalVariable(name: "nslots", scope: !1312, file: !1, line: 155, type: !442)
!1320 = !DILocalVariable(name: "nent", scope: !1312, file: !1, line: 156, type: !417)
!1321 = !DILocalVariable(name: "p", scope: !1312, file: !1, line: 157, type: !440)
!1322 = !DILocation(line: 153, column: 39, scope: !1312)
!1323 = !DILocation(line: 153, column: 52, scope: !1312)
!1324 = !DILocation(line: 153, column: 64, scope: !1312)
!1325 = !DILocation(line: 155, column: 3, scope: !1312)
!1326 = !DILocation(line: 155, column: 9, scope: !1312)
!1327 = !DILocation(line: 155, column: 18, scope: !1312)
!1328 = !DILocation(line: 155, column: 21, scope: !1312)
!1329 = !{!1088, !1073, i64 176}
!1330 = !DILocation(line: 155, column: 32, scope: !1312)
!1331 = !DILocation(line: 155, column: 35, scope: !1312)
!1332 = !{!1088, !1073, i64 172}
!1333 = !DILocation(line: 155, column: 30, scope: !1312)
!1334 = !DILocation(line: 156, column: 3, scope: !1312)
!1335 = !DILocation(line: 156, column: 9, scope: !1312)
!1336 = !DILocation(line: 157, column: 3, scope: !1312)
!1337 = !DILocation(line: 157, column: 14, scope: !1312)
!1338 = !DILocation(line: 159, column: 20, scope: !1312)
!1339 = !DILocation(line: 159, column: 23, scope: !1312)
!1340 = !DILocation(line: 159, column: 34, scope: !1312)
!1341 = !DILocation(line: 159, column: 32, scope: !1312)
!1342 = !DILocation(line: 159, column: 41, scope: !1312)
!1343 = !DILocation(line: 159, column: 3, scope: !1312)
!1344 = !DILocation(line: 160, column: 8, scope: !1312)
!1345 = !DILocation(line: 160, column: 11, scope: !1312)
!1346 = !DILocation(line: 160, column: 15, scope: !1312)
!1347 = !DILocation(line: 160, column: 23, scope: !1312)
!1348 = !DILocation(line: 160, column: 5, scope: !1312)
!1349 = !DILocation(line: 161, column: 25, scope: !1312)
!1350 = !DILocation(line: 161, column: 28, scope: !1312)
!1351 = !DILocation(line: 161, column: 31, scope: !1312)
!1352 = !DILocation(line: 161, column: 10, scope: !1312)
!1353 = !DILocation(line: 161, column: 8, scope: !1312)
!1354 = !DILocation(line: 162, column: 25, scope: !1312)
!1355 = !DILocation(line: 162, column: 16, scope: !1312)
!1356 = !DILocation(line: 162, column: 3, scope: !1312)
!1357 = !DILocation(line: 162, column: 9, scope: !1312)
!1358 = !DILocation(line: 162, column: 14, scope: !1312)
!1359 = !{!1202, !1069, i64 8}
!1360 = !DILocation(line: 163, column: 31, scope: !1312)
!1361 = !DILocation(line: 163, column: 34, scope: !1312)
!1362 = !DILocation(line: 163, column: 38, scope: !1312)
!1363 = !DILocation(line: 163, column: 36, scope: !1312)
!1364 = !DILocation(line: 163, column: 45, scope: !1312)
!1365 = !DILocation(line: 163, column: 51, scope: !1312)
!1366 = !DILocation(line: 163, column: 11, scope: !1312)
!1367 = !DILocation(line: 163, column: 8, scope: !1312)
!1368 = !DILocation(line: 164, column: 28, scope: !1312)
!1369 = !DILocation(line: 164, column: 3, scope: !1312)
!1370 = !DILocation(line: 164, column: 9, scope: !1312)
!1371 = !DILocation(line: 164, column: 16, scope: !1312)
!1372 = !DILocation(line: 165, column: 23, scope: !1312)
!1373 = !DILocation(line: 165, column: 26, scope: !1312)
!1374 = !DILocation(line: 165, column: 30, scope: !1312)
!1375 = !DILocation(line: 165, column: 15, scope: !1312)
!1376 = !DILocation(line: 165, column: 3, scope: !1312)
!1377 = !DILocation(line: 165, column: 9, scope: !1312)
!1378 = !DILocation(line: 165, column: 13, scope: !1312)
!1379 = !DILocation(line: 166, column: 27, scope: !1312)
!1380 = !DILocation(line: 166, column: 18, scope: !1312)
!1381 = !DILocation(line: 166, column: 3, scope: !1312)
!1382 = !DILocation(line: 166, column: 9, scope: !1312)
!1383 = !DILocation(line: 166, column: 16, scope: !1312)
!1384 = !{!1202, !1069, i64 6}
!1385 = !DILocation(line: 167, column: 3, scope: !1312)
!1386 = !DILocation(line: 167, column: 9, scope: !1312)
!1387 = !DILocation(line: 167, column: 15, scope: !1312)
!1388 = !{!1202, !1069, i64 9}
!1389 = !DILocation(line: 168, column: 32, scope: !1312)
!1390 = !DILocation(line: 168, column: 43, scope: !1312)
!1391 = !DILocation(line: 168, column: 41, scope: !1312)
!1392 = !DILocation(line: 168, column: 3, scope: !1312)
!1393 = !DILocation(line: 168, column: 6, scope: !1312)
!1394 = !DILocation(line: 168, column: 10, scope: !1312)
!1395 = !DILocation(line: 168, column: 19, scope: !1312)
!1396 = !DILocation(line: 169, column: 1, scope: !1312)
!1397 = distinct !DISubprogram(name: "lj_snap_purge", scope: !1, file: !1, line: 298, type: !1170, scopeLine: 299, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1398)
!1398 = !{!1399, !1400, !1402, !1403}
!1399 = !DILocalVariable(name: "J", arg: 1, scope: !1397, file: !1, line: 298, type: !937)
!1400 = !DILocalVariable(name: "udf", scope: !1397, file: !1, line: 300, type: !1401)
!1401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !434, size: 2056, elements: !1006)
!1402 = !DILocalVariable(name: "maxslot", scope: !1397, file: !1, line: 301, type: !442)
!1403 = !DILocalVariable(name: "s", scope: !1397, file: !1, line: 302, type: !442)
!1404 = !DILocation(line: 298, column: 31, scope: !1397)
!1405 = !DILocation(line: 300, column: 3, scope: !1397)
!1406 = !DILocation(line: 300, column: 11, scope: !1397)
!1407 = !DILocation(line: 301, column: 3, scope: !1397)
!1408 = !DILocation(line: 301, column: 9, scope: !1397)
!1409 = !DILocation(line: 301, column: 19, scope: !1397)
!1410 = !DILocation(line: 301, column: 22, scope: !1397)
!1411 = !DILocation(line: 302, column: 3, scope: !1397)
!1412 = !DILocation(line: 302, column: 9, scope: !1397)
!1413 = !DILocation(line: 302, column: 25, scope: !1397)
!1414 = !DILocation(line: 302, column: 28, scope: !1397)
!1415 = !DILocation(line: 302, column: 33, scope: !1397)
!1416 = !DILocation(line: 302, column: 36, scope: !1397)
!1417 = !{!1088, !1068, i64 136}
!1418 = !DILocation(line: 302, column: 40, scope: !1397)
!1419 = !DILocation(line: 302, column: 13, scope: !1397)
!1420 = !DILocation(line: 303, column: 3, scope: !1397)
!1421 = !DILocation(line: 303, column: 10, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !1, line: 303, column: 3)
!1423 = distinct !DILexicalBlock(scope: !1397, file: !1, line: 303, column: 3)
!1424 = !DILocation(line: 303, column: 14, scope: !1422)
!1425 = !DILocation(line: 303, column: 12, scope: !1422)
!1426 = !DILocation(line: 303, column: 3, scope: !1423)
!1427 = !DILocation(line: 304, column: 13, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1422, file: !1, line: 304, column: 9)
!1429 = !DILocation(line: 304, column: 9, scope: !1428)
!1430 = !DILocation(line: 304, column: 16, scope: !1428)
!1431 = !DILocation(line: 304, column: 9, scope: !1422)
!1432 = !DILocation(line: 305, column: 7, scope: !1428)
!1433 = !DILocation(line: 305, column: 10, scope: !1428)
!1434 = !{!1088, !1068, i64 160}
!1435 = !DILocation(line: 305, column: 15, scope: !1428)
!1436 = !DILocation(line: 305, column: 18, scope: !1428)
!1437 = !DILocation(line: 304, column: 19, scope: !1428)
!1438 = !DILocation(line: 303, column: 24, scope: !1422)
!1439 = !DILocation(line: 303, column: 3, scope: !1422)
!1440 = distinct !{!1440, !1426, !1441, !1442}
!1441 = !DILocation(line: 305, column: 20, scope: !1423)
!1442 = !{!"llvm.loop.mustprogress"}
!1443 = !DILocation(line: 306, column: 1, scope: !1397)
!1444 = distinct !DISubprogram(name: "snap_usedef", scope: !1, file: !1, line: 199, type: !1445, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1447)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!442, !937, !758, !751, !442}
!1447 = !{!1448, !1449, !1450, !1451, !1452, !1453, !1454, !1458, !1459, !1461, !1463, !1467}
!1448 = !DILocalVariable(name: "J", arg: 1, scope: !1444, file: !1, line: 199, type: !937)
!1449 = !DILocalVariable(name: "udf", arg: 2, scope: !1444, file: !1, line: 199, type: !758)
!1450 = !DILocalVariable(name: "pc", arg: 3, scope: !1444, file: !1, line: 200, type: !751)
!1451 = !DILocalVariable(name: "maxslot", arg: 4, scope: !1444, file: !1, line: 200, type: !442)
!1452 = !DILocalVariable(name: "s", scope: !1444, file: !1, line: 202, type: !442)
!1453 = !DILocalVariable(name: "o", scope: !1444, file: !1, line: 203, type: !568)
!1454 = !DILocalVariable(name: "ins", scope: !1455, file: !1, line: 227, type: !550)
!1455 = distinct !DILexicalBlock(scope: !1456, file: !1, line: 226, column: 12)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !1, line: 226, column: 3)
!1457 = distinct !DILexicalBlock(scope: !1444, file: !1, line: 226, column: 3)
!1458 = !DILocalVariable(name: "op", scope: !1455, file: !1, line: 228, type: !748)
!1459 = !DILabel(scope: !1460, name: "handle_jump", file: !1, line: 241)
!1460 = distinct !DILexicalBlock(scope: !1455, file: !1, line: 233, column: 27)
!1461 = !DILocalVariable(name: "minslot", scope: !1462, file: !1, line: 242, type: !442)
!1462 = distinct !DILexicalBlock(scope: !1460, file: !1, line: 241, column: 18)
!1463 = !DILocalVariable(name: "top", scope: !1464, file: !1, line: 253, type: !442)
!1464 = distinct !DILexicalBlock(scope: !1465, file: !1, line: 252, column: 32)
!1465 = distinct !DILexicalBlock(scope: !1466, file: !1, line: 252, column: 18)
!1466 = distinct !DILexicalBlock(scope: !1460, file: !1, line: 250, column: 11)
!1467 = !DILocalVariable(name: "top", scope: !1468, file: !1, line: 270, type: !442)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !1, line: 269, column: 44)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !1, line: 269, column: 11)
!1470 = distinct !DILexicalBlock(scope: !1455, file: !1, line: 263, column: 27)
!1471 = !DILocation(line: 199, column: 37, scope: !1444)
!1472 = !DILocation(line: 199, column: 49, scope: !1444)
!1473 = !DILocation(line: 200, column: 18, scope: !1444)
!1474 = !DILocation(line: 200, column: 28, scope: !1444)
!1475 = !DILocation(line: 202, column: 3, scope: !1444)
!1476 = !DILocation(line: 202, column: 9, scope: !1444)
!1477 = !DILocation(line: 203, column: 3, scope: !1444)
!1478 = !DILocation(line: 203, column: 10, scope: !1444)
!1479 = !DILocation(line: 205, column: 7, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1444, file: !1, line: 205, column: 7)
!1481 = !DILocation(line: 205, column: 15, scope: !1480)
!1482 = !DILocation(line: 205, column: 7, scope: !1444)
!1483 = !DILocation(line: 205, column: 21, scope: !1480)
!1484 = !DILocation(line: 210, column: 10, scope: !1444)
!1485 = !DILocation(line: 210, column: 18, scope: !1444)
!1486 = !DILocation(line: 210, column: 3, scope: !1444)
!1487 = !DILocation(line: 214, column: 7, scope: !1444)
!1488 = !{!1489, !1091, i64 64}
!1489 = !{!"lua_State", !1090, i64 0, !1069, i64 8, !1069, i64 9, !1069, i64 10, !1069, i64 11, !1093, i64 16, !1090, i64 24, !1068, i64 32, !1068, i64 40, !1093, i64 48, !1093, i64 56, !1090, i64 64, !1090, i64 72, !1068, i64 80, !1073, i64 88, !1068, i64 96}
!1490 = !DILocation(line: 214, column: 5, scope: !1444)
!1491 = !DILocation(line: 215, column: 3, scope: !1444)
!1492 = !DILocation(line: 215, column: 10, scope: !1444)
!1493 = !DILocation(line: 216, column: 9, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !1, line: 216, column: 9)
!1495 = distinct !DILexicalBlock(scope: !1444, file: !1, line: 215, column: 13)
!1496 = !DILocation(line: 216, column: 28, scope: !1494)
!1497 = !DILocation(line: 216, column: 31, scope: !1494)
!1498 = !DILocation(line: 216, column: 34, scope: !1494)
!1499 = !{!1489, !1068, i64 32}
!1500 = !DILocation(line: 216, column: 26, scope: !1494)
!1501 = !DILocation(line: 216, column: 9, scope: !1495)
!1502 = !DILocation(line: 216, column: 40, scope: !1494)
!1503 = !DILocation(line: 217, column: 5, scope: !1495)
!1504 = !DILocation(line: 217, column: 9, scope: !1495)
!1505 = !DILocation(line: 217, column: 28, scope: !1495)
!1506 = !DILocation(line: 217, column: 31, scope: !1495)
!1507 = !DILocation(line: 217, column: 34, scope: !1495)
!1508 = !DILocation(line: 217, column: 26, scope: !1495)
!1509 = !DILocation(line: 217, column: 40, scope: !1495)
!1510 = !DILocation(line: 218, column: 9, scope: !1495)
!1511 = !DILocation(line: 218, column: 7, scope: !1495)
!1512 = distinct !{!1512, !1491, !1513, !1442}
!1513 = !DILocation(line: 219, column: 3, scope: !1444)
!1514 = !DILocation(line: 226, column: 3, scope: !1444)
!1515 = !DILocation(line: 227, column: 5, scope: !1455)
!1516 = !DILocation(line: 227, column: 11, scope: !1455)
!1517 = !DILocation(line: 227, column: 20, scope: !1455)
!1518 = !DILocation(line: 227, column: 17, scope: !1455)
!1519 = !DILocation(line: 228, column: 5, scope: !1455)
!1520 = !DILocation(line: 228, column: 10, scope: !1455)
!1521 = !DILocation(line: 228, column: 15, scope: !1455)
!1522 = !DILocation(line: 229, column: 13, scope: !1455)
!1523 = !DILocation(line: 229, column: 5, scope: !1455)
!1524 = !DILocation(line: 230, column: 18, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1455, file: !1, line: 229, column: 27)
!1526 = !DILocation(line: 230, column: 39, scope: !1525)
!1527 = !DILocation(line: 231, column: 14, scope: !1525)
!1528 = !DILocation(line: 233, column: 13, scope: !1455)
!1529 = !DILocation(line: 233, column: 5, scope: !1455)
!1530 = !DILocation(line: 234, column: 18, scope: !1460)
!1531 = !DILocation(line: 234, column: 39, scope: !1460)
!1532 = !DILocation(line: 237, column: 16, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1460, file: !1, line: 237, column: 7)
!1534 = !DILocation(line: 237, column: 14, scope: !1533)
!1535 = !DILocation(line: 237, column: 12, scope: !1533)
!1536 = !DILocation(line: 237, column: 27, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1533, file: !1, line: 237, column: 7)
!1538 = !DILocation(line: 237, column: 32, scope: !1537)
!1539 = !DILocation(line: 237, column: 29, scope: !1537)
!1540 = !DILocation(line: 237, column: 7, scope: !1533)
!1541 = !DILocation(line: 237, column: 48, scope: !1537)
!1542 = !DILocation(line: 237, column: 44, scope: !1537)
!1543 = !DILocation(line: 237, column: 7, scope: !1537)
!1544 = distinct !{!1544, !1540, !1545, !1442}
!1545 = !DILocation(line: 237, column: 48, scope: !1533)
!1546 = !DILocation(line: 238, column: 7, scope: !1460)
!1547 = !DILocation(line: 238, column: 14, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1549, file: !1, line: 238, column: 7)
!1549 = distinct !DILexicalBlock(scope: !1460, file: !1, line: 238, column: 7)
!1550 = !DILocation(line: 238, column: 18, scope: !1548)
!1551 = !DILocation(line: 238, column: 16, scope: !1548)
!1552 = !DILocation(line: 238, column: 7, scope: !1549)
!1553 = !DILocation(line: 238, column: 32, scope: !1548)
!1554 = !DILocation(line: 238, column: 28, scope: !1548)
!1555 = !DILocation(line: 238, column: 7, scope: !1548)
!1556 = distinct !{!1556, !1552, !1557, !1442}
!1557 = !DILocation(line: 238, column: 32, scope: !1549)
!1558 = !DILocation(line: 239, column: 7, scope: !1460)
!1559 = !DILocation(line: 241, column: 5, scope: !1460)
!1560 = !DILocation(line: 242, column: 7, scope: !1462)
!1561 = !DILocation(line: 242, column: 13, scope: !1462)
!1562 = !DILocation(line: 242, column: 23, scope: !1462)
!1563 = !DILocation(line: 243, column: 11, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1462, file: !1, line: 243, column: 11)
!1565 = !DILocation(line: 243, column: 14, scope: !1564)
!1566 = !DILocation(line: 243, column: 25, scope: !1564)
!1567 = !DILocation(line: 243, column: 28, scope: !1564)
!1568 = !DILocation(line: 243, column: 31, scope: !1564)
!1569 = !DILocation(line: 243, column: 11, scope: !1462)
!1570 = !DILocation(line: 243, column: 52, scope: !1564)
!1571 = !DILocation(line: 243, column: 44, scope: !1564)
!1572 = !DILocation(line: 244, column: 16, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1564, file: !1, line: 244, column: 16)
!1574 = !DILocation(line: 244, column: 19, scope: !1573)
!1575 = !DILocation(line: 244, column: 31, scope: !1573)
!1576 = !DILocation(line: 244, column: 34, scope: !1573)
!1577 = !DILocation(line: 244, column: 37, scope: !1573)
!1578 = !DILocation(line: 244, column: 16, scope: !1564)
!1579 = !DILocation(line: 244, column: 62, scope: !1573)
!1580 = !DILocation(line: 244, column: 74, scope: !1573)
!1581 = !DILocation(line: 244, column: 59, scope: !1573)
!1582 = !DILocation(line: 244, column: 51, scope: !1573)
!1583 = !DILocation(line: 245, column: 16, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1573, file: !1, line: 245, column: 16)
!1585 = !DILocation(line: 245, column: 19, scope: !1584)
!1586 = !DILocation(line: 245, column: 16, scope: !1573)
!1587 = !DILocation(line: 245, column: 39, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1584, file: !1, line: 245, column: 31)
!1589 = !DILocation(line: 245, column: 36, scope: !1588)
!1590 = !DILocation(line: 245, column: 50, scope: !1588)
!1591 = !DILocation(line: 246, column: 16, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1462, file: !1, line: 246, column: 7)
!1593 = !DILocation(line: 246, column: 14, scope: !1592)
!1594 = !DILocation(line: 246, column: 12, scope: !1592)
!1595 = !DILocation(line: 246, column: 25, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1592, file: !1, line: 246, column: 7)
!1597 = !DILocation(line: 246, column: 29, scope: !1596)
!1598 = !DILocation(line: 246, column: 27, scope: !1596)
!1599 = !DILocation(line: 246, column: 7, scope: !1592)
!1600 = !DILocation(line: 246, column: 43, scope: !1596)
!1601 = !DILocation(line: 246, column: 39, scope: !1596)
!1602 = !DILocation(line: 246, column: 7, scope: !1596)
!1603 = distinct !{!1603, !1599, !1604, !1442}
!1604 = !DILocation(line: 246, column: 43, scope: !1592)
!1605 = !DILocation(line: 247, column: 14, scope: !1462)
!1606 = !DILocation(line: 247, column: 24, scope: !1462)
!1607 = !DILocation(line: 247, column: 22, scope: !1462)
!1608 = !DILocation(line: 247, column: 34, scope: !1462)
!1609 = !DILocation(line: 247, column: 44, scope: !1462)
!1610 = !DILocation(line: 247, column: 7, scope: !1462)
!1611 = !DILocation(line: 248, column: 7, scope: !1460)
!1612 = !DILocation(line: 250, column: 11, scope: !1466)
!1613 = !DILocation(line: 250, column: 14, scope: !1466)
!1614 = !DILocation(line: 250, column: 26, scope: !1466)
!1615 = !DILocation(line: 250, column: 29, scope: !1466)
!1616 = !DILocation(line: 250, column: 32, scope: !1466)
!1617 = !DILocation(line: 250, column: 45, scope: !1466)
!1618 = !DILocation(line: 250, column: 48, scope: !1466)
!1619 = !DILocation(line: 250, column: 51, scope: !1466)
!1620 = !DILocation(line: 250, column: 11, scope: !1460)
!1621 = !DILocation(line: 251, column: 2, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1466, file: !1, line: 250, column: 64)
!1623 = !DILocation(line: 252, column: 27, scope: !1465)
!1624 = !DILocation(line: 252, column: 18, scope: !1465)
!1625 = !DILocation(line: 252, column: 18, scope: !1466)
!1626 = !DILocation(line: 253, column: 2, scope: !1464)
!1627 = !DILocation(line: 253, column: 8, scope: !1464)
!1628 = !DILocation(line: 253, column: 14, scope: !1464)
!1629 = !DILocation(line: 253, column: 17, scope: !1464)
!1630 = !DILocation(line: 253, column: 30, scope: !1464)
!1631 = !DILocation(line: 253, column: 41, scope: !1464)
!1632 = !DILocation(line: 253, column: 53, scope: !1464)
!1633 = !DILocation(line: 253, column: 51, scope: !1464)
!1634 = !DILocation(line: 253, column: 62, scope: !1464)
!1635 = !DILocation(line: 254, column: 9, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1464, file: !1, line: 254, column: 2)
!1637 = !DILocation(line: 254, column: 7, scope: !1636)
!1638 = !DILocation(line: 254, column: 14, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1636, file: !1, line: 254, column: 2)
!1640 = !DILocation(line: 254, column: 18, scope: !1639)
!1641 = !DILocation(line: 254, column: 16, scope: !1639)
!1642 = !DILocation(line: 254, column: 2, scope: !1636)
!1643 = !DILocation(line: 254, column: 34, scope: !1639)
!1644 = !DILocation(line: 254, column: 30, scope: !1639)
!1645 = !DILocation(line: 254, column: 2, scope: !1639)
!1646 = distinct !{!1646, !1642, !1647, !1442}
!1647 = !DILocation(line: 254, column: 34, scope: !1636)
!1648 = !DILocation(line: 255, column: 2, scope: !1464)
!1649 = !DILocation(line: 255, column: 9, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !1, line: 255, column: 2)
!1651 = distinct !DILexicalBlock(scope: !1464, file: !1, line: 255, column: 2)
!1652 = !DILocation(line: 255, column: 13, scope: !1650)
!1653 = !DILocation(line: 255, column: 11, scope: !1650)
!1654 = !DILocation(line: 255, column: 2, scope: !1651)
!1655 = !DILocation(line: 255, column: 23, scope: !1650)
!1656 = !DILocation(line: 255, column: 19, scope: !1650)
!1657 = !DILocation(line: 255, column: 2, scope: !1650)
!1658 = distinct !{!1658, !1654, !1659, !1442}
!1659 = !DILocation(line: 255, column: 23, scope: !1651)
!1660 = !DILocation(line: 256, column: 2, scope: !1464)
!1661 = !DILocation(line: 256, column: 9, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !1, line: 256, column: 2)
!1663 = distinct !DILexicalBlock(scope: !1464, file: !1, line: 256, column: 2)
!1664 = !DILocation(line: 256, column: 13, scope: !1662)
!1665 = !DILocation(line: 256, column: 11, scope: !1662)
!1666 = !DILocation(line: 256, column: 2, scope: !1663)
!1667 = !DILocation(line: 256, column: 27, scope: !1662)
!1668 = !DILocation(line: 256, column: 23, scope: !1662)
!1669 = !DILocation(line: 256, column: 2, scope: !1662)
!1670 = distinct !{!1670, !1666, !1671, !1442}
!1671 = !DILocation(line: 256, column: 27, scope: !1663)
!1672 = !DILocation(line: 257, column: 2, scope: !1464)
!1673 = !DILocation(line: 258, column: 7, scope: !1465)
!1674 = !DILocation(line: 259, column: 7, scope: !1460)
!1675 = !DILocation(line: 260, column: 26, scope: !1460)
!1676 = !DILocation(line: 260, column: 19, scope: !1460)
!1677 = !DILocation(line: 261, column: 14, scope: !1460)
!1678 = !DILocation(line: 263, column: 13, scope: !1455)
!1679 = !DILocation(line: 263, column: 5, scope: !1455)
!1680 = !DILocation(line: 264, column: 18, scope: !1470)
!1681 = !DILocation(line: 264, column: 39, scope: !1470)
!1682 = !DILocation(line: 266, column: 14, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1470, file: !1, line: 266, column: 12)
!1684 = !DILocation(line: 266, column: 17, scope: !1683)
!1685 = !DILocation(line: 266, column: 28, scope: !1683)
!1686 = !DILocation(line: 266, column: 31, scope: !1683)
!1687 = !DILocation(line: 266, column: 34, scope: !1683)
!1688 = !DILocation(line: 266, column: 12, scope: !1470)
!1689 = !DILocation(line: 266, column: 47, scope: !1683)
!1690 = !DILocation(line: 267, column: 8, scope: !1470)
!1691 = !DILocation(line: 269, column: 11, scope: !1469)
!1692 = !DILocation(line: 269, column: 14, scope: !1469)
!1693 = !DILocation(line: 269, column: 26, scope: !1469)
!1694 = !DILocation(line: 269, column: 29, scope: !1469)
!1695 = !DILocation(line: 269, column: 32, scope: !1469)
!1696 = !DILocation(line: 269, column: 11, scope: !1470)
!1697 = !DILocation(line: 270, column: 2, scope: !1468)
!1698 = !DILocation(line: 270, column: 8, scope: !1468)
!1699 = !DILocation(line: 270, column: 15, scope: !1468)
!1700 = !DILocation(line: 270, column: 18, scope: !1468)
!1701 = !DILocation(line: 270, column: 30, scope: !1468)
!1702 = !DILocation(line: 270, column: 33, scope: !1468)
!1703 = !DILocation(line: 270, column: 36, scope: !1468)
!1704 = !DILocation(line: 270, column: 49, scope: !1468)
!1705 = !DILocation(line: 270, column: 52, scope: !1468)
!1706 = !DILocation(line: 270, column: 62, scope: !1468)
!1707 = !DILocation(line: 270, column: 14, scope: !1468)
!1708 = !DILocation(line: 271, column: 7, scope: !1468)
!1709 = !DILocation(line: 271, column: 18, scope: !1468)
!1710 = !DILocation(line: 271, column: 30, scope: !1468)
!1711 = !DILocation(line: 271, column: 28, scope: !1468)
!1712 = !DILocation(line: 271, column: 39, scope: !1468)
!1713 = !DILocation(line: 272, column: 14, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1468, file: !1, line: 272, column: 6)
!1715 = !DILocation(line: 273, column: 6, scope: !1468)
!1716 = !DILocation(line: 273, column: 20, scope: !1468)
!1717 = !DILocation(line: 273, column: 23, scope: !1468)
!1718 = !DILocation(line: 273, column: 35, scope: !1468)
!1719 = !DILocation(line: 273, column: 38, scope: !1468)
!1720 = !DILocation(line: 273, column: 41, scope: !1468)
!1721 = !DILocation(line: 273, column: 19, scope: !1468)
!1722 = !DILocation(line: 273, column: 16, scope: !1468)
!1723 = !DILocation(line: 273, column: 4, scope: !1468)
!1724 = !DILocation(line: 274, column: 2, scope: !1468)
!1725 = !DILocation(line: 274, column: 9, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1727, file: !1, line: 274, column: 2)
!1727 = distinct !DILexicalBlock(scope: !1468, file: !1, line: 274, column: 2)
!1728 = !DILocation(line: 274, column: 13, scope: !1726)
!1729 = !DILocation(line: 274, column: 11, scope: !1726)
!1730 = !DILocation(line: 274, column: 2, scope: !1727)
!1731 = !DILocation(line: 274, column: 23, scope: !1726)
!1732 = !DILocation(line: 274, column: 19, scope: !1726)
!1733 = !DILocation(line: 274, column: 2, scope: !1726)
!1734 = distinct !{!1734, !1730, !1735, !1442}
!1735 = !DILocation(line: 274, column: 23, scope: !1727)
!1736 = !DILocation(line: 275, column: 2, scope: !1468)
!1737 = !DILocation(line: 275, column: 9, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !1, line: 275, column: 2)
!1739 = distinct !DILexicalBlock(scope: !1468, file: !1, line: 275, column: 2)
!1740 = !DILocation(line: 275, column: 13, scope: !1738)
!1741 = !DILocation(line: 275, column: 11, scope: !1738)
!1742 = !DILocation(line: 275, column: 2, scope: !1739)
!1743 = !DILocation(line: 275, column: 27, scope: !1738)
!1744 = !DILocation(line: 275, column: 23, scope: !1738)
!1745 = !DILocation(line: 275, column: 2, scope: !1738)
!1746 = distinct !{!1746, !1742, !1747, !1442}
!1747 = !DILocation(line: 275, column: 27, scope: !1739)
!1748 = !DILocation(line: 276, column: 6, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1468, file: !1, line: 276, column: 6)
!1750 = !DILocation(line: 276, column: 9, scope: !1749)
!1751 = !DILocation(line: 276, column: 21, scope: !1749)
!1752 = !DILocation(line: 276, column: 24, scope: !1749)
!1753 = !DILocation(line: 276, column: 27, scope: !1749)
!1754 = !DILocation(line: 276, column: 6, scope: !1468)
!1755 = !DILocation(line: 277, column: 11, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !1, line: 277, column: 4)
!1757 = distinct !DILexicalBlock(scope: !1749, file: !1, line: 276, column: 41)
!1758 = !DILocation(line: 277, column: 9, scope: !1756)
!1759 = !DILocation(line: 277, column: 16, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1756, file: !1, line: 277, column: 4)
!1761 = !DILocation(line: 277, column: 20, scope: !1760)
!1762 = !DILocation(line: 277, column: 18, scope: !1760)
!1763 = !DILocation(line: 277, column: 4, scope: !1756)
!1764 = !DILocation(line: 277, column: 36, scope: !1760)
!1765 = !DILocation(line: 277, column: 32, scope: !1760)
!1766 = !DILocation(line: 277, column: 4, scope: !1760)
!1767 = distinct !{!1767, !1763, !1768, !1442}
!1768 = !DILocation(line: 277, column: 36, scope: !1756)
!1769 = !DILocation(line: 278, column: 4, scope: !1757)
!1770 = !DILocation(line: 280, column: 7, scope: !1469)
!1771 = !DILocation(line: 280, column: 7, scope: !1468)
!1772 = !DILocation(line: 280, column: 18, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1469, file: !1, line: 280, column: 18)
!1774 = !DILocation(line: 280, column: 21, scope: !1773)
!1775 = !DILocation(line: 280, column: 18, scope: !1469)
!1776 = !DILocation(line: 281, column: 11, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !1, line: 281, column: 2)
!1778 = distinct !DILexicalBlock(scope: !1773, file: !1, line: 280, column: 33)
!1779 = !DILocation(line: 281, column: 9, scope: !1777)
!1780 = !DILocation(line: 281, column: 7, scope: !1777)
!1781 = !DILocation(line: 281, column: 22, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1777, file: !1, line: 281, column: 2)
!1783 = !DILocation(line: 281, column: 27, scope: !1782)
!1784 = !DILocation(line: 281, column: 24, scope: !1782)
!1785 = !DILocation(line: 281, column: 2, scope: !1777)
!1786 = !DILocation(line: 281, column: 43, scope: !1782)
!1787 = !DILocation(line: 281, column: 39, scope: !1782)
!1788 = !DILocation(line: 281, column: 2, scope: !1782)
!1789 = distinct !{!1789, !1785, !1790, !1442}
!1790 = !DILocation(line: 281, column: 43, scope: !1777)
!1791 = !DILocation(line: 282, column: 7, scope: !1778)
!1792 = !DILocation(line: 282, column: 18, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1773, file: !1, line: 282, column: 18)
!1794 = !DILocation(line: 282, column: 21, scope: !1793)
!1795 = !DILocation(line: 282, column: 18, scope: !1773)
!1796 = !DILocation(line: 283, column: 11, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !1, line: 283, column: 2)
!1798 = distinct !DILexicalBlock(scope: !1793, file: !1, line: 282, column: 34)
!1799 = !DILocation(line: 283, column: 20, scope: !1797)
!1800 = !DILocation(line: 283, column: 9, scope: !1797)
!1801 = !DILocation(line: 283, column: 7, scope: !1797)
!1802 = !DILocation(line: 283, column: 24, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1797, file: !1, line: 283, column: 2)
!1804 = !DILocation(line: 283, column: 28, scope: !1803)
!1805 = !DILocation(line: 283, column: 26, scope: !1803)
!1806 = !DILocation(line: 283, column: 2, scope: !1797)
!1807 = !DILocation(line: 283, column: 42, scope: !1803)
!1808 = !DILocation(line: 283, column: 38, scope: !1803)
!1809 = !DILocation(line: 283, column: 2, scope: !1803)
!1810 = distinct !{!1810, !1806, !1811, !1442}
!1811 = !DILocation(line: 283, column: 42, scope: !1797)
!1812 = !DILocation(line: 284, column: 7, scope: !1798)
!1813 = !DILocation(line: 285, column: 7, scope: !1470)
!1814 = !DILocation(line: 286, column: 14, scope: !1470)
!1815 = !DILocation(line: 289, column: 3, scope: !1456)
!1816 = !DILocation(line: 226, column: 3, scope: !1456)
!1817 = distinct !{!1817, !1818, !1819}
!1818 = !DILocation(line: 226, column: 3, scope: !1457)
!1819 = !DILocation(line: 289, column: 3, scope: !1457)
!1820 = !DILocation(line: 295, column: 1, scope: !1444)
!1821 = distinct !DISubprogram(name: "lj_snap_shrink", scope: !1, file: !1, line: 309, type: !1170, scopeLine: 310, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1822)
!1822 = !{!1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834}
!1823 = !DILocalVariable(name: "J", arg: 1, scope: !1821, file: !1, line: 309, type: !937)
!1824 = !DILocalVariable(name: "snap", scope: !1821, file: !1, line: 311, type: !423)
!1825 = !DILocalVariable(name: "map", scope: !1821, file: !1, line: 312, type: !440)
!1826 = !DILocalVariable(name: "n", scope: !1821, file: !1, line: 313, type: !417)
!1827 = !DILocalVariable(name: "m", scope: !1821, file: !1, line: 313, type: !417)
!1828 = !DILocalVariable(name: "nlim", scope: !1821, file: !1, line: 313, type: !417)
!1829 = !DILocalVariable(name: "nent", scope: !1821, file: !1, line: 313, type: !417)
!1830 = !DILocalVariable(name: "udf", scope: !1821, file: !1, line: 314, type: !1401)
!1831 = !DILocalVariable(name: "maxslot", scope: !1821, file: !1, line: 315, type: !442)
!1832 = !DILocalVariable(name: "baseslot", scope: !1821, file: !1, line: 316, type: !442)
!1833 = !DILocalVariable(name: "minslot", scope: !1821, file: !1, line: 317, type: !442)
!1834 = !DILocalVariable(name: "s", scope: !1835, file: !1, line: 322, type: !442)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !1, line: 321, column: 34)
!1836 = distinct !DILexicalBlock(scope: !1837, file: !1, line: 321, column: 3)
!1837 = distinct !DILexicalBlock(scope: !1821, file: !1, line: 321, column: 3)
!1838 = !DILocation(line: 309, column: 32, scope: !1821)
!1839 = !DILocation(line: 311, column: 3, scope: !1821)
!1840 = !DILocation(line: 311, column: 13, scope: !1821)
!1841 = !DILocation(line: 311, column: 21, scope: !1821)
!1842 = !DILocation(line: 311, column: 24, scope: !1821)
!1843 = !DILocation(line: 311, column: 28, scope: !1821)
!1844 = !DILocation(line: 311, column: 33, scope: !1821)
!1845 = !DILocation(line: 311, column: 36, scope: !1821)
!1846 = !DILocation(line: 311, column: 40, scope: !1821)
!1847 = !DILocation(line: 311, column: 45, scope: !1821)
!1848 = !DILocation(line: 312, column: 3, scope: !1821)
!1849 = !DILocation(line: 312, column: 14, scope: !1821)
!1850 = !DILocation(line: 312, column: 21, scope: !1821)
!1851 = !DILocation(line: 312, column: 24, scope: !1821)
!1852 = !DILocation(line: 312, column: 28, scope: !1821)
!1853 = !DILocation(line: 312, column: 36, scope: !1821)
!1854 = !DILocation(line: 312, column: 42, scope: !1821)
!1855 = !DILocation(line: 313, column: 3, scope: !1821)
!1856 = !DILocation(line: 313, column: 9, scope: !1821)
!1857 = !DILocation(line: 313, column: 12, scope: !1821)
!1858 = !DILocation(line: 313, column: 15, scope: !1821)
!1859 = !DILocation(line: 313, column: 21, scope: !1821)
!1860 = !DILocation(line: 313, column: 28, scope: !1821)
!1861 = !DILocation(line: 313, column: 34, scope: !1821)
!1862 = !DILocation(line: 314, column: 3, scope: !1821)
!1863 = !DILocation(line: 314, column: 11, scope: !1821)
!1864 = !DILocation(line: 315, column: 3, scope: !1821)
!1865 = !DILocation(line: 315, column: 9, scope: !1821)
!1866 = !DILocation(line: 315, column: 19, scope: !1821)
!1867 = !DILocation(line: 315, column: 22, scope: !1821)
!1868 = !DILocation(line: 316, column: 3, scope: !1821)
!1869 = !DILocation(line: 316, column: 9, scope: !1821)
!1870 = !DILocation(line: 316, column: 20, scope: !1821)
!1871 = !DILocation(line: 316, column: 23, scope: !1821)
!1872 = !DILocation(line: 317, column: 3, scope: !1821)
!1873 = !DILocation(line: 317, column: 9, scope: !1821)
!1874 = !DILocation(line: 317, column: 31, scope: !1821)
!1875 = !DILocation(line: 317, column: 34, scope: !1821)
!1876 = !DILocation(line: 317, column: 48, scope: !1821)
!1877 = !DILocation(line: 317, column: 52, scope: !1821)
!1878 = !DILocation(line: 317, column: 39, scope: !1821)
!1879 = !DILocation(line: 317, column: 60, scope: !1821)
!1880 = !DILocation(line: 317, column: 19, scope: !1821)
!1881 = !DILocation(line: 318, column: 14, scope: !1821)
!1882 = !DILocation(line: 318, column: 11, scope: !1821)
!1883 = !DILocation(line: 319, column: 14, scope: !1821)
!1884 = !DILocation(line: 319, column: 11, scope: !1821)
!1885 = !DILocation(line: 320, column: 27, scope: !1821)
!1886 = !DILocation(line: 320, column: 18, scope: !1821)
!1887 = !DILocation(line: 320, column: 3, scope: !1821)
!1888 = !DILocation(line: 320, column: 9, scope: !1821)
!1889 = !DILocation(line: 320, column: 16, scope: !1821)
!1890 = !DILocation(line: 321, column: 14, scope: !1837)
!1891 = !DILocation(line: 321, column: 10, scope: !1837)
!1892 = !DILocation(line: 321, column: 8, scope: !1837)
!1893 = !DILocation(line: 321, column: 19, scope: !1836)
!1894 = !DILocation(line: 321, column: 23, scope: !1836)
!1895 = !DILocation(line: 321, column: 21, scope: !1836)
!1896 = !DILocation(line: 321, column: 3, scope: !1837)
!1897 = !DILocation(line: 322, column: 5, scope: !1835)
!1898 = !DILocation(line: 322, column: 11, scope: !1835)
!1899 = !DILocation(line: 322, column: 15, scope: !1835)
!1900 = !DILocation(line: 323, column: 9, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1835, file: !1, line: 323, column: 9)
!1902 = !DILocation(line: 323, column: 13, scope: !1901)
!1903 = !DILocation(line: 323, column: 11, scope: !1901)
!1904 = !DILocation(line: 323, column: 21, scope: !1901)
!1905 = !DILocation(line: 323, column: 25, scope: !1901)
!1906 = !DILocation(line: 323, column: 29, scope: !1901)
!1907 = !DILocation(line: 323, column: 27, scope: !1901)
!1908 = !DILocation(line: 323, column: 37, scope: !1901)
!1909 = !DILocation(line: 323, column: 44, scope: !1901)
!1910 = !DILocation(line: 323, column: 46, scope: !1901)
!1911 = !DILocation(line: 323, column: 45, scope: !1901)
!1912 = !DILocation(line: 323, column: 40, scope: !1901)
!1913 = !DILocation(line: 323, column: 56, scope: !1901)
!1914 = !DILocation(line: 323, column: 9, scope: !1835)
!1915 = !DILocation(line: 324, column: 18, scope: !1901)
!1916 = !DILocation(line: 324, column: 22, scope: !1901)
!1917 = !DILocation(line: 324, column: 7, scope: !1901)
!1918 = !DILocation(line: 324, column: 12, scope: !1901)
!1919 = !DILocation(line: 324, column: 16, scope: !1901)
!1920 = !DILocation(line: 325, column: 3, scope: !1836)
!1921 = !DILocation(line: 325, column: 3, scope: !1835)
!1922 = !DILocation(line: 321, column: 30, scope: !1836)
!1923 = !DILocation(line: 321, column: 3, scope: !1836)
!1924 = distinct !{!1924, !1896, !1925, !1442}
!1925 = !DILocation(line: 325, column: 3, scope: !1837)
!1926 = !DILocation(line: 326, column: 25, scope: !1821)
!1927 = !DILocation(line: 326, column: 16, scope: !1821)
!1928 = !DILocation(line: 326, column: 3, scope: !1821)
!1929 = !DILocation(line: 326, column: 9, scope: !1821)
!1930 = !DILocation(line: 326, column: 14, scope: !1821)
!1931 = !DILocation(line: 327, column: 10, scope: !1821)
!1932 = !DILocation(line: 327, column: 13, scope: !1821)
!1933 = !DILocation(line: 327, column: 17, scope: !1821)
!1934 = !DILocation(line: 327, column: 28, scope: !1821)
!1935 = !DILocation(line: 327, column: 34, scope: !1821)
!1936 = !DILocation(line: 327, column: 26, scope: !1821)
!1937 = !DILocation(line: 327, column: 41, scope: !1821)
!1938 = !DILocation(line: 327, column: 8, scope: !1821)
!1939 = !DILocation(line: 328, column: 3, scope: !1821)
!1940 = !DILocation(line: 328, column: 10, scope: !1821)
!1941 = !DILocation(line: 328, column: 15, scope: !1821)
!1942 = !DILocation(line: 328, column: 12, scope: !1821)
!1943 = !DILocation(line: 328, column: 32, scope: !1821)
!1944 = !DILocation(line: 328, column: 37, scope: !1821)
!1945 = !DILocation(line: 328, column: 21, scope: !1821)
!1946 = !DILocation(line: 328, column: 26, scope: !1821)
!1947 = !DILocation(line: 328, column: 30, scope: !1821)
!1948 = distinct !{!1948, !1939, !1949, !1442}
!1949 = !DILocation(line: 328, column: 39, scope: !1821)
!1950 = !DILocation(line: 329, column: 32, scope: !1821)
!1951 = !DILocation(line: 329, column: 38, scope: !1821)
!1952 = !DILocation(line: 329, column: 47, scope: !1821)
!1953 = !DILocation(line: 329, column: 45, scope: !1821)
!1954 = !DILocation(line: 329, column: 3, scope: !1821)
!1955 = !DILocation(line: 329, column: 6, scope: !1821)
!1956 = !DILocation(line: 329, column: 10, scope: !1821)
!1957 = !DILocation(line: 329, column: 19, scope: !1821)
!1958 = !DILocation(line: 330, column: 1, scope: !1821)
!1959 = distinct !DISubprogram(name: "snap_pc", scope: !4, file: !4, line: 201, type: !1960, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1962)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!751, !440}
!1962 = !{!1963, !1964}
!1963 = !DILocalVariable(name: "sn", arg: 1, scope: !1959, file: !4, line: 201, type: !440)
!1964 = !DILocalVariable(name: "pcbase", scope: !1959, file: !4, line: 204, type: !479)
!1965 = !DILocation(line: 201, column: 51, scope: !1959)
!1966 = !DILocation(line: 204, column: 3, scope: !1959)
!1967 = !DILocation(line: 204, column: 12, scope: !1959)
!1968 = !DILocation(line: 205, column: 19, scope: !1959)
!1969 = !DILocation(line: 205, column: 3, scope: !1959)
!1970 = !DILocation(line: 206, column: 26, scope: !1959)
!1971 = !{!1091, !1091, i64 0}
!1972 = !DILocation(line: 206, column: 33, scope: !1959)
!1973 = !DILocation(line: 206, column: 10, scope: !1959)
!1974 = !DILocation(line: 210, column: 1, scope: !1959)
!1975 = !DILocation(line: 206, column: 3, scope: !1959)
!1976 = distinct !DISubprogram(name: "lj_snap_regspmap", scope: !1, file: !1, line: 359, type: !1977, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1980)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{!489, !470, !1979, !489}
!1979 = !DIDerivedType(tag: DW_TAG_typedef, name: "SnapNo", file: !4, line: 213, baseType: !419)
!1980 = !{!1981, !1982, !1983, !1984, !1985, !1986, !1989, !1990, !1991}
!1981 = !DILocalVariable(name: "T", arg: 1, scope: !1976, file: !1, line: 359, type: !470)
!1982 = !DILocalVariable(name: "snapno", arg: 2, scope: !1976, file: !1, line: 359, type: !1979)
!1983 = !DILocalVariable(name: "ir", arg: 3, scope: !1976, file: !1, line: 359, type: !489)
!1984 = !DILocalVariable(name: "snap", scope: !1976, file: !1, line: 361, type: !423)
!1985 = !DILocalVariable(name: "map", scope: !1976, file: !1, line: 362, type: !440)
!1986 = !DILocalVariable(name: "rfilt", scope: !1976, file: !1, line: 363, type: !1987)
!1987 = !DIDerivedType(tag: DW_TAG_typedef, name: "BloomFilter", file: !1988, line: 116, baseType: !443)
!1988 = !DIFile(filename: "./lj_def.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/LuaJIT-2.1-20190507/src", checksumkind: CSK_MD5, checksum: "f2f07ebc424e09dc05d02e885bb02d1b")
!1989 = !DILocalVariable(name: "n", scope: !1976, file: !1, line: 364, type: !417)
!1990 = !DILocalVariable(name: "ref", scope: !1976, file: !1, line: 365, type: !485)
!1991 = !DILocalVariable(name: "rs", scope: !1992, file: !1, line: 367, type: !419)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !1, line: 366, column: 19)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !1, line: 366, column: 3)
!1994 = distinct !DILexicalBlock(scope: !1976, file: !1, line: 366, column: 3)
!1995 = !DILocation(line: 359, column: 34, scope: !1976)
!1996 = !DILocation(line: 359, column: 44, scope: !1976)
!1997 = !DILocation(line: 359, column: 59, scope: !1976)
!1998 = !DILocation(line: 361, column: 3, scope: !1976)
!1999 = !DILocation(line: 361, column: 13, scope: !1976)
!2000 = !DILocation(line: 361, column: 21, scope: !1976)
!2001 = !DILocation(line: 361, column: 24, scope: !1976)
!2002 = !{!1089, !1068, i64 48}
!2003 = !DILocation(line: 361, column: 29, scope: !1976)
!2004 = !DILocation(line: 362, column: 3, scope: !1976)
!2005 = !DILocation(line: 362, column: 14, scope: !1976)
!2006 = !DILocation(line: 362, column: 21, scope: !1976)
!2007 = !DILocation(line: 362, column: 24, scope: !1976)
!2008 = !{!1089, !1068, i64 56}
!2009 = !DILocation(line: 362, column: 32, scope: !1976)
!2010 = !DILocation(line: 362, column: 38, scope: !1976)
!2011 = !DILocation(line: 363, column: 3, scope: !1976)
!2012 = !DILocation(line: 363, column: 15, scope: !1976)
!2013 = !DILocation(line: 363, column: 41, scope: !1976)
!2014 = !DILocation(line: 363, column: 44, scope: !1976)
!2015 = !DILocation(line: 363, column: 23, scope: !1976)
!2016 = !DILocation(line: 364, column: 3, scope: !1976)
!2017 = !DILocation(line: 364, column: 9, scope: !1976)
!2018 = !DILocation(line: 365, column: 3, scope: !1976)
!2019 = !DILocation(line: 365, column: 9, scope: !1976)
!2020 = !DILocation(line: 366, column: 3, scope: !1976)
!2021 = !DILocation(line: 367, column: 5, scope: !1992)
!2022 = !DILocation(line: 367, column: 14, scope: !1992)
!2023 = !DILocation(line: 368, column: 9, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !1992, file: !1, line: 368, column: 9)
!2025 = !DILocation(line: 368, column: 13, scope: !2024)
!2026 = !DILocation(line: 368, column: 15, scope: !2024)
!2027 = !DILocation(line: 368, column: 9, scope: !1992)
!2028 = !DILocation(line: 369, column: 13, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2030, file: !1, line: 369, column: 11)
!2030 = distinct !DILexicalBlock(scope: !2024, file: !1, line: 368, column: 28)
!2031 = !DILocation(line: 369, column: 17, scope: !2029)
!2032 = !DILocation(line: 369, column: 21, scope: !2029)
!2033 = !DILocation(line: 369, column: 11, scope: !2030)
!2034 = !DILocation(line: 369, column: 40, scope: !2029)
!2035 = !DILocation(line: 370, column: 7, scope: !2030)
!2036 = !DILocation(line: 372, column: 6, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !1, line: 372, column: 6)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !1, line: 370, column: 22)
!2039 = distinct !DILexicalBlock(scope: !2040, file: !1, line: 370, column: 7)
!2040 = distinct !DILexicalBlock(scope: !2030, file: !1, line: 370, column: 7)
!2041 = !DILocation(line: 372, column: 27, scope: !2037)
!2042 = !DILocation(line: 372, column: 31, scope: !2037)
!2043 = !DILocation(line: 372, column: 24, scope: !2037)
!2044 = !DILocation(line: 372, column: 6, scope: !2038)
!2045 = !DILocation(line: 373, column: 10, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2037, file: !1, line: 372, column: 36)
!2047 = !DILocation(line: 373, column: 8, scope: !2046)
!2048 = !DILocation(line: 374, column: 4, scope: !2046)
!2049 = !DILocation(line: 376, column: 7, scope: !2038)
!2050 = !DILocation(line: 370, column: 18, scope: !2039)
!2051 = !DILocation(line: 370, column: 7, scope: !2039)
!2052 = distinct !{!2052, !2053, !2054}
!2053 = !DILocation(line: 370, column: 7, scope: !2040)
!2054 = !DILocation(line: 376, column: 7, scope: !2040)
!2055 = !DILocation(line: 377, column: 5, scope: !2030)
!2056 = !DILocation(line: 379, column: 16, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !1, line: 379, column: 16)
!2058 = distinct !DILexicalBlock(scope: !2024, file: !1, line: 377, column: 16)
!2059 = !DILocation(line: 379, column: 20, scope: !2057)
!2060 = !DILocation(line: 379, column: 22, scope: !2057)
!2061 = !DILocation(line: 379, column: 16, scope: !2058)
!2062 = !DILocation(line: 380, column: 13, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2057, file: !1, line: 379, column: 34)
!2064 = !DILocation(line: 380, column: 17, scope: !2063)
!2065 = !DILocation(line: 380, column: 21, scope: !2063)
!2066 = !DILocation(line: 380, column: 11, scope: !2063)
!2067 = !DILocation(line: 381, column: 5, scope: !2063)
!2068 = !DILocation(line: 382, column: 7, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2057, file: !1, line: 381, column: 12)
!2070 = !DILocation(line: 384, column: 10, scope: !1992)
!2071 = !DILocation(line: 384, column: 13, scope: !1992)
!2072 = !{!1089, !1068, i64 32}
!2073 = !DILocation(line: 384, column: 16, scope: !1992)
!2074 = !DILocation(line: 384, column: 21, scope: !1992)
!2075 = !DILocation(line: 384, column: 8, scope: !1992)
!2076 = !DILocation(line: 385, column: 9, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !1992, file: !1, line: 385, column: 9)
!2078 = !DILocation(line: 385, column: 9, scope: !1992)
!2079 = !DILocation(line: 386, column: 27, scope: !2077)
!2080 = !DILocation(line: 386, column: 30, scope: !2077)
!2081 = !DILocation(line: 386, column: 38, scope: !2077)
!2082 = !DILocation(line: 386, column: 43, scope: !2077)
!2083 = !DILocation(line: 386, column: 12, scope: !2077)
!2084 = !DILocation(line: 386, column: 10, scope: !2077)
!2085 = !DILocation(line: 386, column: 7, scope: !2077)
!2086 = !DILocation(line: 387, column: 26, scope: !1992)
!2087 = !DILocation(line: 387, column: 16, scope: !1992)
!2088 = !DILocation(line: 387, column: 5, scope: !1992)
!2089 = !DILocation(line: 387, column: 9, scope: !1992)
!2090 = !DILocation(line: 387, column: 14, scope: !1992)
!2091 = !DILocation(line: 389, column: 3, scope: !1993)
!2092 = !DILocation(line: 389, column: 3, scope: !1992)
!2093 = !DILocation(line: 366, column: 15, scope: !1993)
!2094 = !DILocation(line: 366, column: 3, scope: !1993)
!2095 = distinct !{!2095, !2096, !2097}
!2096 = !DILocation(line: 366, column: 3, scope: !1994)
!2097 = !DILocation(line: 389, column: 3, scope: !1994)
!2098 = !DILocation(line: 390, column: 10, scope: !1976)
!2099 = !DILocation(line: 391, column: 1, scope: !1976)
!2100 = !DILocation(line: 390, column: 3, scope: !1976)
!2101 = distinct !DISubprogram(name: "snap_renamefilter", scope: !1, file: !1, line: 338, type: !2102, scopeLine: 339, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2104)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!1987, !470, !1979}
!2104 = !{!2105, !2106, !2107, !2108}
!2105 = !DILocalVariable(name: "T", arg: 1, scope: !2101, file: !1, line: 338, type: !470)
!2106 = !DILocalVariable(name: "lim", arg: 2, scope: !2101, file: !1, line: 338, type: !1979)
!2107 = !DILocalVariable(name: "rfilt", scope: !2101, file: !1, line: 340, type: !1987)
!2108 = !DILocalVariable(name: "ir", scope: !2101, file: !1, line: 341, type: !489)
!2109 = !DILocation(line: 338, column: 47, scope: !2101)
!2110 = !DILocation(line: 338, column: 57, scope: !2101)
!2111 = !DILocation(line: 340, column: 3, scope: !2101)
!2112 = !DILocation(line: 340, column: 15, scope: !2101)
!2113 = !DILocation(line: 341, column: 3, scope: !2101)
!2114 = !DILocation(line: 341, column: 10, scope: !2101)
!2115 = !DILocation(line: 342, column: 14, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2101, file: !1, line: 342, column: 3)
!2117 = !DILocation(line: 342, column: 17, scope: !2116)
!2118 = !DILocation(line: 342, column: 20, scope: !2116)
!2119 = !DILocation(line: 342, column: 23, scope: !2116)
!2120 = !{!1089, !1073, i64 12}
!2121 = !DILocation(line: 342, column: 27, scope: !2116)
!2122 = !DILocation(line: 342, column: 11, scope: !2116)
!2123 = !DILocation(line: 342, column: 8, scope: !2116)
!2124 = !DILocation(line: 342, column: 32, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2116, file: !1, line: 342, column: 3)
!2126 = !DILocation(line: 342, column: 36, scope: !2125)
!2127 = !DILocation(line: 342, column: 38, scope: !2125)
!2128 = !DILocation(line: 342, column: 3, scope: !2116)
!2129 = !DILocation(line: 343, column: 9, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2125, file: !1, line: 343, column: 9)
!2131 = !DILocation(line: 343, column: 13, scope: !2130)
!2132 = !DILocation(line: 343, column: 20, scope: !2130)
!2133 = !DILocation(line: 343, column: 17, scope: !2130)
!2134 = !DILocation(line: 343, column: 9, scope: !2125)
!2135 = !DILocation(line: 344, column: 7, scope: !2130)
!2136 = !DILocation(line: 342, column: 54, scope: !2125)
!2137 = !DILocation(line: 342, column: 3, scope: !2125)
!2138 = distinct !{!2138, !2128, !2139, !1442}
!2139 = !DILocation(line: 344, column: 7, scope: !2116)
!2140 = !DILocation(line: 345, column: 10, scope: !2101)
!2141 = !DILocation(line: 346, column: 1, scope: !2101)
!2142 = !DILocation(line: 345, column: 3, scope: !2101)
!2143 = distinct !DISubprogram(name: "snap_renameref", scope: !1, file: !1, line: 349, type: !2144, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2148)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!2146, !470, !1979, !485, !2146}
!2146 = !DIDerivedType(tag: DW_TAG_typedef, name: "RegSP", file: !2147, line: 42, baseType: !419)
!2147 = !DIFile(filename: "./lj_target.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/LuaJIT-2.1-20190507/src", checksumkind: CSK_MD5, checksum: "2f556a02e5810be9ce9c026938180092")
!2148 = !{!2149, !2150, !2151, !2152, !2153}
!2149 = !DILocalVariable(name: "T", arg: 1, scope: !2143, file: !1, line: 349, type: !470)
!2150 = !DILocalVariable(name: "lim", arg: 2, scope: !2143, file: !1, line: 349, type: !1979)
!2151 = !DILocalVariable(name: "ref", arg: 3, scope: !2143, file: !1, line: 349, type: !485)
!2152 = !DILocalVariable(name: "rs", arg: 4, scope: !2143, file: !1, line: 349, type: !2146)
!2153 = !DILocalVariable(name: "ir", scope: !2143, file: !1, line: 351, type: !489)
!2154 = !DILocation(line: 349, column: 38, scope: !2143)
!2155 = !DILocation(line: 349, column: 48, scope: !2143)
!2156 = !DILocation(line: 349, column: 59, scope: !2143)
!2157 = !DILocation(line: 349, column: 70, scope: !2143)
!2158 = !DILocation(line: 351, column: 3, scope: !2143)
!2159 = !DILocation(line: 351, column: 10, scope: !2143)
!2160 = !DILocation(line: 352, column: 14, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2143, file: !1, line: 352, column: 3)
!2162 = !DILocation(line: 352, column: 17, scope: !2161)
!2163 = !DILocation(line: 352, column: 20, scope: !2161)
!2164 = !DILocation(line: 352, column: 23, scope: !2161)
!2165 = !DILocation(line: 352, column: 27, scope: !2161)
!2166 = !DILocation(line: 352, column: 11, scope: !2161)
!2167 = !DILocation(line: 352, column: 8, scope: !2161)
!2168 = !DILocation(line: 352, column: 32, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2161, file: !1, line: 352, column: 3)
!2170 = !DILocation(line: 352, column: 36, scope: !2169)
!2171 = !DILocation(line: 352, column: 38, scope: !2169)
!2172 = !DILocation(line: 352, column: 3, scope: !2161)
!2173 = !DILocation(line: 353, column: 9, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2169, file: !1, line: 353, column: 9)
!2175 = !DILocation(line: 353, column: 13, scope: !2174)
!2176 = !DILocation(line: 353, column: 20, scope: !2174)
!2177 = !DILocation(line: 353, column: 17, scope: !2174)
!2178 = !DILocation(line: 353, column: 24, scope: !2174)
!2179 = !DILocation(line: 353, column: 27, scope: !2174)
!2180 = !DILocation(line: 353, column: 31, scope: !2174)
!2181 = !DILocation(line: 353, column: 38, scope: !2174)
!2182 = !DILocation(line: 353, column: 35, scope: !2174)
!2183 = !DILocation(line: 353, column: 9, scope: !2169)
!2184 = !DILocation(line: 354, column: 12, scope: !2174)
!2185 = !DILocation(line: 354, column: 16, scope: !2174)
!2186 = !DILocation(line: 354, column: 10, scope: !2174)
!2187 = !DILocation(line: 354, column: 7, scope: !2174)
!2188 = !DILocation(line: 352, column: 54, scope: !2169)
!2189 = !DILocation(line: 352, column: 3, scope: !2169)
!2190 = distinct !{!2190, !2172, !2191, !1442}
!2191 = !DILocation(line: 354, column: 16, scope: !2161)
!2192 = !DILocation(line: 355, column: 10, scope: !2143)
!2193 = !DILocation(line: 356, column: 1, scope: !2143)
!2194 = !DILocation(line: 355, column: 3, scope: !2143)
!2195 = distinct !DISubprogram(name: "lj_snap_replay", scope: !1, file: !1, line: 457, type: !2196, scopeLine: 458, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2198)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{null, !937, !470}
!2198 = !{!2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2211, !2212, !2213, !2214, !2215, !2219, !2220, !2221, !2224, !2228, !2229, !2230, !2235, !2239, !2240, !2241, !2244, !2245, !2248, !2249, !2254, !2255, !2256, !2257, !2260, !2263}
!2199 = !DILocalVariable(name: "J", arg: 1, scope: !2195, file: !1, line: 457, type: !937)
!2200 = !DILocalVariable(name: "T", arg: 2, scope: !2195, file: !1, line: 457, type: !470)
!2201 = !DILocalVariable(name: "snap", scope: !2195, file: !1, line: 459, type: !423)
!2202 = !DILocalVariable(name: "map", scope: !2195, file: !1, line: 460, type: !440)
!2203 = !DILocalVariable(name: "n", scope: !2195, file: !1, line: 461, type: !417)
!2204 = !DILocalVariable(name: "nent", scope: !2195, file: !1, line: 461, type: !417)
!2205 = !DILocalVariable(name: "seen", scope: !2195, file: !1, line: 462, type: !1987)
!2206 = !DILocalVariable(name: "pass23", scope: !2195, file: !1, line: 463, type: !467)
!2207 = !DILocalVariable(name: "sn", scope: !2208, file: !1, line: 467, type: !441)
!2208 = distinct !DILexicalBlock(scope: !2209, file: !1, line: 466, column: 30)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !1, line: 466, column: 3)
!2210 = distinct !DILexicalBlock(scope: !2195, file: !1, line: 466, column: 3)
!2211 = !DILocalVariable(name: "s", scope: !2208, file: !1, line: 468, type: !442)
!2212 = !DILocalVariable(name: "ref", scope: !2208, file: !1, line: 469, type: !485)
!2213 = !DILocalVariable(name: "ir", scope: !2208, file: !1, line: 470, type: !489)
!2214 = !DILocalVariable(name: "tr", scope: !2208, file: !1, line: 471, type: !755)
!2215 = !DILocalVariable(name: "t", scope: !2216, file: !1, line: 487, type: !446)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !1, line: 486, column: 12)
!2217 = distinct !DILexicalBlock(scope: !2218, file: !1, line: 482, column: 16)
!2218 = distinct !DILexicalBlock(scope: !2208, file: !1, line: 476, column: 9)
!2219 = !DILocalVariable(name: "mode", scope: !2216, file: !1, line: 488, type: !419)
!2220 = !DILabel(scope: !2208, name: "setslot", file: !1, line: 493)
!2221 = !DILocalVariable(name: "irlast", scope: !2222, file: !1, line: 500, type: !489)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !1, line: 499, column: 15)
!2223 = distinct !DILexicalBlock(scope: !2195, file: !1, line: 499, column: 7)
!2224 = !DILocalVariable(name: "sn", scope: !2225, file: !1, line: 504, type: !441)
!2225 = distinct !DILexicalBlock(scope: !2226, file: !1, line: 503, column: 32)
!2226 = distinct !DILexicalBlock(scope: !2227, file: !1, line: 503, column: 5)
!2227 = distinct !DILexicalBlock(scope: !2222, file: !1, line: 503, column: 5)
!2228 = !DILocalVariable(name: "refp", scope: !2225, file: !1, line: 505, type: !485)
!2229 = !DILocalVariable(name: "ir", scope: !2225, file: !1, line: 506, type: !489)
!2230 = !DILocalVariable(name: "irs", scope: !2231, file: !1, line: 518, type: !489)
!2231 = distinct !DILexicalBlock(scope: !2232, file: !1, line: 517, column: 9)
!2232 = distinct !DILexicalBlock(scope: !2233, file: !1, line: 514, column: 6)
!2233 = distinct !DILexicalBlock(scope: !2234, file: !1, line: 507, column: 41)
!2234 = distinct !DILexicalBlock(scope: !2225, file: !1, line: 507, column: 11)
!2235 = !DILocalVariable(name: "sn", scope: !2236, file: !1, line: 535, type: !441)
!2236 = distinct !DILexicalBlock(scope: !2237, file: !1, line: 534, column: 42)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !1, line: 534, column: 5)
!2238 = distinct !DILexicalBlock(scope: !2222, file: !1, line: 534, column: 5)
!2239 = !DILocalVariable(name: "refp", scope: !2236, file: !1, line: 536, type: !485)
!2240 = !DILocalVariable(name: "ir", scope: !2236, file: !1, line: 537, type: !489)
!2241 = !DILocalVariable(name: "op1", scope: !2242, file: !1, line: 539, type: !755)
!2242 = distinct !DILexicalBlock(scope: !2243, file: !1, line: 538, column: 41)
!2243 = distinct !DILexicalBlock(scope: !2236, file: !1, line: 538, column: 11)
!2244 = !DILocalVariable(name: "op2", scope: !2242, file: !1, line: 539, type: !755)
!2245 = !DILocalVariable(name: "irs", scope: !2246, file: !1, line: 556, type: !489)
!2246 = distinct !DILexicalBlock(scope: !2247, file: !1, line: 555, column: 9)
!2247 = distinct !DILexicalBlock(scope: !2242, file: !1, line: 548, column: 6)
!2248 = !DILocalVariable(name: "tr", scope: !2246, file: !1, line: 557, type: !755)
!2249 = !DILocalVariable(name: "irr", scope: !2250, file: !1, line: 561, type: !489)
!2250 = distinct !DILexicalBlock(scope: !2251, file: !1, line: 560, column: 61)
!2251 = distinct !DILexicalBlock(scope: !2252, file: !1, line: 560, column: 10)
!2252 = distinct !DILexicalBlock(scope: !2253, file: !1, line: 559, column: 4)
!2253 = distinct !DILexicalBlock(scope: !2246, file: !1, line: 559, column: 4)
!2254 = !DILocalVariable(name: "val", scope: !2250, file: !1, line: 562, type: !755)
!2255 = !DILocalVariable(name: "key", scope: !2250, file: !1, line: 562, type: !755)
!2256 = !DILocalVariable(name: "tmp", scope: !2250, file: !1, line: 562, type: !755)
!2257 = !DILocalVariable(name: "irk", scope: !2258, file: !1, line: 564, type: !489)
!2258 = distinct !DILexicalBlock(scope: !2259, file: !1, line: 563, column: 31)
!2259 = distinct !DILexicalBlock(scope: !2250, file: !1, line: 563, column: 12)
!2260 = !DILocalVariable(name: "irf", scope: !2261, file: !1, line: 571, type: !489)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !1, line: 570, column: 48)
!2262 = distinct !DILexicalBlock(scope: !2258, file: !1, line: 570, column: 7)
!2263 = !DILocalVariable(name: "irc", scope: !2264, file: !1, line: 578, type: !489)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !1, line: 577, column: 22)
!2265 = distinct !DILexicalBlock(scope: !2250, file: !1, line: 577, column: 12)
!2266 = !DILocation(line: 457, column: 32, scope: !2195)
!2267 = !DILocation(line: 457, column: 44, scope: !2195)
!2268 = !DILocation(line: 459, column: 3, scope: !2195)
!2269 = !DILocation(line: 459, column: 13, scope: !2195)
!2270 = !DILocation(line: 459, column: 21, scope: !2195)
!2271 = !DILocation(line: 459, column: 24, scope: !2195)
!2272 = !DILocation(line: 459, column: 29, scope: !2195)
!2273 = !DILocation(line: 459, column: 32, scope: !2195)
!2274 = !{!1088, !1073, i64 3036}
!2275 = !DILocation(line: 460, column: 3, scope: !2195)
!2276 = !DILocation(line: 460, column: 14, scope: !2195)
!2277 = !DILocation(line: 460, column: 21, scope: !2195)
!2278 = !DILocation(line: 460, column: 24, scope: !2195)
!2279 = !DILocation(line: 460, column: 32, scope: !2195)
!2280 = !DILocation(line: 460, column: 38, scope: !2195)
!2281 = !DILocation(line: 461, column: 3, scope: !2195)
!2282 = !DILocation(line: 461, column: 9, scope: !2195)
!2283 = !DILocation(line: 461, column: 12, scope: !2195)
!2284 = !DILocation(line: 461, column: 19, scope: !2195)
!2285 = !DILocation(line: 461, column: 25, scope: !2195)
!2286 = !DILocation(line: 462, column: 3, scope: !2195)
!2287 = !DILocation(line: 462, column: 15, scope: !2195)
!2288 = !DILocation(line: 463, column: 3, scope: !2195)
!2289 = !DILocation(line: 463, column: 7, scope: !2195)
!2290 = !DILocation(line: 464, column: 3, scope: !2195)
!2291 = !DILocation(line: 464, column: 6, scope: !2195)
!2292 = !DILocation(line: 464, column: 17, scope: !2195)
!2293 = !{!1088, !1073, i64 252}
!2294 = !DILocation(line: 466, column: 10, scope: !2210)
!2295 = !DILocation(line: 466, column: 8, scope: !2210)
!2296 = !DILocation(line: 466, column: 15, scope: !2209)
!2297 = !DILocation(line: 466, column: 19, scope: !2209)
!2298 = !DILocation(line: 466, column: 17, scope: !2209)
!2299 = !DILocation(line: 466, column: 3, scope: !2210)
!2300 = !DILocation(line: 467, column: 5, scope: !2208)
!2301 = !DILocation(line: 467, column: 15, scope: !2208)
!2302 = !DILocation(line: 467, column: 20, scope: !2208)
!2303 = !DILocation(line: 467, column: 24, scope: !2208)
!2304 = !DILocation(line: 468, column: 5, scope: !2208)
!2305 = !DILocation(line: 468, column: 11, scope: !2208)
!2306 = !DILocation(line: 468, column: 15, scope: !2208)
!2307 = !DILocation(line: 469, column: 5, scope: !2208)
!2308 = !DILocation(line: 469, column: 11, scope: !2208)
!2309 = !DILocation(line: 469, column: 17, scope: !2208)
!2310 = !DILocation(line: 470, column: 5, scope: !2208)
!2311 = !DILocation(line: 470, column: 12, scope: !2208)
!2312 = !DILocation(line: 470, column: 18, scope: !2208)
!2313 = !DILocation(line: 470, column: 21, scope: !2208)
!2314 = !DILocation(line: 470, column: 24, scope: !2208)
!2315 = !DILocation(line: 471, column: 5, scope: !2208)
!2316 = !DILocation(line: 471, column: 10, scope: !2208)
!2317 = !DILocation(line: 473, column: 9, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2208, file: !1, line: 473, column: 9)
!2319 = !DILocation(line: 473, column: 30, scope: !2318)
!2320 = !DILocation(line: 473, column: 50, scope: !2318)
!2321 = !DILocation(line: 473, column: 53, scope: !2318)
!2322 = !DILocation(line: 473, column: 58, scope: !2318)
!2323 = !DILocation(line: 473, column: 61, scope: !2318)
!2324 = !DILocation(line: 473, column: 39, scope: !2318)
!2325 = !DILocation(line: 473, column: 37, scope: !2318)
!2326 = !DILocation(line: 473, column: 67, scope: !2318)
!2327 = !DILocation(line: 473, column: 9, scope: !2208)
!2328 = !DILocation(line: 474, column: 7, scope: !2318)
!2329 = !DILocation(line: 475, column: 5, scope: !2208)
!2330 = !DILocation(line: 476, column: 9, scope: !2218)
!2331 = !DILocation(line: 476, column: 9, scope: !2208)
!2332 = !DILocation(line: 478, column: 22, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2334, file: !1, line: 478, column: 11)
!2334 = distinct !DILexicalBlock(scope: !2218, file: !1, line: 476, column: 25)
!2335 = !DILocation(line: 478, column: 25, scope: !2333)
!2336 = !DILocation(line: 478, column: 11, scope: !2334)
!2337 = !DILocation(line: 479, column: 5, scope: !2333)
!2338 = !DILocation(line: 479, column: 2, scope: !2333)
!2339 = !DILocation(line: 481, column: 25, scope: !2333)
!2340 = !DILocation(line: 481, column: 28, scope: !2333)
!2341 = !DILocation(line: 481, column: 7, scope: !2333)
!2342 = !DILocation(line: 481, column: 5, scope: !2333)
!2343 = !DILocation(line: 482, column: 5, scope: !2334)
!2344 = !DILocation(line: 482, column: 17, scope: !2217)
!2345 = !DILocation(line: 482, column: 16, scope: !2218)
!2346 = !DILocation(line: 483, column: 14, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2217, file: !1, line: 482, column: 39)
!2348 = !DILocation(line: 485, column: 12, scope: !2347)
!2349 = !DILocation(line: 485, column: 10, scope: !2347)
!2350 = !DILocation(line: 486, column: 5, scope: !2347)
!2351 = !DILocation(line: 487, column: 7, scope: !2216)
!2352 = !DILocation(line: 487, column: 14, scope: !2216)
!2353 = !DILocation(line: 487, column: 18, scope: !2216)
!2354 = !DILocation(line: 488, column: 7, scope: !2216)
!2355 = !DILocation(line: 488, column: 16, scope: !2216)
!2356 = !DILocation(line: 490, column: 11, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2216, file: !1, line: 490, column: 11)
!2358 = !DILocation(line: 490, column: 15, scope: !2357)
!2359 = !DILocation(line: 490, column: 17, scope: !2357)
!2360 = !DILocation(line: 490, column: 11, scope: !2216)
!2361 = !DILocation(line: 490, column: 39, scope: !2357)
!2362 = !DILocation(line: 490, column: 43, scope: !2357)
!2363 = !DILocation(line: 490, column: 47, scope: !2357)
!2364 = !DILocation(line: 490, column: 35, scope: !2357)
!2365 = !DILocation(line: 490, column: 30, scope: !2357)
!2366 = !DILocation(line: 491, column: 12, scope: !2216)
!2367 = !DILocation(line: 491, column: 10, scope: !2216)
!2368 = !DILocation(line: 492, column: 5, scope: !2217)
!2369 = !DILocation(line: 493, column: 3, scope: !2208)
!2370 = !DILocation(line: 494, column: 18, scope: !2208)
!2371 = !DILocation(line: 494, column: 24, scope: !2208)
!2372 = !DILocation(line: 494, column: 26, scope: !2208)
!2373 = !DILocation(line: 494, column: 21, scope: !2208)
!2374 = !DILocation(line: 494, column: 5, scope: !2208)
!2375 = !DILocation(line: 494, column: 8, scope: !2208)
!2376 = !DILocation(line: 494, column: 13, scope: !2208)
!2377 = !DILocation(line: 494, column: 16, scope: !2208)
!2378 = !DILocation(line: 495, column: 24, scope: !2208)
!2379 = !DILocation(line: 495, column: 27, scope: !2208)
!2380 = !DILocation(line: 495, column: 53, scope: !2208)
!2381 = !DILocation(line: 495, column: 57, scope: !2208)
!2382 = !DILocation(line: 495, column: 59, scope: !2208)
!2383 = !DILocation(line: 0, scope: !2208)
!2384 = !DILocation(line: 495, column: 5, scope: !2208)
!2385 = !DILocation(line: 495, column: 8, scope: !2208)
!2386 = !DILocation(line: 495, column: 19, scope: !2208)
!2387 = !DILocation(line: 496, column: 10, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2208, file: !1, line: 496, column: 9)
!2389 = !DILocation(line: 496, column: 13, scope: !2388)
!2390 = !DILocation(line: 496, column: 9, scope: !2208)
!2391 = !DILocation(line: 497, column: 21, scope: !2388)
!2392 = !DILocation(line: 497, column: 22, scope: !2388)
!2393 = !DILocation(line: 497, column: 7, scope: !2388)
!2394 = !DILocation(line: 497, column: 10, scope: !2388)
!2395 = !DILocation(line: 497, column: 19, scope: !2388)
!2396 = !DILocation(line: 498, column: 3, scope: !2209)
!2397 = !DILocation(line: 498, column: 3, scope: !2208)
!2398 = !DILocation(line: 466, column: 26, scope: !2209)
!2399 = !DILocation(line: 466, column: 3, scope: !2209)
!2400 = distinct !{!2400, !2299, !2401, !1442}
!2401 = !DILocation(line: 498, column: 3, scope: !2210)
!2402 = !DILocation(line: 499, column: 7, scope: !2223)
!2403 = !DILocation(line: 499, column: 7, scope: !2195)
!2404 = !DILocation(line: 500, column: 5, scope: !2222)
!2405 = !DILocation(line: 500, column: 12, scope: !2222)
!2406 = !DILocation(line: 500, column: 22, scope: !2222)
!2407 = !DILocation(line: 500, column: 25, scope: !2222)
!2408 = !DILocation(line: 500, column: 28, scope: !2222)
!2409 = !DILocation(line: 500, column: 34, scope: !2222)
!2410 = !DILocation(line: 501, column: 12, scope: !2222)
!2411 = !DILocation(line: 503, column: 12, scope: !2227)
!2412 = !DILocation(line: 503, column: 10, scope: !2227)
!2413 = !DILocation(line: 503, column: 17, scope: !2226)
!2414 = !DILocation(line: 503, column: 21, scope: !2226)
!2415 = !DILocation(line: 503, column: 19, scope: !2226)
!2416 = !DILocation(line: 503, column: 5, scope: !2227)
!2417 = !DILocation(line: 504, column: 7, scope: !2225)
!2418 = !DILocation(line: 504, column: 17, scope: !2225)
!2419 = !DILocation(line: 504, column: 22, scope: !2225)
!2420 = !DILocation(line: 504, column: 26, scope: !2225)
!2421 = !DILocation(line: 505, column: 7, scope: !2225)
!2422 = !DILocation(line: 505, column: 13, scope: !2225)
!2423 = !DILocation(line: 505, column: 20, scope: !2225)
!2424 = !DILocation(line: 506, column: 7, scope: !2225)
!2425 = !DILocation(line: 506, column: 14, scope: !2225)
!2426 = !DILocation(line: 506, column: 20, scope: !2225)
!2427 = !DILocation(line: 506, column: 23, scope: !2225)
!2428 = !DILocation(line: 506, column: 26, scope: !2225)
!2429 = !DILocation(line: 507, column: 11, scope: !2234)
!2430 = !DILocation(line: 507, column: 28, scope: !2234)
!2431 = !DILocation(line: 507, column: 11, scope: !2225)
!2432 = !DILocation(line: 508, column: 6, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2233, file: !1, line: 508, column: 6)
!2434 = !DILocation(line: 508, column: 9, scope: !2433)
!2435 = !DILocation(line: 508, column: 14, scope: !2433)
!2436 = !DILocation(line: 508, column: 32, scope: !2433)
!2437 = !DILocation(line: 508, column: 29, scope: !2433)
!2438 = !DILocation(line: 508, column: 6, scope: !2233)
!2439 = !DILocation(line: 508, column: 47, scope: !2433)
!2440 = !DILocation(line: 509, column: 9, scope: !2233)
!2441 = !DILocation(line: 512, column: 6, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2233, file: !1, line: 512, column: 6)
!2443 = !DILocation(line: 512, column: 10, scope: !2442)
!2444 = !DILocation(line: 512, column: 17, scope: !2442)
!2445 = !DILocation(line: 512, column: 20, scope: !2442)
!2446 = !{!1089, !1073, i64 40}
!2447 = !DILocation(line: 512, column: 14, scope: !2442)
!2448 = !DILocation(line: 512, column: 6, scope: !2233)
!2449 = !DILocation(line: 512, column: 34, scope: !2442)
!2450 = !DILocation(line: 512, column: 37, scope: !2442)
!2451 = !DILocation(line: 512, column: 40, scope: !2442)
!2452 = !DILocation(line: 512, column: 45, scope: !2442)
!2453 = !DILocation(line: 512, column: 51, scope: !2442)
!2454 = !DILocation(line: 512, column: 57, scope: !2442)
!2455 = !DILocation(line: 512, column: 61, scope: !2442)
!2456 = !DILocation(line: 512, column: 24, scope: !2442)
!2457 = !DILocation(line: 513, column: 6, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2233, file: !1, line: 513, column: 6)
!2459 = !DILocation(line: 513, column: 10, scope: !2458)
!2460 = !DILocation(line: 513, column: 17, scope: !2458)
!2461 = !DILocation(line: 513, column: 20, scope: !2458)
!2462 = !DILocation(line: 513, column: 14, scope: !2458)
!2463 = !DILocation(line: 513, column: 6, scope: !2233)
!2464 = !DILocation(line: 513, column: 34, scope: !2458)
!2465 = !DILocation(line: 513, column: 37, scope: !2458)
!2466 = !DILocation(line: 513, column: 40, scope: !2458)
!2467 = !DILocation(line: 513, column: 45, scope: !2458)
!2468 = !DILocation(line: 513, column: 51, scope: !2458)
!2469 = !DILocation(line: 513, column: 57, scope: !2458)
!2470 = !DILocation(line: 513, column: 61, scope: !2458)
!2471 = !DILocation(line: 513, column: 24, scope: !2458)
!2472 = !DILocation(line: 514, column: 19, scope: !2232)
!2473 = !DILocation(line: 514, column: 23, scope: !2232)
!2474 = !DILocation(line: 514, column: 25, scope: !2232)
!2475 = !DILocation(line: 514, column: 6, scope: !2233)
!2476 = !DILocation(line: 517, column: 2, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2232, file: !1, line: 514, column: 38)
!2478 = !DILocation(line: 518, column: 4, scope: !2231)
!2479 = !DILocation(line: 518, column: 11, scope: !2231)
!2480 = !DILocation(line: 519, column: 15, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2231, file: !1, line: 519, column: 4)
!2482 = !DILocation(line: 519, column: 17, scope: !2481)
!2483 = !DILocation(line: 519, column: 13, scope: !2481)
!2484 = !DILocation(line: 519, column: 9, scope: !2481)
!2485 = !DILocation(line: 519, column: 21, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2481, file: !1, line: 519, column: 4)
!2487 = !DILocation(line: 519, column: 27, scope: !2486)
!2488 = !DILocation(line: 519, column: 25, scope: !2486)
!2489 = !DILocation(line: 519, column: 4, scope: !2481)
!2490 = !DILocation(line: 520, column: 10, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2486, file: !1, line: 520, column: 10)
!2492 = !DILocation(line: 520, column: 15, scope: !2491)
!2493 = !DILocation(line: 520, column: 17, scope: !2491)
!2494 = !DILocation(line: 520, column: 29, scope: !2491)
!2495 = !DILocation(line: 520, column: 48, scope: !2491)
!2496 = !DILocation(line: 520, column: 51, scope: !2491)
!2497 = !DILocation(line: 520, column: 55, scope: !2491)
!2498 = !DILocation(line: 520, column: 32, scope: !2491)
!2499 = !DILocation(line: 520, column: 10, scope: !2486)
!2500 = !DILocation(line: 521, column: 22, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2502, file: !1, line: 521, column: 12)
!2502 = distinct !DILexicalBlock(scope: !2491, file: !1, line: 520, column: 61)
!2503 = !DILocation(line: 521, column: 25, scope: !2501)
!2504 = !DILocation(line: 521, column: 28, scope: !2501)
!2505 = !DILocation(line: 521, column: 33, scope: !2501)
!2506 = !DILocation(line: 521, column: 39, scope: !2501)
!2507 = !DILocation(line: 521, column: 45, scope: !2501)
!2508 = !DILocation(line: 521, column: 50, scope: !2501)
!2509 = !DILocation(line: 521, column: 12, scope: !2501)
!2510 = !DILocation(line: 521, column: 55, scope: !2501)
!2511 = !DILocation(line: 521, column: 12, scope: !2502)
!2512 = !DILocation(line: 522, column: 13, scope: !2501)
!2513 = !DILocation(line: 522, column: 16, scope: !2501)
!2514 = !DILocation(line: 522, column: 19, scope: !2501)
!2515 = !DILocation(line: 522, column: 24, scope: !2501)
!2516 = !DILocation(line: 522, column: 30, scope: !2501)
!2517 = !DILocation(line: 522, column: 36, scope: !2501)
!2518 = !DILocation(line: 522, column: 39, scope: !2501)
!2519 = !DILocation(line: 522, column: 42, scope: !2501)
!2520 = !DILocation(line: 522, column: 47, scope: !2501)
!2521 = !DILocation(line: 522, column: 52, scope: !2501)
!2522 = !DILocation(line: 522, column: 3, scope: !2501)
!2523 = !DILocation(line: 526, column: 6, scope: !2502)
!2524 = !DILocation(line: 520, column: 58, scope: !2491)
!2525 = !DILocation(line: 519, column: 38, scope: !2486)
!2526 = !DILocation(line: 519, column: 4, scope: !2486)
!2527 = distinct !{!2527, !2489, !2528, !1442}
!2528 = !DILocation(line: 526, column: 6, scope: !2481)
!2529 = !DILocation(line: 527, column: 2, scope: !2232)
!2530 = !DILocation(line: 528, column: 7, scope: !2233)
!2531 = !DILocation(line: 528, column: 19, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2234, file: !1, line: 528, column: 18)
!2533 = !DILocation(line: 528, column: 35, scope: !2532)
!2534 = !DILocation(line: 528, column: 39, scope: !2532)
!2535 = !DILocation(line: 528, column: 18, scope: !2234)
!2536 = !DILocation(line: 530, column: 37, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2532, file: !1, line: 528, column: 61)
!2538 = !DILocation(line: 530, column: 40, scope: !2537)
!2539 = !DILocation(line: 530, column: 43, scope: !2537)
!2540 = !DILocation(line: 530, column: 48, scope: !2537)
!2541 = !DILocation(line: 530, column: 54, scope: !2537)
!2542 = !DILocation(line: 530, column: 60, scope: !2537)
!2543 = !DILocation(line: 530, column: 64, scope: !2537)
!2544 = !DILocation(line: 530, column: 27, scope: !2537)
!2545 = !DILocation(line: 530, column: 2, scope: !2537)
!2546 = !DILocation(line: 530, column: 5, scope: !2537)
!2547 = !DILocation(line: 530, column: 10, scope: !2537)
!2548 = !DILocation(line: 530, column: 25, scope: !2537)
!2549 = !DILocation(line: 531, column: 7, scope: !2537)
!2550 = !DILocation(line: 532, column: 5, scope: !2226)
!2551 = !DILocation(line: 532, column: 5, scope: !2225)
!2552 = !DILocation(line: 503, column: 28, scope: !2226)
!2553 = !DILocation(line: 503, column: 5, scope: !2226)
!2554 = distinct !{!2554, !2416, !2555, !1442}
!2555 = !DILocation(line: 532, column: 5, scope: !2227)
!2556 = !DILocation(line: 534, column: 12, scope: !2238)
!2557 = !DILocation(line: 534, column: 10, scope: !2238)
!2558 = !DILocation(line: 534, column: 17, scope: !2237)
!2559 = !DILocation(line: 534, column: 24, scope: !2237)
!2560 = !DILocation(line: 534, column: 27, scope: !2237)
!2561 = !DILocation(line: 534, column: 31, scope: !2237)
!2562 = !DILocation(line: 534, column: 29, scope: !2237)
!2563 = !DILocation(line: 0, scope: !2237)
!2564 = !DILocation(line: 534, column: 5, scope: !2238)
!2565 = !DILocation(line: 535, column: 7, scope: !2236)
!2566 = !DILocation(line: 535, column: 17, scope: !2236)
!2567 = !DILocation(line: 535, column: 22, scope: !2236)
!2568 = !DILocation(line: 535, column: 26, scope: !2236)
!2569 = !DILocation(line: 536, column: 7, scope: !2236)
!2570 = !DILocation(line: 536, column: 13, scope: !2236)
!2571 = !DILocation(line: 536, column: 20, scope: !2236)
!2572 = !DILocation(line: 537, column: 7, scope: !2236)
!2573 = !DILocation(line: 537, column: 14, scope: !2236)
!2574 = !DILocation(line: 537, column: 20, scope: !2236)
!2575 = !DILocation(line: 537, column: 23, scope: !2236)
!2576 = !DILocation(line: 537, column: 26, scope: !2236)
!2577 = !DILocation(line: 538, column: 11, scope: !2243)
!2578 = !DILocation(line: 538, column: 28, scope: !2243)
!2579 = !DILocation(line: 538, column: 11, scope: !2236)
!2580 = !DILocation(line: 539, column: 2, scope: !2242)
!2581 = !DILocation(line: 539, column: 7, scope: !2242)
!2582 = !DILocation(line: 539, column: 12, scope: !2242)
!2583 = !DILocation(line: 540, column: 6, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2242, file: !1, line: 540, column: 6)
!2585 = !DILocation(line: 540, column: 9, scope: !2584)
!2586 = !DILocation(line: 540, column: 14, scope: !2584)
!2587 = !DILocation(line: 540, column: 32, scope: !2584)
!2588 = !DILocation(line: 540, column: 29, scope: !2584)
!2589 = !DILocation(line: 540, column: 6, scope: !2242)
!2590 = !DILocation(line: 541, column: 29, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2584, file: !1, line: 540, column: 47)
!2592 = !DILocation(line: 541, column: 32, scope: !2591)
!2593 = !DILocation(line: 541, column: 37, scope: !2591)
!2594 = !DILocation(line: 541, column: 40, scope: !2591)
!2595 = !DILocation(line: 541, column: 45, scope: !2591)
!2596 = !DILocation(line: 541, column: 4, scope: !2591)
!2597 = !DILocation(line: 541, column: 7, scope: !2591)
!2598 = !DILocation(line: 541, column: 12, scope: !2591)
!2599 = !DILocation(line: 541, column: 27, scope: !2591)
!2600 = !DILocation(line: 542, column: 4, scope: !2591)
!2601 = !DILocation(line: 544, column: 8, scope: !2242)
!2602 = !DILocation(line: 544, column: 12, scope: !2242)
!2603 = !DILocation(line: 544, column: 6, scope: !2242)
!2604 = !DILocation(line: 545, column: 6, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2242, file: !1, line: 545, column: 6)
!2606 = !DILocation(line: 545, column: 13, scope: !2605)
!2607 = !DILocation(line: 545, column: 16, scope: !2605)
!2608 = !DILocation(line: 545, column: 10, scope: !2605)
!2609 = !DILocation(line: 545, column: 6, scope: !2242)
!2610 = !DILocation(line: 545, column: 36, scope: !2605)
!2611 = !DILocation(line: 545, column: 39, scope: !2605)
!2612 = !DILocation(line: 545, column: 42, scope: !2605)
!2613 = !DILocation(line: 545, column: 47, scope: !2605)
!2614 = !DILocation(line: 545, column: 53, scope: !2605)
!2615 = !DILocation(line: 545, column: 59, scope: !2605)
!2616 = !DILocation(line: 545, column: 26, scope: !2605)
!2617 = !DILocation(line: 545, column: 24, scope: !2605)
!2618 = !DILocation(line: 545, column: 20, scope: !2605)
!2619 = !DILocation(line: 546, column: 8, scope: !2242)
!2620 = !DILocation(line: 546, column: 12, scope: !2242)
!2621 = !DILocation(line: 546, column: 6, scope: !2242)
!2622 = !DILocation(line: 547, column: 6, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2242, file: !1, line: 547, column: 6)
!2624 = !DILocation(line: 547, column: 13, scope: !2623)
!2625 = !DILocation(line: 547, column: 16, scope: !2623)
!2626 = !DILocation(line: 547, column: 10, scope: !2623)
!2627 = !DILocation(line: 547, column: 6, scope: !2242)
!2628 = !DILocation(line: 547, column: 36, scope: !2623)
!2629 = !DILocation(line: 547, column: 39, scope: !2623)
!2630 = !DILocation(line: 547, column: 42, scope: !2623)
!2631 = !DILocation(line: 547, column: 47, scope: !2623)
!2632 = !DILocation(line: 547, column: 53, scope: !2623)
!2633 = !DILocation(line: 547, column: 59, scope: !2623)
!2634 = !DILocation(line: 547, column: 26, scope: !2623)
!2635 = !DILocation(line: 547, column: 24, scope: !2623)
!2636 = !DILocation(line: 547, column: 20, scope: !2623)
!2637 = !DILocation(line: 548, column: 19, scope: !2247)
!2638 = !DILocation(line: 548, column: 23, scope: !2247)
!2639 = !DILocation(line: 548, column: 25, scope: !2247)
!2640 = !DILocation(line: 548, column: 6, scope: !2242)
!2641 = !DILocation(line: 554, column: 29, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2247, file: !1, line: 548, column: 38)
!2643 = !DILocation(line: 554, column: 4, scope: !2642)
!2644 = !DILocation(line: 554, column: 7, scope: !2642)
!2645 = !DILocation(line: 554, column: 12, scope: !2642)
!2646 = !DILocation(line: 554, column: 27, scope: !2642)
!2647 = !DILocation(line: 555, column: 2, scope: !2642)
!2648 = !DILocation(line: 556, column: 4, scope: !2246)
!2649 = !DILocation(line: 556, column: 11, scope: !2246)
!2650 = !DILocation(line: 557, column: 4, scope: !2246)
!2651 = !DILocation(line: 557, column: 9, scope: !2246)
!2652 = !DILocation(line: 557, column: 14, scope: !2246)
!2653 = !DILocation(line: 558, column: 29, scope: !2246)
!2654 = !DILocation(line: 558, column: 4, scope: !2246)
!2655 = !DILocation(line: 558, column: 7, scope: !2246)
!2656 = !DILocation(line: 558, column: 12, scope: !2246)
!2657 = !DILocation(line: 558, column: 27, scope: !2246)
!2658 = !DILocation(line: 559, column: 15, scope: !2253)
!2659 = !DILocation(line: 559, column: 17, scope: !2253)
!2660 = !DILocation(line: 559, column: 13, scope: !2253)
!2661 = !DILocation(line: 559, column: 9, scope: !2253)
!2662 = !DILocation(line: 559, column: 21, scope: !2252)
!2663 = !DILocation(line: 559, column: 27, scope: !2252)
!2664 = !DILocation(line: 559, column: 25, scope: !2252)
!2665 = !DILocation(line: 559, column: 4, scope: !2253)
!2666 = !DILocation(line: 560, column: 10, scope: !2251)
!2667 = !DILocation(line: 560, column: 15, scope: !2251)
!2668 = !DILocation(line: 560, column: 17, scope: !2251)
!2669 = !DILocation(line: 560, column: 29, scope: !2251)
!2670 = !DILocation(line: 560, column: 48, scope: !2251)
!2671 = !DILocation(line: 560, column: 51, scope: !2251)
!2672 = !DILocation(line: 560, column: 55, scope: !2251)
!2673 = !DILocation(line: 560, column: 32, scope: !2251)
!2674 = !DILocation(line: 560, column: 10, scope: !2252)
!2675 = !DILocation(line: 561, column: 8, scope: !2250)
!2676 = !DILocation(line: 561, column: 15, scope: !2250)
!2677 = !DILocation(line: 561, column: 22, scope: !2250)
!2678 = !DILocation(line: 561, column: 25, scope: !2250)
!2679 = !DILocation(line: 561, column: 28, scope: !2250)
!2680 = !DILocation(line: 561, column: 33, scope: !2250)
!2681 = !DILocation(line: 562, column: 8, scope: !2250)
!2682 = !DILocation(line: 562, column: 13, scope: !2250)
!2683 = !DILocation(line: 562, column: 18, scope: !2250)
!2684 = !DILocation(line: 562, column: 24, scope: !2250)
!2685 = !DILocation(line: 562, column: 29, scope: !2250)
!2686 = !DILocation(line: 562, column: 34, scope: !2250)
!2687 = !DILocation(line: 562, column: 40, scope: !2250)
!2688 = !DILocation(line: 563, column: 12, scope: !2259)
!2689 = !DILocation(line: 563, column: 17, scope: !2259)
!2690 = !DILocation(line: 563, column: 19, scope: !2259)
!2691 = !DILocation(line: 563, column: 12, scope: !2250)
!2692 = !DILocation(line: 564, column: 3, scope: !2258)
!2693 = !DILocation(line: 564, column: 10, scope: !2258)
!2694 = !DILocation(line: 564, column: 17, scope: !2258)
!2695 = !DILocation(line: 564, column: 20, scope: !2258)
!2696 = !DILocation(line: 564, column: 23, scope: !2258)
!2697 = !DILocation(line: 565, column: 7, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2258, file: !1, line: 565, column: 7)
!2699 = !DILocation(line: 565, column: 12, scope: !2698)
!2700 = !DILocation(line: 565, column: 14, scope: !2698)
!2701 = !DILocation(line: 565, column: 7, scope: !2258)
!2702 = !DILocation(line: 566, column: 23, scope: !2698)
!2703 = !DILocation(line: 566, column: 44, scope: !2698)
!2704 = !DILocation(line: 566, column: 48, scope: !2698)
!2705 = !DILocation(line: 566, column: 51, scope: !2698)
!2706 = !DILocation(line: 566, column: 54, scope: !2698)
!2707 = !DILocation(line: 566, column: 59, scope: !2698)
!2708 = !DILocation(line: 566, column: 26, scope: !2698)
!2709 = !DILocation(line: 567, column: 9, scope: !2698)
!2710 = !DILocation(line: 567, column: 14, scope: !2698)
!2711 = !DILocation(line: 566, column: 11, scope: !2698)
!2712 = !DILocation(line: 566, column: 9, scope: !2698)
!2713 = !DILocation(line: 566, column: 5, scope: !2698)
!2714 = !DILocation(line: 569, column: 29, scope: !2698)
!2715 = !DILocation(line: 569, column: 32, scope: !2698)
!2716 = !DILocation(line: 569, column: 11, scope: !2698)
!2717 = !DILocation(line: 569, column: 9, scope: !2698)
!2718 = !DILocation(line: 570, column: 7, scope: !2262)
!2719 = !DILocation(line: 570, column: 12, scope: !2262)
!2720 = !DILocation(line: 570, column: 14, scope: !2262)
!2721 = !DILocation(line: 570, column: 26, scope: !2262)
!2722 = !DILocation(line: 570, column: 29, scope: !2262)
!2723 = !DILocation(line: 570, column: 34, scope: !2262)
!2724 = !DILocation(line: 570, column: 36, scope: !2262)
!2725 = !DILocation(line: 570, column: 7, scope: !2258)
!2726 = !DILocation(line: 571, column: 5, scope: !2261)
!2727 = !DILocation(line: 571, column: 12, scope: !2261)
!2728 = !DILocation(line: 571, column: 19, scope: !2261)
!2729 = !DILocation(line: 571, column: 22, scope: !2261)
!2730 = !DILocation(line: 571, column: 25, scope: !2261)
!2731 = !DILocation(line: 571, column: 30, scope: !2261)
!2732 = !DILocation(line: 572, column: 11, scope: !2261)
!2733 = !DILocation(line: 572, column: 9, scope: !2261)
!2734 = !DILocation(line: 573, column: 3, scope: !2262)
!2735 = !DILocation(line: 573, column: 3, scope: !2261)
!2736 = !DILocation(line: 574, column: 8, scope: !2259)
!2737 = !DILocation(line: 574, column: 8, scope: !2258)
!2738 = !DILocation(line: 575, column: 14, scope: !2250)
!2739 = !DILocation(line: 575, column: 12, scope: !2250)
!2740 = !DILocation(line: 576, column: 24, scope: !2250)
!2741 = !DILocation(line: 576, column: 27, scope: !2250)
!2742 = !DILocation(line: 576, column: 30, scope: !2250)
!2743 = !DILocation(line: 576, column: 35, scope: !2250)
!2744 = !DILocation(line: 576, column: 41, scope: !2250)
!2745 = !DILocation(line: 576, column: 47, scope: !2250)
!2746 = !DILocation(line: 576, column: 52, scope: !2250)
!2747 = !DILocation(line: 576, column: 14, scope: !2250)
!2748 = !DILocation(line: 576, column: 12, scope: !2250)
!2749 = !DILocation(line: 577, column: 12, scope: !2265)
!2750 = !DILocation(line: 577, column: 16, scope: !2265)
!2751 = !DILocation(line: 577, column: 12, scope: !2250)
!2752 = !DILocation(line: 578, column: 3, scope: !2264)
!2753 = !DILocation(line: 578, column: 10, scope: !2264)
!2754 = !DILocation(line: 578, column: 17, scope: !2264)
!2755 = !DILocation(line: 578, column: 20, scope: !2264)
!2756 = !DILocation(line: 578, column: 23, scope: !2264)
!2757 = !DILocation(line: 578, column: 28, scope: !2264)
!2758 = !DILocation(line: 580, column: 19, scope: !2264)
!2759 = !DILocation(line: 580, column: 22, scope: !2264)
!2760 = !DILocation(line: 580, column: 25, scope: !2264)
!2761 = !DILocation(line: 580, column: 30, scope: !2264)
!2762 = !DILocation(line: 580, column: 36, scope: !2264)
!2763 = !DILocation(line: 580, column: 42, scope: !2264)
!2764 = !DILocation(line: 580, column: 47, scope: !2264)
!2765 = !DILocation(line: 580, column: 9, scope: !2264)
!2766 = !DILocation(line: 580, column: 7, scope: !2264)
!2767 = !DILocation(line: 581, column: 9, scope: !2264)
!2768 = !DILocation(line: 581, column: 7, scope: !2264)
!2769 = !DILocation(line: 582, column: 8, scope: !2265)
!2770 = !DILocation(line: 582, column: 8, scope: !2264)
!2771 = !DILocation(line: 599, column: 14, scope: !2250)
!2772 = !DILocation(line: 599, column: 12, scope: !2250)
!2773 = !DILocation(line: 600, column: 6, scope: !2251)
!2774 = !DILocation(line: 600, column: 6, scope: !2250)
!2775 = !DILocation(line: 600, column: 30, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2251, file: !1, line: 600, column: 17)
!2777 = !DILocation(line: 600, column: 35, scope: !2776)
!2778 = !DILocation(line: 600, column: 37, scope: !2776)
!2779 = !DILocation(line: 600, column: 48, scope: !2776)
!2780 = !DILocation(line: 600, column: 51, scope: !2776)
!2781 = !DILocation(line: 600, column: 55, scope: !2776)
!2782 = !DILocation(line: 600, column: 57, scope: !2776)
!2783 = !DILocation(line: 600, column: 17, scope: !2251)
!2784 = !DILocation(line: 601, column: 8, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2776, file: !1, line: 600, column: 69)
!2786 = !DILocation(line: 602, column: 6, scope: !2785)
!2787 = !DILocation(line: 560, column: 58, scope: !2251)
!2788 = !DILocation(line: 559, column: 38, scope: !2252)
!2789 = !DILocation(line: 559, column: 4, scope: !2252)
!2790 = distinct !{!2790, !2665, !2791, !1442}
!2791 = !DILocation(line: 602, column: 6, scope: !2253)
!2792 = !DILocation(line: 603, column: 2, scope: !2247)
!2793 = !DILocation(line: 604, column: 7, scope: !2243)
!2794 = !DILocation(line: 604, column: 7, scope: !2242)
!2795 = !DILocation(line: 605, column: 5, scope: !2237)
!2796 = !DILocation(line: 605, column: 5, scope: !2236)
!2797 = !DILocation(line: 534, column: 38, scope: !2237)
!2798 = !DILocation(line: 534, column: 5, scope: !2237)
!2799 = distinct !{!2799, !2564, !2800, !1442}
!2800 = !DILocation(line: 605, column: 5, scope: !2238)
!2801 = !DILocation(line: 606, column: 3, scope: !2223)
!2802 = !DILocation(line: 606, column: 3, scope: !2222)
!2803 = !DILocation(line: 607, column: 13, scope: !2195)
!2804 = !DILocation(line: 607, column: 16, scope: !2195)
!2805 = !DILocation(line: 607, column: 23, scope: !2195)
!2806 = !DILocation(line: 607, column: 26, scope: !2195)
!2807 = !DILocation(line: 607, column: 21, scope: !2195)
!2808 = !DILocation(line: 607, column: 3, scope: !2195)
!2809 = !DILocation(line: 607, column: 6, scope: !2195)
!2810 = !DILocation(line: 607, column: 11, scope: !2195)
!2811 = !DILocation(line: 608, column: 16, scope: !2195)
!2812 = !DILocation(line: 608, column: 22, scope: !2195)
!2813 = !DILocation(line: 608, column: 31, scope: !2195)
!2814 = !DILocation(line: 608, column: 34, scope: !2195)
!2815 = !DILocation(line: 608, column: 29, scope: !2195)
!2816 = !DILocation(line: 608, column: 3, scope: !2195)
!2817 = !DILocation(line: 608, column: 6, scope: !2195)
!2818 = !DILocation(line: 608, column: 14, scope: !2195)
!2819 = !DILocation(line: 609, column: 15, scope: !2195)
!2820 = !DILocation(line: 609, column: 3, scope: !2195)
!2821 = !DILocation(line: 610, column: 7, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2195, file: !1, line: 610, column: 7)
!2823 = !DILocation(line: 610, column: 7, scope: !2195)
!2824 = !DILocation(line: 611, column: 5, scope: !2822)
!2825 = !DILocation(line: 612, column: 1, scope: !2195)
!2826 = distinct !DISubprogram(name: "snap_dedup", scope: !1, file: !1, line: 411, type: !2827, scopeLine: 412, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2829)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{!755, !937, !440, !417, !485}
!2829 = !{!2830, !2831, !2832, !2833, !2834}
!2830 = !DILocalVariable(name: "J", arg: 1, scope: !2826, file: !1, line: 411, type: !937)
!2831 = !DILocalVariable(name: "map", arg: 2, scope: !2826, file: !1, line: 411, type: !440)
!2832 = !DILocalVariable(name: "nmax", arg: 3, scope: !2826, file: !1, line: 411, type: !417)
!2833 = !DILocalVariable(name: "ref", arg: 4, scope: !2826, file: !1, line: 411, type: !485)
!2834 = !DILocalVariable(name: "j", scope: !2826, file: !1, line: 413, type: !417)
!2835 = !DILocation(line: 411, column: 35, scope: !2826)
!2836 = !DILocation(line: 411, column: 49, scope: !2826)
!2837 = !DILocation(line: 411, column: 60, scope: !2826)
!2838 = !DILocation(line: 411, column: 72, scope: !2826)
!2839 = !DILocation(line: 413, column: 3, scope: !2826)
!2840 = !DILocation(line: 413, column: 9, scope: !2826)
!2841 = !DILocation(line: 414, column: 10, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2826, file: !1, line: 414, column: 3)
!2843 = !DILocation(line: 414, column: 8, scope: !2842)
!2844 = !DILocation(line: 414, column: 15, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2842, file: !1, line: 414, column: 3)
!2846 = !DILocation(line: 414, column: 19, scope: !2845)
!2847 = !DILocation(line: 414, column: 17, scope: !2845)
!2848 = !DILocation(line: 414, column: 3, scope: !2842)
!2849 = !DILocation(line: 415, column: 9, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2845, file: !1, line: 415, column: 9)
!2851 = !DILocation(line: 415, column: 29, scope: !2850)
!2852 = !DILocation(line: 415, column: 26, scope: !2850)
!2853 = !DILocation(line: 415, column: 9, scope: !2845)
!2854 = !DILocation(line: 416, column: 14, scope: !2850)
!2855 = !DILocation(line: 416, column: 17, scope: !2850)
!2856 = !DILocation(line: 416, column: 22, scope: !2850)
!2857 = !DILocation(line: 416, column: 41, scope: !2850)
!2858 = !DILocation(line: 416, column: 7, scope: !2850)
!2859 = !DILocation(line: 414, column: 26, scope: !2845)
!2860 = !DILocation(line: 414, column: 3, scope: !2845)
!2861 = distinct !{!2861, !2848, !2862, !1442}
!2862 = !DILocation(line: 416, column: 65, scope: !2842)
!2863 = !DILocation(line: 417, column: 3, scope: !2826)
!2864 = !DILocation(line: 418, column: 1, scope: !2826)
!2865 = distinct !DISubprogram(name: "snap_replay_const", scope: !1, file: !1, line: 396, type: !2866, scopeLine: 397, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2868)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{!755, !937, !489}
!2868 = !{!2869, !2870}
!2869 = !DILocalVariable(name: "J", arg: 1, scope: !2865, file: !1, line: 396, type: !937)
!2870 = !DILocalVariable(name: "ir", arg: 2, scope: !2865, file: !1, line: 396, type: !489)
!2871 = !DILocation(line: 396, column: 42, scope: !2865)
!2872 = !DILocation(line: 396, column: 52, scope: !2865)
!2873 = !DILocation(line: 399, column: 17, scope: !2865)
!2874 = !DILocation(line: 399, column: 21, scope: !2865)
!2875 = !DILocation(line: 399, column: 11, scope: !2865)
!2876 = !DILocation(line: 399, column: 3, scope: !2865)
!2877 = !DILocation(line: 400, column: 24, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2865, file: !1, line: 399, column: 24)
!2879 = !DILocation(line: 400, column: 17, scope: !2878)
!2880 = !DILocation(line: 401, column: 35, scope: !2878)
!2881 = !DILocation(line: 401, column: 38, scope: !2878)
!2882 = !DILocation(line: 401, column: 42, scope: !2878)
!2883 = !DILocation(line: 401, column: 24, scope: !2878)
!2884 = !DILocation(line: 401, column: 17, scope: !2878)
!2885 = !DILocation(line: 402, column: 33, scope: !2878)
!2886 = !DILocation(line: 402, column: 36, scope: !2878)
!2887 = !DILocation(line: 402, column: 48, scope: !2878)
!2888 = !DILocation(line: 402, column: 23, scope: !2878)
!2889 = !DILocation(line: 402, column: 16, scope: !2878)
!2890 = !DILocation(line: 404, column: 22, scope: !2878)
!2891 = !DILocation(line: 404, column: 31, scope: !2878)
!2892 = !DILocation(line: 404, column: 35, scope: !2878)
!2893 = !DILocation(line: 404, column: 25, scope: !2878)
!2894 = !DILocation(line: 404, column: 38, scope: !2878)
!2895 = !DILocation(line: 404, column: 50, scope: !2878)
!2896 = !DILocation(line: 404, column: 12, scope: !2878)
!2897 = !DILocation(line: 404, column: 5, scope: !2878)
!2898 = !DILocation(line: 405, column: 24, scope: !2878)
!2899 = !DILocation(line: 405, column: 17, scope: !2878)
!2900 = !DILocation(line: 406, column: 27, scope: !2878)
!2901 = !DILocation(line: 408, column: 1, scope: !2865)
!2902 = distinct !DISubprogram(name: "snap_pref", scope: !1, file: !1, line: 421, type: !2903, scopeLine: 423, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2905)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{!755, !937, !470, !440, !417, !1987, !485}
!2905 = !{!2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913}
!2906 = !DILocalVariable(name: "J", arg: 1, scope: !2902, file: !1, line: 421, type: !937)
!2907 = !DILocalVariable(name: "T", arg: 2, scope: !2902, file: !1, line: 421, type: !470)
!2908 = !DILocalVariable(name: "map", arg: 3, scope: !2902, file: !1, line: 421, type: !440)
!2909 = !DILocalVariable(name: "nmax", arg: 4, scope: !2902, file: !1, line: 421, type: !417)
!2910 = !DILocalVariable(name: "seen", arg: 5, scope: !2902, file: !1, line: 422, type: !1987)
!2911 = !DILocalVariable(name: "ref", arg: 6, scope: !2902, file: !1, line: 422, type: !485)
!2912 = !DILocalVariable(name: "ir", scope: !2902, file: !1, line: 424, type: !489)
!2913 = !DILocalVariable(name: "tr", scope: !2902, file: !1, line: 425, type: !755)
!2914 = !DILocation(line: 421, column: 34, scope: !2902)
!2915 = !DILocation(line: 421, column: 46, scope: !2902)
!2916 = !DILocation(line: 421, column: 60, scope: !2902)
!2917 = !DILocation(line: 421, column: 71, scope: !2902)
!2918 = !DILocation(line: 422, column: 21, scope: !2902)
!2919 = !DILocation(line: 422, column: 33, scope: !2902)
!2920 = !DILocation(line: 424, column: 3, scope: !2902)
!2921 = !DILocation(line: 424, column: 10, scope: !2902)
!2922 = !DILocation(line: 424, column: 16, scope: !2902)
!2923 = !DILocation(line: 424, column: 19, scope: !2902)
!2924 = !DILocation(line: 424, column: 22, scope: !2902)
!2925 = !DILocation(line: 425, column: 3, scope: !2902)
!2926 = !DILocation(line: 425, column: 8, scope: !2902)
!2927 = !DILocation(line: 426, column: 7, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2902, file: !1, line: 426, column: 7)
!2929 = !DILocation(line: 426, column: 7, scope: !2902)
!2930 = !DILocation(line: 427, column: 28, scope: !2928)
!2931 = !DILocation(line: 427, column: 31, scope: !2928)
!2932 = !DILocation(line: 427, column: 10, scope: !2928)
!2933 = !DILocation(line: 427, column: 8, scope: !2928)
!2934 = !DILocation(line: 427, column: 5, scope: !2928)
!2935 = !DILocation(line: 428, column: 13, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2928, file: !1, line: 428, column: 12)
!2937 = !DILocation(line: 428, column: 12, scope: !2928)
!2938 = !DILocation(line: 429, column: 8, scope: !2936)
!2939 = !DILocation(line: 429, column: 5, scope: !2936)
!2940 = !DILocation(line: 430, column: 13, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2936, file: !1, line: 430, column: 12)
!2942 = !DILocation(line: 430, column: 34, scope: !2941)
!2943 = !DILocation(line: 430, column: 54, scope: !2941)
!2944 = !DILocation(line: 430, column: 57, scope: !2941)
!2945 = !DILocation(line: 430, column: 62, scope: !2941)
!2946 = !DILocation(line: 430, column: 68, scope: !2941)
!2947 = !DILocation(line: 430, column: 43, scope: !2941)
!2948 = !DILocation(line: 430, column: 41, scope: !2941)
!2949 = !DILocation(line: 430, column: 74, scope: !2941)
!2950 = !DILocation(line: 430, column: 12, scope: !2936)
!2951 = !DILocation(line: 431, column: 10, scope: !2941)
!2952 = !DILocation(line: 431, column: 8, scope: !2941)
!2953 = !DILocation(line: 431, column: 5, scope: !2941)
!2954 = !DILocation(line: 432, column: 10, scope: !2902)
!2955 = !DILocation(line: 433, column: 1, scope: !2902)
!2956 = !DILocation(line: 432, column: 3, scope: !2902)
!2957 = distinct !DISubprogram(name: "snap_sunk_store", scope: !1, file: !1, line: 449, type: !2958, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2960)
!2958 = !DISubroutineType(types: !2959)
!2959 = !{!467, !470, !489, !489}
!2960 = !{!2961, !2962, !2963}
!2961 = !DILocalVariable(name: "T", arg: 1, scope: !2957, file: !1, line: 449, type: !470)
!2962 = !DILocalVariable(name: "ira", arg: 2, scope: !2957, file: !1, line: 449, type: !489)
!2963 = !DILocalVariable(name: "irs", arg: 3, scope: !2957, file: !1, line: 449, type: !489)
!2964 = !DILocation(line: 449, column: 48, scope: !2957)
!2965 = !DILocation(line: 449, column: 58, scope: !2957)
!2966 = !DILocation(line: 449, column: 70, scope: !2957)
!2967 = !DILocation(line: 451, column: 7, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2957, file: !1, line: 451, column: 7)
!2969 = !DILocation(line: 451, column: 12, scope: !2968)
!2970 = !DILocation(line: 451, column: 14, scope: !2968)
!2971 = !DILocation(line: 451, column: 7, scope: !2957)
!2972 = !DILocation(line: 452, column: 13, scope: !2968)
!2973 = !DILocation(line: 452, column: 19, scope: !2968)
!2974 = !DILocation(line: 452, column: 24, scope: !2968)
!2975 = !DILocation(line: 452, column: 17, scope: !2968)
!2976 = !DILocation(line: 452, column: 29, scope: !2968)
!2977 = !DILocation(line: 452, column: 26, scope: !2968)
!2978 = !DILocation(line: 452, column: 5, scope: !2968)
!2979 = !DILocation(line: 453, column: 27, scope: !2957)
!2980 = !DILocation(line: 453, column: 30, scope: !2957)
!2981 = !DILocation(line: 453, column: 35, scope: !2957)
!2982 = !DILocation(line: 453, column: 10, scope: !2957)
!2983 = !DILocation(line: 453, column: 3, scope: !2957)
!2984 = !DILocation(line: 454, column: 1, scope: !2957)
!2985 = !DISubprogram(name: "lj_opt_fold", scope: !1261, file: !1261, line: 95, type: !1295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2986 = !DISubprogram(name: "lj_ir_kslot", scope: !1261, file: !1261, line: 50, type: !2987, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!755, !937, !755, !485}
!2989 = distinct !DISubprogram(name: "lj_snap_restore", scope: !1, file: !1, line: 829, type: !2990, scopeLine: 830, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2992)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{!751, !937, !634}
!2992 = !{!2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3010, !3013, !3014, !3015, !3018}
!2993 = !DILocalVariable(name: "J", arg: 1, scope: !2989, file: !1, line: 829, type: !937)
!2994 = !DILocalVariable(name: "exptr", arg: 2, scope: !2989, file: !1, line: 829, type: !634)
!2995 = !DILocalVariable(name: "ex", scope: !2989, file: !1, line: 831, type: !447)
!2996 = !DILocalVariable(name: "snapno", scope: !2989, file: !1, line: 832, type: !1979)
!2997 = !DILocalVariable(name: "T", scope: !2989, file: !1, line: 833, type: !470)
!2998 = !DILocalVariable(name: "snap", scope: !2989, file: !1, line: 834, type: !423)
!2999 = !DILocalVariable(name: "n", scope: !2989, file: !1, line: 835, type: !417)
!3000 = !DILocalVariable(name: "nent", scope: !2989, file: !1, line: 835, type: !417)
!3001 = !DILocalVariable(name: "map", scope: !2989, file: !1, line: 836, type: !440)
!3002 = !DILocalVariable(name: "frame", scope: !2989, file: !1, line: 843, type: !627)
!3003 = !DILocalVariable(name: "rfilt", scope: !2989, file: !1, line: 844, type: !1987)
!3004 = !DILocalVariable(name: "pc", scope: !2989, file: !1, line: 845, type: !751)
!3005 = !DILocalVariable(name: "L", scope: !2989, file: !1, line: 846, type: !685)
!3006 = !DILocalVariable(name: "sn", scope: !3007, file: !1, line: 863, type: !441)
!3007 = distinct !DILexicalBlock(scope: !3008, file: !1, line: 862, column: 30)
!3008 = distinct !DILexicalBlock(scope: !3009, file: !1, line: 862, column: 3)
!3009 = distinct !DILexicalBlock(scope: !2989, file: !1, line: 862, column: 3)
!3010 = !DILocalVariable(name: "o", scope: !3011, file: !1, line: 865, type: !627)
!3011 = distinct !DILexicalBlock(scope: !3012, file: !1, line: 864, column: 33)
!3012 = distinct !DILexicalBlock(scope: !3007, file: !1, line: 864, column: 9)
!3013 = !DILocalVariable(name: "ref", scope: !3011, file: !1, line: 866, type: !485)
!3014 = !DILocalVariable(name: "ir", scope: !3011, file: !1, line: 867, type: !489)
!3015 = !DILocalVariable(name: "j", scope: !3016, file: !1, line: 869, type: !417)
!3016 = distinct !DILexicalBlock(scope: !3017, file: !1, line: 868, column: 30)
!3017 = distinct !DILexicalBlock(scope: !3011, file: !1, line: 868, column: 11)
!3018 = !DILabel(scope: !3016, name: "dupslot", file: !1, line: 876)
!3019 = !DILocation(line: 829, column: 41, scope: !2989)
!3020 = !DILocation(line: 829, column: 50, scope: !2989)
!3021 = !DILocation(line: 831, column: 3, scope: !2989)
!3022 = !DILocation(line: 831, column: 14, scope: !2989)
!3023 = !DILocation(line: 831, column: 32, scope: !2989)
!3024 = !DILocation(line: 832, column: 3, scope: !2989)
!3025 = !DILocation(line: 832, column: 10, scope: !2989)
!3026 = !DILocation(line: 832, column: 19, scope: !2989)
!3027 = !DILocation(line: 832, column: 22, scope: !2989)
!3028 = !DILocation(line: 833, column: 3, scope: !2989)
!3029 = !DILocation(line: 833, column: 12, scope: !2989)
!3030 = !DILocation(line: 833, column: 16, scope: !2989)
!3031 = !{!1088, !1068, i64 392}
!3032 = !{!1088, !1073, i64 3032}
!3033 = !{!1090, !1091, i64 0}
!3034 = !DILocation(line: 834, column: 3, scope: !2989)
!3035 = !DILocation(line: 834, column: 13, scope: !2989)
!3036 = !DILocation(line: 834, column: 21, scope: !2989)
!3037 = !DILocation(line: 834, column: 24, scope: !2989)
!3038 = !DILocation(line: 834, column: 29, scope: !2989)
!3039 = !DILocation(line: 835, column: 3, scope: !2989)
!3040 = !DILocation(line: 835, column: 9, scope: !2989)
!3041 = !DILocation(line: 835, column: 12, scope: !2989)
!3042 = !DILocation(line: 835, column: 19, scope: !2989)
!3043 = !DILocation(line: 835, column: 25, scope: !2989)
!3044 = !DILocation(line: 836, column: 3, scope: !2989)
!3045 = !DILocation(line: 836, column: 14, scope: !2989)
!3046 = !DILocation(line: 836, column: 21, scope: !2989)
!3047 = !DILocation(line: 836, column: 24, scope: !2989)
!3048 = !DILocation(line: 836, column: 32, scope: !2989)
!3049 = !DILocation(line: 836, column: 38, scope: !2989)
!3050 = !DILocation(line: 843, column: 3, scope: !2989)
!3051 = !DILocation(line: 843, column: 11, scope: !2989)
!3052 = !DILocation(line: 844, column: 3, scope: !2989)
!3053 = !DILocation(line: 844, column: 15, scope: !2989)
!3054 = !DILocation(line: 844, column: 41, scope: !2989)
!3055 = !DILocation(line: 844, column: 44, scope: !2989)
!3056 = !DILocation(line: 844, column: 23, scope: !2989)
!3057 = !DILocation(line: 845, column: 3, scope: !2989)
!3058 = !DILocation(line: 845, column: 16, scope: !2989)
!3059 = !DILocation(line: 845, column: 30, scope: !2989)
!3060 = !DILocation(line: 845, column: 34, scope: !2989)
!3061 = !DILocation(line: 845, column: 21, scope: !2989)
!3062 = !DILocation(line: 846, column: 3, scope: !2989)
!3063 = !DILocation(line: 846, column: 14, scope: !2989)
!3064 = !DILocation(line: 846, column: 18, scope: !2989)
!3065 = !DILocation(line: 846, column: 21, scope: !2989)
!3066 = !DILocation(line: 849, column: 3, scope: !2989)
!3067 = !{!1489, !1068, i64 80}
!3068 = !{!1093, !1091, i64 0}
!3069 = !DILocation(line: 852, column: 7, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !2989, file: !1, line: 852, column: 7)
!3071 = !{!1202, !1069, i64 7}
!3072 = !{!1489, !1091, i64 48}
!3073 = !DILocation(line: 852, column: 7, scope: !2989)
!3074 = !DILocation(line: 853, column: 14, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3070, file: !1, line: 852, column: 67)
!3076 = !{!3077, !1069, i64 11}
!3077 = !{!"GCproto", !1090, i64 0, !1069, i64 8, !1069, i64 9, !1069, i64 10, !1069, i64 11, !1073, i64 12, !1073, i64 16, !1090, i64 24, !1093, i64 32, !1093, i64 40, !1073, i64 48, !1073, i64 52, !1073, i64 56, !1069, i64 60, !1069, i64 61, !1092, i64 62, !1090, i64 64, !1073, i64 72, !1073, i64 76, !1093, i64 80, !1093, i64 88, !1093, i64 96}
!3078 = !DILocation(line: 853, column: 5, scope: !3075)
!3079 = !DILocation(line: 853, column: 8, scope: !3075)
!3080 = !DILocation(line: 853, column: 12, scope: !3075)
!3081 = !{!1489, !1068, i64 40}
!3082 = !DILocation(line: 854, column: 24, scope: !3075)
!3083 = !DILocation(line: 854, column: 27, scope: !3075)
!3084 = !DILocation(line: 854, column: 33, scope: !3075)
!3085 = !DILocation(line: 854, column: 43, scope: !3075)
!3086 = !DILocation(line: 854, column: 58, scope: !3075)
!3087 = !DILocation(line: 854, column: 41, scope: !3075)
!3088 = !DILocation(line: 854, column: 5, scope: !3075)
!3089 = !DILocation(line: 855, column: 3, scope: !3075)
!3090 = !DILocation(line: 858, column: 11, scope: !2989)
!3091 = !DILocation(line: 858, column: 14, scope: !2989)
!3092 = !DILocation(line: 858, column: 18, scope: !2989)
!3093 = !DILocation(line: 858, column: 20, scope: !2989)
!3094 = !DILocation(line: 858, column: 9, scope: !2989)
!3095 = !DILocation(line: 862, column: 10, scope: !3009)
!3096 = !DILocation(line: 862, column: 8, scope: !3009)
!3097 = !DILocation(line: 862, column: 15, scope: !3008)
!3098 = !DILocation(line: 862, column: 19, scope: !3008)
!3099 = !DILocation(line: 862, column: 17, scope: !3008)
!3100 = !DILocation(line: 862, column: 3, scope: !3009)
!3101 = !DILocation(line: 863, column: 5, scope: !3007)
!3102 = !DILocation(line: 863, column: 15, scope: !3007)
!3103 = !DILocation(line: 863, column: 20, scope: !3007)
!3104 = !DILocation(line: 863, column: 24, scope: !3007)
!3105 = !DILocation(line: 864, column: 11, scope: !3012)
!3106 = !DILocation(line: 864, column: 14, scope: !3012)
!3107 = !DILocation(line: 864, column: 9, scope: !3007)
!3108 = !DILocation(line: 865, column: 7, scope: !3011)
!3109 = !DILocation(line: 865, column: 15, scope: !3011)
!3110 = !DILocation(line: 865, column: 20, scope: !3011)
!3111 = !DILocation(line: 865, column: 26, scope: !3011)
!3112 = !DILocation(line: 866, column: 7, scope: !3011)
!3113 = !DILocation(line: 866, column: 13, scope: !3011)
!3114 = !DILocation(line: 866, column: 19, scope: !3011)
!3115 = !DILocation(line: 867, column: 7, scope: !3011)
!3116 = !DILocation(line: 867, column: 14, scope: !3011)
!3117 = !DILocation(line: 867, column: 20, scope: !3011)
!3118 = !DILocation(line: 867, column: 23, scope: !3011)
!3119 = !DILocation(line: 867, column: 26, scope: !3011)
!3120 = !DILocation(line: 868, column: 11, scope: !3017)
!3121 = !DILocation(line: 868, column: 15, scope: !3017)
!3122 = !DILocation(line: 868, column: 17, scope: !3017)
!3123 = !DILocation(line: 868, column: 11, scope: !3011)
!3124 = !DILocation(line: 869, column: 2, scope: !3016)
!3125 = !DILocation(line: 869, column: 8, scope: !3016)
!3126 = !DILocation(line: 870, column: 9, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !3016, file: !1, line: 870, column: 2)
!3128 = !DILocation(line: 870, column: 7, scope: !3127)
!3129 = !DILocation(line: 870, column: 14, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3127, file: !1, line: 870, column: 2)
!3131 = !DILocation(line: 870, column: 18, scope: !3130)
!3132 = !DILocation(line: 870, column: 16, scope: !3130)
!3133 = !DILocation(line: 870, column: 2, scope: !3127)
!3134 = !DILocation(line: 871, column: 8, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3130, file: !1, line: 871, column: 8)
!3136 = !DILocation(line: 871, column: 28, scope: !3135)
!3137 = !DILocation(line: 871, column: 25, scope: !3135)
!3138 = !DILocation(line: 871, column: 8, scope: !3130)
!3139 = !DILocation(line: 872, column: 13, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3135, file: !1, line: 871, column: 33)
!3141 = !DILocation(line: 872, column: 16, scope: !3140)
!3142 = !DILocation(line: 872, column: 20, scope: !3140)
!3143 = !DILocation(line: 872, column: 26, scope: !3140)
!3144 = !DILocation(line: 872, column: 6, scope: !3140)
!3145 = !DILocation(line: 873, column: 6, scope: !3140)
!3146 = !DILocation(line: 870, column: 22, scope: !3130)
!3147 = !DILocation(line: 870, column: 2, scope: !3130)
!3148 = distinct !{!3148, !3133, !3149, !1442}
!3149 = !DILocation(line: 874, column: 4, scope: !3127)
!3150 = !DILocation(line: 875, column: 14, scope: !3016)
!3151 = !DILocation(line: 875, column: 17, scope: !3016)
!3152 = !DILocation(line: 875, column: 20, scope: !3016)
!3153 = !DILocation(line: 875, column: 24, scope: !3016)
!3154 = !DILocation(line: 875, column: 32, scope: !3016)
!3155 = !DILocation(line: 875, column: 39, scope: !3016)
!3156 = !DILocation(line: 875, column: 43, scope: !3016)
!3157 = !DILocation(line: 875, column: 2, scope: !3016)
!3158 = !DILocation(line: 876, column: 7, scope: !3016)
!3159 = !DILocation(line: 878, column: 7, scope: !3017)
!3160 = !DILocation(line: 879, column: 23, scope: !3011)
!3161 = !DILocation(line: 879, column: 26, scope: !3011)
!3162 = !DILocation(line: 879, column: 29, scope: !3011)
!3163 = !DILocation(line: 879, column: 33, scope: !3011)
!3164 = !DILocation(line: 879, column: 41, scope: !3011)
!3165 = !DILocation(line: 879, column: 48, scope: !3011)
!3166 = !DILocation(line: 879, column: 53, scope: !3011)
!3167 = !DILocation(line: 879, column: 7, scope: !3011)
!3168 = !DILocation(line: 891, column: 5, scope: !3012)
!3169 = !DILocation(line: 891, column: 5, scope: !3011)
!3170 = !DILocation(line: 892, column: 3, scope: !3008)
!3171 = !DILocation(line: 892, column: 3, scope: !3007)
!3172 = !DILocation(line: 862, column: 26, scope: !3008)
!3173 = !DILocation(line: 862, column: 3, scope: !3008)
!3174 = distinct !{!3174, !3100, !3175, !1442}
!3175 = !DILocation(line: 892, column: 3, scope: !3009)
!3176 = !DILocation(line: 894, column: 15, scope: !2989)
!3177 = !DILocation(line: 894, column: 19, scope: !2989)
!3178 = !DILocation(line: 894, column: 23, scope: !2989)
!3179 = !DILocation(line: 894, column: 31, scope: !2989)
!3180 = !DILocation(line: 894, column: 3, scope: !2989)
!3181 = !DILocation(line: 894, column: 6, scope: !2989)
!3182 = !DILocation(line: 894, column: 11, scope: !2989)
!3183 = !DILocation(line: 899, column: 11, scope: !2989)
!3184 = !DILocation(line: 899, column: 3, scope: !2989)
!3185 = !DILocation(line: 901, column: 9, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3187, file: !1, line: 901, column: 9)
!3187 = distinct !DILexicalBlock(scope: !2989, file: !1, line: 899, column: 23)
!3188 = !DILocation(line: 901, column: 20, scope: !3186)
!3189 = !DILocation(line: 901, column: 9, scope: !3187)
!3190 = !DILocation(line: 902, column: 16, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !3186, file: !1, line: 901, column: 32)
!3192 = !DILocation(line: 902, column: 7, scope: !3191)
!3193 = !DILocation(line: 902, column: 10, scope: !3191)
!3194 = !DILocation(line: 902, column: 14, scope: !3191)
!3195 = !DILocation(line: 903, column: 7, scope: !3191)
!3196 = !DILocation(line: 901, column: 22, scope: !3186)
!3197 = !DILocation(line: 907, column: 14, scope: !3187)
!3198 = !DILocation(line: 907, column: 22, scope: !3187)
!3199 = !DILocation(line: 907, column: 28, scope: !3187)
!3200 = !DILocation(line: 907, column: 20, scope: !3187)
!3201 = !DILocation(line: 907, column: 5, scope: !3187)
!3202 = !DILocation(line: 907, column: 8, scope: !3187)
!3203 = !DILocation(line: 907, column: 12, scope: !3187)
!3204 = !DILocation(line: 908, column: 5, scope: !3187)
!3205 = !DILocation(line: 910, column: 10, scope: !2989)
!3206 = !DILocation(line: 911, column: 1, scope: !2989)
!3207 = !DILocation(line: 910, column: 3, scope: !2989)
!3208 = !DISubprogram(name: "lj_state_growstack", scope: !3209, file: !3209, line: 19, type: !3210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3209 = !DIFile(filename: "./lj_state.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/LuaJIT-2.1-20190507/src", checksumkind: CSK_MD5, checksum: "c6b7825ffc240ce25030aff2a5a5fc10")
!3210 = !DISubroutineType(types: !3211)
!3211 = !{null, !685, !417}
!3212 = distinct !DISubprogram(name: "copyTV", scope: !418, file: !418, line: 924, type: !3213, scopeLine: 925, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3217)
!3213 = !DISubroutineType(types: !3214)
!3214 = !{null, !685, !627, !3215}
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !523)
!3217 = !{!3218, !3219, !3220}
!3218 = !DILocalVariable(name: "L", arg: 1, scope: !3212, file: !418, line: 924, type: !685)
!3219 = !DILocalVariable(name: "o1", arg: 2, scope: !3212, file: !418, line: 924, type: !627)
!3220 = !DILocalVariable(name: "o2", arg: 3, scope: !3212, file: !418, line: 924, type: !3215)
!3221 = !DILocation(line: 924, column: 42, scope: !3212)
!3222 = !DILocation(line: 924, column: 53, scope: !3212)
!3223 = !DILocation(line: 924, column: 71, scope: !3212)
!3224 = !DILocation(line: 926, column: 4, scope: !3212)
!3225 = !DILocation(line: 926, column: 10, scope: !3212)
!3226 = !DILocation(line: 926, column: 9, scope: !3212)
!3227 = !{i64 0, i64 8, !1971, i64 0, i64 8, !3228, i64 0, i64 8, !1971, i64 0, i64 8, !1971, i64 0, i64 4, !1072, i64 4, i64 4, !1072, i64 0, i64 8, !1971, i64 0, i64 4, !1072, i64 4, i64 4, !1072}
!3228 = !{!3229, !3229, i64 0}
!3229 = !{!"double", !1069, i64 0}
!3230 = !DILocation(line: 926, column: 14, scope: !3212)
!3231 = !DILocation(line: 927, column: 1, scope: !3212)
!3232 = distinct !DISubprogram(name: "snap_unsink", scope: !1, file: !1, line: 743, type: !3233, scopeLine: 746, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3235)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{null, !937, !470, !447, !1979, !1987, !489, !627}
!3235 = !{!3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3246, !3247, !3248, !3249, !3251, !3254, !3256, !3257, !3262, !3263, !3264, !3266, !3267, !3268, !3273, !3274}
!3236 = !DILocalVariable(name: "J", arg: 1, scope: !3232, file: !1, line: 743, type: !937)
!3237 = !DILocalVariable(name: "T", arg: 2, scope: !3232, file: !1, line: 743, type: !470)
!3238 = !DILocalVariable(name: "ex", arg: 3, scope: !3232, file: !1, line: 743, type: !447)
!3239 = !DILocalVariable(name: "snapno", arg: 4, scope: !3232, file: !1, line: 744, type: !1979)
!3240 = !DILocalVariable(name: "rfilt", arg: 5, scope: !3232, file: !1, line: 744, type: !1987)
!3241 = !DILocalVariable(name: "ir", arg: 6, scope: !3232, file: !1, line: 745, type: !489)
!3242 = !DILocalVariable(name: "o", arg: 7, scope: !3232, file: !1, line: 745, type: !627)
!3243 = !DILocalVariable(name: "cts", scope: !3244, file: !1, line: 751, type: !759)
!3244 = distinct !DILexicalBlock(scope: !3245, file: !1, line: 750, column: 46)
!3245 = distinct !DILexicalBlock(scope: !3232, file: !1, line: 750, column: 7)
!3246 = !DILocalVariable(name: "id", scope: !3244, file: !1, line: 752, type: !756)
!3247 = !DILocalVariable(name: "sz", scope: !3244, file: !1, line: 753, type: !771)
!3248 = !DILocalVariable(name: "info", scope: !3244, file: !1, line: 754, type: !769)
!3249 = !DILocalVariable(name: "cd", scope: !3244, file: !1, line: 755, type: !3250)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!3251 = !DILocalVariable(name: "p", scope: !3252, file: !1, line: 758, type: !758)
!3252 = distinct !DILexicalBlock(scope: !3253, file: !1, line: 757, column: 28)
!3253 = distinct !DILexicalBlock(scope: !3244, file: !1, line: 757, column: 9)
!3254 = !DILocalVariable(name: "irs", scope: !3255, file: !1, line: 767, type: !489)
!3255 = distinct !DILexicalBlock(scope: !3253, file: !1, line: 766, column: 12)
!3256 = !DILocalVariable(name: "irlast", scope: !3255, file: !1, line: 767, type: !489)
!3257 = !DILocalVariable(name: "iro", scope: !3258, file: !1, line: 770, type: !489)
!3258 = distinct !DILexicalBlock(scope: !3259, file: !1, line: 769, column: 57)
!3259 = distinct !DILexicalBlock(scope: !3260, file: !1, line: 769, column: 6)
!3260 = distinct !DILexicalBlock(scope: !3261, file: !1, line: 768, column: 7)
!3261 = distinct !DILexicalBlock(scope: !3255, file: !1, line: 768, column: 7)
!3262 = !DILocalVariable(name: "p", scope: !3258, file: !1, line: 771, type: !758)
!3263 = !DILocalVariable(name: "szs", scope: !3258, file: !1, line: 772, type: !771)
!3264 = !DILocalVariable(name: "irs", scope: !3265, file: !1, line: 796, type: !489)
!3265 = distinct !DILexicalBlock(scope: !3245, file: !1, line: 795, column: 3)
!3266 = !DILocalVariable(name: "irlast", scope: !3265, file: !1, line: 796, type: !489)
!3267 = !DILocalVariable(name: "t", scope: !3265, file: !1, line: 797, type: !884)
!3268 = !DILocalVariable(name: "irk", scope: !3269, file: !1, line: 803, type: !489)
!3269 = distinct !DILexicalBlock(scope: !3270, file: !1, line: 802, column: 62)
!3270 = distinct !DILexicalBlock(scope: !3271, file: !1, line: 802, column: 11)
!3271 = distinct !DILexicalBlock(scope: !3272, file: !1, line: 801, column: 5)
!3272 = distinct !DILexicalBlock(scope: !3265, file: !1, line: 801, column: 5)
!3273 = !DILocalVariable(name: "tmp", scope: !3269, file: !1, line: 804, type: !523)
!3274 = !DILocalVariable(name: "val", scope: !3269, file: !1, line: 804, type: !627)
!3275 = !DILocation(line: 743, column: 36, scope: !3232)
!3276 = !DILocation(line: 743, column: 48, scope: !3232)
!3277 = !DILocation(line: 743, column: 62, scope: !3232)
!3278 = !DILocation(line: 744, column: 11, scope: !3232)
!3279 = !DILocation(line: 744, column: 31, scope: !3232)
!3280 = !DILocation(line: 745, column: 11, scope: !3232)
!3281 = !DILocation(line: 745, column: 23, scope: !3232)
!3282 = !DILocation(line: 750, column: 7, scope: !3245)
!3283 = !DILocation(line: 750, column: 11, scope: !3245)
!3284 = !DILocation(line: 750, column: 13, scope: !3245)
!3285 = !DILocation(line: 750, column: 24, scope: !3245)
!3286 = !DILocation(line: 750, column: 27, scope: !3245)
!3287 = !DILocation(line: 750, column: 31, scope: !3245)
!3288 = !DILocation(line: 750, column: 33, scope: !3245)
!3289 = !DILocation(line: 750, column: 7, scope: !3232)
!3290 = !DILocation(line: 751, column: 5, scope: !3244)
!3291 = !DILocation(line: 751, column: 14, scope: !3244)
!3292 = !DILocation(line: 751, column: 30, scope: !3244)
!3293 = !DILocation(line: 751, column: 33, scope: !3244)
!3294 = !DILocation(line: 751, column: 20, scope: !3244)
!3295 = !DILocation(line: 752, column: 5, scope: !3244)
!3296 = !DILocation(line: 752, column: 13, scope: !3244)
!3297 = !DILocation(line: 752, column: 27, scope: !3244)
!3298 = !DILocation(line: 752, column: 30, scope: !3244)
!3299 = !DILocation(line: 752, column: 33, scope: !3244)
!3300 = !DILocation(line: 752, column: 37, scope: !3244)
!3301 = !DILocation(line: 752, column: 42, scope: !3244)
!3302 = !DILocation(line: 753, column: 5, scope: !3244)
!3303 = !DILocation(line: 753, column: 12, scope: !3244)
!3304 = !DILocation(line: 754, column: 5, scope: !3244)
!3305 = !DILocation(line: 754, column: 12, scope: !3244)
!3306 = !DILocation(line: 754, column: 33, scope: !3244)
!3307 = !DILocation(line: 754, column: 38, scope: !3244)
!3308 = !DILocation(line: 754, column: 19, scope: !3244)
!3309 = !DILocation(line: 755, column: 5, scope: !3244)
!3310 = !DILocation(line: 755, column: 14, scope: !3244)
!3311 = !DILocation(line: 755, column: 33, scope: !3244)
!3312 = !DILocation(line: 755, column: 38, scope: !3244)
!3313 = !DILocation(line: 755, column: 42, scope: !3244)
!3314 = !DILocation(line: 755, column: 46, scope: !3244)
!3315 = !DILocation(line: 755, column: 19, scope: !3244)
!3316 = !DILocation(line: 756, column: 15, scope: !3244)
!3317 = !DILocation(line: 756, column: 18, scope: !3244)
!3318 = !DILocation(line: 756, column: 21, scope: !3244)
!3319 = !DILocation(line: 756, column: 24, scope: !3244)
!3320 = !DILocation(line: 756, column: 5, scope: !3244)
!3321 = !DILocation(line: 757, column: 9, scope: !3253)
!3322 = !DILocation(line: 757, column: 13, scope: !3253)
!3323 = !DILocation(line: 757, column: 15, scope: !3253)
!3324 = !DILocation(line: 757, column: 9, scope: !3244)
!3325 = !DILocation(line: 758, column: 7, scope: !3252)
!3326 = !DILocation(line: 758, column: 16, scope: !3252)
!3327 = !DILocation(line: 758, column: 31, scope: !3252)
!3328 = !DILocation(line: 765, column: 24, scope: !3252)
!3329 = !DILocation(line: 765, column: 27, scope: !3252)
!3330 = !DILocation(line: 765, column: 31, scope: !3252)
!3331 = !DILocation(line: 765, column: 39, scope: !3252)
!3332 = !DILocation(line: 765, column: 46, scope: !3252)
!3333 = !DILocation(line: 765, column: 50, scope: !3252)
!3334 = !DILocation(line: 765, column: 55, scope: !3252)
!3335 = !DILocation(line: 765, column: 58, scope: !3252)
!3336 = !DILocation(line: 765, column: 7, scope: !3252)
!3337 = !DILocation(line: 766, column: 5, scope: !3253)
!3338 = !DILocation(line: 766, column: 5, scope: !3252)
!3339 = !DILocation(line: 767, column: 7, scope: !3255)
!3340 = !DILocation(line: 767, column: 14, scope: !3255)
!3341 = !DILocation(line: 767, column: 20, scope: !3255)
!3342 = !DILocation(line: 767, column: 30, scope: !3255)
!3343 = !DILocation(line: 767, column: 33, scope: !3255)
!3344 = !DILocation(line: 767, column: 36, scope: !3255)
!3345 = !DILocation(line: 767, column: 39, scope: !3255)
!3346 = !DILocation(line: 767, column: 44, scope: !3255)
!3347 = !DILocation(line: 767, column: 52, scope: !3255)
!3348 = !DILocation(line: 768, column: 18, scope: !3261)
!3349 = !DILocation(line: 768, column: 20, scope: !3261)
!3350 = !DILocation(line: 768, column: 16, scope: !3261)
!3351 = !DILocation(line: 768, column: 12, scope: !3261)
!3352 = !DILocation(line: 768, column: 24, scope: !3260)
!3353 = !DILocation(line: 768, column: 30, scope: !3260)
!3354 = !DILocation(line: 768, column: 28, scope: !3260)
!3355 = !DILocation(line: 768, column: 7, scope: !3261)
!3356 = !DILocation(line: 769, column: 6, scope: !3259)
!3357 = !DILocation(line: 769, column: 11, scope: !3259)
!3358 = !DILocation(line: 769, column: 13, scope: !3259)
!3359 = !DILocation(line: 769, column: 25, scope: !3259)
!3360 = !DILocation(line: 769, column: 44, scope: !3259)
!3361 = !DILocation(line: 769, column: 47, scope: !3259)
!3362 = !DILocation(line: 769, column: 51, scope: !3259)
!3363 = !DILocation(line: 769, column: 28, scope: !3259)
!3364 = !DILocation(line: 769, column: 6, scope: !3260)
!3365 = !DILocation(line: 770, column: 4, scope: !3258)
!3366 = !DILocation(line: 770, column: 11, scope: !3258)
!3367 = !DILocation(line: 770, column: 18, scope: !3258)
!3368 = !DILocation(line: 770, column: 21, scope: !3258)
!3369 = !DILocation(line: 770, column: 24, scope: !3258)
!3370 = !DILocation(line: 770, column: 27, scope: !3258)
!3371 = !DILocation(line: 770, column: 30, scope: !3258)
!3372 = !DILocation(line: 770, column: 35, scope: !3258)
!3373 = !DILocation(line: 770, column: 40, scope: !3258)
!3374 = !DILocation(line: 771, column: 4, scope: !3258)
!3375 = !DILocation(line: 771, column: 13, scope: !3258)
!3376 = !DILocation(line: 771, column: 28, scope: !3258)
!3377 = !DILocation(line: 772, column: 4, scope: !3258)
!3378 = !DILocation(line: 772, column: 11, scope: !3258)
!3379 = !DILocation(line: 775, column: 8, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3258, file: !1, line: 775, column: 8)
!3381 = !DILocation(line: 775, column: 8, scope: !3258)
!3382 = !DILocation(line: 775, column: 30, scope: !3380)
!3383 = !DILocation(line: 775, column: 26, scope: !3380)
!3384 = !DILocation(line: 776, column: 13, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3380, file: !1, line: 776, column: 13)
!3386 = !DILocation(line: 776, column: 30, scope: !3385)
!3387 = !DILocation(line: 776, column: 33, scope: !3385)
!3388 = !DILocation(line: 776, column: 13, scope: !3380)
!3389 = !DILocation(line: 776, column: 55, scope: !3385)
!3390 = !DILocation(line: 776, column: 51, scope: !3385)
!3391 = !DILocation(line: 777, column: 13, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3385, file: !1, line: 777, column: 13)
!3393 = !DILocation(line: 777, column: 31, scope: !3392)
!3394 = !DILocation(line: 777, column: 34, scope: !3392)
!3395 = !DILocation(line: 777, column: 13, scope: !3385)
!3396 = !DILocation(line: 777, column: 57, scope: !3392)
!3397 = !DILocation(line: 777, column: 53, scope: !3392)
!3398 = !DILocation(line: 778, column: 13, scope: !3392)
!3399 = !DILocation(line: 779, column: 17, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3258, file: !1, line: 779, column: 8)
!3401 = !DILocation(line: 779, column: 22, scope: !3400)
!3402 = !DILocation(line: 779, column: 24, scope: !3400)
!3403 = !DILocation(line: 779, column: 8, scope: !3258)
!3404 = !DILocation(line: 780, column: 20, scope: !3400)
!3405 = !DILocation(line: 780, column: 33, scope: !3400)
!3406 = !DILocation(line: 780, column: 8, scope: !3400)
!3407 = !DILocation(line: 780, column: 6, scope: !3400)
!3408 = !DILocation(line: 782, column: 11, scope: !3400)
!3409 = !DILocation(line: 782, column: 16, scope: !3400)
!3410 = !DILocation(line: 782, column: 8, scope: !3400)
!3411 = !DILocation(line: 790, column: 21, scope: !3258)
!3412 = !DILocation(line: 790, column: 24, scope: !3258)
!3413 = !DILocation(line: 790, column: 28, scope: !3258)
!3414 = !DILocation(line: 790, column: 36, scope: !3258)
!3415 = !DILocation(line: 790, column: 43, scope: !3258)
!3416 = !DILocation(line: 790, column: 48, scope: !3258)
!3417 = !DILocation(line: 790, column: 53, scope: !3258)
!3418 = !DILocation(line: 790, column: 56, scope: !3258)
!3419 = !DILocation(line: 790, column: 4, scope: !3258)
!3420 = !DILocation(line: 791, column: 2, scope: !3259)
!3421 = !DILocation(line: 791, column: 2, scope: !3258)
!3422 = !DILocation(line: 769, column: 54, scope: !3259)
!3423 = !DILocation(line: 768, column: 41, scope: !3260)
!3424 = !DILocation(line: 768, column: 7, scope: !3260)
!3425 = distinct !{!3425, !3355, !3426, !1442}
!3426 = !DILocation(line: 791, column: 2, scope: !3261)
!3427 = !DILocation(line: 792, column: 5, scope: !3253)
!3428 = !DILocation(line: 793, column: 3, scope: !3245)
!3429 = !DILocation(line: 793, column: 3, scope: !3244)
!3430 = !DILocation(line: 796, column: 5, scope: !3265)
!3431 = !DILocation(line: 796, column: 12, scope: !3265)
!3432 = !DILocation(line: 796, column: 18, scope: !3265)
!3433 = !DILocation(line: 797, column: 5, scope: !3265)
!3434 = !DILocation(line: 797, column: 12, scope: !3265)
!3435 = !DILocation(line: 797, column: 16, scope: !3265)
!3436 = !DILocation(line: 797, column: 20, scope: !3265)
!3437 = !DILocation(line: 797, column: 22, scope: !3265)
!3438 = !DILocation(line: 797, column: 46, scope: !3265)
!3439 = !DILocation(line: 797, column: 49, scope: !3265)
!3440 = !DILocation(line: 797, column: 52, scope: !3265)
!3441 = !DILocation(line: 797, column: 56, scope: !3265)
!3442 = !DILocation(line: 797, column: 61, scope: !3265)
!3443 = !DILocation(line: 797, column: 65, scope: !3265)
!3444 = !DILocation(line: 797, column: 35, scope: !3265)
!3445 = !DILocation(line: 798, column: 18, scope: !3265)
!3446 = !DILocation(line: 798, column: 21, scope: !3265)
!3447 = !DILocation(line: 798, column: 24, scope: !3265)
!3448 = !DILocation(line: 798, column: 7, scope: !3265)
!3449 = !DILocation(line: 799, column: 13, scope: !3265)
!3450 = !DILocation(line: 799, column: 16, scope: !3265)
!3451 = !DILocation(line: 799, column: 19, scope: !3265)
!3452 = !DILocation(line: 799, column: 22, scope: !3265)
!3453 = !DILocation(line: 799, column: 5, scope: !3265)
!3454 = !DILocation(line: 800, column: 15, scope: !3265)
!3455 = !DILocation(line: 800, column: 18, scope: !3265)
!3456 = !DILocation(line: 800, column: 21, scope: !3265)
!3457 = !DILocation(line: 800, column: 24, scope: !3265)
!3458 = !DILocation(line: 800, column: 29, scope: !3265)
!3459 = !DILocation(line: 800, column: 37, scope: !3265)
!3460 = !DILocation(line: 800, column: 12, scope: !3265)
!3461 = !DILocation(line: 801, column: 16, scope: !3272)
!3462 = !DILocation(line: 801, column: 18, scope: !3272)
!3463 = !DILocation(line: 801, column: 14, scope: !3272)
!3464 = !DILocation(line: 801, column: 10, scope: !3272)
!3465 = !DILocation(line: 801, column: 22, scope: !3271)
!3466 = !DILocation(line: 801, column: 28, scope: !3271)
!3467 = !DILocation(line: 801, column: 26, scope: !3271)
!3468 = !DILocation(line: 801, column: 5, scope: !3272)
!3469 = !DILocation(line: 802, column: 11, scope: !3270)
!3470 = !DILocation(line: 802, column: 16, scope: !3270)
!3471 = !DILocation(line: 802, column: 18, scope: !3270)
!3472 = !DILocation(line: 802, column: 30, scope: !3270)
!3473 = !DILocation(line: 802, column: 49, scope: !3270)
!3474 = !DILocation(line: 802, column: 52, scope: !3270)
!3475 = !DILocation(line: 802, column: 56, scope: !3270)
!3476 = !DILocation(line: 802, column: 33, scope: !3270)
!3477 = !DILocation(line: 802, column: 11, scope: !3271)
!3478 = !DILocation(line: 803, column: 2, scope: !3269)
!3479 = !DILocation(line: 803, column: 9, scope: !3269)
!3480 = !DILocation(line: 803, column: 16, scope: !3269)
!3481 = !DILocation(line: 803, column: 19, scope: !3269)
!3482 = !DILocation(line: 803, column: 22, scope: !3269)
!3483 = !DILocation(line: 803, column: 27, scope: !3269)
!3484 = !DILocation(line: 804, column: 2, scope: !3269)
!3485 = !DILocation(line: 804, column: 9, scope: !3269)
!3486 = !DILocation(line: 804, column: 15, scope: !3269)
!3487 = !DILocation(line: 807, column: 6, scope: !3488)
!3488 = distinct !DILexicalBlock(scope: !3269, file: !1, line: 807, column: 6)
!3489 = !DILocation(line: 807, column: 11, scope: !3488)
!3490 = !DILocation(line: 807, column: 13, scope: !3488)
!3491 = !DILocation(line: 807, column: 6, scope: !3269)
!3492 = !DILocation(line: 809, column: 20, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3488, file: !1, line: 807, column: 25)
!3494 = !DILocation(line: 809, column: 23, scope: !3493)
!3495 = !DILocation(line: 809, column: 26, scope: !3493)
!3496 = !DILocation(line: 809, column: 30, scope: !3493)
!3497 = !DILocation(line: 809, column: 38, scope: !3493)
!3498 = !DILocation(line: 809, column: 45, scope: !3493)
!3499 = !DILocation(line: 809, column: 50, scope: !3493)
!3500 = !DILocation(line: 809, column: 4, scope: !3493)
!3501 = !DILocation(line: 811, column: 4, scope: !3493)
!3502 = !{!3503, !1091, i64 32}
!3503 = !{!"GCtab", !1090, i64 0, !1069, i64 8, !1069, i64 9, !1069, i64 10, !1069, i64 11, !1093, i64 16, !1090, i64 24, !1090, i64 32, !1093, i64 40, !1073, i64 48, !1073, i64 52, !1093, i64 56}
!3504 = !DILocation(line: 812, column: 2, scope: !3493)
!3505 = !DILocation(line: 813, column: 11, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !3488, file: !1, line: 812, column: 9)
!3507 = !DILocation(line: 813, column: 14, scope: !3506)
!3508 = !DILocation(line: 813, column: 17, scope: !3506)
!3509 = !DILocation(line: 813, column: 22, scope: !3506)
!3510 = !DILocation(line: 813, column: 8, scope: !3506)
!3511 = !DILocation(line: 814, column: 8, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3506, file: !1, line: 814, column: 8)
!3513 = !DILocation(line: 814, column: 13, scope: !3512)
!3514 = !DILocation(line: 814, column: 15, scope: !3512)
!3515 = !DILocation(line: 814, column: 8, scope: !3506)
!3516 = !DILocation(line: 814, column: 35, scope: !3512)
!3517 = !DILocation(line: 814, column: 38, scope: !3512)
!3518 = !DILocation(line: 814, column: 41, scope: !3512)
!3519 = !DILocation(line: 814, column: 46, scope: !3512)
!3520 = !DILocation(line: 814, column: 32, scope: !3512)
!3521 = !DILocation(line: 814, column: 28, scope: !3512)
!3522 = !DILocation(line: 815, column: 17, scope: !3506)
!3523 = !DILocation(line: 815, column: 20, scope: !3506)
!3524 = !DILocation(line: 815, column: 29, scope: !3506)
!3525 = !DILocation(line: 815, column: 4, scope: !3506)
!3526 = !DILocation(line: 816, column: 21, scope: !3506)
!3527 = !DILocation(line: 816, column: 24, scope: !3506)
!3528 = !DILocation(line: 816, column: 27, scope: !3506)
!3529 = !DILocation(line: 816, column: 10, scope: !3506)
!3530 = !DILocation(line: 816, column: 8, scope: !3506)
!3531 = !DILocation(line: 818, column: 20, scope: !3506)
!3532 = !DILocation(line: 818, column: 23, scope: !3506)
!3533 = !DILocation(line: 818, column: 26, scope: !3506)
!3534 = !DILocation(line: 818, column: 30, scope: !3506)
!3535 = !DILocation(line: 818, column: 38, scope: !3506)
!3536 = !DILocation(line: 818, column: 45, scope: !3506)
!3537 = !DILocation(line: 818, column: 50, scope: !3506)
!3538 = !DILocation(line: 818, column: 55, scope: !3506)
!3539 = !DILocation(line: 818, column: 4, scope: !3506)
!3540 = !DILocation(line: 824, column: 7, scope: !3270)
!3541 = !DILocation(line: 824, column: 7, scope: !3269)
!3542 = !DILocation(line: 802, column: 59, scope: !3270)
!3543 = !DILocation(line: 801, column: 39, scope: !3271)
!3544 = !DILocation(line: 801, column: 5, scope: !3271)
!3545 = distinct !{!3545, !3468, !3546, !1442}
!3546 = !DILocation(line: 824, column: 7, scope: !3272)
!3547 = !DILocation(line: 825, column: 3, scope: !3245)
!3548 = !DILocation(line: 826, column: 1, scope: !3232)
!3549 = distinct !DISubprogram(name: "snap_restoreval", scope: !1, file: !1, line: 621, type: !3550, scopeLine: 624, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3552)
!3550 = !DISubroutineType(types: !3551)
!3551 = !{null, !937, !470, !447, !1979, !1987, !485, !627}
!3552 = !{!3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3566}
!3553 = !DILocalVariable(name: "J", arg: 1, scope: !3549, file: !1, line: 621, type: !937)
!3554 = !DILocalVariable(name: "T", arg: 2, scope: !3549, file: !1, line: 621, type: !470)
!3555 = !DILocalVariable(name: "ex", arg: 3, scope: !3549, file: !1, line: 621, type: !447)
!3556 = !DILocalVariable(name: "snapno", arg: 4, scope: !3549, file: !1, line: 622, type: !1979)
!3557 = !DILocalVariable(name: "rfilt", arg: 5, scope: !3549, file: !1, line: 622, type: !1987)
!3558 = !DILocalVariable(name: "ref", arg: 6, scope: !3549, file: !1, line: 623, type: !485)
!3559 = !DILocalVariable(name: "o", arg: 7, scope: !3549, file: !1, line: 623, type: !627)
!3560 = !DILocalVariable(name: "ir", scope: !3549, file: !1, line: 625, type: !489)
!3561 = !DILocalVariable(name: "t", scope: !3549, file: !1, line: 626, type: !507)
!3562 = !DILocalVariable(name: "rs", scope: !3549, file: !1, line: 627, type: !2146)
!3563 = !DILocalVariable(name: "sps", scope: !3564, file: !1, line: 635, type: !917)
!3564 = distinct !DILexicalBlock(scope: !3565, file: !1, line: 634, column: 37)
!3565 = distinct !DILexicalBlock(scope: !3549, file: !1, line: 634, column: 7)
!3566 = !DILocalVariable(name: "r", scope: !3567, file: !1, line: 652, type: !3568)
!3567 = distinct !DILexicalBlock(scope: !3565, file: !1, line: 651, column: 10)
!3568 = !DIDerivedType(tag: DW_TAG_typedef, name: "Reg", file: !2147, line: 15, baseType: !419)
!3569 = !DILocation(line: 621, column: 40, scope: !3549)
!3570 = !DILocation(line: 621, column: 52, scope: !3549)
!3571 = !DILocation(line: 621, column: 66, scope: !3549)
!3572 = !DILocation(line: 622, column: 15, scope: !3549)
!3573 = !DILocation(line: 622, column: 35, scope: !3549)
!3574 = !DILocation(line: 623, column: 14, scope: !3549)
!3575 = !DILocation(line: 623, column: 27, scope: !3549)
!3576 = !DILocation(line: 625, column: 3, scope: !3549)
!3577 = !DILocation(line: 625, column: 10, scope: !3549)
!3578 = !DILocation(line: 625, column: 16, scope: !3549)
!3579 = !DILocation(line: 625, column: 19, scope: !3549)
!3580 = !DILocation(line: 625, column: 22, scope: !3549)
!3581 = !DILocation(line: 626, column: 3, scope: !3549)
!3582 = !DILocation(line: 626, column: 11, scope: !3549)
!3583 = !DILocation(line: 626, column: 15, scope: !3549)
!3584 = !DILocation(line: 626, column: 19, scope: !3549)
!3585 = !{i64 0, i64 1, !1280}
!3586 = !DILocation(line: 627, column: 3, scope: !3549)
!3587 = !DILocation(line: 627, column: 9, scope: !3549)
!3588 = !DILocation(line: 627, column: 14, scope: !3549)
!3589 = !DILocation(line: 627, column: 18, scope: !3549)
!3590 = !DILocation(line: 628, column: 7, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3549, file: !1, line: 628, column: 7)
!3592 = !DILocation(line: 628, column: 7, scope: !3549)
!3593 = !DILocation(line: 629, column: 18, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3591, file: !1, line: 628, column: 23)
!3595 = !DILocation(line: 629, column: 21, scope: !3594)
!3596 = !DILocation(line: 629, column: 24, scope: !3594)
!3597 = !DILocation(line: 629, column: 27, scope: !3594)
!3598 = !DILocation(line: 629, column: 5, scope: !3594)
!3599 = !DILocation(line: 630, column: 5, scope: !3594)
!3600 = !DILocation(line: 632, column: 7, scope: !3601)
!3601 = distinct !DILexicalBlock(scope: !3549, file: !1, line: 632, column: 7)
!3602 = !DILocation(line: 632, column: 7, scope: !3549)
!3603 = !DILocation(line: 633, column: 25, scope: !3601)
!3604 = !DILocation(line: 633, column: 28, scope: !3601)
!3605 = !DILocation(line: 633, column: 36, scope: !3601)
!3606 = !DILocation(line: 633, column: 41, scope: !3601)
!3607 = !DILocation(line: 633, column: 10, scope: !3601)
!3608 = !DILocation(line: 633, column: 8, scope: !3601)
!3609 = !DILocation(line: 633, column: 5, scope: !3601)
!3610 = !DILocation(line: 634, column: 7, scope: !3565)
!3611 = !DILocation(line: 634, column: 7, scope: !3549)
!3612 = !DILocation(line: 635, column: 5, scope: !3564)
!3613 = !DILocation(line: 635, column: 14, scope: !3564)
!3614 = !DILocation(line: 635, column: 21, scope: !3564)
!3615 = !DILocation(line: 635, column: 25, scope: !3564)
!3616 = !DILocation(line: 635, column: 31, scope: !3564)
!3617 = !DILocation(line: 636, column: 9, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3564, file: !1, line: 636, column: 9)
!3619 = !{!1094, !1069, i64 0}
!3620 = !DILocation(line: 636, column: 9, scope: !3564)
!3621 = !DILocation(line: 637, column: 15, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !3618, file: !1, line: 636, column: 27)
!3623 = !DILocation(line: 637, column: 19, scope: !3622)
!3624 = !DILocation(line: 637, column: 18, scope: !3622)
!3625 = !DILocation(line: 637, column: 7, scope: !3622)
!3626 = !DILocation(line: 639, column: 5, scope: !3622)
!3627 = !DILocation(line: 639, column: 16, scope: !3628)
!3628 = distinct !DILexicalBlock(scope: !3618, file: !1, line: 639, column: 16)
!3629 = !DILocation(line: 639, column: 16, scope: !3618)
!3630 = !DILocation(line: 640, column: 29, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3628, file: !1, line: 639, column: 30)
!3632 = !DILocation(line: 640, column: 16, scope: !3631)
!3633 = !DILocation(line: 640, column: 7, scope: !3631)
!3634 = !DILocation(line: 640, column: 14, scope: !3631)
!3635 = !DILocation(line: 647, column: 5, scope: !3631)
!3636 = !DILocation(line: 649, column: 14, scope: !3637)
!3637 = distinct !DILexicalBlock(scope: !3628, file: !1, line: 647, column: 12)
!3638 = !DILocation(line: 649, column: 17, scope: !3637)
!3639 = !DILocation(line: 649, column: 20, scope: !3637)
!3640 = !DILocation(line: 649, column: 54, scope: !3637)
!3641 = !DILocation(line: 649, column: 43, scope: !3637)
!3642 = !DILocation(line: 649, column: 23, scope: !3637)
!3643 = !DILocation(line: 649, column: 59, scope: !3637)
!3644 = !DILocation(line: 649, column: 7, scope: !3637)
!3645 = !DILocation(line: 651, column: 3, scope: !3565)
!3646 = !DILocation(line: 651, column: 3, scope: !3564)
!3647 = !DILocation(line: 652, column: 5, scope: !3567)
!3648 = !DILocation(line: 652, column: 9, scope: !3567)
!3649 = !DILocation(line: 652, column: 13, scope: !3567)
!3650 = !DILocation(line: 653, column: 9, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3567, file: !1, line: 653, column: 9)
!3652 = !DILocation(line: 653, column: 9, scope: !3567)
!3653 = !DILocation(line: 655, column: 23, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3651, file: !1, line: 653, column: 22)
!3655 = !DILocation(line: 655, column: 26, scope: !3654)
!3656 = !DILocation(line: 655, column: 29, scope: !3654)
!3657 = !DILocation(line: 655, column: 33, scope: !3654)
!3658 = !DILocation(line: 655, column: 41, scope: !3654)
!3659 = !DILocation(line: 655, column: 48, scope: !3654)
!3660 = !DILocation(line: 655, column: 52, scope: !3654)
!3661 = !DILocation(line: 655, column: 57, scope: !3654)
!3662 = !DILocation(line: 655, column: 7, scope: !3654)
!3663 = !DILocation(line: 657, column: 7, scope: !3654)
!3664 = !DILocation(line: 658, column: 16, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3651, file: !1, line: 658, column: 16)
!3666 = !DILocation(line: 658, column: 16, scope: !3651)
!3667 = !DILocation(line: 659, column: 15, scope: !3668)
!3668 = distinct !DILexicalBlock(scope: !3665, file: !1, line: 658, column: 34)
!3669 = !DILocation(line: 659, column: 27, scope: !3668)
!3670 = !DILocation(line: 659, column: 31, scope: !3668)
!3671 = !DILocation(line: 659, column: 35, scope: !3668)
!3672 = !DILocation(line: 659, column: 36, scope: !3668)
!3673 = !DILocation(line: 659, column: 18, scope: !3668)
!3674 = !DILocation(line: 659, column: 7, scope: !3668)
!3675 = !DILocation(line: 661, column: 5, scope: !3668)
!3676 = !DILocation(line: 661, column: 16, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3665, file: !1, line: 661, column: 16)
!3678 = !DILocation(line: 661, column: 16, scope: !3665)
!3679 = !DILocation(line: 662, column: 7, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3677, file: !1, line: 661, column: 30)
!3681 = !DILocation(line: 672, column: 5, scope: !3680)
!3682 = !DILocation(line: 672, column: 16, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3677, file: !1, line: 672, column: 16)
!3684 = !DILocation(line: 672, column: 16, scope: !3677)
!3685 = !DILocation(line: 673, column: 7, scope: !3686)
!3686 = distinct !DILexicalBlock(scope: !3683, file: !1, line: 672, column: 30)
!3687 = !DILocation(line: 674, column: 5, scope: !3686)
!3688 = !DILocation(line: 675, column: 14, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3683, file: !1, line: 674, column: 12)
!3690 = !DILocation(line: 675, column: 17, scope: !3689)
!3691 = !DILocation(line: 675, column: 20, scope: !3689)
!3692 = !DILocation(line: 675, column: 32, scope: !3689)
!3693 = !DILocation(line: 675, column: 36, scope: !3689)
!3694 = !DILocation(line: 675, column: 40, scope: !3689)
!3695 = !DILocation(line: 675, column: 41, scope: !3689)
!3696 = !DILocation(line: 675, column: 23, scope: !3689)
!3697 = !DILocation(line: 675, column: 56, scope: !3689)
!3698 = !DILocation(line: 675, column: 7, scope: !3689)
!3699 = !DILocation(line: 677, column: 3, scope: !3565)
!3700 = !DILocation(line: 678, column: 1, scope: !3549)
!3701 = distinct !DISubprogram(name: "lj_snap_grow_map", scope: !1298, file: !1298, line: 27, type: !935, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3702)
!3702 = !{!3703, !3704}
!3703 = !DILocalVariable(name: "J", arg: 1, scope: !3701, file: !1298, line: 27, type: !937)
!3704 = !DILocalVariable(name: "need", arg: 2, scope: !3701, file: !1298, line: 27, type: !417)
!3705 = !DILocation(line: 27, column: 52, scope: !3701)
!3706 = !DILocation(line: 27, column: 61, scope: !3701)
!3707 = !DILocation(line: 29, column: 7, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3701, file: !1298, line: 29, column: 7)
!3709 = !DILocation(line: 29, column: 7, scope: !3701)
!3710 = !DILocation(line: 29, column: 61, scope: !3708)
!3711 = !DILocation(line: 29, column: 64, scope: !3708)
!3712 = !DILocation(line: 29, column: 43, scope: !3708)
!3713 = !DILocation(line: 30, column: 1, scope: !3701)
!3714 = distinct !DISubprogram(name: "snapshot_slots", scope: !1, file: !1, line: 63, type: !3715, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3717)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!417, !937, !440, !442}
!3717 = !{!3718, !3719, !3720, !3721, !3722, !3723, !3724, !3728, !3729, !3734, !3737}
!3718 = !DILocalVariable(name: "J", arg: 1, scope: !3714, file: !1, line: 63, type: !937)
!3719 = !DILocalVariable(name: "map", arg: 2, scope: !3714, file: !1, line: 63, type: !440)
!3720 = !DILocalVariable(name: "nslots", arg: 3, scope: !3714, file: !1, line: 63, type: !442)
!3721 = !DILocalVariable(name: "retf", scope: !3714, file: !1, line: 65, type: !485)
!3722 = !DILocalVariable(name: "s", scope: !3714, file: !1, line: 66, type: !442)
!3723 = !DILocalVariable(name: "n", scope: !3714, file: !1, line: 67, type: !417)
!3724 = !DILocalVariable(name: "tr", scope: !3725, file: !1, line: 69, type: !755)
!3725 = distinct !DILexicalBlock(scope: !3726, file: !1, line: 68, column: 32)
!3726 = distinct !DILexicalBlock(scope: !3727, file: !1, line: 68, column: 3)
!3727 = distinct !DILexicalBlock(scope: !3714, file: !1, line: 68, column: 3)
!3728 = !DILocalVariable(name: "ref", scope: !3725, file: !1, line: 70, type: !485)
!3729 = !DILocalVariable(name: "base", scope: !3730, file: !1, line: 78, type: !3732)
!3730 = distinct !DILexicalBlock(scope: !3731, file: !1, line: 77, column: 50)
!3731 = distinct !DILexicalBlock(scope: !3725, file: !1, line: 77, column: 9)
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DIDerivedType(tag: DW_TAG_typedef, name: "cTValue", file: !418, line: 213, baseType: !3216)
!3734 = !DILocalVariable(name: "sn", scope: !3735, file: !1, line: 84, type: !441)
!3735 = distinct !DILexicalBlock(scope: !3736, file: !1, line: 83, column: 14)
!3736 = distinct !DILexicalBlock(scope: !3725, file: !1, line: 83, column: 9)
!3737 = !DILocalVariable(name: "ir", scope: !3735, file: !1, line: 85, type: !489)
!3738 = !DILocation(line: 63, column: 40, scope: !3714)
!3739 = !DILocation(line: 63, column: 54, scope: !3714)
!3740 = !DILocation(line: 63, column: 65, scope: !3714)
!3741 = !DILocation(line: 65, column: 3, scope: !3714)
!3742 = !DILocation(line: 65, column: 9, scope: !3714)
!3743 = !DILocation(line: 65, column: 16, scope: !3714)
!3744 = !DILocation(line: 65, column: 19, scope: !3714)
!3745 = !DILocation(line: 66, column: 3, scope: !3714)
!3746 = !DILocation(line: 66, column: 9, scope: !3714)
!3747 = !DILocation(line: 67, column: 3, scope: !3714)
!3748 = !DILocation(line: 67, column: 9, scope: !3714)
!3749 = !DILocation(line: 68, column: 10, scope: !3727)
!3750 = !DILocation(line: 68, column: 8, scope: !3727)
!3751 = !DILocation(line: 68, column: 15, scope: !3726)
!3752 = !DILocation(line: 68, column: 19, scope: !3726)
!3753 = !DILocation(line: 68, column: 17, scope: !3726)
!3754 = !DILocation(line: 68, column: 3, scope: !3727)
!3755 = !DILocation(line: 69, column: 5, scope: !3725)
!3756 = !DILocation(line: 69, column: 10, scope: !3725)
!3757 = !DILocation(line: 69, column: 15, scope: !3725)
!3758 = !DILocation(line: 69, column: 18, scope: !3725)
!3759 = !DILocation(line: 69, column: 23, scope: !3725)
!3760 = !DILocation(line: 70, column: 5, scope: !3725)
!3761 = !DILocation(line: 70, column: 11, scope: !3725)
!3762 = !DILocation(line: 70, column: 17, scope: !3725)
!3763 = !DILocation(line: 72, column: 9, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3725, file: !1, line: 72, column: 9)
!3765 = !DILocation(line: 72, column: 11, scope: !3764)
!3766 = !DILocation(line: 72, column: 9, scope: !3725)
!3767 = !DILocation(line: 73, column: 12, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3769, file: !1, line: 73, column: 11)
!3769 = distinct !DILexicalBlock(scope: !3764, file: !1, line: 72, column: 17)
!3770 = !DILocation(line: 73, column: 15, scope: !3768)
!3771 = !DILocation(line: 73, column: 11, scope: !3769)
!3772 = !DILocation(line: 74, column: 2, scope: !3768)
!3773 = !DILocation(line: 74, column: 7, scope: !3768)
!3774 = !DILocation(line: 74, column: 11, scope: !3768)
!3775 = !DILocation(line: 75, column: 7, scope: !3769)
!3776 = !DILocation(line: 77, column: 10, scope: !3731)
!3777 = !DILocation(line: 77, column: 13, scope: !3731)
!3778 = !DILocation(line: 77, column: 41, scope: !3731)
!3779 = !DILocation(line: 77, column: 45, scope: !3731)
!3780 = !DILocation(line: 77, column: 9, scope: !3725)
!3781 = !DILocation(line: 78, column: 7, scope: !3730)
!3782 = !DILocation(line: 78, column: 16, scope: !3730)
!3783 = !DILocation(line: 78, column: 23, scope: !3730)
!3784 = !DILocation(line: 78, column: 26, scope: !3730)
!3785 = !DILocation(line: 78, column: 29, scope: !3730)
!3786 = !DILocation(line: 78, column: 36, scope: !3730)
!3787 = !DILocation(line: 78, column: 39, scope: !3730)
!3788 = !DILocation(line: 78, column: 34, scope: !3730)
!3789 = !DILocation(line: 79, column: 26, scope: !3730)
!3790 = !DILocation(line: 79, column: 29, scope: !3730)
!3791 = !DILocation(line: 79, column: 53, scope: !3730)
!3792 = !DILocation(line: 79, column: 65, scope: !3730)
!3793 = !DILocation(line: 79, column: 70, scope: !3730)
!3794 = !DILocation(line: 79, column: 73, scope: !3730)
!3795 = !DILocation(line: 79, column: 43, scope: !3730)
!3796 = !DILocation(line: 79, column: 41, scope: !3730)
!3797 = !DILocation(line: 79, column: 12, scope: !3730)
!3798 = !DILocation(line: 79, column: 15, scope: !3730)
!3799 = !DILocation(line: 79, column: 20, scope: !3730)
!3800 = !DILocation(line: 79, column: 23, scope: !3730)
!3801 = !DILocation(line: 79, column: 10, scope: !3730)
!3802 = !DILocation(line: 80, column: 13, scope: !3730)
!3803 = !DILocation(line: 80, column: 11, scope: !3730)
!3804 = !DILocation(line: 81, column: 5, scope: !3731)
!3805 = !DILocation(line: 81, column: 5, scope: !3730)
!3806 = !DILocation(line: 83, column: 9, scope: !3736)
!3807 = !DILocation(line: 83, column: 9, scope: !3725)
!3808 = !DILocation(line: 84, column: 7, scope: !3735)
!3809 = !DILocation(line: 84, column: 17, scope: !3735)
!3810 = !DILocation(line: 84, column: 22, scope: !3735)
!3811 = !DILocation(line: 85, column: 7, scope: !3735)
!3812 = !DILocation(line: 85, column: 14, scope: !3735)
!3813 = !DILocation(line: 85, column: 20, scope: !3735)
!3814 = !DILocation(line: 85, column: 23, scope: !3735)
!3815 = !DILocation(line: 85, column: 27, scope: !3735)
!3816 = !{!1088, !1068, i64 32}
!3817 = !DILocation(line: 85, column: 30, scope: !3735)
!3818 = !DILocation(line: 87, column: 4, scope: !3819)
!3819 = distinct !DILexicalBlock(scope: !3735, file: !1, line: 86, column: 11)
!3820 = !DILocation(line: 87, column: 8, scope: !3819)
!3821 = !DILocation(line: 87, column: 10, scope: !3819)
!3822 = !DILocation(line: 87, column: 22, scope: !3819)
!3823 = !DILocation(line: 87, column: 25, scope: !3819)
!3824 = !DILocation(line: 87, column: 29, scope: !3819)
!3825 = !DILocation(line: 87, column: 36, scope: !3819)
!3826 = !DILocation(line: 87, column: 33, scope: !3819)
!3827 = !DILocation(line: 87, column: 38, scope: !3819)
!3828 = !DILocation(line: 87, column: 41, scope: !3819)
!3829 = !DILocation(line: 87, column: 47, scope: !3819)
!3830 = !DILocation(line: 87, column: 45, scope: !3819)
!3831 = !DILocation(line: 86, column: 11, scope: !3735)
!3832 = !DILocation(line: 89, column: 8, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3834, file: !1, line: 89, column: 6)
!3834 = distinct !DILexicalBlock(scope: !3819, file: !1, line: 87, column: 53)
!3835 = !DILocation(line: 89, column: 12, scope: !3833)
!3836 = !DILocation(line: 89, column: 16, scope: !3833)
!3837 = !DILocation(line: 89, column: 6, scope: !3834)
!3838 = !DILocation(line: 90, column: 4, scope: !3833)
!3839 = !DILocation(line: 93, column: 7, scope: !3840)
!3840 = distinct !DILexicalBlock(scope: !3834, file: !1, line: 92, column: 6)
!3841 = !DILocation(line: 93, column: 11, scope: !3840)
!3842 = !DILocation(line: 93, column: 15, scope: !3840)
!3843 = !DILocation(line: 93, column: 52, scope: !3840)
!3844 = !DILocation(line: 92, column: 6, scope: !3834)
!3845 = !DILocation(line: 94, column: 7, scope: !3840)
!3846 = !DILocation(line: 94, column: 4, scope: !3840)
!3847 = !DILocation(line: 95, column: 7, scope: !3834)
!3848 = !DILocation(line: 98, column: 18, scope: !3735)
!3849 = !DILocation(line: 98, column: 7, scope: !3735)
!3850 = !DILocation(line: 98, column: 12, scope: !3735)
!3851 = !DILocation(line: 98, column: 16, scope: !3735)
!3852 = !DILocation(line: 99, column: 5, scope: !3736)
!3853 = !DILocation(line: 99, column: 5, scope: !3735)
!3854 = !DILocation(line: 100, column: 3, scope: !3726)
!3855 = !DILocation(line: 100, column: 3, scope: !3725)
!3856 = !DILocation(line: 68, column: 28, scope: !3726)
!3857 = !DILocation(line: 68, column: 3, scope: !3726)
!3858 = distinct !{!3858, !3754, !3859, !1442}
!3859 = !DILocation(line: 100, column: 3, scope: !3727)
!3860 = !DILocation(line: 101, column: 10, scope: !3714)
!3861 = !DILocation(line: 102, column: 1, scope: !3714)
!3862 = !DILocation(line: 101, column: 3, scope: !3714)
!3863 = distinct !DISubprogram(name: "snapshot_framelinks", scope: !1, file: !1, line: 105, type: !3864, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3866)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{!417, !937, !440, !758}
!3866 = !{!3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874}
!3867 = !DILocalVariable(name: "J", arg: 1, scope: !3863, file: !1, line: 105, type: !937)
!3868 = !DILocalVariable(name: "map", arg: 2, scope: !3863, file: !1, line: 105, type: !440)
!3869 = !DILocalVariable(name: "topslot", arg: 3, scope: !3863, file: !1, line: 105, type: !758)
!3870 = !DILocalVariable(name: "frame", scope: !3863, file: !1, line: 107, type: !3732)
!3871 = !DILocalVariable(name: "lim", scope: !3863, file: !1, line: 108, type: !3732)
!3872 = !DILocalVariable(name: "fn", scope: !3863, file: !1, line: 109, type: !946)
!3873 = !DILocalVariable(name: "ftop", scope: !3863, file: !1, line: 110, type: !3732)
!3874 = !DILocalVariable(name: "pcbase", scope: !3863, file: !1, line: 112, type: !479)
!3875 = !DILocation(line: 105, column: 45, scope: !3863)
!3876 = !DILocation(line: 105, column: 59, scope: !3863)
!3877 = !DILocation(line: 105, column: 73, scope: !3863)
!3878 = !DILocation(line: 107, column: 3, scope: !3863)
!3879 = !DILocation(line: 107, column: 12, scope: !3863)
!3880 = !DILocation(line: 107, column: 20, scope: !3863)
!3881 = !DILocation(line: 107, column: 23, scope: !3863)
!3882 = !DILocation(line: 107, column: 26, scope: !3863)
!3883 = !DILocation(line: 107, column: 31, scope: !3863)
!3884 = !DILocation(line: 108, column: 3, scope: !3863)
!3885 = !DILocation(line: 108, column: 12, scope: !3863)
!3886 = !DILocation(line: 108, column: 18, scope: !3863)
!3887 = !DILocation(line: 108, column: 21, scope: !3863)
!3888 = !DILocation(line: 108, column: 24, scope: !3863)
!3889 = !DILocation(line: 108, column: 31, scope: !3863)
!3890 = !DILocation(line: 108, column: 34, scope: !3863)
!3891 = !DILocation(line: 108, column: 29, scope: !3863)
!3892 = !DILocation(line: 108, column: 43, scope: !3863)
!3893 = !DILocation(line: 109, column: 3, scope: !3863)
!3894 = !DILocation(line: 109, column: 11, scope: !3863)
!3895 = !DILocation(line: 109, column: 16, scope: !3863)
!3896 = !DILocation(line: 110, column: 3, scope: !3863)
!3897 = !DILocation(line: 110, column: 12, scope: !3863)
!3898 = !DILocation(line: 110, column: 19, scope: !3863)
!3899 = !DILocation(line: 110, column: 36, scope: !3863)
!3900 = !DILocation(line: 110, column: 42, scope: !3863)
!3901 = !DILocation(line: 110, column: 57, scope: !3863)
!3902 = !DILocation(line: 110, column: 41, scope: !3863)
!3903 = !DILocation(line: 110, column: 70, scope: !3863)
!3904 = !DILocation(line: 110, column: 73, scope: !3863)
!3905 = !DILocation(line: 110, column: 76, scope: !3863)
!3906 = !DILocation(line: 112, column: 3, scope: !3863)
!3907 = !DILocation(line: 112, column: 12, scope: !3863)
!3908 = !DILocation(line: 112, column: 22, scope: !3863)
!3909 = !DILocation(line: 112, column: 36, scope: !3863)
!3910 = !DILocation(line: 112, column: 45, scope: !3863)
!3911 = !DILocation(line: 112, column: 48, scope: !3863)
!3912 = !DILocation(line: 112, column: 57, scope: !3863)
!3913 = !DILocation(line: 112, column: 44, scope: !3863)
!3914 = !DILocation(line: 112, column: 42, scope: !3863)
!3915 = !DILocation(line: 114, column: 10, scope: !3863)
!3916 = !DILocation(line: 114, column: 3, scope: !3863)
!3917 = !DILocation(line: 119, column: 3, scope: !3863)
!3918 = !DILocation(line: 119, column: 10, scope: !3863)
!3919 = !DILocation(line: 119, column: 18, scope: !3863)
!3920 = !DILocation(line: 119, column: 16, scope: !3863)
!3921 = !DILocation(line: 120, column: 9, scope: !3922)
!3922 = distinct !DILexicalBlock(scope: !3923, file: !1, line: 120, column: 9)
!3923 = distinct !DILexicalBlock(scope: !3863, file: !1, line: 119, column: 23)
!3924 = !DILocation(line: 120, column: 9, scope: !3923)
!3925 = !DILocation(line: 124, column: 15, scope: !3926)
!3926 = distinct !DILexicalBlock(scope: !3922, file: !1, line: 120, column: 29)
!3927 = !DILocation(line: 124, column: 13, scope: !3926)
!3928 = !DILocation(line: 125, column: 5, scope: !3926)
!3929 = !DILocation(line: 125, column: 16, scope: !3930)
!3930 = distinct !DILexicalBlock(scope: !3922, file: !1, line: 125, column: 16)
!3931 = !DILocation(line: 125, column: 16, scope: !3922)
!3932 = !DILocation(line: 130, column: 15, scope: !3933)
!3933 = distinct !DILexicalBlock(scope: !3930, file: !1, line: 125, column: 37)
!3934 = !DILocation(line: 130, column: 13, scope: !3933)
!3935 = !DILocation(line: 131, column: 5, scope: !3933)
!3936 = !DILocation(line: 136, column: 15, scope: !3937)
!3937 = distinct !DILexicalBlock(scope: !3930, file: !1, line: 131, column: 12)
!3938 = !DILocation(line: 136, column: 13, scope: !3937)
!3939 = !DILocation(line: 137, column: 7, scope: !3937)
!3940 = distinct !{!3940, !3917, !3941, !1442}
!3941 = !DILocation(line: 141, column: 3, scope: !3863)
!3942 = !DILocation(line: 139, column: 9, scope: !3943)
!3943 = distinct !DILexicalBlock(scope: !3923, file: !1, line: 139, column: 9)
!3944 = !DILocation(line: 139, column: 17, scope: !3943)
!3945 = !DILocation(line: 139, column: 47, scope: !3943)
!3946 = !DILocation(line: 139, column: 15, scope: !3943)
!3947 = !DILocation(line: 139, column: 59, scope: !3943)
!3948 = !DILocation(line: 139, column: 57, scope: !3943)
!3949 = !DILocation(line: 139, column: 9, scope: !3923)
!3950 = !DILocation(line: 140, column: 14, scope: !3943)
!3951 = !DILocation(line: 140, column: 22, scope: !3943)
!3952 = !DILocation(line: 140, column: 52, scope: !3943)
!3953 = !DILocation(line: 140, column: 20, scope: !3943)
!3954 = !DILocation(line: 140, column: 12, scope: !3943)
!3955 = !DILocation(line: 140, column: 7, scope: !3943)
!3956 = !DILocation(line: 142, column: 24, scope: !3863)
!3957 = !DILocation(line: 142, column: 31, scope: !3863)
!3958 = !DILocation(line: 142, column: 29, scope: !3863)
!3959 = !DILocation(line: 142, column: 14, scope: !3863)
!3960 = !DILocation(line: 142, column: 4, scope: !3863)
!3961 = !DILocation(line: 142, column: 12, scope: !3863)
!3962 = !DILocation(line: 150, column: 1, scope: !3863)
!3963 = !DILocation(line: 145, column: 3, scope: !3863)
!3964 = !DISubprogram(name: "lj_ir_k64", scope: !1261, file: !1261, line: 43, type: !3965, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3965 = !DISubroutineType(types: !3966)
!3966 = !{!755, !937, !754, !479}
!3967 = distinct !DISubprogram(name: "bc_isret", scope: !231, file: !231, line: 257, type: !3968, scopeLine: 258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3970)
!3968 = !DISubroutineType(types: !3969)
!3969 = !{!467, !748}
!3970 = !{!3971}
!3971 = !DILocalVariable(name: "op", arg: 1, scope: !3967, file: !231, line: 257, type: !748)
!3972 = !DILocation(line: 257, column: 37, scope: !3967)
!3973 = !DILocation(line: 259, column: 11, scope: !3967)
!3974 = !DILocation(line: 259, column: 14, scope: !3967)
!3975 = !DILocation(line: 259, column: 25, scope: !3967)
!3976 = !DILocation(line: 259, column: 28, scope: !3967)
!3977 = !DILocation(line: 259, column: 31, scope: !3967)
!3978 = !DILocation(line: 259, column: 41, scope: !3967)
!3979 = !DILocation(line: 259, column: 44, scope: !3967)
!3980 = !DILocation(line: 259, column: 47, scope: !3967)
!3981 = !DILocation(line: 259, column: 58, scope: !3967)
!3982 = !DILocation(line: 259, column: 61, scope: !3967)
!3983 = !DILocation(line: 259, column: 64, scope: !3967)
!3984 = !DILocation(line: 259, column: 3, scope: !3967)
!3985 = !DISubprogram(name: "lj_ir_kint", scope: !1261, file: !1261, line: 42, type: !3986, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{!755, !937, !464}
!3988 = !DISubprogram(name: "lj_ir_kgc", scope: !1261, file: !1261, line: 47, type: !3989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{!755, !937, !568, !446}
!3991 = !DISubprogram(name: "lj_ir_kptr_", scope: !1261, file: !1261, line: 48, type: !3992, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3992 = !DISubroutineType(types: !3993)
!3993 = !{!755, !937, !754, !634}
!3994 = distinct !DISubprogram(name: "snap_sunk_store2", scope: !1, file: !1, line: 436, type: !2958, scopeLine: 437, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3995)
!3995 = !{!3996, !3997, !3998, !3999}
!3996 = !DILocalVariable(name: "T", arg: 1, scope: !3994, file: !1, line: 436, type: !470)
!3997 = !DILocalVariable(name: "ira", arg: 2, scope: !3994, file: !1, line: 436, type: !489)
!3998 = !DILocalVariable(name: "irs", arg: 3, scope: !3994, file: !1, line: 436, type: !489)
!3999 = !DILocalVariable(name: "irk", scope: !4000, file: !1, line: 440, type: !489)
!4000 = distinct !DILexicalBlock(scope: !4001, file: !1, line: 439, column: 51)
!4001 = distinct !DILexicalBlock(scope: !3994, file: !1, line: 438, column: 7)
!4002 = !DILocation(line: 436, column: 38, scope: !3994)
!4003 = !DILocation(line: 436, column: 48, scope: !3994)
!4004 = !DILocation(line: 436, column: 60, scope: !3994)
!4005 = !DILocation(line: 438, column: 7, scope: !4001)
!4006 = !DILocation(line: 438, column: 12, scope: !4001)
!4007 = !DILocation(line: 438, column: 14, scope: !4001)
!4008 = !DILocation(line: 438, column: 27, scope: !4001)
!4009 = !DILocation(line: 438, column: 30, scope: !4001)
!4010 = !DILocation(line: 438, column: 35, scope: !4001)
!4011 = !DILocation(line: 438, column: 37, scope: !4001)
!4012 = !DILocation(line: 438, column: 50, scope: !4001)
!4013 = !DILocation(line: 439, column: 7, scope: !4001)
!4014 = !DILocation(line: 439, column: 12, scope: !4001)
!4015 = !DILocation(line: 439, column: 14, scope: !4001)
!4016 = !DILocation(line: 439, column: 27, scope: !4001)
!4017 = !DILocation(line: 439, column: 30, scope: !4001)
!4018 = !DILocation(line: 439, column: 35, scope: !4001)
!4019 = !DILocation(line: 439, column: 37, scope: !4001)
!4020 = !DILocation(line: 438, column: 7, scope: !3994)
!4021 = !DILocation(line: 440, column: 5, scope: !4000)
!4022 = !DILocation(line: 440, column: 12, scope: !4000)
!4023 = !DILocation(line: 440, column: 19, scope: !4000)
!4024 = !DILocation(line: 440, column: 22, scope: !4000)
!4025 = !DILocation(line: 440, column: 25, scope: !4000)
!4026 = !DILocation(line: 440, column: 30, scope: !4000)
!4027 = !DILocation(line: 441, column: 9, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !4000, file: !1, line: 441, column: 9)
!4029 = !DILocation(line: 441, column: 14, scope: !4028)
!4030 = !DILocation(line: 441, column: 16, scope: !4028)
!4031 = !DILocation(line: 441, column: 27, scope: !4028)
!4032 = !DILocation(line: 441, column: 30, scope: !4028)
!4033 = !DILocation(line: 441, column: 35, scope: !4028)
!4034 = !DILocation(line: 441, column: 37, scope: !4028)
!4035 = !DILocation(line: 441, column: 9, scope: !4000)
!4036 = !DILocation(line: 442, column: 14, scope: !4028)
!4037 = !DILocation(line: 442, column: 17, scope: !4028)
!4038 = !DILocation(line: 442, column: 20, scope: !4028)
!4039 = !DILocation(line: 442, column: 25, scope: !4028)
!4040 = !DILocation(line: 442, column: 11, scope: !4028)
!4041 = !DILocation(line: 442, column: 7, scope: !4028)
!4042 = !DILocation(line: 443, column: 14, scope: !4000)
!4043 = !DILocation(line: 443, column: 17, scope: !4000)
!4044 = !DILocation(line: 443, column: 20, scope: !4000)
!4045 = !DILocation(line: 443, column: 25, scope: !4000)
!4046 = !DILocation(line: 443, column: 33, scope: !4000)
!4047 = !DILocation(line: 443, column: 30, scope: !4000)
!4048 = !DILocation(line: 443, column: 5, scope: !4000)
!4049 = !DILocation(line: 444, column: 3, scope: !4001)
!4050 = !DILocation(line: 445, column: 3, scope: !3994)
!4051 = !DILocation(line: 446, column: 1, scope: !3994)
!4052 = distinct !DISubprogram(name: "ctype_cts", scope: !757, file: !757, line: 379, type: !4053, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4055)
!4053 = !DISubroutineType(types: !4054)
!4054 = !{!759, !685}
!4055 = !{!4056, !4057}
!4056 = !DILocalVariable(name: "L", arg: 1, scope: !4052, file: !757, line: 379, type: !685)
!4057 = !DILocalVariable(name: "cts", scope: !4052, file: !757, line: 381, type: !759)
!4058 = !DILocation(line: 379, column: 49, scope: !4052)
!4059 = !DILocation(line: 381, column: 3, scope: !4052)
!4060 = !DILocation(line: 381, column: 12, scope: !4052)
!4061 = !DILocation(line: 381, column: 18, scope: !4052)
!4062 = !{!1489, !1091, i64 16}
!4063 = !{!4064, !1091, i64 368}
!4064 = !{!"global_State", !1068, i64 0, !1073, i64 8, !1073, i64 12, !1068, i64 16, !1068, i64 24, !4065, i64 32, !1073, i64 128, !4066, i64 136, !4067, i64 168, !1069, i64 192, !1069, i64 193, !1069, i64 194, !1069, i64 195, !1090, i64 200, !1069, i64 208, !1069, i64 216, !1069, i64 224, !4068, i64 232, !4069, i64 256, !1073, i64 304, !1073, i64 308, !1068, i64 312, !1068, i64 320, !1068, i64 328, !1073, i64 336, !1073, i64 340, !1090, i64 344, !1093, i64 352, !1093, i64 360, !1093, i64 368, !1069, i64 376}
!4065 = !{!"GCState", !1091, i64 0, !1091, i64 8, !1069, i64 16, !1069, i64 17, !1069, i64 18, !1069, i64 19, !1073, i64 20, !1090, i64 24, !1093, i64 32, !1090, i64 40, !1090, i64 48, !1090, i64 56, !1090, i64 64, !1091, i64 72, !1091, i64 80, !1073, i64 88, !1073, i64 92}
!4066 = !{!"SBuf", !1093, i64 0, !1093, i64 8, !1093, i64 16, !1093, i64 24}
!4067 = !{!"GCstr", !1090, i64 0, !1069, i64 8, !1069, i64 9, !1069, i64 10, !1069, i64 11, !1073, i64 12, !1073, i64 16}
!4068 = !{!"Node", !1069, i64 0, !1069, i64 8, !1093, i64 16}
!4069 = !{!"GCupval", !1090, i64 0, !1069, i64 8, !1069, i64 9, !1069, i64 10, !1069, i64 11, !1069, i64 16, !1093, i64 32, !1073, i64 40}
!4070 = !DILocation(line: 382, column: 12, scope: !4052)
!4071 = !DILocation(line: 382, column: 3, scope: !4052)
!4072 = !DILocation(line: 382, column: 8, scope: !4052)
!4073 = !DILocation(line: 382, column: 10, scope: !4052)
!4074 = !{!4075, !1068, i64 16}
!4075 = !{!"CTState", !1068, i64 0, !1073, i64 8, !1073, i64 12, !1068, i64 16, !1068, i64 24, !1068, i64 32, !1068, i64 40, !4076, i64 48, !1069, i64 216}
!4076 = !{!"CCallback", !1069, i64 0, !1069, i64 64, !1068, i64 128, !1068, i64 136, !1068, i64 144, !1073, i64 152, !1073, i64 156, !1073, i64 160}
!4077 = !DILocation(line: 383, column: 10, scope: !4052)
!4078 = !DILocation(line: 384, column: 1, scope: !4052)
!4079 = !DILocation(line: 383, column: 3, scope: !4052)
!4080 = !DISubprogram(name: "lj_ctype_info", scope: !757, file: !757, line: 451, type: !4081, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4081 = !DISubroutineType(types: !4082)
!4082 = !{!769, !759, !756, !4083}
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!4084 = !DISubprogram(name: "lj_cdata_newx", scope: !4085, file: !4085, line: 63, type: !4086, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4085 = !DIFile(filename: "./lj_cdata.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/LuaJIT-2.1-20190507/src", checksumkind: CSK_MD5, checksum: "031cdf801c079b3d4e238882ca9c44e2")
!4086 = !DISubroutineType(types: !4087)
!4087 = !{!3250, !759, !756, !771, !769}
!4088 = distinct !DISubprogram(name: "setcdataV", scope: !418, file: !418, line: 891, type: !4089, scopeLine: 891, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4091)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{null, !685, !627, !3250}
!4091 = !{!4092, !4093, !4094}
!4092 = !DILocalVariable(name: "L", arg: 1, scope: !4088, file: !418, line: 891, type: !685)
!4093 = !DILocalVariable(name: "o", arg: 2, scope: !4088, file: !418, line: 891, type: !627)
!4094 = !DILocalVariable(name: "v", arg: 3, scope: !4088, file: !418, line: 891, type: !3250)
!4095 = !DILocation(line: 891, column: 1, scope: !4088)
!4096 = distinct !DISubprogram(name: "snap_restoredata", scope: !1, file: !1, line: 682, type: !4097, scopeLine: 685, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4099)
!4097 = !DISubroutineType(types: !4098)
!4098 = !{null, !470, !447, !1979, !1987, !485, !634, !771}
!4099 = !{!4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111}
!4100 = !DILocalVariable(name: "T", arg: 1, scope: !4096, file: !1, line: 682, type: !470)
!4101 = !DILocalVariable(name: "ex", arg: 2, scope: !4096, file: !1, line: 682, type: !447)
!4102 = !DILocalVariable(name: "snapno", arg: 3, scope: !4096, file: !1, line: 683, type: !1979)
!4103 = !DILocalVariable(name: "rfilt", arg: 4, scope: !4096, file: !1, line: 683, type: !1987)
!4104 = !DILocalVariable(name: "ref", arg: 5, scope: !4096, file: !1, line: 684, type: !485)
!4105 = !DILocalVariable(name: "dst", arg: 6, scope: !4096, file: !1, line: 684, type: !634)
!4106 = !DILocalVariable(name: "sz", arg: 7, scope: !4096, file: !1, line: 684, type: !771)
!4107 = !DILocalVariable(name: "ir", scope: !4096, file: !1, line: 686, type: !489)
!4108 = !DILocalVariable(name: "rs", scope: !4096, file: !1, line: 687, type: !2146)
!4109 = !DILocalVariable(name: "src", scope: !4096, file: !1, line: 688, type: !917)
!4110 = !DILocalVariable(name: "tmp", scope: !4096, file: !1, line: 689, type: !479)
!4111 = !DILocalVariable(name: "r", scope: !4112, file: !1, line: 709, type: !3568)
!4112 = distinct !DILexicalBlock(scope: !4113, file: !1, line: 708, column: 12)
!4113 = distinct !DILexicalBlock(scope: !4114, file: !1, line: 702, column: 9)
!4114 = distinct !DILexicalBlock(scope: !4115, file: !1, line: 699, column: 10)
!4115 = distinct !DILexicalBlock(scope: !4096, file: !1, line: 690, column: 7)
!4116 = !DILocation(line: 682, column: 39, scope: !4096)
!4117 = !DILocation(line: 682, column: 53, scope: !4096)
!4118 = !DILocation(line: 683, column: 16, scope: !4096)
!4119 = !DILocation(line: 683, column: 36, scope: !4096)
!4120 = !DILocation(line: 684, column: 15, scope: !4096)
!4121 = !DILocation(line: 684, column: 26, scope: !4096)
!4122 = !DILocation(line: 684, column: 38, scope: !4096)
!4123 = !DILocation(line: 686, column: 3, scope: !4096)
!4124 = !DILocation(line: 686, column: 10, scope: !4096)
!4125 = !DILocation(line: 686, column: 16, scope: !4096)
!4126 = !DILocation(line: 686, column: 19, scope: !4096)
!4127 = !DILocation(line: 686, column: 22, scope: !4096)
!4128 = !DILocation(line: 687, column: 3, scope: !4096)
!4129 = !DILocation(line: 687, column: 9, scope: !4096)
!4130 = !DILocation(line: 687, column: 14, scope: !4096)
!4131 = !DILocation(line: 687, column: 18, scope: !4096)
!4132 = !DILocation(line: 688, column: 3, scope: !4096)
!4133 = !DILocation(line: 688, column: 12, scope: !4096)
!4134 = !DILocation(line: 689, column: 3, scope: !4096)
!4135 = !DILocation(line: 689, column: 12, scope: !4096)
!4136 = !DILocation(line: 690, column: 7, scope: !4115)
!4137 = !DILocation(line: 690, column: 7, scope: !4096)
!4138 = !DILocation(line: 691, column: 9, scope: !4139)
!4139 = distinct !DILexicalBlock(scope: !4140, file: !1, line: 691, column: 9)
!4140 = distinct !DILexicalBlock(scope: !4115, file: !1, line: 690, column: 23)
!4141 = !DILocation(line: 691, column: 9, scope: !4140)
!4142 = !DILocation(line: 692, column: 25, scope: !4143)
!4143 = distinct !DILexicalBlock(scope: !4139, file: !1, line: 691, column: 23)
!4144 = !DILocation(line: 692, column: 11, scope: !4143)
!4145 = !DILocation(line: 693, column: 5, scope: !4143)
!4146 = !DILocation(line: 693, column: 16, scope: !4147)
!4147 = distinct !DILexicalBlock(scope: !4139, file: !1, line: 693, column: 16)
!4148 = !DILocation(line: 693, column: 19, scope: !4147)
!4149 = !DILocation(line: 693, column: 16, scope: !4139)
!4150 = !DILocation(line: 694, column: 33, scope: !4151)
!4151 = distinct !DILexicalBlock(scope: !4147, file: !1, line: 693, column: 25)
!4152 = !DILocation(line: 694, column: 37, scope: !4151)
!4153 = !DILocation(line: 694, column: 13, scope: !4151)
!4154 = !DILocation(line: 694, column: 11, scope: !4151)
!4155 = !DILocation(line: 695, column: 11, scope: !4151)
!4156 = !DILocation(line: 696, column: 5, scope: !4151)
!4157 = !DILocation(line: 697, column: 14, scope: !4158)
!4158 = distinct !DILexicalBlock(scope: !4147, file: !1, line: 696, column: 12)
!4159 = !DILocation(line: 697, column: 11, scope: !4158)
!4160 = !DILocation(line: 699, column: 3, scope: !4140)
!4161 = !DILocation(line: 700, column: 9, scope: !4162)
!4162 = distinct !DILexicalBlock(scope: !4114, file: !1, line: 700, column: 9)
!4163 = !DILocation(line: 700, column: 9, scope: !4114)
!4164 = !DILocation(line: 701, column: 27, scope: !4162)
!4165 = !DILocation(line: 701, column: 30, scope: !4162)
!4166 = !DILocation(line: 701, column: 38, scope: !4162)
!4167 = !DILocation(line: 701, column: 43, scope: !4162)
!4168 = !DILocation(line: 701, column: 12, scope: !4162)
!4169 = !DILocation(line: 701, column: 10, scope: !4162)
!4170 = !DILocation(line: 701, column: 7, scope: !4162)
!4171 = !DILocation(line: 702, column: 9, scope: !4113)
!4172 = !DILocation(line: 702, column: 9, scope: !4114)
!4173 = !DILocation(line: 703, column: 14, scope: !4174)
!4174 = distinct !DILexicalBlock(scope: !4113, file: !1, line: 702, column: 39)
!4175 = !DILocation(line: 703, column: 18, scope: !4174)
!4176 = !DILocation(line: 703, column: 24, scope: !4174)
!4177 = !DILocation(line: 703, column: 11, scope: !4174)
!4178 = !DILocation(line: 704, column: 11, scope: !4179)
!4179 = distinct !DILexicalBlock(scope: !4174, file: !1, line: 704, column: 11)
!4180 = !DILocation(line: 704, column: 14, scope: !4179)
!4181 = !DILocation(line: 704, column: 19, scope: !4179)
!4182 = !DILocation(line: 704, column: 23, scope: !4179)
!4183 = !DILocation(line: 704, column: 11, scope: !4174)
!4184 = !DILocation(line: 705, column: 29, scope: !4185)
!4185 = distinct !DILexicalBlock(scope: !4179, file: !1, line: 704, column: 40)
!4186 = !DILocation(line: 705, column: 28, scope: !4185)
!4187 = !DILocation(line: 705, column: 8, scope: !4185)
!4188 = !DILocation(line: 705, column: 6, scope: !4185)
!4189 = !DILocation(line: 706, column: 6, scope: !4185)
!4190 = !DILocation(line: 707, column: 7, scope: !4185)
!4191 = !DILocation(line: 708, column: 5, scope: !4174)
!4192 = !DILocation(line: 709, column: 7, scope: !4112)
!4193 = !DILocation(line: 709, column: 11, scope: !4112)
!4194 = !DILocation(line: 709, column: 15, scope: !4112)
!4195 = !DILocation(line: 710, column: 11, scope: !4196)
!4196 = distinct !DILexicalBlock(scope: !4112, file: !1, line: 710, column: 11)
!4197 = !DILocation(line: 710, column: 11, scope: !4112)
!4198 = !DILocation(line: 713, column: 19, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !4196, file: !1, line: 710, column: 24)
!4200 = !DILocation(line: 713, column: 22, scope: !4199)
!4201 = !DILocation(line: 713, column: 26, scope: !4199)
!4202 = !DILocation(line: 713, column: 34, scope: !4199)
!4203 = !DILocation(line: 713, column: 41, scope: !4199)
!4204 = !DILocation(line: 713, column: 45, scope: !4199)
!4205 = !DILocation(line: 713, column: 50, scope: !4199)
!4206 = !DILocation(line: 713, column: 2, scope: !4199)
!4207 = !DILocation(line: 714, column: 47, scope: !4199)
!4208 = !DILocation(line: 714, column: 35, scope: !4199)
!4209 = !DILocation(line: 714, column: 23, scope: !4199)
!4210 = !DILocation(line: 714, column: 17, scope: !4199)
!4211 = !DILocation(line: 714, column: 21, scope: !4199)
!4212 = !DILocation(line: 715, column: 2, scope: !4199)
!4213 = !DILocation(line: 717, column: 25, scope: !4112)
!4214 = !DILocation(line: 717, column: 29, scope: !4112)
!4215 = !DILocation(line: 717, column: 33, scope: !4112)
!4216 = !DILocation(line: 717, column: 34, scope: !4112)
!4217 = !DILocation(line: 717, column: 11, scope: !4112)
!4218 = !DILocation(line: 719, column: 11, scope: !4219)
!4219 = distinct !DILexicalBlock(scope: !4112, file: !1, line: 719, column: 11)
!4220 = !DILocation(line: 719, column: 13, scope: !4219)
!4221 = !DILocation(line: 719, column: 11, scope: !4112)
!4222 = !DILocation(line: 720, column: 20, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !4219, file: !1, line: 719, column: 29)
!4224 = !DILocation(line: 720, column: 24, scope: !4223)
!4225 = !DILocation(line: 720, column: 28, scope: !4223)
!4226 = !DILocation(line: 720, column: 29, scope: !4223)
!4227 = !DILocation(line: 720, column: 6, scope: !4223)
!4228 = !DILocation(line: 729, column: 7, scope: !4223)
!4229 = !DILocation(line: 732, column: 5, scope: !4113)
!4230 = !DILocation(line: 735, column: 7, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4096, file: !1, line: 735, column: 7)
!4232 = !DILocation(line: 735, column: 10, scope: !4231)
!4233 = !DILocation(line: 735, column: 7, scope: !4096)
!4234 = !DILocation(line: 735, column: 35, scope: !4231)
!4235 = !DILocation(line: 735, column: 34, scope: !4231)
!4236 = !DILocation(line: 735, column: 28, scope: !4231)
!4237 = !DILocation(line: 735, column: 32, scope: !4231)
!4238 = !DILocation(line: 735, column: 16, scope: !4231)
!4239 = !DILocation(line: 736, column: 12, scope: !4240)
!4240 = distinct !DILexicalBlock(scope: !4231, file: !1, line: 736, column: 12)
!4241 = !DILocation(line: 736, column: 15, scope: !4240)
!4242 = !DILocation(line: 736, column: 12, scope: !4231)
!4243 = !DILocation(line: 736, column: 51, scope: !4240)
!4244 = !DILocation(line: 736, column: 39, scope: !4240)
!4245 = !DILocation(line: 736, column: 33, scope: !4240)
!4246 = !DILocation(line: 736, column: 37, scope: !4240)
!4247 = !DILocation(line: 736, column: 21, scope: !4240)
!4248 = !DILocation(line: 737, column: 12, scope: !4249)
!4249 = distinct !DILexicalBlock(scope: !4240, file: !1, line: 737, column: 12)
!4250 = !DILocation(line: 737, column: 15, scope: !4249)
!4251 = !DILocation(line: 737, column: 12, scope: !4240)
!4252 = !DILocation(line: 737, column: 47, scope: !4249)
!4253 = !DILocation(line: 737, column: 46, scope: !4249)
!4254 = !DILocation(line: 737, column: 38, scope: !4249)
!4255 = !DILocation(line: 737, column: 32, scope: !4249)
!4256 = !DILocation(line: 737, column: 36, scope: !4249)
!4257 = !DILocation(line: 737, column: 21, scope: !4249)
!4258 = !DILocation(line: 738, column: 36, scope: !4249)
!4259 = !DILocation(line: 738, column: 35, scope: !4249)
!4260 = !DILocation(line: 738, column: 26, scope: !4249)
!4261 = !DILocation(line: 738, column: 20, scope: !4249)
!4262 = !DILocation(line: 738, column: 24, scope: !4249)
!4263 = !DILocation(line: 739, column: 1, scope: !4096)
!4264 = !DISubprogram(name: "lj_tab_new", scope: !4265, file: !4265, line: 36, type: !4266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4265 = !DIFile(filename: "./lj_tab.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/LuaJIT-2.1-20190507/src", checksumkind: CSK_MD5, checksum: "658a50588b18025722758cdb84a3c46a")
!4266 = !DISubroutineType(types: !4267)
!4267 = !{!884, !685, !419, !419}
!4268 = !DISubprogram(name: "lj_tab_dup", scope: !4265, file: !4265, line: 41, type: !4269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4269 = !DISubroutineType(types: !4270)
!4270 = !{!884, !685, !4271}
!4271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4272, size: 64)
!4272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !713)
!4273 = distinct !DISubprogram(name: "settabV", scope: !418, file: !418, line: 892, type: !4274, scopeLine: 892, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4276)
!4274 = !DISubroutineType(types: !4275)
!4275 = !{null, !685, !627, !884}
!4276 = !{!4277, !4278, !4279}
!4277 = !DILocalVariable(name: "L", arg: 1, scope: !4273, file: !418, line: 892, type: !685)
!4278 = !DILocalVariable(name: "o", arg: 2, scope: !4273, file: !418, line: 892, type: !627)
!4279 = !DILocalVariable(name: "v", arg: 3, scope: !4273, file: !418, line: 892, type: !884)
!4280 = !DILocation(line: 892, column: 1, scope: !4273)
!4281 = !DISubprogram(name: "lj_ir_kvalue", scope: !1261, file: !1261, line: 82, type: !4282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4282 = !DISubroutineType(types: !4283)
!4283 = !{null, !685, !627, !4284}
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !490)
!4286 = !DISubprogram(name: "lj_tab_set", scope: !4265, file: !4265, line: 61, type: !4287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4287 = !DISubroutineType(types: !4288)
!4288 = !{!627, !685, !884, !3732}
!4289 = distinct !DISubprogram(name: "setgcV", scope: !418, file: !418, line: 877, type: !4290, scopeLine: 878, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4292)
!4290 = !DISubroutineType(types: !4291)
!4291 = !{null, !685, !627, !568, !419}
!4292 = !{!4293, !4294, !4295, !4296}
!4293 = !DILocalVariable(name: "L", arg: 1, scope: !4289, file: !418, line: 877, type: !685)
!4294 = !DILocalVariable(name: "o", arg: 2, scope: !4289, file: !418, line: 877, type: !627)
!4295 = !DILocalVariable(name: "v", arg: 3, scope: !4289, file: !418, line: 877, type: !568)
!4296 = !DILocalVariable(name: "it", arg: 4, scope: !4289, file: !418, line: 877, type: !419)
!4297 = !DILocation(line: 877, column: 42, scope: !4289)
!4298 = !DILocation(line: 877, column: 53, scope: !4289)
!4299 = !DILocation(line: 877, column: 63, scope: !4289)
!4300 = !DILocation(line: 877, column: 75, scope: !4289)
!4301 = !DILocation(line: 879, column: 13, scope: !4289)
!4302 = !DILocation(line: 879, column: 16, scope: !4289)
!4303 = !DILocation(line: 879, column: 19, scope: !4289)
!4304 = !DILocation(line: 879, column: 3, scope: !4289)
!4305 = !DILocation(line: 879, column: 24, scope: !4289)
!4306 = !DILocation(line: 880, column: 1, scope: !4289)
!4307 = distinct !DISubprogram(name: "setgcVraw", scope: !418, file: !418, line: 868, type: !4308, scopeLine: 869, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4310)
!4308 = !DISubroutineType(types: !4309)
!4309 = !{null, !627, !568, !419}
!4310 = !{!4311, !4312, !4313}
!4311 = !DILocalVariable(name: "o", arg: 1, scope: !4307, file: !418, line: 868, type: !627)
!4312 = !DILocalVariable(name: "v", arg: 2, scope: !4307, file: !418, line: 868, type: !568)
!4313 = !DILocalVariable(name: "itype", arg: 3, scope: !4307, file: !418, line: 868, type: !419)
!4314 = !DILocation(line: 868, column: 42, scope: !4307)
!4315 = !DILocation(line: 868, column: 52, scope: !4307)
!4316 = !DILocation(line: 868, column: 64, scope: !4307)
!4317 = !DILocation(line: 871, column: 3, scope: !4307)
!4318 = !DILocation(line: 875, column: 1, scope: !4307)
!4319 = distinct !DISubprogram(name: "setintV", scope: !418, file: !418, line: 900, type: !4320, scopeLine: 901, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4322)
!4320 = !DISubroutineType(types: !4321)
!4321 = !{null, !627, !464}
!4322 = !{!4323, !4324}
!4323 = !DILocalVariable(name: "o", arg: 1, scope: !4319, file: !418, line: 900, type: !627)
!4324 = !DILocalVariable(name: "i", arg: 2, scope: !4319, file: !418, line: 900, type: !464)
!4325 = !DILocation(line: 900, column: 40, scope: !4319)
!4326 = !DILocation(line: 900, column: 51, scope: !4319)
!4327 = !DILocation(line: 905, column: 22, scope: !4319)
!4328 = !DILocation(line: 905, column: 10, scope: !4319)
!4329 = !DILocation(line: 905, column: 3, scope: !4319)
!4330 = !DILocation(line: 905, column: 8, scope: !4319)
!4331 = !DILocation(line: 907, column: 1, scope: !4319)
!4332 = distinct !DISubprogram(name: "irt_toitype_", scope: !81, file: !81, line: 416, type: !4333, scopeLine: 417, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4335)
!4333 = !DISubroutineType(types: !4334)
!4334 = !{!419, !446}
!4335 = !{!4336}
!4336 = !DILocalVariable(name: "t", arg: 1, scope: !4332, file: !81, line: 416, type: !446)
!4337 = !DILocation(line: 416, column: 48, scope: !4332)
!4338 = !DILocation(line: 423, column: 23, scope: !4339)
!4339 = distinct !DILexicalBlock(scope: !4340, file: !81, line: 421, column: 10)
!4340 = distinct !DILexicalBlock(scope: !4332, file: !81, line: 419, column: 7)
!4341 = !DILocation(line: 423, column: 12, scope: !4339)
!4342 = !DILocation(line: 423, column: 5, scope: !4339)

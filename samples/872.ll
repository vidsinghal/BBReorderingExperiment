; ModuleID = 'samples/872.bc'
source_filename = "../spack-src/test/arm/neon/qdmulh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { ptr, ptr }
%struct.anon.0 = type { [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.1 = type { [2 x i32], [2 x i32], [2 x i32] }
%struct.anon.2 = type { [8 x i16], [8 x i16], [8 x i16] }
%struct.anon.3 = type { [4 x i32], [4 x i32], [4 x i32] }
%union.simde_int16x4_private = type { <4 x i16> }
%union.simde_int16x8_private = type { <8 x i16> }
%union.simde_int32x4_private = type { <4 x i32> }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%union.simde_int32x2_private = type { <2 x i32> }
%union.simde_int64x2_private = type { <2 x i64> }

@stdout = external global ptr, align 8
@.str = private unnamed_addr constant [8 x i8] c"1..%zu\0A\00", align 1
@test_suite_tests = internal constant [4 x %struct.anon] [%struct.anon { ptr @test_simde_vqdmulh_s16, ptr @.str.3 }, %struct.anon { ptr @test_simde_vqdmulh_s32, ptr @.str.4 }, %struct.anon { ptr @test_simde_vqdmulhq_s16, ptr @.str.5 }, %struct.anon { ptr @test_simde_vqdmulhq_s32, ptr @.str.6 }], align 16
@.str.1 = private unnamed_addr constant [22 x i8] c"not ok %zu qdmulh/%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"ok %zu qdmulh/%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"vqdmulh_s16\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"vqdmulh_s32\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"vqdmulhq_s16\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"vqdmulhq_s32\00", align 1
@test_simde_vqdmulh_s16.test_vec = internal constant [8 x %struct.anon.0] [%struct.anon.0 { [4 x i16] [i16 10007, i16 28883, i16 -16203, i16 -25505], [4 x i16] [i16 -28965, i16 -965, i16 -21451, i16 -19467], [4 x i16] [i16 -8846, i16 -851, i16 10607, i16 15152] }, %struct.anon.0 { [4 x i16] [i16 297, i16 -28727, i16 26792, i16 21146], [4 x i16] [i16 -2097, i16 13945, i16 6034, i16 -22205], [4 x i16] [i16 -20, i16 -12226, i16 4933, i16 -14330] }, %struct.anon.0 { [4 x i16] [i16 5694, i16 -3302, i16 31190, i16 -20080], [4 x i16] [i16 -13560, i16 15789, i16 -23944, i16 -24080], [4 x i16] [i16 -2357, i16 -1592, i16 -22791, i16 14756] }, %struct.anon.0 { [4 x i16] [i16 -17757, i16 19504, i16 -13790, i16 -3682], [4 x i16] [i16 6337, i16 21287, i16 27183, i16 28413], [4 x i16] [i16 -3435, i16 12670, i16 -11440, i16 -3193] }, %struct.anon.0 { [4 x i16] [i16 6017, i16 22369, i16 -3696, i16 -26615], [4 x i16] [i16 -18755, i16 13781, i16 -14759, i16 -810], [4 x i16] [i16 -3444, i16 9407, i16 1664, i16 657] }, %struct.anon.0 { [4 x i16] [i16 1664, i16 -23992, i16 -6191, i16 -28013], [4 x i16] [i16 -17665, i16 12006, i16 -7388, i16 -23140], [4 x i16] [i16 -898, i16 -8791, i16 1395, i16 19782] }, %struct.anon.0 { [4 x i16] [i16 -262, i16 -29955, i16 1775, i16 -21469], [4 x i16] [i16 -1860, i16 5601, i16 -18498, i16 15890], [4 x i16] [i16 14, i16 -5121, i16 -1003, i16 -10411] }, %struct.anon.0 { [4 x i16] [i16 23230, i16 -28704, i16 29505, i16 16417], [4 x i16] [i16 1837, i16 21103, i16 3050, i16 -6921], [4 x i16] [i16 1302, i16 -18486, i16 2746, i16 -3468] }], align 16
@.str.7 = private unnamed_addr constant [36 x i8] c"../spack-src/test/arm/neon/qdmulh.c\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"simde_vld1_s16(test_vec[i].r)\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"%s:%d: assertion failed: %s[%zu] == %s[%zu] (%d == %d)\0A\00", align 1
@stderr = external global ptr, align 8
@test_simde_vqdmulh_s32.test_vec = internal constant [8 x %struct.anon.1] [%struct.anon.1 { [2 x i32] [i32 1569407431, i32 1412891023], [2 x i32] [i32 132938559, i32 -247554225], [2 x i32] [i32 97153132, i32 -162873018] }, %struct.anon.1 { [2 x i32] [i32 2121161384, i32 1882235674], [2 x i32] [i32 1466757416, i32 1199108991], [2 x i32] [i32 1448778989, i32 1051000188] }, %struct.anon.1 { [2 x i32] [i32 -995884235, i32 1125767940], [2 x i32] [i32 -1505098410, i32 1284999588], [2 x i32] [i32 697981463, i32 673630898] }, %struct.anon.1 { [2 x i32] [i32 -37026077, i32 -781321303], [2 x i32] [i32 1797839340, i32 45261005], [2 x i32] [i32 -30997646, i32 -16467361] }, %struct.anon.1 { [2 x i32] [i32 -1463396444, i32 -1980965070], [2 x i32] [i32 -1993394460, i32 -1563048257], [2 x i32] [i32 1358392818, i32 1441847532] }, %struct.anon.1 { [2 x i32] [i32 1973395660, i32 -2025386853], [2 x i32] [i32 -1275891738, i32 -1263164144], [2 x i32] [i32 -1172460252, i32 1191345998] }, %struct.anon.1 { [2 x i32] [i32 794590204, i32 1069041755], [2 x i32] [i32 1053353855, i32 2061606573], [2 x i32] [i32 389751351, i32 1026291171] }, %struct.anon.1 { [2 x i32] [i32 -621838274, i32 1935750797], [2 x i32] [i32 -1239001946, i32 -160769030], [2 x i32] [i32 358772851, i32 -144917881] }], align 16
@.str.11 = private unnamed_addr constant [30 x i8] c"simde_vld1_s32(test_vec[i].r)\00", align 1
@test_simde_vqdmulhq_s16.test_vec = internal constant [8 x %struct.anon.2] [%struct.anon.2 { [8 x i16] [i16 18403, i16 14972, i16 -24285, i16 10702, i16 -30041, i16 -5908, i16 -31444, i16 30183], [8 x i16] [i16 -6237, i16 3774, i16 8878, i16 -15805, i16 -14743, i16 22060, i16 15220, i16 22311], [8 x i16] [i16 -3503, i16 1724, i16 -6580, i16 -5162, i16 13516, i16 -3978, i16 -14606, i16 20550] }, %struct.anon.2 { [8 x i16] [i16 -23678, i16 -23150, i16 24645, i16 -4914, i16 -17686, i16 6101, i16 -17344, i16 -7284], [8 x i16] [i16 19107, i16 21233, i16 13677, i16 -10732, i16 16635, i16 28460, i16 21627, i16 -313], [8 x i16] [i16 -13807, i16 -15001, i16 10286, i16 1609, i16 -8979, i16 5298, i16 -11448, i16 69] }, %struct.anon.2 { [8 x i16] [i16 23031, i16 15523, i16 29369, i16 -23767, i16 -468, i16 27834, i16 18106, i16 24144], [8 x i16] [i16 16785, i16 -336, i16 -15242, i16 29396, i16 5, i16 -32543, i16 -22444, i16 19582], [8 x i16] [i16 11797, i16 -160, i16 -13661, i16 -21322, i16 -1, i16 -27643, i16 -12402, i16 14428] }, %struct.anon.2 { [8 x i16] [i16 8705, i16 -17784, i16 -20076, i16 -16290, i16 6319, i16 27181, i16 32095, i16 -3896], [8 x i16] [i16 30910, i16 13806, i16 -15812, i16 16807, i16 -30526, i16 6082, i16 16433, i16 12899], [8 x i16] [i16 8211, i16 -7493, i16 9687, i16 -8356, i16 -5887, i16 5045, i16 16095, i16 -1534] }, %struct.anon.2 { [8 x i16] [i16 -5278, i16 -2323, i16 19357, i16 19639, i16 -7069, i16 -15690, i16 32353, i16 8114], [8 x i16] [i16 -24330, i16 13140, i16 -1182, i16 9588, i16 13956, i16 -19140, i16 -24713, i16 -9753], [8 x i16] [i16 3918, i16 -932, i16 -699, i16 5746, i16 -3011, i16 9164, i16 -24401, i16 -2416] }, %struct.anon.2 { [8 x i16] [i16 -11126, i16 10192, i16 -30945, i16 -31884, i16 10859, i16 -13243, i16 -1879, i16 -24597], [8 x i16] [i16 16536, i16 -1070, i16 18235, i16 -16608, i16 23677, i16 -2956, i16 23803, i16 -31282], [8 x i16] [i16 -5615, i16 -333, i16 -17221, i16 16159, i16 7846, i16 1194, i16 -1365, i16 23481] }, %struct.anon.2 { [8 x i16] [i16 -25040, i16 20653, i16 8485, i16 -28461, i16 6219, i16 -2980, i16 18192, i16 -22124], [8 x i16] [i16 26247, i16 -15452, i16 -15187, i16 11138, i16 -2272, i16 6943, i16 -4781, i16 -31840], [8 x i16] [i16 -20057, i16 -9740, i16 -3933, i16 -9675, i16 -432, i16 -632, i16 -2655, i16 21497] }, %struct.anon.2 { [8 x i16] [i16 19851, i16 -20269, i16 -22930, i16 -17856, i16 -25409, i16 -12370, i16 17124, i16 27512], [8 x i16] [i16 7337, i16 22062, i16 -20000, i16 129, i16 -24152, i16 -1253, i16 -17266, i16 6782], [8 x i16] [i16 4444, i16 -13647, i16 13995, i16 -71, i16 18727, i16 473, i16 -9023, i16 5694] }], align 16
@.str.12 = private unnamed_addr constant [31 x i8] c"simde_vld1q_s16(test_vec[i].r)\00", align 1
@test_simde_vqdmulhq_s32.test_vec = internal constant [8 x %struct.anon.3] [%struct.anon.3 { [4 x i32] [i32 500379413, i32 -31083559, i32 1368591925, i32 2052497007], [4 x i32] [i32 -841622730, i32 1100873920, i32 1914938471, i32 1872022618], [4 x i32] [i32 -196104259, i32 -15934501, i32 1220390819, i32 1789220059] }, %struct.anon.3 { [4 x i32] [i32 -728995845, i32 1339273754, i32 799041216, i32 984217348], [4 x i32] [i32 -1845002542, i32 -422271618, i32 -1537673399, i32 -1089213245], [4 x i32] [i32 626314052, i32 -263348825, i32 -572141457, i32 -499199411] }, %struct.anon.3 { [4 x i32] [i32 1855168596, i32 314467922, i32 -801022260, i32 671803989], [4 x i32] [i32 -424013464, i32 13405879, i32 1235494278, i32 1695070225], [4 x i32] [i32 -366296835, i32 1963097, i32 -460845614, i32 530274090] }, %struct.anon.3 { [4 x i32] [i32 -1428906920, i32 -809725438, i32 1184890352, i32 1332652775], [4 x i32] [i32 1916086459, i32 1030947511, i32 948311847, i32 664702927], [4 x i32] [i32 -1274938323, i32 -388726790, i32 523238237, i32 412491243] }, %struct.anon.3 { [4 x i32] [i32 768700971, i32 -184775420, i32 1899666570, i32 29403206], [4 x i32] [i32 -2005600559, i32 533063672, i32 -833139714, i32 100005338], [4 x i32] [i32 -717913312, i32 -45866270, i32 -736996375, i32 1369266] }, %struct.anon.3 { [4 x i32] [i32 1798555495, i32 -547344556, i32 290495179, i32 336793923], [4 x i32] [i32 -6519033, i32 1813930350, i32 -2026211924, i32 -762564501], [4 x i32] [i32 -5459806, i32 -462329436, i32 -274090467, i32 -119594434] }, %struct.anon.3 { [4 x i32] [i32 1262403575, i32 -1171611921, i32 2076998456, i32 -1819287668], [4 x i32] [i32 -728618138, i32 960540812, i32 -1866433755, i32 -1570550613], [4 x i32] [i32 -428319975, i32 -524046396, i32 -1805173246, i32 1330526248] }, %struct.anon.3 { [4 x i32] [i32 -68312820, i32 2008356927, i32 536052115, i32 -961379744], [4 x i32] [i32 983188654, i32 427023348, i32 27931478, i32 -1935471232], [4 x i32] [i32 -31275857, i32 399358244, i32 6972219, i32 866466591] }], align 16
@.str.13 = private unnamed_addr constant [31 x i8] c"simde_vld1q_s32(test_vec[i].r)\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %i = alloca i64, align 8
  %res = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #11
  store i32 0, ptr %retval1, align 4, !tbaa !5
  %0 = load ptr, ptr @stdout, align 8, !tbaa !9
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str, i64 noundef 4)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %1, 4
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11
  br label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #11
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [4 x %struct.anon], ptr @test_suite_tests, i64 0, i64 %2
  %func = getelementptr inbounds %struct.anon, ptr %arrayidx, i32 0, i32 0
  %3 = load ptr, ptr %func, align 16, !tbaa !13
  %call2 = call i32 %3()
  store i32 %call2, ptr %res, align 4, !tbaa !5
  %4 = load i32, ptr %res, align 4, !tbaa !5
  %cmp3 = icmp ne i32 %4, 0
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i32 1, ptr %retval1, align 4, !tbaa !5
  %5 = load ptr, ptr @stdout, align 8, !tbaa !9
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %add = add i64 %6, 1
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx4 = getelementptr inbounds [4 x %struct.anon], ptr @test_suite_tests, i64 0, i64 %7
  %name = getelementptr inbounds %struct.anon, ptr %arrayidx4, i32 0, i32 1
  %8 = load ptr, ptr %name, align 8, !tbaa !15
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.1, i64 noundef %add, ptr noundef %8)
  br label %if.end

if.else:                                          ; preds = %for.body
  %9 = load ptr, ptr @stdout, align 8, !tbaa !9
  %10 = load i64, ptr %i, align 8, !tbaa !11
  %add6 = add i64 %10, 1
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds [4 x %struct.anon], ptr @test_suite_tests, i64 0, i64 %11
  %name8 = getelementptr inbounds %struct.anon, ptr %arrayidx7, i32 0, i32 1
  %12 = load ptr, ptr %name8, align 8, !tbaa !15
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.2, i64 noundef %add6, ptr noundef %12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #11
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %13, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.end:                                          ; preds = %for.cond.cleanup
  %14 = load i32, ptr %retval1, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #11
  ret i32 %14
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vqdmulh_s16() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <4 x i16>, align 8
  %coerce = alloca <4 x i16>, align 8
  %b = alloca <4 x i16>, align 8
  %coerce6 = alloca <4 x i16>, align 8
  %r = alloca <4 x i16>, align 8
  %coerce7 = alloca <4 x i16>, align 8
  %coerce8 = alloca <4 x i16>, align 8
  %coerce10 = alloca <4 x i16>, align 8
  %coerce15 = alloca <4 x i16>, align 8
  %coerce16 = alloca <4 x i16>, align 8
  %coerce17 = alloca <4 x i16>, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup21

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #11
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.0], ptr @test_simde_vqdmulh_s16.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.0, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i16], ptr %a1, i64 0, i64 0
  %call = call double @simde_vld1_s16(ptr noundef %arraydecay)
  store double %call, ptr %coerce, align 8
  %2 = load <4 x i16>, ptr %coerce, align 8, !tbaa !16
  store <4 x i16> %2, ptr %a, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #11
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.0], ptr @test_simde_vqdmulh_s16.test_vec, i64 0, i64 %3
  %b3 = getelementptr inbounds %struct.anon.0, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [4 x i16], ptr %b3, i64 0, i64 0
  %call5 = call double @simde_vld1_s16(ptr noundef %arraydecay4)
  store double %call5, ptr %coerce6, align 8
  %4 = load <4 x i16>, ptr %coerce6, align 8, !tbaa !16
  store <4 x i16> %4, ptr %b, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #11
  %5 = load <4 x i16>, ptr %a, align 8, !tbaa !16
  %6 = load <4 x i16>, ptr %b, align 8, !tbaa !16
  store <4 x i16> %5, ptr %coerce7, align 8, !tbaa !16
  %7 = load double, ptr %coerce7, align 8
  store <4 x i16> %6, ptr %coerce8, align 8, !tbaa !16
  %8 = load double, ptr %coerce8, align 8
  %call9 = call double @simde_vqdmulh_s16(double noundef %7, double noundef %8)
  store double %call9, ptr %coerce10, align 8
  %9 = load <4 x i16>, ptr %coerce10, align 8, !tbaa !16
  store <4 x i16> %9, ptr %r, align 8, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %10 = load <4 x i16>, ptr %r, align 8, !tbaa !16
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx11 = getelementptr inbounds [8 x %struct.anon.0], ptr @test_simde_vqdmulh_s16.test_vec, i64 0, i64 %11
  %r12 = getelementptr inbounds %struct.anon.0, ptr %arrayidx11, i32 0, i32 2
  %arraydecay13 = getelementptr inbounds [4 x i16], ptr %r12, i64 0, i64 0
  %call14 = call double @simde_vld1_s16(ptr noundef %arraydecay13)
  store double %call14, ptr %coerce15, align 8
  %12 = load <4 x i16>, ptr %coerce15, align 8, !tbaa !16
  store <4 x i16> %10, ptr %coerce16, align 8, !tbaa !16
  %13 = load double, ptr %coerce16, align 8
  store <4 x i16> %12, ptr %coerce17, align 8, !tbaa !16
  %14 = load double, ptr %coerce17, align 8
  %call18 = call i32 @simde_test_arm_neon_assert_equal_i16x4_(double noundef %13, double noundef %14, ptr noundef @.str.7, i32 noundef 46, ptr noundef @.str.8, ptr noundef @.str.9)
  %tobool = icmp ne i32 %call18, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #11
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup21 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %15 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %15, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup21:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11
  %cleanup.dest22 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest22, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup21
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup21
  %16 = load i32, ptr %retval, align 4
  ret i32 %16

unreachable:                                      ; preds = %cleanup21
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vqdmulh_s32() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <2 x i32>, align 8
  %coerce = alloca <2 x i32>, align 8
  %b = alloca <2 x i32>, align 8
  %coerce6 = alloca <2 x i32>, align 8
  %r = alloca <2 x i32>, align 8
  %coerce7 = alloca <2 x i32>, align 8
  %coerce8 = alloca <2 x i32>, align 8
  %coerce10 = alloca <2 x i32>, align 8
  %coerce15 = alloca <2 x i32>, align 8
  %coerce16 = alloca <2 x i32>, align 8
  %coerce17 = alloca <2 x i32>, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup21

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #11
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.1], ptr @test_simde_vqdmulh_s32.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.1, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [2 x i32], ptr %a1, i64 0, i64 0
  %call = call double @simde_vld1_s32(ptr noundef %arraydecay)
  store double %call, ptr %coerce, align 8
  %2 = load <2 x i32>, ptr %coerce, align 8, !tbaa !16
  store <2 x i32> %2, ptr %a, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #11
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.1], ptr @test_simde_vqdmulh_s32.test_vec, i64 0, i64 %3
  %b3 = getelementptr inbounds %struct.anon.1, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [2 x i32], ptr %b3, i64 0, i64 0
  %call5 = call double @simde_vld1_s32(ptr noundef %arraydecay4)
  store double %call5, ptr %coerce6, align 8
  %4 = load <2 x i32>, ptr %coerce6, align 8, !tbaa !16
  store <2 x i32> %4, ptr %b, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #11
  %5 = load <2 x i32>, ptr %a, align 8, !tbaa !16
  %6 = load <2 x i32>, ptr %b, align 8, !tbaa !16
  store <2 x i32> %5, ptr %coerce7, align 8, !tbaa !16
  %7 = load double, ptr %coerce7, align 8
  store <2 x i32> %6, ptr %coerce8, align 8, !tbaa !16
  %8 = load double, ptr %coerce8, align 8
  %call9 = call double @simde_vqdmulh_s32(double noundef %7, double noundef %8)
  store double %call9, ptr %coerce10, align 8
  %9 = load <2 x i32>, ptr %coerce10, align 8, !tbaa !16
  store <2 x i32> %9, ptr %r, align 8, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %10 = load <2 x i32>, ptr %r, align 8, !tbaa !16
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx11 = getelementptr inbounds [8 x %struct.anon.1], ptr @test_simde_vqdmulh_s32.test_vec, i64 0, i64 %11
  %r12 = getelementptr inbounds %struct.anon.1, ptr %arrayidx11, i32 0, i32 2
  %arraydecay13 = getelementptr inbounds [2 x i32], ptr %r12, i64 0, i64 0
  %call14 = call double @simde_vld1_s32(ptr noundef %arraydecay13)
  store double %call14, ptr %coerce15, align 8
  %12 = load <2 x i32>, ptr %coerce15, align 8, !tbaa !16
  store <2 x i32> %10, ptr %coerce16, align 8, !tbaa !16
  %13 = load double, ptr %coerce16, align 8
  store <2 x i32> %12, ptr %coerce17, align 8, !tbaa !16
  %14 = load double, ptr %coerce17, align 8
  %call18 = call i32 @simde_test_arm_neon_assert_equal_i32x2_(double noundef %13, double noundef %14, ptr noundef @.str.7, i32 noundef 105, ptr noundef @.str.8, ptr noundef @.str.11)
  %tobool = icmp ne i32 %call18, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #11
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup21 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %15 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %15, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup21:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11
  %cleanup.dest22 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest22, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup21
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup21
  %16 = load i32, ptr %retval, align 4
  ret i32 %16

unreachable:                                      ; preds = %cleanup21
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vqdmulhq_s16() #3 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <8 x i16>, align 16
  %b = alloca <8 x i16>, align 16
  %r = alloca <8 x i16>, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup14

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #11
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.2], ptr @test_simde_vqdmulhq_s16.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.2, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x i16], ptr %a1, i64 0, i64 0
  %call = call <8 x i16> @simde_vld1q_s16(ptr noundef %arraydecay)
  store <8 x i16> %call, ptr %a, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #11
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.2], ptr @test_simde_vqdmulhq_s16.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.2, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [8 x i16], ptr %b3, i64 0, i64 0
  %call5 = call <8 x i16> @simde_vld1q_s16(ptr noundef %arraydecay4)
  store <8 x i16> %call5, ptr %b, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #11
  %3 = load <8 x i16>, ptr %a, align 16, !tbaa !16
  %4 = load <8 x i16>, ptr %b, align 16, !tbaa !16
  %call6 = call <8 x i16> @simde_vqdmulhq_s16(<8 x i16> noundef %3, <8 x i16> noundef %4)
  store <8 x i16> %call6, ptr %r, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load <8 x i16>, ptr %r, align 16, !tbaa !16
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds [8 x %struct.anon.2], ptr @test_simde_vqdmulhq_s16.test_vec, i64 0, i64 %6
  %r8 = getelementptr inbounds %struct.anon.2, ptr %arrayidx7, i32 0, i32 2
  %arraydecay9 = getelementptr inbounds [8 x i16], ptr %r8, i64 0, i64 0
  %call10 = call <8 x i16> @simde_vld1q_s16(ptr noundef %arraydecay9)
  %call11 = call i32 @simde_test_arm_neon_assert_equal_i16x8_(<8 x i16> noundef %5, <8 x i16> noundef %call10, ptr noundef @.str.7, i32 noundef 164, ptr noundef @.str.8, ptr noundef @.str.12)
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #11
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup14 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %7, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup14:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11
  %cleanup.dest15 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest15, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup14
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup14
  %8 = load i32, ptr %retval, align 4
  ret i32 %8

unreachable:                                      ; preds = %cleanup14
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vqdmulhq_s32() #3 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <4 x i32>, align 16
  %b = alloca <4 x i32>, align 16
  %r = alloca <4 x i32>, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup14

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #11
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.3], ptr @test_simde_vqdmulhq_s32.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.3, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i32], ptr %a1, i64 0, i64 0
  %call = call <4 x i32> @simde_vld1q_s32(ptr noundef %arraydecay)
  store <4 x i32> %call, ptr %a, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #11
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.3], ptr @test_simde_vqdmulhq_s32.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.3, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [4 x i32], ptr %b3, i64 0, i64 0
  %call5 = call <4 x i32> @simde_vld1q_s32(ptr noundef %arraydecay4)
  store <4 x i32> %call5, ptr %b, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #11
  %3 = load <4 x i32>, ptr %a, align 16, !tbaa !16
  %4 = load <4 x i32>, ptr %b, align 16, !tbaa !16
  %call6 = call <4 x i32> @simde_vqdmulhq_s32(<4 x i32> noundef %3, <4 x i32> noundef %4)
  store <4 x i32> %call6, ptr %r, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load <4 x i32>, ptr %r, align 16, !tbaa !16
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds [8 x %struct.anon.3], ptr @test_simde_vqdmulhq_s32.test_vec, i64 0, i64 %6
  %r8 = getelementptr inbounds %struct.anon.3, ptr %arrayidx7, i32 0, i32 2
  %arraydecay9 = getelementptr inbounds [4 x i32], ptr %r8, i64 0, i64 0
  %call10 = call <4 x i32> @simde_vld1q_s32(ptr noundef %arraydecay9)
  %call11 = call i32 @simde_test_arm_neon_assert_equal_i32x4_(<4 x i32> noundef %5, <4 x i32> noundef %call10, ptr noundef @.str.7, i32 noundef 222, ptr noundef @.str.8, ptr noundef @.str.13)
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #11
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup14 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %7, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup14:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11
  %cleanup.dest15 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest15, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup14
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup14
  %8 = load i32, ptr %retval, align 4
  ret i32 %8

unreachable:                                      ; preds = %cleanup14
  unreachable
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vld1_s16(ptr noundef %ptr) #4 {
entry:
  %retval = alloca <4 x i16>, align 8
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_int16x4_private, align 8
  %coerce = alloca <4 x i16>, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #11
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r_, ptr align 2 %0, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int16x4_private, ptr %r_, i32 0, i32 0
  %1 = load double, ptr %coerce.dive, align 8
  %call = call double @simde_int16x4_from_private(double %1) #12
  store double %call, ptr %coerce, align 8
  %2 = load <4 x i16>, ptr %coerce, align 8, !tbaa !16
  store <4 x i16> %2, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #11
  %3 = load double, ptr %retval, align 8
  ret double %3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vqdmulh_s16(double noundef %a.coerce, double noundef %b.coerce) #5 {
entry:
  %retval = alloca <4 x i16>, align 8
  %a = alloca <4 x i16>, align 8
  %b = alloca <4 x i16>, align 8
  %a.addr = alloca <4 x i16>, align 8
  %b.addr = alloca <4 x i16>, align 8
  %r_ = alloca %union.simde_int16x4_private, align 8
  %tmp_ = alloca %union.simde_int16x8_private, align 16
  %coerce = alloca <4 x i16>, align 8
  %coerce3 = alloca <4 x i16>, align 8
  %coerce8 = alloca <4 x i16>, align 8
  store double %a.coerce, ptr %a, align 8
  %a1 = load <4 x i16>, ptr %a, align 8, !tbaa !16
  store double %b.coerce, ptr %b, align 8
  %b2 = load <4 x i16>, ptr %b, align 8, !tbaa !16
  store <4 x i16> %a1, ptr %a.addr, align 8, !tbaa !16
  store <4 x i16> %b2, ptr %b.addr, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp_) #11
  %0 = load <4 x i16>, ptr %a.addr, align 8, !tbaa !16
  %1 = load <4 x i16>, ptr %b.addr, align 8, !tbaa !16
  store <4 x i16> %0, ptr %coerce, align 8, !tbaa !16
  %2 = load double, ptr %coerce, align 8
  store <4 x i16> %1, ptr %coerce3, align 8, !tbaa !16
  %3 = load double, ptr %coerce3, align 8
  %call = call <4 x i32> @simde_vqdmull_s16(double noundef %2, double noundef %3)
  %call4 = call <8 x i16> @simde_vreinterpretq_s16_s32(<4 x i32> noundef %call)
  %call5 = call <2 x double> @simde_int16x8_to_private(<8 x i16> noundef %call4) #12
  %coerce.dive = getelementptr inbounds %union.simde_int16x8_private, ptr %tmp_, i32 0, i32 0
  store <2 x double> %call5, ptr %coerce.dive, align 16
  %4 = load <8 x i16>, ptr %tmp_, align 16, !tbaa !16
  %5 = load <8 x i16>, ptr %tmp_, align 16, !tbaa !16
  %shuffle = shufflevector <8 x i16> %4, <8 x i16> %5, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  store <4 x i16> %shuffle, ptr %r_, align 8, !tbaa !16
  %coerce.dive6 = getelementptr inbounds %union.simde_int16x4_private, ptr %r_, i32 0, i32 0
  %6 = load double, ptr %coerce.dive6, align 8
  %call7 = call double @simde_int16x4_from_private(double %6) #12
  store double %call7, ptr %coerce8, align 8
  %7 = load <4 x i16>, ptr %coerce8, align 8, !tbaa !16
  store <4 x i16> %7, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp_) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #11
  %8 = load double, ptr %retval, align 8
  ret double %8
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_arm_neon_assert_equal_i16x4_(double noundef %a.coerce, double noundef %b.coerce, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %a = alloca <4 x i16>, align 8
  %b = alloca <4 x i16>, align 8
  %a.addr = alloca <4 x i16>, align 8
  %b.addr = alloca <4 x i16>, align 8
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [4 x i16], align 2
  %b_ = alloca [4 x i16], align 2
  %coerce = alloca <4 x i16>, align 8
  %coerce4 = alloca <4 x i16>, align 8
  store double %a.coerce, ptr %a, align 8
  %a1 = load <4 x i16>, ptr %a, align 8, !tbaa !16
  store double %b.coerce, ptr %b, align 8
  %b2 = load <4 x i16>, ptr %b, align 8, !tbaa !16
  store <4 x i16> %a1, ptr %a.addr, align 8, !tbaa !16
  store <4 x i16> %b2, ptr %b.addr, align 8, !tbaa !16
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_) #11
  %arraydecay = getelementptr inbounds [4 x i16], ptr %a_, i64 0, i64 0
  %0 = load <4 x i16>, ptr %a.addr, align 8, !tbaa !16
  store <4 x i16> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  call void @simde_vst1_s16(ptr noundef %arraydecay, double noundef %1)
  %arraydecay3 = getelementptr inbounds [4 x i16], ptr %b_, i64 0, i64 0
  %2 = load <4 x i16>, ptr %b.addr, align 8, !tbaa !16
  store <4 x i16> %2, ptr %coerce4, align 8, !tbaa !16
  %3 = load double, ptr %coerce4, align 8
  call void @simde_vst1_s16(ptr noundef %arraydecay3, double noundef %3)
  %arraydecay5 = getelementptr inbounds [4 x i16], ptr %a_, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [4 x i16], ptr %b_, i64 0, i64 0
  %4 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %5 = load i32, ptr %line.addr, align 4, !tbaa !5
  %6 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %7 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vi16_(i64 noundef 4, ptr noundef %arraydecay5, ptr noundef %arraydecay6, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_) #11
  ret i32 %call
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal double @simde_int16x4_from_private(double %value.coerce) #7 {
entry:
  %retval = alloca <4 x i16>, align 8
  %value = alloca %union.simde_int16x4_private, align 8
  %r = alloca <4 x i16>, align 8
  %coerce.dive = getelementptr inbounds %union.simde_int16x4_private, ptr %value, i32 0, i32 0
  store double %value.coerce, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #11
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r, ptr align 8 %value, i64 8, i1 false)
  %0 = load <4 x i16>, ptr %r, align 8, !tbaa !16
  store <4 x i16> %0, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #11
  %1 = load double, ptr %retval, align 8
  ret double %1
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <2 x double> @simde_int16x8_to_private(<8 x i16> noundef %value) #8 {
entry:
  %retval = alloca %union.simde_int16x8_private, align 16
  %value.addr = alloca <8 x i16>, align 16
  store <8 x i16> %value, ptr %value.addr, align 16, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %retval, ptr align 16 %value.addr, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int16x8_private, ptr %retval, i32 0, i32 0
  %0 = load <2 x double>, ptr %coerce.dive, align 16
  ret <2 x double> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i16> @simde_vreinterpretq_s16_s32(<4 x i32> noundef %a) #5 {
entry:
  %a.addr = alloca <4 x i32>, align 16
  %r_ = alloca %union.simde_int16x8_private, align 16
  %a_ = alloca %union.simde_int32x4_private, align 16
  store <4 x i32> %a, ptr %a.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #11
  %0 = load <4 x i32>, ptr %a.addr, align 16, !tbaa !16
  %call = call <2 x double> @simde_int32x4_to_private(<4 x i32> noundef %0) #12
  %coerce.dive = getelementptr inbounds %union.simde_int32x4_private, ptr %a_, i32 0, i32 0
  store <2 x double> %call, ptr %coerce.dive, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 16 %a_, i64 16, i1 false)
  %coerce.dive1 = getelementptr inbounds %union.simde_int16x8_private, ptr %r_, i32 0, i32 0
  %1 = load <2 x double>, ptr %coerce.dive1, align 16
  %call2 = call <8 x i16> @simde_int16x8_from_private(<2 x double> %1) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #11
  ret <8 x i16> %call2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i32> @simde_vqdmull_s16(double noundef %a.coerce, double noundef %b.coerce) #5 {
entry:
  %a = alloca <4 x i16>, align 8
  %b = alloca <4 x i16>, align 8
  %a.addr = alloca <4 x i16>, align 8
  %b.addr = alloca <4 x i16>, align 8
  %r_ = alloca %union.simde_int32x4_private, align 16
  %a_ = alloca %union.simde_int16x4_private, align 8
  %coerce = alloca <4 x i16>, align 8
  %b_ = alloca %union.simde_int16x4_private, align 8
  %coerce3 = alloca <4 x i16>, align 8
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  store double %a.coerce, ptr %a, align 8
  %a1 = load <4 x i16>, ptr %a, align 8, !tbaa !16
  store double %b.coerce, ptr %b, align 8
  %b2 = load <4 x i16>, ptr %b, align 8, !tbaa !16
  store <4 x i16> %a1, ptr %a.addr, align 8, !tbaa !16
  store <4 x i16> %b2, ptr %b.addr, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_) #11
  %0 = load <4 x i16>, ptr %a.addr, align 8, !tbaa !16
  store <4 x i16> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  %call = call double @simde_int16x4_to_private(double noundef %1) #12
  %coerce.dive = getelementptr inbounds %union.simde_int16x4_private, ptr %a_, i32 0, i32 0
  store double %call, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_) #11
  %2 = load <4 x i16>, ptr %b.addr, align 8, !tbaa !16
  store <4 x i16> %2, ptr %coerce3, align 8, !tbaa !16
  %3 = load double, ptr %coerce3, align 8
  %call4 = call double @simde_int16x4_to_private(double noundef %3) #12
  %coerce.dive5 = getelementptr inbounds %union.simde_int16x4_private, ptr %b_, i32 0, i32 0
  store double %call4, ptr %coerce.dive5, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #11
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %4 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !17
  %cmp = icmp ult i64 %4, 4
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %5 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !17
  %mul = mul i64 %5, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %6 = load <4 x i16>, ptr %a_, align 8, !tbaa !16, !llvm.access.group !17
  %7 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %vecext = extractelement <4 x i16> %6, i64 %7
  %8 = load <4 x i16>, ptr %b_, align 8, !tbaa !16, !llvm.access.group !17
  %9 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %vecext6 = extractelement <4 x i16> %8, i64 %9
  %call7 = call i32 @simde_vqdmullh_s16(i16 noundef signext %vecext, i16 noundef signext %vecext6), !llvm.access.group !17
  %10 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %11 = load <4 x i32>, ptr %r_, align 16, !llvm.access.group !17
  %vecins = insertelement <4 x i32> %11, i32 %call7, i64 %10
  store <4 x i32> %vecins, ptr %r_, align 16, !llvm.access.group !17
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %12 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !17
  %add8 = add i64 %12, 1
  store i64 %add8, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !17
  br label %omp.inner.for.cond, !llvm.loop !18

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 4, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #11
  %coerce.dive9 = getelementptr inbounds %union.simde_int32x4_private, ptr %r_, i32 0, i32 0
  %13 = load <2 x double>, ptr %coerce.dive9, align 16
  %call10 = call <4 x i32> @simde_int32x4_from_private(<2 x double> %13) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #11
  ret <4 x i32> %call10
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <2 x double> @simde_int32x4_to_private(<4 x i32> noundef %value) #8 {
entry:
  %retval = alloca %union.simde_int32x4_private, align 16
  %value.addr = alloca <4 x i32>, align 16
  store <4 x i32> %value, ptr %value.addr, align 16, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %retval, ptr align 16 %value.addr, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int32x4_private, ptr %retval, i32 0, i32 0
  %0 = load <2 x double>, ptr %coerce.dive, align 16
  ret <2 x double> %0
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <8 x i16> @simde_int16x8_from_private(<2 x double> %value.coerce) #8 {
entry:
  %value = alloca %union.simde_int16x8_private, align 16
  %r = alloca <8 x i16>, align 16
  %coerce.dive = getelementptr inbounds %union.simde_int16x8_private, ptr %value, i32 0, i32 0
  store <2 x double> %value.coerce, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #11
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 16 %value, i64 16, i1 false)
  %0 = load <8 x i16>, ptr %r, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #11
  ret <8 x i16> %0
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal double @simde_int16x4_to_private(double noundef %value.coerce) #7 {
entry:
  %retval = alloca %union.simde_int16x4_private, align 8
  %value = alloca <4 x i16>, align 8
  %value.addr = alloca <4 x i16>, align 8
  store double %value.coerce, ptr %value, align 8
  %value1 = load <4 x i16>, ptr %value, align 8, !tbaa !16
  store <4 x i16> %value1, ptr %value.addr, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %value.addr, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int16x4_private, ptr %retval, i32 0, i32 0
  %0 = load double, ptr %coerce.dive, align 8
  ret double %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @simde_vqdmullh_s16(i16 noundef signext %a, i16 noundef signext %b) #4 {
entry:
  %a.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  %mul = alloca i32, align 4
  store i16 %a, ptr %a.addr, align 2, !tbaa !21
  store i16 %b, ptr %b.addr, align 2, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr %mul) #11
  %0 = load i16, ptr %a.addr, align 2, !tbaa !21
  %conv = sext i16 %0 to i32
  %1 = load i16, ptr %b.addr, align 2, !tbaa !21
  %conv1 = sext i16 %1 to i32
  %mul2 = mul nsw i32 %conv, %conv1
  store i32 %mul2, ptr %mul, align 4, !tbaa !5
  %2 = load i32, ptr %mul, align 4, !tbaa !5
  %conv3 = sext i32 %2 to i64
  %neg = sub nsw i64 0, %conv3
  %abscond = icmp slt i64 %conv3, 0
  %abs = select i1 %abscond, i64 %neg, i64 %conv3
  %and = and i64 %abs, 1073741824
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i32, ptr %mul, align 4, !tbaa !5
  %cmp = icmp slt i32 %3, 0
  %4 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 -2147483648, i32 2147483647
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load i32, ptr %mul, align 4, !tbaa !5
  %shl = shl i32 %5, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond5 = phi i32 [ %cond, %cond.true ], [ %shl, %cond.false ]
  call void @llvm.lifetime.end.p0(i64 4, ptr %mul) #11
  ret i32 %cond5
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <4 x i32> @simde_int32x4_from_private(<2 x double> %value.coerce) #8 {
entry:
  %value = alloca %union.simde_int32x4_private, align 16
  %r = alloca <4 x i32>, align 16
  %coerce.dive = getelementptr inbounds %union.simde_int32x4_private, ptr %value, i32 0, i32 0
  store <2 x double> %value.coerce, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #11
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 16 %value, i64 16, i1 false)
  %0 = load <4 x i32>, ptr %r, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #11
  ret <4 x i32> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde_vst1_s16(ptr noundef %ptr, double noundef %val.coerce) #4 {
entry:
  %val = alloca <4 x i16>, align 8
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <4 x i16>, align 8
  %val_ = alloca %union.simde_int16x4_private, align 8
  %coerce = alloca <4 x i16>, align 8
  store double %val.coerce, ptr %val, align 8
  %val1 = load <4 x i16>, ptr %val, align 8, !tbaa !16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <4 x i16> %val1, ptr %val.addr, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %val_) #11
  %0 = load <4 x i16>, ptr %val.addr, align 8, !tbaa !16
  store <4 x i16> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  %call = call double @simde_int16x4_to_private(double noundef %1) #12
  %coerce.dive = getelementptr inbounds %union.simde_int16x4_private, ptr %val_, i32 0, i32 0
  store double %call, ptr %coerce.dive, align 8
  %2 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %2, ptr align 8 %val_, i64 8, i1 false)
  call void @llvm.lifetime.end.p0(i64 8, ptr %val_) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_assert_equal_vi16_(i64 noundef %vec_len, ptr noundef %a, ptr noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %retval = alloca i32, align 4
  %vec_len.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %vec_len, ptr %vec_len.addr, align 8, !tbaa !11
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store ptr %b, ptr %b.addr, align 8, !tbaa !9
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  %0 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  %1 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %3 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %5 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds i16, ptr %4, i64 %5
  %6 = load i16, ptr %arrayidx, align 2, !tbaa !21
  %conv = sext i16 %6 to i32
  %7 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx1 = getelementptr inbounds i16, ptr %7, i64 %8
  %9 = load i16, ptr %arrayidx1, align 2, !tbaa !21
  %conv2 = sext i16 %9 to i32
  %cmp3 = icmp ne i32 %conv, %conv2
  %lnot = xor i1 %cmp3, true
  %lnot5 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot5 to i32
  %conv6 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %11 = load i32, ptr %line.addr, align 4, !tbaa !5
  %12 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %13 = load i64, ptr %i, align 8, !tbaa !11
  %14 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %15 = load i64, ptr %i, align 8, !tbaa !11
  %16 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %17 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds i16, ptr %16, i64 %17
  %18 = load i16, ptr %arrayidx7, align 2, !tbaa !21
  %conv8 = sext i16 %18 to i32
  %19 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %20 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx9 = getelementptr inbounds i16, ptr %19, i64 %20
  %21 = load i16, ptr %arrayidx9, align 2, !tbaa !21
  %conv10 = sext i16 %21 to i32
  call void (ptr, ...) @simde_test_debug_printf_(ptr noundef @.str.10, ptr noundef %10, i32 noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14, i64 noundef %15, i32 noundef %conv8, i32 noundef %conv10)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %22, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup:                                          ; preds = %if.then, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup
  %23 = load i32, ptr %retval, align 4
  ret i32 %23

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: nounwind uwtable
define internal void @simde_test_debug_printf_(ptr noundef %format, ...) #0 {
entry:
  %format.addr = alloca ptr, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %format, ptr %format.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 24, ptr %ap) #11
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %arraydecay)
  %0 = load ptr, ptr @stderr, align 8, !tbaa !9
  %1 = load ptr, ptr %format.addr, align 8, !tbaa !9
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %call = call i32 @vfprintf(ptr noundef %0, ptr noundef %1, ptr noundef %arraydecay1)
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %arraydecay2)
  %2 = load ptr, ptr @stderr, align 8, !tbaa !9
  %call3 = call i32 @fflush(ptr noundef %2)
  call void @llvm.lifetime.end.p0(i64 24, ptr %ap) #11
  ret void
}

declare i32 @vfprintf(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @fflush(ptr noundef) #2

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vld1_s32(ptr noundef %ptr) #4 {
entry:
  %retval = alloca <2 x i32>, align 8
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_int32x2_private, align 8
  %coerce = alloca <2 x i32>, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #11
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r_, ptr align 4 %0, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int32x2_private, ptr %r_, i32 0, i32 0
  %1 = load double, ptr %coerce.dive, align 8
  %call = call double @simde_int32x2_from_private(double %1) #12
  store double %call, ptr %coerce, align 8
  %2 = load <2 x i32>, ptr %coerce, align 8, !tbaa !16
  store <2 x i32> %2, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #11
  %3 = load double, ptr %retval, align 8
  ret double %3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vqdmulh_s32(double noundef %a.coerce, double noundef %b.coerce) #5 {
entry:
  %retval = alloca <2 x i32>, align 8
  %a = alloca <2 x i32>, align 8
  %b = alloca <2 x i32>, align 8
  %a.addr = alloca <2 x i32>, align 8
  %b.addr = alloca <2 x i32>, align 8
  %r_ = alloca %union.simde_int32x2_private, align 8
  %tmp_ = alloca %union.simde_int32x4_private, align 16
  %coerce = alloca <2 x i32>, align 8
  %coerce3 = alloca <2 x i32>, align 8
  %coerce8 = alloca <2 x i32>, align 8
  store double %a.coerce, ptr %a, align 8
  %a1 = load <2 x i32>, ptr %a, align 8, !tbaa !16
  store double %b.coerce, ptr %b, align 8
  %b2 = load <2 x i32>, ptr %b, align 8, !tbaa !16
  store <2 x i32> %a1, ptr %a.addr, align 8, !tbaa !16
  store <2 x i32> %b2, ptr %b.addr, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp_) #11
  %0 = load <2 x i32>, ptr %a.addr, align 8, !tbaa !16
  %1 = load <2 x i32>, ptr %b.addr, align 8, !tbaa !16
  store <2 x i32> %0, ptr %coerce, align 8, !tbaa !16
  %2 = load double, ptr %coerce, align 8
  store <2 x i32> %1, ptr %coerce3, align 8, !tbaa !16
  %3 = load double, ptr %coerce3, align 8
  %call = call <2 x i64> @simde_vqdmull_s32(double noundef %2, double noundef %3)
  %call4 = call <4 x i32> @simde_vreinterpretq_s32_s64(<2 x i64> noundef %call)
  %call5 = call <2 x double> @simde_int32x4_to_private(<4 x i32> noundef %call4) #12
  %coerce.dive = getelementptr inbounds %union.simde_int32x4_private, ptr %tmp_, i32 0, i32 0
  store <2 x double> %call5, ptr %coerce.dive, align 16
  %4 = load <4 x i32>, ptr %tmp_, align 16, !tbaa !16
  %5 = load <4 x i32>, ptr %tmp_, align 16, !tbaa !16
  %shuffle = shufflevector <4 x i32> %4, <4 x i32> %5, <2 x i32> <i32 1, i32 3>
  store <2 x i32> %shuffle, ptr %r_, align 8, !tbaa !16
  %coerce.dive6 = getelementptr inbounds %union.simde_int32x2_private, ptr %r_, i32 0, i32 0
  %6 = load double, ptr %coerce.dive6, align 8
  %call7 = call double @simde_int32x2_from_private(double %6) #12
  store double %call7, ptr %coerce8, align 8
  %7 = load <2 x i32>, ptr %coerce8, align 8, !tbaa !16
  store <2 x i32> %7, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp_) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #11
  %8 = load double, ptr %retval, align 8
  ret double %8
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_arm_neon_assert_equal_i32x2_(double noundef %a.coerce, double noundef %b.coerce, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %a = alloca <2 x i32>, align 8
  %b = alloca <2 x i32>, align 8
  %a.addr = alloca <2 x i32>, align 8
  %b.addr = alloca <2 x i32>, align 8
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [2 x i32], align 4
  %b_ = alloca [2 x i32], align 4
  %coerce = alloca <2 x i32>, align 8
  %coerce4 = alloca <2 x i32>, align 8
  store double %a.coerce, ptr %a, align 8
  %a1 = load <2 x i32>, ptr %a, align 8, !tbaa !16
  store double %b.coerce, ptr %b, align 8
  %b2 = load <2 x i32>, ptr %b, align 8, !tbaa !16
  store <2 x i32> %a1, ptr %a.addr, align 8, !tbaa !16
  store <2 x i32> %b2, ptr %b.addr, align 8, !tbaa !16
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_) #11
  %arraydecay = getelementptr inbounds [2 x i32], ptr %a_, i64 0, i64 0
  %0 = load <2 x i32>, ptr %a.addr, align 8, !tbaa !16
  store <2 x i32> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  call void @simde_vst1_s32(ptr noundef %arraydecay, double noundef %1)
  %arraydecay3 = getelementptr inbounds [2 x i32], ptr %b_, i64 0, i64 0
  %2 = load <2 x i32>, ptr %b.addr, align 8, !tbaa !16
  store <2 x i32> %2, ptr %coerce4, align 8, !tbaa !16
  %3 = load double, ptr %coerce4, align 8
  call void @simde_vst1_s32(ptr noundef %arraydecay3, double noundef %3)
  %arraydecay5 = getelementptr inbounds [2 x i32], ptr %a_, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [2 x i32], ptr %b_, i64 0, i64 0
  %4 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %5 = load i32, ptr %line.addr, align 4, !tbaa !5
  %6 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %7 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vi32_(i64 noundef 2, ptr noundef %arraydecay5, ptr noundef %arraydecay6, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_) #11
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal double @simde_int32x2_from_private(double %value.coerce) #7 {
entry:
  %retval = alloca <2 x i32>, align 8
  %value = alloca %union.simde_int32x2_private, align 8
  %r = alloca <2 x i32>, align 8
  %coerce.dive = getelementptr inbounds %union.simde_int32x2_private, ptr %value, i32 0, i32 0
  store double %value.coerce, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #11
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r, ptr align 8 %value, i64 8, i1 false)
  %0 = load <2 x i32>, ptr %r, align 8, !tbaa !16
  store <2 x i32> %0, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #11
  %1 = load double, ptr %retval, align 8
  ret double %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i32> @simde_vreinterpretq_s32_s64(<2 x i64> noundef %a) #5 {
entry:
  %a.addr = alloca <2 x i64>, align 16
  %r_ = alloca %union.simde_int32x4_private, align 16
  %a_ = alloca %union.simde_int64x2_private, align 16
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #11
  %0 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  %call = call <2 x double> @simde_int64x2_to_private(<2 x i64> noundef %0) #12
  %coerce.dive = getelementptr inbounds %union.simde_int64x2_private, ptr %a_, i32 0, i32 0
  store <2 x double> %call, ptr %coerce.dive, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 16 %a_, i64 16, i1 false)
  %coerce.dive1 = getelementptr inbounds %union.simde_int32x4_private, ptr %r_, i32 0, i32 0
  %1 = load <2 x double>, ptr %coerce.dive1, align 16
  %call2 = call <4 x i32> @simde_int32x4_from_private(<2 x double> %1) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #11
  ret <4 x i32> %call2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @simde_vqdmull_s32(double noundef %a.coerce, double noundef %b.coerce) #5 {
entry:
  %a = alloca <2 x i32>, align 8
  %b = alloca <2 x i32>, align 8
  %a.addr = alloca <2 x i32>, align 8
  %b.addr = alloca <2 x i32>, align 8
  %r_ = alloca %union.simde_int64x2_private, align 16
  %a_ = alloca %union.simde_int32x2_private, align 8
  %coerce = alloca <2 x i32>, align 8
  %b_ = alloca %union.simde_int32x2_private, align 8
  %coerce3 = alloca <2 x i32>, align 8
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  store double %a.coerce, ptr %a, align 8
  %a1 = load <2 x i32>, ptr %a, align 8, !tbaa !16
  store double %b.coerce, ptr %b, align 8
  %b2 = load <2 x i32>, ptr %b, align 8, !tbaa !16
  store <2 x i32> %a1, ptr %a.addr, align 8, !tbaa !16
  store <2 x i32> %b2, ptr %b.addr, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_) #11
  %0 = load <2 x i32>, ptr %a.addr, align 8, !tbaa !16
  store <2 x i32> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  %call = call double @simde_int32x2_to_private(double noundef %1) #12
  %coerce.dive = getelementptr inbounds %union.simde_int32x2_private, ptr %a_, i32 0, i32 0
  store double %call, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_) #11
  %2 = load <2 x i32>, ptr %b.addr, align 8, !tbaa !16
  store <2 x i32> %2, ptr %coerce3, align 8, !tbaa !16
  %3 = load double, ptr %coerce3, align 8
  %call4 = call double @simde_int32x2_to_private(double noundef %3) #12
  %coerce.dive5 = getelementptr inbounds %union.simde_int32x2_private, ptr %b_, i32 0, i32 0
  store double %call4, ptr %coerce.dive5, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #11
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %4 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !23
  %cmp = icmp ult i64 %4, 2
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %5 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !23
  %mul = mul i64 %5, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !23
  %6 = load <2 x i32>, ptr %a_, align 8, !tbaa !16, !llvm.access.group !23
  %7 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !23
  %vecext = extractelement <2 x i32> %6, i64 %7
  %8 = load <2 x i32>, ptr %b_, align 8, !tbaa !16, !llvm.access.group !23
  %9 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !23
  %vecext6 = extractelement <2 x i32> %8, i64 %9
  %call7 = call i64 @simde_vqdmulls_s32(i32 noundef %vecext, i32 noundef %vecext6), !llvm.access.group !23
  %10 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !23
  %11 = load <2 x i64>, ptr %r_, align 16, !llvm.access.group !23
  %vecins = insertelement <2 x i64> %11, i64 %call7, i64 %10
  store <2 x i64> %vecins, ptr %r_, align 16, !llvm.access.group !23
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %12 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !23
  %add8 = add i64 %12, 1
  store i64 %add8, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !23
  br label %omp.inner.for.cond, !llvm.loop !24

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 2, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #11
  %coerce.dive9 = getelementptr inbounds %union.simde_int64x2_private, ptr %r_, i32 0, i32 0
  %13 = load <2 x double>, ptr %coerce.dive9, align 16
  %call10 = call <2 x i64> @simde_int64x2_from_private(<2 x double> %13) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #11
  ret <2 x i64> %call10
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <2 x double> @simde_int64x2_to_private(<2 x i64> noundef %value) #8 {
entry:
  %retval = alloca %union.simde_int64x2_private, align 16
  %value.addr = alloca <2 x i64>, align 16
  store <2 x i64> %value, ptr %value.addr, align 16, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %retval, ptr align 16 %value.addr, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int64x2_private, ptr %retval, i32 0, i32 0
  %0 = load <2 x double>, ptr %coerce.dive, align 16
  ret <2 x double> %0
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal double @simde_int32x2_to_private(double noundef %value.coerce) #7 {
entry:
  %retval = alloca %union.simde_int32x2_private, align 8
  %value = alloca <2 x i32>, align 8
  %value.addr = alloca <2 x i32>, align 8
  store double %value.coerce, ptr %value, align 8
  %value1 = load <2 x i32>, ptr %value, align 8, !tbaa !16
  store <2 x i32> %value1, ptr %value.addr, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %value.addr, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int32x2_private, ptr %retval, i32 0, i32 0
  %0 = load double, ptr %coerce.dive, align 8
  ret double %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i64 @simde_vqdmulls_s32(i32 noundef %a, i32 noundef %b) #4 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %mul = alloca i64, align 8
  store i32 %a, ptr %a.addr, align 4, !tbaa !5
  store i32 %b, ptr %b.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %mul) #11
  %0 = load i32, ptr %a.addr, align 4, !tbaa !5
  %conv = sext i32 %0 to i64
  %1 = load i32, ptr %b.addr, align 4, !tbaa !5
  %conv1 = sext i32 %1 to i64
  %mul2 = mul nsw i64 %conv, %conv1
  store i64 %mul2, ptr %mul, align 8, !tbaa !11
  %2 = load i32, ptr %a.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i32, ptr %a.addr, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i32, ptr %a.addr, align 4, !tbaa !5
  %sub = sub nsw i32 0, %4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ %sub, %cond.false ]
  %conv4 = sext i32 %cond to i64
  %and = and i64 %conv4, 4611686018427387904
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %cond.true5, label %cond.false9

cond.true5:                                       ; preds = %cond.end
  %5 = load i64, ptr %mul, align 8, !tbaa !11
  %cmp6 = icmp slt i64 %5, 0
  %6 = zext i1 %cmp6 to i64
  %cond8 = select i1 %cmp6, i64 -9223372036854775808, i64 9223372036854775807
  br label %cond.end10

cond.false9:                                      ; preds = %cond.end
  %7 = load i64, ptr %mul, align 8, !tbaa !11
  %shl = shl i64 %7, 1
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false9, %cond.true5
  %cond11 = phi i64 [ %cond8, %cond.true5 ], [ %shl, %cond.false9 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr %mul) #11
  ret i64 %cond11
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <2 x i64> @simde_int64x2_from_private(<2 x double> %value.coerce) #8 {
entry:
  %value = alloca %union.simde_int64x2_private, align 16
  %r = alloca <2 x i64>, align 16
  %coerce.dive = getelementptr inbounds %union.simde_int64x2_private, ptr %value, i32 0, i32 0
  store <2 x double> %value.coerce, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #11
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 16 %value, i64 16, i1 false)
  %0 = load <2 x i64>, ptr %r, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #11
  ret <2 x i64> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde_vst1_s32(ptr noundef %ptr, double noundef %val.coerce) #4 {
entry:
  %val = alloca <2 x i32>, align 8
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <2 x i32>, align 8
  %val_ = alloca %union.simde_int32x2_private, align 8
  %coerce = alloca <2 x i32>, align 8
  store double %val.coerce, ptr %val, align 8
  %val1 = load <2 x i32>, ptr %val, align 8, !tbaa !16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <2 x i32> %val1, ptr %val.addr, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %val_) #11
  %0 = load <2 x i32>, ptr %val.addr, align 8, !tbaa !16
  store <2 x i32> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  %call = call double @simde_int32x2_to_private(double noundef %1) #12
  %coerce.dive = getelementptr inbounds %union.simde_int32x2_private, ptr %val_, i32 0, i32 0
  store double %call, ptr %coerce.dive, align 8
  %2 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 8 %val_, i64 8, i1 false)
  call void @llvm.lifetime.end.p0(i64 8, ptr %val_) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_assert_equal_vi32_(i64 noundef %vec_len, ptr noundef %a, ptr noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %retval = alloca i32, align 4
  %vec_len.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %vec_len, ptr %vec_len.addr, align 8, !tbaa !11
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store ptr %b, ptr %b.addr, align 8, !tbaa !9
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  %0 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  %1 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %3 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %5 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds i32, ptr %4, i64 %5
  %6 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %7 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx1 = getelementptr inbounds i32, ptr %7, i64 %8
  %9 = load i32, ptr %arrayidx1, align 4, !tbaa !5
  %cmp2 = icmp ne i32 %6, %9
  %lnot = xor i1 %cmp2, true
  %lnot3 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot3 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %11 = load i32, ptr %line.addr, align 4, !tbaa !5
  %12 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %13 = load i64, ptr %i, align 8, !tbaa !11
  %14 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %15 = load i64, ptr %i, align 8, !tbaa !11
  %16 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %17 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx4 = getelementptr inbounds i32, ptr %16, i64 %17
  %18 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %19 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %20 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx5 = getelementptr inbounds i32, ptr %19, i64 %20
  %21 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  call void (ptr, ...) @simde_test_debug_printf_(ptr noundef @.str.10, ptr noundef %10, i32 noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14, i64 noundef %15, i32 noundef %18, i32 noundef %21)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %22, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup:                                          ; preds = %if.then, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup
  %23 = load i32, ptr %retval, align 4
  ret i32 %23

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i16> @simde_vld1q_s16(ptr noundef %ptr) #5 {
entry:
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_int16x8_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #11
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 2 %0, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int16x8_private, ptr %r_, i32 0, i32 0
  %1 = load <2 x double>, ptr %coerce.dive, align 16
  %call = call <8 x i16> @simde_int16x8_from_private(<2 x double> %1) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #11
  ret <8 x i16> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i16> @simde_vqdmulhq_s16(<8 x i16> noundef %a, <8 x i16> noundef %b) #5 {
entry:
  %a.addr = alloca <8 x i16>, align 16
  %b.addr = alloca <8 x i16>, align 16
  %coerce = alloca <4 x i16>, align 8
  %coerce2 = alloca <4 x i16>, align 8
  %coerce3 = alloca <4 x i16>, align 8
  %coerce4 = alloca <4 x i16>, align 8
  %coerce6 = alloca <4 x i16>, align 8
  %coerce8 = alloca <4 x i16>, align 8
  %coerce10 = alloca <4 x i16>, align 8
  %coerce11 = alloca <4 x i16>, align 8
  %coerce12 = alloca <4 x i16>, align 8
  %coerce14 = alloca <4 x i16>, align 8
  %coerce15 = alloca <4 x i16>, align 8
  %coerce16 = alloca <4 x i16>, align 8
  store <8 x i16> %a, ptr %a.addr, align 16, !tbaa !16
  store <8 x i16> %b, ptr %b.addr, align 16, !tbaa !16
  %0 = load <8 x i16>, ptr %a.addr, align 16, !tbaa !16
  %call = call double @simde_vget_low_s16(<8 x i16> noundef %0)
  store double %call, ptr %coerce, align 8
  %1 = load <4 x i16>, ptr %coerce, align 8, !tbaa !16
  %2 = load <8 x i16>, ptr %b.addr, align 16, !tbaa !16
  %call1 = call double @simde_vget_low_s16(<8 x i16> noundef %2)
  store double %call1, ptr %coerce2, align 8
  %3 = load <4 x i16>, ptr %coerce2, align 8, !tbaa !16
  store <4 x i16> %1, ptr %coerce3, align 8, !tbaa !16
  %4 = load double, ptr %coerce3, align 8
  store <4 x i16> %3, ptr %coerce4, align 8, !tbaa !16
  %5 = load double, ptr %coerce4, align 8
  %call5 = call double @simde_vqdmulh_s16(double noundef %4, double noundef %5)
  store double %call5, ptr %coerce6, align 8
  %6 = load <4 x i16>, ptr %coerce6, align 8, !tbaa !16
  %7 = load <8 x i16>, ptr %a.addr, align 16, !tbaa !16
  %call7 = call double @simde_vget_high_s16(<8 x i16> noundef %7)
  store double %call7, ptr %coerce8, align 8
  %8 = load <4 x i16>, ptr %coerce8, align 8, !tbaa !16
  %9 = load <8 x i16>, ptr %b.addr, align 16, !tbaa !16
  %call9 = call double @simde_vget_high_s16(<8 x i16> noundef %9)
  store double %call9, ptr %coerce10, align 8
  %10 = load <4 x i16>, ptr %coerce10, align 8, !tbaa !16
  store <4 x i16> %8, ptr %coerce11, align 8, !tbaa !16
  %11 = load double, ptr %coerce11, align 8
  store <4 x i16> %10, ptr %coerce12, align 8, !tbaa !16
  %12 = load double, ptr %coerce12, align 8
  %call13 = call double @simde_vqdmulh_s16(double noundef %11, double noundef %12)
  store double %call13, ptr %coerce14, align 8
  %13 = load <4 x i16>, ptr %coerce14, align 8, !tbaa !16
  store <4 x i16> %6, ptr %coerce15, align 8, !tbaa !16
  %14 = load double, ptr %coerce15, align 8
  store <4 x i16> %13, ptr %coerce16, align 8, !tbaa !16
  %15 = load double, ptr %coerce16, align 8
  %call17 = call <8 x i16> @simde_vcombine_s16(double noundef %14, double noundef %15)
  ret <8 x i16> %call17
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_arm_neon_assert_equal_i16x8_(<8 x i16> noundef %a, <8 x i16> noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #3 {
entry:
  %a.addr = alloca <8 x i16>, align 16
  %b.addr = alloca <8 x i16>, align 16
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [8 x i16], align 16
  %b_ = alloca [8 x i16], align 16
  store <8 x i16> %a, ptr %a.addr, align 16, !tbaa !16
  store <8 x i16> %b, ptr %b.addr, align 16, !tbaa !16
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #11
  %arraydecay = getelementptr inbounds [8 x i16], ptr %a_, i64 0, i64 0
  %0 = load <8 x i16>, ptr %a.addr, align 16, !tbaa !16
  call void @simde_vst1q_s16(ptr noundef %arraydecay, <8 x i16> noundef %0)
  %arraydecay1 = getelementptr inbounds [8 x i16], ptr %b_, i64 0, i64 0
  %1 = load <8 x i16>, ptr %b.addr, align 16, !tbaa !16
  call void @simde_vst1q_s16(ptr noundef %arraydecay1, <8 x i16> noundef %1)
  %arraydecay2 = getelementptr inbounds [8 x i16], ptr %a_, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [8 x i16], ptr %b_, i64 0, i64 0
  %2 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %3 = load i32, ptr %line.addr, align 4, !tbaa !5
  %4 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %5 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vi16_(i64 noundef 8, ptr noundef %arraydecay2, ptr noundef %arraydecay3, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #11
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i16> @simde_vcombine_s16(double noundef %low.coerce, double noundef %high.coerce) #5 {
entry:
  %low = alloca <4 x i16>, align 8
  %high = alloca <4 x i16>, align 8
  %low.addr = alloca <4 x i16>, align 8
  %high.addr = alloca <4 x i16>, align 8
  %r_ = alloca %union.simde_int16x8_private, align 16
  %low_ = alloca %union.simde_int16x4_private, align 8
  %coerce = alloca <4 x i16>, align 8
  %high_ = alloca %union.simde_int16x4_private, align 8
  %coerce3 = alloca <4 x i16>, align 8
  store double %low.coerce, ptr %low, align 8
  %low1 = load <4 x i16>, ptr %low, align 8, !tbaa !16
  store double %high.coerce, ptr %high, align 8
  %high2 = load <4 x i16>, ptr %high, align 8, !tbaa !16
  store <4 x i16> %low1, ptr %low.addr, align 8, !tbaa !16
  store <4 x i16> %high2, ptr %high.addr, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %low_) #11
  %0 = load <4 x i16>, ptr %low.addr, align 8, !tbaa !16
  store <4 x i16> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  %call = call double @simde_int16x4_to_private(double noundef %1) #12
  %coerce.dive = getelementptr inbounds %union.simde_int16x4_private, ptr %low_, i32 0, i32 0
  store double %call, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %high_) #11
  %2 = load <4 x i16>, ptr %high.addr, align 8, !tbaa !16
  store <4 x i16> %2, ptr %coerce3, align 8, !tbaa !16
  %3 = load double, ptr %coerce3, align 8
  %call4 = call double @simde_int16x4_to_private(double noundef %3) #12
  %coerce.dive5 = getelementptr inbounds %union.simde_int16x4_private, ptr %high_, i32 0, i32 0
  store double %call4, ptr %coerce.dive5, align 8
  %4 = load <4 x i16>, ptr %low_, align 8, !tbaa !16
  %5 = load <4 x i16>, ptr %high_, align 8, !tbaa !16
  %shuffle = shufflevector <4 x i16> %4, <4 x i16> %5, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x i16> %shuffle, ptr %r_, align 16, !tbaa !16
  %coerce.dive6 = getelementptr inbounds %union.simde_int16x8_private, ptr %r_, i32 0, i32 0
  %6 = load <2 x double>, ptr %coerce.dive6, align 16
  %call7 = call <8 x i16> @simde_int16x8_from_private(<2 x double> %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %high_) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %low_) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #11
  ret <8 x i16> %call7
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vget_low_s16(<8 x i16> noundef %a) #5 {
entry:
  %retval = alloca <4 x i16>, align 8
  %a.addr = alloca <8 x i16>, align 16
  %r_ = alloca %union.simde_int16x4_private, align 8
  %a_ = alloca %union.simde_int16x8_private, align 16
  %coerce = alloca <1 x i64>, align 8
  %coerce4 = alloca <4 x i16>, align 8
  store <8 x i16> %a, ptr %a.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #11
  %0 = load <8 x i16>, ptr %a.addr, align 16, !tbaa !16
  %call = call <2 x double> @simde_int16x8_to_private(<8 x i16> noundef %0) #12
  %coerce.dive = getelementptr inbounds %union.simde_int16x8_private, ptr %a_, i32 0, i32 0
  store <2 x double> %call, ptr %coerce.dive, align 16
  %1 = load <2 x i64>, ptr %a_, align 16, !tbaa !16
  %call1 = call double @_mm_movepi64_pi64(<2 x i64> noundef %1)
  store double %call1, ptr %coerce, align 8
  %2 = load <1 x i64>, ptr %coerce, align 8, !tbaa !16
  store <1 x i64> %2, ptr %r_, align 8, !tbaa !16
  %coerce.dive2 = getelementptr inbounds %union.simde_int16x4_private, ptr %r_, i32 0, i32 0
  %3 = load double, ptr %coerce.dive2, align 8
  %call3 = call double @simde_int16x4_from_private(double %3) #12
  store double %call3, ptr %coerce4, align 8
  %4 = load <4 x i16>, ptr %coerce4, align 8, !tbaa !16
  store <4 x i16> %4, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #11
  %5 = load double, ptr %retval, align 8
  ret double %5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vget_high_s16(<8 x i16> noundef %a) #5 {
entry:
  %retval = alloca <4 x i16>, align 8
  %a.addr = alloca <8 x i16>, align 16
  %r_ = alloca %union.simde_int16x4_private, align 8
  %a_ = alloca %union.simde_int16x8_private, align 16
  %coerce = alloca <4 x i16>, align 8
  store <8 x i16> %a, ptr %a.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #11
  %0 = load <8 x i16>, ptr %a.addr, align 16, !tbaa !16
  %call = call <2 x double> @simde_int16x8_to_private(<8 x i16> noundef %0) #12
  %coerce.dive = getelementptr inbounds %union.simde_int16x8_private, ptr %a_, i32 0, i32 0
  store <2 x double> %call, ptr %coerce.dive, align 16
  %1 = load <8 x i16>, ptr %a_, align 16, !tbaa !16
  %2 = load <8 x i16>, ptr %a_, align 16, !tbaa !16
  %shuffle = shufflevector <8 x i16> %1, <8 x i16> %2, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i16> %shuffle, ptr %r_, align 8, !tbaa !16
  %coerce.dive1 = getelementptr inbounds %union.simde_int16x4_private, ptr %r_, i32 0, i32 0
  %3 = load double, ptr %coerce.dive1, align 8
  %call2 = call double @simde_int16x4_from_private(double %3) #12
  store double %call2, ptr %coerce, align 8
  %4 = load <4 x i16>, ptr %coerce, align 8, !tbaa !16
  store <4 x i16> %4, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #11
  %5 = load double, ptr %retval, align 8
  ret double %5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @_mm_movepi64_pi64(<2 x i64> noundef %__a) #5 {
entry:
  %retval = alloca <1 x i64>, align 8
  %__a.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !16
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !16
  %vecext = extractelement <2 x i64> %0, i32 0
  %1 = bitcast i64 %vecext to <1 x i64>
  store <1 x i64> %1, ptr %retval, align 8
  %2 = load double, ptr %retval, align 8
  ret double %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde_vst1q_s16(ptr noundef %ptr, <8 x i16> noundef %val) #5 {
entry:
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <8 x i16>, align 16
  %val_ = alloca %union.simde_int16x8_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <8 x i16> %val, ptr %val.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %val_) #11
  %0 = load <8 x i16>, ptr %val.addr, align 16, !tbaa !16
  %call = call <2 x double> @simde_int16x8_to_private(<8 x i16> noundef %0) #12
  %coerce.dive = getelementptr inbounds %union.simde_int16x8_private, ptr %val_, i32 0, i32 0
  store <2 x double> %call, ptr %coerce.dive, align 16
  %1 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %1, ptr align 16 %val_, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr %val_) #11
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i32> @simde_vld1q_s32(ptr noundef %ptr) #5 {
entry:
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_int32x4_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #11
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 4 %0, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int32x4_private, ptr %r_, i32 0, i32 0
  %1 = load <2 x double>, ptr %coerce.dive, align 16
  %call = call <4 x i32> @simde_int32x4_from_private(<2 x double> %1) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #11
  ret <4 x i32> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i32> @simde_vqdmulhq_s32(<4 x i32> noundef %a, <4 x i32> noundef %b) #5 {
entry:
  %a.addr = alloca <4 x i32>, align 16
  %b.addr = alloca <4 x i32>, align 16
  %coerce = alloca <2 x i32>, align 8
  %coerce2 = alloca <2 x i32>, align 8
  %coerce3 = alloca <2 x i32>, align 8
  %coerce4 = alloca <2 x i32>, align 8
  %coerce6 = alloca <2 x i32>, align 8
  %coerce8 = alloca <2 x i32>, align 8
  %coerce10 = alloca <2 x i32>, align 8
  %coerce11 = alloca <2 x i32>, align 8
  %coerce12 = alloca <2 x i32>, align 8
  %coerce14 = alloca <2 x i32>, align 8
  %coerce15 = alloca <2 x i32>, align 8
  %coerce16 = alloca <2 x i32>, align 8
  store <4 x i32> %a, ptr %a.addr, align 16, !tbaa !16
  store <4 x i32> %b, ptr %b.addr, align 16, !tbaa !16
  %0 = load <4 x i32>, ptr %a.addr, align 16, !tbaa !16
  %call = call double @simde_vget_low_s32(<4 x i32> noundef %0)
  store double %call, ptr %coerce, align 8
  %1 = load <2 x i32>, ptr %coerce, align 8, !tbaa !16
  %2 = load <4 x i32>, ptr %b.addr, align 16, !tbaa !16
  %call1 = call double @simde_vget_low_s32(<4 x i32> noundef %2)
  store double %call1, ptr %coerce2, align 8
  %3 = load <2 x i32>, ptr %coerce2, align 8, !tbaa !16
  store <2 x i32> %1, ptr %coerce3, align 8, !tbaa !16
  %4 = load double, ptr %coerce3, align 8
  store <2 x i32> %3, ptr %coerce4, align 8, !tbaa !16
  %5 = load double, ptr %coerce4, align 8
  %call5 = call double @simde_vqdmulh_s32(double noundef %4, double noundef %5)
  store double %call5, ptr %coerce6, align 8
  %6 = load <2 x i32>, ptr %coerce6, align 8, !tbaa !16
  %7 = load <4 x i32>, ptr %a.addr, align 16, !tbaa !16
  %call7 = call double @simde_vget_high_s32(<4 x i32> noundef %7)
  store double %call7, ptr %coerce8, align 8
  %8 = load <2 x i32>, ptr %coerce8, align 8, !tbaa !16
  %9 = load <4 x i32>, ptr %b.addr, align 16, !tbaa !16
  %call9 = call double @simde_vget_high_s32(<4 x i32> noundef %9)
  store double %call9, ptr %coerce10, align 8
  %10 = load <2 x i32>, ptr %coerce10, align 8, !tbaa !16
  store <2 x i32> %8, ptr %coerce11, align 8, !tbaa !16
  %11 = load double, ptr %coerce11, align 8
  store <2 x i32> %10, ptr %coerce12, align 8, !tbaa !16
  %12 = load double, ptr %coerce12, align 8
  %call13 = call double @simde_vqdmulh_s32(double noundef %11, double noundef %12)
  store double %call13, ptr %coerce14, align 8
  %13 = load <2 x i32>, ptr %coerce14, align 8, !tbaa !16
  store <2 x i32> %6, ptr %coerce15, align 8, !tbaa !16
  %14 = load double, ptr %coerce15, align 8
  store <2 x i32> %13, ptr %coerce16, align 8, !tbaa !16
  %15 = load double, ptr %coerce16, align 8
  %call17 = call <4 x i32> @simde_vcombine_s32(double noundef %14, double noundef %15)
  ret <4 x i32> %call17
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_arm_neon_assert_equal_i32x4_(<4 x i32> noundef %a, <4 x i32> noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #3 {
entry:
  %a.addr = alloca <4 x i32>, align 16
  %b.addr = alloca <4 x i32>, align 16
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [4 x i32], align 16
  %b_ = alloca [4 x i32], align 16
  store <4 x i32> %a, ptr %a.addr, align 16, !tbaa !16
  store <4 x i32> %b, ptr %b.addr, align 16, !tbaa !16
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #11
  %arraydecay = getelementptr inbounds [4 x i32], ptr %a_, i64 0, i64 0
  %0 = load <4 x i32>, ptr %a.addr, align 16, !tbaa !16
  call void @simde_vst1q_s32(ptr noundef %arraydecay, <4 x i32> noundef %0)
  %arraydecay1 = getelementptr inbounds [4 x i32], ptr %b_, i64 0, i64 0
  %1 = load <4 x i32>, ptr %b.addr, align 16, !tbaa !16
  call void @simde_vst1q_s32(ptr noundef %arraydecay1, <4 x i32> noundef %1)
  %arraydecay2 = getelementptr inbounds [4 x i32], ptr %a_, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [4 x i32], ptr %b_, i64 0, i64 0
  %2 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %3 = load i32, ptr %line.addr, align 4, !tbaa !5
  %4 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %5 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vi32_(i64 noundef 4, ptr noundef %arraydecay2, ptr noundef %arraydecay3, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #11
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i32> @simde_vcombine_s32(double noundef %low.coerce, double noundef %high.coerce) #5 {
entry:
  %low = alloca <2 x i32>, align 8
  %high = alloca <2 x i32>, align 8
  %low.addr = alloca <2 x i32>, align 8
  %high.addr = alloca <2 x i32>, align 8
  %r_ = alloca %union.simde_int32x4_private, align 16
  %low_ = alloca %union.simde_int32x2_private, align 8
  %coerce = alloca <2 x i32>, align 8
  %high_ = alloca %union.simde_int32x2_private, align 8
  %coerce3 = alloca <2 x i32>, align 8
  store double %low.coerce, ptr %low, align 8
  %low1 = load <2 x i32>, ptr %low, align 8, !tbaa !16
  store double %high.coerce, ptr %high, align 8
  %high2 = load <2 x i32>, ptr %high, align 8, !tbaa !16
  store <2 x i32> %low1, ptr %low.addr, align 8, !tbaa !16
  store <2 x i32> %high2, ptr %high.addr, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %low_) #11
  %0 = load <2 x i32>, ptr %low.addr, align 8, !tbaa !16
  store <2 x i32> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  %call = call double @simde_int32x2_to_private(double noundef %1) #12
  %coerce.dive = getelementptr inbounds %union.simde_int32x2_private, ptr %low_, i32 0, i32 0
  store double %call, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %high_) #11
  %2 = load <2 x i32>, ptr %high.addr, align 8, !tbaa !16
  store <2 x i32> %2, ptr %coerce3, align 8, !tbaa !16
  %3 = load double, ptr %coerce3, align 8
  %call4 = call double @simde_int32x2_to_private(double noundef %3) #12
  %coerce.dive5 = getelementptr inbounds %union.simde_int32x2_private, ptr %high_, i32 0, i32 0
  store double %call4, ptr %coerce.dive5, align 8
  %4 = load <2 x i32>, ptr %low_, align 8, !tbaa !16
  %5 = load <2 x i32>, ptr %high_, align 8, !tbaa !16
  %shuffle = shufflevector <2 x i32> %4, <2 x i32> %5, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %shuffle, ptr %r_, align 16, !tbaa !16
  %coerce.dive6 = getelementptr inbounds %union.simde_int32x4_private, ptr %r_, i32 0, i32 0
  %6 = load <2 x double>, ptr %coerce.dive6, align 16
  %call7 = call <4 x i32> @simde_int32x4_from_private(<2 x double> %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %high_) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %low_) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #11
  ret <4 x i32> %call7
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vget_low_s32(<4 x i32> noundef %a) #5 {
entry:
  %retval = alloca <2 x i32>, align 8
  %a.addr = alloca <4 x i32>, align 16
  %r_ = alloca %union.simde_int32x2_private, align 8
  %a_ = alloca %union.simde_int32x4_private, align 16
  %coerce = alloca <1 x i64>, align 8
  %coerce4 = alloca <2 x i32>, align 8
  store <4 x i32> %a, ptr %a.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #11
  %0 = load <4 x i32>, ptr %a.addr, align 16, !tbaa !16
  %call = call <2 x double> @simde_int32x4_to_private(<4 x i32> noundef %0) #12
  %coerce.dive = getelementptr inbounds %union.simde_int32x4_private, ptr %a_, i32 0, i32 0
  store <2 x double> %call, ptr %coerce.dive, align 16
  %1 = load <2 x i64>, ptr %a_, align 16, !tbaa !16
  %call1 = call double @_mm_movepi64_pi64(<2 x i64> noundef %1)
  store double %call1, ptr %coerce, align 8
  %2 = load <1 x i64>, ptr %coerce, align 8, !tbaa !16
  store <1 x i64> %2, ptr %r_, align 8, !tbaa !16
  %coerce.dive2 = getelementptr inbounds %union.simde_int32x2_private, ptr %r_, i32 0, i32 0
  %3 = load double, ptr %coerce.dive2, align 8
  %call3 = call double @simde_int32x2_from_private(double %3) #12
  store double %call3, ptr %coerce4, align 8
  %4 = load <2 x i32>, ptr %coerce4, align 8, !tbaa !16
  store <2 x i32> %4, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #11
  %5 = load double, ptr %retval, align 8
  ret double %5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vget_high_s32(<4 x i32> noundef %a) #5 {
entry:
  %retval = alloca <2 x i32>, align 8
  %a.addr = alloca <4 x i32>, align 16
  %r_ = alloca %union.simde_int32x2_private, align 8
  %a_ = alloca %union.simde_int32x4_private, align 16
  %coerce = alloca <2 x i32>, align 8
  store <4 x i32> %a, ptr %a.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #11
  %0 = load <4 x i32>, ptr %a.addr, align 16, !tbaa !16
  %call = call <2 x double> @simde_int32x4_to_private(<4 x i32> noundef %0) #12
  %coerce.dive = getelementptr inbounds %union.simde_int32x4_private, ptr %a_, i32 0, i32 0
  store <2 x double> %call, ptr %coerce.dive, align 16
  %1 = load <4 x i32>, ptr %a_, align 16, !tbaa !16
  %2 = load <4 x i32>, ptr %a_, align 16, !tbaa !16
  %shuffle = shufflevector <4 x i32> %1, <4 x i32> %2, <2 x i32> <i32 2, i32 3>
  store <2 x i32> %shuffle, ptr %r_, align 8, !tbaa !16
  %coerce.dive1 = getelementptr inbounds %union.simde_int32x2_private, ptr %r_, i32 0, i32 0
  %3 = load double, ptr %coerce.dive1, align 8
  %call2 = call double @simde_int32x2_from_private(double %3) #12
  store double %call2, ptr %coerce, align 8
  %4 = load <2 x i32>, ptr %coerce, align 8, !tbaa !16
  store <2 x i32> %4, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #11
  %5 = load double, ptr %retval, align 8
  ret double %5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde_vst1q_s32(ptr noundef %ptr, <4 x i32> noundef %val) #5 {
entry:
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <4 x i32>, align 16
  %val_ = alloca %union.simde_int32x4_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <4 x i32> %val, ptr %val.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %val_) #11
  %0 = load <4 x i32>, ptr %val.addr, align 16, !tbaa !16
  %call = call <2 x double> @simde_int32x4_to_private(<4 x i32> noundef %0) #12
  %coerce.dive = getelementptr inbounds %union.simde_int32x4_private, ptr %val_, i32 0, i32 0
  store <2 x double> %call, ptr %coerce.dive, align 16
  %1 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 16 %val_, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr %val_) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { alwaysinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { alwaysinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { alwaysinline nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { alwaysinline nounwind willreturn memory(none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !7, i64 0}
!13 = !{!14, !10, i64 0}
!14 = !{!"", !10, i64 0, !10, i64 8}
!15 = !{!14, !10, i64 8}
!16 = !{!7, !7, i64 0}
!17 = distinct !{}
!18 = distinct !{!18, !19, !20}
!19 = !{!"llvm.loop.parallel_accesses", !17}
!20 = !{!"llvm.loop.vectorize.enable", i1 true}
!21 = !{!22, !22, i64 0}
!22 = !{!"short", !7, i64 0}
!23 = distinct !{}
!24 = distinct !{!24, !25, !20}
!25 = !{!"llvm.loop.parallel_accesses", !23}

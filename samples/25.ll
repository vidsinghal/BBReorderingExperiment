; ModuleID = 'samples/25.bc'
source_filename = "../spack-src/test/arm/neon/addw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { ptr, ptr }
%struct.anon.0 = type { [8 x i16], [8 x i8], [8 x i16] }
%struct.anon.1 = type { [4 x i32], [4 x i16], [4 x i32] }
%struct.anon.2 = type { [2 x i64], [2 x i32], [2 x i64] }
%struct.anon.3 = type { [8 x i16], [8 x i8], [8 x i16] }
%struct.anon.4 = type { [4 x i32], [4 x i16], [4 x i32] }
%struct.anon.5 = type { [2 x i64], [2 x i32], [2 x i64] }
%union.simde_int16x8_private = type { <8 x i16> }
%union.simde_int8x8_private = type { <8 x i8> }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%union.simde_int32x4_private = type { <4 x i32> }
%union.simde_int16x4_private = type { <4 x i16> }
%union.simde_int64x2_private = type { <2 x i64> }
%union.simde_int32x2_private = type { <2 x i32> }
%union.simde_uint16x8_private = type { <8 x i16> }
%union.simde_uint8x8_private = type { <8 x i8> }
%union.simde_uint32x4_private = type { <4 x i32> }
%union.simde_uint16x4_private = type { <4 x i16> }
%union.simde_uint64x2_private = type { <2 x i64> }
%union.simde_uint32x2_private = type { <2 x i32> }

@stdout = external global ptr, align 8
@.str = private unnamed_addr constant [8 x i8] c"1..%zu\0A\00", align 1
@test_suite_tests = internal constant [6 x %struct.anon] [%struct.anon { ptr @test_simde_vaddw_s8, ptr @.str.3 }, %struct.anon { ptr @test_simde_vaddw_s16, ptr @.str.4 }, %struct.anon { ptr @test_simde_vaddw_s32, ptr @.str.5 }, %struct.anon { ptr @test_simde_vaddw_u8, ptr @.str.6 }, %struct.anon { ptr @test_simde_vaddw_u16, ptr @.str.7 }, %struct.anon { ptr @test_simde_vaddw_u32, ptr @.str.8 }], align 16
@.str.1 = private unnamed_addr constant [20 x i8] c"not ok %zu addw/%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"ok %zu addw/%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"vaddw_s8\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"vaddw_s16\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"vaddw_s32\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"vaddw_u8\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"vaddw_u16\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"vaddw_u32\00", align 1
@__const.test_simde_vaddw_s8.test_vec = private unnamed_addr constant [8 x %struct.anon.0] [%struct.anon.0 { [8 x i16] [i16 1399, i16 -17500, i16 -22993, i16 -21510, i16 23499, i16 6907, i16 18650, i16 -25560], [8 x i8] c"\EF\12\D9\B3E5cq", [8 x i16] [i16 1382, i16 -17482, i16 -23032, i16 -21587, i16 23568, i16 6960, i16 18749, i16 -25447] }, %struct.anon.0 { [8 x i16] [i16 2134, i16 -30371, i16 8145, i16 18599, i16 19236, i16 21252, i16 -271, i16 -16898], [8 x i8] c"Y\F9\D73A\00\CF1", [8 x i16] [i16 2223, i16 -30378, i16 8104, i16 18650, i16 19301, i16 21252, i16 -320, i16 -16849] }, %struct.anon.0 { [8 x i16] [i16 -22254, i16 22500, i16 18398, i16 13768, i16 9807, i16 8638, i16 25925, i16 27241], [8 x i8] c"\B0m\BD\A2l\BC_\C5", [8 x i16] [i16 -22334, i16 22609, i16 18331, i16 13674, i16 9915, i16 8570, i16 26020, i16 27182] }, %struct.anon.0 { [8 x i16] [i16 14005, i16 -2055, i16 -14282, i16 18472, i16 3185, i16 20639, i16 26707, i16 -23931], [8 x i8] c"\8EC\C3\D3\A9-=Y", [8 x i16] [i16 13891, i16 -1988, i16 -14343, i16 18427, i16 3098, i16 20684, i16 26768, i16 -23842] }, %struct.anon.0 { [8 x i16] [i16 -1126, i16 1787, i16 23223, i16 27852, i16 -14959, i16 -14493, i16 -29811, i16 -240], [8 x i8] c"\97\AFO\EA\17\D4\8D\A5", [8 x i16] [i16 -1231, i16 1706, i16 23302, i16 27830, i16 -14936, i16 -14537, i16 -29926, i16 -331] }, %struct.anon.0 { [8 x i16] [i16 20503, i16 -16263, i16 -18819, i16 6170, i16 5553, i16 26654, i16 -5520, i16 469], [8 x i8] c"\AF8\C8=\C4\D8<[", [8 x i16] [i16 20422, i16 -16207, i16 -18875, i16 6231, i16 5493, i16 26614, i16 -5460, i16 560] }, %struct.anon.0 { [8 x i16] [i16 -29816, i16 -24762, i16 -11425, i16 30277, i16 -16861, i16 -24265, i16 20852, i16 9913], [8 x i8] c"f\D7\8E\D6\C2c\D7q", [8 x i16] [i16 -29714, i16 -24803, i16 -11539, i16 30235, i16 -16923, i16 -24166, i16 20811, i16 10026] }, %struct.anon.0 { [8 x i16] [i16 -24420, i16 24750, i16 -5512, i16 187, i16 373, i16 -11104, i16 -6700, i16 -1973], [8 x i8] c"\A3\82\99\17\D3R=9", [8 x i16] [i16 -24513, i16 24624, i16 -5615, i16 210, i16 328, i16 -11022, i16 -6639, i16 -1916] }], align 16
@.str.9 = private unnamed_addr constant [34 x i8] c"../spack-src/test/arm/neon/addw.c\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"simde_vld1q_s16(test_vec[i].r)\00", align 1
@.str.12 = private unnamed_addr constant [56 x i8] c"%s:%d: assertion failed: %s[%zu] == %s[%zu] (%d == %d)\0A\00", align 1
@stderr = external global ptr, align 8
@__const.test_simde_vaddw_s16.test_vec = private unnamed_addr constant [8 x %struct.anon.1] [%struct.anon.1 { [4 x i32] [i32 -1388212854, i32 -137385825, i32 -2114199091, i32 -1388281654], [4 x i16] [i16 -16021, i16 14313, i16 1415, i16 13855], [4 x i32] [i32 -1388228875, i32 -137371512, i32 -2114197676, i32 -1388267799] }, %struct.anon.1 { [4 x i32] [i32 1434567342, i32 335417737, i32 1052852126, i32 -1271557913], [4 x i16] [i16 12401, i16 15157, i16 30129, i16 7401], [4 x i32] [i32 1434579743, i32 335432894, i32 1052882255, i32 -1271550512] }, %struct.anon.1 { [4 x i32] [i32 -1101802954, i32 -2030799912, i32 -1092913867, i32 617798022], [4 x i16] [i16 -27880, i16 -158, i16 -26845, i16 -27469], [4 x i32] [i32 -1101830834, i32 -2030800070, i32 -1092940712, i32 617770553] }, %struct.anon.1 { [4 x i32] [i32 2043734216, i32 -1802127010, i32 1666378123, i32 -1846917540], [4 x i16] [i16 -14917, i16 16719, i16 8607, i16 -18586], [4 x i32] [i32 2043719299, i32 -1802110291, i32 1666386730, i32 -1846936126] }, %struct.anon.1 { [4 x i32] [i32 -675821388, i32 678193760, i32 -1314833325, i32 -2142947595], [4 x i16] [i16 -26593, i16 31716, i16 -12578, i16 -26100], [4 x i32] [i32 -675847981, i32 678225476, i32 -1314845903, i32 -2142973695] }, %struct.anon.1 { [4 x i32] [i32 853236883, i32 854212989, i32 1779015946, i32 1586656523], [4 x i16] [i16 13233, i16 -23025, i16 21865, i16 -30425], [4 x i32] [i32 853250116, i32 854189964, i32 1779037811, i32 1586626098] }, %struct.anon.1 { [4 x i32] [i32 -888927251, i32 1818563033, i32 -358661779, i32 -1944286846], [4 x i16] [i16 9770, i16 13814, i16 -30565, i16 19860], [4 x i32] [i32 -888917481, i32 1818576847, i32 -358692344, i32 -1944266986] }, %struct.anon.1 { [4 x i32] [i32 636724155, i32 -441574664, i32 -21908955, i32 812324547], [4 x i16] [i16 2647, i16 -9701, i16 14227, i16 -17050], [4 x i32] [i32 636726802, i32 -441584365, i32 -21894728, i32 812307497] }], align 16
@.str.13 = private unnamed_addr constant [31 x i8] c"simde_vld1q_s32(test_vec[i].r)\00", align 1
@__const.test_simde_vaddw_s32.test_vec = private unnamed_addr constant [8 x %struct.anon.2] [%struct.anon.2 { [2 x i64] [i64 -35941828180514250, i64 -3275167048482511539], [2 x i32] [i32 1164837346, i32 810152381], [2 x i64] [i64 -35941827015676904, i64 -3275167047672359158] }, %struct.anon.2 { [2 x i64] [i64 7520367280355497394, i64 -5568442117108591200], [2 x i32] [i32 2092554896, i32 21972255], [2 x i64] [i64 7520367282448052290, i64 -5568442117086618945] }, %struct.anon.2 { [2 x i64] [i64 6932324803500490054, i64 -7385863836118137883], [2 x i32] [i32 -1655510216, i32 1716456406], [2 x i64] [i64 6932324801844979838, i64 -7385863834401681477] }, %struct.anon.2 { [2 x i64] [i64 -7780757470541838107, i64 -4468190007372788497], [2 x i32] [i32 148488975, i32 513891046], [2 x i64] [i64 -7780757470393349132, i64 -4468190006858897451] }, %struct.anon.2 { [2 x i64] [i64 -1981007695762885563, i64 -8721521294389451500], [2 x i32] [i32 371429178, i32 1809326171], [2 x i64] [i64 -1981007695391456385, i64 -8721521292580125329] }, %struct.anon.2 { [2 x i64] [i64 5901990452037661155, i64 -4328821606770170871], [2 x i32] [i32 -333064875, i32 -26010428], [2 x i64] [i64 5901990451704596280, i64 -4328821606796181299] }, %struct.anon.2 { [2 x i64] [i64 -7317806549163469141, i64 286907640752432542], [2 x i32] [i32 -1626642192, i32 -1402734761], [2 x i64] [i64 -7317806550790111333, i64 286907639349697781] }, %struct.anon.2 { [2 x i64] [i64 5732814751622858957, i64 3527663835220976802], [2 x i32] [i32 -1495639892, i32 -1800809052], [2 x i64] [i64 5732814750127219065, i64 3527663833420167750] }], align 16
@.str.14 = private unnamed_addr constant [31 x i8] c"simde_vld1q_s64(test_vec[i].r)\00", align 1
@.str.15 = private unnamed_addr constant [58 x i8] c"%s:%d: assertion failed: %s[%zu] == %s[%zu] (%ld == %ld)\0A\00", align 1
@__const.test_simde_vaddw_u8.test_vec = private unnamed_addr constant [8 x %struct.anon.3] [%struct.anon.3 { [8 x i16] [i16 10834, i16 14742, i16 18794, i16 -12089, i16 -772, i16 23788, i16 4099, i16 -26791], [8 x i8] c"\D0\E5[{Q\CAJ\00", [8 x i16] [i16 11042, i16 14971, i16 18885, i16 -11966, i16 -691, i16 23990, i16 4173, i16 -26791] }, %struct.anon.3 { [8 x i16] [i16 1758, i16 13153, i16 29583, i16 -7798, i16 8349, i16 1818, i16 -7574, i16 26327], [8 x i8] c"\DE\C3\C2\E1\D3\1Cx\A4", [8 x i16] [i16 1980, i16 13348, i16 29777, i16 -7573, i16 8560, i16 1846, i16 -7454, i16 26491] }, %struct.anon.3 { [8 x i16] [i16 -11519, i16 21023, i16 27038, i16 31827, i16 -19345, i16 -337, i16 14631, i16 -15136], [8 x i8] c"Z\FA\CB\C4\DC\A2*\BA", [8 x i16] [i16 -11429, i16 21273, i16 27241, i16 32023, i16 -19125, i16 -175, i16 14673, i16 -14950] }, %struct.anon.3 { [8 x i16] [i16 -5018, i16 14747, i16 4872, i16 2781, i16 -537, i16 -31396, i16 -20634, i16 -10751], [8 x i8] c"c\B1\D4\8A\EA\B4ND", [8 x i16] [i16 -4919, i16 14924, i16 5084, i16 2919, i16 -303, i16 -31216, i16 -20556, i16 -10683] }, %struct.anon.3 { [8 x i16] [i16 6575, i16 -29944, i16 12988, i16 8774, i16 -7905, i16 10075, i16 14837, i16 -9167], [8 x i8] c"6\8Ea\9C=br\A1", [8 x i16] [i16 6629, i16 -29802, i16 13085, i16 8930, i16 -7844, i16 10173, i16 14951, i16 -9006] }, %struct.anon.3 { [8 x i16] [i16 18195, i16 -469, i16 31483, i16 -21950, i16 19347, i16 20278, i16 31869, i16 -25487], [8 x i8] c"]\CD\C4R\06\F5.<", [8 x i16] [i16 18288, i16 -264, i16 31679, i16 -21868, i16 19353, i16 20523, i16 31915, i16 -25427] }, %struct.anon.3 { [8 x i16] [i16 -28797, i16 -15912, i16 19442, i16 1378, i16 -29294, i16 -29437, i16 17927, i16 -25800], [8 x i8] c"\91n\EA\0E\EA\\\ABG", [8 x i16] [i16 -28652, i16 -15802, i16 19676, i16 1392, i16 -29060, i16 -29345, i16 18098, i16 -25729] }, %struct.anon.3 { [8 x i16] [i16 28457, i16 12186, i16 -14236, i16 -6037, i16 17240, i16 19113, i16 2958, i16 8271], [8 x i8] c"\98S\AE\A0\99\E6;*", [8 x i16] [i16 28609, i16 12269, i16 -14062, i16 -5877, i16 17393, i16 19343, i16 3017, i16 8313] }], align 16
@.str.16 = private unnamed_addr constant [31 x i8] c"simde_vld1q_u16(test_vec[i].r)\00", align 1
@.str.17 = private unnamed_addr constant [56 x i8] c"%s:%d: assertion failed: %s[%zu] == %s[%zu] (%u == %u)\0A\00", align 1
@__const.test_simde_vaddw_u16.test_vec = private unnamed_addr constant [8 x %struct.anon.4] [%struct.anon.4 { [4 x i32] [i32 125494402, i32 -683327946, i32 -1060771407, i32 286950810], [4 x i16] [i16 -19563, i16 17753, i16 -25514, i16 16530], [4 x i32] [i32 125540375, i32 -683310193, i32 -1060731385, i32 286967340] }, %struct.anon.4 { [4 x i32] [i32 -275769647, i32 1265827017, i32 374598880, i32 -605120470], [4 x i16] [i16 -19583, i16 7068, i16 -18887, i16 -12756], [4 x i32] [i32 -275723694, i32 1265834085, i32 374645529, i32 -605067690] }, %struct.anon.4 { [4 x i32] [i32 -1072462487, i32 -218061534, i32 -2048749125, i32 1842369677], [4 x i16] [i16 9024, i16 27267, i16 29115, i16 15430], [4 x i32] [i32 -1072453463, i32 -218034267, i32 -2048720010, i32 1842385107] }, %struct.anon.4 { [4 x i32] [i32 1582817829, i32 36471704, i32 734150409, i32 -1608596764], [4 x i16] [i16 83, i16 -8155, i16 -2731, i16 -27315], [4 x i32] [i32 1582817912, i32 36529085, i32 734213214, i32 -1608558543] }, %struct.anon.4 { [4 x i32] [i32 -738143975, i32 1729185346, i32 -1060804568, i32 -171773460], [4 x i16] [i16 -31696, i16 5408, i16 15943, i16 -25931], [4 x i32] [i32 -738110135, i32 1729190754, i32 -1060788625, i32 -171733855] }, %struct.anon.4 { [4 x i32] [i32 -1820599746, i32 -399914801, i32 -591582823, i32 -1757163921], [4 x i16] [i16 2358, i16 8791, i16 6906, i16 11031], [4 x i32] [i32 -1820597388, i32 -399906010, i32 -591575917, i32 -1757152890] }, %struct.anon.4 { [4 x i32] [i32 -448776290, i32 -1266616971, i32 -1639449649, i32 1569157315], [4 x i16] [i16 17561, i16 2105, i16 31762, i16 18591], [4 x i32] [i32 -448758729, i32 -1266614866, i32 -1639417887, i32 1569175906] }, %struct.anon.4 { [4 x i32] [i32 -2140407931, i32 -1347714543, i32 798354362, i32 -1344072224], [4 x i16] [i16 11024, i16 -11443, i16 -11109, i16 13616], [4 x i32] [i32 -2140396907, i32 -1347660450, i32 798408789, i32 -1344058608] }], align 16
@.str.18 = private unnamed_addr constant [31 x i8] c"simde_vld1q_u32(test_vec[i].r)\00", align 1
@__const.test_simde_vaddw_u32.test_vec = private unnamed_addr constant [8 x %struct.anon.5] [%struct.anon.5 { [2 x i64] [i64 -200711523101230862, i64 5491972490029369669], [2 x i32] [i32 -1760235037, i32 -12536809], [2 x i64] [i64 -200711520566498603, i64 5491972494311800156] }, %struct.anon.5 { [2 x i64] [i64 6488175683242448873, i64 8558374424049239001], [2 x i32] [i32 1597976701, i32 2074834583], [2 x i64] [i64 6488175684840425574, i64 8558374426124073584] }, %struct.anon.5 { [2 x i64] [i64 6664856254073192296, i64 -617593353133589078], [2 x i32] [i32 1405070114, i32 -1647737825], [2 x i64] [i64 6664856255478262410, i64 -617593350486359607] }, %struct.anon.5 { [2 x i64] [i64 -1745242165388506955, i64 -2938909721728984474], [2 x i32] [i32 -2132211102, i32 175593192], [2 x i64] [i64 -1745242163225750761, i64 -2938909721553391282] }, %struct.anon.5 { [2 x i64] [i64 8123974462495078145, i64 -4065197533553640913], [2 x i32] [i32 -1952383906, i32 1130551009], [2 x i64] [i64 8123974464837661535, i64 -4065197532423089904] }, %struct.anon.5 { [2 x i64] [i64 -6569842960559289120, i64 -8674632892497448591], [2 x i32] [i32 -1640605123, i32 1030081503], [2 x i64] [i64 -6569842957904926947, i64 -8674632891467367088] }, %struct.anon.5 { [2 x i64] [i64 -4833721548327549497, i64 6538762566695759479], [2 x i32] [i32 -494435446, i32 1130964230], [2 x i64] [i64 -4833721544527017647, i64 6538762567826723709] }, %struct.anon.5 { [2 x i64] [i64 3646867225230548863, i64 640855369439733067], [2 x i32] [i32 1579313525, i32 1287184578], [2 x i64] [i64 3646867226809862388, i64 640855370726917645] }], align 16
@.str.19 = private unnamed_addr constant [31 x i8] c"simde_vld1q_u64(test_vec[i].r)\00", align 1
@.str.20 = private unnamed_addr constant [58 x i8] c"%s:%d: assertion failed: %s[%zu] == %s[%zu] (%lu == %lu)\0A\00", align 1

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
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str, i64 noundef 6)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %1, 6
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11
  br label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #11
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [6 x %struct.anon], ptr @test_suite_tests, i64 0, i64 %2
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
  %arrayidx4 = getelementptr inbounds [6 x %struct.anon], ptr @test_suite_tests, i64 0, i64 %7
  %name = getelementptr inbounds %struct.anon, ptr %arrayidx4, i32 0, i32 1
  %8 = load ptr, ptr %name, align 8, !tbaa !15
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.1, i64 noundef %add, ptr noundef %8)
  br label %if.end

if.else:                                          ; preds = %for.body
  %9 = load ptr, ptr @stdout, align 8, !tbaa !9
  %10 = load i64, ptr %i, align 8, !tbaa !11
  %add6 = add i64 %10, 1
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds [6 x %struct.anon], ptr @test_suite_tests, i64 0, i64 %11
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
define internal i32 @test_simde_vaddw_s8() #3 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.0], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <8 x i16>, align 16
  %b = alloca <8 x i8>, align 8
  %coerce = alloca <8 x i8>, align 8
  %r = alloca <8 x i16>, align 16
  %coerce6 = alloca <8 x i8>, align 8
  call void @llvm.lifetime.start.p0(i64 320, ptr %test_vec) #11
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const.test_simde_vaddw_s8.test_vec, i64 320, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup15

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #11
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.0], ptr %test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.0, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x i16], ptr %a1, i64 0, i64 0
  %call = call <8 x i16> @simde_vld1q_s16(ptr noundef %arraydecay)
  store <8 x i16> %call, ptr %a, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #11
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.0], ptr %test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.0, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [8 x i8], ptr %b3, i64 0, i64 0
  %call5 = call double @simde_vld1_s8(ptr noundef %arraydecay4)
  store double %call5, ptr %coerce, align 8
  %3 = load <8 x i8>, ptr %coerce, align 8, !tbaa !16
  store <8 x i8> %3, ptr %b, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #11
  %4 = load <8 x i16>, ptr %a, align 16, !tbaa !16
  %5 = load <8 x i8>, ptr %b, align 8, !tbaa !16
  store <8 x i8> %5, ptr %coerce6, align 8, !tbaa !16
  %6 = load double, ptr %coerce6, align 8
  %call7 = call <8 x i16> @simde_vaddw_s8(<8 x i16> noundef %4, double noundef %6)
  store <8 x i16> %call7, ptr %r, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %7 = load <8 x i16>, ptr %r, align 16, !tbaa !16
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx8 = getelementptr inbounds [8 x %struct.anon.0], ptr %test_vec, i64 0, i64 %8
  %r9 = getelementptr inbounds %struct.anon.0, ptr %arrayidx8, i32 0, i32 2
  %arraydecay10 = getelementptr inbounds [8 x i16], ptr %r9, i64 0, i64 0
  %call11 = call <8 x i16> @simde_vld1q_s16(ptr noundef %arraydecay10)
  %call12 = call i32 @simde_test_arm_neon_assert_equal_i16x8_(<8 x i16> noundef %7, <8 x i16> noundef %call11, ptr noundef @.str.9, i32 noundef 44, ptr noundef @.str.10, ptr noundef @.str.11)
  %tobool = icmp ne i32 %call12, 0
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #11
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup15 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %9 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %9, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup15:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11
  %cleanup.dest16 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest16, label %cleanup17 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup15
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup17

cleanup17:                                        ; preds = %for.end, %cleanup15
  call void @llvm.lifetime.end.p0(i64 320, ptr %test_vec) #11
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vaddw_s16() #3 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.1], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <4 x i32>, align 16
  %b = alloca <4 x i16>, align 8
  %coerce = alloca <4 x i16>, align 8
  %r = alloca <4 x i32>, align 16
  %coerce6 = alloca <4 x i16>, align 8
  call void @llvm.lifetime.start.p0(i64 320, ptr %test_vec) #11
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const.test_simde_vaddw_s16.test_vec, i64 320, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup15

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #11
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.1], ptr %test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.1, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i32], ptr %a1, i64 0, i64 0
  %call = call <4 x i32> @simde_vld1q_s32(ptr noundef %arraydecay)
  store <4 x i32> %call, ptr %a, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #11
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.1], ptr %test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.1, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [4 x i16], ptr %b3, i64 0, i64 0
  %call5 = call double @simde_vld1_s16(ptr noundef %arraydecay4)
  store double %call5, ptr %coerce, align 8
  %3 = load <4 x i16>, ptr %coerce, align 8, !tbaa !16
  store <4 x i16> %3, ptr %b, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #11
  %4 = load <4 x i32>, ptr %a, align 16, !tbaa !16
  %5 = load <4 x i16>, ptr %b, align 8, !tbaa !16
  store <4 x i16> %5, ptr %coerce6, align 8, !tbaa !16
  %6 = load double, ptr %coerce6, align 8
  %call7 = call <4 x i32> @simde_vaddw_s16(<4 x i32> noundef %4, double noundef %6)
  store <4 x i32> %call7, ptr %r, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %7 = load <4 x i32>, ptr %r, align 16, !tbaa !16
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx8 = getelementptr inbounds [8 x %struct.anon.1], ptr %test_vec, i64 0, i64 %8
  %r9 = getelementptr inbounds %struct.anon.1, ptr %arrayidx8, i32 0, i32 2
  %arraydecay10 = getelementptr inbounds [4 x i32], ptr %r9, i64 0, i64 0
  %call11 = call <4 x i32> @simde_vld1q_s32(ptr noundef %arraydecay10)
  %call12 = call i32 @simde_test_arm_neon_assert_equal_i32x4_(<4 x i32> noundef %7, <4 x i32> noundef %call11, ptr noundef @.str.9, i32 noundef 88, ptr noundef @.str.10, ptr noundef @.str.13)
  %tobool = icmp ne i32 %call12, 0
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #11
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup15 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %9 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %9, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup15:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11
  %cleanup.dest16 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest16, label %cleanup17 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup15
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup17

cleanup17:                                        ; preds = %for.end, %cleanup15
  call void @llvm.lifetime.end.p0(i64 320, ptr %test_vec) #11
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vaddw_s32() #3 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.2], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <2 x i64>, align 16
  %b = alloca <2 x i32>, align 8
  %coerce = alloca <2 x i32>, align 8
  %r = alloca <2 x i64>, align 16
  %coerce6 = alloca <2 x i32>, align 8
  call void @llvm.lifetime.start.p0(i64 320, ptr %test_vec) #11
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const.test_simde_vaddw_s32.test_vec, i64 320, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup15

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #11
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.2], ptr %test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.2, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [2 x i64], ptr %a1, i64 0, i64 0
  %call = call <2 x i64> @simde_vld1q_s64(ptr noundef %arraydecay)
  store <2 x i64> %call, ptr %a, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #11
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.2], ptr %test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.2, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [2 x i32], ptr %b3, i64 0, i64 0
  %call5 = call double @simde_vld1_s32(ptr noundef %arraydecay4)
  store double %call5, ptr %coerce, align 8
  %3 = load <2 x i32>, ptr %coerce, align 8, !tbaa !16
  store <2 x i32> %3, ptr %b, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #11
  %4 = load <2 x i64>, ptr %a, align 16, !tbaa !16
  %5 = load <2 x i32>, ptr %b, align 8, !tbaa !16
  store <2 x i32> %5, ptr %coerce6, align 8, !tbaa !16
  %6 = load double, ptr %coerce6, align 8
  %call7 = call <2 x i64> @simde_vaddw_s32(<2 x i64> noundef %4, double noundef %6)
  store <2 x i64> %call7, ptr %r, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %7 = load <2 x i64>, ptr %r, align 16, !tbaa !16
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx8 = getelementptr inbounds [8 x %struct.anon.2], ptr %test_vec, i64 0, i64 %8
  %r9 = getelementptr inbounds %struct.anon.2, ptr %arrayidx8, i32 0, i32 2
  %arraydecay10 = getelementptr inbounds [2 x i64], ptr %r9, i64 0, i64 0
  %call11 = call <2 x i64> @simde_vld1q_s64(ptr noundef %arraydecay10)
  %call12 = call i32 @simde_test_arm_neon_assert_equal_i64x2_(<2 x i64> noundef %7, <2 x i64> noundef %call11, ptr noundef @.str.9, i32 noundef 132, ptr noundef @.str.10, ptr noundef @.str.14)
  %tobool = icmp ne i32 %call12, 0
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #11
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup15 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %9 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %9, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup15:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11
  %cleanup.dest16 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest16, label %cleanup17 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup15
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup17

cleanup17:                                        ; preds = %for.end, %cleanup15
  call void @llvm.lifetime.end.p0(i64 320, ptr %test_vec) #11
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vaddw_u8() #3 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.3], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <8 x i16>, align 16
  %b = alloca <8 x i8>, align 8
  %coerce = alloca <8 x i8>, align 8
  %r = alloca <8 x i16>, align 16
  %coerce6 = alloca <8 x i8>, align 8
  call void @llvm.lifetime.start.p0(i64 320, ptr %test_vec) #11
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const.test_simde_vaddw_u8.test_vec, i64 320, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup15

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #11
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.3], ptr %test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.3, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x i16], ptr %a1, i64 0, i64 0
  %call = call <8 x i16> @simde_vld1q_u16(ptr noundef %arraydecay)
  store <8 x i16> %call, ptr %a, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #11
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.3], ptr %test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.3, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [8 x i8], ptr %b3, i64 0, i64 0
  %call5 = call double @simde_vld1_u8(ptr noundef %arraydecay4)
  store double %call5, ptr %coerce, align 8
  %3 = load <8 x i8>, ptr %coerce, align 8, !tbaa !16
  store <8 x i8> %3, ptr %b, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #11
  %4 = load <8 x i16>, ptr %a, align 16, !tbaa !16
  %5 = load <8 x i8>, ptr %b, align 8, !tbaa !16
  store <8 x i8> %5, ptr %coerce6, align 8, !tbaa !16
  %6 = load double, ptr %coerce6, align 8
  %call7 = call <8 x i16> @simde_vaddw_u8(<8 x i16> noundef %4, double noundef %6)
  store <8 x i16> %call7, ptr %r, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %7 = load <8 x i16>, ptr %r, align 16, !tbaa !16
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx8 = getelementptr inbounds [8 x %struct.anon.3], ptr %test_vec, i64 0, i64 %8
  %r9 = getelementptr inbounds %struct.anon.3, ptr %arrayidx8, i32 0, i32 2
  %arraydecay10 = getelementptr inbounds [8 x i16], ptr %r9, i64 0, i64 0
  %call11 = call <8 x i16> @simde_vld1q_u16(ptr noundef %arraydecay10)
  %call12 = call i32 @simde_test_arm_neon_assert_equal_u16x8_(<8 x i16> noundef %7, <8 x i16> noundef %call11, ptr noundef @.str.9, i32 noundef 176, ptr noundef @.str.10, ptr noundef @.str.16)
  %tobool = icmp ne i32 %call12, 0
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #11
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup15 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %9 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %9, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup15:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11
  %cleanup.dest16 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest16, label %cleanup17 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup15
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup17

cleanup17:                                        ; preds = %for.end, %cleanup15
  call void @llvm.lifetime.end.p0(i64 320, ptr %test_vec) #11
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vaddw_u16() #3 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.4], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <4 x i32>, align 16
  %b = alloca <4 x i16>, align 8
  %coerce = alloca <4 x i16>, align 8
  %r = alloca <4 x i32>, align 16
  %coerce6 = alloca <4 x i16>, align 8
  call void @llvm.lifetime.start.p0(i64 320, ptr %test_vec) #11
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const.test_simde_vaddw_u16.test_vec, i64 320, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup15

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #11
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.4], ptr %test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.4, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i32], ptr %a1, i64 0, i64 0
  %call = call <4 x i32> @simde_vld1q_u32(ptr noundef %arraydecay)
  store <4 x i32> %call, ptr %a, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #11
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.4], ptr %test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.4, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [4 x i16], ptr %b3, i64 0, i64 0
  %call5 = call double @simde_vld1_u16(ptr noundef %arraydecay4)
  store double %call5, ptr %coerce, align 8
  %3 = load <4 x i16>, ptr %coerce, align 8, !tbaa !16
  store <4 x i16> %3, ptr %b, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #11
  %4 = load <4 x i32>, ptr %a, align 16, !tbaa !16
  %5 = load <4 x i16>, ptr %b, align 8, !tbaa !16
  store <4 x i16> %5, ptr %coerce6, align 8, !tbaa !16
  %6 = load double, ptr %coerce6, align 8
  %call7 = call <4 x i32> @simde_vaddw_u16(<4 x i32> noundef %4, double noundef %6)
  store <4 x i32> %call7, ptr %r, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %7 = load <4 x i32>, ptr %r, align 16, !tbaa !16
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx8 = getelementptr inbounds [8 x %struct.anon.4], ptr %test_vec, i64 0, i64 %8
  %r9 = getelementptr inbounds %struct.anon.4, ptr %arrayidx8, i32 0, i32 2
  %arraydecay10 = getelementptr inbounds [4 x i32], ptr %r9, i64 0, i64 0
  %call11 = call <4 x i32> @simde_vld1q_u32(ptr noundef %arraydecay10)
  %call12 = call i32 @simde_test_arm_neon_assert_equal_u32x4_(<4 x i32> noundef %7, <4 x i32> noundef %call11, ptr noundef @.str.9, i32 noundef 219, ptr noundef @.str.10, ptr noundef @.str.18)
  %tobool = icmp ne i32 %call12, 0
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #11
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup15 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %9 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %9, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup15:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11
  %cleanup.dest16 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest16, label %cleanup17 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup15
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup17

cleanup17:                                        ; preds = %for.end, %cleanup15
  call void @llvm.lifetime.end.p0(i64 320, ptr %test_vec) #11
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vaddw_u32() #3 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.5], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <2 x i64>, align 16
  %b = alloca <2 x i32>, align 8
  %coerce = alloca <2 x i32>, align 8
  %r = alloca <2 x i64>, align 16
  %coerce6 = alloca <2 x i32>, align 8
  call void @llvm.lifetime.start.p0(i64 320, ptr %test_vec) #11
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const.test_simde_vaddw_u32.test_vec, i64 320, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup15

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #11
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.5], ptr %test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.5, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [2 x i64], ptr %a1, i64 0, i64 0
  %call = call <2 x i64> @simde_vld1q_u64(ptr noundef %arraydecay)
  store <2 x i64> %call, ptr %a, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #11
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.5], ptr %test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.5, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [2 x i32], ptr %b3, i64 0, i64 0
  %call5 = call double @simde_vld1_u32(ptr noundef %arraydecay4)
  store double %call5, ptr %coerce, align 8
  %3 = load <2 x i32>, ptr %coerce, align 8, !tbaa !16
  store <2 x i32> %3, ptr %b, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #11
  %4 = load <2 x i64>, ptr %a, align 16, !tbaa !16
  %5 = load <2 x i32>, ptr %b, align 8, !tbaa !16
  store <2 x i32> %5, ptr %coerce6, align 8, !tbaa !16
  %6 = load double, ptr %coerce6, align 8
  %call7 = call <2 x i64> @simde_vaddw_u32(<2 x i64> noundef %4, double noundef %6)
  store <2 x i64> %call7, ptr %r, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %7 = load <2 x i64>, ptr %r, align 16, !tbaa !16
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx8 = getelementptr inbounds [8 x %struct.anon.5], ptr %test_vec, i64 0, i64 %8
  %r9 = getelementptr inbounds %struct.anon.5, ptr %arrayidx8, i32 0, i32 2
  %arraydecay10 = getelementptr inbounds [2 x i64], ptr %r9, i64 0, i64 0
  %call11 = call <2 x i64> @simde_vld1q_u64(ptr noundef %arraydecay10)
  %call12 = call i32 @simde_test_arm_neon_assert_equal_u64x2_(<2 x i64> noundef %7, <2 x i64> noundef %call11, ptr noundef @.str.9, i32 noundef 262, ptr noundef @.str.10, ptr noundef @.str.19)
  %tobool = icmp ne i32 %call12, 0
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #11
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup15 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %9 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %9, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup15:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11
  %cleanup.dest16 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest16, label %cleanup17 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup15
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup17

cleanup17:                                        ; preds = %for.end, %cleanup15
  call void @llvm.lifetime.end.p0(i64 320, ptr %test_vec) #11
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

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
  %1 = load <8 x i16>, ptr %coerce.dive, align 16
  %call = call <8 x i16> @simde_int16x8_from_private(<8 x i16> %1) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #11
  ret <8 x i16> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vld1_s8(ptr noundef %ptr) #6 {
entry:
  %retval = alloca <8 x i8>, align 8
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_int8x8_private, align 8
  %coerce = alloca <8 x i8>, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #11
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r_, ptr align 1 %0, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int8x8_private, ptr %r_, i32 0, i32 0
  %1 = load double, ptr %coerce.dive, align 8
  %call = call double @simde_int8x8_from_private(double %1) #12
  store double %call, ptr %coerce, align 8
  %2 = load <8 x i8>, ptr %coerce, align 8, !tbaa !16
  store <8 x i8> %2, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #11
  %3 = load double, ptr %retval, align 8
  ret double %3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i16> @simde_vaddw_s8(<8 x i16> noundef %a, double noundef %b.coerce) #5 {
entry:
  %b = alloca <8 x i8>, align 8
  %a.addr = alloca <8 x i16>, align 16
  %b.addr = alloca <8 x i8>, align 8
  %r_ = alloca %union.simde_int16x8_private, align 16
  %a_ = alloca %union.simde_int16x8_private, align 16
  %b_ = alloca %union.simde_int8x8_private, align 8
  %coerce = alloca <8 x i8>, align 8
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  store double %b.coerce, ptr %b, align 8
  %b1 = load <8 x i8>, ptr %b, align 8, !tbaa !16
  store <8 x i16> %a, ptr %a.addr, align 16, !tbaa !16
  store <8 x i8> %b1, ptr %b.addr, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #11
  %0 = load <8 x i16>, ptr %a.addr, align 16, !tbaa !16
  %call = call <8 x i16> @simde_int16x8_to_private(<8 x i16> noundef %0) #12
  %coerce.dive = getelementptr inbounds %union.simde_int16x8_private, ptr %a_, i32 0, i32 0
  store <8 x i16> %call, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_) #11
  %1 = load <8 x i8>, ptr %b.addr, align 8, !tbaa !16
  store <8 x i8> %1, ptr %coerce, align 8, !tbaa !16
  %2 = load double, ptr %coerce, align 8
  %call2 = call double @simde_int8x8_to_private(double noundef %2) #12
  %coerce.dive3 = getelementptr inbounds %union.simde_int8x8_private, ptr %b_, i32 0, i32 0
  store double %call2, ptr %coerce.dive3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #11
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %3 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !17
  %cmp = icmp ult i64 %3, 8
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %4 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !17
  %mul = mul i64 %4, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %5 = load <8 x i16>, ptr %a_, align 16, !tbaa !16, !llvm.access.group !17
  %6 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %vecext = extractelement <8 x i16> %5, i64 %6
  %conv = sext i16 %vecext to i32
  %7 = load <8 x i8>, ptr %b_, align 8, !tbaa !16, !llvm.access.group !17
  %8 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %vecext4 = extractelement <8 x i8> %7, i64 %8
  %conv5 = sext i8 %vecext4 to i32
  %add6 = add nsw i32 %conv, %conv5
  %conv7 = trunc i32 %add6 to i16
  %9 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %10 = load <8 x i16>, ptr %r_, align 16, !llvm.access.group !17
  %vecins = insertelement <8 x i16> %10, i16 %conv7, i64 %9
  store <8 x i16> %vecins, ptr %r_, align 16, !llvm.access.group !17
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %11 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !17
  %add8 = add i64 %11, 1
  store i64 %add8, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !17
  br label %omp.inner.for.cond, !llvm.loop !18

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 8, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #11
  %coerce.dive9 = getelementptr inbounds %union.simde_int16x8_private, ptr %r_, i32 0, i32 0
  %12 = load <8 x i16>, ptr %coerce.dive9, align 16
  %call10 = call <8 x i16> @simde_int16x8_from_private(<8 x i16> %12) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #11
  ret <8 x i16> %call10
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

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <8 x i16> @simde_int16x8_from_private(<8 x i16> %value.coerce) #7 {
entry:
  %value = alloca %union.simde_int16x8_private, align 16
  %r = alloca <8 x i16>, align 16
  %coerce.dive = getelementptr inbounds %union.simde_int16x8_private, ptr %value, i32 0, i32 0
  store <8 x i16> %value.coerce, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #11
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 16 %value, i64 16, i1 false)
  %0 = load <8 x i16>, ptr %r, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #11
  ret <8 x i16> %0
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal double @simde_int8x8_from_private(double %value.coerce) #8 {
entry:
  %retval = alloca <8 x i8>, align 8
  %value = alloca %union.simde_int8x8_private, align 8
  %r = alloca <8 x i8>, align 8
  %coerce.dive = getelementptr inbounds %union.simde_int8x8_private, ptr %value, i32 0, i32 0
  store double %value.coerce, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #11
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r, ptr align 8 %value, i64 8, i1 false)
  %0 = load <8 x i8>, ptr %r, align 8, !tbaa !16
  store <8 x i8> %0, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #11
  %1 = load double, ptr %retval, align 8
  ret double %1
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <8 x i16> @simde_int16x8_to_private(<8 x i16> noundef %value) #7 {
entry:
  %retval = alloca %union.simde_int16x8_private, align 16
  %value.addr = alloca <8 x i16>, align 16
  store <8 x i16> %value, ptr %value.addr, align 16, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %retval, ptr align 16 %value.addr, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int16x8_private, ptr %retval, i32 0, i32 0
  %0 = load <8 x i16>, ptr %coerce.dive, align 16
  ret <8 x i16> %0
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal double @simde_int8x8_to_private(double noundef %value.coerce) #8 {
entry:
  %retval = alloca %union.simde_int8x8_private, align 8
  %value = alloca <8 x i8>, align 8
  %value.addr = alloca <8 x i8>, align 8
  store double %value.coerce, ptr %value, align 8
  %value1 = load <8 x i8>, ptr %value, align 8, !tbaa !16
  store <8 x i8> %value1, ptr %value.addr, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %value.addr, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int8x8_private, ptr %retval, i32 0, i32 0
  %0 = load double, ptr %coerce.dive, align 8
  ret double %0
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
  %call = call <8 x i16> @simde_int16x8_to_private(<8 x i16> noundef %0) #12
  %coerce.dive = getelementptr inbounds %union.simde_int16x8_private, ptr %val_, i32 0, i32 0
  store <8 x i16> %call, ptr %coerce.dive, align 16
  %1 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %1, ptr align 16 %val_, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr %val_) #11
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
  call void (ptr, ...) @simde_test_debug_printf_(ptr noundef @.str.12, ptr noundef %10, i32 noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14, i64 noundef %15, i32 noundef %conv8, i32 noundef %conv10)
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
define internal <4 x i32> @simde_vld1q_s32(ptr noundef %ptr) #5 {
entry:
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_int32x4_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #11
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 4 %0, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int32x4_private, ptr %r_, i32 0, i32 0
  %1 = load <4 x i32>, ptr %coerce.dive, align 16
  %call = call <4 x i32> @simde_int32x4_from_private(<4 x i32> %1) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #11
  ret <4 x i32> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vld1_s16(ptr noundef %ptr) #6 {
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
define internal <4 x i32> @simde_vaddw_s16(<4 x i32> noundef %a, double noundef %b.coerce) #5 {
entry:
  %b = alloca <4 x i16>, align 8
  %a.addr = alloca <4 x i32>, align 16
  %b.addr = alloca <4 x i16>, align 8
  %r_ = alloca %union.simde_int32x4_private, align 16
  %a_ = alloca %union.simde_int32x4_private, align 16
  %b_ = alloca %union.simde_int16x4_private, align 8
  %coerce = alloca <4 x i16>, align 8
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  store double %b.coerce, ptr %b, align 8
  %b1 = load <4 x i16>, ptr %b, align 8, !tbaa !16
  store <4 x i32> %a, ptr %a.addr, align 16, !tbaa !16
  store <4 x i16> %b1, ptr %b.addr, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #11
  %0 = load <4 x i32>, ptr %a.addr, align 16, !tbaa !16
  %call = call <4 x i32> @simde_int32x4_to_private(<4 x i32> noundef %0) #12
  %coerce.dive = getelementptr inbounds %union.simde_int32x4_private, ptr %a_, i32 0, i32 0
  store <4 x i32> %call, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_) #11
  %1 = load <4 x i16>, ptr %b.addr, align 8, !tbaa !16
  store <4 x i16> %1, ptr %coerce, align 8, !tbaa !16
  %2 = load double, ptr %coerce, align 8
  %call2 = call double @simde_int16x4_to_private(double noundef %2) #12
  %coerce.dive3 = getelementptr inbounds %union.simde_int16x4_private, ptr %b_, i32 0, i32 0
  store double %call2, ptr %coerce.dive3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #11
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %3 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !23
  %cmp = icmp ult i64 %3, 4
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %4 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !23
  %mul = mul i64 %4, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !23
  %5 = load <4 x i32>, ptr %a_, align 16, !tbaa !16, !llvm.access.group !23
  %6 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !23
  %vecext = extractelement <4 x i32> %5, i64 %6
  %7 = load <4 x i16>, ptr %b_, align 8, !tbaa !16, !llvm.access.group !23
  %8 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !23
  %vecext4 = extractelement <4 x i16> %7, i64 %8
  %conv = sext i16 %vecext4 to i32
  %add5 = add nsw i32 %vecext, %conv
  %9 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !23
  %10 = load <4 x i32>, ptr %r_, align 16, !llvm.access.group !23
  %vecins = insertelement <4 x i32> %10, i32 %add5, i64 %9
  store <4 x i32> %vecins, ptr %r_, align 16, !llvm.access.group !23
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %11 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !23
  %add6 = add i64 %11, 1
  store i64 %add6, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !23
  br label %omp.inner.for.cond, !llvm.loop !24

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 4, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #11
  %coerce.dive7 = getelementptr inbounds %union.simde_int32x4_private, ptr %r_, i32 0, i32 0
  %12 = load <4 x i32>, ptr %coerce.dive7, align 16
  %call8 = call <4 x i32> @simde_int32x4_from_private(<4 x i32> %12) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #11
  ret <4 x i32> %call8
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

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <4 x i32> @simde_int32x4_from_private(<4 x i32> %value.coerce) #7 {
entry:
  %value = alloca %union.simde_int32x4_private, align 16
  %r = alloca <4 x i32>, align 16
  %coerce.dive = getelementptr inbounds %union.simde_int32x4_private, ptr %value, i32 0, i32 0
  store <4 x i32> %value.coerce, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #11
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 16 %value, i64 16, i1 false)
  %0 = load <4 x i32>, ptr %r, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #11
  ret <4 x i32> %0
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal double @simde_int16x4_from_private(double %value.coerce) #8 {
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
define internal <4 x i32> @simde_int32x4_to_private(<4 x i32> noundef %value) #7 {
entry:
  %retval = alloca %union.simde_int32x4_private, align 16
  %value.addr = alloca <4 x i32>, align 16
  store <4 x i32> %value, ptr %value.addr, align 16, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %retval, ptr align 16 %value.addr, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int32x4_private, ptr %retval, i32 0, i32 0
  %0 = load <4 x i32>, ptr %coerce.dive, align 16
  ret <4 x i32> %0
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal double @simde_int16x4_to_private(double noundef %value.coerce) #8 {
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
define internal void @simde_vst1q_s32(ptr noundef %ptr, <4 x i32> noundef %val) #5 {
entry:
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <4 x i32>, align 16
  %val_ = alloca %union.simde_int32x4_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <4 x i32> %val, ptr %val.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %val_) #11
  %0 = load <4 x i32>, ptr %val.addr, align 16, !tbaa !16
  %call = call <4 x i32> @simde_int32x4_to_private(<4 x i32> noundef %0) #12
  %coerce.dive = getelementptr inbounds %union.simde_int32x4_private, ptr %val_, i32 0, i32 0
  store <4 x i32> %call, ptr %coerce.dive, align 16
  %1 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 16 %val_, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr %val_) #11
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
  call void (ptr, ...) @simde_test_debug_printf_(ptr noundef @.str.12, ptr noundef %10, i32 noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14, i64 noundef %15, i32 noundef %18, i32 noundef %21)
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
define internal <2 x i64> @simde_vld1q_s64(ptr noundef %ptr) #5 {
entry:
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_int64x2_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #11
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 8 %0, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int64x2_private, ptr %r_, i32 0, i32 0
  %1 = load <2 x i64>, ptr %coerce.dive, align 16
  %call = call <2 x i64> @simde_int64x2_from_private(<2 x i64> %1) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #11
  ret <2 x i64> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vld1_s32(ptr noundef %ptr) #6 {
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
define internal <2 x i64> @simde_vaddw_s32(<2 x i64> noundef %a, double noundef %b.coerce) #5 {
entry:
  %b = alloca <2 x i32>, align 8
  %a.addr = alloca <2 x i64>, align 16
  %b.addr = alloca <2 x i32>, align 8
  %r_ = alloca %union.simde_int64x2_private, align 16
  %a_ = alloca %union.simde_int64x2_private, align 16
  %b_ = alloca %union.simde_int32x2_private, align 8
  %coerce = alloca <2 x i32>, align 8
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  store double %b.coerce, ptr %b, align 8
  %b1 = load <2 x i32>, ptr %b, align 8, !tbaa !16
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  store <2 x i32> %b1, ptr %b.addr, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #11
  %0 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  %call = call <2 x i64> @simde_int64x2_to_private(<2 x i64> noundef %0) #12
  %coerce.dive = getelementptr inbounds %union.simde_int64x2_private, ptr %a_, i32 0, i32 0
  store <2 x i64> %call, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_) #11
  %1 = load <2 x i32>, ptr %b.addr, align 8, !tbaa !16
  store <2 x i32> %1, ptr %coerce, align 8, !tbaa !16
  %2 = load double, ptr %coerce, align 8
  %call2 = call double @simde_int32x2_to_private(double noundef %2) #12
  %coerce.dive3 = getelementptr inbounds %union.simde_int32x2_private, ptr %b_, i32 0, i32 0
  store double %call2, ptr %coerce.dive3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #11
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %3 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !26
  %cmp = icmp ult i64 %3, 2
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %4 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !26
  %mul = mul i64 %4, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !26
  %5 = load <2 x i64>, ptr %a_, align 16, !tbaa !16, !llvm.access.group !26
  %6 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !26
  %vecext = extractelement <2 x i64> %5, i64 %6
  %7 = load <2 x i32>, ptr %b_, align 8, !tbaa !16, !llvm.access.group !26
  %8 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !26
  %vecext4 = extractelement <2 x i32> %7, i64 %8
  %conv = sext i32 %vecext4 to i64
  %add5 = add nsw i64 %vecext, %conv
  %9 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !26
  %10 = load <2 x i64>, ptr %r_, align 16, !llvm.access.group !26
  %vecins = insertelement <2 x i64> %10, i64 %add5, i64 %9
  store <2 x i64> %vecins, ptr %r_, align 16, !llvm.access.group !26
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %11 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !26
  %add6 = add i64 %11, 1
  store i64 %add6, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !26
  br label %omp.inner.for.cond, !llvm.loop !27

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 2, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #11
  %coerce.dive7 = getelementptr inbounds %union.simde_int64x2_private, ptr %r_, i32 0, i32 0
  %12 = load <2 x i64>, ptr %coerce.dive7, align 16
  %call8 = call <2 x i64> @simde_int64x2_from_private(<2 x i64> %12) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #11
  ret <2 x i64> %call8
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_arm_neon_assert_equal_i64x2_(<2 x i64> noundef %a, <2 x i64> noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #3 {
entry:
  %a.addr = alloca <2 x i64>, align 16
  %b.addr = alloca <2 x i64>, align 16
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [2 x i64], align 16
  %b_ = alloca [2 x i64], align 16
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  store <2 x i64> %b, ptr %b.addr, align 16, !tbaa !16
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #11
  %arraydecay = getelementptr inbounds [2 x i64], ptr %a_, i64 0, i64 0
  %0 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  call void @simde_vst1q_s64(ptr noundef %arraydecay, <2 x i64> noundef %0)
  %arraydecay1 = getelementptr inbounds [2 x i64], ptr %b_, i64 0, i64 0
  %1 = load <2 x i64>, ptr %b.addr, align 16, !tbaa !16
  call void @simde_vst1q_s64(ptr noundef %arraydecay1, <2 x i64> noundef %1)
  %arraydecay2 = getelementptr inbounds [2 x i64], ptr %a_, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [2 x i64], ptr %b_, i64 0, i64 0
  %2 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %3 = load i32, ptr %line.addr, align 4, !tbaa !5
  %4 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %5 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vi64_(i64 noundef 2, ptr noundef %arraydecay2, ptr noundef %arraydecay3, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #11
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <2 x i64> @simde_int64x2_from_private(<2 x i64> %value.coerce) #7 {
entry:
  %value = alloca %union.simde_int64x2_private, align 16
  %r = alloca <2 x i64>, align 16
  %coerce.dive = getelementptr inbounds %union.simde_int64x2_private, ptr %value, i32 0, i32 0
  store <2 x i64> %value.coerce, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #11
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 16 %value, i64 16, i1 false)
  %0 = load <2 x i64>, ptr %r, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #11
  ret <2 x i64> %0
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal double @simde_int32x2_from_private(double %value.coerce) #8 {
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

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <2 x i64> @simde_int64x2_to_private(<2 x i64> noundef %value) #7 {
entry:
  %retval = alloca %union.simde_int64x2_private, align 16
  %value.addr = alloca <2 x i64>, align 16
  store <2 x i64> %value, ptr %value.addr, align 16, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %retval, ptr align 16 %value.addr, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int64x2_private, ptr %retval, i32 0, i32 0
  %0 = load <2 x i64>, ptr %coerce.dive, align 16
  ret <2 x i64> %0
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal double @simde_int32x2_to_private(double noundef %value.coerce) #8 {
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
define internal void @simde_vst1q_s64(ptr noundef %ptr, <2 x i64> noundef %val) #5 {
entry:
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <2 x i64>, align 16
  %val_ = alloca %union.simde_int64x2_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <2 x i64> %val, ptr %val.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %val_) #11
  %0 = load <2 x i64>, ptr %val.addr, align 16, !tbaa !16
  %call = call <2 x i64> @simde_int64x2_to_private(<2 x i64> noundef %0) #12
  %coerce.dive = getelementptr inbounds %union.simde_int64x2_private, ptr %val_, i32 0, i32 0
  store <2 x i64> %call, ptr %coerce.dive, align 16
  %1 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 16 %val_, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr %val_) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_assert_equal_vi64_(i64 noundef %vec_len, ptr noundef %a, ptr noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
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
  %arrayidx = getelementptr inbounds i64, ptr %4, i64 %5
  %6 = load i64, ptr %arrayidx, align 8, !tbaa !11
  %7 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx1 = getelementptr inbounds i64, ptr %7, i64 %8
  %9 = load i64, ptr %arrayidx1, align 8, !tbaa !11
  %cmp2 = icmp ne i64 %6, %9
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
  %arrayidx4 = getelementptr inbounds i64, ptr %16, i64 %17
  %18 = load i64, ptr %arrayidx4, align 8, !tbaa !11
  %19 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %20 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx5 = getelementptr inbounds i64, ptr %19, i64 %20
  %21 = load i64, ptr %arrayidx5, align 8, !tbaa !11
  call void (ptr, ...) @simde_test_debug_printf_(ptr noundef @.str.15, ptr noundef %10, i32 noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14, i64 noundef %15, i64 noundef %18, i64 noundef %21)
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
define internal <8 x i16> @simde_vld1q_u16(ptr noundef %ptr) #5 {
entry:
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_uint16x8_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #11
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 2 %0, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint16x8_private, ptr %r_, i32 0, i32 0
  %1 = load <8 x i16>, ptr %coerce.dive, align 16
  %call = call <8 x i16> @simde_uint16x8_from_private(<8 x i16> %1) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #11
  ret <8 x i16> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vld1_u8(ptr noundef %ptr) #6 {
entry:
  %retval = alloca <8 x i8>, align 8
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_uint8x8_private, align 8
  %coerce = alloca <8 x i8>, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #11
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r_, ptr align 1 %0, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint8x8_private, ptr %r_, i32 0, i32 0
  %1 = load double, ptr %coerce.dive, align 8
  %call = call double @simde_uint8x8_from_private(double %1) #12
  store double %call, ptr %coerce, align 8
  %2 = load <8 x i8>, ptr %coerce, align 8, !tbaa !16
  store <8 x i8> %2, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #11
  %3 = load double, ptr %retval, align 8
  ret double %3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i16> @simde_vaddw_u8(<8 x i16> noundef %a, double noundef %b.coerce) #5 {
entry:
  %b = alloca <8 x i8>, align 8
  %a.addr = alloca <8 x i16>, align 16
  %b.addr = alloca <8 x i8>, align 8
  %r_ = alloca %union.simde_uint16x8_private, align 16
  %a_ = alloca %union.simde_uint16x8_private, align 16
  %b_ = alloca %union.simde_uint8x8_private, align 8
  %coerce = alloca <8 x i8>, align 8
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  store double %b.coerce, ptr %b, align 8
  %b1 = load <8 x i8>, ptr %b, align 8, !tbaa !16
  store <8 x i16> %a, ptr %a.addr, align 16, !tbaa !16
  store <8 x i8> %b1, ptr %b.addr, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #11
  %0 = load <8 x i16>, ptr %a.addr, align 16, !tbaa !16
  %call = call <8 x i16> @simde_uint16x8_to_private(<8 x i16> noundef %0) #12
  %coerce.dive = getelementptr inbounds %union.simde_uint16x8_private, ptr %a_, i32 0, i32 0
  store <8 x i16> %call, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_) #11
  %1 = load <8 x i8>, ptr %b.addr, align 8, !tbaa !16
  store <8 x i8> %1, ptr %coerce, align 8, !tbaa !16
  %2 = load double, ptr %coerce, align 8
  %call2 = call double @simde_uint8x8_to_private(double noundef %2) #12
  %coerce.dive3 = getelementptr inbounds %union.simde_uint8x8_private, ptr %b_, i32 0, i32 0
  store double %call2, ptr %coerce.dive3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #11
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %3 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !29
  %cmp = icmp ult i64 %3, 8
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %4 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !29
  %mul = mul i64 %4, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !29
  %5 = load <8 x i16>, ptr %a_, align 16, !tbaa !16, !llvm.access.group !29
  %6 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !29
  %vecext = extractelement <8 x i16> %5, i64 %6
  %conv = zext i16 %vecext to i32
  %7 = load <8 x i8>, ptr %b_, align 8, !tbaa !16, !llvm.access.group !29
  %8 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !29
  %vecext4 = extractelement <8 x i8> %7, i64 %8
  %conv5 = zext i8 %vecext4 to i32
  %add6 = add nsw i32 %conv, %conv5
  %conv7 = trunc i32 %add6 to i16
  %9 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !29
  %10 = load <8 x i16>, ptr %r_, align 16, !llvm.access.group !29
  %vecins = insertelement <8 x i16> %10, i16 %conv7, i64 %9
  store <8 x i16> %vecins, ptr %r_, align 16, !llvm.access.group !29
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %11 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !29
  %add8 = add i64 %11, 1
  store i64 %add8, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !29
  br label %omp.inner.for.cond, !llvm.loop !30

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 8, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #11
  %coerce.dive9 = getelementptr inbounds %union.simde_uint16x8_private, ptr %r_, i32 0, i32 0
  %12 = load <8 x i16>, ptr %coerce.dive9, align 16
  %call10 = call <8 x i16> @simde_uint16x8_from_private(<8 x i16> %12) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #11
  ret <8 x i16> %call10
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_arm_neon_assert_equal_u16x8_(<8 x i16> noundef %a, <8 x i16> noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #3 {
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
  call void @simde_vst1q_u16(ptr noundef %arraydecay, <8 x i16> noundef %0)
  %arraydecay1 = getelementptr inbounds [8 x i16], ptr %b_, i64 0, i64 0
  %1 = load <8 x i16>, ptr %b.addr, align 16, !tbaa !16
  call void @simde_vst1q_u16(ptr noundef %arraydecay1, <8 x i16> noundef %1)
  %arraydecay2 = getelementptr inbounds [8 x i16], ptr %a_, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [8 x i16], ptr %b_, i64 0, i64 0
  %2 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %3 = load i32, ptr %line.addr, align 4, !tbaa !5
  %4 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %5 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vu16_(i64 noundef 8, ptr noundef %arraydecay2, ptr noundef %arraydecay3, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #11
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <8 x i16> @simde_uint16x8_from_private(<8 x i16> %value.coerce) #7 {
entry:
  %value = alloca %union.simde_uint16x8_private, align 16
  %r = alloca <8 x i16>, align 16
  %coerce.dive = getelementptr inbounds %union.simde_uint16x8_private, ptr %value, i32 0, i32 0
  store <8 x i16> %value.coerce, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #11
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 16 %value, i64 16, i1 false)
  %0 = load <8 x i16>, ptr %r, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #11
  ret <8 x i16> %0
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal double @simde_uint8x8_from_private(double %value.coerce) #8 {
entry:
  %retval = alloca <8 x i8>, align 8
  %value = alloca %union.simde_uint8x8_private, align 8
  %r = alloca <8 x i8>, align 8
  %coerce.dive = getelementptr inbounds %union.simde_uint8x8_private, ptr %value, i32 0, i32 0
  store double %value.coerce, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #11
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r, ptr align 8 %value, i64 8, i1 false)
  %0 = load <8 x i8>, ptr %r, align 8, !tbaa !16
  store <8 x i8> %0, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #11
  %1 = load double, ptr %retval, align 8
  ret double %1
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <8 x i16> @simde_uint16x8_to_private(<8 x i16> noundef %value) #7 {
entry:
  %retval = alloca %union.simde_uint16x8_private, align 16
  %value.addr = alloca <8 x i16>, align 16
  store <8 x i16> %value, ptr %value.addr, align 16, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %retval, ptr align 16 %value.addr, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint16x8_private, ptr %retval, i32 0, i32 0
  %0 = load <8 x i16>, ptr %coerce.dive, align 16
  ret <8 x i16> %0
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal double @simde_uint8x8_to_private(double noundef %value.coerce) #8 {
entry:
  %retval = alloca %union.simde_uint8x8_private, align 8
  %value = alloca <8 x i8>, align 8
  %value.addr = alloca <8 x i8>, align 8
  store double %value.coerce, ptr %value, align 8
  %value1 = load <8 x i8>, ptr %value, align 8, !tbaa !16
  store <8 x i8> %value1, ptr %value.addr, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %value.addr, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint8x8_private, ptr %retval, i32 0, i32 0
  %0 = load double, ptr %coerce.dive, align 8
  ret double %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde_vst1q_u16(ptr noundef %ptr, <8 x i16> noundef %val) #5 {
entry:
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <8 x i16>, align 16
  %val_ = alloca %union.simde_uint16x8_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <8 x i16> %val, ptr %val.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %val_) #11
  %0 = load <8 x i16>, ptr %val.addr, align 16, !tbaa !16
  %call = call <8 x i16> @simde_uint16x8_to_private(<8 x i16> noundef %0) #12
  %coerce.dive = getelementptr inbounds %union.simde_uint16x8_private, ptr %val_, i32 0, i32 0
  store <8 x i16> %call, ptr %coerce.dive, align 16
  %1 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %1, ptr align 16 %val_, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr %val_) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_assert_equal_vu16_(i64 noundef %vec_len, ptr noundef %a, ptr noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
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
  %conv = zext i16 %6 to i32
  %7 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx1 = getelementptr inbounds i16, ptr %7, i64 %8
  %9 = load i16, ptr %arrayidx1, align 2, !tbaa !21
  %conv2 = zext i16 %9 to i32
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
  %conv8 = zext i16 %18 to i32
  %19 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %20 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx9 = getelementptr inbounds i16, ptr %19, i64 %20
  %21 = load i16, ptr %arrayidx9, align 2, !tbaa !21
  %conv10 = zext i16 %21 to i32
  call void (ptr, ...) @simde_test_debug_printf_(ptr noundef @.str.17, ptr noundef %10, i32 noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14, i64 noundef %15, i32 noundef %conv8, i32 noundef %conv10)
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
define internal <4 x i32> @simde_vld1q_u32(ptr noundef %ptr) #5 {
entry:
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_uint32x4_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #11
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 4 %0, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint32x4_private, ptr %r_, i32 0, i32 0
  %1 = load <4 x i32>, ptr %coerce.dive, align 16
  %call = call <4 x i32> @simde_uint32x4_from_private(<4 x i32> %1) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #11
  ret <4 x i32> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vld1_u16(ptr noundef %ptr) #6 {
entry:
  %retval = alloca <4 x i16>, align 8
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_uint16x4_private, align 8
  %coerce = alloca <4 x i16>, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #11
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r_, ptr align 2 %0, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint16x4_private, ptr %r_, i32 0, i32 0
  %1 = load double, ptr %coerce.dive, align 8
  %call = call double @simde_uint16x4_from_private(double %1) #12
  store double %call, ptr %coerce, align 8
  %2 = load <4 x i16>, ptr %coerce, align 8, !tbaa !16
  store <4 x i16> %2, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #11
  %3 = load double, ptr %retval, align 8
  ret double %3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i32> @simde_vaddw_u16(<4 x i32> noundef %a, double noundef %b.coerce) #5 {
entry:
  %b = alloca <4 x i16>, align 8
  %a.addr = alloca <4 x i32>, align 16
  %b.addr = alloca <4 x i16>, align 8
  %r_ = alloca %union.simde_uint32x4_private, align 16
  %a_ = alloca %union.simde_uint32x4_private, align 16
  %b_ = alloca %union.simde_uint16x4_private, align 8
  %coerce = alloca <4 x i16>, align 8
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  store double %b.coerce, ptr %b, align 8
  %b1 = load <4 x i16>, ptr %b, align 8, !tbaa !16
  store <4 x i32> %a, ptr %a.addr, align 16, !tbaa !16
  store <4 x i16> %b1, ptr %b.addr, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #11
  %0 = load <4 x i32>, ptr %a.addr, align 16, !tbaa !16
  %call = call <4 x i32> @simde_uint32x4_to_private(<4 x i32> noundef %0) #12
  %coerce.dive = getelementptr inbounds %union.simde_uint32x4_private, ptr %a_, i32 0, i32 0
  store <4 x i32> %call, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_) #11
  %1 = load <4 x i16>, ptr %b.addr, align 8, !tbaa !16
  store <4 x i16> %1, ptr %coerce, align 8, !tbaa !16
  %2 = load double, ptr %coerce, align 8
  %call2 = call double @simde_uint16x4_to_private(double noundef %2) #12
  %coerce.dive3 = getelementptr inbounds %union.simde_uint16x4_private, ptr %b_, i32 0, i32 0
  store double %call2, ptr %coerce.dive3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #11
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %3 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !32
  %cmp = icmp ult i64 %3, 4
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %4 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !32
  %mul = mul i64 %4, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !32
  %5 = load <4 x i32>, ptr %a_, align 16, !tbaa !16, !llvm.access.group !32
  %6 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !32
  %vecext = extractelement <4 x i32> %5, i64 %6
  %7 = load <4 x i16>, ptr %b_, align 8, !tbaa !16, !llvm.access.group !32
  %8 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !32
  %vecext4 = extractelement <4 x i16> %7, i64 %8
  %conv = zext i16 %vecext4 to i32
  %add5 = add i32 %vecext, %conv
  %9 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !32
  %10 = load <4 x i32>, ptr %r_, align 16, !llvm.access.group !32
  %vecins = insertelement <4 x i32> %10, i32 %add5, i64 %9
  store <4 x i32> %vecins, ptr %r_, align 16, !llvm.access.group !32
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %11 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !32
  %add6 = add i64 %11, 1
  store i64 %add6, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !32
  br label %omp.inner.for.cond, !llvm.loop !33

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 4, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #11
  %coerce.dive7 = getelementptr inbounds %union.simde_uint32x4_private, ptr %r_, i32 0, i32 0
  %12 = load <4 x i32>, ptr %coerce.dive7, align 16
  %call8 = call <4 x i32> @simde_uint32x4_from_private(<4 x i32> %12) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #11
  ret <4 x i32> %call8
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_arm_neon_assert_equal_u32x4_(<4 x i32> noundef %a, <4 x i32> noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #3 {
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
  call void @simde_vst1q_u32(ptr noundef %arraydecay, <4 x i32> noundef %0)
  %arraydecay1 = getelementptr inbounds [4 x i32], ptr %b_, i64 0, i64 0
  %1 = load <4 x i32>, ptr %b.addr, align 16, !tbaa !16
  call void @simde_vst1q_u32(ptr noundef %arraydecay1, <4 x i32> noundef %1)
  %arraydecay2 = getelementptr inbounds [4 x i32], ptr %a_, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [4 x i32], ptr %b_, i64 0, i64 0
  %2 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %3 = load i32, ptr %line.addr, align 4, !tbaa !5
  %4 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %5 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vu32_(i64 noundef 4, ptr noundef %arraydecay2, ptr noundef %arraydecay3, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #11
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <4 x i32> @simde_uint32x4_from_private(<4 x i32> %value.coerce) #7 {
entry:
  %value = alloca %union.simde_uint32x4_private, align 16
  %r = alloca <4 x i32>, align 16
  %coerce.dive = getelementptr inbounds %union.simde_uint32x4_private, ptr %value, i32 0, i32 0
  store <4 x i32> %value.coerce, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #11
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 16 %value, i64 16, i1 false)
  %0 = load <4 x i32>, ptr %r, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #11
  ret <4 x i32> %0
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal double @simde_uint16x4_from_private(double %value.coerce) #8 {
entry:
  %retval = alloca <4 x i16>, align 8
  %value = alloca %union.simde_uint16x4_private, align 8
  %r = alloca <4 x i16>, align 8
  %coerce.dive = getelementptr inbounds %union.simde_uint16x4_private, ptr %value, i32 0, i32 0
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
define internal <4 x i32> @simde_uint32x4_to_private(<4 x i32> noundef %value) #7 {
entry:
  %retval = alloca %union.simde_uint32x4_private, align 16
  %value.addr = alloca <4 x i32>, align 16
  store <4 x i32> %value, ptr %value.addr, align 16, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %retval, ptr align 16 %value.addr, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint32x4_private, ptr %retval, i32 0, i32 0
  %0 = load <4 x i32>, ptr %coerce.dive, align 16
  ret <4 x i32> %0
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal double @simde_uint16x4_to_private(double noundef %value.coerce) #8 {
entry:
  %retval = alloca %union.simde_uint16x4_private, align 8
  %value = alloca <4 x i16>, align 8
  %value.addr = alloca <4 x i16>, align 8
  store double %value.coerce, ptr %value, align 8
  %value1 = load <4 x i16>, ptr %value, align 8, !tbaa !16
  store <4 x i16> %value1, ptr %value.addr, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %value.addr, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint16x4_private, ptr %retval, i32 0, i32 0
  %0 = load double, ptr %coerce.dive, align 8
  ret double %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde_vst1q_u32(ptr noundef %ptr, <4 x i32> noundef %val) #5 {
entry:
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <4 x i32>, align 16
  %val_ = alloca %union.simde_uint32x4_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <4 x i32> %val, ptr %val.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %val_) #11
  %0 = load <4 x i32>, ptr %val.addr, align 16, !tbaa !16
  %call = call <4 x i32> @simde_uint32x4_to_private(<4 x i32> noundef %0) #12
  %coerce.dive = getelementptr inbounds %union.simde_uint32x4_private, ptr %val_, i32 0, i32 0
  store <4 x i32> %call, ptr %coerce.dive, align 16
  %1 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 16 %val_, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr %val_) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_assert_equal_vu32_(i64 noundef %vec_len, ptr noundef %a, ptr noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
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
  call void (ptr, ...) @simde_test_debug_printf_(ptr noundef @.str.17, ptr noundef %10, i32 noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14, i64 noundef %15, i32 noundef %18, i32 noundef %21)
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
define internal <2 x i64> @simde_vld1q_u64(ptr noundef %ptr) #5 {
entry:
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_uint64x2_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #11
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 8 %0, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint64x2_private, ptr %r_, i32 0, i32 0
  %1 = load <2 x i64>, ptr %coerce.dive, align 16
  %call = call <2 x i64> @simde_uint64x2_from_private(<2 x i64> %1) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #11
  ret <2 x i64> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vld1_u32(ptr noundef %ptr) #6 {
entry:
  %retval = alloca <2 x i32>, align 8
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_uint32x2_private, align 8
  %coerce = alloca <2 x i32>, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #11
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r_, ptr align 4 %0, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint32x2_private, ptr %r_, i32 0, i32 0
  %1 = load double, ptr %coerce.dive, align 8
  %call = call double @simde_uint32x2_from_private(double %1) #12
  store double %call, ptr %coerce, align 8
  %2 = load <2 x i32>, ptr %coerce, align 8, !tbaa !16
  store <2 x i32> %2, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #11
  %3 = load double, ptr %retval, align 8
  ret double %3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @simde_vaddw_u32(<2 x i64> noundef %a, double noundef %b.coerce) #5 {
entry:
  %b = alloca <2 x i32>, align 8
  %a.addr = alloca <2 x i64>, align 16
  %b.addr = alloca <2 x i32>, align 8
  %r_ = alloca %union.simde_uint64x2_private, align 16
  %a_ = alloca %union.simde_uint64x2_private, align 16
  %b_ = alloca %union.simde_uint32x2_private, align 8
  %coerce = alloca <2 x i32>, align 8
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  store double %b.coerce, ptr %b, align 8
  %b1 = load <2 x i32>, ptr %b, align 8, !tbaa !16
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  store <2 x i32> %b1, ptr %b.addr, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #11
  %0 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  %call = call <2 x i64> @simde_uint64x2_to_private(<2 x i64> noundef %0) #12
  %coerce.dive = getelementptr inbounds %union.simde_uint64x2_private, ptr %a_, i32 0, i32 0
  store <2 x i64> %call, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_) #11
  %1 = load <2 x i32>, ptr %b.addr, align 8, !tbaa !16
  store <2 x i32> %1, ptr %coerce, align 8, !tbaa !16
  %2 = load double, ptr %coerce, align 8
  %call2 = call double @simde_uint32x2_to_private(double noundef %2) #12
  %coerce.dive3 = getelementptr inbounds %union.simde_uint32x2_private, ptr %b_, i32 0, i32 0
  store double %call2, ptr %coerce.dive3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #11
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %3 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !35
  %cmp = icmp ult i64 %3, 2
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %4 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !35
  %mul = mul i64 %4, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !35
  %5 = load <2 x i64>, ptr %a_, align 16, !tbaa !16, !llvm.access.group !35
  %6 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !35
  %vecext = extractelement <2 x i64> %5, i64 %6
  %7 = load <2 x i32>, ptr %b_, align 8, !tbaa !16, !llvm.access.group !35
  %8 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !35
  %vecext4 = extractelement <2 x i32> %7, i64 %8
  %conv = zext i32 %vecext4 to i64
  %add5 = add i64 %vecext, %conv
  %9 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !35
  %10 = load <2 x i64>, ptr %r_, align 16, !llvm.access.group !35
  %vecins = insertelement <2 x i64> %10, i64 %add5, i64 %9
  store <2 x i64> %vecins, ptr %r_, align 16, !llvm.access.group !35
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %11 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !35
  %add6 = add i64 %11, 1
  store i64 %add6, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !35
  br label %omp.inner.for.cond, !llvm.loop !36

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 2, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #11
  %coerce.dive7 = getelementptr inbounds %union.simde_uint64x2_private, ptr %r_, i32 0, i32 0
  %12 = load <2 x i64>, ptr %coerce.dive7, align 16
  %call8 = call <2 x i64> @simde_uint64x2_from_private(<2 x i64> %12) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #11
  ret <2 x i64> %call8
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_arm_neon_assert_equal_u64x2_(<2 x i64> noundef %a, <2 x i64> noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #3 {
entry:
  %a.addr = alloca <2 x i64>, align 16
  %b.addr = alloca <2 x i64>, align 16
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [2 x i64], align 16
  %b_ = alloca [2 x i64], align 16
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  store <2 x i64> %b, ptr %b.addr, align 16, !tbaa !16
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #11
  %arraydecay = getelementptr inbounds [2 x i64], ptr %a_, i64 0, i64 0
  %0 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  call void @simde_vst1q_u64(ptr noundef %arraydecay, <2 x i64> noundef %0)
  %arraydecay1 = getelementptr inbounds [2 x i64], ptr %b_, i64 0, i64 0
  %1 = load <2 x i64>, ptr %b.addr, align 16, !tbaa !16
  call void @simde_vst1q_u64(ptr noundef %arraydecay1, <2 x i64> noundef %1)
  %arraydecay2 = getelementptr inbounds [2 x i64], ptr %a_, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [2 x i64], ptr %b_, i64 0, i64 0
  %2 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %3 = load i32, ptr %line.addr, align 4, !tbaa !5
  %4 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %5 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vu64_(i64 noundef 2, ptr noundef %arraydecay2, ptr noundef %arraydecay3, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #11
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <2 x i64> @simde_uint64x2_from_private(<2 x i64> %value.coerce) #7 {
entry:
  %value = alloca %union.simde_uint64x2_private, align 16
  %r = alloca <2 x i64>, align 16
  %coerce.dive = getelementptr inbounds %union.simde_uint64x2_private, ptr %value, i32 0, i32 0
  store <2 x i64> %value.coerce, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #11
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 16 %value, i64 16, i1 false)
  %0 = load <2 x i64>, ptr %r, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #11
  ret <2 x i64> %0
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal double @simde_uint32x2_from_private(double %value.coerce) #8 {
entry:
  %retval = alloca <2 x i32>, align 8
  %value = alloca %union.simde_uint32x2_private, align 8
  %r = alloca <2 x i32>, align 8
  %coerce.dive = getelementptr inbounds %union.simde_uint32x2_private, ptr %value, i32 0, i32 0
  store double %value.coerce, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #11
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r, ptr align 8 %value, i64 8, i1 false)
  %0 = load <2 x i32>, ptr %r, align 8, !tbaa !16
  store <2 x i32> %0, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #11
  %1 = load double, ptr %retval, align 8
  ret double %1
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <2 x i64> @simde_uint64x2_to_private(<2 x i64> noundef %value) #7 {
entry:
  %retval = alloca %union.simde_uint64x2_private, align 16
  %value.addr = alloca <2 x i64>, align 16
  store <2 x i64> %value, ptr %value.addr, align 16, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %retval, ptr align 16 %value.addr, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint64x2_private, ptr %retval, i32 0, i32 0
  %0 = load <2 x i64>, ptr %coerce.dive, align 16
  ret <2 x i64> %0
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal double @simde_uint32x2_to_private(double noundef %value.coerce) #8 {
entry:
  %retval = alloca %union.simde_uint32x2_private, align 8
  %value = alloca <2 x i32>, align 8
  %value.addr = alloca <2 x i32>, align 8
  store double %value.coerce, ptr %value, align 8
  %value1 = load <2 x i32>, ptr %value, align 8, !tbaa !16
  store <2 x i32> %value1, ptr %value.addr, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %value.addr, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint32x2_private, ptr %retval, i32 0, i32 0
  %0 = load double, ptr %coerce.dive, align 8
  ret double %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde_vst1q_u64(ptr noundef %ptr, <2 x i64> noundef %val) #5 {
entry:
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <2 x i64>, align 16
  %val_ = alloca %union.simde_uint64x2_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <2 x i64> %val, ptr %val.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %val_) #11
  %0 = load <2 x i64>, ptr %val.addr, align 16, !tbaa !16
  %call = call <2 x i64> @simde_uint64x2_to_private(<2 x i64> noundef %0) #12
  %coerce.dive = getelementptr inbounds %union.simde_uint64x2_private, ptr %val_, i32 0, i32 0
  store <2 x i64> %call, ptr %coerce.dive, align 16
  %1 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 16 %val_, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr %val_) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_assert_equal_vu64_(i64 noundef %vec_len, ptr noundef %a, ptr noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
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
  %arrayidx = getelementptr inbounds i64, ptr %4, i64 %5
  %6 = load i64, ptr %arrayidx, align 8, !tbaa !11
  %7 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx1 = getelementptr inbounds i64, ptr %7, i64 %8
  %9 = load i64, ptr %arrayidx1, align 8, !tbaa !11
  %cmp2 = icmp ne i64 %6, %9
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
  %arrayidx4 = getelementptr inbounds i64, ptr %16, i64 %17
  %18 = load i64, ptr %arrayidx4, align 8, !tbaa !11
  %19 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %20 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx5 = getelementptr inbounds i64, ptr %19, i64 %20
  %21 = load i64, ptr %arrayidx5, align 8, !tbaa !11
  call void (ptr, ...) @simde_test_debug_printf_(ptr noundef @.str.20, ptr noundef %10, i32 noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14, i64 noundef %15, i64 noundef %18, i64 noundef %21)
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

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { alwaysinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { alwaysinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { alwaysinline nounwind willreturn memory(none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { alwaysinline nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!26 = distinct !{}
!27 = distinct !{!27, !28, !20}
!28 = !{!"llvm.loop.parallel_accesses", !26}
!29 = distinct !{}
!30 = distinct !{!30, !31, !20}
!31 = !{!"llvm.loop.parallel_accesses", !29}
!32 = distinct !{}
!33 = distinct !{!33, !34, !20}
!34 = !{!"llvm.loop.parallel_accesses", !32}
!35 = distinct !{}
!36 = distinct !{!36, !37, !20}
!37 = !{!"llvm.loop.parallel_accesses", !35}

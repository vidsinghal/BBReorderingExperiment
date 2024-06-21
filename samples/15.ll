; ModuleID = 'samples/15.bc'
source_filename = "../spack-src/test/x86/avx512/packus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { ptr, ptr }
%struct.anon.0 = type { [32 x i16], [32 x i16], [64 x i8] }
%struct.anon.1 = type { [16 x i32], [16 x i32], [32 x i16] }
%struct.simde_mm512_loadu_si512_s = type { <8 x i64> }
%union.simde__m512i_private = type { <64 x i8> }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@stdout = external global ptr, align 8
@.str = private unnamed_addr constant [8 x i8] c"1..%zu\0A\00", align 1
@test_suite_tests = internal constant [2 x %struct.anon] [%struct.anon { ptr @test_simde_mm512_packus_epi16, ptr @.str.3 }, %struct.anon { ptr @test_simde_mm512_packus_epi32, ptr @.str.4 }], align 16
@.str.1 = private unnamed_addr constant [22 x i8] c"not ok %zu packus/%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"ok %zu packus/%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"mm512_packus_epi16\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"mm512_packus_epi32\00", align 1
@test_simde_mm512_packus_epi16.test_vec = internal constant [8 x %struct.anon.0] [%struct.anon.0 { [32 x i16] [i16 -11809, i16 3301, i16 4381, i16 -29201, i16 -11622, i16 -1564, i16 3475, i16 -8537, i16 4169, i16 -23067, i16 13975, i16 16305, i16 -18418, i16 12904, i16 -19774, i16 -24123, i16 -21629, i16 -24403, i16 -25412, i16 22062, i16 4719, i16 591, i16 -2528, i16 27104, i16 -15098, i16 -25330, i16 -16389, i16 2780, i16 17527, i16 14652, i16 758, i16 31195], [32 x i16] [i16 136, i16 105, i16 72, i16 148, i16 14, i16 122, i16 119, i16 10, i16 241, i16 56, i16 132, i16 39, i16 126, i16 191, i16 60, i16 45, i16 83, i16 233, i16 85, i16 245, i16 20, i16 103, i16 83, i16 199, i16 26, i16 245, i16 65, i16 103, i16 126, i16 64, i16 96, i16 126], [64 x i8] c"\00\FF\FF\00\00\00\FF\00\88iH\94\0Ezw\0A\FF\00\FF\FF\00\FF\00\00\F18\84'~\BF<-\00\00\00\FF\FF\FF\00\FFS\E9U\F5\14gS\C7\00\00\00\FF\FF\FF\FF\FF\1A\F5Ag~@`~" }, %struct.anon.0 { [32 x i16] [i16 1203, i16 20072, i16 -6822, i16 -17085, i16 -19463, i16 -31707, i16 -26873, i16 19532, i16 19377, i16 20289, i16 24205, i16 19895, i16 -8484, i16 -26995, i16 -1218, i16 -3819, i16 32000, i16 23103, i16 -32158, i16 23575, i16 15414, i16 15840, i16 11475, i16 -31607, i16 -13704, i16 1492, i16 -29911, i16 1362, i16 -8343, i16 -22628, i16 -20005, i16 -9320], [32 x i16] [i16 215, i16 144, i16 76, i16 143, i16 205, i16 92, i16 85, i16 113, i16 181, i16 73, i16 200, i16 169, i16 234, i16 131, i16 232, i16 201, i16 147, i16 24, i16 70, i16 104, i16 116, i16 13, i16 166, i16 234, i16 245, i16 155, i16 129, i16 101, i16 148, i16 7, i16 70, i16 59], [64 x i8] c"\FF\FF\00\00\00\00\00\FF\D7\90L\8F\CD\\Uq\FF\FF\FF\FF\00\00\00\00\B5I\C8\A9\EA\83\E8\C9\FF\FF\00\FF\FF\FF\FF\00\93\18Fht\0D\A6\EA\00\FF\00\FF\00\00\00\00\F5\9B\81e\94\07F;" }, %struct.anon.0 { [32 x i16] [i16 11225, i16 -18093, i16 -1167, i16 -31455, i16 -6544, i16 14994, i16 4236, i16 -6364, i16 22277, i16 -15486, i16 -14632, i16 17448, i16 4442, i16 -10676, i16 7511, i16 12561, i16 25928, i16 -17942, i16 2912, i16 -12226, i16 -12046, i16 32266, i16 12001, i16 -6554, i16 -6011, i16 24233, i16 -11601, i16 2466, i16 -4381, i16 15072, i16 -3829, i16 21355], [32 x i16] [i16 85, i16 183, i16 75, i16 83, i16 146, i16 253, i16 55, i16 70, i16 141, i16 207, i16 70, i16 66, i16 184, i16 64, i16 232, i16 0, i16 161, i16 158, i16 63, i16 8, i16 195, i16 145, i16 233, i16 26, i16 123, i16 213, i16 194, i16 247, i16 147, i16 36, i16 203, i16 185], [64 x i8] c"\FF\00\00\00\00\FF\FF\00U\B7KS\92\FD7F\FF\00\00\FF\FF\00\FF\FF\8D\CFFB\B8@\E8\00\FF\00\FF\00\00\FF\FF\00\A1\9E?\08\C3\91\E9\1A\00\FF\00\FF\00\FF\00\FF{\D5\C2\F7\93$\CB\B9" }, %struct.anon.0 { [32 x i16] [i16 -9108, i16 22871, i16 18715, i16 -5023, i16 26380, i16 1662, i16 21840, i16 -14815, i16 2769, i16 -27749, i16 -19764, i16 18314, i16 -16059, i16 -16021, i16 -28531, i16 -1670, i16 -11923, i16 -30638, i16 -19430, i16 9845, i16 -3301, i16 27437, i16 20040, i16 6449, i16 -13224, i16 9644, i16 13950, i16 -15508, i16 -10248, i16 -31356, i16 -408, i16 -10882], [32 x i16] [i16 209, i16 234, i16 210, i16 160, i16 62, i16 14, i16 60, i16 228, i16 212, i16 134, i16 117, i16 2, i16 206, i16 181, i16 6, i16 156, i16 231, i16 92, i16 152, i16 127, i16 7, i16 98, i16 181, i16 75, i16 80, i16 147, i16 26, i16 18, i16 29, i16 181, i16 81, i16 250], [64 x i8] c"\00\FF\FF\00\FF\FF\FF\00\D1\EA\D2\A0>\0E<\E4\FF\00\00\FF\00\00\00\00\D4\86u\02\CE\B5\06\9C\00\00\00\FF\00\FF\FF\FF\E7\\\98\7F\07b\B5K\00\FF\FF\00\00\00\00\00P\93\1A\12\1D\B5Q\FA" }, %struct.anon.0 { [32 x i16] [i16 -10183, i16 -3242, i16 21104, i16 18034, i16 89, i16 -25432, i16 -4171, i16 16103, i16 -18369, i16 1233, i16 26579, i16 -17641, i16 -8571, i16 -22416, i16 -15824, i16 27043, i16 -1638, i16 2908, i16 -12724, i16 -23215, i16 -1330, i16 -31934, i16 10729, i16 10433, i16 -27678, i16 -19156, i16 17402, i16 32624, i16 -7902, i16 21032, i16 -13405, i16 15803], [32 x i16] [i16 23, i16 16, i16 154, i16 180, i16 248, i16 125, i16 249, i16 3, i16 209, i16 134, i16 41, i16 55, i16 46, i16 173, i16 68, i16 189, i16 51, i16 64, i16 132, i16 97, i16 44, i16 157, i16 131, i16 177, i16 89, i16 105, i16 61, i16 140, i16 41, i16 100, i16 36, i16 200], [64 x i8] c"\00\00\FF\FFY\00\00\FF\17\10\9A\B4\F8}\F9\03\00\FF\FF\00\00\00\00\FF\D1\86)7.\ADD\BD\00\FF\00\00\00\00\FF\FF3@\84a,\9D\83\B1\00\00\FF\FF\00\FF\00\FFYi=\8C)d$\C8" }, %struct.anon.0 { [32 x i16] [i16 -4009, i16 9225, i16 -652, i16 -3963, i16 25385, i16 20109, i16 12006, i16 15103, i16 14216, i16 2724, i16 17524, i16 -8041, i16 -12178, i16 -9404, i16 26356, i16 19364, i16 -21162, i16 -13713, i16 -2902, i16 -11078, i16 18519, i16 15650, i16 8822, i16 -392, i16 7257, i16 -13047, i16 -24480, i16 -12627, i16 -3472, i16 26026, i16 20056, i16 -20560], [32 x i16] [i16 32, i16 165, i16 52, i16 108, i16 156, i16 242, i16 33, i16 23, i16 250, i16 158, i16 146, i16 10, i16 22, i16 220, i16 32, i16 95, i16 5, i16 84, i16 126, i16 181, i16 106, i16 216, i16 152, i16 201, i16 212, i16 44, i16 211, i16 234, i16 166, i16 78, i16 82, i16 6], [64 x i8] c"\00\FF\00\00\FF\FF\FF\FF \A54l\9C\F2!\17\FF\FF\FF\00\00\00\FF\FF\FA\9E\92\0A\16\DC _\00\00\00\00\FF\FF\FF\00\05T~\B5j\D8\98\C9\FF\00\00\00\00\FF\FF\00\D4,\D3\EA\A6NR\06" }, %struct.anon.0 { [32 x i16] [i16 -19625, i16 -28581, i16 6961, i16 19525, i16 -4987, i16 4388, i16 5253, i16 6106, i16 16872, i16 20036, i16 31508, i16 -456, i16 -479, i16 -6067, i16 -1200, i16 -22546, i16 18862, i16 -8393, i16 31845, i16 -5589, i16 20585, i16 -4357, i16 -10908, i16 19461, i16 18710, i16 11162, i16 -11580, i16 -6615, i16 30416, i16 8654, i16 -17295, i16 8136], [32 x i16] [i16 0, i16 107, i16 42, i16 229, i16 81, i16 222, i16 217, i16 61, i16 196, i16 231, i16 145, i16 103, i16 155, i16 121, i16 80, i16 93, i16 152, i16 205, i16 30, i16 61, i16 134, i16 149, i16 70, i16 129, i16 58, i16 161, i16 53, i16 212, i16 144, i16 40, i16 230, i16 49], [64 x i8] c"\00\00\FF\FF\00\FF\FF\FF\00k*\E5Q\DE\D9=\FF\FF\FF\00\00\00\00\00\C4\E7\91g\9ByP]\FF\00\FF\00\FF\00\00\FF\98\CD\1E=\86\95F\81\FF\FF\00\00\FF\FF\00\FF:\A15\D4\90(\E61" }, %struct.anon.0 { [32 x i16] [i16 20094, i16 16894, i16 -20372, i16 -9346, i16 -26314, i16 -27280, i16 17375, i16 -5609, i16 32637, i16 18827, i16 -27723, i16 -31459, i16 27427, i16 941, i16 13137, i16 -12236, i16 12929, i16 -4847, i16 -28701, i16 6600, i16 14376, i16 2223, i16 -14725, i16 -1550, i16 32069, i16 -1470, i16 24592, i16 13184, i16 11723, i16 7222, i16 27488, i16 -7700], [32 x i16] [i16 253, i16 128, i16 150, i16 181, i16 73, i16 74, i16 175, i16 84, i16 134, i16 60, i16 207, i16 177, i16 165, i16 93, i16 186, i16 174, i16 13, i16 68, i16 200, i16 114, i16 182, i16 32, i16 0, i16 145, i16 196, i16 108, i16 60, i16 143, i16 235, i16 242, i16 43, i16 92], [64 x i8] c"\FF\FF\00\00\00\00\FF\00\FD\80\96\B5IJ\AFT\FF\FF\00\00\FF\FF\FF\00\86<\CF\B1\A5]\BA\AE\FF\00\00\FF\FF\FF\00\00\0DD\C8r\B6 \00\91\FF\00\FF\FF\FF\FF\FF\00\C4l<\8F\EB\F2+\\" }], align 16
@.str.5 = private unnamed_addr constant [38 x i8] c"../spack-src/test/x86/avx512/packus.c\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"simde_mm512_loadu_epi16(test_vec[i].r)\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"%s:%d: assertion failed: %s[%zu] == %s[%zu] (%u == %u)\0A\00", align 1
@stderr = external global ptr, align 8
@test_simde_mm512_packus_epi32.test_vec = internal constant [8 x %struct.anon.1] [%struct.anon.1 { [16 x i32] [i32 32838, i32 707, i32 18249, i32 43411, i32 33031, i32 48266, i32 46389, i32 30506, i32 19447, i32 16717, i32 9608, i32 32719, i32 16128, i32 507, i32 9398, i32 24219], [16 x i32] [i32 -374762927, i32 -768936372, i32 1090040461, i32 -926955570, i32 1560788893, i32 -1621228982, i32 -1144842958, i32 1192845046, i32 1009828848, i32 1175411385, i32 -611907827, i32 1805862606, i32 1355393542, i32 -554752084, i32 848933692, i32 41595665], [32 x i16] [i16 -32698, i16 707, i16 18249, i16 -22125, i16 0, i16 0, i16 -1, i16 0, i16 -32505, i16 -17270, i16 -19147, i16 30506, i16 -1, i16 0, i16 0, i16 -1, i16 19447, i16 16717, i16 9608, i16 32719, i16 -1, i16 -1, i16 0, i16 -1, i16 16128, i16 507, i16 9398, i16 24219, i16 -1, i16 0, i16 -1, i16 -1] }, %struct.anon.1 { [16 x i32] [i32 12094, i32 4726, i32 8941, i32 18830, i32 59545, i32 48070, i32 19949, i32 35151, i32 6072, i32 12329, i32 28498, i32 58296, i32 46795, i32 6001, i32 1124, i32 55437], [16 x i32] [i32 502220354, i32 -1605560204, i32 -703619026, i32 -1195784320, i32 -194083815, i32 118218517, i32 51081277, i32 1725667620, i32 1401146079, i32 301191650, i32 -236518799, i32 -475422518, i32 970463012, i32 876667894, i32 2000112723, i32 -992144411], [32 x i16] [i16 12094, i16 4726, i16 8941, i16 18830, i16 -1, i16 0, i16 0, i16 0, i16 -5991, i16 -17466, i16 19949, i16 -30385, i16 0, i16 -1, i16 -1, i16 -1, i16 6072, i16 12329, i16 28498, i16 -7240, i16 -1, i16 -1, i16 0, i16 0, i16 -18741, i16 6001, i16 1124, i16 -10099, i16 -1, i16 -1, i16 -1, i16 0] }, %struct.anon.1 { [16 x i32] [i32 49175, i32 41937, i32 55188, i32 31931, i32 19637, i32 51840, i32 10049, i32 43243, i32 45672, i32 6997, i32 18930, i32 32197, i32 47049, i32 45697, i32 52185, i32 24947], [16 x i32] [i32 -736896057, i32 99575828, i32 2035212882, i32 -789179505, i32 -24658035, i32 162531336, i32 -1395356982, i32 353191758, i32 921313570, i32 -616834679, i32 1263897019, i32 689654684, i32 321364491, i32 1948047530, i32 -1340018590, i32 1506160183], [32 x i16] [i16 -16361, i16 -23599, i16 -10348, i16 31931, i16 0, i16 -1, i16 -1, i16 0, i16 19637, i16 -13696, i16 10049, i16 -22293, i16 0, i16 -1, i16 0, i16 -1, i16 -19864, i16 6997, i16 18930, i16 32197, i16 -1, i16 0, i16 -1, i16 -1, i16 -18487, i16 -19839, i16 -13351, i16 24947, i16 -1, i16 -1, i16 0, i16 -1] }, %struct.anon.1 { [16 x i32] [i32 55439, i32 17844, i32 61328, i32 24345, i32 63347, i32 31339, i32 46891, i32 2321, i32 10977, i32 48751, i32 62382, i32 63314, i32 8430, i32 54682, i32 41100, i32 22441], [16 x i32] [i32 -1451062722, i32 -1100484320, i32 -1682893327, i32 -460127012, i32 503611849, i32 -1040998693, i32 442597476, i32 1534200349, i32 -1257966443, i32 -697078555, i32 1584539009, i32 -230554327, i32 1645299334, i32 1210254564, i32 -1570536060, i32 620615055], [32 x i16] [i16 -10097, i16 17844, i16 -4208, i16 24345, i16 0, i16 0, i16 0, i16 0, i16 -2189, i16 31339, i16 -18645, i16 2321, i16 -1, i16 0, i16 -1, i16 -1, i16 10977, i16 -16785, i16 -3154, i16 -2222, i16 0, i16 0, i16 -1, i16 0, i16 8430, i16 -10854, i16 -24436, i16 22441, i16 -1, i16 -1, i16 0, i16 -1] }, %struct.anon.1 { [16 x i32] [i32 44761, i32 61317, i32 39757, i32 33421, i32 47844, i32 9986, i32 7369, i32 833, i32 14258, i32 55590, i32 10868, i32 55724, i32 17299, i32 9835, i32 13634, i32 50233], [16 x i32] [i32 100395934, i32 1356800546, i32 -1720036458, i32 -160291243, i32 1345914295, i32 -1770609509, i32 -724846119, i32 -627506116, i32 299930863, i32 1281474486, i32 1759959826, i32 -1184999422, i32 -116746402, i32 361726012, i32 1995004473, i32 1313899103], [32 x i16] [i16 -20775, i16 -4219, i16 -25779, i16 -32115, i16 -1, i16 -1, i16 0, i16 0, i16 -17692, i16 9986, i16 7369, i16 833, i16 -1, i16 0, i16 0, i16 0, i16 14258, i16 -9946, i16 10868, i16 -9812, i16 -1, i16 -1, i16 -1, i16 0, i16 17299, i16 9835, i16 13634, i16 -15303, i16 0, i16 -1, i16 -1, i16 -1] }, %struct.anon.1 { [16 x i32] [i32 52576, i32 538, i32 40810, i32 46680, i32 39855, i32 7344, i32 63634, i32 13126, i32 769, i32 1285, i32 29604, i32 38442, i32 16946, i32 45406, i32 39337, i32 59340], [16 x i32] [i32 -18166378, i32 50589672, i32 -1787320482, i32 36479395, i32 -1841013126, i32 -1119640768, i32 1750527124, i32 1917788892, i32 -663733520, i32 -1998818519, i32 -1122151654, i32 1858095604, i32 -402586457, i32 1000686759, i32 228850481, i32 226489117], [32 x i16] [i16 -12960, i16 538, i16 -24726, i16 -18856, i16 0, i16 -1, i16 0, i16 -1, i16 -25681, i16 7344, i16 -1902, i16 13126, i16 0, i16 0, i16 -1, i16 -1, i16 769, i16 1285, i16 29604, i16 -27094, i16 0, i16 0, i16 0, i16 -1, i16 16946, i16 -20130, i16 -26199, i16 -6196, i16 0, i16 -1, i16 -1, i16 -1] }, %struct.anon.1 { [16 x i32] [i32 22246, i32 31966, i32 2361, i32 60791, i32 42453, i32 61153, i32 37627, i32 42144, i32 52219, i32 23879, i32 7014, i32 30728, i32 4893, i32 52225, i32 64094, i32 57247], [16 x i32] [i32 -861234556, i32 1227485555, i32 -345731215, i32 -1016894355, i32 -1596554935, i32 40687487, i32 1241369299, i32 1294507209, i32 -1457860042, i32 888292291, i32 1075861203, i32 184779714, i32 -2069112572, i32 -2088364112, i32 -1412660254, i32 1442378783], [32 x i16] [i16 22246, i16 31966, i16 2361, i16 -4745, i16 0, i16 -1, i16 0, i16 0, i16 -23083, i16 -4383, i16 -27909, i16 -23392, i16 0, i16 -1, i16 -1, i16 -1, i16 -13317, i16 23879, i16 7014, i16 30728, i16 0, i16 -1, i16 -1, i16 -1, i16 4893, i16 -13311, i16 -1442, i16 -8289, i16 0, i16 0, i16 0, i16 -1] }, %struct.anon.1 { [16 x i32] [i32 35327, i32 10685, i32 2665, i32 25878, i32 62953, i32 47992, i32 4966, i32 65128, i32 51079, i32 41456, i32 33707, i32 2792, i32 23807, i32 13591, i32 62280, i32 19697], [16 x i32] [i32 1897101336, i32 -569244740, i32 560053852, i32 36391551, i32 1583229468, i32 1553167777, i32 -833626894, i32 -1525006195, i32 1964453560, i32 -1907152591, i32 1739568615, i32 459922431, i32 -1485191163, i32 805506109, i32 1979601896, i32 1276844179], [32 x i16] [i16 -30209, i16 10685, i16 2665, i16 25878, i16 -1, i16 0, i16 -1, i16 -1, i16 -2583, i16 -17544, i16 4966, i16 -408, i16 -1, i16 -1, i16 0, i16 0, i16 -14457, i16 -24080, i16 -31829, i16 2792, i16 -1, i16 0, i16 -1, i16 -1, i16 23807, i16 13591, i16 -3256, i16 19697, i16 0, i16 -1, i16 -1, i16 -1] }], align 16
@.str.9 = private unnamed_addr constant [39 x i8] c"simde_mm512_loadu_epi32(test_vec[i].r)\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %i = alloca i64, align 8
  %res = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #9
  store i32 0, ptr %retval1, align 4, !tbaa !5
  %0 = load ptr, ptr @stdout, align 8, !tbaa !9
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str, i64 noundef 2)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #9
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %1, 2
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #9
  br label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #9
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [2 x %struct.anon], ptr @test_suite_tests, i64 0, i64 %2
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
  %arrayidx4 = getelementptr inbounds [2 x %struct.anon], ptr @test_suite_tests, i64 0, i64 %7
  %name = getelementptr inbounds %struct.anon, ptr %arrayidx4, i32 0, i32 1
  %8 = load ptr, ptr %name, align 8, !tbaa !15
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.1, i64 noundef %add, ptr noundef %8)
  br label %if.end

if.else:                                          ; preds = %for.body
  %9 = load ptr, ptr @stdout, align 8, !tbaa !9
  %10 = load i64, ptr %i, align 8, !tbaa !11
  %add6 = add i64 %10, 1
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds [2 x %struct.anon], ptr @test_suite_tests, i64 0, i64 %11
  %name8 = getelementptr inbounds %struct.anon, ptr %arrayidx7, i32 0, i32 1
  %12 = load ptr, ptr %name8, align 8, !tbaa !15
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.2, i64 noundef %add6, ptr noundef %12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #9
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %13, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.end:                                          ; preds = %for.cond.cleanup
  %14 = load i32, ptr %retval1, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #9
  ret i32 %14
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm512_packus_epi16() #3 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <8 x i64>, align 64
  %b = alloca <8 x i64>, align 64
  %r = alloca <8 x i64>, align 64
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %indirect-arg-temp6 = alloca <8 x i64>, align 64
  %indirect-arg-temp12 = alloca <8 x i64>, align 64
  %indirect-arg-temp13 = alloca <8 x i64>, align 64
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #9
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup17

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 64, ptr %a) #9
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.0], ptr @test_simde_mm512_packus_epi16.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.0, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [32 x i16], ptr %a1, i64 0, i64 0
  %call = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay)
  store <8 x i64> %call, ptr %a, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %b) #9
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.0], ptr @test_simde_mm512_packus_epi16.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.0, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [32 x i16], ptr %b3, i64 0, i64 0
  %call5 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay4)
  store <8 x i64> %call5, ptr %b, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %r) #9
  %3 = load <8 x i64>, ptr %a, align 64, !tbaa !16
  %4 = load <8 x i64>, ptr %b, align 64, !tbaa !16
  store <8 x i64> %3, ptr %indirect-arg-temp, align 64, !tbaa !16
  store <8 x i64> %4, ptr %indirect-arg-temp6, align 64, !tbaa !16
  %call7 = call <8 x i64> @simde_mm512_packus_epi16(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp6)
  store <8 x i64> %call7, ptr %r, align 64, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load <8 x i64>, ptr %r, align 64, !tbaa !16
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx8 = getelementptr inbounds [8 x %struct.anon.0], ptr @test_simde_mm512_packus_epi16.test_vec, i64 0, i64 %6
  %r9 = getelementptr inbounds %struct.anon.0, ptr %arrayidx8, i32 0, i32 2
  %arraydecay10 = getelementptr inbounds [64 x i8], ptr %r9, i64 0, i64 0
  %call11 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay10)
  store <8 x i64> %5, ptr %indirect-arg-temp12, align 64, !tbaa !16
  store <8 x i64> %call11, ptr %indirect-arg-temp13, align 64, !tbaa !16
  %call14 = call i32 @simde_test_x86_assert_equal_u8x64_(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp12, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp13, ptr noundef @.str.5, i32 noundef 174, ptr noundef @.str.6, ptr noundef @.str.7)
  %tobool = icmp ne i32 %call14, 0
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
  call void @llvm.lifetime.end.p0(i64 64, ptr %r) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr %b) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr %a) #9
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup17 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %7, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup17:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #9
  %cleanup.dest18 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest18, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup17
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup17
  %8 = load i32, ptr %retval, align 4
  ret i32 %8

unreachable:                                      ; preds = %cleanup17
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm512_packus_epi32() #3 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <8 x i64>, align 64
  %b = alloca <8 x i64>, align 64
  %r = alloca <8 x i64>, align 64
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %indirect-arg-temp6 = alloca <8 x i64>, align 64
  %indirect-arg-temp12 = alloca <8 x i64>, align 64
  %indirect-arg-temp13 = alloca <8 x i64>, align 64
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #9
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup17

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 64, ptr %a) #9
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.1], ptr @test_simde_mm512_packus_epi32.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.1, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i32], ptr %a1, i64 0, i64 0
  %call = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay)
  store <8 x i64> %call, ptr %a, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %b) #9
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.1], ptr @test_simde_mm512_packus_epi32.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.1, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [16 x i32], ptr %b3, i64 0, i64 0
  %call5 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay4)
  store <8 x i64> %call5, ptr %b, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %r) #9
  %3 = load <8 x i64>, ptr %a, align 64, !tbaa !16
  %4 = load <8 x i64>, ptr %b, align 64, !tbaa !16
  store <8 x i64> %3, ptr %indirect-arg-temp, align 64, !tbaa !16
  store <8 x i64> %4, ptr %indirect-arg-temp6, align 64, !tbaa !16
  %call7 = call <8 x i64> @simde_mm512_packus_epi32(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp6)
  store <8 x i64> %call7, ptr %r, align 64, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load <8 x i64>, ptr %r, align 64, !tbaa !16
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx8 = getelementptr inbounds [8 x %struct.anon.1], ptr @test_simde_mm512_packus_epi32.test_vec, i64 0, i64 %6
  %r9 = getelementptr inbounds %struct.anon.1, ptr %arrayidx8, i32 0, i32 2
  %arraydecay10 = getelementptr inbounds [32 x i16], ptr %r9, i64 0, i64 0
  %call11 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay10)
  store <8 x i64> %5, ptr %indirect-arg-temp12, align 64, !tbaa !16
  store <8 x i64> %call11, ptr %indirect-arg-temp13, align 64, !tbaa !16
  %call14 = call i32 @simde_test_x86_assert_equal_u16x32_(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp12, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp13, ptr noundef @.str.5, i32 noundef 257, ptr noundef @.str.6, ptr noundef @.str.9)
  %tobool = icmp ne i32 %call14, 0
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
  call void @llvm.lifetime.end.p0(i64 64, ptr %r) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr %b) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr %a) #9
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup17 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %7, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup17:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #9
  %cleanup.dest18 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest18, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup17
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup17
  %8 = load i32, ptr %retval, align 4
  ret i32 %8

unreachable:                                      ; preds = %cleanup17
  unreachable
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i64> @simde_mm512_loadu_si512(ptr noundef %mem_addr) #4 {
entry:
  %mem_addr.addr = alloca ptr, align 8
  %r = alloca <8 x i64>, align 64
  store ptr %mem_addr, ptr %mem_addr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 64, ptr %r) #9
  %0 = load ptr, ptr %mem_addr.addr, align 8, !tbaa !9
  %v = getelementptr inbounds %struct.simde_mm512_loadu_si512_s, ptr %0, i32 0, i32 0
  %1 = load <8 x i64>, ptr %v, align 1, !tbaa !16
  store <8 x i64> %1, ptr %r, align 64, !tbaa !16
  %2 = load <8 x i64>, ptr %r, align 64, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 64, ptr %r) #9
  ret <8 x i64> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i64> @simde_mm512_packus_epi16(ptr noundef byval(<8 x i64>) align 64 %0, ptr noundef byval(<8 x i64>) align 64 %1) #4 {
entry:
  %a.addr = alloca <8 x i64>, align 64
  %b.addr = alloca <8 x i64>, align 64
  %r_ = alloca %union.simde__m512i_private, align 64
  %a_ = alloca %union.simde__m512i_private, align 64
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %b_ = alloca %union.simde__m512i_private, align 64
  %indirect-arg-temp1 = alloca <8 x i64>, align 64
  %halfway_point = alloca i64, align 8
  %quarter_point = alloca i64, align 8
  %octet_point = alloca i64, align 8
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  %a = load <8 x i64>, ptr %0, align 64, !tbaa !16
  %b = load <8 x i64>, ptr %1, align 64, !tbaa !16
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %b, ptr %b.addr, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %r_) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr %a_) #9
  %2 = load <8 x i64>, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %2, ptr %indirect-arg-temp, align 64, !tbaa !16
  call void @simde__m512i_to_private(ptr sret(%union.simde__m512i_private) align 64 %a_, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 64, ptr %b_) #9
  %3 = load <8 x i64>, ptr %b.addr, align 64, !tbaa !16
  store <8 x i64> %3, ptr %indirect-arg-temp1, align 64, !tbaa !16
  call void @simde__m512i_to_private(ptr sret(%union.simde__m512i_private) align 64 %b_, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp1)
  call void @llvm.lifetime.start.p0(i64 8, ptr %halfway_point) #9
  store i64 32, ptr %halfway_point, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %quarter_point) #9
  store i64 16, ptr %quarter_point, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %octet_point) #9
  store i64 8, ptr %octet_point, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #9
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #9
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %4 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !17
  %cmp = icmp ult i64 %4, 8
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %5 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !17
  %mul = mul i64 %5, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %6 = load <32 x i16>, ptr %a_, align 64, !tbaa !16, !llvm.access.group !17
  %7 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %vecext = extractelement <32 x i16> %6, i64 %7
  %conv = sext i16 %vecext to i32
  %cmp2 = icmp sgt i32 %conv, 255
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %omp.inner.for.body
  br label %cond.end13

cond.false:                                       ; preds = %omp.inner.for.body
  %8 = load <32 x i16>, ptr %a_, align 64, !tbaa !16, !llvm.access.group !17
  %9 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %vecext4 = extractelement <32 x i16> %8, i64 %9
  %conv5 = sext i16 %vecext4 to i32
  %cmp6 = icmp slt i32 %conv5, 0
  br i1 %cmp6, label %cond.true8, label %cond.false9

cond.true8:                                       ; preds = %cond.false
  br label %cond.end

cond.false9:                                      ; preds = %cond.false
  %10 = load <32 x i16>, ptr %a_, align 64, !tbaa !16, !llvm.access.group !17
  %11 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %vecext10 = extractelement <32 x i16> %10, i64 %11
  %conv11 = trunc i16 %vecext10 to i8
  %conv12 = zext i8 %conv11 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false9, %cond.true8
  %cond = phi i32 [ 0, %cond.true8 ], [ %conv12, %cond.false9 ]
  br label %cond.end13

cond.end13:                                       ; preds = %cond.end, %cond.true
  %cond14 = phi i32 [ 255, %cond.true ], [ %cond, %cond.end ]
  %conv15 = trunc i32 %cond14 to i8
  %12 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %13 = load <64 x i8>, ptr %r_, align 64, !llvm.access.group !17
  %vecins = insertelement <64 x i8> %13, i8 %conv15, i64 %12
  store <64 x i8> %vecins, ptr %r_, align 64, !llvm.access.group !17
  %14 = load <32 x i16>, ptr %b_, align 64, !tbaa !16, !llvm.access.group !17
  %15 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %vecext16 = extractelement <32 x i16> %14, i64 %15
  %conv17 = sext i16 %vecext16 to i32
  %cmp18 = icmp sgt i32 %conv17, 255
  br i1 %cmp18, label %cond.true20, label %cond.false21

cond.true20:                                      ; preds = %cond.end13
  br label %cond.end33

cond.false21:                                     ; preds = %cond.end13
  %16 = load <32 x i16>, ptr %b_, align 64, !tbaa !16, !llvm.access.group !17
  %17 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %vecext22 = extractelement <32 x i16> %16, i64 %17
  %conv23 = sext i16 %vecext22 to i32
  %cmp24 = icmp slt i32 %conv23, 0
  br i1 %cmp24, label %cond.true26, label %cond.false27

cond.true26:                                      ; preds = %cond.false21
  br label %cond.end31

cond.false27:                                     ; preds = %cond.false21
  %18 = load <32 x i16>, ptr %b_, align 64, !tbaa !16, !llvm.access.group !17
  %19 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %vecext28 = extractelement <32 x i16> %18, i64 %19
  %conv29 = trunc i16 %vecext28 to i8
  %conv30 = zext i8 %conv29 to i32
  br label %cond.end31

cond.end31:                                       ; preds = %cond.false27, %cond.true26
  %cond32 = phi i32 [ 0, %cond.true26 ], [ %conv30, %cond.false27 ]
  br label %cond.end33

cond.end33:                                       ; preds = %cond.end31, %cond.true20
  %cond34 = phi i32 [ 255, %cond.true20 ], [ %cond32, %cond.end31 ]
  %conv35 = trunc i32 %cond34 to i8
  %20 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %add36 = add i64 %20, 8
  %21 = load <64 x i8>, ptr %r_, align 64, !llvm.access.group !17
  %vecins37 = insertelement <64 x i8> %21, i8 %conv35, i64 %add36
  store <64 x i8> %vecins37, ptr %r_, align 64, !llvm.access.group !17
  %22 = load <32 x i16>, ptr %a_, align 64, !tbaa !16, !llvm.access.group !17
  %23 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %add38 = add i64 8, %23
  %vecext39 = extractelement <32 x i16> %22, i64 %add38
  %conv40 = sext i16 %vecext39 to i32
  %cmp41 = icmp sgt i32 %conv40, 255
  br i1 %cmp41, label %cond.true43, label %cond.false44

cond.true43:                                      ; preds = %cond.end33
  br label %cond.end58

cond.false44:                                     ; preds = %cond.end33
  %24 = load <32 x i16>, ptr %a_, align 64, !tbaa !16, !llvm.access.group !17
  %25 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %add45 = add i64 8, %25
  %vecext46 = extractelement <32 x i16> %24, i64 %add45
  %conv47 = sext i16 %vecext46 to i32
  %cmp48 = icmp slt i32 %conv47, 0
  br i1 %cmp48, label %cond.true50, label %cond.false51

cond.true50:                                      ; preds = %cond.false44
  br label %cond.end56

cond.false51:                                     ; preds = %cond.false44
  %26 = load <32 x i16>, ptr %a_, align 64, !tbaa !16, !llvm.access.group !17
  %27 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %add52 = add i64 8, %27
  %vecext53 = extractelement <32 x i16> %26, i64 %add52
  %conv54 = trunc i16 %vecext53 to i8
  %conv55 = zext i8 %conv54 to i32
  br label %cond.end56

cond.end56:                                       ; preds = %cond.false51, %cond.true50
  %cond57 = phi i32 [ 0, %cond.true50 ], [ %conv55, %cond.false51 ]
  br label %cond.end58

cond.end58:                                       ; preds = %cond.end56, %cond.true43
  %cond59 = phi i32 [ 255, %cond.true43 ], [ %cond57, %cond.end56 ]
  %conv60 = trunc i32 %cond59 to i8
  %28 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %add61 = add i64 16, %28
  %29 = load <64 x i8>, ptr %r_, align 64, !llvm.access.group !17
  %vecins62 = insertelement <64 x i8> %29, i8 %conv60, i64 %add61
  store <64 x i8> %vecins62, ptr %r_, align 64, !llvm.access.group !17
  %30 = load <32 x i16>, ptr %b_, align 64, !tbaa !16, !llvm.access.group !17
  %31 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %add63 = add i64 8, %31
  %vecext64 = extractelement <32 x i16> %30, i64 %add63
  %conv65 = sext i16 %vecext64 to i32
  %cmp66 = icmp sgt i32 %conv65, 255
  br i1 %cmp66, label %cond.true68, label %cond.false69

cond.true68:                                      ; preds = %cond.end58
  br label %cond.end83

cond.false69:                                     ; preds = %cond.end58
  %32 = load <32 x i16>, ptr %b_, align 64, !tbaa !16, !llvm.access.group !17
  %33 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %add70 = add i64 8, %33
  %vecext71 = extractelement <32 x i16> %32, i64 %add70
  %conv72 = sext i16 %vecext71 to i32
  %cmp73 = icmp slt i32 %conv72, 0
  br i1 %cmp73, label %cond.true75, label %cond.false76

cond.true75:                                      ; preds = %cond.false69
  br label %cond.end81

cond.false76:                                     ; preds = %cond.false69
  %34 = load <32 x i16>, ptr %b_, align 64, !tbaa !16, !llvm.access.group !17
  %35 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %add77 = add i64 8, %35
  %vecext78 = extractelement <32 x i16> %34, i64 %add77
  %conv79 = trunc i16 %vecext78 to i8
  %conv80 = zext i8 %conv79 to i32
  br label %cond.end81

cond.end81:                                       ; preds = %cond.false76, %cond.true75
  %cond82 = phi i32 [ 0, %cond.true75 ], [ %conv80, %cond.false76 ]
  br label %cond.end83

cond.end83:                                       ; preds = %cond.end81, %cond.true68
  %cond84 = phi i32 [ 255, %cond.true68 ], [ %cond82, %cond.end81 ]
  %conv85 = trunc i32 %cond84 to i8
  %36 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %add86 = add i64 16, %36
  %add87 = add i64 %add86, 8
  %37 = load <64 x i8>, ptr %r_, align 64, !llvm.access.group !17
  %vecins88 = insertelement <64 x i8> %37, i8 %conv85, i64 %add87
  store <64 x i8> %vecins88, ptr %r_, align 64, !llvm.access.group !17
  %38 = load <32 x i16>, ptr %a_, align 64, !tbaa !16, !llvm.access.group !17
  %39 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %add89 = add i64 16, %39
  %vecext90 = extractelement <32 x i16> %38, i64 %add89
  %conv91 = sext i16 %vecext90 to i32
  %cmp92 = icmp sgt i32 %conv91, 255
  br i1 %cmp92, label %cond.true94, label %cond.false95

cond.true94:                                      ; preds = %cond.end83
  br label %cond.end109

cond.false95:                                     ; preds = %cond.end83
  %40 = load <32 x i16>, ptr %a_, align 64, !tbaa !16, !llvm.access.group !17
  %41 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %add96 = add i64 16, %41
  %vecext97 = extractelement <32 x i16> %40, i64 %add96
  %conv98 = sext i16 %vecext97 to i32
  %cmp99 = icmp slt i32 %conv98, 0
  br i1 %cmp99, label %cond.true101, label %cond.false102

cond.true101:                                     ; preds = %cond.false95
  br label %cond.end107

cond.false102:                                    ; preds = %cond.false95
  %42 = load <32 x i16>, ptr %a_, align 64, !tbaa !16, !llvm.access.group !17
  %43 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %add103 = add i64 16, %43
  %vecext104 = extractelement <32 x i16> %42, i64 %add103
  %conv105 = trunc i16 %vecext104 to i8
  %conv106 = zext i8 %conv105 to i32
  br label %cond.end107

cond.end107:                                      ; preds = %cond.false102, %cond.true101
  %cond108 = phi i32 [ 0, %cond.true101 ], [ %conv106, %cond.false102 ]
  br label %cond.end109

cond.end109:                                      ; preds = %cond.end107, %cond.true94
  %cond110 = phi i32 [ 255, %cond.true94 ], [ %cond108, %cond.end107 ]
  %conv111 = trunc i32 %cond110 to i8
  %44 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %add112 = add i64 32, %44
  %45 = load <64 x i8>, ptr %r_, align 64, !llvm.access.group !17
  %vecins113 = insertelement <64 x i8> %45, i8 %conv111, i64 %add112
  store <64 x i8> %vecins113, ptr %r_, align 64, !llvm.access.group !17
  %46 = load <32 x i16>, ptr %b_, align 64, !tbaa !16, !llvm.access.group !17
  %47 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %add114 = add i64 16, %47
  %vecext115 = extractelement <32 x i16> %46, i64 %add114
  %conv116 = sext i16 %vecext115 to i32
  %cmp117 = icmp sgt i32 %conv116, 255
  br i1 %cmp117, label %cond.true119, label %cond.false120

cond.true119:                                     ; preds = %cond.end109
  br label %cond.end134

cond.false120:                                    ; preds = %cond.end109
  %48 = load <32 x i16>, ptr %b_, align 64, !tbaa !16, !llvm.access.group !17
  %49 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %add121 = add i64 16, %49
  %vecext122 = extractelement <32 x i16> %48, i64 %add121
  %conv123 = sext i16 %vecext122 to i32
  %cmp124 = icmp slt i32 %conv123, 0
  br i1 %cmp124, label %cond.true126, label %cond.false127

cond.true126:                                     ; preds = %cond.false120
  br label %cond.end132

cond.false127:                                    ; preds = %cond.false120
  %50 = load <32 x i16>, ptr %b_, align 64, !tbaa !16, !llvm.access.group !17
  %51 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %add128 = add i64 16, %51
  %vecext129 = extractelement <32 x i16> %50, i64 %add128
  %conv130 = trunc i16 %vecext129 to i8
  %conv131 = zext i8 %conv130 to i32
  br label %cond.end132

cond.end132:                                      ; preds = %cond.false127, %cond.true126
  %cond133 = phi i32 [ 0, %cond.true126 ], [ %conv131, %cond.false127 ]
  br label %cond.end134

cond.end134:                                      ; preds = %cond.end132, %cond.true119
  %cond135 = phi i32 [ 255, %cond.true119 ], [ %cond133, %cond.end132 ]
  %conv136 = trunc i32 %cond135 to i8
  %52 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %add137 = add i64 32, %52
  %add138 = add i64 %add137, 8
  %53 = load <64 x i8>, ptr %r_, align 64, !llvm.access.group !17
  %vecins139 = insertelement <64 x i8> %53, i8 %conv136, i64 %add138
  store <64 x i8> %vecins139, ptr %r_, align 64, !llvm.access.group !17
  %54 = load <32 x i16>, ptr %a_, align 64, !tbaa !16, !llvm.access.group !17
  %55 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %add140 = add i64 24, %55
  %vecext141 = extractelement <32 x i16> %54, i64 %add140
  %conv142 = sext i16 %vecext141 to i32
  %cmp143 = icmp sgt i32 %conv142, 255
  br i1 %cmp143, label %cond.true145, label %cond.false146

cond.true145:                                     ; preds = %cond.end134
  br label %cond.end160

cond.false146:                                    ; preds = %cond.end134
  %56 = load <32 x i16>, ptr %a_, align 64, !tbaa !16, !llvm.access.group !17
  %57 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %add147 = add i64 24, %57
  %vecext148 = extractelement <32 x i16> %56, i64 %add147
  %conv149 = sext i16 %vecext148 to i32
  %cmp150 = icmp slt i32 %conv149, 0
  br i1 %cmp150, label %cond.true152, label %cond.false153

cond.true152:                                     ; preds = %cond.false146
  br label %cond.end158

cond.false153:                                    ; preds = %cond.false146
  %58 = load <32 x i16>, ptr %a_, align 64, !tbaa !16, !llvm.access.group !17
  %59 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %add154 = add i64 24, %59
  %vecext155 = extractelement <32 x i16> %58, i64 %add154
  %conv156 = trunc i16 %vecext155 to i8
  %conv157 = zext i8 %conv156 to i32
  br label %cond.end158

cond.end158:                                      ; preds = %cond.false153, %cond.true152
  %cond159 = phi i32 [ 0, %cond.true152 ], [ %conv157, %cond.false153 ]
  br label %cond.end160

cond.end160:                                      ; preds = %cond.end158, %cond.true145
  %cond161 = phi i32 [ 255, %cond.true145 ], [ %cond159, %cond.end158 ]
  %conv162 = trunc i32 %cond161 to i8
  %60 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %add163 = add i64 48, %60
  %61 = load <64 x i8>, ptr %r_, align 64, !llvm.access.group !17
  %vecins164 = insertelement <64 x i8> %61, i8 %conv162, i64 %add163
  store <64 x i8> %vecins164, ptr %r_, align 64, !llvm.access.group !17
  %62 = load <32 x i16>, ptr %b_, align 64, !tbaa !16, !llvm.access.group !17
  %63 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %add165 = add i64 24, %63
  %vecext166 = extractelement <32 x i16> %62, i64 %add165
  %conv167 = sext i16 %vecext166 to i32
  %cmp168 = icmp sgt i32 %conv167, 255
  br i1 %cmp168, label %cond.true170, label %cond.false171

cond.true170:                                     ; preds = %cond.end160
  br label %cond.end185

cond.false171:                                    ; preds = %cond.end160
  %64 = load <32 x i16>, ptr %b_, align 64, !tbaa !16, !llvm.access.group !17
  %65 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %add172 = add i64 24, %65
  %vecext173 = extractelement <32 x i16> %64, i64 %add172
  %conv174 = sext i16 %vecext173 to i32
  %cmp175 = icmp slt i32 %conv174, 0
  br i1 %cmp175, label %cond.true177, label %cond.false178

cond.true177:                                     ; preds = %cond.false171
  br label %cond.end183

cond.false178:                                    ; preds = %cond.false171
  %66 = load <32 x i16>, ptr %b_, align 64, !tbaa !16, !llvm.access.group !17
  %67 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %add179 = add i64 24, %67
  %vecext180 = extractelement <32 x i16> %66, i64 %add179
  %conv181 = trunc i16 %vecext180 to i8
  %conv182 = zext i8 %conv181 to i32
  br label %cond.end183

cond.end183:                                      ; preds = %cond.false178, %cond.true177
  %cond184 = phi i32 [ 0, %cond.true177 ], [ %conv182, %cond.false178 ]
  br label %cond.end185

cond.end185:                                      ; preds = %cond.end183, %cond.true170
  %cond186 = phi i32 [ 255, %cond.true170 ], [ %cond184, %cond.end183 ]
  %conv187 = trunc i32 %cond186 to i8
  %68 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %add188 = add i64 48, %68
  %add189 = add i64 %add188, 8
  %69 = load <64 x i8>, ptr %r_, align 64, !llvm.access.group !17
  %vecins190 = insertelement <64 x i8> %69, i8 %conv187, i64 %add189
  store <64 x i8> %vecins190, ptr %r_, align 64, !llvm.access.group !17
  br label %omp.body.continue

omp.body.continue:                                ; preds = %cond.end185
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %70 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !17
  %add191 = add i64 %70, 1
  store i64 %add191, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !17
  br label %omp.inner.for.cond, !llvm.loop !18

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 8, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #9
  %call = call <8 x i64> @simde__m512i_from_private(ptr noundef byval(%union.simde__m512i_private) align 64 %r_)
  call void @llvm.lifetime.end.p0(i64 8, ptr %octet_point) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %quarter_point) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %halfway_point) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr %b_) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr %a_) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr %r_) #9
  ret <8 x i64> %call
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_x86_assert_equal_u8x64_(ptr noundef byval(<8 x i64>) align 64 %0, ptr noundef byval(<8 x i64>) align 64 %1, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %a.addr = alloca <8 x i64>, align 64
  %b.addr = alloca <8 x i64>, align 64
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [64 x i8], align 16
  %b_ = alloca [64 x i8], align 16
  %simde_r_ = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %simde_r_1 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %indirect-arg-temp4 = alloca <8 x i64>, align 64
  %a = load <8 x i64>, ptr %0, align 64, !tbaa !16
  %b = load <8 x i64>, ptr %1, align 64, !tbaa !16
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %b, ptr %b.addr, align 64, !tbaa !16
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 64, ptr %a_) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr %b_) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_) #9
  %arraydecay = getelementptr inbounds [64 x i8], ptr %a_, i64 0, i64 0
  store ptr %arraydecay, ptr %simde_r_, align 8, !tbaa !9
  %2 = load ptr, ptr %simde_r_, align 8, !tbaa !9
  store ptr %2, ptr %tmp, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_) #9
  %3 = load ptr, ptr %tmp, align 8, !tbaa !9
  %4 = load <8 x i64>, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %4, ptr %indirect-arg-temp, align 64, !tbaa !16
  call void @simde_mm512_storeu_si512(ptr noundef %3, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_1) #9
  %arraydecay2 = getelementptr inbounds [64 x i8], ptr %b_, i64 0, i64 0
  store ptr %arraydecay2, ptr %simde_r_1, align 8, !tbaa !9
  %5 = load ptr, ptr %simde_r_1, align 8, !tbaa !9
  store ptr %5, ptr %tmp3, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_1) #9
  %6 = load ptr, ptr %tmp3, align 8, !tbaa !9
  %7 = load <8 x i64>, ptr %b.addr, align 64, !tbaa !16
  store <8 x i64> %7, ptr %indirect-arg-temp4, align 64, !tbaa !16
  call void @simde_mm512_storeu_si512(ptr noundef %6, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp4)
  %arraydecay5 = getelementptr inbounds [64 x i8], ptr %a_, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [64 x i8], ptr %b_, i64 0, i64 0
  %8 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %9 = load i32, ptr %line.addr, align 4, !tbaa !5
  %10 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %11 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vu8_(i64 noundef 64, ptr noundef %arraydecay5, ptr noundef %arraydecay6, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11)
  call void @llvm.lifetime.end.p0(i64 64, ptr %b_) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr %a_) #9
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde__m512i_to_private(ptr noalias sret(%union.simde__m512i_private) align 64 %agg.result, ptr noundef byval(<8 x i64>) align 64 %0) #5 {
entry:
  %v.addr = alloca <8 x i64>, align 64
  %v = load <8 x i64>, ptr %0, align 64, !tbaa !16
  store <8 x i64> %v, ptr %v.addr, align 64, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 64 %agg.result, ptr align 64 %v.addr, i64 64, i1 false)
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i64> @simde__m512i_from_private(ptr noundef byval(%union.simde__m512i_private) align 64 %v) #4 {
entry:
  %r = alloca <8 x i64>, align 64
  call void @llvm.lifetime.start.p0(i64 64, ptr %r) #9
  call void @llvm.memcpy.p0.p0.i64(ptr align 64 %r, ptr align 64 %v, i64 64, i1 false)
  %0 = load <8 x i64>, ptr %r, align 64, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 64, ptr %r) #9
  ret <8 x i64> %0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde_mm512_storeu_si512(ptr noundef %mem_addr, ptr noundef byval(<8 x i64>) align 64 %0) #5 {
entry:
  %mem_addr.addr = alloca ptr, align 8
  %a.addr = alloca <8 x i64>, align 64
  %a = load <8 x i64>, ptr %0, align 64, !tbaa !16
  store ptr %mem_addr, ptr %mem_addr.addr, align 8, !tbaa !9
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  %1 = load ptr, ptr %mem_addr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 64 %a.addr, i64 64, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_assert_equal_vu8_(i64 noundef %vec_len, ptr noundef %a, ptr noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #9
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
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %5
  %6 = load i8, ptr %arrayidx, align 1, !tbaa !16
  %conv = zext i8 %6 to i32
  %7 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx1 = getelementptr inbounds i8, ptr %7, i64 %8
  %9 = load i8, ptr %arrayidx1, align 1, !tbaa !16
  %conv2 = zext i8 %9 to i32
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
  %arrayidx7 = getelementptr inbounds i8, ptr %16, i64 %17
  %18 = load i8, ptr %arrayidx7, align 1, !tbaa !16
  %conv8 = zext i8 %18 to i32
  %19 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %20 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx9 = getelementptr inbounds i8, ptr %19, i64 %20
  %21 = load i8, ptr %arrayidx9, align 1, !tbaa !16
  %conv10 = zext i8 %21 to i32
  call void (ptr, ...) @simde_test_debug_printf_(ptr noundef @.str.8, ptr noundef %10, i32 noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14, i64 noundef %15, i32 noundef %conv8, i32 noundef %conv10)
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #9
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
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: nounwind uwtable
define internal void @simde_test_debug_printf_(ptr noundef %format, ...) #0 {
entry:
  %format.addr = alloca ptr, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %format, ptr %format.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 24, ptr %ap) #9
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
  call void @llvm.lifetime.end.p0(i64 24, ptr %ap) #9
  ret void
}

declare i32 @vfprintf(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @fflush(ptr noundef) #2

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i64> @simde_mm512_packus_epi32(ptr noundef byval(<8 x i64>) align 64 %0, ptr noundef byval(<8 x i64>) align 64 %1) #4 {
entry:
  %a.addr = alloca <8 x i64>, align 64
  %b.addr = alloca <8 x i64>, align 64
  %r_ = alloca %union.simde__m512i_private, align 64
  %a_ = alloca %union.simde__m512i_private, align 64
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %b_ = alloca %union.simde__m512i_private, align 64
  %indirect-arg-temp1 = alloca <8 x i64>, align 64
  %halfway_point = alloca i64, align 8
  %quarter_point = alloca i64, align 8
  %octet_point = alloca i64, align 8
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  %a = load <8 x i64>, ptr %0, align 64, !tbaa !16
  %b = load <8 x i64>, ptr %1, align 64, !tbaa !16
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %b, ptr %b.addr, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %r_) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr %a_) #9
  %2 = load <8 x i64>, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %2, ptr %indirect-arg-temp, align 64, !tbaa !16
  call void @simde__m512i_to_private(ptr sret(%union.simde__m512i_private) align 64 %a_, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 64, ptr %b_) #9
  %3 = load <8 x i64>, ptr %b.addr, align 64, !tbaa !16
  store <8 x i64> %3, ptr %indirect-arg-temp1, align 64, !tbaa !16
  call void @simde__m512i_to_private(ptr sret(%union.simde__m512i_private) align 64 %b_, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp1)
  call void @llvm.lifetime.start.p0(i64 8, ptr %halfway_point) #9
  store i64 16, ptr %halfway_point, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %quarter_point) #9
  store i64 8, ptr %quarter_point, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %octet_point) #9
  store i64 4, ptr %octet_point, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #9
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #9
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %4 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !21
  %cmp = icmp ult i64 %4, 4
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %5 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !21
  %mul = mul i64 %5, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !21
  %6 = load <16 x i32>, ptr %a_, align 64, !tbaa !16, !llvm.access.group !21
  %7 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !21
  %vecext = extractelement <16 x i32> %6, i64 %7
  %cmp2 = icmp sgt i32 %vecext, 65535
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %omp.inner.for.body
  br label %cond.end9

cond.false:                                       ; preds = %omp.inner.for.body
  %8 = load <16 x i32>, ptr %a_, align 64, !tbaa !16, !llvm.access.group !21
  %9 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !21
  %vecext3 = extractelement <16 x i32> %8, i64 %9
  %cmp4 = icmp slt i32 %vecext3, 0
  br i1 %cmp4, label %cond.true5, label %cond.false6

cond.true5:                                       ; preds = %cond.false
  br label %cond.end

cond.false6:                                      ; preds = %cond.false
  %10 = load <16 x i32>, ptr %a_, align 64, !tbaa !16, !llvm.access.group !21
  %11 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !21
  %vecext7 = extractelement <16 x i32> %10, i64 %11
  %conv = trunc i32 %vecext7 to i16
  %conv8 = zext i16 %conv to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false6, %cond.true5
  %cond = phi i32 [ 0, %cond.true5 ], [ %conv8, %cond.false6 ]
  br label %cond.end9

cond.end9:                                        ; preds = %cond.end, %cond.true
  %cond10 = phi i32 [ 65535, %cond.true ], [ %cond, %cond.end ]
  %conv11 = trunc i32 %cond10 to i16
  %12 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !21
  %13 = load <32 x i16>, ptr %r_, align 64, !llvm.access.group !21
  %vecins = insertelement <32 x i16> %13, i16 %conv11, i64 %12
  store <32 x i16> %vecins, ptr %r_, align 64, !llvm.access.group !21
  %14 = load <16 x i32>, ptr %b_, align 64, !tbaa !16, !llvm.access.group !21
  %15 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !21
  %vecext12 = extractelement <16 x i32> %14, i64 %15
  %cmp13 = icmp sgt i32 %vecext12, 65535
  br i1 %cmp13, label %cond.true15, label %cond.false16

cond.true15:                                      ; preds = %cond.end9
  br label %cond.end27

cond.false16:                                     ; preds = %cond.end9
  %16 = load <16 x i32>, ptr %b_, align 64, !tbaa !16, !llvm.access.group !21
  %17 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !21
  %vecext17 = extractelement <16 x i32> %16, i64 %17
  %cmp18 = icmp slt i32 %vecext17, 0
  br i1 %cmp18, label %cond.true20, label %cond.false21

cond.true20:                                      ; preds = %cond.false16
  br label %cond.end25

cond.false21:                                     ; preds = %cond.false16
  %18 = load <16 x i32>, ptr %b_, align 64, !tbaa !16, !llvm.access.group !21
  %19 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !21
  %vecext22 = extractelement <16 x i32> %18, i64 %19
  %conv23 = trunc i32 %vecext22 to i16
  %conv24 = zext i16 %conv23 to i32
  br label %cond.end25

cond.end25:                                       ; preds = %cond.false21, %cond.true20
  %cond26 = phi i32 [ 0, %cond.true20 ], [ %conv24, %cond.false21 ]
  br label %cond.end27

cond.end27:                                       ; preds = %cond.end25, %cond.true15
  %cond28 = phi i32 [ 65535, %cond.true15 ], [ %cond26, %cond.end25 ]
  %conv29 = trunc i32 %cond28 to i16
  %20 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !21
  %add30 = add i64 %20, 4
  %21 = load <32 x i16>, ptr %r_, align 64, !llvm.access.group !21
  %vecins31 = insertelement <32 x i16> %21, i16 %conv29, i64 %add30
  store <32 x i16> %vecins31, ptr %r_, align 64, !llvm.access.group !21
  %22 = load <16 x i32>, ptr %a_, align 64, !tbaa !16, !llvm.access.group !21
  %23 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !21
  %add32 = add i64 4, %23
  %vecext33 = extractelement <16 x i32> %22, i64 %add32
  %cmp34 = icmp sgt i32 %vecext33, 65535
  br i1 %cmp34, label %cond.true36, label %cond.false37

cond.true36:                                      ; preds = %cond.end27
  br label %cond.end50

cond.false37:                                     ; preds = %cond.end27
  %24 = load <16 x i32>, ptr %a_, align 64, !tbaa !16, !llvm.access.group !21
  %25 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !21
  %add38 = add i64 4, %25
  %vecext39 = extractelement <16 x i32> %24, i64 %add38
  %cmp40 = icmp slt i32 %vecext39, 0
  br i1 %cmp40, label %cond.true42, label %cond.false43

cond.true42:                                      ; preds = %cond.false37
  br label %cond.end48

cond.false43:                                     ; preds = %cond.false37
  %26 = load <16 x i32>, ptr %a_, align 64, !tbaa !16, !llvm.access.group !21
  %27 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !21
  %add44 = add i64 4, %27
  %vecext45 = extractelement <16 x i32> %26, i64 %add44
  %conv46 = trunc i32 %vecext45 to i16
  %conv47 = zext i16 %conv46 to i32
  br label %cond.end48

cond.end48:                                       ; preds = %cond.false43, %cond.true42
  %cond49 = phi i32 [ 0, %cond.true42 ], [ %conv47, %cond.false43 ]
  br label %cond.end50

cond.end50:                                       ; preds = %cond.end48, %cond.true36
  %cond51 = phi i32 [ 65535, %cond.true36 ], [ %cond49, %cond.end48 ]
  %conv52 = trunc i32 %cond51 to i16
  %28 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !21
  %add53 = add i64 8, %28
  %29 = load <32 x i16>, ptr %r_, align 64, !llvm.access.group !21
  %vecins54 = insertelement <32 x i16> %29, i16 %conv52, i64 %add53
  store <32 x i16> %vecins54, ptr %r_, align 64, !llvm.access.group !21
  %30 = load <16 x i32>, ptr %b_, align 64, !tbaa !16, !llvm.access.group !21
  %31 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !21
  %add55 = add i64 4, %31
  %vecext56 = extractelement <16 x i32> %30, i64 %add55
  %cmp57 = icmp sgt i32 %vecext56, 65535
  br i1 %cmp57, label %cond.true59, label %cond.false60

cond.true59:                                      ; preds = %cond.end50
  br label %cond.end73

cond.false60:                                     ; preds = %cond.end50
  %32 = load <16 x i32>, ptr %b_, align 64, !tbaa !16, !llvm.access.group !21
  %33 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !21
  %add61 = add i64 4, %33
  %vecext62 = extractelement <16 x i32> %32, i64 %add61
  %cmp63 = icmp slt i32 %vecext62, 0
  br i1 %cmp63, label %cond.true65, label %cond.false66

cond.true65:                                      ; preds = %cond.false60
  br label %cond.end71

cond.false66:                                     ; preds = %cond.false60
  %34 = load <16 x i32>, ptr %b_, align 64, !tbaa !16, !llvm.access.group !21
  %35 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !21
  %add67 = add i64 4, %35
  %vecext68 = extractelement <16 x i32> %34, i64 %add67
  %conv69 = trunc i32 %vecext68 to i16
  %conv70 = zext i16 %conv69 to i32
  br label %cond.end71

cond.end71:                                       ; preds = %cond.false66, %cond.true65
  %cond72 = phi i32 [ 0, %cond.true65 ], [ %conv70, %cond.false66 ]
  br label %cond.end73

cond.end73:                                       ; preds = %cond.end71, %cond.true59
  %cond74 = phi i32 [ 65535, %cond.true59 ], [ %cond72, %cond.end71 ]
  %conv75 = trunc i32 %cond74 to i16
  %36 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !21
  %add76 = add i64 8, %36
  %add77 = add i64 %add76, 4
  %37 = load <32 x i16>, ptr %r_, align 64, !llvm.access.group !21
  %vecins78 = insertelement <32 x i16> %37, i16 %conv75, i64 %add77
  store <32 x i16> %vecins78, ptr %r_, align 64, !llvm.access.group !21
  %38 = load <16 x i32>, ptr %a_, align 64, !tbaa !16, !llvm.access.group !21
  %39 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !21
  %add79 = add i64 8, %39
  %vecext80 = extractelement <16 x i32> %38, i64 %add79
  %cmp81 = icmp sgt i32 %vecext80, 65535
  br i1 %cmp81, label %cond.true83, label %cond.false84

cond.true83:                                      ; preds = %cond.end73
  br label %cond.end97

cond.false84:                                     ; preds = %cond.end73
  %40 = load <16 x i32>, ptr %a_, align 64, !tbaa !16, !llvm.access.group !21
  %41 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !21
  %add85 = add i64 8, %41
  %vecext86 = extractelement <16 x i32> %40, i64 %add85
  %cmp87 = icmp slt i32 %vecext86, 0
  br i1 %cmp87, label %cond.true89, label %cond.false90

cond.true89:                                      ; preds = %cond.false84
  br label %cond.end95

cond.false90:                                     ; preds = %cond.false84
  %42 = load <16 x i32>, ptr %a_, align 64, !tbaa !16, !llvm.access.group !21
  %43 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !21
  %add91 = add i64 8, %43
  %vecext92 = extractelement <16 x i32> %42, i64 %add91
  %conv93 = trunc i32 %vecext92 to i16
  %conv94 = zext i16 %conv93 to i32
  br label %cond.end95

cond.end95:                                       ; preds = %cond.false90, %cond.true89
  %cond96 = phi i32 [ 0, %cond.true89 ], [ %conv94, %cond.false90 ]
  br label %cond.end97

cond.end97:                                       ; preds = %cond.end95, %cond.true83
  %cond98 = phi i32 [ 65535, %cond.true83 ], [ %cond96, %cond.end95 ]
  %conv99 = trunc i32 %cond98 to i16
  %44 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !21
  %add100 = add i64 16, %44
  %45 = load <32 x i16>, ptr %r_, align 64, !llvm.access.group !21
  %vecins101 = insertelement <32 x i16> %45, i16 %conv99, i64 %add100
  store <32 x i16> %vecins101, ptr %r_, align 64, !llvm.access.group !21
  %46 = load <16 x i32>, ptr %b_, align 64, !tbaa !16, !llvm.access.group !21
  %47 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !21
  %add102 = add i64 8, %47
  %vecext103 = extractelement <16 x i32> %46, i64 %add102
  %cmp104 = icmp sgt i32 %vecext103, 65535
  br i1 %cmp104, label %cond.true106, label %cond.false107

cond.true106:                                     ; preds = %cond.end97
  br label %cond.end120

cond.false107:                                    ; preds = %cond.end97
  %48 = load <16 x i32>, ptr %b_, align 64, !tbaa !16, !llvm.access.group !21
  %49 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !21
  %add108 = add i64 8, %49
  %vecext109 = extractelement <16 x i32> %48, i64 %add108
  %cmp110 = icmp slt i32 %vecext109, 0
  br i1 %cmp110, label %cond.true112, label %cond.false113

cond.true112:                                     ; preds = %cond.false107
  br label %cond.end118

cond.false113:                                    ; preds = %cond.false107
  %50 = load <16 x i32>, ptr %b_, align 64, !tbaa !16, !llvm.access.group !21
  %51 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !21
  %add114 = add i64 8, %51
  %vecext115 = extractelement <16 x i32> %50, i64 %add114
  %conv116 = trunc i32 %vecext115 to i16
  %conv117 = zext i16 %conv116 to i32
  br label %cond.end118

cond.end118:                                      ; preds = %cond.false113, %cond.true112
  %cond119 = phi i32 [ 0, %cond.true112 ], [ %conv117, %cond.false113 ]
  br label %cond.end120

cond.end120:                                      ; preds = %cond.end118, %cond.true106
  %cond121 = phi i32 [ 65535, %cond.true106 ], [ %cond119, %cond.end118 ]
  %conv122 = trunc i32 %cond121 to i16
  %52 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !21
  %add123 = add i64 16, %52
  %add124 = add i64 %add123, 4
  %53 = load <32 x i16>, ptr %r_, align 64, !llvm.access.group !21
  %vecins125 = insertelement <32 x i16> %53, i16 %conv122, i64 %add124
  store <32 x i16> %vecins125, ptr %r_, align 64, !llvm.access.group !21
  %54 = load <16 x i32>, ptr %a_, align 64, !tbaa !16, !llvm.access.group !21
  %55 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !21
  %add126 = add i64 12, %55
  %vecext127 = extractelement <16 x i32> %54, i64 %add126
  %cmp128 = icmp sgt i32 %vecext127, 65535
  br i1 %cmp128, label %cond.true130, label %cond.false131

cond.true130:                                     ; preds = %cond.end120
  br label %cond.end144

cond.false131:                                    ; preds = %cond.end120
  %56 = load <16 x i32>, ptr %a_, align 64, !tbaa !16, !llvm.access.group !21
  %57 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !21
  %add132 = add i64 12, %57
  %vecext133 = extractelement <16 x i32> %56, i64 %add132
  %cmp134 = icmp slt i32 %vecext133, 0
  br i1 %cmp134, label %cond.true136, label %cond.false137

cond.true136:                                     ; preds = %cond.false131
  br label %cond.end142

cond.false137:                                    ; preds = %cond.false131
  %58 = load <16 x i32>, ptr %a_, align 64, !tbaa !16, !llvm.access.group !21
  %59 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !21
  %add138 = add i64 12, %59
  %vecext139 = extractelement <16 x i32> %58, i64 %add138
  %conv140 = trunc i32 %vecext139 to i16
  %conv141 = zext i16 %conv140 to i32
  br label %cond.end142

cond.end142:                                      ; preds = %cond.false137, %cond.true136
  %cond143 = phi i32 [ 0, %cond.true136 ], [ %conv141, %cond.false137 ]
  br label %cond.end144

cond.end144:                                      ; preds = %cond.end142, %cond.true130
  %cond145 = phi i32 [ 65535, %cond.true130 ], [ %cond143, %cond.end142 ]
  %conv146 = trunc i32 %cond145 to i16
  %60 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !21
  %add147 = add i64 24, %60
  %61 = load <32 x i16>, ptr %r_, align 64, !llvm.access.group !21
  %vecins148 = insertelement <32 x i16> %61, i16 %conv146, i64 %add147
  store <32 x i16> %vecins148, ptr %r_, align 64, !llvm.access.group !21
  %62 = load <16 x i32>, ptr %b_, align 64, !tbaa !16, !llvm.access.group !21
  %63 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !21
  %add149 = add i64 12, %63
  %vecext150 = extractelement <16 x i32> %62, i64 %add149
  %cmp151 = icmp sgt i32 %vecext150, 65535
  br i1 %cmp151, label %cond.true153, label %cond.false154

cond.true153:                                     ; preds = %cond.end144
  br label %cond.end167

cond.false154:                                    ; preds = %cond.end144
  %64 = load <16 x i32>, ptr %b_, align 64, !tbaa !16, !llvm.access.group !21
  %65 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !21
  %add155 = add i64 12, %65
  %vecext156 = extractelement <16 x i32> %64, i64 %add155
  %cmp157 = icmp slt i32 %vecext156, 0
  br i1 %cmp157, label %cond.true159, label %cond.false160

cond.true159:                                     ; preds = %cond.false154
  br label %cond.end165

cond.false160:                                    ; preds = %cond.false154
  %66 = load <16 x i32>, ptr %b_, align 64, !tbaa !16, !llvm.access.group !21
  %67 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !21
  %add161 = add i64 12, %67
  %vecext162 = extractelement <16 x i32> %66, i64 %add161
  %conv163 = trunc i32 %vecext162 to i16
  %conv164 = zext i16 %conv163 to i32
  br label %cond.end165

cond.end165:                                      ; preds = %cond.false160, %cond.true159
  %cond166 = phi i32 [ 0, %cond.true159 ], [ %conv164, %cond.false160 ]
  br label %cond.end167

cond.end167:                                      ; preds = %cond.end165, %cond.true153
  %cond168 = phi i32 [ 65535, %cond.true153 ], [ %cond166, %cond.end165 ]
  %conv169 = trunc i32 %cond168 to i16
  %68 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !21
  %add170 = add i64 24, %68
  %add171 = add i64 %add170, 4
  %69 = load <32 x i16>, ptr %r_, align 64, !llvm.access.group !21
  %vecins172 = insertelement <32 x i16> %69, i16 %conv169, i64 %add171
  store <32 x i16> %vecins172, ptr %r_, align 64, !llvm.access.group !21
  br label %omp.body.continue

omp.body.continue:                                ; preds = %cond.end167
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %70 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !21
  %add173 = add i64 %70, 1
  store i64 %add173, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !21
  br label %omp.inner.for.cond, !llvm.loop !22

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 4, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #9
  %call = call <8 x i64> @simde__m512i_from_private(ptr noundef byval(%union.simde__m512i_private) align 64 %r_)
  call void @llvm.lifetime.end.p0(i64 8, ptr %octet_point) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %quarter_point) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %halfway_point) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr %b_) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr %a_) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr %r_) #9
  ret <8 x i64> %call
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_x86_assert_equal_u16x32_(ptr noundef byval(<8 x i64>) align 64 %0, ptr noundef byval(<8 x i64>) align 64 %1, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %a.addr = alloca <8 x i64>, align 64
  %b.addr = alloca <8 x i64>, align 64
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [32 x i16], align 16
  %b_ = alloca [32 x i16], align 16
  %simde_r_ = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %simde_r_1 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %indirect-arg-temp4 = alloca <8 x i64>, align 64
  %a = load <8 x i64>, ptr %0, align 64, !tbaa !16
  %b = load <8 x i64>, ptr %1, align 64, !tbaa !16
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %b, ptr %b.addr, align 64, !tbaa !16
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 64, ptr %a_) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr %b_) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_) #9
  %arraydecay = getelementptr inbounds [32 x i16], ptr %a_, i64 0, i64 0
  store ptr %arraydecay, ptr %simde_r_, align 8, !tbaa !9
  %2 = load ptr, ptr %simde_r_, align 8, !tbaa !9
  store ptr %2, ptr %tmp, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_) #9
  %3 = load ptr, ptr %tmp, align 8, !tbaa !9
  %4 = load <8 x i64>, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %4, ptr %indirect-arg-temp, align 64, !tbaa !16
  call void @simde_mm512_storeu_si512(ptr noundef %3, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_1) #9
  %arraydecay2 = getelementptr inbounds [32 x i16], ptr %b_, i64 0, i64 0
  store ptr %arraydecay2, ptr %simde_r_1, align 8, !tbaa !9
  %5 = load ptr, ptr %simde_r_1, align 8, !tbaa !9
  store ptr %5, ptr %tmp3, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_1) #9
  %6 = load ptr, ptr %tmp3, align 8, !tbaa !9
  %7 = load <8 x i64>, ptr %b.addr, align 64, !tbaa !16
  store <8 x i64> %7, ptr %indirect-arg-temp4, align 64, !tbaa !16
  call void @simde_mm512_storeu_si512(ptr noundef %6, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp4)
  %arraydecay5 = getelementptr inbounds [32 x i16], ptr %a_, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [32 x i16], ptr %b_, i64 0, i64 0
  %8 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %9 = load i32, ptr %line.addr, align 4, !tbaa !5
  %10 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %11 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vu16_(i64 noundef 32, ptr noundef %arraydecay5, ptr noundef %arraydecay6, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11)
  call void @llvm.lifetime.end.p0(i64 64, ptr %b_) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr %a_) #9
  ret i32 %call
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #9
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
  %6 = load i16, ptr %arrayidx, align 2, !tbaa !24
  %conv = zext i16 %6 to i32
  %7 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx1 = getelementptr inbounds i16, ptr %7, i64 %8
  %9 = load i16, ptr %arrayidx1, align 2, !tbaa !24
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
  %18 = load i16, ptr %arrayidx7, align 2, !tbaa !24
  %conv8 = zext i16 %18 to i32
  %19 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %20 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx9 = getelementptr inbounds i16, ptr %19, i64 %20
  %21 = load i16, ptr %arrayidx9, align 2, !tbaa !24
  %conv10 = zext i16 %21 to i32
  call void (ptr, ...) @simde_test_debug_printf_(ptr noundef @.str.8, ptr noundef %10, i32 noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14, i64 noundef %15, i32 noundef %conv8, i32 noundef %conv10)
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #9
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
declare void @llvm.va_start.p0(ptr) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { alwaysinline nounwind uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { alwaysinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }

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
!21 = distinct !{}
!22 = distinct !{!22, !23, !20}
!23 = !{!"llvm.loop.parallel_accesses", !21}
!24 = !{!25, !25, i64 0}
!25 = !{!"short", !7, i64 0}

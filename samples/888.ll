; ModuleID = 'samples/888.bc'
source_filename = "../spack-src/test/x86/avx512/slli.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { ptr, ptr }
%struct.anon.0 = type { [32 x i16], [32 x i16], [32 x i16], [32 x i16], [32 x i16], [32 x i16] }
%struct.anon.1 = type { <8 x i64>, i32, <8 x i64> }
%struct.anon.2 = type { <8 x i64>, i32, <8 x i64> }
%struct.simde_mm512_loadu_si512_s = type { <8 x i64> }
%union.simde__m512i_private = type { <64 x i8> }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@stdout = external global ptr, align 8
@.str = private unnamed_addr constant [8 x i8] c"1..%zu\0A\00", align 1
@test_suite_tests = internal constant [3 x %struct.anon] [%struct.anon { ptr @test_simde_mm512_slli_epi16, ptr @.str.3 }, %struct.anon { ptr @test_simde_mm512_slli_epi32, ptr @.str.4 }, %struct.anon { ptr @test_simde_mm512_slli_epi64, ptr @.str.5 }], align 16
@.str.1 = private unnamed_addr constant [20 x i8] c"not ok %zu slli/%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"ok %zu slli/%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"mm512_slli_epi16\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"mm512_slli_epi32\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"mm512_slli_epi64\00", align 1
@test_simde_mm512_slli_epi16.test_vec = internal constant [8 x %struct.anon.0] [%struct.anon.0 { [32 x i16] [i16 -4513, i16 -32064, i16 -20539, i16 16953, i16 -19443, i16 8904, i16 17111, i16 -18058, i16 9034, i16 -18739, i16 -25271, i16 4847, i16 -27918, i16 -9400, i16 -4204, i16 -3107, i16 -24867, i16 -23691, i16 -20915, i16 23269, i16 -21149, i16 14973, i16 -3088, i16 15091, i16 -16362, i16 24561, i16 -8099, i16 20594, i16 -17806, i16 1579, i16 2218, i16 -30727], [32 x i16] [i16 -4513, i16 -32064, i16 -20539, i16 16953, i16 -19443, i16 8904, i16 17111, i16 -18058, i16 9034, i16 -18739, i16 -25271, i16 4847, i16 -27918, i16 -9400, i16 -4204, i16 -3107, i16 -24867, i16 -23691, i16 -20915, i16 23269, i16 -21149, i16 14973, i16 -3088, i16 15091, i16 -16362, i16 24561, i16 -8099, i16 20594, i16 -17806, i16 1579, i16 2218, i16 -30727], [32 x i16] [i16 29432, i16 5632, i16 32296, i16 4552, i16 -24472, i16 5696, i16 5816, i16 -13392, i16 6736, i16 -18840, i16 -5560, i16 -26760, i16 -26736, i16 -9664, i16 31904, i16 -24856, i16 -2328, i16 7080, i16 29288, i16 -10456, i16 27416, i16 -11288, i16 -24704, i16 -10344, i16 176, i16 -120, i16 744, i16 -31856, i16 -11376, i16 12632, i16 17744, i16 16328], [32 x i16] [i16 12160, i16 24576, i16 -7552, i16 7296, i16 1664, i16 25600, i16 27520, i16 -17664, i16 -23296, i16 26240, i16 -23424, i16 30592, i16 30976, i16 -23552, i16 -13824, i16 -4480, i16 28288, i16 -17792, i16 9856, i16 29312, i16 -20096, i16 16000, i16 -2048, i16 31104, i16 2816, i16 -1920, i16 11904, i16 14592, i16 14592, i16 5504, i16 21760, i16 -896], [32 x i16] [i16 -8192, i16 0, i16 -24576, i16 8192, i16 -24576, i16 0, i16 -8192, i16 -16384, i16 16384, i16 -24576, i16 8192, i16 -8192, i16 16384, i16 0, i16 -32768, i16 -24576, i16 -24576, i16 -24576, i16 -24576, i16 -24576, i16 24576, i16 -24576, i16 0, i16 24576, i16 -16384, i16 8192, i16 -24576, i16 16384, i16 16384, i16 24576, i16 16384, i16 8192], [32 x i16] zeroinitializer }, %struct.anon.0 { [32 x i16] [i16 28582, i16 -3030, i16 3869, i16 -32690, i16 -13379, i16 -21062, i16 -20801, i16 -10777, i16 -10130, i16 -13259, i16 -22600, i16 11036, i16 18273, i16 2865, i16 11087, i16 -2413, i16 -16998, i16 -18454, i16 14541, i16 -30152, i16 -3580, i16 -15561, i16 7840, i16 3992, i16 -12809, i16 -20517, i16 -2188, i16 -10534, i16 3134, i16 -29215, i16 29751, i16 -11901], [32 x i16] [i16 28582, i16 -3030, i16 3869, i16 -32690, i16 -13379, i16 -21062, i16 -20801, i16 -10777, i16 -10130, i16 -13259, i16 -22600, i16 11036, i16 18273, i16 2865, i16 11087, i16 -2413, i16 -16998, i16 -18454, i16 14541, i16 -30152, i16 -3580, i16 -15561, i16 7840, i16 3992, i16 -12809, i16 -20517, i16 -2188, i16 -10534, i16 3134, i16 -29215, i16 29751, i16 -11901], [32 x i16] [i16 32048, i16 -24240, i16 30952, i16 624, i16 24040, i16 28112, i16 30200, i16 -20680, i16 -15504, i16 25000, i16 15808, i16 22752, i16 15112, i16 22920, i16 23160, i16 -19304, i16 -4912, i16 -16560, i16 -14744, i16 20928, i16 -28640, i16 6584, i16 -2816, i16 31936, i16 28600, i16 32472, i16 -17504, i16 -18736, i16 25072, i16 28424, i16 -24136, i16 -29672], [32 x i16] [i16 -11520, i16 5376, i16 -29056, i16 9984, i16 -8576, i16 -8960, i16 24448, i16 -3200, i16 14080, i16 6784, i16 -9216, i16 -29184, i16 -20352, i16 -26496, i16 -22656, i16 18816, i16 -13056, i16 -2816, i16 26240, i16 7168, i16 512, i16 -25728, i16 20480, i16 -13312, i16 -1152, i16 -4736, i16 -17920, i16 27904, i16 7936, i16 -3968, i16 7040, i16 -16000], [32 x i16] [i16 -16384, i16 16384, i16 -24576, i16 -16384, i16 -24576, i16 16384, i16 -8192, i16 -8192, i16 -16384, i16 -24576, i16 0, i16 -32768, i16 8192, i16 8192, i16 -8192, i16 24576, i16 16384, i16 16384, i16 -24576, i16 0, i16 -32768, i16 -8192, i16 0, i16 0, i16 -8192, i16 24576, i16 -32768, i16 16384, i16 -16384, i16 8192, i16 -8192, i16 24576], [32 x i16] zeroinitializer }, %struct.anon.0 { [32 x i16] [i16 27954, i16 -120, i16 -16218, i16 -21879, i16 -16205, i16 21357, i16 1502, i16 -10910, i16 15827, i16 18309, i16 24372, i16 29213, i16 -149, i16 -24064, i16 -31885, i16 -23181, i16 -783, i16 -26716, i16 11708, i16 28481, i16 -20755, i16 -13117, i16 9651, i16 -31071, i16 9827, i16 -26674, i16 -5242, i16 -3830, i16 2794, i16 24212, i16 1933, i16 32259], [32 x i16] [i16 27954, i16 -120, i16 -16218, i16 -21879, i16 -16205, i16 21357, i16 1502, i16 -10910, i16 15827, i16 18309, i16 24372, i16 29213, i16 -149, i16 -24064, i16 -31885, i16 -23181, i16 -783, i16 -26716, i16 11708, i16 28481, i16 -20755, i16 -13117, i16 9651, i16 -31071, i16 9827, i16 -26674, i16 -5242, i16 -3830, i16 2794, i16 24212, i16 1933, i16 32259], [32 x i16] [i16 27024, i16 -960, i16 1328, i16 21576, i16 1432, i16 -25752, i16 12016, i16 -21744, i16 -4456, i16 15400, i16 -1632, i16 -28440, i16 -1192, i16 4096, i16 7064, i16 11160, i16 -6264, i16 -17120, i16 28128, i16 31240, i16 30568, i16 26136, i16 11672, i16 13576, i16 13080, i16 -16784, i16 23600, i16 -30640, i16 22352, i16 -2912, i16 15464, i16 -4072], [32 x i16] [i16 -26368, i16 -15360, i16 21248, i16 17536, i16 22912, i16 -18816, i16 -4352, i16 -20224, i16 -5760, i16 -15744, i16 -26112, i16 3712, i16 -19072, i16 0, i16 -18048, i16 -18048, i16 30848, i16 -11776, i16 -8704, i16 -24448, i16 30336, i16 24960, i16 -9856, i16 20608, i16 12672, i16 -6400, i16 -15616, i16 -31488, i16 29952, i16 18944, i16 -14720, i16 384], [32 x i16] [i16 16384, i16 0, i16 -16384, i16 8192, i16 24576, i16 -24576, i16 -16384, i16 16384, i16 24576, i16 -24576, i16 -32768, i16 -24576, i16 24576, i16 0, i16 24576, i16 24576, i16 8192, i16 -32768, i16 -32768, i16 8192, i16 -24576, i16 24576, i16 24576, i16 8192, i16 24576, i16 -16384, i16 -16384, i16 16384, i16 16384, i16 -32768, i16 -24576, i16 24576], [32 x i16] zeroinitializer }, %struct.anon.0 { [32 x i16] [i16 -22525, i16 -16363, i16 22229, i16 -15569, i16 -3580, i16 -18289, i16 12312, i16 31550, i16 3159, i16 -8942, i16 7416, i16 -7474, i16 25126, i16 -19392, i16 17514, i16 27954, i16 18668, i16 -16083, i16 23966, i16 -23676, i16 4943, i16 26459, i16 -26300, i16 -25630, i16 -2650, i16 -24968, i16 17937, i16 14464, i16 -15959, i16 5100, i16 7685, i16 -3712], [32 x i16] [i16 -22525, i16 -16363, i16 22229, i16 -15569, i16 -3580, i16 -18289, i16 12312, i16 31550, i16 3159, i16 -8942, i16 7416, i16 -7474, i16 25126, i16 -19392, i16 17514, i16 27954, i16 18668, i16 -16083, i16 23966, i16 -23676, i16 4943, i16 26459, i16 -26300, i16 -25630, i16 -2650, i16 -24968, i16 17937, i16 14464, i16 -15959, i16 5100, i16 7685, i16 -3712], [32 x i16] [i16 16408, i16 168, i16 -18776, i16 6520, i16 -28640, i16 -15240, i16 -32576, i16 -9744, i16 25272, i16 -6000, i16 -6208, i16 5744, i16 4400, i16 -24064, i16 9040, i16 27024, i16 18272, i16 2408, i16 -4880, i16 7200, i16 -25992, i16 15064, i16 -13792, i16 -8432, i16 -21200, i16 -3136, i16 12424, i16 -15360, i16 3400, i16 -24736, i16 -4056, i16 -29696], [32 x i16] [i16 384, i16 2688, i16 27264, i16 -26752, i16 512, i16 18304, i16 3072, i16 -24832, i16 11136, i16 -30464, i16 31744, i16 26368, i16 4864, i16 8192, i16 13568, i16 -26368, i16 30208, i16 -27008, i16 -12544, i16 -15872, i16 -22656, i16 -21120, i16 -24064, i16 -3840, i16 -11520, i16 15360, i16 2176, i16 16384, i16 -11136, i16 -2560, i16 640, i16 -16384], [32 x i16] [i16 24576, i16 -24576, i16 -24576, i16 -8192, i16 -32768, i16 -8192, i16 0, i16 -16384, i16 -8192, i16 16384, i16 0, i16 -16384, i16 -16384, i16 0, i16 16384, i16 16384, i16 -32768, i16 -24576, i16 -16384, i16 -32768, i16 -8192, i16 24576, i16 -32768, i16 16384, i16 -16384, i16 0, i16 8192, i16 0, i16 8192, i16 -32768, i16 -24576, i16 0], [32 x i16] zeroinitializer }, %struct.anon.0 { [32 x i16] [i16 -20890, i16 1458, i16 14091, i16 23208, i16 842, i16 -28990, i16 -23396, i16 16937, i16 -24167, i16 -21536, i16 25064, i16 -28189, i16 -12510, i16 10148, i16 9453, i16 21528, i16 -13614, i16 -8871, i16 257, i16 19512, i16 -1532, i16 -24358, i16 1182, i16 14563, i16 -15451, i16 -29213, i16 -14812, i16 17950, i16 -15723, i16 -32147, i16 -31257, i16 -17962], [32 x i16] [i16 -20890, i16 1458, i16 14091, i16 23208, i16 842, i16 -28990, i16 -23396, i16 16937, i16 -24167, i16 -21536, i16 25064, i16 -28189, i16 -12510, i16 10148, i16 9453, i16 21528, i16 -13614, i16 -8871, i16 257, i16 19512, i16 -1532, i16 -24358, i16 1182, i16 14563, i16 -15451, i16 -29213, i16 -14812, i16 17950, i16 -15723, i16 -32147, i16 -31257, i16 -17962], [32 x i16] [i16 29488, i16 11664, i16 -18344, i16 -10944, i16 6736, i16 30224, i16 9440, i16 4424, i16 3272, i16 24320, i16 3904, i16 -28904, i16 30992, i16 15648, i16 10088, i16 -24384, i16 22160, i16 -5432, i16 2056, i16 25024, i16 -12256, i16 1744, i16 9456, i16 -14568, i16 7464, i16 28440, i16 12576, i16 12528, i16 5288, i16 4968, i16 12088, i16 -12624], [32 x i16] [i16 13056, i16 -9984, i16 -31360, i16 21504, i16 -23296, i16 24832, i16 19968, i16 5248, i16 -13184, i16 -4096, i16 -3072, i16 -3712, i16 -28416, i16 -11776, i16 30336, i16 3072, i16 26880, i16 -21376, i16 -32640, i16 7168, i16 512, i16 27904, i16 20224, i16 29056, i16 -11648, i16 -3712, i16 4608, i16 3840, i16 19072, i16 13952, i16 -3200, i16 -5376], [32 x i16] [i16 -16384, i16 16384, i16 24576, i16 0, i16 16384, i16 16384, i16 -32768, i16 8192, i16 8192, i16 0, i16 0, i16 24576, i16 16384, i16 -32768, i16 -24576, i16 0, i16 16384, i16 8192, i16 8192, i16 0, i16 -32768, i16 16384, i16 -16384, i16 24576, i16 -24576, i16 24576, i16 -32768, i16 -16384, i16 -24576, i16 -24576, i16 -8192, i16 -16384], [32 x i16] zeroinitializer }, %struct.anon.0 { [32 x i16] [i16 12112, i16 20887, i16 -12496, i16 13469, i16 30921, i16 26581, i16 -18308, i16 8607, i16 -32133, i16 -24401, i16 -12984, i16 -8730, i16 21648, i16 30560, i16 14041, i16 10544, i16 -14490, i16 -27013, i16 6294, i16 24523, i16 -24432, i16 3271, i16 26200, i16 -11474, i16 -8727, i16 12659, i16 23210, i16 14863, i16 28590, i16 -30799, i16 -7515, i16 2993], [32 x i16] [i16 12112, i16 20887, i16 -12496, i16 13469, i16 30921, i16 26581, i16 -18308, i16 8607, i16 -32133, i16 -24401, i16 -12984, i16 -8730, i16 21648, i16 30560, i16 14041, i16 10544, i16 -14490, i16 -27013, i16 6294, i16 24523, i16 -24432, i16 3271, i16 26200, i16 -11474, i16 -8727, i16 12659, i16 23210, i16 14863, i16 28590, i16 -30799, i16 -7515, i16 2993], [32 x i16] [i16 31360, i16 -29512, i16 31104, i16 -23320, i16 -14776, i16 16040, i16 -15392, i16 3320, i16 5080, i16 1400, i16 27200, i16 -4304, i16 -23424, i16 -17664, i16 -18744, i16 18816, i16 15152, i16 -19496, i16 -15184, i16 -424, i16 1152, i16 26168, i16 12992, i16 -26256, i16 -4280, i16 -29800, i16 -10928, i16 -12168, i16 32112, i16 15752, i16 5416, i16 23944], [32 x i16] [i16 -22528, i16 -13440, i16 -26624, i16 20096, i16 25728, i16 -5504, i16 15872, i16 -12416, i16 15744, i16 22400, i16 -23552, i16 -3328, i16 18432, i16 -20480, i16 27776, i16 -26624, i16 -19712, i16 15744, i16 19200, i16 -6784, i16 18432, i16 25472, i16 11264, i16 -26880, i16 -2944, i16 -18048, i16 21760, i16 1920, i16 -10496, i16 -10112, i16 21120, i16 -10112], [32 x i16] [i16 0, i16 -8192, i16 0, i16 -24576, i16 8192, i16 -24576, i16 -32768, i16 -8192, i16 24576, i16 -8192, i16 0, i16 -16384, i16 0, i16 0, i16 8192, i16 0, i16 -16384, i16 24576, i16 -16384, i16 24576, i16 0, i16 -8192, i16 0, i16 -16384, i16 8192, i16 24576, i16 16384, i16 -8192, i16 -16384, i16 8192, i16 -24576, i16 8192], [32 x i16] zeroinitializer }, %struct.anon.0 { [32 x i16] [i16 11433, i16 16546, i16 27972, i16 -10849, i16 26125, i16 26081, i16 4045, i16 -18888, i16 -21268, i16 -26649, i16 -2554, i16 -19247, i16 -31899, i16 2875, i16 -5019, i16 3606, i16 -18408, i16 23886, i16 -4571, i16 12850, i16 4948, i16 8599, i16 -12253, i16 4055, i16 -16516, i16 -32090, i16 30901, i16 6966, i16 29179, i16 24614, i16 15454, i16 30318], [32 x i16] [i16 11433, i16 16546, i16 27972, i16 -10849, i16 26125, i16 26081, i16 4045, i16 -18888, i16 -21268, i16 -26649, i16 -2554, i16 -19247, i16 -31899, i16 2875, i16 -5019, i16 3606, i16 -18408, i16 23886, i16 -4571, i16 12850, i16 4948, i16 8599, i16 -12253, i16 4055, i16 -16516, i16 -32090, i16 30901, i16 6966, i16 29179, i16 24614, i16 15454, i16 30318], [32 x i16] [i16 25928, i16 1296, i16 27168, i16 -21256, i16 12392, i16 12040, i16 32360, i16 -20032, i16 26464, i16 -16584, i16 -20432, i16 -22904, i16 6952, i16 23000, i16 25384, i16 28848, i16 -16192, i16 -5520, i16 28968, i16 -28272, i16 -25952, i16 3256, i16 -32488, i16 32440, i16 -1056, i16 5424, i16 -14936, i16 -9808, i16 -28712, i16 304, i16 -7440, i16 -19600], [32 x i16] [i16 21632, i16 20736, i16 -24064, i16 -12416, i16 1664, i16 -3968, i16 -6528, i16 7168, i16 30208, i16 -3200, i16 768, i16 26752, i16 -19840, i16 -25216, i16 12928, i16 2816, i16 3072, i16 -22784, i16 4736, i16 6400, i16 -22016, i16 -13440, i16 4480, i16 -5248, i16 -16896, i16 21248, i16 23168, i16 -25856, i16 -640, i16 4864, i16 12032, i16 14080], [32 x i16] [i16 8192, i16 16384, i16 -32768, i16 -8192, i16 -24576, i16 8192, i16 -24576, i16 0, i16 -32768, i16 -8192, i16 -16384, i16 8192, i16 -24576, i16 24576, i16 -24576, i16 -16384, i16 0, i16 -16384, i16 -24576, i16 16384, i16 -32768, i16 -8192, i16 24576, i16 -8192, i16 -32768, i16 -16384, i16 -24576, i16 -16384, i16 24576, i16 -16384, i16 -16384, i16 -16384], [32 x i16] zeroinitializer }, %struct.anon.0 { [32 x i16] [i16 -16907, i16 6867, i16 1451, i16 -179, i16 -7143, i16 15393, i16 -1868, i16 12363, i16 -3401, i16 28082, i16 -6038, i16 25992, i16 -20902, i16 -18235, i16 13290, i16 -8402, i16 752, i16 -25606, i16 18183, i16 8347, i16 -17365, i16 -8100, i16 -22348, i16 27664, i16 -15462, i16 1241, i16 25003, i16 1385, i16 11791, i16 -1603, i16 -5023, i16 21209], [32 x i16] [i16 -16907, i16 6867, i16 1451, i16 -179, i16 -7143, i16 15393, i16 -1868, i16 12363, i16 -3401, i16 28082, i16 -6038, i16 25992, i16 -20902, i16 -18235, i16 13290, i16 -8402, i16 752, i16 -25606, i16 18183, i16 8347, i16 -17365, i16 -8100, i16 -22348, i16 27664, i16 -15462, i16 1241, i16 25003, i16 1385, i16 11791, i16 -1603, i16 -5023, i16 21209], [32 x i16] [i16 -4184, i16 -10600, i16 11608, i16 -1432, i16 8392, i16 -7928, i16 -14944, i16 -32168, i16 -27208, i16 28048, i16 17232, i16 11328, i16 29392, i16 -14808, i16 -24752, i16 -1680, i16 6016, i16 -8240, i16 14392, i16 1240, i16 -7848, i16 736, i16 17824, i16 24704, i16 7376, i16 9928, i16 3416, i16 11080, i16 28792, i16 -12824, i16 25352, i16 -26936], [32 x i16] [i16 -1408, i16 27008, i16 -10880, i16 -22912, i16 3200, i16 4224, i16 23040, i16 9600, i16 23424, i16 -9984, i16 13568, i16 -15360, i16 11520, i16 25216, i16 -2816, i16 -26880, i16 30720, i16 -768, i16 -31872, i16 19840, i16 5504, i16 11776, i16 23040, i16 2048, i16 -13056, i16 27776, i16 -10880, i16 -19328, i16 1920, i16 -8576, i16 12416, i16 27776], [32 x i16] [i16 -24576, i16 24576, i16 24576, i16 -24576, i16 8192, i16 8192, i16 -32768, i16 24576, i16 -8192, i16 16384, i16 16384, i16 0, i16 16384, i16 -24576, i16 16384, i16 -16384, i16 0, i16 16384, i16 -8192, i16 24576, i16 24576, i16 -32768, i16 -32768, i16 0, i16 16384, i16 8192, i16 24576, i16 8192, i16 -8192, i16 -24576, i16 8192, i16 8192], [32 x i16] zeroinitializer }], align 16
@.str.6 = private unnamed_addr constant [36 x i8] c"../spack-src/test/x86/avx512/slli.c\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"r0\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"simde_mm512_loadu_epi16(test_vec[i].r0)\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"r3\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"simde_mm512_loadu_epi16(test_vec[i].r3)\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"r7\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"simde_mm512_loadu_epi16(test_vec[i].r7)\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"r13\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"simde_mm512_loadu_epi16(test_vec[i].r13)\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"r24\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"simde_mm512_loadu_epi16(test_vec[i].r24)\00", align 1
@.str.17 = private unnamed_addr constant [56 x i8] c"%s:%d: assertion failed: %s[%zu] == %s[%zu] (%d == %d)\0A\00", align 1
@stderr = external global ptr, align 8
@.str.18 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"test_vec[i].r\00", align 1
@.str.20 = private unnamed_addr constant [58 x i8] c"%s:%d: assertion failed: %s[%zu] == %s[%zu] (%ld == %ld)\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %i = alloca i64, align 8
  %res = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #10
  store i32 0, ptr %retval1, align 4, !tbaa !5
  %0 = load ptr, ptr @stdout, align 8, !tbaa !9
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str, i64 noundef 3)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %1, 3
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  br label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #10
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [3 x %struct.anon], ptr @test_suite_tests, i64 0, i64 %2
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
  %arrayidx4 = getelementptr inbounds [3 x %struct.anon], ptr @test_suite_tests, i64 0, i64 %7
  %name = getelementptr inbounds %struct.anon, ptr %arrayidx4, i32 0, i32 1
  %8 = load ptr, ptr %name, align 8, !tbaa !15
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.1, i64 noundef %add, ptr noundef %8)
  br label %if.end

if.else:                                          ; preds = %for.body
  %9 = load ptr, ptr @stdout, align 8, !tbaa !9
  %10 = load i64, ptr %i, align 8, !tbaa !11
  %add6 = add i64 %10, 1
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds [3 x %struct.anon], ptr @test_suite_tests, i64 0, i64 %11
  %name8 = getelementptr inbounds %struct.anon, ptr %arrayidx7, i32 0, i32 1
  %12 = load ptr, ptr %name8, align 8, !tbaa !15
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.2, i64 noundef %add6, ptr noundef %12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #10
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %13, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.end:                                          ; preds = %for.cond.cleanup
  %14 = load i32, ptr %retval1, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #10
  ret i32 %14
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm512_slli_epi16() #3 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <8 x i64>, align 64
  %r0 = alloca <8 x i64>, align 64
  %r3 = alloca <8 x i64>, align 64
  %r7 = alloca <8 x i64>, align 64
  %r13 = alloca <8 x i64>, align 64
  %r24 = alloca <8 x i64>, align 64
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %indirect-arg-temp7 = alloca <8 x i64>, align 64
  %indirect-arg-temp8 = alloca <8 x i64>, align 64
  %indirect-arg-temp10 = alloca <8 x i64>, align 64
  %indirect-arg-temp17 = alloca <8 x i64>, align 64
  %indirect-arg-temp18 = alloca <8 x i64>, align 64
  %indirect-arg-temp25 = alloca <8 x i64>, align 64
  %indirect-arg-temp32 = alloca <8 x i64>, align 64
  %indirect-arg-temp33 = alloca <8 x i64>, align 64
  %indirect-arg-temp40 = alloca <8 x i64>, align 64
  %indirect-arg-temp47 = alloca <8 x i64>, align 64
  %indirect-arg-temp48 = alloca <8 x i64>, align 64
  %indirect-arg-temp55 = alloca <8 x i64>, align 64
  %indirect-arg-temp62 = alloca <8 x i64>, align 64
  %indirect-arg-temp63 = alloca <8 x i64>, align 64
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup75

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 64, ptr %a) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr %r0) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr %r3) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr %r7) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr %r13) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr %r24) #10
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.0], ptr @test_simde_mm512_slli_epi16.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.0, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [32 x i16], ptr %a1, i64 0, i64 0
  %call = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay)
  store <8 x i64> %call, ptr %a, align 64, !tbaa !16
  %2 = load <8 x i64>, ptr %a, align 64, !tbaa !16
  store <8 x i64> %2, ptr %indirect-arg-temp, align 64, !tbaa !16
  %call2 = call <8 x i64> @simde_mm512_slli_epi16(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp, i32 noundef 0)
  store <8 x i64> %call2, ptr %r0, align 64, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %3 = load <8 x i64>, ptr %r0, align 64, !tbaa !16
  %4 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx3 = getelementptr inbounds [8 x %struct.anon.0], ptr @test_simde_mm512_slli_epi16.test_vec, i64 0, i64 %4
  %r04 = getelementptr inbounds %struct.anon.0, ptr %arrayidx3, i32 0, i32 1
  %arraydecay5 = getelementptr inbounds [32 x i16], ptr %r04, i64 0, i64 0
  %call6 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay5)
  store <8 x i64> %3, ptr %indirect-arg-temp7, align 64, !tbaa !16
  store <8 x i64> %call6, ptr %indirect-arg-temp8, align 64, !tbaa !16
  %call9 = call i32 @simde_test_x86_assert_equal_i16x32_(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp7, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp8, ptr noundef @.str.6, i32 noundef 243, ptr noundef @.str.7, ptr noundef @.str.8)
  %tobool = icmp ne i32 %call9, 0
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
  %5 = load <8 x i64>, ptr %a, align 64, !tbaa !16
  store <8 x i64> %5, ptr %indirect-arg-temp10, align 64, !tbaa !16
  %call11 = call <8 x i64> @simde_mm512_slli_epi16(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp10, i32 noundef 3)
  store <8 x i64> %call11, ptr %r3, align 64, !tbaa !16
  br label %do.body12

do.body12:                                        ; preds = %do.end
  %6 = load <8 x i64>, ptr %r3, align 64, !tbaa !16
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx13 = getelementptr inbounds [8 x %struct.anon.0], ptr @test_simde_mm512_slli_epi16.test_vec, i64 0, i64 %7
  %r314 = getelementptr inbounds %struct.anon.0, ptr %arrayidx13, i32 0, i32 2
  %arraydecay15 = getelementptr inbounds [32 x i16], ptr %r314, i64 0, i64 0
  %call16 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay15)
  store <8 x i64> %6, ptr %indirect-arg-temp17, align 64, !tbaa !16
  store <8 x i64> %call16, ptr %indirect-arg-temp18, align 64, !tbaa !16
  %call19 = call i32 @simde_test_x86_assert_equal_i16x32_(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp17, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp18, ptr noundef @.str.6, i32 noundef 245, ptr noundef @.str.9, ptr noundef @.str.10)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %do.body12
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end22:                                         ; preds = %do.body12
  br label %do.cond23

do.cond23:                                        ; preds = %if.end22
  br label %do.end24

do.end24:                                         ; preds = %do.cond23
  %8 = load <8 x i64>, ptr %a, align 64, !tbaa !16
  store <8 x i64> %8, ptr %indirect-arg-temp25, align 64, !tbaa !16
  %call26 = call <8 x i64> @simde_mm512_slli_epi16(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp25, i32 noundef 7)
  store <8 x i64> %call26, ptr %r7, align 64, !tbaa !16
  br label %do.body27

do.body27:                                        ; preds = %do.end24
  %9 = load <8 x i64>, ptr %r7, align 64, !tbaa !16
  %10 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx28 = getelementptr inbounds [8 x %struct.anon.0], ptr @test_simde_mm512_slli_epi16.test_vec, i64 0, i64 %10
  %r729 = getelementptr inbounds %struct.anon.0, ptr %arrayidx28, i32 0, i32 3
  %arraydecay30 = getelementptr inbounds [32 x i16], ptr %r729, i64 0, i64 0
  %call31 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay30)
  store <8 x i64> %9, ptr %indirect-arg-temp32, align 64, !tbaa !16
  store <8 x i64> %call31, ptr %indirect-arg-temp33, align 64, !tbaa !16
  %call34 = call i32 @simde_test_x86_assert_equal_i16x32_(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp32, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp33, ptr noundef @.str.6, i32 noundef 247, ptr noundef @.str.11, ptr noundef @.str.12)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %do.body27
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end37:                                         ; preds = %do.body27
  br label %do.cond38

do.cond38:                                        ; preds = %if.end37
  br label %do.end39

do.end39:                                         ; preds = %do.cond38
  %11 = load <8 x i64>, ptr %a, align 64, !tbaa !16
  store <8 x i64> %11, ptr %indirect-arg-temp40, align 64, !tbaa !16
  %call41 = call <8 x i64> @simde_mm512_slli_epi16(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp40, i32 noundef 13)
  store <8 x i64> %call41, ptr %r13, align 64, !tbaa !16
  br label %do.body42

do.body42:                                        ; preds = %do.end39
  %12 = load <8 x i64>, ptr %r13, align 64, !tbaa !16
  %13 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx43 = getelementptr inbounds [8 x %struct.anon.0], ptr @test_simde_mm512_slli_epi16.test_vec, i64 0, i64 %13
  %r1344 = getelementptr inbounds %struct.anon.0, ptr %arrayidx43, i32 0, i32 4
  %arraydecay45 = getelementptr inbounds [32 x i16], ptr %r1344, i64 0, i64 0
  %call46 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay45)
  store <8 x i64> %12, ptr %indirect-arg-temp47, align 64, !tbaa !16
  store <8 x i64> %call46, ptr %indirect-arg-temp48, align 64, !tbaa !16
  %call49 = call i32 @simde_test_x86_assert_equal_i16x32_(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp47, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp48, ptr noundef @.str.6, i32 noundef 249, ptr noundef @.str.13, ptr noundef @.str.14)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %do.body42
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end52:                                         ; preds = %do.body42
  br label %do.cond53

do.cond53:                                        ; preds = %if.end52
  br label %do.end54

do.end54:                                         ; preds = %do.cond53
  %14 = load <8 x i64>, ptr %a, align 64, !tbaa !16
  store <8 x i64> %14, ptr %indirect-arg-temp55, align 64, !tbaa !16
  %call56 = call <8 x i64> @simde_mm512_slli_epi16(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp55, i32 noundef 24)
  store <8 x i64> %call56, ptr %r24, align 64, !tbaa !16
  br label %do.body57

do.body57:                                        ; preds = %do.end54
  %15 = load <8 x i64>, ptr %r24, align 64, !tbaa !16
  %16 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx58 = getelementptr inbounds [8 x %struct.anon.0], ptr @test_simde_mm512_slli_epi16.test_vec, i64 0, i64 %16
  %r2459 = getelementptr inbounds %struct.anon.0, ptr %arrayidx58, i32 0, i32 5
  %arraydecay60 = getelementptr inbounds [32 x i16], ptr %r2459, i64 0, i64 0
  %call61 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay60)
  store <8 x i64> %15, ptr %indirect-arg-temp62, align 64, !tbaa !16
  store <8 x i64> %call61, ptr %indirect-arg-temp63, align 64, !tbaa !16
  %call64 = call i32 @simde_test_x86_assert_equal_i16x32_(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp62, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp63, ptr noundef @.str.6, i32 noundef 251, ptr noundef @.str.15, ptr noundef @.str.16)
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.then66, label %if.end67

if.then66:                                        ; preds = %do.body57
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end67:                                         ; preds = %do.body57
  br label %do.cond68

do.cond68:                                        ; preds = %if.end67
  br label %do.end69

do.end69:                                         ; preds = %do.cond68
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end69, %if.then66, %if.then51, %if.then36, %if.then21, %if.then
  call void @llvm.lifetime.end.p0(i64 64, ptr %r24) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr %r13) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr %r7) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr %r3) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr %r0) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr %a) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup75 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %17 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %17, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup75:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  %cleanup.dest76 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest76, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup75
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup75
  %18 = load i32, ptr %retval, align 4
  ret i32 %18

unreachable:                                      ; preds = %cleanup75
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm512_slli_epi32() #3 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.1], align 64
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %r43 = alloca <8 x i64>, align 64
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %indirect-arg-temp50 = alloca <8 x i64>, align 64
  %indirect-arg-temp51 = alloca <8 x i64>, align 64
  call void @llvm.lifetime.start.p0(i64 1536, ptr %test_vec) #10
  %arrayinit.begin = getelementptr inbounds [8 x %struct.anon.1], ptr %test_vec, i64 0, i64 0
  %a = getelementptr inbounds %struct.anon.1, ptr %arrayinit.begin, i32 0, i32 0
  %call = call <8 x i64> @simde_mm512_set_epi32(i32 noundef -687706949, i32 noundef 1593775683, i32 noundef 332932989, i32 noundef 583872054, i32 noundef 1838832857, i32 noundef 847835558, i32 noundef -1396128258, i32 noundef -183977070, i32 noundef -902383138, i32 noundef -512492201, i32 noundef -1812249336, i32 noundef -562835271, i32 noundef -1029714159, i32 noundef 1476158556, i32 noundef 877549641, i32 noundef 1218378177)
  store <8 x i64> %call, ptr %a, align 64, !tbaa !16
  %b = getelementptr inbounds %struct.anon.1, ptr %arrayinit.begin, i32 0, i32 1
  store i32 172, ptr %b, align 64, !tbaa !17
  %r = getelementptr inbounds %struct.anon.1, ptr %arrayinit.begin, i32 0, i32 2
  %call1 = call <8 x i64> @simde_mm512_set_epi32(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  store <8 x i64> %call1, ptr %r, align 64, !tbaa !16
  %arrayinit.element = getelementptr inbounds %struct.anon.1, ptr %arrayinit.begin, i64 1
  %a2 = getelementptr inbounds %struct.anon.1, ptr %arrayinit.element, i32 0, i32 0
  %call3 = call <8 x i64> @simde_mm512_set_epi32(i32 noundef 241549121, i32 noundef 1732816264, i32 noundef 875489890, i32 noundef 72071518, i32 noundef -1641761300, i32 noundef 313288882, i32 noundef -1735158939, i32 noundef 1219761116, i32 noundef 877921588, i32 noundef 2045964482, i32 noundef -360092415, i32 noundef -1302958505, i32 noundef -1122092800, i32 noundef -177019481, i32 noundef 875636041, i32 noundef -150268654)
  store <8 x i64> %call3, ptr %a2, align 64, !tbaa !16
  %b4 = getelementptr inbounds %struct.anon.1, ptr %arrayinit.element, i32 0, i32 1
  store i32 32791, ptr %b4, align 64, !tbaa !17
  %r5 = getelementptr inbounds %struct.anon.1, ptr %arrayinit.element, i32 0, i32 2
  %call6 = call <8 x i64> @simde_mm512_set_epi32(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  store <8 x i64> %call6, ptr %r5, align 64, !tbaa !16
  %arrayinit.element7 = getelementptr inbounds %struct.anon.1, ptr %arrayinit.element, i64 1
  %a8 = getelementptr inbounds %struct.anon.1, ptr %arrayinit.element7, i32 0, i32 0
  %call9 = call <8 x i64> @simde_mm512_set_epi32(i32 noundef -52534216, i32 noundef -794188551, i32 noundef -186449823, i32 noundef 1580979103, i32 noundef -972993456, i32 noundef -666426563, i32 noundef -645023430, i32 noundef -1043227266, i32 noundef 1237525980, i32 noundef 349749966, i32 noundef -978999744, i32 noundef -487689408, i32 noundef 898649460, i32 noundef -1217796896, i32 noundef 1277301360, i32 noundef 1454357892)
  store <8 x i64> %call9, ptr %a8, align 64, !tbaa !16
  %b10 = getelementptr inbounds %struct.anon.1, ptr %arrayinit.element7, i32 0, i32 1
  store i32 16, ptr %b10, align 64, !tbaa !17
  %r11 = getelementptr inbounds %struct.anon.1, ptr %arrayinit.element7, i32 0, i32 2
  %call12 = call <8 x i64> @simde_mm512_set_epi32(i32 noundef 1681391616, i32 noundef -1527185408, i32 noundef 6356992, i32 noundef -744554496, i32 noundef 1280311296, i32 noundef 591200256, i32 noundef -1187381248, i32 noundef -1652686848, i32 noundef 635174912, i32 noundef -1026686976, i32 noundef -1505755136, i32 noundef 1933574144, i32 noundef 1299447808, i32 noundef -455081984, i32 noundef 309329920, i32 noundef -1115422720)
  store <8 x i64> %call12, ptr %r11, align 64, !tbaa !16
  %arrayinit.element13 = getelementptr inbounds %struct.anon.1, ptr %arrayinit.element7, i64 1
  %a14 = getelementptr inbounds %struct.anon.1, ptr %arrayinit.element13, i32 0, i32 0
  %call15 = call <8 x i64> @simde_mm512_set_epi32(i32 noundef -1898779532, i32 noundef 1141724513, i32 noundef -782352739, i32 noundef 973072470, i32 noundef 1112939167, i32 noundef 368903984, i32 noundef 1631675339, i32 noundef -86505288, i32 noundef 2011287771, i32 noundef 1938765310, i32 noundef 2078191935, i32 noundef -616151900, i32 noundef -454977425, i32 noundef 544105809, i32 noundef -1307935124, i32 noundef -1400984309)
  store <8 x i64> %call15, ptr %a14, align 64, !tbaa !16
  %b16 = getelementptr inbounds %struct.anon.1, ptr %arrayinit.element13, i32 0, i32 1
  store i32 10, ptr %b16, align 64, !tbaa !17
  %r17 = getelementptr inbounds %struct.anon.1, ptr %arrayinit.element13, i32 0, i32 2
  %call18 = call <8 x i64> @simde_mm512_set_epi32(i32 noundef 1269944320, i32 noundef 894796800, i32 noundef 2029679616, i32 noundef -6203392, i32 noundef 1483373568, i32 noundef -199442432, i32 noundef 93268992, i32 noundef 1612898304, i32 noundef -2025624576, i32 noundef 1020786688, i32 noundef 2059729920, i32 noundef 420646912, i32 noundef -2040415232, i32 noundef -1181400064, i32 noundef 704229376, i32 noundef -88855552)
  store <8 x i64> %call18, ptr %r17, align 64, !tbaa !16
  %arrayinit.element19 = getelementptr inbounds %struct.anon.1, ptr %arrayinit.element13, i64 1
  %a20 = getelementptr inbounds %struct.anon.1, ptr %arrayinit.element19, i32 0, i32 0
  %call21 = call <8 x i64> @simde_mm512_set_epi32(i32 noundef -955538666, i32 noundef 1399393330, i32 noundef 1832782688, i32 noundef -1931362608, i32 noundef -1247233529, i32 noundef -537843102, i32 noundef -120831887, i32 noundef 1329473476, i32 noundef 1569899726, i32 noundef 920247722, i32 noundef 275348332, i32 noundef 1640312018, i32 noundef -873496512, i32 noundef 957396290, i32 noundef 390504842, i32 noundef 1781792417)
  store <8 x i64> %call21, ptr %a20, align 64, !tbaa !16
  %b22 = getelementptr inbounds %struct.anon.1, ptr %arrayinit.element19, i32 0, i32 1
  store i32 15, ptr %b22, align 64, !tbaa !17
  %r23 = getelementptr inbounds %struct.anon.1, ptr %arrayinit.element19, i32 0, i32 2
  %call24 = call <8 x i64> @simde_mm512_set_epi32(i32 noundef -779419648, i32 noundef -2045181952, i32 noundef 95420416, i32 noundef -546832384, i32 noundef 1560510464, i32 noundef -1791950848, i32 noundef 540573696, i32 noundef 333578240, i32 noundef 1650917376, i32 noundef -288030720, i32 noundef -1112145920, i32 noundef -1771503616, i32 noundef -1071644672, i32 noundef 1520500736, i32 noundef 1355087872, i32 noundef -11501568)
  store <8 x i64> %call24, ptr %r23, align 64, !tbaa !16
  %arrayinit.element25 = getelementptr inbounds %struct.anon.1, ptr %arrayinit.element19, i64 1
  %a26 = getelementptr inbounds %struct.anon.1, ptr %arrayinit.element25, i32 0, i32 0
  %call27 = call <8 x i64> @simde_mm512_set_epi32(i32 noundef 188085108, i32 noundef 489074602, i32 noundef 1720231560, i32 noundef 106164094, i32 noundef 1250223633, i32 noundef -962071158, i32 noundef 38255424, i32 noundef 801121683, i32 noundef -1580720854, i32 noundef 609844423, i32 noundef 44983522, i32 noundef 481953328, i32 noundef -181212371, i32 noundef 912186226, i32 noundef -42587351, i32 noundef 680089879)
  store <8 x i64> %call27, ptr %a26, align 64, !tbaa !16
  %b28 = getelementptr inbounds %struct.anon.1, ptr %arrayinit.element25, i32 0, i32 1
  store i32 24, ptr %b28, align 64, !tbaa !17
  %r29 = getelementptr inbounds %struct.anon.1, ptr %arrayinit.element25, i32 0, i32 2
  %call30 = call <8 x i64> @simde_mm512_set_epi32(i32 noundef 1946157056, i32 noundef -1442840576, i32 noundef -2013265920, i32 noundef 2113929216, i32 noundef 285212672, i32 noundef -1979711488, i32 noundef 1073741824, i32 noundef -1828716544, i32 noundef 704643072, i32 noundef -956301312, i32 noundef -503316480, i32 noundef 805306368, i32 noundef 754974720, i32 noundef 1912602624, i32 noundef 687865856, i32 noundef 385875968)
  store <8 x i64> %call30, ptr %r29, align 64, !tbaa !16
  %arrayinit.element31 = getelementptr inbounds %struct.anon.1, ptr %arrayinit.element25, i64 1
  %a32 = getelementptr inbounds %struct.anon.1, ptr %arrayinit.element31, i32 0, i32 0
  %call33 = call <8 x i64> @simde_mm512_set_epi32(i32 noundef -1878529143, i32 noundef 968369206, i32 noundef -2025408372, i32 noundef -521427427, i32 noundef 750337953, i32 noundef 1599422728, i32 noundef 1832999614, i32 noundef -922516627, i32 noundef 1054703043, i32 noundef -229764941, i32 noundef -1888970968, i32 noundef -770679003, i32 noundef 957667650, i32 noundef -1367078699, i32 noundef 400185050, i32 noundef 619858989)
  store <8 x i64> %call33, ptr %a32, align 64, !tbaa !16
  %b34 = getelementptr inbounds %struct.anon.1, ptr %arrayinit.element31, i32 0, i32 1
  store i32 0, ptr %b34, align 64, !tbaa !17
  %r35 = getelementptr inbounds %struct.anon.1, ptr %arrayinit.element31, i32 0, i32 2
  %call36 = call <8 x i64> @simde_mm512_set_epi32(i32 noundef -1878529143, i32 noundef 968369206, i32 noundef -2025408372, i32 noundef -521427427, i32 noundef 750337953, i32 noundef 1599422728, i32 noundef 1832999614, i32 noundef -922516627, i32 noundef 1054703043, i32 noundef -229764941, i32 noundef -1888970968, i32 noundef -770679003, i32 noundef 957667650, i32 noundef -1367078699, i32 noundef 400185050, i32 noundef 619858989)
  store <8 x i64> %call36, ptr %r35, align 64, !tbaa !16
  %arrayinit.element37 = getelementptr inbounds %struct.anon.1, ptr %arrayinit.element31, i64 1
  %a38 = getelementptr inbounds %struct.anon.1, ptr %arrayinit.element37, i32 0, i32 0
  %call39 = call <8 x i64> @simde_mm512_set_epi32(i32 noundef -939632719, i32 noundef 1727963384, i32 noundef 1880331239, i32 noundef 699090974, i32 noundef 1068401563, i32 noundef -1558361689, i32 noundef -1814494206, i32 noundef 1865180366, i32 noundef -1767733366, i32 noundef -1147256695, i32 noundef -1631901793, i32 noundef -198157319, i32 noundef 285018015, i32 noundef 583696937, i32 noundef 1785762602, i32 noundef -1724046997)
  store <8 x i64> %call39, ptr %a38, align 64, !tbaa !16
  %b40 = getelementptr inbounds %struct.anon.1, ptr %arrayinit.element37, i32 0, i32 1
  store i32 22, ptr %b40, align 64, !tbaa !17
  %r41 = getelementptr inbounds %struct.anon.1, ptr %arrayinit.element37, i32 0, i32 2
  %call42 = call <8 x i64> @simde_mm512_set_epi32(i32 noundef -331350016, i32 noundef 1040187392, i32 noundef -104857600, i32 noundef 125829120, i32 noundef -423624704, i32 noundef 1774190592, i32 noundef 8388608, i32 noundef 864026624, i32 noundef -494927872, i32 noundef 574619648, i32 noundef -406847488, i32 noundef -29360128, i32 noundef -406847488, i32 noundef -1975517184, i32 noundef -897581056, i32 noundef 1522532352)
  store <8 x i64> %call42, ptr %r41, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup53

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 64, ptr %r43) #10
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.1], ptr %test_vec, i64 0, i64 %1
  %a44 = getelementptr inbounds %struct.anon.1, ptr %arrayidx, i32 0, i32 0
  %2 = load <8 x i64>, ptr %a44, align 64, !tbaa !16
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx45 = getelementptr inbounds [8 x %struct.anon.1], ptr %test_vec, i64 0, i64 %3
  %b46 = getelementptr inbounds %struct.anon.1, ptr %arrayidx45, i32 0, i32 1
  %4 = load i32, ptr %b46, align 64, !tbaa !17
  store <8 x i64> %2, ptr %indirect-arg-temp, align 64, !tbaa !16
  %call47 = call <8 x i64> @simde_mm512_slli_epi32(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp, i32 noundef %4)
  store <8 x i64> %call47, ptr %r43, align 64, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load <8 x i64>, ptr %r43, align 64, !tbaa !16
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx48 = getelementptr inbounds [8 x %struct.anon.1], ptr %test_vec, i64 0, i64 %6
  %r49 = getelementptr inbounds %struct.anon.1, ptr %arrayidx48, i32 0, i32 2
  %7 = load <8 x i64>, ptr %r49, align 64, !tbaa !16
  store <8 x i64> %5, ptr %indirect-arg-temp50, align 64, !tbaa !16
  store <8 x i64> %7, ptr %indirect-arg-temp51, align 64, !tbaa !16
  %call52 = call i32 @simde_test_x86_assert_equal_i32x16_(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp50, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp51, ptr noundef @.str.6, i32 noundef 340, ptr noundef @.str.18, ptr noundef @.str.19)
  %tobool = icmp ne i32 %call52, 0
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
  call void @llvm.lifetime.end.p0(i64 64, ptr %r43) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup53 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %8, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup53:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  %cleanup.dest54 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest54, label %cleanup55 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup53
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup55

cleanup55:                                        ; preds = %for.end, %cleanup53
  call void @llvm.lifetime.end.p0(i64 1536, ptr %test_vec) #10
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm512_slli_epi64() #3 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.2], align 64
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %r43 = alloca <8 x i64>, align 64
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %indirect-arg-temp50 = alloca <8 x i64>, align 64
  %indirect-arg-temp51 = alloca <8 x i64>, align 64
  call void @llvm.lifetime.start.p0(i64 1536, ptr %test_vec) #10
  %arrayinit.begin = getelementptr inbounds [8 x %struct.anon.2], ptr %test_vec, i64 0, i64 0
  %a = getelementptr inbounds %struct.anon.2, ptr %arrayinit.begin, i32 0, i32 0
  %call = call <8 x i64> @simde_mm512_set_epi64(i64 noundef -2953678853593164221, i64 noundef 1429936300098399798, i64 noundef 7897726984473080230, i64 noundef -5996325205020460142, i64 noundef -3875706062389379753, i64 noundef -7783551626585583431, i64 noundef -4422588635656985508, i64 noundef 3769047009929918913)
  store <8 x i64> %call, ptr %a, align 64, !tbaa !16
  %b = getelementptr inbounds %struct.anon.2, ptr %arrayinit.begin, i32 0, i32 1
  store i32 172, ptr %b, align 64, !tbaa !17
  %r = getelementptr inbounds %struct.anon.2, ptr %arrayinit.begin, i32 0, i32 2
  %call1 = call <8 x i64> @simde_mm512_set_epi64(i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0)
  store <8 x i64> %call1, ptr %r, align 64, !tbaa !16
  %arrayinit.element = getelementptr inbounds %struct.anon.2, ptr %arrayinit.begin, i64 1
  %a2 = getelementptr inbounds %struct.anon.2, ptr %arrayinit.element, i32 0, i32 0
  %call3 = call <8 x i64> @simde_mm512_set_epi64(i64 noundef 1037445576805363080, i64 noundef 3760200445600708958, i64 noundef -7051311091025155918, i64 noundef -7452450895147297828, i64 noundef 3770644510958350530, i64 noundef -1546585142970651049, i64 noundef -4819351874959120985, i64 noundef 3760828163438613778)
  store <8 x i64> %call3, ptr %a2, align 64, !tbaa !16
  %b4 = getelementptr inbounds %struct.anon.2, ptr %arrayinit.element, i32 0, i32 1
  store i32 32791, ptr %b4, align 64, !tbaa !17
  %r5 = getelementptr inbounds %struct.anon.2, ptr %arrayinit.element, i32 0, i32 2
  %call6 = call <8 x i64> @simde_mm512_set_epi64(i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0)
  store <8 x i64> %call6, ptr %r5, align 64, !tbaa !16
  %arrayinit.element7 = getelementptr inbounds %struct.anon.2, ptr %arrayinit.element, i64 1
  %a8 = getelementptr inbounds %struct.anon.2, ptr %arrayinit.element7, i32 0, i32 0
  %call9 = call <8 x i64> @simde_mm512_set_epi64(i64 noundef -225632736140221191, i64 noundef -800795890549009505, i64 noundef -4178975069113474243, i64 noundef -2770354533752005250, i64 noundef 5315133612400100046, i64 noundef -4204771879465094336, i64 noundef 3859670044345230560, i64 noundef 5485967569790680452)
  store <8 x i64> %call9, ptr %a8, align 64, !tbaa !16
  %b10 = getelementptr inbounds %struct.anon.2, ptr %arrayinit.element7, i32 0, i32 1
  store i32 16, ptr %b10, align 64, !tbaa !17
  %r11 = getelementptr inbounds %struct.anon.2, ptr %arrayinit.element7, i32 0, i32 2
  %call12 = call <8 x i64> @simde_mm512_set_epi64(i64 noundef 7221751429524422656, i64 noundef 27406683787427840, i64 noundef 5499132945064853504, i64 noundef -5099550522009059328, i64 noundef 2728078395493449728, i64 noundef -6466919551140364288, i64 noundef 5581287503658221568, i64 noundef 1328657202873106432)
  store <8 x i64> %call12, ptr %r11, align 64, !tbaa !16
  %arrayinit.element13 = getelementptr inbounds %struct.anon.2, ptr %arrayinit.element7, i64 1
  %a14 = getelementptr inbounds %struct.anon.2, ptr %arrayinit.element13, i32 0, i32 0
  %call15 = call <8 x i64> @simde_mm512_set_epi64(i64 noundef 854012069371251830, i64 noundef -7338075353641633319, i64 noundef -3664756911608965568, i64 noundef 6190577389993756354, i64 noundef -5695521678932466387, i64 noundef 8986269833406294113, i64 noundef -6594347992267195055, i64 noundef 897886006004895547)
  store <8 x i64> %call15, ptr %a14, align 64, !tbaa !16
  %b16 = getelementptr inbounds %struct.anon.2, ptr %arrayinit.element13, i32 0, i32 1
  store i32 42, ptr %b16, align 64, !tbaa !17
  %r17 = getelementptr inbounds %struct.anon.2, ptr %arrayinit.element13, i32 0, i32 2
  %call18 = call <8 x i64> @simde_mm512_set_epi64(i64 noundef 1455181649128980480, i64 noundef -8005319861464989696, i64 noundef -8117456853358608384, i64 noundef -7918726723707863040, i64 noundef -4137484245553643520, i64 noundef -675113333593997312, i64 noundef 7635083510067232768, i64 noundef -2504867807980683264)
  store <8 x i64> %call18, ptr %r17, align 64, !tbaa !16
  %arrayinit.element19 = getelementptr inbounds %struct.anon.2, ptr %arrayinit.element13, i64 1
  %a20 = getelementptr inbounds %struct.anon.2, ptr %arrayinit.element19, i32 0, i32 0
  %call21 = call <8 x i64> @simde_mm512_set_epi64(i64 noundef 6876450537877586373, i64 noundef -2498836913726354503, i64 noundef -5925650014767999746, i64 noundef -5091981247482556140, i64 noundef 2276397305581596841, i64 noundef 4333846664358463853, i64 noundef -724672155607878887, i64 noundef 3417746373838389455)
  store <8 x i64> %call21, ptr %a20, align 64, !tbaa !16
  %b22 = getelementptr inbounds %struct.anon.2, ptr %arrayinit.element19, i32 0, i32 1
  store i32 42, ptr %b22, align 64, !tbaa !17
  %r23 = getelementptr inbounds %struct.anon.2, ptr %arrayinit.element19, i32 0, i32 2
  %call24 = call <8 x i64> @simde_mm512_set_epi64(i64 noundef -934756407423533056, i64 noundef -3157335600089006080, i64 noundef -2570438283414732800, i64 noundef 7513218039291052032, i64 noundef 7188488275143688192, i64 noundef 7216371890024087552, i64 noundef -9165841190443024384, i64 noundef 1225889494272573440)
  store <8 x i64> %call24, ptr %r23, align 64, !tbaa !16
  %arrayinit.element25 = getelementptr inbounds %struct.anon.2, ptr %arrayinit.element19, i64 1
  %a26 = getelementptr inbounds %struct.anon.2, ptr %arrayinit.element25, i32 0, i32 0
  %call27 = call <8 x i64> @simde_mm512_set_epi64(i64 noundef -8036497785869311574, i64 noundef 3581702479948115598, i64 noundef 748249211564829520, i64 noundef -816680525172154454, i64 noundef -4839891842343135042, i64 noundef -6001583230129728210, i64 noundef -4279294013059977744, i64 noundef -1555144075545091790)
  store <8 x i64> %call27, ptr %a26, align 64, !tbaa !16
  %b28 = getelementptr inbounds %struct.anon.2, ptr %arrayinit.element25, i32 0, i32 1
  store i32 38, ptr %b28, align 64, !tbaa !17
  %r29 = getelementptr inbounds %struct.anon.2, ptr %arrayinit.element25, i32 0, i32 2
  %call30 = call <8 x i64> @simde_mm512_set_epi64(i64 noundef -4397647938138931200, i64 noundef 2043406626093793280, i64 noundef -5590422890961960960, i64 noundef -8604150727591329792, i64 noundef 8423472379845410816, i64 noundef -8411233715916636160, i64 noundef -8742757912167841792, i64 noundef -6541394346116120576)
  store <8 x i64> %call30, ptr %r29, align 64, !tbaa !16
  %arrayinit.element31 = getelementptr inbounds %struct.anon.2, ptr %arrayinit.element25, i64 1
  %a32 = getelementptr inbounds %struct.anon.2, ptr %arrayinit.element31, i32 0, i32 0
  %call33 = call <8 x i64> @simde_mm512_set_epi64(i64 noundef -6276545081940248579, i64 noundef -9016855820360504888, i64 noundef 2589347389053699338, i64 noundef -6212989007002338187, i64 noundef 5925964847698460032, i64 noundef 8758478916256841908, i64 noundef 5134329058456078862, i64 noundef -4414137185393506410)
  store <8 x i64> %call33, ptr %a32, align 64, !tbaa !16
  %b34 = getelementptr inbounds %struct.anon.2, ptr %arrayinit.element31, i32 0, i32 1
  store i32 24, ptr %b34, align 64, !tbaa !17
  %r35 = getelementptr inbounds %struct.anon.2, ptr %arrayinit.element31, i32 0, i32 2
  %call36 = call <8 x i64> @simde_mm512_set_epi64(i64 noundef -9176583453456465920, i64 noundef 7465982649455083520, i64 noundef -4954907897243893760, i64 noundef 7673069422566703104, i64 noundef -6790719338690117632, i64 noundef 3134572139001151488, i64 noundef 1398716822424911872, i64 noundef -7065366029995606016)
  store <8 x i64> %call36, ptr %r35, align 64, !tbaa !16
  %arrayinit.element37 = getelementptr inbounds %struct.anon.2, ptr %arrayinit.element31, i64 1
  %a38 = getelementptr inbounds %struct.anon.2, ptr %arrayinit.element37, i32 0, i32 0
  %call39 = call <8 x i64> @simde_mm512_set_epi64(i64 noundef -4035691796628594440, i64 noundef 8075961177851250718, i64 noundef 4588749774816889255, i64 noundef -7793193271686306610, i64 noundef -7592356991870287735, i64 noundef -7008964827121951751, i64 noundef 1224143053779534377, i64 noundef 7669791976580784491)
  store <8 x i64> %call39, ptr %a38, align 64, !tbaa !16
  %b40 = getelementptr inbounds %struct.anon.2, ptr %arrayinit.element37, i32 0, i32 1
  store i32 22, ptr %b40, align 64, !tbaa !17
  %r41 = getelementptr inbounds %struct.anon.2, ptr %arrayinit.element37, i32 0, i32 2
  %call42 = call <8 x i64> @simde_mm512_set_epi64(i64 noundef -1415889878515712000, i64 noundef -447427762668437504, i64 noundef -1807976093613817856, i64 noundef 43851930488799232, i64 noundef -2112496568954257408, i64 noundef -1730213388945981440, i64 noundef -1744948453022105600, i64 noundef -3844298059735367680)
  store <8 x i64> %call42, ptr %r41, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup53

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 64, ptr %r43) #10
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.2], ptr %test_vec, i64 0, i64 %1
  %a44 = getelementptr inbounds %struct.anon.2, ptr %arrayidx, i32 0, i32 0
  %2 = load <8 x i64>, ptr %a44, align 64, !tbaa !16
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx45 = getelementptr inbounds [8 x %struct.anon.2], ptr %test_vec, i64 0, i64 %3
  %b46 = getelementptr inbounds %struct.anon.2, ptr %arrayidx45, i32 0, i32 1
  %4 = load i32, ptr %b46, align 64, !tbaa !17
  store <8 x i64> %2, ptr %indirect-arg-temp, align 64, !tbaa !16
  %call47 = call <8 x i64> @simde_mm512_slli_epi64(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp, i32 noundef %4)
  store <8 x i64> %call47, ptr %r43, align 64, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load <8 x i64>, ptr %r43, align 64, !tbaa !16
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx48 = getelementptr inbounds [8 x %struct.anon.2], ptr %test_vec, i64 0, i64 %6
  %r49 = getelementptr inbounds %struct.anon.2, ptr %arrayidx48, i32 0, i32 2
  %7 = load <8 x i64>, ptr %r49, align 64, !tbaa !16
  store <8 x i64> %5, ptr %indirect-arg-temp50, align 64, !tbaa !16
  store <8 x i64> %7, ptr %indirect-arg-temp51, align 64, !tbaa !16
  %call52 = call i32 @simde_test_x86_assert_equal_i64x8_(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp50, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp51, ptr noundef @.str.6, i32 noundef 429, ptr noundef @.str.18, ptr noundef @.str.19)
  %tobool = icmp ne i32 %call52, 0
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
  call void @llvm.lifetime.end.p0(i64 64, ptr %r43) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup53 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %8, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup53:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  %cleanup.dest54 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest54, label %cleanup55 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup53
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup55

cleanup55:                                        ; preds = %for.end, %cleanup53
  call void @llvm.lifetime.end.p0(i64 1536, ptr %test_vec) #10
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i64> @simde_mm512_loadu_si512(ptr noundef %mem_addr) #4 {
entry:
  %mem_addr.addr = alloca ptr, align 8
  %r = alloca <8 x i64>, align 64
  store ptr %mem_addr, ptr %mem_addr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 64, ptr %r) #10
  %0 = load ptr, ptr %mem_addr.addr, align 8, !tbaa !9
  %v = getelementptr inbounds %struct.simde_mm512_loadu_si512_s, ptr %0, i32 0, i32 0
  %1 = load <8 x i64>, ptr %v, align 1, !tbaa !16
  store <8 x i64> %1, ptr %r, align 64, !tbaa !16
  %2 = load <8 x i64>, ptr %r, align 64, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 64, ptr %r) #10
  ret <8 x i64> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i64> @simde_mm512_slli_epi16(ptr noundef byval(<8 x i64>) align 64 %0, i32 noundef %imm8) #4 {
entry:
  %retval = alloca <8 x i64>, align 64
  %a.addr = alloca <8 x i64>, align 64
  %imm8.addr = alloca i32, align 4
  %r_ = alloca %union.simde__m512i_private, align 64
  %a_ = alloca %union.simde__m512i_private, align 64
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %cleanup.dest.slot = alloca i32, align 4
  %a = load <8 x i64>, ptr %0, align 64, !tbaa !16
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  store i32 %imm8, ptr %imm8.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 64, ptr %r_) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr %a_) #10
  %1 = load <8 x i64>, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %1, ptr %indirect-arg-temp, align 64, !tbaa !16
  call void @simde__m512i_to_private(ptr sret(%union.simde__m512i_private) align 64 %a_, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp)
  %2 = load i32, ptr %imm8.addr, align 4, !tbaa !5
  %cmp = icmp ult i32 %2, 16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load <32 x i16>, ptr %a_, align 64, !tbaa !16
  %4 = load i32, ptr %imm8.addr, align 4, !tbaa !5
  %conv = trunc i32 %4 to i16
  %conv1 = sext i16 %conv to i32
  %splat.splatinsert = insertelement <32 x i32> poison, i32 %conv1, i64 0
  %splat.splat = shufflevector <32 x i32> %splat.splatinsert, <32 x i32> poison, <32 x i32> zeroinitializer
  %sh_prom = trunc <32 x i32> %splat.splat to <32 x i16>
  %shl = shl <32 x i16> %3, %sh_prom
  store <32 x i16> %shl, ptr %r_, align 64, !tbaa !16
  br label %if.end

if.else:                                          ; preds = %entry
  %call = call <8 x i64> @simde_mm512_setzero_si512()
  store <8 x i64> %call, ptr %retval, align 64
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call2 = call <8 x i64> @simde__m512i_from_private(ptr noundef byval(%union.simde__m512i_private) align 64 %r_)
  store <8 x i64> %call2, ptr %retval, align 64
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.else
  call void @llvm.lifetime.end.p0(i64 64, ptr %a_) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr %r_) #10
  %5 = load <8 x i64>, ptr %retval, align 64
  ret <8 x i64> %5
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_x86_assert_equal_i16x32_(ptr noundef byval(<8 x i64>) align 64 %0, ptr noundef byval(<8 x i64>) align 64 %1, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
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
  call void @llvm.lifetime.start.p0(i64 64, ptr %a_) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr %b_) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_) #10
  %arraydecay = getelementptr inbounds [32 x i16], ptr %a_, i64 0, i64 0
  store ptr %arraydecay, ptr %simde_r_, align 8, !tbaa !9
  %2 = load ptr, ptr %simde_r_, align 8, !tbaa !9
  store ptr %2, ptr %tmp, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_) #10
  %3 = load ptr, ptr %tmp, align 8, !tbaa !9
  %4 = load <8 x i64>, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %4, ptr %indirect-arg-temp, align 64, !tbaa !16
  call void @simde_mm512_storeu_si512(ptr noundef %3, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_1) #10
  %arraydecay2 = getelementptr inbounds [32 x i16], ptr %b_, i64 0, i64 0
  store ptr %arraydecay2, ptr %simde_r_1, align 8, !tbaa !9
  %5 = load ptr, ptr %simde_r_1, align 8, !tbaa !9
  store ptr %5, ptr %tmp3, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_1) #10
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
  %call = call i32 @simde_assert_equal_vi16_(i64 noundef 32, ptr noundef %arraydecay5, ptr noundef %arraydecay6, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11)
  call void @llvm.lifetime.end.p0(i64 64, ptr %b_) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr %a_) #10
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
define internal <8 x i64> @simde_mm512_setzero_si512() #4 {
entry:
  %r = alloca <8 x i64>, align 64
  call void @llvm.lifetime.start.p0(i64 64, ptr %r) #10
  call void @llvm.memset.p0.i64(ptr align 64 %r, i8 0, i64 64, i1 false)
  %0 = load <8 x i64>, ptr %r, align 64, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 64, ptr %r) #10
  ret <8 x i64> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i64> @simde__m512i_from_private(ptr noundef byval(%union.simde__m512i_private) align 64 %v) #4 {
entry:
  %r = alloca <8 x i64>, align 64
  call void @llvm.lifetime.start.p0(i64 64, ptr %r) #10
  call void @llvm.memcpy.p0.p0.i64(ptr align 64 %r, ptr align 64 %v, i64 64, i1 false)
  %0 = load <8 x i64>, ptr %r, align 64, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 64, ptr %r) #10
  ret <8 x i64> %0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
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
  %6 = load i16, ptr %arrayidx, align 2, !tbaa !19
  %conv = sext i16 %6 to i32
  %7 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx1 = getelementptr inbounds i16, ptr %7, i64 %8
  %9 = load i16, ptr %arrayidx1, align 2, !tbaa !19
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
  %18 = load i16, ptr %arrayidx7, align 2, !tbaa !19
  %conv8 = sext i16 %18 to i32
  %19 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %20 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx9 = getelementptr inbounds i16, ptr %19, i64 %20
  %21 = load i16, ptr %arrayidx9, align 2, !tbaa !19
  %conv10 = sext i16 %21 to i32
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
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
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: nounwind uwtable
define internal void @simde_test_debug_printf_(ptr noundef %format, ...) #0 {
entry:
  %format.addr = alloca ptr, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %format, ptr %format.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 24, ptr %ap) #10
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
  call void @llvm.lifetime.end.p0(i64 24, ptr %ap) #10
  ret void
}

declare i32 @vfprintf(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @fflush(ptr noundef) #2

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i64> @simde_mm512_set_epi32(i32 noundef %e15, i32 noundef %e14, i32 noundef %e13, i32 noundef %e12, i32 noundef %e11, i32 noundef %e10, i32 noundef %e9, i32 noundef %e8, i32 noundef %e7, i32 noundef %e6, i32 noundef %e5, i32 noundef %e4, i32 noundef %e3, i32 noundef %e2, i32 noundef %e1, i32 noundef %e0) #4 {
entry:
  %e15.addr = alloca i32, align 4
  %e14.addr = alloca i32, align 4
  %e13.addr = alloca i32, align 4
  %e12.addr = alloca i32, align 4
  %e11.addr = alloca i32, align 4
  %e10.addr = alloca i32, align 4
  %e9.addr = alloca i32, align 4
  %e8.addr = alloca i32, align 4
  %e7.addr = alloca i32, align 4
  %e6.addr = alloca i32, align 4
  %e5.addr = alloca i32, align 4
  %e4.addr = alloca i32, align 4
  %e3.addr = alloca i32, align 4
  %e2.addr = alloca i32, align 4
  %e1.addr = alloca i32, align 4
  %e0.addr = alloca i32, align 4
  %r_ = alloca %union.simde__m512i_private, align 64
  store i32 %e15, ptr %e15.addr, align 4, !tbaa !5
  store i32 %e14, ptr %e14.addr, align 4, !tbaa !5
  store i32 %e13, ptr %e13.addr, align 4, !tbaa !5
  store i32 %e12, ptr %e12.addr, align 4, !tbaa !5
  store i32 %e11, ptr %e11.addr, align 4, !tbaa !5
  store i32 %e10, ptr %e10.addr, align 4, !tbaa !5
  store i32 %e9, ptr %e9.addr, align 4, !tbaa !5
  store i32 %e8, ptr %e8.addr, align 4, !tbaa !5
  store i32 %e7, ptr %e7.addr, align 4, !tbaa !5
  store i32 %e6, ptr %e6.addr, align 4, !tbaa !5
  store i32 %e5, ptr %e5.addr, align 4, !tbaa !5
  store i32 %e4, ptr %e4.addr, align 4, !tbaa !5
  store i32 %e3, ptr %e3.addr, align 4, !tbaa !5
  store i32 %e2, ptr %e2.addr, align 4, !tbaa !5
  store i32 %e1, ptr %e1.addr, align 4, !tbaa !5
  store i32 %e0, ptr %e0.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 64, ptr %r_) #10
  %0 = load i32, ptr %e0.addr, align 4, !tbaa !5
  %1 = load <16 x i32>, ptr %r_, align 64
  %vecins = insertelement <16 x i32> %1, i32 %0, i32 0
  store <16 x i32> %vecins, ptr %r_, align 64
  %2 = load i32, ptr %e1.addr, align 4, !tbaa !5
  %3 = load <16 x i32>, ptr %r_, align 64
  %vecins1 = insertelement <16 x i32> %3, i32 %2, i32 1
  store <16 x i32> %vecins1, ptr %r_, align 64
  %4 = load i32, ptr %e2.addr, align 4, !tbaa !5
  %5 = load <16 x i32>, ptr %r_, align 64
  %vecins2 = insertelement <16 x i32> %5, i32 %4, i32 2
  store <16 x i32> %vecins2, ptr %r_, align 64
  %6 = load i32, ptr %e3.addr, align 4, !tbaa !5
  %7 = load <16 x i32>, ptr %r_, align 64
  %vecins3 = insertelement <16 x i32> %7, i32 %6, i32 3
  store <16 x i32> %vecins3, ptr %r_, align 64
  %8 = load i32, ptr %e4.addr, align 4, !tbaa !5
  %9 = load <16 x i32>, ptr %r_, align 64
  %vecins4 = insertelement <16 x i32> %9, i32 %8, i32 4
  store <16 x i32> %vecins4, ptr %r_, align 64
  %10 = load i32, ptr %e5.addr, align 4, !tbaa !5
  %11 = load <16 x i32>, ptr %r_, align 64
  %vecins5 = insertelement <16 x i32> %11, i32 %10, i32 5
  store <16 x i32> %vecins5, ptr %r_, align 64
  %12 = load i32, ptr %e6.addr, align 4, !tbaa !5
  %13 = load <16 x i32>, ptr %r_, align 64
  %vecins6 = insertelement <16 x i32> %13, i32 %12, i32 6
  store <16 x i32> %vecins6, ptr %r_, align 64
  %14 = load i32, ptr %e7.addr, align 4, !tbaa !5
  %15 = load <16 x i32>, ptr %r_, align 64
  %vecins7 = insertelement <16 x i32> %15, i32 %14, i32 7
  store <16 x i32> %vecins7, ptr %r_, align 64
  %16 = load i32, ptr %e8.addr, align 4, !tbaa !5
  %17 = load <16 x i32>, ptr %r_, align 64
  %vecins8 = insertelement <16 x i32> %17, i32 %16, i32 8
  store <16 x i32> %vecins8, ptr %r_, align 64
  %18 = load i32, ptr %e9.addr, align 4, !tbaa !5
  %19 = load <16 x i32>, ptr %r_, align 64
  %vecins9 = insertelement <16 x i32> %19, i32 %18, i32 9
  store <16 x i32> %vecins9, ptr %r_, align 64
  %20 = load i32, ptr %e10.addr, align 4, !tbaa !5
  %21 = load <16 x i32>, ptr %r_, align 64
  %vecins10 = insertelement <16 x i32> %21, i32 %20, i32 10
  store <16 x i32> %vecins10, ptr %r_, align 64
  %22 = load i32, ptr %e11.addr, align 4, !tbaa !5
  %23 = load <16 x i32>, ptr %r_, align 64
  %vecins11 = insertelement <16 x i32> %23, i32 %22, i32 11
  store <16 x i32> %vecins11, ptr %r_, align 64
  %24 = load i32, ptr %e12.addr, align 4, !tbaa !5
  %25 = load <16 x i32>, ptr %r_, align 64
  %vecins12 = insertelement <16 x i32> %25, i32 %24, i32 12
  store <16 x i32> %vecins12, ptr %r_, align 64
  %26 = load i32, ptr %e13.addr, align 4, !tbaa !5
  %27 = load <16 x i32>, ptr %r_, align 64
  %vecins13 = insertelement <16 x i32> %27, i32 %26, i32 13
  store <16 x i32> %vecins13, ptr %r_, align 64
  %28 = load i32, ptr %e14.addr, align 4, !tbaa !5
  %29 = load <16 x i32>, ptr %r_, align 64
  %vecins14 = insertelement <16 x i32> %29, i32 %28, i32 14
  store <16 x i32> %vecins14, ptr %r_, align 64
  %30 = load i32, ptr %e15.addr, align 4, !tbaa !5
  %31 = load <16 x i32>, ptr %r_, align 64
  %vecins15 = insertelement <16 x i32> %31, i32 %30, i32 15
  store <16 x i32> %vecins15, ptr %r_, align 64
  %call = call <8 x i64> @simde__m512i_from_private(ptr noundef byval(%union.simde__m512i_private) align 64 %r_)
  call void @llvm.lifetime.end.p0(i64 64, ptr %r_) #10
  ret <8 x i64> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i64> @simde_mm512_slli_epi32(ptr noundef byval(<8 x i64>) align 64 %0, i32 noundef %imm8) #4 {
entry:
  %a.addr = alloca <8 x i64>, align 64
  %imm8.addr = alloca i32, align 4
  %r_ = alloca %union.simde__m512i_private, align 64
  %a_ = alloca %union.simde__m512i_private, align 64
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %a = load <8 x i64>, ptr %0, align 64, !tbaa !16
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  store i32 %imm8, ptr %imm8.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 64, ptr %r_) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr %a_) #10
  %1 = load <8 x i64>, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %1, ptr %indirect-arg-temp, align 64, !tbaa !16
  call void @simde__m512i_to_private(ptr sret(%union.simde__m512i_private) align 64 %a_, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp)
  %2 = load i32, ptr %imm8.addr, align 4, !tbaa !5
  %cmp = icmp ugt i32 %2, 31
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.memset.p0.i64(ptr align 64 %r_, i8 0, i64 64, i1 false)
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load <16 x i32>, ptr %a_, align 64, !tbaa !16
  %4 = load i32, ptr %imm8.addr, align 4, !tbaa !5
  %splat.splatinsert = insertelement <16 x i32> poison, i32 %4, i64 0
  %splat.splat = shufflevector <16 x i32> %splat.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %shl = shl <16 x i32> %3, %splat.splat
  store <16 x i32> %shl, ptr %r_, align 64, !tbaa !16
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call = call <8 x i64> @simde__m512i_from_private(ptr noundef byval(%union.simde__m512i_private) align 64 %r_)
  call void @llvm.lifetime.end.p0(i64 64, ptr %a_) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr %r_) #10
  ret <8 x i64> %call
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_x86_assert_equal_i32x16_(ptr noundef byval(<8 x i64>) align 64 %0, ptr noundef byval(<8 x i64>) align 64 %1, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %a.addr = alloca <8 x i64>, align 64
  %b.addr = alloca <8 x i64>, align 64
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [16 x i32], align 16
  %b_ = alloca [16 x i32], align 16
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
  call void @llvm.lifetime.start.p0(i64 64, ptr %a_) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr %b_) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_) #10
  %arraydecay = getelementptr inbounds [16 x i32], ptr %a_, i64 0, i64 0
  store ptr %arraydecay, ptr %simde_r_, align 8, !tbaa !9
  %2 = load ptr, ptr %simde_r_, align 8, !tbaa !9
  store ptr %2, ptr %tmp, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_) #10
  %3 = load ptr, ptr %tmp, align 8, !tbaa !9
  %4 = load <8 x i64>, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %4, ptr %indirect-arg-temp, align 64, !tbaa !16
  call void @simde_mm512_storeu_si512(ptr noundef %3, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_1) #10
  %arraydecay2 = getelementptr inbounds [16 x i32], ptr %b_, i64 0, i64 0
  store ptr %arraydecay2, ptr %simde_r_1, align 8, !tbaa !9
  %5 = load ptr, ptr %simde_r_1, align 8, !tbaa !9
  store ptr %5, ptr %tmp3, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_1) #10
  %6 = load ptr, ptr %tmp3, align 8, !tbaa !9
  %7 = load <8 x i64>, ptr %b.addr, align 64, !tbaa !16
  store <8 x i64> %7, ptr %indirect-arg-temp4, align 64, !tbaa !16
  call void @simde_mm512_storeu_si512(ptr noundef %6, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp4)
  %arraydecay5 = getelementptr inbounds [16 x i32], ptr %a_, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [16 x i32], ptr %b_, i64 0, i64 0
  %8 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %9 = load i32, ptr %line.addr, align 4, !tbaa !5
  %10 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %11 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vi32_(i64 noundef 16, ptr noundef %arraydecay5, ptr noundef %arraydecay6, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11)
  call void @llvm.lifetime.end.p0(i64 64, ptr %b_) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr %a_) #10
  ret i32 %call
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
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
define internal <8 x i64> @simde_mm512_set_epi64(i64 noundef %e7, i64 noundef %e6, i64 noundef %e5, i64 noundef %e4, i64 noundef %e3, i64 noundef %e2, i64 noundef %e1, i64 noundef %e0) #4 {
entry:
  %e7.addr = alloca i64, align 8
  %e6.addr = alloca i64, align 8
  %e5.addr = alloca i64, align 8
  %e4.addr = alloca i64, align 8
  %e3.addr = alloca i64, align 8
  %e2.addr = alloca i64, align 8
  %e1.addr = alloca i64, align 8
  %e0.addr = alloca i64, align 8
  %r_ = alloca %union.simde__m512i_private, align 64
  store i64 %e7, ptr %e7.addr, align 8, !tbaa !11
  store i64 %e6, ptr %e6.addr, align 8, !tbaa !11
  store i64 %e5, ptr %e5.addr, align 8, !tbaa !11
  store i64 %e4, ptr %e4.addr, align 8, !tbaa !11
  store i64 %e3, ptr %e3.addr, align 8, !tbaa !11
  store i64 %e2, ptr %e2.addr, align 8, !tbaa !11
  store i64 %e1, ptr %e1.addr, align 8, !tbaa !11
  store i64 %e0, ptr %e0.addr, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %r_) #10
  %0 = load i64, ptr %e0.addr, align 8, !tbaa !11
  %1 = load <8 x i64>, ptr %r_, align 64
  %vecins = insertelement <8 x i64> %1, i64 %0, i32 0
  store <8 x i64> %vecins, ptr %r_, align 64
  %2 = load i64, ptr %e1.addr, align 8, !tbaa !11
  %3 = load <8 x i64>, ptr %r_, align 64
  %vecins1 = insertelement <8 x i64> %3, i64 %2, i32 1
  store <8 x i64> %vecins1, ptr %r_, align 64
  %4 = load i64, ptr %e2.addr, align 8, !tbaa !11
  %5 = load <8 x i64>, ptr %r_, align 64
  %vecins2 = insertelement <8 x i64> %5, i64 %4, i32 2
  store <8 x i64> %vecins2, ptr %r_, align 64
  %6 = load i64, ptr %e3.addr, align 8, !tbaa !11
  %7 = load <8 x i64>, ptr %r_, align 64
  %vecins3 = insertelement <8 x i64> %7, i64 %6, i32 3
  store <8 x i64> %vecins3, ptr %r_, align 64
  %8 = load i64, ptr %e4.addr, align 8, !tbaa !11
  %9 = load <8 x i64>, ptr %r_, align 64
  %vecins4 = insertelement <8 x i64> %9, i64 %8, i32 4
  store <8 x i64> %vecins4, ptr %r_, align 64
  %10 = load i64, ptr %e5.addr, align 8, !tbaa !11
  %11 = load <8 x i64>, ptr %r_, align 64
  %vecins5 = insertelement <8 x i64> %11, i64 %10, i32 5
  store <8 x i64> %vecins5, ptr %r_, align 64
  %12 = load i64, ptr %e6.addr, align 8, !tbaa !11
  %13 = load <8 x i64>, ptr %r_, align 64
  %vecins6 = insertelement <8 x i64> %13, i64 %12, i32 6
  store <8 x i64> %vecins6, ptr %r_, align 64
  %14 = load i64, ptr %e7.addr, align 8, !tbaa !11
  %15 = load <8 x i64>, ptr %r_, align 64
  %vecins7 = insertelement <8 x i64> %15, i64 %14, i32 7
  store <8 x i64> %vecins7, ptr %r_, align 64
  %call = call <8 x i64> @simde__m512i_from_private(ptr noundef byval(%union.simde__m512i_private) align 64 %r_)
  call void @llvm.lifetime.end.p0(i64 64, ptr %r_) #10
  ret <8 x i64> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i64> @simde_mm512_slli_epi64(ptr noundef byval(<8 x i64>) align 64 %0, i32 noundef %imm8) #4 {
entry:
  %a.addr = alloca <8 x i64>, align 64
  %imm8.addr = alloca i32, align 4
  %r_ = alloca %union.simde__m512i_private, align 64
  %a_ = alloca %union.simde__m512i_private, align 64
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %a = load <8 x i64>, ptr %0, align 64, !tbaa !16
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  store i32 %imm8, ptr %imm8.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 64, ptr %r_) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr %a_) #10
  %1 = load <8 x i64>, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %1, ptr %indirect-arg-temp, align 64, !tbaa !16
  call void @simde__m512i_to_private(ptr sret(%union.simde__m512i_private) align 64 %a_, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp)
  %2 = load i32, ptr %imm8.addr, align 4, !tbaa !5
  %cmp = icmp ugt i32 %2, 63
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.memset.p0.i64(ptr align 64 %r_, i8 0, i64 64, i1 false)
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load <8 x i64>, ptr %a_, align 64, !tbaa !16
  %4 = load i32, ptr %imm8.addr, align 4, !tbaa !5
  %splat.splatinsert = insertelement <8 x i32> poison, i32 %4, i64 0
  %splat.splat = shufflevector <8 x i32> %splat.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %sh_prom = zext <8 x i32> %splat.splat to <8 x i64>
  %shl = shl <8 x i64> %3, %sh_prom
  store <8 x i64> %shl, ptr %r_, align 64, !tbaa !16
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call = call <8 x i64> @simde__m512i_from_private(ptr noundef byval(%union.simde__m512i_private) align 64 %r_)
  call void @llvm.lifetime.end.p0(i64 64, ptr %a_) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr %r_) #10
  ret <8 x i64> %call
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_x86_assert_equal_i64x8_(ptr noundef byval(<8 x i64>) align 64 %0, ptr noundef byval(<8 x i64>) align 64 %1, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %a.addr = alloca <8 x i64>, align 64
  %b.addr = alloca <8 x i64>, align 64
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [8 x i64], align 16
  %b_ = alloca [8 x i64], align 16
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
  call void @llvm.lifetime.start.p0(i64 64, ptr %a_) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr %b_) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_) #10
  %arraydecay = getelementptr inbounds [8 x i64], ptr %a_, i64 0, i64 0
  store ptr %arraydecay, ptr %simde_r_, align 8, !tbaa !9
  %2 = load ptr, ptr %simde_r_, align 8, !tbaa !9
  store ptr %2, ptr %tmp, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_) #10
  %3 = load ptr, ptr %tmp, align 8, !tbaa !9
  %4 = load <8 x i64>, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %4, ptr %indirect-arg-temp, align 64, !tbaa !16
  call void @simde_mm512_storeu_si512(ptr noundef %3, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_1) #10
  %arraydecay2 = getelementptr inbounds [8 x i64], ptr %b_, i64 0, i64 0
  store ptr %arraydecay2, ptr %simde_r_1, align 8, !tbaa !9
  %5 = load ptr, ptr %simde_r_1, align 8, !tbaa !9
  store ptr %5, ptr %tmp3, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_1) #10
  %6 = load ptr, ptr %tmp3, align 8, !tbaa !9
  %7 = load <8 x i64>, ptr %b.addr, align 64, !tbaa !16
  store <8 x i64> %7, ptr %indirect-arg-temp4, align 64, !tbaa !16
  call void @simde_mm512_storeu_si512(ptr noundef %6, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp4)
  %arraydecay5 = getelementptr inbounds [8 x i64], ptr %a_, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [8 x i64], ptr %b_, i64 0, i64 0
  %8 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %9 = load i32, ptr %line.addr, align 4, !tbaa !5
  %10 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %11 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vi64_(i64 noundef 8, ptr noundef %arraydecay5, ptr noundef %arraydecay6, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11)
  call void @llvm.lifetime.end.p0(i64 64, ptr %b_) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr %a_) #10
  ret i32 %call
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
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
declare void @llvm.va_start.p0(ptr) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { alwaysinline nounwind uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { alwaysinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }

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
!17 = !{!18, !6, i64 64}
!18 = !{!"", !7, i64 0, !6, i64 64, !7, i64 128}
!19 = !{!20, !20, i64 0}
!20 = !{!"short", !7, i64 0}

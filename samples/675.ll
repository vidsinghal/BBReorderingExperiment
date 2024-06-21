; ModuleID = 'samples/675.bc'
source_filename = "/local-ssd/bloaty-tqhx4tl6ouelctwe2swnvva5evdkosgj-build/aidengro/spack-stage-bloaty-1.1-tqhx4tl6ouelctwe2swnvva5evdkosgj/spack-src/third_party/capstone/arch/M680X/M680XDisassembler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_tables = type { ptr, [2 x ptr], [2 x i64], [3 x i8], [3 x ptr], [3 x i64], ptr, ptr, [2 x i32] }
%struct.insn_to_changed_regs = type { i32, i32, [10 x i32] }
%struct.cs_struct = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.ARM_ITStatus, i32, i32, i32, i8, ptr, ptr, i8, i8, %struct.cs_opt_skipdata, ptr, ptr, ptr }
%struct.ARM_ITStatus = type { [8 x i8], i32 }
%struct.cs_opt_skipdata = type { ptr, ptr, ptr }
%struct.m680x_info = type { ptr, i32, i16, i32, %struct.cs_m680x, ptr, i32, i8 }
%struct.cs_m680x = type { i8, i8, [9 x %struct.cs_m680x_op] }
%struct.cs_m680x_op = type { i32, %union.anon, i8, i8 }
%union.anon = type { %struct.m680x_op_idx }
%struct.m680x_op_idx = type { i32, i32, i16, i16, i8, i8, i8 }
%struct.cs_insn = type { i32, i64, i16, [24 x i8], [32 x i8], [160 x i8], ptr }
%struct.inst_pageX = type { i32 }
%struct.inst_page1 = type { i24 }
%struct.insn_desc = type { i32, i32, [2 x i32], i16 }
%struct.MCInst = type { i32, i8, i8, i8, i32, [48 x %struct.MCOperand], ptr, i64, ptr, i8, [4 x i8], i8, i8, i8, i8, [8 x i8], [32 x i8] }
%struct.MCOperand = type { i32, i8, %union.anon.18 }
%union.anon.18 = type { i64 }
%struct.insn_props = type { i24 }
%struct.cs_detail = type { [16 x i16], i8, [20 x i16], i8, [8 x i8], i8, %union.anon.0 }
%union.anon.0 = type { %struct.cs_arm }
%struct.cs_arm = type { i8, i32, i32, i32, i32, i32, i8, i8, i32, i8, [36 x %struct.cs_arm_op] }
%struct.cs_arm_op = type { i32, %struct.anon.4, i32, %union.anon.5, i8, i8, i8 }
%struct.anon.4 = type { i32, i32 }
%union.anon.5 = type { double, [16 x i8] }
%struct.m680x_op_ext = type { i16, i8 }
%struct.m680x_op_rel = type { i16, i16 }

@g_idx12_to_reg_ids = dso_local global [4 x i32] [i32 13, i32 14, i32 15, i32 19], align 16
@g_or12_to_reg_ids = dso_local global [3 x i32] [i32 1, i32 2, i32 6], align 4
@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [37 x i8] c"M680X_CPU_TYPE_%s is not suppported\0A\00", align 1
@s_cpu_type = internal global [11 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], align 16
@g_cpu_tables = internal constant [11 x %struct.cpu_tables] [%struct.cpu_tables zeroinitializer, %struct.cpu_tables { ptr @g_m6800_inst_page1_table, [2 x ptr] [ptr @g_m6801_inst_overlay_table, ptr @g_hd6301_inst_overlay_table], [2 x i64] [i64 23, i64 10], [3 x i8] zeroinitializer, [3 x ptr] zeroinitializer, [3 x i64] zeroinitializer, ptr @g_m6801_reg_byte_size, ptr null, [2 x i32] zeroinitializer }, %struct.cpu_tables { ptr @g_m6809_inst_page1_table, [2 x ptr] [ptr @g_hd6309_inst_overlay_table, ptr null], [2 x i64] [i64 14, i64 0], [3 x i8] c"\10\11\00", [3 x ptr] [ptr @g_hd6309_inst_page2_table, ptr @g_hd6309_inst_page3_table, ptr null], [3 x i64] [i64 118, i64 83, i64 0], ptr @g_hd6309_reg_byte_size, ptr null, [2 x i32] zeroinitializer }, %struct.cpu_tables { ptr @g_m6800_inst_page1_table, [2 x ptr] zeroinitializer, [2 x i64] zeroinitializer, [3 x i8] zeroinitializer, [3 x ptr] zeroinitializer, [3 x i64] zeroinitializer, ptr @g_m6800_reg_byte_size, ptr null, [2 x i32] zeroinitializer }, %struct.cpu_tables { ptr @g_m6800_inst_page1_table, [2 x ptr] [ptr @g_m6801_inst_overlay_table, ptr null], [2 x i64] [i64 23, i64 0], [3 x i8] zeroinitializer, [3 x ptr] zeroinitializer, [3 x i64] zeroinitializer, ptr @g_m6801_reg_byte_size, ptr null, [2 x i32] zeroinitializer }, %struct.cpu_tables { ptr @g_m6805_inst_page1_table, [2 x ptr] zeroinitializer, [2 x i64] zeroinitializer, [3 x i8] zeroinitializer, [3 x ptr] zeroinitializer, [3 x i64] zeroinitializer, ptr @g_m6805_reg_byte_size, ptr null, [2 x i32] [i32 37, i32 70] }, %struct.cpu_tables { ptr @g_m6805_inst_page1_table, [2 x ptr] [ptr @g_m6808_inst_overlay_table, ptr null], [2 x i64] [i64 41, i64 0], [3 x i8] c"\9E\00\00", [3 x ptr] [ptr @g_m6808_inst_page2_table, ptr null, ptr null], [3 x i64] [i64 41, i64 0, i64 0], ptr @g_m6808_reg_byte_size, ptr null, [2 x i32] [i32 37, i32 70] }, %struct.cpu_tables { ptr @g_m6809_inst_page1_table, [2 x ptr] zeroinitializer, [2 x i64] zeroinitializer, [3 x i8] c"\10\11\00", [3 x ptr] [ptr @g_m6809_inst_page2_table, ptr @g_m6809_inst_page3_table, ptr null], [3 x i64] [i64 38, i64 9, i64 0], ptr @g_m6809_reg_byte_size, ptr @m6809_tfr_reg_valid, [2 x i32] zeroinitializer }, %struct.cpu_tables { ptr @g_m6800_inst_page1_table, [2 x ptr] [ptr @g_m6801_inst_overlay_table, ptr @g_m6811_inst_overlay_table], [2 x i64] [i64 23, i64 13], [3 x i8] c"\18\1A\CD", [3 x ptr] [ptr @g_m6811_inst_page2_table, ptr @g_m6811_inst_page3_table, ptr @g_m6811_inst_page4_table], [3 x i64] [i64 64, i64 7, i64 4], ptr @g_m6811_reg_byte_size, ptr null, [2 x i32] zeroinitializer }, %struct.cpu_tables { ptr @g_cpu12_inst_page1_table, [2 x ptr] zeroinitializer, [2 x i64] zeroinitializer, [3 x i8] c"\18\00\00", [3 x ptr] [ptr @g_cpu12_inst_page2_table, ptr null, ptr null], [3 x i64] [i64 54, i64 0, i64 0], ptr @g_cpu12_reg_byte_size, ptr null, [2 x i32] zeroinitializer }, %struct.cpu_tables { ptr @g_m6805_inst_page1_table, [2 x ptr] [ptr @g_m6808_inst_overlay_table, ptr @g_hcs08_inst_overlay_table], [2 x i64] [i64 41, i64 4], [3 x i8] c"\9E\00\00", [3 x ptr] [ptr @g_hcs08_inst_page2_table, ptr null, ptr null], [3 x i64] [i64 47, i64 0, i64 0], ptr @g_m6808_reg_byte_size, ptr null, [2 x i32] [i32 37, i32 70] }], align 16
@.str.1 = private unnamed_addr constant [8 x i8] c"INVALID\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"6301\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"6309\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"6800\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"6801\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"6805\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"6808\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"6809\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"6811\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"CPU12\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"HCS08\00", align 1
@g_m6801_reg_byte_size = internal constant [22 x i8] c"\00\01\01\00\00\00\02\00\01\00\00\00\00\02\00\02\00\00\00\02\00\00", align 16
@g_hd6309_reg_byte_size = internal constant [22 x i8] c"\00\01\01\01\01\01\02\02\01\01\01\00\00\02\02\02\02\02\04\02\00\00", align 16
@g_m6800_reg_byte_size = internal constant [22 x i8] c"\00\01\01\00\00\00\00\00\01\00\00\00\00\02\00\02\00\00\00\02\00\00", align 16
@g_m6805_reg_byte_size = internal constant [22 x i8] c"\00\01\00\00\00\00\00\00\01\00\00\00\00\01\00\02\00\00\00\02\00\00", align 16
@g_m6808_reg_byte_size = internal constant [22 x i8] c"\00\01\00\00\00\00\00\00\01\00\00\02\01\01\00\02\00\00\00\02\00\00", align 16
@g_m6809_reg_byte_size = internal constant [22 x i8] c"\00\01\01\00\00\00\02\00\01\01\00\00\00\02\02\02\02\00\00\02\00\00", align 16
@m6809_tfr_reg_valid = internal constant [16 x i8] c"\01\01\01\01\01\01\00\00\01\01\01\01\00\00\00\00", align 16
@g_m6811_reg_byte_size = internal constant [22 x i8] c"\00\01\01\00\00\00\02\00\01\00\00\00\00\02\02\02\00\00\00\02\00\00", align 16
@g_cpu12_reg_byte_size = internal constant [22 x i8] c"\00\01\01\00\00\00\02\00\01\00\00\00\00\02\02\02\00\00\00\02\02\02", align 16
@g_m6800_inst_page1_table = internal constant [256 x { i8, i8, i8, i8 }] [{ i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -20, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 71, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 81, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -87, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -124, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 90, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 38, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 79, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 36, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 80, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 37, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 30, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 75, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 70, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 73, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 117, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 1, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 68, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 46, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 58, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 36, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 38, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 63, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 40, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 72, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 73, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 65, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 61, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 41, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 59, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 43, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 57, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 90, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -88, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 1, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 2, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -125, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 93, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -10, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -9, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 29, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 28, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 95, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 66, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -24, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 104, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -40, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 21, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 31, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 27, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 15, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 124, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -95, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 83, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 82, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -23, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 105, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -39, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 22, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 32, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 28, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 16, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 125, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -94, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 84, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 83, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -25, i8 -112, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 103, i8 -112, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -41, i8 -112, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 20, i8 -111, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 30, i8 -112, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 26, i8 -112, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 14, i8 -111, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 123, i8 -112, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -96, i8 -112, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 82, i8 -111, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -85, i8 -112, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 81, i8 -112, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -25, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 103, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -41, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 20, i8 -113, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 30, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 26, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 14, i8 -113, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 123, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -96, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 82, i8 -113, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -85, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 81, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 59, i8 -121, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 92, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 32, i8 -121, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 21, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 53, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -65, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -108, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 5, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -16, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 10, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 114, i8 -120, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 71, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -55, i8 -120, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 59, i8 -115, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 92, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 32, i8 -115, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 21, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 53, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -65, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 43, i8 -115, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -108, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 5, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -16, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 10, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 114, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -55, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 53, i8 -115, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 59, i8 -111, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 92, i8 -112, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 32, i8 -111, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 21, i8 -112, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 53, i8 -112, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -65, i8 -112, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 43, i8 -111, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -108, i8 -112, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 5, i8 -112, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -16, i8 -112, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 10, i8 -112, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 114, i8 -112, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -84, i8 -112, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -55, i8 -112, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 53, i8 -111, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 59, i8 -113, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 92, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 32, i8 -113, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 21, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 53, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -65, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 43, i8 -113, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -108, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 5, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -16, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 10, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 114, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -84, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -55, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 53, i8 -113, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 60, i8 -121, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 93, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 33, i8 -121, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 22, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 54, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -64, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -107, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 6, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -15, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 11, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -52, i8 -120, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 60, i8 -115, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 93, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 33, i8 -115, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 22, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 54, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -64, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 44, i8 -115, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -107, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 6, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -15, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 11, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -52, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 56, i8 -115, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 60, i8 -111, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 93, i8 -112, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 33, i8 -111, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 22, i8 -112, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 54, i8 -112, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -64, i8 -112, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 44, i8 -111, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -107, i8 -112, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 6, i8 -112, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -15, i8 -112, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 11, i8 -112, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -52, i8 -112, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 56, i8 -111, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 60, i8 -113, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 93, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 33, i8 -113, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 22, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 54, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -64, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 44, i8 -113, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -107, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 6, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -15, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 11, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -52, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 56, i8 -113, i8 5, i8 undef }], align 16
@g_m6801_inst_overlay_table = internal constant [23 x { i8, i8, i8, i8 }] [{ i8, i8, i8, i8 } { i8 4, i8 -38, i8 -106, i8 5 }, { i8, i8, i8, i8 } { i8 5, i8 29, i8 -106, i8 5 }, { i8, i8, i8, i8 } { i8 33, i8 69, i8 -126, i8 5 }, { i8, i8, i8, i8 } { i8 56, i8 10, i8 -105, i8 5 }, { i8, i8, i8, i8 } { i8 58, i8 2, i8 -106, i8 5 }, { i8, i8, i8, i8 } { i8 60, i8 -1, i8 -106, i8 5 }, { i8, i8, i8, i8 } { i8 61, i8 -27, i8 -106, i8 5 }, { i8, i8, i8, i8 } { i8 -125, i8 61, i8 -119, i8 5 }, { i8, i8, i8, i8 } { i8 -109, i8 61, i8 -115, i8 5 }, { i8, i8, i8, i8 } { i8 -99, i8 -84, i8 -116, i8 5 }, { i8, i8, i8, i8 } { i8 -93, i8 61, i8 -111, i8 5 }, { i8, i8, i8, i8 } { i8 -77, i8 61, i8 -113, i8 5 }, { i8, i8, i8, i8 } { i8 -61, i8 12, i8 -120, i8 5 }, { i8, i8, i8, i8 } { i8 -52, i8 -61, i8 -120, i8 5 }, { i8, i8, i8, i8 } { i8 -45, i8 12, i8 -116, i8 5 }, { i8, i8, i8, i8 } { i8 -36, i8 -61, i8 -116, i8 5 }, { i8, i8, i8, i8 } { i8 -35, i8 47, i8 -115, i8 5 }, { i8, i8, i8, i8 } { i8 -29, i8 12, i8 -112, i8 5 }, { i8, i8, i8, i8 } { i8 -20, i8 -61, i8 -112, i8 5 }, { i8, i8, i8, i8 } { i8 -19, i8 47, i8 -111, i8 5 }, { i8, i8, i8, i8 } { i8 -13, i8 12, i8 -114, i8 5 }, { i8, i8, i8, i8 } { i8 -4, i8 -61, i8 -114, i8 5 }, { i8, i8, i8, i8 } { i8 -3, i8 47, i8 -113, i8 5 }], align 16
@g_hd6301_inst_overlay_table = internal constant [10 x { i8, i8, i8, i8 }] [{ i8, i8, i8, i8 } { i8 24, i8 99, i8 -105, i8 5 }, { i8, i8, i8, i8 } { i8 26, i8 41, i8 -105, i8 5 }, { i8, i8, i8, i8 } { i8 97, i8 17, i8 6, i8 4 }, { i8, i8, i8, i8 } { i8 98, i8 -18, i8 6, i8 4 }, { i8, i8, i8, i8 } { i8 101, i8 -117, i8 6, i8 4 }, { i8, i8, i8, i8 } { i8 107, i8 80, i8 7, i8 4 }, { i8, i8, i8, i8 } { i8 113, i8 17, i8 6, i8 3 }, { i8, i8, i8, i8 } { i8 114, i8 -18, i8 6, i8 3 }, { i8, i8, i8, i8 } { i8 117, i8 -117, i8 6, i8 3 }, { i8, i8, i8, i8 } { i8 123, i8 80, i8 7, i8 3 }], align 16
@g_m6809_inst_page1_table = internal constant [256 x { i8, i8, i8, i8 }] [{ i8, i8, i8, i8 } { i8 -25, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 103, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -41, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 20, i8 -115, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 30, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -46, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 14, i8 -115, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 123, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -96, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 82, i8 -115, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -85, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 81, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -20, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 69, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -71, i8 -124, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -69, i8 -124, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 117, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -13, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 23, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 39, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -103, i8 -104, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 79, i8 -103, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 68, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 69, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 46, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 58, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 36, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 38, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 63, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 40, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 72, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 73, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 65, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 61, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 41, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 59, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 43, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 57, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -48, i8 -108, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -47, i8 -108, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -50, i8 -108, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -49, i8 -108, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -5, i8 -102, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 6, i8 -101, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -3, i8 -102, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 8, i8 -101, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 29, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 2, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 28, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 116, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -27, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 66, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -24, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 104, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -40, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 21, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 31, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -45, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 15, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 124, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -95, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 83, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 82, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -23, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 105, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -39, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 22, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 32, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -44, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 16, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 125, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -94, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 84, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 83, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -25, i8 -108, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 103, i8 -108, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -41, i8 -108, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 20, i8 -107, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 30, i8 -108, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -46, i8 -108, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 14, i8 -107, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 123, i8 -108, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -96, i8 -108, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 82, i8 -107, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -85, i8 -108, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 81, i8 -108, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -25, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 103, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -41, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 20, i8 -113, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 30, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -46, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 14, i8 -113, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 123, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -96, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 82, i8 -113, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -85, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 81, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 59, i8 -121, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 92, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 32, i8 -121, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 61, i8 -119, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 21, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 53, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -66, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -108, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 5, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -17, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 10, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 101, i8 -120, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 71, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -52, i8 -120, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 59, i8 -115, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 92, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 32, i8 -115, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 61, i8 -115, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 21, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 53, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -66, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 42, i8 -115, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -108, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 5, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -17, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 10, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 101, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -84, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -52, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 56, i8 -115, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 59, i8 -107, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 92, i8 -108, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 32, i8 -107, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 61, i8 -107, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 21, i8 -108, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 53, i8 -108, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -66, i8 -108, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 42, i8 -107, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -108, i8 -108, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 5, i8 -108, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -17, i8 -108, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 10, i8 -108, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 101, i8 -108, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -84, i8 -108, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -52, i8 -108, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 56, i8 -107, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 59, i8 -113, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 92, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 32, i8 -113, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 61, i8 -113, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 21, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 53, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -66, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 42, i8 -113, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -108, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 5, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -17, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 10, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 101, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -84, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -52, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 56, i8 -113, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 60, i8 -121, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 93, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 33, i8 -121, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 12, i8 -120, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 22, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 54, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -63, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -107, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 6, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -14, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 11, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -61, i8 -120, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -54, i8 -120, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 60, i8 -115, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 93, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 33, i8 -115, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 12, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 22, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 54, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -63, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 45, i8 -115, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -107, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 6, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -14, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 11, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -61, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 47, i8 -115, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -54, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 54, i8 -115, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 60, i8 -107, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 93, i8 -108, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 33, i8 -107, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 12, i8 -108, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 22, i8 -108, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 54, i8 -108, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -63, i8 -108, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 45, i8 -107, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -107, i8 -108, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 6, i8 -108, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -14, i8 -108, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 11, i8 -108, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -61, i8 -108, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 47, i8 -107, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -54, i8 -108, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 54, i8 -107, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 60, i8 -113, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 93, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 33, i8 -113, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 12, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 22, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 54, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -63, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 45, i8 -113, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -107, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 6, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -14, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 11, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -61, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 47, i8 -113, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -54, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 54, i8 -113, i8 5, i8 undef }], align 16
@g_hd6309_inst_overlay_table = internal constant [14 x { i8, i8, i8, i8 }] [{ i8, i8, i8, i8 } { i8 1, i8 -18, i8 6, i8 3 }, { i8, i8, i8, i8 } { i8 2, i8 17, i8 6, i8 3 }, { i8, i8, i8, i8 } { i8 5, i8 -117, i8 6, i8 3 }, { i8, i8, i8, i8 } { i8 11, i8 80, i8 7, i8 3 }, { i8, i8, i8, i8 } { i8 20, i8 40, i8 -105, i8 5 }, { i8, i8, i8, i8 } { i8 97, i8 -18, i8 6, i8 5 }, { i8, i8, i8, i8 } { i8 98, i8 17, i8 6, i8 5 }, { i8, i8, i8, i8 } { i8 101, i8 -117, i8 6, i8 5 }, { i8, i8, i8, i8 } { i8 107, i8 80, i8 7, i8 5 }, { i8, i8, i8, i8 } { i8 113, i8 -18, i8 -122, i8 3 }, { i8, i8, i8, i8 } { i8 114, i8 17, i8 -122, i8 3 }, { i8, i8, i8, i8 } { i8 117, i8 -117, i8 -122, i8 3 }, { i8, i8, i8, i8 } { i8 123, i8 80, i8 -121, i8 3 }, { i8, i8, i8, i8 } { i8 -51, i8 -56, i8 -118, i8 5 }], align 16
@g_hd6309_inst_page2_table = internal constant [118 x { i8, i8, i8, i8 }] [{ i8, i8, i8, i8 } { i8 33, i8 -70, i8 -124, i8 5 }, { i8, i8, i8, i8 } { i8 34, i8 -78, i8 -124, i8 5 }, { i8, i8, i8, i8 } { i8 35, i8 -76, i8 -124, i8 5 }, { i8, i8, i8, i8 } { i8 36, i8 -83, i8 -124, i8 5 }, { i8, i8, i8, i8 } { i8 37, i8 -82, i8 -124, i8 5 }, { i8, i8, i8, i8 } { i8 38, i8 -73, i8 -124, i8 5 }, { i8, i8, i8, i8 } { i8 39, i8 -81, i8 -124, i8 5 }, { i8, i8, i8, i8 } { i8 40, i8 -68, i8 -124, i8 5 }, { i8, i8, i8, i8 } { i8 41, i8 -67, i8 -124, i8 5 }, { i8, i8, i8, i8 } { i8 42, i8 -72, i8 -124, i8 5 }, { i8, i8, i8, i8 } { i8 43, i8 -74, i8 -124, i8 5 }, { i8, i8, i8, i8 } { i8 44, i8 -80, i8 -124, i8 5 }, { i8, i8, i8, i8 } { i8 45, i8 -75, i8 -124, i8 5 }, { i8, i8, i8, i8 } { i8 46, i8 -79, i8 -124, i8 5 }, { i8, i8, i8, i8 } { i8 47, i8 -77, i8 -124, i8 5 }, { i8, i8, i8, i8 } { i8 48, i8 15, i8 -104, i8 5 }, { i8, i8, i8, i8 } { i8 49, i8 8, i8 -104, i8 5 }, { i8, i8, i8, i8 } { i8 50, i8 64, i8 -103, i8 5 }, { i8, i8, i8, i8 } { i8 51, i8 35, i8 -103, i8 5 }, { i8, i8, i8, i8 } { i8 52, i8 25, i8 -104, i8 5 }, { i8, i8, i8, i8 } { i8 53, i8 -11, i8 -104, i8 5 }, { i8, i8, i8, i8 } { i8 54, i8 -105, i8 -104, i8 5 }, { i8, i8, i8, i8 } { i8 55, i8 97, i8 -104, i8 5 }, { i8, i8, i8, i8 } { i8 56, i8 -4, i8 -106, i8 5 }, { i8, i8, i8, i8 } { i8 57, i8 7, i8 -105, i8 5 }, { i8, i8, i8, i8 } { i8 58, i8 -2, i8 -106, i8 5 }, { i8, i8, i8, i8 } { i8 59, i8 9, i8 -105, i8 5 }, { i8, i8, i8, i8 } { i8 63, i8 67, i8 -105, i8 5 }, { i8, i8, i8, i8 } { i8 64, i8 -22, i8 -106, i8 5 }, { i8, i8, i8, i8 } { i8 67, i8 106, i8 -106, i8 5 }, { i8, i8, i8, i8 } { i8 68, i8 -38, i8 -106, i8 5 }, { i8, i8, i8, i8 } { i8 70, i8 23, i8 -105, i8 5 }, { i8, i8, i8, i8 } { i8 71, i8 33, i8 -106, i8 5 }, { i8, i8, i8, i8 } { i8 72, i8 -43, i8 -106, i8 5 }, { i8, i8, i8, i8 } { i8 73, i8 17, i8 -105, i8 5 }, { i8, i8, i8, i8 } { i8 74, i8 126, i8 -106, i8 5 }, { i8, i8, i8, i8 } { i8 76, i8 -93, i8 -106, i8 5 }, { i8, i8, i8, i8 } { i8 77, i8 85, i8 -105, i8 5 }, { i8, i8, i8, i8 } { i8 79, i8 84, i8 -106, i8 5 }, { i8, i8, i8, i8 } { i8 83, i8 109, i8 -106, i8 5 }, { i8, i8, i8, i8 } { i8 84, i8 -37, i8 -106, i8 5 }, { i8, i8, i8, i8 } { i8 86, i8 24, i8 -105, i8 5 }, { i8, i8, i8, i8 } { i8 89, i8 18, i8 -105, i8 5 }, { i8, i8, i8, i8 } { i8 90, i8 -127, i8 -106, i8 5 }, { i8, i8, i8, i8 } { i8 92, i8 -90, i8 -106, i8 5 }, { i8, i8, i8, i8 } { i8 93, i8 88, i8 -105, i8 5 }, { i8, i8, i8, i8 } { i8 95, i8 88, i8 -106, i8 5 }, { i8, i8, i8, i8 } { i8 -128, i8 65, i8 -119, i8 5 }, { i8, i8, i8, i8 } { i8 -127, i8 100, i8 -120, i8 5 }, { i8, i8, i8, i8 } { i8 -126, i8 34, i8 -119, i8 5 }, { i8, i8, i8, i8 } { i8 -125, i8 94, i8 -120, i8 5 }, { i8, i8, i8, i8 } { i8 -124, i8 24, i8 -120, i8 5 }, { i8, i8, i8, i8 } { i8 -123, i8 55, i8 -120, i8 5 }, { i8, i8, i8, i8 } { i8 -122, i8 -53, i8 -120, i8 5 }, { i8, i8, i8, i8 } { i8 -120, i8 -106, i8 -120, i8 5 }, { i8, i8, i8, i8 } { i8 -119, i8 7, i8 -120, i8 5 }, { i8, i8, i8, i8 } { i8 -118, i8 -12, i8 -120, i8 5 }, { i8, i8, i8, i8 } { i8 -117, i8 16, i8 -120, i8 5 }, { i8, i8, i8, i8 } { i8 -116, i8 102, i8 -120, i8 5 }, { i8, i8, i8, i8 } { i8 -114, i8 -51, i8 -120, i8 5 }, { i8, i8, i8, i8 } { i8 -112, i8 65, i8 -115, i8 5 }, { i8, i8, i8, i8 } { i8 -111, i8 100, i8 -116, i8 5 }, { i8, i8, i8, i8 } { i8 -110, i8 34, i8 -115, i8 5 }, { i8, i8, i8, i8 } { i8 -109, i8 94, i8 -116, i8 5 }, { i8, i8, i8, i8 } { i8 -108, i8 24, i8 -116, i8 5 }, { i8, i8, i8, i8 } { i8 -107, i8 55, i8 -116, i8 5 }, { i8, i8, i8, i8 } { i8 -106, i8 -53, i8 -116, i8 5 }, { i8, i8, i8, i8 } { i8 -105, i8 55, i8 -115, i8 5 }, { i8, i8, i8, i8 } { i8 -104, i8 -106, i8 -116, i8 5 }, { i8, i8, i8, i8 } { i8 -103, i8 7, i8 -116, i8 5 }, { i8, i8, i8, i8 } { i8 -102, i8 -12, i8 -116, i8 5 }, { i8, i8, i8, i8 } { i8 -101, i8 16, i8 -116, i8 5 }, { i8, i8, i8, i8 } { i8 -100, i8 102, i8 -116, i8 5 }, { i8, i8, i8, i8 } { i8 -98, i8 -51, i8 -116, i8 5 }, { i8, i8, i8, i8 } { i8 -97, i8 57, i8 -115, i8 5 }, { i8, i8, i8, i8 } { i8 -96, i8 65, i8 -107, i8 5 }, { i8, i8, i8, i8 } { i8 -95, i8 100, i8 -108, i8 5 }, { i8, i8, i8, i8 } { i8 -94, i8 34, i8 -107, i8 5 }, { i8, i8, i8, i8 } { i8 -93, i8 94, i8 -108, i8 5 }, { i8, i8, i8, i8 } { i8 -92, i8 24, i8 -108, i8 5 }, { i8, i8, i8, i8 } { i8 -91, i8 55, i8 -108, i8 5 }, { i8, i8, i8, i8 } { i8 -90, i8 -53, i8 -108, i8 5 }, { i8, i8, i8, i8 } { i8 -89, i8 55, i8 -107, i8 5 }, { i8, i8, i8, i8 } { i8 -88, i8 -106, i8 -108, i8 5 }, { i8, i8, i8, i8 } { i8 -87, i8 7, i8 -108, i8 5 }, { i8, i8, i8, i8 } { i8 -86, i8 -12, i8 -108, i8 5 }, { i8, i8, i8, i8 } { i8 -85, i8 16, i8 -108, i8 5 }, { i8, i8, i8, i8 } { i8 -84, i8 102, i8 -108, i8 5 }, { i8, i8, i8, i8 } { i8 -82, i8 -51, i8 -108, i8 5 }, { i8, i8, i8, i8 } { i8 -81, i8 57, i8 -107, i8 5 }, { i8, i8, i8, i8 } { i8 -80, i8 65, i8 -113, i8 5 }, { i8, i8, i8, i8 } { i8 -79, i8 100, i8 -114, i8 5 }, { i8, i8, i8, i8 } { i8 -78, i8 34, i8 -113, i8 5 }, { i8, i8, i8, i8 } { i8 -77, i8 94, i8 -114, i8 5 }, { i8, i8, i8, i8 } { i8 -76, i8 24, i8 -114, i8 5 }, { i8, i8, i8, i8 } { i8 -75, i8 55, i8 -114, i8 5 }, { i8, i8, i8, i8 } { i8 -74, i8 -53, i8 -114, i8 5 }, { i8, i8, i8, i8 } { i8 -73, i8 55, i8 -113, i8 5 }, { i8, i8, i8, i8 } { i8 -72, i8 -106, i8 -114, i8 5 }, { i8, i8, i8, i8 } { i8 -71, i8 7, i8 -114, i8 5 }, { i8, i8, i8, i8 } { i8 -70, i8 -12, i8 -114, i8 5 }, { i8, i8, i8, i8 } { i8 -69, i8 16, i8 -114, i8 5 }, { i8, i8, i8, i8 } { i8 -68, i8 102, i8 -114, i8 5 }, { i8, i8, i8, i8 } { i8 -66, i8 -51, i8 -114, i8 5 }, { i8, i8, i8, i8 } { i8 -65, i8 57, i8 -113, i8 5 }, { i8, i8, i8, i8 } { i8 -50, i8 -55, i8 -120, i8 5 }, { i8, i8, i8, i8 } { i8 -36, i8 -56, i8 -116, i8 5 }, { i8, i8, i8, i8 } { i8 -35, i8 52, i8 -115, i8 5 }, { i8, i8, i8, i8 } { i8 -34, i8 -55, i8 -116, i8 5 }, { i8, i8, i8, i8 } { i8 -33, i8 53, i8 -115, i8 5 }, { i8, i8, i8, i8 } { i8 -20, i8 -56, i8 -108, i8 5 }, { i8, i8, i8, i8 } { i8 -19, i8 52, i8 -107, i8 5 }, { i8, i8, i8, i8 } { i8 -18, i8 -55, i8 -108, i8 5 }, { i8, i8, i8, i8 } { i8 -17, i8 53, i8 -107, i8 5 }, { i8, i8, i8, i8 } { i8 -4, i8 -56, i8 -114, i8 5 }, { i8, i8, i8, i8 } { i8 -3, i8 52, i8 -113, i8 5 }, { i8, i8, i8, i8 } { i8 -2, i8 -55, i8 -114, i8 5 }, { i8, i8, i8, i8 } { i8 -1, i8 53, i8 -113, i8 5 }], align 16
@g_hd6309_inst_page3_table = internal constant [83 x { i8, i8, i8, i8 }] [{ i8, i8, i8, i8 } { i8 48, i8 35, i8 -100, i8 5 }, { i8, i8, i8, i8 } { i8 49, i8 47, i8 -100, i8 5 }, { i8, i8, i8, i8 } { i8 50, i8 64, i8 -100, i8 5 }, { i8, i8, i8, i8 } { i8 51, i8 51, i8 -100, i8 5 }, { i8, i8, i8, i8 } { i8 52, i8 39, i8 -100, i8 5 }, { i8, i8, i8, i8 } { i8 53, i8 48, i8 -100, i8 5 }, { i8, i8, i8, i8 } { i8 54, i8 -62, i8 -100, i8 5 }, { i8, i8, i8, i8 } { i8 55, i8 46, i8 -99, i8 5 }, { i8, i8, i8, i8 } { i8 56, i8 78, i8 -97, i8 5 }, { i8, i8, i8, i8 } { i8 57, i8 78, i8 -97, i8 5 }, { i8, i8, i8, i8 } { i8 58, i8 78, i8 -97, i8 5 }, { i8, i8, i8, i8 } { i8 59, i8 78, i8 -97, i8 5 }, { i8, i8, i8, i8 } { i8 60, i8 56, i8 -122, i8 5 }, { i8, i8, i8, i8 } { i8 61, i8 -57, i8 -122, i8 5 }, { i8, i8, i8, i8 } { i8 63, i8 68, i8 -105, i8 5 }, { i8, i8, i8, i8 } { i8 67, i8 107, i8 -106, i8 5 }, { i8, i8, i8, i8 } { i8 74, i8 127, i8 -106, i8 5 }, { i8, i8, i8, i8 } { i8 76, i8 -92, i8 -106, i8 5 }, { i8, i8, i8, i8 } { i8 77, i8 86, i8 -105, i8 5 }, { i8, i8, i8, i8 } { i8 79, i8 85, i8 -106, i8 5 }, { i8, i8, i8, i8 } { i8 83, i8 108, i8 -106, i8 5 }, { i8, i8, i8, i8 } { i8 90, i8 -128, i8 -106, i8 5 }, { i8, i8, i8, i8 } { i8 92, i8 -91, i8 -106, i8 5 }, { i8, i8, i8, i8 } { i8 93, i8 87, i8 -105, i8 5 }, { i8, i8, i8, i8 } { i8 95, i8 86, i8 -106, i8 5 }, { i8, i8, i8, i8 } { i8 -128, i8 62, i8 -121, i8 5 }, { i8, i8, i8, i8 } { i8 -127, i8 95, i8 -122, i8 5 }, { i8, i8, i8, i8 } { i8 -125, i8 99, i8 -120, i8 5 }, { i8, i8, i8, i8 } { i8 -122, i8 -60, i8 -122, i8 5 }, { i8, i8, i8, i8 } { i8 -117, i8 13, i8 -122, i8 5 }, { i8, i8, i8, i8 } { i8 -116, i8 98, i8 -120, i8 5 }, { i8, i8, i8, i8 } { i8 -115, i8 -121, i8 -122, i8 5 }, { i8, i8, i8, i8 } { i8 -114, i8 -120, i8 -120, i8 5 }, { i8, i8, i8, i8 } { i8 -113, i8 -26, i8 -120, i8 5 }, { i8, i8, i8, i8 } { i8 -112, i8 62, i8 -115, i8 5 }, { i8, i8, i8, i8 } { i8 -111, i8 95, i8 -116, i8 5 }, { i8, i8, i8, i8 } { i8 -109, i8 99, i8 -116, i8 5 }, { i8, i8, i8, i8 } { i8 -106, i8 -60, i8 -116, i8 5 }, { i8, i8, i8, i8 } { i8 -105, i8 48, i8 -115, i8 5 }, { i8, i8, i8, i8 } { i8 -101, i8 13, i8 -116, i8 5 }, { i8, i8, i8, i8 } { i8 -100, i8 98, i8 -116, i8 5 }, { i8, i8, i8, i8 } { i8 -99, i8 -121, i8 -116, i8 5 }, { i8, i8, i8, i8 } { i8 -98, i8 -120, i8 -116, i8 5 }, { i8, i8, i8, i8 } { i8 -97, i8 -26, i8 -116, i8 5 }, { i8, i8, i8, i8 } { i8 -96, i8 62, i8 -107, i8 5 }, { i8, i8, i8, i8 } { i8 -95, i8 95, i8 -108, i8 5 }, { i8, i8, i8, i8 } { i8 -93, i8 99, i8 -108, i8 5 }, { i8, i8, i8, i8 } { i8 -90, i8 -60, i8 -108, i8 5 }, { i8, i8, i8, i8 } { i8 -89, i8 48, i8 -107, i8 5 }, { i8, i8, i8, i8 } { i8 -85, i8 13, i8 -108, i8 5 }, { i8, i8, i8, i8 } { i8 -84, i8 98, i8 -108, i8 5 }, { i8, i8, i8, i8 } { i8 -83, i8 -121, i8 -108, i8 5 }, { i8, i8, i8, i8 } { i8 -82, i8 -120, i8 -108, i8 5 }, { i8, i8, i8, i8 } { i8 -81, i8 -26, i8 -108, i8 5 }, { i8, i8, i8, i8 } { i8 -80, i8 62, i8 -113, i8 5 }, { i8, i8, i8, i8 } { i8 -79, i8 95, i8 -114, i8 5 }, { i8, i8, i8, i8 } { i8 -77, i8 99, i8 -114, i8 5 }, { i8, i8, i8, i8 } { i8 -74, i8 -60, i8 -114, i8 5 }, { i8, i8, i8, i8 } { i8 -73, i8 48, i8 -113, i8 5 }, { i8, i8, i8, i8 } { i8 -69, i8 13, i8 -114, i8 5 }, { i8, i8, i8, i8 } { i8 -68, i8 98, i8 -114, i8 5 }, { i8, i8, i8, i8 } { i8 -67, i8 -121, i8 -114, i8 5 }, { i8, i8, i8, i8 } { i8 -66, i8 -120, i8 -114, i8 5 }, { i8, i8, i8, i8 } { i8 -65, i8 -26, i8 -114, i8 5 }, { i8, i8, i8, i8 } { i8 -64, i8 63, i8 -121, i8 5 }, { i8, i8, i8, i8 } { i8 -63, i8 96, i8 -122, i8 5 }, { i8, i8, i8, i8 } { i8 -58, i8 -59, i8 -122, i8 5 }, { i8, i8, i8, i8 } { i8 -53, i8 14, i8 -122, i8 5 }, { i8, i8, i8, i8 } { i8 -48, i8 63, i8 -115, i8 5 }, { i8, i8, i8, i8 } { i8 -47, i8 96, i8 -116, i8 5 }, { i8, i8, i8, i8 } { i8 -42, i8 -59, i8 -116, i8 5 }, { i8, i8, i8, i8 } { i8 -41, i8 49, i8 -115, i8 5 }, { i8, i8, i8, i8 } { i8 -37, i8 14, i8 -116, i8 5 }, { i8, i8, i8, i8 } { i8 -32, i8 63, i8 -107, i8 5 }, { i8, i8, i8, i8 } { i8 -31, i8 96, i8 -108, i8 5 }, { i8, i8, i8, i8 } { i8 -26, i8 -59, i8 -108, i8 5 }, { i8, i8, i8, i8 } { i8 -25, i8 49, i8 -107, i8 5 }, { i8, i8, i8, i8 } { i8 -21, i8 14, i8 -108, i8 5 }, { i8, i8, i8, i8 } { i8 -16, i8 63, i8 -113, i8 5 }, { i8, i8, i8, i8 } { i8 -15, i8 96, i8 -114, i8 5 }, { i8, i8, i8, i8 } { i8 -10, i8 -59, i8 -114, i8 5 }, { i8, i8, i8, i8 } { i8 -9, i8 49, i8 -113, i8 5 }, { i8, i8, i8, i8 } { i8 -5, i8 14, i8 -114, i8 5 }], align 16
@g_m6805_inst_page1_table = internal constant [256 x { i8, i8, i8, i8 }] [{ i8, i8, i8, i8 } { i8 67, i8 -94, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 66, i8 -94, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 67, i8 -94, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 66, i8 -94, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 67, i8 -94, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 66, i8 -94, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 67, i8 -94, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 66, i8 -94, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 67, i8 -94, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 66, i8 -94, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 67, i8 -94, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 66, i8 -94, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 67, i8 -94, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 66, i8 -94, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 67, i8 -94, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 66, i8 -94, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 37, i8 32, i8 3, i8 undef }, { i8, i8, i8, i8 } { i8 70, i8 32, i8 3, i8 undef }, { i8, i8, i8, i8 } { i8 37, i8 32, i8 3, i8 undef }, { i8, i8, i8, i8 } { i8 70, i8 32, i8 3, i8 undef }, { i8, i8, i8, i8 } { i8 37, i8 32, i8 3, i8 undef }, { i8, i8, i8, i8 } { i8 70, i8 32, i8 3, i8 undef }, { i8, i8, i8, i8 } { i8 37, i8 32, i8 3, i8 undef }, { i8, i8, i8, i8 } { i8 70, i8 32, i8 3, i8 undef }, { i8, i8, i8, i8 } { i8 37, i8 32, i8 3, i8 undef }, { i8, i8, i8, i8 } { i8 70, i8 32, i8 3, i8 undef }, { i8, i8, i8, i8 } { i8 37, i8 32, i8 3, i8 undef }, { i8, i8, i8, i8 } { i8 70, i8 32, i8 3, i8 undef }, { i8, i8, i8, i8 } { i8 37, i8 32, i8 3, i8 undef }, { i8, i8, i8, i8 } { i8 70, i8 32, i8 3, i8 undef }, { i8, i8, i8, i8 } { i8 37, i8 32, i8 3, i8 undef }, { i8, i8, i8, i8 } { i8 70, i8 32, i8 3, i8 undef }, { i8, i8, i8, i8 } { i8 68, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 69, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 46, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 58, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 36, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 38, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 63, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 40, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 44, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 45, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 65, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 61, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 60, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 62, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 50, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 49, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -25, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 103, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -41, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 20, i8 -115, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 30, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -46, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 14, i8 -115, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 123, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -96, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 82, i8 -115, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 81, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -24, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -27, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 104, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -40, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 21, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 31, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -45, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 15, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 124, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -95, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 83, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 82, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -21, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 110, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -36, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 25, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 34, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -42, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 19, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -126, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -89, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 89, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 89, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -25, i8 -112, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 103, i8 -112, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -41, i8 -112, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 20, i8 -111, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 30, i8 -112, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -46, i8 -112, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 14, i8 -111, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 123, i8 -112, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -96, i8 -112, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 82, i8 -111, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 81, i8 -112, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -25, i8 -92, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 103, i8 -92, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -41, i8 -92, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 20, i8 -91, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 30, i8 -92, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -46, i8 -92, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 14, i8 -91, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 123, i8 -92, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -96, i8 -92, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 82, i8 -91, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 81, i8 -92, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 28, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 29, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 66, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 50, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 96, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 72, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 79, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 36, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 80, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 37, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 26, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -20, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 92, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 58, i8 -121, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 91, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 31, i8 -121, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 114, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 20, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 52, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -66, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -109, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 4, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -17, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 9, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 71, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -52, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 58, i8 -115, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 91, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 31, i8 -115, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 114, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 20, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 52, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -66, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 42, i8 -115, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -109, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 4, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -17, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 9, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -85, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -84, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -52, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 56, i8 -115, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 58, i8 -113, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 91, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 31, i8 -113, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 114, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 20, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 52, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -66, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 42, i8 -113, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -109, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 4, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -17, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 9, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -85, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -84, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -52, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 56, i8 -113, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 58, i8 -89, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 91, i8 -90, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 31, i8 -89, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 114, i8 -90, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 20, i8 -90, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 52, i8 -90, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -66, i8 -90, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 42, i8 -89, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -109, i8 -90, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 4, i8 -90, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -17, i8 -90, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 9, i8 -90, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -85, i8 -90, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -84, i8 -90, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -52, i8 -90, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 56, i8 -89, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 58, i8 -111, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 91, i8 -112, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 31, i8 -111, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 114, i8 -112, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 20, i8 -112, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 52, i8 -112, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -66, i8 -112, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 42, i8 -111, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -109, i8 -112, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 4, i8 -112, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -17, i8 -112, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 9, i8 -112, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -85, i8 -112, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -84, i8 -112, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -52, i8 -112, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 56, i8 -111, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 58, i8 -91, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 91, i8 -92, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 31, i8 -91, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 114, i8 -92, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 20, i8 -92, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 52, i8 -92, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -66, i8 -92, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 42, i8 -91, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -109, i8 -92, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 4, i8 -92, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -17, i8 -92, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 9, i8 -92, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -85, i8 -92, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -84, i8 -92, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -52, i8 -92, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 56, i8 -91, i8 5, i8 undef }], align 16
@g_m6808_inst_overlay_table = internal constant [41 x { i8, i8, i8, i8 }] [{ i8, i8, i8, i8 } { i8 49, i8 76, i8 -116, i8 0 }, { i8, i8, i8, i8 } { i8 53, i8 51, i8 -115, i8 5 }, { i8, i8, i8, i8 } { i8 59, i8 120, i8 -116, i8 0 }, { i8, i8, i8, i8 } { i8 65, i8 77, i8 -88, i8 5 }, { i8, i8, i8, i8 } { i8 69, i8 -58, i8 -120, i8 5 }, { i8, i8, i8, i8 } { i8 75, i8 121, i8 -126, i8 5 }, { i8, i8, i8, i8 } { i8 78, i8 -30, i8 12, i8 3 }, { i8, i8, i8, i8 } { i8 81, i8 78, i8 -88, i8 5 }, { i8, i8, i8, i8 } { i8 82, i8 -122, i8 -106, i8 5 }, { i8, i8, i8, i8 } { i8 85, i8 -58, i8 -116, i8 5 }, { i8, i8, i8, i8 } { i8 91, i8 122, i8 -126, i8 5 }, { i8, i8, i8, i8 } { i8 94, i8 -30, i8 12, i8 12 }, { i8, i8, i8, i8 } { i8 97, i8 76, i8 -82, i8 0 }, { i8, i8, i8, i8 } { i8 98, i8 -19, i8 -106, i8 5 }, { i8, i8, i8, i8 } { i8 101, i8 112, i8 -120, i8 5 }, { i8, i8, i8, i8 } { i8 107, i8 120, i8 -112, i8 0 }, { i8, i8, i8, i8 } { i8 110, i8 -30, i8 6, i8 3 }, { i8, i8, i8, i8 } { i8 113, i8 76, i8 -80, i8 0 }, { i8, i8, i8, i8 } { i8 114, i8 117, i8 -106, i8 5 }, { i8, i8, i8, i8 } { i8 117, i8 112, i8 -116, i8 5 }, { i8, i8, i8, i8 } { i8 123, i8 120, i8 -92, i8 0 }, { i8, i8, i8, i8 } { i8 126, i8 -30, i8 48, i8 3 }, { i8, i8, i8, i8 } { i8 -124, i8 71, i8 -105, i8 5 }, { i8, i8, i8, i8 } { i8 -123, i8 81, i8 -105, i8 5 }, { i8, i8, i8, i8 } { i8 -122, i8 1, i8 -105, i8 5 }, { i8, i8, i8, i8 } { i8 -121, i8 -10, i8 -106, i8 5 }, { i8, i8, i8, i8 } { i8 -120, i8 10, i8 -105, i8 5 }, { i8, i8, i8, i8 } { i8 -119, i8 -1, i8 -106, i8 5 }, { i8, i8, i8, i8 } { i8 -118, i8 5, i8 -105, i8 5 }, { i8, i8, i8, i8 } { i8 -117, i8 -6, i8 -106, i8 5 }, { i8, i8, i8, i8 } { i8 -116, i8 87, i8 -106, i8 5 }, { i8, i8, i8, i8 } { i8 -112, i8 41, i8 -126, i8 5 }, { i8, i8, i8, i8 } { i8 -111, i8 59, i8 -126, i8 5 }, { i8, i8, i8, i8 } { i8 -110, i8 43, i8 -126, i8 5 }, { i8, i8, i8, i8 } { i8 -109, i8 57, i8 -126, i8 5 }, { i8, i8, i8, i8 } { i8 -108, i8 93, i8 -105, i8 5 }, { i8, i8, i8, i8 } { i8 -107, i8 90, i8 -105, i8 5 }, { i8, i8, i8, i8 } { i8 -105, i8 72, i8 -105, i8 5 }, { i8, i8, i8, i8 } { i8 -97, i8 92, i8 -105, i8 5 }, { i8, i8, i8, i8 } { i8 -89, i8 18, i8 -122, i8 5 }, { i8, i8, i8, i8 } { i8 -81, i8 19, i8 -122, i8 5 }], align 16
@g_m6808_inst_page2_table = internal constant [41 x { i8, i8, i8, i8 }] [{ i8, i8, i8, i8 } { i8 96, i8 -25, i8 -86, i8 5 }, { i8, i8, i8, i8 } { i8 97, i8 76, i8 -86, i8 0 }, { i8, i8, i8, i8 } { i8 99, i8 103, i8 -86, i8 5 }, { i8, i8, i8, i8 } { i8 100, i8 -41, i8 -86, i8 5 }, { i8, i8, i8, i8 } { i8 102, i8 20, i8 -85, i8 5 }, { i8, i8, i8, i8 } { i8 103, i8 30, i8 -86, i8 5 }, { i8, i8, i8, i8 } { i8 104, i8 -46, i8 -86, i8 5 }, { i8, i8, i8, i8 } { i8 105, i8 14, i8 -85, i8 5 }, { i8, i8, i8, i8 } { i8 106, i8 123, i8 -86, i8 5 }, { i8, i8, i8, i8 } { i8 107, i8 120, i8 -86, i8 0 }, { i8, i8, i8, i8 } { i8 108, i8 -96, i8 -86, i8 5 }, { i8, i8, i8, i8 } { i8 109, i8 82, i8 -85, i8 5 }, { i8, i8, i8, i8 } { i8 111, i8 81, i8 -86, i8 5 }, { i8, i8, i8, i8 } { i8 -48, i8 58, i8 -83, i8 5 }, { i8, i8, i8, i8 } { i8 -47, i8 91, i8 -84, i8 5 }, { i8, i8, i8, i8 } { i8 -46, i8 31, i8 -83, i8 5 }, { i8, i8, i8, i8 } { i8 -45, i8 114, i8 -84, i8 5 }, { i8, i8, i8, i8 } { i8 -44, i8 20, i8 -84, i8 5 }, { i8, i8, i8, i8 } { i8 -43, i8 52, i8 -84, i8 5 }, { i8, i8, i8, i8 } { i8 -42, i8 -66, i8 -84, i8 5 }, { i8, i8, i8, i8 } { i8 -41, i8 42, i8 -83, i8 5 }, { i8, i8, i8, i8 } { i8 -40, i8 -109, i8 -84, i8 5 }, { i8, i8, i8, i8 } { i8 -39, i8 4, i8 -84, i8 5 }, { i8, i8, i8, i8 } { i8 -38, i8 -17, i8 -84, i8 5 }, { i8, i8, i8, i8 } { i8 -37, i8 9, i8 -84, i8 5 }, { i8, i8, i8, i8 } { i8 -34, i8 -52, i8 -84, i8 5 }, { i8, i8, i8, i8 } { i8 -33, i8 56, i8 -83, i8 5 }, { i8, i8, i8, i8 } { i8 -32, i8 58, i8 -85, i8 5 }, { i8, i8, i8, i8 } { i8 -31, i8 91, i8 -86, i8 5 }, { i8, i8, i8, i8 } { i8 -30, i8 31, i8 -85, i8 5 }, { i8, i8, i8, i8 } { i8 -29, i8 114, i8 -86, i8 5 }, { i8, i8, i8, i8 } { i8 -28, i8 20, i8 -86, i8 5 }, { i8, i8, i8, i8 } { i8 -27, i8 52, i8 -86, i8 5 }, { i8, i8, i8, i8 } { i8 -26, i8 -66, i8 -86, i8 5 }, { i8, i8, i8, i8 } { i8 -25, i8 42, i8 -85, i8 5 }, { i8, i8, i8, i8 } { i8 -24, i8 -109, i8 -86, i8 5 }, { i8, i8, i8, i8 } { i8 -23, i8 4, i8 -86, i8 5 }, { i8, i8, i8, i8 } { i8 -22, i8 -17, i8 -86, i8 5 }, { i8, i8, i8, i8 } { i8 -21, i8 9, i8 -86, i8 5 }, { i8, i8, i8, i8 } { i8 -18, i8 -52, i8 -86, i8 5 }, { i8, i8, i8, i8 } { i8 -17, i8 56, i8 -85, i8 5 }], align 16
@g_m6809_inst_page2_table = internal constant [38 x { i8, i8, i8, i8 }] [{ i8, i8, i8, i8 } { i8 33, i8 -70, i8 -124, i8 5 }, { i8, i8, i8, i8 } { i8 34, i8 -78, i8 -124, i8 5 }, { i8, i8, i8, i8 } { i8 35, i8 -76, i8 -124, i8 5 }, { i8, i8, i8, i8 } { i8 36, i8 -83, i8 -124, i8 5 }, { i8, i8, i8, i8 } { i8 37, i8 -82, i8 -124, i8 5 }, { i8, i8, i8, i8 } { i8 38, i8 -73, i8 -124, i8 5 }, { i8, i8, i8, i8 } { i8 39, i8 -81, i8 -124, i8 5 }, { i8, i8, i8, i8 } { i8 40, i8 -68, i8 -124, i8 5 }, { i8, i8, i8, i8 } { i8 41, i8 -67, i8 -124, i8 5 }, { i8, i8, i8, i8 } { i8 42, i8 -72, i8 -124, i8 5 }, { i8, i8, i8, i8 } { i8 43, i8 -74, i8 -124, i8 5 }, { i8, i8, i8, i8 } { i8 44, i8 -80, i8 -124, i8 5 }, { i8, i8, i8, i8 } { i8 45, i8 -75, i8 -124, i8 5 }, { i8, i8, i8, i8 } { i8 46, i8 -79, i8 -124, i8 5 }, { i8, i8, i8, i8 } { i8 47, i8 -77, i8 -124, i8 5 }, { i8, i8, i8, i8 } { i8 63, i8 67, i8 -105, i8 5 }, { i8, i8, i8, i8 } { i8 -125, i8 94, i8 -120, i8 5 }, { i8, i8, i8, i8 } { i8 -116, i8 102, i8 -120, i8 5 }, { i8, i8, i8, i8 } { i8 -114, i8 -51, i8 -120, i8 5 }, { i8, i8, i8, i8 } { i8 -109, i8 94, i8 -116, i8 5 }, { i8, i8, i8, i8 } { i8 -100, i8 102, i8 -116, i8 5 }, { i8, i8, i8, i8 } { i8 -98, i8 -51, i8 -116, i8 5 }, { i8, i8, i8, i8 } { i8 -97, i8 57, i8 -115, i8 5 }, { i8, i8, i8, i8 } { i8 -93, i8 94, i8 -108, i8 5 }, { i8, i8, i8, i8 } { i8 -84, i8 102, i8 -108, i8 5 }, { i8, i8, i8, i8 } { i8 -82, i8 -51, i8 -108, i8 5 }, { i8, i8, i8, i8 } { i8 -81, i8 57, i8 -107, i8 5 }, { i8, i8, i8, i8 } { i8 -77, i8 94, i8 -114, i8 5 }, { i8, i8, i8, i8 } { i8 -68, i8 102, i8 -114, i8 5 }, { i8, i8, i8, i8 } { i8 -66, i8 -51, i8 -114, i8 5 }, { i8, i8, i8, i8 } { i8 -65, i8 57, i8 -113, i8 5 }, { i8, i8, i8, i8 } { i8 -50, i8 -55, i8 -120, i8 5 }, { i8, i8, i8, i8 } { i8 -34, i8 -55, i8 -116, i8 5 }, { i8, i8, i8, i8 } { i8 -33, i8 53, i8 -115, i8 5 }, { i8, i8, i8, i8 } { i8 -18, i8 -55, i8 -108, i8 5 }, { i8, i8, i8, i8 } { i8 -17, i8 53, i8 -107, i8 5 }, { i8, i8, i8, i8 } { i8 -2, i8 -55, i8 -114, i8 5 }, { i8, i8, i8, i8 } { i8 -1, i8 53, i8 -113, i8 5 }], align 16
@g_m6809_inst_page3_table = internal constant [9 x { i8, i8, i8, i8 }] [{ i8, i8, i8, i8 } { i8 63, i8 68, i8 -105, i8 5 }, { i8, i8, i8, i8 } { i8 -125, i8 99, i8 -120, i8 5 }, { i8, i8, i8, i8 } { i8 -116, i8 98, i8 -120, i8 5 }, { i8, i8, i8, i8 } { i8 -109, i8 99, i8 -116, i8 5 }, { i8, i8, i8, i8 } { i8 -100, i8 98, i8 -116, i8 5 }, { i8, i8, i8, i8 } { i8 -93, i8 99, i8 -108, i8 5 }, { i8, i8, i8, i8 } { i8 -84, i8 98, i8 -108, i8 5 }, { i8, i8, i8, i8 } { i8 -77, i8 99, i8 -114, i8 5 }, { i8, i8, i8, i8 } { i8 -68, i8 98, i8 -114, i8 5 }], align 16
@g_m6811_inst_overlay_table = internal constant [13 x { i8, i8, i8, i8 }] [{ i8, i8, i8, i8 } { i8 0, i8 77, i8 -105, i8 5 }, { i8, i8, i8, i8 } { i8 2, i8 -99, i8 -106, i8 5 }, { i8, i8, i8, i8 } { i8 3, i8 -102, i8 -106, i8 5 }, { i8, i8, i8, i8 } { i8 18, i8 67, i8 12, i8 10 }, { i8, i8, i8, i8 } { i8 19, i8 66, i8 12, i8 10 }, { i8, i8, i8, i8 } { i8 20, i8 70, i8 -116, i8 1 }, { i8, i8, i8, i8 } { i8 21, i8 37, i8 -116, i8 1 }, { i8, i8, i8, i8 } { i8 28, i8 70, i8 -112, i8 1 }, { i8, i8, i8, i8 } { i8 29, i8 37, i8 -112, i8 1 }, { i8, i8, i8, i8 } { i8 30, i8 67, i8 16, i8 10 }, { i8, i8, i8, i8 } { i8 31, i8 66, i8 16, i8 10 }, { i8, i8, i8, i8 } { i8 -113, i8 99, i8 -105, i8 5 }, { i8, i8, i8, i8 } { i8 -49, i8 50, i8 -105, i8 5 }], align 16
@g_m6811_inst_page2_table = internal constant [64 x { i8, i8, i8, i8 }] [{ i8, i8, i8, i8 } { i8 8, i8 -86, i8 -106, i8 5 }, { i8, i8, i8, i8 } { i8 9, i8 -123, i8 -106, i8 5 }, { i8, i8, i8, i8 } { i8 28, i8 70, i8 -110, i8 1 }, { i8, i8, i8, i8 } { i8 29, i8 37, i8 -110, i8 1 }, { i8, i8, i8, i8 } { i8 30, i8 67, i8 18, i8 10 }, { i8, i8, i8, i8 } { i8 31, i8 66, i8 18, i8 10 }, { i8, i8, i8, i8 } { i8 48, i8 91, i8 -105, i8 5 }, { i8, i8, i8, i8 } { i8 53, i8 94, i8 -105, i8 5 }, { i8, i8, i8, i8 } { i8 56, i8 11, i8 -105, i8 5 }, { i8, i8, i8, i8 } { i8 58, i8 3, i8 -106, i8 5 }, { i8, i8, i8, i8 } { i8 60, i8 0, i8 -105, i8 5 }, { i8, i8, i8, i8 } { i8 96, i8 -25, i8 -110, i8 5 }, { i8, i8, i8, i8 } { i8 99, i8 103, i8 -110, i8 5 }, { i8, i8, i8, i8 } { i8 100, i8 -41, i8 -110, i8 5 }, { i8, i8, i8, i8 } { i8 102, i8 20, i8 -109, i8 5 }, { i8, i8, i8, i8 } { i8 103, i8 30, i8 -110, i8 5 }, { i8, i8, i8, i8 } { i8 104, i8 26, i8 -110, i8 5 }, { i8, i8, i8, i8 } { i8 105, i8 14, i8 -109, i8 5 }, { i8, i8, i8, i8 } { i8 106, i8 123, i8 -110, i8 5 }, { i8, i8, i8, i8 } { i8 108, i8 -96, i8 -110, i8 5 }, { i8, i8, i8, i8 } { i8 109, i8 82, i8 -109, i8 5 }, { i8, i8, i8, i8 } { i8 110, i8 -85, i8 -110, i8 5 }, { i8, i8, i8, i8 } { i8 111, i8 81, i8 -110, i8 5 }, { i8, i8, i8, i8 } { i8 -116, i8 115, i8 -120, i8 5 }, { i8, i8, i8, i8 } { i8 -113, i8 100, i8 -105, i8 5 }, { i8, i8, i8, i8 } { i8 -100, i8 115, i8 -116, i8 5 }, { i8, i8, i8, i8 } { i8 -96, i8 59, i8 -109, i8 5 }, { i8, i8, i8, i8 } { i8 -95, i8 92, i8 -110, i8 5 }, { i8, i8, i8, i8 } { i8 -94, i8 32, i8 -109, i8 5 }, { i8, i8, i8, i8 } { i8 -93, i8 61, i8 -109, i8 5 }, { i8, i8, i8, i8 } { i8 -92, i8 21, i8 -110, i8 5 }, { i8, i8, i8, i8 } { i8 -91, i8 53, i8 -110, i8 5 }, { i8, i8, i8, i8 } { i8 -90, i8 -65, i8 -110, i8 5 }, { i8, i8, i8, i8 } { i8 -89, i8 43, i8 -109, i8 5 }, { i8, i8, i8, i8 } { i8 -88, i8 -108, i8 -110, i8 5 }, { i8, i8, i8, i8 } { i8 -87, i8 5, i8 -110, i8 5 }, { i8, i8, i8, i8 } { i8 -86, i8 -16, i8 -110, i8 5 }, { i8, i8, i8, i8 } { i8 -85, i8 10, i8 -110, i8 5 }, { i8, i8, i8, i8 } { i8 -84, i8 115, i8 -110, i8 5 }, { i8, i8, i8, i8 } { i8 -83, i8 -84, i8 -110, i8 5 }, { i8, i8, i8, i8 } { i8 -82, i8 -55, i8 -110, i8 5 }, { i8, i8, i8, i8 } { i8 -81, i8 53, i8 -109, i8 5 }, { i8, i8, i8, i8 } { i8 -68, i8 115, i8 -114, i8 5 }, { i8, i8, i8, i8 } { i8 -50, i8 -51, i8 -120, i8 5 }, { i8, i8, i8, i8 } { i8 -34, i8 -51, i8 -116, i8 5 }, { i8, i8, i8, i8 } { i8 -33, i8 57, i8 -115, i8 5 }, { i8, i8, i8, i8 } { i8 -32, i8 60, i8 -109, i8 5 }, { i8, i8, i8, i8 } { i8 -31, i8 93, i8 -110, i8 5 }, { i8, i8, i8, i8 } { i8 -30, i8 33, i8 -109, i8 5 }, { i8, i8, i8, i8 } { i8 -29, i8 12, i8 -110, i8 5 }, { i8, i8, i8, i8 } { i8 -28, i8 22, i8 -110, i8 5 }, { i8, i8, i8, i8 } { i8 -27, i8 54, i8 -110, i8 5 }, { i8, i8, i8, i8 } { i8 -26, i8 -64, i8 -110, i8 5 }, { i8, i8, i8, i8 } { i8 -25, i8 44, i8 -109, i8 5 }, { i8, i8, i8, i8 } { i8 -24, i8 -107, i8 -110, i8 5 }, { i8, i8, i8, i8 } { i8 -23, i8 6, i8 -110, i8 5 }, { i8, i8, i8, i8 } { i8 -22, i8 -15, i8 -110, i8 5 }, { i8, i8, i8, i8 } { i8 -21, i8 11, i8 -110, i8 5 }, { i8, i8, i8, i8 } { i8 -20, i8 -61, i8 -110, i8 5 }, { i8, i8, i8, i8 } { i8 -19, i8 47, i8 -109, i8 5 }, { i8, i8, i8, i8 } { i8 -18, i8 -51, i8 -110, i8 5 }, { i8, i8, i8, i8 } { i8 -17, i8 57, i8 -109, i8 5 }, { i8, i8, i8, i8 } { i8 -2, i8 -51, i8 -114, i8 5 }, { i8, i8, i8, i8 } { i8 -1, i8 57, i8 -113, i8 5 }], align 16
@g_m6811_inst_page3_table = internal constant [7 x { i8, i8, i8, i8 }] [{ i8, i8, i8, i8 } { i8 -125, i8 111, i8 -120, i8 5 }, { i8, i8, i8, i8 } { i8 -109, i8 111, i8 -116, i8 5 }, { i8, i8, i8, i8 } { i8 -93, i8 111, i8 -112, i8 5 }, { i8, i8, i8, i8 } { i8 -84, i8 115, i8 -112, i8 5 }, { i8, i8, i8, i8 } { i8 -77, i8 111, i8 -114, i8 5 }, { i8, i8, i8, i8 } { i8 -18, i8 -51, i8 -112, i8 5 }, { i8, i8, i8, i8 } { i8 -17, i8 57, i8 -111, i8 5 }], align 16
@g_m6811_inst_page4_table = internal constant [4 x { i8, i8, i8, i8 }] [{ i8, i8, i8, i8 } { i8 -93, i8 111, i8 -110, i8 5 }, { i8, i8, i8, i8 } { i8 -84, i8 114, i8 -110, i8 5 }, { i8, i8, i8, i8 } { i8 -18, i8 -52, i8 -110, i8 5 }, { i8, i8, i8, i8 } { i8 -17, i8 56, i8 -109, i8 5 }], align 16
@g_cpu12_inst_page1_table = internal constant [256 x { i8, i8, i8, i8 }] [{ i8, i8, i8, i8 } { i8 42, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -33, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -86, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -123, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 118, i8 -72, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -85, i8 -78, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -85, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 71, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -87, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -124, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 27, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 28, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 70, i8 -78, i8 1, i8 undef }, { i8, i8, i8, i8 } { i8 37, i8 -78, i8 1, i8 undef }, { i8, i8, i8, i8 } { i8 67, i8 50, i8 10, i8 undef }, { i8, i8, i8, i8 } { i8 66, i8 50, i8 10, i8 undef }, { i8, i8, i8, i8 } { i8 23, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -119, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -27, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -111, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -13, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -84, i8 -78, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -84, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -84, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -97, i8 -128, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -47, i8 -78, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -48, i8 -78, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -50, i8 -78, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 70, i8 -114, i8 1, i8 undef }, { i8, i8, i8, i8 } { i8 37, i8 -114, i8 1, i8 undef }, { i8, i8, i8, i8 } { i8 67, i8 14, i8 10, i8 undef }, { i8, i8, i8, i8 } { i8 66, i8 14, i8 10, i8 undef }, { i8, i8, i8, i8 } { i8 68, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 69, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 46, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 58, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 36, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 38, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 63, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 40, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 72, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 73, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 65, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 61, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 41, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 59, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 43, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 57, i8 -126, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 10, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 11, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 1, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 2, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -1, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -10, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -9, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 3, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -8, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 4, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -7, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 98, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 29, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 95, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 66, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -24, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 104, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -95, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 124, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -40, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 15, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 21, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 31, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 27, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -38, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 74, i8 -114, i8 14, i8 undef }, { i8, i8, i8, i8 } { i8 74, i8 -78, i8 14, i8 undef }, { i8, i8, i8, i8 } { i8 70, i8 -116, i8 1, i8 undef }, { i8, i8, i8, i8 } { i8 37, i8 -116, i8 1, i8 undef }, { i8, i8, i8, i8 } { i8 67, i8 12, i8 10, i8 undef }, { i8, i8, i8, i8 } { i8 66, i8 12, i8 10, i8 undef }, { i8, i8, i8, i8 } { i8 -23, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 105, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -94, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 125, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -39, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 16, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 22, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 32, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 28, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 29, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 43, i8 -115, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 44, i8 -115, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 47, i8 -115, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 57, i8 -115, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 56, i8 -115, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 53, i8 -115, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -25, i8 -78, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 103, i8 -78, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -96, i8 -78, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 123, i8 -78, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -41, i8 -78, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 14, i8 -77, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 20, i8 -77, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 30, i8 -78, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 26, i8 -78, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 81, i8 -78, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 43, i8 -77, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 44, i8 -77, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 47, i8 -77, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 57, i8 -77, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 56, i8 -77, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 53, i8 -77, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -25, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 103, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -96, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 123, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -41, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 14, i8 -113, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 20, i8 -113, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 30, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 26, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 81, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 43, i8 -113, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 44, i8 -113, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 47, i8 -113, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 57, i8 -113, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 56, i8 -113, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 53, i8 -113, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 59, i8 -121, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 92, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 32, i8 -121, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 61, i8 -119, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 21, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 53, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -65, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 82, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -108, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 5, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -16, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 10, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 111, i8 -120, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 115, i8 -120, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 114, i8 -120, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 113, i8 -120, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 59, i8 -115, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 92, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 32, i8 -115, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 61, i8 -115, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 21, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 53, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -65, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 83, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -108, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 5, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -16, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 10, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 111, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 115, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 114, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 113, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 59, i8 -77, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 92, i8 -78, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 32, i8 -77, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 61, i8 -77, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 21, i8 -78, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 53, i8 -78, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -65, i8 -78, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -20, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -108, i8 -78, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 5, i8 -78, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -16, i8 -78, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 10, i8 -78, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 111, i8 -78, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 115, i8 -78, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 114, i8 -78, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 113, i8 -78, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 59, i8 -113, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 92, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 32, i8 -113, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 61, i8 -113, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 21, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 53, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -65, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 79, i8 -73, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -108, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 5, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -16, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 10, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 111, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 115, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 114, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 113, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 60, i8 -121, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 93, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 33, i8 -121, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 12, i8 -120, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 22, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 54, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -64, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 83, i8 -106, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -107, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 6, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -15, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 11, i8 -122, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -61, i8 -120, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -51, i8 -120, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -52, i8 -120, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -55, i8 -120, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 60, i8 -115, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 93, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 33, i8 -115, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 12, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 22, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 54, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -64, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 84, i8 -105, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -107, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 6, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -15, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 11, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -61, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -51, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -52, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -55, i8 -116, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 60, i8 -77, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 93, i8 -78, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 33, i8 -77, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 12, i8 -78, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 22, i8 -78, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 54, i8 -78, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -64, i8 -78, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 82, i8 -77, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -107, i8 -78, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 6, i8 -78, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -15, i8 -78, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 11, i8 -78, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -61, i8 -78, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -51, i8 -78, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -52, i8 -78, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -55, i8 -78, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 59, i8 -113, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 92, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 32, i8 -113, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 12, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 21, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 53, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -65, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 82, i8 -113, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -108, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 5, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -16, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 10, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -61, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -51, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -52, i8 -114, i8 5, i8 undef }, { i8, i8, i8, i8 } { i8 -55, i8 -114, i8 5, i8 undef }], align 16
@g_cpu12_inst_page2_table = internal constant [54 x { i8, i8, i8, i8 }] [{ i8, i8, i8, i8 } { i8 0, i8 -28, i8 -66, i8 5 }, { i8, i8, i8, i8 } { i8 1, i8 -28, i8 -64, i8 5 }, { i8, i8, i8, i8 } { i8 2, i8 -28, i8 -78, i8 12 }, { i8, i8, i8, i8 } { i8 3, i8 -28, i8 -120, i8 3 }, { i8, i8, i8, i8 } { i8 4, i8 -28, i8 -114, i8 3 }, { i8, i8, i8, i8 } { i8 5, i8 -28, i8 -78, i8 3 }, { i8, i8, i8, i8 } { i8 6, i8 1, i8 -106, i8 5 }, { i8, i8, i8, i8 } { i8 7, i8 117, i8 -106, i8 5 }, { i8, i8, i8, i8 } { i8 8, i8 -29, i8 -68, i8 5 }, { i8, i8, i8, i8 } { i8 9, i8 -29, i8 -64, i8 5 }, { i8, i8, i8, i8 } { i8 10, i8 -29, i8 -78, i8 12 }, { i8, i8, i8, i8 } { i8 11, i8 -29, i8 -122, i8 3 }, { i8, i8, i8, i8 } { i8 12, i8 -29, i8 -114, i8 3 }, { i8, i8, i8, i8 } { i8 13, i8 -29, i8 -78, i8 3 }, { i8, i8, i8, i8 } { i8 14, i8 70, i8 -105, i8 5 }, { i8, i8, i8, i8 } { i8 15, i8 73, i8 -105, i8 5 }, { i8, i8, i8, i8 } { i8 16, i8 -99, i8 -106, i8 5 }, { i8, i8, i8, i8 } { i8 17, i8 -102, i8 -106, i8 5 }, { i8, i8, i8, i8 } { i8 18, i8 -116, i8 -114, i8 5 }, { i8, i8, i8, i8 } { i8 19, i8 -110, i8 -106, i8 5 }, { i8, i8, i8, i8 } { i8 20, i8 -118, i8 -106, i8 5 }, { i8, i8, i8, i8 } { i8 21, i8 -98, i8 -106, i8 5 }, { i8, i8, i8, i8 } { i8 22, i8 30, i8 -105, i8 5 }, { i8, i8, i8, i8 } { i8 23, i8 75, i8 -106, i8 5 }, { i8, i8, i8, i8 } { i8 24, i8 -35, i8 -78, i8 5 }, { i8, i8, i8, i8 } { i8 25, i8 -32, i8 -78, i8 5 }, { i8, i8, i8, i8 } { i8 26, i8 -115, i8 -78, i8 5 }, { i8, i8, i8, i8 } { i8 27, i8 -113, i8 -78, i8 5 }, { i8, i8, i8, i8 } { i8 28, i8 -34, i8 -78, i8 5 }, { i8, i8, i8, i8 } { i8 29, i8 -31, i8 -78, i8 5 }, { i8, i8, i8, i8 } { i8 30, i8 -114, i8 -78, i8 5 }, { i8, i8, i8, i8 } { i8 31, i8 -112, i8 -78, i8 5 }, { i8, i8, i8, i8 } { i8 32, i8 -71, i8 -124, i8 5 }, { i8, i8, i8, i8 } { i8 33, i8 -70, i8 -124, i8 5 }, { i8, i8, i8, i8 } { i8 34, i8 -78, i8 -124, i8 5 }, { i8, i8, i8, i8 } { i8 35, i8 -76, i8 -124, i8 5 }, { i8, i8, i8, i8 } { i8 36, i8 -83, i8 -124, i8 5 }, { i8, i8, i8, i8 } { i8 37, i8 -82, i8 -124, i8 5 }, { i8, i8, i8, i8 } { i8 38, i8 -73, i8 -124, i8 5 }, { i8, i8, i8, i8 } { i8 39, i8 -81, i8 -124, i8 5 }, { i8, i8, i8, i8 } { i8 40, i8 -68, i8 -124, i8 5 }, { i8, i8, i8, i8 } { i8 41, i8 -67, i8 -124, i8 5 }, { i8, i8, i8, i8 } { i8 42, i8 -72, i8 -124, i8 5 }, { i8, i8, i8, i8 } { i8 43, i8 -74, i8 -124, i8 5 }, { i8, i8, i8, i8 } { i8 44, i8 -80, i8 -124, i8 5 }, { i8, i8, i8, i8 } { i8 45, i8 -75, i8 -124, i8 5 }, { i8, i8, i8, i8 } { i8 46, i8 -79, i8 -124, i8 5 }, { i8, i8, i8, i8 } { i8 47, i8 -77, i8 -124, i8 5 }, { i8, i8, i8, i8 } { i8 58, i8 12, i8 -105, i8 5 }, { i8, i8, i8, i8 } { i8 59, i8 13, i8 -105, i8 5 }, { i8, i8, i8, i8 } { i8 60, i8 97, i8 -105, i8 5 }, { i8, i8, i8, i8 } { i8 61, i8 75, i8 -75, i8 5 }, { i8, i8, i8, i8 } { i8 62, i8 50, i8 -105, i8 5 }, { i8, i8, i8, i8 } { i8 63, i8 -104, i8 -76, i8 5 }], align 16
@g_hcs08_inst_overlay_table = internal constant [4 x { i8, i8, i8, i8 }] [{ i8, i8, i8, i8 } { i8 50, i8 -58, i8 -114, i8 5 }, { i8, i8, i8, i8 } { i8 62, i8 112, i8 -114, i8 5 }, { i8, i8, i8, i8 } { i8 -126, i8 42, i8 -106, i8 5 }, { i8, i8, i8, i8 } { i8 -106, i8 51, i8 -113, i8 5 }], align 16
@g_hcs08_inst_page2_table = internal constant [47 x { i8, i8, i8, i8 }] [{ i8, i8, i8, i8 } { i8 96, i8 -25, i8 -86, i8 5 }, { i8, i8, i8, i8 } { i8 97, i8 76, i8 -86, i8 0 }, { i8, i8, i8, i8 } { i8 99, i8 103, i8 -86, i8 5 }, { i8, i8, i8, i8 } { i8 100, i8 -41, i8 -86, i8 5 }, { i8, i8, i8, i8 } { i8 102, i8 20, i8 -85, i8 5 }, { i8, i8, i8, i8 } { i8 103, i8 30, i8 -86, i8 5 }, { i8, i8, i8, i8 } { i8 104, i8 -46, i8 -86, i8 5 }, { i8, i8, i8, i8 } { i8 105, i8 14, i8 -85, i8 5 }, { i8, i8, i8, i8 } { i8 106, i8 123, i8 -86, i8 5 }, { i8, i8, i8, i8 } { i8 107, i8 120, i8 -86, i8 0 }, { i8, i8, i8, i8 } { i8 108, i8 -96, i8 -86, i8 5 }, { i8, i8, i8, i8 } { i8 109, i8 82, i8 -85, i8 5 }, { i8, i8, i8, i8 } { i8 111, i8 81, i8 -86, i8 5 }, { i8, i8, i8, i8 } { i8 -82, i8 -58, i8 -92, i8 5 }, { i8, i8, i8, i8 } { i8 -66, i8 -58, i8 -90, i8 5 }, { i8, i8, i8, i8 } { i8 -50, i8 -58, i8 -112, i8 5 }, { i8, i8, i8, i8 } { i8 -48, i8 58, i8 -83, i8 5 }, { i8, i8, i8, i8 } { i8 -47, i8 91, i8 -84, i8 5 }, { i8, i8, i8, i8 } { i8 -46, i8 31, i8 -83, i8 5 }, { i8, i8, i8, i8 } { i8 -45, i8 114, i8 -84, i8 5 }, { i8, i8, i8, i8 } { i8 -44, i8 20, i8 -84, i8 5 }, { i8, i8, i8, i8 } { i8 -43, i8 52, i8 -84, i8 5 }, { i8, i8, i8, i8 } { i8 -42, i8 -66, i8 -84, i8 5 }, { i8, i8, i8, i8 } { i8 -41, i8 42, i8 -83, i8 5 }, { i8, i8, i8, i8 } { i8 -40, i8 -109, i8 -84, i8 5 }, { i8, i8, i8, i8 } { i8 -39, i8 4, i8 -84, i8 5 }, { i8, i8, i8, i8 } { i8 -38, i8 -17, i8 -84, i8 5 }, { i8, i8, i8, i8 } { i8 -37, i8 9, i8 -84, i8 5 }, { i8, i8, i8, i8 } { i8 -34, i8 -52, i8 -84, i8 5 }, { i8, i8, i8, i8 } { i8 -33, i8 56, i8 -83, i8 5 }, { i8, i8, i8, i8 } { i8 -32, i8 58, i8 -85, i8 5 }, { i8, i8, i8, i8 } { i8 -31, i8 91, i8 -86, i8 5 }, { i8, i8, i8, i8 } { i8 -30, i8 31, i8 -85, i8 5 }, { i8, i8, i8, i8 } { i8 -29, i8 114, i8 -86, i8 5 }, { i8, i8, i8, i8 } { i8 -28, i8 20, i8 -86, i8 5 }, { i8, i8, i8, i8 } { i8 -27, i8 52, i8 -86, i8 5 }, { i8, i8, i8, i8 } { i8 -26, i8 -66, i8 -86, i8 5 }, { i8, i8, i8, i8 } { i8 -25, i8 42, i8 -85, i8 5 }, { i8, i8, i8, i8 } { i8 -24, i8 -109, i8 -86, i8 5 }, { i8, i8, i8, i8 } { i8 -23, i8 4, i8 -86, i8 5 }, { i8, i8, i8, i8 } { i8 -22, i8 -17, i8 -86, i8 5 }, { i8, i8, i8, i8 } { i8 -21, i8 9, i8 -86, i8 5 }, { i8, i8, i8, i8 } { i8 -18, i8 -52, i8 -86, i8 5 }, { i8, i8, i8, i8 } { i8 -17, i8 56, i8 -85, i8 5 }, { i8, i8, i8, i8 } { i8 -13, i8 112, i8 -86, i8 5 }, { i8, i8, i8, i8 } { i8 -2, i8 -58, i8 -86, i8 5 }, { i8, i8, i8, i8 } { i8 -1, i8 51, i8 -85, i8 5 }], align 16
@g_insn_handler = internal constant [33 x ptr] [ptr @illegal_hdlr, ptr @relative8_hdlr, ptr @relative16_hdlr, ptr @immediate_hdlr, ptr @immediate_hdlr, ptr @immediate_hdlr, ptr @direct_hdlr, ptr @extended_hdlr, ptr @indexedX_hdlr, ptr @indexedY_hdlr, ptr @indexed09_hdlr, ptr @inherent_hdlr, ptr @reg_reg09_hdlr, ptr @reg_bits_hdlr, ptr @bit_move_hdlr, ptr @tfm_hdlr, ptr @opidx_hdlr, ptr @opidx_dir_rel_hdlr, ptr @indexedX0_hdlr, ptr @indexedX16_hdlr, ptr @imm_rel_hdlr, ptr @indexedS_hdlr, ptr @indexedS16_hdlr, ptr @indexedXp_hdlr, ptr @indexedX0p_hdlr, ptr @indexed12_hdlr, ptr @indexed12_hdlr, ptr @reg_reg12_hdlr, ptr @loop_hdlr, ptr @index_hdlr, ptr @imm_idx12_x_hdlr, ptr @imm_idx12_x_hdlr, ptr @ext_idx12_x_hdlr], align 16
@.str.32 = private unnamed_addr constant [54 x i8] c"Internal error: Unexpected instruction handler id %d\0A\00", align 1
@g_insn_props = internal constant [357 x { i8, i8, i8, i8 }] [{ i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 80, i8 68, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 80, i8 68, i8 3, i8 undef }, { i8, i8, i8, i8 } { i8 80, i8 -124, i8 3, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 2, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 2, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 4, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 12, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 80, i8 0, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 2, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 2, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 4, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 12, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 6, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 8, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 80, i8 0, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 14, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 80, i8 0, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 30, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 22, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 2, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 2, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 4, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 16, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 12, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 80, i8 0, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 0, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 2, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 4, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 12, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 0, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 2, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 4, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 12, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 26, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 1, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 0, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 1, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 1, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 1, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 1, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 1, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 1, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 1, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 1, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 1, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 16, i8 2, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 16, i8 2, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 16, i8 4, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 16, i8 12, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 16, i8 20, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 1, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 1, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 1, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 1, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 1, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 1, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 1, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 1, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -47, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -47, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 1, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 1, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 0, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 2, i8 0, i8 16, i8 undef }, { i8, i8, i8, i8 } { i8 1, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 1, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 2, i8 0, i8 16, i8 undef }, { i8, i8, i8, i8 } { i8 16, i8 68, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 -47, i8 2, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -47, i8 2, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -47, i8 26, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 96, i8 0, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 96, i8 2, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 96, i8 4, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 96, i8 12, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 96, i8 6, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 96, i8 8, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 96, i8 24, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 96, i8 14, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 96, i8 26, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 16, i8 2, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 16, i8 2, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 16, i8 4, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 16, i8 12, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 16, i8 6, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 16, i8 8, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 16, i8 0, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 16, i8 30, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 16, i8 32, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 16, i8 14, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 16, i8 26, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 16, i8 28, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 0, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 2, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 4, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 12, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 6, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 8, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 14, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 26, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 16, i8 12, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 16, i8 22, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 16, i8 30, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 16, i8 26, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 16, i8 28, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 0, i8 24, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 0, i8 24, i8 undef }, { i8, i8, i8, i8 } { i8 -31, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -31, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -31, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -31, i8 2, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -31, i8 26, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 0, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 2, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 4, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 12, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 6, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 8, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 14, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 26, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 30, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 26, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 28, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 -80, i8 0, i8 24, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 12, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 36, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 -80, i8 0, i8 24, i8 undef }, { i8, i8, i8, i8 } { i8 -80, i8 0, i8 24, i8 undef }, { i8, i8, i8, i8 } { i8 80, i8 0, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 0, i8 24, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 12, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 0, i8 24, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 12, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 0, i8 24, i8 undef }, { i8, i8, i8, i8 } { i8 -80, i8 0, i8 24, i8 undef }, { i8, i8, i8, i8 } { i8 -80, i8 0, i8 24, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 2, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 2, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 4, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 12, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 80, i8 0, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 80, i8 0, i8 24, i8 undef }, { i8, i8, i8, i8 } { i8 -112, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -112, i8 0, i8 24, i8 undef }, { i8, i8, i8, i8 } { i8 -31, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -31, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -112, i8 0, i8 24, i8 undef }, { i8, i8, i8, i8 } { i8 -112, i8 0, i8 24, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 0, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 2, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 4, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 12, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 6, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 8, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 14, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 26, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 30, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 26, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 28, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 1, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 2, i8 0, i8 16, i8 undef }, { i8, i8, i8, i8 } { i8 1, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 1, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 1, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 1, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 1, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 1, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 1, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 1, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 1, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 1, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 1, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 1, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 1, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 1, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 2, i8 0, i8 16, i8 undef }, { i8, i8, i8, i8 } { i8 1, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 1, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 96, i8 2, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 96, i8 2, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 96, i8 4, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 96, i8 4, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 96, i8 12, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 96, i8 6, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 96, i8 8, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 96, i8 22, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 20, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 96, i8 36, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 96, i8 30, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 96, i8 32, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 96, i8 14, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 96, i8 26, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 96, i8 28, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 96, i8 30, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 96, i8 32, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 96, i8 26, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 96, i8 28, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 0, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 2, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 4, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 12, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 26, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 0, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 2, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 4, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 12, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 14, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 26, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 2, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 0, i8 24, i8 undef }, { i8, i8, i8, i8 } { i8 -80, i8 0, i8 24, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 2, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 0, i8 24, i8 undef }, { i8, i8, i8, i8 } { i8 48, i8 0, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 48, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 48, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -112, i8 0, i8 24, i8 undef }, { i8, i8, i8, i8 } { i8 -96, i8 12, i8 24, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 0, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 2, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 4, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 12, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 26, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 2, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 80, i8 0, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 2, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 2, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 4, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 4, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 16, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 12, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 80, i8 0, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 80, i8 2, i8 16, i8 undef }, { i8, i8, i8, i8 } { i8 80, i8 4, i8 16, i8 undef }, { i8, i8, i8, i8 } { i8 80, i8 16, i8 16, i8 undef }, { i8, i8, i8, i8 } { i8 80, i8 12, i8 16, i8 undef }, { i8, i8, i8, i8 } { i8 80, i8 24, i8 16, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 30, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 -34, i8 1, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 32, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 -32, i8 1, i8 undef }, { i8, i8, i8, i8 } { i8 80, i8 26, i8 16, i8 undef }, { i8, i8, i8, i8 } { i8 80, i8 28, i8 16, i8 undef }, { i8, i8, i8, i8 } { i8 -64, i8 2, i8 16, i8 undef }, { i8, i8, i8, i8 } { i8 -64, i8 4, i8 16, i8 undef }, { i8, i8, i8, i8 } { i8 -64, i8 16, i8 16, i8 undef }, { i8, i8, i8, i8 } { i8 -64, i8 12, i8 16, i8 undef }, { i8, i8, i8, i8 } { i8 -64, i8 24, i8 16, i8 undef }, { i8, i8, i8, i8 } { i8 -128, i8 30, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -128, i8 -34, i8 1, i8 undef }, { i8, i8, i8, i8 } { i8 -128, i8 32, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -128, i8 -32, i8 1, i8 undef }, { i8, i8, i8, i8 } { i8 -64, i8 26, i8 16, i8 undef }, { i8, i8, i8, i8 } { i8 -64, i8 28, i8 16, i8 undef }, { i8, i8, i8, i8 } { i8 -80, i8 0, i8 24, i8 undef }, { i8, i8, i8, i8 } { i8 -112, i8 0, i8 24, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 0, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 2, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 4, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 12, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 14, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 26, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 0, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 2, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 4, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 12, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 14, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 26, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 96, i8 30, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -125, i8 0, i8 16, i8 undef }, { i8, i8, i8, i8 } { i8 -123, i8 0, i8 16, i8 undef }, { i8, i8, i8, i8 } { i8 -125, i8 0, i8 16, i8 undef }, { i8, i8, i8, i8 } { i8 80, i8 68, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 2, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 2, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 4, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 12, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 80, i8 0, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 96, i8 0, i8 24, i8 undef }, { i8, i8, i8, i8 } { i8 48, i8 14, i8 24, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 48, i8 2, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 48, i8 2, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 48, i8 4, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 48, i8 4, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 64, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 48, i8 12, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 48, i8 6, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 48, i8 8, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 48, i8 22, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 48, i8 36, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 48, i8 30, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 48, i8 32, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 48, i8 14, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 48, i8 26, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 48, i8 28, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 2, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 2, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 4, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 12, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 6, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 8, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 80, i8 0, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 14, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 -76, i8 0, i8 24, i8 undef }, { i8, i8, i8, i8 } { i8 -76, i8 0, i8 24, i8 undef }, { i8, i8, i8, i8 } { i8 -76, i8 0, i8 24, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 48, i8 -126, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 48, i8 2, i8 2, i8 undef }, { i8, i8, i8, i8 } { i8 48, i8 66, i8 3, i8 undef }, { i8, i8, i8, i8 } { i8 48, i8 68, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 -31, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 80, i8 0, i8 24, i8 undef }, { i8, i8, i8, i8 } { i8 -31, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 48, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 48, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 16, i8 0, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 48, i8 80, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 16, i8 0, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 16, i8 2, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 16, i8 4, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 16, i8 12, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 16, i8 6, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 16, i8 8, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 16, i8 14, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 16, i8 26, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 48, i8 -34, i8 2, i8 undef }, { i8, i8, i8, i8 } { i8 48, i8 -98, i8 3, i8 undef }, { i8, i8, i8, i8 } { i8 48, i8 90, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 48, i8 -42, i8 3, i8 undef }, { i8, i8, i8, i8 } { i8 48, i8 -36, i8 3, i8 undef }, { i8, i8, i8, i8 } { i8 112, i8 0, i8 24, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 8, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 24, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 24, i8 undef }, { i8, i8, i8, i8 } { i8 -112, i8 76, i8 3, i8 undef }, { i8, i8, i8, i8 } { i8 -112, i8 -116, i8 3, i8 undef }], align 16
@.str.34 = private unnamed_addr constant [52 x i8] c"Internal error: Unexpected immediate byte size %d.\0A\00", align 1
@g_rr5_to_reg_ids = internal constant [4 x i32] [i32 13, i32 14, i32 16, i32 15], align 16
@g_tfr_exg_reg_ids = internal constant [16 x i32] [i32 6, i32 13, i32 14, i32 16, i32 15, i32 19, i32 7, i32 17, i32 1, i32 2, i32 8, i32 9, i32 5, i32 5, i32 3, i32 4], align 16
@reg_u_reg_ids = internal constant [8 x i32] [i32 8, i32 1, i32 2, i32 9, i32 13, i32 14, i32 15, i32 19], align 16
@reg_s_reg_ids = internal constant [8 x i32] [i32 8, i32 1, i32 2, i32 9, i32 13, i32 14, i32 16, i32 19], align 16
@.str.35 = private unnamed_addr constant [49 x i8] c"Internal error: Unexpected operand0 register %d\0A\00", align 1
@bit_move_hdlr.m680x_reg = internal constant [4 x i32] [i32 8, i32 1, i32 2, i32 0], align 16
@tfm_hdlr.inc_dec_r0 = internal constant [4 x i8] c"\01\FF\01\00", align 1
@tfm_hdlr.inc_dec_r1 = internal constant [4 x i8] c"\01\FF\00\01", align 1
@reg_reg12_hdlr.g_tfr_exg12_reg0_ids = internal constant [8 x i32] [i32 1, i32 2, i32 8, i32 21, i32 6, i32 13, i32 14, i32 15], align 16
@reg_reg12_hdlr.g_tfr_exg12_reg1_ids = internal constant [8 x i32] [i32 1, i32 2, i32 8, i32 20, i32 6, i32 13, i32 14, i32 15], align 16
@loop_hdlr.index_to_reg_id = internal constant [8 x i32] [i32 1, i32 2, i32 0, i32 0, i32 6, i32 13, i32 14, i32 15], align 16
@loop_hdlr.index_to_insn_id = internal constant [8 x i32] [i32 118, i32 119, i32 330, i32 332, i32 155, i32 156, i32 159, i32 159], align 16
@.str.36 = private unnamed_addr constant [64 x i8] c"Internal error: Unexpected post byte in loop instruction %02X.\0A\00", align 1
@g_access_mode_to_access = internal constant [4 x [15 x i32]] [[15 x i32] [i32 0, i32 1, i32 2, i32 1, i32 1, i32 1, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 2, i32 1, i32 3], [15 x i32] [i32 0, i32 1, i32 2, i32 2, i32 1, i32 3, i32 1, i32 1, i32 2, i32 3, i32 2, i32 3, i32 3, i32 1, i32 0], [15 x i32] [i32 0, i32 1, i32 2, i32 2, i32 1, i32 3, i32 1, i32 1, i32 2, i32 3, i32 1, i32 1, i32 3, i32 0, i32 0], [15 x i32] [i32 0, i32 1, i32 2, i32 2, i32 3, i32 3, i32 1, i32 1, i32 2, i32 3, i32 1, i32 1, i32 3, i32 0, i32 0]], align 16
@set_changed_regs_read_write_counts.changed_regs = internal constant <{ { i32, i32, <{ i32, [9 x i32] }> }, { i32, i32, <{ i32, [9 x i32] }> }, %struct.insn_to_changed_regs, { i32, i32, <{ i32, [9 x i32] }> }, %struct.insn_to_changed_regs, %struct.insn_to_changed_regs, %struct.insn_to_changed_regs, { i32, i32, <{ i32, i32, [8 x i32] }> }, { i32, i32, <{ i32, [9 x i32] }> }, { i32, i32, <{ i32, [9 x i32] }> }, { i32, i32, <{ i32, i32, [8 x i32] }> }, { i32, i32, <{ i32, i32, [8 x i32] }> }, { i32, i32, <{ i32, i32, [8 x i32] }> }, { i32, i32, <{ i32, i32, [8 x i32] }> }, { i32, i32, <{ i32, i32, [8 x i32] }> }, { i32, i32, <{ i32, i32, [8 x i32] }> }, { i32, i32, <{ i32, [9 x i32] }> }, { i32, i32, <{ i32, [9 x i32] }> }, { i32, i32, <{ i32, [9 x i32] }> }, { i32, i32, <{ i32, [9 x i32] }> }, %struct.insn_to_changed_regs, { i32, i32, <{ i32, i32, [8 x i32] }> }, { i32, i32, <{ i32, i32, [8 x i32] }> }, { i32, i32, <{ i32, i32, [8 x i32] }> }, { i32, i32, <{ i32, i32, [8 x i32] }> }, { i32, i32, <{ i32, i32, [8 x i32] }> }, { i32, i32, <{ i32, i32, [8 x i32] }> }, { i32, i32, <{ i32, i32, [8 x i32] }> }, { i32, i32, <{ i32, i32, [8 x i32] }> }, { i32, i32, <{ i32, i32, [8 x i32] }> }, { i32, i32, <{ i32, i32, [8 x i32] }> }, { i32, i32, <{ i32, i32, [8 x i32] }> }, { i32, i32, <{ i32, i32, [8 x i32] }> }, { i32, i32, <{ i32, i32, [8 x i32] }> }, { i32, i32, <{ i32, i32, [8 x i32] }> }, { i32, i32, <{ i32, i32, [8 x i32] }> }, { i32, i32, <{ i32, i32, [8 x i32] }> }, %struct.insn_to_changed_regs, %struct.insn_to_changed_regs, { i32, i32, <{ i32, i32, [8 x i32] }> }, %struct.insn_to_changed_regs, { i32, i32, <{ i32, i32, [8 x i32] }> }, { i32, i32, <{ i32, i32, [8 x i32] }> }, { i32, i32, <{ i32, i32, [8 x i32] }> }, %struct.insn_to_changed_regs, %struct.insn_to_changed_regs, %struct.insn_to_changed_regs, { i32, i32, <{ i32, i32, [8 x i32] }> }, %struct.insn_to_changed_regs, %struct.insn_to_changed_regs, %struct.insn_to_changed_regs }> <{ { i32, i32, <{ i32, [9 x i32] }> } { i32 71, i32 9, <{ i32, [9 x i32] }> <{ i32 15, [9 x i32] zeroinitializer }> }, { i32, i32, <{ i32, [9 x i32] }> } { i32 74, i32 9, <{ i32, [9 x i32] }> <{ i32 15, [9 x i32] zeroinitializer }> }, %struct.insn_to_changed_regs { i32 116, i32 7, [10 x i32] [i32 15, i32 19, i32 16, i32 14, i32 13, i32 9, i32 6, i32 8, i32 0, i32 0] }, { i32, i32, <{ i32, [9 x i32] }> } { i32 117, i32 7, <{ i32, [9 x i32] }> <{ i32 1, [9 x i32] zeroinitializer }> }, %struct.insn_to_changed_regs { i32 134, i32 11, [10 x i32] [i32 1, i32 12, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.insn_to_changed_regs { i32 137, i32 11, [10 x i32] [i32 6, i32 14, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.insn_to_changed_regs { i32 138, i32 11, [10 x i32] [i32 6, i32 14, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, { i32, i32, <{ i32, i32, [8 x i32] }> } { i32 140, i32 7, <{ i32, i32, [8 x i32] }> <{ i32 13, i32 14, [8 x i32] zeroinitializer }> }, { i32, i32, <{ i32, [9 x i32] }> } { i32 142, i32 1, <{ i32, [9 x i32] }> <{ i32 6, [9 x i32] zeroinitializer }> }, { i32, i32, <{ i32, [9 x i32] }> } { i32 144, i32 1, <{ i32, [9 x i32] }> <{ i32 6, [9 x i32] zeroinitializer }> }, { i32, i32, <{ i32, i32, [8 x i32] }> } { i32 145, i32 11, <{ i32, i32, [8 x i32] }> <{ i32 6, i32 14, [8 x i32] zeroinitializer }> }, { i32, i32, <{ i32, i32, [8 x i32] }> } { i32 146, i32 11, <{ i32, i32, [8 x i32] }> <{ i32 6, i32 14, [8 x i32] zeroinitializer }> }, { i32, i32, <{ i32, i32, [8 x i32] }> } { i32 152, i32 12, <{ i32, i32, [8 x i32] }> <{ i32 1, i32 2, [8 x i32] zeroinitializer }> }, { i32, i32, <{ i32, i32, [8 x i32] }> } { i32 154, i32 9, <{ i32, i32, [8 x i32] }> <{ i32 6, i32 13, [8 x i32] zeroinitializer }> }, { i32, i32, <{ i32, i32, [8 x i32] }> } { i32 157, i32 9, <{ i32, i32, [8 x i32] }> <{ i32 6, i32 13, [8 x i32] zeroinitializer }> }, { i32, i32, <{ i32, i32, [8 x i32] }> } { i32 158, i32 9, <{ i32, i32, [8 x i32] }> <{ i32 6, i32 13, [8 x i32] zeroinitializer }> }, { i32, i32, <{ i32, [9 x i32] }> } { i32 172, i32 9, <{ i32, [9 x i32] }> <{ i32 15, [9 x i32] zeroinitializer }> }, { i32, i32, <{ i32, [9 x i32] }> } { i32 187, i32 9, <{ i32, [9 x i32] }> <{ i32 15, [9 x i32] zeroinitializer }> }, { i32, i32, <{ i32, [9 x i32] }> } { i32 222, i32 1, <{ i32, [9 x i32] }> <{ i32 1, [9 x i32] zeroinitializer }> }, { i32, i32, <{ i32, [9 x i32] }> } { i32 225, i32 1, <{ i32, [9 x i32] }> <{ i32 1, [9 x i32] zeroinitializer }> }, %struct.insn_to_changed_regs { i32 223, i32 11, [10 x i32] [i32 13, i32 14, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, { i32, i32, <{ i32, i32, [8 x i32] }> } { i32 229, i32 9, <{ i32, i32, [8 x i32] }> <{ i32 1, i32 2, [8 x i32] zeroinitializer }> }, { i32, i32, <{ i32, i32, [8 x i32] }> } { i32 230, i32 10, <{ i32, i32, [8 x i32] }> <{ i32 6, i32 7, [8 x i32] zeroinitializer }> }, { i32, i32, <{ i32, i32, [8 x i32] }> } { i32 246, i32 5, <{ i32, i32, [8 x i32] }> <{ i32 1, i32 15, [8 x i32] zeroinitializer }> }, { i32, i32, <{ i32, i32, [8 x i32] }> } { i32 247, i32 5, <{ i32, i32, [8 x i32] }> <{ i32 2, i32 15, [8 x i32] zeroinitializer }> }, { i32, i32, <{ i32, i32, [8 x i32] }> } { i32 248, i32 5, <{ i32, i32, [8 x i32] }> <{ i32 8, i32 15, [8 x i32] zeroinitializer }> }, { i32, i32, <{ i32, i32, [8 x i32] }> } { i32 249, i32 5, <{ i32, i32, [8 x i32] }> <{ i32 6, i32 15, [8 x i32] zeroinitializer }> }, { i32, i32, <{ i32, i32, [8 x i32] }> } { i32 250, i32 5, <{ i32, i32, [8 x i32] }> <{ i32 12, i32 15, [8 x i32] zeroinitializer }> }, { i32, i32, <{ i32, i32, [8 x i32] }> } { i32 255, i32 5, <{ i32, i32, [8 x i32] }> <{ i32 13, i32 15, [8 x i32] zeroinitializer }> }, { i32, i32, <{ i32, i32, [8 x i32] }> } { i32 256, i32 5, <{ i32, i32, [8 x i32] }> <{ i32 14, i32 15, [8 x i32] zeroinitializer }> }, { i32, i32, <{ i32, i32, [8 x i32] }> } { i32 257, i32 12, <{ i32, i32, [8 x i32] }> <{ i32 1, i32 15, [8 x i32] zeroinitializer }> }, { i32, i32, <{ i32, i32, [8 x i32] }> } { i32 258, i32 12, <{ i32, i32, [8 x i32] }> <{ i32 2, i32 15, [8 x i32] zeroinitializer }> }, { i32, i32, <{ i32, i32, [8 x i32] }> } { i32 259, i32 12, <{ i32, i32, [8 x i32] }> <{ i32 8, i32 15, [8 x i32] zeroinitializer }> }, { i32, i32, <{ i32, i32, [8 x i32] }> } { i32 260, i32 12, <{ i32, i32, [8 x i32] }> <{ i32 6, i32 15, [8 x i32] zeroinitializer }> }, { i32, i32, <{ i32, i32, [8 x i32] }> } { i32 261, i32 12, <{ i32, i32, [8 x i32] }> <{ i32 12, i32 15, [8 x i32] zeroinitializer }> }, { i32, i32, <{ i32, i32, [8 x i32] }> } { i32 266, i32 12, <{ i32, i32, [8 x i32] }> <{ i32 13, i32 15, [8 x i32] zeroinitializer }> }, { i32, i32, <{ i32, i32, [8 x i32] }> } { i32 267, i32 12, <{ i32, i32, [8 x i32] }> <{ i32 14, i32 15, [8 x i32] zeroinitializer }> }, %struct.insn_to_changed_regs { i32 268, i32 11, [10 x i32] [i32 1, i32 13, i32 14, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.insn_to_changed_regs { i32 269, i32 9, [10 x i32] [i32 1, i32 13, i32 14, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, { i32, i32, <{ i32, i32, [8 x i32] }> } { i32 283, i32 8, <{ i32, i32, [8 x i32] }> <{ i32 15, i32 19, [8 x i32] zeroinitializer }> }, %struct.insn_to_changed_regs { i32 284, i32 8, [10 x i32] [i32 15, i32 8, i32 2, i32 1, i32 9, i32 13, i32 14, i32 16, i32 19, i32 0] }, { i32, i32, <{ i32, i32, [8 x i32] }> } { i32 285, i32 8, <{ i32, i32, [8 x i32] }> <{ i32 15, i32 19, [8 x i32] zeroinitializer }> }, { i32, i32, <{ i32, i32, [8 x i32] }> } { i32 295, i32 6, <{ i32, i32, [8 x i32] }> <{ i32 1, i32 2, [8 x i32] zeroinitializer }> }, { i32, i32, <{ i32, i32, [8 x i32] }> } { i32 296, i32 3, <{ i32, i32, [8 x i32] }> <{ i32 7, i32 6, [8 x i32] zeroinitializer }> }, %struct.insn_to_changed_regs { i32 322, i32 11, [10 x i32] [i32 15, i32 19, i32 16, i32 14, i32 13, i32 9, i32 1, i32 2, i32 8, i32 0] }, %struct.insn_to_changed_regs { i32 323, i32 11, [10 x i32] [i32 15, i32 19, i32 16, i32 14, i32 13, i32 9, i32 1, i32 2, i32 8, i32 0] }, %struct.insn_to_changed_regs { i32 324, i32 11, [10 x i32] [i32 15, i32 19, i32 16, i32 14, i32 13, i32 9, i32 1, i32 2, i32 8, i32 0] }, { i32, i32, <{ i32, i32, [8 x i32] }> } { i32 331, i32 6, <{ i32, i32, [8 x i32] }> <{ i32 1, i32 2, [8 x i32] zeroinitializer }> }, %struct.insn_to_changed_regs { i32 351, i32 7, [10 x i32] [i32 15, i32 19, i32 13, i32 1, i32 2, i32 8, i32 0, i32 0, i32 0, i32 0] }, %struct.insn_to_changed_regs { i32 353, i32 5, [10 x i32] [i32 1, i32 2, i32 13, i32 14, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.insn_to_changed_regs { i32 354, i32 5, [10 x i32] [i32 1, i32 2, i32 13, i32 14, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] } }>, align 16

; Function Attrs: nounwind uwtable
define dso_local void @M680X_get_insn_id(ptr noundef %handle, ptr noundef %insn, i32 noundef %id) #0 {
entry:
  %handle.addr = alloca ptr, align 8
  %insn.addr = alloca ptr, align 8
  %id.addr = alloca i32, align 4
  %info = alloca ptr, align 8
  %cpu = alloca ptr, align 8
  %insn_prefix = alloca i8, align 1
  %index = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8, !tbaa !5
  store ptr %insn, ptr %insn.addr, align 8, !tbaa !5
  store i32 %id, ptr %id.addr, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #6
  %0 = load ptr, ptr %handle.addr, align 8, !tbaa !5
  %printer_info = getelementptr inbounds %struct.cs_struct, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %printer_info, align 8, !tbaa !11
  store ptr %1, ptr %info, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %cpu) #6
  %2 = load ptr, ptr %info, align 8, !tbaa !5
  %cpu1 = getelementptr inbounds %struct.m680x_info, ptr %2, i32 0, i32 5
  %3 = load ptr, ptr %cpu1, align 8, !tbaa !16
  store ptr %3, ptr %cpu, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr %insn_prefix) #6
  %4 = load i32, ptr %id.addr, align 4, !tbaa !9
  %shr = lshr i32 %4, 8
  %and = and i32 %shr, 255
  %conv = trunc i32 %and to i8
  store i8 %conv, ptr %insn_prefix, align 1, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  %5 = load ptr, ptr %insn.addr, align 8, !tbaa !5
  %id2 = getelementptr inbounds %struct.cs_insn, ptr %5, i32 0, i32 0
  store i32 159, ptr %id2, align 8, !tbaa !21
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, ptr %i, align 4, !tbaa !9
  %conv3 = sext i32 %6 to i64
  %cmp = icmp ult i64 %conv3, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %cpu, align 8, !tbaa !5
  %pageX_table_size = getelementptr inbounds %struct.cpu_tables, ptr %7, i32 0, i32 5
  %8 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [3 x i64], ptr %pageX_table_size, i64 0, i64 %idxprom
  %9 = load i64, ptr %arrayidx, align 8, !tbaa !24
  %cmp5 = icmp eq i64 %9, 0
  br i1 %cmp5, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %10 = load ptr, ptr %cpu, align 8, !tbaa !5
  %inst_pageX_table = getelementptr inbounds %struct.cpu_tables, ptr %10, i32 0, i32 4
  %11 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [3 x ptr], ptr %inst_pageX_table, i64 0, i64 %idxprom7
  %12 = load ptr, ptr %arrayidx8, align 8, !tbaa !5
  %cmp9 = icmp eq ptr %12, null
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false
  %13 = load ptr, ptr %cpu, align 8, !tbaa !5
  %pageX_prefix = getelementptr inbounds %struct.cpu_tables, ptr %13, i32 0, i32 3
  %14 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom11 = sext i32 %14 to i64
  %arrayidx12 = getelementptr inbounds [3 x i8], ptr %pageX_prefix, i64 0, i64 %idxprom11
  %15 = load i8, ptr %arrayidx12, align 1, !tbaa !20
  %conv13 = zext i8 %15 to i32
  %16 = load i8, ptr %insn_prefix, align 1, !tbaa !20
  %conv14 = zext i8 %16 to i32
  %cmp15 = icmp eq i32 %conv13, %conv14
  br i1 %cmp15, label %if.then17, label %if.end35

if.then17:                                        ; preds = %if.end
  %17 = load ptr, ptr %cpu, align 8, !tbaa !5
  %inst_pageX_table18 = getelementptr inbounds %struct.cpu_tables, ptr %17, i32 0, i32 4
  %18 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom19 = sext i32 %18 to i64
  %arrayidx20 = getelementptr inbounds [3 x ptr], ptr %inst_pageX_table18, i64 0, i64 %idxprom19
  %19 = load ptr, ptr %arrayidx20, align 8, !tbaa !5
  %20 = load ptr, ptr %cpu, align 8, !tbaa !5
  %pageX_table_size21 = getelementptr inbounds %struct.cpu_tables, ptr %20, i32 0, i32 5
  %21 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom22 = sext i32 %21 to i64
  %arrayidx23 = getelementptr inbounds [3 x i64], ptr %pageX_table_size21, i64 0, i64 %idxprom22
  %22 = load i64, ptr %arrayidx23, align 8, !tbaa !24
  %conv24 = trunc i64 %22 to i32
  %23 = load i32, ptr %id.addr, align 4, !tbaa !9
  %and25 = and i32 %23, 255
  %conv26 = trunc i32 %and25 to i8
  %call = call i32 @binary_search(ptr noundef %19, i32 noundef %conv24, i8 noundef zeroext %conv26)
  store i32 %call, ptr %index, align 4, !tbaa !9
  %24 = load i32, ptr %index, align 4, !tbaa !9
  %cmp27 = icmp sge i32 %24, 0
  br i1 %cmp27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then17
  %25 = load ptr, ptr %cpu, align 8, !tbaa !5
  %inst_pageX_table29 = getelementptr inbounds %struct.cpu_tables, ptr %25, i32 0, i32 4
  %26 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom30 = sext i32 %26 to i64
  %arrayidx31 = getelementptr inbounds [3 x ptr], ptr %inst_pageX_table29, i64 0, i64 %idxprom30
  %27 = load ptr, ptr %arrayidx31, align 8, !tbaa !5
  %28 = load i32, ptr %index, align 4, !tbaa !9
  %idxprom32 = sext i32 %28 to i64
  %arrayidx33 = getelementptr inbounds %struct.inst_pageX, ptr %27, i64 %idxprom32
  %bf.load = load i32, ptr %arrayidx33, align 4
  %bf.lshr = lshr i32 %bf.load, 8
  %bf.clear = and i32 %bf.lshr, 511
  br label %cond.end

cond.false:                                       ; preds = %if.then17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %bf.clear, %cond.true ], [ 159, %cond.false ]
  %29 = load ptr, ptr %insn.addr, align 8, !tbaa !5
  %id34 = getelementptr inbounds %struct.cs_insn, ptr %29, i32 0, i32 0
  store i32 %cond, ptr %id34, align 8, !tbaa !21
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end35:                                         ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end35
  %30 = load i32, ptr %i, align 4, !tbaa !9
  %inc = add nsw i32 %30, 1
  store i32 %inc, ptr %i, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !25

for.end:                                          ; preds = %if.then, %for.cond
  %31 = load i8, ptr %insn_prefix, align 1, !tbaa !20
  %conv36 = zext i8 %31 to i32
  %cmp37 = icmp ne i32 %conv36, 0
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %for.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end40:                                         ; preds = %for.end
  %32 = load ptr, ptr %cpu, align 8, !tbaa !5
  %inst_page1_table = getelementptr inbounds %struct.cpu_tables, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %inst_page1_table, align 8, !tbaa !27
  %34 = load i32, ptr %id.addr, align 4, !tbaa !9
  %idxprom41 = zext i32 %34 to i64
  %arrayidx42 = getelementptr inbounds %struct.inst_page1, ptr %33, i64 %idxprom41
  %bf.load43 = load i32, ptr %arrayidx42, align 4
  %bf.clear44 = and i32 %bf.load43, 511
  %35 = load ptr, ptr %insn.addr, align 8, !tbaa !5
  %id45 = getelementptr inbounds %struct.cs_insn, ptr %35, i32 0, i32 0
  store i32 %bf.clear44, ptr %id45, align 8, !tbaa !21
  %36 = load ptr, ptr %insn.addr, align 8, !tbaa !5
  %id46 = getelementptr inbounds %struct.cs_insn, ptr %36, i32 0, i32 0
  %37 = load i32, ptr %id46, align 8, !tbaa !21
  %cmp47 = icmp ne i32 %37, 159
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end40
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end50:                                         ; preds = %if.end40
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc90, %if.end50
  %38 = load i32, ptr %i, align 4, !tbaa !9
  %conv52 = sext i32 %38 to i64
  %cmp53 = icmp ult i64 %conv52, 2
  br i1 %cmp53, label %for.body55, label %for.end92

for.body55:                                       ; preds = %for.cond51
  %39 = load ptr, ptr %cpu, align 8, !tbaa !5
  %overlay_table_size = getelementptr inbounds %struct.cpu_tables, ptr %39, i32 0, i32 2
  %40 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom56 = sext i32 %40 to i64
  %arrayidx57 = getelementptr inbounds [2 x i64], ptr %overlay_table_size, i64 0, i64 %idxprom56
  %41 = load i64, ptr %arrayidx57, align 8, !tbaa !24
  %cmp58 = icmp eq i64 %41, 0
  br i1 %cmp58, label %if.then65, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %for.body55
  %42 = load ptr, ptr %cpu, align 8, !tbaa !5
  %inst_overlay_table = getelementptr inbounds %struct.cpu_tables, ptr %42, i32 0, i32 1
  %43 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom61 = sext i32 %43 to i64
  %arrayidx62 = getelementptr inbounds [2 x ptr], ptr %inst_overlay_table, i64 0, i64 %idxprom61
  %44 = load ptr, ptr %arrayidx62, align 8, !tbaa !5
  %cmp63 = icmp eq ptr %44, null
  br i1 %cmp63, label %if.then65, label %if.end66

if.then65:                                        ; preds = %lor.lhs.false60, %for.body55
  br label %for.end92

if.end66:                                         ; preds = %lor.lhs.false60
  %45 = load ptr, ptr %cpu, align 8, !tbaa !5
  %inst_overlay_table67 = getelementptr inbounds %struct.cpu_tables, ptr %45, i32 0, i32 1
  %46 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom68 = sext i32 %46 to i64
  %arrayidx69 = getelementptr inbounds [2 x ptr], ptr %inst_overlay_table67, i64 0, i64 %idxprom68
  %47 = load ptr, ptr %arrayidx69, align 8, !tbaa !5
  %48 = load ptr, ptr %cpu, align 8, !tbaa !5
  %overlay_table_size70 = getelementptr inbounds %struct.cpu_tables, ptr %48, i32 0, i32 2
  %49 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom71 = sext i32 %49 to i64
  %arrayidx72 = getelementptr inbounds [2 x i64], ptr %overlay_table_size70, i64 0, i64 %idxprom71
  %50 = load i64, ptr %arrayidx72, align 8, !tbaa !24
  %conv73 = trunc i64 %50 to i32
  %51 = load i32, ptr %id.addr, align 4, !tbaa !9
  %and74 = and i32 %51, 255
  %conv75 = trunc i32 %and74 to i8
  %call76 = call i32 @binary_search(ptr noundef %47, i32 noundef %conv73, i8 noundef zeroext %conv75)
  store i32 %call76, ptr %index, align 4, !tbaa !9
  %cmp77 = icmp sge i32 %call76, 0
  br i1 %cmp77, label %if.then79, label %if.end89

if.then79:                                        ; preds = %if.end66
  %52 = load ptr, ptr %cpu, align 8, !tbaa !5
  %inst_overlay_table80 = getelementptr inbounds %struct.cpu_tables, ptr %52, i32 0, i32 1
  %53 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom81 = sext i32 %53 to i64
  %arrayidx82 = getelementptr inbounds [2 x ptr], ptr %inst_overlay_table80, i64 0, i64 %idxprom81
  %54 = load ptr, ptr %arrayidx82, align 8, !tbaa !5
  %55 = load i32, ptr %index, align 4, !tbaa !9
  %idxprom83 = sext i32 %55 to i64
  %arrayidx84 = getelementptr inbounds %struct.inst_pageX, ptr %54, i64 %idxprom83
  %bf.load85 = load i32, ptr %arrayidx84, align 4
  %bf.lshr86 = lshr i32 %bf.load85, 8
  %bf.clear87 = and i32 %bf.lshr86, 511
  %56 = load ptr, ptr %insn.addr, align 8, !tbaa !5
  %id88 = getelementptr inbounds %struct.cs_insn, ptr %56, i32 0, i32 0
  store i32 %bf.clear87, ptr %id88, align 8, !tbaa !21
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end89:                                         ; preds = %if.end66
  br label %for.inc90

for.inc90:                                        ; preds = %if.end89
  %57 = load i32, ptr %i, align 4, !tbaa !9
  %inc91 = add nsw i32 %57, 1
  store i32 %inc91, ptr %i, align 4, !tbaa !9
  br label %for.cond51, !llvm.loop !29

for.end92:                                        ; preds = %if.then65, %for.cond51
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end92, %if.then79, %if.then49, %if.then39, %cond.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr %insn_prefix) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %cpu) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #6
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @binary_search(ptr noundef %inst_pageX_table, i32 noundef %table_size, i8 noundef zeroext %opcode) #0 {
entry:
  %retval = alloca i32, align 4
  %inst_pageX_table.addr = alloca ptr, align 8
  %table_size.addr = alloca i32, align 4
  %opcode.addr = alloca i8, align 1
  %first = alloca i32, align 4
  %last = alloca i32, align 4
  %middle = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %inst_pageX_table, ptr %inst_pageX_table.addr, align 8, !tbaa !5
  store i32 %table_size, ptr %table_size.addr, align 4, !tbaa !9
  store i8 %opcode, ptr %opcode.addr, align 1, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %first) #6
  store i32 0, ptr %first, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %last) #6
  %0 = load i32, ptr %table_size.addr, align 4, !tbaa !9
  %sub = sub nsw i32 %0, 1
  store i32 %sub, ptr %last, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %middle) #6
  %1 = load i32, ptr %first, align 4, !tbaa !9
  %2 = load i32, ptr %last, align 4, !tbaa !9
  %add = add nsw i32 %1, %2
  %div = sdiv i32 %add, 2
  store i32 %div, ptr %middle, align 4, !tbaa !9
  br label %while.cond

while.cond:                                       ; preds = %if.end14, %entry
  %3 = load i32, ptr %first, align 4, !tbaa !9
  %4 = load i32, ptr %last, align 4, !tbaa !9
  %cmp = icmp sle i32 %3, %4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %inst_pageX_table.addr, align 8, !tbaa !5
  %6 = load i32, ptr %middle, align 4, !tbaa !9
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds %struct.inst_pageX, ptr %5, i64 %idxprom
  %bf.load = load i32, ptr %arrayidx, align 4
  %bf.clear = and i32 %bf.load, 255
  %7 = load i8, ptr %opcode.addr, align 1, !tbaa !20
  %conv = zext i8 %7 to i32
  %cmp1 = icmp slt i32 %bf.clear, %conv
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %8 = load i32, ptr %middle, align 4, !tbaa !9
  %add3 = add nsw i32 %8, 1
  store i32 %add3, ptr %first, align 4, !tbaa !9
  br label %if.end14

if.else:                                          ; preds = %while.body
  %9 = load ptr, ptr %inst_pageX_table.addr, align 8, !tbaa !5
  %10 = load i32, ptr %middle, align 4, !tbaa !9
  %idxprom4 = sext i32 %10 to i64
  %arrayidx5 = getelementptr inbounds %struct.inst_pageX, ptr %9, i64 %idxprom4
  %bf.load6 = load i32, ptr %arrayidx5, align 4
  %bf.clear7 = and i32 %bf.load6, 255
  %11 = load i8, ptr %opcode.addr, align 1, !tbaa !20
  %conv8 = zext i8 %11 to i32
  %cmp9 = icmp eq i32 %bf.clear7, %conv8
  br i1 %cmp9, label %if.then11, label %if.else12

if.then11:                                        ; preds = %if.else
  %12 = load i32, ptr %middle, align 4, !tbaa !9
  store i32 %12, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else12:                                        ; preds = %if.else
  %13 = load i32, ptr %middle, align 4, !tbaa !9
  %sub13 = sub nsw i32 %13, 1
  store i32 %sub13, ptr %last, align 4, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.else12
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then
  %14 = load i32, ptr %first, align 4, !tbaa !9
  %15 = load i32, ptr %last, align 4, !tbaa !9
  %add15 = add nsw i32 %14, %15
  %div16 = sdiv i32 %add15, 2
  store i32 %div16, ptr %middle, align 4, !tbaa !9
  br label %while.cond, !llvm.loop !30

while.end:                                        ; preds = %while.cond
  %16 = load i32, ptr %first, align 4, !tbaa !9
  %17 = load i32, ptr %last, align 4, !tbaa !9
  %cmp17 = icmp sgt i32 %16, %17
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %while.end
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end20:                                         ; preds = %while.end
  store i32 -2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then19, %if.then11
  call void @llvm.lifetime.end.p0(i64 4, ptr %middle) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %last) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %first) #6
  %18 = load i32, ptr %retval, align 4
  ret i32 %18
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @M680X_getInstruction(i64 noundef %ud, ptr noundef %code, i64 noundef %code_len, ptr noundef %MI, ptr noundef %size, i64 noundef %address, ptr noundef %inst_info) #0 {
entry:
  %retval = alloca i1, align 1
  %ud.addr = alloca i64, align 8
  %code.addr = alloca ptr, align 8
  %code_len.addr = alloca i64, align 8
  %MI.addr = alloca ptr, align 8
  %size.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  %inst_info.addr = alloca ptr, align 8
  %insn_size = alloca i32, align 4
  %cpu_type = alloca i32, align 4
  %handle = alloca ptr, align 8
  %info = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %ud, ptr %ud.addr, align 8, !tbaa !24
  store ptr %code, ptr %code.addr, align 8, !tbaa !5
  store i64 %code_len, ptr %code_len.addr, align 8, !tbaa !24
  store ptr %MI, ptr %MI.addr, align 8, !tbaa !5
  store ptr %size, ptr %size.addr, align 8, !tbaa !5
  store i64 %address, ptr %address.addr, align 8, !tbaa !24
  store ptr %inst_info, ptr %inst_info.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %insn_size) #6
  store i32 0, ptr %insn_size, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu_type) #6
  store i32 0, ptr %cpu_type, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 8, ptr %handle) #6
  %0 = load i64, ptr %ud.addr, align 8, !tbaa !24
  %1 = inttoptr i64 %0 to ptr
  store ptr %1, ptr %handle, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #6
  %2 = load ptr, ptr %handle, align 8, !tbaa !5
  %printer_info = getelementptr inbounds %struct.cs_struct, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %printer_info, align 8, !tbaa !11
  store ptr %3, ptr %info, align 8, !tbaa !5
  %4 = load ptr, ptr %MI.addr, align 8, !tbaa !5
  call void @MCInst_clear(ptr noundef %4)
  %5 = load ptr, ptr %handle, align 8, !tbaa !5
  %mode = getelementptr inbounds %struct.cs_struct, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %mode, align 4, !tbaa !31
  %and = and i32 %6, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 3, ptr %cpu_type, align 4, !tbaa !20
  br label %if.end53

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %handle, align 8, !tbaa !5
  %mode1 = getelementptr inbounds %struct.cs_struct, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %mode1, align 4, !tbaa !31
  %and2 = and i32 %8, 16
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  store i32 4, ptr %cpu_type, align 4, !tbaa !20
  br label %if.end52

if.else5:                                         ; preds = %if.else
  %9 = load ptr, ptr %handle, align 8, !tbaa !5
  %mode6 = getelementptr inbounds %struct.cs_struct, ptr %9, i32 0, i32 1
  %10 = load i32, ptr %mode6, align 4, !tbaa !31
  %and7 = and i32 %10, 32
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.else5
  store i32 5, ptr %cpu_type, align 4, !tbaa !20
  br label %if.end51

if.else10:                                        ; preds = %if.else5
  %11 = load ptr, ptr %handle, align 8, !tbaa !5
  %mode11 = getelementptr inbounds %struct.cs_struct, ptr %11, i32 0, i32 1
  %12 = load i32, ptr %mode11, align 4, !tbaa !31
  %and12 = and i32 %12, 64
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.else10
  store i32 6, ptr %cpu_type, align 4, !tbaa !20
  br label %if.end50

if.else15:                                        ; preds = %if.else10
  %13 = load ptr, ptr %handle, align 8, !tbaa !5
  %mode16 = getelementptr inbounds %struct.cs_struct, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %mode16, align 4, !tbaa !31
  %and17 = and i32 %14, 1024
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %if.then19, label %if.else20

if.then19:                                        ; preds = %if.else15
  store i32 10, ptr %cpu_type, align 4, !tbaa !20
  br label %if.end49

if.else20:                                        ; preds = %if.else15
  %15 = load ptr, ptr %handle, align 8, !tbaa !5
  %mode21 = getelementptr inbounds %struct.cs_struct, ptr %15, i32 0, i32 1
  %16 = load i32, ptr %mode21, align 4, !tbaa !31
  %and22 = and i32 %16, 128
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %if.then24, label %if.else25

if.then24:                                        ; preds = %if.else20
  store i32 7, ptr %cpu_type, align 4, !tbaa !20
  br label %if.end48

if.else25:                                        ; preds = %if.else20
  %17 = load ptr, ptr %handle, align 8, !tbaa !5
  %mode26 = getelementptr inbounds %struct.cs_struct, ptr %17, i32 0, i32 1
  %18 = load i32, ptr %mode26, align 4, !tbaa !31
  %and27 = and i32 %18, 2
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %if.then29, label %if.else30

if.then29:                                        ; preds = %if.else25
  store i32 1, ptr %cpu_type, align 4, !tbaa !20
  br label %if.end47

if.else30:                                        ; preds = %if.else25
  %19 = load ptr, ptr %handle, align 8, !tbaa !5
  %mode31 = getelementptr inbounds %struct.cs_struct, ptr %19, i32 0, i32 1
  %20 = load i32, ptr %mode31, align 4, !tbaa !31
  %and32 = and i32 %20, 4
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %if.then34, label %if.else35

if.then34:                                        ; preds = %if.else30
  store i32 2, ptr %cpu_type, align 4, !tbaa !20
  br label %if.end46

if.else35:                                        ; preds = %if.else30
  %21 = load ptr, ptr %handle, align 8, !tbaa !5
  %mode36 = getelementptr inbounds %struct.cs_struct, ptr %21, i32 0, i32 1
  %22 = load i32, ptr %mode36, align 4, !tbaa !31
  %and37 = and i32 %22, 256
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %if.then39, label %if.else40

if.then39:                                        ; preds = %if.else35
  store i32 8, ptr %cpu_type, align 4, !tbaa !20
  br label %if.end45

if.else40:                                        ; preds = %if.else35
  %23 = load ptr, ptr %handle, align 8, !tbaa !5
  %mode41 = getelementptr inbounds %struct.cs_struct, ptr %23, i32 0, i32 1
  %24 = load i32, ptr %mode41, align 4, !tbaa !31
  %and42 = and i32 %24, 512
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %if.then44, label %if.end

if.then44:                                        ; preds = %if.else40
  store i32 9, ptr %cpu_type, align 4, !tbaa !20
  br label %if.end

if.end:                                           ; preds = %if.then44, %if.else40
  br label %if.end45

if.end45:                                         ; preds = %if.end, %if.then39
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then34
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then29
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then24
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then19
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then14
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then9
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.then4
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then
  %25 = load i32, ptr %cpu_type, align 4, !tbaa !20
  %cmp = icmp ne i32 %25, 0
  br i1 %cmp, label %land.lhs.true, label %if.end59

land.lhs.true:                                    ; preds = %if.end53
  %26 = load ptr, ptr %info, align 8, !tbaa !5
  %27 = load i32, ptr %cpu_type, align 4, !tbaa !20
  %28 = load i64, ptr %address.addr, align 8, !tbaa !24
  %conv = trunc i64 %28 to i16
  %29 = load ptr, ptr %code.addr, align 8, !tbaa !5
  %30 = load i64, ptr %code_len.addr, align 8, !tbaa !24
  %conv54 = trunc i64 %30 to i16
  %call = call zeroext i1 @m680x_setup_internals(ptr noundef %26, i32 noundef %27, i16 noundef zeroext %conv, ptr noundef %29, i16 noundef zeroext %conv54)
  br i1 %call, label %if.then56, label %if.end59

if.then56:                                        ; preds = %land.lhs.true
  %31 = load ptr, ptr %MI.addr, align 8, !tbaa !5
  %32 = load ptr, ptr %info, align 8, !tbaa !5
  %33 = load i64, ptr %address.addr, align 8, !tbaa !24
  %conv57 = trunc i64 %33 to i16
  %call58 = call i32 @m680x_disassemble(ptr noundef %31, ptr noundef %32, i16 noundef zeroext %conv57)
  store i32 %call58, ptr %insn_size, align 4, !tbaa !9
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %land.lhs.true, %if.end53
  %34 = load i32, ptr %insn_size, align 4, !tbaa !9
  %cmp60 = icmp eq i32 %34, 0
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.end59
  %35 = load ptr, ptr %size.addr, align 8, !tbaa !5
  store i16 1, ptr %35, align 2, !tbaa !32
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end63:                                         ; preds = %if.end59
  %36 = load i32, ptr %insn_size, align 4, !tbaa !9
  %conv64 = zext i32 %36 to i64
  %37 = load i64, ptr %code_len.addr, align 8, !tbaa !24
  %cmp65 = icmp ugt i64 %conv64, %37
  br i1 %cmp65, label %if.then67, label %if.else69

if.then67:                                        ; preds = %if.end63
  %38 = load i64, ptr %code_len.addr, align 8, !tbaa !24
  %conv68 = trunc i64 %38 to i16
  %39 = load ptr, ptr %size.addr, align 8, !tbaa !5
  store i16 %conv68, ptr %39, align 2, !tbaa !32
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else69:                                        ; preds = %if.end63
  %40 = load i32, ptr %insn_size, align 4, !tbaa !9
  %conv70 = trunc i32 %40 to i16
  %41 = load ptr, ptr %size.addr, align 8, !tbaa !5
  store i16 %conv70, ptr %41, align 2, !tbaa !32
  br label %if.end71

if.end71:                                         ; preds = %if.else69
  store i1 true, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %if.then67, %if.then62
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %handle) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu_type) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %insn_size) #6
  %42 = load i1, ptr %retval, align 1
  ret i1 %42
}

declare void @MCInst_clear(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal zeroext i1 @m680x_setup_internals(ptr noundef %info, i32 noundef %cpu_type, i16 noundef zeroext %address, ptr noundef %code, i16 noundef zeroext %code_len) #0 {
entry:
  %retval = alloca i1, align 1
  %info.addr = alloca ptr, align 8
  %cpu_type.addr = alloca i32, align 4
  %address.addr = alloca i16, align 2
  %code.addr = alloca ptr, align 8
  %code_len.addr = alloca i16, align 2
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  store i32 %cpu_type, ptr %cpu_type.addr, align 4, !tbaa !20
  store i16 %address, ptr %address.addr, align 2, !tbaa !32
  store ptr %code, ptr %code.addr, align 8, !tbaa !5
  store i16 %code_len, ptr %code_len.addr, align 2, !tbaa !32
  %0 = load i32, ptr %cpu_type.addr, align 4, !tbaa !20
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !tbaa !5
  %2 = load i32, ptr %cpu_type.addr, align 4, !tbaa !20
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [11 x ptr], ptr @s_cpu_type, i64 0, i64 %idxprom
  %3 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef %3)
  store i1 false, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %code.addr, align 8, !tbaa !5
  %5 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %code1 = getelementptr inbounds %struct.m680x_info, ptr %5, i32 0, i32 0
  store ptr %4, ptr %code1, align 8, !tbaa !33
  %6 = load i16, ptr %code_len.addr, align 2, !tbaa !32
  %conv = zext i16 %6 to i32
  %7 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %size = getelementptr inbounds %struct.m680x_info, ptr %7, i32 0, i32 1
  store i32 %conv, ptr %size, align 8, !tbaa !34
  %8 = load i16, ptr %address.addr, align 2, !tbaa !32
  %9 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %offset = getelementptr inbounds %struct.m680x_info, ptr %9, i32 0, i32 2
  store i16 %8, ptr %offset, align 4, !tbaa !35
  %10 = load i32, ptr %cpu_type.addr, align 4, !tbaa !20
  %11 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %cpu_type2 = getelementptr inbounds %struct.m680x_info, ptr %11, i32 0, i32 3
  store i32 %10, ptr %cpu_type2, align 8, !tbaa !36
  %12 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %cpu_type3 = getelementptr inbounds %struct.m680x_info, ptr %12, i32 0, i32 3
  %13 = load i32, ptr %cpu_type3, align 8, !tbaa !36
  %idxprom4 = zext i32 %13 to i64
  %arrayidx5 = getelementptr inbounds [11 x %struct.cpu_tables], ptr @g_cpu_tables, i64 0, i64 %idxprom4
  %14 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %cpu = getelementptr inbounds %struct.m680x_info, ptr %14, i32 0, i32 5
  store ptr %arrayidx5, ptr %cpu, align 8, !tbaa !16
  store i1 true, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %15 = load i1, ptr %retval, align 1
  ret i1 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @m680x_disassemble(ptr noundef %MI, ptr noundef %info, i16 noundef zeroext %address) #0 {
entry:
  %retval = alloca i32, align 4
  %MI.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %address.addr = alloca i16, align 2
  %m680x = alloca ptr, align 8
  %detail = alloca ptr, align 8
  %base_address = alloca i16, align 2
  %insn_description = alloca %struct.insn_desc, align 4
  %access_mode = alloca i32, align 4
  %reg = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %MI, ptr %MI.addr, align 8, !tbaa !5
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  store i16 %address, ptr %address.addr, align 2, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %m680x) #6
  %0 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %m680x1 = getelementptr inbounds %struct.m680x_info, ptr %0, i32 0, i32 4
  store ptr %m680x1, ptr %m680x, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %detail) #6
  %1 = load ptr, ptr %MI.addr, align 8, !tbaa !5
  %flat_insn = getelementptr inbounds %struct.MCInst, ptr %1, i32 0, i32 6
  %2 = load ptr, ptr %flat_insn, align 8, !tbaa !37
  %detail2 = getelementptr inbounds %struct.cs_insn, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %detail2, align 8, !tbaa !39
  store ptr %3, ptr %detail, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 2, ptr %base_address) #6
  %4 = load i16, ptr %address.addr, align 2, !tbaa !32
  store i16 %4, ptr %base_address, align 2, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 20, ptr %insn_description) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %access_mode) #6
  %5 = load ptr, ptr %detail, align 8, !tbaa !5
  %cmp = icmp ne ptr %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %detail, align 8, !tbaa !5
  call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 308, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.memset.p0.i64(ptr align 4 %insn_description, i8 0, i64 20, i1 false)
  %7 = load ptr, ptr %m680x, align 8, !tbaa !5
  call void @llvm.memset.p0.i64(ptr align 4 %7, i8 0, i64 220, i1 false)
  %8 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %insn_size = getelementptr inbounds %struct.m680x_info, ptr %8, i32 0, i32 7
  store i8 1, ptr %insn_size, align 4, !tbaa !40
  %9 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %10 = load i16, ptr %address.addr, align 2, !tbaa !32
  %call = call zeroext i1 @decode_insn(ptr noundef %9, i16 noundef zeroext %10, ptr noundef %insn_description)
  br i1 %call, label %if.then3, label %if.else115

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %reg) #6
  %opcode = getelementptr inbounds %struct.insn_desc, ptr %insn_description, i32 0, i32 0
  %11 = load i32, ptr %opcode, align 4, !tbaa !41
  %cmp4 = icmp ugt i32 %11, 255
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then3
  %12 = load i16, ptr %address.addr, align 2, !tbaa !32
  %conv = zext i16 %12 to i32
  %add = add nsw i32 %conv, 2
  %conv6 = trunc i32 %add to i16
  store i16 %conv6, ptr %address.addr, align 2, !tbaa !32
  br label %if.end7

if.else:                                          ; preds = %if.then3
  %13 = load i16, ptr %address.addr, align 2, !tbaa !32
  %inc = add i16 %13, 1
  store i16 %inc, ptr %address.addr, align 2, !tbaa !32
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then5
  %insn = getelementptr inbounds %struct.insn_desc, ptr %insn_description, i32 0, i32 1
  %14 = load i32, ptr %insn, align 4, !tbaa !43
  %15 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %insn8 = getelementptr inbounds %struct.m680x_info, ptr %15, i32 0, i32 6
  store i32 %14, ptr %insn8, align 8, !tbaa !44
  %16 = load ptr, ptr %MI.addr, align 8, !tbaa !5
  %opcode9 = getelementptr inbounds %struct.insn_desc, ptr %insn_description, i32 0, i32 0
  %17 = load i32, ptr %opcode9, align 4, !tbaa !41
  call void @MCInst_setOpcode(ptr noundef %16, i32 noundef %17)
  %18 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %insn10 = getelementptr inbounds %struct.m680x_info, ptr %18, i32 0, i32 6
  %19 = load i32, ptr %insn10, align 8, !tbaa !44
  %idxprom = zext i32 %19 to i64
  %arrayidx = getelementptr inbounds [357 x %struct.insn_props], ptr @g_insn_props, i64 0, i64 %idxprom
  %bf.load = load i32, ptr %arrayidx, align 4
  %bf.lshr = lshr i32 %bf.load, 9
  %bf.clear = and i32 %bf.lshr, 31
  store i32 %bf.clear, ptr %reg, align 4, !tbaa !20
  %20 = load i32, ptr %reg, align 4, !tbaa !20
  %cmp11 = icmp ne i32 %20, 0
  br i1 %cmp11, label %if.then13, label %if.end46

if.then13:                                        ; preds = %if.end7
  %21 = load i32, ptr %reg, align 4, !tbaa !20
  %cmp14 = icmp eq i32 %21, 11
  br i1 %cmp14, label %land.lhs.true, label %if.end19

land.lhs.true:                                    ; preds = %if.then13
  %22 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %cpu = getelementptr inbounds %struct.m680x_info, ptr %22, i32 0, i32 5
  %23 = load ptr, ptr %cpu, align 8, !tbaa !16
  %reg_byte_size = getelementptr inbounds %struct.cpu_tables, ptr %23, i32 0, i32 6
  %24 = load ptr, ptr %reg_byte_size, align 8, !tbaa !45
  %25 = load i32, ptr %reg, align 4, !tbaa !20
  %idxprom16 = zext i32 %25 to i64
  %arrayidx17 = getelementptr inbounds i8, ptr %24, i64 %idxprom16
  %26 = load i8, ptr %arrayidx17, align 1, !tbaa !20
  %tobool = icmp ne i8 %26, 0
  br i1 %tobool, label %if.end19, label %if.then18

if.then18:                                        ; preds = %land.lhs.true
  store i32 13, ptr %reg, align 4, !tbaa !20
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %land.lhs.true, %if.then13
  %27 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %28 = load i32, ptr %reg, align 4, !tbaa !20
  call void @add_reg_operand(ptr noundef %27, i32 noundef %28)
  %29 = load ptr, ptr %m680x, align 8, !tbaa !5
  %flags = getelementptr inbounds %struct.cs_m680x, ptr %29, i32 0, i32 0
  %30 = load i8, ptr %flags, align 4, !tbaa !46
  %conv20 = zext i8 %30 to i32
  %or = or i32 %conv20, 1
  %conv21 = trunc i32 %or to i8
  store i8 %conv21, ptr %flags, align 4, !tbaa !46
  %31 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %insn22 = getelementptr inbounds %struct.m680x_info, ptr %31, i32 0, i32 6
  %32 = load i32, ptr %insn22, align 8, !tbaa !44
  %idxprom23 = zext i32 %32 to i64
  %arrayidx24 = getelementptr inbounds [357 x %struct.insn_props], ptr @g_insn_props, i64 0, i64 %idxprom23
  %bf.load25 = load i32, ptr %arrayidx24, align 4
  %bf.lshr26 = lshr i32 %bf.load25, 14
  %bf.clear27 = and i32 %bf.lshr26, 31
  store i32 %bf.clear27, ptr %reg, align 4, !tbaa !20
  %33 = load i32, ptr %reg, align 4, !tbaa !20
  %cmp28 = icmp ne i32 %33, 0
  br i1 %cmp28, label %if.then30, label %if.end45

if.then30:                                        ; preds = %if.end19
  %34 = load i32, ptr %reg, align 4, !tbaa !20
  %cmp31 = icmp eq i32 %34, 11
  br i1 %cmp31, label %land.lhs.true33, label %if.end40

land.lhs.true33:                                  ; preds = %if.then30
  %35 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %cpu34 = getelementptr inbounds %struct.m680x_info, ptr %35, i32 0, i32 5
  %36 = load ptr, ptr %cpu34, align 8, !tbaa !16
  %reg_byte_size35 = getelementptr inbounds %struct.cpu_tables, ptr %36, i32 0, i32 6
  %37 = load ptr, ptr %reg_byte_size35, align 8, !tbaa !45
  %38 = load i32, ptr %reg, align 4, !tbaa !20
  %idxprom36 = zext i32 %38 to i64
  %arrayidx37 = getelementptr inbounds i8, ptr %37, i64 %idxprom36
  %39 = load i8, ptr %arrayidx37, align 1, !tbaa !20
  %tobool38 = icmp ne i8 %39, 0
  br i1 %tobool38, label %if.end40, label %if.then39

if.then39:                                        ; preds = %land.lhs.true33
  store i32 13, ptr %reg, align 4, !tbaa !20
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %land.lhs.true33, %if.then30
  %40 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %41 = load i32, ptr %reg, align 4, !tbaa !20
  call void @add_reg_operand(ptr noundef %40, i32 noundef %41)
  %42 = load ptr, ptr %m680x, align 8, !tbaa !5
  %flags41 = getelementptr inbounds %struct.cs_m680x, ptr %42, i32 0, i32 0
  %43 = load i8, ptr %flags41, align 4, !tbaa !46
  %conv42 = zext i8 %43 to i32
  %or43 = or i32 %conv42, 2
  %conv44 = trunc i32 %or43 to i8
  store i8 %conv44, ptr %flags41, align 4, !tbaa !46
  br label %if.end45

if.end45:                                         ; preds = %if.end40, %if.end19
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.end7
  %hid = getelementptr inbounds %struct.insn_desc, ptr %insn_description, i32 0, i32 2
  %arrayidx47 = getelementptr inbounds [2 x i32], ptr %hid, i64 0, i64 0
  %44 = load i32, ptr %arrayidx47, align 4, !tbaa !20
  %idxprom48 = zext i32 %44 to i64
  %arrayidx49 = getelementptr inbounds [33 x ptr], ptr @g_insn_handler, i64 0, i64 %idxprom48
  %45 = load ptr, ptr %arrayidx49, align 8, !tbaa !5
  %46 = load ptr, ptr %MI.addr, align 8, !tbaa !5
  %47 = load ptr, ptr %info.addr, align 8, !tbaa !5
  call void %45(ptr noundef %46, ptr noundef %47, ptr noundef %address.addr)
  %hid50 = getelementptr inbounds %struct.insn_desc, ptr %insn_description, i32 0, i32 2
  %arrayidx51 = getelementptr inbounds [2 x i32], ptr %hid50, i64 0, i64 1
  %48 = load i32, ptr %arrayidx51, align 4, !tbaa !20
  %idxprom52 = zext i32 %48 to i64
  %arrayidx53 = getelementptr inbounds [33 x ptr], ptr @g_insn_handler, i64 0, i64 %idxprom52
  %49 = load ptr, ptr %arrayidx53, align 8, !tbaa !5
  %50 = load ptr, ptr %MI.addr, align 8, !tbaa !5
  %51 = load ptr, ptr %info.addr, align 8, !tbaa !5
  call void %49(ptr noundef %50, ptr noundef %51, ptr noundef %address.addr)
  %52 = load ptr, ptr %detail, align 8, !tbaa !5
  %53 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %insn54 = getelementptr inbounds %struct.m680x_info, ptr %53, i32 0, i32 6
  %54 = load i32, ptr %insn54, align 8, !tbaa !44
  %idxprom55 = zext i32 %54 to i64
  %arrayidx56 = getelementptr inbounds [357 x %struct.insn_props], ptr @g_insn_props, i64 0, i64 %idxprom55
  %bf.load57 = load i32, ptr %arrayidx56, align 4
  %bf.clear58 = and i32 %bf.load57, 15
  call void @add_insn_group(ptr noundef %52, i32 noundef %bf.clear58)
  %55 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %insn59 = getelementptr inbounds %struct.m680x_info, ptr %55, i32 0, i32 6
  %56 = load i32, ptr %insn59, align 8, !tbaa !44
  %idxprom60 = zext i32 %56 to i64
  %arrayidx61 = getelementptr inbounds [357 x %struct.insn_props], ptr @g_insn_props, i64 0, i64 %idxprom60
  %bf.load62 = load i32, ptr %arrayidx61, align 4
  %bf.lshr63 = lshr i32 %bf.load62, 19
  %bf.clear64 = and i32 %bf.lshr63, 1
  %bf.cast = trunc i32 %bf.clear64 to i1
  br i1 %bf.cast, label %land.lhs.true66, label %if.end80

land.lhs.true66:                                  ; preds = %if.end46
  %57 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %cpu67 = getelementptr inbounds %struct.m680x_info, ptr %57, i32 0, i32 5
  %58 = load ptr, ptr %cpu67, align 8, !tbaa !16
  %insn_cc_not_modified = getelementptr inbounds %struct.cpu_tables, ptr %58, i32 0, i32 8
  %arrayidx68 = getelementptr inbounds [2 x i32], ptr %insn_cc_not_modified, i64 0, i64 0
  %59 = load i32, ptr %arrayidx68, align 8, !tbaa !20
  %60 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %insn69 = getelementptr inbounds %struct.m680x_info, ptr %60, i32 0, i32 6
  %61 = load i32, ptr %insn69, align 8, !tbaa !44
  %cmp70 = icmp ne i32 %59, %61
  br i1 %cmp70, label %land.lhs.true72, label %if.end80

land.lhs.true72:                                  ; preds = %land.lhs.true66
  %62 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %cpu73 = getelementptr inbounds %struct.m680x_info, ptr %62, i32 0, i32 5
  %63 = load ptr, ptr %cpu73, align 8, !tbaa !16
  %insn_cc_not_modified74 = getelementptr inbounds %struct.cpu_tables, ptr %63, i32 0, i32 8
  %arrayidx75 = getelementptr inbounds [2 x i32], ptr %insn_cc_not_modified74, i64 0, i64 1
  %64 = load i32, ptr %arrayidx75, align 4, !tbaa !20
  %65 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %insn76 = getelementptr inbounds %struct.m680x_info, ptr %65, i32 0, i32 6
  %66 = load i32, ptr %insn76, align 8, !tbaa !44
  %cmp77 = icmp ne i32 %64, %66
  br i1 %cmp77, label %if.then79, label %if.end80

if.then79:                                        ; preds = %land.lhs.true72
  %67 = load ptr, ptr %MI.addr, align 8, !tbaa !5
  call void @add_reg_to_rw_list(ptr noundef %67, i32 noundef 8, i32 noundef 3)
  br label %if.end80

if.end80:                                         ; preds = %if.then79, %land.lhs.true72, %land.lhs.true66, %if.end46
  %68 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %insn81 = getelementptr inbounds %struct.m680x_info, ptr %68, i32 0, i32 6
  %69 = load i32, ptr %insn81, align 8, !tbaa !44
  %idxprom82 = zext i32 %69 to i64
  %arrayidx83 = getelementptr inbounds [357 x %struct.insn_props], ptr @g_insn_props, i64 0, i64 %idxprom82
  %bf.load84 = load i32, ptr %arrayidx83, align 4
  %bf.lshr85 = lshr i32 %bf.load84, 4
  %bf.clear86 = and i32 %bf.lshr85, 31
  store i32 %bf.clear86, ptr %access_mode, align 4, !tbaa !20
  %70 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %cpu87 = getelementptr inbounds %struct.m680x_info, ptr %70, i32 0, i32 5
  %71 = load ptr, ptr %cpu87, align 8, !tbaa !16
  %insn_cc_not_modified88 = getelementptr inbounds %struct.cpu_tables, ptr %71, i32 0, i32 8
  %arrayidx89 = getelementptr inbounds [2 x i32], ptr %insn_cc_not_modified88, i64 0, i64 0
  %72 = load i32, ptr %arrayidx89, align 8, !tbaa !20
  %73 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %insn90 = getelementptr inbounds %struct.m680x_info, ptr %73, i32 0, i32 6
  %74 = load i32, ptr %insn90, align 8, !tbaa !44
  %cmp91 = icmp eq i32 %72, %74
  br i1 %cmp91, label %if.then99, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end80
  %75 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %cpu93 = getelementptr inbounds %struct.m680x_info, ptr %75, i32 0, i32 5
  %76 = load ptr, ptr %cpu93, align 8, !tbaa !16
  %insn_cc_not_modified94 = getelementptr inbounds %struct.cpu_tables, ptr %76, i32 0, i32 8
  %arrayidx95 = getelementptr inbounds [2 x i32], ptr %insn_cc_not_modified94, i64 0, i64 1
  %77 = load i32, ptr %arrayidx95, align 4, !tbaa !20
  %78 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %insn96 = getelementptr inbounds %struct.m680x_info, ptr %78, i32 0, i32 6
  %79 = load i32, ptr %insn96, align 8, !tbaa !44
  %cmp97 = icmp eq i32 %77, %79
  br i1 %cmp97, label %if.then99, label %if.end100

if.then99:                                        ; preds = %lor.lhs.false, %if.end80
  store i32 5, ptr %access_mode, align 4, !tbaa !20
  br label %if.end100

if.end100:                                        ; preds = %if.then99, %lor.lhs.false
  %80 = load ptr, ptr %MI.addr, align 8, !tbaa !5
  %81 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %82 = load i32, ptr %access_mode, align 4, !tbaa !20
  call void @build_regs_read_write_counts(ptr noundef %80, ptr noundef %81, i32 noundef %82)
  %83 = load ptr, ptr %MI.addr, align 8, !tbaa !5
  %84 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %85 = load i32, ptr %access_mode, align 4, !tbaa !20
  call void @add_operators_access(ptr noundef %83, ptr noundef %84, i32 noundef %85)
  %86 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %insn101 = getelementptr inbounds %struct.m680x_info, ptr %86, i32 0, i32 6
  %87 = load i32, ptr %insn101, align 8, !tbaa !44
  %idxprom102 = zext i32 %87 to i64
  %arrayidx103 = getelementptr inbounds [357 x %struct.insn_props], ptr @g_insn_props, i64 0, i64 %idxprom102
  %bf.load104 = load i32, ptr %arrayidx103, align 4
  %bf.lshr105 = lshr i32 %bf.load104, 20
  %bf.clear106 = and i32 %bf.lshr105, 1
  %bf.cast107 = trunc i32 %bf.clear106 to i1
  br i1 %bf.cast107, label %if.then108, label %if.end109

if.then108:                                       ; preds = %if.end100
  %88 = load ptr, ptr %MI.addr, align 8, !tbaa !5
  %89 = load ptr, ptr %info.addr, align 8, !tbaa !5
  call void @set_changed_regs_read_write_counts(ptr noundef %88, ptr noundef %89)
  br label %if.end109

if.end109:                                        ; preds = %if.then108, %if.end100
  %insn_size110 = getelementptr inbounds %struct.insn_desc, ptr %insn_description, i32 0, i32 3
  %90 = load i16, ptr %insn_size110, align 4, !tbaa !47
  %conv111 = trunc i16 %90 to i8
  %91 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %insn_size112 = getelementptr inbounds %struct.m680x_info, ptr %91, i32 0, i32 7
  store i8 %conv111, ptr %insn_size112, align 4, !tbaa !40
  %92 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %insn_size113 = getelementptr inbounds %struct.m680x_info, ptr %92, i32 0, i32 7
  %93 = load i8, ptr %insn_size113, align 4, !tbaa !40
  %conv114 = zext i8 %93 to i32
  store i32 %conv114, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %reg) #6
  br label %cleanup

if.else115:                                       ; preds = %if.end
  %94 = load ptr, ptr %MI.addr, align 8, !tbaa !5
  %opcode116 = getelementptr inbounds %struct.insn_desc, ptr %insn_description, i32 0, i32 0
  %95 = load i32, ptr %opcode116, align 4, !tbaa !41
  call void @MCInst_setOpcode(ptr noundef %94, i32 noundef %95)
  br label %if.end117

if.end117:                                        ; preds = %if.else115
  %96 = load i16, ptr %base_address, align 2, !tbaa !32
  store i16 %96, ptr %address.addr, align 2, !tbaa !32
  %97 = load ptr, ptr %MI.addr, align 8, !tbaa !5
  %98 = load ptr, ptr %info.addr, align 8, !tbaa !5
  call void @illegal_hdlr(ptr noundef %97, ptr noundef %98, ptr noundef %address.addr)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end117, %if.end109
  call void @llvm.lifetime.end.p0(i64 4, ptr %access_mode) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr %insn_description) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr %base_address) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %detail) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %m680x) #6
  %99 = load i32, ptr %retval, align 4
  ret i32 %99
}

; Function Attrs: nounwind uwtable
define dso_local i32 @M680X_disassembler_init(ptr noundef %ud) #0 {
entry:
  %ud.addr = alloca ptr, align 8
  store ptr %ud, ptr %ud.addr, align 8, !tbaa !5
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local void @M680X_reg_access(ptr noundef %insn, ptr noundef %regs_read, ptr noundef %regs_read_count, ptr noundef %regs_write, ptr noundef %regs_write_count) #0 {
entry:
  %insn.addr = alloca ptr, align 8
  %regs_read.addr = alloca ptr, align 8
  %regs_read_count.addr = alloca ptr, align 8
  %regs_write.addr = alloca ptr, align 8
  %regs_write_count.addr = alloca ptr, align 8
  store ptr %insn, ptr %insn.addr, align 8, !tbaa !5
  store ptr %regs_read, ptr %regs_read.addr, align 8, !tbaa !5
  store ptr %regs_read_count, ptr %regs_read_count.addr, align 8, !tbaa !5
  store ptr %regs_write, ptr %regs_write.addr, align 8, !tbaa !5
  store ptr %regs_write_count, ptr %regs_write_count.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %insn.addr, align 8, !tbaa !5
  %detail = getelementptr inbounds %struct.cs_insn, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %detail, align 8, !tbaa !39
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %regs_read_count.addr, align 8, !tbaa !5
  store i8 0, ptr %2, align 1, !tbaa !20
  %3 = load ptr, ptr %regs_write_count.addr, align 8, !tbaa !5
  store i8 0, ptr %3, align 1, !tbaa !20
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %insn.addr, align 8, !tbaa !5
  %detail1 = getelementptr inbounds %struct.cs_insn, ptr %4, i32 0, i32 6
  %5 = load ptr, ptr %detail1, align 8, !tbaa !39
  %regs_read_count2 = getelementptr inbounds %struct.cs_detail, ptr %5, i32 0, i32 1
  %6 = load i8, ptr %regs_read_count2, align 8, !tbaa !48
  %7 = load ptr, ptr %regs_read_count.addr, align 8, !tbaa !5
  store i8 %6, ptr %7, align 1, !tbaa !20
  %8 = load ptr, ptr %insn.addr, align 8, !tbaa !5
  %detail3 = getelementptr inbounds %struct.cs_insn, ptr %8, i32 0, i32 6
  %9 = load ptr, ptr %detail3, align 8, !tbaa !39
  %regs_write_count4 = getelementptr inbounds %struct.cs_detail, ptr %9, i32 0, i32 3
  %10 = load i8, ptr %regs_write_count4, align 2, !tbaa !50
  %11 = load ptr, ptr %regs_write_count.addr, align 8, !tbaa !5
  store i8 %10, ptr %11, align 1, !tbaa !20
  %12 = load ptr, ptr %regs_read.addr, align 8, !tbaa !5
  %13 = load ptr, ptr %insn.addr, align 8, !tbaa !5
  %detail5 = getelementptr inbounds %struct.cs_insn, ptr %13, i32 0, i32 6
  %14 = load ptr, ptr %detail5, align 8, !tbaa !39
  %regs_read6 = getelementptr inbounds %struct.cs_detail, ptr %14, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i16], ptr %regs_read6, i64 0, i64 0
  %15 = load ptr, ptr %regs_read_count.addr, align 8, !tbaa !5
  %16 = load i8, ptr %15, align 1, !tbaa !20
  %conv = zext i8 %16 to i64
  %mul = mul i64 %conv, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %12, ptr align 8 %arraydecay, i64 %mul, i1 false)
  %17 = load ptr, ptr %regs_write.addr, align 8, !tbaa !5
  %18 = load ptr, ptr %insn.addr, align 8, !tbaa !5
  %detail7 = getelementptr inbounds %struct.cs_insn, ptr %18, i32 0, i32 6
  %19 = load ptr, ptr %detail7, align 8, !tbaa !39
  %regs_write8 = getelementptr inbounds %struct.cs_detail, ptr %19, i32 0, i32 2
  %arraydecay9 = getelementptr inbounds [20 x i16], ptr %regs_write8, i64 0, i64 0
  %20 = load ptr, ptr %regs_write_count.addr, align 8, !tbaa !5
  %21 = load i8, ptr %20, align 1, !tbaa !20
  %conv10 = zext i8 %21 to i64
  %mul11 = mul i64 %conv10, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %17, ptr align 2 %arraydecay9, i64 %mul11, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal zeroext i1 @decode_insn(ptr noundef %info, i16 noundef zeroext %address, ptr noundef %insn_description) #0 {
entry:
  %retval = alloca i1, align 1
  %info.addr = alloca ptr, align 8
  %address.addr = alloca i16, align 2
  %insn_description.addr = alloca ptr, align 8
  %inst_table = alloca ptr, align 8
  %cpu = alloca ptr, align 8
  %table_size = alloca i32, align 4
  %base_address = alloca i16, align 2
  %ir = alloca i8, align 1
  %i = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  store i16 %address, ptr %address.addr, align 2, !tbaa !32
  store ptr %insn_description, ptr %insn_description.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %inst_table) #6
  store ptr null, ptr %inst_table, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %cpu) #6
  %0 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %cpu1 = getelementptr inbounds %struct.m680x_info, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %cpu1, align 8, !tbaa !16
  store ptr %1, ptr %cpu, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %table_size) #6
  store i32 0, ptr %table_size, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 2, ptr %base_address) #6
  %2 = load i16, ptr %address.addr, align 2, !tbaa !32
  store i16 %2, ptr %base_address, align 2, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 1, ptr %ir) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #6
  %3 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %4 = load i16, ptr %address.addr, align 2, !tbaa !32
  %inc = add i16 %4, 1
  store i16 %inc, ptr %address.addr, align 2, !tbaa !32
  %call = call zeroext i1 @read_byte(ptr noundef %3, ptr noundef %ir, i16 noundef zeroext %4)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %insn_description.addr, align 8, !tbaa !5
  %insn = getelementptr inbounds %struct.insn_desc, ptr %5, i32 0, i32 1
  store i32 159, ptr %insn, align 4, !tbaa !43
  %6 = load i8, ptr %ir, align 1, !tbaa !20
  %conv = zext i8 %6 to i32
  %7 = load ptr, ptr %insn_description.addr, align 8, !tbaa !5
  %opcode = getelementptr inbounds %struct.insn_desc, ptr %7, i32 0, i32 0
  store i32 %conv, ptr %opcode, align 4, !tbaa !41
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, ptr %i, align 4, !tbaa !9
  %conv2 = sext i32 %8 to i64
  %cmp = icmp ult i64 %conv2, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %cpu, align 8, !tbaa !5
  %pageX_table_size = getelementptr inbounds %struct.cpu_tables, ptr %9, i32 0, i32 5
  %10 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [3 x i64], ptr %pageX_table_size, i64 0, i64 %idxprom
  %11 = load i64, ptr %arrayidx, align 8, !tbaa !24
  %cmp4 = icmp eq i64 %11, 0
  br i1 %cmp4, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %12 = load ptr, ptr %cpu, align 8, !tbaa !5
  %inst_pageX_table = getelementptr inbounds %struct.cpu_tables, ptr %12, i32 0, i32 4
  %13 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom6 = sext i32 %13 to i64
  %arrayidx7 = getelementptr inbounds [3 x ptr], ptr %inst_pageX_table, i64 0, i64 %idxprom6
  %14 = load ptr, ptr %arrayidx7, align 8, !tbaa !5
  %cmp8 = icmp eq ptr %14, null
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %lor.lhs.false, %for.body
  br label %for.end

if.end11:                                         ; preds = %lor.lhs.false
  %15 = load ptr, ptr %cpu, align 8, !tbaa !5
  %pageX_prefix = getelementptr inbounds %struct.cpu_tables, ptr %15, i32 0, i32 3
  %16 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom12 = sext i32 %16 to i64
  %arrayidx13 = getelementptr inbounds [3 x i8], ptr %pageX_prefix, i64 0, i64 %idxprom12
  %17 = load i8, ptr %arrayidx13, align 1, !tbaa !20
  %conv14 = zext i8 %17 to i32
  %18 = load i8, ptr %ir, align 1, !tbaa !20
  %conv15 = zext i8 %18 to i32
  %cmp16 = icmp eq i32 %conv14, %conv15
  br i1 %cmp16, label %if.then18, label %if.end54

if.then18:                                        ; preds = %if.end11
  %19 = load ptr, ptr %cpu, align 8, !tbaa !5
  %inst_pageX_table19 = getelementptr inbounds %struct.cpu_tables, ptr %19, i32 0, i32 4
  %20 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom20 = sext i32 %20 to i64
  %arrayidx21 = getelementptr inbounds [3 x ptr], ptr %inst_pageX_table19, i64 0, i64 %idxprom20
  %21 = load ptr, ptr %arrayidx21, align 8, !tbaa !5
  store ptr %21, ptr %inst_table, align 8, !tbaa !5
  %22 = load ptr, ptr %cpu, align 8, !tbaa !5
  %pageX_table_size22 = getelementptr inbounds %struct.cpu_tables, ptr %22, i32 0, i32 5
  %23 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom23 = sext i32 %23 to i64
  %arrayidx24 = getelementptr inbounds [3 x i64], ptr %pageX_table_size22, i64 0, i64 %idxprom23
  %24 = load i64, ptr %arrayidx24, align 8, !tbaa !24
  %conv25 = trunc i64 %24 to i32
  store i32 %conv25, ptr %table_size, align 4, !tbaa !9
  %25 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %26 = load i16, ptr %address.addr, align 2, !tbaa !32
  %inc26 = add i16 %26, 1
  store i16 %inc26, ptr %address.addr, align 2, !tbaa !32
  %call27 = call zeroext i1 @read_byte(ptr noundef %25, ptr noundef %ir, i16 noundef zeroext %26)
  br i1 %call27, label %if.end29, label %if.then28

if.then28:                                        ; preds = %if.then18
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end29:                                         ; preds = %if.then18
  %27 = load ptr, ptr %insn_description.addr, align 8, !tbaa !5
  %opcode30 = getelementptr inbounds %struct.insn_desc, ptr %27, i32 0, i32 0
  %28 = load i32, ptr %opcode30, align 4, !tbaa !41
  %shl = shl i32 %28, 8
  %29 = load i8, ptr %ir, align 1, !tbaa !20
  %conv31 = zext i8 %29 to i32
  %or = or i32 %shl, %conv31
  %30 = load ptr, ptr %insn_description.addr, align 8, !tbaa !5
  %opcode32 = getelementptr inbounds %struct.insn_desc, ptr %30, i32 0, i32 0
  store i32 %or, ptr %opcode32, align 4, !tbaa !41
  %31 = load ptr, ptr %inst_table, align 8, !tbaa !5
  %32 = load i32, ptr %table_size, align 4, !tbaa !9
  %33 = load i8, ptr %ir, align 1, !tbaa !20
  %call33 = call i32 @binary_search(ptr noundef %31, i32 noundef %32, i8 noundef zeroext %33)
  store i32 %call33, ptr %index, align 4, !tbaa !9
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end29
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end37:                                         ; preds = %if.end29
  %34 = load ptr, ptr %inst_table, align 8, !tbaa !5
  %35 = load i32, ptr %index, align 4, !tbaa !9
  %idxprom38 = sext i32 %35 to i64
  %arrayidx39 = getelementptr inbounds %struct.inst_pageX, ptr %34, i64 %idxprom38
  %bf.load = load i32, ptr %arrayidx39, align 4
  %bf.lshr = lshr i32 %bf.load, 17
  %bf.clear = and i32 %bf.lshr, 63
  %36 = load ptr, ptr %insn_description.addr, align 8, !tbaa !5
  %hid = getelementptr inbounds %struct.insn_desc, ptr %36, i32 0, i32 2
  %arrayidx40 = getelementptr inbounds [2 x i32], ptr %hid, i64 0, i64 0
  store i32 %bf.clear, ptr %arrayidx40, align 4, !tbaa !20
  %37 = load ptr, ptr %inst_table, align 8, !tbaa !5
  %38 = load i32, ptr %index, align 4, !tbaa !9
  %idxprom41 = sext i32 %38 to i64
  %arrayidx42 = getelementptr inbounds %struct.inst_pageX, ptr %37, i64 %idxprom41
  %bf.load43 = load i32, ptr %arrayidx42, align 4
  %bf.lshr44 = lshr i32 %bf.load43, 23
  %bf.clear45 = and i32 %bf.lshr44, 63
  %39 = load ptr, ptr %insn_description.addr, align 8, !tbaa !5
  %hid46 = getelementptr inbounds %struct.insn_desc, ptr %39, i32 0, i32 2
  %arrayidx47 = getelementptr inbounds [2 x i32], ptr %hid46, i64 0, i64 1
  store i32 %bf.clear45, ptr %arrayidx47, align 4, !tbaa !20
  %40 = load ptr, ptr %inst_table, align 8, !tbaa !5
  %41 = load i32, ptr %index, align 4, !tbaa !9
  %idxprom48 = sext i32 %41 to i64
  %arrayidx49 = getelementptr inbounds %struct.inst_pageX, ptr %40, i64 %idxprom48
  %bf.load50 = load i32, ptr %arrayidx49, align 4
  %bf.lshr51 = lshr i32 %bf.load50, 8
  %bf.clear52 = and i32 %bf.lshr51, 511
  %42 = load ptr, ptr %insn_description.addr, align 8, !tbaa !5
  %insn53 = getelementptr inbounds %struct.insn_desc, ptr %42, i32 0, i32 1
  store i32 %bf.clear52, ptr %insn53, align 4, !tbaa !43
  br label %for.end

if.end54:                                         ; preds = %if.end11
  br label %for.inc

for.inc:                                          ; preds = %if.end54
  %43 = load i32, ptr %i, align 4, !tbaa !9
  %inc55 = add nsw i32 %43, 1
  store i32 %inc55, ptr %i, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !51

for.end:                                          ; preds = %if.end37, %if.then10, %for.cond
  %44 = load ptr, ptr %insn_description.addr, align 8, !tbaa !5
  %insn56 = getelementptr inbounds %struct.insn_desc, ptr %44, i32 0, i32 1
  %45 = load i32, ptr %insn56, align 4, !tbaa !43
  %cmp57 = icmp eq i32 %45, 159
  br i1 %cmp57, label %if.then59, label %if.end81

if.then59:                                        ; preds = %for.end
  %46 = load ptr, ptr %cpu, align 8, !tbaa !5
  %inst_page1_table = getelementptr inbounds %struct.cpu_tables, ptr %46, i32 0, i32 0
  %47 = load ptr, ptr %inst_page1_table, align 8, !tbaa !27
  %48 = load i8, ptr %ir, align 1, !tbaa !20
  %idxprom60 = zext i8 %48 to i64
  %arrayidx61 = getelementptr inbounds %struct.inst_page1, ptr %47, i64 %idxprom60
  %bf.load62 = load i32, ptr %arrayidx61, align 4
  %bf.clear63 = and i32 %bf.load62, 511
  %49 = load ptr, ptr %insn_description.addr, align 8, !tbaa !5
  %insn64 = getelementptr inbounds %struct.insn_desc, ptr %49, i32 0, i32 1
  store i32 %bf.clear63, ptr %insn64, align 4, !tbaa !43
  %50 = load ptr, ptr %cpu, align 8, !tbaa !5
  %inst_page1_table65 = getelementptr inbounds %struct.cpu_tables, ptr %50, i32 0, i32 0
  %51 = load ptr, ptr %inst_page1_table65, align 8, !tbaa !27
  %52 = load i8, ptr %ir, align 1, !tbaa !20
  %idxprom66 = zext i8 %52 to i64
  %arrayidx67 = getelementptr inbounds %struct.inst_page1, ptr %51, i64 %idxprom66
  %bf.load68 = load i32, ptr %arrayidx67, align 4
  %bf.lshr69 = lshr i32 %bf.load68, 9
  %bf.clear70 = and i32 %bf.lshr69, 63
  %53 = load ptr, ptr %insn_description.addr, align 8, !tbaa !5
  %hid71 = getelementptr inbounds %struct.insn_desc, ptr %53, i32 0, i32 2
  %arrayidx72 = getelementptr inbounds [2 x i32], ptr %hid71, i64 0, i64 0
  store i32 %bf.clear70, ptr %arrayidx72, align 4, !tbaa !20
  %54 = load ptr, ptr %cpu, align 8, !tbaa !5
  %inst_page1_table73 = getelementptr inbounds %struct.cpu_tables, ptr %54, i32 0, i32 0
  %55 = load ptr, ptr %inst_page1_table73, align 8, !tbaa !27
  %56 = load i8, ptr %ir, align 1, !tbaa !20
  %idxprom74 = zext i8 %56 to i64
  %arrayidx75 = getelementptr inbounds %struct.inst_page1, ptr %55, i64 %idxprom74
  %bf.load76 = load i32, ptr %arrayidx75, align 4
  %bf.lshr77 = lshr i32 %bf.load76, 15
  %bf.clear78 = and i32 %bf.lshr77, 63
  %57 = load ptr, ptr %insn_description.addr, align 8, !tbaa !5
  %hid79 = getelementptr inbounds %struct.insn_desc, ptr %57, i32 0, i32 2
  %arrayidx80 = getelementptr inbounds [2 x i32], ptr %hid79, i64 0, i64 1
  store i32 %bf.clear78, ptr %arrayidx80, align 4, !tbaa !20
  br label %if.end81

if.end81:                                         ; preds = %if.then59, %for.end
  %58 = load ptr, ptr %insn_description.addr, align 8, !tbaa !5
  %insn82 = getelementptr inbounds %struct.insn_desc, ptr %58, i32 0, i32 1
  %59 = load i32, ptr %insn82, align 4, !tbaa !43
  %cmp83 = icmp eq i32 %59, 159
  br i1 %cmp83, label %if.then85, label %if.end137

if.then85:                                        ; preds = %if.end81
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond86

for.cond86:                                       ; preds = %for.inc134, %if.then85
  %60 = load i32, ptr %i, align 4, !tbaa !9
  %conv87 = sext i32 %60 to i64
  %cmp88 = icmp ult i64 %conv87, 2
  br i1 %cmp88, label %for.body90, label %for.end136

for.body90:                                       ; preds = %for.cond86
  %61 = load ptr, ptr %cpu, align 8, !tbaa !5
  %overlay_table_size = getelementptr inbounds %struct.cpu_tables, ptr %61, i32 0, i32 2
  %62 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom91 = sext i32 %62 to i64
  %arrayidx92 = getelementptr inbounds [2 x i64], ptr %overlay_table_size, i64 0, i64 %idxprom91
  %63 = load i64, ptr %arrayidx92, align 8, !tbaa !24
  %cmp93 = icmp eq i64 %63, 0
  br i1 %cmp93, label %if.then100, label %lor.lhs.false95

lor.lhs.false95:                                  ; preds = %for.body90
  %64 = load ptr, ptr %cpu, align 8, !tbaa !5
  %inst_overlay_table = getelementptr inbounds %struct.cpu_tables, ptr %64, i32 0, i32 1
  %65 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom96 = sext i32 %65 to i64
  %arrayidx97 = getelementptr inbounds [2 x ptr], ptr %inst_overlay_table, i64 0, i64 %idxprom96
  %66 = load ptr, ptr %arrayidx97, align 8, !tbaa !5
  %cmp98 = icmp eq ptr %66, null
  br i1 %cmp98, label %if.then100, label %if.end101

if.then100:                                       ; preds = %lor.lhs.false95, %for.body90
  br label %for.end136

if.end101:                                        ; preds = %lor.lhs.false95
  %67 = load ptr, ptr %cpu, align 8, !tbaa !5
  %inst_overlay_table102 = getelementptr inbounds %struct.cpu_tables, ptr %67, i32 0, i32 1
  %68 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom103 = sext i32 %68 to i64
  %arrayidx104 = getelementptr inbounds [2 x ptr], ptr %inst_overlay_table102, i64 0, i64 %idxprom103
  %69 = load ptr, ptr %arrayidx104, align 8, !tbaa !5
  store ptr %69, ptr %inst_table, align 8, !tbaa !5
  %70 = load ptr, ptr %cpu, align 8, !tbaa !5
  %overlay_table_size105 = getelementptr inbounds %struct.cpu_tables, ptr %70, i32 0, i32 2
  %71 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom106 = sext i32 %71 to i64
  %arrayidx107 = getelementptr inbounds [2 x i64], ptr %overlay_table_size105, i64 0, i64 %idxprom106
  %72 = load i64, ptr %arrayidx107, align 8, !tbaa !24
  %conv108 = trunc i64 %72 to i32
  store i32 %conv108, ptr %table_size, align 4, !tbaa !9
  %73 = load ptr, ptr %inst_table, align 8, !tbaa !5
  %74 = load i32, ptr %table_size, align 4, !tbaa !9
  %75 = load i8, ptr %ir, align 1, !tbaa !20
  %call109 = call i32 @binary_search(ptr noundef %73, i32 noundef %74, i8 noundef zeroext %75)
  store i32 %call109, ptr %index, align 4, !tbaa !9
  %cmp110 = icmp sge i32 %call109, 0
  br i1 %cmp110, label %if.then112, label %if.end133

if.then112:                                       ; preds = %if.end101
  %76 = load ptr, ptr %inst_table, align 8, !tbaa !5
  %77 = load i32, ptr %index, align 4, !tbaa !9
  %idxprom113 = sext i32 %77 to i64
  %arrayidx114 = getelementptr inbounds %struct.inst_pageX, ptr %76, i64 %idxprom113
  %bf.load115 = load i32, ptr %arrayidx114, align 4
  %bf.lshr116 = lshr i32 %bf.load115, 17
  %bf.clear117 = and i32 %bf.lshr116, 63
  %78 = load ptr, ptr %insn_description.addr, align 8, !tbaa !5
  %hid118 = getelementptr inbounds %struct.insn_desc, ptr %78, i32 0, i32 2
  %arrayidx119 = getelementptr inbounds [2 x i32], ptr %hid118, i64 0, i64 0
  store i32 %bf.clear117, ptr %arrayidx119, align 4, !tbaa !20
  %79 = load ptr, ptr %inst_table, align 8, !tbaa !5
  %80 = load i32, ptr %index, align 4, !tbaa !9
  %idxprom120 = sext i32 %80 to i64
  %arrayidx121 = getelementptr inbounds %struct.inst_pageX, ptr %79, i64 %idxprom120
  %bf.load122 = load i32, ptr %arrayidx121, align 4
  %bf.lshr123 = lshr i32 %bf.load122, 23
  %bf.clear124 = and i32 %bf.lshr123, 63
  %81 = load ptr, ptr %insn_description.addr, align 8, !tbaa !5
  %hid125 = getelementptr inbounds %struct.insn_desc, ptr %81, i32 0, i32 2
  %arrayidx126 = getelementptr inbounds [2 x i32], ptr %hid125, i64 0, i64 1
  store i32 %bf.clear124, ptr %arrayidx126, align 4, !tbaa !20
  %82 = load ptr, ptr %inst_table, align 8, !tbaa !5
  %83 = load i32, ptr %index, align 4, !tbaa !9
  %idxprom127 = sext i32 %83 to i64
  %arrayidx128 = getelementptr inbounds %struct.inst_pageX, ptr %82, i64 %idxprom127
  %bf.load129 = load i32, ptr %arrayidx128, align 4
  %bf.lshr130 = lshr i32 %bf.load129, 8
  %bf.clear131 = and i32 %bf.lshr130, 511
  %84 = load ptr, ptr %insn_description.addr, align 8, !tbaa !5
  %insn132 = getelementptr inbounds %struct.insn_desc, ptr %84, i32 0, i32 1
  store i32 %bf.clear131, ptr %insn132, align 4, !tbaa !43
  br label %for.end136

if.end133:                                        ; preds = %if.end101
  br label %for.inc134

for.inc134:                                       ; preds = %if.end133
  %85 = load i32, ptr %i, align 4, !tbaa !9
  %inc135 = add nsw i32 %85, 1
  store i32 %inc135, ptr %i, align 4, !tbaa !9
  br label %for.cond86, !llvm.loop !52

for.end136:                                       ; preds = %if.then112, %if.then100, %for.cond86
  br label %if.end137

if.end137:                                        ; preds = %for.end136, %if.end81
  %86 = load i16, ptr %address.addr, align 2, !tbaa !32
  %conv138 = zext i16 %86 to i32
  %87 = load i16, ptr %base_address, align 2, !tbaa !32
  %conv139 = zext i16 %87 to i32
  %sub = sub nsw i32 %conv138, %conv139
  %conv140 = trunc i32 %sub to i16
  %88 = load ptr, ptr %insn_description.addr, align 8, !tbaa !5
  %insn_size = getelementptr inbounds %struct.insn_desc, ptr %88, i32 0, i32 3
  store i16 %conv140, ptr %insn_size, align 4, !tbaa !47
  %89 = load ptr, ptr %insn_description.addr, align 8, !tbaa !5
  %insn141 = getelementptr inbounds %struct.insn_desc, ptr %89, i32 0, i32 1
  %90 = load i32, ptr %insn141, align 4, !tbaa !43
  %cmp142 = icmp ne i32 %90, 159
  br i1 %cmp142, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %if.end137
  %91 = load ptr, ptr %insn_description.addr, align 8, !tbaa !5
  %insn144 = getelementptr inbounds %struct.insn_desc, ptr %91, i32 0, i32 1
  %92 = load i32, ptr %insn144, align 4, !tbaa !43
  %cmp145 = icmp ne i32 %92, 0
  br i1 %cmp145, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %93 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %94 = load i16, ptr %address.addr, align 2, !tbaa !32
  %95 = load ptr, ptr %insn_description.addr, align 8, !tbaa !5
  %call147 = call zeroext i1 @is_sufficient_code_size(ptr noundef %93, i16 noundef zeroext %94, ptr noundef %95)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %if.end137
  %96 = phi i1 [ false, %land.lhs.true ], [ false, %if.end137 ], [ %call147, %land.rhs ]
  store i1 %96, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %land.end, %if.then36, %if.then28, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr %ir) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr %base_address) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %table_size) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %cpu) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %inst_table) #6
  %97 = load i1, ptr %retval, align 1
  ret i1 %97
}

declare void @MCInst_setOpcode(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal void @add_reg_operand(ptr noundef %info, i32 noundef %reg) #0 {
entry:
  %info.addr = alloca ptr, align 8
  %reg.addr = alloca i32, align 4
  %m680x = alloca ptr, align 8
  %op = alloca ptr, align 8
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  store i32 %reg, ptr %reg.addr, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 8, ptr %m680x) #6
  %0 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %m680x1 = getelementptr inbounds %struct.m680x_info, ptr %0, i32 0, i32 4
  store ptr %m680x1, ptr %m680x, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #6
  %1 = load ptr, ptr %m680x, align 8, !tbaa !5
  %operands = getelementptr inbounds %struct.cs_m680x, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %m680x, align 8, !tbaa !5
  %op_count = getelementptr inbounds %struct.cs_m680x, ptr %2, i32 0, i32 1
  %3 = load i8, ptr %op_count, align 1, !tbaa !53
  %inc = add i8 %3, 1
  store i8 %inc, ptr %op_count, align 1, !tbaa !53
  %idxprom = zext i8 %3 to i64
  %arrayidx = getelementptr inbounds [9 x %struct.cs_m680x_op], ptr %operands, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %op, align 8, !tbaa !5
  %4 = load ptr, ptr %op, align 8, !tbaa !5
  %type = getelementptr inbounds %struct.cs_m680x_op, ptr %4, i32 0, i32 0
  store i32 1, ptr %type, align 4, !tbaa !54
  %5 = load i32, ptr %reg.addr, align 4, !tbaa !20
  %6 = load ptr, ptr %op, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.cs_m680x_op, ptr %6, i32 0, i32 1
  store i32 %5, ptr %7, align 4, !tbaa !20
  %8 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %cpu = getelementptr inbounds %struct.m680x_info, ptr %8, i32 0, i32 5
  %9 = load ptr, ptr %cpu, align 8, !tbaa !16
  %reg_byte_size = getelementptr inbounds %struct.cpu_tables, ptr %9, i32 0, i32 6
  %10 = load ptr, ptr %reg_byte_size, align 8, !tbaa !45
  %11 = load i32, ptr %reg.addr, align 4, !tbaa !20
  %idxprom2 = zext i32 %11 to i64
  %arrayidx3 = getelementptr inbounds i8, ptr %10, i64 %idxprom2
  %12 = load i8, ptr %arrayidx3, align 1, !tbaa !20
  %13 = load ptr, ptr %op, align 8, !tbaa !5
  %size = getelementptr inbounds %struct.cs_m680x_op, ptr %13, i32 0, i32 2
  store i8 %12, ptr %size, align 4, !tbaa !56
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %m680x) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @add_insn_group(ptr noundef %detail, i32 noundef %group) #0 {
entry:
  %detail.addr = alloca ptr, align 8
  %group.addr = alloca i32, align 4
  store ptr %detail, ptr %detail.addr, align 8, !tbaa !5
  store i32 %group, ptr %group.addr, align 4, !tbaa !20
  %0 = load ptr, ptr %detail.addr, align 8, !tbaa !5
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %group.addr, align 4, !tbaa !20
  %cmp1 = icmp ne i32 %1, 0
  br i1 %cmp1, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i32, ptr %group.addr, align 4, !tbaa !20
  %cmp3 = icmp ne i32 %2, 8
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true2
  %3 = load i32, ptr %group.addr, align 4, !tbaa !20
  %conv = trunc i32 %3 to i8
  %4 = load ptr, ptr %detail.addr, align 8, !tbaa !5
  %groups = getelementptr inbounds %struct.cs_detail, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %detail.addr, align 8, !tbaa !5
  %groups_count = getelementptr inbounds %struct.cs_detail, ptr %5, i32 0, i32 5
  %6 = load i8, ptr %groups_count, align 1, !tbaa !57
  %inc = add i8 %6, 1
  store i8 %inc, ptr %groups_count, align 1, !tbaa !57
  %idxprom = zext i8 %6 to i64
  %arrayidx = getelementptr inbounds [8 x i8], ptr %groups, i64 0, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1, !tbaa !20
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @add_reg_to_rw_list(ptr noundef %MI, i32 noundef %reg, i32 noundef %access) #0 {
entry:
  %MI.addr = alloca ptr, align 8
  %reg.addr = alloca i32, align 4
  %access.addr = alloca i32, align 4
  %detail = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %MI, ptr %MI.addr, align 8, !tbaa !5
  store i32 %reg, ptr %reg.addr, align 4, !tbaa !20
  store i32 %access, ptr %access.addr, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 8, ptr %detail) #6
  %0 = load ptr, ptr %MI.addr, align 8, !tbaa !5
  %flat_insn = getelementptr inbounds %struct.MCInst, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %flat_insn, align 8, !tbaa !37
  %detail1 = getelementptr inbounds %struct.cs_insn, ptr %1, i32 0, i32 6
  %2 = load ptr, ptr %detail1, align 8, !tbaa !39
  store ptr %2, ptr %detail, align 8, !tbaa !5
  %3 = load ptr, ptr %detail, align 8, !tbaa !5
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, ptr %reg.addr, align 4, !tbaa !20
  %cmp2 = icmp eq i32 %4, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i32, ptr %access.addr, align 4, !tbaa !20
  switch i32 %5, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %sw.bb7
    i32 1, label %sw.bb18
    i32 0, label %sw.bb31
  ]

sw.bb:                                            ; preds = %if.end
  %6 = load ptr, ptr %detail, align 8, !tbaa !5
  %regs_read = getelementptr inbounds %struct.cs_detail, ptr %6, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i16], ptr %regs_read, i64 0, i64 0
  %7 = load ptr, ptr %detail, align 8, !tbaa !5
  %regs_read_count = getelementptr inbounds %struct.cs_detail, ptr %7, i32 0, i32 1
  %8 = load i8, ptr %regs_read_count, align 8, !tbaa !48
  %9 = load i32, ptr %reg.addr, align 4, !tbaa !20
  %call = call zeroext i1 @exists_reg_list(ptr noundef %arraydecay, i8 noundef zeroext %8, i32 noundef %9)
  br i1 %call, label %if.end6, label %if.then3

if.then3:                                         ; preds = %sw.bb
  %10 = load i32, ptr %reg.addr, align 4, !tbaa !20
  %conv = trunc i32 %10 to i16
  %11 = load ptr, ptr %detail, align 8, !tbaa !5
  %regs_read4 = getelementptr inbounds %struct.cs_detail, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %detail, align 8, !tbaa !5
  %regs_read_count5 = getelementptr inbounds %struct.cs_detail, ptr %12, i32 0, i32 1
  %13 = load i8, ptr %regs_read_count5, align 8, !tbaa !48
  %inc = add i8 %13, 1
  store i8 %inc, ptr %regs_read_count5, align 8, !tbaa !48
  %idxprom = zext i8 %13 to i64
  %arrayidx = getelementptr inbounds [16 x i16], ptr %regs_read4, i64 0, i64 %idxprom
  store i16 %conv, ptr %arrayidx, align 2, !tbaa !32
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %sw.bb
  br label %sw.bb7

sw.bb7:                                           ; preds = %if.end, %if.end6
  %14 = load ptr, ptr %detail, align 8, !tbaa !5
  %regs_write = getelementptr inbounds %struct.cs_detail, ptr %14, i32 0, i32 2
  %arraydecay8 = getelementptr inbounds [20 x i16], ptr %regs_write, i64 0, i64 0
  %15 = load ptr, ptr %detail, align 8, !tbaa !5
  %regs_write_count = getelementptr inbounds %struct.cs_detail, ptr %15, i32 0, i32 3
  %16 = load i8, ptr %regs_write_count, align 2, !tbaa !50
  %17 = load i32, ptr %reg.addr, align 4, !tbaa !20
  %call9 = call zeroext i1 @exists_reg_list(ptr noundef %arraydecay8, i8 noundef zeroext %16, i32 noundef %17)
  br i1 %call9, label %if.end17, label %if.then10

if.then10:                                        ; preds = %sw.bb7
  %18 = load i32, ptr %reg.addr, align 4, !tbaa !20
  %conv11 = trunc i32 %18 to i16
  %19 = load ptr, ptr %detail, align 8, !tbaa !5
  %regs_write12 = getelementptr inbounds %struct.cs_detail, ptr %19, i32 0, i32 2
  %20 = load ptr, ptr %detail, align 8, !tbaa !5
  %regs_write_count13 = getelementptr inbounds %struct.cs_detail, ptr %20, i32 0, i32 3
  %21 = load i8, ptr %regs_write_count13, align 2, !tbaa !50
  %inc14 = add i8 %21, 1
  store i8 %inc14, ptr %regs_write_count13, align 2, !tbaa !50
  %idxprom15 = zext i8 %21 to i64
  %arrayidx16 = getelementptr inbounds [20 x i16], ptr %regs_write12, i64 0, i64 %idxprom15
  store i16 %conv11, ptr %arrayidx16, align 2, !tbaa !32
  br label %if.end17

if.end17:                                         ; preds = %if.then10, %sw.bb7
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end
  %22 = load ptr, ptr %detail, align 8, !tbaa !5
  %regs_read19 = getelementptr inbounds %struct.cs_detail, ptr %22, i32 0, i32 0
  %arraydecay20 = getelementptr inbounds [16 x i16], ptr %regs_read19, i64 0, i64 0
  %23 = load ptr, ptr %detail, align 8, !tbaa !5
  %regs_read_count21 = getelementptr inbounds %struct.cs_detail, ptr %23, i32 0, i32 1
  %24 = load i8, ptr %regs_read_count21, align 8, !tbaa !48
  %25 = load i32, ptr %reg.addr, align 4, !tbaa !20
  %call22 = call zeroext i1 @exists_reg_list(ptr noundef %arraydecay20, i8 noundef zeroext %24, i32 noundef %25)
  br i1 %call22, label %if.end30, label %if.then23

if.then23:                                        ; preds = %sw.bb18
  %26 = load i32, ptr %reg.addr, align 4, !tbaa !20
  %conv24 = trunc i32 %26 to i16
  %27 = load ptr, ptr %detail, align 8, !tbaa !5
  %regs_read25 = getelementptr inbounds %struct.cs_detail, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %detail, align 8, !tbaa !5
  %regs_read_count26 = getelementptr inbounds %struct.cs_detail, ptr %28, i32 0, i32 1
  %29 = load i8, ptr %regs_read_count26, align 8, !tbaa !48
  %inc27 = add i8 %29, 1
  store i8 %inc27, ptr %regs_read_count26, align 8, !tbaa !48
  %idxprom28 = zext i8 %29 to i64
  %arrayidx29 = getelementptr inbounds [16 x i16], ptr %regs_read25, i64 0, i64 %idxprom28
  store i16 %conv24, ptr %arrayidx29, align 2, !tbaa !32
  br label %if.end30

if.end30:                                         ; preds = %if.then23, %sw.bb18
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end
  br label %sw.default

sw.default:                                       ; preds = %if.end, %sw.bb31
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end30, %if.end17
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %detail) #6
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
define internal void @build_regs_read_write_counts(ptr noundef %MI, ptr noundef %info, i32 noundef %access_mode) #0 {
entry:
  %MI.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %access_mode.addr = alloca i32, align 4
  %m680x = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %access = alloca i32, align 4
  store ptr %MI, ptr %MI.addr, align 8, !tbaa !5
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  store i32 %access_mode, ptr %access_mode.addr, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 8, ptr %m680x) #6
  %0 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %m680x1 = getelementptr inbounds %struct.m680x_info, ptr %0, i32 0, i32 4
  store ptr %m680x1, ptr %m680x, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  %1 = load ptr, ptr %MI.addr, align 8, !tbaa !5
  %flat_insn = getelementptr inbounds %struct.MCInst, ptr %1, i32 0, i32 6
  %2 = load ptr, ptr %flat_insn, align 8, !tbaa !37
  %detail = getelementptr inbounds %struct.cs_insn, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %detail, align 8, !tbaa !39
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %m680x, align 8, !tbaa !5
  %op_count = getelementptr inbounds %struct.cs_m680x, ptr %4, i32 0, i32 1
  %5 = load i8, ptr %op_count, align 1, !tbaa !53
  %tobool = icmp ne i8 %5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, ptr %i, align 4, !tbaa !9
  %7 = load ptr, ptr %m680x, align 8, !tbaa !5
  %op_count2 = getelementptr inbounds %struct.cs_m680x, ptr %7, i32 0, i32 1
  %8 = load i8, ptr %op_count2, align 1, !tbaa !53
  %conv = zext i8 %8 to i32
  %cmp3 = icmp slt i32 %6, %conv
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %access) #6
  %9 = load i32, ptr %i, align 4, !tbaa !9
  %10 = load i32, ptr %access_mode.addr, align 4, !tbaa !20
  %call = call i32 @get_access(i32 noundef %9, i32 noundef %10)
  store i32 %call, ptr %access, align 4, !tbaa !20
  %11 = load ptr, ptr %MI.addr, align 8, !tbaa !5
  %12 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %13 = load ptr, ptr %m680x, align 8, !tbaa !5
  %operands = getelementptr inbounds %struct.cs_m680x, ptr %13, i32 0, i32 2
  %14 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds [9 x %struct.cs_m680x_op], ptr %operands, i64 0, i64 %idxprom
  %15 = load i32, ptr %access, align 4, !tbaa !20
  call void @update_am_reg_list(ptr noundef %11, ptr noundef %12, ptr noundef %arrayidx, i32 noundef %15)
  call void @llvm.lifetime.end.p0(i64 4, ptr %access) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, ptr %i, align 4, !tbaa !9
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %i, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !58

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %m680x) #6
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
define internal void @add_operators_access(ptr noundef %MI, ptr noundef %info, i32 noundef %access_mode) #0 {
entry:
  %MI.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %access_mode.addr = alloca i32, align 4
  %m680x = alloca ptr, align 8
  %offset = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %access = alloca i32, align 4
  store ptr %MI, ptr %MI.addr, align 8, !tbaa !5
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  store i32 %access_mode, ptr %access_mode.addr, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 8, ptr %m680x) #6
  %0 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %m680x1 = getelementptr inbounds %struct.m680x_info, ptr %0, i32 0, i32 4
  store ptr %m680x1, ptr %m680x, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #6
  store i32 0, ptr %offset, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  %1 = load ptr, ptr %MI.addr, align 8, !tbaa !5
  %flat_insn = getelementptr inbounds %struct.MCInst, ptr %1, i32 0, i32 6
  %2 = load ptr, ptr %flat_insn, align 8, !tbaa !37
  %detail = getelementptr inbounds %struct.cs_insn, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %detail, align 8, !tbaa !39
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %m680x, align 8, !tbaa !5
  %op_count = getelementptr inbounds %struct.cs_m680x, ptr %4, i32 0, i32 1
  %5 = load i8, ptr %op_count, align 1, !tbaa !53
  %tobool = icmp ne i8 %5, 0
  br i1 %tobool, label %lor.lhs.false2, label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %6 = load i32, ptr %access_mode.addr, align 4, !tbaa !20
  %cmp3 = icmp eq i32 %6, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, ptr %i, align 4, !tbaa !9
  %8 = load ptr, ptr %m680x, align 8, !tbaa !5
  %op_count4 = getelementptr inbounds %struct.cs_m680x, ptr %8, i32 0, i32 1
  %9 = load i8, ptr %op_count4, align 1, !tbaa !53
  %conv = zext i8 %9 to i32
  %cmp5 = icmp slt i32 %7, %conv
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %access) #6
  %10 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %insn = getelementptr inbounds %struct.m680x_info, ptr %10, i32 0, i32 6
  %11 = load i32, ptr %insn, align 8, !tbaa !44
  %cmp7 = icmp eq i32 %11, 230
  br i1 %cmp7, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %for.body
  %12 = load i32, ptr %i, align 4, !tbaa !9
  %cmp9 = icmp eq i32 %12, 1
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %land.lhs.true
  store i32 1, ptr %offset, align 4, !tbaa !9
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %land.lhs.true, %for.body
  %13 = load i32, ptr %i, align 4, !tbaa !9
  %14 = load i32, ptr %offset, align 4, !tbaa !9
  %add = add nsw i32 %13, %14
  %15 = load i32, ptr %access_mode.addr, align 4, !tbaa !20
  %call = call i32 @get_access(i32 noundef %add, i32 noundef %15)
  store i32 %call, ptr %access, align 4, !tbaa !20
  %16 = load i32, ptr %access, align 4, !tbaa !20
  %conv13 = trunc i32 %16 to i8
  %17 = load ptr, ptr %m680x, align 8, !tbaa !5
  %operands = getelementptr inbounds %struct.cs_m680x, ptr %17, i32 0, i32 2
  %18 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds [9 x %struct.cs_m680x_op], ptr %operands, i64 0, i64 %idxprom
  %access14 = getelementptr inbounds %struct.cs_m680x_op, ptr %arrayidx, i32 0, i32 3
  store i8 %conv13, ptr %access14, align 1, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 4, ptr %access) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end12
  %19 = load i32, ptr %i, align 4, !tbaa !9
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %i, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !60

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %m680x) #6
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
define internal void @set_changed_regs_read_write_counts(ptr noundef %MI, ptr noundef %info) #0 {
entry:
  %MI.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %access_mode = alloca i32, align 4
  %access = alloca i32, align 4
  %reg = alloca i32, align 4
  store ptr %MI, ptr %MI.addr, align 8, !tbaa !5
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #6
  %0 = load ptr, ptr %MI.addr, align 8, !tbaa !5
  %flat_insn = getelementptr inbounds %struct.MCInst, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %flat_insn, align 8, !tbaa !37
  %detail = getelementptr inbounds %struct.cs_insn, ptr %1, i32 0, i32 6
  %2 = load ptr, ptr %detail, align 8, !tbaa !39
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup37

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc34, %if.end
  %3 = load i32, ptr %i, align 4, !tbaa !9
  %conv = sext i32 %3 to i64
  %cmp1 = icmp ult i64 %conv, 51
  br i1 %cmp1, label %for.body, label %for.end36

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %insn = getelementptr inbounds %struct.m680x_info, ptr %4, i32 0, i32 6
  %5 = load i32, ptr %insn, align 8, !tbaa !44
  %6 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [51 x %struct.insn_to_changed_regs], ptr @set_changed_regs_read_write_counts.changed_regs, i64 0, i64 %idxprom
  %insn3 = getelementptr inbounds %struct.insn_to_changed_regs, ptr %arrayidx, i32 0, i32 0
  %7 = load i32, ptr %insn3, align 16, !tbaa !61
  %cmp4 = icmp eq i32 %5, %7
  br i1 %cmp4, label %if.then6, label %if.end33

if.then6:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %access_mode) #6
  %8 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [51 x %struct.insn_to_changed_regs], ptr @set_changed_regs_read_write_counts.changed_regs, i64 0, i64 %idxprom7
  %access_mode9 = getelementptr inbounds %struct.insn_to_changed_regs, ptr %arrayidx8, i32 0, i32 1
  %9 = load i32, ptr %access_mode9, align 4, !tbaa !63
  store i32 %9, ptr %access_mode, align 4, !tbaa !20
  store i32 0, ptr %j, align 4, !tbaa !9
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc, %if.then6
  %10 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom11 = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds [51 x %struct.insn_to_changed_regs], ptr @set_changed_regs_read_write_counts.changed_regs, i64 0, i64 %idxprom11
  %regs = getelementptr inbounds %struct.insn_to_changed_regs, ptr %arrayidx12, i32 0, i32 2
  %11 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom13 = sext i32 %11 to i64
  %arrayidx14 = getelementptr inbounds [10 x i32], ptr %regs, i64 0, i64 %idxprom13
  %12 = load i32, ptr %arrayidx14, align 4, !tbaa !20
  %cmp15 = icmp ne i32 %12, 0
  br i1 %cmp15, label %for.body17, label %for.end

for.body17:                                       ; preds = %for.cond10
  call void @llvm.lifetime.start.p0(i64 4, ptr %access) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %reg) #6
  %13 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom18 = sext i32 %13 to i64
  %arrayidx19 = getelementptr inbounds [51 x %struct.insn_to_changed_regs], ptr @set_changed_regs_read_write_counts.changed_regs, i64 0, i64 %idxprom18
  %regs20 = getelementptr inbounds %struct.insn_to_changed_regs, ptr %arrayidx19, i32 0, i32 2
  %14 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom21 = sext i32 %14 to i64
  %arrayidx22 = getelementptr inbounds [10 x i32], ptr %regs20, i64 0, i64 %idxprom21
  %15 = load i32, ptr %arrayidx22, align 4, !tbaa !20
  store i32 %15, ptr %reg, align 4, !tbaa !20
  %16 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %cpu = getelementptr inbounds %struct.m680x_info, ptr %16, i32 0, i32 5
  %17 = load ptr, ptr %cpu, align 8, !tbaa !16
  %reg_byte_size = getelementptr inbounds %struct.cpu_tables, ptr %17, i32 0, i32 6
  %18 = load ptr, ptr %reg_byte_size, align 8, !tbaa !45
  %19 = load i32, ptr %reg, align 4, !tbaa !20
  %idxprom23 = zext i32 %19 to i64
  %arrayidx24 = getelementptr inbounds i8, ptr %18, i64 %idxprom23
  %20 = load i8, ptr %arrayidx24, align 1, !tbaa !20
  %tobool = icmp ne i8 %20, 0
  br i1 %tobool, label %if.end31, label %if.then25

if.then25:                                        ; preds = %for.body17
  %21 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %insn26 = getelementptr inbounds %struct.m680x_info, ptr %21, i32 0, i32 6
  %22 = load i32, ptr %insn26, align 8, !tbaa !44
  %cmp27 = icmp ne i32 %22, 229
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.then25
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end30:                                         ; preds = %if.then25
  store i32 13, ptr %reg, align 4, !tbaa !20
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %for.body17
  %23 = load i32, ptr %j, align 4, !tbaa !9
  %24 = load i32, ptr %access_mode, align 4, !tbaa !20
  %call = call i32 @get_access(i32 noundef %23, i32 noundef %24)
  store i32 %call, ptr %access, align 4, !tbaa !20
  %25 = load ptr, ptr %MI.addr, align 8, !tbaa !5
  %26 = load i32, ptr %reg, align 4, !tbaa !20
  %27 = load i32, ptr %access, align 4, !tbaa !20
  call void @add_reg_to_rw_list(ptr noundef %25, i32 noundef %26, i32 noundef %27)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then29
  call void @llvm.lifetime.end.p0(i64 4, ptr %reg) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %access) #6
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 7, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %28 = load i32, ptr %j, align 4, !tbaa !9
  %inc = add nsw i32 %28, 1
  store i32 %inc, ptr %j, align 4, !tbaa !9
  br label %for.cond10, !llvm.loop !64

for.end:                                          ; preds = %for.cond10
  call void @llvm.lifetime.end.p0(i64 4, ptr %access_mode) #6
  br label %if.end33

if.end33:                                         ; preds = %for.end, %for.body
  br label %for.inc34

for.inc34:                                        ; preds = %if.end33
  %29 = load i32, ptr %i, align 4, !tbaa !9
  %inc35 = add nsw i32 %29, 1
  store i32 %inc35, ptr %i, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !65

for.end36:                                        ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup37

cleanup37:                                        ; preds = %for.end36, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  %cleanup.dest39 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest39, label %unreachable [
    i32 0, label %cleanup.cont40
    i32 1, label %cleanup.cont40
  ]

cleanup.cont40:                                   ; preds = %cleanup37, %cleanup37
  ret void

unreachable:                                      ; preds = %cleanup37, %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @illegal_hdlr(ptr noundef %MI, ptr noundef %info, ptr noundef %address) #0 {
entry:
  %MI.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %address.addr = alloca ptr, align 8
  %op0 = alloca ptr, align 8
  %temp8 = alloca i8, align 1
  store ptr %MI, ptr %MI.addr, align 8, !tbaa !5
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  store ptr %address, ptr %address.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %op0) #6
  %0 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %m680x = getelementptr inbounds %struct.m680x_info, ptr %0, i32 0, i32 4
  %operands = getelementptr inbounds %struct.cs_m680x, ptr %m680x, i32 0, i32 2
  %1 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %m680x1 = getelementptr inbounds %struct.m680x_info, ptr %1, i32 0, i32 4
  %op_count = getelementptr inbounds %struct.cs_m680x, ptr %m680x1, i32 0, i32 1
  %2 = load i8, ptr %op_count, align 1, !tbaa !66
  %inc = add i8 %2, 1
  store i8 %inc, ptr %op_count, align 1, !tbaa !66
  %idxprom = zext i8 %2 to i64
  %arrayidx = getelementptr inbounds [9 x %struct.cs_m680x_op], ptr %operands, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %op0, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr %temp8) #6
  store i8 0, ptr %temp8, align 1, !tbaa !20
  %3 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %insn = getelementptr inbounds %struct.m680x_info, ptr %3, i32 0, i32 6
  store i32 159, ptr %insn, align 8, !tbaa !44
  %4 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %5 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %6 = load i16, ptr %5, align 2, !tbaa !32
  %inc2 = add i16 %6, 1
  store i16 %inc2, ptr %5, align 2, !tbaa !32
  %call = call zeroext i1 @read_byte(ptr noundef %4, ptr noundef %temp8, i16 noundef zeroext %6)
  %7 = load i8, ptr %temp8, align 1, !tbaa !20
  %conv = zext i8 %7 to i32
  %and = and i32 %conv, 255
  %8 = load ptr, ptr %op0, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.cs_m680x_op, ptr %8, i32 0, i32 1
  store i32 %and, ptr %9, align 4, !tbaa !20
  %10 = load ptr, ptr %op0, align 8, !tbaa !5
  %type = getelementptr inbounds %struct.cs_m680x_op, ptr %10, i32 0, i32 0
  store i32 2, ptr %type, align 4, !tbaa !54
  %11 = load ptr, ptr %op0, align 8, !tbaa !5
  %size = getelementptr inbounds %struct.cs_m680x_op, ptr %11, i32 0, i32 2
  store i8 1, ptr %size, align 4, !tbaa !56
  call void @llvm.lifetime.end.p0(i64 1, ptr %temp8) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %op0) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @read_byte(ptr noundef %info, ptr noundef %byte, i16 noundef zeroext %address) #0 {
entry:
  %retval = alloca i1, align 1
  %info.addr = alloca ptr, align 8
  %byte.addr = alloca ptr, align 8
  %address.addr = alloca i16, align 2
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  store ptr %byte, ptr %byte.addr, align 8, !tbaa !5
  store i16 %address, ptr %address.addr, align 2, !tbaa !32
  %0 = load i16, ptr %address.addr, align 2, !tbaa !32
  %conv = zext i16 %0 to i32
  %1 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %offset = getelementptr inbounds %struct.m680x_info, ptr %1, i32 0, i32 2
  %2 = load i16, ptr %offset, align 4, !tbaa !35
  %conv1 = zext i16 %2 to i32
  %sub = sub nsw i32 %conv, %conv1
  %3 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %size = getelementptr inbounds %struct.m680x_info, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %size, align 8, !tbaa !34
  %cmp = icmp uge i32 %sub, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %code = getelementptr inbounds %struct.m680x_info, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %code, align 8, !tbaa !33
  %7 = load i16, ptr %address.addr, align 2, !tbaa !32
  %conv3 = zext i16 %7 to i32
  %8 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %offset4 = getelementptr inbounds %struct.m680x_info, ptr %8, i32 0, i32 2
  %9 = load i16, ptr %offset4, align 4, !tbaa !35
  %conv5 = zext i16 %9 to i32
  %sub6 = sub nsw i32 %conv3, %conv5
  %idxprom = sext i32 %sub6 to i64
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 %idxprom
  %10 = load i8, ptr %arrayidx, align 1, !tbaa !20
  %11 = load ptr, ptr %byte.addr, align 8, !tbaa !5
  store i8 %10, ptr %11, align 1, !tbaa !20
  store i1 true, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i1, ptr %retval, align 1
  ret i1 %12
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @is_sufficient_code_size(ptr noundef %info, i16 noundef zeroext %address, ptr noundef %insn_description) #0 {
entry:
  %retval = alloca i1, align 1
  %info.addr = alloca ptr, align 8
  %address.addr = alloca i16, align 2
  %insn_description.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %retval1 = alloca i8, align 1
  %ir = alloca i8, align 1
  %is_subset = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  store i16 %address, ptr %address.addr, align 2, !tbaa !32
  store ptr %insn_description, ptr %insn_description.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr %retval1) #6
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !9
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %ir) #6
  store i8 0, ptr %ir, align 1, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 1, ptr %is_subset) #6
  store i8 0, ptr %is_subset, align 1, !tbaa !67
  %1 = load ptr, ptr %insn_description.addr, align 8, !tbaa !5
  %hid = getelementptr inbounds %struct.insn_desc, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [2 x i32], ptr %hid, i64 0, i64 %idxprom
  %3 = load i32, ptr %arrayidx, align 4, !tbaa !20
  switch i32 %3, label %sw.default [
    i32 5, label %sw.bb
    i32 7, label %sw.bb9
    i32 4, label %sw.bb9
    i32 2, label %sw.bb9
    i32 20, label %sw.bb9
    i32 17, label %sw.bb9
    i32 19, label %sw.bb9
    i32 22, label %sw.bb9
    i32 1, label %sw.bb22
    i32 6, label %sw.bb22
    i32 13, label %sw.bb22
    i32 3, label %sw.bb22
    i32 8, label %sw.bb22
    i32 23, label %sw.bb22
    i32 9, label %sw.bb22
    i32 21, label %sw.bb22
    i32 29, label %sw.bb22
    i32 0, label %sw.bb29
    i32 11, label %sw.bb29
    i32 18, label %sw.bb29
    i32 24, label %sw.bb29
    i32 16, label %sw.bb29
    i32 10, label %sw.bb30
    i32 26, label %sw.bb39
    i32 25, label %sw.bb40
    i32 32, label %sw.bb52
    i32 31, label %sw.bb52
    i32 30, label %sw.bb78
    i32 15, label %sw.bb99
    i32 12, label %sw.bb119
    i32 27, label %sw.bb143
    i32 14, label %sw.bb155
    i32 28, label %sw.bb175
  ]

sw.bb:                                            ; preds = %for.body
  %4 = load ptr, ptr %insn_description.addr, align 8, !tbaa !5
  %insn_size = getelementptr inbounds %struct.insn_desc, ptr %4, i32 0, i32 3
  %5 = load i16, ptr %insn_size, align 4, !tbaa !47
  %conv = zext i16 %5 to i32
  %add = add nsw i32 %conv, 4
  %conv2 = trunc i32 %add to i16
  store i16 %conv2, ptr %insn_size, align 4, !tbaa !47
  %6 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %7 = load i16, ptr %address.addr, align 2, !tbaa !32
  %conv3 = zext i16 %7 to i32
  %add4 = add nsw i32 %conv3, 3
  %conv5 = trunc i32 %add4 to i16
  %call = call zeroext i1 @read_byte(ptr noundef %6, ptr noundef %ir, i16 noundef zeroext %conv5)
  %frombool = zext i1 %call to i8
  store i8 %frombool, ptr %retval1, align 1, !tbaa !67
  %8 = load i16, ptr %address.addr, align 2, !tbaa !32
  %conv6 = zext i16 %8 to i32
  %add7 = add nsw i32 %conv6, 4
  %conv8 = trunc i32 %add7 to i16
  store i16 %conv8, ptr %address.addr, align 2, !tbaa !32
  br label %sw.epilog

sw.bb9:                                           ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body
  %9 = load ptr, ptr %insn_description.addr, align 8, !tbaa !5
  %insn_size10 = getelementptr inbounds %struct.insn_desc, ptr %9, i32 0, i32 3
  %10 = load i16, ptr %insn_size10, align 4, !tbaa !47
  %conv11 = zext i16 %10 to i32
  %add12 = add nsw i32 %conv11, 2
  %conv13 = trunc i32 %add12 to i16
  store i16 %conv13, ptr %insn_size10, align 4, !tbaa !47
  %11 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %12 = load i16, ptr %address.addr, align 2, !tbaa !32
  %conv14 = zext i16 %12 to i32
  %add15 = add nsw i32 %conv14, 1
  %conv16 = trunc i32 %add15 to i16
  %call17 = call zeroext i1 @read_byte(ptr noundef %11, ptr noundef %ir, i16 noundef zeroext %conv16)
  %frombool18 = zext i1 %call17 to i8
  store i8 %frombool18, ptr %retval1, align 1, !tbaa !67
  %13 = load i16, ptr %address.addr, align 2, !tbaa !32
  %conv19 = zext i16 %13 to i32
  %add20 = add nsw i32 %conv19, 2
  %conv21 = trunc i32 %add20 to i16
  store i16 %conv21, ptr %address.addr, align 2, !tbaa !32
  br label %sw.epilog

sw.bb22:                                          ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body
  %14 = load ptr, ptr %insn_description.addr, align 8, !tbaa !5
  %insn_size23 = getelementptr inbounds %struct.insn_desc, ptr %14, i32 0, i32 3
  %15 = load i16, ptr %insn_size23, align 4, !tbaa !47
  %conv24 = zext i16 %15 to i32
  %add25 = add nsw i32 %conv24, 1
  %conv26 = trunc i32 %add25 to i16
  store i16 %conv26, ptr %insn_size23, align 4, !tbaa !47
  %16 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %17 = load i16, ptr %address.addr, align 2, !tbaa !32
  %inc = add i16 %17, 1
  store i16 %inc, ptr %address.addr, align 2, !tbaa !32
  %call27 = call zeroext i1 @read_byte(ptr noundef %16, ptr noundef %ir, i16 noundef zeroext %17)
  %frombool28 = zext i1 %call27 to i8
  store i8 %frombool28, ptr %retval1, align 1, !tbaa !67
  br label %sw.epilog

sw.bb29:                                          ; preds = %for.body, %for.body, %for.body, %for.body, %for.body
  store i8 1, ptr %retval1, align 1, !tbaa !67
  br label %sw.epilog

sw.bb30:                                          ; preds = %for.body
  %18 = load ptr, ptr %insn_description.addr, align 8, !tbaa !5
  %insn_size31 = getelementptr inbounds %struct.insn_desc, ptr %18, i32 0, i32 3
  %19 = load i16, ptr %insn_size31, align 4, !tbaa !47
  %conv32 = zext i16 %19 to i32
  %add33 = add nsw i32 %conv32, 1
  %conv34 = trunc i32 %add33 to i16
  store i16 %conv34, ptr %insn_size31, align 4, !tbaa !47
  %20 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %21 = load i16, ptr %address.addr, align 2, !tbaa !32
  %inc35 = add i16 %21, 1
  store i16 %inc35, ptr %address.addr, align 2, !tbaa !32
  %call36 = call zeroext i1 @read_byte(ptr noundef %20, ptr noundef %ir, i16 noundef zeroext %21)
  br i1 %call36, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb30
  store i8 0, ptr %retval1, align 1, !tbaa !67
  br label %if.end

if.else:                                          ; preds = %sw.bb30
  %22 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %23 = load i8, ptr %ir, align 1, !tbaa !20
  %24 = load ptr, ptr %insn_description.addr, align 8, !tbaa !5
  %call37 = call zeroext i1 @is_indexed09_post_byte_valid(ptr noundef %22, ptr noundef %address.addr, i8 noundef zeroext %23, ptr noundef %24)
  %frombool38 = zext i1 %call37 to i8
  store i8 %frombool38, ptr %retval1, align 1, !tbaa !67
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb39:                                          ; preds = %for.body
  store i8 1, ptr %is_subset, align 1, !tbaa !67
  br label %sw.bb40

sw.bb40:                                          ; preds = %for.body, %sw.bb39
  %25 = load ptr, ptr %insn_description.addr, align 8, !tbaa !5
  %insn_size41 = getelementptr inbounds %struct.insn_desc, ptr %25, i32 0, i32 3
  %26 = load i16, ptr %insn_size41, align 4, !tbaa !47
  %conv42 = zext i16 %26 to i32
  %add43 = add nsw i32 %conv42, 1
  %conv44 = trunc i32 %add43 to i16
  store i16 %conv44, ptr %insn_size41, align 4, !tbaa !47
  %27 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %28 = load i16, ptr %address.addr, align 2, !tbaa !32
  %inc45 = add i16 %28, 1
  store i16 %inc45, ptr %address.addr, align 2, !tbaa !32
  %call46 = call zeroext i1 @read_byte(ptr noundef %27, ptr noundef %ir, i16 noundef zeroext %28)
  br i1 %call46, label %if.else48, label %if.then47

if.then47:                                        ; preds = %sw.bb40
  store i8 0, ptr %retval1, align 1, !tbaa !67
  br label %if.end51

if.else48:                                        ; preds = %sw.bb40
  %29 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %30 = load i8, ptr %ir, align 1, !tbaa !20
  %31 = load ptr, ptr %insn_description.addr, align 8, !tbaa !5
  %32 = load i8, ptr %is_subset, align 1, !tbaa !67, !range !68, !noundef !69
  %tobool = trunc i8 %32 to i1
  %call49 = call zeroext i1 @is_indexed12_post_byte_valid(ptr noundef %29, ptr noundef %address.addr, i8 noundef zeroext %30, ptr noundef %31, i1 noundef zeroext %tobool)
  %frombool50 = zext i1 %call49 to i8
  store i8 %frombool50, ptr %retval1, align 1, !tbaa !67
  br label %if.end51

if.end51:                                         ; preds = %if.else48, %if.then47
  br label %sw.epilog

sw.bb52:                                          ; preds = %for.body, %for.body
  %33 = load ptr, ptr %insn_description.addr, align 8, !tbaa !5
  %insn_size53 = getelementptr inbounds %struct.insn_desc, ptr %33, i32 0, i32 3
  %34 = load i16, ptr %insn_size53, align 4, !tbaa !47
  %conv54 = zext i16 %34 to i32
  %add55 = add nsw i32 %conv54, 1
  %conv56 = trunc i32 %add55 to i16
  store i16 %conv56, ptr %insn_size53, align 4, !tbaa !47
  %35 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %36 = load i16, ptr %address.addr, align 2, !tbaa !32
  %inc57 = add i16 %36, 1
  store i16 %inc57, ptr %address.addr, align 2, !tbaa !32
  %call58 = call zeroext i1 @read_byte(ptr noundef %35, ptr noundef %ir, i16 noundef zeroext %36)
  br i1 %call58, label %if.else60, label %if.then59

if.then59:                                        ; preds = %sw.bb52
  store i8 0, ptr %retval1, align 1, !tbaa !67
  br label %if.end77

if.else60:                                        ; preds = %sw.bb52
  %37 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %38 = load i8, ptr %ir, align 1, !tbaa !20
  %39 = load ptr, ptr %insn_description.addr, align 8, !tbaa !5
  %call61 = call zeroext i1 @is_indexed12_post_byte_valid(ptr noundef %37, ptr noundef %address.addr, i8 noundef zeroext %38, ptr noundef %39, i1 noundef zeroext false)
  br i1 %call61, label %if.else63, label %if.then62

if.then62:                                        ; preds = %if.else60
  store i8 0, ptr %retval1, align 1, !tbaa !67
  br label %if.end76

if.else63:                                        ; preds = %if.else60
  %40 = load ptr, ptr %insn_description.addr, align 8, !tbaa !5
  %insn_size64 = getelementptr inbounds %struct.insn_desc, ptr %40, i32 0, i32 3
  %41 = load i16, ptr %insn_size64, align 4, !tbaa !47
  %conv65 = zext i16 %41 to i32
  %add66 = add nsw i32 %conv65, 2
  %conv67 = trunc i32 %add66 to i16
  store i16 %conv67, ptr %insn_size64, align 4, !tbaa !47
  %42 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %43 = load i16, ptr %address.addr, align 2, !tbaa !32
  %conv68 = zext i16 %43 to i32
  %add69 = add nsw i32 %conv68, 1
  %conv70 = trunc i32 %add69 to i16
  %call71 = call zeroext i1 @read_byte(ptr noundef %42, ptr noundef %ir, i16 noundef zeroext %conv70)
  %frombool72 = zext i1 %call71 to i8
  store i8 %frombool72, ptr %retval1, align 1, !tbaa !67
  %44 = load i16, ptr %address.addr, align 2, !tbaa !32
  %conv73 = zext i16 %44 to i32
  %add74 = add nsw i32 %conv73, 2
  %conv75 = trunc i32 %add74 to i16
  store i16 %conv75, ptr %address.addr, align 2, !tbaa !32
  br label %if.end76

if.end76:                                         ; preds = %if.else63, %if.then62
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %if.then59
  br label %sw.epilog

sw.bb78:                                          ; preds = %for.body
  %45 = load ptr, ptr %insn_description.addr, align 8, !tbaa !5
  %insn_size79 = getelementptr inbounds %struct.insn_desc, ptr %45, i32 0, i32 3
  %46 = load i16, ptr %insn_size79, align 4, !tbaa !47
  %conv80 = zext i16 %46 to i32
  %add81 = add nsw i32 %conv80, 1
  %conv82 = trunc i32 %add81 to i16
  store i16 %conv82, ptr %insn_size79, align 4, !tbaa !47
  %47 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %48 = load i16, ptr %address.addr, align 2, !tbaa !32
  %inc83 = add i16 %48, 1
  store i16 %inc83, ptr %address.addr, align 2, !tbaa !32
  %call84 = call zeroext i1 @read_byte(ptr noundef %47, ptr noundef %ir, i16 noundef zeroext %48)
  br i1 %call84, label %if.else86, label %if.then85

if.then85:                                        ; preds = %sw.bb78
  store i8 0, ptr %retval1, align 1, !tbaa !67
  br label %if.end98

if.else86:                                        ; preds = %sw.bb78
  %49 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %50 = load i8, ptr %ir, align 1, !tbaa !20
  %51 = load ptr, ptr %insn_description.addr, align 8, !tbaa !5
  %call87 = call zeroext i1 @is_indexed12_post_byte_valid(ptr noundef %49, ptr noundef %address.addr, i8 noundef zeroext %50, ptr noundef %51, i1 noundef zeroext false)
  br i1 %call87, label %if.else89, label %if.then88

if.then88:                                        ; preds = %if.else86
  store i8 0, ptr %retval1, align 1, !tbaa !67
  br label %if.end97

if.else89:                                        ; preds = %if.else86
  %52 = load ptr, ptr %insn_description.addr, align 8, !tbaa !5
  %insn_size90 = getelementptr inbounds %struct.insn_desc, ptr %52, i32 0, i32 3
  %53 = load i16, ptr %insn_size90, align 4, !tbaa !47
  %conv91 = zext i16 %53 to i32
  %add92 = add nsw i32 %conv91, 1
  %conv93 = trunc i32 %add92 to i16
  store i16 %conv93, ptr %insn_size90, align 4, !tbaa !47
  %54 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %55 = load i16, ptr %address.addr, align 2, !tbaa !32
  %inc94 = add i16 %55, 1
  store i16 %inc94, ptr %address.addr, align 2, !tbaa !32
  %call95 = call zeroext i1 @read_byte(ptr noundef %54, ptr noundef %ir, i16 noundef zeroext %55)
  %frombool96 = zext i1 %call95 to i8
  store i8 %frombool96, ptr %retval1, align 1, !tbaa !67
  br label %if.end97

if.end97:                                         ; preds = %if.else89, %if.then88
  br label %if.end98

if.end98:                                         ; preds = %if.end97, %if.then85
  br label %sw.epilog

sw.bb99:                                          ; preds = %for.body
  %56 = load ptr, ptr %insn_description.addr, align 8, !tbaa !5
  %insn_size100 = getelementptr inbounds %struct.insn_desc, ptr %56, i32 0, i32 3
  %57 = load i16, ptr %insn_size100, align 4, !tbaa !47
  %conv101 = zext i16 %57 to i32
  %add102 = add nsw i32 %conv101, 1
  %conv103 = trunc i32 %add102 to i16
  store i16 %conv103, ptr %insn_size100, align 4, !tbaa !47
  %58 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %59 = load i16, ptr %address.addr, align 2, !tbaa !32
  %inc104 = add i16 %59, 1
  store i16 %inc104, ptr %address.addr, align 2, !tbaa !32
  %call105 = call zeroext i1 @read_byte(ptr noundef %58, ptr noundef %ir, i16 noundef zeroext %59)
  br i1 %call105, label %if.else107, label %if.then106

if.then106:                                       ; preds = %sw.bb99
  store i8 0, ptr %retval1, align 1, !tbaa !67
  br label %if.end118

if.else107:                                       ; preds = %sw.bb99
  %60 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %61 = load i8, ptr %ir, align 1, !tbaa !20
  %conv108 = zext i8 %61 to i32
  %shr = ashr i32 %conv108, 4
  %and = and i32 %shr, 15
  %conv109 = trunc i32 %and to i8
  %call110 = call zeroext i1 @is_tfm_reg_valid(ptr noundef %60, i8 noundef zeroext %conv109)
  br i1 %call110, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.else107
  %62 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %63 = load i8, ptr %ir, align 1, !tbaa !20
  %conv112 = zext i8 %63 to i32
  %and113 = and i32 %conv112, 15
  %conv114 = trunc i32 %and113 to i8
  %call115 = call zeroext i1 @is_tfm_reg_valid(ptr noundef %62, i8 noundef zeroext %conv114)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else107
  %64 = phi i1 [ false, %if.else107 ], [ %call115, %land.rhs ]
  %frombool117 = zext i1 %64 to i8
  store i8 %frombool117, ptr %retval1, align 1, !tbaa !67
  br label %if.end118

if.end118:                                        ; preds = %land.end, %if.then106
  br label %sw.epilog

sw.bb119:                                         ; preds = %for.body
  %65 = load ptr, ptr %insn_description.addr, align 8, !tbaa !5
  %insn_size120 = getelementptr inbounds %struct.insn_desc, ptr %65, i32 0, i32 3
  %66 = load i16, ptr %insn_size120, align 4, !tbaa !47
  %conv121 = zext i16 %66 to i32
  %add122 = add nsw i32 %conv121, 1
  %conv123 = trunc i32 %add122 to i16
  store i16 %conv123, ptr %insn_size120, align 4, !tbaa !47
  %67 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %68 = load i16, ptr %address.addr, align 2, !tbaa !32
  %inc124 = add i16 %68, 1
  store i16 %inc124, ptr %address.addr, align 2, !tbaa !32
  %call125 = call zeroext i1 @read_byte(ptr noundef %67, ptr noundef %ir, i16 noundef zeroext %68)
  br i1 %call125, label %if.else127, label %if.then126

if.then126:                                       ; preds = %sw.bb119
  store i8 0, ptr %retval1, align 1, !tbaa !67
  br label %if.end142

if.else127:                                       ; preds = %sw.bb119
  %69 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %70 = load i8, ptr %ir, align 1, !tbaa !20
  %conv128 = zext i8 %70 to i32
  %shr129 = ashr i32 %conv128, 4
  %and130 = and i32 %shr129, 15
  %conv131 = trunc i32 %and130 to i8
  %call132 = call zeroext i1 @is_tfr09_reg_valid(ptr noundef %69, i8 noundef zeroext %conv131)
  br i1 %call132, label %land.rhs134, label %land.end140

land.rhs134:                                      ; preds = %if.else127
  %71 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %72 = load i8, ptr %ir, align 1, !tbaa !20
  %conv135 = zext i8 %72 to i32
  %and136 = and i32 %conv135, 15
  %conv137 = trunc i32 %and136 to i8
  %call138 = call zeroext i1 @is_tfr09_reg_valid(ptr noundef %71, i8 noundef zeroext %conv137)
  br label %land.end140

land.end140:                                      ; preds = %land.rhs134, %if.else127
  %73 = phi i1 [ false, %if.else127 ], [ %call138, %land.rhs134 ]
  %frombool141 = zext i1 %73 to i8
  store i8 %frombool141, ptr %retval1, align 1, !tbaa !67
  br label %if.end142

if.end142:                                        ; preds = %land.end140, %if.then126
  br label %sw.epilog

sw.bb143:                                         ; preds = %for.body
  %74 = load ptr, ptr %insn_description.addr, align 8, !tbaa !5
  %insn_size144 = getelementptr inbounds %struct.insn_desc, ptr %74, i32 0, i32 3
  %75 = load i16, ptr %insn_size144, align 4, !tbaa !47
  %conv145 = zext i16 %75 to i32
  %add146 = add nsw i32 %conv145, 1
  %conv147 = trunc i32 %add146 to i16
  store i16 %conv147, ptr %insn_size144, align 4, !tbaa !47
  %76 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %77 = load i16, ptr %address.addr, align 2, !tbaa !32
  %inc148 = add i16 %77, 1
  store i16 %inc148, ptr %address.addr, align 2, !tbaa !32
  %call149 = call zeroext i1 @read_byte(ptr noundef %76, ptr noundef %ir, i16 noundef zeroext %77)
  br i1 %call149, label %if.else151, label %if.then150

if.then150:                                       ; preds = %sw.bb143
  store i8 0, ptr %retval1, align 1, !tbaa !67
  br label %if.end154

if.else151:                                       ; preds = %sw.bb143
  %78 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %79 = load i8, ptr %ir, align 1, !tbaa !20
  %call152 = call zeroext i1 @is_exg_tfr12_post_byte_valid(ptr noundef %78, i8 noundef zeroext %79)
  %frombool153 = zext i1 %call152 to i8
  store i8 %frombool153, ptr %retval1, align 1, !tbaa !67
  br label %if.end154

if.end154:                                        ; preds = %if.else151, %if.then150
  br label %sw.epilog

sw.bb155:                                         ; preds = %for.body
  %80 = load ptr, ptr %insn_description.addr, align 8, !tbaa !5
  %insn_size156 = getelementptr inbounds %struct.insn_desc, ptr %80, i32 0, i32 3
  %81 = load i16, ptr %insn_size156, align 4, !tbaa !47
  %conv157 = zext i16 %81 to i32
  %add158 = add nsw i32 %conv157, 2
  %conv159 = trunc i32 %add158 to i16
  store i16 %conv159, ptr %insn_size156, align 4, !tbaa !47
  %82 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %83 = load i16, ptr %address.addr, align 2, !tbaa !32
  %inc160 = add i16 %83, 1
  store i16 %inc160, ptr %address.addr, align 2, !tbaa !32
  %call161 = call zeroext i1 @read_byte(ptr noundef %82, ptr noundef %ir, i16 noundef zeroext %83)
  br i1 %call161, label %if.else163, label %if.then162

if.then162:                                       ; preds = %sw.bb155
  store i8 0, ptr %retval1, align 1, !tbaa !67
  br label %if.end174

if.else163:                                       ; preds = %sw.bb155
  %84 = load i8, ptr %ir, align 1, !tbaa !20
  %conv164 = zext i8 %84 to i32
  %and165 = and i32 %conv164, 192
  %cmp166 = icmp eq i32 %and165, 192
  br i1 %cmp166, label %if.then168, label %if.else169

if.then168:                                       ; preds = %if.else163
  store i8 0, ptr %retval1, align 1, !tbaa !67
  br label %if.end173

if.else169:                                       ; preds = %if.else163
  %85 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %86 = load i16, ptr %address.addr, align 2, !tbaa !32
  %inc170 = add i16 %86, 1
  store i16 %inc170, ptr %address.addr, align 2, !tbaa !32
  %call171 = call zeroext i1 @read_byte(ptr noundef %85, ptr noundef %ir, i16 noundef zeroext %86)
  %frombool172 = zext i1 %call171 to i8
  store i8 %frombool172, ptr %retval1, align 1, !tbaa !67
  br label %if.end173

if.end173:                                        ; preds = %if.else169, %if.then168
  br label %if.end174

if.end174:                                        ; preds = %if.end173, %if.then162
  br label %sw.epilog

sw.bb175:                                         ; preds = %for.body
  %87 = load ptr, ptr %insn_description.addr, align 8, !tbaa !5
  %insn_size176 = getelementptr inbounds %struct.insn_desc, ptr %87, i32 0, i32 3
  %88 = load i16, ptr %insn_size176, align 4, !tbaa !47
  %conv177 = zext i16 %88 to i32
  %add178 = add nsw i32 %conv177, 2
  %conv179 = trunc i32 %add178 to i16
  store i16 %conv179, ptr %insn_size176, align 4, !tbaa !47
  %89 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %90 = load i16, ptr %address.addr, align 2, !tbaa !32
  %inc180 = add i16 %90, 1
  store i16 %inc180, ptr %address.addr, align 2, !tbaa !32
  %call181 = call zeroext i1 @read_byte(ptr noundef %89, ptr noundef %ir, i16 noundef zeroext %90)
  br i1 %call181, label %if.else183, label %if.then182

if.then182:                                       ; preds = %sw.bb175
  store i8 0, ptr %retval1, align 1, !tbaa !67
  br label %if.end191

if.else183:                                       ; preds = %sw.bb175
  %91 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %92 = load i8, ptr %ir, align 1, !tbaa !20
  %call184 = call zeroext i1 @is_loop_post_byte_valid(ptr noundef %91, i8 noundef zeroext %92)
  br i1 %call184, label %if.else186, label %if.then185

if.then185:                                       ; preds = %if.else183
  store i8 0, ptr %retval1, align 1, !tbaa !67
  br label %if.end190

if.else186:                                       ; preds = %if.else183
  %93 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %94 = load i16, ptr %address.addr, align 2, !tbaa !32
  %inc187 = add i16 %94, 1
  store i16 %inc187, ptr %address.addr, align 2, !tbaa !32
  %call188 = call zeroext i1 @read_byte(ptr noundef %93, ptr noundef %ir, i16 noundef zeroext %94)
  %frombool189 = zext i1 %call188 to i8
  store i8 %frombool189, ptr %retval1, align 1, !tbaa !67
  br label %if.end190

if.end190:                                        ; preds = %if.else186, %if.then185
  br label %if.end191

if.end191:                                        ; preds = %if.end190, %if.then182
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  %95 = load ptr, ptr @stderr, align 8, !tbaa !5
  %96 = load ptr, ptr %insn_description.addr, align 8, !tbaa !5
  %hid192 = getelementptr inbounds %struct.insn_desc, ptr %96, i32 0, i32 2
  %97 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom193 = sext i32 %97 to i64
  %arrayidx194 = getelementptr inbounds [2 x i32], ptr %hid192, i64 0, i64 %idxprom193
  %98 = load i32, ptr %arrayidx194, align 4, !tbaa !20
  %call195 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %95, ptr noundef @.str.32, i32 noundef %98)
  store i8 0, ptr %retval1, align 1, !tbaa !67
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end191, %if.end174, %if.end154, %if.end142, %if.end118, %if.end98, %if.end77, %if.end51, %if.end, %sw.bb29, %sw.bb22, %sw.bb9, %sw.bb
  %99 = load i8, ptr %retval1, align 1, !tbaa !67, !range !68, !noundef !69
  %tobool196 = trunc i8 %99 to i1
  br i1 %tobool196, label %if.end198, label %if.then197

if.then197:                                       ; preds = %sw.epilog
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end198:                                        ; preds = %sw.epilog
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end198, %if.then197
  call void @llvm.lifetime.end.p0(i64 1, ptr %is_subset) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr %ir) #6
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup202 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %100 = load i32, ptr %i, align 4, !tbaa !9
  %inc200 = add nsw i32 %100, 1
  store i32 %inc200, ptr %i, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !70

for.end:                                          ; preds = %for.cond
  %101 = load i8, ptr %retval1, align 1, !tbaa !67, !range !68, !noundef !69
  %tobool201 = trunc i8 %101 to i1
  store i1 %tobool201, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup202

cleanup202:                                       ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr %retval1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  %102 = load i1, ptr %retval, align 1
  ret i1 %102
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @is_indexed09_post_byte_valid(ptr noundef %info, ptr noundef %address, i8 noundef zeroext %post_byte, ptr noundef %insn_description) #0 {
entry:
  %retval = alloca i1, align 1
  %info.addr = alloca ptr, align 8
  %address.addr = alloca ptr, align 8
  %post_byte.addr = alloca i8, align 1
  %insn_description.addr = alloca ptr, align 8
  %ir = alloca i8, align 1
  %retval1 = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  store ptr %address, ptr %address.addr, align 8, !tbaa !5
  store i8 %post_byte, ptr %post_byte.addr, align 1, !tbaa !20
  store ptr %insn_description, ptr %insn_description.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr %ir) #6
  store i8 0, ptr %ir, align 1, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 1, ptr %retval1) #6
  %0 = load i8, ptr %post_byte.addr, align 1, !tbaa !20
  %conv = zext i8 %0 to i32
  %and = and i32 %conv, 159
  switch i32 %and, label %sw.epilog [
    i32 135, label %sw.bb
    i32 138, label %sw.bb
    i32 142, label %sw.bb
    i32 143, label %sw.bb
    i32 144, label %sw.bb
    i32 146, label %sw.bb
    i32 151, label %sw.bb
    i32 154, label %sw.bb
    i32 158, label %sw.bb
    i32 136, label %sw.bb2
    i32 140, label %sw.bb2
    i32 152, label %sw.bb2
    i32 156, label %sw.bb2
    i32 137, label %sw.bb4
    i32 141, label %sw.bb4
    i32 153, label %sw.bb4
    i32 157, label %sw.bb4
    i32 159, label %sw.bb15
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %entry, %entry, %entry, %entry
  %1 = load ptr, ptr %insn_description.addr, align 8, !tbaa !5
  %insn_size = getelementptr inbounds %struct.insn_desc, ptr %1, i32 0, i32 3
  %2 = load i16, ptr %insn_size, align 4, !tbaa !47
  %inc = add i16 %2, 1
  store i16 %inc, ptr %insn_size, align 4, !tbaa !47
  %3 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %4 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %5 = load i16, ptr %4, align 2, !tbaa !32
  %inc3 = add i16 %5, 1
  store i16 %inc3, ptr %4, align 2, !tbaa !32
  %call = call zeroext i1 @read_byte(ptr noundef %3, ptr noundef %ir, i16 noundef zeroext %5)
  store i1 %call, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %entry, %entry, %entry, %entry
  %6 = load ptr, ptr %insn_description.addr, align 8, !tbaa !5
  %insn_size5 = getelementptr inbounds %struct.insn_desc, ptr %6, i32 0, i32 3
  %7 = load i16, ptr %insn_size5, align 4, !tbaa !47
  %conv6 = zext i16 %7 to i32
  %add = add nsw i32 %conv6, 2
  %conv7 = trunc i32 %add to i16
  store i16 %conv7, ptr %insn_size5, align 4, !tbaa !47
  %8 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %9 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %10 = load i16, ptr %9, align 2, !tbaa !32
  %conv8 = zext i16 %10 to i32
  %add9 = add nsw i32 %conv8, 1
  %conv10 = trunc i32 %add9 to i16
  %call11 = call zeroext i1 @read_byte(ptr noundef %8, ptr noundef %ir, i16 noundef zeroext %conv10)
  %frombool = zext i1 %call11 to i8
  store i8 %frombool, ptr %retval1, align 1, !tbaa !67
  %11 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %12 = load i16, ptr %11, align 2, !tbaa !32
  %conv12 = zext i16 %12 to i32
  %add13 = add nsw i32 %conv12, 2
  %conv14 = trunc i32 %add13 to i16
  store i16 %conv14, ptr %11, align 2, !tbaa !32
  %13 = load i8, ptr %retval1, align 1, !tbaa !67, !range !68, !noundef !69
  %tobool = trunc i8 %13 to i1
  store i1 %tobool, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb15:                                          ; preds = %entry
  %14 = load ptr, ptr %insn_description.addr, align 8, !tbaa !5
  %insn_size16 = getelementptr inbounds %struct.insn_desc, ptr %14, i32 0, i32 3
  %15 = load i16, ptr %insn_size16, align 4, !tbaa !47
  %conv17 = zext i16 %15 to i32
  %add18 = add nsw i32 %conv17, 2
  %conv19 = trunc i32 %add18 to i16
  store i16 %conv19, ptr %insn_size16, align 4, !tbaa !47
  %16 = load i8, ptr %post_byte.addr, align 1, !tbaa !20
  %conv20 = zext i8 %16 to i32
  %and21 = and i32 %conv20, 96
  %cmp = icmp eq i32 %and21, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %sw.bb15
  %17 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %18 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %19 = load i16, ptr %18, align 2, !tbaa !32
  %conv23 = zext i16 %19 to i32
  %add24 = add nsw i32 %conv23, 1
  %conv25 = trunc i32 %add24 to i16
  %call26 = call zeroext i1 @read_byte(ptr noundef %17, ptr noundef %ir, i16 noundef zeroext %conv25)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.bb15
  %20 = phi i1 [ false, %sw.bb15 ], [ %call26, %land.rhs ]
  %frombool28 = zext i1 %20 to i8
  store i8 %frombool28, ptr %retval1, align 1, !tbaa !67
  %21 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %22 = load i16, ptr %21, align 2, !tbaa !32
  %conv29 = zext i16 %22 to i32
  %add30 = add nsw i32 %conv29, 2
  %conv31 = trunc i32 %add30 to i16
  store i16 %conv31, ptr %21, align 2, !tbaa !32
  %23 = load i8, ptr %retval1, align 1, !tbaa !67, !range !68, !noundef !69
  %tobool32 = trunc i8 %23 to i1
  store i1 %tobool32, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  store i1 true, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %land.end, %sw.bb4, %sw.bb2, %sw.bb
  call void @llvm.lifetime.end.p0(i64 1, ptr %retval1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr %ir) #6
  %24 = load i1, ptr %retval, align 1
  ret i1 %24
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @is_indexed12_post_byte_valid(ptr noundef %info, ptr noundef %address, i8 noundef zeroext %post_byte, ptr noundef %insn_description, i1 noundef zeroext %is_subset) #0 {
entry:
  %retval = alloca i1, align 1
  %info.addr = alloca ptr, align 8
  %address.addr = alloca ptr, align 8
  %post_byte.addr = alloca i8, align 1
  %insn_description.addr = alloca ptr, align 8
  %is_subset.addr = alloca i8, align 1
  %ir = alloca i8, align 1
  %result = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  store ptr %address, ptr %address.addr, align 8, !tbaa !5
  store i8 %post_byte, ptr %post_byte.addr, align 1, !tbaa !20
  store ptr %insn_description, ptr %insn_description.addr, align 8, !tbaa !5
  %frombool = zext i1 %is_subset to i8
  store i8 %frombool, ptr %is_subset.addr, align 1, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 1, ptr %ir) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr %result) #6
  %0 = load i8, ptr %post_byte.addr, align 1, !tbaa !20
  %conv = zext i8 %0 to i32
  %and = and i32 %conv, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i8, ptr %post_byte.addr, align 1, !tbaa !20
  %conv1 = zext i8 %1 to i32
  %and2 = and i32 %conv1, 231
  switch i32 %and2, label %sw.default [
    i32 224, label %sw.bb
    i32 225, label %sw.bb
    i32 226, label %sw.bb7
    i32 227, label %sw.bb7
    i32 228, label %sw.bb23
    i32 229, label %sw.bb23
    i32 230, label %sw.bb23
    i32 231, label %sw.bb23
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  %2 = load i8, ptr %is_subset.addr, align 1, !tbaa !67, !range !68, !noundef !69
  %tobool3 = trunc i8 %2 to i1
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %sw.bb
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %sw.bb
  %3 = load ptr, ptr %insn_description.addr, align 8, !tbaa !5
  %insn_size = getelementptr inbounds %struct.insn_desc, ptr %3, i32 0, i32 3
  %4 = load i16, ptr %insn_size, align 4, !tbaa !47
  %inc = add i16 %4, 1
  store i16 %inc, ptr %insn_size, align 4, !tbaa !47
  %5 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %6 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %7 = load i16, ptr %6, align 2, !tbaa !32
  %inc6 = add i16 %7, 1
  store i16 %inc6, ptr %6, align 2, !tbaa !32
  %call = call zeroext i1 @read_byte(ptr noundef %5, ptr noundef %ir, i16 noundef zeroext %7)
  store i1 %call, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %if.end, %if.end
  %8 = load i8, ptr %is_subset.addr, align 1, !tbaa !67, !range !68, !noundef !69
  %tobool8 = trunc i8 %8 to i1
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %sw.bb7
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end10:                                         ; preds = %sw.bb7
  %9 = load ptr, ptr %insn_description.addr, align 8, !tbaa !5
  %insn_size11 = getelementptr inbounds %struct.insn_desc, ptr %9, i32 0, i32 3
  %10 = load i16, ptr %insn_size11, align 4, !tbaa !47
  %conv12 = zext i16 %10 to i32
  %add = add nsw i32 %conv12, 2
  %conv13 = trunc i32 %add to i16
  store i16 %conv13, ptr %insn_size11, align 4, !tbaa !47
  %11 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %12 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %13 = load i16, ptr %12, align 2, !tbaa !32
  %conv14 = zext i16 %13 to i32
  %add15 = add nsw i32 %conv14, 1
  %conv16 = trunc i32 %add15 to i16
  %call17 = call zeroext i1 @read_byte(ptr noundef %11, ptr noundef %ir, i16 noundef zeroext %conv16)
  %frombool18 = zext i1 %call17 to i8
  store i8 %frombool18, ptr %result, align 1, !tbaa !67
  %14 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %15 = load i16, ptr %14, align 2, !tbaa !32
  %conv19 = zext i16 %15 to i32
  %add20 = add nsw i32 %conv19, 2
  %conv21 = trunc i32 %add20 to i16
  store i16 %conv21, ptr %14, align 2, !tbaa !32
  %16 = load i8, ptr %result, align 1, !tbaa !67, !range !68, !noundef !69
  %tobool22 = trunc i8 %16 to i1
  store i1 %tobool22, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb23:                                          ; preds = %if.end, %if.end, %if.end, %if.end
  br label %sw.default

sw.default:                                       ; preds = %if.end, %sw.bb23
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  store i1 true, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end10, %if.then9, %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %result) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr %ir) #6
  %17 = load i1, ptr %retval, align 1
  ret i1 %17
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @is_tfm_reg_valid(ptr noundef %info, i8 noundef zeroext %reg_nibble) #0 {
entry:
  %info.addr = alloca ptr, align 8
  %reg_nibble.addr = alloca i8, align 1
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  store i8 %reg_nibble, ptr %reg_nibble.addr, align 1, !tbaa !20
  %0 = load i8, ptr %reg_nibble.addr, align 1, !tbaa !20
  %conv = zext i8 %0 to i32
  %cmp = icmp sle i32 %conv, 4
  ret i1 %cmp
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @is_tfr09_reg_valid(ptr noundef %info, i8 noundef zeroext %reg_nibble) #0 {
entry:
  %retval = alloca i1, align 1
  %info.addr = alloca ptr, align 8
  %reg_nibble.addr = alloca i8, align 1
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  store i8 %reg_nibble, ptr %reg_nibble.addr, align 1, !tbaa !20
  %0 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %cpu = getelementptr inbounds %struct.m680x_info, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %cpu, align 8, !tbaa !16
  %tfr_reg_valid = getelementptr inbounds %struct.cpu_tables, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %tfr_reg_valid, align 8, !tbaa !71
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %cpu1 = getelementptr inbounds %struct.m680x_info, ptr %3, i32 0, i32 5
  %4 = load ptr, ptr %cpu1, align 8, !tbaa !16
  %tfr_reg_valid2 = getelementptr inbounds %struct.cpu_tables, ptr %4, i32 0, i32 7
  %5 = load ptr, ptr %tfr_reg_valid2, align 8, !tbaa !71
  %6 = load i8, ptr %reg_nibble.addr, align 1, !tbaa !20
  %idxprom = zext i8 %6 to i64
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 %idxprom
  %7 = load i8, ptr %arrayidx, align 1, !tbaa !67, !range !68, !noundef !69
  %tobool = trunc i8 %7 to i1
  store i1 %tobool, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  store i1 true, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i1, ptr %retval, align 1
  ret i1 %8
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @is_exg_tfr12_post_byte_valid(ptr noundef %info, i8 noundef zeroext %post_byte) #0 {
entry:
  %info.addr = alloca ptr, align 8
  %post_byte.addr = alloca i8, align 1
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  store i8 %post_byte, ptr %post_byte.addr, align 1, !tbaa !20
  %0 = load i8, ptr %post_byte.addr, align 1, !tbaa !20
  %conv = zext i8 %0 to i32
  %and = and i32 %conv, 8
  %tobool = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool, true
  ret i1 %lnot
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @is_loop_post_byte_valid(ptr noundef %info, i8 noundef zeroext %post_byte) #0 {
entry:
  %retval = alloca i1, align 1
  %info.addr = alloca ptr, align 8
  %post_byte.addr = alloca i8, align 1
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  store i8 %post_byte, ptr %post_byte.addr, align 1, !tbaa !20
  %0 = load i8, ptr %post_byte.addr, align 1, !tbaa !20
  %conv = zext i8 %0 to i32
  %cmp = icmp sge i32 %conv, 192
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8, ptr %post_byte.addr, align 1, !tbaa !20
  %conv2 = zext i8 %1 to i32
  %and = and i32 %conv2, 7
  %cmp3 = icmp ne i32 %and, 2
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %2 = load i8, ptr %post_byte.addr, align 1, !tbaa !20
  %conv5 = zext i8 %2 to i32
  %and6 = and i32 %conv5, 7
  %cmp7 = icmp ne i32 %and6, 3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %3 = phi i1 [ false, %if.end ], [ %cmp7, %land.rhs ]
  store i1 %3, ptr %retval, align 1
  br label %return

return:                                           ; preds = %land.end, %if.then
  %4 = load i1, ptr %retval, align 1
  ret i1 %4
}

; Function Attrs: nounwind uwtable
define internal void @relative8_hdlr(ptr noundef %MI, ptr noundef %info, ptr noundef %address) #0 {
entry:
  %MI.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %address.addr = alloca ptr, align 8
  %offset = alloca i16, align 2
  store ptr %MI, ptr %MI.addr, align 8, !tbaa !5
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  store ptr %address, ptr %address.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 2, ptr %offset) #6
  store i16 0, ptr %offset, align 2, !tbaa !32
  %0 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %2 = load i16, ptr %1, align 2, !tbaa !32
  %inc = add i16 %2, 1
  store i16 %inc, ptr %1, align 2, !tbaa !32
  %call = call zeroext i1 @read_byte_sign_extended(ptr noundef %0, ptr noundef %offset, i16 noundef zeroext %2)
  %3 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %4 = load i16, ptr %offset, align 2, !tbaa !32
  %5 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %6 = load i16, ptr %5, align 2, !tbaa !32
  %conv = zext i16 %6 to i32
  %7 = load i16, ptr %offset, align 2, !tbaa !32
  %conv1 = sext i16 %7 to i32
  %add = add nsw i32 %conv, %conv1
  %conv2 = trunc i32 %add to i16
  call void @add_rel_operand(ptr noundef %3, i16 noundef signext %4, i16 noundef zeroext %conv2)
  %8 = load ptr, ptr %MI.addr, align 8, !tbaa !5
  %flat_insn = getelementptr inbounds %struct.MCInst, ptr %8, i32 0, i32 6
  %9 = load ptr, ptr %flat_insn, align 8, !tbaa !37
  %detail = getelementptr inbounds %struct.cs_insn, ptr %9, i32 0, i32 6
  %10 = load ptr, ptr %detail, align 8, !tbaa !39
  call void @add_insn_group(ptr noundef %10, i32 noundef 7)
  %11 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %insn = getelementptr inbounds %struct.m680x_info, ptr %11, i32 0, i32 6
  %12 = load i32, ptr %insn, align 8, !tbaa !44
  %cmp = icmp ne i32 %12, 68
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %13 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %insn4 = getelementptr inbounds %struct.m680x_info, ptr %13, i32 0, i32 6
  %14 = load i32, ptr %insn4, align 8, !tbaa !44
  %cmp5 = icmp ne i32 %14, 71
  br i1 %cmp5, label %land.lhs.true7, label %if.end

land.lhs.true7:                                   ; preds = %land.lhs.true
  %15 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %insn8 = getelementptr inbounds %struct.m680x_info, ptr %15, i32 0, i32 6
  %16 = load i32, ptr %insn8, align 8, !tbaa !44
  %cmp9 = icmp ne i32 %16, 69
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true7
  %17 = load ptr, ptr %MI.addr, align 8, !tbaa !5
  call void @add_reg_to_rw_list(ptr noundef %17, i32 noundef 8, i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true7, %land.lhs.true, %entry
  call void @llvm.lifetime.end.p0(i64 2, ptr %offset) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @relative16_hdlr(ptr noundef %MI, ptr noundef %info, ptr noundef %address) #0 {
entry:
  %MI.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %address.addr = alloca ptr, align 8
  %offset = alloca i16, align 2
  store ptr %MI, ptr %MI.addr, align 8, !tbaa !5
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  store ptr %address, ptr %address.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 2, ptr %offset) #6
  store i16 0, ptr %offset, align 2, !tbaa !32
  %0 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %2 = load i16, ptr %1, align 2, !tbaa !32
  %call = call zeroext i1 @read_word(ptr noundef %0, ptr noundef %offset, i16 noundef zeroext %2)
  %3 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %4 = load i16, ptr %3, align 2, !tbaa !32
  %conv = zext i16 %4 to i32
  %add = add nsw i32 %conv, 2
  %conv1 = trunc i32 %add to i16
  store i16 %conv1, ptr %3, align 2, !tbaa !32
  %5 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %6 = load i16, ptr %offset, align 2, !tbaa !32
  %7 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %8 = load i16, ptr %7, align 2, !tbaa !32
  %conv2 = zext i16 %8 to i32
  %9 = load i16, ptr %offset, align 2, !tbaa !32
  %conv3 = zext i16 %9 to i32
  %add4 = add nsw i32 %conv2, %conv3
  %conv5 = trunc i32 %add4 to i16
  call void @add_rel_operand(ptr noundef %5, i16 noundef signext %6, i16 noundef zeroext %conv5)
  %10 = load ptr, ptr %MI.addr, align 8, !tbaa !5
  %flat_insn = getelementptr inbounds %struct.MCInst, ptr %10, i32 0, i32 6
  %11 = load ptr, ptr %flat_insn, align 8, !tbaa !37
  %detail = getelementptr inbounds %struct.cs_insn, ptr %11, i32 0, i32 6
  %12 = load ptr, ptr %detail, align 8, !tbaa !39
  call void @add_insn_group(ptr noundef %12, i32 noundef 7)
  %13 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %insn = getelementptr inbounds %struct.m680x_info, ptr %13, i32 0, i32 6
  %14 = load i32, ptr %insn, align 8, !tbaa !44
  %cmp = icmp ne i32 %14, 185
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %15 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %insn7 = getelementptr inbounds %struct.m680x_info, ptr %15, i32 0, i32 6
  %16 = load i32, ptr %insn7, align 8, !tbaa !44
  %cmp8 = icmp ne i32 %16, 187
  br i1 %cmp8, label %land.lhs.true10, label %if.end

land.lhs.true10:                                  ; preds = %land.lhs.true
  %17 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %insn11 = getelementptr inbounds %struct.m680x_info, ptr %17, i32 0, i32 6
  %18 = load i32, ptr %insn11, align 8, !tbaa !44
  %cmp12 = icmp ne i32 %18, 186
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true10
  %19 = load ptr, ptr %MI.addr, align 8, !tbaa !5
  call void @add_reg_to_rw_list(ptr noundef %19, i32 noundef 8, i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true10, %land.lhs.true, %entry
  call void @llvm.lifetime.end.p0(i64 2, ptr %offset) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @immediate_hdlr(ptr noundef %MI, ptr noundef %info, ptr noundef %address) #0 {
entry:
  %MI.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %address.addr = alloca ptr, align 8
  %m680x = alloca ptr, align 8
  %op = alloca ptr, align 8
  %word = alloca i16, align 2
  %sword = alloca i16, align 2
  store ptr %MI, ptr %MI.addr, align 8, !tbaa !5
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  store ptr %address, ptr %address.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %m680x) #6
  %0 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %m680x1 = getelementptr inbounds %struct.m680x_info, ptr %0, i32 0, i32 4
  store ptr %m680x1, ptr %m680x, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #6
  %1 = load ptr, ptr %m680x, align 8, !tbaa !5
  %operands = getelementptr inbounds %struct.cs_m680x, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %m680x, align 8, !tbaa !5
  %op_count = getelementptr inbounds %struct.cs_m680x, ptr %2, i32 0, i32 1
  %3 = load i8, ptr %op_count, align 1, !tbaa !53
  %inc = add i8 %3, 1
  store i8 %inc, ptr %op_count, align 1, !tbaa !53
  %idxprom = zext i8 %3 to i64
  %arrayidx = getelementptr inbounds [9 x %struct.cs_m680x_op], ptr %operands, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %op, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 2, ptr %word) #6
  store i16 0, ptr %word, align 2, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 2, ptr %sword) #6
  store i16 0, ptr %sword, align 2, !tbaa !32
  %4 = load ptr, ptr %op, align 8, !tbaa !5
  %type = getelementptr inbounds %struct.cs_m680x_op, ptr %4, i32 0, i32 0
  store i32 2, ptr %type, align 4, !tbaa !54
  %5 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %6 = load ptr, ptr %op, align 8, !tbaa !5
  call void @set_operand_size(ptr noundef %5, ptr noundef %6, i8 noundef zeroext 1)
  %7 = load ptr, ptr %op, align 8, !tbaa !5
  %size = getelementptr inbounds %struct.cs_m680x_op, ptr %7, i32 0, i32 2
  %8 = load i8, ptr %size, align 4, !tbaa !56
  %conv = zext i8 %8 to i32
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
    i32 4, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  %9 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %10 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %11 = load i16, ptr %10, align 2, !tbaa !32
  %call = call zeroext i1 @read_byte_sign_extended(ptr noundef %9, ptr noundef %sword, i16 noundef zeroext %11)
  %12 = load i16, ptr %sword, align 2, !tbaa !32
  %conv2 = sext i16 %12 to i32
  %13 = load ptr, ptr %op, align 8, !tbaa !5
  %14 = getelementptr inbounds %struct.cs_m680x_op, ptr %13, i32 0, i32 1
  store i32 %conv2, ptr %14, align 4, !tbaa !20
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %15 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %16 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %17 = load i16, ptr %16, align 2, !tbaa !32
  %call4 = call zeroext i1 @read_word(ptr noundef %15, ptr noundef %word, i16 noundef zeroext %17)
  %18 = load i16, ptr %word, align 2, !tbaa !32
  %conv5 = sext i16 %18 to i32
  %19 = load ptr, ptr %op, align 8, !tbaa !5
  %20 = getelementptr inbounds %struct.cs_m680x_op, ptr %19, i32 0, i32 1
  store i32 %conv5, ptr %20, align 4, !tbaa !20
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %21 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %22 = load ptr, ptr %op, align 8, !tbaa !5
  %23 = getelementptr inbounds %struct.cs_m680x_op, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %25 = load i16, ptr %24, align 2, !tbaa !32
  %call7 = call zeroext i1 @read_sdword(ptr noundef %21, ptr noundef %23, i16 noundef zeroext %25)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %26 = load ptr, ptr %op, align 8, !tbaa !5
  %27 = getelementptr inbounds %struct.cs_m680x_op, ptr %26, i32 0, i32 1
  store i32 0, ptr %27, align 4, !tbaa !20
  %28 = load ptr, ptr @stderr, align 8, !tbaa !5
  %29 = load ptr, ptr %op, align 8, !tbaa !5
  %size8 = getelementptr inbounds %struct.cs_m680x_op, ptr %29, i32 0, i32 2
  %30 = load i8, ptr %size8, align 4, !tbaa !56
  %conv9 = zext i8 %30 to i32
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef @.str.34, i32 noundef %conv9)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %sw.bb3, %sw.bb
  %31 = load ptr, ptr %op, align 8, !tbaa !5
  %size11 = getelementptr inbounds %struct.cs_m680x_op, ptr %31, i32 0, i32 2
  %32 = load i8, ptr %size11, align 4, !tbaa !56
  %conv12 = zext i8 %32 to i32
  %33 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %34 = load i16, ptr %33, align 2, !tbaa !32
  %conv13 = zext i16 %34 to i32
  %add = add nsw i32 %conv13, %conv12
  %conv14 = trunc i32 %add to i16
  store i16 %conv14, ptr %33, align 2, !tbaa !32
  call void @llvm.lifetime.end.p0(i64 2, ptr %sword) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr %word) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %m680x) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @direct_hdlr(ptr noundef %MI, ptr noundef %info, ptr noundef %address) #0 {
entry:
  %MI.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %address.addr = alloca ptr, align 8
  %m680x = alloca ptr, align 8
  %op = alloca ptr, align 8
  store ptr %MI, ptr %MI.addr, align 8, !tbaa !5
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  store ptr %address, ptr %address.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %m680x) #6
  %0 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %m680x1 = getelementptr inbounds %struct.m680x_info, ptr %0, i32 0, i32 4
  store ptr %m680x1, ptr %m680x, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #6
  %1 = load ptr, ptr %m680x, align 8, !tbaa !5
  %operands = getelementptr inbounds %struct.cs_m680x, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %m680x, align 8, !tbaa !5
  %op_count = getelementptr inbounds %struct.cs_m680x, ptr %2, i32 0, i32 1
  %3 = load i8, ptr %op_count, align 1, !tbaa !53
  %inc = add i8 %3, 1
  store i8 %inc, ptr %op_count, align 1, !tbaa !53
  %idxprom = zext i8 %3 to i64
  %arrayidx = getelementptr inbounds [9 x %struct.cs_m680x_op], ptr %operands, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %op, align 8, !tbaa !5
  %4 = load ptr, ptr %op, align 8, !tbaa !5
  %type = getelementptr inbounds %struct.cs_m680x_op, ptr %4, i32 0, i32 0
  store i32 5, ptr %type, align 4, !tbaa !54
  %5 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %6 = load ptr, ptr %op, align 8, !tbaa !5
  call void @set_operand_size(ptr noundef %5, ptr noundef %6, i8 noundef zeroext 1)
  %7 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %8 = load ptr, ptr %op, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.cs_m680x_op, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %11 = load i16, ptr %10, align 2, !tbaa !32
  %inc2 = add i16 %11, 1
  store i16 %inc2, ptr %10, align 2, !tbaa !32
  %call = call zeroext i1 @read_byte(ptr noundef %7, ptr noundef %9, i16 noundef zeroext %11)
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %m680x) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @extended_hdlr(ptr noundef %MI, ptr noundef %info, ptr noundef %address) #0 {
entry:
  %MI.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %address.addr = alloca ptr, align 8
  %m680x = alloca ptr, align 8
  %op = alloca ptr, align 8
  store ptr %MI, ptr %MI.addr, align 8, !tbaa !5
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  store ptr %address, ptr %address.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %m680x) #6
  %0 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %m680x1 = getelementptr inbounds %struct.m680x_info, ptr %0, i32 0, i32 4
  store ptr %m680x1, ptr %m680x, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #6
  %1 = load ptr, ptr %m680x, align 8, !tbaa !5
  %operands = getelementptr inbounds %struct.cs_m680x, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %m680x, align 8, !tbaa !5
  %op_count = getelementptr inbounds %struct.cs_m680x, ptr %2, i32 0, i32 1
  %3 = load i8, ptr %op_count, align 1, !tbaa !53
  %inc = add i8 %3, 1
  store i8 %inc, ptr %op_count, align 1, !tbaa !53
  %idxprom = zext i8 %3 to i64
  %arrayidx = getelementptr inbounds [9 x %struct.cs_m680x_op], ptr %operands, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %op, align 8, !tbaa !5
  %4 = load ptr, ptr %op, align 8, !tbaa !5
  %type = getelementptr inbounds %struct.cs_m680x_op, ptr %4, i32 0, i32 0
  store i32 4, ptr %type, align 4, !tbaa !54
  %5 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %6 = load ptr, ptr %op, align 8, !tbaa !5
  call void @set_operand_size(ptr noundef %5, ptr noundef %6, i8 noundef zeroext 1)
  %7 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %8 = load ptr, ptr %op, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.cs_m680x_op, ptr %8, i32 0, i32 1
  %address2 = getelementptr inbounds %struct.m680x_op_ext, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %11 = load i16, ptr %10, align 2, !tbaa !32
  %call = call zeroext i1 @read_word(ptr noundef %7, ptr noundef %address2, i16 noundef zeroext %11)
  %12 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %13 = load i16, ptr %12, align 2, !tbaa !32
  %conv = zext i16 %13 to i32
  %add = add nsw i32 %conv, 2
  %conv3 = trunc i32 %add to i16
  store i16 %conv3, ptr %12, align 2, !tbaa !32
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %m680x) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @indexedX_hdlr(ptr noundef %MI, ptr noundef %info, ptr noundef %address) #0 {
entry:
  %MI.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %address.addr = alloca ptr, align 8
  %offset = alloca i8, align 1
  store ptr %MI, ptr %MI.addr, align 8, !tbaa !5
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  store ptr %address, ptr %address.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr %offset) #6
  store i8 0, ptr %offset, align 1, !tbaa !20
  %0 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %2 = load i16, ptr %1, align 2, !tbaa !32
  %inc = add i16 %2, 1
  store i16 %inc, ptr %1, align 2, !tbaa !32
  %call = call zeroext i1 @read_byte(ptr noundef %0, ptr noundef %offset, i16 noundef zeroext %2)
  %3 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %4 = load i8, ptr %offset, align 1, !tbaa !20
  %conv = zext i8 %4 to i16
  call void @add_indexed_operand(ptr noundef %3, i32 noundef 13, i1 noundef zeroext false, i8 noundef zeroext 0, i8 noundef zeroext 8, i16 noundef zeroext %conv, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 1, ptr %offset) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @indexedY_hdlr(ptr noundef %MI, ptr noundef %info, ptr noundef %address) #0 {
entry:
  %MI.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %address.addr = alloca ptr, align 8
  %offset = alloca i8, align 1
  store ptr %MI, ptr %MI.addr, align 8, !tbaa !5
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  store ptr %address, ptr %address.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr %offset) #6
  store i8 0, ptr %offset, align 1, !tbaa !20
  %0 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %2 = load i16, ptr %1, align 2, !tbaa !32
  %inc = add i16 %2, 1
  store i16 %inc, ptr %1, align 2, !tbaa !32
  %call = call zeroext i1 @read_byte(ptr noundef %0, ptr noundef %offset, i16 noundef zeroext %2)
  %3 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %4 = load i8, ptr %offset, align 1, !tbaa !20
  %conv = zext i8 %4 to i16
  call void @add_indexed_operand(ptr noundef %3, i32 noundef 14, i1 noundef zeroext false, i8 noundef zeroext 0, i8 noundef zeroext 8, i16 noundef zeroext %conv, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 1, ptr %offset) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @indexed09_hdlr(ptr noundef %MI, ptr noundef %info, ptr noundef %address) #0 {
entry:
  %MI.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %address.addr = alloca ptr, align 8
  %m680x = alloca ptr, align 8
  %op = alloca ptr, align 8
  %post_byte = alloca i8, align 1
  %offset = alloca i16, align 2
  %soffset = alloca i16, align 2
  store ptr %MI, ptr %MI.addr, align 8, !tbaa !5
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  store ptr %address, ptr %address.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %m680x) #6
  %0 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %m680x1 = getelementptr inbounds %struct.m680x_info, ptr %0, i32 0, i32 4
  store ptr %m680x1, ptr %m680x, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #6
  %1 = load ptr, ptr %m680x, align 8, !tbaa !5
  %operands = getelementptr inbounds %struct.cs_m680x, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %m680x, align 8, !tbaa !5
  %op_count = getelementptr inbounds %struct.cs_m680x, ptr %2, i32 0, i32 1
  %3 = load i8, ptr %op_count, align 1, !tbaa !53
  %inc = add i8 %3, 1
  store i8 %inc, ptr %op_count, align 1, !tbaa !53
  %idxprom = zext i8 %3 to i64
  %arrayidx = getelementptr inbounds [9 x %struct.cs_m680x_op], ptr %operands, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %op, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr %post_byte) #6
  store i8 0, ptr %post_byte, align 1, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 2, ptr %offset) #6
  store i16 0, ptr %offset, align 2, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 2, ptr %soffset) #6
  store i16 0, ptr %soffset, align 2, !tbaa !32
  %4 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %5 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %6 = load i16, ptr %5, align 2, !tbaa !32
  %inc2 = add i16 %6, 1
  store i16 %inc2, ptr %5, align 2, !tbaa !32
  %call = call zeroext i1 @read_byte(ptr noundef %4, ptr noundef %post_byte, i16 noundef zeroext %6)
  %7 = load ptr, ptr %op, align 8, !tbaa !5
  %type = getelementptr inbounds %struct.cs_m680x_op, ptr %7, i32 0, i32 0
  store i32 3, ptr %type, align 4, !tbaa !54
  %8 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %9 = load ptr, ptr %op, align 8, !tbaa !5
  call void @set_operand_size(ptr noundef %8, ptr noundef %9, i8 noundef zeroext 1)
  %10 = load i8, ptr %post_byte, align 1, !tbaa !20
  %conv = zext i8 %10 to i32
  %shr = ashr i32 %conv, 5
  %and = and i32 %shr, 3
  %idxprom3 = sext i32 %and to i64
  %arrayidx4 = getelementptr inbounds [4 x i32], ptr @g_rr5_to_reg_ids, i64 0, i64 %idxprom3
  %11 = load i32, ptr %arrayidx4, align 4, !tbaa !20
  %12 = load ptr, ptr %op, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.cs_m680x_op, ptr %12, i32 0, i32 1
  %base_reg = getelementptr inbounds %struct.m680x_op_idx, ptr %13, i32 0, i32 0
  store i32 %11, ptr %base_reg, align 4, !tbaa !20
  %14 = load ptr, ptr %op, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.cs_m680x_op, ptr %14, i32 0, i32 1
  %offset_reg = getelementptr inbounds %struct.m680x_op_idx, ptr %15, i32 0, i32 1
  store i32 0, ptr %offset_reg, align 4, !tbaa !20
  %16 = load i8, ptr %post_byte, align 1, !tbaa !20
  %conv5 = zext i8 %16 to i32
  %and6 = and i32 %conv5, 128
  %tobool = icmp ne i32 %and6, 0
  br i1 %tobool, label %if.else22, label %if.then

if.then:                                          ; preds = %entry
  %17 = load i8, ptr %post_byte, align 1, !tbaa !20
  %conv7 = zext i8 %17 to i32
  %and8 = and i32 %conv7, 16
  %cmp = icmp eq i32 %and8, 16
  br i1 %cmp, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then
  %18 = load i8, ptr %post_byte, align 1, !tbaa !20
  %conv11 = zext i8 %18 to i32
  %or = or i32 %conv11, 65520
  %conv12 = trunc i32 %or to i16
  %19 = load ptr, ptr %op, align 8, !tbaa !5
  %20 = getelementptr inbounds %struct.cs_m680x_op, ptr %19, i32 0, i32 1
  %offset13 = getelementptr inbounds %struct.m680x_op_idx, ptr %20, i32 0, i32 2
  store i16 %conv12, ptr %offset13, align 4, !tbaa !20
  br label %if.end

if.else:                                          ; preds = %if.then
  %21 = load i8, ptr %post_byte, align 1, !tbaa !20
  %conv14 = zext i8 %21 to i32
  %and15 = and i32 %conv14, 15
  %conv16 = trunc i32 %and15 to i16
  %22 = load ptr, ptr %op, align 8, !tbaa !5
  %23 = getelementptr inbounds %struct.cs_m680x_op, ptr %22, i32 0, i32 1
  %offset17 = getelementptr inbounds %struct.m680x_op_idx, ptr %23, i32 0, i32 2
  store i16 %conv16, ptr %offset17, align 4, !tbaa !20
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then10
  %24 = load ptr, ptr %op, align 8, !tbaa !5
  %25 = getelementptr inbounds %struct.cs_m680x_op, ptr %24, i32 0, i32 1
  %offset18 = getelementptr inbounds %struct.m680x_op_idx, ptr %25, i32 0, i32 2
  %26 = load i16, ptr %offset18, align 4, !tbaa !20
  %conv19 = sext i16 %26 to i32
  %27 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %28 = load i16, ptr %27, align 2, !tbaa !32
  %conv20 = zext i16 %28 to i32
  %add = add nsw i32 %conv19, %conv20
  %conv21 = trunc i32 %add to i16
  %29 = load ptr, ptr %op, align 8, !tbaa !5
  %30 = getelementptr inbounds %struct.cs_m680x_op, ptr %29, i32 0, i32 1
  %offset_addr = getelementptr inbounds %struct.m680x_op_idx, ptr %30, i32 0, i32 3
  store i16 %conv21, ptr %offset_addr, align 2, !tbaa !20
  %31 = load ptr, ptr %op, align 8, !tbaa !5
  %32 = getelementptr inbounds %struct.cs_m680x_op, ptr %31, i32 0, i32 1
  %offset_bits = getelementptr inbounds %struct.m680x_op_idx, ptr %32, i32 0, i32 4
  store i8 5, ptr %offset_bits, align 4, !tbaa !20
  br label %if.end99

if.else22:                                        ; preds = %entry
  %33 = load i8, ptr %post_byte, align 1, !tbaa !20
  %conv23 = zext i8 %33 to i32
  %and24 = and i32 %conv23, 16
  %cmp25 = icmp eq i32 %and24, 16
  br i1 %cmp25, label %if.then27, label %if.end31

if.then27:                                        ; preds = %if.else22
  %34 = load ptr, ptr %op, align 8, !tbaa !5
  %35 = getelementptr inbounds %struct.cs_m680x_op, ptr %34, i32 0, i32 1
  %flags = getelementptr inbounds %struct.m680x_op_idx, ptr %35, i32 0, i32 6
  %36 = load i8, ptr %flags, align 2, !tbaa !20
  %conv28 = zext i8 %36 to i32
  %or29 = or i32 %conv28, 1
  %conv30 = trunc i32 %or29 to i8
  store i8 %conv30, ptr %flags, align 2, !tbaa !20
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.else22
  %37 = load i8, ptr %post_byte, align 1, !tbaa !20
  %conv32 = zext i8 %37 to i32
  %and33 = and i32 %conv32, 31
  switch i32 %and33, label %sw.default [
    i32 0, label %sw.bb
    i32 17, label %sw.bb38
    i32 1, label %sw.bb38
    i32 2, label %sw.bb44
    i32 19, label %sw.bb46
    i32 3, label %sw.bb46
    i32 20, label %sw.bb48
    i32 4, label %sw.bb48
    i32 21, label %sw.bb49
    i32 5, label %sw.bb49
    i32 22, label %sw.bb51
    i32 6, label %sw.bb51
    i32 28, label %sw.bb53
    i32 12, label %sw.bb53
    i32 24, label %sw.bb64
    i32 8, label %sw.bb64
    i32 29, label %sw.bb69
    i32 13, label %sw.bb69
    i32 25, label %sw.bb82
    i32 9, label %sw.bb82
    i32 27, label %sw.bb89
    i32 11, label %sw.bb89
    i32 31, label %sw.bb91
  ]

sw.bb:                                            ; preds = %if.end31
  %38 = load ptr, ptr %op, align 8, !tbaa !5
  %39 = getelementptr inbounds %struct.cs_m680x_op, ptr %38, i32 0, i32 1
  %inc_dec = getelementptr inbounds %struct.m680x_op_idx, ptr %39, i32 0, i32 5
  store i8 1, ptr %inc_dec, align 1, !tbaa !20
  %40 = load ptr, ptr %op, align 8, !tbaa !5
  %41 = getelementptr inbounds %struct.cs_m680x_op, ptr %40, i32 0, i32 1
  %flags34 = getelementptr inbounds %struct.m680x_op_idx, ptr %41, i32 0, i32 6
  %42 = load i8, ptr %flags34, align 2, !tbaa !20
  %conv35 = zext i8 %42 to i32
  %or36 = or i32 %conv35, 4
  %conv37 = trunc i32 %or36 to i8
  store i8 %conv37, ptr %flags34, align 2, !tbaa !20
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.end31, %if.end31
  %43 = load ptr, ptr %op, align 8, !tbaa !5
  %44 = getelementptr inbounds %struct.cs_m680x_op, ptr %43, i32 0, i32 1
  %inc_dec39 = getelementptr inbounds %struct.m680x_op_idx, ptr %44, i32 0, i32 5
  store i8 2, ptr %inc_dec39, align 1, !tbaa !20
  %45 = load ptr, ptr %op, align 8, !tbaa !5
  %46 = getelementptr inbounds %struct.cs_m680x_op, ptr %45, i32 0, i32 1
  %flags40 = getelementptr inbounds %struct.m680x_op_idx, ptr %46, i32 0, i32 6
  %47 = load i8, ptr %flags40, align 2, !tbaa !20
  %conv41 = zext i8 %47 to i32
  %or42 = or i32 %conv41, 4
  %conv43 = trunc i32 %or42 to i8
  store i8 %conv43, ptr %flags40, align 2, !tbaa !20
  br label %sw.epilog

sw.bb44:                                          ; preds = %if.end31
  %48 = load ptr, ptr %op, align 8, !tbaa !5
  %49 = getelementptr inbounds %struct.cs_m680x_op, ptr %48, i32 0, i32 1
  %inc_dec45 = getelementptr inbounds %struct.m680x_op_idx, ptr %49, i32 0, i32 5
  store i8 -1, ptr %inc_dec45, align 1, !tbaa !20
  br label %sw.epilog

sw.bb46:                                          ; preds = %if.end31, %if.end31
  %50 = load ptr, ptr %op, align 8, !tbaa !5
  %51 = getelementptr inbounds %struct.cs_m680x_op, ptr %50, i32 0, i32 1
  %inc_dec47 = getelementptr inbounds %struct.m680x_op_idx, ptr %51, i32 0, i32 5
  store i8 -2, ptr %inc_dec47, align 1, !tbaa !20
  br label %sw.epilog

sw.bb48:                                          ; preds = %if.end31, %if.end31
  br label %sw.epilog

sw.bb49:                                          ; preds = %if.end31, %if.end31
  %52 = load ptr, ptr %op, align 8, !tbaa !5
  %53 = getelementptr inbounds %struct.cs_m680x_op, ptr %52, i32 0, i32 1
  %offset_reg50 = getelementptr inbounds %struct.m680x_op_idx, ptr %53, i32 0, i32 1
  store i32 2, ptr %offset_reg50, align 4, !tbaa !20
  br label %sw.epilog

sw.bb51:                                          ; preds = %if.end31, %if.end31
  %54 = load ptr, ptr %op, align 8, !tbaa !5
  %55 = getelementptr inbounds %struct.cs_m680x_op, ptr %54, i32 0, i32 1
  %offset_reg52 = getelementptr inbounds %struct.m680x_op_idx, ptr %55, i32 0, i32 1
  store i32 1, ptr %offset_reg52, align 4, !tbaa !20
  br label %sw.epilog

sw.bb53:                                          ; preds = %if.end31, %if.end31
  %56 = load ptr, ptr %op, align 8, !tbaa !5
  %57 = getelementptr inbounds %struct.cs_m680x_op, ptr %56, i32 0, i32 1
  %base_reg54 = getelementptr inbounds %struct.m680x_op_idx, ptr %57, i32 0, i32 0
  store i32 19, ptr %base_reg54, align 4, !tbaa !20
  %58 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %59 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %60 = load i16, ptr %59, align 2, !tbaa !32
  %inc55 = add i16 %60, 1
  store i16 %inc55, ptr %59, align 2, !tbaa !32
  %call56 = call zeroext i1 @read_byte_sign_extended(ptr noundef %58, ptr noundef %soffset, i16 noundef zeroext %60)
  %61 = load i16, ptr %offset, align 2, !tbaa !32
  %conv57 = zext i16 %61 to i32
  %62 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %63 = load i16, ptr %62, align 2, !tbaa !32
  %conv58 = zext i16 %63 to i32
  %add59 = add nsw i32 %conv57, %conv58
  %conv60 = trunc i32 %add59 to i16
  %64 = load ptr, ptr %op, align 8, !tbaa !5
  %65 = getelementptr inbounds %struct.cs_m680x_op, ptr %64, i32 0, i32 1
  %offset_addr61 = getelementptr inbounds %struct.m680x_op_idx, ptr %65, i32 0, i32 3
  store i16 %conv60, ptr %offset_addr61, align 2, !tbaa !20
  %66 = load i16, ptr %soffset, align 2, !tbaa !32
  %67 = load ptr, ptr %op, align 8, !tbaa !5
  %68 = getelementptr inbounds %struct.cs_m680x_op, ptr %67, i32 0, i32 1
  %offset62 = getelementptr inbounds %struct.m680x_op_idx, ptr %68, i32 0, i32 2
  store i16 %66, ptr %offset62, align 4, !tbaa !20
  %69 = load ptr, ptr %op, align 8, !tbaa !5
  %70 = getelementptr inbounds %struct.cs_m680x_op, ptr %69, i32 0, i32 1
  %offset_bits63 = getelementptr inbounds %struct.m680x_op_idx, ptr %70, i32 0, i32 4
  store i8 8, ptr %offset_bits63, align 4, !tbaa !20
  br label %sw.epilog

sw.bb64:                                          ; preds = %if.end31, %if.end31
  %71 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %72 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %73 = load i16, ptr %72, align 2, !tbaa !32
  %inc65 = add i16 %73, 1
  store i16 %inc65, ptr %72, align 2, !tbaa !32
  %call66 = call zeroext i1 @read_byte_sign_extended(ptr noundef %71, ptr noundef %soffset, i16 noundef zeroext %73)
  %74 = load i16, ptr %soffset, align 2, !tbaa !32
  %75 = load ptr, ptr %op, align 8, !tbaa !5
  %76 = getelementptr inbounds %struct.cs_m680x_op, ptr %75, i32 0, i32 1
  %offset67 = getelementptr inbounds %struct.m680x_op_idx, ptr %76, i32 0, i32 2
  store i16 %74, ptr %offset67, align 4, !tbaa !20
  %77 = load ptr, ptr %op, align 8, !tbaa !5
  %78 = getelementptr inbounds %struct.cs_m680x_op, ptr %77, i32 0, i32 1
  %offset_bits68 = getelementptr inbounds %struct.m680x_op_idx, ptr %78, i32 0, i32 4
  store i8 8, ptr %offset_bits68, align 4, !tbaa !20
  br label %sw.epilog

sw.bb69:                                          ; preds = %if.end31, %if.end31
  %79 = load ptr, ptr %op, align 8, !tbaa !5
  %80 = getelementptr inbounds %struct.cs_m680x_op, ptr %79, i32 0, i32 1
  %base_reg70 = getelementptr inbounds %struct.m680x_op_idx, ptr %80, i32 0, i32 0
  store i32 19, ptr %base_reg70, align 4, !tbaa !20
  %81 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %82 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %83 = load i16, ptr %82, align 2, !tbaa !32
  %call71 = call zeroext i1 @read_word(ptr noundef %81, ptr noundef %offset, i16 noundef zeroext %83)
  %84 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %85 = load i16, ptr %84, align 2, !tbaa !32
  %conv72 = zext i16 %85 to i32
  %add73 = add nsw i32 %conv72, 2
  %conv74 = trunc i32 %add73 to i16
  store i16 %conv74, ptr %84, align 2, !tbaa !32
  %86 = load i16, ptr %offset, align 2, !tbaa !32
  %conv75 = zext i16 %86 to i32
  %87 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %88 = load i16, ptr %87, align 2, !tbaa !32
  %conv76 = zext i16 %88 to i32
  %add77 = add nsw i32 %conv75, %conv76
  %conv78 = trunc i32 %add77 to i16
  %89 = load ptr, ptr %op, align 8, !tbaa !5
  %90 = getelementptr inbounds %struct.cs_m680x_op, ptr %89, i32 0, i32 1
  %offset_addr79 = getelementptr inbounds %struct.m680x_op_idx, ptr %90, i32 0, i32 3
  store i16 %conv78, ptr %offset_addr79, align 2, !tbaa !20
  %91 = load i16, ptr %offset, align 2, !tbaa !32
  %92 = load ptr, ptr %op, align 8, !tbaa !5
  %93 = getelementptr inbounds %struct.cs_m680x_op, ptr %92, i32 0, i32 1
  %offset80 = getelementptr inbounds %struct.m680x_op_idx, ptr %93, i32 0, i32 2
  store i16 %91, ptr %offset80, align 4, !tbaa !20
  %94 = load ptr, ptr %op, align 8, !tbaa !5
  %95 = getelementptr inbounds %struct.cs_m680x_op, ptr %94, i32 0, i32 1
  %offset_bits81 = getelementptr inbounds %struct.m680x_op_idx, ptr %95, i32 0, i32 4
  store i8 16, ptr %offset_bits81, align 4, !tbaa !20
  br label %sw.epilog

sw.bb82:                                          ; preds = %if.end31, %if.end31
  %96 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %97 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %98 = load i16, ptr %97, align 2, !tbaa !32
  %call83 = call zeroext i1 @read_word(ptr noundef %96, ptr noundef %offset, i16 noundef zeroext %98)
  %99 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %100 = load i16, ptr %99, align 2, !tbaa !32
  %conv84 = zext i16 %100 to i32
  %add85 = add nsw i32 %conv84, 2
  %conv86 = trunc i32 %add85 to i16
  store i16 %conv86, ptr %99, align 2, !tbaa !32
  %101 = load i16, ptr %offset, align 2, !tbaa !32
  %102 = load ptr, ptr %op, align 8, !tbaa !5
  %103 = getelementptr inbounds %struct.cs_m680x_op, ptr %102, i32 0, i32 1
  %offset87 = getelementptr inbounds %struct.m680x_op_idx, ptr %103, i32 0, i32 2
  store i16 %101, ptr %offset87, align 4, !tbaa !20
  %104 = load ptr, ptr %op, align 8, !tbaa !5
  %105 = getelementptr inbounds %struct.cs_m680x_op, ptr %104, i32 0, i32 1
  %offset_bits88 = getelementptr inbounds %struct.m680x_op_idx, ptr %105, i32 0, i32 4
  store i8 16, ptr %offset_bits88, align 4, !tbaa !20
  br label %sw.epilog

sw.bb89:                                          ; preds = %if.end31, %if.end31
  %106 = load ptr, ptr %op, align 8, !tbaa !5
  %107 = getelementptr inbounds %struct.cs_m680x_op, ptr %106, i32 0, i32 1
  %offset_reg90 = getelementptr inbounds %struct.m680x_op_idx, ptr %107, i32 0, i32 1
  store i32 6, ptr %offset_reg90, align 4, !tbaa !20
  br label %sw.epilog

sw.bb91:                                          ; preds = %if.end31
  %108 = load ptr, ptr %op, align 8, !tbaa !5
  %type92 = getelementptr inbounds %struct.cs_m680x_op, ptr %108, i32 0, i32 0
  store i32 4, ptr %type92, align 4, !tbaa !54
  %109 = load ptr, ptr %op, align 8, !tbaa !5
  %110 = getelementptr inbounds %struct.cs_m680x_op, ptr %109, i32 0, i32 1
  %indirect = getelementptr inbounds %struct.m680x_op_ext, ptr %110, i32 0, i32 1
  store i8 1, ptr %indirect, align 2, !tbaa !20
  %111 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %112 = load ptr, ptr %op, align 8, !tbaa !5
  %113 = getelementptr inbounds %struct.cs_m680x_op, ptr %112, i32 0, i32 1
  %address93 = getelementptr inbounds %struct.m680x_op_ext, ptr %113, i32 0, i32 0
  %114 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %115 = load i16, ptr %114, align 2, !tbaa !32
  %call94 = call zeroext i1 @read_word(ptr noundef %111, ptr noundef %address93, i16 noundef zeroext %115)
  %116 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %117 = load i16, ptr %116, align 2, !tbaa !32
  %conv95 = zext i16 %117 to i32
  %add96 = add nsw i32 %conv95, 2
  %conv97 = trunc i32 %add96 to i16
  store i16 %conv97, ptr %116, align 2, !tbaa !32
  br label %sw.epilog

sw.default:                                       ; preds = %if.end31
  %118 = load ptr, ptr %op, align 8, !tbaa !5
  %119 = getelementptr inbounds %struct.cs_m680x_op, ptr %118, i32 0, i32 1
  %base_reg98 = getelementptr inbounds %struct.m680x_op_idx, ptr %119, i32 0, i32 0
  store i32 0, ptr %base_reg98, align 4, !tbaa !20
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb91, %sw.bb89, %sw.bb82, %sw.bb69, %sw.bb64, %sw.bb53, %sw.bb51, %sw.bb49, %sw.bb48, %sw.bb46, %sw.bb44, %sw.bb38, %sw.bb
  br label %if.end99

if.end99:                                         ; preds = %sw.epilog, %if.end
  %120 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %insn = getelementptr inbounds %struct.m680x_info, ptr %120, i32 0, i32 6
  %121 = load i32, ptr %insn, align 8, !tbaa !44
  %cmp100 = icmp eq i32 %121, 207
  br i1 %cmp100, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end99
  %122 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %insn102 = getelementptr inbounds %struct.m680x_info, ptr %122, i32 0, i32 6
  %123 = load i32, ptr %insn102, align 8, !tbaa !44
  %cmp103 = icmp eq i32 %123, 206
  br i1 %cmp103, label %land.lhs.true, label %lor.lhs.false105

lor.lhs.false105:                                 ; preds = %lor.lhs.false
  %124 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %insn106 = getelementptr inbounds %struct.m680x_info, ptr %124, i32 0, i32 6
  %125 = load i32, ptr %insn106, align 8, !tbaa !44
  %cmp107 = icmp eq i32 %125, 208
  br i1 %cmp107, label %land.lhs.true, label %lor.lhs.false109

lor.lhs.false109:                                 ; preds = %lor.lhs.false105
  %126 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %insn110 = getelementptr inbounds %struct.m680x_info, ptr %126, i32 0, i32 6
  %127 = load i32, ptr %insn110, align 8, !tbaa !44
  %cmp111 = icmp eq i32 %127, 209
  br i1 %cmp111, label %land.lhs.true, label %if.end123

land.lhs.true:                                    ; preds = %lor.lhs.false109, %lor.lhs.false105, %lor.lhs.false, %if.end99
  %128 = load ptr, ptr %m680x, align 8, !tbaa !5
  %operands113 = getelementptr inbounds %struct.cs_m680x, ptr %128, i32 0, i32 2
  %arrayidx114 = getelementptr inbounds [9 x %struct.cs_m680x_op], ptr %operands113, i64 0, i64 0
  %129 = getelementptr inbounds %struct.cs_m680x_op, ptr %arrayidx114, i32 0, i32 1
  %130 = load i32, ptr %129, align 4, !tbaa !20
  %cmp115 = icmp eq i32 %130, 13
  br i1 %cmp115, label %if.then122, label %lor.lhs.false117

lor.lhs.false117:                                 ; preds = %land.lhs.true
  %131 = load ptr, ptr %m680x, align 8, !tbaa !5
  %operands118 = getelementptr inbounds %struct.cs_m680x, ptr %131, i32 0, i32 2
  %arrayidx119 = getelementptr inbounds [9 x %struct.cs_m680x_op], ptr %operands118, i64 0, i64 0
  %132 = getelementptr inbounds %struct.cs_m680x_op, ptr %arrayidx119, i32 0, i32 1
  %133 = load i32, ptr %132, align 4, !tbaa !20
  %cmp120 = icmp eq i32 %133, 14
  br i1 %cmp120, label %if.then122, label %if.end123

if.then122:                                       ; preds = %lor.lhs.false117, %land.lhs.true
  %134 = load ptr, ptr %MI.addr, align 8, !tbaa !5
  call void @add_reg_to_rw_list(ptr noundef %134, i32 noundef 8, i32 noundef 3)
  br label %if.end123

if.end123:                                        ; preds = %if.then122, %lor.lhs.false117, %lor.lhs.false109
  call void @llvm.lifetime.end.p0(i64 2, ptr %soffset) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr %offset) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr %post_byte) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %m680x) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @inherent_hdlr(ptr noundef %MI, ptr noundef %info, ptr noundef %address) #0 {
entry:
  %MI.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %address.addr = alloca ptr, align 8
  store ptr %MI, ptr %MI.addr, align 8, !tbaa !5
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  store ptr %address, ptr %address.addr, align 8, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @reg_reg09_hdlr(ptr noundef %MI, ptr noundef %info, ptr noundef %address) #0 {
entry:
  %MI.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %address.addr = alloca ptr, align 8
  %regs = alloca i8, align 1
  store ptr %MI, ptr %MI.addr, align 8, !tbaa !5
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  store ptr %address, ptr %address.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr %regs) #6
  store i8 0, ptr %regs, align 1, !tbaa !20
  %0 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %2 = load i16, ptr %1, align 2, !tbaa !32
  %inc = add i16 %2, 1
  store i16 %inc, ptr %1, align 2, !tbaa !32
  %call = call zeroext i1 @read_byte(ptr noundef %0, ptr noundef %regs, i16 noundef zeroext %2)
  %3 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %4 = load i8, ptr %regs, align 1, !tbaa !20
  %conv = zext i8 %4 to i32
  %shr = ashr i32 %conv, 4
  %idxprom = sext i32 %shr to i64
  %arrayidx = getelementptr inbounds [16 x i32], ptr @g_tfr_exg_reg_ids, i64 0, i64 %idxprom
  %5 = load i32, ptr %arrayidx, align 4, !tbaa !20
  call void @add_reg_operand(ptr noundef %3, i32 noundef %5)
  %6 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %7 = load i8, ptr %regs, align 1, !tbaa !20
  %conv1 = zext i8 %7 to i32
  %and = and i32 %conv1, 15
  %idxprom2 = sext i32 %and to i64
  %arrayidx3 = getelementptr inbounds [16 x i32], ptr @g_tfr_exg_reg_ids, i64 0, i64 %idxprom2
  %8 = load i32, ptr %arrayidx3, align 4, !tbaa !20
  call void @add_reg_operand(ptr noundef %6, i32 noundef %8)
  %9 = load i8, ptr %regs, align 1, !tbaa !20
  %conv4 = zext i8 %9 to i32
  %and5 = and i32 %conv4, 15
  %cmp = icmp eq i32 %and5, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load ptr, ptr %MI.addr, align 8, !tbaa !5
  %flat_insn = getelementptr inbounds %struct.MCInst, ptr %10, i32 0, i32 6
  %11 = load ptr, ptr %flat_insn, align 8, !tbaa !37
  %detail = getelementptr inbounds %struct.cs_insn, ptr %11, i32 0, i32 6
  %12 = load ptr, ptr %detail, align 8, !tbaa !39
  call void @add_insn_group(ptr noundef %12, i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 1, ptr %regs) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @reg_bits_hdlr(ptr noundef %MI, ptr noundef %info, ptr noundef %address) #0 {
entry:
  %MI.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %address.addr = alloca ptr, align 8
  %op0 = alloca ptr, align 8
  %reg_bits = alloca i8, align 1
  %bit_index = alloca i16, align 2
  %reg_to_reg_ids = alloca ptr, align 8
  store ptr %MI, ptr %MI.addr, align 8, !tbaa !5
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  store ptr %address, ptr %address.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %op0) #6
  %0 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %m680x = getelementptr inbounds %struct.m680x_info, ptr %0, i32 0, i32 4
  %operands = getelementptr inbounds %struct.cs_m680x, ptr %m680x, i32 0, i32 2
  %arrayidx = getelementptr inbounds [9 x %struct.cs_m680x_op], ptr %operands, i64 0, i64 0
  store ptr %arrayidx, ptr %op0, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr %reg_bits) #6
  store i8 0, ptr %reg_bits, align 1, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 2, ptr %bit_index) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %reg_to_reg_ids) #6
  %1 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %2 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %3 = load i16, ptr %2, align 2, !tbaa !32
  %inc = add i16 %3, 1
  store i16 %inc, ptr %2, align 2, !tbaa !32
  %call = call zeroext i1 @read_byte(ptr noundef %1, ptr noundef %reg_bits, i16 noundef zeroext %3)
  %4 = load ptr, ptr %op0, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.cs_m680x_op, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !20
  switch i32 %6, label %sw.default [
    i32 16, label %sw.bb
    i32 15, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  store ptr @reg_u_reg_ids, ptr %reg_to_reg_ids, align 8, !tbaa !5
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store ptr @reg_s_reg_ids, ptr %reg_to_reg_ids, align 8, !tbaa !5
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %7 = load ptr, ptr @stderr, align 8, !tbaa !5
  %8 = load ptr, ptr %op0, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.cs_m680x_op, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !20
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.35, i32 noundef %10)
  call void @abort() #7
  unreachable

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %11 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %insn = getelementptr inbounds %struct.m680x_info, ptr %11, i32 0, i32 6
  %12 = load i32, ptr %insn, align 8, !tbaa !44
  %cmp = icmp eq i32 %12, 264
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog
  %13 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %insn3 = getelementptr inbounds %struct.m680x_info, ptr %13, i32 0, i32 6
  %14 = load i32, ptr %insn3, align 8, !tbaa !44
  %cmp4 = icmp eq i32 %14, 262
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %sw.epilog
  %15 = load i8, ptr %reg_bits, align 1, !tbaa !20
  %conv = zext i8 %15 to i32
  %and = and i32 %conv, 128
  %cmp5 = icmp ne i32 %and, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %16 = load ptr, ptr %MI.addr, align 8, !tbaa !5
  %flat_insn = getelementptr inbounds %struct.MCInst, ptr %16, i32 0, i32 6
  %17 = load ptr, ptr %flat_insn, align 8, !tbaa !37
  %detail = getelementptr inbounds %struct.cs_insn, ptr %17, i32 0, i32 6
  %18 = load ptr, ptr %detail, align 8, !tbaa !39
  call void @add_insn_group(ptr noundef %18, i32 noundef 3)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %lor.lhs.false
  store i16 0, ptr %bit_index, align 2, !tbaa !32
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %19 = load i16, ptr %bit_index, align 2, !tbaa !32
  %conv7 = zext i16 %19 to i32
  %cmp8 = icmp slt i32 %conv7, 8
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i8, ptr %reg_bits, align 1, !tbaa !20
  %conv10 = zext i8 %20 to i32
  %21 = load i16, ptr %bit_index, align 2, !tbaa !32
  %conv11 = zext i16 %21 to i32
  %shl = shl i32 1, %conv11
  %and12 = and i32 %conv10, %shl
  %tobool = icmp ne i32 %and12, 0
  br i1 %tobool, label %if.then13, label %if.end15

if.then13:                                        ; preds = %for.body
  %22 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %23 = load ptr, ptr %reg_to_reg_ids, align 8, !tbaa !5
  %24 = load i16, ptr %bit_index, align 2, !tbaa !32
  %idxprom = zext i16 %24 to i64
  %arrayidx14 = getelementptr inbounds i32, ptr %23, i64 %idxprom
  %25 = load i32, ptr %arrayidx14, align 4, !tbaa !20
  call void @add_reg_operand(ptr noundef %22, i32 noundef %25)
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end15
  %26 = load i16, ptr %bit_index, align 2, !tbaa !32
  %inc16 = add i16 %26, 1
  store i16 %inc16, ptr %bit_index, align 2, !tbaa !32
  br label %for.cond, !llvm.loop !72

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %reg_to_reg_ids) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr %bit_index) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr %reg_bits) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %op0) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bit_move_hdlr(ptr noundef %MI, ptr noundef %info, ptr noundef %address) #0 {
entry:
  %MI.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %address.addr = alloca ptr, align 8
  %post_byte = alloca i8, align 1
  %m680x = alloca ptr, align 8
  %op = alloca ptr, align 8
  store ptr %MI, ptr %MI.addr, align 8, !tbaa !5
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  store ptr %address, ptr %address.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr %post_byte) #6
  store i8 0, ptr %post_byte, align 1, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 8, ptr %m680x) #6
  %0 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %m680x1 = getelementptr inbounds %struct.m680x_info, ptr %0, i32 0, i32 4
  store ptr %m680x1, ptr %m680x, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #6
  %1 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %2 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %3 = load i16, ptr %2, align 2, !tbaa !32
  %call = call zeroext i1 @read_byte(ptr noundef %1, ptr noundef %post_byte, i16 noundef zeroext %3)
  %4 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %5 = load i16, ptr %4, align 2, !tbaa !32
  %inc = add i16 %5, 1
  store i16 %inc, ptr %4, align 2, !tbaa !32
  %6 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %7 = load i8, ptr %post_byte, align 1, !tbaa !20
  %conv = zext i8 %7 to i32
  %shr = ashr i32 %conv, 6
  %idxprom = sext i32 %shr to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr @bit_move_hdlr.m680x_reg, i64 0, i64 %idxprom
  %8 = load i32, ptr %arrayidx, align 4, !tbaa !20
  call void @add_reg_operand(ptr noundef %6, i32 noundef %8)
  %9 = load ptr, ptr %m680x, align 8, !tbaa !5
  %operands = getelementptr inbounds %struct.cs_m680x, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %m680x, align 8, !tbaa !5
  %op_count = getelementptr inbounds %struct.cs_m680x, ptr %10, i32 0, i32 1
  %11 = load i8, ptr %op_count, align 1, !tbaa !53
  %inc2 = add i8 %11, 1
  store i8 %inc2, ptr %op_count, align 1, !tbaa !53
  %idxprom3 = zext i8 %11 to i64
  %arrayidx4 = getelementptr inbounds [9 x %struct.cs_m680x_op], ptr %operands, i64 0, i64 %idxprom3
  store ptr %arrayidx4, ptr %op, align 8, !tbaa !5
  %12 = load ptr, ptr %op, align 8, !tbaa !5
  %type = getelementptr inbounds %struct.cs_m680x_op, ptr %12, i32 0, i32 0
  store i32 7, ptr %type, align 4, !tbaa !54
  %13 = load i8, ptr %post_byte, align 1, !tbaa !20
  %conv5 = zext i8 %13 to i32
  %shr6 = ashr i32 %conv5, 3
  %and = and i32 %shr6, 7
  %conv7 = trunc i32 %and to i8
  %14 = load ptr, ptr %op, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.cs_m680x_op, ptr %14, i32 0, i32 1
  store i8 %conv7, ptr %15, align 4, !tbaa !20
  %16 = load ptr, ptr %m680x, align 8, !tbaa !5
  %operands8 = getelementptr inbounds %struct.cs_m680x, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %m680x, align 8, !tbaa !5
  %op_count9 = getelementptr inbounds %struct.cs_m680x, ptr %17, i32 0, i32 1
  %18 = load i8, ptr %op_count9, align 1, !tbaa !53
  %inc10 = add i8 %18, 1
  store i8 %inc10, ptr %op_count9, align 1, !tbaa !53
  %idxprom11 = zext i8 %18 to i64
  %arrayidx12 = getelementptr inbounds [9 x %struct.cs_m680x_op], ptr %operands8, i64 0, i64 %idxprom11
  store ptr %arrayidx12, ptr %op, align 8, !tbaa !5
  %19 = load ptr, ptr %op, align 8, !tbaa !5
  %type13 = getelementptr inbounds %struct.cs_m680x_op, ptr %19, i32 0, i32 0
  store i32 7, ptr %type13, align 4, !tbaa !54
  %20 = load i8, ptr %post_byte, align 1, !tbaa !20
  %conv14 = zext i8 %20 to i32
  %and15 = and i32 %conv14, 7
  %conv16 = trunc i32 %and15 to i8
  %21 = load ptr, ptr %op, align 8, !tbaa !5
  %22 = getelementptr inbounds %struct.cs_m680x_op, ptr %21, i32 0, i32 1
  store i8 %conv16, ptr %22, align 4, !tbaa !20
  %23 = load ptr, ptr %MI.addr, align 8, !tbaa !5
  %24 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %25 = load ptr, ptr %address.addr, align 8, !tbaa !5
  call void @direct_hdlr(ptr noundef %23, ptr noundef %24, ptr noundef %25)
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %m680x) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr %post_byte) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @tfm_hdlr(ptr noundef %MI, ptr noundef %info, ptr noundef %address) #0 {
entry:
  %MI.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %address.addr = alloca ptr, align 8
  %regs = alloca i8, align 1
  %index = alloca i8, align 1
  store ptr %MI, ptr %MI.addr, align 8, !tbaa !5
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  store ptr %address, ptr %address.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr %regs) #6
  store i8 0, ptr %regs, align 1, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 1, ptr %index) #6
  %0 = load ptr, ptr %MI.addr, align 8, !tbaa !5
  %Opcode = getelementptr inbounds %struct.MCInst, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %Opcode, align 8, !tbaa !73
  %and = and i32 %1, 255
  %sub = sub i32 %and, 56
  %conv = trunc i32 %sub to i8
  store i8 %conv, ptr %index, align 1, !tbaa !20
  %2 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %3 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %4 = load i16, ptr %3, align 2, !tbaa !32
  %call = call zeroext i1 @read_byte(ptr noundef %2, ptr noundef %regs, i16 noundef zeroext %4)
  %5 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %6 = load i8, ptr %regs, align 1, !tbaa !20
  %conv1 = zext i8 %6 to i32
  %shr = ashr i32 %conv1, 4
  %idxprom = sext i32 %shr to i64
  %arrayidx = getelementptr inbounds [16 x i32], ptr @g_tfr_exg_reg_ids, i64 0, i64 %idxprom
  %7 = load i32, ptr %arrayidx, align 4, !tbaa !20
  %8 = load i8, ptr %index, align 1, !tbaa !20
  %idxprom2 = zext i8 %8 to i64
  %arrayidx3 = getelementptr inbounds [4 x i8], ptr @tfm_hdlr.inc_dec_r0, i64 0, i64 %idxprom2
  %9 = load i8, ptr %arrayidx3, align 1, !tbaa !20
  call void @add_indexed_operand(ptr noundef %5, i32 noundef %7, i1 noundef zeroext true, i8 noundef zeroext %9, i8 noundef zeroext 0, i16 noundef zeroext 0, i1 noundef zeroext true)
  %10 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %11 = load i8, ptr %regs, align 1, !tbaa !20
  %conv4 = zext i8 %11 to i32
  %and5 = and i32 %conv4, 15
  %idxprom6 = sext i32 %and5 to i64
  %arrayidx7 = getelementptr inbounds [16 x i32], ptr @g_tfr_exg_reg_ids, i64 0, i64 %idxprom6
  %12 = load i32, ptr %arrayidx7, align 4, !tbaa !20
  %13 = load i8, ptr %index, align 1, !tbaa !20
  %idxprom8 = zext i8 %13 to i64
  %arrayidx9 = getelementptr inbounds [4 x i8], ptr @tfm_hdlr.inc_dec_r1, i64 0, i64 %idxprom8
  %14 = load i8, ptr %arrayidx9, align 1, !tbaa !20
  call void @add_indexed_operand(ptr noundef %10, i32 noundef %12, i1 noundef zeroext true, i8 noundef zeroext %14, i8 noundef zeroext 0, i16 noundef zeroext 0, i1 noundef zeroext true)
  %15 = load ptr, ptr %MI.addr, align 8, !tbaa !5
  call void @add_reg_to_rw_list(ptr noundef %15, i32 noundef 7, i32 noundef 3)
  call void @llvm.lifetime.end.p0(i64 1, ptr %index) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr %regs) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @opidx_hdlr(ptr noundef %MI, ptr noundef %info, ptr noundef %address) #0 {
entry:
  %MI.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %address.addr = alloca ptr, align 8
  %m680x = alloca ptr, align 8
  %op = alloca ptr, align 8
  store ptr %MI, ptr %MI.addr, align 8, !tbaa !5
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  store ptr %address, ptr %address.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %m680x) #6
  %0 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %m680x1 = getelementptr inbounds %struct.m680x_info, ptr %0, i32 0, i32 4
  store ptr %m680x1, ptr %m680x, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #6
  %1 = load ptr, ptr %m680x, align 8, !tbaa !5
  %operands = getelementptr inbounds %struct.cs_m680x, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %m680x, align 8, !tbaa !5
  %op_count = getelementptr inbounds %struct.cs_m680x, ptr %2, i32 0, i32 1
  %3 = load i8, ptr %op_count, align 1, !tbaa !53
  %inc = add i8 %3, 1
  store i8 %inc, ptr %op_count, align 1, !tbaa !53
  %idxprom = zext i8 %3 to i64
  %arrayidx = getelementptr inbounds [9 x %struct.cs_m680x_op], ptr %operands, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %op, align 8, !tbaa !5
  %4 = load ptr, ptr %op, align 8, !tbaa !5
  %type = getelementptr inbounds %struct.cs_m680x_op, ptr %4, i32 0, i32 0
  store i32 7, ptr %type, align 4, !tbaa !54
  %5 = load ptr, ptr %MI.addr, align 8, !tbaa !5
  %Opcode = getelementptr inbounds %struct.MCInst, ptr %5, i32 0, i32 4
  %6 = load i32, ptr %Opcode, align 8, !tbaa !73
  %and = and i32 %6, 14
  %shr = lshr i32 %and, 1
  %conv = trunc i32 %shr to i8
  %7 = load ptr, ptr %op, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.cs_m680x_op, ptr %7, i32 0, i32 1
  store i8 %conv, ptr %8, align 4, !tbaa !20
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %m680x) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @opidx_dir_rel_hdlr(ptr noundef %MI, ptr noundef %info, ptr noundef %address) #0 {
entry:
  %MI.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %address.addr = alloca ptr, align 8
  %m680x = alloca ptr, align 8
  %op = alloca ptr, align 8
  store ptr %MI, ptr %MI.addr, align 8, !tbaa !5
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  store ptr %address, ptr %address.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %m680x) #6
  %0 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %m680x1 = getelementptr inbounds %struct.m680x_info, ptr %0, i32 0, i32 4
  store ptr %m680x1, ptr %m680x, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #6
  %1 = load ptr, ptr %m680x, align 8, !tbaa !5
  %operands = getelementptr inbounds %struct.cs_m680x, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %m680x, align 8, !tbaa !5
  %op_count = getelementptr inbounds %struct.cs_m680x, ptr %2, i32 0, i32 1
  %3 = load i8, ptr %op_count, align 1, !tbaa !53
  %inc = add i8 %3, 1
  store i8 %inc, ptr %op_count, align 1, !tbaa !53
  %idxprom = zext i8 %3 to i64
  %arrayidx = getelementptr inbounds [9 x %struct.cs_m680x_op], ptr %operands, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %op, align 8, !tbaa !5
  %4 = load ptr, ptr %op, align 8, !tbaa !5
  %type = getelementptr inbounds %struct.cs_m680x_op, ptr %4, i32 0, i32 0
  store i32 7, ptr %type, align 4, !tbaa !54
  %5 = load ptr, ptr %MI.addr, align 8, !tbaa !5
  %Opcode = getelementptr inbounds %struct.MCInst, ptr %5, i32 0, i32 4
  %6 = load i32, ptr %Opcode, align 8, !tbaa !73
  %and = and i32 %6, 14
  %shr = lshr i32 %and, 1
  %conv = trunc i32 %shr to i8
  %7 = load ptr, ptr %op, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.cs_m680x_op, ptr %7, i32 0, i32 1
  store i8 %conv, ptr %8, align 4, !tbaa !20
  %9 = load ptr, ptr %MI.addr, align 8, !tbaa !5
  %10 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %11 = load ptr, ptr %address.addr, align 8, !tbaa !5
  call void @direct_hdlr(ptr noundef %9, ptr noundef %10, ptr noundef %11)
  %12 = load ptr, ptr %MI.addr, align 8, !tbaa !5
  %13 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %14 = load ptr, ptr %address.addr, align 8, !tbaa !5
  call void @relative8_hdlr(ptr noundef %12, ptr noundef %13, ptr noundef %14)
  %15 = load ptr, ptr %MI.addr, align 8, !tbaa !5
  call void @add_reg_to_rw_list(ptr noundef %15, i32 noundef 8, i32 noundef 3)
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %m680x) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @indexedX0_hdlr(ptr noundef %MI, ptr noundef %info, ptr noundef %address) #0 {
entry:
  %MI.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %address.addr = alloca ptr, align 8
  store ptr %MI, ptr %MI.addr, align 8, !tbaa !5
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  store ptr %address, ptr %address.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %info.addr, align 8, !tbaa !5
  call void @add_indexed_operand(ptr noundef %0, i32 noundef 13, i1 noundef zeroext false, i8 noundef zeroext 0, i8 noundef zeroext 0, i16 noundef zeroext 0, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @indexedX16_hdlr(ptr noundef %MI, ptr noundef %info, ptr noundef %address) #0 {
entry:
  %MI.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %address.addr = alloca ptr, align 8
  %offset = alloca i16, align 2
  store ptr %MI, ptr %MI.addr, align 8, !tbaa !5
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  store ptr %address, ptr %address.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 2, ptr %offset) #6
  store i16 0, ptr %offset, align 2, !tbaa !32
  %0 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %2 = load i16, ptr %1, align 2, !tbaa !32
  %call = call zeroext i1 @read_word(ptr noundef %0, ptr noundef %offset, i16 noundef zeroext %2)
  %3 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %4 = load i16, ptr %3, align 2, !tbaa !32
  %conv = zext i16 %4 to i32
  %add = add nsw i32 %conv, 2
  %conv1 = trunc i32 %add to i16
  store i16 %conv1, ptr %3, align 2, !tbaa !32
  %5 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %6 = load i16, ptr %offset, align 2, !tbaa !32
  call void @add_indexed_operand(ptr noundef %5, i32 noundef 13, i1 noundef zeroext false, i8 noundef zeroext 0, i8 noundef zeroext 16, i16 noundef zeroext %6, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 2, ptr %offset) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @imm_rel_hdlr(ptr noundef %MI, ptr noundef %info, ptr noundef %address) #0 {
entry:
  %MI.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %address.addr = alloca ptr, align 8
  store ptr %MI, ptr %MI.addr, align 8, !tbaa !5
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  store ptr %address, ptr %address.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %MI.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %2 = load ptr, ptr %address.addr, align 8, !tbaa !5
  call void @immediate_hdlr(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %3 = load ptr, ptr %MI.addr, align 8, !tbaa !5
  %4 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %5 = load ptr, ptr %address.addr, align 8, !tbaa !5
  call void @relative8_hdlr(ptr noundef %3, ptr noundef %4, ptr noundef %5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @indexedS_hdlr(ptr noundef %MI, ptr noundef %info, ptr noundef %address) #0 {
entry:
  %MI.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %address.addr = alloca ptr, align 8
  %offset = alloca i8, align 1
  store ptr %MI, ptr %MI.addr, align 8, !tbaa !5
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  store ptr %address, ptr %address.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr %offset) #6
  store i8 0, ptr %offset, align 1, !tbaa !20
  %0 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %2 = load i16, ptr %1, align 2, !tbaa !32
  %inc = add i16 %2, 1
  store i16 %inc, ptr %1, align 2, !tbaa !32
  %call = call zeroext i1 @read_byte(ptr noundef %0, ptr noundef %offset, i16 noundef zeroext %2)
  %3 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %4 = load i8, ptr %offset, align 1, !tbaa !20
  %conv = zext i8 %4 to i16
  call void @add_indexed_operand(ptr noundef %3, i32 noundef 15, i1 noundef zeroext false, i8 noundef zeroext 0, i8 noundef zeroext 8, i16 noundef zeroext %conv, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 1, ptr %offset) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @indexedS16_hdlr(ptr noundef %MI, ptr noundef %info, ptr noundef %address) #0 {
entry:
  %MI.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %address.addr = alloca ptr, align 8
  %offset = alloca i16, align 2
  store ptr %MI, ptr %MI.addr, align 8, !tbaa !5
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  store ptr %address, ptr %address.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 2, ptr %offset) #6
  store i16 0, ptr %offset, align 2, !tbaa !32
  %0 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %2 = load i16, ptr %1, align 2, !tbaa !32
  %call = call zeroext i1 @read_word(ptr noundef %0, ptr noundef %offset, i16 noundef zeroext %2)
  %3 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds i16, ptr %3, i64 2
  store ptr %add.ptr, ptr %address.addr, align 8, !tbaa !5
  %4 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %5 = load i16, ptr %offset, align 2, !tbaa !32
  call void @add_indexed_operand(ptr noundef %4, i32 noundef 15, i1 noundef zeroext false, i8 noundef zeroext 0, i8 noundef zeroext 16, i16 noundef zeroext %5, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 2, ptr %offset) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @indexedXp_hdlr(ptr noundef %MI, ptr noundef %info, ptr noundef %address) #0 {
entry:
  %MI.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %address.addr = alloca ptr, align 8
  %offset = alloca i8, align 1
  store ptr %MI, ptr %MI.addr, align 8, !tbaa !5
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  store ptr %address, ptr %address.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr %offset) #6
  store i8 0, ptr %offset, align 1, !tbaa !20
  %0 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %2 = load i16, ptr %1, align 2, !tbaa !32
  %inc = add i16 %2, 1
  store i16 %inc, ptr %1, align 2, !tbaa !32
  %call = call zeroext i1 @read_byte(ptr noundef %0, ptr noundef %offset, i16 noundef zeroext %2)
  %3 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %4 = load i8, ptr %offset, align 1, !tbaa !20
  %conv = zext i8 %4 to i16
  call void @add_indexed_operand(ptr noundef %3, i32 noundef 13, i1 noundef zeroext true, i8 noundef zeroext 1, i8 noundef zeroext 8, i16 noundef zeroext %conv, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 1, ptr %offset) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @indexedX0p_hdlr(ptr noundef %MI, ptr noundef %info, ptr noundef %address) #0 {
entry:
  %MI.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %address.addr = alloca ptr, align 8
  store ptr %MI, ptr %MI.addr, align 8, !tbaa !5
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  store ptr %address, ptr %address.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %info.addr, align 8, !tbaa !5
  call void @add_indexed_operand(ptr noundef %0, i32 noundef 13, i1 noundef zeroext true, i8 noundef zeroext 1, i8 noundef zeroext 0, i16 noundef zeroext 0, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @indexed12_hdlr(ptr noundef %MI, ptr noundef %info, ptr noundef %address) #0 {
entry:
  %MI.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %address.addr = alloca ptr, align 8
  %m680x = alloca ptr, align 8
  %op = alloca ptr, align 8
  %post_byte = alloca i8, align 1
  %offset8 = alloca i8, align 1
  store ptr %MI, ptr %MI.addr, align 8, !tbaa !5
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  store ptr %address, ptr %address.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %m680x) #6
  %0 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %m680x1 = getelementptr inbounds %struct.m680x_info, ptr %0, i32 0, i32 4
  store ptr %m680x1, ptr %m680x, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #6
  %1 = load ptr, ptr %m680x, align 8, !tbaa !5
  %operands = getelementptr inbounds %struct.cs_m680x, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %m680x, align 8, !tbaa !5
  %op_count = getelementptr inbounds %struct.cs_m680x, ptr %2, i32 0, i32 1
  %3 = load i8, ptr %op_count, align 1, !tbaa !53
  %inc = add i8 %3, 1
  store i8 %inc, ptr %op_count, align 1, !tbaa !53
  %idxprom = zext i8 %3 to i64
  %arrayidx = getelementptr inbounds [9 x %struct.cs_m680x_op], ptr %operands, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %op, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr %post_byte) #6
  store i8 0, ptr %post_byte, align 1, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 1, ptr %offset8) #6
  store i8 0, ptr %offset8, align 1, !tbaa !20
  %4 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %5 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %6 = load i16, ptr %5, align 2, !tbaa !32
  %inc2 = add i16 %6, 1
  store i16 %inc2, ptr %5, align 2, !tbaa !32
  %call = call zeroext i1 @read_byte(ptr noundef %4, ptr noundef %post_byte, i16 noundef zeroext %6)
  %7 = load ptr, ptr %op, align 8, !tbaa !5
  %type = getelementptr inbounds %struct.cs_m680x_op, ptr %7, i32 0, i32 0
  store i32 3, ptr %type, align 4, !tbaa !54
  %8 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %9 = load ptr, ptr %op, align 8, !tbaa !5
  call void @set_operand_size(ptr noundef %8, ptr noundef %9, i8 noundef zeroext 1)
  %10 = load ptr, ptr %op, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.cs_m680x_op, ptr %10, i32 0, i32 1
  %offset_reg = getelementptr inbounds %struct.m680x_op_idx, ptr %11, i32 0, i32 1
  store i32 0, ptr %offset_reg, align 4, !tbaa !20
  %12 = load i8, ptr %post_byte, align 1, !tbaa !20
  %conv = zext i8 %12 to i32
  %and = and i32 %conv, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.else21, label %if.then

if.then:                                          ; preds = %entry
  %13 = load i8, ptr %post_byte, align 1, !tbaa !20
  %conv3 = zext i8 %13 to i32
  %shr = ashr i32 %conv3, 6
  %and4 = and i32 %shr, 3
  %idxprom5 = sext i32 %and4 to i64
  %arrayidx6 = getelementptr inbounds [4 x i32], ptr @g_idx12_to_reg_ids, i64 0, i64 %idxprom5
  %14 = load i32, ptr %arrayidx6, align 4, !tbaa !20
  %15 = load ptr, ptr %op, align 8, !tbaa !5
  %16 = getelementptr inbounds %struct.cs_m680x_op, ptr %15, i32 0, i32 1
  %base_reg = getelementptr inbounds %struct.m680x_op_idx, ptr %16, i32 0, i32 0
  store i32 %14, ptr %base_reg, align 4, !tbaa !20
  %17 = load i8, ptr %post_byte, align 1, !tbaa !20
  %conv7 = zext i8 %17 to i32
  %and8 = and i32 %conv7, 16
  %cmp = icmp eq i32 %and8, 16
  br i1 %cmp, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then
  %18 = load i8, ptr %post_byte, align 1, !tbaa !20
  %conv11 = zext i8 %18 to i32
  %or = or i32 %conv11, 65520
  %conv12 = trunc i32 %or to i16
  %19 = load ptr, ptr %op, align 8, !tbaa !5
  %20 = getelementptr inbounds %struct.cs_m680x_op, ptr %19, i32 0, i32 1
  %offset = getelementptr inbounds %struct.m680x_op_idx, ptr %20, i32 0, i32 2
  store i16 %conv12, ptr %offset, align 4, !tbaa !20
  br label %if.end

if.else:                                          ; preds = %if.then
  %21 = load i8, ptr %post_byte, align 1, !tbaa !20
  %conv13 = zext i8 %21 to i32
  %and14 = and i32 %conv13, 15
  %conv15 = trunc i32 %and14 to i16
  %22 = load ptr, ptr %op, align 8, !tbaa !5
  %23 = getelementptr inbounds %struct.cs_m680x_op, ptr %22, i32 0, i32 1
  %offset16 = getelementptr inbounds %struct.m680x_op_idx, ptr %23, i32 0, i32 2
  store i16 %conv15, ptr %offset16, align 4, !tbaa !20
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then10
  %24 = load ptr, ptr %op, align 8, !tbaa !5
  %25 = getelementptr inbounds %struct.cs_m680x_op, ptr %24, i32 0, i32 1
  %offset17 = getelementptr inbounds %struct.m680x_op_idx, ptr %25, i32 0, i32 2
  %26 = load i16, ptr %offset17, align 4, !tbaa !20
  %conv18 = sext i16 %26 to i32
  %27 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %28 = load i16, ptr %27, align 2, !tbaa !32
  %conv19 = zext i16 %28 to i32
  %add = add nsw i32 %conv18, %conv19
  %conv20 = trunc i32 %add to i16
  %29 = load ptr, ptr %op, align 8, !tbaa !5
  %30 = getelementptr inbounds %struct.cs_m680x_op, ptr %29, i32 0, i32 1
  %offset_addr = getelementptr inbounds %struct.m680x_op_idx, ptr %30, i32 0, i32 3
  store i16 %conv20, ptr %offset_addr, align 2, !tbaa !20
  %31 = load ptr, ptr %op, align 8, !tbaa !5
  %32 = getelementptr inbounds %struct.cs_m680x_op, ptr %31, i32 0, i32 1
  %offset_bits = getelementptr inbounds %struct.m680x_op_idx, ptr %32, i32 0, i32 4
  store i8 5, ptr %offset_bits, align 4, !tbaa !20
  br label %if.end131

if.else21:                                        ; preds = %entry
  %33 = load i8, ptr %post_byte, align 1, !tbaa !20
  %conv22 = zext i8 %33 to i32
  %and23 = and i32 %conv22, 224
  %cmp24 = icmp eq i32 %and23, 224
  br i1 %cmp24, label %if.then26, label %if.end33

if.then26:                                        ; preds = %if.else21
  %34 = load i8, ptr %post_byte, align 1, !tbaa !20
  %conv27 = zext i8 %34 to i32
  %shr28 = ashr i32 %conv27, 3
  %and29 = and i32 %shr28, 3
  %idxprom30 = sext i32 %and29 to i64
  %arrayidx31 = getelementptr inbounds [4 x i32], ptr @g_idx12_to_reg_ids, i64 0, i64 %idxprom30
  %35 = load i32, ptr %arrayidx31, align 4, !tbaa !20
  %36 = load ptr, ptr %op, align 8, !tbaa !5
  %37 = getelementptr inbounds %struct.cs_m680x_op, ptr %36, i32 0, i32 1
  %base_reg32 = getelementptr inbounds %struct.m680x_op_idx, ptr %37, i32 0, i32 0
  store i32 %35, ptr %base_reg32, align 4, !tbaa !20
  br label %if.end33

if.end33:                                         ; preds = %if.then26, %if.else21
  %38 = load i8, ptr %post_byte, align 1, !tbaa !20
  %conv34 = zext i8 %38 to i32
  %and35 = and i32 %conv34, 231
  switch i32 %and35, label %sw.default [
    i32 224, label %sw.bb
    i32 225, label %sw.bb
    i32 227, label %sw.bb61
    i32 226, label %sw.bb65
    i32 228, label %sw.bb83
    i32 229, label %sw.bb83
    i32 230, label %sw.bb83
    i32 231, label %sw.bb89
  ]

sw.bb:                                            ; preds = %if.end33, %if.end33
  %39 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %40 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %41 = load i16, ptr %40, align 2, !tbaa !32
  %inc36 = add i16 %41, 1
  store i16 %inc36, ptr %40, align 2, !tbaa !32
  %call37 = call zeroext i1 @read_byte(ptr noundef %39, ptr noundef %offset8, i16 noundef zeroext %41)
  %42 = load i8, ptr %offset8, align 1, !tbaa !20
  %conv38 = zext i8 %42 to i16
  %43 = load ptr, ptr %op, align 8, !tbaa !5
  %44 = getelementptr inbounds %struct.cs_m680x_op, ptr %43, i32 0, i32 1
  %offset39 = getelementptr inbounds %struct.m680x_op_idx, ptr %44, i32 0, i32 2
  store i16 %conv38, ptr %offset39, align 4, !tbaa !20
  %45 = load i8, ptr %post_byte, align 1, !tbaa !20
  %conv40 = zext i8 %45 to i32
  %and41 = and i32 %conv40, 1
  %tobool42 = icmp ne i32 %and41, 0
  br i1 %tobool42, label %if.then43, label %if.end48

if.then43:                                        ; preds = %sw.bb
  %46 = load ptr, ptr %op, align 8, !tbaa !5
  %47 = getelementptr inbounds %struct.cs_m680x_op, ptr %46, i32 0, i32 1
  %offset44 = getelementptr inbounds %struct.m680x_op_idx, ptr %47, i32 0, i32 2
  %48 = load i16, ptr %offset44, align 4, !tbaa !20
  %conv45 = sext i16 %48 to i32
  %or46 = or i32 %conv45, 65280
  %conv47 = trunc i32 %or46 to i16
  store i16 %conv47, ptr %offset44, align 4, !tbaa !20
  br label %if.end48

if.end48:                                         ; preds = %if.then43, %sw.bb
  %49 = load ptr, ptr %op, align 8, !tbaa !5
  %50 = getelementptr inbounds %struct.cs_m680x_op, ptr %49, i32 0, i32 1
  %offset_bits49 = getelementptr inbounds %struct.m680x_op_idx, ptr %50, i32 0, i32 4
  store i8 9, ptr %offset_bits49, align 4, !tbaa !20
  %51 = load ptr, ptr %op, align 8, !tbaa !5
  %52 = getelementptr inbounds %struct.cs_m680x_op, ptr %51, i32 0, i32 1
  %base_reg50 = getelementptr inbounds %struct.m680x_op_idx, ptr %52, i32 0, i32 0
  %53 = load i32, ptr %base_reg50, align 4, !tbaa !20
  %cmp51 = icmp eq i32 %53, 19
  br i1 %cmp51, label %if.then53, label %if.end60

if.then53:                                        ; preds = %if.end48
  %54 = load ptr, ptr %op, align 8, !tbaa !5
  %55 = getelementptr inbounds %struct.cs_m680x_op, ptr %54, i32 0, i32 1
  %offset54 = getelementptr inbounds %struct.m680x_op_idx, ptr %55, i32 0, i32 2
  %56 = load i16, ptr %offset54, align 4, !tbaa !20
  %conv55 = sext i16 %56 to i32
  %57 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %58 = load i16, ptr %57, align 2, !tbaa !32
  %conv56 = zext i16 %58 to i32
  %add57 = add nsw i32 %conv55, %conv56
  %conv58 = trunc i32 %add57 to i16
  %59 = load ptr, ptr %op, align 8, !tbaa !5
  %60 = getelementptr inbounds %struct.cs_m680x_op, ptr %59, i32 0, i32 1
  %offset_addr59 = getelementptr inbounds %struct.m680x_op_idx, ptr %60, i32 0, i32 3
  store i16 %conv58, ptr %offset_addr59, align 2, !tbaa !20
  br label %if.end60

if.end60:                                         ; preds = %if.then53, %if.end48
  br label %sw.epilog

sw.bb61:                                          ; preds = %if.end33
  %61 = load ptr, ptr %op, align 8, !tbaa !5
  %62 = getelementptr inbounds %struct.cs_m680x_op, ptr %61, i32 0, i32 1
  %flags = getelementptr inbounds %struct.m680x_op_idx, ptr %62, i32 0, i32 6
  %63 = load i8, ptr %flags, align 2, !tbaa !20
  %conv62 = zext i8 %63 to i32
  %or63 = or i32 %conv62, 1
  %conv64 = trunc i32 %or63 to i8
  store i8 %conv64, ptr %flags, align 2, !tbaa !20
  br label %sw.bb65

sw.bb65:                                          ; preds = %if.end33, %sw.bb61
  %64 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %65 = load ptr, ptr %op, align 8, !tbaa !5
  %66 = getelementptr inbounds %struct.cs_m680x_op, ptr %65, i32 0, i32 1
  %offset66 = getelementptr inbounds %struct.m680x_op_idx, ptr %66, i32 0, i32 2
  %67 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %68 = load i16, ptr %67, align 2, !tbaa !32
  %call67 = call zeroext i1 @read_word(ptr noundef %64, ptr noundef %offset66, i16 noundef zeroext %68)
  %69 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %70 = load i16, ptr %69, align 2, !tbaa !32
  %conv68 = zext i16 %70 to i32
  %add69 = add nsw i32 %conv68, 2
  %conv70 = trunc i32 %add69 to i16
  store i16 %conv70, ptr %69, align 2, !tbaa !32
  %71 = load ptr, ptr %op, align 8, !tbaa !5
  %72 = getelementptr inbounds %struct.cs_m680x_op, ptr %71, i32 0, i32 1
  %offset_bits71 = getelementptr inbounds %struct.m680x_op_idx, ptr %72, i32 0, i32 4
  store i8 16, ptr %offset_bits71, align 4, !tbaa !20
  %73 = load ptr, ptr %op, align 8, !tbaa !5
  %74 = getelementptr inbounds %struct.cs_m680x_op, ptr %73, i32 0, i32 1
  %base_reg72 = getelementptr inbounds %struct.m680x_op_idx, ptr %74, i32 0, i32 0
  %75 = load i32, ptr %base_reg72, align 4, !tbaa !20
  %cmp73 = icmp eq i32 %75, 19
  br i1 %cmp73, label %if.then75, label %if.end82

if.then75:                                        ; preds = %sw.bb65
  %76 = load ptr, ptr %op, align 8, !tbaa !5
  %77 = getelementptr inbounds %struct.cs_m680x_op, ptr %76, i32 0, i32 1
  %offset76 = getelementptr inbounds %struct.m680x_op_idx, ptr %77, i32 0, i32 2
  %78 = load i16, ptr %offset76, align 4, !tbaa !20
  %conv77 = sext i16 %78 to i32
  %79 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %80 = load i16, ptr %79, align 2, !tbaa !32
  %conv78 = zext i16 %80 to i32
  %add79 = add nsw i32 %conv77, %conv78
  %conv80 = trunc i32 %add79 to i16
  %81 = load ptr, ptr %op, align 8, !tbaa !5
  %82 = getelementptr inbounds %struct.cs_m680x_op, ptr %81, i32 0, i32 1
  %offset_addr81 = getelementptr inbounds %struct.m680x_op_idx, ptr %82, i32 0, i32 3
  store i16 %conv80, ptr %offset_addr81, align 2, !tbaa !20
  br label %if.end82

if.end82:                                         ; preds = %if.then75, %sw.bb65
  br label %sw.epilog

sw.bb83:                                          ; preds = %if.end33, %if.end33, %if.end33
  %83 = load i8, ptr %post_byte, align 1, !tbaa !20
  %conv84 = zext i8 %83 to i32
  %and85 = and i32 %conv84, 3
  %idxprom86 = sext i32 %and85 to i64
  %arrayidx87 = getelementptr inbounds [3 x i32], ptr @g_or12_to_reg_ids, i64 0, i64 %idxprom86
  %84 = load i32, ptr %arrayidx87, align 4, !tbaa !20
  %85 = load ptr, ptr %op, align 8, !tbaa !5
  %86 = getelementptr inbounds %struct.cs_m680x_op, ptr %85, i32 0, i32 1
  %offset_reg88 = getelementptr inbounds %struct.m680x_op_idx, ptr %86, i32 0, i32 1
  store i32 %84, ptr %offset_reg88, align 4, !tbaa !20
  br label %sw.epilog

sw.bb89:                                          ; preds = %if.end33
  %87 = load ptr, ptr %op, align 8, !tbaa !5
  %88 = getelementptr inbounds %struct.cs_m680x_op, ptr %87, i32 0, i32 1
  %offset_reg90 = getelementptr inbounds %struct.m680x_op_idx, ptr %88, i32 0, i32 1
  store i32 6, ptr %offset_reg90, align 4, !tbaa !20
  %89 = load ptr, ptr %op, align 8, !tbaa !5
  %90 = getelementptr inbounds %struct.cs_m680x_op, ptr %89, i32 0, i32 1
  %flags91 = getelementptr inbounds %struct.m680x_op_idx, ptr %90, i32 0, i32 6
  %91 = load i8, ptr %flags91, align 2, !tbaa !20
  %conv92 = zext i8 %91 to i32
  %or93 = or i32 %conv92, 1
  %conv94 = trunc i32 %or93 to i8
  store i8 %conv94, ptr %flags91, align 2, !tbaa !20
  br label %sw.epilog

sw.default:                                       ; preds = %if.end33
  %92 = load i8, ptr %post_byte, align 1, !tbaa !20
  %conv95 = zext i8 %92 to i32
  %shr96 = ashr i32 %conv95, 6
  %and97 = and i32 %shr96, 3
  %idxprom98 = sext i32 %and97 to i64
  %arrayidx99 = getelementptr inbounds [4 x i32], ptr @g_idx12_to_reg_ids, i64 0, i64 %idxprom98
  %93 = load i32, ptr %arrayidx99, align 4, !tbaa !20
  %94 = load ptr, ptr %op, align 8, !tbaa !5
  %95 = getelementptr inbounds %struct.cs_m680x_op, ptr %94, i32 0, i32 1
  %base_reg100 = getelementptr inbounds %struct.m680x_op_idx, ptr %95, i32 0, i32 0
  store i32 %93, ptr %base_reg100, align 4, !tbaa !20
  %96 = load i8, ptr %post_byte, align 1, !tbaa !20
  %conv101 = zext i8 %96 to i32
  %and102 = and i32 %conv101, 15
  %conv103 = trunc i32 %and102 to i8
  %97 = load ptr, ptr %op, align 8, !tbaa !5
  %98 = getelementptr inbounds %struct.cs_m680x_op, ptr %97, i32 0, i32 1
  %inc_dec = getelementptr inbounds %struct.m680x_op_idx, ptr %98, i32 0, i32 5
  store i8 %conv103, ptr %inc_dec, align 1, !tbaa !20
  %99 = load ptr, ptr %op, align 8, !tbaa !5
  %100 = getelementptr inbounds %struct.cs_m680x_op, ptr %99, i32 0, i32 1
  %inc_dec104 = getelementptr inbounds %struct.m680x_op_idx, ptr %100, i32 0, i32 5
  %101 = load i8, ptr %inc_dec104, align 1, !tbaa !20
  %conv105 = sext i8 %101 to i32
  %and106 = and i32 %conv105, 8
  %tobool107 = icmp ne i32 %and106, 0
  br i1 %tobool107, label %if.then108, label %if.end113

if.then108:                                       ; preds = %sw.default
  %102 = load ptr, ptr %op, align 8, !tbaa !5
  %103 = getelementptr inbounds %struct.cs_m680x_op, ptr %102, i32 0, i32 1
  %inc_dec109 = getelementptr inbounds %struct.m680x_op_idx, ptr %103, i32 0, i32 5
  %104 = load i8, ptr %inc_dec109, align 1, !tbaa !20
  %conv110 = sext i8 %104 to i32
  %or111 = or i32 %conv110, 240
  %conv112 = trunc i32 %or111 to i8
  store i8 %conv112, ptr %inc_dec109, align 1, !tbaa !20
  br label %if.end113

if.end113:                                        ; preds = %if.then108, %sw.default
  %105 = load ptr, ptr %op, align 8, !tbaa !5
  %106 = getelementptr inbounds %struct.cs_m680x_op, ptr %105, i32 0, i32 1
  %inc_dec114 = getelementptr inbounds %struct.m680x_op_idx, ptr %106, i32 0, i32 5
  %107 = load i8, ptr %inc_dec114, align 1, !tbaa !20
  %conv115 = sext i8 %107 to i32
  %cmp116 = icmp sge i32 %conv115, 0
  br i1 %cmp116, label %if.then118, label %if.end121

if.then118:                                       ; preds = %if.end113
  %108 = load ptr, ptr %op, align 8, !tbaa !5
  %109 = getelementptr inbounds %struct.cs_m680x_op, ptr %108, i32 0, i32 1
  %inc_dec119 = getelementptr inbounds %struct.m680x_op_idx, ptr %109, i32 0, i32 5
  %110 = load i8, ptr %inc_dec119, align 1, !tbaa !20
  %inc120 = add i8 %110, 1
  store i8 %inc120, ptr %inc_dec119, align 1, !tbaa !20
  br label %if.end121

if.end121:                                        ; preds = %if.then118, %if.end113
  %111 = load i8, ptr %post_byte, align 1, !tbaa !20
  %conv122 = zext i8 %111 to i32
  %and123 = and i32 %conv122, 16
  %tobool124 = icmp ne i32 %and123, 0
  br i1 %tobool124, label %if.then125, label %if.end130

if.then125:                                       ; preds = %if.end121
  %112 = load ptr, ptr %op, align 8, !tbaa !5
  %113 = getelementptr inbounds %struct.cs_m680x_op, ptr %112, i32 0, i32 1
  %flags126 = getelementptr inbounds %struct.m680x_op_idx, ptr %113, i32 0, i32 6
  %114 = load i8, ptr %flags126, align 2, !tbaa !20
  %conv127 = zext i8 %114 to i32
  %or128 = or i32 %conv127, 4
  %conv129 = trunc i32 %or128 to i8
  store i8 %conv129, ptr %flags126, align 2, !tbaa !20
  br label %if.end130

if.end130:                                        ; preds = %if.then125, %if.end121
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end130, %sw.bb89, %sw.bb83, %if.end82, %if.end60
  br label %if.end131

if.end131:                                        ; preds = %sw.epilog, %if.end
  call void @llvm.lifetime.end.p0(i64 1, ptr %offset8) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr %post_byte) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %m680x) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @reg_reg12_hdlr(ptr noundef %MI, ptr noundef %info, ptr noundef %address) #0 {
entry:
  %MI.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %address.addr = alloca ptr, align 8
  %regs = alloca i8, align 1
  store ptr %MI, ptr %MI.addr, align 8, !tbaa !5
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  store ptr %address, ptr %address.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr %regs) #6
  store i8 0, ptr %regs, align 1, !tbaa !20
  %0 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %2 = load i16, ptr %1, align 2, !tbaa !32
  %inc = add i16 %2, 1
  store i16 %inc, ptr %1, align 2, !tbaa !32
  %call = call zeroext i1 @read_byte(ptr noundef %0, ptr noundef %regs, i16 noundef zeroext %2)
  %3 = load i8, ptr %regs, align 1, !tbaa !20
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %insn = getelementptr inbounds %struct.m680x_info, ptr %4, i32 0, i32 6
  store i32 153, ptr %insn, align 8, !tbaa !44
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %insn1 = getelementptr inbounds %struct.m680x_info, ptr %5, i32 0, i32 6
  store i32 335, ptr %insn1, align 8, !tbaa !44
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %7 = load i8, ptr %regs, align 1, !tbaa !20
  %conv2 = zext i8 %7 to i32
  %shr = ashr i32 %conv2, 4
  %and3 = and i32 %shr, 7
  %idxprom = sext i32 %and3 to i64
  %arrayidx = getelementptr inbounds [8 x i32], ptr @reg_reg12_hdlr.g_tfr_exg12_reg0_ids, i64 0, i64 %idxprom
  %8 = load i32, ptr %arrayidx, align 4, !tbaa !20
  call void @add_reg_operand(ptr noundef %6, i32 noundef %8)
  %9 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %10 = load i8, ptr %regs, align 1, !tbaa !20
  %conv4 = zext i8 %10 to i32
  %and5 = and i32 %conv4, 7
  %idxprom6 = sext i32 %and5 to i64
  %arrayidx7 = getelementptr inbounds [8 x i32], ptr @reg_reg12_hdlr.g_tfr_exg12_reg1_ids, i64 0, i64 %idxprom6
  %11 = load i32, ptr %arrayidx7, align 4, !tbaa !20
  call void @add_reg_operand(ptr noundef %9, i32 noundef %11)
  call void @llvm.lifetime.end.p0(i64 1, ptr %regs) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @loop_hdlr(ptr noundef %MI, ptr noundef %info, ptr noundef %address) #0 {
entry:
  %MI.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %address.addr = alloca ptr, align 8
  %m680x = alloca ptr, align 8
  %post_byte = alloca i8, align 1
  %rel = alloca i8, align 1
  %op = alloca ptr, align 8
  store ptr %MI, ptr %MI.addr, align 8, !tbaa !5
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  store ptr %address, ptr %address.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %m680x) #6
  %0 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %m680x1 = getelementptr inbounds %struct.m680x_info, ptr %0, i32 0, i32 4
  store ptr %m680x1, ptr %m680x, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr %post_byte) #6
  store i8 0, ptr %post_byte, align 1, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 1, ptr %rel) #6
  store i8 0, ptr %rel, align 1, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #6
  %1 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %2 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %3 = load i16, ptr %2, align 2, !tbaa !32
  %inc = add i16 %3, 1
  store i16 %inc, ptr %2, align 2, !tbaa !32
  %call = call zeroext i1 @read_byte(ptr noundef %1, ptr noundef %post_byte, i16 noundef zeroext %3)
  %4 = load i8, ptr %post_byte, align 1, !tbaa !20
  %conv = zext i8 %4 to i32
  %shr = ashr i32 %conv, 5
  %and = and i32 %shr, 7
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [8 x i32], ptr @loop_hdlr.index_to_insn_id, i64 0, i64 %idxprom
  %5 = load i32, ptr %arrayidx, align 4, !tbaa !20
  %6 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %insn = getelementptr inbounds %struct.m680x_info, ptr %6, i32 0, i32 6
  store i32 %5, ptr %insn, align 8, !tbaa !44
  %7 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %insn2 = getelementptr inbounds %struct.m680x_info, ptr %7, i32 0, i32 6
  %8 = load i32, ptr %insn2, align 8, !tbaa !44
  %cmp = icmp eq i32 %8, 159
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr @stderr, align 8, !tbaa !5
  %10 = load i8, ptr %post_byte, align 1, !tbaa !20
  %conv4 = zext i8 %10 to i32
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.36, i32 noundef %conv4)
  %11 = load ptr, ptr %MI.addr, align 8, !tbaa !5
  %12 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %13 = load ptr, ptr %address.addr, align 8, !tbaa !5
  call void @illegal_hdlr(ptr noundef %11, ptr noundef %12, ptr noundef %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %15 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %16 = load i16, ptr %15, align 2, !tbaa !32
  %inc6 = add i16 %16, 1
  store i16 %inc6, ptr %15, align 2, !tbaa !32
  %call7 = call zeroext i1 @read_byte(ptr noundef %14, ptr noundef %rel, i16 noundef zeroext %16)
  %17 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %18 = load i8, ptr %post_byte, align 1, !tbaa !20
  %conv8 = zext i8 %18 to i32
  %and9 = and i32 %conv8, 7
  %idxprom10 = sext i32 %and9 to i64
  %arrayidx11 = getelementptr inbounds [8 x i32], ptr @loop_hdlr.index_to_reg_id, i64 0, i64 %idxprom10
  %19 = load i32, ptr %arrayidx11, align 4, !tbaa !20
  call void @add_reg_operand(ptr noundef %17, i32 noundef %19)
  %20 = load ptr, ptr %m680x, align 8, !tbaa !5
  %operands = getelementptr inbounds %struct.cs_m680x, ptr %20, i32 0, i32 2
  %21 = load ptr, ptr %m680x, align 8, !tbaa !5
  %op_count = getelementptr inbounds %struct.cs_m680x, ptr %21, i32 0, i32 1
  %22 = load i8, ptr %op_count, align 1, !tbaa !53
  %inc12 = add i8 %22, 1
  store i8 %inc12, ptr %op_count, align 1, !tbaa !53
  %idxprom13 = zext i8 %22 to i64
  %arrayidx14 = getelementptr inbounds [9 x %struct.cs_m680x_op], ptr %operands, i64 0, i64 %idxprom13
  store ptr %arrayidx14, ptr %op, align 8, !tbaa !5
  %23 = load ptr, ptr %op, align 8, !tbaa !5
  %type = getelementptr inbounds %struct.cs_m680x_op, ptr %23, i32 0, i32 0
  store i32 6, ptr %type, align 4, !tbaa !54
  %24 = load i8, ptr %post_byte, align 1, !tbaa !20
  %conv15 = zext i8 %24 to i32
  %and16 = and i32 %conv15, 16
  %tobool = icmp ne i32 %and16, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %25 = load i8, ptr %rel, align 1, !tbaa !20
  %conv17 = zext i8 %25 to i32
  %or = or i32 65280, %conv17
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %26 = load i8, ptr %rel, align 1, !tbaa !20
  %conv18 = zext i8 %26 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or, %cond.true ], [ %conv18, %cond.false ]
  %conv19 = trunc i32 %cond to i16
  %27 = load ptr, ptr %op, align 8, !tbaa !5
  %28 = getelementptr inbounds %struct.cs_m680x_op, ptr %27, i32 0, i32 1
  %offset = getelementptr inbounds %struct.m680x_op_rel, ptr %28, i32 0, i32 1
  store i16 %conv19, ptr %offset, align 2, !tbaa !20
  %29 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %30 = load i16, ptr %29, align 2, !tbaa !32
  %conv20 = zext i16 %30 to i32
  %31 = load ptr, ptr %op, align 8, !tbaa !5
  %32 = getelementptr inbounds %struct.cs_m680x_op, ptr %31, i32 0, i32 1
  %offset21 = getelementptr inbounds %struct.m680x_op_rel, ptr %32, i32 0, i32 1
  %33 = load i16, ptr %offset21, align 2, !tbaa !20
  %conv22 = sext i16 %33 to i32
  %add = add nsw i32 %conv20, %conv22
  %conv23 = trunc i32 %add to i16
  %34 = load ptr, ptr %op, align 8, !tbaa !5
  %35 = getelementptr inbounds %struct.cs_m680x_op, ptr %34, i32 0, i32 1
  %address24 = getelementptr inbounds %struct.m680x_op_rel, ptr %35, i32 0, i32 0
  store i16 %conv23, ptr %address24, align 4, !tbaa !20
  %36 = load ptr, ptr %MI.addr, align 8, !tbaa !5
  %flat_insn = getelementptr inbounds %struct.MCInst, ptr %36, i32 0, i32 6
  %37 = load ptr, ptr %flat_insn, align 8, !tbaa !37
  %detail = getelementptr inbounds %struct.cs_insn, ptr %37, i32 0, i32 6
  %38 = load ptr, ptr %detail, align 8, !tbaa !39
  call void @add_insn_group(ptr noundef %38, i32 noundef 7)
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr %rel) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr %post_byte) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %m680x) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @index_hdlr(ptr noundef %MI, ptr noundef %info, ptr noundef %address) #0 {
entry:
  %MI.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %address.addr = alloca ptr, align 8
  %m680x = alloca ptr, align 8
  %op = alloca ptr, align 8
  store ptr %MI, ptr %MI.addr, align 8, !tbaa !5
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  store ptr %address, ptr %address.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %m680x) #6
  %0 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %m680x1 = getelementptr inbounds %struct.m680x_info, ptr %0, i32 0, i32 4
  store ptr %m680x1, ptr %m680x, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #6
  %1 = load ptr, ptr %m680x, align 8, !tbaa !5
  %operands = getelementptr inbounds %struct.cs_m680x, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %m680x, align 8, !tbaa !5
  %op_count = getelementptr inbounds %struct.cs_m680x, ptr %2, i32 0, i32 1
  %3 = load i8, ptr %op_count, align 1, !tbaa !53
  %inc = add i8 %3, 1
  store i8 %inc, ptr %op_count, align 1, !tbaa !53
  %idxprom = zext i8 %3 to i64
  %arrayidx = getelementptr inbounds [9 x %struct.cs_m680x_op], ptr %operands, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %op, align 8, !tbaa !5
  %4 = load ptr, ptr %op, align 8, !tbaa !5
  %type = getelementptr inbounds %struct.cs_m680x_op, ptr %4, i32 0, i32 0
  store i32 7, ptr %type, align 4, !tbaa !54
  %5 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %6 = load ptr, ptr %op, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.cs_m680x_op, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %9 = load i16, ptr %8, align 2, !tbaa !32
  %inc2 = add i16 %9, 1
  store i16 %inc2, ptr %8, align 2, !tbaa !32
  %call = call zeroext i1 @read_byte(ptr noundef %5, ptr noundef %7, i16 noundef zeroext %9)
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %m680x) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @imm_idx12_x_hdlr(ptr noundef %MI, ptr noundef %info, ptr noundef %address) #0 {
entry:
  %MI.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %address.addr = alloca ptr, align 8
  %m680x = alloca ptr, align 8
  %op = alloca ptr, align 8
  %imm16 = alloca i16, align 2
  %imm8 = alloca i8, align 1
  store ptr %MI, ptr %MI.addr, align 8, !tbaa !5
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  store ptr %address, ptr %address.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %m680x) #6
  %0 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %m680x1 = getelementptr inbounds %struct.m680x_info, ptr %0, i32 0, i32 4
  store ptr %m680x1, ptr %m680x, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #6
  %1 = load ptr, ptr %m680x, align 8, !tbaa !5
  %operands = getelementptr inbounds %struct.cs_m680x, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %m680x, align 8, !tbaa !5
  %op_count = getelementptr inbounds %struct.cs_m680x, ptr %2, i32 0, i32 1
  %3 = load i8, ptr %op_count, align 1, !tbaa !53
  %inc = add i8 %3, 1
  store i8 %inc, ptr %op_count, align 1, !tbaa !53
  %idxprom = zext i8 %3 to i64
  %arrayidx = getelementptr inbounds [9 x %struct.cs_m680x_op], ptr %operands, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %op, align 8, !tbaa !5
  %4 = load ptr, ptr %MI.addr, align 8, !tbaa !5
  %5 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %6 = load ptr, ptr %address.addr, align 8, !tbaa !5
  call void @indexed12_hdlr(ptr noundef %4, ptr noundef %5, ptr noundef %6)
  %7 = load ptr, ptr %op, align 8, !tbaa !5
  %type = getelementptr inbounds %struct.cs_m680x_op, ptr %7, i32 0, i32 0
  store i32 2, ptr %type, align 4, !tbaa !54
  %8 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %insn = getelementptr inbounds %struct.m680x_info, ptr %8, i32 0, i32 6
  %9 = load i32, ptr %insn, align 8, !tbaa !44
  %cmp = icmp eq i32 %9, 228
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr %imm16) #6
  store i16 0, ptr %imm16, align 2, !tbaa !32
  %10 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %11 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %12 = load i16, ptr %11, align 2, !tbaa !32
  %call = call zeroext i1 @read_word(ptr noundef %10, ptr noundef %imm16, i16 noundef zeroext %12)
  %13 = load i16, ptr %imm16, align 2, !tbaa !32
  %conv = sext i16 %13 to i32
  %14 = load ptr, ptr %op, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.cs_m680x_op, ptr %14, i32 0, i32 1
  store i32 %conv, ptr %15, align 4, !tbaa !20
  %16 = load ptr, ptr %op, align 8, !tbaa !5
  %size = getelementptr inbounds %struct.cs_m680x_op, ptr %16, i32 0, i32 2
  store i8 2, ptr %size, align 4, !tbaa !56
  call void @llvm.lifetime.end.p0(i64 2, ptr %imm16) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr %imm8) #6
  store i8 0, ptr %imm8, align 1, !tbaa !20
  %17 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %18 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %19 = load i16, ptr %18, align 2, !tbaa !32
  %call2 = call zeroext i1 @read_byte(ptr noundef %17, ptr noundef %imm8, i16 noundef zeroext %19)
  %20 = load i8, ptr %imm8, align 1, !tbaa !20
  %conv3 = sext i8 %20 to i32
  %21 = load ptr, ptr %op, align 8, !tbaa !5
  %22 = getelementptr inbounds %struct.cs_m680x_op, ptr %21, i32 0, i32 1
  store i32 %conv3, ptr %22, align 4, !tbaa !20
  %23 = load ptr, ptr %op, align 8, !tbaa !5
  %size4 = getelementptr inbounds %struct.cs_m680x_op, ptr %23, i32 0, i32 2
  store i8 1, ptr %size4, align 4, !tbaa !56
  call void @llvm.lifetime.end.p0(i64 1, ptr %imm8) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %24 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %25 = load ptr, ptr %op, align 8, !tbaa !5
  call void @set_operand_size(ptr noundef %24, ptr noundef %25, i8 noundef zeroext 1)
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %m680x) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ext_idx12_x_hdlr(ptr noundef %MI, ptr noundef %info, ptr noundef %address) #0 {
entry:
  %MI.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %address.addr = alloca ptr, align 8
  %m680x = alloca ptr, align 8
  %op0 = alloca ptr, align 8
  %imm16 = alloca i16, align 2
  store ptr %MI, ptr %MI.addr, align 8, !tbaa !5
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  store ptr %address, ptr %address.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %m680x) #6
  %0 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %m680x1 = getelementptr inbounds %struct.m680x_info, ptr %0, i32 0, i32 4
  store ptr %m680x1, ptr %m680x, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %op0) #6
  %1 = load ptr, ptr %m680x, align 8, !tbaa !5
  %operands = getelementptr inbounds %struct.cs_m680x, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %m680x, align 8, !tbaa !5
  %op_count = getelementptr inbounds %struct.cs_m680x, ptr %2, i32 0, i32 1
  %3 = load i8, ptr %op_count, align 1, !tbaa !53
  %inc = add i8 %3, 1
  store i8 %inc, ptr %op_count, align 1, !tbaa !53
  %idxprom = zext i8 %3 to i64
  %arrayidx = getelementptr inbounds [9 x %struct.cs_m680x_op], ptr %operands, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %op0, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 2, ptr %imm16) #6
  store i16 0, ptr %imm16, align 2, !tbaa !32
  %4 = load ptr, ptr %MI.addr, align 8, !tbaa !5
  %5 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %6 = load ptr, ptr %address.addr, align 8, !tbaa !5
  call void @indexed12_hdlr(ptr noundef %4, ptr noundef %5, ptr noundef %6)
  %7 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %8 = load ptr, ptr %address.addr, align 8, !tbaa !5
  %9 = load i16, ptr %8, align 2, !tbaa !32
  %call = call zeroext i1 @read_word(ptr noundef %7, ptr noundef %imm16, i16 noundef zeroext %9)
  %10 = load ptr, ptr %op0, align 8, !tbaa !5
  %type = getelementptr inbounds %struct.cs_m680x_op, ptr %10, i32 0, i32 0
  store i32 4, ptr %type, align 4, !tbaa !54
  %11 = load i16, ptr %imm16, align 2, !tbaa !32
  %12 = load ptr, ptr %op0, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.cs_m680x_op, ptr %12, i32 0, i32 1
  %address2 = getelementptr inbounds %struct.m680x_op_ext, ptr %13, i32 0, i32 0
  store i16 %11, ptr %address2, align 4, !tbaa !20
  %14 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %15 = load ptr, ptr %op0, align 8, !tbaa !5
  call void @set_operand_size(ptr noundef %14, ptr noundef %15, i8 noundef zeroext 1)
  call void @llvm.lifetime.end.p0(i64 2, ptr %imm16) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %op0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %m680x) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @read_byte_sign_extended(ptr noundef %info, ptr noundef %word, i16 noundef zeroext %address) #0 {
entry:
  %retval = alloca i1, align 1
  %info.addr = alloca ptr, align 8
  %word.addr = alloca ptr, align 8
  %address.addr = alloca i16, align 2
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  store ptr %word, ptr %word.addr, align 8, !tbaa !5
  store i16 %address, ptr %address.addr, align 2, !tbaa !32
  %0 = load i16, ptr %address.addr, align 2, !tbaa !32
  %conv = zext i16 %0 to i32
  %1 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %offset = getelementptr inbounds %struct.m680x_info, ptr %1, i32 0, i32 2
  %2 = load i16, ptr %offset, align 4, !tbaa !35
  %conv1 = zext i16 %2 to i32
  %sub = sub nsw i32 %conv, %conv1
  %3 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %size = getelementptr inbounds %struct.m680x_info, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %size, align 8, !tbaa !34
  %cmp = icmp uge i32 %sub, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %code = getelementptr inbounds %struct.m680x_info, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %code, align 8, !tbaa !33
  %7 = load i16, ptr %address.addr, align 2, !tbaa !32
  %conv3 = zext i16 %7 to i32
  %8 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %offset4 = getelementptr inbounds %struct.m680x_info, ptr %8, i32 0, i32 2
  %9 = load i16, ptr %offset4, align 4, !tbaa !35
  %conv5 = zext i16 %9 to i32
  %sub6 = sub nsw i32 %conv3, %conv5
  %idxprom = sext i32 %sub6 to i64
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 %idxprom
  %10 = load i8, ptr %arrayidx, align 1, !tbaa !20
  %conv7 = zext i8 %10 to i16
  %11 = load ptr, ptr %word.addr, align 8, !tbaa !5
  store i16 %conv7, ptr %11, align 2, !tbaa !32
  %12 = load ptr, ptr %word.addr, align 8, !tbaa !5
  %13 = load i16, ptr %12, align 2, !tbaa !32
  %conv8 = sext i16 %13 to i32
  %and = and i32 %conv8, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end
  %14 = load ptr, ptr %word.addr, align 8, !tbaa !5
  %15 = load i16, ptr %14, align 2, !tbaa !32
  %conv10 = sext i16 %15 to i32
  %or = or i32 %conv10, 65280
  %conv11 = trunc i32 %or to i16
  store i16 %conv11, ptr %14, align 2, !tbaa !32
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end
  store i1 true, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end12, %if.then
  %16 = load i1, ptr %retval, align 1
  ret i1 %16
}

; Function Attrs: nounwind uwtable
define internal void @add_rel_operand(ptr noundef %info, i16 noundef signext %offset, i16 noundef zeroext %address) #0 {
entry:
  %info.addr = alloca ptr, align 8
  %offset.addr = alloca i16, align 2
  %address.addr = alloca i16, align 2
  %m680x = alloca ptr, align 8
  %op = alloca ptr, align 8
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  store i16 %offset, ptr %offset.addr, align 2, !tbaa !32
  store i16 %address, ptr %address.addr, align 2, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %m680x) #6
  %0 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %m680x1 = getelementptr inbounds %struct.m680x_info, ptr %0, i32 0, i32 4
  store ptr %m680x1, ptr %m680x, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #6
  %1 = load ptr, ptr %m680x, align 8, !tbaa !5
  %operands = getelementptr inbounds %struct.cs_m680x, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %m680x, align 8, !tbaa !5
  %op_count = getelementptr inbounds %struct.cs_m680x, ptr %2, i32 0, i32 1
  %3 = load i8, ptr %op_count, align 1, !tbaa !53
  %inc = add i8 %3, 1
  store i8 %inc, ptr %op_count, align 1, !tbaa !53
  %idxprom = zext i8 %3 to i64
  %arrayidx = getelementptr inbounds [9 x %struct.cs_m680x_op], ptr %operands, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %op, align 8, !tbaa !5
  %4 = load ptr, ptr %op, align 8, !tbaa !5
  %type = getelementptr inbounds %struct.cs_m680x_op, ptr %4, i32 0, i32 0
  store i32 6, ptr %type, align 4, !tbaa !54
  %5 = load ptr, ptr %op, align 8, !tbaa !5
  %size = getelementptr inbounds %struct.cs_m680x_op, ptr %5, i32 0, i32 2
  store i8 0, ptr %size, align 4, !tbaa !56
  %6 = load i16, ptr %offset.addr, align 2, !tbaa !32
  %7 = load ptr, ptr %op, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.cs_m680x_op, ptr %7, i32 0, i32 1
  %offset2 = getelementptr inbounds %struct.m680x_op_rel, ptr %8, i32 0, i32 1
  store i16 %6, ptr %offset2, align 2, !tbaa !20
  %9 = load i16, ptr %address.addr, align 2, !tbaa !32
  %10 = load ptr, ptr %op, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.cs_m680x_op, ptr %10, i32 0, i32 1
  %address3 = getelementptr inbounds %struct.m680x_op_rel, ptr %11, i32 0, i32 0
  store i16 %9, ptr %address3, align 4, !tbaa !20
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %m680x) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @read_word(ptr noundef %info, ptr noundef %word, i16 noundef zeroext %address) #0 {
entry:
  %retval = alloca i1, align 1
  %info.addr = alloca ptr, align 8
  %word.addr = alloca ptr, align 8
  %address.addr = alloca i16, align 2
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  store ptr %word, ptr %word.addr, align 8, !tbaa !5
  store i16 %address, ptr %address.addr, align 2, !tbaa !32
  %0 = load i16, ptr %address.addr, align 2, !tbaa !32
  %conv = zext i16 %0 to i32
  %add = add nsw i32 %conv, 1
  %1 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %offset = getelementptr inbounds %struct.m680x_info, ptr %1, i32 0, i32 2
  %2 = load i16, ptr %offset, align 4, !tbaa !35
  %conv1 = zext i16 %2 to i32
  %sub = sub nsw i32 %add, %conv1
  %3 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %size = getelementptr inbounds %struct.m680x_info, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %size, align 8, !tbaa !34
  %cmp = icmp uge i32 %sub, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %code = getelementptr inbounds %struct.m680x_info, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %code, align 8, !tbaa !33
  %7 = load i16, ptr %address.addr, align 2, !tbaa !32
  %conv3 = zext i16 %7 to i32
  %8 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %offset4 = getelementptr inbounds %struct.m680x_info, ptr %8, i32 0, i32 2
  %9 = load i16, ptr %offset4, align 4, !tbaa !35
  %conv5 = zext i16 %9 to i32
  %sub6 = sub nsw i32 %conv3, %conv5
  %idxprom = sext i32 %sub6 to i64
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 %idxprom
  %10 = load i8, ptr %arrayidx, align 1, !tbaa !20
  %conv7 = zext i8 %10 to i16
  %conv8 = zext i16 %conv7 to i32
  %shl = shl i32 %conv8, 8
  %conv9 = trunc i32 %shl to i16
  %11 = load ptr, ptr %word.addr, align 8, !tbaa !5
  store i16 %conv9, ptr %11, align 2, !tbaa !32
  %12 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %code10 = getelementptr inbounds %struct.m680x_info, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %code10, align 8, !tbaa !33
  %14 = load i16, ptr %address.addr, align 2, !tbaa !32
  %conv11 = zext i16 %14 to i32
  %add12 = add nsw i32 %conv11, 1
  %15 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %offset13 = getelementptr inbounds %struct.m680x_info, ptr %15, i32 0, i32 2
  %16 = load i16, ptr %offset13, align 4, !tbaa !35
  %conv14 = zext i16 %16 to i32
  %sub15 = sub nsw i32 %add12, %conv14
  %idxprom16 = sext i32 %sub15 to i64
  %arrayidx17 = getelementptr inbounds i8, ptr %13, i64 %idxprom16
  %17 = load i8, ptr %arrayidx17, align 1, !tbaa !20
  %conv18 = zext i8 %17 to i16
  %conv19 = zext i16 %conv18 to i32
  %18 = load ptr, ptr %word.addr, align 8, !tbaa !5
  %19 = load i16, ptr %18, align 2, !tbaa !32
  %conv20 = zext i16 %19 to i32
  %or = or i32 %conv20, %conv19
  %conv21 = trunc i32 %or to i16
  store i16 %conv21, ptr %18, align 2, !tbaa !32
  store i1 true, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %20 = load i1, ptr %retval, align 1
  ret i1 %20
}

; Function Attrs: nounwind uwtable
define internal void @set_operand_size(ptr noundef %info, ptr noundef %op, i8 noundef zeroext %default_size) #0 {
entry:
  %info.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %default_size.addr = alloca i8, align 1
  %m680x = alloca ptr, align 8
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  store ptr %op, ptr %op.addr, align 8, !tbaa !5
  store i8 %default_size, ptr %default_size.addr, align 1, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 8, ptr %m680x) #6
  %0 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %m680x1 = getelementptr inbounds %struct.m680x_info, ptr %0, i32 0, i32 4
  store ptr %m680x1, ptr %m680x, align 8, !tbaa !5
  %1 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %insn = getelementptr inbounds %struct.m680x_info, ptr %1, i32 0, i32 6
  %2 = load i32, ptr %insn, align 8, !tbaa !44
  %cmp = icmp eq i32 %2, 171
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %insn2 = getelementptr inbounds %struct.m680x_info, ptr %3, i32 0, i32 6
  %4 = load i32, ptr %insn2, align 8, !tbaa !44
  %cmp3 = icmp eq i32 %4, 172
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %size = getelementptr inbounds %struct.cs_m680x_op, ptr %5, i32 0, i32 2
  store i8 0, ptr %size, align 4, !tbaa !56
  br label %if.end45

if.else:                                          ; preds = %lor.lhs.false
  %6 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %insn4 = getelementptr inbounds %struct.m680x_info, ptr %6, i32 0, i32 6
  %7 = load i32, ptr %insn4, align 8, !tbaa !44
  %cmp5 = icmp eq i32 %7, 135
  br i1 %cmp5, label %if.then13, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %if.else
  %8 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %insn7 = getelementptr inbounds %struct.m680x_info, ptr %8, i32 0, i32 6
  %9 = load i32, ptr %insn7, align 8, !tbaa !44
  %cmp8 = icmp eq i32 %9, 18
  br i1 %cmp8, label %land.lhs.true, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %10 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %insn10 = getelementptr inbounds %struct.m680x_info, ptr %10, i32 0, i32 6
  %11 = load i32, ptr %insn10, align 8, !tbaa !44
  %cmp11 = icmp eq i32 %11, 19
  br i1 %cmp11, label %land.lhs.true, label %if.else15

land.lhs.true:                                    ; preds = %lor.lhs.false9, %lor.lhs.false6
  %12 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %type = getelementptr inbounds %struct.cs_m680x_op, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %type, align 4, !tbaa !54
  %cmp12 = icmp ne i32 %13, 1
  br i1 %cmp12, label %if.then13, label %if.else15

if.then13:                                        ; preds = %land.lhs.true, %if.else
  %14 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %size14 = getelementptr inbounds %struct.cs_m680x_op, ptr %14, i32 0, i32 2
  store i8 1, ptr %size14, align 4, !tbaa !56
  br label %if.end44

if.else15:                                        ; preds = %land.lhs.true, %lor.lhs.false9
  %15 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %insn16 = getelementptr inbounds %struct.m680x_info, ptr %15, i32 0, i32 6
  %16 = load i32, ptr %insn16, align 8, !tbaa !44
  %cmp17 = icmp eq i32 %16, 136
  br i1 %cmp17, label %if.then21, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %if.else15
  %17 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %insn19 = getelementptr inbounds %struct.m680x_info, ptr %17, i32 0, i32 6
  %18 = load i32, ptr %insn19, align 8, !tbaa !44
  %cmp20 = icmp eq i32 %18, 228
  br i1 %cmp20, label %if.then21, label %if.else23

if.then21:                                        ; preds = %lor.lhs.false18, %if.else15
  %19 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %size22 = getelementptr inbounds %struct.cs_m680x_op, ptr %19, i32 0, i32 2
  store i8 2, ptr %size22, align 4, !tbaa !56
  br label %if.end43

if.else23:                                        ; preds = %lor.lhs.false18
  %20 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %insn24 = getelementptr inbounds %struct.m680x_info, ptr %20, i32 0, i32 6
  %21 = load i32, ptr %insn24, align 8, !tbaa !44
  %cmp25 = icmp eq i32 %21, 140
  br i1 %cmp25, label %if.then26, label %if.else28

if.then26:                                        ; preds = %if.else23
  %22 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %size27 = getelementptr inbounds %struct.cs_m680x_op, ptr %22, i32 0, i32 2
  store i8 4, ptr %size27, align 4, !tbaa !56
  br label %if.end42

if.else28:                                        ; preds = %if.else23
  %23 = load ptr, ptr %m680x, align 8, !tbaa !5
  %op_count = getelementptr inbounds %struct.cs_m680x, ptr %23, i32 0, i32 1
  %24 = load i8, ptr %op_count, align 1, !tbaa !53
  %conv = zext i8 %24 to i32
  %cmp29 = icmp sgt i32 %conv, 0
  br i1 %cmp29, label %land.lhs.true31, label %if.else40

land.lhs.true31:                                  ; preds = %if.else28
  %25 = load ptr, ptr %m680x, align 8, !tbaa !5
  %operands = getelementptr inbounds %struct.cs_m680x, ptr %25, i32 0, i32 2
  %arrayidx = getelementptr inbounds [9 x %struct.cs_m680x_op], ptr %operands, i64 0, i64 0
  %type32 = getelementptr inbounds %struct.cs_m680x_op, ptr %arrayidx, i32 0, i32 0
  %26 = load i32, ptr %type32, align 4, !tbaa !54
  %cmp33 = icmp eq i32 %26, 1
  br i1 %cmp33, label %if.then35, label %if.else40

if.then35:                                        ; preds = %land.lhs.true31
  %27 = load ptr, ptr %m680x, align 8, !tbaa !5
  %operands36 = getelementptr inbounds %struct.cs_m680x, ptr %27, i32 0, i32 2
  %arrayidx37 = getelementptr inbounds [9 x %struct.cs_m680x_op], ptr %operands36, i64 0, i64 0
  %size38 = getelementptr inbounds %struct.cs_m680x_op, ptr %arrayidx37, i32 0, i32 2
  %28 = load i8, ptr %size38, align 4, !tbaa !56
  %29 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %size39 = getelementptr inbounds %struct.cs_m680x_op, ptr %29, i32 0, i32 2
  store i8 %28, ptr %size39, align 4, !tbaa !56
  br label %if.end

if.else40:                                        ; preds = %land.lhs.true31, %if.else28
  %30 = load i8, ptr %default_size.addr, align 1, !tbaa !20
  %31 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %size41 = getelementptr inbounds %struct.cs_m680x_op, ptr %31, i32 0, i32 2
  store i8 %30, ptr %size41, align 4, !tbaa !56
  br label %if.end

if.end:                                           ; preds = %if.else40, %if.then35
  br label %if.end42

if.end42:                                         ; preds = %if.end, %if.then26
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.then21
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then13
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %m680x) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @read_sdword(ptr noundef %info, ptr noundef %sdword, i16 noundef zeroext %address) #0 {
entry:
  %retval = alloca i1, align 1
  %info.addr = alloca ptr, align 8
  %sdword.addr = alloca ptr, align 8
  %address.addr = alloca i16, align 2
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  store ptr %sdword, ptr %sdword.addr, align 8, !tbaa !5
  store i16 %address, ptr %address.addr, align 2, !tbaa !32
  %0 = load i16, ptr %address.addr, align 2, !tbaa !32
  %conv = zext i16 %0 to i32
  %add = add nsw i32 %conv, 3
  %1 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %offset = getelementptr inbounds %struct.m680x_info, ptr %1, i32 0, i32 2
  %2 = load i16, ptr %offset, align 4, !tbaa !35
  %conv1 = zext i16 %2 to i32
  %sub = sub nsw i32 %add, %conv1
  %3 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %size = getelementptr inbounds %struct.m680x_info, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %size, align 8, !tbaa !34
  %cmp = icmp uge i32 %sub, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %code = getelementptr inbounds %struct.m680x_info, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %code, align 8, !tbaa !33
  %7 = load i16, ptr %address.addr, align 2, !tbaa !32
  %conv3 = zext i16 %7 to i32
  %8 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %offset4 = getelementptr inbounds %struct.m680x_info, ptr %8, i32 0, i32 2
  %9 = load i16, ptr %offset4, align 4, !tbaa !35
  %conv5 = zext i16 %9 to i32
  %sub6 = sub nsw i32 %conv3, %conv5
  %idxprom = sext i32 %sub6 to i64
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 %idxprom
  %10 = load i8, ptr %arrayidx, align 1, !tbaa !20
  %conv7 = zext i8 %10 to i32
  %shl = shl i32 %conv7, 24
  %11 = load ptr, ptr %sdword.addr, align 8, !tbaa !5
  store i32 %shl, ptr %11, align 4, !tbaa !9
  %12 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %code8 = getelementptr inbounds %struct.m680x_info, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %code8, align 8, !tbaa !33
  %14 = load i16, ptr %address.addr, align 2, !tbaa !32
  %conv9 = zext i16 %14 to i32
  %add10 = add nsw i32 %conv9, 1
  %15 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %offset11 = getelementptr inbounds %struct.m680x_info, ptr %15, i32 0, i32 2
  %16 = load i16, ptr %offset11, align 4, !tbaa !35
  %conv12 = zext i16 %16 to i32
  %sub13 = sub nsw i32 %add10, %conv12
  %idxprom14 = sext i32 %sub13 to i64
  %arrayidx15 = getelementptr inbounds i8, ptr %13, i64 %idxprom14
  %17 = load i8, ptr %arrayidx15, align 1, !tbaa !20
  %conv16 = zext i8 %17 to i32
  %shl17 = shl i32 %conv16, 16
  %18 = load ptr, ptr %sdword.addr, align 8, !tbaa !5
  %19 = load i32, ptr %18, align 4, !tbaa !9
  %or = or i32 %19, %shl17
  store i32 %or, ptr %18, align 4, !tbaa !9
  %20 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %code18 = getelementptr inbounds %struct.m680x_info, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %code18, align 8, !tbaa !33
  %22 = load i16, ptr %address.addr, align 2, !tbaa !32
  %conv19 = zext i16 %22 to i32
  %add20 = add nsw i32 %conv19, 2
  %23 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %offset21 = getelementptr inbounds %struct.m680x_info, ptr %23, i32 0, i32 2
  %24 = load i16, ptr %offset21, align 4, !tbaa !35
  %conv22 = zext i16 %24 to i32
  %sub23 = sub nsw i32 %add20, %conv22
  %idxprom24 = sext i32 %sub23 to i64
  %arrayidx25 = getelementptr inbounds i8, ptr %21, i64 %idxprom24
  %25 = load i8, ptr %arrayidx25, align 1, !tbaa !20
  %conv26 = zext i8 %25 to i32
  %shl27 = shl i32 %conv26, 8
  %26 = load ptr, ptr %sdword.addr, align 8, !tbaa !5
  %27 = load i32, ptr %26, align 4, !tbaa !9
  %or28 = or i32 %27, %shl27
  store i32 %or28, ptr %26, align 4, !tbaa !9
  %28 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %code29 = getelementptr inbounds %struct.m680x_info, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %code29, align 8, !tbaa !33
  %30 = load i16, ptr %address.addr, align 2, !tbaa !32
  %conv30 = zext i16 %30 to i32
  %add31 = add nsw i32 %conv30, 3
  %31 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %offset32 = getelementptr inbounds %struct.m680x_info, ptr %31, i32 0, i32 2
  %32 = load i16, ptr %offset32, align 4, !tbaa !35
  %conv33 = zext i16 %32 to i32
  %sub34 = sub nsw i32 %add31, %conv33
  %idxprom35 = sext i32 %sub34 to i64
  %arrayidx36 = getelementptr inbounds i8, ptr %29, i64 %idxprom35
  %33 = load i8, ptr %arrayidx36, align 1, !tbaa !20
  %conv37 = zext i8 %33 to i32
  %34 = load ptr, ptr %sdword.addr, align 8, !tbaa !5
  %35 = load i32, ptr %34, align 4, !tbaa !9
  %or38 = or i32 %35, %conv37
  store i32 %or38, ptr %34, align 4, !tbaa !9
  store i1 true, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %36 = load i1, ptr %retval, align 1
  ret i1 %36
}

; Function Attrs: nounwind uwtable
define internal void @add_indexed_operand(ptr noundef %info, i32 noundef %base_reg, i1 noundef zeroext %post_inc_dec, i8 noundef zeroext %inc_dec, i8 noundef zeroext %offset_bits, i16 noundef zeroext %offset, i1 noundef zeroext %no_comma) #0 {
entry:
  %info.addr = alloca ptr, align 8
  %base_reg.addr = alloca i32, align 4
  %post_inc_dec.addr = alloca i8, align 1
  %inc_dec.addr = alloca i8, align 1
  %offset_bits.addr = alloca i8, align 1
  %offset.addr = alloca i16, align 2
  %no_comma.addr = alloca i8, align 1
  %m680x = alloca ptr, align 8
  %op = alloca ptr, align 8
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  store i32 %base_reg, ptr %base_reg.addr, align 4, !tbaa !20
  %frombool = zext i1 %post_inc_dec to i8
  store i8 %frombool, ptr %post_inc_dec.addr, align 1, !tbaa !67
  store i8 %inc_dec, ptr %inc_dec.addr, align 1, !tbaa !20
  store i8 %offset_bits, ptr %offset_bits.addr, align 1, !tbaa !20
  store i16 %offset, ptr %offset.addr, align 2, !tbaa !32
  %frombool1 = zext i1 %no_comma to i8
  store i8 %frombool1, ptr %no_comma.addr, align 1, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 8, ptr %m680x) #6
  %0 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %m680x2 = getelementptr inbounds %struct.m680x_info, ptr %0, i32 0, i32 4
  store ptr %m680x2, ptr %m680x, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #6
  %1 = load ptr, ptr %m680x, align 8, !tbaa !5
  %operands = getelementptr inbounds %struct.cs_m680x, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %m680x, align 8, !tbaa !5
  %op_count = getelementptr inbounds %struct.cs_m680x, ptr %2, i32 0, i32 1
  %3 = load i8, ptr %op_count, align 1, !tbaa !53
  %inc = add i8 %3, 1
  store i8 %inc, ptr %op_count, align 1, !tbaa !53
  %idxprom = zext i8 %3 to i64
  %arrayidx = getelementptr inbounds [9 x %struct.cs_m680x_op], ptr %operands, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %op, align 8, !tbaa !5
  %4 = load ptr, ptr %op, align 8, !tbaa !5
  %type = getelementptr inbounds %struct.cs_m680x_op, ptr %4, i32 0, i32 0
  store i32 3, ptr %type, align 4, !tbaa !54
  %5 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %6 = load ptr, ptr %op, align 8, !tbaa !5
  call void @set_operand_size(ptr noundef %5, ptr noundef %6, i8 noundef zeroext 1)
  %7 = load i32, ptr %base_reg.addr, align 4, !tbaa !20
  %8 = load ptr, ptr %op, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.cs_m680x_op, ptr %8, i32 0, i32 1
  %base_reg3 = getelementptr inbounds %struct.m680x_op_idx, ptr %9, i32 0, i32 0
  store i32 %7, ptr %base_reg3, align 4, !tbaa !20
  %10 = load ptr, ptr %op, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.cs_m680x_op, ptr %10, i32 0, i32 1
  %offset_reg = getelementptr inbounds %struct.m680x_op_idx, ptr %11, i32 0, i32 1
  store i32 0, ptr %offset_reg, align 4, !tbaa !20
  %12 = load i8, ptr %inc_dec.addr, align 1, !tbaa !20
  %13 = load ptr, ptr %op, align 8, !tbaa !5
  %14 = getelementptr inbounds %struct.cs_m680x_op, ptr %13, i32 0, i32 1
  %inc_dec4 = getelementptr inbounds %struct.m680x_op_idx, ptr %14, i32 0, i32 5
  store i8 %12, ptr %inc_dec4, align 1, !tbaa !20
  %15 = load i8, ptr %inc_dec.addr, align 1, !tbaa !20
  %conv = zext i8 %15 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %16 = load i8, ptr %post_inc_dec.addr, align 1, !tbaa !67, !range !68, !noundef !69
  %tobool5 = trunc i8 %16 to i1
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %17 = load ptr, ptr %op, align 8, !tbaa !5
  %18 = getelementptr inbounds %struct.cs_m680x_op, ptr %17, i32 0, i32 1
  %flags = getelementptr inbounds %struct.m680x_op_idx, ptr %18, i32 0, i32 6
  %19 = load i8, ptr %flags, align 2, !tbaa !20
  %conv7 = zext i8 %19 to i32
  %or = or i32 %conv7, 4
  %conv8 = trunc i32 %or to i8
  store i8 %conv8, ptr %flags, align 2, !tbaa !20
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %20 = load i8, ptr %offset_bits.addr, align 1, !tbaa !20
  %conv9 = zext i8 %20 to i32
  %cmp = icmp ne i32 %conv9, 0
  br i1 %cmp, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end
  %21 = load i16, ptr %offset.addr, align 2, !tbaa !32
  %22 = load ptr, ptr %op, align 8, !tbaa !5
  %23 = getelementptr inbounds %struct.cs_m680x_op, ptr %22, i32 0, i32 1
  %offset12 = getelementptr inbounds %struct.m680x_op_idx, ptr %23, i32 0, i32 2
  store i16 %21, ptr %offset12, align 4, !tbaa !20
  %24 = load ptr, ptr %op, align 8, !tbaa !5
  %25 = getelementptr inbounds %struct.cs_m680x_op, ptr %24, i32 0, i32 1
  %offset_addr = getelementptr inbounds %struct.m680x_op_idx, ptr %25, i32 0, i32 3
  store i16 0, ptr %offset_addr, align 2, !tbaa !20
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end
  %26 = load i8, ptr %offset_bits.addr, align 1, !tbaa !20
  %27 = load ptr, ptr %op, align 8, !tbaa !5
  %28 = getelementptr inbounds %struct.cs_m680x_op, ptr %27, i32 0, i32 1
  %offset_bits14 = getelementptr inbounds %struct.m680x_op_idx, ptr %28, i32 0, i32 4
  store i8 %26, ptr %offset_bits14, align 4, !tbaa !20
  %29 = load i8, ptr %no_comma.addr, align 1, !tbaa !67, !range !68, !noundef !69
  %tobool15 = trunc i8 %29 to i1
  %30 = zext i1 %tobool15 to i64
  %cond = select i1 %tobool15, i32 2, i32 0
  %31 = load ptr, ptr %op, align 8, !tbaa !5
  %32 = getelementptr inbounds %struct.cs_m680x_op, ptr %31, i32 0, i32 1
  %flags17 = getelementptr inbounds %struct.m680x_op_idx, ptr %32, i32 0, i32 6
  %33 = load i8, ptr %flags17, align 2, !tbaa !20
  %conv18 = zext i8 %33 to i32
  %or19 = or i32 %conv18, %cond
  %conv20 = trunc i32 %or19 to i8
  store i8 %conv20, ptr %flags17, align 2, !tbaa !20
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %m680x) #6
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() #5

; Function Attrs: nounwind uwtable
define internal zeroext i1 @exists_reg_list(ptr noundef %regs, i8 noundef zeroext %count, i32 noundef %reg) #0 {
entry:
  %retval = alloca i1, align 1
  %regs.addr = alloca ptr, align 8
  %count.addr = alloca i8, align 1
  %reg.addr = alloca i32, align 4
  %i = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %regs, ptr %regs.addr, align 8, !tbaa !5
  store i8 %count, ptr %count.addr, align 1, !tbaa !20
  store i32 %reg, ptr %reg.addr, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 1, ptr %i) #6
  store i8 0, ptr %i, align 1, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, ptr %i, align 1, !tbaa !20
  %conv = zext i8 %0 to i32
  %1 = load i8, ptr %count.addr, align 1, !tbaa !20
  %conv1 = zext i8 %1 to i32
  %cmp = icmp slt i32 %conv, %conv1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %regs.addr, align 8, !tbaa !5
  %3 = load i8, ptr %i, align 1, !tbaa !20
  %idxprom = zext i8 %3 to i64
  %arrayidx = getelementptr inbounds i16, ptr %2, i64 %idxprom
  %4 = load i16, ptr %arrayidx, align 2, !tbaa !32
  %conv3 = zext i16 %4 to i32
  %5 = load i32, ptr %reg.addr, align 4, !tbaa !20
  %conv4 = trunc i32 %5 to i16
  %conv5 = zext i16 %conv4 to i32
  %cmp6 = icmp eq i32 %conv3, %conv5
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i1 true, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i8, ptr %i, align 1, !tbaa !20
  %inc = add i8 %6, 1
  store i8 %inc, ptr %i, align 1, !tbaa !20
  br label %for.cond, !llvm.loop !74

for.end:                                          ; preds = %for.cond
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %i) #6
  %7 = load i1, ptr %retval, align 1
  ret i1 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @get_access(i32 noundef %operator_index, i32 noundef %access_mode) #0 {
entry:
  %operator_index.addr = alloca i32, align 4
  %access_mode.addr = alloca i32, align 4
  %idx = alloca i32, align 4
  store i32 %operator_index, ptr %operator_index.addr, align 4, !tbaa !9
  store i32 %access_mode, ptr %access_mode.addr, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #6
  %0 = load i32, ptr %operator_index.addr, align 4, !tbaa !9
  %cmp = icmp sgt i32 %0, 3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i32, ptr %operator_index.addr, align 4, !tbaa !9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 3, %cond.true ], [ %1, %cond.false ]
  store i32 %cond, ptr %idx, align 4, !tbaa !9
  %2 = load i32, ptr %idx, align 4, !tbaa !9
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [4 x [15 x i32]], ptr @g_access_mode_to_access, i64 0, i64 %idxprom
  %3 = load i32, ptr %access_mode.addr, align 4, !tbaa !20
  %idxprom1 = zext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [15 x i32], ptr %arrayidx, i64 0, i64 %idxprom1
  %4 = load i32, ptr %arrayidx2, align 4, !tbaa !20
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #6
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal void @update_am_reg_list(ptr noundef %MI, ptr noundef %info, ptr noundef %op, i32 noundef %access) #0 {
entry:
  %MI.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %access.addr = alloca i32, align 4
  store ptr %MI, ptr %MI.addr, align 8, !tbaa !5
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  store ptr %op, ptr %op.addr, align 8, !tbaa !5
  store i32 %access, ptr %access.addr, align 4, !tbaa !20
  %0 = load ptr, ptr %MI.addr, align 8, !tbaa !5
  %flat_insn = getelementptr inbounds %struct.MCInst, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %flat_insn, align 8, !tbaa !37
  %detail = getelementptr inbounds %struct.cs_insn, ptr %1, i32 0, i32 6
  %2 = load ptr, ptr %detail, align 8, !tbaa !39
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %sw.epilog

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %type = getelementptr inbounds %struct.cs_m680x_op, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %type, align 4, !tbaa !54
  switch i32 %4, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb1
  ]

sw.bb:                                            ; preds = %if.end
  %5 = load ptr, ptr %MI.addr, align 8, !tbaa !5
  %6 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.cs_m680x_op, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !20
  %9 = load i32, ptr %access.addr, align 4, !tbaa !20
  call void @add_reg_to_rw_list(ptr noundef %5, i32 noundef %8, i32 noundef %9)
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  %10 = load ptr, ptr %MI.addr, align 8, !tbaa !5
  %11 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.cs_m680x_op, ptr %11, i32 0, i32 1
  %base_reg = getelementptr inbounds %struct.m680x_op_idx, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %base_reg, align 4, !tbaa !20
  call void @add_reg_to_rw_list(ptr noundef %10, i32 noundef %13, i32 noundef 1)
  %14 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.cs_m680x_op, ptr %14, i32 0, i32 1
  %base_reg2 = getelementptr inbounds %struct.m680x_op_idx, ptr %15, i32 0, i32 0
  %16 = load i32, ptr %base_reg2, align 4, !tbaa !20
  %cmp3 = icmp eq i32 %16, 13
  br i1 %cmp3, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %sw.bb1
  %17 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %cpu = getelementptr inbounds %struct.m680x_info, ptr %17, i32 0, i32 5
  %18 = load ptr, ptr %cpu, align 8, !tbaa !16
  %reg_byte_size = getelementptr inbounds %struct.cpu_tables, ptr %18, i32 0, i32 6
  %19 = load ptr, ptr %reg_byte_size, align 8, !tbaa !45
  %arrayidx = getelementptr inbounds i8, ptr %19, i64 12
  %20 = load i8, ptr %arrayidx, align 1, !tbaa !20
  %conv = zext i8 %20 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.then4, label %if.end5

if.then4:                                         ; preds = %land.lhs.true
  %21 = load ptr, ptr %MI.addr, align 8, !tbaa !5
  call void @add_reg_to_rw_list(ptr noundef %21, i32 noundef 12, i32 noundef 1)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %land.lhs.true, %sw.bb1
  %22 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %23 = getelementptr inbounds %struct.cs_m680x_op, ptr %22, i32 0, i32 1
  %offset_reg = getelementptr inbounds %struct.m680x_op_idx, ptr %23, i32 0, i32 1
  %24 = load i32, ptr %offset_reg, align 4, !tbaa !20
  %cmp6 = icmp ne i32 %24, 0
  br i1 %cmp6, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  %25 = load ptr, ptr %MI.addr, align 8, !tbaa !5
  %26 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %27 = getelementptr inbounds %struct.cs_m680x_op, ptr %26, i32 0, i32 1
  %offset_reg9 = getelementptr inbounds %struct.m680x_op_idx, ptr %27, i32 0, i32 1
  %28 = load i32, ptr %offset_reg9, align 4, !tbaa !20
  call void @add_reg_to_rw_list(ptr noundef %25, i32 noundef %28, i32 noundef 1)
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end5
  %29 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %30 = getelementptr inbounds %struct.cs_m680x_op, ptr %29, i32 0, i32 1
  %inc_dec = getelementptr inbounds %struct.m680x_op_idx, ptr %30, i32 0, i32 5
  %31 = load i8, ptr %inc_dec, align 1, !tbaa !20
  %tobool11 = icmp ne i8 %31, 0
  br i1 %tobool11, label %if.then12, label %if.end25

if.then12:                                        ; preds = %if.end10
  %32 = load ptr, ptr %MI.addr, align 8, !tbaa !5
  %33 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %34 = getelementptr inbounds %struct.cs_m680x_op, ptr %33, i32 0, i32 1
  %base_reg13 = getelementptr inbounds %struct.m680x_op_idx, ptr %34, i32 0, i32 0
  %35 = load i32, ptr %base_reg13, align 4, !tbaa !20
  call void @add_reg_to_rw_list(ptr noundef %32, i32 noundef %35, i32 noundef 2)
  %36 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %37 = getelementptr inbounds %struct.cs_m680x_op, ptr %36, i32 0, i32 1
  %base_reg14 = getelementptr inbounds %struct.m680x_op_idx, ptr %37, i32 0, i32 0
  %38 = load i32, ptr %base_reg14, align 4, !tbaa !20
  %cmp15 = icmp eq i32 %38, 13
  br i1 %cmp15, label %land.lhs.true17, label %if.end24

land.lhs.true17:                                  ; preds = %if.then12
  %39 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %cpu18 = getelementptr inbounds %struct.m680x_info, ptr %39, i32 0, i32 5
  %40 = load ptr, ptr %cpu18, align 8, !tbaa !16
  %reg_byte_size19 = getelementptr inbounds %struct.cpu_tables, ptr %40, i32 0, i32 6
  %41 = load ptr, ptr %reg_byte_size19, align 8, !tbaa !45
  %arrayidx20 = getelementptr inbounds i8, ptr %41, i64 12
  %42 = load i8, ptr %arrayidx20, align 1, !tbaa !20
  %conv21 = zext i8 %42 to i32
  %tobool22 = icmp ne i32 %conv21, 0
  br i1 %tobool22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %land.lhs.true17
  %43 = load ptr, ptr %MI.addr, align 8, !tbaa !5
  call void @add_reg_to_rw_list(ptr noundef %43, i32 noundef 12, i32 noundef 2)
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %land.lhs.true17, %if.then12
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end10
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.default, %if.end25, %sw.bb
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!12, !6, i64 16}
!12 = !{!"cs_struct", !7, i64 0, !7, i64 4, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !7, i64 80, !13, i64 84, !7, i64 96, !7, i64 100, !10, i64 104, !14, i64 108, !6, i64 112, !6, i64 120, !14, i64 128, !7, i64 129, !15, i64 136, !6, i64 160, !6, i64 168, !6, i64 176}
!13 = !{!"ARM_ITStatus", !7, i64 0, !10, i64 8}
!14 = !{!"_Bool", !7, i64 0}
!15 = !{!"cs_opt_skipdata", !6, i64 0, !6, i64 8, !6, i64 16}
!16 = !{!17, !6, i64 240}
!17 = !{!"m680x_info", !6, i64 0, !10, i64 8, !18, i64 12, !7, i64 16, !19, i64 20, !6, i64 240, !7, i64 248, !7, i64 252}
!18 = !{!"short", !7, i64 0}
!19 = !{!"cs_m680x", !7, i64 0, !7, i64 1, !7, i64 4}
!20 = !{!7, !7, i64 0}
!21 = !{!22, !10, i64 0}
!22 = !{!"cs_insn", !10, i64 0, !23, i64 8, !18, i64 16, !7, i64 18, !7, i64 42, !7, i64 74, !6, i64 240}
!23 = !{!"long", !7, i64 0}
!24 = !{!23, !23, i64 0}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!28, !6, i64 0}
!28 = !{!"", !6, i64 0, !7, i64 8, !7, i64 24, !7, i64 40, !7, i64 48, !7, i64 72, !6, i64 96, !6, i64 104, !7, i64 112}
!29 = distinct !{!29, !26}
!30 = distinct !{!30, !26}
!31 = !{!12, !7, i64 4}
!32 = !{!18, !18, i64 0}
!33 = !{!17, !6, i64 0}
!34 = !{!17, !10, i64 8}
!35 = !{!17, !18, i64 12}
!36 = !{!17, !7, i64 16}
!37 = !{!38, !6, i64 784}
!38 = !{!"MCInst", !10, i64 0, !7, i64 4, !14, i64 5, !7, i64 6, !10, i64 8, !7, i64 16, !6, i64 784, !23, i64 792, !6, i64 800, !7, i64 808, !7, i64 809, !7, i64 813, !14, i64 814, !7, i64 815, !7, i64 816, !7, i64 817, !7, i64 825}
!39 = !{!22, !6, i64 240}
!40 = !{!17, !7, i64 252}
!41 = !{!42, !10, i64 0}
!42 = !{!"insn_desc", !10, i64 0, !7, i64 4, !7, i64 8, !18, i64 16}
!43 = !{!42, !7, i64 4}
!44 = !{!17, !7, i64 248}
!45 = !{!28, !6, i64 96}
!46 = !{!19, !7, i64 0}
!47 = !{!42, !18, i64 16}
!48 = !{!49, !7, i64 32}
!49 = !{!"cs_detail", !7, i64 0, !7, i64 32, !7, i64 34, !7, i64 74, !7, i64 75, !7, i64 83, !7, i64 88}
!50 = !{!49, !7, i64 74}
!51 = distinct !{!51, !26}
!52 = distinct !{!52, !26}
!53 = !{!19, !7, i64 1}
!54 = !{!55, !7, i64 0}
!55 = !{!"cs_m680x_op", !7, i64 0, !7, i64 4, !7, i64 20, !7, i64 21}
!56 = !{!55, !7, i64 20}
!57 = !{!49, !7, i64 83}
!58 = distinct !{!58, !26}
!59 = !{!55, !7, i64 21}
!60 = distinct !{!60, !26}
!61 = !{!62, !7, i64 0}
!62 = !{!"insn_to_changed_regs", !7, i64 0, !7, i64 4, !7, i64 8}
!63 = !{!62, !7, i64 4}
!64 = distinct !{!64, !26}
!65 = distinct !{!65, !26}
!66 = !{!17, !7, i64 21}
!67 = !{!14, !14, i64 0}
!68 = !{i8 0, i8 2}
!69 = !{}
!70 = distinct !{!70, !26}
!71 = !{!28, !6, i64 104}
!72 = distinct !{!72, !26}
!73 = !{!38, !10, i64 8}
!74 = distinct !{!74, !26}

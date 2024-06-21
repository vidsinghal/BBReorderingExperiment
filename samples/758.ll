; ModuleID = 'samples/758.bc'
source_filename = "bitwise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oggpack_buffer = type { i64, i32, ptr, ptr, i64 }

@mask = internal constant [33 x i64] [i64 0, i64 1, i64 3, i64 7, i64 15, i64 31, i64 63, i64 127, i64 255, i64 511, i64 1023, i64 2047, i64 4095, i64 8191, i64 16383, i64 32767, i64 65535, i64 131071, i64 262143, i64 524287, i64 1048575, i64 2097151, i64 4194303, i64 8388607, i64 16777215, i64 33554431, i64 67108863, i64 134217727, i64 268435455, i64 536870911, i64 1073741823, i64 2147483647, i64 4294967295], align 16, !dbg !0
@mask8B = internal constant [9 x i32] [i32 0, i32 128, i32 192, i32 224, i32 240, i32 248, i32 252, i32 254, i32 255], align 16, !dbg !257
@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !10
@o = dso_local global %struct.oggpack_buffer zeroinitializer, align 8, !dbg !244
@.str.1 = private unnamed_addr constant [24 x i8] c"wrong number of bytes!\0A\00", align 1, !dbg !16
@.str.2 = private unnamed_addr constant [7 x i8] c"%x %x\0A\00", align 1, !dbg !21
@.str.3 = private unnamed_addr constant [24 x i8] c"wrote incorrect value!\0A\00", align 1, !dbg !26
@r = dso_local global %struct.oggpack_buffer zeroinitializer, align 8, !dbg !255
@.str.4 = private unnamed_addr constant [14 x i8] c"out of data!\0A\00", align 1, !dbg !28
@.str.5 = private unnamed_addr constant [28 x i8] c"looked at incorrect value!\0A\00", align 1, !dbg !33
@.str.6 = private unnamed_addr constant [39 x i8] c"looked at single bit incorrect value!\0A\00", align 1, !dbg !38
@.str.7 = private unnamed_addr constant [34 x i8] c"read incorrect single bit value!\0A\00", align 1, !dbg !43
@.str.8 = private unnamed_addr constant [23 x i8] c"read incorrect value!\0A\00", align 1, !dbg !48
@.str.9 = private unnamed_addr constant [28 x i8] c"leftover bytes after read!\0A\00", align 1, !dbg !53
@.str.10 = private unnamed_addr constant [46 x i8] c"wrong number of bytes after prefill! %ld!=%d\0A\00", align 1, !dbg !55
@.str.11 = private unnamed_addr constant [38 x i8] c"prefill=%d mismatch! byte %d, %x!=%x\0A\00", align 1, !dbg !60
@.str.12 = private unnamed_addr constant [45 x i8] c"prefill=%d mismatch! trailing bits not zero\0A\00", align 1, !dbg !65
@.str.13 = private unnamed_addr constant [51 x i8] c"wrong number of bytes after prefill+copy! %ld!=%d\0A\00", align 1, !dbg !70
@.str.14 = private unnamed_addr constant [46 x i8] c"prefill=%d copy=%d mismatch! byte %d, %x!=%x\0A\00", align 1, !dbg !75
@.str.15 = private unnamed_addr constant [53 x i8] c"prefill=%d copy=%d mismatch! trailing bits not zero\0A\00", align 1, !dbg !77
@main.testbuffer1 = internal global [43 x i64] [i64 18, i64 12, i64 103948, i64 4325, i64 543, i64 76, i64 432, i64 52, i64 3, i64 65, i64 4, i64 56, i64 32, i64 42, i64 34, i64 21, i64 1, i64 23, i64 32, i64 546, i64 456, i64 7, i64 567, i64 56, i64 8, i64 8, i64 55, i64 3, i64 52, i64 342, i64 341, i64 4, i64 265, i64 7, i64 67, i64 86, i64 2199, i64 21, i64 7, i64 1, i64 5, i64 1, i64 4], align 16, !dbg !82
@main.testbuffer2 = internal global [21 x i64] [i64 216531625, i64 1237861823, i64 56732452, i64 131, i64 3212421, i64 12325343, i64 34547562, i64 12313212, i64 1233432, i64 534, i64 5, i64 346435231, i64 14436467, i64 7869299, i64 76326614, i64 167548585, i64 85525151, i64 0, i64 12321, i64 1, i64 349528352], align 16, !dbg !105
@main.testbuffer3 = internal global [56 x i64] [i64 1, i64 0, i64 14, i64 0, i64 1, i64 0, i64 12, i64 0, i64 1, i64 0, i64 0, i64 0, i64 1, i64 1, i64 0, i64 1, i64 0, i64 1, i64 0, i64 1, i64 0, i64 1, i64 0, i64 1, i64 0, i64 1, i64 0, i64 0, i64 1, i64 1, i64 1, i64 1, i64 1, i64 0, i64 0, i64 1, i64 0, i64 1, i64 30, i64 1, i64 1, i64 1, i64 0, i64 0, i64 1, i64 0, i64 0, i64 0, i64 12, i64 0, i64 11, i64 0, i64 1, i64 0, i64 0, i64 1], align 16, !dbg !110
@main.large = internal global [21 x i64] [i64 2136531625, i64 2137861823, i64 56732452, i64 131, i64 3212421, i64 12325343, i64 34547562, i64 12313212, i64 1233432, i64 534, i64 5, i64 2146435231, i64 14436467, i64 7869299, i64 76326614, i64 167548585, i64 85525151, i64 0, i64 12321, i64 1, i64 2146528352], align 16, !dbg !115
@main.one = internal global [33 x i32] [i32 146, i32 25, i32 44, i32 151, i32 195, i32 15, i32 153, i32 176, i32 233, i32 131, i32 196, i32 65, i32 85, i32 172, i32 47, i32 40, i32 34, i32 242, i32 223, i32 136, i32 35, i32 222, i32 211, i32 86, i32 171, i32 50, i32 225, i32 135, i32 214, i32 75, i32 172, i32 223, i32 4], align 16, !dbg !117
@main.oneB = internal global [33 x i32] [i32 150, i32 101, i32 131, i32 33, i32 203, i32 15, i32 204, i32 216, i32 105, i32 193, i32 156, i32 65, i32 84, i32 85, i32 222, i32 8, i32 139, i32 145, i32 227, i32 126, i32 34, i32 55, i32 244, i32 171, i32 85, i32 100, i32 39, i32 195, i32 173, i32 18, i32 245, i32 251, i32 128], align 16, !dbg !122
@main.two = internal global [6 x i32] [i32 61, i32 255, i32 255, i32 251, i32 231, i32 29], align 16, !dbg !124
@main.twoB = internal global [6 x i32] [i32 247, i32 63, i32 255, i32 253, i32 249, i32 120], align 16, !dbg !129
@main.three = internal global [54 x i32] [i32 169, i32 2, i32 232, i32 252, i32 91, i32 132, i32 156, i32 36, i32 89, i32 13, i32 123, i32 176, i32 144, i32 32, i32 254, i32 142, i32 224, i32 85, i32 59, i32 121, i32 144, i32 79, i32 124, i32 23, i32 67, i32 90, i32 90, i32 216, i32 79, i32 23, i32 83, i32 58, i32 135, i32 196, i32 61, i32 55, i32 129, i32 183, i32 54, i32 101, i32 100, i32 170, i32 37, i32 127, i32 126, i32 10, i32 100, i32 52, i32 4, i32 14, i32 18, i32 86, i32 77, i32 1], align 16, !dbg !131
@main.threeB = internal global [54 x i32] [i32 206, i32 128, i32 42, i32 153, i32 57, i32 8, i32 183, i32 251, i32 13, i32 89, i32 36, i32 30, i32 32, i32 144, i32 183, i32 130, i32 59, i32 240, i32 121, i32 59, i32 85, i32 223, i32 19, i32 228, i32 180, i32 134, i32 33, i32 107, i32 74, i32 98, i32 233, i32 253, i32 196, i32 135, i32 63, i32 2, i32 110, i32 114, i32 50, i32 155, i32 90, i32 127, i32 37, i32 170, i32 104, i32 200, i32 20, i32 254, i32 4, i32 58, i32 106, i32 176, i32 144, i32 0], align 16, !dbg !136
@main.four = internal global [38 x i32] [i32 18, i32 6, i32 163, i32 252, i32 97, i32 194, i32 104, i32 131, i32 32, i32 1, i32 7, i32 82, i32 137, i32 42, i32 129, i32 11, i32 72, i32 132, i32 60, i32 220, i32 112, i32 8, i32 196, i32 109, i32 64, i32 179, i32 86, i32 9, i32 137, i32 195, i32 208, i32 122, i32 169, i32 28, i32 2, i32 133, i32 0, i32 1], align 16, !dbg !138
@main.fourB = internal global [38 x i32] [i32 36, i32 48, i32 102, i32 83, i32 243, i32 24, i32 52, i32 7, i32 4, i32 35, i32 132, i32 10, i32 145, i32 21, i32 2, i32 93, i32 2, i32 41, i32 1, i32 219, i32 184, i32 16, i32 33, i32 184, i32 54, i32 149, i32 170, i32 132, i32 18, i32 30, i32 29, i32 98, i32 229, i32 67, i32 129, i32 10, i32 4, i32 32], align 16, !dbg !141
@main.five = internal global [45 x i32] [i32 169, i32 2, i32 126, i32 139, i32 144, i32 172, i32 30, i32 4, i32 80, i32 72, i32 240, i32 59, i32 130, i32 218, i32 73, i32 62, i32 241, i32 24, i32 210, i32 44, i32 4, i32 20, i32 0, i32 248, i32 116, i32 49, i32 135, i32 100, i32 110, i32 130, i32 181, i32 169, i32 84, i32 75, i32 159, i32 2, i32 1, i32 0, i32 132, i32 192, i32 8, i32 0, i32 0, i32 18, i32 22], align 16, !dbg !143
@main.fiveB = internal global [45 x i32] [i32 1, i32 84, i32 145, i32 111, i32 245, i32 100, i32 128, i32 8, i32 56, i32 36, i32 40, i32 71, i32 126, i32 78, i32 213, i32 226, i32 124, i32 105, i32 12, i32 0, i32 133, i32 128, i32 0, i32 162, i32 233, i32 242, i32 67, i32 152, i32 77, i32 205, i32 77, i32 172, i32 150, i32 169, i32 129, i32 79, i32 128, i32 0, i32 6, i32 4, i32 32, i32 0, i32 27, i32 9, i32 0], align 16, !dbg !146
@main.six = internal global [7 x i32] [i32 17, i32 177, i32 170, i32 242, i32 169, i32 19, i32 148], align 16, !dbg !148
@main.sixB = internal global [7 x i32] [i32 136, i32 141, i32 85, i32 79, i32 149, i32 200, i32 41], align 16, !dbg !151
@.str.16 = private unnamed_addr constant [34 x i8] c"\0ASmall preclipped packing (LSb): \00", align 1, !dbg !153
@.str.17 = private unnamed_addr constant [4 x i8] c"ok.\00", align 1, !dbg !155
@.str.18 = private unnamed_addr constant [23 x i8] c"\0ANull bit call (LSb): \00", align 1, !dbg !160
@.str.19 = private unnamed_addr constant [34 x i8] c"\0ALarge preclipped packing (LSb): \00", align 1, !dbg !162
@.str.20 = private unnamed_addr constant [35 x i8] c"\0A32 bit preclipped packing (LSb): \00", align 1, !dbg !164
@.str.21 = private unnamed_addr constant [21 x i8] c"out of data. failed!\00", align 1, !dbg !169
@.str.22 = private unnamed_addr constant [23 x i8] c"%ld != %lu (%lx!=%lx):\00", align 1, !dbg !172
@.str.23 = private unnamed_addr constant [33 x i8] c"\0ASmall unclipped packing (LSb): \00", align 1, !dbg !174
@.str.24 = private unnamed_addr constant [33 x i8] c"\0ALarge unclipped packing (LSb): \00", align 1, !dbg !177
@.str.25 = private unnamed_addr constant [38 x i8] c"\0ASingle bit unclipped packing (LSb): \00", align 1, !dbg !179
@.str.26 = private unnamed_addr constant [31 x i8] c"\0ATesting read past end (LSb): \00", align 1, !dbg !181
@.str.27 = private unnamed_addr constant [9 x i8] zeroinitializer, align 1, !dbg !186
@.str.28 = private unnamed_addr constant [29 x i8] c"failed; got -1 prematurely.\0A\00", align 1, !dbg !191
@.str.29 = private unnamed_addr constant [35 x i8] c"failed; read past end without -1.\0A\00", align 1, !dbg !196
@.str.30 = private unnamed_addr constant [31 x i8] c"failed 2; got -1 prematurely.\0A\00", align 1, !dbg !198
@.str.31 = private unnamed_addr constant [31 x i8] c"failed 3; got -1 prematurely.\0A\00", align 1, !dbg !200
@.str.32 = private unnamed_addr constant [37 x i8] c"\0ATesting aligned writecopies (LSb): \00", align 1, !dbg !202
@.str.33 = private unnamed_addr constant [10 x i8] c"ok.      \00", align 1, !dbg !207
@.str.34 = private unnamed_addr constant [39 x i8] c"\0ATesting unaligned writecopies (LSb): \00", align 1, !dbg !212
@.str.35 = private unnamed_addr constant [11 x i8] c"ok.      \0A\00", align 1, !dbg !214
@.str.36 = private unnamed_addr constant [34 x i8] c"\0ASmall preclipped packing (MSb): \00", align 1, !dbg !219
@.str.37 = private unnamed_addr constant [23 x i8] c"\0ANull bit call (MSb): \00", align 1, !dbg !221
@.str.38 = private unnamed_addr constant [34 x i8] c"\0ALarge preclipped packing (MSb): \00", align 1, !dbg !223
@.str.39 = private unnamed_addr constant [35 x i8] c"\0A32 bit preclipped packing (MSb): \00", align 1, !dbg !225
@.str.40 = private unnamed_addr constant [33 x i8] c"\0ASmall unclipped packing (MSb): \00", align 1, !dbg !227
@.str.41 = private unnamed_addr constant [33 x i8] c"\0ALarge unclipped packing (MSb): \00", align 1, !dbg !229
@.str.42 = private unnamed_addr constant [38 x i8] c"\0ASingle bit unclipped packing (MSb): \00", align 1, !dbg !231
@.str.43 = private unnamed_addr constant [31 x i8] c"\0ATesting read past end (MSb): \00", align 1, !dbg !233
@.str.44 = private unnamed_addr constant [37 x i8] c"\0ATesting aligned writecopies (MSb): \00", align 1, !dbg !235
@.str.45 = private unnamed_addr constant [39 x i8] c"\0ATesting unaligned writecopies (MSb): \00", align 1, !dbg !237
@.str.46 = private unnamed_addr constant [12 x i8] c"ok.      \0A\0A\00", align 1, !dbg !239

; Function Attrs: nounwind uwtable
define dso_local void @oggpack_writeinit(ptr noundef %b) #0 !dbg !271 {
entry:
  %b.addr = alloca ptr, align 8
  store ptr %b, ptr %b.addr, align 8, !tbaa !277
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !276, metadata !DIExpression()), !dbg !281
  %0 = load ptr, ptr %b.addr, align 8, !dbg !282, !tbaa !277
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 40, i1 false), !dbg !283
  %call = call noalias ptr @malloc(i64 noundef 256) #10, !dbg !284
  %1 = load ptr, ptr %b.addr, align 8, !dbg !285, !tbaa !277
  %buffer = getelementptr inbounds %struct.oggpack_buffer, ptr %1, i32 0, i32 2, !dbg !286
  store ptr %call, ptr %buffer, align 8, !dbg !287, !tbaa !288
  %2 = load ptr, ptr %b.addr, align 8, !dbg !292, !tbaa !277
  %ptr = getelementptr inbounds %struct.oggpack_buffer, ptr %2, i32 0, i32 3, !dbg !293
  store ptr %call, ptr %ptr, align 8, !dbg !294, !tbaa !295
  %3 = load ptr, ptr %b.addr, align 8, !dbg !296, !tbaa !277
  %buffer1 = getelementptr inbounds %struct.oggpack_buffer, ptr %3, i32 0, i32 2, !dbg !297
  %4 = load ptr, ptr %buffer1, align 8, !dbg !297, !tbaa !288
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 0, !dbg !296
  store i8 0, ptr %arrayidx, align 1, !dbg !298, !tbaa !299
  %5 = load ptr, ptr %b.addr, align 8, !dbg !300, !tbaa !277
  %storage = getelementptr inbounds %struct.oggpack_buffer, ptr %5, i32 0, i32 4, !dbg !301
  store i64 256, ptr %storage, align 8, !dbg !302, !tbaa !303
  ret void, !dbg !304
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind allocsize(0)
declare !dbg !305 noalias ptr @malloc(i64 noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @oggpackB_writeinit(ptr noundef %b) #0 !dbg !312 {
entry:
  %b.addr = alloca ptr, align 8
  store ptr %b, ptr %b.addr, align 8, !tbaa !277
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !314, metadata !DIExpression()), !dbg !315
  %0 = load ptr, ptr %b.addr, align 8, !dbg !316, !tbaa !277
  call void @oggpack_writeinit(ptr noundef %0), !dbg !317
  ret void, !dbg !318
}

; Function Attrs: nounwind uwtable
define dso_local i32 @oggpack_writecheck(ptr noundef %b) #0 !dbg !319 {
entry:
  %retval = alloca i32, align 4
  %b.addr = alloca ptr, align 8
  store ptr %b, ptr %b.addr, align 8, !tbaa !277
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !323, metadata !DIExpression()), !dbg !324
  %0 = load ptr, ptr %b.addr, align 8, !dbg !325, !tbaa !277
  %ptr = getelementptr inbounds %struct.oggpack_buffer, ptr %0, i32 0, i32 3, !dbg !327
  %1 = load ptr, ptr %ptr, align 8, !dbg !327, !tbaa !295
  %tobool = icmp ne ptr %1, null, !dbg !325
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !328

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %b.addr, align 8, !dbg !329, !tbaa !277
  %storage = getelementptr inbounds %struct.oggpack_buffer, ptr %2, i32 0, i32 4, !dbg !330
  %3 = load i64, ptr %storage, align 8, !dbg !330, !tbaa !303
  %tobool1 = icmp ne i64 %3, 0, !dbg !329
  br i1 %tobool1, label %if.end, label %if.then, !dbg !331

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4, !dbg !332
  br label %return, !dbg !332

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, ptr %retval, align 4, !dbg !333
  br label %return, !dbg !333

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, ptr %retval, align 4, !dbg !334
  ret i32 %4, !dbg !334
}

; Function Attrs: nounwind uwtable
define dso_local i32 @oggpackB_writecheck(ptr noundef %b) #0 !dbg !335 {
entry:
  %b.addr = alloca ptr, align 8
  store ptr %b, ptr %b.addr, align 8, !tbaa !277
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !337, metadata !DIExpression()), !dbg !338
  %0 = load ptr, ptr %b.addr, align 8, !dbg !339, !tbaa !277
  %call = call i32 @oggpack_writecheck(ptr noundef %0), !dbg !340
  ret i32 %call, !dbg !341
}

; Function Attrs: nounwind uwtable
define dso_local void @oggpack_writetrunc(ptr noundef %b, i64 noundef %bits) #0 !dbg !342 {
entry:
  %b.addr = alloca ptr, align 8
  %bits.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  store ptr %b, ptr %b.addr, align 8, !tbaa !277
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !346, metadata !DIExpression()), !dbg !349
  store i64 %bits, ptr %bits.addr, align 8, !tbaa !350
  tail call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !347, metadata !DIExpression()), !dbg !351
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #11, !dbg !352
  tail call void @llvm.dbg.declare(metadata ptr %bytes, metadata !348, metadata !DIExpression()), !dbg !353
  %0 = load i64, ptr %bits.addr, align 8, !dbg !354, !tbaa !350
  %shr = ashr i64 %0, 3, !dbg !355
  store i64 %shr, ptr %bytes, align 8, !dbg !353, !tbaa !350
  %1 = load ptr, ptr %b.addr, align 8, !dbg !356, !tbaa !277
  %ptr = getelementptr inbounds %struct.oggpack_buffer, ptr %1, i32 0, i32 3, !dbg !358
  %2 = load ptr, ptr %ptr, align 8, !dbg !358, !tbaa !295
  %tobool = icmp ne ptr %2, null, !dbg !356
  br i1 %tobool, label %if.then, label %if.end, !dbg !359

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %bytes, align 8, !dbg !360, !tbaa !350
  %mul = mul nsw i64 %3, 8, !dbg !362
  %4 = load i64, ptr %bits.addr, align 8, !dbg !363, !tbaa !350
  %sub = sub nsw i64 %4, %mul, !dbg !363
  store i64 %sub, ptr %bits.addr, align 8, !dbg !363, !tbaa !350
  %5 = load ptr, ptr %b.addr, align 8, !dbg !364, !tbaa !277
  %buffer = getelementptr inbounds %struct.oggpack_buffer, ptr %5, i32 0, i32 2, !dbg !365
  %6 = load ptr, ptr %buffer, align 8, !dbg !365, !tbaa !288
  %7 = load i64, ptr %bytes, align 8, !dbg !366, !tbaa !350
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 %7, !dbg !367
  %8 = load ptr, ptr %b.addr, align 8, !dbg !368, !tbaa !277
  %ptr1 = getelementptr inbounds %struct.oggpack_buffer, ptr %8, i32 0, i32 3, !dbg !369
  store ptr %add.ptr, ptr %ptr1, align 8, !dbg !370, !tbaa !295
  %9 = load i64, ptr %bits.addr, align 8, !dbg !371, !tbaa !350
  %conv = trunc i64 %9 to i32, !dbg !371
  %10 = load ptr, ptr %b.addr, align 8, !dbg !372, !tbaa !277
  %endbit = getelementptr inbounds %struct.oggpack_buffer, ptr %10, i32 0, i32 1, !dbg !373
  store i32 %conv, ptr %endbit, align 8, !dbg !374, !tbaa !375
  %11 = load i64, ptr %bytes, align 8, !dbg !376, !tbaa !350
  %12 = load ptr, ptr %b.addr, align 8, !dbg !377, !tbaa !277
  %endbyte = getelementptr inbounds %struct.oggpack_buffer, ptr %12, i32 0, i32 0, !dbg !378
  store i64 %11, ptr %endbyte, align 8, !dbg !379, !tbaa !380
  %13 = load i64, ptr %bits.addr, align 8, !dbg !381, !tbaa !350
  %arrayidx = getelementptr inbounds [33 x i64], ptr @mask, i64 0, i64 %13, !dbg !382
  %14 = load i64, ptr %arrayidx, align 8, !dbg !382, !tbaa !350
  %15 = load ptr, ptr %b.addr, align 8, !dbg !383, !tbaa !277
  %ptr2 = getelementptr inbounds %struct.oggpack_buffer, ptr %15, i32 0, i32 3, !dbg !384
  %16 = load ptr, ptr %ptr2, align 8, !dbg !384, !tbaa !295
  %17 = load i8, ptr %16, align 1, !dbg !385, !tbaa !299
  %conv3 = zext i8 %17 to i64, !dbg !385
  %and = and i64 %conv3, %14, !dbg !385
  %conv4 = trunc i64 %and to i8, !dbg !385
  store i8 %conv4, ptr %16, align 1, !dbg !385, !tbaa !299
  br label %if.end, !dbg !386

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #11, !dbg !387
  ret void, !dbg !387
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local void @oggpackB_writetrunc(ptr noundef %b, i64 noundef %bits) #0 !dbg !388 {
entry:
  %b.addr = alloca ptr, align 8
  %bits.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  store ptr %b, ptr %b.addr, align 8, !tbaa !277
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !390, metadata !DIExpression()), !dbg !393
  store i64 %bits, ptr %bits.addr, align 8, !tbaa !350
  tail call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !391, metadata !DIExpression()), !dbg !394
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #11, !dbg !395
  tail call void @llvm.dbg.declare(metadata ptr %bytes, metadata !392, metadata !DIExpression()), !dbg !396
  %0 = load i64, ptr %bits.addr, align 8, !dbg !397, !tbaa !350
  %shr = ashr i64 %0, 3, !dbg !398
  store i64 %shr, ptr %bytes, align 8, !dbg !396, !tbaa !350
  %1 = load ptr, ptr %b.addr, align 8, !dbg !399, !tbaa !277
  %ptr = getelementptr inbounds %struct.oggpack_buffer, ptr %1, i32 0, i32 3, !dbg !401
  %2 = load ptr, ptr %ptr, align 8, !dbg !401, !tbaa !295
  %tobool = icmp ne ptr %2, null, !dbg !399
  br i1 %tobool, label %if.then, label %if.end, !dbg !402

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %bytes, align 8, !dbg !403, !tbaa !350
  %mul = mul nsw i64 %3, 8, !dbg !405
  %4 = load i64, ptr %bits.addr, align 8, !dbg !406, !tbaa !350
  %sub = sub nsw i64 %4, %mul, !dbg !406
  store i64 %sub, ptr %bits.addr, align 8, !dbg !406, !tbaa !350
  %5 = load ptr, ptr %b.addr, align 8, !dbg !407, !tbaa !277
  %buffer = getelementptr inbounds %struct.oggpack_buffer, ptr %5, i32 0, i32 2, !dbg !408
  %6 = load ptr, ptr %buffer, align 8, !dbg !408, !tbaa !288
  %7 = load i64, ptr %bytes, align 8, !dbg !409, !tbaa !350
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 %7, !dbg !410
  %8 = load ptr, ptr %b.addr, align 8, !dbg !411, !tbaa !277
  %ptr1 = getelementptr inbounds %struct.oggpack_buffer, ptr %8, i32 0, i32 3, !dbg !412
  store ptr %add.ptr, ptr %ptr1, align 8, !dbg !413, !tbaa !295
  %9 = load i64, ptr %bits.addr, align 8, !dbg !414, !tbaa !350
  %conv = trunc i64 %9 to i32, !dbg !414
  %10 = load ptr, ptr %b.addr, align 8, !dbg !415, !tbaa !277
  %endbit = getelementptr inbounds %struct.oggpack_buffer, ptr %10, i32 0, i32 1, !dbg !416
  store i32 %conv, ptr %endbit, align 8, !dbg !417, !tbaa !375
  %11 = load i64, ptr %bytes, align 8, !dbg !418, !tbaa !350
  %12 = load ptr, ptr %b.addr, align 8, !dbg !419, !tbaa !277
  %endbyte = getelementptr inbounds %struct.oggpack_buffer, ptr %12, i32 0, i32 0, !dbg !420
  store i64 %11, ptr %endbyte, align 8, !dbg !421, !tbaa !380
  %13 = load i64, ptr %bits.addr, align 8, !dbg !422, !tbaa !350
  %arrayidx = getelementptr inbounds [9 x i32], ptr @mask8B, i64 0, i64 %13, !dbg !423
  %14 = load i32, ptr %arrayidx, align 4, !dbg !423, !tbaa !424
  %15 = load ptr, ptr %b.addr, align 8, !dbg !425, !tbaa !277
  %ptr2 = getelementptr inbounds %struct.oggpack_buffer, ptr %15, i32 0, i32 3, !dbg !426
  %16 = load ptr, ptr %ptr2, align 8, !dbg !426, !tbaa !295
  %17 = load i8, ptr %16, align 1, !dbg !427, !tbaa !299
  %conv3 = zext i8 %17 to i32, !dbg !427
  %and = and i32 %conv3, %14, !dbg !427
  %conv4 = trunc i32 %and to i8, !dbg !427
  store i8 %conv4, ptr %16, align 1, !dbg !427, !tbaa !299
  br label %if.end, !dbg !428

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #11, !dbg !429
  ret void, !dbg !429
}

; Function Attrs: nounwind uwtable
define dso_local void @oggpack_write(ptr noundef %b, i64 noundef %value, i32 noundef %bits) #0 !dbg !430 {
entry:
  %b.addr = alloca ptr, align 8
  %value.addr = alloca i64, align 8
  %bits.addr = alloca i32, align 4
  %ret = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %b, ptr %b.addr, align 8, !tbaa !277
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !434, metadata !DIExpression()), !dbg !441
  store i64 %value, ptr %value.addr, align 8, !tbaa !350
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !435, metadata !DIExpression()), !dbg !442
  store i32 %bits, ptr %bits.addr, align 4, !tbaa !424
  tail call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !436, metadata !DIExpression()), !dbg !443
  %0 = load i32, ptr %bits.addr, align 4, !dbg !444, !tbaa !424
  %cmp = icmp slt i32 %0, 0, !dbg !446
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !447

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %bits.addr, align 4, !dbg !448, !tbaa !424
  %cmp1 = icmp sgt i32 %1, 32, !dbg !449
  br i1 %cmp1, label %if.then, label %if.end, !dbg !450

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %err, !dbg !451

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %b.addr, align 8, !dbg !452, !tbaa !277
  %endbyte = getelementptr inbounds %struct.oggpack_buffer, ptr %2, i32 0, i32 0, !dbg !453
  %3 = load i64, ptr %endbyte, align 8, !dbg !453, !tbaa !380
  %4 = load ptr, ptr %b.addr, align 8, !dbg !454, !tbaa !277
  %storage = getelementptr inbounds %struct.oggpack_buffer, ptr %4, i32 0, i32 4, !dbg !455
  %5 = load i64, ptr %storage, align 8, !dbg !455, !tbaa !303
  %sub = sub nsw i64 %5, 4, !dbg !456
  %cmp2 = icmp sge i64 %3, %sub, !dbg !457
  br i1 %cmp2, label %if.then3, label %if.end20, !dbg !458

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #11, !dbg !459
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !437, metadata !DIExpression()), !dbg !460
  %6 = load ptr, ptr %b.addr, align 8, !dbg !461, !tbaa !277
  %ptr = getelementptr inbounds %struct.oggpack_buffer, ptr %6, i32 0, i32 3, !dbg !463
  %7 = load ptr, ptr %ptr, align 8, !dbg !463, !tbaa !295
  %tobool = icmp ne ptr %7, null, !dbg !461
  br i1 %tobool, label %if.end5, label %if.then4, !dbg !464

if.then4:                                         ; preds = %if.then3
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !465

if.end5:                                          ; preds = %if.then3
  %8 = load ptr, ptr %b.addr, align 8, !dbg !466, !tbaa !277
  %storage6 = getelementptr inbounds %struct.oggpack_buffer, ptr %8, i32 0, i32 4, !dbg !468
  %9 = load i64, ptr %storage6, align 8, !dbg !468, !tbaa !303
  %cmp7 = icmp sgt i64 %9, 9223372036854775551, !dbg !469
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !470

if.then8:                                         ; preds = %if.end5
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !471

if.end9:                                          ; preds = %if.end5
  %10 = load ptr, ptr %b.addr, align 8, !dbg !472, !tbaa !277
  %buffer = getelementptr inbounds %struct.oggpack_buffer, ptr %10, i32 0, i32 2, !dbg !473
  %11 = load ptr, ptr %buffer, align 8, !dbg !473, !tbaa !288
  %12 = load ptr, ptr %b.addr, align 8, !dbg !474, !tbaa !277
  %storage10 = getelementptr inbounds %struct.oggpack_buffer, ptr %12, i32 0, i32 4, !dbg !475
  %13 = load i64, ptr %storage10, align 8, !dbg !475, !tbaa !303
  %add = add nsw i64 %13, 256, !dbg !476
  %call = call ptr @realloc(ptr noundef %11, i64 noundef %add) #12, !dbg !477
  store ptr %call, ptr %ret, align 8, !dbg !478, !tbaa !277
  %14 = load ptr, ptr %ret, align 8, !dbg !479, !tbaa !277
  %tobool11 = icmp ne ptr %14, null, !dbg !479
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !481

if.then12:                                        ; preds = %if.end9
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !482

if.end13:                                         ; preds = %if.end9
  %15 = load ptr, ptr %ret, align 8, !dbg !483, !tbaa !277
  %16 = load ptr, ptr %b.addr, align 8, !dbg !484, !tbaa !277
  %buffer14 = getelementptr inbounds %struct.oggpack_buffer, ptr %16, i32 0, i32 2, !dbg !485
  store ptr %15, ptr %buffer14, align 8, !dbg !486, !tbaa !288
  %17 = load ptr, ptr %b.addr, align 8, !dbg !487, !tbaa !277
  %storage15 = getelementptr inbounds %struct.oggpack_buffer, ptr %17, i32 0, i32 4, !dbg !488
  %18 = load i64, ptr %storage15, align 8, !dbg !489, !tbaa !303
  %add16 = add nsw i64 %18, 256, !dbg !489
  store i64 %add16, ptr %storage15, align 8, !dbg !489, !tbaa !303
  %19 = load ptr, ptr %b.addr, align 8, !dbg !490, !tbaa !277
  %buffer17 = getelementptr inbounds %struct.oggpack_buffer, ptr %19, i32 0, i32 2, !dbg !491
  %20 = load ptr, ptr %buffer17, align 8, !dbg !491, !tbaa !288
  %21 = load ptr, ptr %b.addr, align 8, !dbg !492, !tbaa !277
  %endbyte18 = getelementptr inbounds %struct.oggpack_buffer, ptr %21, i32 0, i32 0, !dbg !493
  %22 = load i64, ptr %endbyte18, align 8, !dbg !493, !tbaa !380
  %add.ptr = getelementptr inbounds i8, ptr %20, i64 %22, !dbg !494
  %23 = load ptr, ptr %b.addr, align 8, !dbg !495, !tbaa !277
  %ptr19 = getelementptr inbounds %struct.oggpack_buffer, ptr %23, i32 0, i32 3, !dbg !496
  store ptr %add.ptr, ptr %ptr19, align 8, !dbg !497, !tbaa !295
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !498
  br label %cleanup, !dbg !498

cleanup:                                          ; preds = %if.then12, %if.then8, %if.end13, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #11, !dbg !498
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
    i32 2, label %err
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end20, !dbg !499

if.end20:                                         ; preds = %cleanup.cont, %if.end
  %24 = load i32, ptr %bits.addr, align 4, !dbg !500, !tbaa !424
  %idxprom = sext i32 %24 to i64, !dbg !501
  %arrayidx = getelementptr inbounds [33 x i64], ptr @mask, i64 0, i64 %idxprom, !dbg !501
  %25 = load i64, ptr %arrayidx, align 8, !dbg !501, !tbaa !350
  %26 = load i64, ptr %value.addr, align 8, !dbg !502, !tbaa !350
  %and = and i64 %26, %25, !dbg !502
  store i64 %and, ptr %value.addr, align 8, !dbg !502, !tbaa !350
  %27 = load ptr, ptr %b.addr, align 8, !dbg !503, !tbaa !277
  %endbit = getelementptr inbounds %struct.oggpack_buffer, ptr %27, i32 0, i32 1, !dbg !504
  %28 = load i32, ptr %endbit, align 8, !dbg !504, !tbaa !375
  %29 = load i32, ptr %bits.addr, align 4, !dbg !505, !tbaa !424
  %add21 = add nsw i32 %29, %28, !dbg !505
  store i32 %add21, ptr %bits.addr, align 4, !dbg !505, !tbaa !424
  %30 = load i64, ptr %value.addr, align 8, !dbg !506, !tbaa !350
  %31 = load ptr, ptr %b.addr, align 8, !dbg !507, !tbaa !277
  %endbit22 = getelementptr inbounds %struct.oggpack_buffer, ptr %31, i32 0, i32 1, !dbg !508
  %32 = load i32, ptr %endbit22, align 8, !dbg !508, !tbaa !375
  %sh_prom = zext i32 %32 to i64, !dbg !509
  %shl = shl i64 %30, %sh_prom, !dbg !509
  %33 = load ptr, ptr %b.addr, align 8, !dbg !510, !tbaa !277
  %ptr23 = getelementptr inbounds %struct.oggpack_buffer, ptr %33, i32 0, i32 3, !dbg !511
  %34 = load ptr, ptr %ptr23, align 8, !dbg !511, !tbaa !295
  %arrayidx24 = getelementptr inbounds i8, ptr %34, i64 0, !dbg !510
  %35 = load i8, ptr %arrayidx24, align 1, !dbg !512, !tbaa !299
  %conv = zext i8 %35 to i64, !dbg !512
  %or = or i64 %conv, %shl, !dbg !512
  %conv25 = trunc i64 %or to i8, !dbg !512
  store i8 %conv25, ptr %arrayidx24, align 1, !dbg !512, !tbaa !299
  %36 = load i32, ptr %bits.addr, align 4, !dbg !513, !tbaa !424
  %cmp26 = icmp sge i32 %36, 8, !dbg !515
  br i1 %cmp26, label %if.then28, label %if.end74, !dbg !516

if.then28:                                        ; preds = %if.end20
  %37 = load i64, ptr %value.addr, align 8, !dbg !517, !tbaa !350
  %38 = load ptr, ptr %b.addr, align 8, !dbg !519, !tbaa !277
  %endbit29 = getelementptr inbounds %struct.oggpack_buffer, ptr %38, i32 0, i32 1, !dbg !520
  %39 = load i32, ptr %endbit29, align 8, !dbg !520, !tbaa !375
  %sub30 = sub nsw i32 8, %39, !dbg !521
  %sh_prom31 = zext i32 %sub30 to i64, !dbg !522
  %shr = lshr i64 %37, %sh_prom31, !dbg !522
  %conv32 = trunc i64 %shr to i8, !dbg !523
  %40 = load ptr, ptr %b.addr, align 8, !dbg !524, !tbaa !277
  %ptr33 = getelementptr inbounds %struct.oggpack_buffer, ptr %40, i32 0, i32 3, !dbg !525
  %41 = load ptr, ptr %ptr33, align 8, !dbg !525, !tbaa !295
  %arrayidx34 = getelementptr inbounds i8, ptr %41, i64 1, !dbg !524
  store i8 %conv32, ptr %arrayidx34, align 1, !dbg !526, !tbaa !299
  %42 = load i32, ptr %bits.addr, align 4, !dbg !527, !tbaa !424
  %cmp35 = icmp sge i32 %42, 16, !dbg !529
  br i1 %cmp35, label %if.then37, label %if.end73, !dbg !530

if.then37:                                        ; preds = %if.then28
  %43 = load i64, ptr %value.addr, align 8, !dbg !531, !tbaa !350
  %44 = load ptr, ptr %b.addr, align 8, !dbg !533, !tbaa !277
  %endbit38 = getelementptr inbounds %struct.oggpack_buffer, ptr %44, i32 0, i32 1, !dbg !534
  %45 = load i32, ptr %endbit38, align 8, !dbg !534, !tbaa !375
  %sub39 = sub nsw i32 16, %45, !dbg !535
  %sh_prom40 = zext i32 %sub39 to i64, !dbg !536
  %shr41 = lshr i64 %43, %sh_prom40, !dbg !536
  %conv42 = trunc i64 %shr41 to i8, !dbg !537
  %46 = load ptr, ptr %b.addr, align 8, !dbg !538, !tbaa !277
  %ptr43 = getelementptr inbounds %struct.oggpack_buffer, ptr %46, i32 0, i32 3, !dbg !539
  %47 = load ptr, ptr %ptr43, align 8, !dbg !539, !tbaa !295
  %arrayidx44 = getelementptr inbounds i8, ptr %47, i64 2, !dbg !538
  store i8 %conv42, ptr %arrayidx44, align 1, !dbg !540, !tbaa !299
  %48 = load i32, ptr %bits.addr, align 4, !dbg !541, !tbaa !424
  %cmp45 = icmp sge i32 %48, 24, !dbg !543
  br i1 %cmp45, label %if.then47, label %if.end72, !dbg !544

if.then47:                                        ; preds = %if.then37
  %49 = load i64, ptr %value.addr, align 8, !dbg !545, !tbaa !350
  %50 = load ptr, ptr %b.addr, align 8, !dbg !547, !tbaa !277
  %endbit48 = getelementptr inbounds %struct.oggpack_buffer, ptr %50, i32 0, i32 1, !dbg !548
  %51 = load i32, ptr %endbit48, align 8, !dbg !548, !tbaa !375
  %sub49 = sub nsw i32 24, %51, !dbg !549
  %sh_prom50 = zext i32 %sub49 to i64, !dbg !550
  %shr51 = lshr i64 %49, %sh_prom50, !dbg !550
  %conv52 = trunc i64 %shr51 to i8, !dbg !551
  %52 = load ptr, ptr %b.addr, align 8, !dbg !552, !tbaa !277
  %ptr53 = getelementptr inbounds %struct.oggpack_buffer, ptr %52, i32 0, i32 3, !dbg !553
  %53 = load ptr, ptr %ptr53, align 8, !dbg !553, !tbaa !295
  %arrayidx54 = getelementptr inbounds i8, ptr %53, i64 3, !dbg !552
  store i8 %conv52, ptr %arrayidx54, align 1, !dbg !554, !tbaa !299
  %54 = load i32, ptr %bits.addr, align 4, !dbg !555, !tbaa !424
  %cmp55 = icmp sge i32 %54, 32, !dbg !557
  br i1 %cmp55, label %if.then57, label %if.end71, !dbg !558

if.then57:                                        ; preds = %if.then47
  %55 = load ptr, ptr %b.addr, align 8, !dbg !559, !tbaa !277
  %endbit58 = getelementptr inbounds %struct.oggpack_buffer, ptr %55, i32 0, i32 1, !dbg !562
  %56 = load i32, ptr %endbit58, align 8, !dbg !562, !tbaa !375
  %tobool59 = icmp ne i32 %56, 0, !dbg !559
  br i1 %tobool59, label %if.then60, label %if.else, !dbg !563

if.then60:                                        ; preds = %if.then57
  %57 = load i64, ptr %value.addr, align 8, !dbg !564, !tbaa !350
  %58 = load ptr, ptr %b.addr, align 8, !dbg !565, !tbaa !277
  %endbit61 = getelementptr inbounds %struct.oggpack_buffer, ptr %58, i32 0, i32 1, !dbg !566
  %59 = load i32, ptr %endbit61, align 8, !dbg !566, !tbaa !375
  %sub62 = sub nsw i32 32, %59, !dbg !567
  %sh_prom63 = zext i32 %sub62 to i64, !dbg !568
  %shr64 = lshr i64 %57, %sh_prom63, !dbg !568
  %conv65 = trunc i64 %shr64 to i8, !dbg !569
  %60 = load ptr, ptr %b.addr, align 8, !dbg !570, !tbaa !277
  %ptr66 = getelementptr inbounds %struct.oggpack_buffer, ptr %60, i32 0, i32 3, !dbg !571
  %61 = load ptr, ptr %ptr66, align 8, !dbg !571, !tbaa !295
  %arrayidx67 = getelementptr inbounds i8, ptr %61, i64 4, !dbg !570
  store i8 %conv65, ptr %arrayidx67, align 1, !dbg !572, !tbaa !299
  br label %if.end70, !dbg !570

if.else:                                          ; preds = %if.then57
  %62 = load ptr, ptr %b.addr, align 8, !dbg !573, !tbaa !277
  %ptr68 = getelementptr inbounds %struct.oggpack_buffer, ptr %62, i32 0, i32 3, !dbg !574
  %63 = load ptr, ptr %ptr68, align 8, !dbg !574, !tbaa !295
  %arrayidx69 = getelementptr inbounds i8, ptr %63, i64 4, !dbg !573
  store i8 0, ptr %arrayidx69, align 1, !dbg !575, !tbaa !299
  br label %if.end70

if.end70:                                         ; preds = %if.else, %if.then60
  br label %if.end71, !dbg !576

if.end71:                                         ; preds = %if.end70, %if.then47
  br label %if.end72, !dbg !577

if.end72:                                         ; preds = %if.end71, %if.then37
  br label %if.end73, !dbg !578

if.end73:                                         ; preds = %if.end72, %if.then28
  br label %if.end74, !dbg !579

if.end74:                                         ; preds = %if.end73, %if.end20
  %64 = load i32, ptr %bits.addr, align 4, !dbg !580, !tbaa !424
  %div = sdiv i32 %64, 8, !dbg !581
  %conv75 = sext i32 %div to i64, !dbg !580
  %65 = load ptr, ptr %b.addr, align 8, !dbg !582, !tbaa !277
  %endbyte76 = getelementptr inbounds %struct.oggpack_buffer, ptr %65, i32 0, i32 0, !dbg !583
  %66 = load i64, ptr %endbyte76, align 8, !dbg !584, !tbaa !380
  %add77 = add nsw i64 %66, %conv75, !dbg !584
  store i64 %add77, ptr %endbyte76, align 8, !dbg !584, !tbaa !380
  %67 = load i32, ptr %bits.addr, align 4, !dbg !585, !tbaa !424
  %div78 = sdiv i32 %67, 8, !dbg !586
  %68 = load ptr, ptr %b.addr, align 8, !dbg !587, !tbaa !277
  %ptr79 = getelementptr inbounds %struct.oggpack_buffer, ptr %68, i32 0, i32 3, !dbg !588
  %69 = load ptr, ptr %ptr79, align 8, !dbg !589, !tbaa !295
  %idx.ext = sext i32 %div78 to i64, !dbg !589
  %add.ptr80 = getelementptr inbounds i8, ptr %69, i64 %idx.ext, !dbg !589
  store ptr %add.ptr80, ptr %ptr79, align 8, !dbg !589, !tbaa !295
  %70 = load i32, ptr %bits.addr, align 4, !dbg !590, !tbaa !424
  %and81 = and i32 %70, 7, !dbg !591
  %71 = load ptr, ptr %b.addr, align 8, !dbg !592, !tbaa !277
  %endbit82 = getelementptr inbounds %struct.oggpack_buffer, ptr %71, i32 0, i32 1, !dbg !593
  store i32 %and81, ptr %endbit82, align 8, !dbg !594, !tbaa !375
  br label %return, !dbg !595

err:                                              ; preds = %cleanup, %if.then
  tail call void @llvm.dbg.label(metadata !440), !dbg !596
  %72 = load ptr, ptr %b.addr, align 8, !dbg !597, !tbaa !277
  call void @oggpack_writeclear(ptr noundef %72), !dbg !598
  br label %return, !dbg !599

return:                                           ; preds = %err, %if.end74, %cleanup
  ret void, !dbg !599

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind allocsize(1)
declare !dbg !600 ptr @realloc(ptr noundef, i64 noundef) #4

; Function Attrs: nounwind uwtable
define dso_local void @oggpack_writeclear(ptr noundef %b) #0 !dbg !603 {
entry:
  %b.addr = alloca ptr, align 8
  store ptr %b, ptr %b.addr, align 8, !tbaa !277
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !605, metadata !DIExpression()), !dbg !606
  %0 = load ptr, ptr %b.addr, align 8, !dbg !607, !tbaa !277
  %buffer = getelementptr inbounds %struct.oggpack_buffer, ptr %0, i32 0, i32 2, !dbg !609
  %1 = load ptr, ptr %buffer, align 8, !dbg !609, !tbaa !288
  %tobool = icmp ne ptr %1, null, !dbg !607
  br i1 %tobool, label %if.then, label %if.end, !dbg !610

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %b.addr, align 8, !dbg !611, !tbaa !277
  %buffer1 = getelementptr inbounds %struct.oggpack_buffer, ptr %2, i32 0, i32 2, !dbg !612
  %3 = load ptr, ptr %buffer1, align 8, !dbg !612, !tbaa !288
  call void @free(ptr noundef %3) #11, !dbg !613
  br label %if.end, !dbg !613

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %b.addr, align 8, !dbg !614, !tbaa !277
  call void @llvm.memset.p0.i64(ptr align 8 %4, i8 0, i64 40, i1 false), !dbg !615
  ret void, !dbg !616
}

; Function Attrs: nounwind uwtable
define dso_local void @oggpackB_write(ptr noundef %b, i64 noundef %value, i32 noundef %bits) #0 !dbg !617 {
entry:
  %b.addr = alloca ptr, align 8
  %value.addr = alloca i64, align 8
  %bits.addr = alloca i32, align 4
  %ret = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %b, ptr %b.addr, align 8, !tbaa !277
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !619, metadata !DIExpression()), !dbg !626
  store i64 %value, ptr %value.addr, align 8, !tbaa !350
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !620, metadata !DIExpression()), !dbg !627
  store i32 %bits, ptr %bits.addr, align 4, !tbaa !424
  tail call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !621, metadata !DIExpression()), !dbg !628
  %0 = load i32, ptr %bits.addr, align 4, !dbg !629, !tbaa !424
  %cmp = icmp slt i32 %0, 0, !dbg !631
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !632

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %bits.addr, align 4, !dbg !633, !tbaa !424
  %cmp1 = icmp sgt i32 %1, 32, !dbg !634
  br i1 %cmp1, label %if.then, label %if.end, !dbg !635

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %err, !dbg !636

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %b.addr, align 8, !dbg !637, !tbaa !277
  %endbyte = getelementptr inbounds %struct.oggpack_buffer, ptr %2, i32 0, i32 0, !dbg !638
  %3 = load i64, ptr %endbyte, align 8, !dbg !638, !tbaa !380
  %4 = load ptr, ptr %b.addr, align 8, !dbg !639, !tbaa !277
  %storage = getelementptr inbounds %struct.oggpack_buffer, ptr %4, i32 0, i32 4, !dbg !640
  %5 = load i64, ptr %storage, align 8, !dbg !640, !tbaa !303
  %sub = sub nsw i64 %5, 4, !dbg !641
  %cmp2 = icmp sge i64 %3, %sub, !dbg !642
  br i1 %cmp2, label %if.then3, label %if.end20, !dbg !643

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #11, !dbg !644
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !622, metadata !DIExpression()), !dbg !645
  %6 = load ptr, ptr %b.addr, align 8, !dbg !646, !tbaa !277
  %ptr = getelementptr inbounds %struct.oggpack_buffer, ptr %6, i32 0, i32 3, !dbg !648
  %7 = load ptr, ptr %ptr, align 8, !dbg !648, !tbaa !295
  %tobool = icmp ne ptr %7, null, !dbg !646
  br i1 %tobool, label %if.end5, label %if.then4, !dbg !649

if.then4:                                         ; preds = %if.then3
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !650

if.end5:                                          ; preds = %if.then3
  %8 = load ptr, ptr %b.addr, align 8, !dbg !651, !tbaa !277
  %storage6 = getelementptr inbounds %struct.oggpack_buffer, ptr %8, i32 0, i32 4, !dbg !653
  %9 = load i64, ptr %storage6, align 8, !dbg !653, !tbaa !303
  %cmp7 = icmp sgt i64 %9, 9223372036854775551, !dbg !654
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !655

if.then8:                                         ; preds = %if.end5
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !656

if.end9:                                          ; preds = %if.end5
  %10 = load ptr, ptr %b.addr, align 8, !dbg !657, !tbaa !277
  %buffer = getelementptr inbounds %struct.oggpack_buffer, ptr %10, i32 0, i32 2, !dbg !658
  %11 = load ptr, ptr %buffer, align 8, !dbg !658, !tbaa !288
  %12 = load ptr, ptr %b.addr, align 8, !dbg !659, !tbaa !277
  %storage10 = getelementptr inbounds %struct.oggpack_buffer, ptr %12, i32 0, i32 4, !dbg !660
  %13 = load i64, ptr %storage10, align 8, !dbg !660, !tbaa !303
  %add = add nsw i64 %13, 256, !dbg !661
  %call = call ptr @realloc(ptr noundef %11, i64 noundef %add) #12, !dbg !662
  store ptr %call, ptr %ret, align 8, !dbg !663, !tbaa !277
  %14 = load ptr, ptr %ret, align 8, !dbg !664, !tbaa !277
  %tobool11 = icmp ne ptr %14, null, !dbg !664
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !666

if.then12:                                        ; preds = %if.end9
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !667

if.end13:                                         ; preds = %if.end9
  %15 = load ptr, ptr %ret, align 8, !dbg !668, !tbaa !277
  %16 = load ptr, ptr %b.addr, align 8, !dbg !669, !tbaa !277
  %buffer14 = getelementptr inbounds %struct.oggpack_buffer, ptr %16, i32 0, i32 2, !dbg !670
  store ptr %15, ptr %buffer14, align 8, !dbg !671, !tbaa !288
  %17 = load ptr, ptr %b.addr, align 8, !dbg !672, !tbaa !277
  %storage15 = getelementptr inbounds %struct.oggpack_buffer, ptr %17, i32 0, i32 4, !dbg !673
  %18 = load i64, ptr %storage15, align 8, !dbg !674, !tbaa !303
  %add16 = add nsw i64 %18, 256, !dbg !674
  store i64 %add16, ptr %storage15, align 8, !dbg !674, !tbaa !303
  %19 = load ptr, ptr %b.addr, align 8, !dbg !675, !tbaa !277
  %buffer17 = getelementptr inbounds %struct.oggpack_buffer, ptr %19, i32 0, i32 2, !dbg !676
  %20 = load ptr, ptr %buffer17, align 8, !dbg !676, !tbaa !288
  %21 = load ptr, ptr %b.addr, align 8, !dbg !677, !tbaa !277
  %endbyte18 = getelementptr inbounds %struct.oggpack_buffer, ptr %21, i32 0, i32 0, !dbg !678
  %22 = load i64, ptr %endbyte18, align 8, !dbg !678, !tbaa !380
  %add.ptr = getelementptr inbounds i8, ptr %20, i64 %22, !dbg !679
  %23 = load ptr, ptr %b.addr, align 8, !dbg !680, !tbaa !277
  %ptr19 = getelementptr inbounds %struct.oggpack_buffer, ptr %23, i32 0, i32 3, !dbg !681
  store ptr %add.ptr, ptr %ptr19, align 8, !dbg !682, !tbaa !295
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !683
  br label %cleanup, !dbg !683

cleanup:                                          ; preds = %if.then12, %if.then8, %if.end13, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #11, !dbg !683
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
    i32 2, label %err
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end20, !dbg !684

if.end20:                                         ; preds = %cleanup.cont, %if.end
  %24 = load i64, ptr %value.addr, align 8, !dbg !685, !tbaa !350
  %25 = load i32, ptr %bits.addr, align 4, !dbg !686, !tbaa !424
  %idxprom = sext i32 %25 to i64, !dbg !687
  %arrayidx = getelementptr inbounds [33 x i64], ptr @mask, i64 0, i64 %idxprom, !dbg !687
  %26 = load i64, ptr %arrayidx, align 8, !dbg !687, !tbaa !350
  %and = and i64 %24, %26, !dbg !688
  %27 = load i32, ptr %bits.addr, align 4, !dbg !689, !tbaa !424
  %sub21 = sub nsw i32 32, %27, !dbg !690
  %sh_prom = zext i32 %sub21 to i64, !dbg !691
  %shl = shl i64 %and, %sh_prom, !dbg !691
  store i64 %shl, ptr %value.addr, align 8, !dbg !692, !tbaa !350
  %28 = load ptr, ptr %b.addr, align 8, !dbg !693, !tbaa !277
  %endbit = getelementptr inbounds %struct.oggpack_buffer, ptr %28, i32 0, i32 1, !dbg !694
  %29 = load i32, ptr %endbit, align 8, !dbg !694, !tbaa !375
  %30 = load i32, ptr %bits.addr, align 4, !dbg !695, !tbaa !424
  %add22 = add nsw i32 %30, %29, !dbg !695
  store i32 %add22, ptr %bits.addr, align 4, !dbg !695, !tbaa !424
  %31 = load i64, ptr %value.addr, align 8, !dbg !696, !tbaa !350
  %32 = load ptr, ptr %b.addr, align 8, !dbg !697, !tbaa !277
  %endbit23 = getelementptr inbounds %struct.oggpack_buffer, ptr %32, i32 0, i32 1, !dbg !698
  %33 = load i32, ptr %endbit23, align 8, !dbg !698, !tbaa !375
  %add24 = add nsw i32 24, %33, !dbg !699
  %sh_prom25 = zext i32 %add24 to i64, !dbg !700
  %shr = lshr i64 %31, %sh_prom25, !dbg !700
  %34 = load ptr, ptr %b.addr, align 8, !dbg !701, !tbaa !277
  %ptr26 = getelementptr inbounds %struct.oggpack_buffer, ptr %34, i32 0, i32 3, !dbg !702
  %35 = load ptr, ptr %ptr26, align 8, !dbg !702, !tbaa !295
  %arrayidx27 = getelementptr inbounds i8, ptr %35, i64 0, !dbg !701
  %36 = load i8, ptr %arrayidx27, align 1, !dbg !703, !tbaa !299
  %conv = zext i8 %36 to i64, !dbg !703
  %or = or i64 %conv, %shr, !dbg !703
  %conv28 = trunc i64 %or to i8, !dbg !703
  store i8 %conv28, ptr %arrayidx27, align 1, !dbg !703, !tbaa !299
  %37 = load i32, ptr %bits.addr, align 4, !dbg !704, !tbaa !424
  %cmp29 = icmp sge i32 %37, 8, !dbg !706
  br i1 %cmp29, label %if.then31, label %if.end77, !dbg !707

if.then31:                                        ; preds = %if.end20
  %38 = load i64, ptr %value.addr, align 8, !dbg !708, !tbaa !350
  %39 = load ptr, ptr %b.addr, align 8, !dbg !710, !tbaa !277
  %endbit32 = getelementptr inbounds %struct.oggpack_buffer, ptr %39, i32 0, i32 1, !dbg !711
  %40 = load i32, ptr %endbit32, align 8, !dbg !711, !tbaa !375
  %add33 = add nsw i32 16, %40, !dbg !712
  %sh_prom34 = zext i32 %add33 to i64, !dbg !713
  %shr35 = lshr i64 %38, %sh_prom34, !dbg !713
  %conv36 = trunc i64 %shr35 to i8, !dbg !714
  %41 = load ptr, ptr %b.addr, align 8, !dbg !715, !tbaa !277
  %ptr37 = getelementptr inbounds %struct.oggpack_buffer, ptr %41, i32 0, i32 3, !dbg !716
  %42 = load ptr, ptr %ptr37, align 8, !dbg !716, !tbaa !295
  %arrayidx38 = getelementptr inbounds i8, ptr %42, i64 1, !dbg !715
  store i8 %conv36, ptr %arrayidx38, align 1, !dbg !717, !tbaa !299
  %43 = load i32, ptr %bits.addr, align 4, !dbg !718, !tbaa !424
  %cmp39 = icmp sge i32 %43, 16, !dbg !720
  br i1 %cmp39, label %if.then41, label %if.end76, !dbg !721

if.then41:                                        ; preds = %if.then31
  %44 = load i64, ptr %value.addr, align 8, !dbg !722, !tbaa !350
  %45 = load ptr, ptr %b.addr, align 8, !dbg !724, !tbaa !277
  %endbit42 = getelementptr inbounds %struct.oggpack_buffer, ptr %45, i32 0, i32 1, !dbg !725
  %46 = load i32, ptr %endbit42, align 8, !dbg !725, !tbaa !375
  %add43 = add nsw i32 8, %46, !dbg !726
  %sh_prom44 = zext i32 %add43 to i64, !dbg !727
  %shr45 = lshr i64 %44, %sh_prom44, !dbg !727
  %conv46 = trunc i64 %shr45 to i8, !dbg !728
  %47 = load ptr, ptr %b.addr, align 8, !dbg !729, !tbaa !277
  %ptr47 = getelementptr inbounds %struct.oggpack_buffer, ptr %47, i32 0, i32 3, !dbg !730
  %48 = load ptr, ptr %ptr47, align 8, !dbg !730, !tbaa !295
  %arrayidx48 = getelementptr inbounds i8, ptr %48, i64 2, !dbg !729
  store i8 %conv46, ptr %arrayidx48, align 1, !dbg !731, !tbaa !299
  %49 = load i32, ptr %bits.addr, align 4, !dbg !732, !tbaa !424
  %cmp49 = icmp sge i32 %49, 24, !dbg !734
  br i1 %cmp49, label %if.then51, label %if.end75, !dbg !735

if.then51:                                        ; preds = %if.then41
  %50 = load i64, ptr %value.addr, align 8, !dbg !736, !tbaa !350
  %51 = load ptr, ptr %b.addr, align 8, !dbg !738, !tbaa !277
  %endbit52 = getelementptr inbounds %struct.oggpack_buffer, ptr %51, i32 0, i32 1, !dbg !739
  %52 = load i32, ptr %endbit52, align 8, !dbg !739, !tbaa !375
  %sh_prom53 = zext i32 %52 to i64, !dbg !740
  %shr54 = lshr i64 %50, %sh_prom53, !dbg !740
  %conv55 = trunc i64 %shr54 to i8, !dbg !741
  %53 = load ptr, ptr %b.addr, align 8, !dbg !742, !tbaa !277
  %ptr56 = getelementptr inbounds %struct.oggpack_buffer, ptr %53, i32 0, i32 3, !dbg !743
  %54 = load ptr, ptr %ptr56, align 8, !dbg !743, !tbaa !295
  %arrayidx57 = getelementptr inbounds i8, ptr %54, i64 3, !dbg !742
  store i8 %conv55, ptr %arrayidx57, align 1, !dbg !744, !tbaa !299
  %55 = load i32, ptr %bits.addr, align 4, !dbg !745, !tbaa !424
  %cmp58 = icmp sge i32 %55, 32, !dbg !747
  br i1 %cmp58, label %if.then60, label %if.end74, !dbg !748

if.then60:                                        ; preds = %if.then51
  %56 = load ptr, ptr %b.addr, align 8, !dbg !749, !tbaa !277
  %endbit61 = getelementptr inbounds %struct.oggpack_buffer, ptr %56, i32 0, i32 1, !dbg !752
  %57 = load i32, ptr %endbit61, align 8, !dbg !752, !tbaa !375
  %tobool62 = icmp ne i32 %57, 0, !dbg !749
  br i1 %tobool62, label %if.then63, label %if.else, !dbg !753

if.then63:                                        ; preds = %if.then60
  %58 = load i64, ptr %value.addr, align 8, !dbg !754, !tbaa !350
  %59 = load ptr, ptr %b.addr, align 8, !dbg !755, !tbaa !277
  %endbit64 = getelementptr inbounds %struct.oggpack_buffer, ptr %59, i32 0, i32 1, !dbg !756
  %60 = load i32, ptr %endbit64, align 8, !dbg !756, !tbaa !375
  %sub65 = sub nsw i32 8, %60, !dbg !757
  %sh_prom66 = zext i32 %sub65 to i64, !dbg !758
  %shl67 = shl i64 %58, %sh_prom66, !dbg !758
  %conv68 = trunc i64 %shl67 to i8, !dbg !759
  %61 = load ptr, ptr %b.addr, align 8, !dbg !760, !tbaa !277
  %ptr69 = getelementptr inbounds %struct.oggpack_buffer, ptr %61, i32 0, i32 3, !dbg !761
  %62 = load ptr, ptr %ptr69, align 8, !dbg !761, !tbaa !295
  %arrayidx70 = getelementptr inbounds i8, ptr %62, i64 4, !dbg !760
  store i8 %conv68, ptr %arrayidx70, align 1, !dbg !762, !tbaa !299
  br label %if.end73, !dbg !760

if.else:                                          ; preds = %if.then60
  %63 = load ptr, ptr %b.addr, align 8, !dbg !763, !tbaa !277
  %ptr71 = getelementptr inbounds %struct.oggpack_buffer, ptr %63, i32 0, i32 3, !dbg !764
  %64 = load ptr, ptr %ptr71, align 8, !dbg !764, !tbaa !295
  %arrayidx72 = getelementptr inbounds i8, ptr %64, i64 4, !dbg !763
  store i8 0, ptr %arrayidx72, align 1, !dbg !765, !tbaa !299
  br label %if.end73

if.end73:                                         ; preds = %if.else, %if.then63
  br label %if.end74, !dbg !766

if.end74:                                         ; preds = %if.end73, %if.then51
  br label %if.end75, !dbg !767

if.end75:                                         ; preds = %if.end74, %if.then41
  br label %if.end76, !dbg !768

if.end76:                                         ; preds = %if.end75, %if.then31
  br label %if.end77, !dbg !769

if.end77:                                         ; preds = %if.end76, %if.end20
  %65 = load i32, ptr %bits.addr, align 4, !dbg !770, !tbaa !424
  %div = sdiv i32 %65, 8, !dbg !771
  %conv78 = sext i32 %div to i64, !dbg !770
  %66 = load ptr, ptr %b.addr, align 8, !dbg !772, !tbaa !277
  %endbyte79 = getelementptr inbounds %struct.oggpack_buffer, ptr %66, i32 0, i32 0, !dbg !773
  %67 = load i64, ptr %endbyte79, align 8, !dbg !774, !tbaa !380
  %add80 = add nsw i64 %67, %conv78, !dbg !774
  store i64 %add80, ptr %endbyte79, align 8, !dbg !774, !tbaa !380
  %68 = load i32, ptr %bits.addr, align 4, !dbg !775, !tbaa !424
  %div81 = sdiv i32 %68, 8, !dbg !776
  %69 = load ptr, ptr %b.addr, align 8, !dbg !777, !tbaa !277
  %ptr82 = getelementptr inbounds %struct.oggpack_buffer, ptr %69, i32 0, i32 3, !dbg !778
  %70 = load ptr, ptr %ptr82, align 8, !dbg !779, !tbaa !295
  %idx.ext = sext i32 %div81 to i64, !dbg !779
  %add.ptr83 = getelementptr inbounds i8, ptr %70, i64 %idx.ext, !dbg !779
  store ptr %add.ptr83, ptr %ptr82, align 8, !dbg !779, !tbaa !295
  %71 = load i32, ptr %bits.addr, align 4, !dbg !780, !tbaa !424
  %and84 = and i32 %71, 7, !dbg !781
  %72 = load ptr, ptr %b.addr, align 8, !dbg !782, !tbaa !277
  %endbit85 = getelementptr inbounds %struct.oggpack_buffer, ptr %72, i32 0, i32 1, !dbg !783
  store i32 %and84, ptr %endbit85, align 8, !dbg !784, !tbaa !375
  br label %return, !dbg !785

err:                                              ; preds = %cleanup, %if.then
  tail call void @llvm.dbg.label(metadata !625), !dbg !786
  %73 = load ptr, ptr %b.addr, align 8, !dbg !787, !tbaa !277
  call void @oggpack_writeclear(ptr noundef %73), !dbg !788
  br label %return, !dbg !789

return:                                           ; preds = %err, %if.end77, %cleanup
  ret void, !dbg !789

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define dso_local void @oggpack_writealign(ptr noundef %b) #0 !dbg !790 {
entry:
  %b.addr = alloca ptr, align 8
  %bits = alloca i32, align 4
  store ptr %b, ptr %b.addr, align 8, !tbaa !277
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !792, metadata !DIExpression()), !dbg !794
  call void @llvm.lifetime.start.p0(i64 4, ptr %bits) #11, !dbg !795
  tail call void @llvm.dbg.declare(metadata ptr %bits, metadata !793, metadata !DIExpression()), !dbg !796
  %0 = load ptr, ptr %b.addr, align 8, !dbg !797, !tbaa !277
  %endbit = getelementptr inbounds %struct.oggpack_buffer, ptr %0, i32 0, i32 1, !dbg !798
  %1 = load i32, ptr %endbit, align 8, !dbg !798, !tbaa !375
  %sub = sub nsw i32 8, %1, !dbg !799
  store i32 %sub, ptr %bits, align 4, !dbg !796, !tbaa !424
  %2 = load i32, ptr %bits, align 4, !dbg !800, !tbaa !424
  %cmp = icmp slt i32 %2, 8, !dbg !802
  br i1 %cmp, label %if.then, label %if.end, !dbg !803

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %b.addr, align 8, !dbg !804, !tbaa !277
  %4 = load i32, ptr %bits, align 4, !dbg !805, !tbaa !424
  call void @oggpack_write(ptr noundef %3, i64 noundef 0, i32 noundef %4), !dbg !806
  br label %if.end, !dbg !806

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr %bits) #11, !dbg !807
  ret void, !dbg !807
}

; Function Attrs: nounwind uwtable
define dso_local void @oggpackB_writealign(ptr noundef %b) #0 !dbg !808 {
entry:
  %b.addr = alloca ptr, align 8
  %bits = alloca i32, align 4
  store ptr %b, ptr %b.addr, align 8, !tbaa !277
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !810, metadata !DIExpression()), !dbg !812
  call void @llvm.lifetime.start.p0(i64 4, ptr %bits) #11, !dbg !813
  tail call void @llvm.dbg.declare(metadata ptr %bits, metadata !811, metadata !DIExpression()), !dbg !814
  %0 = load ptr, ptr %b.addr, align 8, !dbg !815, !tbaa !277
  %endbit = getelementptr inbounds %struct.oggpack_buffer, ptr %0, i32 0, i32 1, !dbg !816
  %1 = load i32, ptr %endbit, align 8, !dbg !816, !tbaa !375
  %sub = sub nsw i32 8, %1, !dbg !817
  store i32 %sub, ptr %bits, align 4, !dbg !814, !tbaa !424
  %2 = load i32, ptr %bits, align 4, !dbg !818, !tbaa !424
  %cmp = icmp slt i32 %2, 8, !dbg !820
  br i1 %cmp, label %if.then, label %if.end, !dbg !821

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %b.addr, align 8, !dbg !822, !tbaa !277
  %4 = load i32, ptr %bits, align 4, !dbg !823, !tbaa !424
  call void @oggpackB_write(ptr noundef %3, i64 noundef 0, i32 noundef %4), !dbg !824
  br label %if.end, !dbg !824

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr %bits) #11, !dbg !825
  ret void, !dbg !825
}

; Function Attrs: nounwind uwtable
define dso_local void @oggpack_writecopy(ptr noundef %b, ptr noundef %source, i64 noundef %bits) #0 !dbg !826 {
entry:
  %b.addr = alloca ptr, align 8
  %source.addr = alloca ptr, align 8
  %bits.addr = alloca i64, align 8
  store ptr %b, ptr %b.addr, align 8, !tbaa !277
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !830, metadata !DIExpression()), !dbg !833
  store ptr %source, ptr %source.addr, align 8, !tbaa !277
  tail call void @llvm.dbg.declare(metadata ptr %source.addr, metadata !831, metadata !DIExpression()), !dbg !834
  store i64 %bits, ptr %bits.addr, align 8, !tbaa !350
  tail call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !832, metadata !DIExpression()), !dbg !835
  %0 = load ptr, ptr %b.addr, align 8, !dbg !836, !tbaa !277
  %1 = load ptr, ptr %source.addr, align 8, !dbg !837, !tbaa !277
  %2 = load i64, ptr %bits.addr, align 8, !dbg !838, !tbaa !350
  call void @oggpack_writecopy_helper(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef @oggpack_write, i32 noundef 0), !dbg !839
  ret void, !dbg !840
}

; Function Attrs: nounwind uwtable
define internal void @oggpack_writecopy_helper(ptr noundef %b, ptr noundef %source, i64 noundef %bits, ptr noundef %w, i32 noundef %msb) #0 !dbg !841 {
entry:
  %b.addr = alloca ptr, align 8
  %source.addr = alloca ptr, align 8
  %bits.addr = alloca i64, align 8
  %w.addr = alloca ptr, align 8
  %msb.addr = alloca i32, align 4
  %ptr = alloca ptr, align 8
  %bytes = alloca i64, align 8
  %pbytes = alloca i64, align 8
  %ret = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %b, ptr %b.addr, align 8, !tbaa !277
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !846, metadata !DIExpression()), !dbg !861
  store ptr %source, ptr %source.addr, align 8, !tbaa !277
  tail call void @llvm.dbg.declare(metadata ptr %source.addr, metadata !847, metadata !DIExpression()), !dbg !862
  store i64 %bits, ptr %bits.addr, align 8, !tbaa !350
  tail call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !848, metadata !DIExpression()), !dbg !863
  store ptr %w, ptr %w.addr, align 8, !tbaa !277
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !849, metadata !DIExpression()), !dbg !864
  store i32 %msb, ptr %msb.addr, align 4, !tbaa !424
  tail call void @llvm.dbg.declare(metadata ptr %msb.addr, metadata !850, metadata !DIExpression()), !dbg !865
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #11, !dbg !866
  tail call void @llvm.dbg.declare(metadata ptr %ptr, metadata !851, metadata !DIExpression()), !dbg !867
  %0 = load ptr, ptr %source.addr, align 8, !dbg !868, !tbaa !277
  store ptr %0, ptr %ptr, align 8, !dbg !867, !tbaa !277
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #11, !dbg !869
  tail call void @llvm.dbg.declare(metadata ptr %bytes, metadata !852, metadata !DIExpression()), !dbg !870
  %1 = load i64, ptr %bits.addr, align 8, !dbg !871, !tbaa !350
  %div = sdiv i64 %1, 8, !dbg !872
  store i64 %div, ptr %bytes, align 8, !dbg !870, !tbaa !350
  call void @llvm.lifetime.start.p0(i64 8, ptr %pbytes) #11, !dbg !873
  tail call void @llvm.dbg.declare(metadata ptr %pbytes, metadata !853, metadata !DIExpression()), !dbg !874
  %2 = load ptr, ptr %b.addr, align 8, !dbg !875, !tbaa !277
  %endbit = getelementptr inbounds %struct.oggpack_buffer, ptr %2, i32 0, i32 1, !dbg !876
  %3 = load i32, ptr %endbit, align 8, !dbg !876, !tbaa !375
  %conv = sext i32 %3 to i64, !dbg !875
  %4 = load i64, ptr %bits.addr, align 8, !dbg !877, !tbaa !350
  %add = add nsw i64 %conv, %4, !dbg !878
  %div1 = sdiv i64 %add, 8, !dbg !879
  store i64 %div1, ptr %pbytes, align 8, !dbg !874, !tbaa !350
  %5 = load i64, ptr %bytes, align 8, !dbg !880, !tbaa !350
  %mul = mul nsw i64 %5, 8, !dbg !881
  %6 = load i64, ptr %bits.addr, align 8, !dbg !882, !tbaa !350
  %sub = sub nsw i64 %6, %mul, !dbg !882
  store i64 %sub, ptr %bits.addr, align 8, !dbg !882, !tbaa !350
  %7 = load ptr, ptr %b.addr, align 8, !dbg !883, !tbaa !277
  %endbyte = getelementptr inbounds %struct.oggpack_buffer, ptr %7, i32 0, i32 0, !dbg !884
  %8 = load i64, ptr %endbyte, align 8, !dbg !884, !tbaa !380
  %9 = load i64, ptr %pbytes, align 8, !dbg !885, !tbaa !350
  %add2 = add nsw i64 %8, %9, !dbg !886
  %10 = load ptr, ptr %b.addr, align 8, !dbg !887, !tbaa !277
  %storage = getelementptr inbounds %struct.oggpack_buffer, ptr %10, i32 0, i32 4, !dbg !888
  %11 = load i64, ptr %storage, align 8, !dbg !888, !tbaa !303
  %cmp = icmp sge i64 %add2, %11, !dbg !889
  br i1 %cmp, label %if.then, label %if.end26, !dbg !890

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #11, !dbg !891
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !854, metadata !DIExpression()), !dbg !892
  %12 = load ptr, ptr %b.addr, align 8, !dbg !893, !tbaa !277
  %ptr4 = getelementptr inbounds %struct.oggpack_buffer, ptr %12, i32 0, i32 3, !dbg !895
  %13 = load ptr, ptr %ptr4, align 8, !dbg !895, !tbaa !295
  %tobool = icmp ne ptr %13, null, !dbg !893
  br i1 %tobool, label %if.end, label %if.then5, !dbg !896

if.then5:                                         ; preds = %if.then
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !897

if.end:                                           ; preds = %if.then
  %14 = load ptr, ptr %b.addr, align 8, !dbg !898, !tbaa !277
  %storage6 = getelementptr inbounds %struct.oggpack_buffer, ptr %14, i32 0, i32 4, !dbg !900
  %15 = load i64, ptr %storage6, align 8, !dbg !900, !tbaa !303
  %16 = load ptr, ptr %b.addr, align 8, !dbg !901, !tbaa !277
  %endbyte7 = getelementptr inbounds %struct.oggpack_buffer, ptr %16, i32 0, i32 0, !dbg !902
  %17 = load i64, ptr %endbyte7, align 8, !dbg !902, !tbaa !380
  %18 = load i64, ptr %pbytes, align 8, !dbg !903, !tbaa !350
  %add8 = add nsw i64 %17, %18, !dbg !904
  %add9 = add nsw i64 %add8, 256, !dbg !905
  %cmp10 = icmp sgt i64 %15, %add9, !dbg !906
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !907

if.then12:                                        ; preds = %if.end
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !908

if.end13:                                         ; preds = %if.end
  %19 = load ptr, ptr %b.addr, align 8, !dbg !909, !tbaa !277
  %endbyte14 = getelementptr inbounds %struct.oggpack_buffer, ptr %19, i32 0, i32 0, !dbg !910
  %20 = load i64, ptr %endbyte14, align 8, !dbg !910, !tbaa !380
  %21 = load i64, ptr %pbytes, align 8, !dbg !911, !tbaa !350
  %add15 = add nsw i64 %20, %21, !dbg !912
  %add16 = add nsw i64 %add15, 256, !dbg !913
  %22 = load ptr, ptr %b.addr, align 8, !dbg !914, !tbaa !277
  %storage17 = getelementptr inbounds %struct.oggpack_buffer, ptr %22, i32 0, i32 4, !dbg !915
  store i64 %add16, ptr %storage17, align 8, !dbg !916, !tbaa !303
  %23 = load ptr, ptr %b.addr, align 8, !dbg !917, !tbaa !277
  %buffer = getelementptr inbounds %struct.oggpack_buffer, ptr %23, i32 0, i32 2, !dbg !918
  %24 = load ptr, ptr %buffer, align 8, !dbg !918, !tbaa !288
  %25 = load ptr, ptr %b.addr, align 8, !dbg !919, !tbaa !277
  %storage18 = getelementptr inbounds %struct.oggpack_buffer, ptr %25, i32 0, i32 4, !dbg !920
  %26 = load i64, ptr %storage18, align 8, !dbg !920, !tbaa !303
  %call = call ptr @realloc(ptr noundef %24, i64 noundef %26) #12, !dbg !921
  store ptr %call, ptr %ret, align 8, !dbg !922, !tbaa !277
  %27 = load ptr, ptr %ret, align 8, !dbg !923, !tbaa !277
  %tobool19 = icmp ne ptr %27, null, !dbg !923
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !925

if.then20:                                        ; preds = %if.end13
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !926

if.end21:                                         ; preds = %if.end13
  %28 = load ptr, ptr %ret, align 8, !dbg !927, !tbaa !277
  %29 = load ptr, ptr %b.addr, align 8, !dbg !928, !tbaa !277
  %buffer22 = getelementptr inbounds %struct.oggpack_buffer, ptr %29, i32 0, i32 2, !dbg !929
  store ptr %28, ptr %buffer22, align 8, !dbg !930, !tbaa !288
  %30 = load ptr, ptr %b.addr, align 8, !dbg !931, !tbaa !277
  %buffer23 = getelementptr inbounds %struct.oggpack_buffer, ptr %30, i32 0, i32 2, !dbg !932
  %31 = load ptr, ptr %buffer23, align 8, !dbg !932, !tbaa !288
  %32 = load ptr, ptr %b.addr, align 8, !dbg !933, !tbaa !277
  %endbyte24 = getelementptr inbounds %struct.oggpack_buffer, ptr %32, i32 0, i32 0, !dbg !934
  %33 = load i64, ptr %endbyte24, align 8, !dbg !934, !tbaa !380
  %add.ptr = getelementptr inbounds i8, ptr %31, i64 %33, !dbg !935
  %34 = load ptr, ptr %b.addr, align 8, !dbg !936, !tbaa !277
  %ptr25 = getelementptr inbounds %struct.oggpack_buffer, ptr %34, i32 0, i32 3, !dbg !937
  store ptr %add.ptr, ptr %ptr25, align 8, !dbg !938, !tbaa !295
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !939
  br label %cleanup, !dbg !939

cleanup:                                          ; preds = %if.then20, %if.then12, %if.then5, %if.end21
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #11, !dbg !939
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup56 [
    i32 0, label %cleanup.cont
    i32 2, label %err
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end26, !dbg !940

if.end26:                                         ; preds = %cleanup.cont, %entry
  %35 = load ptr, ptr %b.addr, align 8, !dbg !941, !tbaa !277
  %endbit27 = getelementptr inbounds %struct.oggpack_buffer, ptr %35, i32 0, i32 1, !dbg !942
  %36 = load i32, ptr %endbit27, align 8, !dbg !942, !tbaa !375
  %tobool28 = icmp ne i32 %36, 0, !dbg !941
  br i1 %tobool28, label %if.then29, label %if.else, !dbg !943

if.then29:                                        ; preds = %if.end26
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11, !dbg !944
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !857, metadata !DIExpression()), !dbg !945
  store i32 0, ptr %i, align 4, !dbg !946, !tbaa !424
  br label %for.cond, !dbg !948

for.cond:                                         ; preds = %for.inc, %if.then29
  %37 = load i32, ptr %i, align 4, !dbg !949, !tbaa !424
  %conv30 = sext i32 %37 to i64, !dbg !949
  %38 = load i64, ptr %bytes, align 8, !dbg !951, !tbaa !350
  %cmp31 = icmp slt i64 %conv30, %38, !dbg !952
  br i1 %cmp31, label %for.body, label %for.end, !dbg !953

for.body:                                         ; preds = %for.cond
  %39 = load ptr, ptr %w.addr, align 8, !dbg !954, !tbaa !277
  %40 = load ptr, ptr %b.addr, align 8, !dbg !955, !tbaa !277
  %41 = load ptr, ptr %ptr, align 8, !dbg !956, !tbaa !277
  %42 = load i32, ptr %i, align 4, !dbg !957, !tbaa !424
  %idxprom = sext i32 %42 to i64, !dbg !956
  %arrayidx = getelementptr inbounds i8, ptr %41, i64 %idxprom, !dbg !956
  %43 = load i8, ptr %arrayidx, align 1, !dbg !956, !tbaa !299
  %conv33 = zext i8 %43 to i64, !dbg !958
  call void %39(ptr noundef %40, i64 noundef %conv33, i32 noundef 8), !dbg !954
  br label %for.inc, !dbg !954

for.inc:                                          ; preds = %for.body
  %44 = load i32, ptr %i, align 4, !dbg !959, !tbaa !424
  %inc = add nsw i32 %44, 1, !dbg !959
  store i32 %inc, ptr %i, align 4, !dbg !959, !tbaa !424
  br label %for.cond, !dbg !960, !llvm.loop !961

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11, !dbg !964
  br label %if.end40, !dbg !965

if.else:                                          ; preds = %if.end26
  %45 = load ptr, ptr %b.addr, align 8, !dbg !966, !tbaa !277
  %ptr34 = getelementptr inbounds %struct.oggpack_buffer, ptr %45, i32 0, i32 3, !dbg !968
  %46 = load ptr, ptr %ptr34, align 8, !dbg !968, !tbaa !295
  %47 = load ptr, ptr %source.addr, align 8, !dbg !969, !tbaa !277
  %48 = load i64, ptr %bytes, align 8, !dbg !970, !tbaa !350
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %46, ptr align 1 %47, i64 %48, i1 false), !dbg !971
  %49 = load i64, ptr %bytes, align 8, !dbg !972, !tbaa !350
  %50 = load ptr, ptr %b.addr, align 8, !dbg !973, !tbaa !277
  %ptr35 = getelementptr inbounds %struct.oggpack_buffer, ptr %50, i32 0, i32 3, !dbg !974
  %51 = load ptr, ptr %ptr35, align 8, !dbg !975, !tbaa !295
  %add.ptr36 = getelementptr inbounds i8, ptr %51, i64 %49, !dbg !975
  store ptr %add.ptr36, ptr %ptr35, align 8, !dbg !975, !tbaa !295
  %52 = load i64, ptr %bytes, align 8, !dbg !976, !tbaa !350
  %53 = load ptr, ptr %b.addr, align 8, !dbg !977, !tbaa !277
  %endbyte37 = getelementptr inbounds %struct.oggpack_buffer, ptr %53, i32 0, i32 0, !dbg !978
  %54 = load i64, ptr %endbyte37, align 8, !dbg !979, !tbaa !380
  %add38 = add nsw i64 %54, %52, !dbg !979
  store i64 %add38, ptr %endbyte37, align 8, !dbg !979, !tbaa !380
  %55 = load ptr, ptr %b.addr, align 8, !dbg !980, !tbaa !277
  %ptr39 = getelementptr inbounds %struct.oggpack_buffer, ptr %55, i32 0, i32 3, !dbg !981
  %56 = load ptr, ptr %ptr39, align 8, !dbg !981, !tbaa !295
  store i8 0, ptr %56, align 1, !dbg !982, !tbaa !299
  br label %if.end40

if.end40:                                         ; preds = %if.else, %for.end
  %57 = load i64, ptr %bits.addr, align 8, !dbg !983, !tbaa !350
  %tobool41 = icmp ne i64 %57, 0, !dbg !983
  br i1 %tobool41, label %if.then42, label %if.end55, !dbg !985

if.then42:                                        ; preds = %if.end40
  %58 = load i32, ptr %msb.addr, align 4, !dbg !986, !tbaa !424
  %tobool43 = icmp ne i32 %58, 0, !dbg !986
  br i1 %tobool43, label %if.then44, label %if.else50, !dbg !989

if.then44:                                        ; preds = %if.then42
  %59 = load ptr, ptr %w.addr, align 8, !dbg !990, !tbaa !277
  %60 = load ptr, ptr %b.addr, align 8, !dbg !991, !tbaa !277
  %61 = load ptr, ptr %ptr, align 8, !dbg !992, !tbaa !277
  %62 = load i64, ptr %bytes, align 8, !dbg !993, !tbaa !350
  %arrayidx45 = getelementptr inbounds i8, ptr %61, i64 %62, !dbg !992
  %63 = load i8, ptr %arrayidx45, align 1, !dbg !992, !tbaa !299
  %conv46 = zext i8 %63 to i32, !dbg !992
  %64 = load i64, ptr %bits.addr, align 8, !dbg !994, !tbaa !350
  %sub47 = sub nsw i64 8, %64, !dbg !995
  %sh_prom = trunc i64 %sub47 to i32, !dbg !996
  %shr = ashr i32 %conv46, %sh_prom, !dbg !996
  %conv48 = sext i32 %shr to i64, !dbg !997
  %65 = load i64, ptr %bits.addr, align 8, !dbg !998, !tbaa !350
  %conv49 = trunc i64 %65 to i32, !dbg !998
  call void %59(ptr noundef %60, i64 noundef %conv48, i32 noundef %conv49), !dbg !990
  br label %if.end54, !dbg !990

if.else50:                                        ; preds = %if.then42
  %66 = load ptr, ptr %w.addr, align 8, !dbg !999, !tbaa !277
  %67 = load ptr, ptr %b.addr, align 8, !dbg !1000, !tbaa !277
  %68 = load ptr, ptr %ptr, align 8, !dbg !1001, !tbaa !277
  %69 = load i64, ptr %bytes, align 8, !dbg !1002, !tbaa !350
  %arrayidx51 = getelementptr inbounds i8, ptr %68, i64 %69, !dbg !1001
  %70 = load i8, ptr %arrayidx51, align 1, !dbg !1001, !tbaa !299
  %conv52 = zext i8 %70 to i64, !dbg !1003
  %71 = load i64, ptr %bits.addr, align 8, !dbg !1004, !tbaa !350
  %conv53 = trunc i64 %71 to i32, !dbg !1004
  call void %66(ptr noundef %67, i64 noundef %conv52, i32 noundef %conv53), !dbg !999
  br label %if.end54

if.end54:                                         ; preds = %if.else50, %if.then44
  br label %if.end55, !dbg !1005

if.end55:                                         ; preds = %if.end54, %if.end40
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup56, !dbg !1006

err:                                              ; preds = %cleanup
  tail call void @llvm.dbg.label(metadata !860), !dbg !1007
  %72 = load ptr, ptr %b.addr, align 8, !dbg !1008, !tbaa !277
  call void @oggpack_writeclear(ptr noundef %72), !dbg !1009
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1010
  br label %cleanup56, !dbg !1010

cleanup56:                                        ; preds = %err, %if.end55, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %pbytes) #11, !dbg !1010
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #11, !dbg !1010
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #11, !dbg !1010
  %cleanup.dest59 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest59, label %unreachable [
    i32 0, label %cleanup.cont60
    i32 1, label %cleanup.cont60
  ]

cleanup.cont60:                                   ; preds = %cleanup56, %cleanup56
  ret void, !dbg !1010

unreachable:                                      ; preds = %cleanup56
  unreachable
}

; Function Attrs: nounwind uwtable
define dso_local void @oggpackB_writecopy(ptr noundef %b, ptr noundef %source, i64 noundef %bits) #0 !dbg !1011 {
entry:
  %b.addr = alloca ptr, align 8
  %source.addr = alloca ptr, align 8
  %bits.addr = alloca i64, align 8
  store ptr %b, ptr %b.addr, align 8, !tbaa !277
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1013, metadata !DIExpression()), !dbg !1016
  store ptr %source, ptr %source.addr, align 8, !tbaa !277
  tail call void @llvm.dbg.declare(metadata ptr %source.addr, metadata !1014, metadata !DIExpression()), !dbg !1017
  store i64 %bits, ptr %bits.addr, align 8, !tbaa !350
  tail call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !1015, metadata !DIExpression()), !dbg !1018
  %0 = load ptr, ptr %b.addr, align 8, !dbg !1019, !tbaa !277
  %1 = load ptr, ptr %source.addr, align 8, !dbg !1020, !tbaa !277
  %2 = load i64, ptr %bits.addr, align 8, !dbg !1021, !tbaa !350
  call void @oggpack_writecopy_helper(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef @oggpackB_write, i32 noundef 1), !dbg !1022
  ret void, !dbg !1023
}

; Function Attrs: nounwind uwtable
define dso_local void @oggpack_reset(ptr noundef %b) #0 !dbg !1024 {
entry:
  %b.addr = alloca ptr, align 8
  store ptr %b, ptr %b.addr, align 8, !tbaa !277
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1026, metadata !DIExpression()), !dbg !1027
  %0 = load ptr, ptr %b.addr, align 8, !dbg !1028, !tbaa !277
  %ptr = getelementptr inbounds %struct.oggpack_buffer, ptr %0, i32 0, i32 3, !dbg !1030
  %1 = load ptr, ptr %ptr, align 8, !dbg !1030, !tbaa !295
  %tobool = icmp ne ptr %1, null, !dbg !1028
  br i1 %tobool, label %if.end, label %if.then, !dbg !1031

if.then:                                          ; preds = %entry
  br label %return, !dbg !1032

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %b.addr, align 8, !dbg !1033, !tbaa !277
  %buffer = getelementptr inbounds %struct.oggpack_buffer, ptr %2, i32 0, i32 2, !dbg !1034
  %3 = load ptr, ptr %buffer, align 8, !dbg !1034, !tbaa !288
  %4 = load ptr, ptr %b.addr, align 8, !dbg !1035, !tbaa !277
  %ptr1 = getelementptr inbounds %struct.oggpack_buffer, ptr %4, i32 0, i32 3, !dbg !1036
  store ptr %3, ptr %ptr1, align 8, !dbg !1037, !tbaa !295
  %5 = load ptr, ptr %b.addr, align 8, !dbg !1038, !tbaa !277
  %buffer2 = getelementptr inbounds %struct.oggpack_buffer, ptr %5, i32 0, i32 2, !dbg !1039
  %6 = load ptr, ptr %buffer2, align 8, !dbg !1039, !tbaa !288
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 0, !dbg !1038
  store i8 0, ptr %arrayidx, align 1, !dbg !1040, !tbaa !299
  %7 = load ptr, ptr %b.addr, align 8, !dbg !1041, !tbaa !277
  %endbyte = getelementptr inbounds %struct.oggpack_buffer, ptr %7, i32 0, i32 0, !dbg !1042
  store i64 0, ptr %endbyte, align 8, !dbg !1043, !tbaa !380
  %8 = load ptr, ptr %b.addr, align 8, !dbg !1044, !tbaa !277
  %endbit = getelementptr inbounds %struct.oggpack_buffer, ptr %8, i32 0, i32 1, !dbg !1045
  store i32 0, ptr %endbit, align 8, !dbg !1046, !tbaa !375
  br label %return, !dbg !1047

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !1047
}

; Function Attrs: nounwind uwtable
define dso_local void @oggpackB_reset(ptr noundef %b) #0 !dbg !1048 {
entry:
  %b.addr = alloca ptr, align 8
  store ptr %b, ptr %b.addr, align 8, !tbaa !277
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1050, metadata !DIExpression()), !dbg !1051
  %0 = load ptr, ptr %b.addr, align 8, !dbg !1052, !tbaa !277
  call void @oggpack_reset(ptr noundef %0), !dbg !1053
  ret void, !dbg !1054
}

; Function Attrs: nounwind
declare !dbg !1055 void @free(ptr noundef) #5

; Function Attrs: nounwind uwtable
define dso_local void @oggpackB_writeclear(ptr noundef %b) #0 !dbg !1058 {
entry:
  %b.addr = alloca ptr, align 8
  store ptr %b, ptr %b.addr, align 8, !tbaa !277
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1060, metadata !DIExpression()), !dbg !1061
  %0 = load ptr, ptr %b.addr, align 8, !dbg !1062, !tbaa !277
  call void @oggpack_writeclear(ptr noundef %0), !dbg !1063
  ret void, !dbg !1064
}

; Function Attrs: nounwind uwtable
define dso_local void @oggpack_readinit(ptr noundef %b, ptr noundef %buf, i32 noundef %bytes) #0 !dbg !1065 {
entry:
  %b.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %bytes.addr = alloca i32, align 4
  store ptr %b, ptr %b.addr, align 8, !tbaa !277
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1069, metadata !DIExpression()), !dbg !1072
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !277
  tail call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !1070, metadata !DIExpression()), !dbg !1073
  store i32 %bytes, ptr %bytes.addr, align 4, !tbaa !424
  tail call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !1071, metadata !DIExpression()), !dbg !1074
  %0 = load ptr, ptr %b.addr, align 8, !dbg !1075, !tbaa !277
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 40, i1 false), !dbg !1076
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !1077, !tbaa !277
  %2 = load ptr, ptr %b.addr, align 8, !dbg !1078, !tbaa !277
  %ptr = getelementptr inbounds %struct.oggpack_buffer, ptr %2, i32 0, i32 3, !dbg !1079
  store ptr %1, ptr %ptr, align 8, !dbg !1080, !tbaa !295
  %3 = load ptr, ptr %b.addr, align 8, !dbg !1081, !tbaa !277
  %buffer = getelementptr inbounds %struct.oggpack_buffer, ptr %3, i32 0, i32 2, !dbg !1082
  store ptr %1, ptr %buffer, align 8, !dbg !1083, !tbaa !288
  %4 = load i32, ptr %bytes.addr, align 4, !dbg !1084, !tbaa !424
  %conv = sext i32 %4 to i64, !dbg !1084
  %5 = load ptr, ptr %b.addr, align 8, !dbg !1085, !tbaa !277
  %storage = getelementptr inbounds %struct.oggpack_buffer, ptr %5, i32 0, i32 4, !dbg !1086
  store i64 %conv, ptr %storage, align 8, !dbg !1087, !tbaa !303
  ret void, !dbg !1088
}

; Function Attrs: nounwind uwtable
define dso_local void @oggpackB_readinit(ptr noundef %b, ptr noundef %buf, i32 noundef %bytes) #0 !dbg !1089 {
entry:
  %b.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %bytes.addr = alloca i32, align 4
  store ptr %b, ptr %b.addr, align 8, !tbaa !277
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1091, metadata !DIExpression()), !dbg !1094
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !277
  tail call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !1092, metadata !DIExpression()), !dbg !1095
  store i32 %bytes, ptr %bytes.addr, align 4, !tbaa !424
  tail call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !1093, metadata !DIExpression()), !dbg !1096
  %0 = load ptr, ptr %b.addr, align 8, !dbg !1097, !tbaa !277
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !1098, !tbaa !277
  %2 = load i32, ptr %bytes.addr, align 4, !dbg !1099, !tbaa !424
  call void @oggpack_readinit(ptr noundef %0, ptr noundef %1, i32 noundef %2), !dbg !1100
  ret void, !dbg !1101
}

; Function Attrs: nounwind uwtable
define dso_local i64 @oggpack_look(ptr noundef %b, i32 noundef %bits) #0 !dbg !1102 {
entry:
  %retval = alloca i64, align 8
  %b.addr = alloca ptr, align 8
  %bits.addr = alloca i32, align 4
  %ret = alloca i64, align 8
  %m = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %b, ptr %b.addr, align 8, !tbaa !277
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1106, metadata !DIExpression()), !dbg !1110
  store i32 %bits, ptr %bits.addr, align 4, !tbaa !424
  tail call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !1107, metadata !DIExpression()), !dbg !1111
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #11, !dbg !1112
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !1108, metadata !DIExpression()), !dbg !1113
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #11, !dbg !1114
  tail call void @llvm.dbg.declare(metadata ptr %m, metadata !1109, metadata !DIExpression()), !dbg !1115
  %0 = load i32, ptr %bits.addr, align 4, !dbg !1116, !tbaa !424
  %cmp = icmp slt i32 %0, 0, !dbg !1118
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1119

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %bits.addr, align 4, !dbg !1120, !tbaa !424
  %cmp1 = icmp sgt i32 %1, 32, !dbg !1121
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1122

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 -1, ptr %retval, align 8, !dbg !1123
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1123

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, ptr %bits.addr, align 4, !dbg !1124, !tbaa !424
  %idxprom = sext i32 %2 to i64, !dbg !1125
  %arrayidx = getelementptr inbounds [33 x i64], ptr @mask, i64 0, i64 %idxprom, !dbg !1125
  %3 = load i64, ptr %arrayidx, align 8, !dbg !1125, !tbaa !350
  store i64 %3, ptr %m, align 8, !dbg !1126, !tbaa !350
  %4 = load ptr, ptr %b.addr, align 8, !dbg !1127, !tbaa !277
  %endbit = getelementptr inbounds %struct.oggpack_buffer, ptr %4, i32 0, i32 1, !dbg !1128
  %5 = load i32, ptr %endbit, align 8, !dbg !1128, !tbaa !375
  %6 = load i32, ptr %bits.addr, align 4, !dbg !1129, !tbaa !424
  %add = add nsw i32 %6, %5, !dbg !1129
  store i32 %add, ptr %bits.addr, align 4, !dbg !1129, !tbaa !424
  %7 = load ptr, ptr %b.addr, align 8, !dbg !1130, !tbaa !277
  %endbyte = getelementptr inbounds %struct.oggpack_buffer, ptr %7, i32 0, i32 0, !dbg !1132
  %8 = load i64, ptr %endbyte, align 8, !dbg !1132, !tbaa !380
  %9 = load ptr, ptr %b.addr, align 8, !dbg !1133, !tbaa !277
  %storage = getelementptr inbounds %struct.oggpack_buffer, ptr %9, i32 0, i32 4, !dbg !1134
  %10 = load i64, ptr %storage, align 8, !dbg !1134, !tbaa !303
  %sub = sub nsw i64 %10, 4, !dbg !1135
  %cmp2 = icmp sge i64 %8, %sub, !dbg !1136
  br i1 %cmp2, label %if.then3, label %if.end14, !dbg !1137

if.then3:                                         ; preds = %if.end
  %11 = load ptr, ptr %b.addr, align 8, !dbg !1138, !tbaa !277
  %endbyte4 = getelementptr inbounds %struct.oggpack_buffer, ptr %11, i32 0, i32 0, !dbg !1141
  %12 = load i64, ptr %endbyte4, align 8, !dbg !1141, !tbaa !380
  %13 = load ptr, ptr %b.addr, align 8, !dbg !1142, !tbaa !277
  %storage5 = getelementptr inbounds %struct.oggpack_buffer, ptr %13, i32 0, i32 4, !dbg !1143
  %14 = load i64, ptr %storage5, align 8, !dbg !1143, !tbaa !303
  %15 = load i32, ptr %bits.addr, align 4, !dbg !1144, !tbaa !424
  %add6 = add nsw i32 %15, 7, !dbg !1145
  %shr = ashr i32 %add6, 3, !dbg !1146
  %conv = sext i32 %shr to i64, !dbg !1147
  %sub7 = sub nsw i64 %14, %conv, !dbg !1148
  %cmp8 = icmp sgt i64 %12, %sub7, !dbg !1149
  br i1 %cmp8, label %if.then10, label %if.else, !dbg !1150

if.then10:                                        ; preds = %if.then3
  store i64 -1, ptr %retval, align 8, !dbg !1151
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1151

if.else:                                          ; preds = %if.then3
  %16 = load i32, ptr %bits.addr, align 4, !dbg !1152, !tbaa !424
  %tobool = icmp ne i32 %16, 0, !dbg !1152
  br i1 %tobool, label %if.end12, label %if.then11, !dbg !1154

if.then11:                                        ; preds = %if.else
  store i64 0, ptr %retval, align 8, !dbg !1155
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1155

if.end12:                                         ; preds = %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end12
  br label %if.end14, !dbg !1156

if.end14:                                         ; preds = %if.end13, %if.end
  %17 = load ptr, ptr %b.addr, align 8, !dbg !1157, !tbaa !277
  %ptr = getelementptr inbounds %struct.oggpack_buffer, ptr %17, i32 0, i32 3, !dbg !1158
  %18 = load ptr, ptr %ptr, align 8, !dbg !1158, !tbaa !295
  %arrayidx15 = getelementptr inbounds i8, ptr %18, i64 0, !dbg !1157
  %19 = load i8, ptr %arrayidx15, align 1, !dbg !1157, !tbaa !299
  %conv16 = zext i8 %19 to i32, !dbg !1157
  %20 = load ptr, ptr %b.addr, align 8, !dbg !1159, !tbaa !277
  %endbit17 = getelementptr inbounds %struct.oggpack_buffer, ptr %20, i32 0, i32 1, !dbg !1160
  %21 = load i32, ptr %endbit17, align 8, !dbg !1160, !tbaa !375
  %shr18 = ashr i32 %conv16, %21, !dbg !1161
  %conv19 = sext i32 %shr18 to i64, !dbg !1157
  store i64 %conv19, ptr %ret, align 8, !dbg !1162, !tbaa !350
  %22 = load i32, ptr %bits.addr, align 4, !dbg !1163, !tbaa !424
  %cmp20 = icmp sgt i32 %22, 8, !dbg !1165
  br i1 %cmp20, label %if.then22, label %if.end67, !dbg !1166

if.then22:                                        ; preds = %if.end14
  %23 = load ptr, ptr %b.addr, align 8, !dbg !1167, !tbaa !277
  %ptr23 = getelementptr inbounds %struct.oggpack_buffer, ptr %23, i32 0, i32 3, !dbg !1169
  %24 = load ptr, ptr %ptr23, align 8, !dbg !1169, !tbaa !295
  %arrayidx24 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1167
  %25 = load i8, ptr %arrayidx24, align 1, !dbg !1167, !tbaa !299
  %conv25 = zext i8 %25 to i32, !dbg !1167
  %26 = load ptr, ptr %b.addr, align 8, !dbg !1170, !tbaa !277
  %endbit26 = getelementptr inbounds %struct.oggpack_buffer, ptr %26, i32 0, i32 1, !dbg !1171
  %27 = load i32, ptr %endbit26, align 8, !dbg !1171, !tbaa !375
  %sub27 = sub nsw i32 8, %27, !dbg !1172
  %shl = shl i32 %conv25, %sub27, !dbg !1173
  %conv28 = sext i32 %shl to i64, !dbg !1167
  %28 = load i64, ptr %ret, align 8, !dbg !1174, !tbaa !350
  %or = or i64 %28, %conv28, !dbg !1174
  store i64 %or, ptr %ret, align 8, !dbg !1174, !tbaa !350
  %29 = load i32, ptr %bits.addr, align 4, !dbg !1175, !tbaa !424
  %cmp29 = icmp sgt i32 %29, 16, !dbg !1177
  br i1 %cmp29, label %if.then31, label %if.end66, !dbg !1178

if.then31:                                        ; preds = %if.then22
  %30 = load ptr, ptr %b.addr, align 8, !dbg !1179, !tbaa !277
  %ptr32 = getelementptr inbounds %struct.oggpack_buffer, ptr %30, i32 0, i32 3, !dbg !1181
  %31 = load ptr, ptr %ptr32, align 8, !dbg !1181, !tbaa !295
  %arrayidx33 = getelementptr inbounds i8, ptr %31, i64 2, !dbg !1179
  %32 = load i8, ptr %arrayidx33, align 1, !dbg !1179, !tbaa !299
  %conv34 = zext i8 %32 to i32, !dbg !1179
  %33 = load ptr, ptr %b.addr, align 8, !dbg !1182, !tbaa !277
  %endbit35 = getelementptr inbounds %struct.oggpack_buffer, ptr %33, i32 0, i32 1, !dbg !1183
  %34 = load i32, ptr %endbit35, align 8, !dbg !1183, !tbaa !375
  %sub36 = sub nsw i32 16, %34, !dbg !1184
  %shl37 = shl i32 %conv34, %sub36, !dbg !1185
  %conv38 = sext i32 %shl37 to i64, !dbg !1179
  %35 = load i64, ptr %ret, align 8, !dbg !1186, !tbaa !350
  %or39 = or i64 %35, %conv38, !dbg !1186
  store i64 %or39, ptr %ret, align 8, !dbg !1186, !tbaa !350
  %36 = load i32, ptr %bits.addr, align 4, !dbg !1187, !tbaa !424
  %cmp40 = icmp sgt i32 %36, 24, !dbg !1189
  br i1 %cmp40, label %if.then42, label %if.end65, !dbg !1190

if.then42:                                        ; preds = %if.then31
  %37 = load ptr, ptr %b.addr, align 8, !dbg !1191, !tbaa !277
  %ptr43 = getelementptr inbounds %struct.oggpack_buffer, ptr %37, i32 0, i32 3, !dbg !1193
  %38 = load ptr, ptr %ptr43, align 8, !dbg !1193, !tbaa !295
  %arrayidx44 = getelementptr inbounds i8, ptr %38, i64 3, !dbg !1191
  %39 = load i8, ptr %arrayidx44, align 1, !dbg !1191, !tbaa !299
  %conv45 = zext i8 %39 to i32, !dbg !1191
  %40 = load ptr, ptr %b.addr, align 8, !dbg !1194, !tbaa !277
  %endbit46 = getelementptr inbounds %struct.oggpack_buffer, ptr %40, i32 0, i32 1, !dbg !1195
  %41 = load i32, ptr %endbit46, align 8, !dbg !1195, !tbaa !375
  %sub47 = sub nsw i32 24, %41, !dbg !1196
  %shl48 = shl i32 %conv45, %sub47, !dbg !1197
  %conv49 = sext i32 %shl48 to i64, !dbg !1191
  %42 = load i64, ptr %ret, align 8, !dbg !1198, !tbaa !350
  %or50 = or i64 %42, %conv49, !dbg !1198
  store i64 %or50, ptr %ret, align 8, !dbg !1198, !tbaa !350
  %43 = load i32, ptr %bits.addr, align 4, !dbg !1199, !tbaa !424
  %cmp51 = icmp sgt i32 %43, 32, !dbg !1201
  br i1 %cmp51, label %land.lhs.true, label %if.end64, !dbg !1202

land.lhs.true:                                    ; preds = %if.then42
  %44 = load ptr, ptr %b.addr, align 8, !dbg !1203, !tbaa !277
  %endbit53 = getelementptr inbounds %struct.oggpack_buffer, ptr %44, i32 0, i32 1, !dbg !1204
  %45 = load i32, ptr %endbit53, align 8, !dbg !1204, !tbaa !375
  %tobool54 = icmp ne i32 %45, 0, !dbg !1203
  br i1 %tobool54, label %if.then55, label %if.end64, !dbg !1205

if.then55:                                        ; preds = %land.lhs.true
  %46 = load ptr, ptr %b.addr, align 8, !dbg !1206, !tbaa !277
  %ptr56 = getelementptr inbounds %struct.oggpack_buffer, ptr %46, i32 0, i32 3, !dbg !1207
  %47 = load ptr, ptr %ptr56, align 8, !dbg !1207, !tbaa !295
  %arrayidx57 = getelementptr inbounds i8, ptr %47, i64 4, !dbg !1206
  %48 = load i8, ptr %arrayidx57, align 1, !dbg !1206, !tbaa !299
  %conv58 = zext i8 %48 to i32, !dbg !1206
  %49 = load ptr, ptr %b.addr, align 8, !dbg !1208, !tbaa !277
  %endbit59 = getelementptr inbounds %struct.oggpack_buffer, ptr %49, i32 0, i32 1, !dbg !1209
  %50 = load i32, ptr %endbit59, align 8, !dbg !1209, !tbaa !375
  %sub60 = sub nsw i32 32, %50, !dbg !1210
  %shl61 = shl i32 %conv58, %sub60, !dbg !1211
  %conv62 = sext i32 %shl61 to i64, !dbg !1206
  %51 = load i64, ptr %ret, align 8, !dbg !1212, !tbaa !350
  %or63 = or i64 %51, %conv62, !dbg !1212
  store i64 %or63, ptr %ret, align 8, !dbg !1212, !tbaa !350
  br label %if.end64, !dbg !1213

if.end64:                                         ; preds = %if.then55, %land.lhs.true, %if.then42
  br label %if.end65, !dbg !1214

if.end65:                                         ; preds = %if.end64, %if.then31
  br label %if.end66, !dbg !1215

if.end66:                                         ; preds = %if.end65, %if.then22
  br label %if.end67, !dbg !1216

if.end67:                                         ; preds = %if.end66, %if.end14
  %52 = load i64, ptr %m, align 8, !dbg !1217, !tbaa !350
  %53 = load i64, ptr %ret, align 8, !dbg !1218, !tbaa !350
  %and = and i64 %52, %53, !dbg !1219
  store i64 %and, ptr %retval, align 8, !dbg !1220
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1220

cleanup:                                          ; preds = %if.end67, %if.then11, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #11, !dbg !1221
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #11, !dbg !1221
  %54 = load i64, ptr %retval, align 8, !dbg !1221
  ret i64 %54, !dbg !1221
}

; Function Attrs: nounwind uwtable
define dso_local i64 @oggpackB_look(ptr noundef %b, i32 noundef %bits) #0 !dbg !1222 {
entry:
  %retval = alloca i64, align 8
  %b.addr = alloca ptr, align 8
  %bits.addr = alloca i32, align 4
  %ret = alloca i64, align 8
  %m = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %b, ptr %b.addr, align 8, !tbaa !277
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1224, metadata !DIExpression()), !dbg !1228
  store i32 %bits, ptr %bits.addr, align 4, !tbaa !424
  tail call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !1225, metadata !DIExpression()), !dbg !1229
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #11, !dbg !1230
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !1226, metadata !DIExpression()), !dbg !1231
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #11, !dbg !1232
  tail call void @llvm.dbg.declare(metadata ptr %m, metadata !1227, metadata !DIExpression()), !dbg !1233
  %0 = load i32, ptr %bits.addr, align 4, !dbg !1234, !tbaa !424
  %sub = sub nsw i32 32, %0, !dbg !1235
  store i32 %sub, ptr %m, align 4, !dbg !1233, !tbaa !424
  %1 = load i32, ptr %m, align 4, !dbg !1236, !tbaa !424
  %cmp = icmp slt i32 %1, 0, !dbg !1238
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1239

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr %m, align 4, !dbg !1240, !tbaa !424
  %cmp1 = icmp sgt i32 %2, 32, !dbg !1241
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1242

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 -1, ptr %retval, align 8, !dbg !1243
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1243

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %b.addr, align 8, !dbg !1244, !tbaa !277
  %endbit = getelementptr inbounds %struct.oggpack_buffer, ptr %3, i32 0, i32 1, !dbg !1245
  %4 = load i32, ptr %endbit, align 8, !dbg !1245, !tbaa !375
  %5 = load i32, ptr %bits.addr, align 4, !dbg !1246, !tbaa !424
  %add = add nsw i32 %5, %4, !dbg !1246
  store i32 %add, ptr %bits.addr, align 4, !dbg !1246, !tbaa !424
  %6 = load ptr, ptr %b.addr, align 8, !dbg !1247, !tbaa !277
  %endbyte = getelementptr inbounds %struct.oggpack_buffer, ptr %6, i32 0, i32 0, !dbg !1249
  %7 = load i64, ptr %endbyte, align 8, !dbg !1249, !tbaa !380
  %8 = load ptr, ptr %b.addr, align 8, !dbg !1250, !tbaa !277
  %storage = getelementptr inbounds %struct.oggpack_buffer, ptr %8, i32 0, i32 4, !dbg !1251
  %9 = load i64, ptr %storage, align 8, !dbg !1251, !tbaa !303
  %sub2 = sub nsw i64 %9, 4, !dbg !1252
  %cmp3 = icmp sge i64 %7, %sub2, !dbg !1253
  br i1 %cmp3, label %if.then4, label %if.end15, !dbg !1254

if.then4:                                         ; preds = %if.end
  %10 = load ptr, ptr %b.addr, align 8, !dbg !1255, !tbaa !277
  %endbyte5 = getelementptr inbounds %struct.oggpack_buffer, ptr %10, i32 0, i32 0, !dbg !1258
  %11 = load i64, ptr %endbyte5, align 8, !dbg !1258, !tbaa !380
  %12 = load ptr, ptr %b.addr, align 8, !dbg !1259, !tbaa !277
  %storage6 = getelementptr inbounds %struct.oggpack_buffer, ptr %12, i32 0, i32 4, !dbg !1260
  %13 = load i64, ptr %storage6, align 8, !dbg !1260, !tbaa !303
  %14 = load i32, ptr %bits.addr, align 4, !dbg !1261, !tbaa !424
  %add7 = add nsw i32 %14, 7, !dbg !1262
  %shr = ashr i32 %add7, 3, !dbg !1263
  %conv = sext i32 %shr to i64, !dbg !1264
  %sub8 = sub nsw i64 %13, %conv, !dbg !1265
  %cmp9 = icmp sgt i64 %11, %sub8, !dbg !1266
  br i1 %cmp9, label %if.then11, label %if.else, !dbg !1267

if.then11:                                        ; preds = %if.then4
  store i64 -1, ptr %retval, align 8, !dbg !1268
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1268

if.else:                                          ; preds = %if.then4
  %15 = load i32, ptr %bits.addr, align 4, !dbg !1269, !tbaa !424
  %tobool = icmp ne i32 %15, 0, !dbg !1269
  br i1 %tobool, label %if.end13, label %if.then12, !dbg !1271

if.then12:                                        ; preds = %if.else
  store i64 0, ptr %retval, align 8, !dbg !1272
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1272

if.end13:                                         ; preds = %if.else
  br label %if.end14

if.end14:                                         ; preds = %if.end13
  br label %if.end15, !dbg !1273

if.end15:                                         ; preds = %if.end14, %if.end
  %16 = load ptr, ptr %b.addr, align 8, !dbg !1274, !tbaa !277
  %ptr = getelementptr inbounds %struct.oggpack_buffer, ptr %16, i32 0, i32 3, !dbg !1275
  %17 = load ptr, ptr %ptr, align 8, !dbg !1275, !tbaa !295
  %arrayidx = getelementptr inbounds i8, ptr %17, i64 0, !dbg !1274
  %18 = load i8, ptr %arrayidx, align 1, !dbg !1274, !tbaa !299
  %conv16 = zext i8 %18 to i32, !dbg !1274
  %19 = load ptr, ptr %b.addr, align 8, !dbg !1276, !tbaa !277
  %endbit17 = getelementptr inbounds %struct.oggpack_buffer, ptr %19, i32 0, i32 1, !dbg !1277
  %20 = load i32, ptr %endbit17, align 8, !dbg !1277, !tbaa !375
  %add18 = add nsw i32 24, %20, !dbg !1278
  %shl = shl i32 %conv16, %add18, !dbg !1279
  %conv19 = sext i32 %shl to i64, !dbg !1274
  store i64 %conv19, ptr %ret, align 8, !dbg !1280, !tbaa !350
  %21 = load i32, ptr %bits.addr, align 4, !dbg !1281, !tbaa !424
  %cmp20 = icmp sgt i32 %21, 8, !dbg !1283
  br i1 %cmp20, label %if.then22, label %if.end67, !dbg !1284

if.then22:                                        ; preds = %if.end15
  %22 = load ptr, ptr %b.addr, align 8, !dbg !1285, !tbaa !277
  %ptr23 = getelementptr inbounds %struct.oggpack_buffer, ptr %22, i32 0, i32 3, !dbg !1287
  %23 = load ptr, ptr %ptr23, align 8, !dbg !1287, !tbaa !295
  %arrayidx24 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1285
  %24 = load i8, ptr %arrayidx24, align 1, !dbg !1285, !tbaa !299
  %conv25 = zext i8 %24 to i32, !dbg !1285
  %25 = load ptr, ptr %b.addr, align 8, !dbg !1288, !tbaa !277
  %endbit26 = getelementptr inbounds %struct.oggpack_buffer, ptr %25, i32 0, i32 1, !dbg !1289
  %26 = load i32, ptr %endbit26, align 8, !dbg !1289, !tbaa !375
  %add27 = add nsw i32 16, %26, !dbg !1290
  %shl28 = shl i32 %conv25, %add27, !dbg !1291
  %conv29 = sext i32 %shl28 to i64, !dbg !1285
  %27 = load i64, ptr %ret, align 8, !dbg !1292, !tbaa !350
  %or = or i64 %27, %conv29, !dbg !1292
  store i64 %or, ptr %ret, align 8, !dbg !1292, !tbaa !350
  %28 = load i32, ptr %bits.addr, align 4, !dbg !1293, !tbaa !424
  %cmp30 = icmp sgt i32 %28, 16, !dbg !1295
  br i1 %cmp30, label %if.then32, label %if.end66, !dbg !1296

if.then32:                                        ; preds = %if.then22
  %29 = load ptr, ptr %b.addr, align 8, !dbg !1297, !tbaa !277
  %ptr33 = getelementptr inbounds %struct.oggpack_buffer, ptr %29, i32 0, i32 3, !dbg !1299
  %30 = load ptr, ptr %ptr33, align 8, !dbg !1299, !tbaa !295
  %arrayidx34 = getelementptr inbounds i8, ptr %30, i64 2, !dbg !1297
  %31 = load i8, ptr %arrayidx34, align 1, !dbg !1297, !tbaa !299
  %conv35 = zext i8 %31 to i32, !dbg !1297
  %32 = load ptr, ptr %b.addr, align 8, !dbg !1300, !tbaa !277
  %endbit36 = getelementptr inbounds %struct.oggpack_buffer, ptr %32, i32 0, i32 1, !dbg !1301
  %33 = load i32, ptr %endbit36, align 8, !dbg !1301, !tbaa !375
  %add37 = add nsw i32 8, %33, !dbg !1302
  %shl38 = shl i32 %conv35, %add37, !dbg !1303
  %conv39 = sext i32 %shl38 to i64, !dbg !1297
  %34 = load i64, ptr %ret, align 8, !dbg !1304, !tbaa !350
  %or40 = or i64 %34, %conv39, !dbg !1304
  store i64 %or40, ptr %ret, align 8, !dbg !1304, !tbaa !350
  %35 = load i32, ptr %bits.addr, align 4, !dbg !1305, !tbaa !424
  %cmp41 = icmp sgt i32 %35, 24, !dbg !1307
  br i1 %cmp41, label %if.then43, label %if.end65, !dbg !1308

if.then43:                                        ; preds = %if.then32
  %36 = load ptr, ptr %b.addr, align 8, !dbg !1309, !tbaa !277
  %ptr44 = getelementptr inbounds %struct.oggpack_buffer, ptr %36, i32 0, i32 3, !dbg !1311
  %37 = load ptr, ptr %ptr44, align 8, !dbg !1311, !tbaa !295
  %arrayidx45 = getelementptr inbounds i8, ptr %37, i64 3, !dbg !1309
  %38 = load i8, ptr %arrayidx45, align 1, !dbg !1309, !tbaa !299
  %conv46 = zext i8 %38 to i32, !dbg !1309
  %39 = load ptr, ptr %b.addr, align 8, !dbg !1312, !tbaa !277
  %endbit47 = getelementptr inbounds %struct.oggpack_buffer, ptr %39, i32 0, i32 1, !dbg !1313
  %40 = load i32, ptr %endbit47, align 8, !dbg !1313, !tbaa !375
  %shl48 = shl i32 %conv46, %40, !dbg !1314
  %conv49 = sext i32 %shl48 to i64, !dbg !1309
  %41 = load i64, ptr %ret, align 8, !dbg !1315, !tbaa !350
  %or50 = or i64 %41, %conv49, !dbg !1315
  store i64 %or50, ptr %ret, align 8, !dbg !1315, !tbaa !350
  %42 = load i32, ptr %bits.addr, align 4, !dbg !1316, !tbaa !424
  %cmp51 = icmp sgt i32 %42, 32, !dbg !1318
  br i1 %cmp51, label %land.lhs.true, label %if.end64, !dbg !1319

land.lhs.true:                                    ; preds = %if.then43
  %43 = load ptr, ptr %b.addr, align 8, !dbg !1320, !tbaa !277
  %endbit53 = getelementptr inbounds %struct.oggpack_buffer, ptr %43, i32 0, i32 1, !dbg !1321
  %44 = load i32, ptr %endbit53, align 8, !dbg !1321, !tbaa !375
  %tobool54 = icmp ne i32 %44, 0, !dbg !1320
  br i1 %tobool54, label %if.then55, label %if.end64, !dbg !1322

if.then55:                                        ; preds = %land.lhs.true
  %45 = load ptr, ptr %b.addr, align 8, !dbg !1323, !tbaa !277
  %ptr56 = getelementptr inbounds %struct.oggpack_buffer, ptr %45, i32 0, i32 3, !dbg !1324
  %46 = load ptr, ptr %ptr56, align 8, !dbg !1324, !tbaa !295
  %arrayidx57 = getelementptr inbounds i8, ptr %46, i64 4, !dbg !1323
  %47 = load i8, ptr %arrayidx57, align 1, !dbg !1323, !tbaa !299
  %conv58 = zext i8 %47 to i32, !dbg !1323
  %48 = load ptr, ptr %b.addr, align 8, !dbg !1325, !tbaa !277
  %endbit59 = getelementptr inbounds %struct.oggpack_buffer, ptr %48, i32 0, i32 1, !dbg !1326
  %49 = load i32, ptr %endbit59, align 8, !dbg !1326, !tbaa !375
  %sub60 = sub nsw i32 8, %49, !dbg !1327
  %shr61 = ashr i32 %conv58, %sub60, !dbg !1328
  %conv62 = sext i32 %shr61 to i64, !dbg !1323
  %50 = load i64, ptr %ret, align 8, !dbg !1329, !tbaa !350
  %or63 = or i64 %50, %conv62, !dbg !1329
  store i64 %or63, ptr %ret, align 8, !dbg !1329, !tbaa !350
  br label %if.end64, !dbg !1330

if.end64:                                         ; preds = %if.then55, %land.lhs.true, %if.then43
  br label %if.end65, !dbg !1331

if.end65:                                         ; preds = %if.end64, %if.then32
  br label %if.end66, !dbg !1332

if.end66:                                         ; preds = %if.end65, %if.then22
  br label %if.end67, !dbg !1333

if.end67:                                         ; preds = %if.end66, %if.end15
  %51 = load i64, ptr %ret, align 8, !dbg !1334, !tbaa !350
  %and = and i64 %51, 4294967295, !dbg !1335
  %52 = load i32, ptr %m, align 4, !dbg !1336, !tbaa !424
  %shr68 = ashr i32 %52, 1, !dbg !1337
  %sh_prom = zext i32 %shr68 to i64, !dbg !1338
  %shr69 = lshr i64 %and, %sh_prom, !dbg !1338
  %53 = load i32, ptr %m, align 4, !dbg !1339, !tbaa !424
  %add70 = add nsw i32 %53, 1, !dbg !1340
  %shr71 = ashr i32 %add70, 1, !dbg !1341
  %sh_prom72 = zext i32 %shr71 to i64, !dbg !1342
  %shr73 = lshr i64 %shr69, %sh_prom72, !dbg !1342
  store i64 %shr73, ptr %retval, align 8, !dbg !1343
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1343

cleanup:                                          ; preds = %if.end67, %if.then12, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #11, !dbg !1344
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #11, !dbg !1344
  %54 = load i64, ptr %retval, align 8, !dbg !1344
  ret i64 %54, !dbg !1344
}

; Function Attrs: nounwind uwtable
define dso_local i64 @oggpack_look1(ptr noundef %b) #0 !dbg !1345 {
entry:
  %retval = alloca i64, align 8
  %b.addr = alloca ptr, align 8
  store ptr %b, ptr %b.addr, align 8, !tbaa !277
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1349, metadata !DIExpression()), !dbg !1350
  %0 = load ptr, ptr %b.addr, align 8, !dbg !1351, !tbaa !277
  %endbyte = getelementptr inbounds %struct.oggpack_buffer, ptr %0, i32 0, i32 0, !dbg !1353
  %1 = load i64, ptr %endbyte, align 8, !dbg !1353, !tbaa !380
  %2 = load ptr, ptr %b.addr, align 8, !dbg !1354, !tbaa !277
  %storage = getelementptr inbounds %struct.oggpack_buffer, ptr %2, i32 0, i32 4, !dbg !1355
  %3 = load i64, ptr %storage, align 8, !dbg !1355, !tbaa !303
  %cmp = icmp sge i64 %1, %3, !dbg !1356
  br i1 %cmp, label %if.then, label %if.end, !dbg !1357

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !1358
  br label %return, !dbg !1358

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %b.addr, align 8, !dbg !1359, !tbaa !277
  %ptr = getelementptr inbounds %struct.oggpack_buffer, ptr %4, i32 0, i32 3, !dbg !1360
  %5 = load ptr, ptr %ptr, align 8, !dbg !1360, !tbaa !295
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 0, !dbg !1359
  %6 = load i8, ptr %arrayidx, align 1, !dbg !1359, !tbaa !299
  %conv = zext i8 %6 to i32, !dbg !1359
  %7 = load ptr, ptr %b.addr, align 8, !dbg !1361, !tbaa !277
  %endbit = getelementptr inbounds %struct.oggpack_buffer, ptr %7, i32 0, i32 1, !dbg !1362
  %8 = load i32, ptr %endbit, align 8, !dbg !1362, !tbaa !375
  %shr = ashr i32 %conv, %8, !dbg !1363
  %and = and i32 %shr, 1, !dbg !1364
  %conv1 = sext i32 %and to i64, !dbg !1365
  store i64 %conv1, ptr %retval, align 8, !dbg !1366
  br label %return, !dbg !1366

return:                                           ; preds = %if.end, %if.then
  %9 = load i64, ptr %retval, align 8, !dbg !1367
  ret i64 %9, !dbg !1367
}

; Function Attrs: nounwind uwtable
define dso_local i64 @oggpackB_look1(ptr noundef %b) #0 !dbg !1368 {
entry:
  %retval = alloca i64, align 8
  %b.addr = alloca ptr, align 8
  store ptr %b, ptr %b.addr, align 8, !tbaa !277
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1370, metadata !DIExpression()), !dbg !1371
  %0 = load ptr, ptr %b.addr, align 8, !dbg !1372, !tbaa !277
  %endbyte = getelementptr inbounds %struct.oggpack_buffer, ptr %0, i32 0, i32 0, !dbg !1374
  %1 = load i64, ptr %endbyte, align 8, !dbg !1374, !tbaa !380
  %2 = load ptr, ptr %b.addr, align 8, !dbg !1375, !tbaa !277
  %storage = getelementptr inbounds %struct.oggpack_buffer, ptr %2, i32 0, i32 4, !dbg !1376
  %3 = load i64, ptr %storage, align 8, !dbg !1376, !tbaa !303
  %cmp = icmp sge i64 %1, %3, !dbg !1377
  br i1 %cmp, label %if.then, label %if.end, !dbg !1378

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !1379
  br label %return, !dbg !1379

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %b.addr, align 8, !dbg !1380, !tbaa !277
  %ptr = getelementptr inbounds %struct.oggpack_buffer, ptr %4, i32 0, i32 3, !dbg !1381
  %5 = load ptr, ptr %ptr, align 8, !dbg !1381, !tbaa !295
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 0, !dbg !1380
  %6 = load i8, ptr %arrayidx, align 1, !dbg !1380, !tbaa !299
  %conv = zext i8 %6 to i32, !dbg !1380
  %7 = load ptr, ptr %b.addr, align 8, !dbg !1382, !tbaa !277
  %endbit = getelementptr inbounds %struct.oggpack_buffer, ptr %7, i32 0, i32 1, !dbg !1383
  %8 = load i32, ptr %endbit, align 8, !dbg !1383, !tbaa !375
  %sub = sub nsw i32 7, %8, !dbg !1384
  %shr = ashr i32 %conv, %sub, !dbg !1385
  %and = and i32 %shr, 1, !dbg !1386
  %conv1 = sext i32 %and to i64, !dbg !1387
  store i64 %conv1, ptr %retval, align 8, !dbg !1388
  br label %return, !dbg !1388

return:                                           ; preds = %if.end, %if.then
  %9 = load i64, ptr %retval, align 8, !dbg !1389
  ret i64 %9, !dbg !1389
}

; Function Attrs: nounwind uwtable
define dso_local void @oggpack_adv(ptr noundef %b, i32 noundef %bits) #0 !dbg !1390 {
entry:
  %b.addr = alloca ptr, align 8
  %bits.addr = alloca i32, align 4
  store ptr %b, ptr %b.addr, align 8, !tbaa !277
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1394, metadata !DIExpression()), !dbg !1397
  store i32 %bits, ptr %bits.addr, align 4, !tbaa !424
  tail call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !1395, metadata !DIExpression()), !dbg !1398
  %0 = load ptr, ptr %b.addr, align 8, !dbg !1399, !tbaa !277
  %endbit = getelementptr inbounds %struct.oggpack_buffer, ptr %0, i32 0, i32 1, !dbg !1400
  %1 = load i32, ptr %endbit, align 8, !dbg !1400, !tbaa !375
  %2 = load i32, ptr %bits.addr, align 4, !dbg !1401, !tbaa !424
  %add = add nsw i32 %2, %1, !dbg !1401
  store i32 %add, ptr %bits.addr, align 4, !dbg !1401, !tbaa !424
  %3 = load ptr, ptr %b.addr, align 8, !dbg !1402, !tbaa !277
  %endbyte = getelementptr inbounds %struct.oggpack_buffer, ptr %3, i32 0, i32 0, !dbg !1404
  %4 = load i64, ptr %endbyte, align 8, !dbg !1404, !tbaa !380
  %5 = load ptr, ptr %b.addr, align 8, !dbg !1405, !tbaa !277
  %storage = getelementptr inbounds %struct.oggpack_buffer, ptr %5, i32 0, i32 4, !dbg !1406
  %6 = load i64, ptr %storage, align 8, !dbg !1406, !tbaa !303
  %7 = load i32, ptr %bits.addr, align 4, !dbg !1407, !tbaa !424
  %add1 = add nsw i32 %7, 7, !dbg !1408
  %shr = ashr i32 %add1, 3, !dbg !1409
  %conv = sext i32 %shr to i64, !dbg !1410
  %sub = sub nsw i64 %6, %conv, !dbg !1411
  %cmp = icmp sgt i64 %4, %sub, !dbg !1412
  br i1 %cmp, label %if.then, label %if.end, !dbg !1413

if.then:                                          ; preds = %entry
  br label %overflow, !dbg !1414

if.end:                                           ; preds = %entry
  %8 = load i32, ptr %bits.addr, align 4, !dbg !1415, !tbaa !424
  %div = sdiv i32 %8, 8, !dbg !1416
  %9 = load ptr, ptr %b.addr, align 8, !dbg !1417, !tbaa !277
  %ptr = getelementptr inbounds %struct.oggpack_buffer, ptr %9, i32 0, i32 3, !dbg !1418
  %10 = load ptr, ptr %ptr, align 8, !dbg !1419, !tbaa !295
  %idx.ext = sext i32 %div to i64, !dbg !1419
  %add.ptr = getelementptr inbounds i8, ptr %10, i64 %idx.ext, !dbg !1419
  store ptr %add.ptr, ptr %ptr, align 8, !dbg !1419, !tbaa !295
  %11 = load i32, ptr %bits.addr, align 4, !dbg !1420, !tbaa !424
  %div3 = sdiv i32 %11, 8, !dbg !1421
  %conv4 = sext i32 %div3 to i64, !dbg !1420
  %12 = load ptr, ptr %b.addr, align 8, !dbg !1422, !tbaa !277
  %endbyte5 = getelementptr inbounds %struct.oggpack_buffer, ptr %12, i32 0, i32 0, !dbg !1423
  %13 = load i64, ptr %endbyte5, align 8, !dbg !1424, !tbaa !380
  %add6 = add nsw i64 %13, %conv4, !dbg !1424
  store i64 %add6, ptr %endbyte5, align 8, !dbg !1424, !tbaa !380
  %14 = load i32, ptr %bits.addr, align 4, !dbg !1425, !tbaa !424
  %and = and i32 %14, 7, !dbg !1426
  %15 = load ptr, ptr %b.addr, align 8, !dbg !1427, !tbaa !277
  %endbit7 = getelementptr inbounds %struct.oggpack_buffer, ptr %15, i32 0, i32 1, !dbg !1428
  store i32 %and, ptr %endbit7, align 8, !dbg !1429, !tbaa !375
  br label %return, !dbg !1430

overflow:                                         ; preds = %if.then
  tail call void @llvm.dbg.label(metadata !1396), !dbg !1431
  %16 = load ptr, ptr %b.addr, align 8, !dbg !1432, !tbaa !277
  %ptr8 = getelementptr inbounds %struct.oggpack_buffer, ptr %16, i32 0, i32 3, !dbg !1433
  store ptr null, ptr %ptr8, align 8, !dbg !1434, !tbaa !295
  %17 = load ptr, ptr %b.addr, align 8, !dbg !1435, !tbaa !277
  %storage9 = getelementptr inbounds %struct.oggpack_buffer, ptr %17, i32 0, i32 4, !dbg !1436
  %18 = load i64, ptr %storage9, align 8, !dbg !1436, !tbaa !303
  %19 = load ptr, ptr %b.addr, align 8, !dbg !1437, !tbaa !277
  %endbyte10 = getelementptr inbounds %struct.oggpack_buffer, ptr %19, i32 0, i32 0, !dbg !1438
  store i64 %18, ptr %endbyte10, align 8, !dbg !1439, !tbaa !380
  %20 = load ptr, ptr %b.addr, align 8, !dbg !1440, !tbaa !277
  %endbit11 = getelementptr inbounds %struct.oggpack_buffer, ptr %20, i32 0, i32 1, !dbg !1441
  store i32 1, ptr %endbit11, align 8, !dbg !1442, !tbaa !375
  br label %return, !dbg !1443

return:                                           ; preds = %overflow, %if.end
  ret void, !dbg !1443
}

; Function Attrs: nounwind uwtable
define dso_local void @oggpackB_adv(ptr noundef %b, i32 noundef %bits) #0 !dbg !1444 {
entry:
  %b.addr = alloca ptr, align 8
  %bits.addr = alloca i32, align 4
  store ptr %b, ptr %b.addr, align 8, !tbaa !277
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1446, metadata !DIExpression()), !dbg !1448
  store i32 %bits, ptr %bits.addr, align 4, !tbaa !424
  tail call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !1447, metadata !DIExpression()), !dbg !1449
  %0 = load ptr, ptr %b.addr, align 8, !dbg !1450, !tbaa !277
  %1 = load i32, ptr %bits.addr, align 4, !dbg !1451, !tbaa !424
  call void @oggpack_adv(ptr noundef %0, i32 noundef %1), !dbg !1452
  ret void, !dbg !1453
}

; Function Attrs: nounwind uwtable
define dso_local void @oggpack_adv1(ptr noundef %b) #0 !dbg !1454 {
entry:
  %b.addr = alloca ptr, align 8
  store ptr %b, ptr %b.addr, align 8, !tbaa !277
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1456, metadata !DIExpression()), !dbg !1457
  %0 = load ptr, ptr %b.addr, align 8, !dbg !1458, !tbaa !277
  %endbit = getelementptr inbounds %struct.oggpack_buffer, ptr %0, i32 0, i32 1, !dbg !1460
  %1 = load i32, ptr %endbit, align 8, !dbg !1461, !tbaa !375
  %inc = add nsw i32 %1, 1, !dbg !1461
  store i32 %inc, ptr %endbit, align 8, !dbg !1461, !tbaa !375
  %cmp = icmp sgt i32 %inc, 7, !dbg !1462
  br i1 %cmp, label %if.then, label %if.end, !dbg !1463

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %b.addr, align 8, !dbg !1464, !tbaa !277
  %endbit1 = getelementptr inbounds %struct.oggpack_buffer, ptr %2, i32 0, i32 1, !dbg !1466
  store i32 0, ptr %endbit1, align 8, !dbg !1467, !tbaa !375
  %3 = load ptr, ptr %b.addr, align 8, !dbg !1468, !tbaa !277
  %ptr = getelementptr inbounds %struct.oggpack_buffer, ptr %3, i32 0, i32 3, !dbg !1469
  %4 = load ptr, ptr %ptr, align 8, !dbg !1470, !tbaa !295
  %incdec.ptr = getelementptr inbounds i8, ptr %4, i32 1, !dbg !1470
  store ptr %incdec.ptr, ptr %ptr, align 8, !dbg !1470, !tbaa !295
  %5 = load ptr, ptr %b.addr, align 8, !dbg !1471, !tbaa !277
  %endbyte = getelementptr inbounds %struct.oggpack_buffer, ptr %5, i32 0, i32 0, !dbg !1472
  %6 = load i64, ptr %endbyte, align 8, !dbg !1473, !tbaa !380
  %inc2 = add nsw i64 %6, 1, !dbg !1473
  store i64 %inc2, ptr %endbyte, align 8, !dbg !1473, !tbaa !380
  br label %if.end, !dbg !1474

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1475
}

; Function Attrs: nounwind uwtable
define dso_local void @oggpackB_adv1(ptr noundef %b) #0 !dbg !1476 {
entry:
  %b.addr = alloca ptr, align 8
  store ptr %b, ptr %b.addr, align 8, !tbaa !277
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1478, metadata !DIExpression()), !dbg !1479
  %0 = load ptr, ptr %b.addr, align 8, !dbg !1480, !tbaa !277
  call void @oggpack_adv1(ptr noundef %0), !dbg !1481
  ret void, !dbg !1482
}

; Function Attrs: nounwind uwtable
define dso_local i64 @oggpack_read(ptr noundef %b, i32 noundef %bits) #0 !dbg !1483 {
entry:
  %retval = alloca i64, align 8
  %b.addr = alloca ptr, align 8
  %bits.addr = alloca i32, align 4
  %ret = alloca i64, align 8
  %m = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %b, ptr %b.addr, align 8, !tbaa !277
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1485, metadata !DIExpression()), !dbg !1491
  store i32 %bits, ptr %bits.addr, align 4, !tbaa !424
  tail call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !1486, metadata !DIExpression()), !dbg !1492
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #11, !dbg !1493
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !1487, metadata !DIExpression()), !dbg !1494
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #11, !dbg !1495
  tail call void @llvm.dbg.declare(metadata ptr %m, metadata !1488, metadata !DIExpression()), !dbg !1496
  %0 = load i32, ptr %bits.addr, align 4, !dbg !1497, !tbaa !424
  %cmp = icmp slt i32 %0, 0, !dbg !1499
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1500

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %bits.addr, align 4, !dbg !1501, !tbaa !424
  %cmp1 = icmp sgt i32 %1, 32, !dbg !1502
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1503

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %err, !dbg !1504

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, ptr %bits.addr, align 4, !dbg !1505, !tbaa !424
  %idxprom = sext i32 %2 to i64, !dbg !1506
  %arrayidx = getelementptr inbounds [33 x i64], ptr @mask, i64 0, i64 %idxprom, !dbg !1506
  %3 = load i64, ptr %arrayidx, align 8, !dbg !1506, !tbaa !350
  store i64 %3, ptr %m, align 8, !dbg !1507, !tbaa !350
  %4 = load ptr, ptr %b.addr, align 8, !dbg !1508, !tbaa !277
  %endbit = getelementptr inbounds %struct.oggpack_buffer, ptr %4, i32 0, i32 1, !dbg !1509
  %5 = load i32, ptr %endbit, align 8, !dbg !1509, !tbaa !375
  %6 = load i32, ptr %bits.addr, align 4, !dbg !1510, !tbaa !424
  %add = add nsw i32 %6, %5, !dbg !1510
  store i32 %add, ptr %bits.addr, align 4, !dbg !1510, !tbaa !424
  %7 = load ptr, ptr %b.addr, align 8, !dbg !1511, !tbaa !277
  %endbyte = getelementptr inbounds %struct.oggpack_buffer, ptr %7, i32 0, i32 0, !dbg !1513
  %8 = load i64, ptr %endbyte, align 8, !dbg !1513, !tbaa !380
  %9 = load ptr, ptr %b.addr, align 8, !dbg !1514, !tbaa !277
  %storage = getelementptr inbounds %struct.oggpack_buffer, ptr %9, i32 0, i32 4, !dbg !1515
  %10 = load i64, ptr %storage, align 8, !dbg !1515, !tbaa !303
  %sub = sub nsw i64 %10, 4, !dbg !1516
  %cmp2 = icmp sge i64 %8, %sub, !dbg !1517
  br i1 %cmp2, label %if.then3, label %if.end14, !dbg !1518

if.then3:                                         ; preds = %if.end
  %11 = load ptr, ptr %b.addr, align 8, !dbg !1519, !tbaa !277
  %endbyte4 = getelementptr inbounds %struct.oggpack_buffer, ptr %11, i32 0, i32 0, !dbg !1522
  %12 = load i64, ptr %endbyte4, align 8, !dbg !1522, !tbaa !380
  %13 = load ptr, ptr %b.addr, align 8, !dbg !1523, !tbaa !277
  %storage5 = getelementptr inbounds %struct.oggpack_buffer, ptr %13, i32 0, i32 4, !dbg !1524
  %14 = load i64, ptr %storage5, align 8, !dbg !1524, !tbaa !303
  %15 = load i32, ptr %bits.addr, align 4, !dbg !1525, !tbaa !424
  %add6 = add nsw i32 %15, 7, !dbg !1526
  %shr = ashr i32 %add6, 3, !dbg !1527
  %conv = sext i32 %shr to i64, !dbg !1528
  %sub7 = sub nsw i64 %14, %conv, !dbg !1529
  %cmp8 = icmp sgt i64 %12, %sub7, !dbg !1530
  br i1 %cmp8, label %if.then10, label %if.else, !dbg !1531

if.then10:                                        ; preds = %if.then3
  br label %overflow, !dbg !1532

if.else:                                          ; preds = %if.then3
  %16 = load i32, ptr %bits.addr, align 4, !dbg !1533, !tbaa !424
  %tobool = icmp ne i32 %16, 0, !dbg !1533
  br i1 %tobool, label %if.end12, label %if.then11, !dbg !1535

if.then11:                                        ; preds = %if.else
  store i64 0, ptr %retval, align 8, !dbg !1536
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1536

if.end12:                                         ; preds = %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end12
  br label %if.end14, !dbg !1537

if.end14:                                         ; preds = %if.end13, %if.end
  %17 = load ptr, ptr %b.addr, align 8, !dbg !1538, !tbaa !277
  %ptr = getelementptr inbounds %struct.oggpack_buffer, ptr %17, i32 0, i32 3, !dbg !1539
  %18 = load ptr, ptr %ptr, align 8, !dbg !1539, !tbaa !295
  %arrayidx15 = getelementptr inbounds i8, ptr %18, i64 0, !dbg !1538
  %19 = load i8, ptr %arrayidx15, align 1, !dbg !1538, !tbaa !299
  %conv16 = zext i8 %19 to i32, !dbg !1538
  %20 = load ptr, ptr %b.addr, align 8, !dbg !1540, !tbaa !277
  %endbit17 = getelementptr inbounds %struct.oggpack_buffer, ptr %20, i32 0, i32 1, !dbg !1541
  %21 = load i32, ptr %endbit17, align 8, !dbg !1541, !tbaa !375
  %shr18 = ashr i32 %conv16, %21, !dbg !1542
  %conv19 = sext i32 %shr18 to i64, !dbg !1538
  store i64 %conv19, ptr %ret, align 8, !dbg !1543, !tbaa !350
  %22 = load i32, ptr %bits.addr, align 4, !dbg !1544, !tbaa !424
  %cmp20 = icmp sgt i32 %22, 8, !dbg !1546
  br i1 %cmp20, label %if.then22, label %if.end67, !dbg !1547

if.then22:                                        ; preds = %if.end14
  %23 = load ptr, ptr %b.addr, align 8, !dbg !1548, !tbaa !277
  %ptr23 = getelementptr inbounds %struct.oggpack_buffer, ptr %23, i32 0, i32 3, !dbg !1550
  %24 = load ptr, ptr %ptr23, align 8, !dbg !1550, !tbaa !295
  %arrayidx24 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1548
  %25 = load i8, ptr %arrayidx24, align 1, !dbg !1548, !tbaa !299
  %conv25 = zext i8 %25 to i32, !dbg !1548
  %26 = load ptr, ptr %b.addr, align 8, !dbg !1551, !tbaa !277
  %endbit26 = getelementptr inbounds %struct.oggpack_buffer, ptr %26, i32 0, i32 1, !dbg !1552
  %27 = load i32, ptr %endbit26, align 8, !dbg !1552, !tbaa !375
  %sub27 = sub nsw i32 8, %27, !dbg !1553
  %shl = shl i32 %conv25, %sub27, !dbg !1554
  %conv28 = sext i32 %shl to i64, !dbg !1548
  %28 = load i64, ptr %ret, align 8, !dbg !1555, !tbaa !350
  %or = or i64 %28, %conv28, !dbg !1555
  store i64 %or, ptr %ret, align 8, !dbg !1555, !tbaa !350
  %29 = load i32, ptr %bits.addr, align 4, !dbg !1556, !tbaa !424
  %cmp29 = icmp sgt i32 %29, 16, !dbg !1558
  br i1 %cmp29, label %if.then31, label %if.end66, !dbg !1559

if.then31:                                        ; preds = %if.then22
  %30 = load ptr, ptr %b.addr, align 8, !dbg !1560, !tbaa !277
  %ptr32 = getelementptr inbounds %struct.oggpack_buffer, ptr %30, i32 0, i32 3, !dbg !1562
  %31 = load ptr, ptr %ptr32, align 8, !dbg !1562, !tbaa !295
  %arrayidx33 = getelementptr inbounds i8, ptr %31, i64 2, !dbg !1560
  %32 = load i8, ptr %arrayidx33, align 1, !dbg !1560, !tbaa !299
  %conv34 = zext i8 %32 to i32, !dbg !1560
  %33 = load ptr, ptr %b.addr, align 8, !dbg !1563, !tbaa !277
  %endbit35 = getelementptr inbounds %struct.oggpack_buffer, ptr %33, i32 0, i32 1, !dbg !1564
  %34 = load i32, ptr %endbit35, align 8, !dbg !1564, !tbaa !375
  %sub36 = sub nsw i32 16, %34, !dbg !1565
  %shl37 = shl i32 %conv34, %sub36, !dbg !1566
  %conv38 = sext i32 %shl37 to i64, !dbg !1560
  %35 = load i64, ptr %ret, align 8, !dbg !1567, !tbaa !350
  %or39 = or i64 %35, %conv38, !dbg !1567
  store i64 %or39, ptr %ret, align 8, !dbg !1567, !tbaa !350
  %36 = load i32, ptr %bits.addr, align 4, !dbg !1568, !tbaa !424
  %cmp40 = icmp sgt i32 %36, 24, !dbg !1570
  br i1 %cmp40, label %if.then42, label %if.end65, !dbg !1571

if.then42:                                        ; preds = %if.then31
  %37 = load ptr, ptr %b.addr, align 8, !dbg !1572, !tbaa !277
  %ptr43 = getelementptr inbounds %struct.oggpack_buffer, ptr %37, i32 0, i32 3, !dbg !1574
  %38 = load ptr, ptr %ptr43, align 8, !dbg !1574, !tbaa !295
  %arrayidx44 = getelementptr inbounds i8, ptr %38, i64 3, !dbg !1572
  %39 = load i8, ptr %arrayidx44, align 1, !dbg !1572, !tbaa !299
  %conv45 = zext i8 %39 to i32, !dbg !1572
  %40 = load ptr, ptr %b.addr, align 8, !dbg !1575, !tbaa !277
  %endbit46 = getelementptr inbounds %struct.oggpack_buffer, ptr %40, i32 0, i32 1, !dbg !1576
  %41 = load i32, ptr %endbit46, align 8, !dbg !1576, !tbaa !375
  %sub47 = sub nsw i32 24, %41, !dbg !1577
  %shl48 = shl i32 %conv45, %sub47, !dbg !1578
  %conv49 = sext i32 %shl48 to i64, !dbg !1572
  %42 = load i64, ptr %ret, align 8, !dbg !1579, !tbaa !350
  %or50 = or i64 %42, %conv49, !dbg !1579
  store i64 %or50, ptr %ret, align 8, !dbg !1579, !tbaa !350
  %43 = load i32, ptr %bits.addr, align 4, !dbg !1580, !tbaa !424
  %cmp51 = icmp sgt i32 %43, 32, !dbg !1582
  br i1 %cmp51, label %land.lhs.true, label %if.end64, !dbg !1583

land.lhs.true:                                    ; preds = %if.then42
  %44 = load ptr, ptr %b.addr, align 8, !dbg !1584, !tbaa !277
  %endbit53 = getelementptr inbounds %struct.oggpack_buffer, ptr %44, i32 0, i32 1, !dbg !1585
  %45 = load i32, ptr %endbit53, align 8, !dbg !1585, !tbaa !375
  %tobool54 = icmp ne i32 %45, 0, !dbg !1584
  br i1 %tobool54, label %if.then55, label %if.end64, !dbg !1586

if.then55:                                        ; preds = %land.lhs.true
  %46 = load ptr, ptr %b.addr, align 8, !dbg !1587, !tbaa !277
  %ptr56 = getelementptr inbounds %struct.oggpack_buffer, ptr %46, i32 0, i32 3, !dbg !1589
  %47 = load ptr, ptr %ptr56, align 8, !dbg !1589, !tbaa !295
  %arrayidx57 = getelementptr inbounds i8, ptr %47, i64 4, !dbg !1587
  %48 = load i8, ptr %arrayidx57, align 1, !dbg !1587, !tbaa !299
  %conv58 = zext i8 %48 to i32, !dbg !1587
  %49 = load ptr, ptr %b.addr, align 8, !dbg !1590, !tbaa !277
  %endbit59 = getelementptr inbounds %struct.oggpack_buffer, ptr %49, i32 0, i32 1, !dbg !1591
  %50 = load i32, ptr %endbit59, align 8, !dbg !1591, !tbaa !375
  %sub60 = sub nsw i32 32, %50, !dbg !1592
  %shl61 = shl i32 %conv58, %sub60, !dbg !1593
  %conv62 = sext i32 %shl61 to i64, !dbg !1587
  %51 = load i64, ptr %ret, align 8, !dbg !1594, !tbaa !350
  %or63 = or i64 %51, %conv62, !dbg !1594
  store i64 %or63, ptr %ret, align 8, !dbg !1594, !tbaa !350
  br label %if.end64, !dbg !1595

if.end64:                                         ; preds = %if.then55, %land.lhs.true, %if.then42
  br label %if.end65, !dbg !1596

if.end65:                                         ; preds = %if.end64, %if.then31
  br label %if.end66, !dbg !1597

if.end66:                                         ; preds = %if.end65, %if.then22
  br label %if.end67, !dbg !1598

if.end67:                                         ; preds = %if.end66, %if.end14
  %52 = load i64, ptr %m, align 8, !dbg !1599, !tbaa !350
  %53 = load i64, ptr %ret, align 8, !dbg !1600, !tbaa !350
  %and = and i64 %53, %52, !dbg !1600
  store i64 %and, ptr %ret, align 8, !dbg !1600, !tbaa !350
  %54 = load i32, ptr %bits.addr, align 4, !dbg !1601, !tbaa !424
  %div = sdiv i32 %54, 8, !dbg !1602
  %55 = load ptr, ptr %b.addr, align 8, !dbg !1603, !tbaa !277
  %ptr68 = getelementptr inbounds %struct.oggpack_buffer, ptr %55, i32 0, i32 3, !dbg !1604
  %56 = load ptr, ptr %ptr68, align 8, !dbg !1605, !tbaa !295
  %idx.ext = sext i32 %div to i64, !dbg !1605
  %add.ptr = getelementptr inbounds i8, ptr %56, i64 %idx.ext, !dbg !1605
  store ptr %add.ptr, ptr %ptr68, align 8, !dbg !1605, !tbaa !295
  %57 = load i32, ptr %bits.addr, align 4, !dbg !1606, !tbaa !424
  %div69 = sdiv i32 %57, 8, !dbg !1607
  %conv70 = sext i32 %div69 to i64, !dbg !1606
  %58 = load ptr, ptr %b.addr, align 8, !dbg !1608, !tbaa !277
  %endbyte71 = getelementptr inbounds %struct.oggpack_buffer, ptr %58, i32 0, i32 0, !dbg !1609
  %59 = load i64, ptr %endbyte71, align 8, !dbg !1610, !tbaa !380
  %add72 = add nsw i64 %59, %conv70, !dbg !1610
  store i64 %add72, ptr %endbyte71, align 8, !dbg !1610, !tbaa !380
  %60 = load i32, ptr %bits.addr, align 4, !dbg !1611, !tbaa !424
  %and73 = and i32 %60, 7, !dbg !1612
  %61 = load ptr, ptr %b.addr, align 8, !dbg !1613, !tbaa !277
  %endbit74 = getelementptr inbounds %struct.oggpack_buffer, ptr %61, i32 0, i32 1, !dbg !1614
  store i32 %and73, ptr %endbit74, align 8, !dbg !1615, !tbaa !375
  %62 = load i64, ptr %ret, align 8, !dbg !1616, !tbaa !350
  store i64 %62, ptr %retval, align 8, !dbg !1617
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1617

overflow:                                         ; preds = %if.then10
  tail call void @llvm.dbg.label(metadata !1489), !dbg !1618
  br label %err, !dbg !1617

err:                                              ; preds = %overflow, %if.then
  tail call void @llvm.dbg.label(metadata !1490), !dbg !1619
  %63 = load ptr, ptr %b.addr, align 8, !dbg !1620, !tbaa !277
  %ptr75 = getelementptr inbounds %struct.oggpack_buffer, ptr %63, i32 0, i32 3, !dbg !1621
  store ptr null, ptr %ptr75, align 8, !dbg !1622, !tbaa !295
  %64 = load ptr, ptr %b.addr, align 8, !dbg !1623, !tbaa !277
  %storage76 = getelementptr inbounds %struct.oggpack_buffer, ptr %64, i32 0, i32 4, !dbg !1624
  %65 = load i64, ptr %storage76, align 8, !dbg !1624, !tbaa !303
  %66 = load ptr, ptr %b.addr, align 8, !dbg !1625, !tbaa !277
  %endbyte77 = getelementptr inbounds %struct.oggpack_buffer, ptr %66, i32 0, i32 0, !dbg !1626
  store i64 %65, ptr %endbyte77, align 8, !dbg !1627, !tbaa !380
  %67 = load ptr, ptr %b.addr, align 8, !dbg !1628, !tbaa !277
  %endbit78 = getelementptr inbounds %struct.oggpack_buffer, ptr %67, i32 0, i32 1, !dbg !1629
  store i32 1, ptr %endbit78, align 8, !dbg !1630, !tbaa !375
  store i64 -1, ptr %retval, align 8, !dbg !1631
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1631

cleanup:                                          ; preds = %err, %if.end67, %if.then11
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #11, !dbg !1632
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #11, !dbg !1632
  %68 = load i64, ptr %retval, align 8, !dbg !1632
  ret i64 %68, !dbg !1632
}

; Function Attrs: nounwind uwtable
define dso_local i64 @oggpackB_read(ptr noundef %b, i32 noundef %bits) #0 !dbg !1633 {
entry:
  %retval = alloca i64, align 8
  %b.addr = alloca ptr, align 8
  %bits.addr = alloca i32, align 4
  %ret = alloca i64, align 8
  %m = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %b, ptr %b.addr, align 8, !tbaa !277
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1635, metadata !DIExpression()), !dbg !1641
  store i32 %bits, ptr %bits.addr, align 4, !tbaa !424
  tail call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !1636, metadata !DIExpression()), !dbg !1642
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #11, !dbg !1643
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !1637, metadata !DIExpression()), !dbg !1644
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #11, !dbg !1645
  tail call void @llvm.dbg.declare(metadata ptr %m, metadata !1638, metadata !DIExpression()), !dbg !1646
  %0 = load i32, ptr %bits.addr, align 4, !dbg !1647, !tbaa !424
  %sub = sub nsw i32 32, %0, !dbg !1648
  %conv = sext i32 %sub to i64, !dbg !1649
  store i64 %conv, ptr %m, align 8, !dbg !1646, !tbaa !350
  %1 = load i64, ptr %m, align 8, !dbg !1650, !tbaa !350
  %cmp = icmp slt i64 %1, 0, !dbg !1652
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1653

lor.lhs.false:                                    ; preds = %entry
  %2 = load i64, ptr %m, align 8, !dbg !1654, !tbaa !350
  %cmp2 = icmp sgt i64 %2, 32, !dbg !1655
  br i1 %cmp2, label %if.then, label %if.end, !dbg !1656

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %err, !dbg !1657

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %b.addr, align 8, !dbg !1658, !tbaa !277
  %endbit = getelementptr inbounds %struct.oggpack_buffer, ptr %3, i32 0, i32 1, !dbg !1659
  %4 = load i32, ptr %endbit, align 8, !dbg !1659, !tbaa !375
  %5 = load i32, ptr %bits.addr, align 4, !dbg !1660, !tbaa !424
  %add = add nsw i32 %5, %4, !dbg !1660
  store i32 %add, ptr %bits.addr, align 4, !dbg !1660, !tbaa !424
  %6 = load ptr, ptr %b.addr, align 8, !dbg !1661, !tbaa !277
  %endbyte = getelementptr inbounds %struct.oggpack_buffer, ptr %6, i32 0, i32 0, !dbg !1663
  %7 = load i64, ptr %endbyte, align 8, !dbg !1663, !tbaa !380
  %add4 = add nsw i64 %7, 4, !dbg !1664
  %8 = load ptr, ptr %b.addr, align 8, !dbg !1665, !tbaa !277
  %storage = getelementptr inbounds %struct.oggpack_buffer, ptr %8, i32 0, i32 4, !dbg !1666
  %9 = load i64, ptr %storage, align 8, !dbg !1666, !tbaa !303
  %cmp5 = icmp sge i64 %add4, %9, !dbg !1667
  br i1 %cmp5, label %if.then7, label %if.end19, !dbg !1668

if.then7:                                         ; preds = %if.end
  %10 = load ptr, ptr %b.addr, align 8, !dbg !1669, !tbaa !277
  %endbyte8 = getelementptr inbounds %struct.oggpack_buffer, ptr %10, i32 0, i32 0, !dbg !1672
  %11 = load i64, ptr %endbyte8, align 8, !dbg !1672, !tbaa !380
  %12 = load ptr, ptr %b.addr, align 8, !dbg !1673, !tbaa !277
  %storage9 = getelementptr inbounds %struct.oggpack_buffer, ptr %12, i32 0, i32 4, !dbg !1674
  %13 = load i64, ptr %storage9, align 8, !dbg !1674, !tbaa !303
  %14 = load i32, ptr %bits.addr, align 4, !dbg !1675, !tbaa !424
  %add10 = add nsw i32 %14, 7, !dbg !1676
  %shr = ashr i32 %add10, 3, !dbg !1677
  %conv11 = sext i32 %shr to i64, !dbg !1678
  %sub12 = sub nsw i64 %13, %conv11, !dbg !1679
  %cmp13 = icmp sgt i64 %11, %sub12, !dbg !1680
  br i1 %cmp13, label %if.then15, label %if.else, !dbg !1681

if.then15:                                        ; preds = %if.then7
  br label %overflow, !dbg !1682

if.else:                                          ; preds = %if.then7
  %15 = load i32, ptr %bits.addr, align 4, !dbg !1683, !tbaa !424
  %tobool = icmp ne i32 %15, 0, !dbg !1683
  br i1 %tobool, label %if.end17, label %if.then16, !dbg !1685

if.then16:                                        ; preds = %if.else
  store i64 0, ptr %retval, align 8, !dbg !1686
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1686

if.end17:                                         ; preds = %if.else
  br label %if.end18

if.end18:                                         ; preds = %if.end17
  br label %if.end19, !dbg !1687

if.end19:                                         ; preds = %if.end18, %if.end
  %16 = load ptr, ptr %b.addr, align 8, !dbg !1688, !tbaa !277
  %ptr = getelementptr inbounds %struct.oggpack_buffer, ptr %16, i32 0, i32 3, !dbg !1689
  %17 = load ptr, ptr %ptr, align 8, !dbg !1689, !tbaa !295
  %arrayidx = getelementptr inbounds i8, ptr %17, i64 0, !dbg !1688
  %18 = load i8, ptr %arrayidx, align 1, !dbg !1688, !tbaa !299
  %conv20 = zext i8 %18 to i32, !dbg !1688
  %19 = load ptr, ptr %b.addr, align 8, !dbg !1690, !tbaa !277
  %endbit21 = getelementptr inbounds %struct.oggpack_buffer, ptr %19, i32 0, i32 1, !dbg !1691
  %20 = load i32, ptr %endbit21, align 8, !dbg !1691, !tbaa !375
  %add22 = add nsw i32 24, %20, !dbg !1692
  %shl = shl i32 %conv20, %add22, !dbg !1693
  %conv23 = sext i32 %shl to i64, !dbg !1688
  store i64 %conv23, ptr %ret, align 8, !dbg !1694, !tbaa !350
  %21 = load i32, ptr %bits.addr, align 4, !dbg !1695, !tbaa !424
  %cmp24 = icmp sgt i32 %21, 8, !dbg !1697
  br i1 %cmp24, label %if.then26, label %if.end71, !dbg !1698

if.then26:                                        ; preds = %if.end19
  %22 = load ptr, ptr %b.addr, align 8, !dbg !1699, !tbaa !277
  %ptr27 = getelementptr inbounds %struct.oggpack_buffer, ptr %22, i32 0, i32 3, !dbg !1701
  %23 = load ptr, ptr %ptr27, align 8, !dbg !1701, !tbaa !295
  %arrayidx28 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1699
  %24 = load i8, ptr %arrayidx28, align 1, !dbg !1699, !tbaa !299
  %conv29 = zext i8 %24 to i32, !dbg !1699
  %25 = load ptr, ptr %b.addr, align 8, !dbg !1702, !tbaa !277
  %endbit30 = getelementptr inbounds %struct.oggpack_buffer, ptr %25, i32 0, i32 1, !dbg !1703
  %26 = load i32, ptr %endbit30, align 8, !dbg !1703, !tbaa !375
  %add31 = add nsw i32 16, %26, !dbg !1704
  %shl32 = shl i32 %conv29, %add31, !dbg !1705
  %conv33 = sext i32 %shl32 to i64, !dbg !1699
  %27 = load i64, ptr %ret, align 8, !dbg !1706, !tbaa !350
  %or = or i64 %27, %conv33, !dbg !1706
  store i64 %or, ptr %ret, align 8, !dbg !1706, !tbaa !350
  %28 = load i32, ptr %bits.addr, align 4, !dbg !1707, !tbaa !424
  %cmp34 = icmp sgt i32 %28, 16, !dbg !1709
  br i1 %cmp34, label %if.then36, label %if.end70, !dbg !1710

if.then36:                                        ; preds = %if.then26
  %29 = load ptr, ptr %b.addr, align 8, !dbg !1711, !tbaa !277
  %ptr37 = getelementptr inbounds %struct.oggpack_buffer, ptr %29, i32 0, i32 3, !dbg !1713
  %30 = load ptr, ptr %ptr37, align 8, !dbg !1713, !tbaa !295
  %arrayidx38 = getelementptr inbounds i8, ptr %30, i64 2, !dbg !1711
  %31 = load i8, ptr %arrayidx38, align 1, !dbg !1711, !tbaa !299
  %conv39 = zext i8 %31 to i32, !dbg !1711
  %32 = load ptr, ptr %b.addr, align 8, !dbg !1714, !tbaa !277
  %endbit40 = getelementptr inbounds %struct.oggpack_buffer, ptr %32, i32 0, i32 1, !dbg !1715
  %33 = load i32, ptr %endbit40, align 8, !dbg !1715, !tbaa !375
  %add41 = add nsw i32 8, %33, !dbg !1716
  %shl42 = shl i32 %conv39, %add41, !dbg !1717
  %conv43 = sext i32 %shl42 to i64, !dbg !1711
  %34 = load i64, ptr %ret, align 8, !dbg !1718, !tbaa !350
  %or44 = or i64 %34, %conv43, !dbg !1718
  store i64 %or44, ptr %ret, align 8, !dbg !1718, !tbaa !350
  %35 = load i32, ptr %bits.addr, align 4, !dbg !1719, !tbaa !424
  %cmp45 = icmp sgt i32 %35, 24, !dbg !1721
  br i1 %cmp45, label %if.then47, label %if.end69, !dbg !1722

if.then47:                                        ; preds = %if.then36
  %36 = load ptr, ptr %b.addr, align 8, !dbg !1723, !tbaa !277
  %ptr48 = getelementptr inbounds %struct.oggpack_buffer, ptr %36, i32 0, i32 3, !dbg !1725
  %37 = load ptr, ptr %ptr48, align 8, !dbg !1725, !tbaa !295
  %arrayidx49 = getelementptr inbounds i8, ptr %37, i64 3, !dbg !1723
  %38 = load i8, ptr %arrayidx49, align 1, !dbg !1723, !tbaa !299
  %conv50 = zext i8 %38 to i32, !dbg !1723
  %39 = load ptr, ptr %b.addr, align 8, !dbg !1726, !tbaa !277
  %endbit51 = getelementptr inbounds %struct.oggpack_buffer, ptr %39, i32 0, i32 1, !dbg !1727
  %40 = load i32, ptr %endbit51, align 8, !dbg !1727, !tbaa !375
  %shl52 = shl i32 %conv50, %40, !dbg !1728
  %conv53 = sext i32 %shl52 to i64, !dbg !1723
  %41 = load i64, ptr %ret, align 8, !dbg !1729, !tbaa !350
  %or54 = or i64 %41, %conv53, !dbg !1729
  store i64 %or54, ptr %ret, align 8, !dbg !1729, !tbaa !350
  %42 = load i32, ptr %bits.addr, align 4, !dbg !1730, !tbaa !424
  %cmp55 = icmp sgt i32 %42, 32, !dbg !1732
  br i1 %cmp55, label %land.lhs.true, label %if.end68, !dbg !1733

land.lhs.true:                                    ; preds = %if.then47
  %43 = load ptr, ptr %b.addr, align 8, !dbg !1734, !tbaa !277
  %endbit57 = getelementptr inbounds %struct.oggpack_buffer, ptr %43, i32 0, i32 1, !dbg !1735
  %44 = load i32, ptr %endbit57, align 8, !dbg !1735, !tbaa !375
  %tobool58 = icmp ne i32 %44, 0, !dbg !1734
  br i1 %tobool58, label %if.then59, label %if.end68, !dbg !1736

if.then59:                                        ; preds = %land.lhs.true
  %45 = load ptr, ptr %b.addr, align 8, !dbg !1737, !tbaa !277
  %ptr60 = getelementptr inbounds %struct.oggpack_buffer, ptr %45, i32 0, i32 3, !dbg !1738
  %46 = load ptr, ptr %ptr60, align 8, !dbg !1738, !tbaa !295
  %arrayidx61 = getelementptr inbounds i8, ptr %46, i64 4, !dbg !1737
  %47 = load i8, ptr %arrayidx61, align 1, !dbg !1737, !tbaa !299
  %conv62 = zext i8 %47 to i32, !dbg !1737
  %48 = load ptr, ptr %b.addr, align 8, !dbg !1739, !tbaa !277
  %endbit63 = getelementptr inbounds %struct.oggpack_buffer, ptr %48, i32 0, i32 1, !dbg !1740
  %49 = load i32, ptr %endbit63, align 8, !dbg !1740, !tbaa !375
  %sub64 = sub nsw i32 8, %49, !dbg !1741
  %shr65 = ashr i32 %conv62, %sub64, !dbg !1742
  %conv66 = sext i32 %shr65 to i64, !dbg !1737
  %50 = load i64, ptr %ret, align 8, !dbg !1743, !tbaa !350
  %or67 = or i64 %50, %conv66, !dbg !1743
  store i64 %or67, ptr %ret, align 8, !dbg !1743, !tbaa !350
  br label %if.end68, !dbg !1744

if.end68:                                         ; preds = %if.then59, %land.lhs.true, %if.then47
  br label %if.end69, !dbg !1745

if.end69:                                         ; preds = %if.end68, %if.then36
  br label %if.end70, !dbg !1746

if.end70:                                         ; preds = %if.end69, %if.then26
  br label %if.end71, !dbg !1747

if.end71:                                         ; preds = %if.end70, %if.end19
  %51 = load i64, ptr %ret, align 8, !dbg !1748, !tbaa !350
  %and = and i64 %51, 4294967295, !dbg !1749
  %52 = load i64, ptr %m, align 8, !dbg !1750, !tbaa !350
  %shr72 = ashr i64 %52, 1, !dbg !1751
  %shr73 = lshr i64 %and, %shr72, !dbg !1752
  %53 = load i64, ptr %m, align 8, !dbg !1753, !tbaa !350
  %add74 = add nsw i64 %53, 1, !dbg !1754
  %shr75 = ashr i64 %add74, 1, !dbg !1755
  %shr76 = lshr i64 %shr73, %shr75, !dbg !1756
  store i64 %shr76, ptr %ret, align 8, !dbg !1757, !tbaa !350
  %54 = load i32, ptr %bits.addr, align 4, !dbg !1758, !tbaa !424
  %div = sdiv i32 %54, 8, !dbg !1759
  %55 = load ptr, ptr %b.addr, align 8, !dbg !1760, !tbaa !277
  %ptr77 = getelementptr inbounds %struct.oggpack_buffer, ptr %55, i32 0, i32 3, !dbg !1761
  %56 = load ptr, ptr %ptr77, align 8, !dbg !1762, !tbaa !295
  %idx.ext = sext i32 %div to i64, !dbg !1762
  %add.ptr = getelementptr inbounds i8, ptr %56, i64 %idx.ext, !dbg !1762
  store ptr %add.ptr, ptr %ptr77, align 8, !dbg !1762, !tbaa !295
  %57 = load i32, ptr %bits.addr, align 4, !dbg !1763, !tbaa !424
  %div78 = sdiv i32 %57, 8, !dbg !1764
  %conv79 = sext i32 %div78 to i64, !dbg !1763
  %58 = load ptr, ptr %b.addr, align 8, !dbg !1765, !tbaa !277
  %endbyte80 = getelementptr inbounds %struct.oggpack_buffer, ptr %58, i32 0, i32 0, !dbg !1766
  %59 = load i64, ptr %endbyte80, align 8, !dbg !1767, !tbaa !380
  %add81 = add nsw i64 %59, %conv79, !dbg !1767
  store i64 %add81, ptr %endbyte80, align 8, !dbg !1767, !tbaa !380
  %60 = load i32, ptr %bits.addr, align 4, !dbg !1768, !tbaa !424
  %and82 = and i32 %60, 7, !dbg !1769
  %61 = load ptr, ptr %b.addr, align 8, !dbg !1770, !tbaa !277
  %endbit83 = getelementptr inbounds %struct.oggpack_buffer, ptr %61, i32 0, i32 1, !dbg !1771
  store i32 %and82, ptr %endbit83, align 8, !dbg !1772, !tbaa !375
  %62 = load i64, ptr %ret, align 8, !dbg !1773, !tbaa !350
  store i64 %62, ptr %retval, align 8, !dbg !1774
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1774

overflow:                                         ; preds = %if.then15
  tail call void @llvm.dbg.label(metadata !1639), !dbg !1775
  br label %err, !dbg !1774

err:                                              ; preds = %overflow, %if.then
  tail call void @llvm.dbg.label(metadata !1640), !dbg !1776
  %63 = load ptr, ptr %b.addr, align 8, !dbg !1777, !tbaa !277
  %ptr84 = getelementptr inbounds %struct.oggpack_buffer, ptr %63, i32 0, i32 3, !dbg !1778
  store ptr null, ptr %ptr84, align 8, !dbg !1779, !tbaa !295
  %64 = load ptr, ptr %b.addr, align 8, !dbg !1780, !tbaa !277
  %storage85 = getelementptr inbounds %struct.oggpack_buffer, ptr %64, i32 0, i32 4, !dbg !1781
  %65 = load i64, ptr %storage85, align 8, !dbg !1781, !tbaa !303
  %66 = load ptr, ptr %b.addr, align 8, !dbg !1782, !tbaa !277
  %endbyte86 = getelementptr inbounds %struct.oggpack_buffer, ptr %66, i32 0, i32 0, !dbg !1783
  store i64 %65, ptr %endbyte86, align 8, !dbg !1784, !tbaa !380
  %67 = load ptr, ptr %b.addr, align 8, !dbg !1785, !tbaa !277
  %endbit87 = getelementptr inbounds %struct.oggpack_buffer, ptr %67, i32 0, i32 1, !dbg !1786
  store i32 1, ptr %endbit87, align 8, !dbg !1787, !tbaa !375
  store i64 -1, ptr %retval, align 8, !dbg !1788
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1788

cleanup:                                          ; preds = %err, %if.end71, %if.then16
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #11, !dbg !1789
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #11, !dbg !1789
  %68 = load i64, ptr %retval, align 8, !dbg !1789
  ret i64 %68, !dbg !1789
}

; Function Attrs: nounwind uwtable
define dso_local i64 @oggpack_read1(ptr noundef %b) #0 !dbg !1790 {
entry:
  %retval = alloca i64, align 8
  %b.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %b, ptr %b.addr, align 8, !tbaa !277
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1792, metadata !DIExpression()), !dbg !1795
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #11, !dbg !1796
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !1793, metadata !DIExpression()), !dbg !1797
  %0 = load ptr, ptr %b.addr, align 8, !dbg !1798, !tbaa !277
  %endbyte = getelementptr inbounds %struct.oggpack_buffer, ptr %0, i32 0, i32 0, !dbg !1800
  %1 = load i64, ptr %endbyte, align 8, !dbg !1800, !tbaa !380
  %2 = load ptr, ptr %b.addr, align 8, !dbg !1801, !tbaa !277
  %storage = getelementptr inbounds %struct.oggpack_buffer, ptr %2, i32 0, i32 4, !dbg !1802
  %3 = load i64, ptr %storage, align 8, !dbg !1802, !tbaa !303
  %cmp = icmp sge i64 %1, %3, !dbg !1803
  br i1 %cmp, label %if.then, label %if.end, !dbg !1804

if.then:                                          ; preds = %entry
  br label %overflow, !dbg !1805

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %b.addr, align 8, !dbg !1806, !tbaa !277
  %ptr = getelementptr inbounds %struct.oggpack_buffer, ptr %4, i32 0, i32 3, !dbg !1807
  %5 = load ptr, ptr %ptr, align 8, !dbg !1807, !tbaa !295
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 0, !dbg !1806
  %6 = load i8, ptr %arrayidx, align 1, !dbg !1806, !tbaa !299
  %conv = zext i8 %6 to i32, !dbg !1806
  %7 = load ptr, ptr %b.addr, align 8, !dbg !1808, !tbaa !277
  %endbit = getelementptr inbounds %struct.oggpack_buffer, ptr %7, i32 0, i32 1, !dbg !1809
  %8 = load i32, ptr %endbit, align 8, !dbg !1809, !tbaa !375
  %shr = ashr i32 %conv, %8, !dbg !1810
  %and = and i32 %shr, 1, !dbg !1811
  %conv1 = sext i32 %and to i64, !dbg !1812
  store i64 %conv1, ptr %ret, align 8, !dbg !1813, !tbaa !350
  %9 = load ptr, ptr %b.addr, align 8, !dbg !1814, !tbaa !277
  %endbit2 = getelementptr inbounds %struct.oggpack_buffer, ptr %9, i32 0, i32 1, !dbg !1815
  %10 = load i32, ptr %endbit2, align 8, !dbg !1816, !tbaa !375
  %inc = add nsw i32 %10, 1, !dbg !1816
  store i32 %inc, ptr %endbit2, align 8, !dbg !1816, !tbaa !375
  %11 = load ptr, ptr %b.addr, align 8, !dbg !1817, !tbaa !277
  %endbit3 = getelementptr inbounds %struct.oggpack_buffer, ptr %11, i32 0, i32 1, !dbg !1819
  %12 = load i32, ptr %endbit3, align 8, !dbg !1819, !tbaa !375
  %cmp4 = icmp sgt i32 %12, 7, !dbg !1820
  br i1 %cmp4, label %if.then6, label %if.end11, !dbg !1821

if.then6:                                         ; preds = %if.end
  %13 = load ptr, ptr %b.addr, align 8, !dbg !1822, !tbaa !277
  %endbit7 = getelementptr inbounds %struct.oggpack_buffer, ptr %13, i32 0, i32 1, !dbg !1824
  store i32 0, ptr %endbit7, align 8, !dbg !1825, !tbaa !375
  %14 = load ptr, ptr %b.addr, align 8, !dbg !1826, !tbaa !277
  %ptr8 = getelementptr inbounds %struct.oggpack_buffer, ptr %14, i32 0, i32 3, !dbg !1827
  %15 = load ptr, ptr %ptr8, align 8, !dbg !1828, !tbaa !295
  %incdec.ptr = getelementptr inbounds i8, ptr %15, i32 1, !dbg !1828
  store ptr %incdec.ptr, ptr %ptr8, align 8, !dbg !1828, !tbaa !295
  %16 = load ptr, ptr %b.addr, align 8, !dbg !1829, !tbaa !277
  %endbyte9 = getelementptr inbounds %struct.oggpack_buffer, ptr %16, i32 0, i32 0, !dbg !1830
  %17 = load i64, ptr %endbyte9, align 8, !dbg !1831, !tbaa !380
  %inc10 = add nsw i64 %17, 1, !dbg !1831
  store i64 %inc10, ptr %endbyte9, align 8, !dbg !1831, !tbaa !380
  br label %if.end11, !dbg !1832

if.end11:                                         ; preds = %if.then6, %if.end
  %18 = load i64, ptr %ret, align 8, !dbg !1833, !tbaa !350
  store i64 %18, ptr %retval, align 8, !dbg !1834
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1834

overflow:                                         ; preds = %if.then
  tail call void @llvm.dbg.label(metadata !1794), !dbg !1835
  %19 = load ptr, ptr %b.addr, align 8, !dbg !1836, !tbaa !277
  %ptr12 = getelementptr inbounds %struct.oggpack_buffer, ptr %19, i32 0, i32 3, !dbg !1837
  store ptr null, ptr %ptr12, align 8, !dbg !1838, !tbaa !295
  %20 = load ptr, ptr %b.addr, align 8, !dbg !1839, !tbaa !277
  %storage13 = getelementptr inbounds %struct.oggpack_buffer, ptr %20, i32 0, i32 4, !dbg !1840
  %21 = load i64, ptr %storage13, align 8, !dbg !1840, !tbaa !303
  %22 = load ptr, ptr %b.addr, align 8, !dbg !1841, !tbaa !277
  %endbyte14 = getelementptr inbounds %struct.oggpack_buffer, ptr %22, i32 0, i32 0, !dbg !1842
  store i64 %21, ptr %endbyte14, align 8, !dbg !1843, !tbaa !380
  %23 = load ptr, ptr %b.addr, align 8, !dbg !1844, !tbaa !277
  %endbit15 = getelementptr inbounds %struct.oggpack_buffer, ptr %23, i32 0, i32 1, !dbg !1845
  store i32 1, ptr %endbit15, align 8, !dbg !1846, !tbaa !375
  store i64 -1, ptr %retval, align 8, !dbg !1847
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1847

cleanup:                                          ; preds = %overflow, %if.end11
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #11, !dbg !1848
  %24 = load i64, ptr %retval, align 8, !dbg !1848
  ret i64 %24, !dbg !1848
}

; Function Attrs: nounwind uwtable
define dso_local i64 @oggpackB_read1(ptr noundef %b) #0 !dbg !1849 {
entry:
  %retval = alloca i64, align 8
  %b.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %b, ptr %b.addr, align 8, !tbaa !277
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1851, metadata !DIExpression()), !dbg !1854
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #11, !dbg !1855
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !1852, metadata !DIExpression()), !dbg !1856
  %0 = load ptr, ptr %b.addr, align 8, !dbg !1857, !tbaa !277
  %endbyte = getelementptr inbounds %struct.oggpack_buffer, ptr %0, i32 0, i32 0, !dbg !1859
  %1 = load i64, ptr %endbyte, align 8, !dbg !1859, !tbaa !380
  %2 = load ptr, ptr %b.addr, align 8, !dbg !1860, !tbaa !277
  %storage = getelementptr inbounds %struct.oggpack_buffer, ptr %2, i32 0, i32 4, !dbg !1861
  %3 = load i64, ptr %storage, align 8, !dbg !1861, !tbaa !303
  %cmp = icmp sge i64 %1, %3, !dbg !1862
  br i1 %cmp, label %if.then, label %if.end, !dbg !1863

if.then:                                          ; preds = %entry
  br label %overflow, !dbg !1864

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %b.addr, align 8, !dbg !1865, !tbaa !277
  %ptr = getelementptr inbounds %struct.oggpack_buffer, ptr %4, i32 0, i32 3, !dbg !1866
  %5 = load ptr, ptr %ptr, align 8, !dbg !1866, !tbaa !295
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 0, !dbg !1865
  %6 = load i8, ptr %arrayidx, align 1, !dbg !1865, !tbaa !299
  %conv = zext i8 %6 to i32, !dbg !1865
  %7 = load ptr, ptr %b.addr, align 8, !dbg !1867, !tbaa !277
  %endbit = getelementptr inbounds %struct.oggpack_buffer, ptr %7, i32 0, i32 1, !dbg !1868
  %8 = load i32, ptr %endbit, align 8, !dbg !1868, !tbaa !375
  %sub = sub nsw i32 7, %8, !dbg !1869
  %shr = ashr i32 %conv, %sub, !dbg !1870
  %and = and i32 %shr, 1, !dbg !1871
  %conv1 = sext i32 %and to i64, !dbg !1872
  store i64 %conv1, ptr %ret, align 8, !dbg !1873, !tbaa !350
  %9 = load ptr, ptr %b.addr, align 8, !dbg !1874, !tbaa !277
  %endbit2 = getelementptr inbounds %struct.oggpack_buffer, ptr %9, i32 0, i32 1, !dbg !1875
  %10 = load i32, ptr %endbit2, align 8, !dbg !1876, !tbaa !375
  %inc = add nsw i32 %10, 1, !dbg !1876
  store i32 %inc, ptr %endbit2, align 8, !dbg !1876, !tbaa !375
  %11 = load ptr, ptr %b.addr, align 8, !dbg !1877, !tbaa !277
  %endbit3 = getelementptr inbounds %struct.oggpack_buffer, ptr %11, i32 0, i32 1, !dbg !1879
  %12 = load i32, ptr %endbit3, align 8, !dbg !1879, !tbaa !375
  %cmp4 = icmp sgt i32 %12, 7, !dbg !1880
  br i1 %cmp4, label %if.then6, label %if.end11, !dbg !1881

if.then6:                                         ; preds = %if.end
  %13 = load ptr, ptr %b.addr, align 8, !dbg !1882, !tbaa !277
  %endbit7 = getelementptr inbounds %struct.oggpack_buffer, ptr %13, i32 0, i32 1, !dbg !1884
  store i32 0, ptr %endbit7, align 8, !dbg !1885, !tbaa !375
  %14 = load ptr, ptr %b.addr, align 8, !dbg !1886, !tbaa !277
  %ptr8 = getelementptr inbounds %struct.oggpack_buffer, ptr %14, i32 0, i32 3, !dbg !1887
  %15 = load ptr, ptr %ptr8, align 8, !dbg !1888, !tbaa !295
  %incdec.ptr = getelementptr inbounds i8, ptr %15, i32 1, !dbg !1888
  store ptr %incdec.ptr, ptr %ptr8, align 8, !dbg !1888, !tbaa !295
  %16 = load ptr, ptr %b.addr, align 8, !dbg !1889, !tbaa !277
  %endbyte9 = getelementptr inbounds %struct.oggpack_buffer, ptr %16, i32 0, i32 0, !dbg !1890
  %17 = load i64, ptr %endbyte9, align 8, !dbg !1891, !tbaa !380
  %inc10 = add nsw i64 %17, 1, !dbg !1891
  store i64 %inc10, ptr %endbyte9, align 8, !dbg !1891, !tbaa !380
  br label %if.end11, !dbg !1892

if.end11:                                         ; preds = %if.then6, %if.end
  %18 = load i64, ptr %ret, align 8, !dbg !1893, !tbaa !350
  store i64 %18, ptr %retval, align 8, !dbg !1894
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1894

overflow:                                         ; preds = %if.then
  tail call void @llvm.dbg.label(metadata !1853), !dbg !1895
  %19 = load ptr, ptr %b.addr, align 8, !dbg !1896, !tbaa !277
  %ptr12 = getelementptr inbounds %struct.oggpack_buffer, ptr %19, i32 0, i32 3, !dbg !1897
  store ptr null, ptr %ptr12, align 8, !dbg !1898, !tbaa !295
  %20 = load ptr, ptr %b.addr, align 8, !dbg !1899, !tbaa !277
  %storage13 = getelementptr inbounds %struct.oggpack_buffer, ptr %20, i32 0, i32 4, !dbg !1900
  %21 = load i64, ptr %storage13, align 8, !dbg !1900, !tbaa !303
  %22 = load ptr, ptr %b.addr, align 8, !dbg !1901, !tbaa !277
  %endbyte14 = getelementptr inbounds %struct.oggpack_buffer, ptr %22, i32 0, i32 0, !dbg !1902
  store i64 %21, ptr %endbyte14, align 8, !dbg !1903, !tbaa !380
  %23 = load ptr, ptr %b.addr, align 8, !dbg !1904, !tbaa !277
  %endbit15 = getelementptr inbounds %struct.oggpack_buffer, ptr %23, i32 0, i32 1, !dbg !1905
  store i32 1, ptr %endbit15, align 8, !dbg !1906, !tbaa !375
  store i64 -1, ptr %retval, align 8, !dbg !1907
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1907

cleanup:                                          ; preds = %overflow, %if.end11
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #11, !dbg !1908
  %24 = load i64, ptr %retval, align 8, !dbg !1908
  ret i64 %24, !dbg !1908
}

; Function Attrs: nounwind uwtable
define dso_local i64 @oggpack_bytes(ptr noundef %b) #0 !dbg !1909 {
entry:
  %b.addr = alloca ptr, align 8
  store ptr %b, ptr %b.addr, align 8, !tbaa !277
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1911, metadata !DIExpression()), !dbg !1912
  %0 = load ptr, ptr %b.addr, align 8, !dbg !1913, !tbaa !277
  %endbyte = getelementptr inbounds %struct.oggpack_buffer, ptr %0, i32 0, i32 0, !dbg !1914
  %1 = load i64, ptr %endbyte, align 8, !dbg !1914, !tbaa !380
  %2 = load ptr, ptr %b.addr, align 8, !dbg !1915, !tbaa !277
  %endbit = getelementptr inbounds %struct.oggpack_buffer, ptr %2, i32 0, i32 1, !dbg !1916
  %3 = load i32, ptr %endbit, align 8, !dbg !1916, !tbaa !375
  %add = add nsw i32 %3, 7, !dbg !1917
  %div = sdiv i32 %add, 8, !dbg !1918
  %conv = sext i32 %div to i64, !dbg !1919
  %add1 = add nsw i64 %1, %conv, !dbg !1920
  ret i64 %add1, !dbg !1921
}

; Function Attrs: nounwind uwtable
define dso_local i64 @oggpack_bits(ptr noundef %b) #0 !dbg !1922 {
entry:
  %b.addr = alloca ptr, align 8
  store ptr %b, ptr %b.addr, align 8, !tbaa !277
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1924, metadata !DIExpression()), !dbg !1925
  %0 = load ptr, ptr %b.addr, align 8, !dbg !1926, !tbaa !277
  %endbyte = getelementptr inbounds %struct.oggpack_buffer, ptr %0, i32 0, i32 0, !dbg !1927
  %1 = load i64, ptr %endbyte, align 8, !dbg !1927, !tbaa !380
  %mul = mul nsw i64 %1, 8, !dbg !1928
  %2 = load ptr, ptr %b.addr, align 8, !dbg !1929, !tbaa !277
  %endbit = getelementptr inbounds %struct.oggpack_buffer, ptr %2, i32 0, i32 1, !dbg !1930
  %3 = load i32, ptr %endbit, align 8, !dbg !1930, !tbaa !375
  %conv = sext i32 %3 to i64, !dbg !1929
  %add = add nsw i64 %mul, %conv, !dbg !1931
  ret i64 %add, !dbg !1932
}

; Function Attrs: nounwind uwtable
define dso_local i64 @oggpackB_bytes(ptr noundef %b) #0 !dbg !1933 {
entry:
  %b.addr = alloca ptr, align 8
  store ptr %b, ptr %b.addr, align 8, !tbaa !277
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1935, metadata !DIExpression()), !dbg !1936
  %0 = load ptr, ptr %b.addr, align 8, !dbg !1937, !tbaa !277
  %call = call i64 @oggpack_bytes(ptr noundef %0), !dbg !1938
  ret i64 %call, !dbg !1939
}

; Function Attrs: nounwind uwtable
define dso_local i64 @oggpackB_bits(ptr noundef %b) #0 !dbg !1940 {
entry:
  %b.addr = alloca ptr, align 8
  store ptr %b, ptr %b.addr, align 8, !tbaa !277
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1942, metadata !DIExpression()), !dbg !1943
  %0 = load ptr, ptr %b.addr, align 8, !dbg !1944, !tbaa !277
  %call = call i64 @oggpack_bits(ptr noundef %0), !dbg !1945
  ret i64 %call, !dbg !1946
}

; Function Attrs: nounwind uwtable
define dso_local ptr @oggpack_get_buffer(ptr noundef %b) #0 !dbg !1947 {
entry:
  %b.addr = alloca ptr, align 8
  store ptr %b, ptr %b.addr, align 8, !tbaa !277
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1951, metadata !DIExpression()), !dbg !1952
  %0 = load ptr, ptr %b.addr, align 8, !dbg !1953, !tbaa !277
  %buffer = getelementptr inbounds %struct.oggpack_buffer, ptr %0, i32 0, i32 2, !dbg !1954
  %1 = load ptr, ptr %buffer, align 8, !dbg !1954, !tbaa !288
  ret ptr %1, !dbg !1955
}

; Function Attrs: nounwind uwtable
define dso_local ptr @oggpackB_get_buffer(ptr noundef %b) #0 !dbg !1956 {
entry:
  %b.addr = alloca ptr, align 8
  store ptr %b, ptr %b.addr, align 8, !tbaa !277
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1958, metadata !DIExpression()), !dbg !1959
  %0 = load ptr, ptr %b.addr, align 8, !dbg !1960, !tbaa !277
  %call = call ptr @oggpack_get_buffer(ptr noundef %0), !dbg !1961
  ret ptr %call, !dbg !1962
}

; Function Attrs: nounwind uwtable
define dso_local void @report(ptr noundef %in) #0 !dbg !1963 {
entry:
  %in.addr = alloca ptr, align 8
  store ptr %in, ptr %in.addr, align 8, !tbaa !277
  tail call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !1968, metadata !DIExpression()), !dbg !1969
  %0 = load ptr, ptr @stderr, align 8, !dbg !1970, !tbaa !277
  %1 = load ptr, ptr %in.addr, align 8, !dbg !1971, !tbaa !277
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str, ptr noundef %1), !dbg !1972
  call void @exit(i32 noundef 1) #13, !dbg !1973
  unreachable, !dbg !1973
}

declare !dbg !1974 i32 @fprintf(ptr noundef, ptr noundef, ...) #6

; Function Attrs: noreturn nounwind
declare !dbg !2037 void @exit(i32 noundef) #7

; Function Attrs: nounwind uwtable
define dso_local void @cliptest(ptr noundef %b, i32 noundef %vals, i32 noundef %bits, ptr noundef %comp, i32 noundef %compsize) #0 !dbg !2040 {
entry:
  %b.addr = alloca ptr, align 8
  %vals.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  %comp.addr = alloca ptr, align 8
  %compsize.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %i = alloca i64, align 8
  %buffer = alloca ptr, align 8
  %tbit = alloca i32, align 4
  store ptr %b, ptr %b.addr, align 8, !tbaa !277
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !2046, metadata !DIExpression()), !dbg !2058
  store i32 %vals, ptr %vals.addr, align 4, !tbaa !424
  tail call void @llvm.dbg.declare(metadata ptr %vals.addr, metadata !2047, metadata !DIExpression()), !dbg !2059
  store i32 %bits, ptr %bits.addr, align 4, !tbaa !424
  tail call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !2048, metadata !DIExpression()), !dbg !2060
  store ptr %comp, ptr %comp.addr, align 8, !tbaa !277
  tail call void @llvm.dbg.declare(metadata ptr %comp.addr, metadata !2049, metadata !DIExpression()), !dbg !2061
  store i32 %compsize, ptr %compsize.addr, align 4, !tbaa !424
  tail call void @llvm.dbg.declare(metadata ptr %compsize.addr, metadata !2050, metadata !DIExpression()), !dbg !2062
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #11, !dbg !2063
  tail call void @llvm.dbg.declare(metadata ptr %bytes, metadata !2051, metadata !DIExpression()), !dbg !2064
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11, !dbg !2063
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2052, metadata !DIExpression()), !dbg !2065
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer) #11, !dbg !2066
  tail call void @llvm.dbg.declare(metadata ptr %buffer, metadata !2053, metadata !DIExpression()), !dbg !2067
  call void @oggpack_reset(ptr noundef @o), !dbg !2068
  store i64 0, ptr %i, align 8, !dbg !2069, !tbaa !350
  br label %for.cond, !dbg !2071

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !dbg !2072, !tbaa !350
  %1 = load i32, ptr %vals.addr, align 4, !dbg !2074, !tbaa !424
  %conv = sext i32 %1 to i64, !dbg !2074
  %cmp = icmp slt i64 %0, %conv, !dbg !2075
  br i1 %cmp, label %for.body, label %for.end, !dbg !2076

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %b.addr, align 8, !dbg !2077, !tbaa !277
  %3 = load i64, ptr %i, align 8, !dbg !2078, !tbaa !350
  %arrayidx = getelementptr inbounds i64, ptr %2, i64 %3, !dbg !2077
  %4 = load i64, ptr %arrayidx, align 8, !dbg !2077, !tbaa !350
  %5 = load i32, ptr %bits.addr, align 4, !dbg !2079, !tbaa !424
  %tobool = icmp ne i32 %5, 0, !dbg !2079
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2079

cond.true:                                        ; preds = %for.body
  %6 = load i32, ptr %bits.addr, align 4, !dbg !2080, !tbaa !424
  br label %cond.end, !dbg !2079

cond.false:                                       ; preds = %for.body
  %7 = load ptr, ptr %b.addr, align 8, !dbg !2081, !tbaa !277
  %8 = load i64, ptr %i, align 8, !dbg !2082, !tbaa !350
  %arrayidx2 = getelementptr inbounds i64, ptr %7, i64 %8, !dbg !2081
  %9 = load i64, ptr %arrayidx2, align 8, !dbg !2081, !tbaa !350
  %conv3 = trunc i64 %9 to i32, !dbg !2081
  %call = call i32 @ilog(i32 noundef %conv3), !dbg !2083
  br label %cond.end, !dbg !2079

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %call, %cond.false ], !dbg !2079
  call void @oggpack_write(ptr noundef @o, i64 noundef %4, i32 noundef %cond), !dbg !2084
  br label %for.inc, !dbg !2084

for.inc:                                          ; preds = %cond.end
  %10 = load i64, ptr %i, align 8, !dbg !2085, !tbaa !350
  %inc = add nsw i64 %10, 1, !dbg !2085
  store i64 %inc, ptr %i, align 8, !dbg !2085, !tbaa !350
  br label %for.cond, !dbg !2086, !llvm.loop !2087

for.end:                                          ; preds = %for.cond
  %call4 = call ptr @oggpack_get_buffer(ptr noundef @o), !dbg !2089
  store ptr %call4, ptr %buffer, align 8, !dbg !2090, !tbaa !277
  %call5 = call i64 @oggpack_bytes(ptr noundef @o), !dbg !2091
  store i64 %call5, ptr %bytes, align 8, !dbg !2092, !tbaa !350
  %11 = load i64, ptr %bytes, align 8, !dbg !2093, !tbaa !350
  %12 = load i32, ptr %compsize.addr, align 4, !dbg !2095, !tbaa !424
  %conv6 = sext i32 %12 to i64, !dbg !2095
  %cmp7 = icmp ne i64 %11, %conv6, !dbg !2096
  br i1 %cmp7, label %if.then, label %if.end, !dbg !2097

if.then:                                          ; preds = %for.end
  call void @report(ptr noundef @.str.1), !dbg !2098
  br label %if.end, !dbg !2098

if.end:                                           ; preds = %if.then, %for.end
  store i64 0, ptr %i, align 8, !dbg !2099, !tbaa !350
  br label %for.cond9, !dbg !2101

for.cond9:                                        ; preds = %for.inc31, %if.end
  %13 = load i64, ptr %i, align 8, !dbg !2102, !tbaa !350
  %14 = load i64, ptr %bytes, align 8, !dbg !2104, !tbaa !350
  %cmp10 = icmp slt i64 %13, %14, !dbg !2105
  br i1 %cmp10, label %for.body12, label %for.end33, !dbg !2106

for.body12:                                       ; preds = %for.cond9
  %15 = load ptr, ptr %buffer, align 8, !dbg !2107, !tbaa !277
  %16 = load i64, ptr %i, align 8, !dbg !2109, !tbaa !350
  %arrayidx13 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !2107
  %17 = load i8, ptr %arrayidx13, align 1, !dbg !2107, !tbaa !299
  %conv14 = zext i8 %17 to i32, !dbg !2107
  %18 = load ptr, ptr %comp.addr, align 8, !dbg !2110, !tbaa !277
  %19 = load i64, ptr %i, align 8, !dbg !2111, !tbaa !350
  %arrayidx15 = getelementptr inbounds i32, ptr %18, i64 %19, !dbg !2110
  %20 = load i32, ptr %arrayidx15, align 4, !dbg !2110, !tbaa !424
  %cmp16 = icmp ne i32 %conv14, %20, !dbg !2112
  br i1 %cmp16, label %if.then18, label %if.end30, !dbg !2113

if.then18:                                        ; preds = %for.body12
  store i64 0, ptr %i, align 8, !dbg !2114, !tbaa !350
  br label %for.cond19, !dbg !2117

for.cond19:                                       ; preds = %for.inc27, %if.then18
  %21 = load i64, ptr %i, align 8, !dbg !2118, !tbaa !350
  %22 = load i64, ptr %bytes, align 8, !dbg !2120, !tbaa !350
  %cmp20 = icmp slt i64 %21, %22, !dbg !2121
  br i1 %cmp20, label %for.body22, label %for.end29, !dbg !2122

for.body22:                                       ; preds = %for.cond19
  %23 = load ptr, ptr @stderr, align 8, !dbg !2123, !tbaa !277
  %24 = load ptr, ptr %buffer, align 8, !dbg !2124, !tbaa !277
  %25 = load i64, ptr %i, align 8, !dbg !2125, !tbaa !350
  %arrayidx23 = getelementptr inbounds i8, ptr %24, i64 %25, !dbg !2124
  %26 = load i8, ptr %arrayidx23, align 1, !dbg !2124, !tbaa !299
  %conv24 = zext i8 %26 to i32, !dbg !2126
  %27 = load ptr, ptr %comp.addr, align 8, !dbg !2127, !tbaa !277
  %28 = load i64, ptr %i, align 8, !dbg !2128, !tbaa !350
  %arrayidx25 = getelementptr inbounds i32, ptr %27, i64 %28, !dbg !2127
  %29 = load i32, ptr %arrayidx25, align 4, !dbg !2127, !tbaa !424
  %call26 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.2, i32 noundef %conv24, i32 noundef %29), !dbg !2129
  br label %for.inc27, !dbg !2129

for.inc27:                                        ; preds = %for.body22
  %30 = load i64, ptr %i, align 8, !dbg !2130, !tbaa !350
  %inc28 = add nsw i64 %30, 1, !dbg !2130
  store i64 %inc28, ptr %i, align 8, !dbg !2130, !tbaa !350
  br label %for.cond19, !dbg !2131, !llvm.loop !2132

for.end29:                                        ; preds = %for.cond19
  call void @report(ptr noundef @.str.3), !dbg !2134
  br label %if.end30, !dbg !2135

if.end30:                                         ; preds = %for.end29, %for.body12
  br label %for.inc31, !dbg !2136

for.inc31:                                        ; preds = %if.end30
  %31 = load i64, ptr %i, align 8, !dbg !2137, !tbaa !350
  %inc32 = add nsw i64 %31, 1, !dbg !2137
  store i64 %inc32, ptr %i, align 8, !dbg !2137, !tbaa !350
  br label %for.cond9, !dbg !2138, !llvm.loop !2139

for.end33:                                        ; preds = %for.cond9
  %32 = load ptr, ptr %buffer, align 8, !dbg !2141, !tbaa !277
  %33 = load i64, ptr %bytes, align 8, !dbg !2142, !tbaa !350
  %conv34 = trunc i64 %33 to i32, !dbg !2142
  call void @oggpack_readinit(ptr noundef @r, ptr noundef %32, i32 noundef %conv34), !dbg !2143
  store i64 0, ptr %i, align 8, !dbg !2144, !tbaa !350
  br label %for.cond35, !dbg !2145

for.cond35:                                       ; preds = %for.inc95, %for.end33
  %34 = load i64, ptr %i, align 8, !dbg !2146, !tbaa !350
  %35 = load i32, ptr %vals.addr, align 4, !dbg !2147, !tbaa !424
  %conv36 = sext i32 %35 to i64, !dbg !2147
  %cmp37 = icmp slt i64 %34, %conv36, !dbg !2148
  br i1 %cmp37, label %for.body39, label %for.end97, !dbg !2149

for.body39:                                       ; preds = %for.cond35
  call void @llvm.lifetime.start.p0(i64 4, ptr %tbit) #11, !dbg !2150
  tail call void @llvm.dbg.declare(metadata ptr %tbit, metadata !2054, metadata !DIExpression()), !dbg !2151
  %36 = load i32, ptr %bits.addr, align 4, !dbg !2152, !tbaa !424
  %tobool40 = icmp ne i32 %36, 0, !dbg !2152
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !2152

cond.true41:                                      ; preds = %for.body39
  %37 = load i32, ptr %bits.addr, align 4, !dbg !2153, !tbaa !424
  br label %cond.end46, !dbg !2152

cond.false42:                                     ; preds = %for.body39
  %38 = load ptr, ptr %b.addr, align 8, !dbg !2154, !tbaa !277
  %39 = load i64, ptr %i, align 8, !dbg !2155, !tbaa !350
  %arrayidx43 = getelementptr inbounds i64, ptr %38, i64 %39, !dbg !2154
  %40 = load i64, ptr %arrayidx43, align 8, !dbg !2154, !tbaa !350
  %conv44 = trunc i64 %40 to i32, !dbg !2154
  %call45 = call i32 @ilog(i32 noundef %conv44), !dbg !2156
  br label %cond.end46, !dbg !2152

cond.end46:                                       ; preds = %cond.false42, %cond.true41
  %cond47 = phi i32 [ %37, %cond.true41 ], [ %call45, %cond.false42 ], !dbg !2152
  store i32 %cond47, ptr %tbit, align 4, !dbg !2151, !tbaa !424
  %41 = load i32, ptr %tbit, align 4, !dbg !2157, !tbaa !424
  %call48 = call i64 @oggpack_look(ptr noundef @r, i32 noundef %41), !dbg !2159
  %cmp49 = icmp eq i64 %call48, -1, !dbg !2160
  br i1 %cmp49, label %if.then51, label %if.end52, !dbg !2161

if.then51:                                        ; preds = %cond.end46
  call void @report(ptr noundef @.str.4), !dbg !2162
  br label %if.end52, !dbg !2162

if.end52:                                         ; preds = %if.then51, %cond.end46
  %42 = load i32, ptr %tbit, align 4, !dbg !2163, !tbaa !424
  %call53 = call i64 @oggpack_look(ptr noundef @r, i32 noundef %42), !dbg !2165
  %43 = load ptr, ptr %b.addr, align 8, !dbg !2166, !tbaa !277
  %44 = load i64, ptr %i, align 8, !dbg !2167, !tbaa !350
  %arrayidx54 = getelementptr inbounds i64, ptr %43, i64 %44, !dbg !2166
  %45 = load i64, ptr %arrayidx54, align 8, !dbg !2166, !tbaa !350
  %46 = load i32, ptr %tbit, align 4, !dbg !2168, !tbaa !424
  %idxprom = sext i32 %46 to i64, !dbg !2169
  %arrayidx55 = getelementptr inbounds [33 x i64], ptr @mask, i64 0, i64 %idxprom, !dbg !2169
  %47 = load i64, ptr %arrayidx55, align 8, !dbg !2169, !tbaa !350
  %and = and i64 %45, %47, !dbg !2170
  %cmp56 = icmp ne i64 %call53, %and, !dbg !2171
  br i1 %cmp56, label %if.then58, label %if.end59, !dbg !2172

if.then58:                                        ; preds = %if.end52
  call void @report(ptr noundef @.str.5), !dbg !2173
  br label %if.end59, !dbg !2173

if.end59:                                         ; preds = %if.then58, %if.end52
  %48 = load i32, ptr %tbit, align 4, !dbg !2174, !tbaa !424
  %cmp60 = icmp eq i32 %48, 1, !dbg !2176
  br i1 %cmp60, label %if.then62, label %if.end72, !dbg !2177

if.then62:                                        ; preds = %if.end59
  %call63 = call i64 @oggpack_look1(ptr noundef @r), !dbg !2178
  %49 = load ptr, ptr %b.addr, align 8, !dbg !2180, !tbaa !277
  %50 = load i64, ptr %i, align 8, !dbg !2181, !tbaa !350
  %arrayidx64 = getelementptr inbounds i64, ptr %49, i64 %50, !dbg !2180
  %51 = load i64, ptr %arrayidx64, align 8, !dbg !2180, !tbaa !350
  %52 = load i32, ptr %tbit, align 4, !dbg !2182, !tbaa !424
  %idxprom65 = sext i32 %52 to i64, !dbg !2183
  %arrayidx66 = getelementptr inbounds [33 x i64], ptr @mask, i64 0, i64 %idxprom65, !dbg !2183
  %53 = load i64, ptr %arrayidx66, align 8, !dbg !2183, !tbaa !350
  %and67 = and i64 %51, %53, !dbg !2184
  %cmp68 = icmp ne i64 %call63, %and67, !dbg !2185
  br i1 %cmp68, label %if.then70, label %if.end71, !dbg !2186

if.then70:                                        ; preds = %if.then62
  call void @report(ptr noundef @.str.6), !dbg !2187
  br label %if.end71, !dbg !2187

if.end71:                                         ; preds = %if.then70, %if.then62
  br label %if.end72, !dbg !2188

if.end72:                                         ; preds = %if.end71, %if.end59
  %54 = load i32, ptr %tbit, align 4, !dbg !2189, !tbaa !424
  %cmp73 = icmp eq i32 %54, 1, !dbg !2191
  br i1 %cmp73, label %if.then75, label %if.else, !dbg !2192

if.then75:                                        ; preds = %if.end72
  %call76 = call i64 @oggpack_read1(ptr noundef @r), !dbg !2193
  %55 = load ptr, ptr %b.addr, align 8, !dbg !2196, !tbaa !277
  %56 = load i64, ptr %i, align 8, !dbg !2197, !tbaa !350
  %arrayidx77 = getelementptr inbounds i64, ptr %55, i64 %56, !dbg !2196
  %57 = load i64, ptr %arrayidx77, align 8, !dbg !2196, !tbaa !350
  %58 = load i32, ptr %tbit, align 4, !dbg !2198, !tbaa !424
  %idxprom78 = sext i32 %58 to i64, !dbg !2199
  %arrayidx79 = getelementptr inbounds [33 x i64], ptr @mask, i64 0, i64 %idxprom78, !dbg !2199
  %59 = load i64, ptr %arrayidx79, align 8, !dbg !2199, !tbaa !350
  %and80 = and i64 %57, %59, !dbg !2200
  %cmp81 = icmp ne i64 %call76, %and80, !dbg !2201
  br i1 %cmp81, label %if.then83, label %if.end84, !dbg !2202

if.then83:                                        ; preds = %if.then75
  call void @report(ptr noundef @.str.7), !dbg !2203
  br label %if.end84, !dbg !2203

if.end84:                                         ; preds = %if.then83, %if.then75
  br label %if.end94, !dbg !2204

if.else:                                          ; preds = %if.end72
  %60 = load i32, ptr %tbit, align 4, !dbg !2205, !tbaa !424
  %call85 = call i64 @oggpack_read(ptr noundef @r, i32 noundef %60), !dbg !2208
  %61 = load ptr, ptr %b.addr, align 8, !dbg !2209, !tbaa !277
  %62 = load i64, ptr %i, align 8, !dbg !2210, !tbaa !350
  %arrayidx86 = getelementptr inbounds i64, ptr %61, i64 %62, !dbg !2209
  %63 = load i64, ptr %arrayidx86, align 8, !dbg !2209, !tbaa !350
  %64 = load i32, ptr %tbit, align 4, !dbg !2211, !tbaa !424
  %idxprom87 = sext i32 %64 to i64, !dbg !2212
  %arrayidx88 = getelementptr inbounds [33 x i64], ptr @mask, i64 0, i64 %idxprom87, !dbg !2212
  %65 = load i64, ptr %arrayidx88, align 8, !dbg !2212, !tbaa !350
  %and89 = and i64 %63, %65, !dbg !2213
  %cmp90 = icmp ne i64 %call85, %and89, !dbg !2214
  br i1 %cmp90, label %if.then92, label %if.end93, !dbg !2215

if.then92:                                        ; preds = %if.else
  call void @report(ptr noundef @.str.8), !dbg !2216
  br label %if.end93, !dbg !2216

if.end93:                                         ; preds = %if.then92, %if.else
  br label %if.end94

if.end94:                                         ; preds = %if.end93, %if.end84
  call void @llvm.lifetime.end.p0(i64 4, ptr %tbit) #11, !dbg !2217
  br label %for.inc95, !dbg !2218

for.inc95:                                        ; preds = %if.end94
  %66 = load i64, ptr %i, align 8, !dbg !2219, !tbaa !350
  %inc96 = add nsw i64 %66, 1, !dbg !2219
  store i64 %inc96, ptr %i, align 8, !dbg !2219, !tbaa !350
  br label %for.cond35, !dbg !2220, !llvm.loop !2221

for.end97:                                        ; preds = %for.cond35
  %call98 = call i64 @oggpack_bytes(ptr noundef @r), !dbg !2223
  %67 = load i64, ptr %bytes, align 8, !dbg !2225, !tbaa !350
  %cmp99 = icmp ne i64 %call98, %67, !dbg !2226
  br i1 %cmp99, label %if.then101, label %if.end102, !dbg !2227

if.then101:                                       ; preds = %for.end97
  call void @report(ptr noundef @.str.9), !dbg !2228
  br label %if.end102, !dbg !2228

if.end102:                                        ; preds = %if.then101, %for.end97
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer) #11, !dbg !2229
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11, !dbg !2229
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #11, !dbg !2229
  ret void, !dbg !2229
}

; Function Attrs: nounwind uwtable
define internal i32 @ilog(i32 noundef %v) #0 !dbg !2230 {
entry:
  %v.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  store i32 %v, ptr %v.addr, align 4, !tbaa !424
  tail call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2234, metadata !DIExpression()), !dbg !2236
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !2237
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !2235, metadata !DIExpression()), !dbg !2238
  store i32 0, ptr %ret, align 4, !dbg !2238, !tbaa !424
  br label %while.cond, !dbg !2239

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %v.addr, align 4, !dbg !2240, !tbaa !424
  %tobool = icmp ne i32 %0, 0, !dbg !2239
  br i1 %tobool, label %while.body, label %while.end, !dbg !2239

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %ret, align 4, !dbg !2241, !tbaa !424
  %inc = add nsw i32 %1, 1, !dbg !2241
  store i32 %inc, ptr %ret, align 4, !dbg !2241, !tbaa !424
  %2 = load i32, ptr %v.addr, align 4, !dbg !2243, !tbaa !424
  %shr = lshr i32 %2, 1, !dbg !2243
  store i32 %shr, ptr %v.addr, align 4, !dbg !2243, !tbaa !424
  br label %while.cond, !dbg !2239, !llvm.loop !2244

while.end:                                        ; preds = %while.cond
  %3 = load i32, ptr %ret, align 4, !dbg !2246, !tbaa !424
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !2247
  ret i32 %3, !dbg !2248
}

; Function Attrs: nounwind uwtable
define dso_local void @cliptestB(ptr noundef %b, i32 noundef %vals, i32 noundef %bits, ptr noundef %comp, i32 noundef %compsize) #0 !dbg !2249 {
entry:
  %b.addr = alloca ptr, align 8
  %vals.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  %comp.addr = alloca ptr, align 8
  %compsize.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %i = alloca i64, align 8
  %buffer = alloca ptr, align 8
  %tbit = alloca i32, align 4
  store ptr %b, ptr %b.addr, align 8, !tbaa !277
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !2251, metadata !DIExpression()), !dbg !2263
  store i32 %vals, ptr %vals.addr, align 4, !tbaa !424
  tail call void @llvm.dbg.declare(metadata ptr %vals.addr, metadata !2252, metadata !DIExpression()), !dbg !2264
  store i32 %bits, ptr %bits.addr, align 4, !tbaa !424
  tail call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !2253, metadata !DIExpression()), !dbg !2265
  store ptr %comp, ptr %comp.addr, align 8, !tbaa !277
  tail call void @llvm.dbg.declare(metadata ptr %comp.addr, metadata !2254, metadata !DIExpression()), !dbg !2266
  store i32 %compsize, ptr %compsize.addr, align 4, !tbaa !424
  tail call void @llvm.dbg.declare(metadata ptr %compsize.addr, metadata !2255, metadata !DIExpression()), !dbg !2267
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #11, !dbg !2268
  tail call void @llvm.dbg.declare(metadata ptr %bytes, metadata !2256, metadata !DIExpression()), !dbg !2269
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11, !dbg !2268
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2257, metadata !DIExpression()), !dbg !2270
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer) #11, !dbg !2271
  tail call void @llvm.dbg.declare(metadata ptr %buffer, metadata !2258, metadata !DIExpression()), !dbg !2272
  call void @oggpackB_reset(ptr noundef @o), !dbg !2273
  store i64 0, ptr %i, align 8, !dbg !2274, !tbaa !350
  br label %for.cond, !dbg !2276

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !dbg !2277, !tbaa !350
  %1 = load i32, ptr %vals.addr, align 4, !dbg !2279, !tbaa !424
  %conv = sext i32 %1 to i64, !dbg !2279
  %cmp = icmp slt i64 %0, %conv, !dbg !2280
  br i1 %cmp, label %for.body, label %for.end, !dbg !2281

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %b.addr, align 8, !dbg !2282, !tbaa !277
  %3 = load i64, ptr %i, align 8, !dbg !2283, !tbaa !350
  %arrayidx = getelementptr inbounds i64, ptr %2, i64 %3, !dbg !2282
  %4 = load i64, ptr %arrayidx, align 8, !dbg !2282, !tbaa !350
  %5 = load i32, ptr %bits.addr, align 4, !dbg !2284, !tbaa !424
  %tobool = icmp ne i32 %5, 0, !dbg !2284
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2284

cond.true:                                        ; preds = %for.body
  %6 = load i32, ptr %bits.addr, align 4, !dbg !2285, !tbaa !424
  br label %cond.end, !dbg !2284

cond.false:                                       ; preds = %for.body
  %7 = load ptr, ptr %b.addr, align 8, !dbg !2286, !tbaa !277
  %8 = load i64, ptr %i, align 8, !dbg !2287, !tbaa !350
  %arrayidx2 = getelementptr inbounds i64, ptr %7, i64 %8, !dbg !2286
  %9 = load i64, ptr %arrayidx2, align 8, !dbg !2286, !tbaa !350
  %conv3 = trunc i64 %9 to i32, !dbg !2286
  %call = call i32 @ilog(i32 noundef %conv3), !dbg !2288
  br label %cond.end, !dbg !2284

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %call, %cond.false ], !dbg !2284
  call void @oggpackB_write(ptr noundef @o, i64 noundef %4, i32 noundef %cond), !dbg !2289
  br label %for.inc, !dbg !2289

for.inc:                                          ; preds = %cond.end
  %10 = load i64, ptr %i, align 8, !dbg !2290, !tbaa !350
  %inc = add nsw i64 %10, 1, !dbg !2290
  store i64 %inc, ptr %i, align 8, !dbg !2290, !tbaa !350
  br label %for.cond, !dbg !2291, !llvm.loop !2292

for.end:                                          ; preds = %for.cond
  %call4 = call ptr @oggpackB_get_buffer(ptr noundef @o), !dbg !2294
  store ptr %call4, ptr %buffer, align 8, !dbg !2295, !tbaa !277
  %call5 = call i64 @oggpackB_bytes(ptr noundef @o), !dbg !2296
  store i64 %call5, ptr %bytes, align 8, !dbg !2297, !tbaa !350
  %11 = load i64, ptr %bytes, align 8, !dbg !2298, !tbaa !350
  %12 = load i32, ptr %compsize.addr, align 4, !dbg !2300, !tbaa !424
  %conv6 = sext i32 %12 to i64, !dbg !2300
  %cmp7 = icmp ne i64 %11, %conv6, !dbg !2301
  br i1 %cmp7, label %if.then, label %if.end, !dbg !2302

if.then:                                          ; preds = %for.end
  call void @report(ptr noundef @.str.1), !dbg !2303
  br label %if.end, !dbg !2303

if.end:                                           ; preds = %if.then, %for.end
  store i64 0, ptr %i, align 8, !dbg !2304, !tbaa !350
  br label %for.cond9, !dbg !2306

for.cond9:                                        ; preds = %for.inc31, %if.end
  %13 = load i64, ptr %i, align 8, !dbg !2307, !tbaa !350
  %14 = load i64, ptr %bytes, align 8, !dbg !2309, !tbaa !350
  %cmp10 = icmp slt i64 %13, %14, !dbg !2310
  br i1 %cmp10, label %for.body12, label %for.end33, !dbg !2311

for.body12:                                       ; preds = %for.cond9
  %15 = load ptr, ptr %buffer, align 8, !dbg !2312, !tbaa !277
  %16 = load i64, ptr %i, align 8, !dbg !2314, !tbaa !350
  %arrayidx13 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !2312
  %17 = load i8, ptr %arrayidx13, align 1, !dbg !2312, !tbaa !299
  %conv14 = zext i8 %17 to i32, !dbg !2312
  %18 = load ptr, ptr %comp.addr, align 8, !dbg !2315, !tbaa !277
  %19 = load i64, ptr %i, align 8, !dbg !2316, !tbaa !350
  %arrayidx15 = getelementptr inbounds i32, ptr %18, i64 %19, !dbg !2315
  %20 = load i32, ptr %arrayidx15, align 4, !dbg !2315, !tbaa !424
  %cmp16 = icmp ne i32 %conv14, %20, !dbg !2317
  br i1 %cmp16, label %if.then18, label %if.end30, !dbg !2318

if.then18:                                        ; preds = %for.body12
  store i64 0, ptr %i, align 8, !dbg !2319, !tbaa !350
  br label %for.cond19, !dbg !2322

for.cond19:                                       ; preds = %for.inc27, %if.then18
  %21 = load i64, ptr %i, align 8, !dbg !2323, !tbaa !350
  %22 = load i64, ptr %bytes, align 8, !dbg !2325, !tbaa !350
  %cmp20 = icmp slt i64 %21, %22, !dbg !2326
  br i1 %cmp20, label %for.body22, label %for.end29, !dbg !2327

for.body22:                                       ; preds = %for.cond19
  %23 = load ptr, ptr @stderr, align 8, !dbg !2328, !tbaa !277
  %24 = load ptr, ptr %buffer, align 8, !dbg !2329, !tbaa !277
  %25 = load i64, ptr %i, align 8, !dbg !2330, !tbaa !350
  %arrayidx23 = getelementptr inbounds i8, ptr %24, i64 %25, !dbg !2329
  %26 = load i8, ptr %arrayidx23, align 1, !dbg !2329, !tbaa !299
  %conv24 = zext i8 %26 to i32, !dbg !2331
  %27 = load ptr, ptr %comp.addr, align 8, !dbg !2332, !tbaa !277
  %28 = load i64, ptr %i, align 8, !dbg !2333, !tbaa !350
  %arrayidx25 = getelementptr inbounds i32, ptr %27, i64 %28, !dbg !2332
  %29 = load i32, ptr %arrayidx25, align 4, !dbg !2332, !tbaa !424
  %call26 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.2, i32 noundef %conv24, i32 noundef %29), !dbg !2334
  br label %for.inc27, !dbg !2334

for.inc27:                                        ; preds = %for.body22
  %30 = load i64, ptr %i, align 8, !dbg !2335, !tbaa !350
  %inc28 = add nsw i64 %30, 1, !dbg !2335
  store i64 %inc28, ptr %i, align 8, !dbg !2335, !tbaa !350
  br label %for.cond19, !dbg !2336, !llvm.loop !2337

for.end29:                                        ; preds = %for.cond19
  call void @report(ptr noundef @.str.3), !dbg !2339
  br label %if.end30, !dbg !2340

if.end30:                                         ; preds = %for.end29, %for.body12
  br label %for.inc31, !dbg !2341

for.inc31:                                        ; preds = %if.end30
  %31 = load i64, ptr %i, align 8, !dbg !2342, !tbaa !350
  %inc32 = add nsw i64 %31, 1, !dbg !2342
  store i64 %inc32, ptr %i, align 8, !dbg !2342, !tbaa !350
  br label %for.cond9, !dbg !2343, !llvm.loop !2344

for.end33:                                        ; preds = %for.cond9
  %32 = load ptr, ptr %buffer, align 8, !dbg !2346, !tbaa !277
  %33 = load i64, ptr %bytes, align 8, !dbg !2347, !tbaa !350
  %conv34 = trunc i64 %33 to i32, !dbg !2347
  call void @oggpackB_readinit(ptr noundef @r, ptr noundef %32, i32 noundef %conv34), !dbg !2348
  store i64 0, ptr %i, align 8, !dbg !2349, !tbaa !350
  br label %for.cond35, !dbg !2350

for.cond35:                                       ; preds = %for.inc95, %for.end33
  %34 = load i64, ptr %i, align 8, !dbg !2351, !tbaa !350
  %35 = load i32, ptr %vals.addr, align 4, !dbg !2352, !tbaa !424
  %conv36 = sext i32 %35 to i64, !dbg !2352
  %cmp37 = icmp slt i64 %34, %conv36, !dbg !2353
  br i1 %cmp37, label %for.body39, label %for.end97, !dbg !2354

for.body39:                                       ; preds = %for.cond35
  call void @llvm.lifetime.start.p0(i64 4, ptr %tbit) #11, !dbg !2355
  tail call void @llvm.dbg.declare(metadata ptr %tbit, metadata !2259, metadata !DIExpression()), !dbg !2356
  %36 = load i32, ptr %bits.addr, align 4, !dbg !2357, !tbaa !424
  %tobool40 = icmp ne i32 %36, 0, !dbg !2357
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !2357

cond.true41:                                      ; preds = %for.body39
  %37 = load i32, ptr %bits.addr, align 4, !dbg !2358, !tbaa !424
  br label %cond.end46, !dbg !2357

cond.false42:                                     ; preds = %for.body39
  %38 = load ptr, ptr %b.addr, align 8, !dbg !2359, !tbaa !277
  %39 = load i64, ptr %i, align 8, !dbg !2360, !tbaa !350
  %arrayidx43 = getelementptr inbounds i64, ptr %38, i64 %39, !dbg !2359
  %40 = load i64, ptr %arrayidx43, align 8, !dbg !2359, !tbaa !350
  %conv44 = trunc i64 %40 to i32, !dbg !2359
  %call45 = call i32 @ilog(i32 noundef %conv44), !dbg !2361
  br label %cond.end46, !dbg !2357

cond.end46:                                       ; preds = %cond.false42, %cond.true41
  %cond47 = phi i32 [ %37, %cond.true41 ], [ %call45, %cond.false42 ], !dbg !2357
  store i32 %cond47, ptr %tbit, align 4, !dbg !2356, !tbaa !424
  %41 = load i32, ptr %tbit, align 4, !dbg !2362, !tbaa !424
  %call48 = call i64 @oggpackB_look(ptr noundef @r, i32 noundef %41), !dbg !2364
  %cmp49 = icmp eq i64 %call48, -1, !dbg !2365
  br i1 %cmp49, label %if.then51, label %if.end52, !dbg !2366

if.then51:                                        ; preds = %cond.end46
  call void @report(ptr noundef @.str.4), !dbg !2367
  br label %if.end52, !dbg !2367

if.end52:                                         ; preds = %if.then51, %cond.end46
  %42 = load i32, ptr %tbit, align 4, !dbg !2368, !tbaa !424
  %call53 = call i64 @oggpackB_look(ptr noundef @r, i32 noundef %42), !dbg !2370
  %43 = load ptr, ptr %b.addr, align 8, !dbg !2371, !tbaa !277
  %44 = load i64, ptr %i, align 8, !dbg !2372, !tbaa !350
  %arrayidx54 = getelementptr inbounds i64, ptr %43, i64 %44, !dbg !2371
  %45 = load i64, ptr %arrayidx54, align 8, !dbg !2371, !tbaa !350
  %46 = load i32, ptr %tbit, align 4, !dbg !2373, !tbaa !424
  %idxprom = sext i32 %46 to i64, !dbg !2374
  %arrayidx55 = getelementptr inbounds [33 x i64], ptr @mask, i64 0, i64 %idxprom, !dbg !2374
  %47 = load i64, ptr %arrayidx55, align 8, !dbg !2374, !tbaa !350
  %and = and i64 %45, %47, !dbg !2375
  %cmp56 = icmp ne i64 %call53, %and, !dbg !2376
  br i1 %cmp56, label %if.then58, label %if.end59, !dbg !2377

if.then58:                                        ; preds = %if.end52
  call void @report(ptr noundef @.str.5), !dbg !2378
  br label %if.end59, !dbg !2378

if.end59:                                         ; preds = %if.then58, %if.end52
  %48 = load i32, ptr %tbit, align 4, !dbg !2379, !tbaa !424
  %cmp60 = icmp eq i32 %48, 1, !dbg !2381
  br i1 %cmp60, label %if.then62, label %if.end72, !dbg !2382

if.then62:                                        ; preds = %if.end59
  %call63 = call i64 @oggpackB_look1(ptr noundef @r), !dbg !2383
  %49 = load ptr, ptr %b.addr, align 8, !dbg !2385, !tbaa !277
  %50 = load i64, ptr %i, align 8, !dbg !2386, !tbaa !350
  %arrayidx64 = getelementptr inbounds i64, ptr %49, i64 %50, !dbg !2385
  %51 = load i64, ptr %arrayidx64, align 8, !dbg !2385, !tbaa !350
  %52 = load i32, ptr %tbit, align 4, !dbg !2387, !tbaa !424
  %idxprom65 = sext i32 %52 to i64, !dbg !2388
  %arrayidx66 = getelementptr inbounds [33 x i64], ptr @mask, i64 0, i64 %idxprom65, !dbg !2388
  %53 = load i64, ptr %arrayidx66, align 8, !dbg !2388, !tbaa !350
  %and67 = and i64 %51, %53, !dbg !2389
  %cmp68 = icmp ne i64 %call63, %and67, !dbg !2390
  br i1 %cmp68, label %if.then70, label %if.end71, !dbg !2391

if.then70:                                        ; preds = %if.then62
  call void @report(ptr noundef @.str.6), !dbg !2392
  br label %if.end71, !dbg !2392

if.end71:                                         ; preds = %if.then70, %if.then62
  br label %if.end72, !dbg !2393

if.end72:                                         ; preds = %if.end71, %if.end59
  %54 = load i32, ptr %tbit, align 4, !dbg !2394, !tbaa !424
  %cmp73 = icmp eq i32 %54, 1, !dbg !2396
  br i1 %cmp73, label %if.then75, label %if.else, !dbg !2397

if.then75:                                        ; preds = %if.end72
  %call76 = call i64 @oggpackB_read1(ptr noundef @r), !dbg !2398
  %55 = load ptr, ptr %b.addr, align 8, !dbg !2401, !tbaa !277
  %56 = load i64, ptr %i, align 8, !dbg !2402, !tbaa !350
  %arrayidx77 = getelementptr inbounds i64, ptr %55, i64 %56, !dbg !2401
  %57 = load i64, ptr %arrayidx77, align 8, !dbg !2401, !tbaa !350
  %58 = load i32, ptr %tbit, align 4, !dbg !2403, !tbaa !424
  %idxprom78 = sext i32 %58 to i64, !dbg !2404
  %arrayidx79 = getelementptr inbounds [33 x i64], ptr @mask, i64 0, i64 %idxprom78, !dbg !2404
  %59 = load i64, ptr %arrayidx79, align 8, !dbg !2404, !tbaa !350
  %and80 = and i64 %57, %59, !dbg !2405
  %cmp81 = icmp ne i64 %call76, %and80, !dbg !2406
  br i1 %cmp81, label %if.then83, label %if.end84, !dbg !2407

if.then83:                                        ; preds = %if.then75
  call void @report(ptr noundef @.str.7), !dbg !2408
  br label %if.end84, !dbg !2408

if.end84:                                         ; preds = %if.then83, %if.then75
  br label %if.end94, !dbg !2409

if.else:                                          ; preds = %if.end72
  %60 = load i32, ptr %tbit, align 4, !dbg !2410, !tbaa !424
  %call85 = call i64 @oggpackB_read(ptr noundef @r, i32 noundef %60), !dbg !2413
  %61 = load ptr, ptr %b.addr, align 8, !dbg !2414, !tbaa !277
  %62 = load i64, ptr %i, align 8, !dbg !2415, !tbaa !350
  %arrayidx86 = getelementptr inbounds i64, ptr %61, i64 %62, !dbg !2414
  %63 = load i64, ptr %arrayidx86, align 8, !dbg !2414, !tbaa !350
  %64 = load i32, ptr %tbit, align 4, !dbg !2416, !tbaa !424
  %idxprom87 = sext i32 %64 to i64, !dbg !2417
  %arrayidx88 = getelementptr inbounds [33 x i64], ptr @mask, i64 0, i64 %idxprom87, !dbg !2417
  %65 = load i64, ptr %arrayidx88, align 8, !dbg !2417, !tbaa !350
  %and89 = and i64 %63, %65, !dbg !2418
  %cmp90 = icmp ne i64 %call85, %and89, !dbg !2419
  br i1 %cmp90, label %if.then92, label %if.end93, !dbg !2420

if.then92:                                        ; preds = %if.else
  call void @report(ptr noundef @.str.8), !dbg !2421
  br label %if.end93, !dbg !2421

if.end93:                                         ; preds = %if.then92, %if.else
  br label %if.end94

if.end94:                                         ; preds = %if.end93, %if.end84
  call void @llvm.lifetime.end.p0(i64 4, ptr %tbit) #11, !dbg !2422
  br label %for.inc95, !dbg !2423

for.inc95:                                        ; preds = %if.end94
  %66 = load i64, ptr %i, align 8, !dbg !2424, !tbaa !350
  %inc96 = add nsw i64 %66, 1, !dbg !2424
  store i64 %inc96, ptr %i, align 8, !dbg !2424, !tbaa !350
  br label %for.cond35, !dbg !2425, !llvm.loop !2426

for.end97:                                        ; preds = %for.cond35
  %call98 = call i64 @oggpackB_bytes(ptr noundef @r), !dbg !2428
  %67 = load i64, ptr %bytes, align 8, !dbg !2430, !tbaa !350
  %cmp99 = icmp ne i64 %call98, %67, !dbg !2431
  br i1 %cmp99, label %if.then101, label %if.end102, !dbg !2432

if.then101:                                       ; preds = %for.end97
  call void @report(ptr noundef @.str.9), !dbg !2433
  br label %if.end102, !dbg !2433

if.end102:                                        ; preds = %if.then101, %for.end97
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer) #11, !dbg !2434
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11, !dbg !2434
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #11, !dbg !2434
  ret void, !dbg !2434
}

; Function Attrs: nounwind uwtable
define dso_local void @copytest(i32 noundef %prefill, i32 noundef %copy) #0 !dbg !2435 {
entry:
  %prefill.addr = alloca i32, align 4
  %copy.addr = alloca i32, align 4
  %source_write = alloca %struct.oggpack_buffer, align 8
  %dest_write = alloca %struct.oggpack_buffer, align 8
  %source_read = alloca %struct.oggpack_buffer, align 8
  %dest_read = alloca %struct.oggpack_buffer, align 8
  %source = alloca ptr, align 8
  %dest = alloca ptr, align 8
  %source_bytes = alloca i64, align 8
  %dest_bytes = alloca i64, align 8
  %i = alloca i32, align 4
  %s = alloca i32, align 4
  %d = alloca i32, align 4
  %s79 = alloca i32, align 4
  %d90 = alloca i32, align 4
  %s115 = alloca i32, align 4
  %d126 = alloca i32, align 4
  store i32 %prefill, ptr %prefill.addr, align 4, !tbaa !424
  tail call void @llvm.dbg.declare(metadata ptr %prefill.addr, metadata !2439, metadata !DIExpression()), !dbg !2465
  store i32 %copy, ptr %copy.addr, align 4, !tbaa !424
  tail call void @llvm.dbg.declare(metadata ptr %copy.addr, metadata !2440, metadata !DIExpression()), !dbg !2466
  call void @llvm.lifetime.start.p0(i64 40, ptr %source_write) #11, !dbg !2467
  tail call void @llvm.dbg.declare(metadata ptr %source_write, metadata !2441, metadata !DIExpression()), !dbg !2468
  call void @llvm.lifetime.start.p0(i64 40, ptr %dest_write) #11, !dbg !2469
  tail call void @llvm.dbg.declare(metadata ptr %dest_write, metadata !2442, metadata !DIExpression()), !dbg !2470
  call void @llvm.lifetime.start.p0(i64 40, ptr %source_read) #11, !dbg !2471
  tail call void @llvm.dbg.declare(metadata ptr %source_read, metadata !2443, metadata !DIExpression()), !dbg !2472
  call void @llvm.lifetime.start.p0(i64 40, ptr %dest_read) #11, !dbg !2473
  tail call void @llvm.dbg.declare(metadata ptr %dest_read, metadata !2444, metadata !DIExpression()), !dbg !2474
  call void @llvm.lifetime.start.p0(i64 8, ptr %source) #11, !dbg !2475
  tail call void @llvm.dbg.declare(metadata ptr %source, metadata !2445, metadata !DIExpression()), !dbg !2476
  call void @llvm.lifetime.start.p0(i64 8, ptr %dest) #11, !dbg !2477
  tail call void @llvm.dbg.declare(metadata ptr %dest, metadata !2446, metadata !DIExpression()), !dbg !2478
  call void @llvm.lifetime.start.p0(i64 8, ptr %source_bytes) #11, !dbg !2479
  tail call void @llvm.dbg.declare(metadata ptr %source_bytes, metadata !2447, metadata !DIExpression()), !dbg !2480
  call void @llvm.lifetime.start.p0(i64 8, ptr %dest_bytes) #11, !dbg !2479
  tail call void @llvm.dbg.declare(metadata ptr %dest_bytes, metadata !2448, metadata !DIExpression()), !dbg !2481
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11, !dbg !2482
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2449, metadata !DIExpression()), !dbg !2483
  call void @oggpack_writeinit(ptr noundef %source_write), !dbg !2484
  call void @oggpack_writeinit(ptr noundef %dest_write), !dbg !2485
  store i32 0, ptr %i, align 4, !dbg !2486, !tbaa !424
  br label %for.cond, !dbg !2488

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !2489, !tbaa !424
  %1 = load i32, ptr %prefill.addr, align 4, !dbg !2491, !tbaa !424
  %2 = load i32, ptr %copy.addr, align 4, !dbg !2492, !tbaa !424
  %add = add nsw i32 %1, %2, !dbg !2493
  %add1 = add nsw i32 %add, 7, !dbg !2494
  %div = sdiv i32 %add1, 8, !dbg !2495
  %cmp = icmp slt i32 %0, %div, !dbg !2496
  br i1 %cmp, label %for.body, label %for.end, !dbg !2497

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4, !dbg !2498, !tbaa !424
  %xor = xor i32 %3, 90, !dbg !2499
  %and = and i32 %xor, 255, !dbg !2500
  %conv = sext i32 %and to i64, !dbg !2501
  call void @oggpack_write(ptr noundef %source_write, i64 noundef %conv, i32 noundef 8), !dbg !2502
  br label %for.inc, !dbg !2502

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !dbg !2503, !tbaa !424
  %inc = add nsw i32 %4, 1, !dbg !2503
  store i32 %inc, ptr %i, align 4, !dbg !2503, !tbaa !424
  br label %for.cond, !dbg !2504, !llvm.loop !2505

for.end:                                          ; preds = %for.cond
  %call = call ptr @oggpack_get_buffer(ptr noundef %source_write), !dbg !2507
  store ptr %call, ptr %source, align 8, !dbg !2508, !tbaa !277
  %call2 = call i64 @oggpack_bytes(ptr noundef %source_write), !dbg !2509
  store i64 %call2, ptr %source_bytes, align 8, !dbg !2510, !tbaa !350
  %5 = load ptr, ptr %source, align 8, !dbg !2511, !tbaa !277
  %6 = load i32, ptr %prefill.addr, align 4, !dbg !2512, !tbaa !424
  %conv3 = sext i32 %6 to i64, !dbg !2512
  call void @oggpack_writecopy(ptr noundef %dest_write, ptr noundef %5, i64 noundef %conv3), !dbg !2513
  %call4 = call ptr @oggpack_get_buffer(ptr noundef %dest_write), !dbg !2514
  store ptr %call4, ptr %dest, align 8, !dbg !2515, !tbaa !277
  %call5 = call i64 @oggpack_bytes(ptr noundef %dest_write), !dbg !2516
  store i64 %call5, ptr %dest_bytes, align 8, !dbg !2517, !tbaa !350
  %7 = load i64, ptr %dest_bytes, align 8, !dbg !2518, !tbaa !350
  %8 = load i32, ptr %prefill.addr, align 4, !dbg !2520, !tbaa !424
  %add6 = add nsw i32 %8, 7, !dbg !2521
  %div7 = sdiv i32 %add6, 8, !dbg !2522
  %conv8 = sext i32 %div7 to i64, !dbg !2523
  %cmp9 = icmp ne i64 %7, %conv8, !dbg !2524
  br i1 %cmp9, label %if.then, label %if.end, !dbg !2525

if.then:                                          ; preds = %for.end
  %9 = load ptr, ptr @stderr, align 8, !dbg !2526, !tbaa !277
  %10 = load i64, ptr %dest_bytes, align 8, !dbg !2528, !tbaa !350
  %11 = load i32, ptr %prefill.addr, align 4, !dbg !2529, !tbaa !424
  %add11 = add nsw i32 %11, 7, !dbg !2530
  %div12 = sdiv i32 %add11, 8, !dbg !2531
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.10, i64 noundef %10, i32 noundef %div12), !dbg !2532
  call void @exit(i32 noundef 1) #13, !dbg !2533
  unreachable, !dbg !2533

if.end:                                           ; preds = %for.end
  %12 = load ptr, ptr %source, align 8, !dbg !2534, !tbaa !277
  %13 = load i64, ptr %source_bytes, align 8, !dbg !2535, !tbaa !350
  %conv14 = trunc i64 %13 to i32, !dbg !2535
  call void @oggpack_readinit(ptr noundef %source_read, ptr noundef %12, i32 noundef %conv14), !dbg !2536
  %14 = load ptr, ptr %dest, align 8, !dbg !2537, !tbaa !277
  %15 = load i64, ptr %dest_bytes, align 8, !dbg !2538, !tbaa !350
  %conv15 = trunc i64 %15 to i32, !dbg !2538
  call void @oggpack_readinit(ptr noundef %dest_read, ptr noundef %14, i32 noundef %conv15), !dbg !2539
  store i32 0, ptr %i, align 4, !dbg !2540, !tbaa !424
  br label %for.cond16, !dbg !2541

for.cond16:                                       ; preds = %for.inc41, %if.end
  %16 = load i32, ptr %i, align 4, !dbg !2542, !tbaa !424
  %17 = load i32, ptr %prefill.addr, align 4, !dbg !2543, !tbaa !424
  %cmp17 = icmp slt i32 %16, %17, !dbg !2544
  br i1 %cmp17, label %for.body19, label %for.end43, !dbg !2545

for.body19:                                       ; preds = %for.cond16
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #11, !dbg !2546
  tail call void @llvm.dbg.declare(metadata ptr %s, metadata !2450, metadata !DIExpression()), !dbg !2547
  %18 = load i32, ptr %prefill.addr, align 4, !dbg !2548, !tbaa !424
  %19 = load i32, ptr %i, align 4, !dbg !2549, !tbaa !424
  %sub = sub nsw i32 %18, %19, !dbg !2550
  %cmp20 = icmp slt i32 %sub, 8, !dbg !2551
  br i1 %cmp20, label %cond.true, label %cond.false, !dbg !2548

cond.true:                                        ; preds = %for.body19
  %20 = load i32, ptr %prefill.addr, align 4, !dbg !2552, !tbaa !424
  %21 = load i32, ptr %i, align 4, !dbg !2553, !tbaa !424
  %sub22 = sub nsw i32 %20, %21, !dbg !2554
  br label %cond.end, !dbg !2548

cond.false:                                       ; preds = %for.body19
  br label %cond.end, !dbg !2548

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub22, %cond.true ], [ 8, %cond.false ], !dbg !2548
  %call23 = call i64 @oggpack_read(ptr noundef %source_read, i32 noundef %cond), !dbg !2555
  %conv24 = trunc i64 %call23 to i32, !dbg !2555
  store i32 %conv24, ptr %s, align 4, !dbg !2547, !tbaa !424
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #11, !dbg !2556
  tail call void @llvm.dbg.declare(metadata ptr %d, metadata !2454, metadata !DIExpression()), !dbg !2557
  %22 = load i32, ptr %prefill.addr, align 4, !dbg !2558, !tbaa !424
  %23 = load i32, ptr %i, align 4, !dbg !2559, !tbaa !424
  %sub25 = sub nsw i32 %22, %23, !dbg !2560
  %cmp26 = icmp slt i32 %sub25, 8, !dbg !2561
  br i1 %cmp26, label %cond.true28, label %cond.false30, !dbg !2558

cond.true28:                                      ; preds = %cond.end
  %24 = load i32, ptr %prefill.addr, align 4, !dbg !2562, !tbaa !424
  %25 = load i32, ptr %i, align 4, !dbg !2563, !tbaa !424
  %sub29 = sub nsw i32 %24, %25, !dbg !2564
  br label %cond.end31, !dbg !2558

cond.false30:                                     ; preds = %cond.end
  br label %cond.end31, !dbg !2558

cond.end31:                                       ; preds = %cond.false30, %cond.true28
  %cond32 = phi i32 [ %sub29, %cond.true28 ], [ 8, %cond.false30 ], !dbg !2558
  %call33 = call i64 @oggpack_read(ptr noundef %dest_read, i32 noundef %cond32), !dbg !2565
  %conv34 = trunc i64 %call33 to i32, !dbg !2565
  store i32 %conv34, ptr %d, align 4, !dbg !2557, !tbaa !424
  %26 = load i32, ptr %s, align 4, !dbg !2566, !tbaa !424
  %27 = load i32, ptr %d, align 4, !dbg !2568, !tbaa !424
  %cmp35 = icmp ne i32 %26, %27, !dbg !2569
  br i1 %cmp35, label %if.then37, label %if.end40, !dbg !2570

if.then37:                                        ; preds = %cond.end31
  %28 = load ptr, ptr @stderr, align 8, !dbg !2571, !tbaa !277
  %29 = load i32, ptr %prefill.addr, align 4, !dbg !2573, !tbaa !424
  %30 = load i32, ptr %i, align 4, !dbg !2574, !tbaa !424
  %div38 = sdiv i32 %30, 8, !dbg !2575
  %31 = load i32, ptr %s, align 4, !dbg !2576, !tbaa !424
  %32 = load i32, ptr %d, align 4, !dbg !2577, !tbaa !424
  %call39 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef @.str.11, i32 noundef %29, i32 noundef %div38, i32 noundef %31, i32 noundef %32), !dbg !2578
  call void @exit(i32 noundef 1) #13, !dbg !2579
  unreachable, !dbg !2579

if.end40:                                         ; preds = %cond.end31
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #11, !dbg !2580
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #11, !dbg !2580
  br label %for.inc41, !dbg !2581

for.inc41:                                        ; preds = %if.end40
  %33 = load i32, ptr %i, align 4, !dbg !2582, !tbaa !424
  %add42 = add nsw i32 %33, 8, !dbg !2582
  store i32 %add42, ptr %i, align 4, !dbg !2582, !tbaa !424
  br label %for.cond16, !dbg !2583, !llvm.loop !2584

for.end43:                                        ; preds = %for.cond16
  %34 = load i32, ptr %prefill.addr, align 4, !dbg !2586, !tbaa !424
  %conv44 = sext i32 %34 to i64, !dbg !2586
  %35 = load i64, ptr %dest_bytes, align 8, !dbg !2588, !tbaa !350
  %cmp45 = icmp slt i64 %conv44, %35, !dbg !2589
  br i1 %cmp45, label %if.then47, label %if.end57, !dbg !2590

if.then47:                                        ; preds = %for.end43
  %36 = load i64, ptr %dest_bytes, align 8, !dbg !2591, !tbaa !350
  %37 = load i32, ptr %prefill.addr, align 4, !dbg !2594, !tbaa !424
  %conv48 = sext i32 %37 to i64, !dbg !2594
  %sub49 = sub nsw i64 %36, %conv48, !dbg !2595
  %conv50 = trunc i64 %sub49 to i32, !dbg !2591
  %call51 = call i64 @oggpack_read(ptr noundef %dest_read, i32 noundef %conv50), !dbg !2596
  %cmp52 = icmp ne i64 %call51, 0, !dbg !2597
  br i1 %cmp52, label %if.then54, label %if.end56, !dbg !2598

if.then54:                                        ; preds = %if.then47
  %38 = load ptr, ptr @stderr, align 8, !dbg !2599, !tbaa !277
  %39 = load i32, ptr %prefill.addr, align 4, !dbg !2601, !tbaa !424
  %call55 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef @.str.12, i32 noundef %39), !dbg !2602
  call void @exit(i32 noundef 1) #13, !dbg !2603
  unreachable, !dbg !2603

if.end56:                                         ; preds = %if.then47
  br label %if.end57, !dbg !2604

if.end57:                                         ; preds = %if.end56, %for.end43
  %40 = load ptr, ptr %source, align 8, !dbg !2605, !tbaa !277
  %41 = load i32, ptr %copy.addr, align 4, !dbg !2606, !tbaa !424
  %conv58 = sext i32 %41 to i64, !dbg !2606
  call void @oggpack_writecopy(ptr noundef %dest_write, ptr noundef %40, i64 noundef %conv58), !dbg !2607
  %call59 = call ptr @oggpack_get_buffer(ptr noundef %dest_write), !dbg !2608
  store ptr %call59, ptr %dest, align 8, !dbg !2609, !tbaa !277
  %call60 = call i64 @oggpack_bytes(ptr noundef %dest_write), !dbg !2610
  store i64 %call60, ptr %dest_bytes, align 8, !dbg !2611, !tbaa !350
  %42 = load i64, ptr %dest_bytes, align 8, !dbg !2612, !tbaa !350
  %43 = load i32, ptr %copy.addr, align 4, !dbg !2614, !tbaa !424
  %44 = load i32, ptr %prefill.addr, align 4, !dbg !2615, !tbaa !424
  %add61 = add nsw i32 %43, %44, !dbg !2616
  %add62 = add nsw i32 %add61, 7, !dbg !2617
  %div63 = sdiv i32 %add62, 8, !dbg !2618
  %conv64 = sext i32 %div63 to i64, !dbg !2619
  %cmp65 = icmp ne i64 %42, %conv64, !dbg !2620
  br i1 %cmp65, label %if.then67, label %if.end72, !dbg !2621

if.then67:                                        ; preds = %if.end57
  %45 = load ptr, ptr @stderr, align 8, !dbg !2622, !tbaa !277
  %46 = load i64, ptr %dest_bytes, align 8, !dbg !2624, !tbaa !350
  %47 = load i32, ptr %copy.addr, align 4, !dbg !2625, !tbaa !424
  %48 = load i32, ptr %prefill.addr, align 4, !dbg !2626, !tbaa !424
  %add68 = add nsw i32 %47, %48, !dbg !2627
  %add69 = add nsw i32 %add68, 7, !dbg !2628
  %div70 = sdiv i32 %add69, 8, !dbg !2629
  %call71 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef @.str.13, i64 noundef %46, i32 noundef %div70), !dbg !2630
  call void @exit(i32 noundef 1) #13, !dbg !2631
  unreachable, !dbg !2631

if.end72:                                         ; preds = %if.end57
  %49 = load ptr, ptr %source, align 8, !dbg !2632, !tbaa !277
  %50 = load i64, ptr %source_bytes, align 8, !dbg !2633, !tbaa !350
  %conv73 = trunc i64 %50 to i32, !dbg !2633
  call void @oggpack_readinit(ptr noundef %source_read, ptr noundef %49, i32 noundef %conv73), !dbg !2634
  %51 = load ptr, ptr %dest, align 8, !dbg !2635, !tbaa !277
  %52 = load i64, ptr %dest_bytes, align 8, !dbg !2636, !tbaa !350
  %conv74 = trunc i64 %52 to i32, !dbg !2636
  call void @oggpack_readinit(ptr noundef %dest_read, ptr noundef %51, i32 noundef %conv74), !dbg !2637
  store i32 0, ptr %i, align 4, !dbg !2638, !tbaa !424
  br label %for.cond75, !dbg !2639

for.cond75:                                       ; preds = %for.inc107, %if.end72
  %53 = load i32, ptr %i, align 4, !dbg !2640, !tbaa !424
  %54 = load i32, ptr %prefill.addr, align 4, !dbg !2641, !tbaa !424
  %cmp76 = icmp slt i32 %53, %54, !dbg !2642
  br i1 %cmp76, label %for.body78, label %for.end109, !dbg !2643

for.body78:                                       ; preds = %for.cond75
  call void @llvm.lifetime.start.p0(i64 4, ptr %s79) #11, !dbg !2644
  tail call void @llvm.dbg.declare(metadata ptr %s79, metadata !2455, metadata !DIExpression()), !dbg !2645
  %55 = load i32, ptr %prefill.addr, align 4, !dbg !2646, !tbaa !424
  %56 = load i32, ptr %i, align 4, !dbg !2647, !tbaa !424
  %sub80 = sub nsw i32 %55, %56, !dbg !2648
  %cmp81 = icmp slt i32 %sub80, 8, !dbg !2649
  br i1 %cmp81, label %cond.true83, label %cond.false85, !dbg !2646

cond.true83:                                      ; preds = %for.body78
  %57 = load i32, ptr %prefill.addr, align 4, !dbg !2650, !tbaa !424
  %58 = load i32, ptr %i, align 4, !dbg !2651, !tbaa !424
  %sub84 = sub nsw i32 %57, %58, !dbg !2652
  br label %cond.end86, !dbg !2646

cond.false85:                                     ; preds = %for.body78
  br label %cond.end86, !dbg !2646

cond.end86:                                       ; preds = %cond.false85, %cond.true83
  %cond87 = phi i32 [ %sub84, %cond.true83 ], [ 8, %cond.false85 ], !dbg !2646
  %call88 = call i64 @oggpack_read(ptr noundef %source_read, i32 noundef %cond87), !dbg !2653
  %conv89 = trunc i64 %call88 to i32, !dbg !2653
  store i32 %conv89, ptr %s79, align 4, !dbg !2645, !tbaa !424
  call void @llvm.lifetime.start.p0(i64 4, ptr %d90) #11, !dbg !2654
  tail call void @llvm.dbg.declare(metadata ptr %d90, metadata !2459, metadata !DIExpression()), !dbg !2655
  %59 = load i32, ptr %prefill.addr, align 4, !dbg !2656, !tbaa !424
  %60 = load i32, ptr %i, align 4, !dbg !2657, !tbaa !424
  %sub91 = sub nsw i32 %59, %60, !dbg !2658
  %cmp92 = icmp slt i32 %sub91, 8, !dbg !2659
  br i1 %cmp92, label %cond.true94, label %cond.false96, !dbg !2656

cond.true94:                                      ; preds = %cond.end86
  %61 = load i32, ptr %prefill.addr, align 4, !dbg !2660, !tbaa !424
  %62 = load i32, ptr %i, align 4, !dbg !2661, !tbaa !424
  %sub95 = sub nsw i32 %61, %62, !dbg !2662
  br label %cond.end97, !dbg !2656

cond.false96:                                     ; preds = %cond.end86
  br label %cond.end97, !dbg !2656

cond.end97:                                       ; preds = %cond.false96, %cond.true94
  %cond98 = phi i32 [ %sub95, %cond.true94 ], [ 8, %cond.false96 ], !dbg !2656
  %call99 = call i64 @oggpack_read(ptr noundef %dest_read, i32 noundef %cond98), !dbg !2663
  %conv100 = trunc i64 %call99 to i32, !dbg !2663
  store i32 %conv100, ptr %d90, align 4, !dbg !2655, !tbaa !424
  %63 = load i32, ptr %s79, align 4, !dbg !2664, !tbaa !424
  %64 = load i32, ptr %d90, align 4, !dbg !2666, !tbaa !424
  %cmp101 = icmp ne i32 %63, %64, !dbg !2667
  br i1 %cmp101, label %if.then103, label %if.end106, !dbg !2668

if.then103:                                       ; preds = %cond.end97
  %65 = load ptr, ptr @stderr, align 8, !dbg !2669, !tbaa !277
  %66 = load i32, ptr %prefill.addr, align 4, !dbg !2671, !tbaa !424
  %67 = load i32, ptr %i, align 4, !dbg !2672, !tbaa !424
  %div104 = sdiv i32 %67, 8, !dbg !2673
  %68 = load i32, ptr %s79, align 4, !dbg !2674, !tbaa !424
  %69 = load i32, ptr %d90, align 4, !dbg !2675, !tbaa !424
  %call105 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %65, ptr noundef @.str.11, i32 noundef %66, i32 noundef %div104, i32 noundef %68, i32 noundef %69), !dbg !2676
  call void @exit(i32 noundef 1) #13, !dbg !2677
  unreachable, !dbg !2677

if.end106:                                        ; preds = %cond.end97
  call void @llvm.lifetime.end.p0(i64 4, ptr %d90) #11, !dbg !2678
  call void @llvm.lifetime.end.p0(i64 4, ptr %s79) #11, !dbg !2678
  br label %for.inc107, !dbg !2679

for.inc107:                                       ; preds = %if.end106
  %70 = load i32, ptr %i, align 4, !dbg !2680, !tbaa !424
  %add108 = add nsw i32 %70, 8, !dbg !2680
  store i32 %add108, ptr %i, align 4, !dbg !2680, !tbaa !424
  br label %for.cond75, !dbg !2681, !llvm.loop !2682

for.end109:                                       ; preds = %for.cond75
  %71 = load ptr, ptr %source, align 8, !dbg !2684, !tbaa !277
  %72 = load i64, ptr %source_bytes, align 8, !dbg !2685, !tbaa !350
  %conv110 = trunc i64 %72 to i32, !dbg !2685
  call void @oggpack_readinit(ptr noundef %source_read, ptr noundef %71, i32 noundef %conv110), !dbg !2686
  store i32 0, ptr %i, align 4, !dbg !2687, !tbaa !424
  br label %for.cond111, !dbg !2688

for.cond111:                                      ; preds = %for.inc143, %for.end109
  %73 = load i32, ptr %i, align 4, !dbg !2689, !tbaa !424
  %74 = load i32, ptr %copy.addr, align 4, !dbg !2690, !tbaa !424
  %cmp112 = icmp slt i32 %73, %74, !dbg !2691
  br i1 %cmp112, label %for.body114, label %for.end145, !dbg !2692

for.body114:                                      ; preds = %for.cond111
  call void @llvm.lifetime.start.p0(i64 4, ptr %s115) #11, !dbg !2693
  tail call void @llvm.dbg.declare(metadata ptr %s115, metadata !2460, metadata !DIExpression()), !dbg !2694
  %75 = load i32, ptr %copy.addr, align 4, !dbg !2695, !tbaa !424
  %76 = load i32, ptr %i, align 4, !dbg !2696, !tbaa !424
  %sub116 = sub nsw i32 %75, %76, !dbg !2697
  %cmp117 = icmp slt i32 %sub116, 8, !dbg !2698
  br i1 %cmp117, label %cond.true119, label %cond.false121, !dbg !2695

cond.true119:                                     ; preds = %for.body114
  %77 = load i32, ptr %copy.addr, align 4, !dbg !2699, !tbaa !424
  %78 = load i32, ptr %i, align 4, !dbg !2700, !tbaa !424
  %sub120 = sub nsw i32 %77, %78, !dbg !2701
  br label %cond.end122, !dbg !2695

cond.false121:                                    ; preds = %for.body114
  br label %cond.end122, !dbg !2695

cond.end122:                                      ; preds = %cond.false121, %cond.true119
  %cond123 = phi i32 [ %sub120, %cond.true119 ], [ 8, %cond.false121 ], !dbg !2695
  %call124 = call i64 @oggpack_read(ptr noundef %source_read, i32 noundef %cond123), !dbg !2702
  %conv125 = trunc i64 %call124 to i32, !dbg !2702
  store i32 %conv125, ptr %s115, align 4, !dbg !2694, !tbaa !424
  call void @llvm.lifetime.start.p0(i64 4, ptr %d126) #11, !dbg !2703
  tail call void @llvm.dbg.declare(metadata ptr %d126, metadata !2464, metadata !DIExpression()), !dbg !2704
  %79 = load i32, ptr %copy.addr, align 4, !dbg !2705, !tbaa !424
  %80 = load i32, ptr %i, align 4, !dbg !2706, !tbaa !424
  %sub127 = sub nsw i32 %79, %80, !dbg !2707
  %cmp128 = icmp slt i32 %sub127, 8, !dbg !2708
  br i1 %cmp128, label %cond.true130, label %cond.false132, !dbg !2705

cond.true130:                                     ; preds = %cond.end122
  %81 = load i32, ptr %copy.addr, align 4, !dbg !2709, !tbaa !424
  %82 = load i32, ptr %i, align 4, !dbg !2710, !tbaa !424
  %sub131 = sub nsw i32 %81, %82, !dbg !2711
  br label %cond.end133, !dbg !2705

cond.false132:                                    ; preds = %cond.end122
  br label %cond.end133, !dbg !2705

cond.end133:                                      ; preds = %cond.false132, %cond.true130
  %cond134 = phi i32 [ %sub131, %cond.true130 ], [ 8, %cond.false132 ], !dbg !2705
  %call135 = call i64 @oggpack_read(ptr noundef %dest_read, i32 noundef %cond134), !dbg !2712
  %conv136 = trunc i64 %call135 to i32, !dbg !2712
  store i32 %conv136, ptr %d126, align 4, !dbg !2704, !tbaa !424
  %83 = load i32, ptr %s115, align 4, !dbg !2713, !tbaa !424
  %84 = load i32, ptr %d126, align 4, !dbg !2715, !tbaa !424
  %cmp137 = icmp ne i32 %83, %84, !dbg !2716
  br i1 %cmp137, label %if.then139, label %if.end142, !dbg !2717

if.then139:                                       ; preds = %cond.end133
  %85 = load ptr, ptr @stderr, align 8, !dbg !2718, !tbaa !277
  %86 = load i32, ptr %prefill.addr, align 4, !dbg !2720, !tbaa !424
  %87 = load i32, ptr %copy.addr, align 4, !dbg !2721, !tbaa !424
  %88 = load i32, ptr %i, align 4, !dbg !2722, !tbaa !424
  %div140 = sdiv i32 %88, 8, !dbg !2723
  %89 = load i32, ptr %s115, align 4, !dbg !2724, !tbaa !424
  %90 = load i32, ptr %d126, align 4, !dbg !2725, !tbaa !424
  %call141 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %85, ptr noundef @.str.14, i32 noundef %86, i32 noundef %87, i32 noundef %div140, i32 noundef %89, i32 noundef %90), !dbg !2726
  call void @exit(i32 noundef 1) #13, !dbg !2727
  unreachable, !dbg !2727

if.end142:                                        ; preds = %cond.end133
  call void @llvm.lifetime.end.p0(i64 4, ptr %d126) #11, !dbg !2728
  call void @llvm.lifetime.end.p0(i64 4, ptr %s115) #11, !dbg !2728
  br label %for.inc143, !dbg !2729

for.inc143:                                       ; preds = %if.end142
  %91 = load i32, ptr %i, align 4, !dbg !2730, !tbaa !424
  %add144 = add nsw i32 %91, 8, !dbg !2730
  store i32 %add144, ptr %i, align 4, !dbg !2730, !tbaa !424
  br label %for.cond111, !dbg !2731, !llvm.loop !2732

for.end145:                                       ; preds = %for.cond111
  %92 = load i32, ptr %copy.addr, align 4, !dbg !2734, !tbaa !424
  %93 = load i32, ptr %prefill.addr, align 4, !dbg !2736, !tbaa !424
  %add146 = add nsw i32 %92, %93, !dbg !2737
  %conv147 = sext i32 %add146 to i64, !dbg !2734
  %94 = load i64, ptr %dest_bytes, align 8, !dbg !2738, !tbaa !350
  %cmp148 = icmp slt i64 %conv147, %94, !dbg !2739
  br i1 %cmp148, label %if.then150, label %if.end162, !dbg !2740

if.then150:                                       ; preds = %for.end145
  %95 = load i64, ptr %dest_bytes, align 8, !dbg !2741, !tbaa !350
  %96 = load i32, ptr %copy.addr, align 4, !dbg !2744, !tbaa !424
  %conv151 = sext i32 %96 to i64, !dbg !2744
  %sub152 = sub nsw i64 %95, %conv151, !dbg !2745
  %97 = load i32, ptr %prefill.addr, align 4, !dbg !2746, !tbaa !424
  %conv153 = sext i32 %97 to i64, !dbg !2746
  %sub154 = sub nsw i64 %sub152, %conv153, !dbg !2747
  %conv155 = trunc i64 %sub154 to i32, !dbg !2741
  %call156 = call i64 @oggpack_read(ptr noundef %dest_read, i32 noundef %conv155), !dbg !2748
  %cmp157 = icmp ne i64 %call156, 0, !dbg !2749
  br i1 %cmp157, label %if.then159, label %if.end161, !dbg !2750

if.then159:                                       ; preds = %if.then150
  %98 = load ptr, ptr @stderr, align 8, !dbg !2751, !tbaa !277
  %99 = load i32, ptr %prefill.addr, align 4, !dbg !2753, !tbaa !424
  %100 = load i32, ptr %copy.addr, align 4, !dbg !2754, !tbaa !424
  %call160 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %98, ptr noundef @.str.15, i32 noundef %99, i32 noundef %100), !dbg !2755
  call void @exit(i32 noundef 1) #13, !dbg !2756
  unreachable, !dbg !2756

if.end161:                                        ; preds = %if.then150
  br label %if.end162, !dbg !2757

if.end162:                                        ; preds = %if.end161, %for.end145
  call void @oggpack_writeclear(ptr noundef %source_write), !dbg !2758
  call void @oggpack_writeclear(ptr noundef %dest_write), !dbg !2759
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11, !dbg !2760
  call void @llvm.lifetime.end.p0(i64 8, ptr %dest_bytes) #11, !dbg !2760
  call void @llvm.lifetime.end.p0(i64 8, ptr %source_bytes) #11, !dbg !2760
  call void @llvm.lifetime.end.p0(i64 8, ptr %dest) #11, !dbg !2760
  call void @llvm.lifetime.end.p0(i64 8, ptr %source) #11, !dbg !2760
  call void @llvm.lifetime.end.p0(i64 40, ptr %dest_read) #11, !dbg !2760
  call void @llvm.lifetime.end.p0(i64 40, ptr %source_read) #11, !dbg !2760
  call void @llvm.lifetime.end.p0(i64 40, ptr %dest_write) #11, !dbg !2760
  call void @llvm.lifetime.end.p0(i64 40, ptr %source_write) #11, !dbg !2760
  ret void, !dbg !2760
}

; Function Attrs: nounwind uwtable
define dso_local void @copytestB(i32 noundef %prefill, i32 noundef %copy) #0 !dbg !2761 {
entry:
  %prefill.addr = alloca i32, align 4
  %copy.addr = alloca i32, align 4
  %source_write = alloca %struct.oggpack_buffer, align 8
  %dest_write = alloca %struct.oggpack_buffer, align 8
  %source_read = alloca %struct.oggpack_buffer, align 8
  %dest_read = alloca %struct.oggpack_buffer, align 8
  %source = alloca ptr, align 8
  %dest = alloca ptr, align 8
  %source_bytes = alloca i64, align 8
  %dest_bytes = alloca i64, align 8
  %i = alloca i32, align 4
  %s = alloca i32, align 4
  %d = alloca i32, align 4
  %s79 = alloca i32, align 4
  %d90 = alloca i32, align 4
  %s115 = alloca i32, align 4
  %d126 = alloca i32, align 4
  store i32 %prefill, ptr %prefill.addr, align 4, !tbaa !424
  tail call void @llvm.dbg.declare(metadata ptr %prefill.addr, metadata !2763, metadata !DIExpression()), !dbg !2789
  store i32 %copy, ptr %copy.addr, align 4, !tbaa !424
  tail call void @llvm.dbg.declare(metadata ptr %copy.addr, metadata !2764, metadata !DIExpression()), !dbg !2790
  call void @llvm.lifetime.start.p0(i64 40, ptr %source_write) #11, !dbg !2791
  tail call void @llvm.dbg.declare(metadata ptr %source_write, metadata !2765, metadata !DIExpression()), !dbg !2792
  call void @llvm.lifetime.start.p0(i64 40, ptr %dest_write) #11, !dbg !2793
  tail call void @llvm.dbg.declare(metadata ptr %dest_write, metadata !2766, metadata !DIExpression()), !dbg !2794
  call void @llvm.lifetime.start.p0(i64 40, ptr %source_read) #11, !dbg !2795
  tail call void @llvm.dbg.declare(metadata ptr %source_read, metadata !2767, metadata !DIExpression()), !dbg !2796
  call void @llvm.lifetime.start.p0(i64 40, ptr %dest_read) #11, !dbg !2797
  tail call void @llvm.dbg.declare(metadata ptr %dest_read, metadata !2768, metadata !DIExpression()), !dbg !2798
  call void @llvm.lifetime.start.p0(i64 8, ptr %source) #11, !dbg !2799
  tail call void @llvm.dbg.declare(metadata ptr %source, metadata !2769, metadata !DIExpression()), !dbg !2800
  call void @llvm.lifetime.start.p0(i64 8, ptr %dest) #11, !dbg !2801
  tail call void @llvm.dbg.declare(metadata ptr %dest, metadata !2770, metadata !DIExpression()), !dbg !2802
  call void @llvm.lifetime.start.p0(i64 8, ptr %source_bytes) #11, !dbg !2803
  tail call void @llvm.dbg.declare(metadata ptr %source_bytes, metadata !2771, metadata !DIExpression()), !dbg !2804
  call void @llvm.lifetime.start.p0(i64 8, ptr %dest_bytes) #11, !dbg !2803
  tail call void @llvm.dbg.declare(metadata ptr %dest_bytes, metadata !2772, metadata !DIExpression()), !dbg !2805
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11, !dbg !2806
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2773, metadata !DIExpression()), !dbg !2807
  call void @oggpackB_writeinit(ptr noundef %source_write), !dbg !2808
  call void @oggpackB_writeinit(ptr noundef %dest_write), !dbg !2809
  store i32 0, ptr %i, align 4, !dbg !2810, !tbaa !424
  br label %for.cond, !dbg !2812

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !2813, !tbaa !424
  %1 = load i32, ptr %prefill.addr, align 4, !dbg !2815, !tbaa !424
  %2 = load i32, ptr %copy.addr, align 4, !dbg !2816, !tbaa !424
  %add = add nsw i32 %1, %2, !dbg !2817
  %add1 = add nsw i32 %add, 7, !dbg !2818
  %div = sdiv i32 %add1, 8, !dbg !2819
  %cmp = icmp slt i32 %0, %div, !dbg !2820
  br i1 %cmp, label %for.body, label %for.end, !dbg !2821

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4, !dbg !2822, !tbaa !424
  %xor = xor i32 %3, 90, !dbg !2823
  %and = and i32 %xor, 255, !dbg !2824
  %conv = sext i32 %and to i64, !dbg !2825
  call void @oggpackB_write(ptr noundef %source_write, i64 noundef %conv, i32 noundef 8), !dbg !2826
  br label %for.inc, !dbg !2826

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !dbg !2827, !tbaa !424
  %inc = add nsw i32 %4, 1, !dbg !2827
  store i32 %inc, ptr %i, align 4, !dbg !2827, !tbaa !424
  br label %for.cond, !dbg !2828, !llvm.loop !2829

for.end:                                          ; preds = %for.cond
  %call = call ptr @oggpackB_get_buffer(ptr noundef %source_write), !dbg !2831
  store ptr %call, ptr %source, align 8, !dbg !2832, !tbaa !277
  %call2 = call i64 @oggpackB_bytes(ptr noundef %source_write), !dbg !2833
  store i64 %call2, ptr %source_bytes, align 8, !dbg !2834, !tbaa !350
  %5 = load ptr, ptr %source, align 8, !dbg !2835, !tbaa !277
  %6 = load i32, ptr %prefill.addr, align 4, !dbg !2836, !tbaa !424
  %conv3 = sext i32 %6 to i64, !dbg !2836
  call void @oggpackB_writecopy(ptr noundef %dest_write, ptr noundef %5, i64 noundef %conv3), !dbg !2837
  %call4 = call ptr @oggpackB_get_buffer(ptr noundef %dest_write), !dbg !2838
  store ptr %call4, ptr %dest, align 8, !dbg !2839, !tbaa !277
  %call5 = call i64 @oggpackB_bytes(ptr noundef %dest_write), !dbg !2840
  store i64 %call5, ptr %dest_bytes, align 8, !dbg !2841, !tbaa !350
  %7 = load i64, ptr %dest_bytes, align 8, !dbg !2842, !tbaa !350
  %8 = load i32, ptr %prefill.addr, align 4, !dbg !2844, !tbaa !424
  %add6 = add nsw i32 %8, 7, !dbg !2845
  %div7 = sdiv i32 %add6, 8, !dbg !2846
  %conv8 = sext i32 %div7 to i64, !dbg !2847
  %cmp9 = icmp ne i64 %7, %conv8, !dbg !2848
  br i1 %cmp9, label %if.then, label %if.end, !dbg !2849

if.then:                                          ; preds = %for.end
  %9 = load ptr, ptr @stderr, align 8, !dbg !2850, !tbaa !277
  %10 = load i64, ptr %dest_bytes, align 8, !dbg !2852, !tbaa !350
  %11 = load i32, ptr %prefill.addr, align 4, !dbg !2853, !tbaa !424
  %add11 = add nsw i32 %11, 7, !dbg !2854
  %div12 = sdiv i32 %add11, 8, !dbg !2855
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.10, i64 noundef %10, i32 noundef %div12), !dbg !2856
  call void @exit(i32 noundef 1) #13, !dbg !2857
  unreachable, !dbg !2857

if.end:                                           ; preds = %for.end
  %12 = load ptr, ptr %source, align 8, !dbg !2858, !tbaa !277
  %13 = load i64, ptr %source_bytes, align 8, !dbg !2859, !tbaa !350
  %conv14 = trunc i64 %13 to i32, !dbg !2859
  call void @oggpackB_readinit(ptr noundef %source_read, ptr noundef %12, i32 noundef %conv14), !dbg !2860
  %14 = load ptr, ptr %dest, align 8, !dbg !2861, !tbaa !277
  %15 = load i64, ptr %dest_bytes, align 8, !dbg !2862, !tbaa !350
  %conv15 = trunc i64 %15 to i32, !dbg !2862
  call void @oggpackB_readinit(ptr noundef %dest_read, ptr noundef %14, i32 noundef %conv15), !dbg !2863
  store i32 0, ptr %i, align 4, !dbg !2864, !tbaa !424
  br label %for.cond16, !dbg !2865

for.cond16:                                       ; preds = %for.inc41, %if.end
  %16 = load i32, ptr %i, align 4, !dbg !2866, !tbaa !424
  %17 = load i32, ptr %prefill.addr, align 4, !dbg !2867, !tbaa !424
  %cmp17 = icmp slt i32 %16, %17, !dbg !2868
  br i1 %cmp17, label %for.body19, label %for.end43, !dbg !2869

for.body19:                                       ; preds = %for.cond16
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #11, !dbg !2870
  tail call void @llvm.dbg.declare(metadata ptr %s, metadata !2774, metadata !DIExpression()), !dbg !2871
  %18 = load i32, ptr %prefill.addr, align 4, !dbg !2872, !tbaa !424
  %19 = load i32, ptr %i, align 4, !dbg !2873, !tbaa !424
  %sub = sub nsw i32 %18, %19, !dbg !2874
  %cmp20 = icmp slt i32 %sub, 8, !dbg !2875
  br i1 %cmp20, label %cond.true, label %cond.false, !dbg !2872

cond.true:                                        ; preds = %for.body19
  %20 = load i32, ptr %prefill.addr, align 4, !dbg !2876, !tbaa !424
  %21 = load i32, ptr %i, align 4, !dbg !2877, !tbaa !424
  %sub22 = sub nsw i32 %20, %21, !dbg !2878
  br label %cond.end, !dbg !2872

cond.false:                                       ; preds = %for.body19
  br label %cond.end, !dbg !2872

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub22, %cond.true ], [ 8, %cond.false ], !dbg !2872
  %call23 = call i64 @oggpackB_read(ptr noundef %source_read, i32 noundef %cond), !dbg !2879
  %conv24 = trunc i64 %call23 to i32, !dbg !2879
  store i32 %conv24, ptr %s, align 4, !dbg !2871, !tbaa !424
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #11, !dbg !2880
  tail call void @llvm.dbg.declare(metadata ptr %d, metadata !2778, metadata !DIExpression()), !dbg !2881
  %22 = load i32, ptr %prefill.addr, align 4, !dbg !2882, !tbaa !424
  %23 = load i32, ptr %i, align 4, !dbg !2883, !tbaa !424
  %sub25 = sub nsw i32 %22, %23, !dbg !2884
  %cmp26 = icmp slt i32 %sub25, 8, !dbg !2885
  br i1 %cmp26, label %cond.true28, label %cond.false30, !dbg !2882

cond.true28:                                      ; preds = %cond.end
  %24 = load i32, ptr %prefill.addr, align 4, !dbg !2886, !tbaa !424
  %25 = load i32, ptr %i, align 4, !dbg !2887, !tbaa !424
  %sub29 = sub nsw i32 %24, %25, !dbg !2888
  br label %cond.end31, !dbg !2882

cond.false30:                                     ; preds = %cond.end
  br label %cond.end31, !dbg !2882

cond.end31:                                       ; preds = %cond.false30, %cond.true28
  %cond32 = phi i32 [ %sub29, %cond.true28 ], [ 8, %cond.false30 ], !dbg !2882
  %call33 = call i64 @oggpackB_read(ptr noundef %dest_read, i32 noundef %cond32), !dbg !2889
  %conv34 = trunc i64 %call33 to i32, !dbg !2889
  store i32 %conv34, ptr %d, align 4, !dbg !2881, !tbaa !424
  %26 = load i32, ptr %s, align 4, !dbg !2890, !tbaa !424
  %27 = load i32, ptr %d, align 4, !dbg !2892, !tbaa !424
  %cmp35 = icmp ne i32 %26, %27, !dbg !2893
  br i1 %cmp35, label %if.then37, label %if.end40, !dbg !2894

if.then37:                                        ; preds = %cond.end31
  %28 = load ptr, ptr @stderr, align 8, !dbg !2895, !tbaa !277
  %29 = load i32, ptr %prefill.addr, align 4, !dbg !2897, !tbaa !424
  %30 = load i32, ptr %i, align 4, !dbg !2898, !tbaa !424
  %div38 = sdiv i32 %30, 8, !dbg !2899
  %31 = load i32, ptr %s, align 4, !dbg !2900, !tbaa !424
  %32 = load i32, ptr %d, align 4, !dbg !2901, !tbaa !424
  %call39 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef @.str.11, i32 noundef %29, i32 noundef %div38, i32 noundef %31, i32 noundef %32), !dbg !2902
  call void @exit(i32 noundef 1) #13, !dbg !2903
  unreachable, !dbg !2903

if.end40:                                         ; preds = %cond.end31
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #11, !dbg !2904
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #11, !dbg !2904
  br label %for.inc41, !dbg !2905

for.inc41:                                        ; preds = %if.end40
  %33 = load i32, ptr %i, align 4, !dbg !2906, !tbaa !424
  %add42 = add nsw i32 %33, 8, !dbg !2906
  store i32 %add42, ptr %i, align 4, !dbg !2906, !tbaa !424
  br label %for.cond16, !dbg !2907, !llvm.loop !2908

for.end43:                                        ; preds = %for.cond16
  %34 = load i32, ptr %prefill.addr, align 4, !dbg !2910, !tbaa !424
  %conv44 = sext i32 %34 to i64, !dbg !2910
  %35 = load i64, ptr %dest_bytes, align 8, !dbg !2912, !tbaa !350
  %cmp45 = icmp slt i64 %conv44, %35, !dbg !2913
  br i1 %cmp45, label %if.then47, label %if.end57, !dbg !2914

if.then47:                                        ; preds = %for.end43
  %36 = load i64, ptr %dest_bytes, align 8, !dbg !2915, !tbaa !350
  %37 = load i32, ptr %prefill.addr, align 4, !dbg !2918, !tbaa !424
  %conv48 = sext i32 %37 to i64, !dbg !2918
  %sub49 = sub nsw i64 %36, %conv48, !dbg !2919
  %conv50 = trunc i64 %sub49 to i32, !dbg !2915
  %call51 = call i64 @oggpackB_read(ptr noundef %dest_read, i32 noundef %conv50), !dbg !2920
  %cmp52 = icmp ne i64 %call51, 0, !dbg !2921
  br i1 %cmp52, label %if.then54, label %if.end56, !dbg !2922

if.then54:                                        ; preds = %if.then47
  %38 = load ptr, ptr @stderr, align 8, !dbg !2923, !tbaa !277
  %39 = load i32, ptr %prefill.addr, align 4, !dbg !2925, !tbaa !424
  %call55 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef @.str.12, i32 noundef %39), !dbg !2926
  call void @exit(i32 noundef 1) #13, !dbg !2927
  unreachable, !dbg !2927

if.end56:                                         ; preds = %if.then47
  br label %if.end57, !dbg !2928

if.end57:                                         ; preds = %if.end56, %for.end43
  %40 = load ptr, ptr %source, align 8, !dbg !2929, !tbaa !277
  %41 = load i32, ptr %copy.addr, align 4, !dbg !2930, !tbaa !424
  %conv58 = sext i32 %41 to i64, !dbg !2930
  call void @oggpackB_writecopy(ptr noundef %dest_write, ptr noundef %40, i64 noundef %conv58), !dbg !2931
  %call59 = call ptr @oggpackB_get_buffer(ptr noundef %dest_write), !dbg !2932
  store ptr %call59, ptr %dest, align 8, !dbg !2933, !tbaa !277
  %call60 = call i64 @oggpackB_bytes(ptr noundef %dest_write), !dbg !2934
  store i64 %call60, ptr %dest_bytes, align 8, !dbg !2935, !tbaa !350
  %42 = load i64, ptr %dest_bytes, align 8, !dbg !2936, !tbaa !350
  %43 = load i32, ptr %copy.addr, align 4, !dbg !2938, !tbaa !424
  %44 = load i32, ptr %prefill.addr, align 4, !dbg !2939, !tbaa !424
  %add61 = add nsw i32 %43, %44, !dbg !2940
  %add62 = add nsw i32 %add61, 7, !dbg !2941
  %div63 = sdiv i32 %add62, 8, !dbg !2942
  %conv64 = sext i32 %div63 to i64, !dbg !2943
  %cmp65 = icmp ne i64 %42, %conv64, !dbg !2944
  br i1 %cmp65, label %if.then67, label %if.end72, !dbg !2945

if.then67:                                        ; preds = %if.end57
  %45 = load ptr, ptr @stderr, align 8, !dbg !2946, !tbaa !277
  %46 = load i64, ptr %dest_bytes, align 8, !dbg !2948, !tbaa !350
  %47 = load i32, ptr %copy.addr, align 4, !dbg !2949, !tbaa !424
  %48 = load i32, ptr %prefill.addr, align 4, !dbg !2950, !tbaa !424
  %add68 = add nsw i32 %47, %48, !dbg !2951
  %add69 = add nsw i32 %add68, 7, !dbg !2952
  %div70 = sdiv i32 %add69, 8, !dbg !2953
  %call71 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef @.str.13, i64 noundef %46, i32 noundef %div70), !dbg !2954
  call void @exit(i32 noundef 1) #13, !dbg !2955
  unreachable, !dbg !2955

if.end72:                                         ; preds = %if.end57
  %49 = load ptr, ptr %source, align 8, !dbg !2956, !tbaa !277
  %50 = load i64, ptr %source_bytes, align 8, !dbg !2957, !tbaa !350
  %conv73 = trunc i64 %50 to i32, !dbg !2957
  call void @oggpackB_readinit(ptr noundef %source_read, ptr noundef %49, i32 noundef %conv73), !dbg !2958
  %51 = load ptr, ptr %dest, align 8, !dbg !2959, !tbaa !277
  %52 = load i64, ptr %dest_bytes, align 8, !dbg !2960, !tbaa !350
  %conv74 = trunc i64 %52 to i32, !dbg !2960
  call void @oggpackB_readinit(ptr noundef %dest_read, ptr noundef %51, i32 noundef %conv74), !dbg !2961
  store i32 0, ptr %i, align 4, !dbg !2962, !tbaa !424
  br label %for.cond75, !dbg !2963

for.cond75:                                       ; preds = %for.inc107, %if.end72
  %53 = load i32, ptr %i, align 4, !dbg !2964, !tbaa !424
  %54 = load i32, ptr %prefill.addr, align 4, !dbg !2965, !tbaa !424
  %cmp76 = icmp slt i32 %53, %54, !dbg !2966
  br i1 %cmp76, label %for.body78, label %for.end109, !dbg !2967

for.body78:                                       ; preds = %for.cond75
  call void @llvm.lifetime.start.p0(i64 4, ptr %s79) #11, !dbg !2968
  tail call void @llvm.dbg.declare(metadata ptr %s79, metadata !2779, metadata !DIExpression()), !dbg !2969
  %55 = load i32, ptr %prefill.addr, align 4, !dbg !2970, !tbaa !424
  %56 = load i32, ptr %i, align 4, !dbg !2971, !tbaa !424
  %sub80 = sub nsw i32 %55, %56, !dbg !2972
  %cmp81 = icmp slt i32 %sub80, 8, !dbg !2973
  br i1 %cmp81, label %cond.true83, label %cond.false85, !dbg !2970

cond.true83:                                      ; preds = %for.body78
  %57 = load i32, ptr %prefill.addr, align 4, !dbg !2974, !tbaa !424
  %58 = load i32, ptr %i, align 4, !dbg !2975, !tbaa !424
  %sub84 = sub nsw i32 %57, %58, !dbg !2976
  br label %cond.end86, !dbg !2970

cond.false85:                                     ; preds = %for.body78
  br label %cond.end86, !dbg !2970

cond.end86:                                       ; preds = %cond.false85, %cond.true83
  %cond87 = phi i32 [ %sub84, %cond.true83 ], [ 8, %cond.false85 ], !dbg !2970
  %call88 = call i64 @oggpackB_read(ptr noundef %source_read, i32 noundef %cond87), !dbg !2977
  %conv89 = trunc i64 %call88 to i32, !dbg !2977
  store i32 %conv89, ptr %s79, align 4, !dbg !2969, !tbaa !424
  call void @llvm.lifetime.start.p0(i64 4, ptr %d90) #11, !dbg !2978
  tail call void @llvm.dbg.declare(metadata ptr %d90, metadata !2783, metadata !DIExpression()), !dbg !2979
  %59 = load i32, ptr %prefill.addr, align 4, !dbg !2980, !tbaa !424
  %60 = load i32, ptr %i, align 4, !dbg !2981, !tbaa !424
  %sub91 = sub nsw i32 %59, %60, !dbg !2982
  %cmp92 = icmp slt i32 %sub91, 8, !dbg !2983
  br i1 %cmp92, label %cond.true94, label %cond.false96, !dbg !2980

cond.true94:                                      ; preds = %cond.end86
  %61 = load i32, ptr %prefill.addr, align 4, !dbg !2984, !tbaa !424
  %62 = load i32, ptr %i, align 4, !dbg !2985, !tbaa !424
  %sub95 = sub nsw i32 %61, %62, !dbg !2986
  br label %cond.end97, !dbg !2980

cond.false96:                                     ; preds = %cond.end86
  br label %cond.end97, !dbg !2980

cond.end97:                                       ; preds = %cond.false96, %cond.true94
  %cond98 = phi i32 [ %sub95, %cond.true94 ], [ 8, %cond.false96 ], !dbg !2980
  %call99 = call i64 @oggpackB_read(ptr noundef %dest_read, i32 noundef %cond98), !dbg !2987
  %conv100 = trunc i64 %call99 to i32, !dbg !2987
  store i32 %conv100, ptr %d90, align 4, !dbg !2979, !tbaa !424
  %63 = load i32, ptr %s79, align 4, !dbg !2988, !tbaa !424
  %64 = load i32, ptr %d90, align 4, !dbg !2990, !tbaa !424
  %cmp101 = icmp ne i32 %63, %64, !dbg !2991
  br i1 %cmp101, label %if.then103, label %if.end106, !dbg !2992

if.then103:                                       ; preds = %cond.end97
  %65 = load ptr, ptr @stderr, align 8, !dbg !2993, !tbaa !277
  %66 = load i32, ptr %prefill.addr, align 4, !dbg !2995, !tbaa !424
  %67 = load i32, ptr %i, align 4, !dbg !2996, !tbaa !424
  %div104 = sdiv i32 %67, 8, !dbg !2997
  %68 = load i32, ptr %s79, align 4, !dbg !2998, !tbaa !424
  %69 = load i32, ptr %d90, align 4, !dbg !2999, !tbaa !424
  %call105 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %65, ptr noundef @.str.11, i32 noundef %66, i32 noundef %div104, i32 noundef %68, i32 noundef %69), !dbg !3000
  call void @exit(i32 noundef 1) #13, !dbg !3001
  unreachable, !dbg !3001

if.end106:                                        ; preds = %cond.end97
  call void @llvm.lifetime.end.p0(i64 4, ptr %d90) #11, !dbg !3002
  call void @llvm.lifetime.end.p0(i64 4, ptr %s79) #11, !dbg !3002
  br label %for.inc107, !dbg !3003

for.inc107:                                       ; preds = %if.end106
  %70 = load i32, ptr %i, align 4, !dbg !3004, !tbaa !424
  %add108 = add nsw i32 %70, 8, !dbg !3004
  store i32 %add108, ptr %i, align 4, !dbg !3004, !tbaa !424
  br label %for.cond75, !dbg !3005, !llvm.loop !3006

for.end109:                                       ; preds = %for.cond75
  %71 = load ptr, ptr %source, align 8, !dbg !3008, !tbaa !277
  %72 = load i64, ptr %source_bytes, align 8, !dbg !3009, !tbaa !350
  %conv110 = trunc i64 %72 to i32, !dbg !3009
  call void @oggpackB_readinit(ptr noundef %source_read, ptr noundef %71, i32 noundef %conv110), !dbg !3010
  store i32 0, ptr %i, align 4, !dbg !3011, !tbaa !424
  br label %for.cond111, !dbg !3012

for.cond111:                                      ; preds = %for.inc143, %for.end109
  %73 = load i32, ptr %i, align 4, !dbg !3013, !tbaa !424
  %74 = load i32, ptr %copy.addr, align 4, !dbg !3014, !tbaa !424
  %cmp112 = icmp slt i32 %73, %74, !dbg !3015
  br i1 %cmp112, label %for.body114, label %for.end145, !dbg !3016

for.body114:                                      ; preds = %for.cond111
  call void @llvm.lifetime.start.p0(i64 4, ptr %s115) #11, !dbg !3017
  tail call void @llvm.dbg.declare(metadata ptr %s115, metadata !2784, metadata !DIExpression()), !dbg !3018
  %75 = load i32, ptr %copy.addr, align 4, !dbg !3019, !tbaa !424
  %76 = load i32, ptr %i, align 4, !dbg !3020, !tbaa !424
  %sub116 = sub nsw i32 %75, %76, !dbg !3021
  %cmp117 = icmp slt i32 %sub116, 8, !dbg !3022
  br i1 %cmp117, label %cond.true119, label %cond.false121, !dbg !3019

cond.true119:                                     ; preds = %for.body114
  %77 = load i32, ptr %copy.addr, align 4, !dbg !3023, !tbaa !424
  %78 = load i32, ptr %i, align 4, !dbg !3024, !tbaa !424
  %sub120 = sub nsw i32 %77, %78, !dbg !3025
  br label %cond.end122, !dbg !3019

cond.false121:                                    ; preds = %for.body114
  br label %cond.end122, !dbg !3019

cond.end122:                                      ; preds = %cond.false121, %cond.true119
  %cond123 = phi i32 [ %sub120, %cond.true119 ], [ 8, %cond.false121 ], !dbg !3019
  %call124 = call i64 @oggpackB_read(ptr noundef %source_read, i32 noundef %cond123), !dbg !3026
  %conv125 = trunc i64 %call124 to i32, !dbg !3026
  store i32 %conv125, ptr %s115, align 4, !dbg !3018, !tbaa !424
  call void @llvm.lifetime.start.p0(i64 4, ptr %d126) #11, !dbg !3027
  tail call void @llvm.dbg.declare(metadata ptr %d126, metadata !2788, metadata !DIExpression()), !dbg !3028
  %79 = load i32, ptr %copy.addr, align 4, !dbg !3029, !tbaa !424
  %80 = load i32, ptr %i, align 4, !dbg !3030, !tbaa !424
  %sub127 = sub nsw i32 %79, %80, !dbg !3031
  %cmp128 = icmp slt i32 %sub127, 8, !dbg !3032
  br i1 %cmp128, label %cond.true130, label %cond.false132, !dbg !3029

cond.true130:                                     ; preds = %cond.end122
  %81 = load i32, ptr %copy.addr, align 4, !dbg !3033, !tbaa !424
  %82 = load i32, ptr %i, align 4, !dbg !3034, !tbaa !424
  %sub131 = sub nsw i32 %81, %82, !dbg !3035
  br label %cond.end133, !dbg !3029

cond.false132:                                    ; preds = %cond.end122
  br label %cond.end133, !dbg !3029

cond.end133:                                      ; preds = %cond.false132, %cond.true130
  %cond134 = phi i32 [ %sub131, %cond.true130 ], [ 8, %cond.false132 ], !dbg !3029
  %call135 = call i64 @oggpackB_read(ptr noundef %dest_read, i32 noundef %cond134), !dbg !3036
  %conv136 = trunc i64 %call135 to i32, !dbg !3036
  store i32 %conv136, ptr %d126, align 4, !dbg !3028, !tbaa !424
  %83 = load i32, ptr %s115, align 4, !dbg !3037, !tbaa !424
  %84 = load i32, ptr %d126, align 4, !dbg !3039, !tbaa !424
  %cmp137 = icmp ne i32 %83, %84, !dbg !3040
  br i1 %cmp137, label %if.then139, label %if.end142, !dbg !3041

if.then139:                                       ; preds = %cond.end133
  %85 = load ptr, ptr @stderr, align 8, !dbg !3042, !tbaa !277
  %86 = load i32, ptr %prefill.addr, align 4, !dbg !3044, !tbaa !424
  %87 = load i32, ptr %copy.addr, align 4, !dbg !3045, !tbaa !424
  %88 = load i32, ptr %i, align 4, !dbg !3046, !tbaa !424
  %div140 = sdiv i32 %88, 8, !dbg !3047
  %89 = load i32, ptr %s115, align 4, !dbg !3048, !tbaa !424
  %90 = load i32, ptr %d126, align 4, !dbg !3049, !tbaa !424
  %call141 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %85, ptr noundef @.str.14, i32 noundef %86, i32 noundef %87, i32 noundef %div140, i32 noundef %89, i32 noundef %90), !dbg !3050
  call void @exit(i32 noundef 1) #13, !dbg !3051
  unreachable, !dbg !3051

if.end142:                                        ; preds = %cond.end133
  call void @llvm.lifetime.end.p0(i64 4, ptr %d126) #11, !dbg !3052
  call void @llvm.lifetime.end.p0(i64 4, ptr %s115) #11, !dbg !3052
  br label %for.inc143, !dbg !3053

for.inc143:                                       ; preds = %if.end142
  %91 = load i32, ptr %i, align 4, !dbg !3054, !tbaa !424
  %add144 = add nsw i32 %91, 8, !dbg !3054
  store i32 %add144, ptr %i, align 4, !dbg !3054, !tbaa !424
  br label %for.cond111, !dbg !3055, !llvm.loop !3056

for.end145:                                       ; preds = %for.cond111
  %92 = load i32, ptr %copy.addr, align 4, !dbg !3058, !tbaa !424
  %93 = load i32, ptr %prefill.addr, align 4, !dbg !3060, !tbaa !424
  %add146 = add nsw i32 %92, %93, !dbg !3061
  %conv147 = sext i32 %add146 to i64, !dbg !3058
  %94 = load i64, ptr %dest_bytes, align 8, !dbg !3062, !tbaa !350
  %cmp148 = icmp slt i64 %conv147, %94, !dbg !3063
  br i1 %cmp148, label %if.then150, label %if.end162, !dbg !3064

if.then150:                                       ; preds = %for.end145
  %95 = load i64, ptr %dest_bytes, align 8, !dbg !3065, !tbaa !350
  %96 = load i32, ptr %copy.addr, align 4, !dbg !3068, !tbaa !424
  %conv151 = sext i32 %96 to i64, !dbg !3068
  %sub152 = sub nsw i64 %95, %conv151, !dbg !3069
  %97 = load i32, ptr %prefill.addr, align 4, !dbg !3070, !tbaa !424
  %conv153 = sext i32 %97 to i64, !dbg !3070
  %sub154 = sub nsw i64 %sub152, %conv153, !dbg !3071
  %conv155 = trunc i64 %sub154 to i32, !dbg !3065
  %call156 = call i64 @oggpackB_read(ptr noundef %dest_read, i32 noundef %conv155), !dbg !3072
  %cmp157 = icmp ne i64 %call156, 0, !dbg !3073
  br i1 %cmp157, label %if.then159, label %if.end161, !dbg !3074

if.then159:                                       ; preds = %if.then150
  %98 = load ptr, ptr @stderr, align 8, !dbg !3075, !tbaa !277
  %99 = load i32, ptr %prefill.addr, align 4, !dbg !3077, !tbaa !424
  %100 = load i32, ptr %copy.addr, align 4, !dbg !3078, !tbaa !424
  %call160 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %98, ptr noundef @.str.15, i32 noundef %99, i32 noundef %100), !dbg !3079
  call void @exit(i32 noundef 1) #13, !dbg !3080
  unreachable, !dbg !3080

if.end161:                                        ; preds = %if.then150
  br label %if.end162, !dbg !3081

if.end162:                                        ; preds = %if.end161, %for.end145
  call void @oggpackB_writeclear(ptr noundef %source_write), !dbg !3082
  call void @oggpackB_writeclear(ptr noundef %dest_write), !dbg !3083
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11, !dbg !3084
  call void @llvm.lifetime.end.p0(i64 8, ptr %dest_bytes) #11, !dbg !3084
  call void @llvm.lifetime.end.p0(i64 8, ptr %source_bytes) #11, !dbg !3084
  call void @llvm.lifetime.end.p0(i64 8, ptr %dest) #11, !dbg !3084
  call void @llvm.lifetime.end.p0(i64 8, ptr %source) #11, !dbg !3084
  call void @llvm.lifetime.end.p0(i64 40, ptr %dest_read) #11, !dbg !3084
  call void @llvm.lifetime.end.p0(i64 40, ptr %source_read) #11, !dbg !3084
  call void @llvm.lifetime.end.p0(i64 40, ptr %dest_write) #11, !dbg !3084
  call void @llvm.lifetime.end.p0(i64 40, ptr %source_write) #11, !dbg !3084
  ret void, !dbg !3084
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !84 {
entry:
  %retval = alloca i32, align 4
  %buffer = alloca ptr, align 8
  %bytes = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %test1size = alloca i32, align 4
  %test2size = alloca i32, align 4
  %test3size = alloca i32, align 4
  %onesize = alloca i32, align 4
  %twosize = alloca i32, align 4
  %threesize = alloca i32, align 4
  %foursize = alloca i32, align 4
  %fivesize = alloca i32, align 4
  %sixsize = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer) #11, !dbg !3085
  tail call void @llvm.dbg.declare(metadata ptr %buffer, metadata !88, metadata !DIExpression()), !dbg !3086
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #11, !dbg !3087
  tail call void @llvm.dbg.declare(metadata ptr %bytes, metadata !89, metadata !DIExpression()), !dbg !3088
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11, !dbg !3087
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !91, metadata !DIExpression()), !dbg !3089
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #11, !dbg !3087
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !92, metadata !DIExpression()), !dbg !3090
  call void @llvm.lifetime.start.p0(i64 4, ptr %test1size) #11, !dbg !3091
  tail call void @llvm.dbg.declare(metadata ptr %test1size, metadata !93, metadata !DIExpression()), !dbg !3092
  store i32 43, ptr %test1size, align 4, !dbg !3092, !tbaa !424
  call void @llvm.lifetime.start.p0(i64 4, ptr %test2size) #11, !dbg !3093
  tail call void @llvm.dbg.declare(metadata ptr %test2size, metadata !94, metadata !DIExpression()), !dbg !3094
  store i32 21, ptr %test2size, align 4, !dbg !3094, !tbaa !424
  call void @llvm.lifetime.start.p0(i64 4, ptr %test3size) #11, !dbg !3095
  tail call void @llvm.dbg.declare(metadata ptr %test3size, metadata !95, metadata !DIExpression()), !dbg !3096
  store i32 56, ptr %test3size, align 4, !dbg !3096, !tbaa !424
  call void @llvm.lifetime.start.p0(i64 4, ptr %onesize) #11, !dbg !3097
  tail call void @llvm.dbg.declare(metadata ptr %onesize, metadata !96, metadata !DIExpression()), !dbg !3098
  store i32 33, ptr %onesize, align 4, !dbg !3098, !tbaa !424
  call void @llvm.lifetime.start.p0(i64 4, ptr %twosize) #11, !dbg !3099
  tail call void @llvm.dbg.declare(metadata ptr %twosize, metadata !97, metadata !DIExpression()), !dbg !3100
  store i32 6, ptr %twosize, align 4, !dbg !3100, !tbaa !424
  call void @llvm.lifetime.start.p0(i64 4, ptr %threesize) #11, !dbg !3101
  tail call void @llvm.dbg.declare(metadata ptr %threesize, metadata !98, metadata !DIExpression()), !dbg !3102
  store i32 54, ptr %threesize, align 4, !dbg !3102, !tbaa !424
  call void @llvm.lifetime.start.p0(i64 4, ptr %foursize) #11, !dbg !3103
  tail call void @llvm.dbg.declare(metadata ptr %foursize, metadata !99, metadata !DIExpression()), !dbg !3104
  store i32 38, ptr %foursize, align 4, !dbg !3104, !tbaa !424
  call void @llvm.lifetime.start.p0(i64 4, ptr %fivesize) #11, !dbg !3105
  tail call void @llvm.dbg.declare(metadata ptr %fivesize, metadata !100, metadata !DIExpression()), !dbg !3106
  store i32 45, ptr %fivesize, align 4, !dbg !3106, !tbaa !424
  call void @llvm.lifetime.start.p0(i64 4, ptr %sixsize) #11, !dbg !3107
  tail call void @llvm.dbg.declare(metadata ptr %sixsize, metadata !101, metadata !DIExpression()), !dbg !3108
  store i32 7, ptr %sixsize, align 4, !dbg !3108, !tbaa !424
  call void @oggpack_writeinit(ptr noundef @o), !dbg !3109
  %0 = load ptr, ptr @stderr, align 8, !dbg !3110, !tbaa !277
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.16), !dbg !3111
  %1 = load i32, ptr %test1size, align 4, !dbg !3112, !tbaa !424
  %2 = load i32, ptr %onesize, align 4, !dbg !3113, !tbaa !424
  call void @cliptest(ptr noundef @main.testbuffer1, i32 noundef %1, i32 noundef 0, ptr noundef @main.one, i32 noundef %2), !dbg !3114
  %3 = load ptr, ptr @stderr, align 8, !dbg !3115, !tbaa !277
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.17), !dbg !3116
  %4 = load ptr, ptr @stderr, align 8, !dbg !3117, !tbaa !277
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.18), !dbg !3118
  %5 = load i32, ptr %test3size, align 4, !dbg !3119, !tbaa !424
  %6 = load i32, ptr %twosize, align 4, !dbg !3120, !tbaa !424
  call void @cliptest(ptr noundef @main.testbuffer3, i32 noundef %5, i32 noundef 0, ptr noundef @main.two, i32 noundef %6), !dbg !3121
  %7 = load ptr, ptr @stderr, align 8, !dbg !3122, !tbaa !277
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.17), !dbg !3123
  %8 = load ptr, ptr @stderr, align 8, !dbg !3124, !tbaa !277
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.19), !dbg !3125
  %9 = load i32, ptr %test2size, align 4, !dbg !3126, !tbaa !424
  %10 = load i32, ptr %threesize, align 4, !dbg !3127, !tbaa !424
  call void @cliptest(ptr noundef @main.testbuffer2, i32 noundef %9, i32 noundef 0, ptr noundef @main.three, i32 noundef %10), !dbg !3128
  %11 = load ptr, ptr @stderr, align 8, !dbg !3129, !tbaa !277
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.17), !dbg !3130
  %12 = load ptr, ptr @stderr, align 8, !dbg !3131, !tbaa !277
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.20), !dbg !3132
  call void @oggpack_reset(ptr noundef @o), !dbg !3133
  store i64 0, ptr %i, align 8, !dbg !3134, !tbaa !350
  br label %for.cond, !dbg !3136

for.cond:                                         ; preds = %for.inc, %entry
  %13 = load i64, ptr %i, align 8, !dbg !3137, !tbaa !350
  %14 = load i32, ptr %test2size, align 4, !dbg !3139, !tbaa !424
  %conv = sext i32 %14 to i64, !dbg !3139
  %cmp = icmp slt i64 %13, %conv, !dbg !3140
  br i1 %cmp, label %for.body, label %for.end, !dbg !3141

for.body:                                         ; preds = %for.cond
  %15 = load i64, ptr %i, align 8, !dbg !3142, !tbaa !350
  %arrayidx = getelementptr inbounds [21 x i64], ptr @main.large, i64 0, i64 %15, !dbg !3143
  %16 = load i64, ptr %arrayidx, align 8, !dbg !3143, !tbaa !350
  call void @oggpack_write(ptr noundef @o, i64 noundef %16, i32 noundef 32), !dbg !3144
  br label %for.inc, !dbg !3144

for.inc:                                          ; preds = %for.body
  %17 = load i64, ptr %i, align 8, !dbg !3145, !tbaa !350
  %inc = add nsw i64 %17, 1, !dbg !3145
  store i64 %inc, ptr %i, align 8, !dbg !3145, !tbaa !350
  br label %for.cond, !dbg !3146, !llvm.loop !3147

for.end:                                          ; preds = %for.cond
  %call8 = call ptr @oggpack_get_buffer(ptr noundef @o), !dbg !3149
  store ptr %call8, ptr %buffer, align 8, !dbg !3150, !tbaa !277
  %call9 = call i64 @oggpack_bytes(ptr noundef @o), !dbg !3151
  store i64 %call9, ptr %bytes, align 8, !dbg !3152, !tbaa !350
  %18 = load ptr, ptr %buffer, align 8, !dbg !3153, !tbaa !277
  %19 = load i64, ptr %bytes, align 8, !dbg !3154, !tbaa !350
  %conv10 = trunc i64 %19 to i32, !dbg !3154
  call void @oggpack_readinit(ptr noundef @r, ptr noundef %18, i32 noundef %conv10), !dbg !3155
  store i64 0, ptr %i, align 8, !dbg !3156, !tbaa !350
  br label %for.cond11, !dbg !3158

for.cond11:                                       ; preds = %for.inc30, %for.end
  %20 = load i64, ptr %i, align 8, !dbg !3159, !tbaa !350
  %21 = load i32, ptr %test2size, align 4, !dbg !3161, !tbaa !424
  %conv12 = sext i32 %21 to i64, !dbg !3161
  %cmp13 = icmp slt i64 %20, %conv12, !dbg !3162
  br i1 %cmp13, label %for.body15, label %for.end32, !dbg !3163

for.body15:                                       ; preds = %for.cond11
  %call16 = call i64 @oggpack_look(ptr noundef @r, i32 noundef 32), !dbg !3164
  %cmp17 = icmp eq i64 %call16, -1, !dbg !3167
  br i1 %cmp17, label %if.then, label %if.end, !dbg !3168

if.then:                                          ; preds = %for.body15
  call void @report(ptr noundef @.str.21), !dbg !3169
  br label %if.end, !dbg !3169

if.end:                                           ; preds = %if.then, %for.body15
  %call19 = call i64 @oggpack_look(ptr noundef @r, i32 noundef 32), !dbg !3170
  %22 = load i64, ptr %i, align 8, !dbg !3172, !tbaa !350
  %arrayidx20 = getelementptr inbounds [21 x i64], ptr @main.large, i64 0, i64 %22, !dbg !3173
  %23 = load i64, ptr %arrayidx20, align 8, !dbg !3173, !tbaa !350
  %cmp21 = icmp ne i64 %call19, %23, !dbg !3174
  br i1 %cmp21, label %if.then23, label %if.end29, !dbg !3175

if.then23:                                        ; preds = %if.end
  %24 = load ptr, ptr @stderr, align 8, !dbg !3176, !tbaa !277
  %call24 = call i64 @oggpack_look(ptr noundef @r, i32 noundef 32), !dbg !3178
  %25 = load i64, ptr %i, align 8, !dbg !3179, !tbaa !350
  %arrayidx25 = getelementptr inbounds [21 x i64], ptr @main.large, i64 0, i64 %25, !dbg !3180
  %26 = load i64, ptr %arrayidx25, align 8, !dbg !3180, !tbaa !350
  %call26 = call i64 @oggpack_look(ptr noundef @r, i32 noundef 32), !dbg !3181
  %27 = load i64, ptr %i, align 8, !dbg !3182, !tbaa !350
  %arrayidx27 = getelementptr inbounds [21 x i64], ptr @main.large, i64 0, i64 %27, !dbg !3183
  %28 = load i64, ptr %arrayidx27, align 8, !dbg !3183, !tbaa !350
  %call28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef @.str.22, i64 noundef %call24, i64 noundef %26, i64 noundef %call26, i64 noundef %28), !dbg !3184
  call void @report(ptr noundef @.str.8), !dbg !3185
  br label %if.end29, !dbg !3186

if.end29:                                         ; preds = %if.then23, %if.end
  call void @oggpack_adv(ptr noundef @r, i32 noundef 32), !dbg !3187
  br label %for.inc30, !dbg !3188

for.inc30:                                        ; preds = %if.end29
  %29 = load i64, ptr %i, align 8, !dbg !3189, !tbaa !350
  %inc31 = add nsw i64 %29, 1, !dbg !3189
  store i64 %inc31, ptr %i, align 8, !dbg !3189, !tbaa !350
  br label %for.cond11, !dbg !3190, !llvm.loop !3191

for.end32:                                        ; preds = %for.cond11
  %call33 = call i64 @oggpack_bytes(ptr noundef @r), !dbg !3193
  %30 = load i64, ptr %bytes, align 8, !dbg !3195, !tbaa !350
  %cmp34 = icmp ne i64 %call33, %30, !dbg !3196
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !3197

if.then36:                                        ; preds = %for.end32
  call void @report(ptr noundef @.str.9), !dbg !3198
  br label %if.end37, !dbg !3198

if.end37:                                         ; preds = %if.then36, %for.end32
  %31 = load ptr, ptr @stderr, align 8, !dbg !3199, !tbaa !277
  %call38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef @.str.17), !dbg !3200
  %32 = load ptr, ptr @stderr, align 8, !dbg !3201, !tbaa !277
  %call39 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef @.str.23), !dbg !3202
  %33 = load i32, ptr %test1size, align 4, !dbg !3203, !tbaa !424
  %34 = load i32, ptr %foursize, align 4, !dbg !3204, !tbaa !424
  call void @cliptest(ptr noundef @main.testbuffer1, i32 noundef %33, i32 noundef 7, ptr noundef @main.four, i32 noundef %34), !dbg !3205
  %35 = load ptr, ptr @stderr, align 8, !dbg !3206, !tbaa !277
  %call40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef @.str.17), !dbg !3207
  %36 = load ptr, ptr @stderr, align 8, !dbg !3208, !tbaa !277
  %call41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef @.str.24), !dbg !3209
  %37 = load i32, ptr %test2size, align 4, !dbg !3210, !tbaa !424
  %38 = load i32, ptr %fivesize, align 4, !dbg !3211, !tbaa !424
  call void @cliptest(ptr noundef @main.testbuffer2, i32 noundef %37, i32 noundef 17, ptr noundef @main.five, i32 noundef %38), !dbg !3212
  %39 = load ptr, ptr @stderr, align 8, !dbg !3213, !tbaa !277
  %call42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef @.str.17), !dbg !3214
  %40 = load ptr, ptr @stderr, align 8, !dbg !3215, !tbaa !277
  %call43 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef @.str.25), !dbg !3216
  %41 = load i32, ptr %test3size, align 4, !dbg !3217, !tbaa !424
  %42 = load i32, ptr %sixsize, align 4, !dbg !3218, !tbaa !424
  call void @cliptest(ptr noundef @main.testbuffer3, i32 noundef %41, i32 noundef 1, ptr noundef @main.six, i32 noundef %42), !dbg !3219
  %43 = load ptr, ptr @stderr, align 8, !dbg !3220, !tbaa !277
  %call44 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef @.str.17), !dbg !3221
  %44 = load ptr, ptr @stderr, align 8, !dbg !3222, !tbaa !277
  %call45 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef @.str.26), !dbg !3223
  call void @oggpack_readinit(ptr noundef @r, ptr noundef @.str.27, i32 noundef 8), !dbg !3224
  store i64 0, ptr %i, align 8, !dbg !3225, !tbaa !350
  br label %for.cond46, !dbg !3227

for.cond46:                                       ; preds = %for.inc56, %if.end37
  %45 = load i64, ptr %i, align 8, !dbg !3228, !tbaa !350
  %cmp47 = icmp slt i64 %45, 64, !dbg !3230
  br i1 %cmp47, label %for.body49, label %for.end58, !dbg !3231

for.body49:                                       ; preds = %for.cond46
  %call50 = call i64 @oggpack_read(ptr noundef @r, i32 noundef 1), !dbg !3232
  %cmp51 = icmp ne i64 %call50, 0, !dbg !3235
  br i1 %cmp51, label %if.then53, label %if.end55, !dbg !3236

if.then53:                                        ; preds = %for.body49
  %46 = load ptr, ptr @stderr, align 8, !dbg !3237, !tbaa !277
  %call54 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef @.str.28), !dbg !3239
  call void @exit(i32 noundef 1) #13, !dbg !3240
  unreachable, !dbg !3240

if.end55:                                         ; preds = %for.body49
  br label %for.inc56, !dbg !3241

for.inc56:                                        ; preds = %if.end55
  %47 = load i64, ptr %i, align 8, !dbg !3242, !tbaa !350
  %inc57 = add nsw i64 %47, 1, !dbg !3242
  store i64 %inc57, ptr %i, align 8, !dbg !3242, !tbaa !350
  br label %for.cond46, !dbg !3243, !llvm.loop !3244

for.end58:                                        ; preds = %for.cond46
  %call59 = call i64 @oggpack_look(ptr noundef @r, i32 noundef 1), !dbg !3246
  %cmp60 = icmp ne i64 %call59, -1, !dbg !3248
  br i1 %cmp60, label %if.then65, label %lor.lhs.false, !dbg !3249

lor.lhs.false:                                    ; preds = %for.end58
  %call62 = call i64 @oggpack_read(ptr noundef @r, i32 noundef 1), !dbg !3250
  %cmp63 = icmp ne i64 %call62, -1, !dbg !3251
  br i1 %cmp63, label %if.then65, label %if.end67, !dbg !3252

if.then65:                                        ; preds = %lor.lhs.false, %for.end58
  %48 = load ptr, ptr @stderr, align 8, !dbg !3253, !tbaa !277
  %call66 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %48, ptr noundef @.str.29), !dbg !3255
  call void @exit(i32 noundef 1) #13, !dbg !3256
  unreachable, !dbg !3256

if.end67:                                         ; preds = %lor.lhs.false
  call void @oggpack_readinit(ptr noundef @r, ptr noundef @.str.27, i32 noundef 8), !dbg !3257
  %call68 = call i64 @oggpack_read(ptr noundef @r, i32 noundef 30), !dbg !3258
  %cmp69 = icmp ne i64 %call68, 0, !dbg !3260
  br i1 %cmp69, label %if.then75, label %lor.lhs.false71, !dbg !3261

lor.lhs.false71:                                  ; preds = %if.end67
  %call72 = call i64 @oggpack_read(ptr noundef @r, i32 noundef 16), !dbg !3262
  %cmp73 = icmp ne i64 %call72, 0, !dbg !3263
  br i1 %cmp73, label %if.then75, label %if.end77, !dbg !3264

if.then75:                                        ; preds = %lor.lhs.false71, %if.end67
  %49 = load ptr, ptr @stderr, align 8, !dbg !3265, !tbaa !277
  %call76 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef @.str.30), !dbg !3267
  call void @exit(i32 noundef 1) #13, !dbg !3268
  unreachable, !dbg !3268

if.end77:                                         ; preds = %lor.lhs.false71
  %call78 = call i64 @oggpack_look(ptr noundef @r, i32 noundef 18), !dbg !3269
  %cmp79 = icmp ne i64 %call78, 0, !dbg !3271
  br i1 %cmp79, label %if.then85, label %lor.lhs.false81, !dbg !3272

lor.lhs.false81:                                  ; preds = %if.end77
  %call82 = call i64 @oggpack_look(ptr noundef @r, i32 noundef 18), !dbg !3273
  %cmp83 = icmp ne i64 %call82, 0, !dbg !3274
  br i1 %cmp83, label %if.then85, label %if.end87, !dbg !3275

if.then85:                                        ; preds = %lor.lhs.false81, %if.end77
  %50 = load ptr, ptr @stderr, align 8, !dbg !3276, !tbaa !277
  %call86 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef @.str.31), !dbg !3278
  call void @exit(i32 noundef 1) #13, !dbg !3279
  unreachable, !dbg !3279

if.end87:                                         ; preds = %lor.lhs.false81
  %call88 = call i64 @oggpack_look(ptr noundef @r, i32 noundef 19), !dbg !3280
  %cmp89 = icmp ne i64 %call88, -1, !dbg !3282
  br i1 %cmp89, label %if.then95, label %lor.lhs.false91, !dbg !3283

lor.lhs.false91:                                  ; preds = %if.end87
  %call92 = call i64 @oggpack_look(ptr noundef @r, i32 noundef 19), !dbg !3284
  %cmp93 = icmp ne i64 %call92, -1, !dbg !3285
  br i1 %cmp93, label %if.then95, label %if.end97, !dbg !3286

if.then95:                                        ; preds = %lor.lhs.false91, %if.end87
  %51 = load ptr, ptr @stderr, align 8, !dbg !3287, !tbaa !277
  %call96 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef @.str.29), !dbg !3289
  call void @exit(i32 noundef 1) #13, !dbg !3290
  unreachable, !dbg !3290

if.end97:                                         ; preds = %lor.lhs.false91
  %call98 = call i64 @oggpack_look(ptr noundef @r, i32 noundef 32), !dbg !3291
  %cmp99 = icmp ne i64 %call98, -1, !dbg !3293
  br i1 %cmp99, label %if.then105, label %lor.lhs.false101, !dbg !3294

lor.lhs.false101:                                 ; preds = %if.end97
  %call102 = call i64 @oggpack_look(ptr noundef @r, i32 noundef 32), !dbg !3295
  %cmp103 = icmp ne i64 %call102, -1, !dbg !3296
  br i1 %cmp103, label %if.then105, label %if.end107, !dbg !3297

if.then105:                                       ; preds = %lor.lhs.false101, %if.end97
  %52 = load ptr, ptr @stderr, align 8, !dbg !3298, !tbaa !277
  %call106 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef @.str.29), !dbg !3300
  call void @exit(i32 noundef 1) #13, !dbg !3301
  unreachable, !dbg !3301

if.end107:                                        ; preds = %lor.lhs.false101
  call void @oggpack_writeclear(ptr noundef @o), !dbg !3302
  %53 = load ptr, ptr @stderr, align 8, !dbg !3303, !tbaa !277
  %call108 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %53, ptr noundef @.str.17), !dbg !3304
  %54 = load ptr, ptr @stderr, align 8, !dbg !3305, !tbaa !277
  %call109 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %54, ptr noundef @.str.32), !dbg !3306
  store i64 0, ptr %i, align 8, !dbg !3307, !tbaa !350
  br label %for.cond110, !dbg !3309

for.cond110:                                      ; preds = %for.inc123, %if.end107
  %55 = load i64, ptr %i, align 8, !dbg !3310, !tbaa !350
  %cmp111 = icmp slt i64 %55, 71, !dbg !3312
  br i1 %cmp111, label %for.body113, label %for.end125, !dbg !3313

for.body113:                                      ; preds = %for.cond110
  store i64 0, ptr %j, align 8, !dbg !3314, !tbaa !350
  br label %for.cond114, !dbg !3316

for.cond114:                                      ; preds = %for.inc120, %for.body113
  %56 = load i64, ptr %j, align 8, !dbg !3317, !tbaa !350
  %cmp115 = icmp slt i64 %56, 5, !dbg !3319
  br i1 %cmp115, label %for.body117, label %for.end122, !dbg !3320

for.body117:                                      ; preds = %for.cond114
  %57 = load i64, ptr %j, align 8, !dbg !3321, !tbaa !350
  %mul = mul nsw i64 %57, 8, !dbg !3322
  %conv118 = trunc i64 %mul to i32, !dbg !3321
  %58 = load i64, ptr %i, align 8, !dbg !3323, !tbaa !350
  %conv119 = trunc i64 %58 to i32, !dbg !3323
  call void @copytest(i32 noundef %conv118, i32 noundef %conv119), !dbg !3324
  br label %for.inc120, !dbg !3324

for.inc120:                                       ; preds = %for.body117
  %59 = load i64, ptr %j, align 8, !dbg !3325, !tbaa !350
  %inc121 = add nsw i64 %59, 1, !dbg !3325
  store i64 %inc121, ptr %j, align 8, !dbg !3325, !tbaa !350
  br label %for.cond114, !dbg !3326, !llvm.loop !3327

for.end122:                                       ; preds = %for.cond114
  br label %for.inc123, !dbg !3328

for.inc123:                                       ; preds = %for.end122
  %60 = load i64, ptr %i, align 8, !dbg !3329, !tbaa !350
  %inc124 = add nsw i64 %60, 1, !dbg !3329
  store i64 %inc124, ptr %i, align 8, !dbg !3329, !tbaa !350
  br label %for.cond110, !dbg !3330, !llvm.loop !3331

for.end125:                                       ; preds = %for.cond110
  store i64 1977, ptr %i, align 8, !dbg !3333, !tbaa !350
  br label %for.cond126, !dbg !3335

for.cond126:                                      ; preds = %for.inc140, %for.end125
  %61 = load i64, ptr %i, align 8, !dbg !3336, !tbaa !350
  %cmp127 = icmp slt i64 %61, 2119, !dbg !3338
  br i1 %cmp127, label %for.body129, label %for.end142, !dbg !3339

for.body129:                                      ; preds = %for.cond126
  store i64 0, ptr %j, align 8, !dbg !3340, !tbaa !350
  br label %for.cond130, !dbg !3342

for.cond130:                                      ; preds = %for.inc137, %for.body129
  %62 = load i64, ptr %j, align 8, !dbg !3343, !tbaa !350
  %cmp131 = icmp slt i64 %62, 5, !dbg !3345
  br i1 %cmp131, label %for.body133, label %for.end139, !dbg !3346

for.body133:                                      ; preds = %for.cond130
  %63 = load i64, ptr %j, align 8, !dbg !3347, !tbaa !350
  %mul134 = mul nsw i64 %63, 8, !dbg !3348
  %conv135 = trunc i64 %mul134 to i32, !dbg !3347
  %64 = load i64, ptr %i, align 8, !dbg !3349, !tbaa !350
  %conv136 = trunc i64 %64 to i32, !dbg !3349
  call void @copytest(i32 noundef %conv135, i32 noundef %conv136), !dbg !3350
  br label %for.inc137, !dbg !3350

for.inc137:                                       ; preds = %for.body133
  %65 = load i64, ptr %j, align 8, !dbg !3351, !tbaa !350
  %inc138 = add nsw i64 %65, 1, !dbg !3351
  store i64 %inc138, ptr %j, align 8, !dbg !3351, !tbaa !350
  br label %for.cond130, !dbg !3352, !llvm.loop !3353

for.end139:                                       ; preds = %for.cond130
  br label %for.inc140, !dbg !3354

for.inc140:                                       ; preds = %for.end139
  %66 = load i64, ptr %i, align 8, !dbg !3355, !tbaa !350
  %inc141 = add nsw i64 %66, 1, !dbg !3355
  store i64 %inc141, ptr %i, align 8, !dbg !3355, !tbaa !350
  br label %for.cond126, !dbg !3356, !llvm.loop !3357

for.end142:                                       ; preds = %for.cond126
  %67 = load ptr, ptr @stderr, align 8, !dbg !3359, !tbaa !277
  %call143 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %67, ptr noundef @.str.33), !dbg !3360
  %68 = load ptr, ptr @stderr, align 8, !dbg !3361, !tbaa !277
  %call144 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %68, ptr noundef @.str.34), !dbg !3362
  store i64 0, ptr %i, align 8, !dbg !3363, !tbaa !350
  br label %for.cond145, !dbg !3365

for.cond145:                                      ; preds = %for.inc160, %for.end142
  %69 = load i64, ptr %i, align 8, !dbg !3366, !tbaa !350
  %cmp146 = icmp slt i64 %69, 71, !dbg !3368
  br i1 %cmp146, label %for.body148, label %for.end162, !dbg !3369

for.body148:                                      ; preds = %for.cond145
  store i64 1, ptr %j, align 8, !dbg !3370, !tbaa !350
  br label %for.cond149, !dbg !3372

for.cond149:                                      ; preds = %for.inc157, %for.body148
  %70 = load i64, ptr %j, align 8, !dbg !3373, !tbaa !350
  %cmp150 = icmp slt i64 %70, 40, !dbg !3375
  br i1 %cmp150, label %for.body152, label %for.end159, !dbg !3376

for.body152:                                      ; preds = %for.cond149
  %71 = load i64, ptr %j, align 8, !dbg !3377, !tbaa !350
  %and = and i64 %71, 7, !dbg !3379
  %tobool = icmp ne i64 %and, 0, !dbg !3379
  br i1 %tobool, label %if.then153, label %if.end156, !dbg !3380

if.then153:                                       ; preds = %for.body152
  %72 = load i64, ptr %j, align 8, !dbg !3381, !tbaa !350
  %conv154 = trunc i64 %72 to i32, !dbg !3381
  %73 = load i64, ptr %i, align 8, !dbg !3382, !tbaa !350
  %conv155 = trunc i64 %73 to i32, !dbg !3382
  call void @copytest(i32 noundef %conv154, i32 noundef %conv155), !dbg !3383
  br label %if.end156, !dbg !3383

if.end156:                                        ; preds = %if.then153, %for.body152
  br label %for.inc157, !dbg !3384

for.inc157:                                       ; preds = %if.end156
  %74 = load i64, ptr %j, align 8, !dbg !3385, !tbaa !350
  %inc158 = add nsw i64 %74, 1, !dbg !3385
  store i64 %inc158, ptr %j, align 8, !dbg !3385, !tbaa !350
  br label %for.cond149, !dbg !3386, !llvm.loop !3387

for.end159:                                       ; preds = %for.cond149
  br label %for.inc160, !dbg !3388

for.inc160:                                       ; preds = %for.end159
  %75 = load i64, ptr %i, align 8, !dbg !3389, !tbaa !350
  %inc161 = add nsw i64 %75, 1, !dbg !3389
  store i64 %inc161, ptr %i, align 8, !dbg !3389, !tbaa !350
  br label %for.cond145, !dbg !3390, !llvm.loop !3391

for.end162:                                       ; preds = %for.cond145
  store i64 1977, ptr %i, align 8, !dbg !3393, !tbaa !350
  br label %for.cond163, !dbg !3395

for.cond163:                                      ; preds = %for.inc180, %for.end162
  %76 = load i64, ptr %i, align 8, !dbg !3396, !tbaa !350
  %cmp164 = icmp slt i64 %76, 2119, !dbg !3398
  br i1 %cmp164, label %for.body166, label %for.end182, !dbg !3399

for.body166:                                      ; preds = %for.cond163
  store i64 1, ptr %j, align 8, !dbg !3400, !tbaa !350
  br label %for.cond167, !dbg !3402

for.cond167:                                      ; preds = %for.inc177, %for.body166
  %77 = load i64, ptr %j, align 8, !dbg !3403, !tbaa !350
  %cmp168 = icmp slt i64 %77, 40, !dbg !3405
  br i1 %cmp168, label %for.body170, label %for.end179, !dbg !3406

for.body170:                                      ; preds = %for.cond167
  %78 = load i64, ptr %j, align 8, !dbg !3407, !tbaa !350
  %and171 = and i64 %78, 7, !dbg !3409
  %tobool172 = icmp ne i64 %and171, 0, !dbg !3409
  br i1 %tobool172, label %if.then173, label %if.end176, !dbg !3410

if.then173:                                       ; preds = %for.body170
  %79 = load i64, ptr %j, align 8, !dbg !3411, !tbaa !350
  %conv174 = trunc i64 %79 to i32, !dbg !3411
  %80 = load i64, ptr %i, align 8, !dbg !3412, !tbaa !350
  %conv175 = trunc i64 %80 to i32, !dbg !3412
  call void @copytest(i32 noundef %conv174, i32 noundef %conv175), !dbg !3413
  br label %if.end176, !dbg !3413

if.end176:                                        ; preds = %if.then173, %for.body170
  br label %for.inc177, !dbg !3414

for.inc177:                                       ; preds = %if.end176
  %81 = load i64, ptr %j, align 8, !dbg !3415, !tbaa !350
  %inc178 = add nsw i64 %81, 1, !dbg !3415
  store i64 %inc178, ptr %j, align 8, !dbg !3415, !tbaa !350
  br label %for.cond167, !dbg !3416, !llvm.loop !3417

for.end179:                                       ; preds = %for.cond167
  br label %for.inc180, !dbg !3418

for.inc180:                                       ; preds = %for.end179
  %82 = load i64, ptr %i, align 8, !dbg !3419, !tbaa !350
  %inc181 = add nsw i64 %82, 1, !dbg !3419
  store i64 %inc181, ptr %i, align 8, !dbg !3419, !tbaa !350
  br label %for.cond163, !dbg !3420, !llvm.loop !3421

for.end182:                                       ; preds = %for.cond163
  %83 = load ptr, ptr @stderr, align 8, !dbg !3423, !tbaa !277
  %call183 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %83, ptr noundef @.str.35), !dbg !3424
  call void @oggpackB_writeinit(ptr noundef @o), !dbg !3425
  %84 = load ptr, ptr @stderr, align 8, !dbg !3426, !tbaa !277
  %call184 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %84, ptr noundef @.str.36), !dbg !3427
  %85 = load i32, ptr %test1size, align 4, !dbg !3428, !tbaa !424
  %86 = load i32, ptr %onesize, align 4, !dbg !3429, !tbaa !424
  call void @cliptestB(ptr noundef @main.testbuffer1, i32 noundef %85, i32 noundef 0, ptr noundef @main.oneB, i32 noundef %86), !dbg !3430
  %87 = load ptr, ptr @stderr, align 8, !dbg !3431, !tbaa !277
  %call185 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %87, ptr noundef @.str.17), !dbg !3432
  %88 = load ptr, ptr @stderr, align 8, !dbg !3433, !tbaa !277
  %call186 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %88, ptr noundef @.str.37), !dbg !3434
  %89 = load i32, ptr %test3size, align 4, !dbg !3435, !tbaa !424
  %90 = load i32, ptr %twosize, align 4, !dbg !3436, !tbaa !424
  call void @cliptestB(ptr noundef @main.testbuffer3, i32 noundef %89, i32 noundef 0, ptr noundef @main.twoB, i32 noundef %90), !dbg !3437
  %91 = load ptr, ptr @stderr, align 8, !dbg !3438, !tbaa !277
  %call187 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %91, ptr noundef @.str.17), !dbg !3439
  %92 = load ptr, ptr @stderr, align 8, !dbg !3440, !tbaa !277
  %call188 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %92, ptr noundef @.str.38), !dbg !3441
  %93 = load i32, ptr %test2size, align 4, !dbg !3442, !tbaa !424
  %94 = load i32, ptr %threesize, align 4, !dbg !3443, !tbaa !424
  call void @cliptestB(ptr noundef @main.testbuffer2, i32 noundef %93, i32 noundef 0, ptr noundef @main.threeB, i32 noundef %94), !dbg !3444
  %95 = load ptr, ptr @stderr, align 8, !dbg !3445, !tbaa !277
  %call189 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %95, ptr noundef @.str.17), !dbg !3446
  %96 = load ptr, ptr @stderr, align 8, !dbg !3447, !tbaa !277
  %call190 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %96, ptr noundef @.str.39), !dbg !3448
  call void @oggpackB_reset(ptr noundef @o), !dbg !3449
  store i64 0, ptr %i, align 8, !dbg !3450, !tbaa !350
  br label %for.cond191, !dbg !3452

for.cond191:                                      ; preds = %for.inc197, %for.end182
  %97 = load i64, ptr %i, align 8, !dbg !3453, !tbaa !350
  %98 = load i32, ptr %test2size, align 4, !dbg !3455, !tbaa !424
  %conv192 = sext i32 %98 to i64, !dbg !3455
  %cmp193 = icmp slt i64 %97, %conv192, !dbg !3456
  br i1 %cmp193, label %for.body195, label %for.end199, !dbg !3457

for.body195:                                      ; preds = %for.cond191
  %99 = load i64, ptr %i, align 8, !dbg !3458, !tbaa !350
  %arrayidx196 = getelementptr inbounds [21 x i64], ptr @main.large, i64 0, i64 %99, !dbg !3459
  %100 = load i64, ptr %arrayidx196, align 8, !dbg !3459, !tbaa !350
  call void @oggpackB_write(ptr noundef @o, i64 noundef %100, i32 noundef 32), !dbg !3460
  br label %for.inc197, !dbg !3460

for.inc197:                                       ; preds = %for.body195
  %101 = load i64, ptr %i, align 8, !dbg !3461, !tbaa !350
  %inc198 = add nsw i64 %101, 1, !dbg !3461
  store i64 %inc198, ptr %i, align 8, !dbg !3461, !tbaa !350
  br label %for.cond191, !dbg !3462, !llvm.loop !3463

for.end199:                                       ; preds = %for.cond191
  %call200 = call ptr @oggpackB_get_buffer(ptr noundef @o), !dbg !3465
  store ptr %call200, ptr %buffer, align 8, !dbg !3466, !tbaa !277
  %call201 = call i64 @oggpackB_bytes(ptr noundef @o), !dbg !3467
  store i64 %call201, ptr %bytes, align 8, !dbg !3468, !tbaa !350
  %102 = load ptr, ptr %buffer, align 8, !dbg !3469, !tbaa !277
  %103 = load i64, ptr %bytes, align 8, !dbg !3470, !tbaa !350
  %conv202 = trunc i64 %103 to i32, !dbg !3470
  call void @oggpackB_readinit(ptr noundef @r, ptr noundef %102, i32 noundef %conv202), !dbg !3471
  store i64 0, ptr %i, align 8, !dbg !3472, !tbaa !350
  br label %for.cond203, !dbg !3474

for.cond203:                                      ; preds = %for.inc224, %for.end199
  %104 = load i64, ptr %i, align 8, !dbg !3475, !tbaa !350
  %105 = load i32, ptr %test2size, align 4, !dbg !3477, !tbaa !424
  %conv204 = sext i32 %105 to i64, !dbg !3477
  %cmp205 = icmp slt i64 %104, %conv204, !dbg !3478
  br i1 %cmp205, label %for.body207, label %for.end226, !dbg !3479

for.body207:                                      ; preds = %for.cond203
  %call208 = call i64 @oggpackB_look(ptr noundef @r, i32 noundef 32), !dbg !3480
  %cmp209 = icmp eq i64 %call208, -1, !dbg !3483
  br i1 %cmp209, label %if.then211, label %if.end212, !dbg !3484

if.then211:                                       ; preds = %for.body207
  call void @report(ptr noundef @.str.21), !dbg !3485
  br label %if.end212, !dbg !3485

if.end212:                                        ; preds = %if.then211, %for.body207
  %call213 = call i64 @oggpackB_look(ptr noundef @r, i32 noundef 32), !dbg !3486
  %106 = load i64, ptr %i, align 8, !dbg !3488, !tbaa !350
  %arrayidx214 = getelementptr inbounds [21 x i64], ptr @main.large, i64 0, i64 %106, !dbg !3489
  %107 = load i64, ptr %arrayidx214, align 8, !dbg !3489, !tbaa !350
  %cmp215 = icmp ne i64 %call213, %107, !dbg !3490
  br i1 %cmp215, label %if.then217, label %if.end223, !dbg !3491

if.then217:                                       ; preds = %if.end212
  %108 = load ptr, ptr @stderr, align 8, !dbg !3492, !tbaa !277
  %call218 = call i64 @oggpackB_look(ptr noundef @r, i32 noundef 32), !dbg !3494
  %109 = load i64, ptr %i, align 8, !dbg !3495, !tbaa !350
  %arrayidx219 = getelementptr inbounds [21 x i64], ptr @main.large, i64 0, i64 %109, !dbg !3496
  %110 = load i64, ptr %arrayidx219, align 8, !dbg !3496, !tbaa !350
  %call220 = call i64 @oggpackB_look(ptr noundef @r, i32 noundef 32), !dbg !3497
  %111 = load i64, ptr %i, align 8, !dbg !3498, !tbaa !350
  %arrayidx221 = getelementptr inbounds [21 x i64], ptr @main.large, i64 0, i64 %111, !dbg !3499
  %112 = load i64, ptr %arrayidx221, align 8, !dbg !3499, !tbaa !350
  %call222 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %108, ptr noundef @.str.22, i64 noundef %call218, i64 noundef %110, i64 noundef %call220, i64 noundef %112), !dbg !3500
  call void @report(ptr noundef @.str.8), !dbg !3501
  br label %if.end223, !dbg !3502

if.end223:                                        ; preds = %if.then217, %if.end212
  call void @oggpackB_adv(ptr noundef @r, i32 noundef 32), !dbg !3503
  br label %for.inc224, !dbg !3504

for.inc224:                                       ; preds = %if.end223
  %113 = load i64, ptr %i, align 8, !dbg !3505, !tbaa !350
  %inc225 = add nsw i64 %113, 1, !dbg !3505
  store i64 %inc225, ptr %i, align 8, !dbg !3505, !tbaa !350
  br label %for.cond203, !dbg !3506, !llvm.loop !3507

for.end226:                                       ; preds = %for.cond203
  %call227 = call i64 @oggpackB_bytes(ptr noundef @r), !dbg !3509
  %114 = load i64, ptr %bytes, align 8, !dbg !3511, !tbaa !350
  %cmp228 = icmp ne i64 %call227, %114, !dbg !3512
  br i1 %cmp228, label %if.then230, label %if.end231, !dbg !3513

if.then230:                                       ; preds = %for.end226
  call void @report(ptr noundef @.str.9), !dbg !3514
  br label %if.end231, !dbg !3514

if.end231:                                        ; preds = %if.then230, %for.end226
  %115 = load ptr, ptr @stderr, align 8, !dbg !3515, !tbaa !277
  %call232 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %115, ptr noundef @.str.17), !dbg !3516
  %116 = load ptr, ptr @stderr, align 8, !dbg !3517, !tbaa !277
  %call233 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %116, ptr noundef @.str.40), !dbg !3518
  %117 = load i32, ptr %test1size, align 4, !dbg !3519, !tbaa !424
  %118 = load i32, ptr %foursize, align 4, !dbg !3520, !tbaa !424
  call void @cliptestB(ptr noundef @main.testbuffer1, i32 noundef %117, i32 noundef 7, ptr noundef @main.fourB, i32 noundef %118), !dbg !3521
  %119 = load ptr, ptr @stderr, align 8, !dbg !3522, !tbaa !277
  %call234 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %119, ptr noundef @.str.17), !dbg !3523
  %120 = load ptr, ptr @stderr, align 8, !dbg !3524, !tbaa !277
  %call235 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %120, ptr noundef @.str.41), !dbg !3525
  %121 = load i32, ptr %test2size, align 4, !dbg !3526, !tbaa !424
  %122 = load i32, ptr %fivesize, align 4, !dbg !3527, !tbaa !424
  call void @cliptestB(ptr noundef @main.testbuffer2, i32 noundef %121, i32 noundef 17, ptr noundef @main.fiveB, i32 noundef %122), !dbg !3528
  %123 = load ptr, ptr @stderr, align 8, !dbg !3529, !tbaa !277
  %call236 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %123, ptr noundef @.str.17), !dbg !3530
  %124 = load ptr, ptr @stderr, align 8, !dbg !3531, !tbaa !277
  %call237 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %124, ptr noundef @.str.42), !dbg !3532
  %125 = load i32, ptr %test3size, align 4, !dbg !3533, !tbaa !424
  %126 = load i32, ptr %sixsize, align 4, !dbg !3534, !tbaa !424
  call void @cliptestB(ptr noundef @main.testbuffer3, i32 noundef %125, i32 noundef 1, ptr noundef @main.sixB, i32 noundef %126), !dbg !3535
  %127 = load ptr, ptr @stderr, align 8, !dbg !3536, !tbaa !277
  %call238 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %127, ptr noundef @.str.17), !dbg !3537
  %128 = load ptr, ptr @stderr, align 8, !dbg !3538, !tbaa !277
  %call239 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %128, ptr noundef @.str.43), !dbg !3539
  call void @oggpackB_readinit(ptr noundef @r, ptr noundef @.str.27, i32 noundef 8), !dbg !3540
  store i64 0, ptr %i, align 8, !dbg !3541, !tbaa !350
  br label %for.cond240, !dbg !3543

for.cond240:                                      ; preds = %for.inc250, %if.end231
  %129 = load i64, ptr %i, align 8, !dbg !3544, !tbaa !350
  %cmp241 = icmp slt i64 %129, 64, !dbg !3546
  br i1 %cmp241, label %for.body243, label %for.end252, !dbg !3547

for.body243:                                      ; preds = %for.cond240
  %call244 = call i64 @oggpackB_read(ptr noundef @r, i32 noundef 1), !dbg !3548
  %cmp245 = icmp ne i64 %call244, 0, !dbg !3551
  br i1 %cmp245, label %if.then247, label %if.end249, !dbg !3552

if.then247:                                       ; preds = %for.body243
  %130 = load ptr, ptr @stderr, align 8, !dbg !3553, !tbaa !277
  %call248 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %130, ptr noundef @.str.28), !dbg !3555
  call void @exit(i32 noundef 1) #13, !dbg !3556
  unreachable, !dbg !3556

if.end249:                                        ; preds = %for.body243
  br label %for.inc250, !dbg !3557

for.inc250:                                       ; preds = %if.end249
  %131 = load i64, ptr %i, align 8, !dbg !3558, !tbaa !350
  %inc251 = add nsw i64 %131, 1, !dbg !3558
  store i64 %inc251, ptr %i, align 8, !dbg !3558, !tbaa !350
  br label %for.cond240, !dbg !3559, !llvm.loop !3560

for.end252:                                       ; preds = %for.cond240
  %call253 = call i64 @oggpackB_look(ptr noundef @r, i32 noundef 1), !dbg !3562
  %cmp254 = icmp ne i64 %call253, -1, !dbg !3564
  br i1 %cmp254, label %if.then260, label %lor.lhs.false256, !dbg !3565

lor.lhs.false256:                                 ; preds = %for.end252
  %call257 = call i64 @oggpackB_read(ptr noundef @r, i32 noundef 1), !dbg !3566
  %cmp258 = icmp ne i64 %call257, -1, !dbg !3567
  br i1 %cmp258, label %if.then260, label %if.end262, !dbg !3568

if.then260:                                       ; preds = %lor.lhs.false256, %for.end252
  %132 = load ptr, ptr @stderr, align 8, !dbg !3569, !tbaa !277
  %call261 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %132, ptr noundef @.str.29), !dbg !3571
  call void @exit(i32 noundef 1) #13, !dbg !3572
  unreachable, !dbg !3572

if.end262:                                        ; preds = %lor.lhs.false256
  call void @oggpackB_readinit(ptr noundef @r, ptr noundef @.str.27, i32 noundef 8), !dbg !3573
  %call263 = call i64 @oggpackB_read(ptr noundef @r, i32 noundef 30), !dbg !3574
  %cmp264 = icmp ne i64 %call263, 0, !dbg !3576
  br i1 %cmp264, label %if.then270, label %lor.lhs.false266, !dbg !3577

lor.lhs.false266:                                 ; preds = %if.end262
  %call267 = call i64 @oggpackB_read(ptr noundef @r, i32 noundef 16), !dbg !3578
  %cmp268 = icmp ne i64 %call267, 0, !dbg !3579
  br i1 %cmp268, label %if.then270, label %if.end272, !dbg !3580

if.then270:                                       ; preds = %lor.lhs.false266, %if.end262
  %133 = load ptr, ptr @stderr, align 8, !dbg !3581, !tbaa !277
  %call271 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %133, ptr noundef @.str.30), !dbg !3583
  call void @exit(i32 noundef 1) #13, !dbg !3584
  unreachable, !dbg !3584

if.end272:                                        ; preds = %lor.lhs.false266
  %call273 = call i64 @oggpackB_look(ptr noundef @r, i32 noundef 18), !dbg !3585
  %cmp274 = icmp ne i64 %call273, 0, !dbg !3587
  br i1 %cmp274, label %if.then280, label %lor.lhs.false276, !dbg !3588

lor.lhs.false276:                                 ; preds = %if.end272
  %call277 = call i64 @oggpackB_look(ptr noundef @r, i32 noundef 18), !dbg !3589
  %cmp278 = icmp ne i64 %call277, 0, !dbg !3590
  br i1 %cmp278, label %if.then280, label %if.end282, !dbg !3591

if.then280:                                       ; preds = %lor.lhs.false276, %if.end272
  %134 = load ptr, ptr @stderr, align 8, !dbg !3592, !tbaa !277
  %call281 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %134, ptr noundef @.str.31), !dbg !3594
  call void @exit(i32 noundef 1) #13, !dbg !3595
  unreachable, !dbg !3595

if.end282:                                        ; preds = %lor.lhs.false276
  %call283 = call i64 @oggpackB_look(ptr noundef @r, i32 noundef 19), !dbg !3596
  %cmp284 = icmp ne i64 %call283, -1, !dbg !3598
  br i1 %cmp284, label %if.then290, label %lor.lhs.false286, !dbg !3599

lor.lhs.false286:                                 ; preds = %if.end282
  %call287 = call i64 @oggpackB_look(ptr noundef @r, i32 noundef 19), !dbg !3600
  %cmp288 = icmp ne i64 %call287, -1, !dbg !3601
  br i1 %cmp288, label %if.then290, label %if.end292, !dbg !3602

if.then290:                                       ; preds = %lor.lhs.false286, %if.end282
  %135 = load ptr, ptr @stderr, align 8, !dbg !3603, !tbaa !277
  %call291 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %135, ptr noundef @.str.29), !dbg !3605
  call void @exit(i32 noundef 1) #13, !dbg !3606
  unreachable, !dbg !3606

if.end292:                                        ; preds = %lor.lhs.false286
  %call293 = call i64 @oggpackB_look(ptr noundef @r, i32 noundef 32), !dbg !3607
  %cmp294 = icmp ne i64 %call293, -1, !dbg !3609
  br i1 %cmp294, label %if.then300, label %lor.lhs.false296, !dbg !3610

lor.lhs.false296:                                 ; preds = %if.end292
  %call297 = call i64 @oggpackB_look(ptr noundef @r, i32 noundef 32), !dbg !3611
  %cmp298 = icmp ne i64 %call297, -1, !dbg !3612
  br i1 %cmp298, label %if.then300, label %if.end302, !dbg !3613

if.then300:                                       ; preds = %lor.lhs.false296, %if.end292
  %136 = load ptr, ptr @stderr, align 8, !dbg !3614, !tbaa !277
  %call301 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %136, ptr noundef @.str.29), !dbg !3616
  call void @exit(i32 noundef 1) #13, !dbg !3617
  unreachable, !dbg !3617

if.end302:                                        ; preds = %lor.lhs.false296
  %137 = load ptr, ptr @stderr, align 8, !dbg !3618, !tbaa !277
  %call303 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %137, ptr noundef @.str.17), !dbg !3619
  call void @oggpackB_writeclear(ptr noundef @o), !dbg !3620
  %138 = load ptr, ptr @stderr, align 8, !dbg !3621, !tbaa !277
  %call304 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %138, ptr noundef @.str.44), !dbg !3622
  store i64 0, ptr %i, align 8, !dbg !3623, !tbaa !350
  br label %for.cond305, !dbg !3625

for.cond305:                                      ; preds = %for.inc319, %if.end302
  %139 = load i64, ptr %i, align 8, !dbg !3626, !tbaa !350
  %cmp306 = icmp slt i64 %139, 71, !dbg !3628
  br i1 %cmp306, label %for.body308, label %for.end321, !dbg !3629

for.body308:                                      ; preds = %for.cond305
  store i64 0, ptr %j, align 8, !dbg !3630, !tbaa !350
  br label %for.cond309, !dbg !3632

for.cond309:                                      ; preds = %for.inc316, %for.body308
  %140 = load i64, ptr %j, align 8, !dbg !3633, !tbaa !350
  %cmp310 = icmp slt i64 %140, 5, !dbg !3635
  br i1 %cmp310, label %for.body312, label %for.end318, !dbg !3636

for.body312:                                      ; preds = %for.cond309
  %141 = load i64, ptr %j, align 8, !dbg !3637, !tbaa !350
  %mul313 = mul nsw i64 %141, 8, !dbg !3638
  %conv314 = trunc i64 %mul313 to i32, !dbg !3637
  %142 = load i64, ptr %i, align 8, !dbg !3639, !tbaa !350
  %conv315 = trunc i64 %142 to i32, !dbg !3639
  call void @copytestB(i32 noundef %conv314, i32 noundef %conv315), !dbg !3640
  br label %for.inc316, !dbg !3640

for.inc316:                                       ; preds = %for.body312
  %143 = load i64, ptr %j, align 8, !dbg !3641, !tbaa !350
  %inc317 = add nsw i64 %143, 1, !dbg !3641
  store i64 %inc317, ptr %j, align 8, !dbg !3641, !tbaa !350
  br label %for.cond309, !dbg !3642, !llvm.loop !3643

for.end318:                                       ; preds = %for.cond309
  br label %for.inc319, !dbg !3644

for.inc319:                                       ; preds = %for.end318
  %144 = load i64, ptr %i, align 8, !dbg !3645, !tbaa !350
  %inc320 = add nsw i64 %144, 1, !dbg !3645
  store i64 %inc320, ptr %i, align 8, !dbg !3645, !tbaa !350
  br label %for.cond305, !dbg !3646, !llvm.loop !3647

for.end321:                                       ; preds = %for.cond305
  store i64 1977, ptr %i, align 8, !dbg !3649, !tbaa !350
  br label %for.cond322, !dbg !3651

for.cond322:                                      ; preds = %for.inc336, %for.end321
  %145 = load i64, ptr %i, align 8, !dbg !3652, !tbaa !350
  %cmp323 = icmp slt i64 %145, 2119, !dbg !3654
  br i1 %cmp323, label %for.body325, label %for.end338, !dbg !3655

for.body325:                                      ; preds = %for.cond322
  store i64 0, ptr %j, align 8, !dbg !3656, !tbaa !350
  br label %for.cond326, !dbg !3658

for.cond326:                                      ; preds = %for.inc333, %for.body325
  %146 = load i64, ptr %j, align 8, !dbg !3659, !tbaa !350
  %cmp327 = icmp slt i64 %146, 5, !dbg !3661
  br i1 %cmp327, label %for.body329, label %for.end335, !dbg !3662

for.body329:                                      ; preds = %for.cond326
  %147 = load i64, ptr %j, align 8, !dbg !3663, !tbaa !350
  %mul330 = mul nsw i64 %147, 8, !dbg !3664
  %conv331 = trunc i64 %mul330 to i32, !dbg !3663
  %148 = load i64, ptr %i, align 8, !dbg !3665, !tbaa !350
  %conv332 = trunc i64 %148 to i32, !dbg !3665
  call void @copytestB(i32 noundef %conv331, i32 noundef %conv332), !dbg !3666
  br label %for.inc333, !dbg !3666

for.inc333:                                       ; preds = %for.body329
  %149 = load i64, ptr %j, align 8, !dbg !3667, !tbaa !350
  %inc334 = add nsw i64 %149, 1, !dbg !3667
  store i64 %inc334, ptr %j, align 8, !dbg !3667, !tbaa !350
  br label %for.cond326, !dbg !3668, !llvm.loop !3669

for.end335:                                       ; preds = %for.cond326
  br label %for.inc336, !dbg !3670

for.inc336:                                       ; preds = %for.end335
  %150 = load i64, ptr %i, align 8, !dbg !3671, !tbaa !350
  %inc337 = add nsw i64 %150, 1, !dbg !3671
  store i64 %inc337, ptr %i, align 8, !dbg !3671, !tbaa !350
  br label %for.cond322, !dbg !3672, !llvm.loop !3673

for.end338:                                       ; preds = %for.cond322
  %151 = load ptr, ptr @stderr, align 8, !dbg !3675, !tbaa !277
  %call339 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %151, ptr noundef @.str.33), !dbg !3676
  %152 = load ptr, ptr @stderr, align 8, !dbg !3677, !tbaa !277
  %call340 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %152, ptr noundef @.str.45), !dbg !3678
  store i64 0, ptr %i, align 8, !dbg !3679, !tbaa !350
  br label %for.cond341, !dbg !3681

for.cond341:                                      ; preds = %for.inc358, %for.end338
  %153 = load i64, ptr %i, align 8, !dbg !3682, !tbaa !350
  %cmp342 = icmp slt i64 %153, 71, !dbg !3684
  br i1 %cmp342, label %for.body344, label %for.end360, !dbg !3685

for.body344:                                      ; preds = %for.cond341
  store i64 1, ptr %j, align 8, !dbg !3686, !tbaa !350
  br label %for.cond345, !dbg !3688

for.cond345:                                      ; preds = %for.inc355, %for.body344
  %154 = load i64, ptr %j, align 8, !dbg !3689, !tbaa !350
  %cmp346 = icmp slt i64 %154, 40, !dbg !3691
  br i1 %cmp346, label %for.body348, label %for.end357, !dbg !3692

for.body348:                                      ; preds = %for.cond345
  %155 = load i64, ptr %j, align 8, !dbg !3693, !tbaa !350
  %and349 = and i64 %155, 7, !dbg !3695
  %tobool350 = icmp ne i64 %and349, 0, !dbg !3695
  br i1 %tobool350, label %if.then351, label %if.end354, !dbg !3696

if.then351:                                       ; preds = %for.body348
  %156 = load i64, ptr %j, align 8, !dbg !3697, !tbaa !350
  %conv352 = trunc i64 %156 to i32, !dbg !3697
  %157 = load i64, ptr %i, align 8, !dbg !3698, !tbaa !350
  %conv353 = trunc i64 %157 to i32, !dbg !3698
  call void @copytestB(i32 noundef %conv352, i32 noundef %conv353), !dbg !3699
  br label %if.end354, !dbg !3699

if.end354:                                        ; preds = %if.then351, %for.body348
  br label %for.inc355, !dbg !3700

for.inc355:                                       ; preds = %if.end354
  %158 = load i64, ptr %j, align 8, !dbg !3701, !tbaa !350
  %inc356 = add nsw i64 %158, 1, !dbg !3701
  store i64 %inc356, ptr %j, align 8, !dbg !3701, !tbaa !350
  br label %for.cond345, !dbg !3702, !llvm.loop !3703

for.end357:                                       ; preds = %for.cond345
  br label %for.inc358, !dbg !3704

for.inc358:                                       ; preds = %for.end357
  %159 = load i64, ptr %i, align 8, !dbg !3705, !tbaa !350
  %inc359 = add nsw i64 %159, 1, !dbg !3705
  store i64 %inc359, ptr %i, align 8, !dbg !3705, !tbaa !350
  br label %for.cond341, !dbg !3706, !llvm.loop !3707

for.end360:                                       ; preds = %for.cond341
  store i64 1977, ptr %i, align 8, !dbg !3709, !tbaa !350
  br label %for.cond361, !dbg !3711

for.cond361:                                      ; preds = %for.inc378, %for.end360
  %160 = load i64, ptr %i, align 8, !dbg !3712, !tbaa !350
  %cmp362 = icmp slt i64 %160, 2119, !dbg !3714
  br i1 %cmp362, label %for.body364, label %for.end380, !dbg !3715

for.body364:                                      ; preds = %for.cond361
  store i64 1, ptr %j, align 8, !dbg !3716, !tbaa !350
  br label %for.cond365, !dbg !3718

for.cond365:                                      ; preds = %for.inc375, %for.body364
  %161 = load i64, ptr %j, align 8, !dbg !3719, !tbaa !350
  %cmp366 = icmp slt i64 %161, 40, !dbg !3721
  br i1 %cmp366, label %for.body368, label %for.end377, !dbg !3722

for.body368:                                      ; preds = %for.cond365
  %162 = load i64, ptr %j, align 8, !dbg !3723, !tbaa !350
  %and369 = and i64 %162, 7, !dbg !3725
  %tobool370 = icmp ne i64 %and369, 0, !dbg !3725
  br i1 %tobool370, label %if.then371, label %if.end374, !dbg !3726

if.then371:                                       ; preds = %for.body368
  %163 = load i64, ptr %j, align 8, !dbg !3727, !tbaa !350
  %conv372 = trunc i64 %163 to i32, !dbg !3727
  %164 = load i64, ptr %i, align 8, !dbg !3728, !tbaa !350
  %conv373 = trunc i64 %164 to i32, !dbg !3728
  call void @copytestB(i32 noundef %conv372, i32 noundef %conv373), !dbg !3729
  br label %if.end374, !dbg !3729

if.end374:                                        ; preds = %if.then371, %for.body368
  br label %for.inc375, !dbg !3730

for.inc375:                                       ; preds = %if.end374
  %165 = load i64, ptr %j, align 8, !dbg !3731, !tbaa !350
  %inc376 = add nsw i64 %165, 1, !dbg !3731
  store i64 %inc376, ptr %j, align 8, !dbg !3731, !tbaa !350
  br label %for.cond365, !dbg !3732, !llvm.loop !3733

for.end377:                                       ; preds = %for.cond365
  br label %for.inc378, !dbg !3734

for.inc378:                                       ; preds = %for.end377
  %166 = load i64, ptr %i, align 8, !dbg !3735, !tbaa !350
  %inc379 = add nsw i64 %166, 1, !dbg !3735
  store i64 %inc379, ptr %i, align 8, !dbg !3735, !tbaa !350
  br label %for.cond361, !dbg !3736, !llvm.loop !3737

for.end380:                                       ; preds = %for.cond361
  %167 = load ptr, ptr @stderr, align 8, !dbg !3739, !tbaa !277
  %call381 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %167, ptr noundef @.str.46), !dbg !3740
  call void @llvm.lifetime.end.p0(i64 4, ptr %sixsize) #11, !dbg !3741
  call void @llvm.lifetime.end.p0(i64 4, ptr %fivesize) #11, !dbg !3741
  call void @llvm.lifetime.end.p0(i64 4, ptr %foursize) #11, !dbg !3741
  call void @llvm.lifetime.end.p0(i64 4, ptr %threesize) #11, !dbg !3741
  call void @llvm.lifetime.end.p0(i64 4, ptr %twosize) #11, !dbg !3741
  call void @llvm.lifetime.end.p0(i64 4, ptr %onesize) #11, !dbg !3741
  call void @llvm.lifetime.end.p0(i64 4, ptr %test3size) #11, !dbg !3741
  call void @llvm.lifetime.end.p0(i64 4, ptr %test2size) #11, !dbg !3741
  call void @llvm.lifetime.end.p0(i64 4, ptr %test1size) #11, !dbg !3741
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #11, !dbg !3741
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11, !dbg !3741
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #11, !dbg !3741
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer) #11, !dbg !3741
  ret i32 0, !dbg !3742
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #9

attributes #0 = { nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind allocsize(0) "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind allocsize(1) "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #5 = { nounwind "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #6 = { "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #7 = { noreturn nounwind "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(1) }
attributes #13 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!264, !265, !266, !267, !268, !269}
!llvm.ident = !{!270}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "mask", scope: !2, file: !3, line: 27, type: !262, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !9, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "bitwise.c", directory: "/local-ssd/libogg-zeaoooeqx6nlxrhajao3cigwc5ful2x2-build/aidengro/spack-stage-libogg-1.3.5-zeaoooeqx6nlxrhajao3cigwc5ful2x2/spack-src/src", checksumkind: CSK_MD5, checksum: "91a8143480a0b29ab78023d7ad3c9204")
!4 = !{!5, !6, !7, !8}
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!8 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!9 = !{!10, !16, !21, !26, !28, !33, !38, !43, !48, !53, !55, !60, !65, !70, !75, !77, !82, !105, !110, !115, !117, !122, !124, !129, !131, !136, !138, !141, !143, !146, !148, !151, !153, !155, !160, !162, !164, !169, !172, !174, !177, !179, !181, !186, !191, !196, !198, !200, !202, !207, !212, !214, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !244, !255, !0, !257}
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(scope: null, file: !3, line: 545, type: !12, isLocal: true, isDefinition: true)
!12 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 24, elements: !14)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !{!15}
!15 = !DISubrange(count: 3)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(scope: null, file: !3, line: 558, type: !18, isLocal: true, isDefinition: true)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 192, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 24)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(scope: null, file: !3, line: 560, type: !23, isLocal: true, isDefinition: true)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 56, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 7)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !3, line: 561, type: !18, isLocal: true, isDefinition: true)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !3, line: 567, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 112, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 14)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !3, line: 569, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 224, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 28)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !3, line: 572, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 312, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 39)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !3, line: 575, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 272, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 34)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !3, line: 578, type: !50, isLocal: true, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 184, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 23)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !3, line: 581, type: !35, isLocal: true, isDefinition: true)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(scope: null, file: !3, line: 644, type: !57, isLocal: true, isDefinition: true)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 368, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 46)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(scope: null, file: !3, line: 654, type: !62, isLocal: true, isDefinition: true)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 304, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 38)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(scope: null, file: !3, line: 660, type: !67, isLocal: true, isDefinition: true)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 360, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 45)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(scope: null, file: !3, line: 672, type: !72, isLocal: true, isDefinition: true)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 408, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 51)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(scope: null, file: !3, line: 692, type: !57, isLocal: true, isDefinition: true)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(scope: null, file: !3, line: 699, type: !79, isLocal: true, isDefinition: true)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 424, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 53)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "testbuffer1", scope: !84, file: !3, line: 803, type: !102, isLocal: true, isDefinition: true)
!84 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 800, type: !85, scopeLine: 800, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !87)
!85 = !DISubroutineType(types: !86)
!86 = !{!6}
!87 = !{!88, !89, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101}
!88 = !DILocalVariable(name: "buffer", scope: !84, file: !3, line: 801, type: !7)
!89 = !DILocalVariable(name: "bytes", scope: !84, file: !3, line: 802, type: !90)
!90 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!91 = !DILocalVariable(name: "i", scope: !84, file: !3, line: 802, type: !90)
!92 = !DILocalVariable(name: "j", scope: !84, file: !3, line: 802, type: !90)
!93 = !DILocalVariable(name: "test1size", scope: !84, file: !3, line: 806, type: !6)
!94 = !DILocalVariable(name: "test2size", scope: !84, file: !3, line: 812, type: !6)
!95 = !DILocalVariable(name: "test3size", scope: !84, file: !3, line: 817, type: !6)
!96 = !DILocalVariable(name: "onesize", scope: !84, file: !3, line: 824, type: !6)
!97 = !DILocalVariable(name: "twosize", scope: !84, file: !3, line: 832, type: !6)
!98 = !DILocalVariable(name: "threesize", scope: !84, file: !3, line: 836, type: !6)
!99 = !DILocalVariable(name: "foursize", scope: !84, file: !3, line: 846, type: !6)
!100 = !DILocalVariable(name: "fivesize", scope: !84, file: !3, line: 854, type: !6)
!101 = !DILocalVariable(name: "sixsize", scope: !84, file: !3, line: 862, type: !6)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2752, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 43)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(name: "testbuffer2", scope: !84, file: !3, line: 808, type: !107, isLocal: true, isDefinition: true)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 1344, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 21)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "testbuffer3", scope: !84, file: !3, line: 814, type: !112, isLocal: true, isDefinition: true)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 3584, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 56)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(name: "large", scope: !84, file: !3, line: 819, type: !107, isLocal: true, isDefinition: true)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(name: "one", scope: !84, file: !3, line: 825, type: !119, isLocal: true, isDefinition: true)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1056, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 33)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(name: "oneB", scope: !84, file: !3, line: 828, type: !119, isLocal: true, isDefinition: true)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(name: "two", scope: !84, file: !3, line: 833, type: !126, isLocal: true, isDefinition: true)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 192, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 6)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(name: "twoB", scope: !84, file: !3, line: 834, type: !126, isLocal: true, isDefinition: true)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(name: "three", scope: !84, file: !3, line: 837, type: !133, isLocal: true, isDefinition: true)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1728, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 54)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(name: "threeB", scope: !84, file: !3, line: 841, type: !133, isLocal: true, isDefinition: true)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "four", scope: !84, file: !3, line: 847, type: !140, isLocal: true, isDefinition: true)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1216, elements: !63)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "fourB", scope: !84, file: !3, line: 850, type: !140, isLocal: true, isDefinition: true)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(name: "five", scope: !84, file: !3, line: 855, type: !145, isLocal: true, isDefinition: true)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1440, elements: !68)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(name: "fiveB", scope: !84, file: !3, line: 858, type: !145, isLocal: true, isDefinition: true)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(name: "six", scope: !84, file: !3, line: 863, type: !150, isLocal: true, isDefinition: true)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 224, elements: !24)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "sixB", scope: !84, file: !3, line: 864, type: !150, isLocal: true, isDefinition: true)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !3, line: 870, type: !45, isLocal: true, isDefinition: true)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(scope: null, file: !3, line: 872, type: !157, isLocal: true, isDefinition: true)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 32, elements: !158)
!158 = !{!159}
!159 = !DISubrange(count: 4)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(scope: null, file: !3, line: 874, type: !50, isLocal: true, isDefinition: true)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(scope: null, file: !3, line: 878, type: !45, isLocal: true, isDefinition: true)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(scope: null, file: !3, line: 882, type: !166, isLocal: true, isDefinition: true)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 280, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 35)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(scope: null, file: !3, line: 890, type: !171, isLocal: true, isDefinition: true)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 168, elements: !108)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(scope: null, file: !3, line: 892, type: !50, isLocal: true, isDefinition: true)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(scope: null, file: !3, line: 901, type: !176, isLocal: true, isDefinition: true)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 264, elements: !120)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(scope: null, file: !3, line: 905, type: !176, isLocal: true, isDefinition: true)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(scope: null, file: !3, line: 909, type: !62, isLocal: true, isDefinition: true)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(scope: null, file: !3, line: 913, type: !183, isLocal: true, isDefinition: true)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 248, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 31)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(scope: null, file: !3, line: 914, type: !188, isLocal: true, isDefinition: true)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 72, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 9)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(scope: null, file: !3, line: 917, type: !193, isLocal: true, isDefinition: true)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 232, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 29)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(scope: null, file: !3, line: 923, type: !166, isLocal: true, isDefinition: true)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(scope: null, file: !3, line: 928, type: !183, isLocal: true, isDefinition: true)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(scope: null, file: !3, line: 934, type: !183, isLocal: true, isDefinition: true)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(scope: null, file: !3, line: 952, type: !204, isLocal: true, isDefinition: true)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 296, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 37)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(scope: null, file: !3, line: 959, type: !209, isLocal: true, isDefinition: true)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 80, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 10)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(scope: null, file: !3, line: 961, type: !40, isLocal: true, isDefinition: true)
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(scope: null, file: !3, line: 971, type: !216, isLocal: true, isDefinition: true)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 88, elements: !217)
!217 = !{!218}
!218 = !DISubrange(count: 11)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(scope: null, file: !3, line: 980, type: !45, isLocal: true, isDefinition: true)
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(scope: null, file: !3, line: 984, type: !50, isLocal: true, isDefinition: true)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(scope: null, file: !3, line: 988, type: !45, isLocal: true, isDefinition: true)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(scope: null, file: !3, line: 992, type: !166, isLocal: true, isDefinition: true)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1011, type: !176, isLocal: true, isDefinition: true)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1015, type: !176, isLocal: true, isDefinition: true)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1019, type: !62, isLocal: true, isDefinition: true)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1023, type: !183, isLocal: true, isDefinition: true)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1062, type: !204, isLocal: true, isDefinition: true)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1071, type: !40, isLocal: true, isDefinition: true)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1081, type: !241, isLocal: true, isDefinition: true)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 96, elements: !242)
!242 = !{!243}
!243 = !DISubrange(count: 12)
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(name: "o", scope: !2, file: !3, line: 541, type: !246, isLocal: false, isDefinition: true)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "oggpack_buffer", file: !247, line: 38, baseType: !248)
!247 = !DIFile(filename: "../include/ogg/ogg.h", directory: "/local-ssd/libogg-zeaoooeqx6nlxrhajao3cigwc5ful2x2-build/aidengro/spack-stage-libogg-1.3.5-zeaoooeqx6nlxrhajao3cigwc5ful2x2/spack-src/src", checksumkind: CSK_MD5, checksum: "2106a0f51369b0d990f233103e9a2bf6")
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !247, line: 31, size: 320, elements: !249)
!249 = !{!250, !251, !252, !253, !254}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "endbyte", scope: !248, file: !247, line: 32, baseType: !90, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "endbit", scope: !248, file: !247, line: 33, baseType: !6, size: 32, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !248, file: !247, line: 35, baseType: !7, size: 64, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !248, file: !247, line: 36, baseType: !7, size: 64, offset: 192)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !248, file: !247, line: 37, baseType: !90, size: 64, offset: 256)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(name: "r", scope: !2, file: !3, line: 542, type: !246, isLocal: false, isDefinition: true)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(name: "mask8B", scope: !2, file: !3, line: 36, type: !259, isLocal: true, isDefinition: true)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 288, elements: !189)
!260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!261 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 2112, elements: !120)
!263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!264 = !{i32 7, !"Dwarf Version", i32 5}
!265 = !{i32 2, !"Debug Info Version", i32 3}
!266 = !{i32 1, !"wchar_size", i32 4}
!267 = !{i32 8, !"PIC Level", i32 2}
!268 = !{i32 7, !"PIE Level", i32 2}
!269 = !{i32 7, !"uwtable", i32 2}
!270 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!271 = distinct !DISubprogram(name: "oggpack_writeinit", scope: !3, file: !3, line: 39, type: !272, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !275)
!272 = !DISubroutineType(types: !273)
!273 = !{null, !274}
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!275 = !{!276}
!276 = !DILocalVariable(name: "b", arg: 1, scope: !271, file: !3, line: 39, type: !274)
!277 = !{!278, !278, i64 0}
!278 = !{!"any pointer", !279, i64 0}
!279 = !{!"omnipotent char", !280, i64 0}
!280 = !{!"Simple C/C++ TBAA"}
!281 = !DILocation(line: 39, column: 40, scope: !271)
!282 = !DILocation(line: 40, column: 10, scope: !271)
!283 = !DILocation(line: 40, column: 3, scope: !271)
!284 = !DILocation(line: 41, column: 20, scope: !271)
!285 = !DILocation(line: 41, column: 10, scope: !271)
!286 = !DILocation(line: 41, column: 13, scope: !271)
!287 = !DILocation(line: 41, column: 19, scope: !271)
!288 = !{!289, !278, i64 16}
!289 = !{!"", !290, i64 0, !291, i64 8, !278, i64 16, !278, i64 24, !290, i64 32}
!290 = !{!"long", !279, i64 0}
!291 = !{!"int", !279, i64 0}
!292 = !DILocation(line: 41, column: 3, scope: !271)
!293 = !DILocation(line: 41, column: 6, scope: !271)
!294 = !DILocation(line: 41, column: 9, scope: !271)
!295 = !{!289, !278, i64 24}
!296 = !DILocation(line: 42, column: 3, scope: !271)
!297 = !DILocation(line: 42, column: 6, scope: !271)
!298 = !DILocation(line: 42, column: 15, scope: !271)
!299 = !{!279, !279, i64 0}
!300 = !DILocation(line: 43, column: 3, scope: !271)
!301 = !DILocation(line: 43, column: 6, scope: !271)
!302 = !DILocation(line: 43, column: 13, scope: !271)
!303 = !{!289, !290, i64 32}
!304 = !DILocation(line: 44, column: 1, scope: !271)
!305 = !DISubprogram(name: "malloc", scope: !306, file: !306, line: 540, type: !307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!306 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!307 = !DISubroutineType(types: !308)
!308 = !{!309, !310}
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !311, line: 70, baseType: !8)
!311 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!312 = distinct !DISubprogram(name: "oggpackB_writeinit", scope: !3, file: !3, line: 46, type: !272, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !313)
!313 = !{!314}
!314 = !DILocalVariable(name: "b", arg: 1, scope: !312, file: !3, line: 46, type: !274)
!315 = !DILocation(line: 46, column: 41, scope: !312)
!316 = !DILocation(line: 47, column: 21, scope: !312)
!317 = !DILocation(line: 47, column: 3, scope: !312)
!318 = !DILocation(line: 48, column: 1, scope: !312)
!319 = distinct !DISubprogram(name: "oggpack_writecheck", scope: !3, file: !3, line: 50, type: !320, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !322)
!320 = !DISubroutineType(types: !321)
!321 = !{!6, !274}
!322 = !{!323}
!323 = !DILocalVariable(name: "b", arg: 1, scope: !319, file: !3, line: 50, type: !274)
!324 = !DILocation(line: 50, column: 40, scope: !319)
!325 = !DILocation(line: 51, column: 7, scope: !326)
!326 = distinct !DILexicalBlock(scope: !319, file: !3, line: 51, column: 6)
!327 = !DILocation(line: 51, column: 10, scope: !326)
!328 = !DILocation(line: 51, column: 14, scope: !326)
!329 = !DILocation(line: 51, column: 18, scope: !326)
!330 = !DILocation(line: 51, column: 21, scope: !326)
!331 = !DILocation(line: 51, column: 6, scope: !319)
!332 = !DILocation(line: 51, column: 29, scope: !326)
!333 = !DILocation(line: 52, column: 3, scope: !319)
!334 = !DILocation(line: 53, column: 1, scope: !319)
!335 = distinct !DISubprogram(name: "oggpackB_writecheck", scope: !3, file: !3, line: 55, type: !320, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !336)
!336 = !{!337}
!337 = !DILocalVariable(name: "b", arg: 1, scope: !335, file: !3, line: 55, type: !274)
!338 = !DILocation(line: 55, column: 41, scope: !335)
!339 = !DILocation(line: 56, column: 29, scope: !335)
!340 = !DILocation(line: 56, column: 10, scope: !335)
!341 = !DILocation(line: 56, column: 3, scope: !335)
!342 = distinct !DISubprogram(name: "oggpack_writetrunc", scope: !3, file: !3, line: 59, type: !343, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !345)
!343 = !DISubroutineType(types: !344)
!344 = !{null, !274, !90}
!345 = !{!346, !347, !348}
!346 = !DILocalVariable(name: "b", arg: 1, scope: !342, file: !3, line: 59, type: !274)
!347 = !DILocalVariable(name: "bits", arg: 2, scope: !342, file: !3, line: 59, type: !90)
!348 = !DILocalVariable(name: "bytes", scope: !342, file: !3, line: 60, type: !90)
!349 = !DILocation(line: 59, column: 41, scope: !342)
!350 = !{!290, !290, i64 0}
!351 = !DILocation(line: 59, column: 48, scope: !342)
!352 = !DILocation(line: 60, column: 3, scope: !342)
!353 = !DILocation(line: 60, column: 8, scope: !342)
!354 = !DILocation(line: 60, column: 14, scope: !342)
!355 = !DILocation(line: 60, column: 18, scope: !342)
!356 = !DILocation(line: 61, column: 6, scope: !357)
!357 = distinct !DILexicalBlock(scope: !342, file: !3, line: 61, column: 6)
!358 = !DILocation(line: 61, column: 9, scope: !357)
!359 = !DILocation(line: 61, column: 6, scope: !342)
!360 = !DILocation(line: 62, column: 11, scope: !361)
!361 = distinct !DILexicalBlock(scope: !357, file: !3, line: 61, column: 13)
!362 = !DILocation(line: 62, column: 16, scope: !361)
!363 = !DILocation(line: 62, column: 9, scope: !361)
!364 = !DILocation(line: 63, column: 12, scope: !361)
!365 = !DILocation(line: 63, column: 15, scope: !361)
!366 = !DILocation(line: 63, column: 22, scope: !361)
!367 = !DILocation(line: 63, column: 21, scope: !361)
!368 = !DILocation(line: 63, column: 5, scope: !361)
!369 = !DILocation(line: 63, column: 8, scope: !361)
!370 = !DILocation(line: 63, column: 11, scope: !361)
!371 = !DILocation(line: 64, column: 15, scope: !361)
!372 = !DILocation(line: 64, column: 5, scope: !361)
!373 = !DILocation(line: 64, column: 8, scope: !361)
!374 = !DILocation(line: 64, column: 14, scope: !361)
!375 = !{!289, !291, i64 8}
!376 = !DILocation(line: 65, column: 16, scope: !361)
!377 = !DILocation(line: 65, column: 5, scope: !361)
!378 = !DILocation(line: 65, column: 8, scope: !361)
!379 = !DILocation(line: 65, column: 15, scope: !361)
!380 = !{!289, !290, i64 0}
!381 = !DILocation(line: 66, column: 19, scope: !361)
!382 = !DILocation(line: 66, column: 14, scope: !361)
!383 = !DILocation(line: 66, column: 6, scope: !361)
!384 = !DILocation(line: 66, column: 9, scope: !361)
!385 = !DILocation(line: 66, column: 12, scope: !361)
!386 = !DILocation(line: 67, column: 3, scope: !361)
!387 = !DILocation(line: 68, column: 1, scope: !342)
!388 = distinct !DISubprogram(name: "oggpackB_writetrunc", scope: !3, file: !3, line: 70, type: !343, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !389)
!389 = !{!390, !391, !392}
!390 = !DILocalVariable(name: "b", arg: 1, scope: !388, file: !3, line: 70, type: !274)
!391 = !DILocalVariable(name: "bits", arg: 2, scope: !388, file: !3, line: 70, type: !90)
!392 = !DILocalVariable(name: "bytes", scope: !388, file: !3, line: 71, type: !90)
!393 = !DILocation(line: 70, column: 42, scope: !388)
!394 = !DILocation(line: 70, column: 49, scope: !388)
!395 = !DILocation(line: 71, column: 3, scope: !388)
!396 = !DILocation(line: 71, column: 8, scope: !388)
!397 = !DILocation(line: 71, column: 14, scope: !388)
!398 = !DILocation(line: 71, column: 18, scope: !388)
!399 = !DILocation(line: 72, column: 6, scope: !400)
!400 = distinct !DILexicalBlock(scope: !388, file: !3, line: 72, column: 6)
!401 = !DILocation(line: 72, column: 9, scope: !400)
!402 = !DILocation(line: 72, column: 6, scope: !388)
!403 = !DILocation(line: 73, column: 11, scope: !404)
!404 = distinct !DILexicalBlock(scope: !400, file: !3, line: 72, column: 13)
!405 = !DILocation(line: 73, column: 16, scope: !404)
!406 = !DILocation(line: 73, column: 9, scope: !404)
!407 = !DILocation(line: 74, column: 12, scope: !404)
!408 = !DILocation(line: 74, column: 15, scope: !404)
!409 = !DILocation(line: 74, column: 22, scope: !404)
!410 = !DILocation(line: 74, column: 21, scope: !404)
!411 = !DILocation(line: 74, column: 5, scope: !404)
!412 = !DILocation(line: 74, column: 8, scope: !404)
!413 = !DILocation(line: 74, column: 11, scope: !404)
!414 = !DILocation(line: 75, column: 15, scope: !404)
!415 = !DILocation(line: 75, column: 5, scope: !404)
!416 = !DILocation(line: 75, column: 8, scope: !404)
!417 = !DILocation(line: 75, column: 14, scope: !404)
!418 = !DILocation(line: 76, column: 16, scope: !404)
!419 = !DILocation(line: 76, column: 5, scope: !404)
!420 = !DILocation(line: 76, column: 8, scope: !404)
!421 = !DILocation(line: 76, column: 15, scope: !404)
!422 = !DILocation(line: 77, column: 21, scope: !404)
!423 = !DILocation(line: 77, column: 14, scope: !404)
!424 = !{!291, !291, i64 0}
!425 = !DILocation(line: 77, column: 6, scope: !404)
!426 = !DILocation(line: 77, column: 9, scope: !404)
!427 = !DILocation(line: 77, column: 12, scope: !404)
!428 = !DILocation(line: 78, column: 3, scope: !404)
!429 = !DILocation(line: 79, column: 1, scope: !388)
!430 = distinct !DISubprogram(name: "oggpack_write", scope: !3, file: !3, line: 82, type: !431, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !433)
!431 = !DISubroutineType(types: !432)
!432 = !{null, !274, !8, !6}
!433 = !{!434, !435, !436, !437, !440}
!434 = !DILocalVariable(name: "b", arg: 1, scope: !430, file: !3, line: 82, type: !274)
!435 = !DILocalVariable(name: "value", arg: 2, scope: !430, file: !3, line: 82, type: !8)
!436 = !DILocalVariable(name: "bits", arg: 3, scope: !430, file: !3, line: 82, type: !6)
!437 = !DILocalVariable(name: "ret", scope: !438, file: !3, line: 85, type: !309)
!438 = distinct !DILexicalBlock(scope: !439, file: !3, line: 84, column: 31)
!439 = distinct !DILexicalBlock(scope: !430, file: !3, line: 84, column: 6)
!440 = !DILabel(scope: !430, name: "err", file: !3, line: 120)
!441 = !DILocation(line: 82, column: 36, scope: !430)
!442 = !DILocation(line: 82, column: 52, scope: !430)
!443 = !DILocation(line: 82, column: 62, scope: !430)
!444 = !DILocation(line: 83, column: 6, scope: !445)
!445 = distinct !DILexicalBlock(scope: !430, file: !3, line: 83, column: 6)
!446 = !DILocation(line: 83, column: 10, scope: !445)
!447 = !DILocation(line: 83, column: 13, scope: !445)
!448 = !DILocation(line: 83, column: 16, scope: !445)
!449 = !DILocation(line: 83, column: 20, scope: !445)
!450 = !DILocation(line: 83, column: 6, scope: !430)
!451 = !DILocation(line: 83, column: 25, scope: !445)
!452 = !DILocation(line: 84, column: 6, scope: !439)
!453 = !DILocation(line: 84, column: 9, scope: !439)
!454 = !DILocation(line: 84, column: 18, scope: !439)
!455 = !DILocation(line: 84, column: 21, scope: !439)
!456 = !DILocation(line: 84, column: 28, scope: !439)
!457 = !DILocation(line: 84, column: 16, scope: !439)
!458 = !DILocation(line: 84, column: 6, scope: !430)
!459 = !DILocation(line: 85, column: 5, scope: !438)
!460 = !DILocation(line: 85, column: 11, scope: !438)
!461 = !DILocation(line: 86, column: 9, scope: !462)
!462 = distinct !DILexicalBlock(scope: !438, file: !3, line: 86, column: 8)
!463 = !DILocation(line: 86, column: 12, scope: !462)
!464 = !DILocation(line: 86, column: 8, scope: !438)
!465 = !DILocation(line: 86, column: 16, scope: !462)
!466 = !DILocation(line: 87, column: 8, scope: !467)
!467 = distinct !DILexicalBlock(scope: !438, file: !3, line: 87, column: 8)
!468 = !DILocation(line: 87, column: 11, scope: !467)
!469 = !DILocation(line: 87, column: 18, scope: !467)
!470 = !DILocation(line: 87, column: 8, scope: !438)
!471 = !DILocation(line: 87, column: 46, scope: !467)
!472 = !DILocation(line: 88, column: 22, scope: !438)
!473 = !DILocation(line: 88, column: 25, scope: !438)
!474 = !DILocation(line: 88, column: 32, scope: !438)
!475 = !DILocation(line: 88, column: 35, scope: !438)
!476 = !DILocation(line: 88, column: 42, scope: !438)
!477 = !DILocation(line: 88, column: 9, scope: !438)
!478 = !DILocation(line: 88, column: 8, scope: !438)
!479 = !DILocation(line: 89, column: 9, scope: !480)
!480 = distinct !DILexicalBlock(scope: !438, file: !3, line: 89, column: 8)
!481 = !DILocation(line: 89, column: 8, scope: !438)
!482 = !DILocation(line: 89, column: 14, scope: !480)
!483 = !DILocation(line: 90, column: 15, scope: !438)
!484 = !DILocation(line: 90, column: 5, scope: !438)
!485 = !DILocation(line: 90, column: 8, scope: !438)
!486 = !DILocation(line: 90, column: 14, scope: !438)
!487 = !DILocation(line: 91, column: 5, scope: !438)
!488 = !DILocation(line: 91, column: 8, scope: !438)
!489 = !DILocation(line: 91, column: 15, scope: !438)
!490 = !DILocation(line: 92, column: 12, scope: !438)
!491 = !DILocation(line: 92, column: 15, scope: !438)
!492 = !DILocation(line: 92, column: 22, scope: !438)
!493 = !DILocation(line: 92, column: 25, scope: !438)
!494 = !DILocation(line: 92, column: 21, scope: !438)
!495 = !DILocation(line: 92, column: 5, scope: !438)
!496 = !DILocation(line: 92, column: 8, scope: !438)
!497 = !DILocation(line: 92, column: 11, scope: !438)
!498 = !DILocation(line: 93, column: 3, scope: !439)
!499 = !DILocation(line: 93, column: 3, scope: !438)
!500 = !DILocation(line: 95, column: 15, scope: !430)
!501 = !DILocation(line: 95, column: 10, scope: !430)
!502 = !DILocation(line: 95, column: 8, scope: !430)
!503 = !DILocation(line: 96, column: 9, scope: !430)
!504 = !DILocation(line: 96, column: 12, scope: !430)
!505 = !DILocation(line: 96, column: 7, scope: !430)
!506 = !DILocation(line: 98, column: 14, scope: !430)
!507 = !DILocation(line: 98, column: 21, scope: !430)
!508 = !DILocation(line: 98, column: 24, scope: !430)
!509 = !DILocation(line: 98, column: 19, scope: !430)
!510 = !DILocation(line: 98, column: 3, scope: !430)
!511 = !DILocation(line: 98, column: 6, scope: !430)
!512 = !DILocation(line: 98, column: 12, scope: !430)
!513 = !DILocation(line: 100, column: 6, scope: !514)
!514 = distinct !DILexicalBlock(scope: !430, file: !3, line: 100, column: 6)
!515 = !DILocation(line: 100, column: 10, scope: !514)
!516 = !DILocation(line: 100, column: 6, scope: !430)
!517 = !DILocation(line: 101, column: 31, scope: !518)
!518 = distinct !DILexicalBlock(scope: !514, file: !3, line: 100, column: 14)
!519 = !DILocation(line: 101, column: 41, scope: !518)
!520 = !DILocation(line: 101, column: 44, scope: !518)
!521 = !DILocation(line: 101, column: 40, scope: !518)
!522 = !DILocation(line: 101, column: 36, scope: !518)
!523 = !DILocation(line: 101, column: 15, scope: !518)
!524 = !DILocation(line: 101, column: 5, scope: !518)
!525 = !DILocation(line: 101, column: 8, scope: !518)
!526 = !DILocation(line: 101, column: 14, scope: !518)
!527 = !DILocation(line: 102, column: 8, scope: !528)
!528 = distinct !DILexicalBlock(scope: !518, file: !3, line: 102, column: 8)
!529 = !DILocation(line: 102, column: 12, scope: !528)
!530 = !DILocation(line: 102, column: 8, scope: !518)
!531 = !DILocation(line: 103, column: 33, scope: !532)
!532 = distinct !DILexicalBlock(scope: !528, file: !3, line: 102, column: 17)
!533 = !DILocation(line: 103, column: 44, scope: !532)
!534 = !DILocation(line: 103, column: 47, scope: !532)
!535 = !DILocation(line: 103, column: 43, scope: !532)
!536 = !DILocation(line: 103, column: 38, scope: !532)
!537 = !DILocation(line: 103, column: 17, scope: !532)
!538 = !DILocation(line: 103, column: 7, scope: !532)
!539 = !DILocation(line: 103, column: 10, scope: !532)
!540 = !DILocation(line: 103, column: 16, scope: !532)
!541 = !DILocation(line: 104, column: 10, scope: !542)
!542 = distinct !DILexicalBlock(scope: !532, file: !3, line: 104, column: 10)
!543 = !DILocation(line: 104, column: 14, scope: !542)
!544 = !DILocation(line: 104, column: 10, scope: !532)
!545 = !DILocation(line: 105, column: 35, scope: !546)
!546 = distinct !DILexicalBlock(scope: !542, file: !3, line: 104, column: 19)
!547 = !DILocation(line: 105, column: 46, scope: !546)
!548 = !DILocation(line: 105, column: 49, scope: !546)
!549 = !DILocation(line: 105, column: 45, scope: !546)
!550 = !DILocation(line: 105, column: 40, scope: !546)
!551 = !DILocation(line: 105, column: 19, scope: !546)
!552 = !DILocation(line: 105, column: 9, scope: !546)
!553 = !DILocation(line: 105, column: 12, scope: !546)
!554 = !DILocation(line: 105, column: 18, scope: !546)
!555 = !DILocation(line: 106, column: 12, scope: !556)
!556 = distinct !DILexicalBlock(scope: !546, file: !3, line: 106, column: 12)
!557 = !DILocation(line: 106, column: 16, scope: !556)
!558 = !DILocation(line: 106, column: 12, scope: !546)
!559 = !DILocation(line: 107, column: 14, scope: !560)
!560 = distinct !DILexicalBlock(scope: !561, file: !3, line: 107, column: 14)
!561 = distinct !DILexicalBlock(scope: !556, file: !3, line: 106, column: 21)
!562 = !DILocation(line: 107, column: 17, scope: !560)
!563 = !DILocation(line: 107, column: 14, scope: !561)
!564 = !DILocation(line: 108, column: 39, scope: !560)
!565 = !DILocation(line: 108, column: 50, scope: !560)
!566 = !DILocation(line: 108, column: 53, scope: !560)
!567 = !DILocation(line: 108, column: 49, scope: !560)
!568 = !DILocation(line: 108, column: 44, scope: !560)
!569 = !DILocation(line: 108, column: 23, scope: !560)
!570 = !DILocation(line: 108, column: 13, scope: !560)
!571 = !DILocation(line: 108, column: 16, scope: !560)
!572 = !DILocation(line: 108, column: 22, scope: !560)
!573 = !DILocation(line: 110, column: 13, scope: !560)
!574 = !DILocation(line: 110, column: 16, scope: !560)
!575 = !DILocation(line: 110, column: 22, scope: !560)
!576 = !DILocation(line: 111, column: 9, scope: !561)
!577 = !DILocation(line: 112, column: 7, scope: !546)
!578 = !DILocation(line: 113, column: 5, scope: !532)
!579 = !DILocation(line: 114, column: 3, scope: !518)
!580 = !DILocation(line: 116, column: 15, scope: !430)
!581 = !DILocation(line: 116, column: 19, scope: !430)
!582 = !DILocation(line: 116, column: 3, scope: !430)
!583 = !DILocation(line: 116, column: 6, scope: !430)
!584 = !DILocation(line: 116, column: 13, scope: !430)
!585 = !DILocation(line: 117, column: 11, scope: !430)
!586 = !DILocation(line: 117, column: 15, scope: !430)
!587 = !DILocation(line: 117, column: 3, scope: !430)
!588 = !DILocation(line: 117, column: 6, scope: !430)
!589 = !DILocation(line: 117, column: 9, scope: !430)
!590 = !DILocation(line: 118, column: 13, scope: !430)
!591 = !DILocation(line: 118, column: 17, scope: !430)
!592 = !DILocation(line: 118, column: 3, scope: !430)
!593 = !DILocation(line: 118, column: 6, scope: !430)
!594 = !DILocation(line: 118, column: 12, scope: !430)
!595 = !DILocation(line: 119, column: 3, scope: !430)
!596 = !DILocation(line: 120, column: 2, scope: !430)
!597 = !DILocation(line: 121, column: 22, scope: !430)
!598 = !DILocation(line: 121, column: 3, scope: !430)
!599 = !DILocation(line: 122, column: 1, scope: !430)
!600 = !DISubprogram(name: "realloc", scope: !306, file: !306, line: 551, type: !601, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!601 = !DISubroutineType(types: !602)
!602 = !{!309, !309, !310}
!603 = distinct !DISubprogram(name: "oggpack_writeclear", scope: !3, file: !3, line: 249, type: !272, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !604)
!604 = !{!605}
!605 = !DILocalVariable(name: "b", arg: 1, scope: !603, file: !3, line: 249, type: !274)
!606 = !DILocation(line: 249, column: 41, scope: !603)
!607 = !DILocation(line: 250, column: 6, scope: !608)
!608 = distinct !DILexicalBlock(scope: !603, file: !3, line: 250, column: 6)
!609 = !DILocation(line: 250, column: 9, scope: !608)
!610 = !DILocation(line: 250, column: 6, scope: !603)
!611 = !DILocation(line: 250, column: 26, scope: !608)
!612 = !DILocation(line: 250, column: 29, scope: !608)
!613 = !DILocation(line: 250, column: 16, scope: !608)
!614 = !DILocation(line: 251, column: 10, scope: !603)
!615 = !DILocation(line: 251, column: 3, scope: !603)
!616 = !DILocation(line: 252, column: 1, scope: !603)
!617 = distinct !DISubprogram(name: "oggpackB_write", scope: !3, file: !3, line: 125, type: !431, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !618)
!618 = !{!619, !620, !621, !622, !625}
!619 = !DILocalVariable(name: "b", arg: 1, scope: !617, file: !3, line: 125, type: !274)
!620 = !DILocalVariable(name: "value", arg: 2, scope: !617, file: !3, line: 125, type: !8)
!621 = !DILocalVariable(name: "bits", arg: 3, scope: !617, file: !3, line: 125, type: !6)
!622 = !DILocalVariable(name: "ret", scope: !623, file: !3, line: 128, type: !309)
!623 = distinct !DILexicalBlock(scope: !624, file: !3, line: 127, column: 31)
!624 = distinct !DILexicalBlock(scope: !617, file: !3, line: 127, column: 6)
!625 = !DILabel(scope: !617, name: "err", file: !3, line: 163)
!626 = !DILocation(line: 125, column: 37, scope: !617)
!627 = !DILocation(line: 125, column: 53, scope: !617)
!628 = !DILocation(line: 125, column: 63, scope: !617)
!629 = !DILocation(line: 126, column: 6, scope: !630)
!630 = distinct !DILexicalBlock(scope: !617, file: !3, line: 126, column: 6)
!631 = !DILocation(line: 126, column: 10, scope: !630)
!632 = !DILocation(line: 126, column: 13, scope: !630)
!633 = !DILocation(line: 126, column: 16, scope: !630)
!634 = !DILocation(line: 126, column: 20, scope: !630)
!635 = !DILocation(line: 126, column: 6, scope: !617)
!636 = !DILocation(line: 126, column: 25, scope: !630)
!637 = !DILocation(line: 127, column: 6, scope: !624)
!638 = !DILocation(line: 127, column: 9, scope: !624)
!639 = !DILocation(line: 127, column: 18, scope: !624)
!640 = !DILocation(line: 127, column: 21, scope: !624)
!641 = !DILocation(line: 127, column: 28, scope: !624)
!642 = !DILocation(line: 127, column: 16, scope: !624)
!643 = !DILocation(line: 127, column: 6, scope: !617)
!644 = !DILocation(line: 128, column: 5, scope: !623)
!645 = !DILocation(line: 128, column: 11, scope: !623)
!646 = !DILocation(line: 129, column: 9, scope: !647)
!647 = distinct !DILexicalBlock(scope: !623, file: !3, line: 129, column: 8)
!648 = !DILocation(line: 129, column: 12, scope: !647)
!649 = !DILocation(line: 129, column: 8, scope: !623)
!650 = !DILocation(line: 129, column: 16, scope: !647)
!651 = !DILocation(line: 130, column: 8, scope: !652)
!652 = distinct !DILexicalBlock(scope: !623, file: !3, line: 130, column: 8)
!653 = !DILocation(line: 130, column: 11, scope: !652)
!654 = !DILocation(line: 130, column: 18, scope: !652)
!655 = !DILocation(line: 130, column: 8, scope: !623)
!656 = !DILocation(line: 130, column: 46, scope: !652)
!657 = !DILocation(line: 131, column: 22, scope: !623)
!658 = !DILocation(line: 131, column: 25, scope: !623)
!659 = !DILocation(line: 131, column: 32, scope: !623)
!660 = !DILocation(line: 131, column: 35, scope: !623)
!661 = !DILocation(line: 131, column: 42, scope: !623)
!662 = !DILocation(line: 131, column: 9, scope: !623)
!663 = !DILocation(line: 131, column: 8, scope: !623)
!664 = !DILocation(line: 132, column: 9, scope: !665)
!665 = distinct !DILexicalBlock(scope: !623, file: !3, line: 132, column: 8)
!666 = !DILocation(line: 132, column: 8, scope: !623)
!667 = !DILocation(line: 132, column: 14, scope: !665)
!668 = !DILocation(line: 133, column: 15, scope: !623)
!669 = !DILocation(line: 133, column: 5, scope: !623)
!670 = !DILocation(line: 133, column: 8, scope: !623)
!671 = !DILocation(line: 133, column: 14, scope: !623)
!672 = !DILocation(line: 134, column: 5, scope: !623)
!673 = !DILocation(line: 134, column: 8, scope: !623)
!674 = !DILocation(line: 134, column: 15, scope: !623)
!675 = !DILocation(line: 135, column: 12, scope: !623)
!676 = !DILocation(line: 135, column: 15, scope: !623)
!677 = !DILocation(line: 135, column: 22, scope: !623)
!678 = !DILocation(line: 135, column: 25, scope: !623)
!679 = !DILocation(line: 135, column: 21, scope: !623)
!680 = !DILocation(line: 135, column: 5, scope: !623)
!681 = !DILocation(line: 135, column: 8, scope: !623)
!682 = !DILocation(line: 135, column: 11, scope: !623)
!683 = !DILocation(line: 136, column: 3, scope: !624)
!684 = !DILocation(line: 136, column: 3, scope: !623)
!685 = !DILocation(line: 138, column: 10, scope: !617)
!686 = !DILocation(line: 138, column: 21, scope: !617)
!687 = !DILocation(line: 138, column: 16, scope: !617)
!688 = !DILocation(line: 138, column: 15, scope: !617)
!689 = !DILocation(line: 138, column: 33, scope: !617)
!690 = !DILocation(line: 138, column: 32, scope: !617)
!691 = !DILocation(line: 138, column: 27, scope: !617)
!692 = !DILocation(line: 138, column: 8, scope: !617)
!693 = !DILocation(line: 139, column: 9, scope: !617)
!694 = !DILocation(line: 139, column: 12, scope: !617)
!695 = !DILocation(line: 139, column: 7, scope: !617)
!696 = !DILocation(line: 141, column: 14, scope: !617)
!697 = !DILocation(line: 141, column: 25, scope: !617)
!698 = !DILocation(line: 141, column: 28, scope: !617)
!699 = !DILocation(line: 141, column: 24, scope: !617)
!700 = !DILocation(line: 141, column: 19, scope: !617)
!701 = !DILocation(line: 141, column: 3, scope: !617)
!702 = !DILocation(line: 141, column: 6, scope: !617)
!703 = !DILocation(line: 141, column: 12, scope: !617)
!704 = !DILocation(line: 143, column: 6, scope: !705)
!705 = distinct !DILexicalBlock(scope: !617, file: !3, line: 143, column: 6)
!706 = !DILocation(line: 143, column: 10, scope: !705)
!707 = !DILocation(line: 143, column: 6, scope: !617)
!708 = !DILocation(line: 144, column: 31, scope: !709)
!709 = distinct !DILexicalBlock(scope: !705, file: !3, line: 143, column: 14)
!710 = !DILocation(line: 144, column: 42, scope: !709)
!711 = !DILocation(line: 144, column: 45, scope: !709)
!712 = !DILocation(line: 144, column: 41, scope: !709)
!713 = !DILocation(line: 144, column: 36, scope: !709)
!714 = !DILocation(line: 144, column: 15, scope: !709)
!715 = !DILocation(line: 144, column: 5, scope: !709)
!716 = !DILocation(line: 144, column: 8, scope: !709)
!717 = !DILocation(line: 144, column: 14, scope: !709)
!718 = !DILocation(line: 145, column: 8, scope: !719)
!719 = distinct !DILexicalBlock(scope: !709, file: !3, line: 145, column: 8)
!720 = !DILocation(line: 145, column: 12, scope: !719)
!721 = !DILocation(line: 145, column: 8, scope: !709)
!722 = !DILocation(line: 146, column: 33, scope: !723)
!723 = distinct !DILexicalBlock(scope: !719, file: !3, line: 145, column: 17)
!724 = !DILocation(line: 146, column: 43, scope: !723)
!725 = !DILocation(line: 146, column: 46, scope: !723)
!726 = !DILocation(line: 146, column: 42, scope: !723)
!727 = !DILocation(line: 146, column: 38, scope: !723)
!728 = !DILocation(line: 146, column: 17, scope: !723)
!729 = !DILocation(line: 146, column: 7, scope: !723)
!730 = !DILocation(line: 146, column: 10, scope: !723)
!731 = !DILocation(line: 146, column: 16, scope: !723)
!732 = !DILocation(line: 147, column: 10, scope: !733)
!733 = distinct !DILexicalBlock(scope: !723, file: !3, line: 147, column: 10)
!734 = !DILocation(line: 147, column: 14, scope: !733)
!735 = !DILocation(line: 147, column: 10, scope: !723)
!736 = !DILocation(line: 148, column: 35, scope: !737)
!737 = distinct !DILexicalBlock(scope: !733, file: !3, line: 147, column: 19)
!738 = !DILocation(line: 148, column: 43, scope: !737)
!739 = !DILocation(line: 148, column: 46, scope: !737)
!740 = !DILocation(line: 148, column: 40, scope: !737)
!741 = !DILocation(line: 148, column: 19, scope: !737)
!742 = !DILocation(line: 148, column: 9, scope: !737)
!743 = !DILocation(line: 148, column: 12, scope: !737)
!744 = !DILocation(line: 148, column: 18, scope: !737)
!745 = !DILocation(line: 149, column: 12, scope: !746)
!746 = distinct !DILexicalBlock(scope: !737, file: !3, line: 149, column: 12)
!747 = !DILocation(line: 149, column: 16, scope: !746)
!748 = !DILocation(line: 149, column: 12, scope: !737)
!749 = !DILocation(line: 150, column: 14, scope: !750)
!750 = distinct !DILexicalBlock(scope: !751, file: !3, line: 150, column: 14)
!751 = distinct !DILexicalBlock(scope: !746, file: !3, line: 149, column: 21)
!752 = !DILocation(line: 150, column: 17, scope: !750)
!753 = !DILocation(line: 150, column: 14, scope: !751)
!754 = !DILocation(line: 151, column: 39, scope: !750)
!755 = !DILocation(line: 151, column: 49, scope: !750)
!756 = !DILocation(line: 151, column: 52, scope: !750)
!757 = !DILocation(line: 151, column: 48, scope: !750)
!758 = !DILocation(line: 151, column: 44, scope: !750)
!759 = !DILocation(line: 151, column: 23, scope: !750)
!760 = !DILocation(line: 151, column: 13, scope: !750)
!761 = !DILocation(line: 151, column: 16, scope: !750)
!762 = !DILocation(line: 151, column: 22, scope: !750)
!763 = !DILocation(line: 153, column: 13, scope: !750)
!764 = !DILocation(line: 153, column: 16, scope: !750)
!765 = !DILocation(line: 153, column: 22, scope: !750)
!766 = !DILocation(line: 154, column: 9, scope: !751)
!767 = !DILocation(line: 155, column: 7, scope: !737)
!768 = !DILocation(line: 156, column: 5, scope: !723)
!769 = !DILocation(line: 157, column: 3, scope: !709)
!770 = !DILocation(line: 159, column: 15, scope: !617)
!771 = !DILocation(line: 159, column: 19, scope: !617)
!772 = !DILocation(line: 159, column: 3, scope: !617)
!773 = !DILocation(line: 159, column: 6, scope: !617)
!774 = !DILocation(line: 159, column: 13, scope: !617)
!775 = !DILocation(line: 160, column: 11, scope: !617)
!776 = !DILocation(line: 160, column: 15, scope: !617)
!777 = !DILocation(line: 160, column: 3, scope: !617)
!778 = !DILocation(line: 160, column: 6, scope: !617)
!779 = !DILocation(line: 160, column: 9, scope: !617)
!780 = !DILocation(line: 161, column: 13, scope: !617)
!781 = !DILocation(line: 161, column: 17, scope: !617)
!782 = !DILocation(line: 161, column: 3, scope: !617)
!783 = !DILocation(line: 161, column: 6, scope: !617)
!784 = !DILocation(line: 161, column: 12, scope: !617)
!785 = !DILocation(line: 162, column: 3, scope: !617)
!786 = !DILocation(line: 163, column: 2, scope: !617)
!787 = !DILocation(line: 164, column: 22, scope: !617)
!788 = !DILocation(line: 164, column: 3, scope: !617)
!789 = !DILocation(line: 165, column: 1, scope: !617)
!790 = distinct !DISubprogram(name: "oggpack_writealign", scope: !3, file: !3, line: 167, type: !272, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !791)
!791 = !{!792, !793}
!792 = !DILocalVariable(name: "b", arg: 1, scope: !790, file: !3, line: 167, type: !274)
!793 = !DILocalVariable(name: "bits", scope: !790, file: !3, line: 168, type: !6)
!794 = !DILocation(line: 167, column: 41, scope: !790)
!795 = !DILocation(line: 168, column: 3, scope: !790)
!796 = !DILocation(line: 168, column: 7, scope: !790)
!797 = !DILocation(line: 168, column: 14, scope: !790)
!798 = !DILocation(line: 168, column: 17, scope: !790)
!799 = !DILocation(line: 168, column: 13, scope: !790)
!800 = !DILocation(line: 169, column: 6, scope: !801)
!801 = distinct !DILexicalBlock(scope: !790, file: !3, line: 169, column: 6)
!802 = !DILocation(line: 169, column: 10, scope: !801)
!803 = !DILocation(line: 169, column: 6, scope: !790)
!804 = !DILocation(line: 170, column: 19, scope: !801)
!805 = !DILocation(line: 170, column: 23, scope: !801)
!806 = !DILocation(line: 170, column: 5, scope: !801)
!807 = !DILocation(line: 171, column: 1, scope: !790)
!808 = distinct !DISubprogram(name: "oggpackB_writealign", scope: !3, file: !3, line: 173, type: !272, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !809)
!809 = !{!810, !811}
!810 = !DILocalVariable(name: "b", arg: 1, scope: !808, file: !3, line: 173, type: !274)
!811 = !DILocalVariable(name: "bits", scope: !808, file: !3, line: 174, type: !6)
!812 = !DILocation(line: 173, column: 42, scope: !808)
!813 = !DILocation(line: 174, column: 3, scope: !808)
!814 = !DILocation(line: 174, column: 7, scope: !808)
!815 = !DILocation(line: 174, column: 14, scope: !808)
!816 = !DILocation(line: 174, column: 17, scope: !808)
!817 = !DILocation(line: 174, column: 13, scope: !808)
!818 = !DILocation(line: 175, column: 6, scope: !819)
!819 = distinct !DILexicalBlock(scope: !808, file: !3, line: 175, column: 6)
!820 = !DILocation(line: 175, column: 10, scope: !819)
!821 = !DILocation(line: 175, column: 6, scope: !808)
!822 = !DILocation(line: 176, column: 20, scope: !819)
!823 = !DILocation(line: 176, column: 24, scope: !819)
!824 = !DILocation(line: 176, column: 5, scope: !819)
!825 = !DILocation(line: 177, column: 1, scope: !808)
!826 = distinct !DISubprogram(name: "oggpack_writecopy", scope: !3, file: !3, line: 230, type: !827, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !829)
!827 = !DISubroutineType(types: !828)
!828 = !{null, !274, !309, !90}
!829 = !{!830, !831, !832}
!830 = !DILocalVariable(name: "b", arg: 1, scope: !826, file: !3, line: 230, type: !274)
!831 = !DILocalVariable(name: "source", arg: 2, scope: !826, file: !3, line: 230, type: !309)
!832 = !DILocalVariable(name: "bits", arg: 3, scope: !826, file: !3, line: 230, type: !90)
!833 = !DILocation(line: 230, column: 40, scope: !826)
!834 = !DILocation(line: 230, column: 48, scope: !826)
!835 = !DILocation(line: 230, column: 60, scope: !826)
!836 = !DILocation(line: 231, column: 28, scope: !826)
!837 = !DILocation(line: 231, column: 30, scope: !826)
!838 = !DILocation(line: 231, column: 37, scope: !826)
!839 = !DILocation(line: 231, column: 3, scope: !826)
!840 = !DILocation(line: 232, column: 1, scope: !826)
!841 = distinct !DISubprogram(name: "oggpack_writecopy_helper", scope: !3, file: !3, line: 179, type: !842, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !845)
!842 = !DISubroutineType(types: !843)
!843 = !{null, !274, !309, !90, !844, !6}
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!845 = !{!846, !847, !848, !849, !850, !851, !852, !853, !854, !857, !860}
!846 = !DILocalVariable(name: "b", arg: 1, scope: !841, file: !3, line: 179, type: !274)
!847 = !DILocalVariable(name: "source", arg: 2, scope: !841, file: !3, line: 180, type: !309)
!848 = !DILocalVariable(name: "bits", arg: 3, scope: !841, file: !3, line: 181, type: !90)
!849 = !DILocalVariable(name: "w", arg: 4, scope: !841, file: !3, line: 182, type: !844)
!850 = !DILocalVariable(name: "msb", arg: 5, scope: !841, file: !3, line: 185, type: !6)
!851 = !DILocalVariable(name: "ptr", scope: !841, file: !3, line: 186, type: !7)
!852 = !DILocalVariable(name: "bytes", scope: !841, file: !3, line: 188, type: !90)
!853 = !DILocalVariable(name: "pbytes", scope: !841, file: !3, line: 189, type: !90)
!854 = !DILocalVariable(name: "ret", scope: !855, file: !3, line: 194, type: !309)
!855 = distinct !DILexicalBlock(scope: !856, file: !3, line: 193, column: 36)
!856 = distinct !DILexicalBlock(scope: !841, file: !3, line: 193, column: 6)
!857 = !DILocalVariable(name: "i", scope: !858, file: !3, line: 206, type: !6)
!858 = distinct !DILexicalBlock(scope: !859, file: !3, line: 205, column: 16)
!859 = distinct !DILexicalBlock(scope: !841, file: !3, line: 205, column: 6)
!860 = !DILabel(scope: !841, name: "err", file: !3, line: 226)
!861 = !DILocation(line: 179, column: 54, scope: !841)
!862 = !DILocation(line: 180, column: 44, scope: !841)
!863 = !DILocation(line: 181, column: 43, scope: !841)
!864 = !DILocation(line: 182, column: 45, scope: !841)
!865 = !DILocation(line: 185, column: 42, scope: !841)
!866 = !DILocation(line: 186, column: 3, scope: !841)
!867 = !DILocation(line: 186, column: 18, scope: !841)
!868 = !DILocation(line: 186, column: 39, scope: !841)
!869 = !DILocation(line: 188, column: 3, scope: !841)
!870 = !DILocation(line: 188, column: 8, scope: !841)
!871 = !DILocation(line: 188, column: 14, scope: !841)
!872 = !DILocation(line: 188, column: 18, scope: !841)
!873 = !DILocation(line: 189, column: 3, scope: !841)
!874 = !DILocation(line: 189, column: 8, scope: !841)
!875 = !DILocation(line: 189, column: 16, scope: !841)
!876 = !DILocation(line: 189, column: 19, scope: !841)
!877 = !DILocation(line: 189, column: 26, scope: !841)
!878 = !DILocation(line: 189, column: 25, scope: !841)
!879 = !DILocation(line: 189, column: 31, scope: !841)
!880 = !DILocation(line: 190, column: 9, scope: !841)
!881 = !DILocation(line: 190, column: 14, scope: !841)
!882 = !DILocation(line: 190, column: 7, scope: !841)
!883 = !DILocation(line: 193, column: 6, scope: !856)
!884 = !DILocation(line: 193, column: 9, scope: !856)
!885 = !DILocation(line: 193, column: 17, scope: !856)
!886 = !DILocation(line: 193, column: 16, scope: !856)
!887 = !DILocation(line: 193, column: 25, scope: !856)
!888 = !DILocation(line: 193, column: 28, scope: !856)
!889 = !DILocation(line: 193, column: 23, scope: !856)
!890 = !DILocation(line: 193, column: 6, scope: !841)
!891 = !DILocation(line: 194, column: 5, scope: !855)
!892 = !DILocation(line: 194, column: 11, scope: !855)
!893 = !DILocation(line: 195, column: 9, scope: !894)
!894 = distinct !DILexicalBlock(scope: !855, file: !3, line: 195, column: 8)
!895 = !DILocation(line: 195, column: 12, scope: !894)
!896 = !DILocation(line: 195, column: 8, scope: !855)
!897 = !DILocation(line: 195, column: 17, scope: !894)
!898 = !DILocation(line: 196, column: 8, scope: !899)
!899 = distinct !DILexicalBlock(scope: !855, file: !3, line: 196, column: 8)
!900 = !DILocation(line: 196, column: 11, scope: !899)
!901 = !DILocation(line: 196, column: 19, scope: !899)
!902 = !DILocation(line: 196, column: 22, scope: !899)
!903 = !DILocation(line: 196, column: 30, scope: !899)
!904 = !DILocation(line: 196, column: 29, scope: !899)
!905 = !DILocation(line: 196, column: 36, scope: !899)
!906 = !DILocation(line: 196, column: 18, scope: !899)
!907 = !DILocation(line: 196, column: 8, scope: !855)
!908 = !DILocation(line: 196, column: 55, scope: !899)
!909 = !DILocation(line: 197, column: 16, scope: !855)
!910 = !DILocation(line: 197, column: 19, scope: !855)
!911 = !DILocation(line: 197, column: 27, scope: !855)
!912 = !DILocation(line: 197, column: 26, scope: !855)
!913 = !DILocation(line: 197, column: 33, scope: !855)
!914 = !DILocation(line: 197, column: 5, scope: !855)
!915 = !DILocation(line: 197, column: 8, scope: !855)
!916 = !DILocation(line: 197, column: 15, scope: !855)
!917 = !DILocation(line: 198, column: 22, scope: !855)
!918 = !DILocation(line: 198, column: 25, scope: !855)
!919 = !DILocation(line: 198, column: 32, scope: !855)
!920 = !DILocation(line: 198, column: 35, scope: !855)
!921 = !DILocation(line: 198, column: 9, scope: !855)
!922 = !DILocation(line: 198, column: 8, scope: !855)
!923 = !DILocation(line: 199, column: 9, scope: !924)
!924 = distinct !DILexicalBlock(scope: !855, file: !3, line: 199, column: 8)
!925 = !DILocation(line: 199, column: 8, scope: !855)
!926 = !DILocation(line: 199, column: 14, scope: !924)
!927 = !DILocation(line: 200, column: 15, scope: !855)
!928 = !DILocation(line: 200, column: 5, scope: !855)
!929 = !DILocation(line: 200, column: 8, scope: !855)
!930 = !DILocation(line: 200, column: 14, scope: !855)
!931 = !DILocation(line: 201, column: 12, scope: !855)
!932 = !DILocation(line: 201, column: 15, scope: !855)
!933 = !DILocation(line: 201, column: 22, scope: !855)
!934 = !DILocation(line: 201, column: 25, scope: !855)
!935 = !DILocation(line: 201, column: 21, scope: !855)
!936 = !DILocation(line: 201, column: 5, scope: !855)
!937 = !DILocation(line: 201, column: 8, scope: !855)
!938 = !DILocation(line: 201, column: 11, scope: !855)
!939 = !DILocation(line: 202, column: 3, scope: !856)
!940 = !DILocation(line: 202, column: 3, scope: !855)
!941 = !DILocation(line: 205, column: 6, scope: !859)
!942 = !DILocation(line: 205, column: 9, scope: !859)
!943 = !DILocation(line: 205, column: 6, scope: !841)
!944 = !DILocation(line: 206, column: 5, scope: !858)
!945 = !DILocation(line: 206, column: 9, scope: !858)
!946 = !DILocation(line: 208, column: 10, scope: !947)
!947 = distinct !DILexicalBlock(scope: !858, file: !3, line: 208, column: 5)
!948 = !DILocation(line: 208, column: 9, scope: !947)
!949 = !DILocation(line: 208, column: 13, scope: !950)
!950 = distinct !DILexicalBlock(scope: !947, file: !3, line: 208, column: 5)
!951 = !DILocation(line: 208, column: 15, scope: !950)
!952 = !DILocation(line: 208, column: 14, scope: !950)
!953 = !DILocation(line: 208, column: 5, scope: !947)
!954 = !DILocation(line: 209, column: 7, scope: !950)
!955 = !DILocation(line: 209, column: 9, scope: !950)
!956 = !DILocation(line: 209, column: 27, scope: !950)
!957 = !DILocation(line: 209, column: 31, scope: !950)
!958 = !DILocation(line: 209, column: 11, scope: !950)
!959 = !DILocation(line: 208, column: 22, scope: !950)
!960 = !DILocation(line: 208, column: 5, scope: !950)
!961 = distinct !{!961, !953, !962, !963}
!962 = !DILocation(line: 209, column: 36, scope: !947)
!963 = !{!"llvm.loop.mustprogress"}
!964 = !DILocation(line: 210, column: 3, scope: !859)
!965 = !DILocation(line: 210, column: 3, scope: !858)
!966 = !DILocation(line: 212, column: 13, scope: !967)
!967 = distinct !DILexicalBlock(scope: !859, file: !3, line: 210, column: 8)
!968 = !DILocation(line: 212, column: 16, scope: !967)
!969 = !DILocation(line: 212, column: 20, scope: !967)
!970 = !DILocation(line: 212, column: 27, scope: !967)
!971 = !DILocation(line: 212, column: 5, scope: !967)
!972 = !DILocation(line: 213, column: 13, scope: !967)
!973 = !DILocation(line: 213, column: 5, scope: !967)
!974 = !DILocation(line: 213, column: 8, scope: !967)
!975 = !DILocation(line: 213, column: 11, scope: !967)
!976 = !DILocation(line: 214, column: 17, scope: !967)
!977 = !DILocation(line: 214, column: 5, scope: !967)
!978 = !DILocation(line: 214, column: 8, scope: !967)
!979 = !DILocation(line: 214, column: 15, scope: !967)
!980 = !DILocation(line: 215, column: 6, scope: !967)
!981 = !DILocation(line: 215, column: 9, scope: !967)
!982 = !DILocation(line: 215, column: 12, scope: !967)
!983 = !DILocation(line: 219, column: 6, scope: !984)
!984 = distinct !DILexicalBlock(scope: !841, file: !3, line: 219, column: 6)
!985 = !DILocation(line: 219, column: 6, scope: !841)
!986 = !DILocation(line: 220, column: 8, scope: !987)
!987 = distinct !DILexicalBlock(scope: !988, file: !3, line: 220, column: 8)
!988 = distinct !DILexicalBlock(scope: !984, file: !3, line: 219, column: 11)
!989 = !DILocation(line: 220, column: 8, scope: !988)
!990 = !DILocation(line: 221, column: 7, scope: !987)
!991 = !DILocation(line: 221, column: 9, scope: !987)
!992 = !DILocation(line: 221, column: 27, scope: !987)
!993 = !DILocation(line: 221, column: 31, scope: !987)
!994 = !DILocation(line: 221, column: 42, scope: !987)
!995 = !DILocation(line: 221, column: 41, scope: !987)
!996 = !DILocation(line: 221, column: 37, scope: !987)
!997 = !DILocation(line: 221, column: 11, scope: !987)
!998 = !DILocation(line: 221, column: 49, scope: !987)
!999 = !DILocation(line: 223, column: 7, scope: !987)
!1000 = !DILocation(line: 223, column: 9, scope: !987)
!1001 = !DILocation(line: 223, column: 27, scope: !987)
!1002 = !DILocation(line: 223, column: 31, scope: !987)
!1003 = !DILocation(line: 223, column: 11, scope: !987)
!1004 = !DILocation(line: 223, column: 39, scope: !987)
!1005 = !DILocation(line: 224, column: 3, scope: !988)
!1006 = !DILocation(line: 225, column: 3, scope: !841)
!1007 = !DILocation(line: 226, column: 2, scope: !841)
!1008 = !DILocation(line: 227, column: 22, scope: !841)
!1009 = !DILocation(line: 227, column: 3, scope: !841)
!1010 = !DILocation(line: 228, column: 1, scope: !841)
!1011 = distinct !DISubprogram(name: "oggpackB_writecopy", scope: !3, file: !3, line: 234, type: !827, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1012)
!1012 = !{!1013, !1014, !1015}
!1013 = !DILocalVariable(name: "b", arg: 1, scope: !1011, file: !3, line: 234, type: !274)
!1014 = !DILocalVariable(name: "source", arg: 2, scope: !1011, file: !3, line: 234, type: !309)
!1015 = !DILocalVariable(name: "bits", arg: 3, scope: !1011, file: !3, line: 234, type: !90)
!1016 = !DILocation(line: 234, column: 41, scope: !1011)
!1017 = !DILocation(line: 234, column: 49, scope: !1011)
!1018 = !DILocation(line: 234, column: 61, scope: !1011)
!1019 = !DILocation(line: 235, column: 28, scope: !1011)
!1020 = !DILocation(line: 235, column: 30, scope: !1011)
!1021 = !DILocation(line: 235, column: 37, scope: !1011)
!1022 = !DILocation(line: 235, column: 3, scope: !1011)
!1023 = !DILocation(line: 236, column: 1, scope: !1011)
!1024 = distinct !DISubprogram(name: "oggpack_reset", scope: !3, file: !3, line: 238, type: !272, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1025)
!1025 = !{!1026}
!1026 = !DILocalVariable(name: "b", arg: 1, scope: !1024, file: !3, line: 238, type: !274)
!1027 = !DILocation(line: 238, column: 36, scope: !1024)
!1028 = !DILocation(line: 239, column: 7, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 239, column: 6)
!1030 = !DILocation(line: 239, column: 10, scope: !1029)
!1031 = !DILocation(line: 239, column: 6, scope: !1024)
!1032 = !DILocation(line: 239, column: 14, scope: !1029)
!1033 = !DILocation(line: 240, column: 10, scope: !1024)
!1034 = !DILocation(line: 240, column: 13, scope: !1024)
!1035 = !DILocation(line: 240, column: 3, scope: !1024)
!1036 = !DILocation(line: 240, column: 6, scope: !1024)
!1037 = !DILocation(line: 240, column: 9, scope: !1024)
!1038 = !DILocation(line: 241, column: 3, scope: !1024)
!1039 = !DILocation(line: 241, column: 6, scope: !1024)
!1040 = !DILocation(line: 241, column: 15, scope: !1024)
!1041 = !DILocation(line: 242, column: 13, scope: !1024)
!1042 = !DILocation(line: 242, column: 16, scope: !1024)
!1043 = !DILocation(line: 242, column: 23, scope: !1024)
!1044 = !DILocation(line: 242, column: 3, scope: !1024)
!1045 = !DILocation(line: 242, column: 6, scope: !1024)
!1046 = !DILocation(line: 242, column: 12, scope: !1024)
!1047 = !DILocation(line: 243, column: 1, scope: !1024)
!1048 = distinct !DISubprogram(name: "oggpackB_reset", scope: !3, file: !3, line: 245, type: !272, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1049)
!1049 = !{!1050}
!1050 = !DILocalVariable(name: "b", arg: 1, scope: !1048, file: !3, line: 245, type: !274)
!1051 = !DILocation(line: 245, column: 37, scope: !1048)
!1052 = !DILocation(line: 246, column: 17, scope: !1048)
!1053 = !DILocation(line: 246, column: 3, scope: !1048)
!1054 = !DILocation(line: 247, column: 1, scope: !1048)
!1055 = !DISubprogram(name: "free", scope: !306, file: !306, line: 555, type: !1056, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{null, !309}
!1058 = distinct !DISubprogram(name: "oggpackB_writeclear", scope: !3, file: !3, line: 254, type: !272, scopeLine: 254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1059)
!1059 = !{!1060}
!1060 = !DILocalVariable(name: "b", arg: 1, scope: !1058, file: !3, line: 254, type: !274)
!1061 = !DILocation(line: 254, column: 42, scope: !1058)
!1062 = !DILocation(line: 255, column: 22, scope: !1058)
!1063 = !DILocation(line: 255, column: 3, scope: !1058)
!1064 = !DILocation(line: 256, column: 1, scope: !1058)
!1065 = distinct !DISubprogram(name: "oggpack_readinit", scope: !3, file: !3, line: 258, type: !1066, scopeLine: 258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1068)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{null, !274, !7, !6}
!1068 = !{!1069, !1070, !1071}
!1069 = !DILocalVariable(name: "b", arg: 1, scope: !1065, file: !3, line: 258, type: !274)
!1070 = !DILocalVariable(name: "buf", arg: 2, scope: !1065, file: !3, line: 258, type: !7)
!1071 = !DILocalVariable(name: "bytes", arg: 3, scope: !1065, file: !3, line: 258, type: !6)
!1072 = !DILocation(line: 258, column: 39, scope: !1065)
!1073 = !DILocation(line: 258, column: 56, scope: !1065)
!1074 = !DILocation(line: 258, column: 64, scope: !1065)
!1075 = !DILocation(line: 259, column: 10, scope: !1065)
!1076 = !DILocation(line: 259, column: 3, scope: !1065)
!1077 = !DILocation(line: 260, column: 20, scope: !1065)
!1078 = !DILocation(line: 260, column: 13, scope: !1065)
!1079 = !DILocation(line: 260, column: 16, scope: !1065)
!1080 = !DILocation(line: 260, column: 19, scope: !1065)
!1081 = !DILocation(line: 260, column: 3, scope: !1065)
!1082 = !DILocation(line: 260, column: 6, scope: !1065)
!1083 = !DILocation(line: 260, column: 12, scope: !1065)
!1084 = !DILocation(line: 261, column: 14, scope: !1065)
!1085 = !DILocation(line: 261, column: 3, scope: !1065)
!1086 = !DILocation(line: 261, column: 6, scope: !1065)
!1087 = !DILocation(line: 261, column: 13, scope: !1065)
!1088 = !DILocation(line: 262, column: 1, scope: !1065)
!1089 = distinct !DISubprogram(name: "oggpackB_readinit", scope: !3, file: !3, line: 264, type: !1066, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1090)
!1090 = !{!1091, !1092, !1093}
!1091 = !DILocalVariable(name: "b", arg: 1, scope: !1089, file: !3, line: 264, type: !274)
!1092 = !DILocalVariable(name: "buf", arg: 2, scope: !1089, file: !3, line: 264, type: !7)
!1093 = !DILocalVariable(name: "bytes", arg: 3, scope: !1089, file: !3, line: 264, type: !6)
!1094 = !DILocation(line: 264, column: 40, scope: !1089)
!1095 = !DILocation(line: 264, column: 57, scope: !1089)
!1096 = !DILocation(line: 264, column: 65, scope: !1089)
!1097 = !DILocation(line: 265, column: 20, scope: !1089)
!1098 = !DILocation(line: 265, column: 22, scope: !1089)
!1099 = !DILocation(line: 265, column: 26, scope: !1089)
!1100 = !DILocation(line: 265, column: 3, scope: !1089)
!1101 = !DILocation(line: 266, column: 1, scope: !1089)
!1102 = distinct !DISubprogram(name: "oggpack_look", scope: !3, file: !3, line: 269, type: !1103, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1105)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!90, !274, !6}
!1105 = !{!1106, !1107, !1108, !1109}
!1106 = !DILocalVariable(name: "b", arg: 1, scope: !1102, file: !3, line: 269, type: !274)
!1107 = !DILocalVariable(name: "bits", arg: 2, scope: !1102, file: !3, line: 269, type: !6)
!1108 = !DILocalVariable(name: "ret", scope: !1102, file: !3, line: 270, type: !8)
!1109 = !DILocalVariable(name: "m", scope: !1102, file: !3, line: 271, type: !8)
!1110 = !DILocation(line: 269, column: 35, scope: !1102)
!1111 = !DILocation(line: 269, column: 41, scope: !1102)
!1112 = !DILocation(line: 270, column: 3, scope: !1102)
!1113 = !DILocation(line: 270, column: 17, scope: !1102)
!1114 = !DILocation(line: 271, column: 3, scope: !1102)
!1115 = !DILocation(line: 271, column: 17, scope: !1102)
!1116 = !DILocation(line: 273, column: 6, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 273, column: 6)
!1118 = !DILocation(line: 273, column: 10, scope: !1117)
!1119 = !DILocation(line: 273, column: 13, scope: !1117)
!1120 = !DILocation(line: 273, column: 16, scope: !1117)
!1121 = !DILocation(line: 273, column: 20, scope: !1117)
!1122 = !DILocation(line: 273, column: 6, scope: !1102)
!1123 = !DILocation(line: 273, column: 25, scope: !1117)
!1124 = !DILocation(line: 274, column: 10, scope: !1102)
!1125 = !DILocation(line: 274, column: 5, scope: !1102)
!1126 = !DILocation(line: 274, column: 4, scope: !1102)
!1127 = !DILocation(line: 275, column: 9, scope: !1102)
!1128 = !DILocation(line: 275, column: 12, scope: !1102)
!1129 = !DILocation(line: 275, column: 7, scope: !1102)
!1130 = !DILocation(line: 277, column: 6, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 277, column: 6)
!1132 = !DILocation(line: 277, column: 9, scope: !1131)
!1133 = !DILocation(line: 277, column: 20, scope: !1131)
!1134 = !DILocation(line: 277, column: 23, scope: !1131)
!1135 = !DILocation(line: 277, column: 30, scope: !1131)
!1136 = !DILocation(line: 277, column: 17, scope: !1131)
!1137 = !DILocation(line: 277, column: 6, scope: !1102)
!1138 = !DILocation(line: 279, column: 8, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 279, column: 8)
!1140 = distinct !DILexicalBlock(scope: !1131, file: !3, line: 277, column: 33)
!1141 = !DILocation(line: 279, column: 11, scope: !1139)
!1142 = !DILocation(line: 279, column: 21, scope: !1139)
!1143 = !DILocation(line: 279, column: 24, scope: !1139)
!1144 = !DILocation(line: 279, column: 34, scope: !1139)
!1145 = !DILocation(line: 279, column: 38, scope: !1139)
!1146 = !DILocation(line: 279, column: 41, scope: !1139)
!1147 = !DILocation(line: 279, column: 32, scope: !1139)
!1148 = !DILocation(line: 279, column: 31, scope: !1139)
!1149 = !DILocation(line: 279, column: 19, scope: !1139)
!1150 = !DILocation(line: 279, column: 8, scope: !1140)
!1151 = !DILocation(line: 279, column: 47, scope: !1139)
!1152 = !DILocation(line: 282, column: 14, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 282, column: 13)
!1154 = !DILocation(line: 282, column: 13, scope: !1139)
!1155 = !DILocation(line: 282, column: 19, scope: !1153)
!1156 = !DILocation(line: 283, column: 3, scope: !1140)
!1157 = !DILocation(line: 285, column: 7, scope: !1102)
!1158 = !DILocation(line: 285, column: 10, scope: !1102)
!1159 = !DILocation(line: 285, column: 18, scope: !1102)
!1160 = !DILocation(line: 285, column: 21, scope: !1102)
!1161 = !DILocation(line: 285, column: 16, scope: !1102)
!1162 = !DILocation(line: 285, column: 6, scope: !1102)
!1163 = !DILocation(line: 286, column: 6, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 286, column: 6)
!1165 = !DILocation(line: 286, column: 10, scope: !1164)
!1166 = !DILocation(line: 286, column: 6, scope: !1102)
!1167 = !DILocation(line: 287, column: 10, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 286, column: 13)
!1169 = !DILocation(line: 287, column: 13, scope: !1168)
!1170 = !DILocation(line: 287, column: 24, scope: !1168)
!1171 = !DILocation(line: 287, column: 27, scope: !1168)
!1172 = !DILocation(line: 287, column: 23, scope: !1168)
!1173 = !DILocation(line: 287, column: 19, scope: !1168)
!1174 = !DILocation(line: 287, column: 8, scope: !1168)
!1175 = !DILocation(line: 288, column: 8, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 288, column: 8)
!1177 = !DILocation(line: 288, column: 12, scope: !1176)
!1178 = !DILocation(line: 288, column: 8, scope: !1168)
!1179 = !DILocation(line: 289, column: 12, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 288, column: 16)
!1181 = !DILocation(line: 289, column: 15, scope: !1180)
!1182 = !DILocation(line: 289, column: 27, scope: !1180)
!1183 = !DILocation(line: 289, column: 30, scope: !1180)
!1184 = !DILocation(line: 289, column: 26, scope: !1180)
!1185 = !DILocation(line: 289, column: 21, scope: !1180)
!1186 = !DILocation(line: 289, column: 10, scope: !1180)
!1187 = !DILocation(line: 290, column: 10, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 290, column: 10)
!1189 = !DILocation(line: 290, column: 14, scope: !1188)
!1190 = !DILocation(line: 290, column: 10, scope: !1180)
!1191 = !DILocation(line: 291, column: 14, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 290, column: 18)
!1193 = !DILocation(line: 291, column: 17, scope: !1192)
!1194 = !DILocation(line: 291, column: 29, scope: !1192)
!1195 = !DILocation(line: 291, column: 32, scope: !1192)
!1196 = !DILocation(line: 291, column: 28, scope: !1192)
!1197 = !DILocation(line: 291, column: 23, scope: !1192)
!1198 = !DILocation(line: 291, column: 12, scope: !1192)
!1199 = !DILocation(line: 292, column: 12, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 292, column: 12)
!1201 = !DILocation(line: 292, column: 16, scope: !1200)
!1202 = !DILocation(line: 292, column: 20, scope: !1200)
!1203 = !DILocation(line: 292, column: 23, scope: !1200)
!1204 = !DILocation(line: 292, column: 26, scope: !1200)
!1205 = !DILocation(line: 292, column: 12, scope: !1192)
!1206 = !DILocation(line: 293, column: 16, scope: !1200)
!1207 = !DILocation(line: 293, column: 19, scope: !1200)
!1208 = !DILocation(line: 293, column: 31, scope: !1200)
!1209 = !DILocation(line: 293, column: 34, scope: !1200)
!1210 = !DILocation(line: 293, column: 30, scope: !1200)
!1211 = !DILocation(line: 293, column: 25, scope: !1200)
!1212 = !DILocation(line: 293, column: 14, scope: !1200)
!1213 = !DILocation(line: 293, column: 11, scope: !1200)
!1214 = !DILocation(line: 294, column: 7, scope: !1192)
!1215 = !DILocation(line: 295, column: 5, scope: !1180)
!1216 = !DILocation(line: 296, column: 3, scope: !1168)
!1217 = !DILocation(line: 297, column: 10, scope: !1102)
!1218 = !DILocation(line: 297, column: 12, scope: !1102)
!1219 = !DILocation(line: 297, column: 11, scope: !1102)
!1220 = !DILocation(line: 297, column: 3, scope: !1102)
!1221 = !DILocation(line: 298, column: 1, scope: !1102)
!1222 = distinct !DISubprogram(name: "oggpackB_look", scope: !3, file: !3, line: 301, type: !1103, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1223)
!1223 = !{!1224, !1225, !1226, !1227}
!1224 = !DILocalVariable(name: "b", arg: 1, scope: !1222, file: !3, line: 301, type: !274)
!1225 = !DILocalVariable(name: "bits", arg: 2, scope: !1222, file: !3, line: 301, type: !6)
!1226 = !DILocalVariable(name: "ret", scope: !1222, file: !3, line: 302, type: !8)
!1227 = !DILocalVariable(name: "m", scope: !1222, file: !3, line: 303, type: !6)
!1228 = !DILocation(line: 301, column: 36, scope: !1222)
!1229 = !DILocation(line: 301, column: 42, scope: !1222)
!1230 = !DILocation(line: 302, column: 3, scope: !1222)
!1231 = !DILocation(line: 302, column: 17, scope: !1222)
!1232 = !DILocation(line: 303, column: 3, scope: !1222)
!1233 = !DILocation(line: 303, column: 7, scope: !1222)
!1234 = !DILocation(line: 303, column: 12, scope: !1222)
!1235 = !DILocation(line: 303, column: 11, scope: !1222)
!1236 = !DILocation(line: 305, column: 6, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 305, column: 6)
!1238 = !DILocation(line: 305, column: 7, scope: !1237)
!1239 = !DILocation(line: 305, column: 10, scope: !1237)
!1240 = !DILocation(line: 305, column: 13, scope: !1237)
!1241 = !DILocation(line: 305, column: 14, scope: !1237)
!1242 = !DILocation(line: 305, column: 6, scope: !1222)
!1243 = !DILocation(line: 305, column: 19, scope: !1237)
!1244 = !DILocation(line: 306, column: 9, scope: !1222)
!1245 = !DILocation(line: 306, column: 12, scope: !1222)
!1246 = !DILocation(line: 306, column: 7, scope: !1222)
!1247 = !DILocation(line: 308, column: 6, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 308, column: 6)
!1249 = !DILocation(line: 308, column: 9, scope: !1248)
!1250 = !DILocation(line: 308, column: 20, scope: !1248)
!1251 = !DILocation(line: 308, column: 23, scope: !1248)
!1252 = !DILocation(line: 308, column: 30, scope: !1248)
!1253 = !DILocation(line: 308, column: 17, scope: !1248)
!1254 = !DILocation(line: 308, column: 6, scope: !1222)
!1255 = !DILocation(line: 310, column: 8, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 310, column: 8)
!1257 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 308, column: 33)
!1258 = !DILocation(line: 310, column: 11, scope: !1256)
!1259 = !DILocation(line: 310, column: 21, scope: !1256)
!1260 = !DILocation(line: 310, column: 24, scope: !1256)
!1261 = !DILocation(line: 310, column: 34, scope: !1256)
!1262 = !DILocation(line: 310, column: 38, scope: !1256)
!1263 = !DILocation(line: 310, column: 41, scope: !1256)
!1264 = !DILocation(line: 310, column: 32, scope: !1256)
!1265 = !DILocation(line: 310, column: 31, scope: !1256)
!1266 = !DILocation(line: 310, column: 19, scope: !1256)
!1267 = !DILocation(line: 310, column: 8, scope: !1257)
!1268 = !DILocation(line: 310, column: 47, scope: !1256)
!1269 = !DILocation(line: 313, column: 14, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 313, column: 13)
!1271 = !DILocation(line: 313, column: 13, scope: !1256)
!1272 = !DILocation(line: 313, column: 19, scope: !1270)
!1273 = !DILocation(line: 314, column: 3, scope: !1257)
!1274 = !DILocation(line: 316, column: 7, scope: !1222)
!1275 = !DILocation(line: 316, column: 10, scope: !1222)
!1276 = !DILocation(line: 316, column: 22, scope: !1222)
!1277 = !DILocation(line: 316, column: 25, scope: !1222)
!1278 = !DILocation(line: 316, column: 21, scope: !1222)
!1279 = !DILocation(line: 316, column: 16, scope: !1222)
!1280 = !DILocation(line: 316, column: 6, scope: !1222)
!1281 = !DILocation(line: 317, column: 6, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 317, column: 6)
!1283 = !DILocation(line: 317, column: 10, scope: !1282)
!1284 = !DILocation(line: 317, column: 6, scope: !1222)
!1285 = !DILocation(line: 318, column: 10, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 317, column: 13)
!1287 = !DILocation(line: 318, column: 13, scope: !1286)
!1288 = !DILocation(line: 318, column: 25, scope: !1286)
!1289 = !DILocation(line: 318, column: 28, scope: !1286)
!1290 = !DILocation(line: 318, column: 24, scope: !1286)
!1291 = !DILocation(line: 318, column: 19, scope: !1286)
!1292 = !DILocation(line: 318, column: 8, scope: !1286)
!1293 = !DILocation(line: 319, column: 8, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 319, column: 8)
!1295 = !DILocation(line: 319, column: 12, scope: !1294)
!1296 = !DILocation(line: 319, column: 8, scope: !1286)
!1297 = !DILocation(line: 320, column: 12, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 319, column: 16)
!1299 = !DILocation(line: 320, column: 15, scope: !1298)
!1300 = !DILocation(line: 320, column: 26, scope: !1298)
!1301 = !DILocation(line: 320, column: 29, scope: !1298)
!1302 = !DILocation(line: 320, column: 25, scope: !1298)
!1303 = !DILocation(line: 320, column: 21, scope: !1298)
!1304 = !DILocation(line: 320, column: 10, scope: !1298)
!1305 = !DILocation(line: 321, column: 10, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 321, column: 10)
!1307 = !DILocation(line: 321, column: 14, scope: !1306)
!1308 = !DILocation(line: 321, column: 10, scope: !1298)
!1309 = !DILocation(line: 322, column: 14, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 321, column: 18)
!1311 = !DILocation(line: 322, column: 17, scope: !1310)
!1312 = !DILocation(line: 322, column: 26, scope: !1310)
!1313 = !DILocation(line: 322, column: 29, scope: !1310)
!1314 = !DILocation(line: 322, column: 23, scope: !1310)
!1315 = !DILocation(line: 322, column: 12, scope: !1310)
!1316 = !DILocation(line: 323, column: 12, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 323, column: 12)
!1318 = !DILocation(line: 323, column: 16, scope: !1317)
!1319 = !DILocation(line: 323, column: 20, scope: !1317)
!1320 = !DILocation(line: 323, column: 23, scope: !1317)
!1321 = !DILocation(line: 323, column: 26, scope: !1317)
!1322 = !DILocation(line: 323, column: 12, scope: !1310)
!1323 = !DILocation(line: 324, column: 16, scope: !1317)
!1324 = !DILocation(line: 324, column: 19, scope: !1317)
!1325 = !DILocation(line: 324, column: 30, scope: !1317)
!1326 = !DILocation(line: 324, column: 33, scope: !1317)
!1327 = !DILocation(line: 324, column: 29, scope: !1317)
!1328 = !DILocation(line: 324, column: 25, scope: !1317)
!1329 = !DILocation(line: 324, column: 14, scope: !1317)
!1330 = !DILocation(line: 324, column: 11, scope: !1317)
!1331 = !DILocation(line: 325, column: 7, scope: !1310)
!1332 = !DILocation(line: 326, column: 5, scope: !1298)
!1333 = !DILocation(line: 327, column: 3, scope: !1286)
!1334 = !DILocation(line: 328, column: 12, scope: !1222)
!1335 = !DILocation(line: 328, column: 15, scope: !1222)
!1336 = !DILocation(line: 328, column: 30, scope: !1222)
!1337 = !DILocation(line: 328, column: 31, scope: !1222)
!1338 = !DILocation(line: 328, column: 27, scope: !1222)
!1339 = !DILocation(line: 328, column: 40, scope: !1222)
!1340 = !DILocation(line: 328, column: 41, scope: !1222)
!1341 = !DILocation(line: 328, column: 44, scope: !1222)
!1342 = !DILocation(line: 328, column: 36, scope: !1222)
!1343 = !DILocation(line: 328, column: 3, scope: !1222)
!1344 = !DILocation(line: 329, column: 1, scope: !1222)
!1345 = distinct !DISubprogram(name: "oggpack_look1", scope: !3, file: !3, line: 331, type: !1346, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1348)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!90, !274}
!1348 = !{!1349}
!1349 = !DILocalVariable(name: "b", arg: 1, scope: !1345, file: !3, line: 331, type: !274)
!1350 = !DILocation(line: 331, column: 36, scope: !1345)
!1351 = !DILocation(line: 332, column: 6, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 332, column: 6)
!1353 = !DILocation(line: 332, column: 9, scope: !1352)
!1354 = !DILocation(line: 332, column: 18, scope: !1352)
!1355 = !DILocation(line: 332, column: 21, scope: !1352)
!1356 = !DILocation(line: 332, column: 16, scope: !1352)
!1357 = !DILocation(line: 332, column: 6, scope: !1345)
!1358 = !DILocation(line: 332, column: 29, scope: !1352)
!1359 = !DILocation(line: 333, column: 11, scope: !1345)
!1360 = !DILocation(line: 333, column: 14, scope: !1345)
!1361 = !DILocation(line: 333, column: 22, scope: !1345)
!1362 = !DILocation(line: 333, column: 25, scope: !1345)
!1363 = !DILocation(line: 333, column: 20, scope: !1345)
!1364 = !DILocation(line: 333, column: 32, scope: !1345)
!1365 = !DILocation(line: 333, column: 9, scope: !1345)
!1366 = !DILocation(line: 333, column: 3, scope: !1345)
!1367 = !DILocation(line: 334, column: 1, scope: !1345)
!1368 = distinct !DISubprogram(name: "oggpackB_look1", scope: !3, file: !3, line: 336, type: !1346, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1369)
!1369 = !{!1370}
!1370 = !DILocalVariable(name: "b", arg: 1, scope: !1368, file: !3, line: 336, type: !274)
!1371 = !DILocation(line: 336, column: 37, scope: !1368)
!1372 = !DILocation(line: 337, column: 6, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 337, column: 6)
!1374 = !DILocation(line: 337, column: 9, scope: !1373)
!1375 = !DILocation(line: 337, column: 18, scope: !1373)
!1376 = !DILocation(line: 337, column: 21, scope: !1373)
!1377 = !DILocation(line: 337, column: 16, scope: !1373)
!1378 = !DILocation(line: 337, column: 6, scope: !1368)
!1379 = !DILocation(line: 337, column: 29, scope: !1373)
!1380 = !DILocation(line: 338, column: 11, scope: !1368)
!1381 = !DILocation(line: 338, column: 14, scope: !1368)
!1382 = !DILocation(line: 338, column: 25, scope: !1368)
!1383 = !DILocation(line: 338, column: 28, scope: !1368)
!1384 = !DILocation(line: 338, column: 24, scope: !1368)
!1385 = !DILocation(line: 338, column: 20, scope: !1368)
!1386 = !DILocation(line: 338, column: 36, scope: !1368)
!1387 = !DILocation(line: 338, column: 9, scope: !1368)
!1388 = !DILocation(line: 338, column: 3, scope: !1368)
!1389 = !DILocation(line: 339, column: 1, scope: !1368)
!1390 = distinct !DISubprogram(name: "oggpack_adv", scope: !3, file: !3, line: 341, type: !1391, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1393)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{null, !274, !6}
!1393 = !{!1394, !1395, !1396}
!1394 = !DILocalVariable(name: "b", arg: 1, scope: !1390, file: !3, line: 341, type: !274)
!1395 = !DILocalVariable(name: "bits", arg: 2, scope: !1390, file: !3, line: 341, type: !6)
!1396 = !DILabel(scope: !1390, name: "overflow", file: !3, line: 351)
!1397 = !DILocation(line: 341, column: 34, scope: !1390)
!1398 = !DILocation(line: 341, column: 40, scope: !1390)
!1399 = !DILocation(line: 342, column: 9, scope: !1390)
!1400 = !DILocation(line: 342, column: 12, scope: !1390)
!1401 = !DILocation(line: 342, column: 7, scope: !1390)
!1402 = !DILocation(line: 344, column: 6, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1390, file: !3, line: 344, column: 6)
!1404 = !DILocation(line: 344, column: 9, scope: !1403)
!1405 = !DILocation(line: 344, column: 19, scope: !1403)
!1406 = !DILocation(line: 344, column: 22, scope: !1403)
!1407 = !DILocation(line: 344, column: 32, scope: !1403)
!1408 = !DILocation(line: 344, column: 36, scope: !1403)
!1409 = !DILocation(line: 344, column: 39, scope: !1403)
!1410 = !DILocation(line: 344, column: 30, scope: !1403)
!1411 = !DILocation(line: 344, column: 29, scope: !1403)
!1412 = !DILocation(line: 344, column: 17, scope: !1403)
!1413 = !DILocation(line: 344, column: 6, scope: !1390)
!1414 = !DILocation(line: 344, column: 45, scope: !1403)
!1415 = !DILocation(line: 346, column: 11, scope: !1390)
!1416 = !DILocation(line: 346, column: 15, scope: !1390)
!1417 = !DILocation(line: 346, column: 3, scope: !1390)
!1418 = !DILocation(line: 346, column: 6, scope: !1390)
!1419 = !DILocation(line: 346, column: 9, scope: !1390)
!1420 = !DILocation(line: 347, column: 15, scope: !1390)
!1421 = !DILocation(line: 347, column: 19, scope: !1390)
!1422 = !DILocation(line: 347, column: 3, scope: !1390)
!1423 = !DILocation(line: 347, column: 6, scope: !1390)
!1424 = !DILocation(line: 347, column: 13, scope: !1390)
!1425 = !DILocation(line: 348, column: 13, scope: !1390)
!1426 = !DILocation(line: 348, column: 17, scope: !1390)
!1427 = !DILocation(line: 348, column: 3, scope: !1390)
!1428 = !DILocation(line: 348, column: 6, scope: !1390)
!1429 = !DILocation(line: 348, column: 12, scope: !1390)
!1430 = !DILocation(line: 349, column: 3, scope: !1390)
!1431 = !DILocation(line: 351, column: 2, scope: !1390)
!1432 = !DILocation(line: 352, column: 3, scope: !1390)
!1433 = !DILocation(line: 352, column: 6, scope: !1390)
!1434 = !DILocation(line: 352, column: 9, scope: !1390)
!1435 = !DILocation(line: 353, column: 14, scope: !1390)
!1436 = !DILocation(line: 353, column: 17, scope: !1390)
!1437 = !DILocation(line: 353, column: 3, scope: !1390)
!1438 = !DILocation(line: 353, column: 6, scope: !1390)
!1439 = !DILocation(line: 353, column: 13, scope: !1390)
!1440 = !DILocation(line: 354, column: 3, scope: !1390)
!1441 = !DILocation(line: 354, column: 6, scope: !1390)
!1442 = !DILocation(line: 354, column: 12, scope: !1390)
!1443 = !DILocation(line: 355, column: 1, scope: !1390)
!1444 = distinct !DISubprogram(name: "oggpackB_adv", scope: !3, file: !3, line: 357, type: !1391, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1445)
!1445 = !{!1446, !1447}
!1446 = !DILocalVariable(name: "b", arg: 1, scope: !1444, file: !3, line: 357, type: !274)
!1447 = !DILocalVariable(name: "bits", arg: 2, scope: !1444, file: !3, line: 357, type: !6)
!1448 = !DILocation(line: 357, column: 35, scope: !1444)
!1449 = !DILocation(line: 357, column: 41, scope: !1444)
!1450 = !DILocation(line: 358, column: 15, scope: !1444)
!1451 = !DILocation(line: 358, column: 17, scope: !1444)
!1452 = !DILocation(line: 358, column: 3, scope: !1444)
!1453 = !DILocation(line: 359, column: 1, scope: !1444)
!1454 = distinct !DISubprogram(name: "oggpack_adv1", scope: !3, file: !3, line: 361, type: !272, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1455)
!1455 = !{!1456}
!1456 = !DILocalVariable(name: "b", arg: 1, scope: !1454, file: !3, line: 361, type: !274)
!1457 = !DILocation(line: 361, column: 35, scope: !1454)
!1458 = !DILocation(line: 362, column: 9, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1454, file: !3, line: 362, column: 6)
!1460 = !DILocation(line: 362, column: 12, scope: !1459)
!1461 = !DILocation(line: 362, column: 6, scope: !1459)
!1462 = !DILocation(line: 362, column: 19, scope: !1459)
!1463 = !DILocation(line: 362, column: 6, scope: !1454)
!1464 = !DILocation(line: 363, column: 5, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1459, file: !3, line: 362, column: 22)
!1466 = !DILocation(line: 363, column: 8, scope: !1465)
!1467 = !DILocation(line: 363, column: 14, scope: !1465)
!1468 = !DILocation(line: 364, column: 5, scope: !1465)
!1469 = !DILocation(line: 364, column: 8, scope: !1465)
!1470 = !DILocation(line: 364, column: 11, scope: !1465)
!1471 = !DILocation(line: 365, column: 5, scope: !1465)
!1472 = !DILocation(line: 365, column: 8, scope: !1465)
!1473 = !DILocation(line: 365, column: 15, scope: !1465)
!1474 = !DILocation(line: 366, column: 3, scope: !1465)
!1475 = !DILocation(line: 367, column: 1, scope: !1454)
!1476 = distinct !DISubprogram(name: "oggpackB_adv1", scope: !3, file: !3, line: 369, type: !272, scopeLine: 369, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1477)
!1477 = !{!1478}
!1478 = !DILocalVariable(name: "b", arg: 1, scope: !1476, file: !3, line: 369, type: !274)
!1479 = !DILocation(line: 369, column: 36, scope: !1476)
!1480 = !DILocation(line: 370, column: 16, scope: !1476)
!1481 = !DILocation(line: 370, column: 3, scope: !1476)
!1482 = !DILocation(line: 371, column: 1, scope: !1476)
!1483 = distinct !DISubprogram(name: "oggpack_read", scope: !3, file: !3, line: 374, type: !1103, scopeLine: 374, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1484)
!1484 = !{!1485, !1486, !1487, !1488, !1489, !1490}
!1485 = !DILocalVariable(name: "b", arg: 1, scope: !1483, file: !3, line: 374, type: !274)
!1486 = !DILocalVariable(name: "bits", arg: 2, scope: !1483, file: !3, line: 374, type: !6)
!1487 = !DILocalVariable(name: "ret", scope: !1483, file: !3, line: 375, type: !90)
!1488 = !DILocalVariable(name: "m", scope: !1483, file: !3, line: 376, type: !8)
!1489 = !DILabel(scope: !1483, name: "overflow", file: !3, line: 409)
!1490 = !DILabel(scope: !1483, name: "err", file: !3, line: 410)
!1491 = !DILocation(line: 374, column: 35, scope: !1483)
!1492 = !DILocation(line: 374, column: 41, scope: !1483)
!1493 = !DILocation(line: 375, column: 3, scope: !1483)
!1494 = !DILocation(line: 375, column: 8, scope: !1483)
!1495 = !DILocation(line: 376, column: 3, scope: !1483)
!1496 = !DILocation(line: 376, column: 17, scope: !1483)
!1497 = !DILocation(line: 378, column: 6, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 378, column: 6)
!1499 = !DILocation(line: 378, column: 10, scope: !1498)
!1500 = !DILocation(line: 378, column: 13, scope: !1498)
!1501 = !DILocation(line: 378, column: 16, scope: !1498)
!1502 = !DILocation(line: 378, column: 20, scope: !1498)
!1503 = !DILocation(line: 378, column: 6, scope: !1483)
!1504 = !DILocation(line: 378, column: 25, scope: !1498)
!1505 = !DILocation(line: 379, column: 10, scope: !1483)
!1506 = !DILocation(line: 379, column: 5, scope: !1483)
!1507 = !DILocation(line: 379, column: 4, scope: !1483)
!1508 = !DILocation(line: 380, column: 9, scope: !1483)
!1509 = !DILocation(line: 380, column: 12, scope: !1483)
!1510 = !DILocation(line: 380, column: 7, scope: !1483)
!1511 = !DILocation(line: 382, column: 6, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 382, column: 6)
!1513 = !DILocation(line: 382, column: 9, scope: !1512)
!1514 = !DILocation(line: 382, column: 20, scope: !1512)
!1515 = !DILocation(line: 382, column: 23, scope: !1512)
!1516 = !DILocation(line: 382, column: 30, scope: !1512)
!1517 = !DILocation(line: 382, column: 17, scope: !1512)
!1518 = !DILocation(line: 382, column: 6, scope: !1483)
!1519 = !DILocation(line: 384, column: 8, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !3, line: 384, column: 8)
!1521 = distinct !DILexicalBlock(scope: !1512, file: !3, line: 382, column: 33)
!1522 = !DILocation(line: 384, column: 11, scope: !1520)
!1523 = !DILocation(line: 384, column: 21, scope: !1520)
!1524 = !DILocation(line: 384, column: 24, scope: !1520)
!1525 = !DILocation(line: 384, column: 34, scope: !1520)
!1526 = !DILocation(line: 384, column: 38, scope: !1520)
!1527 = !DILocation(line: 384, column: 41, scope: !1520)
!1528 = !DILocation(line: 384, column: 32, scope: !1520)
!1529 = !DILocation(line: 384, column: 31, scope: !1520)
!1530 = !DILocation(line: 384, column: 19, scope: !1520)
!1531 = !DILocation(line: 384, column: 8, scope: !1521)
!1532 = !DILocation(line: 384, column: 47, scope: !1520)
!1533 = !DILocation(line: 387, column: 14, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1520, file: !3, line: 387, column: 13)
!1535 = !DILocation(line: 387, column: 13, scope: !1520)
!1536 = !DILocation(line: 387, column: 19, scope: !1534)
!1537 = !DILocation(line: 388, column: 3, scope: !1521)
!1538 = !DILocation(line: 390, column: 7, scope: !1483)
!1539 = !DILocation(line: 390, column: 10, scope: !1483)
!1540 = !DILocation(line: 390, column: 18, scope: !1483)
!1541 = !DILocation(line: 390, column: 21, scope: !1483)
!1542 = !DILocation(line: 390, column: 16, scope: !1483)
!1543 = !DILocation(line: 390, column: 6, scope: !1483)
!1544 = !DILocation(line: 391, column: 6, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 391, column: 6)
!1546 = !DILocation(line: 391, column: 10, scope: !1545)
!1547 = !DILocation(line: 391, column: 6, scope: !1483)
!1548 = !DILocation(line: 392, column: 10, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1545, file: !3, line: 391, column: 13)
!1550 = !DILocation(line: 392, column: 13, scope: !1549)
!1551 = !DILocation(line: 392, column: 24, scope: !1549)
!1552 = !DILocation(line: 392, column: 27, scope: !1549)
!1553 = !DILocation(line: 392, column: 23, scope: !1549)
!1554 = !DILocation(line: 392, column: 19, scope: !1549)
!1555 = !DILocation(line: 392, column: 8, scope: !1549)
!1556 = !DILocation(line: 393, column: 8, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1549, file: !3, line: 393, column: 8)
!1558 = !DILocation(line: 393, column: 12, scope: !1557)
!1559 = !DILocation(line: 393, column: 8, scope: !1549)
!1560 = !DILocation(line: 394, column: 12, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 393, column: 16)
!1562 = !DILocation(line: 394, column: 15, scope: !1561)
!1563 = !DILocation(line: 394, column: 27, scope: !1561)
!1564 = !DILocation(line: 394, column: 30, scope: !1561)
!1565 = !DILocation(line: 394, column: 26, scope: !1561)
!1566 = !DILocation(line: 394, column: 21, scope: !1561)
!1567 = !DILocation(line: 394, column: 10, scope: !1561)
!1568 = !DILocation(line: 395, column: 10, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1561, file: !3, line: 395, column: 10)
!1570 = !DILocation(line: 395, column: 14, scope: !1569)
!1571 = !DILocation(line: 395, column: 10, scope: !1561)
!1572 = !DILocation(line: 396, column: 14, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1569, file: !3, line: 395, column: 18)
!1574 = !DILocation(line: 396, column: 17, scope: !1573)
!1575 = !DILocation(line: 396, column: 29, scope: !1573)
!1576 = !DILocation(line: 396, column: 32, scope: !1573)
!1577 = !DILocation(line: 396, column: 28, scope: !1573)
!1578 = !DILocation(line: 396, column: 23, scope: !1573)
!1579 = !DILocation(line: 396, column: 12, scope: !1573)
!1580 = !DILocation(line: 397, column: 12, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1573, file: !3, line: 397, column: 12)
!1582 = !DILocation(line: 397, column: 16, scope: !1581)
!1583 = !DILocation(line: 397, column: 20, scope: !1581)
!1584 = !DILocation(line: 397, column: 23, scope: !1581)
!1585 = !DILocation(line: 397, column: 26, scope: !1581)
!1586 = !DILocation(line: 397, column: 12, scope: !1573)
!1587 = !DILocation(line: 398, column: 16, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1581, file: !3, line: 397, column: 33)
!1589 = !DILocation(line: 398, column: 19, scope: !1588)
!1590 = !DILocation(line: 398, column: 31, scope: !1588)
!1591 = !DILocation(line: 398, column: 34, scope: !1588)
!1592 = !DILocation(line: 398, column: 30, scope: !1588)
!1593 = !DILocation(line: 398, column: 25, scope: !1588)
!1594 = !DILocation(line: 398, column: 14, scope: !1588)
!1595 = !DILocation(line: 399, column: 9, scope: !1588)
!1596 = !DILocation(line: 400, column: 7, scope: !1573)
!1597 = !DILocation(line: 401, column: 5, scope: !1561)
!1598 = !DILocation(line: 402, column: 3, scope: !1549)
!1599 = !DILocation(line: 403, column: 8, scope: !1483)
!1600 = !DILocation(line: 403, column: 6, scope: !1483)
!1601 = !DILocation(line: 404, column: 11, scope: !1483)
!1602 = !DILocation(line: 404, column: 15, scope: !1483)
!1603 = !DILocation(line: 404, column: 3, scope: !1483)
!1604 = !DILocation(line: 404, column: 6, scope: !1483)
!1605 = !DILocation(line: 404, column: 9, scope: !1483)
!1606 = !DILocation(line: 405, column: 15, scope: !1483)
!1607 = !DILocation(line: 405, column: 19, scope: !1483)
!1608 = !DILocation(line: 405, column: 3, scope: !1483)
!1609 = !DILocation(line: 405, column: 6, scope: !1483)
!1610 = !DILocation(line: 405, column: 13, scope: !1483)
!1611 = !DILocation(line: 406, column: 13, scope: !1483)
!1612 = !DILocation(line: 406, column: 17, scope: !1483)
!1613 = !DILocation(line: 406, column: 3, scope: !1483)
!1614 = !DILocation(line: 406, column: 6, scope: !1483)
!1615 = !DILocation(line: 406, column: 12, scope: !1483)
!1616 = !DILocation(line: 407, column: 10, scope: !1483)
!1617 = !DILocation(line: 407, column: 3, scope: !1483)
!1618 = !DILocation(line: 409, column: 2, scope: !1483)
!1619 = !DILocation(line: 410, column: 2, scope: !1483)
!1620 = !DILocation(line: 411, column: 3, scope: !1483)
!1621 = !DILocation(line: 411, column: 6, scope: !1483)
!1622 = !DILocation(line: 411, column: 9, scope: !1483)
!1623 = !DILocation(line: 412, column: 14, scope: !1483)
!1624 = !DILocation(line: 412, column: 17, scope: !1483)
!1625 = !DILocation(line: 412, column: 3, scope: !1483)
!1626 = !DILocation(line: 412, column: 6, scope: !1483)
!1627 = !DILocation(line: 412, column: 13, scope: !1483)
!1628 = !DILocation(line: 413, column: 3, scope: !1483)
!1629 = !DILocation(line: 413, column: 6, scope: !1483)
!1630 = !DILocation(line: 413, column: 12, scope: !1483)
!1631 = !DILocation(line: 414, column: 3, scope: !1483)
!1632 = !DILocation(line: 415, column: 1, scope: !1483)
!1633 = distinct !DISubprogram(name: "oggpackB_read", scope: !3, file: !3, line: 418, type: !1103, scopeLine: 418, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1634)
!1634 = !{!1635, !1636, !1637, !1638, !1639, !1640}
!1635 = !DILocalVariable(name: "b", arg: 1, scope: !1633, file: !3, line: 418, type: !274)
!1636 = !DILocalVariable(name: "bits", arg: 2, scope: !1633, file: !3, line: 418, type: !6)
!1637 = !DILocalVariable(name: "ret", scope: !1633, file: !3, line: 419, type: !90)
!1638 = !DILocalVariable(name: "m", scope: !1633, file: !3, line: 420, type: !90)
!1639 = !DILabel(scope: !1633, name: "overflow", file: !3, line: 452)
!1640 = !DILabel(scope: !1633, name: "err", file: !3, line: 453)
!1641 = !DILocation(line: 418, column: 36, scope: !1633)
!1642 = !DILocation(line: 418, column: 42, scope: !1633)
!1643 = !DILocation(line: 419, column: 3, scope: !1633)
!1644 = !DILocation(line: 419, column: 8, scope: !1633)
!1645 = !DILocation(line: 420, column: 3, scope: !1633)
!1646 = !DILocation(line: 420, column: 8, scope: !1633)
!1647 = !DILocation(line: 420, column: 13, scope: !1633)
!1648 = !DILocation(line: 420, column: 12, scope: !1633)
!1649 = !DILocation(line: 420, column: 10, scope: !1633)
!1650 = !DILocation(line: 422, column: 6, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 422, column: 6)
!1652 = !DILocation(line: 422, column: 7, scope: !1651)
!1653 = !DILocation(line: 422, column: 10, scope: !1651)
!1654 = !DILocation(line: 422, column: 13, scope: !1651)
!1655 = !DILocation(line: 422, column: 14, scope: !1651)
!1656 = !DILocation(line: 422, column: 6, scope: !1633)
!1657 = !DILocation(line: 422, column: 19, scope: !1651)
!1658 = !DILocation(line: 423, column: 9, scope: !1633)
!1659 = !DILocation(line: 423, column: 12, scope: !1633)
!1660 = !DILocation(line: 423, column: 7, scope: !1633)
!1661 = !DILocation(line: 425, column: 6, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 425, column: 6)
!1663 = !DILocation(line: 425, column: 9, scope: !1662)
!1664 = !DILocation(line: 425, column: 16, scope: !1662)
!1665 = !DILocation(line: 425, column: 20, scope: !1662)
!1666 = !DILocation(line: 425, column: 23, scope: !1662)
!1667 = !DILocation(line: 425, column: 18, scope: !1662)
!1668 = !DILocation(line: 425, column: 6, scope: !1633)
!1669 = !DILocation(line: 427, column: 8, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !3, line: 427, column: 8)
!1671 = distinct !DILexicalBlock(scope: !1662, file: !3, line: 425, column: 31)
!1672 = !DILocation(line: 427, column: 11, scope: !1670)
!1673 = !DILocation(line: 427, column: 21, scope: !1670)
!1674 = !DILocation(line: 427, column: 24, scope: !1670)
!1675 = !DILocation(line: 427, column: 34, scope: !1670)
!1676 = !DILocation(line: 427, column: 38, scope: !1670)
!1677 = !DILocation(line: 427, column: 41, scope: !1670)
!1678 = !DILocation(line: 427, column: 32, scope: !1670)
!1679 = !DILocation(line: 427, column: 31, scope: !1670)
!1680 = !DILocation(line: 427, column: 19, scope: !1670)
!1681 = !DILocation(line: 427, column: 8, scope: !1671)
!1682 = !DILocation(line: 427, column: 47, scope: !1670)
!1683 = !DILocation(line: 430, column: 14, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1670, file: !3, line: 430, column: 13)
!1685 = !DILocation(line: 430, column: 13, scope: !1670)
!1686 = !DILocation(line: 430, column: 19, scope: !1684)
!1687 = !DILocation(line: 431, column: 3, scope: !1671)
!1688 = !DILocation(line: 433, column: 7, scope: !1633)
!1689 = !DILocation(line: 433, column: 10, scope: !1633)
!1690 = !DILocation(line: 433, column: 22, scope: !1633)
!1691 = !DILocation(line: 433, column: 25, scope: !1633)
!1692 = !DILocation(line: 433, column: 21, scope: !1633)
!1693 = !DILocation(line: 433, column: 16, scope: !1633)
!1694 = !DILocation(line: 433, column: 6, scope: !1633)
!1695 = !DILocation(line: 434, column: 6, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 434, column: 6)
!1697 = !DILocation(line: 434, column: 10, scope: !1696)
!1698 = !DILocation(line: 434, column: 6, scope: !1633)
!1699 = !DILocation(line: 435, column: 10, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1696, file: !3, line: 434, column: 13)
!1701 = !DILocation(line: 435, column: 13, scope: !1700)
!1702 = !DILocation(line: 435, column: 25, scope: !1700)
!1703 = !DILocation(line: 435, column: 28, scope: !1700)
!1704 = !DILocation(line: 435, column: 24, scope: !1700)
!1705 = !DILocation(line: 435, column: 19, scope: !1700)
!1706 = !DILocation(line: 435, column: 8, scope: !1700)
!1707 = !DILocation(line: 436, column: 8, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 436, column: 8)
!1709 = !DILocation(line: 436, column: 12, scope: !1708)
!1710 = !DILocation(line: 436, column: 8, scope: !1700)
!1711 = !DILocation(line: 437, column: 12, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1708, file: !3, line: 436, column: 16)
!1713 = !DILocation(line: 437, column: 15, scope: !1712)
!1714 = !DILocation(line: 437, column: 26, scope: !1712)
!1715 = !DILocation(line: 437, column: 29, scope: !1712)
!1716 = !DILocation(line: 437, column: 25, scope: !1712)
!1717 = !DILocation(line: 437, column: 21, scope: !1712)
!1718 = !DILocation(line: 437, column: 10, scope: !1712)
!1719 = !DILocation(line: 438, column: 10, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1712, file: !3, line: 438, column: 10)
!1721 = !DILocation(line: 438, column: 14, scope: !1720)
!1722 = !DILocation(line: 438, column: 10, scope: !1712)
!1723 = !DILocation(line: 439, column: 14, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1720, file: !3, line: 438, column: 18)
!1725 = !DILocation(line: 439, column: 17, scope: !1724)
!1726 = !DILocation(line: 439, column: 26, scope: !1724)
!1727 = !DILocation(line: 439, column: 29, scope: !1724)
!1728 = !DILocation(line: 439, column: 23, scope: !1724)
!1729 = !DILocation(line: 439, column: 12, scope: !1724)
!1730 = !DILocation(line: 440, column: 12, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1724, file: !3, line: 440, column: 12)
!1732 = !DILocation(line: 440, column: 16, scope: !1731)
!1733 = !DILocation(line: 440, column: 20, scope: !1731)
!1734 = !DILocation(line: 440, column: 23, scope: !1731)
!1735 = !DILocation(line: 440, column: 26, scope: !1731)
!1736 = !DILocation(line: 440, column: 12, scope: !1724)
!1737 = !DILocation(line: 441, column: 16, scope: !1731)
!1738 = !DILocation(line: 441, column: 19, scope: !1731)
!1739 = !DILocation(line: 441, column: 30, scope: !1731)
!1740 = !DILocation(line: 441, column: 33, scope: !1731)
!1741 = !DILocation(line: 441, column: 29, scope: !1731)
!1742 = !DILocation(line: 441, column: 25, scope: !1731)
!1743 = !DILocation(line: 441, column: 14, scope: !1731)
!1744 = !DILocation(line: 441, column: 11, scope: !1731)
!1745 = !DILocation(line: 442, column: 7, scope: !1724)
!1746 = !DILocation(line: 443, column: 5, scope: !1712)
!1747 = !DILocation(line: 444, column: 3, scope: !1700)
!1748 = !DILocation(line: 445, column: 9, scope: !1633)
!1749 = !DILocation(line: 445, column: 12, scope: !1633)
!1750 = !DILocation(line: 445, column: 29, scope: !1633)
!1751 = !DILocation(line: 445, column: 30, scope: !1633)
!1752 = !DILocation(line: 445, column: 26, scope: !1633)
!1753 = !DILocation(line: 445, column: 39, scope: !1633)
!1754 = !DILocation(line: 445, column: 40, scope: !1633)
!1755 = !DILocation(line: 445, column: 43, scope: !1633)
!1756 = !DILocation(line: 445, column: 35, scope: !1633)
!1757 = !DILocation(line: 445, column: 6, scope: !1633)
!1758 = !DILocation(line: 447, column: 11, scope: !1633)
!1759 = !DILocation(line: 447, column: 15, scope: !1633)
!1760 = !DILocation(line: 447, column: 3, scope: !1633)
!1761 = !DILocation(line: 447, column: 6, scope: !1633)
!1762 = !DILocation(line: 447, column: 9, scope: !1633)
!1763 = !DILocation(line: 448, column: 15, scope: !1633)
!1764 = !DILocation(line: 448, column: 19, scope: !1633)
!1765 = !DILocation(line: 448, column: 3, scope: !1633)
!1766 = !DILocation(line: 448, column: 6, scope: !1633)
!1767 = !DILocation(line: 448, column: 13, scope: !1633)
!1768 = !DILocation(line: 449, column: 13, scope: !1633)
!1769 = !DILocation(line: 449, column: 17, scope: !1633)
!1770 = !DILocation(line: 449, column: 3, scope: !1633)
!1771 = !DILocation(line: 449, column: 6, scope: !1633)
!1772 = !DILocation(line: 449, column: 12, scope: !1633)
!1773 = !DILocation(line: 450, column: 10, scope: !1633)
!1774 = !DILocation(line: 450, column: 3, scope: !1633)
!1775 = !DILocation(line: 452, column: 2, scope: !1633)
!1776 = !DILocation(line: 453, column: 2, scope: !1633)
!1777 = !DILocation(line: 454, column: 3, scope: !1633)
!1778 = !DILocation(line: 454, column: 6, scope: !1633)
!1779 = !DILocation(line: 454, column: 9, scope: !1633)
!1780 = !DILocation(line: 455, column: 14, scope: !1633)
!1781 = !DILocation(line: 455, column: 17, scope: !1633)
!1782 = !DILocation(line: 455, column: 3, scope: !1633)
!1783 = !DILocation(line: 455, column: 6, scope: !1633)
!1784 = !DILocation(line: 455, column: 13, scope: !1633)
!1785 = !DILocation(line: 456, column: 3, scope: !1633)
!1786 = !DILocation(line: 456, column: 6, scope: !1633)
!1787 = !DILocation(line: 456, column: 12, scope: !1633)
!1788 = !DILocation(line: 457, column: 3, scope: !1633)
!1789 = !DILocation(line: 458, column: 1, scope: !1633)
!1790 = distinct !DISubprogram(name: "oggpack_read1", scope: !3, file: !3, line: 460, type: !1346, scopeLine: 460, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1791)
!1791 = !{!1792, !1793, !1794}
!1792 = !DILocalVariable(name: "b", arg: 1, scope: !1790, file: !3, line: 460, type: !274)
!1793 = !DILocalVariable(name: "ret", scope: !1790, file: !3, line: 461, type: !90)
!1794 = !DILabel(scope: !1790, name: "overflow", file: !3, line: 474)
!1795 = !DILocation(line: 460, column: 36, scope: !1790)
!1796 = !DILocation(line: 461, column: 3, scope: !1790)
!1797 = !DILocation(line: 461, column: 8, scope: !1790)
!1798 = !DILocation(line: 463, column: 6, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 463, column: 6)
!1800 = !DILocation(line: 463, column: 9, scope: !1799)
!1801 = !DILocation(line: 463, column: 20, scope: !1799)
!1802 = !DILocation(line: 463, column: 23, scope: !1799)
!1803 = !DILocation(line: 463, column: 17, scope: !1799)
!1804 = !DILocation(line: 463, column: 6, scope: !1790)
!1805 = !DILocation(line: 463, column: 32, scope: !1799)
!1806 = !DILocation(line: 464, column: 8, scope: !1790)
!1807 = !DILocation(line: 464, column: 11, scope: !1790)
!1808 = !DILocation(line: 464, column: 19, scope: !1790)
!1809 = !DILocation(line: 464, column: 22, scope: !1790)
!1810 = !DILocation(line: 464, column: 17, scope: !1790)
!1811 = !DILocation(line: 464, column: 29, scope: !1790)
!1812 = !DILocation(line: 464, column: 7, scope: !1790)
!1813 = !DILocation(line: 464, column: 6, scope: !1790)
!1814 = !DILocation(line: 466, column: 3, scope: !1790)
!1815 = !DILocation(line: 466, column: 6, scope: !1790)
!1816 = !DILocation(line: 466, column: 12, scope: !1790)
!1817 = !DILocation(line: 467, column: 6, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 467, column: 6)
!1819 = !DILocation(line: 467, column: 9, scope: !1818)
!1820 = !DILocation(line: 467, column: 15, scope: !1818)
!1821 = !DILocation(line: 467, column: 6, scope: !1790)
!1822 = !DILocation(line: 468, column: 5, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1818, file: !3, line: 467, column: 18)
!1824 = !DILocation(line: 468, column: 8, scope: !1823)
!1825 = !DILocation(line: 468, column: 14, scope: !1823)
!1826 = !DILocation(line: 469, column: 5, scope: !1823)
!1827 = !DILocation(line: 469, column: 8, scope: !1823)
!1828 = !DILocation(line: 469, column: 11, scope: !1823)
!1829 = !DILocation(line: 470, column: 5, scope: !1823)
!1830 = !DILocation(line: 470, column: 8, scope: !1823)
!1831 = !DILocation(line: 470, column: 15, scope: !1823)
!1832 = !DILocation(line: 471, column: 3, scope: !1823)
!1833 = !DILocation(line: 472, column: 10, scope: !1790)
!1834 = !DILocation(line: 472, column: 3, scope: !1790)
!1835 = !DILocation(line: 474, column: 2, scope: !1790)
!1836 = !DILocation(line: 475, column: 3, scope: !1790)
!1837 = !DILocation(line: 475, column: 6, scope: !1790)
!1838 = !DILocation(line: 475, column: 9, scope: !1790)
!1839 = !DILocation(line: 476, column: 14, scope: !1790)
!1840 = !DILocation(line: 476, column: 17, scope: !1790)
!1841 = !DILocation(line: 476, column: 3, scope: !1790)
!1842 = !DILocation(line: 476, column: 6, scope: !1790)
!1843 = !DILocation(line: 476, column: 13, scope: !1790)
!1844 = !DILocation(line: 477, column: 3, scope: !1790)
!1845 = !DILocation(line: 477, column: 6, scope: !1790)
!1846 = !DILocation(line: 477, column: 12, scope: !1790)
!1847 = !DILocation(line: 478, column: 3, scope: !1790)
!1848 = !DILocation(line: 479, column: 1, scope: !1790)
!1849 = distinct !DISubprogram(name: "oggpackB_read1", scope: !3, file: !3, line: 481, type: !1346, scopeLine: 481, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1850)
!1850 = !{!1851, !1852, !1853}
!1851 = !DILocalVariable(name: "b", arg: 1, scope: !1849, file: !3, line: 481, type: !274)
!1852 = !DILocalVariable(name: "ret", scope: !1849, file: !3, line: 482, type: !90)
!1853 = !DILabel(scope: !1849, name: "overflow", file: !3, line: 495)
!1854 = !DILocation(line: 481, column: 37, scope: !1849)
!1855 = !DILocation(line: 482, column: 3, scope: !1849)
!1856 = !DILocation(line: 482, column: 8, scope: !1849)
!1857 = !DILocation(line: 484, column: 6, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1849, file: !3, line: 484, column: 6)
!1859 = !DILocation(line: 484, column: 9, scope: !1858)
!1860 = !DILocation(line: 484, column: 20, scope: !1858)
!1861 = !DILocation(line: 484, column: 23, scope: !1858)
!1862 = !DILocation(line: 484, column: 17, scope: !1858)
!1863 = !DILocation(line: 484, column: 6, scope: !1849)
!1864 = !DILocation(line: 484, column: 32, scope: !1858)
!1865 = !DILocation(line: 485, column: 8, scope: !1849)
!1866 = !DILocation(line: 485, column: 11, scope: !1849)
!1867 = !DILocation(line: 485, column: 22, scope: !1849)
!1868 = !DILocation(line: 485, column: 25, scope: !1849)
!1869 = !DILocation(line: 485, column: 21, scope: !1849)
!1870 = !DILocation(line: 485, column: 17, scope: !1849)
!1871 = !DILocation(line: 485, column: 33, scope: !1849)
!1872 = !DILocation(line: 485, column: 7, scope: !1849)
!1873 = !DILocation(line: 485, column: 6, scope: !1849)
!1874 = !DILocation(line: 487, column: 3, scope: !1849)
!1875 = !DILocation(line: 487, column: 6, scope: !1849)
!1876 = !DILocation(line: 487, column: 12, scope: !1849)
!1877 = !DILocation(line: 488, column: 6, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1849, file: !3, line: 488, column: 6)
!1879 = !DILocation(line: 488, column: 9, scope: !1878)
!1880 = !DILocation(line: 488, column: 15, scope: !1878)
!1881 = !DILocation(line: 488, column: 6, scope: !1849)
!1882 = !DILocation(line: 489, column: 5, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1878, file: !3, line: 488, column: 18)
!1884 = !DILocation(line: 489, column: 8, scope: !1883)
!1885 = !DILocation(line: 489, column: 14, scope: !1883)
!1886 = !DILocation(line: 490, column: 5, scope: !1883)
!1887 = !DILocation(line: 490, column: 8, scope: !1883)
!1888 = !DILocation(line: 490, column: 11, scope: !1883)
!1889 = !DILocation(line: 491, column: 5, scope: !1883)
!1890 = !DILocation(line: 491, column: 8, scope: !1883)
!1891 = !DILocation(line: 491, column: 15, scope: !1883)
!1892 = !DILocation(line: 492, column: 3, scope: !1883)
!1893 = !DILocation(line: 493, column: 10, scope: !1849)
!1894 = !DILocation(line: 493, column: 3, scope: !1849)
!1895 = !DILocation(line: 495, column: 2, scope: !1849)
!1896 = !DILocation(line: 496, column: 3, scope: !1849)
!1897 = !DILocation(line: 496, column: 6, scope: !1849)
!1898 = !DILocation(line: 496, column: 9, scope: !1849)
!1899 = !DILocation(line: 497, column: 14, scope: !1849)
!1900 = !DILocation(line: 497, column: 17, scope: !1849)
!1901 = !DILocation(line: 497, column: 3, scope: !1849)
!1902 = !DILocation(line: 497, column: 6, scope: !1849)
!1903 = !DILocation(line: 497, column: 13, scope: !1849)
!1904 = !DILocation(line: 498, column: 3, scope: !1849)
!1905 = !DILocation(line: 498, column: 6, scope: !1849)
!1906 = !DILocation(line: 498, column: 12, scope: !1849)
!1907 = !DILocation(line: 499, column: 3, scope: !1849)
!1908 = !DILocation(line: 500, column: 1, scope: !1849)
!1909 = distinct !DISubprogram(name: "oggpack_bytes", scope: !3, file: !3, line: 502, type: !1346, scopeLine: 502, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1910)
!1910 = !{!1911}
!1911 = !DILocalVariable(name: "b", arg: 1, scope: !1909, file: !3, line: 502, type: !274)
!1912 = !DILocation(line: 502, column: 36, scope: !1909)
!1913 = !DILocation(line: 503, column: 10, scope: !1909)
!1914 = !DILocation(line: 503, column: 13, scope: !1909)
!1915 = !DILocation(line: 503, column: 22, scope: !1909)
!1916 = !DILocation(line: 503, column: 25, scope: !1909)
!1917 = !DILocation(line: 503, column: 31, scope: !1909)
!1918 = !DILocation(line: 503, column: 34, scope: !1909)
!1919 = !DILocation(line: 503, column: 21, scope: !1909)
!1920 = !DILocation(line: 503, column: 20, scope: !1909)
!1921 = !DILocation(line: 503, column: 3, scope: !1909)
!1922 = distinct !DISubprogram(name: "oggpack_bits", scope: !3, file: !3, line: 506, type: !1346, scopeLine: 506, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1923)
!1923 = !{!1924}
!1924 = !DILocalVariable(name: "b", arg: 1, scope: !1922, file: !3, line: 506, type: !274)
!1925 = !DILocation(line: 506, column: 35, scope: !1922)
!1926 = !DILocation(line: 507, column: 10, scope: !1922)
!1927 = !DILocation(line: 507, column: 13, scope: !1922)
!1928 = !DILocation(line: 507, column: 20, scope: !1922)
!1929 = !DILocation(line: 507, column: 23, scope: !1922)
!1930 = !DILocation(line: 507, column: 26, scope: !1922)
!1931 = !DILocation(line: 507, column: 22, scope: !1922)
!1932 = !DILocation(line: 507, column: 3, scope: !1922)
!1933 = distinct !DISubprogram(name: "oggpackB_bytes", scope: !3, file: !3, line: 510, type: !1346, scopeLine: 510, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1934)
!1934 = !{!1935}
!1935 = !DILocalVariable(name: "b", arg: 1, scope: !1933, file: !3, line: 510, type: !274)
!1936 = !DILocation(line: 510, column: 37, scope: !1933)
!1937 = !DILocation(line: 511, column: 24, scope: !1933)
!1938 = !DILocation(line: 511, column: 10, scope: !1933)
!1939 = !DILocation(line: 511, column: 3, scope: !1933)
!1940 = distinct !DISubprogram(name: "oggpackB_bits", scope: !3, file: !3, line: 514, type: !1346, scopeLine: 514, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1941)
!1941 = !{!1942}
!1942 = !DILocalVariable(name: "b", arg: 1, scope: !1940, file: !3, line: 514, type: !274)
!1943 = !DILocation(line: 514, column: 36, scope: !1940)
!1944 = !DILocation(line: 515, column: 23, scope: !1940)
!1945 = !DILocation(line: 515, column: 10, scope: !1940)
!1946 = !DILocation(line: 515, column: 3, scope: !1940)
!1947 = distinct !DISubprogram(name: "oggpack_get_buffer", scope: !3, file: !3, line: 518, type: !1948, scopeLine: 518, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1950)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!7, !274}
!1950 = !{!1951}
!1951 = !DILocalVariable(name: "b", arg: 1, scope: !1947, file: !3, line: 518, type: !274)
!1952 = !DILocation(line: 518, column: 51, scope: !1947)
!1953 = !DILocation(line: 519, column: 10, scope: !1947)
!1954 = !DILocation(line: 519, column: 13, scope: !1947)
!1955 = !DILocation(line: 519, column: 3, scope: !1947)
!1956 = distinct !DISubprogram(name: "oggpackB_get_buffer", scope: !3, file: !3, line: 522, type: !1948, scopeLine: 522, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1957)
!1957 = !{!1958}
!1958 = !DILocalVariable(name: "b", arg: 1, scope: !1956, file: !3, line: 522, type: !274)
!1959 = !DILocation(line: 522, column: 52, scope: !1956)
!1960 = !DILocation(line: 523, column: 29, scope: !1956)
!1961 = !DILocation(line: 523, column: 10, scope: !1956)
!1962 = !DILocation(line: 523, column: 3, scope: !1956)
!1963 = distinct !DISubprogram(name: "report", scope: !3, file: !3, line: 544, type: !1964, scopeLine: 544, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1967)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{null, !1966}
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!1967 = !{!1968}
!1968 = !DILocalVariable(name: "in", arg: 1, scope: !1963, file: !3, line: 544, type: !1966)
!1969 = !DILocation(line: 544, column: 19, scope: !1963)
!1970 = !DILocation(line: 545, column: 11, scope: !1963)
!1971 = !DILocation(line: 545, column: 23, scope: !1963)
!1972 = !DILocation(line: 545, column: 3, scope: !1963)
!1973 = !DILocation(line: 546, column: 3, scope: !1963)
!1974 = !DISubprogram(name: "fprintf", scope: !1975, file: !1975, line: 350, type: !1976, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1975 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!6, !1978, !2034, null}
!1978 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1979)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1981, line: 7, baseType: !1982)
!1981 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1983, line: 49, size: 1728, elements: !1984)
!1983 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!1984 = !{!1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !2000, !2002, !2003, !2004, !2007, !2009, !2011, !2015, !2018, !2020, !2023, !2026, !2027, !2028, !2029, !2030}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1982, file: !1983, line: 51, baseType: !6, size: 32)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1982, file: !1983, line: 54, baseType: !1966, size: 64, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1982, file: !1983, line: 55, baseType: !1966, size: 64, offset: 128)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1982, file: !1983, line: 56, baseType: !1966, size: 64, offset: 192)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1982, file: !1983, line: 57, baseType: !1966, size: 64, offset: 256)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1982, file: !1983, line: 58, baseType: !1966, size: 64, offset: 320)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1982, file: !1983, line: 59, baseType: !1966, size: 64, offset: 384)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1982, file: !1983, line: 60, baseType: !1966, size: 64, offset: 448)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1982, file: !1983, line: 61, baseType: !1966, size: 64, offset: 512)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1982, file: !1983, line: 64, baseType: !1966, size: 64, offset: 576)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1982, file: !1983, line: 65, baseType: !1966, size: 64, offset: 640)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1982, file: !1983, line: 66, baseType: !1966, size: 64, offset: 704)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1982, file: !1983, line: 68, baseType: !1998, size: 64, offset: 768)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1983, line: 36, flags: DIFlagFwdDecl)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1982, file: !1983, line: 70, baseType: !2001, size: 64, offset: 832)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1982, file: !1983, line: 72, baseType: !6, size: 32, offset: 896)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1982, file: !1983, line: 73, baseType: !6, size: 32, offset: 928)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1982, file: !1983, line: 74, baseType: !2005, size: 64, offset: 960)
!2005 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2006, line: 152, baseType: !90)
!2006 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1982, file: !1983, line: 77, baseType: !2008, size: 16, offset: 1024)
!2008 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1982, file: !1983, line: 78, baseType: !2010, size: 8, offset: 1040)
!2010 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1982, file: !1983, line: 79, baseType: !2012, size: 8, offset: 1048)
!2012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8, elements: !2013)
!2013 = !{!2014}
!2014 = !DISubrange(count: 1)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1982, file: !1983, line: 81, baseType: !2016, size: 64, offset: 1088)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1983, line: 43, baseType: null)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1982, file: !1983, line: 89, baseType: !2019, size: 64, offset: 1152)
!2019 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2006, line: 153, baseType: !90)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1982, file: !1983, line: 91, baseType: !2021, size: 64, offset: 1216)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1983, line: 37, flags: DIFlagFwdDecl)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1982, file: !1983, line: 92, baseType: !2024, size: 64, offset: 1280)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1983, line: 38, flags: DIFlagFwdDecl)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1982, file: !1983, line: 93, baseType: !2001, size: 64, offset: 1344)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1982, file: !1983, line: 94, baseType: !309, size: 64, offset: 1408)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1982, file: !1983, line: 95, baseType: !310, size: 64, offset: 1472)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1982, file: !1983, line: 96, baseType: !6, size: 32, offset: 1536)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1982, file: !1983, line: 98, baseType: !2031, size: 160, offset: 1568)
!2031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 160, elements: !2032)
!2032 = !{!2033}
!2033 = !DISubrange(count: 20)
!2034 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2035)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!2037 = !DISubprogram(name: "exit", scope: !306, file: !306, line: 624, type: !2038, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{null, !6}
!2040 = distinct !DISubprogram(name: "cliptest", scope: !3, file: !3, line: 549, type: !2041, scopeLine: 549, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2045)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{null, !2043, !6, !6, !2044, !6}
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!2045 = !{!2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054}
!2046 = !DILocalVariable(name: "b", arg: 1, scope: !2040, file: !3, line: 549, type: !2043)
!2047 = !DILocalVariable(name: "vals", arg: 2, scope: !2040, file: !3, line: 549, type: !6)
!2048 = !DILocalVariable(name: "bits", arg: 3, scope: !2040, file: !3, line: 549, type: !6)
!2049 = !DILocalVariable(name: "comp", arg: 4, scope: !2040, file: !3, line: 549, type: !2044)
!2050 = !DILocalVariable(name: "compsize", arg: 5, scope: !2040, file: !3, line: 549, type: !6)
!2051 = !DILocalVariable(name: "bytes", scope: !2040, file: !3, line: 550, type: !90)
!2052 = !DILocalVariable(name: "i", scope: !2040, file: !3, line: 550, type: !90)
!2053 = !DILocalVariable(name: "buffer", scope: !2040, file: !3, line: 551, type: !7)
!2054 = !DILocalVariable(name: "tbit", scope: !2055, file: !3, line: 565, type: !6)
!2055 = distinct !DILexicalBlock(scope: !2056, file: !3, line: 564, column: 22)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !3, line: 564, column: 3)
!2057 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 564, column: 3)
!2058 = !DILocation(line: 549, column: 30, scope: !2040)
!2059 = !DILocation(line: 549, column: 36, scope: !2040)
!2060 = !DILocation(line: 549, column: 45, scope: !2040)
!2061 = !DILocation(line: 549, column: 55, scope: !2040)
!2062 = !DILocation(line: 549, column: 64, scope: !2040)
!2063 = !DILocation(line: 550, column: 3, scope: !2040)
!2064 = !DILocation(line: 550, column: 8, scope: !2040)
!2065 = !DILocation(line: 550, column: 14, scope: !2040)
!2066 = !DILocation(line: 551, column: 3, scope: !2040)
!2067 = !DILocation(line: 551, column: 18, scope: !2040)
!2068 = !DILocation(line: 553, column: 3, scope: !2040)
!2069 = !DILocation(line: 554, column: 8, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 554, column: 3)
!2071 = !DILocation(line: 554, column: 7, scope: !2070)
!2072 = !DILocation(line: 554, column: 11, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2070, file: !3, line: 554, column: 3)
!2074 = !DILocation(line: 554, column: 13, scope: !2073)
!2075 = !DILocation(line: 554, column: 12, scope: !2073)
!2076 = !DILocation(line: 554, column: 3, scope: !2070)
!2077 = !DILocation(line: 555, column: 22, scope: !2073)
!2078 = !DILocation(line: 555, column: 24, scope: !2073)
!2079 = !DILocation(line: 555, column: 27, scope: !2073)
!2080 = !DILocation(line: 555, column: 32, scope: !2073)
!2081 = !DILocation(line: 555, column: 42, scope: !2073)
!2082 = !DILocation(line: 555, column: 44, scope: !2073)
!2083 = !DILocation(line: 555, column: 37, scope: !2073)
!2084 = !DILocation(line: 555, column: 5, scope: !2073)
!2085 = !DILocation(line: 554, column: 19, scope: !2073)
!2086 = !DILocation(line: 554, column: 3, scope: !2073)
!2087 = distinct !{!2087, !2076, !2088, !963}
!2088 = !DILocation(line: 555, column: 47, scope: !2070)
!2089 = !DILocation(line: 556, column: 10, scope: !2040)
!2090 = !DILocation(line: 556, column: 9, scope: !2040)
!2091 = !DILocation(line: 557, column: 9, scope: !2040)
!2092 = !DILocation(line: 557, column: 8, scope: !2040)
!2093 = !DILocation(line: 558, column: 6, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 558, column: 6)
!2095 = !DILocation(line: 558, column: 13, scope: !2094)
!2096 = !DILocation(line: 558, column: 11, scope: !2094)
!2097 = !DILocation(line: 558, column: 6, scope: !2040)
!2098 = !DILocation(line: 558, column: 22, scope: !2094)
!2099 = !DILocation(line: 559, column: 8, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 559, column: 3)
!2101 = !DILocation(line: 559, column: 7, scope: !2100)
!2102 = !DILocation(line: 559, column: 11, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2100, file: !3, line: 559, column: 3)
!2104 = !DILocation(line: 559, column: 13, scope: !2103)
!2105 = !DILocation(line: 559, column: 12, scope: !2103)
!2106 = !DILocation(line: 559, column: 3, scope: !2100)
!2107 = !DILocation(line: 559, column: 26, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2103, file: !3, line: 559, column: 26)
!2109 = !DILocation(line: 559, column: 33, scope: !2108)
!2110 = !DILocation(line: 559, column: 37, scope: !2108)
!2111 = !DILocation(line: 559, column: 42, scope: !2108)
!2112 = !DILocation(line: 559, column: 35, scope: !2108)
!2113 = !DILocation(line: 559, column: 26, scope: !2103)
!2114 = !DILocation(line: 560, column: 10, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2116, file: !3, line: 560, column: 5)
!2116 = distinct !DILexicalBlock(scope: !2108, file: !3, line: 559, column: 45)
!2117 = !DILocation(line: 560, column: 9, scope: !2115)
!2118 = !DILocation(line: 560, column: 13, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2115, file: !3, line: 560, column: 5)
!2120 = !DILocation(line: 560, column: 15, scope: !2119)
!2121 = !DILocation(line: 560, column: 14, scope: !2119)
!2122 = !DILocation(line: 560, column: 5, scope: !2115)
!2123 = !DILocation(line: 560, column: 33, scope: !2119)
!2124 = !DILocation(line: 560, column: 55, scope: !2119)
!2125 = !DILocation(line: 560, column: 62, scope: !2119)
!2126 = !DILocation(line: 560, column: 50, scope: !2119)
!2127 = !DILocation(line: 560, column: 70, scope: !2119)
!2128 = !DILocation(line: 560, column: 75, scope: !2119)
!2129 = !DILocation(line: 560, column: 25, scope: !2119)
!2130 = !DILocation(line: 560, column: 22, scope: !2119)
!2131 = !DILocation(line: 560, column: 5, scope: !2119)
!2132 = distinct !{!2132, !2122, !2133, !963}
!2133 = !DILocation(line: 560, column: 77, scope: !2115)
!2134 = !DILocation(line: 561, column: 5, scope: !2116)
!2135 = !DILocation(line: 562, column: 3, scope: !2116)
!2136 = !DILocation(line: 559, column: 43, scope: !2108)
!2137 = !DILocation(line: 559, column: 20, scope: !2103)
!2138 = !DILocation(line: 559, column: 3, scope: !2103)
!2139 = distinct !{!2139, !2106, !2140, !963}
!2140 = !DILocation(line: 562, column: 3, scope: !2100)
!2141 = !DILocation(line: 563, column: 23, scope: !2040)
!2142 = !DILocation(line: 563, column: 30, scope: !2040)
!2143 = !DILocation(line: 563, column: 3, scope: !2040)
!2144 = !DILocation(line: 564, column: 8, scope: !2057)
!2145 = !DILocation(line: 564, column: 7, scope: !2057)
!2146 = !DILocation(line: 564, column: 11, scope: !2056)
!2147 = !DILocation(line: 564, column: 13, scope: !2056)
!2148 = !DILocation(line: 564, column: 12, scope: !2056)
!2149 = !DILocation(line: 564, column: 3, scope: !2057)
!2150 = !DILocation(line: 565, column: 5, scope: !2055)
!2151 = !DILocation(line: 565, column: 9, scope: !2055)
!2152 = !DILocation(line: 565, column: 14, scope: !2055)
!2153 = !DILocation(line: 565, column: 19, scope: !2055)
!2154 = !DILocation(line: 565, column: 29, scope: !2055)
!2155 = !DILocation(line: 565, column: 31, scope: !2055)
!2156 = !DILocation(line: 565, column: 24, scope: !2055)
!2157 = !DILocation(line: 566, column: 24, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 566, column: 8)
!2159 = !DILocation(line: 566, column: 8, scope: !2158)
!2160 = !DILocation(line: 566, column: 29, scope: !2158)
!2161 = !DILocation(line: 566, column: 8, scope: !2055)
!2162 = !DILocation(line: 567, column: 7, scope: !2158)
!2163 = !DILocation(line: 568, column: 24, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 568, column: 8)
!2165 = !DILocation(line: 568, column: 8, scope: !2164)
!2166 = !DILocation(line: 568, column: 32, scope: !2164)
!2167 = !DILocation(line: 568, column: 34, scope: !2164)
!2168 = !DILocation(line: 568, column: 42, scope: !2164)
!2169 = !DILocation(line: 568, column: 37, scope: !2164)
!2170 = !DILocation(line: 568, column: 36, scope: !2164)
!2171 = !DILocation(line: 568, column: 29, scope: !2164)
!2172 = !DILocation(line: 568, column: 8, scope: !2055)
!2173 = !DILocation(line: 569, column: 7, scope: !2164)
!2174 = !DILocation(line: 570, column: 8, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 570, column: 8)
!2176 = !DILocation(line: 570, column: 12, scope: !2175)
!2177 = !DILocation(line: 570, column: 8, scope: !2055)
!2178 = !DILocation(line: 571, column: 10, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2175, file: !3, line: 571, column: 10)
!2180 = !DILocation(line: 571, column: 30, scope: !2179)
!2181 = !DILocation(line: 571, column: 32, scope: !2179)
!2182 = !DILocation(line: 571, column: 40, scope: !2179)
!2183 = !DILocation(line: 571, column: 35, scope: !2179)
!2184 = !DILocation(line: 571, column: 34, scope: !2179)
!2185 = !DILocation(line: 571, column: 27, scope: !2179)
!2186 = !DILocation(line: 571, column: 10, scope: !2175)
!2187 = !DILocation(line: 572, column: 9, scope: !2179)
!2188 = !DILocation(line: 571, column: 45, scope: !2179)
!2189 = !DILocation(line: 573, column: 8, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 573, column: 8)
!2191 = !DILocation(line: 573, column: 12, scope: !2190)
!2192 = !DILocation(line: 573, column: 8, scope: !2055)
!2193 = !DILocation(line: 574, column: 10, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2195, file: !3, line: 574, column: 10)
!2195 = distinct !DILexicalBlock(scope: !2190, file: !3, line: 573, column: 16)
!2196 = !DILocation(line: 574, column: 30, scope: !2194)
!2197 = !DILocation(line: 574, column: 32, scope: !2194)
!2198 = !DILocation(line: 574, column: 40, scope: !2194)
!2199 = !DILocation(line: 574, column: 35, scope: !2194)
!2200 = !DILocation(line: 574, column: 34, scope: !2194)
!2201 = !DILocation(line: 574, column: 27, scope: !2194)
!2202 = !DILocation(line: 574, column: 10, scope: !2195)
!2203 = !DILocation(line: 575, column: 9, scope: !2194)
!2204 = !DILocation(line: 576, column: 5, scope: !2195)
!2205 = !DILocation(line: 577, column: 24, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !3, line: 577, column: 8)
!2207 = distinct !DILexicalBlock(scope: !2190, file: !3, line: 576, column: 10)
!2208 = !DILocation(line: 577, column: 8, scope: !2206)
!2209 = !DILocation(line: 577, column: 32, scope: !2206)
!2210 = !DILocation(line: 577, column: 34, scope: !2206)
!2211 = !DILocation(line: 577, column: 42, scope: !2206)
!2212 = !DILocation(line: 577, column: 37, scope: !2206)
!2213 = !DILocation(line: 577, column: 36, scope: !2206)
!2214 = !DILocation(line: 577, column: 29, scope: !2206)
!2215 = !DILocation(line: 577, column: 8, scope: !2207)
!2216 = !DILocation(line: 578, column: 7, scope: !2206)
!2217 = !DILocation(line: 580, column: 3, scope: !2056)
!2218 = !DILocation(line: 580, column: 3, scope: !2055)
!2219 = !DILocation(line: 564, column: 19, scope: !2056)
!2220 = !DILocation(line: 564, column: 3, scope: !2056)
!2221 = distinct !{!2221, !2149, !2222, !963}
!2222 = !DILocation(line: 580, column: 3, scope: !2057)
!2223 = !DILocation(line: 581, column: 6, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 581, column: 6)
!2225 = !DILocation(line: 581, column: 25, scope: !2224)
!2226 = !DILocation(line: 581, column: 23, scope: !2224)
!2227 = !DILocation(line: 581, column: 6, scope: !2040)
!2228 = !DILocation(line: 581, column: 31, scope: !2224)
!2229 = !DILocation(line: 582, column: 1, scope: !2040)
!2230 = distinct !DISubprogram(name: "ilog", scope: !3, file: !3, line: 532, type: !2231, scopeLine: 532, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2233)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{!6, !261}
!2233 = !{!2234, !2235}
!2234 = !DILocalVariable(name: "v", arg: 1, scope: !2230, file: !3, line: 532, type: !261)
!2235 = !DILocalVariable(name: "ret", scope: !2230, file: !3, line: 533, type: !6)
!2236 = !DILocation(line: 532, column: 30, scope: !2230)
!2237 = !DILocation(line: 533, column: 3, scope: !2230)
!2238 = !DILocation(line: 533, column: 7, scope: !2230)
!2239 = !DILocation(line: 534, column: 3, scope: !2230)
!2240 = !DILocation(line: 534, column: 9, scope: !2230)
!2241 = !DILocation(line: 535, column: 8, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2230, file: !3, line: 534, column: 11)
!2243 = !DILocation(line: 536, column: 6, scope: !2242)
!2244 = distinct !{!2244, !2239, !2245, !963}
!2245 = !DILocation(line: 537, column: 3, scope: !2230)
!2246 = !DILocation(line: 538, column: 10, scope: !2230)
!2247 = !DILocation(line: 539, column: 1, scope: !2230)
!2248 = !DILocation(line: 538, column: 3, scope: !2230)
!2249 = distinct !DISubprogram(name: "cliptestB", scope: !3, file: !3, line: 584, type: !2041, scopeLine: 584, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2250)
!2250 = !{!2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259}
!2251 = !DILocalVariable(name: "b", arg: 1, scope: !2249, file: !3, line: 584, type: !2043)
!2252 = !DILocalVariable(name: "vals", arg: 2, scope: !2249, file: !3, line: 584, type: !6)
!2253 = !DILocalVariable(name: "bits", arg: 3, scope: !2249, file: !3, line: 584, type: !6)
!2254 = !DILocalVariable(name: "comp", arg: 4, scope: !2249, file: !3, line: 584, type: !2044)
!2255 = !DILocalVariable(name: "compsize", arg: 5, scope: !2249, file: !3, line: 584, type: !6)
!2256 = !DILocalVariable(name: "bytes", scope: !2249, file: !3, line: 585, type: !90)
!2257 = !DILocalVariable(name: "i", scope: !2249, file: !3, line: 585, type: !90)
!2258 = !DILocalVariable(name: "buffer", scope: !2249, file: !3, line: 586, type: !7)
!2259 = !DILocalVariable(name: "tbit", scope: !2260, file: !3, line: 600, type: !6)
!2260 = distinct !DILexicalBlock(scope: !2261, file: !3, line: 599, column: 22)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !3, line: 599, column: 3)
!2262 = distinct !DILexicalBlock(scope: !2249, file: !3, line: 599, column: 3)
!2263 = !DILocation(line: 584, column: 31, scope: !2249)
!2264 = !DILocation(line: 584, column: 37, scope: !2249)
!2265 = !DILocation(line: 584, column: 46, scope: !2249)
!2266 = !DILocation(line: 584, column: 56, scope: !2249)
!2267 = !DILocation(line: 584, column: 65, scope: !2249)
!2268 = !DILocation(line: 585, column: 3, scope: !2249)
!2269 = !DILocation(line: 585, column: 8, scope: !2249)
!2270 = !DILocation(line: 585, column: 14, scope: !2249)
!2271 = !DILocation(line: 586, column: 3, scope: !2249)
!2272 = !DILocation(line: 586, column: 18, scope: !2249)
!2273 = !DILocation(line: 588, column: 3, scope: !2249)
!2274 = !DILocation(line: 589, column: 8, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2249, file: !3, line: 589, column: 3)
!2276 = !DILocation(line: 589, column: 7, scope: !2275)
!2277 = !DILocation(line: 589, column: 11, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2275, file: !3, line: 589, column: 3)
!2279 = !DILocation(line: 589, column: 13, scope: !2278)
!2280 = !DILocation(line: 589, column: 12, scope: !2278)
!2281 = !DILocation(line: 589, column: 3, scope: !2275)
!2282 = !DILocation(line: 590, column: 23, scope: !2278)
!2283 = !DILocation(line: 590, column: 25, scope: !2278)
!2284 = !DILocation(line: 590, column: 28, scope: !2278)
!2285 = !DILocation(line: 590, column: 33, scope: !2278)
!2286 = !DILocation(line: 590, column: 43, scope: !2278)
!2287 = !DILocation(line: 590, column: 45, scope: !2278)
!2288 = !DILocation(line: 590, column: 38, scope: !2278)
!2289 = !DILocation(line: 590, column: 5, scope: !2278)
!2290 = !DILocation(line: 589, column: 19, scope: !2278)
!2291 = !DILocation(line: 589, column: 3, scope: !2278)
!2292 = distinct !{!2292, !2281, !2293, !963}
!2293 = !DILocation(line: 590, column: 48, scope: !2275)
!2294 = !DILocation(line: 591, column: 10, scope: !2249)
!2295 = !DILocation(line: 591, column: 9, scope: !2249)
!2296 = !DILocation(line: 592, column: 9, scope: !2249)
!2297 = !DILocation(line: 592, column: 8, scope: !2249)
!2298 = !DILocation(line: 593, column: 6, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2249, file: !3, line: 593, column: 6)
!2300 = !DILocation(line: 593, column: 13, scope: !2299)
!2301 = !DILocation(line: 593, column: 11, scope: !2299)
!2302 = !DILocation(line: 593, column: 6, scope: !2249)
!2303 = !DILocation(line: 593, column: 22, scope: !2299)
!2304 = !DILocation(line: 594, column: 8, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2249, file: !3, line: 594, column: 3)
!2306 = !DILocation(line: 594, column: 7, scope: !2305)
!2307 = !DILocation(line: 594, column: 11, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2305, file: !3, line: 594, column: 3)
!2309 = !DILocation(line: 594, column: 13, scope: !2308)
!2310 = !DILocation(line: 594, column: 12, scope: !2308)
!2311 = !DILocation(line: 594, column: 3, scope: !2305)
!2312 = !DILocation(line: 594, column: 26, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2308, file: !3, line: 594, column: 26)
!2314 = !DILocation(line: 594, column: 33, scope: !2313)
!2315 = !DILocation(line: 594, column: 37, scope: !2313)
!2316 = !DILocation(line: 594, column: 42, scope: !2313)
!2317 = !DILocation(line: 594, column: 35, scope: !2313)
!2318 = !DILocation(line: 594, column: 26, scope: !2308)
!2319 = !DILocation(line: 595, column: 10, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2321, file: !3, line: 595, column: 5)
!2321 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 594, column: 45)
!2322 = !DILocation(line: 595, column: 9, scope: !2320)
!2323 = !DILocation(line: 595, column: 13, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2320, file: !3, line: 595, column: 5)
!2325 = !DILocation(line: 595, column: 15, scope: !2324)
!2326 = !DILocation(line: 595, column: 14, scope: !2324)
!2327 = !DILocation(line: 595, column: 5, scope: !2320)
!2328 = !DILocation(line: 595, column: 33, scope: !2324)
!2329 = !DILocation(line: 595, column: 55, scope: !2324)
!2330 = !DILocation(line: 595, column: 62, scope: !2324)
!2331 = !DILocation(line: 595, column: 50, scope: !2324)
!2332 = !DILocation(line: 595, column: 70, scope: !2324)
!2333 = !DILocation(line: 595, column: 75, scope: !2324)
!2334 = !DILocation(line: 595, column: 25, scope: !2324)
!2335 = !DILocation(line: 595, column: 22, scope: !2324)
!2336 = !DILocation(line: 595, column: 5, scope: !2324)
!2337 = distinct !{!2337, !2327, !2338, !963}
!2338 = !DILocation(line: 595, column: 77, scope: !2320)
!2339 = !DILocation(line: 596, column: 5, scope: !2321)
!2340 = !DILocation(line: 597, column: 3, scope: !2321)
!2341 = !DILocation(line: 594, column: 43, scope: !2313)
!2342 = !DILocation(line: 594, column: 20, scope: !2308)
!2343 = !DILocation(line: 594, column: 3, scope: !2308)
!2344 = distinct !{!2344, !2311, !2345, !963}
!2345 = !DILocation(line: 597, column: 3, scope: !2305)
!2346 = !DILocation(line: 598, column: 24, scope: !2249)
!2347 = !DILocation(line: 598, column: 31, scope: !2249)
!2348 = !DILocation(line: 598, column: 3, scope: !2249)
!2349 = !DILocation(line: 599, column: 8, scope: !2262)
!2350 = !DILocation(line: 599, column: 7, scope: !2262)
!2351 = !DILocation(line: 599, column: 11, scope: !2261)
!2352 = !DILocation(line: 599, column: 13, scope: !2261)
!2353 = !DILocation(line: 599, column: 12, scope: !2261)
!2354 = !DILocation(line: 599, column: 3, scope: !2262)
!2355 = !DILocation(line: 600, column: 5, scope: !2260)
!2356 = !DILocation(line: 600, column: 9, scope: !2260)
!2357 = !DILocation(line: 600, column: 14, scope: !2260)
!2358 = !DILocation(line: 600, column: 19, scope: !2260)
!2359 = !DILocation(line: 600, column: 29, scope: !2260)
!2360 = !DILocation(line: 600, column: 31, scope: !2260)
!2361 = !DILocation(line: 600, column: 24, scope: !2260)
!2362 = !DILocation(line: 601, column: 25, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2260, file: !3, line: 601, column: 8)
!2364 = !DILocation(line: 601, column: 8, scope: !2363)
!2365 = !DILocation(line: 601, column: 30, scope: !2363)
!2366 = !DILocation(line: 601, column: 8, scope: !2260)
!2367 = !DILocation(line: 602, column: 7, scope: !2363)
!2368 = !DILocation(line: 603, column: 25, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2260, file: !3, line: 603, column: 8)
!2370 = !DILocation(line: 603, column: 8, scope: !2369)
!2371 = !DILocation(line: 603, column: 33, scope: !2369)
!2372 = !DILocation(line: 603, column: 35, scope: !2369)
!2373 = !DILocation(line: 603, column: 43, scope: !2369)
!2374 = !DILocation(line: 603, column: 38, scope: !2369)
!2375 = !DILocation(line: 603, column: 37, scope: !2369)
!2376 = !DILocation(line: 603, column: 30, scope: !2369)
!2377 = !DILocation(line: 603, column: 8, scope: !2260)
!2378 = !DILocation(line: 604, column: 7, scope: !2369)
!2379 = !DILocation(line: 605, column: 8, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2260, file: !3, line: 605, column: 8)
!2381 = !DILocation(line: 605, column: 12, scope: !2380)
!2382 = !DILocation(line: 605, column: 8, scope: !2260)
!2383 = !DILocation(line: 606, column: 10, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2380, file: !3, line: 606, column: 10)
!2385 = !DILocation(line: 606, column: 31, scope: !2384)
!2386 = !DILocation(line: 606, column: 33, scope: !2384)
!2387 = !DILocation(line: 606, column: 41, scope: !2384)
!2388 = !DILocation(line: 606, column: 36, scope: !2384)
!2389 = !DILocation(line: 606, column: 35, scope: !2384)
!2390 = !DILocation(line: 606, column: 28, scope: !2384)
!2391 = !DILocation(line: 606, column: 10, scope: !2380)
!2392 = !DILocation(line: 607, column: 9, scope: !2384)
!2393 = !DILocation(line: 606, column: 46, scope: !2384)
!2394 = !DILocation(line: 608, column: 8, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2260, file: !3, line: 608, column: 8)
!2396 = !DILocation(line: 608, column: 12, scope: !2395)
!2397 = !DILocation(line: 608, column: 8, scope: !2260)
!2398 = !DILocation(line: 609, column: 10, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2400, file: !3, line: 609, column: 10)
!2400 = distinct !DILexicalBlock(scope: !2395, file: !3, line: 608, column: 16)
!2401 = !DILocation(line: 609, column: 31, scope: !2399)
!2402 = !DILocation(line: 609, column: 33, scope: !2399)
!2403 = !DILocation(line: 609, column: 41, scope: !2399)
!2404 = !DILocation(line: 609, column: 36, scope: !2399)
!2405 = !DILocation(line: 609, column: 35, scope: !2399)
!2406 = !DILocation(line: 609, column: 28, scope: !2399)
!2407 = !DILocation(line: 609, column: 10, scope: !2400)
!2408 = !DILocation(line: 610, column: 9, scope: !2399)
!2409 = !DILocation(line: 611, column: 5, scope: !2400)
!2410 = !DILocation(line: 612, column: 25, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2412, file: !3, line: 612, column: 8)
!2412 = distinct !DILexicalBlock(scope: !2395, file: !3, line: 611, column: 10)
!2413 = !DILocation(line: 612, column: 8, scope: !2411)
!2414 = !DILocation(line: 612, column: 33, scope: !2411)
!2415 = !DILocation(line: 612, column: 35, scope: !2411)
!2416 = !DILocation(line: 612, column: 43, scope: !2411)
!2417 = !DILocation(line: 612, column: 38, scope: !2411)
!2418 = !DILocation(line: 612, column: 37, scope: !2411)
!2419 = !DILocation(line: 612, column: 30, scope: !2411)
!2420 = !DILocation(line: 612, column: 8, scope: !2412)
!2421 = !DILocation(line: 613, column: 7, scope: !2411)
!2422 = !DILocation(line: 615, column: 3, scope: !2261)
!2423 = !DILocation(line: 615, column: 3, scope: !2260)
!2424 = !DILocation(line: 599, column: 19, scope: !2261)
!2425 = !DILocation(line: 599, column: 3, scope: !2261)
!2426 = distinct !{!2426, !2354, !2427, !963}
!2427 = !DILocation(line: 615, column: 3, scope: !2262)
!2428 = !DILocation(line: 616, column: 6, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2249, file: !3, line: 616, column: 6)
!2430 = !DILocation(line: 616, column: 26, scope: !2429)
!2431 = !DILocation(line: 616, column: 24, scope: !2429)
!2432 = !DILocation(line: 616, column: 6, scope: !2249)
!2433 = !DILocation(line: 616, column: 32, scope: !2429)
!2434 = !DILocation(line: 617, column: 1, scope: !2249)
!2435 = distinct !DISubprogram(name: "copytest", scope: !3, file: !3, line: 619, type: !2436, scopeLine: 619, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2438)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{null, !6, !6}
!2438 = !{!2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2454, !2455, !2459, !2460, !2464}
!2439 = !DILocalVariable(name: "prefill", arg: 1, scope: !2435, file: !3, line: 619, type: !6)
!2440 = !DILocalVariable(name: "copy", arg: 2, scope: !2435, file: !3, line: 619, type: !6)
!2441 = !DILocalVariable(name: "source_write", scope: !2435, file: !3, line: 620, type: !246)
!2442 = !DILocalVariable(name: "dest_write", scope: !2435, file: !3, line: 621, type: !246)
!2443 = !DILocalVariable(name: "source_read", scope: !2435, file: !3, line: 622, type: !246)
!2444 = !DILocalVariable(name: "dest_read", scope: !2435, file: !3, line: 623, type: !246)
!2445 = !DILocalVariable(name: "source", scope: !2435, file: !3, line: 624, type: !7)
!2446 = !DILocalVariable(name: "dest", scope: !2435, file: !3, line: 625, type: !7)
!2447 = !DILocalVariable(name: "source_bytes", scope: !2435, file: !3, line: 626, type: !90)
!2448 = !DILocalVariable(name: "dest_bytes", scope: !2435, file: !3, line: 626, type: !90)
!2449 = !DILocalVariable(name: "i", scope: !2435, file: !3, line: 627, type: !6)
!2450 = !DILocalVariable(name: "s", scope: !2451, file: !3, line: 651, type: !6)
!2451 = distinct !DILexicalBlock(scope: !2452, file: !3, line: 650, column: 26)
!2452 = distinct !DILexicalBlock(scope: !2453, file: !3, line: 650, column: 3)
!2453 = distinct !DILexicalBlock(scope: !2435, file: !3, line: 650, column: 3)
!2454 = !DILocalVariable(name: "d", scope: !2451, file: !3, line: 652, type: !6)
!2455 = !DILocalVariable(name: "s", scope: !2456, file: !3, line: 679, type: !6)
!2456 = distinct !DILexicalBlock(scope: !2457, file: !3, line: 678, column: 26)
!2457 = distinct !DILexicalBlock(scope: !2458, file: !3, line: 678, column: 3)
!2458 = distinct !DILexicalBlock(scope: !2435, file: !3, line: 678, column: 3)
!2459 = !DILocalVariable(name: "d", scope: !2456, file: !3, line: 680, type: !6)
!2460 = !DILocalVariable(name: "s", scope: !2461, file: !3, line: 689, type: !6)
!2461 = distinct !DILexicalBlock(scope: !2462, file: !3, line: 688, column: 23)
!2462 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 688, column: 3)
!2463 = distinct !DILexicalBlock(scope: !2435, file: !3, line: 688, column: 3)
!2464 = !DILocalVariable(name: "d", scope: !2461, file: !3, line: 690, type: !6)
!2465 = !DILocation(line: 619, column: 19, scope: !2435)
!2466 = !DILocation(line: 619, column: 32, scope: !2435)
!2467 = !DILocation(line: 620, column: 3, scope: !2435)
!2468 = !DILocation(line: 620, column: 18, scope: !2435)
!2469 = !DILocation(line: 621, column: 3, scope: !2435)
!2470 = !DILocation(line: 621, column: 18, scope: !2435)
!2471 = !DILocation(line: 622, column: 3, scope: !2435)
!2472 = !DILocation(line: 622, column: 18, scope: !2435)
!2473 = !DILocation(line: 623, column: 3, scope: !2435)
!2474 = !DILocation(line: 623, column: 18, scope: !2435)
!2475 = !DILocation(line: 624, column: 3, scope: !2435)
!2476 = !DILocation(line: 624, column: 18, scope: !2435)
!2477 = !DILocation(line: 625, column: 3, scope: !2435)
!2478 = !DILocation(line: 625, column: 18, scope: !2435)
!2479 = !DILocation(line: 626, column: 3, scope: !2435)
!2480 = !DILocation(line: 626, column: 8, scope: !2435)
!2481 = !DILocation(line: 626, column: 21, scope: !2435)
!2482 = !DILocation(line: 627, column: 3, scope: !2435)
!2483 = !DILocation(line: 627, column: 7, scope: !2435)
!2484 = !DILocation(line: 629, column: 3, scope: !2435)
!2485 = !DILocation(line: 630, column: 3, scope: !2435)
!2486 = !DILocation(line: 632, column: 8, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2435, file: !3, line: 632, column: 3)
!2488 = !DILocation(line: 632, column: 7, scope: !2487)
!2489 = !DILocation(line: 632, column: 11, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2487, file: !3, line: 632, column: 3)
!2491 = !DILocation(line: 632, column: 14, scope: !2490)
!2492 = !DILocation(line: 632, column: 22, scope: !2490)
!2493 = !DILocation(line: 632, column: 21, scope: !2490)
!2494 = !DILocation(line: 632, column: 26, scope: !2490)
!2495 = !DILocation(line: 632, column: 29, scope: !2490)
!2496 = !DILocation(line: 632, column: 12, scope: !2490)
!2497 = !DILocation(line: 632, column: 3, scope: !2487)
!2498 = !DILocation(line: 633, column: 34, scope: !2490)
!2499 = !DILocation(line: 633, column: 35, scope: !2490)
!2500 = !DILocation(line: 633, column: 41, scope: !2490)
!2501 = !DILocation(line: 633, column: 33, scope: !2490)
!2502 = !DILocation(line: 633, column: 5, scope: !2490)
!2503 = !DILocation(line: 632, column: 33, scope: !2490)
!2504 = !DILocation(line: 632, column: 3, scope: !2490)
!2505 = distinct !{!2505, !2497, !2506, !963}
!2506 = !DILocation(line: 633, column: 48, scope: !2487)
!2507 = !DILocation(line: 634, column: 10, scope: !2435)
!2508 = !DILocation(line: 634, column: 9, scope: !2435)
!2509 = !DILocation(line: 635, column: 16, scope: !2435)
!2510 = !DILocation(line: 635, column: 15, scope: !2435)
!2511 = !DILocation(line: 638, column: 33, scope: !2435)
!2512 = !DILocation(line: 638, column: 40, scope: !2435)
!2513 = !DILocation(line: 638, column: 3, scope: !2435)
!2514 = !DILocation(line: 641, column: 8, scope: !2435)
!2515 = !DILocation(line: 641, column: 7, scope: !2435)
!2516 = !DILocation(line: 642, column: 14, scope: !2435)
!2517 = !DILocation(line: 642, column: 13, scope: !2435)
!2518 = !DILocation(line: 643, column: 6, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2435, file: !3, line: 643, column: 6)
!2520 = !DILocation(line: 643, column: 19, scope: !2519)
!2521 = !DILocation(line: 643, column: 26, scope: !2519)
!2522 = !DILocation(line: 643, column: 29, scope: !2519)
!2523 = !DILocation(line: 643, column: 18, scope: !2519)
!2524 = !DILocation(line: 643, column: 16, scope: !2519)
!2525 = !DILocation(line: 643, column: 6, scope: !2435)
!2526 = !DILocation(line: 644, column: 13, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 643, column: 32)
!2528 = !DILocation(line: 644, column: 69, scope: !2527)
!2529 = !DILocation(line: 644, column: 81, scope: !2527)
!2530 = !DILocation(line: 644, column: 88, scope: !2527)
!2531 = !DILocation(line: 644, column: 91, scope: !2527)
!2532 = !DILocation(line: 644, column: 5, scope: !2527)
!2533 = !DILocation(line: 645, column: 5, scope: !2527)
!2534 = !DILocation(line: 647, column: 33, scope: !2435)
!2535 = !DILocation(line: 647, column: 40, scope: !2435)
!2536 = !DILocation(line: 647, column: 3, scope: !2435)
!2537 = !DILocation(line: 648, column: 31, scope: !2435)
!2538 = !DILocation(line: 648, column: 36, scope: !2435)
!2539 = !DILocation(line: 648, column: 3, scope: !2435)
!2540 = !DILocation(line: 650, column: 8, scope: !2453)
!2541 = !DILocation(line: 650, column: 7, scope: !2453)
!2542 = !DILocation(line: 650, column: 11, scope: !2452)
!2543 = !DILocation(line: 650, column: 13, scope: !2452)
!2544 = !DILocation(line: 650, column: 12, scope: !2452)
!2545 = !DILocation(line: 650, column: 3, scope: !2453)
!2546 = !DILocation(line: 651, column: 5, scope: !2451)
!2547 = !DILocation(line: 651, column: 9, scope: !2451)
!2548 = !DILocation(line: 651, column: 37, scope: !2451)
!2549 = !DILocation(line: 651, column: 45, scope: !2451)
!2550 = !DILocation(line: 651, column: 44, scope: !2451)
!2551 = !DILocation(line: 651, column: 46, scope: !2451)
!2552 = !DILocation(line: 651, column: 49, scope: !2451)
!2553 = !DILocation(line: 651, column: 57, scope: !2451)
!2554 = !DILocation(line: 651, column: 56, scope: !2451)
!2555 = !DILocation(line: 651, column: 11, scope: !2451)
!2556 = !DILocation(line: 652, column: 5, scope: !2451)
!2557 = !DILocation(line: 652, column: 9, scope: !2451)
!2558 = !DILocation(line: 652, column: 35, scope: !2451)
!2559 = !DILocation(line: 652, column: 43, scope: !2451)
!2560 = !DILocation(line: 652, column: 42, scope: !2451)
!2561 = !DILocation(line: 652, column: 44, scope: !2451)
!2562 = !DILocation(line: 652, column: 47, scope: !2451)
!2563 = !DILocation(line: 652, column: 55, scope: !2451)
!2564 = !DILocation(line: 652, column: 54, scope: !2451)
!2565 = !DILocation(line: 652, column: 11, scope: !2451)
!2566 = !DILocation(line: 653, column: 8, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2451, file: !3, line: 653, column: 8)
!2568 = !DILocation(line: 653, column: 11, scope: !2567)
!2569 = !DILocation(line: 653, column: 9, scope: !2567)
!2570 = !DILocation(line: 653, column: 8, scope: !2451)
!2571 = !DILocation(line: 654, column: 15, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2567, file: !3, line: 653, column: 13)
!2573 = !DILocation(line: 654, column: 63, scope: !2572)
!2574 = !DILocation(line: 654, column: 71, scope: !2572)
!2575 = !DILocation(line: 654, column: 72, scope: !2572)
!2576 = !DILocation(line: 654, column: 75, scope: !2572)
!2577 = !DILocation(line: 654, column: 77, scope: !2572)
!2578 = !DILocation(line: 654, column: 7, scope: !2572)
!2579 = !DILocation(line: 655, column: 7, scope: !2572)
!2580 = !DILocation(line: 657, column: 3, scope: !2452)
!2581 = !DILocation(line: 657, column: 3, scope: !2451)
!2582 = !DILocation(line: 650, column: 22, scope: !2452)
!2583 = !DILocation(line: 650, column: 3, scope: !2452)
!2584 = distinct !{!2584, !2545, !2585, !963}
!2585 = !DILocation(line: 657, column: 3, scope: !2453)
!2586 = !DILocation(line: 658, column: 6, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2435, file: !3, line: 658, column: 6)
!2588 = !DILocation(line: 658, column: 14, scope: !2587)
!2589 = !DILocation(line: 658, column: 13, scope: !2587)
!2590 = !DILocation(line: 658, column: 6, scope: !2435)
!2591 = !DILocation(line: 659, column: 32, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2593, file: !3, line: 659, column: 8)
!2593 = distinct !DILexicalBlock(scope: !2587, file: !3, line: 658, column: 25)
!2594 = !DILocation(line: 659, column: 43, scope: !2592)
!2595 = !DILocation(line: 659, column: 42, scope: !2592)
!2596 = !DILocation(line: 659, column: 8, scope: !2592)
!2597 = !DILocation(line: 659, column: 51, scope: !2592)
!2598 = !DILocation(line: 659, column: 8, scope: !2593)
!2599 = !DILocation(line: 660, column: 15, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2592, file: !3, line: 659, column: 55)
!2601 = !DILocation(line: 660, column: 70, scope: !2600)
!2602 = !DILocation(line: 660, column: 7, scope: !2600)
!2603 = !DILocation(line: 661, column: 7, scope: !2600)
!2604 = !DILocation(line: 663, column: 3, scope: !2593)
!2605 = !DILocation(line: 666, column: 33, scope: !2435)
!2606 = !DILocation(line: 666, column: 40, scope: !2435)
!2607 = !DILocation(line: 666, column: 3, scope: !2435)
!2608 = !DILocation(line: 669, column: 8, scope: !2435)
!2609 = !DILocation(line: 669, column: 7, scope: !2435)
!2610 = !DILocation(line: 670, column: 14, scope: !2435)
!2611 = !DILocation(line: 670, column: 13, scope: !2435)
!2612 = !DILocation(line: 671, column: 6, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2435, file: !3, line: 671, column: 6)
!2614 = !DILocation(line: 671, column: 19, scope: !2613)
!2615 = !DILocation(line: 671, column: 24, scope: !2613)
!2616 = !DILocation(line: 671, column: 23, scope: !2613)
!2617 = !DILocation(line: 671, column: 31, scope: !2613)
!2618 = !DILocation(line: 671, column: 34, scope: !2613)
!2619 = !DILocation(line: 671, column: 18, scope: !2613)
!2620 = !DILocation(line: 671, column: 16, scope: !2613)
!2621 = !DILocation(line: 671, column: 6, scope: !2435)
!2622 = !DILocation(line: 672, column: 13, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2613, file: !3, line: 671, column: 37)
!2624 = !DILocation(line: 672, column: 74, scope: !2623)
!2625 = !DILocation(line: 672, column: 86, scope: !2623)
!2626 = !DILocation(line: 672, column: 91, scope: !2623)
!2627 = !DILocation(line: 672, column: 90, scope: !2623)
!2628 = !DILocation(line: 672, column: 98, scope: !2623)
!2629 = !DILocation(line: 672, column: 101, scope: !2623)
!2630 = !DILocation(line: 672, column: 5, scope: !2623)
!2631 = !DILocation(line: 673, column: 5, scope: !2623)
!2632 = !DILocation(line: 675, column: 33, scope: !2435)
!2633 = !DILocation(line: 675, column: 40, scope: !2435)
!2634 = !DILocation(line: 675, column: 3, scope: !2435)
!2635 = !DILocation(line: 676, column: 31, scope: !2435)
!2636 = !DILocation(line: 676, column: 36, scope: !2435)
!2637 = !DILocation(line: 676, column: 3, scope: !2435)
!2638 = !DILocation(line: 678, column: 8, scope: !2458)
!2639 = !DILocation(line: 678, column: 7, scope: !2458)
!2640 = !DILocation(line: 678, column: 11, scope: !2457)
!2641 = !DILocation(line: 678, column: 13, scope: !2457)
!2642 = !DILocation(line: 678, column: 12, scope: !2457)
!2643 = !DILocation(line: 678, column: 3, scope: !2458)
!2644 = !DILocation(line: 679, column: 5, scope: !2456)
!2645 = !DILocation(line: 679, column: 9, scope: !2456)
!2646 = !DILocation(line: 679, column: 37, scope: !2456)
!2647 = !DILocation(line: 679, column: 45, scope: !2456)
!2648 = !DILocation(line: 679, column: 44, scope: !2456)
!2649 = !DILocation(line: 679, column: 46, scope: !2456)
!2650 = !DILocation(line: 679, column: 49, scope: !2456)
!2651 = !DILocation(line: 679, column: 57, scope: !2456)
!2652 = !DILocation(line: 679, column: 56, scope: !2456)
!2653 = !DILocation(line: 679, column: 11, scope: !2456)
!2654 = !DILocation(line: 680, column: 5, scope: !2456)
!2655 = !DILocation(line: 680, column: 9, scope: !2456)
!2656 = !DILocation(line: 680, column: 35, scope: !2456)
!2657 = !DILocation(line: 680, column: 43, scope: !2456)
!2658 = !DILocation(line: 680, column: 42, scope: !2456)
!2659 = !DILocation(line: 680, column: 44, scope: !2456)
!2660 = !DILocation(line: 680, column: 47, scope: !2456)
!2661 = !DILocation(line: 680, column: 55, scope: !2456)
!2662 = !DILocation(line: 680, column: 54, scope: !2456)
!2663 = !DILocation(line: 680, column: 11, scope: !2456)
!2664 = !DILocation(line: 681, column: 8, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 681, column: 8)
!2666 = !DILocation(line: 681, column: 11, scope: !2665)
!2667 = !DILocation(line: 681, column: 9, scope: !2665)
!2668 = !DILocation(line: 681, column: 8, scope: !2456)
!2669 = !DILocation(line: 682, column: 15, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 681, column: 13)
!2671 = !DILocation(line: 682, column: 63, scope: !2670)
!2672 = !DILocation(line: 682, column: 71, scope: !2670)
!2673 = !DILocation(line: 682, column: 72, scope: !2670)
!2674 = !DILocation(line: 682, column: 75, scope: !2670)
!2675 = !DILocation(line: 682, column: 77, scope: !2670)
!2676 = !DILocation(line: 682, column: 7, scope: !2670)
!2677 = !DILocation(line: 683, column: 7, scope: !2670)
!2678 = !DILocation(line: 685, column: 3, scope: !2457)
!2679 = !DILocation(line: 685, column: 3, scope: !2456)
!2680 = !DILocation(line: 678, column: 22, scope: !2457)
!2681 = !DILocation(line: 678, column: 3, scope: !2457)
!2682 = distinct !{!2682, !2643, !2683, !963}
!2683 = !DILocation(line: 685, column: 3, scope: !2458)
!2684 = !DILocation(line: 687, column: 33, scope: !2435)
!2685 = !DILocation(line: 687, column: 40, scope: !2435)
!2686 = !DILocation(line: 687, column: 3, scope: !2435)
!2687 = !DILocation(line: 688, column: 8, scope: !2463)
!2688 = !DILocation(line: 688, column: 7, scope: !2463)
!2689 = !DILocation(line: 688, column: 11, scope: !2462)
!2690 = !DILocation(line: 688, column: 13, scope: !2462)
!2691 = !DILocation(line: 688, column: 12, scope: !2462)
!2692 = !DILocation(line: 688, column: 3, scope: !2463)
!2693 = !DILocation(line: 689, column: 5, scope: !2461)
!2694 = !DILocation(line: 689, column: 9, scope: !2461)
!2695 = !DILocation(line: 689, column: 37, scope: !2461)
!2696 = !DILocation(line: 689, column: 42, scope: !2461)
!2697 = !DILocation(line: 689, column: 41, scope: !2461)
!2698 = !DILocation(line: 689, column: 43, scope: !2461)
!2699 = !DILocation(line: 689, column: 46, scope: !2461)
!2700 = !DILocation(line: 689, column: 51, scope: !2461)
!2701 = !DILocation(line: 689, column: 50, scope: !2461)
!2702 = !DILocation(line: 689, column: 11, scope: !2461)
!2703 = !DILocation(line: 690, column: 5, scope: !2461)
!2704 = !DILocation(line: 690, column: 9, scope: !2461)
!2705 = !DILocation(line: 690, column: 35, scope: !2461)
!2706 = !DILocation(line: 690, column: 40, scope: !2461)
!2707 = !DILocation(line: 690, column: 39, scope: !2461)
!2708 = !DILocation(line: 690, column: 41, scope: !2461)
!2709 = !DILocation(line: 690, column: 44, scope: !2461)
!2710 = !DILocation(line: 690, column: 49, scope: !2461)
!2711 = !DILocation(line: 690, column: 48, scope: !2461)
!2712 = !DILocation(line: 690, column: 11, scope: !2461)
!2713 = !DILocation(line: 691, column: 8, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2461, file: !3, line: 691, column: 8)
!2715 = !DILocation(line: 691, column: 11, scope: !2714)
!2716 = !DILocation(line: 691, column: 9, scope: !2714)
!2717 = !DILocation(line: 691, column: 8, scope: !2461)
!2718 = !DILocation(line: 692, column: 15, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2714, file: !3, line: 691, column: 13)
!2720 = !DILocation(line: 692, column: 71, scope: !2719)
!2721 = !DILocation(line: 692, column: 79, scope: !2719)
!2722 = !DILocation(line: 692, column: 84, scope: !2719)
!2723 = !DILocation(line: 692, column: 85, scope: !2719)
!2724 = !DILocation(line: 692, column: 88, scope: !2719)
!2725 = !DILocation(line: 692, column: 90, scope: !2719)
!2726 = !DILocation(line: 692, column: 7, scope: !2719)
!2727 = !DILocation(line: 693, column: 7, scope: !2719)
!2728 = !DILocation(line: 695, column: 3, scope: !2462)
!2729 = !DILocation(line: 695, column: 3, scope: !2461)
!2730 = !DILocation(line: 688, column: 19, scope: !2462)
!2731 = !DILocation(line: 688, column: 3, scope: !2462)
!2732 = distinct !{!2732, !2692, !2733, !963}
!2733 = !DILocation(line: 695, column: 3, scope: !2463)
!2734 = !DILocation(line: 697, column: 6, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2435, file: !3, line: 697, column: 6)
!2736 = !DILocation(line: 697, column: 11, scope: !2735)
!2737 = !DILocation(line: 697, column: 10, scope: !2735)
!2738 = !DILocation(line: 697, column: 19, scope: !2735)
!2739 = !DILocation(line: 697, column: 18, scope: !2735)
!2740 = !DILocation(line: 697, column: 6, scope: !2435)
!2741 = !DILocation(line: 698, column: 32, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2743, file: !3, line: 698, column: 8)
!2743 = distinct !DILexicalBlock(scope: !2735, file: !3, line: 697, column: 30)
!2744 = !DILocation(line: 698, column: 43, scope: !2742)
!2745 = !DILocation(line: 698, column: 42, scope: !2742)
!2746 = !DILocation(line: 698, column: 48, scope: !2742)
!2747 = !DILocation(line: 698, column: 47, scope: !2742)
!2748 = !DILocation(line: 698, column: 8, scope: !2742)
!2749 = !DILocation(line: 698, column: 56, scope: !2742)
!2750 = !DILocation(line: 698, column: 8, scope: !2743)
!2751 = !DILocation(line: 699, column: 15, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2742, file: !3, line: 698, column: 60)
!2753 = !DILocation(line: 699, column: 78, scope: !2752)
!2754 = !DILocation(line: 699, column: 86, scope: !2752)
!2755 = !DILocation(line: 699, column: 7, scope: !2752)
!2756 = !DILocation(line: 700, column: 7, scope: !2752)
!2757 = !DILocation(line: 702, column: 3, scope: !2743)
!2758 = !DILocation(line: 704, column: 3, scope: !2435)
!2759 = !DILocation(line: 705, column: 3, scope: !2435)
!2760 = !DILocation(line: 708, column: 1, scope: !2435)
!2761 = distinct !DISubprogram(name: "copytestB", scope: !3, file: !3, line: 710, type: !2436, scopeLine: 710, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2762)
!2762 = !{!2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2778, !2779, !2783, !2784, !2788}
!2763 = !DILocalVariable(name: "prefill", arg: 1, scope: !2761, file: !3, line: 710, type: !6)
!2764 = !DILocalVariable(name: "copy", arg: 2, scope: !2761, file: !3, line: 710, type: !6)
!2765 = !DILocalVariable(name: "source_write", scope: !2761, file: !3, line: 711, type: !246)
!2766 = !DILocalVariable(name: "dest_write", scope: !2761, file: !3, line: 712, type: !246)
!2767 = !DILocalVariable(name: "source_read", scope: !2761, file: !3, line: 713, type: !246)
!2768 = !DILocalVariable(name: "dest_read", scope: !2761, file: !3, line: 714, type: !246)
!2769 = !DILocalVariable(name: "source", scope: !2761, file: !3, line: 715, type: !7)
!2770 = !DILocalVariable(name: "dest", scope: !2761, file: !3, line: 716, type: !7)
!2771 = !DILocalVariable(name: "source_bytes", scope: !2761, file: !3, line: 717, type: !90)
!2772 = !DILocalVariable(name: "dest_bytes", scope: !2761, file: !3, line: 717, type: !90)
!2773 = !DILocalVariable(name: "i", scope: !2761, file: !3, line: 718, type: !6)
!2774 = !DILocalVariable(name: "s", scope: !2775, file: !3, line: 742, type: !6)
!2775 = distinct !DILexicalBlock(scope: !2776, file: !3, line: 741, column: 26)
!2776 = distinct !DILexicalBlock(scope: !2777, file: !3, line: 741, column: 3)
!2777 = distinct !DILexicalBlock(scope: !2761, file: !3, line: 741, column: 3)
!2778 = !DILocalVariable(name: "d", scope: !2775, file: !3, line: 743, type: !6)
!2779 = !DILocalVariable(name: "s", scope: !2780, file: !3, line: 770, type: !6)
!2780 = distinct !DILexicalBlock(scope: !2781, file: !3, line: 769, column: 26)
!2781 = distinct !DILexicalBlock(scope: !2782, file: !3, line: 769, column: 3)
!2782 = distinct !DILexicalBlock(scope: !2761, file: !3, line: 769, column: 3)
!2783 = !DILocalVariable(name: "d", scope: !2780, file: !3, line: 771, type: !6)
!2784 = !DILocalVariable(name: "s", scope: !2785, file: !3, line: 780, type: !6)
!2785 = distinct !DILexicalBlock(scope: !2786, file: !3, line: 779, column: 23)
!2786 = distinct !DILexicalBlock(scope: !2787, file: !3, line: 779, column: 3)
!2787 = distinct !DILexicalBlock(scope: !2761, file: !3, line: 779, column: 3)
!2788 = !DILocalVariable(name: "d", scope: !2785, file: !3, line: 781, type: !6)
!2789 = !DILocation(line: 710, column: 20, scope: !2761)
!2790 = !DILocation(line: 710, column: 33, scope: !2761)
!2791 = !DILocation(line: 711, column: 3, scope: !2761)
!2792 = !DILocation(line: 711, column: 18, scope: !2761)
!2793 = !DILocation(line: 712, column: 3, scope: !2761)
!2794 = !DILocation(line: 712, column: 18, scope: !2761)
!2795 = !DILocation(line: 713, column: 3, scope: !2761)
!2796 = !DILocation(line: 713, column: 18, scope: !2761)
!2797 = !DILocation(line: 714, column: 3, scope: !2761)
!2798 = !DILocation(line: 714, column: 18, scope: !2761)
!2799 = !DILocation(line: 715, column: 3, scope: !2761)
!2800 = !DILocation(line: 715, column: 18, scope: !2761)
!2801 = !DILocation(line: 716, column: 3, scope: !2761)
!2802 = !DILocation(line: 716, column: 18, scope: !2761)
!2803 = !DILocation(line: 717, column: 3, scope: !2761)
!2804 = !DILocation(line: 717, column: 8, scope: !2761)
!2805 = !DILocation(line: 717, column: 21, scope: !2761)
!2806 = !DILocation(line: 718, column: 3, scope: !2761)
!2807 = !DILocation(line: 718, column: 7, scope: !2761)
!2808 = !DILocation(line: 720, column: 3, scope: !2761)
!2809 = !DILocation(line: 721, column: 3, scope: !2761)
!2810 = !DILocation(line: 723, column: 8, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2761, file: !3, line: 723, column: 3)
!2812 = !DILocation(line: 723, column: 7, scope: !2811)
!2813 = !DILocation(line: 723, column: 11, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2811, file: !3, line: 723, column: 3)
!2815 = !DILocation(line: 723, column: 14, scope: !2814)
!2816 = !DILocation(line: 723, column: 22, scope: !2814)
!2817 = !DILocation(line: 723, column: 21, scope: !2814)
!2818 = !DILocation(line: 723, column: 26, scope: !2814)
!2819 = !DILocation(line: 723, column: 29, scope: !2814)
!2820 = !DILocation(line: 723, column: 12, scope: !2814)
!2821 = !DILocation(line: 723, column: 3, scope: !2811)
!2822 = !DILocation(line: 724, column: 35, scope: !2814)
!2823 = !DILocation(line: 724, column: 36, scope: !2814)
!2824 = !DILocation(line: 724, column: 42, scope: !2814)
!2825 = !DILocation(line: 724, column: 34, scope: !2814)
!2826 = !DILocation(line: 724, column: 5, scope: !2814)
!2827 = !DILocation(line: 723, column: 33, scope: !2814)
!2828 = !DILocation(line: 723, column: 3, scope: !2814)
!2829 = distinct !{!2829, !2821, !2830, !963}
!2830 = !DILocation(line: 724, column: 49, scope: !2811)
!2831 = !DILocation(line: 725, column: 10, scope: !2761)
!2832 = !DILocation(line: 725, column: 9, scope: !2761)
!2833 = !DILocation(line: 726, column: 16, scope: !2761)
!2834 = !DILocation(line: 726, column: 15, scope: !2761)
!2835 = !DILocation(line: 729, column: 34, scope: !2761)
!2836 = !DILocation(line: 729, column: 41, scope: !2761)
!2837 = !DILocation(line: 729, column: 3, scope: !2761)
!2838 = !DILocation(line: 732, column: 8, scope: !2761)
!2839 = !DILocation(line: 732, column: 7, scope: !2761)
!2840 = !DILocation(line: 733, column: 14, scope: !2761)
!2841 = !DILocation(line: 733, column: 13, scope: !2761)
!2842 = !DILocation(line: 734, column: 6, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2761, file: !3, line: 734, column: 6)
!2844 = !DILocation(line: 734, column: 19, scope: !2843)
!2845 = !DILocation(line: 734, column: 26, scope: !2843)
!2846 = !DILocation(line: 734, column: 29, scope: !2843)
!2847 = !DILocation(line: 734, column: 18, scope: !2843)
!2848 = !DILocation(line: 734, column: 16, scope: !2843)
!2849 = !DILocation(line: 734, column: 6, scope: !2761)
!2850 = !DILocation(line: 735, column: 13, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2843, file: !3, line: 734, column: 32)
!2852 = !DILocation(line: 735, column: 69, scope: !2851)
!2853 = !DILocation(line: 735, column: 81, scope: !2851)
!2854 = !DILocation(line: 735, column: 88, scope: !2851)
!2855 = !DILocation(line: 735, column: 91, scope: !2851)
!2856 = !DILocation(line: 735, column: 5, scope: !2851)
!2857 = !DILocation(line: 736, column: 5, scope: !2851)
!2858 = !DILocation(line: 738, column: 34, scope: !2761)
!2859 = !DILocation(line: 738, column: 41, scope: !2761)
!2860 = !DILocation(line: 738, column: 3, scope: !2761)
!2861 = !DILocation(line: 739, column: 32, scope: !2761)
!2862 = !DILocation(line: 739, column: 37, scope: !2761)
!2863 = !DILocation(line: 739, column: 3, scope: !2761)
!2864 = !DILocation(line: 741, column: 8, scope: !2777)
!2865 = !DILocation(line: 741, column: 7, scope: !2777)
!2866 = !DILocation(line: 741, column: 11, scope: !2776)
!2867 = !DILocation(line: 741, column: 13, scope: !2776)
!2868 = !DILocation(line: 741, column: 12, scope: !2776)
!2869 = !DILocation(line: 741, column: 3, scope: !2777)
!2870 = !DILocation(line: 742, column: 5, scope: !2775)
!2871 = !DILocation(line: 742, column: 9, scope: !2775)
!2872 = !DILocation(line: 742, column: 38, scope: !2775)
!2873 = !DILocation(line: 742, column: 46, scope: !2775)
!2874 = !DILocation(line: 742, column: 45, scope: !2775)
!2875 = !DILocation(line: 742, column: 47, scope: !2775)
!2876 = !DILocation(line: 742, column: 50, scope: !2775)
!2877 = !DILocation(line: 742, column: 58, scope: !2775)
!2878 = !DILocation(line: 742, column: 57, scope: !2775)
!2879 = !DILocation(line: 742, column: 11, scope: !2775)
!2880 = !DILocation(line: 743, column: 5, scope: !2775)
!2881 = !DILocation(line: 743, column: 9, scope: !2775)
!2882 = !DILocation(line: 743, column: 36, scope: !2775)
!2883 = !DILocation(line: 743, column: 44, scope: !2775)
!2884 = !DILocation(line: 743, column: 43, scope: !2775)
!2885 = !DILocation(line: 743, column: 45, scope: !2775)
!2886 = !DILocation(line: 743, column: 48, scope: !2775)
!2887 = !DILocation(line: 743, column: 56, scope: !2775)
!2888 = !DILocation(line: 743, column: 55, scope: !2775)
!2889 = !DILocation(line: 743, column: 11, scope: !2775)
!2890 = !DILocation(line: 744, column: 8, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2775, file: !3, line: 744, column: 8)
!2892 = !DILocation(line: 744, column: 11, scope: !2891)
!2893 = !DILocation(line: 744, column: 9, scope: !2891)
!2894 = !DILocation(line: 744, column: 8, scope: !2775)
!2895 = !DILocation(line: 745, column: 15, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2891, file: !3, line: 744, column: 13)
!2897 = !DILocation(line: 745, column: 63, scope: !2896)
!2898 = !DILocation(line: 745, column: 71, scope: !2896)
!2899 = !DILocation(line: 745, column: 72, scope: !2896)
!2900 = !DILocation(line: 745, column: 75, scope: !2896)
!2901 = !DILocation(line: 745, column: 77, scope: !2896)
!2902 = !DILocation(line: 745, column: 7, scope: !2896)
!2903 = !DILocation(line: 746, column: 7, scope: !2896)
!2904 = !DILocation(line: 748, column: 3, scope: !2776)
!2905 = !DILocation(line: 748, column: 3, scope: !2775)
!2906 = !DILocation(line: 741, column: 22, scope: !2776)
!2907 = !DILocation(line: 741, column: 3, scope: !2776)
!2908 = distinct !{!2908, !2869, !2909, !963}
!2909 = !DILocation(line: 748, column: 3, scope: !2777)
!2910 = !DILocation(line: 749, column: 6, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2761, file: !3, line: 749, column: 6)
!2912 = !DILocation(line: 749, column: 14, scope: !2911)
!2913 = !DILocation(line: 749, column: 13, scope: !2911)
!2914 = !DILocation(line: 749, column: 6, scope: !2761)
!2915 = !DILocation(line: 750, column: 33, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2917, file: !3, line: 750, column: 8)
!2917 = distinct !DILexicalBlock(scope: !2911, file: !3, line: 749, column: 25)
!2918 = !DILocation(line: 750, column: 44, scope: !2916)
!2919 = !DILocation(line: 750, column: 43, scope: !2916)
!2920 = !DILocation(line: 750, column: 8, scope: !2916)
!2921 = !DILocation(line: 750, column: 52, scope: !2916)
!2922 = !DILocation(line: 750, column: 8, scope: !2917)
!2923 = !DILocation(line: 751, column: 15, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2916, file: !3, line: 750, column: 56)
!2925 = !DILocation(line: 751, column: 70, scope: !2924)
!2926 = !DILocation(line: 751, column: 7, scope: !2924)
!2927 = !DILocation(line: 752, column: 7, scope: !2924)
!2928 = !DILocation(line: 754, column: 3, scope: !2917)
!2929 = !DILocation(line: 757, column: 34, scope: !2761)
!2930 = !DILocation(line: 757, column: 41, scope: !2761)
!2931 = !DILocation(line: 757, column: 3, scope: !2761)
!2932 = !DILocation(line: 760, column: 8, scope: !2761)
!2933 = !DILocation(line: 760, column: 7, scope: !2761)
!2934 = !DILocation(line: 761, column: 14, scope: !2761)
!2935 = !DILocation(line: 761, column: 13, scope: !2761)
!2936 = !DILocation(line: 762, column: 6, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2761, file: !3, line: 762, column: 6)
!2938 = !DILocation(line: 762, column: 19, scope: !2937)
!2939 = !DILocation(line: 762, column: 24, scope: !2937)
!2940 = !DILocation(line: 762, column: 23, scope: !2937)
!2941 = !DILocation(line: 762, column: 31, scope: !2937)
!2942 = !DILocation(line: 762, column: 34, scope: !2937)
!2943 = !DILocation(line: 762, column: 18, scope: !2937)
!2944 = !DILocation(line: 762, column: 16, scope: !2937)
!2945 = !DILocation(line: 762, column: 6, scope: !2761)
!2946 = !DILocation(line: 763, column: 13, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2937, file: !3, line: 762, column: 37)
!2948 = !DILocation(line: 763, column: 74, scope: !2947)
!2949 = !DILocation(line: 763, column: 86, scope: !2947)
!2950 = !DILocation(line: 763, column: 91, scope: !2947)
!2951 = !DILocation(line: 763, column: 90, scope: !2947)
!2952 = !DILocation(line: 763, column: 98, scope: !2947)
!2953 = !DILocation(line: 763, column: 101, scope: !2947)
!2954 = !DILocation(line: 763, column: 5, scope: !2947)
!2955 = !DILocation(line: 764, column: 5, scope: !2947)
!2956 = !DILocation(line: 766, column: 34, scope: !2761)
!2957 = !DILocation(line: 766, column: 41, scope: !2761)
!2958 = !DILocation(line: 766, column: 3, scope: !2761)
!2959 = !DILocation(line: 767, column: 32, scope: !2761)
!2960 = !DILocation(line: 767, column: 37, scope: !2761)
!2961 = !DILocation(line: 767, column: 3, scope: !2761)
!2962 = !DILocation(line: 769, column: 8, scope: !2782)
!2963 = !DILocation(line: 769, column: 7, scope: !2782)
!2964 = !DILocation(line: 769, column: 11, scope: !2781)
!2965 = !DILocation(line: 769, column: 13, scope: !2781)
!2966 = !DILocation(line: 769, column: 12, scope: !2781)
!2967 = !DILocation(line: 769, column: 3, scope: !2782)
!2968 = !DILocation(line: 770, column: 5, scope: !2780)
!2969 = !DILocation(line: 770, column: 9, scope: !2780)
!2970 = !DILocation(line: 770, column: 38, scope: !2780)
!2971 = !DILocation(line: 770, column: 46, scope: !2780)
!2972 = !DILocation(line: 770, column: 45, scope: !2780)
!2973 = !DILocation(line: 770, column: 47, scope: !2780)
!2974 = !DILocation(line: 770, column: 50, scope: !2780)
!2975 = !DILocation(line: 770, column: 58, scope: !2780)
!2976 = !DILocation(line: 770, column: 57, scope: !2780)
!2977 = !DILocation(line: 770, column: 11, scope: !2780)
!2978 = !DILocation(line: 771, column: 5, scope: !2780)
!2979 = !DILocation(line: 771, column: 9, scope: !2780)
!2980 = !DILocation(line: 771, column: 36, scope: !2780)
!2981 = !DILocation(line: 771, column: 44, scope: !2780)
!2982 = !DILocation(line: 771, column: 43, scope: !2780)
!2983 = !DILocation(line: 771, column: 45, scope: !2780)
!2984 = !DILocation(line: 771, column: 48, scope: !2780)
!2985 = !DILocation(line: 771, column: 56, scope: !2780)
!2986 = !DILocation(line: 771, column: 55, scope: !2780)
!2987 = !DILocation(line: 771, column: 11, scope: !2780)
!2988 = !DILocation(line: 772, column: 8, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2780, file: !3, line: 772, column: 8)
!2990 = !DILocation(line: 772, column: 11, scope: !2989)
!2991 = !DILocation(line: 772, column: 9, scope: !2989)
!2992 = !DILocation(line: 772, column: 8, scope: !2780)
!2993 = !DILocation(line: 773, column: 15, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2989, file: !3, line: 772, column: 13)
!2995 = !DILocation(line: 773, column: 63, scope: !2994)
!2996 = !DILocation(line: 773, column: 71, scope: !2994)
!2997 = !DILocation(line: 773, column: 72, scope: !2994)
!2998 = !DILocation(line: 773, column: 75, scope: !2994)
!2999 = !DILocation(line: 773, column: 77, scope: !2994)
!3000 = !DILocation(line: 773, column: 7, scope: !2994)
!3001 = !DILocation(line: 774, column: 7, scope: !2994)
!3002 = !DILocation(line: 776, column: 3, scope: !2781)
!3003 = !DILocation(line: 776, column: 3, scope: !2780)
!3004 = !DILocation(line: 769, column: 22, scope: !2781)
!3005 = !DILocation(line: 769, column: 3, scope: !2781)
!3006 = distinct !{!3006, !2967, !3007, !963}
!3007 = !DILocation(line: 776, column: 3, scope: !2782)
!3008 = !DILocation(line: 778, column: 34, scope: !2761)
!3009 = !DILocation(line: 778, column: 41, scope: !2761)
!3010 = !DILocation(line: 778, column: 3, scope: !2761)
!3011 = !DILocation(line: 779, column: 8, scope: !2787)
!3012 = !DILocation(line: 779, column: 7, scope: !2787)
!3013 = !DILocation(line: 779, column: 11, scope: !2786)
!3014 = !DILocation(line: 779, column: 13, scope: !2786)
!3015 = !DILocation(line: 779, column: 12, scope: !2786)
!3016 = !DILocation(line: 779, column: 3, scope: !2787)
!3017 = !DILocation(line: 780, column: 5, scope: !2785)
!3018 = !DILocation(line: 780, column: 9, scope: !2785)
!3019 = !DILocation(line: 780, column: 38, scope: !2785)
!3020 = !DILocation(line: 780, column: 43, scope: !2785)
!3021 = !DILocation(line: 780, column: 42, scope: !2785)
!3022 = !DILocation(line: 780, column: 44, scope: !2785)
!3023 = !DILocation(line: 780, column: 47, scope: !2785)
!3024 = !DILocation(line: 780, column: 52, scope: !2785)
!3025 = !DILocation(line: 780, column: 51, scope: !2785)
!3026 = !DILocation(line: 780, column: 11, scope: !2785)
!3027 = !DILocation(line: 781, column: 5, scope: !2785)
!3028 = !DILocation(line: 781, column: 9, scope: !2785)
!3029 = !DILocation(line: 781, column: 36, scope: !2785)
!3030 = !DILocation(line: 781, column: 41, scope: !2785)
!3031 = !DILocation(line: 781, column: 40, scope: !2785)
!3032 = !DILocation(line: 781, column: 42, scope: !2785)
!3033 = !DILocation(line: 781, column: 45, scope: !2785)
!3034 = !DILocation(line: 781, column: 50, scope: !2785)
!3035 = !DILocation(line: 781, column: 49, scope: !2785)
!3036 = !DILocation(line: 781, column: 11, scope: !2785)
!3037 = !DILocation(line: 782, column: 8, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !2785, file: !3, line: 782, column: 8)
!3039 = !DILocation(line: 782, column: 11, scope: !3038)
!3040 = !DILocation(line: 782, column: 9, scope: !3038)
!3041 = !DILocation(line: 782, column: 8, scope: !2785)
!3042 = !DILocation(line: 783, column: 15, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !3038, file: !3, line: 782, column: 13)
!3044 = !DILocation(line: 783, column: 71, scope: !3043)
!3045 = !DILocation(line: 783, column: 79, scope: !3043)
!3046 = !DILocation(line: 783, column: 84, scope: !3043)
!3047 = !DILocation(line: 783, column: 85, scope: !3043)
!3048 = !DILocation(line: 783, column: 88, scope: !3043)
!3049 = !DILocation(line: 783, column: 90, scope: !3043)
!3050 = !DILocation(line: 783, column: 7, scope: !3043)
!3051 = !DILocation(line: 784, column: 7, scope: !3043)
!3052 = !DILocation(line: 786, column: 3, scope: !2786)
!3053 = !DILocation(line: 786, column: 3, scope: !2785)
!3054 = !DILocation(line: 779, column: 19, scope: !2786)
!3055 = !DILocation(line: 779, column: 3, scope: !2786)
!3056 = distinct !{!3056, !3016, !3057, !963}
!3057 = !DILocation(line: 786, column: 3, scope: !2787)
!3058 = !DILocation(line: 788, column: 6, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !2761, file: !3, line: 788, column: 6)
!3060 = !DILocation(line: 788, column: 11, scope: !3059)
!3061 = !DILocation(line: 788, column: 10, scope: !3059)
!3062 = !DILocation(line: 788, column: 19, scope: !3059)
!3063 = !DILocation(line: 788, column: 18, scope: !3059)
!3064 = !DILocation(line: 788, column: 6, scope: !2761)
!3065 = !DILocation(line: 789, column: 33, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3067, file: !3, line: 789, column: 8)
!3067 = distinct !DILexicalBlock(scope: !3059, file: !3, line: 788, column: 30)
!3068 = !DILocation(line: 789, column: 44, scope: !3066)
!3069 = !DILocation(line: 789, column: 43, scope: !3066)
!3070 = !DILocation(line: 789, column: 49, scope: !3066)
!3071 = !DILocation(line: 789, column: 48, scope: !3066)
!3072 = !DILocation(line: 789, column: 8, scope: !3066)
!3073 = !DILocation(line: 789, column: 57, scope: !3066)
!3074 = !DILocation(line: 789, column: 8, scope: !3067)
!3075 = !DILocation(line: 790, column: 15, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3066, file: !3, line: 789, column: 61)
!3077 = !DILocation(line: 790, column: 78, scope: !3076)
!3078 = !DILocation(line: 790, column: 86, scope: !3076)
!3079 = !DILocation(line: 790, column: 7, scope: !3076)
!3080 = !DILocation(line: 791, column: 7, scope: !3076)
!3081 = !DILocation(line: 793, column: 3, scope: !3067)
!3082 = !DILocation(line: 795, column: 3, scope: !2761)
!3083 = !DILocation(line: 796, column: 3, scope: !2761)
!3084 = !DILocation(line: 798, column: 1, scope: !2761)
!3085 = !DILocation(line: 801, column: 3, scope: !84)
!3086 = !DILocation(line: 801, column: 18, scope: !84)
!3087 = !DILocation(line: 802, column: 3, scope: !84)
!3088 = !DILocation(line: 802, column: 8, scope: !84)
!3089 = !DILocation(line: 802, column: 14, scope: !84)
!3090 = !DILocation(line: 802, column: 16, scope: !84)
!3091 = !DILocation(line: 806, column: 3, scope: !84)
!3092 = !DILocation(line: 806, column: 7, scope: !84)
!3093 = !DILocation(line: 812, column: 3, scope: !84)
!3094 = !DILocation(line: 812, column: 7, scope: !84)
!3095 = !DILocation(line: 817, column: 3, scope: !84)
!3096 = !DILocation(line: 817, column: 7, scope: !84)
!3097 = !DILocation(line: 824, column: 3, scope: !84)
!3098 = !DILocation(line: 824, column: 7, scope: !84)
!3099 = !DILocation(line: 832, column: 3, scope: !84)
!3100 = !DILocation(line: 832, column: 7, scope: !84)
!3101 = !DILocation(line: 836, column: 3, scope: !84)
!3102 = !DILocation(line: 836, column: 7, scope: !84)
!3103 = !DILocation(line: 846, column: 3, scope: !84)
!3104 = !DILocation(line: 846, column: 7, scope: !84)
!3105 = !DILocation(line: 854, column: 3, scope: !84)
!3106 = !DILocation(line: 854, column: 7, scope: !84)
!3107 = !DILocation(line: 862, column: 3, scope: !84)
!3108 = !DILocation(line: 862, column: 7, scope: !84)
!3109 = !DILocation(line: 868, column: 3, scope: !84)
!3110 = !DILocation(line: 870, column: 11, scope: !84)
!3111 = !DILocation(line: 870, column: 3, scope: !84)
!3112 = !DILocation(line: 871, column: 24, scope: !84)
!3113 = !DILocation(line: 871, column: 40, scope: !84)
!3114 = !DILocation(line: 871, column: 3, scope: !84)
!3115 = !DILocation(line: 872, column: 11, scope: !84)
!3116 = !DILocation(line: 872, column: 3, scope: !84)
!3117 = !DILocation(line: 874, column: 11, scope: !84)
!3118 = !DILocation(line: 874, column: 3, scope: !84)
!3119 = !DILocation(line: 875, column: 24, scope: !84)
!3120 = !DILocation(line: 875, column: 40, scope: !84)
!3121 = !DILocation(line: 875, column: 3, scope: !84)
!3122 = !DILocation(line: 876, column: 11, scope: !84)
!3123 = !DILocation(line: 876, column: 3, scope: !84)
!3124 = !DILocation(line: 878, column: 11, scope: !84)
!3125 = !DILocation(line: 878, column: 3, scope: !84)
!3126 = !DILocation(line: 879, column: 24, scope: !84)
!3127 = !DILocation(line: 879, column: 42, scope: !84)
!3128 = !DILocation(line: 879, column: 3, scope: !84)
!3129 = !DILocation(line: 880, column: 11, scope: !84)
!3130 = !DILocation(line: 880, column: 3, scope: !84)
!3131 = !DILocation(line: 882, column: 11, scope: !84)
!3132 = !DILocation(line: 882, column: 3, scope: !84)
!3133 = !DILocation(line: 883, column: 3, scope: !84)
!3134 = !DILocation(line: 884, column: 8, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !84, file: !3, line: 884, column: 3)
!3136 = !DILocation(line: 884, column: 7, scope: !3135)
!3137 = !DILocation(line: 884, column: 11, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3135, file: !3, line: 884, column: 3)
!3139 = !DILocation(line: 884, column: 13, scope: !3138)
!3140 = !DILocation(line: 884, column: 12, scope: !3138)
!3141 = !DILocation(line: 884, column: 3, scope: !3135)
!3142 = !DILocation(line: 885, column: 28, scope: !3138)
!3143 = !DILocation(line: 885, column: 22, scope: !3138)
!3144 = !DILocation(line: 885, column: 5, scope: !3138)
!3145 = !DILocation(line: 884, column: 24, scope: !3138)
!3146 = !DILocation(line: 884, column: 3, scope: !3138)
!3147 = distinct !{!3147, !3141, !3148, !963}
!3148 = !DILocation(line: 885, column: 33, scope: !3135)
!3149 = !DILocation(line: 886, column: 10, scope: !84)
!3150 = !DILocation(line: 886, column: 9, scope: !84)
!3151 = !DILocation(line: 887, column: 9, scope: !84)
!3152 = !DILocation(line: 887, column: 8, scope: !84)
!3153 = !DILocation(line: 888, column: 23, scope: !84)
!3154 = !DILocation(line: 888, column: 30, scope: !84)
!3155 = !DILocation(line: 888, column: 3, scope: !84)
!3156 = !DILocation(line: 889, column: 8, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !84, file: !3, line: 889, column: 3)
!3158 = !DILocation(line: 889, column: 7, scope: !3157)
!3159 = !DILocation(line: 889, column: 11, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3157, file: !3, line: 889, column: 3)
!3161 = !DILocation(line: 889, column: 13, scope: !3160)
!3162 = !DILocation(line: 889, column: 12, scope: !3160)
!3163 = !DILocation(line: 889, column: 3, scope: !3157)
!3164 = !DILocation(line: 890, column: 8, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3166, file: !3, line: 890, column: 8)
!3166 = distinct !DILexicalBlock(scope: !3160, file: !3, line: 889, column: 27)
!3167 = !DILocation(line: 890, column: 27, scope: !3165)
!3168 = !DILocation(line: 890, column: 8, scope: !3166)
!3169 = !DILocation(line: 890, column: 32, scope: !3165)
!3170 = !DILocation(line: 891, column: 8, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3166, file: !3, line: 891, column: 8)
!3172 = !DILocation(line: 891, column: 35, scope: !3171)
!3173 = !DILocation(line: 891, column: 29, scope: !3171)
!3174 = !DILocation(line: 891, column: 27, scope: !3171)
!3175 = !DILocation(line: 891, column: 8, scope: !3166)
!3176 = !DILocation(line: 892, column: 15, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3171, file: !3, line: 891, column: 38)
!3178 = !DILocation(line: 892, column: 47, scope: !3177)
!3179 = !DILocation(line: 892, column: 73, scope: !3177)
!3180 = !DILocation(line: 892, column: 67, scope: !3177)
!3181 = !DILocation(line: 893, column: 15, scope: !3177)
!3182 = !DILocation(line: 893, column: 41, scope: !3177)
!3183 = !DILocation(line: 893, column: 35, scope: !3177)
!3184 = !DILocation(line: 892, column: 7, scope: !3177)
!3185 = !DILocation(line: 894, column: 7, scope: !3177)
!3186 = !DILocation(line: 895, column: 5, scope: !3177)
!3187 = !DILocation(line: 896, column: 5, scope: !3166)
!3188 = !DILocation(line: 897, column: 3, scope: !3166)
!3189 = !DILocation(line: 889, column: 24, scope: !3160)
!3190 = !DILocation(line: 889, column: 3, scope: !3160)
!3191 = distinct !{!3191, !3163, !3192, !963}
!3192 = !DILocation(line: 897, column: 3, scope: !3157)
!3193 = !DILocation(line: 898, column: 6, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !84, file: !3, line: 898, column: 6)
!3195 = !DILocation(line: 898, column: 25, scope: !3194)
!3196 = !DILocation(line: 898, column: 23, scope: !3194)
!3197 = !DILocation(line: 898, column: 6, scope: !84)
!3198 = !DILocation(line: 898, column: 31, scope: !3194)
!3199 = !DILocation(line: 899, column: 11, scope: !84)
!3200 = !DILocation(line: 899, column: 3, scope: !84)
!3201 = !DILocation(line: 901, column: 11, scope: !84)
!3202 = !DILocation(line: 901, column: 3, scope: !84)
!3203 = !DILocation(line: 902, column: 24, scope: !84)
!3204 = !DILocation(line: 902, column: 41, scope: !84)
!3205 = !DILocation(line: 902, column: 3, scope: !84)
!3206 = !DILocation(line: 903, column: 11, scope: !84)
!3207 = !DILocation(line: 903, column: 3, scope: !84)
!3208 = !DILocation(line: 905, column: 11, scope: !84)
!3209 = !DILocation(line: 905, column: 3, scope: !84)
!3210 = !DILocation(line: 906, column: 24, scope: !84)
!3211 = !DILocation(line: 906, column: 42, scope: !84)
!3212 = !DILocation(line: 906, column: 3, scope: !84)
!3213 = !DILocation(line: 907, column: 11, scope: !84)
!3214 = !DILocation(line: 907, column: 3, scope: !84)
!3215 = !DILocation(line: 909, column: 11, scope: !84)
!3216 = !DILocation(line: 909, column: 3, scope: !84)
!3217 = !DILocation(line: 910, column: 24, scope: !84)
!3218 = !DILocation(line: 910, column: 40, scope: !84)
!3219 = !DILocation(line: 910, column: 3, scope: !84)
!3220 = !DILocation(line: 911, column: 11, scope: !84)
!3221 = !DILocation(line: 911, column: 3, scope: !84)
!3222 = !DILocation(line: 913, column: 11, scope: !84)
!3223 = !DILocation(line: 913, column: 3, scope: !84)
!3224 = !DILocation(line: 914, column: 3, scope: !84)
!3225 = !DILocation(line: 915, column: 8, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !84, file: !3, line: 915, column: 3)
!3227 = !DILocation(line: 915, column: 7, scope: !3226)
!3228 = !DILocation(line: 915, column: 11, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3226, file: !3, line: 915, column: 3)
!3230 = !DILocation(line: 915, column: 12, scope: !3229)
!3231 = !DILocation(line: 915, column: 3, scope: !3226)
!3232 = !DILocation(line: 916, column: 8, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3234, file: !3, line: 916, column: 8)
!3234 = distinct !DILexicalBlock(scope: !3229, file: !3, line: 915, column: 20)
!3235 = !DILocation(line: 916, column: 26, scope: !3233)
!3236 = !DILocation(line: 916, column: 8, scope: !3234)
!3237 = !DILocation(line: 917, column: 15, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3233, file: !3, line: 916, column: 30)
!3239 = !DILocation(line: 917, column: 7, scope: !3238)
!3240 = !DILocation(line: 918, column: 7, scope: !3238)
!3241 = !DILocation(line: 920, column: 3, scope: !3234)
!3242 = !DILocation(line: 915, column: 17, scope: !3229)
!3243 = !DILocation(line: 915, column: 3, scope: !3229)
!3244 = distinct !{!3244, !3231, !3245, !963}
!3245 = !DILocation(line: 920, column: 3, scope: !3226)
!3246 = !DILocation(line: 921, column: 6, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !84, file: !3, line: 921, column: 6)
!3248 = !DILocation(line: 921, column: 24, scope: !3247)
!3249 = !DILocation(line: 921, column: 29, scope: !3247)
!3250 = !DILocation(line: 922, column: 6, scope: !3247)
!3251 = !DILocation(line: 922, column: 24, scope: !3247)
!3252 = !DILocation(line: 921, column: 6, scope: !84)
!3253 = !DILocation(line: 923, column: 15, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3247, file: !3, line: 922, column: 29)
!3255 = !DILocation(line: 923, column: 7, scope: !3254)
!3256 = !DILocation(line: 924, column: 7, scope: !3254)
!3257 = !DILocation(line: 926, column: 3, scope: !84)
!3258 = !DILocation(line: 927, column: 6, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !84, file: !3, line: 927, column: 6)
!3260 = !DILocation(line: 927, column: 25, scope: !3259)
!3261 = !DILocation(line: 927, column: 29, scope: !3259)
!3262 = !DILocation(line: 927, column: 32, scope: !3259)
!3263 = !DILocation(line: 927, column: 51, scope: !3259)
!3264 = !DILocation(line: 927, column: 6, scope: !84)
!3265 = !DILocation(line: 928, column: 15, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3259, file: !3, line: 927, column: 55)
!3267 = !DILocation(line: 928, column: 7, scope: !3266)
!3268 = !DILocation(line: 929, column: 7, scope: !3266)
!3269 = !DILocation(line: 932, column: 6, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !84, file: !3, line: 932, column: 6)
!3271 = !DILocation(line: 932, column: 25, scope: !3270)
!3272 = !DILocation(line: 932, column: 29, scope: !3270)
!3273 = !DILocation(line: 933, column: 6, scope: !3270)
!3274 = !DILocation(line: 933, column: 25, scope: !3270)
!3275 = !DILocation(line: 932, column: 6, scope: !84)
!3276 = !DILocation(line: 934, column: 13, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3270, file: !3, line: 933, column: 29)
!3278 = !DILocation(line: 934, column: 5, scope: !3277)
!3279 = !DILocation(line: 935, column: 7, scope: !3277)
!3280 = !DILocation(line: 937, column: 6, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !84, file: !3, line: 937, column: 6)
!3282 = !DILocation(line: 937, column: 25, scope: !3281)
!3283 = !DILocation(line: 937, column: 30, scope: !3281)
!3284 = !DILocation(line: 938, column: 6, scope: !3281)
!3285 = !DILocation(line: 938, column: 25, scope: !3281)
!3286 = !DILocation(line: 937, column: 6, scope: !84)
!3287 = !DILocation(line: 939, column: 13, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !3281, file: !3, line: 938, column: 30)
!3289 = !DILocation(line: 939, column: 5, scope: !3288)
!3290 = !DILocation(line: 940, column: 7, scope: !3288)
!3291 = !DILocation(line: 942, column: 6, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !84, file: !3, line: 942, column: 6)
!3293 = !DILocation(line: 942, column: 25, scope: !3292)
!3294 = !DILocation(line: 942, column: 30, scope: !3292)
!3295 = !DILocation(line: 943, column: 6, scope: !3292)
!3296 = !DILocation(line: 943, column: 25, scope: !3292)
!3297 = !DILocation(line: 942, column: 6, scope: !84)
!3298 = !DILocation(line: 944, column: 13, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !3292, file: !3, line: 943, column: 30)
!3300 = !DILocation(line: 944, column: 5, scope: !3299)
!3301 = !DILocation(line: 945, column: 7, scope: !3299)
!3302 = !DILocation(line: 947, column: 3, scope: !84)
!3303 = !DILocation(line: 948, column: 11, scope: !84)
!3304 = !DILocation(line: 948, column: 3, scope: !84)
!3305 = !DILocation(line: 952, column: 11, scope: !84)
!3306 = !DILocation(line: 952, column: 3, scope: !84)
!3307 = !DILocation(line: 953, column: 8, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !84, file: !3, line: 953, column: 3)
!3309 = !DILocation(line: 953, column: 7, scope: !3308)
!3310 = !DILocation(line: 953, column: 11, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3308, file: !3, line: 953, column: 3)
!3312 = !DILocation(line: 953, column: 12, scope: !3311)
!3313 = !DILocation(line: 953, column: 3, scope: !3308)
!3314 = !DILocation(line: 954, column: 10, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3311, file: !3, line: 954, column: 5)
!3316 = !DILocation(line: 954, column: 9, scope: !3315)
!3317 = !DILocation(line: 954, column: 13, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3315, file: !3, line: 954, column: 5)
!3319 = !DILocation(line: 954, column: 14, scope: !3318)
!3320 = !DILocation(line: 954, column: 5, scope: !3315)
!3321 = !DILocation(line: 955, column: 16, scope: !3318)
!3322 = !DILocation(line: 955, column: 17, scope: !3318)
!3323 = !DILocation(line: 955, column: 20, scope: !3318)
!3324 = !DILocation(line: 955, column: 7, scope: !3318)
!3325 = !DILocation(line: 954, column: 18, scope: !3318)
!3326 = !DILocation(line: 954, column: 5, scope: !3318)
!3327 = distinct !{!3327, !3320, !3328, !963}
!3328 = !DILocation(line: 955, column: 21, scope: !3315)
!3329 = !DILocation(line: 953, column: 17, scope: !3311)
!3330 = !DILocation(line: 953, column: 3, scope: !3311)
!3331 = distinct !{!3331, !3313, !3332, !963}
!3332 = !DILocation(line: 955, column: 21, scope: !3308)
!3333 = !DILocation(line: 956, column: 8, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !84, file: !3, line: 956, column: 3)
!3335 = !DILocation(line: 956, column: 7, scope: !3334)
!3336 = !DILocation(line: 956, column: 31, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3334, file: !3, line: 956, column: 3)
!3338 = !DILocation(line: 956, column: 32, scope: !3337)
!3339 = !DILocation(line: 956, column: 3, scope: !3334)
!3340 = !DILocation(line: 957, column: 10, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3337, file: !3, line: 957, column: 5)
!3342 = !DILocation(line: 957, column: 9, scope: !3341)
!3343 = !DILocation(line: 957, column: 13, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3341, file: !3, line: 957, column: 5)
!3345 = !DILocation(line: 957, column: 14, scope: !3344)
!3346 = !DILocation(line: 957, column: 5, scope: !3341)
!3347 = !DILocation(line: 958, column: 16, scope: !3344)
!3348 = !DILocation(line: 958, column: 17, scope: !3344)
!3349 = !DILocation(line: 958, column: 20, scope: !3344)
!3350 = !DILocation(line: 958, column: 7, scope: !3344)
!3351 = !DILocation(line: 957, column: 18, scope: !3344)
!3352 = !DILocation(line: 957, column: 5, scope: !3344)
!3353 = distinct !{!3353, !3346, !3354, !963}
!3354 = !DILocation(line: 958, column: 21, scope: !3341)
!3355 = !DILocation(line: 956, column: 56, scope: !3337)
!3356 = !DILocation(line: 956, column: 3, scope: !3337)
!3357 = distinct !{!3357, !3339, !3358, !963}
!3358 = !DILocation(line: 958, column: 21, scope: !3334)
!3359 = !DILocation(line: 959, column: 11, scope: !84)
!3360 = !DILocation(line: 959, column: 3, scope: !84)
!3361 = !DILocation(line: 961, column: 11, scope: !84)
!3362 = !DILocation(line: 961, column: 3, scope: !84)
!3363 = !DILocation(line: 962, column: 8, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !84, file: !3, line: 962, column: 3)
!3365 = !DILocation(line: 962, column: 7, scope: !3364)
!3366 = !DILocation(line: 962, column: 11, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3364, file: !3, line: 962, column: 3)
!3368 = !DILocation(line: 962, column: 12, scope: !3367)
!3369 = !DILocation(line: 962, column: 3, scope: !3364)
!3370 = !DILocation(line: 963, column: 10, scope: !3371)
!3371 = distinct !DILexicalBlock(scope: !3367, file: !3, line: 963, column: 5)
!3372 = !DILocation(line: 963, column: 9, scope: !3371)
!3373 = !DILocation(line: 963, column: 13, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3371, file: !3, line: 963, column: 5)
!3375 = !DILocation(line: 963, column: 14, scope: !3374)
!3376 = !DILocation(line: 963, column: 5, scope: !3371)
!3377 = !DILocation(line: 964, column: 10, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3374, file: !3, line: 964, column: 10)
!3379 = !DILocation(line: 964, column: 11, scope: !3378)
!3380 = !DILocation(line: 964, column: 10, scope: !3374)
!3381 = !DILocation(line: 965, column: 18, scope: !3378)
!3382 = !DILocation(line: 965, column: 20, scope: !3378)
!3383 = !DILocation(line: 965, column: 9, scope: !3378)
!3384 = !DILocation(line: 964, column: 12, scope: !3378)
!3385 = !DILocation(line: 963, column: 19, scope: !3374)
!3386 = !DILocation(line: 963, column: 5, scope: !3374)
!3387 = distinct !{!3387, !3376, !3388, !963}
!3388 = !DILocation(line: 965, column: 21, scope: !3371)
!3389 = !DILocation(line: 962, column: 17, scope: !3367)
!3390 = !DILocation(line: 962, column: 3, scope: !3367)
!3391 = distinct !{!3391, !3369, !3392, !963}
!3392 = !DILocation(line: 965, column: 21, scope: !3364)
!3393 = !DILocation(line: 966, column: 8, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !84, file: !3, line: 966, column: 3)
!3395 = !DILocation(line: 966, column: 7, scope: !3394)
!3396 = !DILocation(line: 966, column: 31, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3394, file: !3, line: 966, column: 3)
!3398 = !DILocation(line: 966, column: 32, scope: !3397)
!3399 = !DILocation(line: 966, column: 3, scope: !3394)
!3400 = !DILocation(line: 967, column: 10, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3397, file: !3, line: 967, column: 5)
!3402 = !DILocation(line: 967, column: 9, scope: !3401)
!3403 = !DILocation(line: 967, column: 13, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3401, file: !3, line: 967, column: 5)
!3405 = !DILocation(line: 967, column: 14, scope: !3404)
!3406 = !DILocation(line: 967, column: 5, scope: !3401)
!3407 = !DILocation(line: 968, column: 10, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3404, file: !3, line: 968, column: 10)
!3409 = !DILocation(line: 968, column: 11, scope: !3408)
!3410 = !DILocation(line: 968, column: 10, scope: !3404)
!3411 = !DILocation(line: 969, column: 18, scope: !3408)
!3412 = !DILocation(line: 969, column: 20, scope: !3408)
!3413 = !DILocation(line: 969, column: 9, scope: !3408)
!3414 = !DILocation(line: 968, column: 12, scope: !3408)
!3415 = !DILocation(line: 967, column: 19, scope: !3404)
!3416 = !DILocation(line: 967, column: 5, scope: !3404)
!3417 = distinct !{!3417, !3406, !3418, !963}
!3418 = !DILocation(line: 969, column: 21, scope: !3401)
!3419 = !DILocation(line: 966, column: 56, scope: !3397)
!3420 = !DILocation(line: 966, column: 3, scope: !3397)
!3421 = distinct !{!3421, !3399, !3422, !963}
!3422 = !DILocation(line: 969, column: 21, scope: !3394)
!3423 = !DILocation(line: 971, column: 11, scope: !84)
!3424 = !DILocation(line: 971, column: 3, scope: !84)
!3425 = !DILocation(line: 978, column: 3, scope: !84)
!3426 = !DILocation(line: 980, column: 11, scope: !84)
!3427 = !DILocation(line: 980, column: 3, scope: !84)
!3428 = !DILocation(line: 981, column: 25, scope: !84)
!3429 = !DILocation(line: 981, column: 42, scope: !84)
!3430 = !DILocation(line: 981, column: 3, scope: !84)
!3431 = !DILocation(line: 982, column: 11, scope: !84)
!3432 = !DILocation(line: 982, column: 3, scope: !84)
!3433 = !DILocation(line: 984, column: 11, scope: !84)
!3434 = !DILocation(line: 984, column: 3, scope: !84)
!3435 = !DILocation(line: 985, column: 25, scope: !84)
!3436 = !DILocation(line: 985, column: 42, scope: !84)
!3437 = !DILocation(line: 985, column: 3, scope: !84)
!3438 = !DILocation(line: 986, column: 11, scope: !84)
!3439 = !DILocation(line: 986, column: 3, scope: !84)
!3440 = !DILocation(line: 988, column: 11, scope: !84)
!3441 = !DILocation(line: 988, column: 3, scope: !84)
!3442 = !DILocation(line: 989, column: 25, scope: !84)
!3443 = !DILocation(line: 989, column: 44, scope: !84)
!3444 = !DILocation(line: 989, column: 3, scope: !84)
!3445 = !DILocation(line: 990, column: 11, scope: !84)
!3446 = !DILocation(line: 990, column: 3, scope: !84)
!3447 = !DILocation(line: 992, column: 11, scope: !84)
!3448 = !DILocation(line: 992, column: 3, scope: !84)
!3449 = !DILocation(line: 993, column: 3, scope: !84)
!3450 = !DILocation(line: 994, column: 8, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !84, file: !3, line: 994, column: 3)
!3452 = !DILocation(line: 994, column: 7, scope: !3451)
!3453 = !DILocation(line: 994, column: 11, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3451, file: !3, line: 994, column: 3)
!3455 = !DILocation(line: 994, column: 13, scope: !3454)
!3456 = !DILocation(line: 994, column: 12, scope: !3454)
!3457 = !DILocation(line: 994, column: 3, scope: !3451)
!3458 = !DILocation(line: 995, column: 29, scope: !3454)
!3459 = !DILocation(line: 995, column: 23, scope: !3454)
!3460 = !DILocation(line: 995, column: 5, scope: !3454)
!3461 = !DILocation(line: 994, column: 24, scope: !3454)
!3462 = !DILocation(line: 994, column: 3, scope: !3454)
!3463 = distinct !{!3463, !3457, !3464, !963}
!3464 = !DILocation(line: 995, column: 34, scope: !3451)
!3465 = !DILocation(line: 996, column: 10, scope: !84)
!3466 = !DILocation(line: 996, column: 9, scope: !84)
!3467 = !DILocation(line: 997, column: 9, scope: !84)
!3468 = !DILocation(line: 997, column: 8, scope: !84)
!3469 = !DILocation(line: 998, column: 24, scope: !84)
!3470 = !DILocation(line: 998, column: 31, scope: !84)
!3471 = !DILocation(line: 998, column: 3, scope: !84)
!3472 = !DILocation(line: 999, column: 8, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !84, file: !3, line: 999, column: 3)
!3474 = !DILocation(line: 999, column: 7, scope: !3473)
!3475 = !DILocation(line: 999, column: 11, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3473, file: !3, line: 999, column: 3)
!3477 = !DILocation(line: 999, column: 13, scope: !3476)
!3478 = !DILocation(line: 999, column: 12, scope: !3476)
!3479 = !DILocation(line: 999, column: 3, scope: !3473)
!3480 = !DILocation(line: 1000, column: 8, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3482, file: !3, line: 1000, column: 8)
!3482 = distinct !DILexicalBlock(scope: !3476, file: !3, line: 999, column: 27)
!3483 = !DILocation(line: 1000, column: 28, scope: !3481)
!3484 = !DILocation(line: 1000, column: 8, scope: !3482)
!3485 = !DILocation(line: 1000, column: 33, scope: !3481)
!3486 = !DILocation(line: 1001, column: 8, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3482, file: !3, line: 1001, column: 8)
!3488 = !DILocation(line: 1001, column: 36, scope: !3487)
!3489 = !DILocation(line: 1001, column: 30, scope: !3487)
!3490 = !DILocation(line: 1001, column: 28, scope: !3487)
!3491 = !DILocation(line: 1001, column: 8, scope: !3482)
!3492 = !DILocation(line: 1002, column: 15, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3487, file: !3, line: 1001, column: 39)
!3494 = !DILocation(line: 1002, column: 47, scope: !3493)
!3495 = !DILocation(line: 1002, column: 74, scope: !3493)
!3496 = !DILocation(line: 1002, column: 68, scope: !3493)
!3497 = !DILocation(line: 1003, column: 15, scope: !3493)
!3498 = !DILocation(line: 1003, column: 42, scope: !3493)
!3499 = !DILocation(line: 1003, column: 36, scope: !3493)
!3500 = !DILocation(line: 1002, column: 7, scope: !3493)
!3501 = !DILocation(line: 1004, column: 7, scope: !3493)
!3502 = !DILocation(line: 1005, column: 5, scope: !3493)
!3503 = !DILocation(line: 1006, column: 5, scope: !3482)
!3504 = !DILocation(line: 1007, column: 3, scope: !3482)
!3505 = !DILocation(line: 999, column: 24, scope: !3476)
!3506 = !DILocation(line: 999, column: 3, scope: !3476)
!3507 = distinct !{!3507, !3479, !3508, !963}
!3508 = !DILocation(line: 1007, column: 3, scope: !3473)
!3509 = !DILocation(line: 1008, column: 6, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !84, file: !3, line: 1008, column: 6)
!3511 = !DILocation(line: 1008, column: 26, scope: !3510)
!3512 = !DILocation(line: 1008, column: 24, scope: !3510)
!3513 = !DILocation(line: 1008, column: 6, scope: !84)
!3514 = !DILocation(line: 1008, column: 32, scope: !3510)
!3515 = !DILocation(line: 1009, column: 11, scope: !84)
!3516 = !DILocation(line: 1009, column: 3, scope: !84)
!3517 = !DILocation(line: 1011, column: 11, scope: !84)
!3518 = !DILocation(line: 1011, column: 3, scope: !84)
!3519 = !DILocation(line: 1012, column: 25, scope: !84)
!3520 = !DILocation(line: 1012, column: 43, scope: !84)
!3521 = !DILocation(line: 1012, column: 3, scope: !84)
!3522 = !DILocation(line: 1013, column: 11, scope: !84)
!3523 = !DILocation(line: 1013, column: 3, scope: !84)
!3524 = !DILocation(line: 1015, column: 11, scope: !84)
!3525 = !DILocation(line: 1015, column: 3, scope: !84)
!3526 = !DILocation(line: 1016, column: 25, scope: !84)
!3527 = !DILocation(line: 1016, column: 44, scope: !84)
!3528 = !DILocation(line: 1016, column: 3, scope: !84)
!3529 = !DILocation(line: 1017, column: 11, scope: !84)
!3530 = !DILocation(line: 1017, column: 3, scope: !84)
!3531 = !DILocation(line: 1019, column: 11, scope: !84)
!3532 = !DILocation(line: 1019, column: 3, scope: !84)
!3533 = !DILocation(line: 1020, column: 25, scope: !84)
!3534 = !DILocation(line: 1020, column: 42, scope: !84)
!3535 = !DILocation(line: 1020, column: 3, scope: !84)
!3536 = !DILocation(line: 1021, column: 11, scope: !84)
!3537 = !DILocation(line: 1021, column: 3, scope: !84)
!3538 = !DILocation(line: 1023, column: 11, scope: !84)
!3539 = !DILocation(line: 1023, column: 3, scope: !84)
!3540 = !DILocation(line: 1024, column: 3, scope: !84)
!3541 = !DILocation(line: 1025, column: 8, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !84, file: !3, line: 1025, column: 3)
!3543 = !DILocation(line: 1025, column: 7, scope: !3542)
!3544 = !DILocation(line: 1025, column: 11, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !3542, file: !3, line: 1025, column: 3)
!3546 = !DILocation(line: 1025, column: 12, scope: !3545)
!3547 = !DILocation(line: 1025, column: 3, scope: !3542)
!3548 = !DILocation(line: 1026, column: 8, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3550, file: !3, line: 1026, column: 8)
!3550 = distinct !DILexicalBlock(scope: !3545, file: !3, line: 1025, column: 20)
!3551 = !DILocation(line: 1026, column: 27, scope: !3549)
!3552 = !DILocation(line: 1026, column: 8, scope: !3550)
!3553 = !DILocation(line: 1027, column: 15, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3549, file: !3, line: 1026, column: 31)
!3555 = !DILocation(line: 1027, column: 7, scope: !3554)
!3556 = !DILocation(line: 1028, column: 7, scope: !3554)
!3557 = !DILocation(line: 1030, column: 3, scope: !3550)
!3558 = !DILocation(line: 1025, column: 17, scope: !3545)
!3559 = !DILocation(line: 1025, column: 3, scope: !3545)
!3560 = distinct !{!3560, !3547, !3561, !963}
!3561 = !DILocation(line: 1030, column: 3, scope: !3542)
!3562 = !DILocation(line: 1031, column: 6, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !84, file: !3, line: 1031, column: 6)
!3564 = !DILocation(line: 1031, column: 25, scope: !3563)
!3565 = !DILocation(line: 1031, column: 30, scope: !3563)
!3566 = !DILocation(line: 1032, column: 6, scope: !3563)
!3567 = !DILocation(line: 1032, column: 25, scope: !3563)
!3568 = !DILocation(line: 1031, column: 6, scope: !84)
!3569 = !DILocation(line: 1033, column: 15, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3563, file: !3, line: 1032, column: 30)
!3571 = !DILocation(line: 1033, column: 7, scope: !3570)
!3572 = !DILocation(line: 1034, column: 7, scope: !3570)
!3573 = !DILocation(line: 1036, column: 3, scope: !84)
!3574 = !DILocation(line: 1037, column: 6, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !84, file: !3, line: 1037, column: 6)
!3576 = !DILocation(line: 1037, column: 26, scope: !3575)
!3577 = !DILocation(line: 1037, column: 30, scope: !3575)
!3578 = !DILocation(line: 1037, column: 33, scope: !3575)
!3579 = !DILocation(line: 1037, column: 53, scope: !3575)
!3580 = !DILocation(line: 1037, column: 6, scope: !84)
!3581 = !DILocation(line: 1038, column: 15, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3575, file: !3, line: 1037, column: 57)
!3583 = !DILocation(line: 1038, column: 7, scope: !3582)
!3584 = !DILocation(line: 1039, column: 7, scope: !3582)
!3585 = !DILocation(line: 1042, column: 6, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !84, file: !3, line: 1042, column: 6)
!3587 = !DILocation(line: 1042, column: 26, scope: !3586)
!3588 = !DILocation(line: 1042, column: 30, scope: !3586)
!3589 = !DILocation(line: 1043, column: 6, scope: !3586)
!3590 = !DILocation(line: 1043, column: 26, scope: !3586)
!3591 = !DILocation(line: 1042, column: 6, scope: !84)
!3592 = !DILocation(line: 1044, column: 13, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3586, file: !3, line: 1043, column: 30)
!3594 = !DILocation(line: 1044, column: 5, scope: !3593)
!3595 = !DILocation(line: 1045, column: 7, scope: !3593)
!3596 = !DILocation(line: 1047, column: 6, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !84, file: !3, line: 1047, column: 6)
!3598 = !DILocation(line: 1047, column: 26, scope: !3597)
!3599 = !DILocation(line: 1047, column: 31, scope: !3597)
!3600 = !DILocation(line: 1048, column: 6, scope: !3597)
!3601 = !DILocation(line: 1048, column: 26, scope: !3597)
!3602 = !DILocation(line: 1047, column: 6, scope: !84)
!3603 = !DILocation(line: 1049, column: 13, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !3597, file: !3, line: 1048, column: 31)
!3605 = !DILocation(line: 1049, column: 5, scope: !3604)
!3606 = !DILocation(line: 1050, column: 7, scope: !3604)
!3607 = !DILocation(line: 1052, column: 6, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !84, file: !3, line: 1052, column: 6)
!3609 = !DILocation(line: 1052, column: 26, scope: !3608)
!3610 = !DILocation(line: 1052, column: 31, scope: !3608)
!3611 = !DILocation(line: 1053, column: 6, scope: !3608)
!3612 = !DILocation(line: 1053, column: 26, scope: !3608)
!3613 = !DILocation(line: 1052, column: 6, scope: !84)
!3614 = !DILocation(line: 1054, column: 13, scope: !3615)
!3615 = distinct !DILexicalBlock(scope: !3608, file: !3, line: 1053, column: 31)
!3616 = !DILocation(line: 1054, column: 5, scope: !3615)
!3617 = !DILocation(line: 1055, column: 7, scope: !3615)
!3618 = !DILocation(line: 1057, column: 11, scope: !84)
!3619 = !DILocation(line: 1057, column: 3, scope: !84)
!3620 = !DILocation(line: 1058, column: 3, scope: !84)
!3621 = !DILocation(line: 1062, column: 11, scope: !84)
!3622 = !DILocation(line: 1062, column: 3, scope: !84)
!3623 = !DILocation(line: 1063, column: 8, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !84, file: !3, line: 1063, column: 3)
!3625 = !DILocation(line: 1063, column: 7, scope: !3624)
!3626 = !DILocation(line: 1063, column: 11, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3624, file: !3, line: 1063, column: 3)
!3628 = !DILocation(line: 1063, column: 12, scope: !3627)
!3629 = !DILocation(line: 1063, column: 3, scope: !3624)
!3630 = !DILocation(line: 1064, column: 10, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3627, file: !3, line: 1064, column: 5)
!3632 = !DILocation(line: 1064, column: 9, scope: !3631)
!3633 = !DILocation(line: 1064, column: 13, scope: !3634)
!3634 = distinct !DILexicalBlock(scope: !3631, file: !3, line: 1064, column: 5)
!3635 = !DILocation(line: 1064, column: 14, scope: !3634)
!3636 = !DILocation(line: 1064, column: 5, scope: !3631)
!3637 = !DILocation(line: 1065, column: 17, scope: !3634)
!3638 = !DILocation(line: 1065, column: 18, scope: !3634)
!3639 = !DILocation(line: 1065, column: 21, scope: !3634)
!3640 = !DILocation(line: 1065, column: 7, scope: !3634)
!3641 = !DILocation(line: 1064, column: 18, scope: !3634)
!3642 = !DILocation(line: 1064, column: 5, scope: !3634)
!3643 = distinct !{!3643, !3636, !3644, !963}
!3644 = !DILocation(line: 1065, column: 22, scope: !3631)
!3645 = !DILocation(line: 1063, column: 17, scope: !3627)
!3646 = !DILocation(line: 1063, column: 3, scope: !3627)
!3647 = distinct !{!3647, !3629, !3648, !963}
!3648 = !DILocation(line: 1065, column: 22, scope: !3624)
!3649 = !DILocation(line: 1066, column: 8, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !84, file: !3, line: 1066, column: 3)
!3651 = !DILocation(line: 1066, column: 7, scope: !3650)
!3652 = !DILocation(line: 1066, column: 31, scope: !3653)
!3653 = distinct !DILexicalBlock(scope: !3650, file: !3, line: 1066, column: 3)
!3654 = !DILocation(line: 1066, column: 32, scope: !3653)
!3655 = !DILocation(line: 1066, column: 3, scope: !3650)
!3656 = !DILocation(line: 1067, column: 10, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3653, file: !3, line: 1067, column: 5)
!3658 = !DILocation(line: 1067, column: 9, scope: !3657)
!3659 = !DILocation(line: 1067, column: 13, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3657, file: !3, line: 1067, column: 5)
!3661 = !DILocation(line: 1067, column: 14, scope: !3660)
!3662 = !DILocation(line: 1067, column: 5, scope: !3657)
!3663 = !DILocation(line: 1068, column: 17, scope: !3660)
!3664 = !DILocation(line: 1068, column: 18, scope: !3660)
!3665 = !DILocation(line: 1068, column: 21, scope: !3660)
!3666 = !DILocation(line: 1068, column: 7, scope: !3660)
!3667 = !DILocation(line: 1067, column: 18, scope: !3660)
!3668 = !DILocation(line: 1067, column: 5, scope: !3660)
!3669 = distinct !{!3669, !3662, !3670, !963}
!3670 = !DILocation(line: 1068, column: 22, scope: !3657)
!3671 = !DILocation(line: 1066, column: 56, scope: !3653)
!3672 = !DILocation(line: 1066, column: 3, scope: !3653)
!3673 = distinct !{!3673, !3655, !3674, !963}
!3674 = !DILocation(line: 1068, column: 22, scope: !3650)
!3675 = !DILocation(line: 1069, column: 11, scope: !84)
!3676 = !DILocation(line: 1069, column: 3, scope: !84)
!3677 = !DILocation(line: 1071, column: 11, scope: !84)
!3678 = !DILocation(line: 1071, column: 3, scope: !84)
!3679 = !DILocation(line: 1072, column: 8, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !84, file: !3, line: 1072, column: 3)
!3681 = !DILocation(line: 1072, column: 7, scope: !3680)
!3682 = !DILocation(line: 1072, column: 11, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3680, file: !3, line: 1072, column: 3)
!3684 = !DILocation(line: 1072, column: 12, scope: !3683)
!3685 = !DILocation(line: 1072, column: 3, scope: !3680)
!3686 = !DILocation(line: 1073, column: 10, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3683, file: !3, line: 1073, column: 5)
!3688 = !DILocation(line: 1073, column: 9, scope: !3687)
!3689 = !DILocation(line: 1073, column: 13, scope: !3690)
!3690 = distinct !DILexicalBlock(scope: !3687, file: !3, line: 1073, column: 5)
!3691 = !DILocation(line: 1073, column: 14, scope: !3690)
!3692 = !DILocation(line: 1073, column: 5, scope: !3687)
!3693 = !DILocation(line: 1074, column: 10, scope: !3694)
!3694 = distinct !DILexicalBlock(scope: !3690, file: !3, line: 1074, column: 10)
!3695 = !DILocation(line: 1074, column: 11, scope: !3694)
!3696 = !DILocation(line: 1074, column: 10, scope: !3690)
!3697 = !DILocation(line: 1075, column: 19, scope: !3694)
!3698 = !DILocation(line: 1075, column: 21, scope: !3694)
!3699 = !DILocation(line: 1075, column: 9, scope: !3694)
!3700 = !DILocation(line: 1074, column: 12, scope: !3694)
!3701 = !DILocation(line: 1073, column: 19, scope: !3690)
!3702 = !DILocation(line: 1073, column: 5, scope: !3690)
!3703 = distinct !{!3703, !3692, !3704, !963}
!3704 = !DILocation(line: 1075, column: 22, scope: !3687)
!3705 = !DILocation(line: 1072, column: 17, scope: !3683)
!3706 = !DILocation(line: 1072, column: 3, scope: !3683)
!3707 = distinct !{!3707, !3685, !3708, !963}
!3708 = !DILocation(line: 1075, column: 22, scope: !3680)
!3709 = !DILocation(line: 1076, column: 8, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !84, file: !3, line: 1076, column: 3)
!3711 = !DILocation(line: 1076, column: 7, scope: !3710)
!3712 = !DILocation(line: 1076, column: 31, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3710, file: !3, line: 1076, column: 3)
!3714 = !DILocation(line: 1076, column: 32, scope: !3713)
!3715 = !DILocation(line: 1076, column: 3, scope: !3710)
!3716 = !DILocation(line: 1077, column: 10, scope: !3717)
!3717 = distinct !DILexicalBlock(scope: !3713, file: !3, line: 1077, column: 5)
!3718 = !DILocation(line: 1077, column: 9, scope: !3717)
!3719 = !DILocation(line: 1077, column: 13, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3717, file: !3, line: 1077, column: 5)
!3721 = !DILocation(line: 1077, column: 14, scope: !3720)
!3722 = !DILocation(line: 1077, column: 5, scope: !3717)
!3723 = !DILocation(line: 1078, column: 10, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !3720, file: !3, line: 1078, column: 10)
!3725 = !DILocation(line: 1078, column: 11, scope: !3724)
!3726 = !DILocation(line: 1078, column: 10, scope: !3720)
!3727 = !DILocation(line: 1079, column: 19, scope: !3724)
!3728 = !DILocation(line: 1079, column: 21, scope: !3724)
!3729 = !DILocation(line: 1079, column: 9, scope: !3724)
!3730 = !DILocation(line: 1078, column: 12, scope: !3724)
!3731 = !DILocation(line: 1077, column: 19, scope: !3720)
!3732 = !DILocation(line: 1077, column: 5, scope: !3720)
!3733 = distinct !{!3733, !3722, !3734, !963}
!3734 = !DILocation(line: 1079, column: 22, scope: !3717)
!3735 = !DILocation(line: 1076, column: 56, scope: !3713)
!3736 = !DILocation(line: 1076, column: 3, scope: !3713)
!3737 = distinct !{!3737, !3715, !3738, !963}
!3738 = !DILocation(line: 1079, column: 22, scope: !3710)
!3739 = !DILocation(line: 1081, column: 11, scope: !84)
!3740 = !DILocation(line: 1081, column: 3, scope: !84)
!3741 = !DILocation(line: 1084, column: 1, scope: !84)
!3742 = !DILocation(line: 1083, column: 3, scope: !84)

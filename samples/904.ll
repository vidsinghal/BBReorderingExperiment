; ModuleID = 'samples/904.bc'
source_filename = "varispeed_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SRC_DATA = type { ptr, ptr, i64, i64, i64, i64, i32, double }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !0
@.str.1 = private unnamed_addr constant [39 x i8] c"    Zero Order Hold interpolator    : \00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [39 x i8] c"    Linear interpolator             : \00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [39 x i8] c"    Sinc interpolator               : \00", align 1, !dbg !14
@varispeed_test.input = internal global [65536 x float] zeroinitializer, align 16, !dbg !16
@varispeed_test.output = internal global [65536 x float] zeroinitializer, align 16, !dbg !37
@.str.4 = private unnamed_addr constant [36 x i8] c"\0A\0ALine %d : src_new() failed : %s\0A\0A\00", align 1, !dbg !43
@.str.5 = private unnamed_addr constant [17 x i8] c"\0A\0ALine %d : %s\0A\0A\00", align 1, !dbg !48
@.str.6 = private unnamed_addr constant [32 x i8] c"  src_data.input_frames  : %ld\0A\00", align 1, !dbg !53
@.str.7 = private unnamed_addr constant [33 x i8] c"  src_data.output_frames : %ld\0A\0A\00", align 1, !dbg !58
@.str.8 = private unnamed_addr constant [27 x i8] c"\0A\0ALine %d : unused input.\0A\00", align 1, !dbg !63
@.str.9 = private unnamed_addr constant [25 x i8] c"\09input_len         : %d\0A\00", align 1, !dbg !68
@.str.10 = private unnamed_addr constant [27 x i8] c"\09input_frames_used : %ld\0A\0A\00", align 1, !dbg !73
@.str.11 = private unnamed_addr constant [55 x i8] c"\0A\0ALine %d : snr (%3.1f) does not meet target (%3.1f)\0A\0A\00", align 1, !dbg !75
@.str.12 = private unnamed_addr constant [14 x i8] c"varispeed.mat\00", align 1, !dbg !80
@.str.13 = private unnamed_addr constant [3 x i8] c"ok\00", align 1, !dbg !85

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !124 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @puts(ptr noundef @.str), !dbg !127
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1), !dbg !128
  call void @varispeed_test(i32 noundef 3, double noundef 1.000000e+01), !dbg !129
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.2), !dbg !130
  call void @varispeed_test(i32 noundef 4, double noundef 1.000000e+01), !dbg !131
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.3), !dbg !132
  call void @varispeed_test(i32 noundef 2, double noundef 1.150000e+02), !dbg !133
  %call4 = call i32 @puts(ptr noundef @.str), !dbg !134
  ret i32 0, !dbg !135
}

declare !dbg !136 i32 @puts(ptr noundef) #1

declare !dbg !142 i32 @printf(ptr noundef, ...) #1

; Function Attrs: nounwind uwtable
define internal void @varispeed_test(i32 noundef %converter, double noundef %target_snr) #0 !dbg !18 {
entry:
  %converter.addr = alloca i32, align 4
  %target_snr.addr = alloca double, align 8
  %sine_freq = alloca double, align 8
  %snr = alloca double, align 8
  %src_state = alloca ptr, align 8
  %src_data = alloca %struct.SRC_DATA, align 8
  %input_len = alloca i32, align 4
  %error = alloca i32, align 4
  store i32 %converter, ptr %converter.addr, align 4, !tbaa !146
  tail call void @llvm.dbg.declare(metadata ptr %converter.addr, metadata !91, metadata !DIExpression()), !dbg !150
  store double %target_snr, ptr %target_snr.addr, align 8, !tbaa !151
  tail call void @llvm.dbg.declare(metadata ptr %target_snr.addr, metadata !92, metadata !DIExpression()), !dbg !153
  call void @llvm.lifetime.start.p0(i64 8, ptr %sine_freq) #7, !dbg !154
  tail call void @llvm.dbg.declare(metadata ptr %sine_freq, metadata !93, metadata !DIExpression()), !dbg !155
  call void @llvm.lifetime.start.p0(i64 8, ptr %snr) #7, !dbg !154
  tail call void @llvm.dbg.declare(metadata ptr %snr, metadata !94, metadata !DIExpression()), !dbg !156
  call void @llvm.lifetime.start.p0(i64 8, ptr %src_state) #7, !dbg !157
  tail call void @llvm.dbg.declare(metadata ptr %src_state, metadata !95, metadata !DIExpression()), !dbg !158
  call void @llvm.lifetime.start.p0(i64 64, ptr %src_data) #7, !dbg !159
  tail call void @llvm.dbg.declare(metadata ptr %src_data, metadata !99, metadata !DIExpression()), !dbg !160
  call void @llvm.lifetime.start.p0(i64 4, ptr %input_len) #7, !dbg !161
  tail call void @llvm.dbg.declare(metadata ptr %input_len, metadata !115, metadata !DIExpression()), !dbg !162
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #7, !dbg !161
  tail call void @llvm.dbg.declare(metadata ptr %error, metadata !116, metadata !DIExpression()), !dbg !163
  call void @llvm.memset.p0.i64(ptr align 16 @varispeed_test.input, i8 0, i64 262144, i1 false), !dbg !164
  store i32 32768, ptr %input_len, align 4, !dbg !165, !tbaa !146
  store double 1.110000e-02, ptr %sine_freq, align 8, !dbg !166, !tbaa !151
  %0 = load i32, ptr %input_len, align 4, !dbg !167, !tbaa !146
  call void @gen_windowed_sines(i32 noundef 1, ptr noundef %sine_freq, double noundef 1.000000e+00, ptr noundef @varispeed_test.input, i32 noundef %0), !dbg !168
  %1 = load i32, ptr %converter.addr, align 4, !dbg !169, !tbaa !146
  %call = call ptr @src_new(i32 noundef %1, i32 noundef 1, ptr noundef %error), !dbg !171
  store ptr %call, ptr %src_state, align 8, !dbg !172, !tbaa !173
  %cmp = icmp eq ptr %call, null, !dbg !175
  br i1 %cmp, label %if.then, label %if.end, !dbg !176

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %error, align 4, !dbg !177, !tbaa !146
  %call1 = call ptr @src_strerror(i32 noundef %2), !dbg !179
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef 68, ptr noundef %call1), !dbg !180
  call void @exit(i32 noundef 1) #8, !dbg !181
  unreachable, !dbg !181

if.end:                                           ; preds = %entry
  %end_of_input = getelementptr inbounds %struct.SRC_DATA, ptr %src_data, i32 0, i32 6, !dbg !182
  store i32 1, ptr %end_of_input, align 8, !dbg !183, !tbaa !184
  %data_in = getelementptr inbounds %struct.SRC_DATA, ptr %src_data, i32 0, i32 0, !dbg !187
  store ptr @varispeed_test.input, ptr %data_in, align 8, !dbg !188, !tbaa !189
  %3 = load i32, ptr %input_len, align 4, !dbg !190, !tbaa !146
  %conv = sext i32 %3 to i64, !dbg !190
  %input_frames = getelementptr inbounds %struct.SRC_DATA, ptr %src_data, i32 0, i32 2, !dbg !191
  store i64 %conv, ptr %input_frames, align 8, !dbg !192, !tbaa !193
  %src_ratio = getelementptr inbounds %struct.SRC_DATA, ptr %src_data, i32 0, i32 7, !dbg !194
  store double 3.000000e+00, ptr %src_ratio, align 8, !dbg !195, !tbaa !196
  %data_out = getelementptr inbounds %struct.SRC_DATA, ptr %src_data, i32 0, i32 1, !dbg !197
  store ptr @varispeed_test.output, ptr %data_out, align 8, !dbg !198, !tbaa !199
  %output_frames = getelementptr inbounds %struct.SRC_DATA, ptr %src_data, i32 0, i32 3, !dbg !200
  store i64 65536, ptr %output_frames, align 8, !dbg !201, !tbaa !202
  %4 = load ptr, ptr %src_state, align 8, !dbg !203, !tbaa !173
  %src_ratio3 = getelementptr inbounds %struct.SRC_DATA, ptr %src_data, i32 0, i32 7, !dbg !205
  %5 = load double, ptr %src_ratio3, align 8, !dbg !205, !tbaa !196
  %div = fdiv double 1.000000e+00, %5, !dbg !206
  %call4 = call i32 @src_set_ratio(ptr noundef %4, double noundef %div), !dbg !207
  store i32 %call4, ptr %error, align 4, !dbg !208, !tbaa !146
  %tobool = icmp ne i32 %call4, 0, !dbg !208
  br i1 %tobool, label %if.then5, label %if.end8, !dbg !209

if.then5:                                         ; preds = %if.end
  %6 = load i32, ptr %error, align 4, !dbg !210, !tbaa !146
  %call6 = call ptr @src_strerror(i32 noundef %6), !dbg !212
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef 83, ptr noundef %call6), !dbg !213
  call void @exit(i32 noundef 1) #8, !dbg !214
  unreachable, !dbg !214

if.end8:                                          ; preds = %if.end
  %7 = load ptr, ptr %src_state, align 8, !dbg !215, !tbaa !173
  %call9 = call i32 @src_process(ptr noundef %7, ptr noundef %src_data), !dbg !217
  store i32 %call9, ptr %error, align 4, !dbg !218, !tbaa !146
  %tobool10 = icmp ne i32 %call9, 0, !dbg !218
  br i1 %tobool10, label %if.then11, label %if.end18, !dbg !219

if.then11:                                        ; preds = %if.end8
  %8 = load i32, ptr %error, align 4, !dbg !220, !tbaa !146
  %call12 = call ptr @src_strerror(i32 noundef %8), !dbg !222
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef 88, ptr noundef %call12), !dbg !223
  %input_frames14 = getelementptr inbounds %struct.SRC_DATA, ptr %src_data, i32 0, i32 2, !dbg !224
  %9 = load i64, ptr %input_frames14, align 8, !dbg !224, !tbaa !193
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i64 noundef %9), !dbg !225
  %output_frames16 = getelementptr inbounds %struct.SRC_DATA, ptr %src_data, i32 0, i32 3, !dbg !226
  %10 = load i64, ptr %output_frames16, align 8, !dbg !226, !tbaa !202
  %call17 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, i64 noundef %10), !dbg !227
  call void @exit(i32 noundef 1) #8, !dbg !228
  unreachable, !dbg !228

if.end18:                                         ; preds = %if.end8
  %input_frames_used = getelementptr inbounds %struct.SRC_DATA, ptr %src_data, i32 0, i32 4, !dbg !229
  %11 = load i64, ptr %input_frames_used, align 8, !dbg !229, !tbaa !231
  %12 = load i32, ptr %input_len, align 4, !dbg !232, !tbaa !146
  %conv19 = sext i32 %12 to i64, !dbg !232
  %cmp20 = icmp ne i64 %11, %conv19, !dbg !233
  br i1 %cmp20, label %if.then22, label %if.end27, !dbg !234

if.then22:                                        ; preds = %if.end18
  %call23 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef 95), !dbg !235
  %13 = load i32, ptr %input_len, align 4, !dbg !237, !tbaa !146
  %call24 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, i32 noundef %13), !dbg !238
  %input_frames_used25 = getelementptr inbounds %struct.SRC_DATA, ptr %src_data, i32 0, i32 4, !dbg !239
  %14 = load i64, ptr %input_frames_used25, align 8, !dbg !239, !tbaa !231
  %call26 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, i64 noundef %14), !dbg !240
  call void @exit(i32 noundef 1) #8, !dbg !241
  unreachable, !dbg !241

if.end27:                                         ; preds = %if.end18
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 @varispeed_test.input, ptr align 16 @varispeed_test.output, i64 262144, i1 false), !dbg !242
  %output_frames_gen = getelementptr inbounds %struct.SRC_DATA, ptr %src_data, i32 0, i32 5, !dbg !243
  %15 = load i64, ptr %output_frames_gen, align 8, !dbg !243, !tbaa !244
  %conv28 = trunc i64 %15 to i32, !dbg !245
  call void @reverse_data(ptr noundef @varispeed_test.input, i32 noundef %conv28), !dbg !246
  %16 = load ptr, ptr %src_state, align 8, !dbg !247, !tbaa !173
  %call29 = call i32 @src_reset(ptr noundef %16), !dbg !249
  store i32 %call29, ptr %error, align 4, !dbg !250, !tbaa !146
  %tobool30 = icmp ne i32 %call29, 0, !dbg !250
  br i1 %tobool30, label %if.then31, label %if.end34, !dbg !251

if.then31:                                        ; preds = %if.end27
  %17 = load i32, ptr %error, align 4, !dbg !252, !tbaa !146
  %call32 = call ptr @src_strerror(i32 noundef %17), !dbg !254
  %call33 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef 106, ptr noundef %call32), !dbg !255
  call void @exit(i32 noundef 1) #8, !dbg !256
  unreachable, !dbg !256

if.end34:                                         ; preds = %if.end27
  %end_of_input35 = getelementptr inbounds %struct.SRC_DATA, ptr %src_data, i32 0, i32 6, !dbg !257
  store i32 1, ptr %end_of_input35, align 8, !dbg !258, !tbaa !184
  %data_in36 = getelementptr inbounds %struct.SRC_DATA, ptr %src_data, i32 0, i32 0, !dbg !259
  store ptr @varispeed_test.input, ptr %data_in36, align 8, !dbg !260, !tbaa !189
  %output_frames_gen37 = getelementptr inbounds %struct.SRC_DATA, ptr %src_data, i32 0, i32 5, !dbg !261
  %18 = load i64, ptr %output_frames_gen37, align 8, !dbg !261, !tbaa !244
  %input_frames38 = getelementptr inbounds %struct.SRC_DATA, ptr %src_data, i32 0, i32 2, !dbg !262
  store i64 %18, ptr %input_frames38, align 8, !dbg !263, !tbaa !193
  %conv39 = trunc i64 %18 to i32, !dbg !264
  store i32 %conv39, ptr %input_len, align 4, !dbg !265, !tbaa !146
  %data_out40 = getelementptr inbounds %struct.SRC_DATA, ptr %src_data, i32 0, i32 1, !dbg !266
  store ptr @varispeed_test.output, ptr %data_out40, align 8, !dbg !267, !tbaa !199
  %output_frames41 = getelementptr inbounds %struct.SRC_DATA, ptr %src_data, i32 0, i32 3, !dbg !268
  store i64 65536, ptr %output_frames41, align 8, !dbg !269, !tbaa !202
  %19 = load ptr, ptr %src_state, align 8, !dbg !270, !tbaa !173
  %src_ratio42 = getelementptr inbounds %struct.SRC_DATA, ptr %src_data, i32 0, i32 7, !dbg !272
  %20 = load double, ptr %src_ratio42, align 8, !dbg !272, !tbaa !196
  %div43 = fdiv double 1.000000e+00, %20, !dbg !273
  %call44 = call i32 @src_set_ratio(ptr noundef %19, double noundef %div43), !dbg !274
  store i32 %call44, ptr %error, align 4, !dbg !275, !tbaa !146
  %tobool45 = icmp ne i32 %call44, 0, !dbg !275
  br i1 %tobool45, label %if.then46, label %if.end49, !dbg !276

if.then46:                                        ; preds = %if.end34
  %21 = load i32, ptr %error, align 4, !dbg !277, !tbaa !146
  %call47 = call ptr @src_strerror(i32 noundef %21), !dbg !279
  %call48 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef 119, ptr noundef %call47), !dbg !280
  call void @exit(i32 noundef 1) #8, !dbg !281
  unreachable, !dbg !281

if.end49:                                         ; preds = %if.end34
  %22 = load ptr, ptr %src_state, align 8, !dbg !282, !tbaa !173
  %call50 = call i32 @src_process(ptr noundef %22, ptr noundef %src_data), !dbg !284
  store i32 %call50, ptr %error, align 4, !dbg !285, !tbaa !146
  %tobool51 = icmp ne i32 %call50, 0, !dbg !285
  br i1 %tobool51, label %if.then52, label %if.end59, !dbg !286

if.then52:                                        ; preds = %if.end49
  %23 = load i32, ptr %error, align 4, !dbg !287, !tbaa !146
  %call53 = call ptr @src_strerror(i32 noundef %23), !dbg !289
  %call54 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef 124, ptr noundef %call53), !dbg !290
  %input_frames55 = getelementptr inbounds %struct.SRC_DATA, ptr %src_data, i32 0, i32 2, !dbg !291
  %24 = load i64, ptr %input_frames55, align 8, !dbg !291, !tbaa !193
  %call56 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i64 noundef %24), !dbg !292
  %output_frames57 = getelementptr inbounds %struct.SRC_DATA, ptr %src_data, i32 0, i32 3, !dbg !293
  %25 = load i64, ptr %output_frames57, align 8, !dbg !293, !tbaa !202
  %call58 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, i64 noundef %25), !dbg !294
  call void @exit(i32 noundef 1) #8, !dbg !295
  unreachable, !dbg !295

if.end59:                                         ; preds = %if.end49
  %input_frames_used60 = getelementptr inbounds %struct.SRC_DATA, ptr %src_data, i32 0, i32 4, !dbg !296
  %26 = load i64, ptr %input_frames_used60, align 8, !dbg !296, !tbaa !231
  %27 = load i32, ptr %input_len, align 4, !dbg !298, !tbaa !146
  %conv61 = sext i32 %27 to i64, !dbg !298
  %cmp62 = icmp ne i64 %26, %conv61, !dbg !299
  br i1 %cmp62, label %if.then64, label %if.end69, !dbg !300

if.then64:                                        ; preds = %if.end59
  %call65 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef 131), !dbg !301
  %28 = load i32, ptr %input_len, align 4, !dbg !303, !tbaa !146
  %call66 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, i32 noundef %28), !dbg !304
  %input_frames_used67 = getelementptr inbounds %struct.SRC_DATA, ptr %src_data, i32 0, i32 4, !dbg !305
  %29 = load i64, ptr %input_frames_used67, align 8, !dbg !305, !tbaa !231
  %call68 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, i64 noundef %29), !dbg !306
  call void @exit(i32 noundef 1) #8, !dbg !307
  unreachable, !dbg !307

if.end69:                                         ; preds = %if.end59
  %30 = load ptr, ptr %src_state, align 8, !dbg !308, !tbaa !173
  %call70 = call ptr @src_delete(ptr noundef %30), !dbg !309
  store ptr %call70, ptr %src_state, align 8, !dbg !310, !tbaa !173
  %output_frames_gen71 = getelementptr inbounds %struct.SRC_DATA, ptr %src_data, i32 0, i32 5, !dbg !311
  %31 = load i64, ptr %output_frames_gen71, align 8, !dbg !311, !tbaa !244
  %conv72 = trunc i64 %31 to i32, !dbg !312
  %call73 = call double @calculate_snr(ptr noundef @varispeed_test.output, i32 noundef %conv72, i32 noundef 1), !dbg !313
  store double %call73, ptr %snr, align 8, !dbg !314, !tbaa !151
  %32 = load double, ptr %target_snr.addr, align 8, !dbg !315, !tbaa !151
  %33 = load double, ptr %snr, align 8, !dbg !317, !tbaa !151
  %cmp74 = fcmp ogt double %32, %33, !dbg !318
  br i1 %cmp74, label %if.then76, label %if.end82, !dbg !319

if.then76:                                        ; preds = %if.end69
  %34 = load double, ptr %snr, align 8, !dbg !320, !tbaa !151
  %35 = load double, ptr %target_snr.addr, align 8, !dbg !322, !tbaa !151
  %call77 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, i32 noundef 142, double noundef %34, double noundef %35), !dbg !323
  %input_frames78 = getelementptr inbounds %struct.SRC_DATA, ptr %src_data, i32 0, i32 2, !dbg !324
  %36 = load i64, ptr %input_frames78, align 8, !dbg !324, !tbaa !193
  %conv79 = trunc i64 %36 to i32, !dbg !325
  %output_frames_gen80 = getelementptr inbounds %struct.SRC_DATA, ptr %src_data, i32 0, i32 5, !dbg !326
  %37 = load i64, ptr %output_frames_gen80, align 8, !dbg !326, !tbaa !244
  %conv81 = trunc i64 %37 to i32, !dbg !327
  call void @save_oct_float(ptr noundef @.str.12, ptr noundef @varispeed_test.input, i32 noundef %conv79, ptr noundef @varispeed_test.output, i32 noundef %conv81), !dbg !328
  call void @exit(i32 noundef 1) #8, !dbg !329
  unreachable, !dbg !329

if.end82:                                         ; preds = %if.end69
  %call83 = call i32 @puts(ptr noundef @.str.13), !dbg !330
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #7, !dbg !331
  call void @llvm.lifetime.end.p0(i64 4, ptr %input_len) #7, !dbg !331
  call void @llvm.lifetime.end.p0(i64 64, ptr %src_data) #7, !dbg !331
  call void @llvm.lifetime.end.p0(i64 8, ptr %src_state) #7, !dbg !331
  call void @llvm.lifetime.end.p0(i64 8, ptr %snr) #7, !dbg !331
  call void @llvm.lifetime.end.p0(i64 8, ptr %sine_freq) #7, !dbg !331
  ret void, !dbg !331
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare !dbg !332 void @gen_windowed_sines(i32 noundef, ptr noundef, double noundef, ptr noundef, i32 noundef) #1

declare !dbg !338 ptr @src_new(i32 noundef, i32 noundef, ptr noundef) #1

declare !dbg !342 ptr @src_strerror(i32 noundef) #1

; Function Attrs: noreturn nounwind
declare !dbg !345 void @exit(i32 noundef) #4

declare !dbg !349 i32 @src_set_ratio(ptr noundef, double noundef) #1

declare !dbg !352 i32 @src_process(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare !dbg !356 void @reverse_data(ptr noundef, i32 noundef) #1

declare !dbg !359 i32 @src_reset(ptr noundef) #1

declare !dbg !362 ptr @src_delete(ptr noundef) #1

declare !dbg !365 double @calculate_snr(ptr noundef, i32 noundef, i32 noundef) #1

declare !dbg !368 void @save_oct_float(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.dbg.cu = !{!23}
!llvm.module.flags = !{!117, !118, !119, !120, !121, !122}
!llvm.ident = !{!123}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 33, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "varispeed_test.c", directory: "/local-ssd/libsamplerate-7ognhrgyu53tdwtmng3bd4pksqnapcxz-build/aidengro/spack-stage-libsamplerate-0.1.9-7ognhrgyu53tdwtmng3bd4pksqnapcxz/spack-src/tests", checksumkind: CSK_MD5, checksum: "a55729da3c68bc5be7db6c650a295550")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 1)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 34, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 39)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 37, type: !9, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 40, type: !9, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "input", scope: !18, file: !2, line: 51, type: !39, isLocal: true, isDefinition: true)
!18 = distinct !DISubprogram(name: "varispeed_test", scope: !2, file: !2, line: 50, type: !19, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !90)
!19 = !DISubroutineType(types: !20)
!20 = !{null, !21, !22}
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!23 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !24, retainedTypes: !34, globals: !36, splitDebugInlining: false, nameTableKind: None)
!24 = !{!25}
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !26, line: 157, baseType: !27, size: 32, elements: !28)
!26 = !DIFile(filename: "../src/samplerate.h", directory: "/local-ssd/libsamplerate-7ognhrgyu53tdwtmng3bd4pksqnapcxz-build/aidengro/spack-stage-libsamplerate-0.1.9-7ognhrgyu53tdwtmng3bd4pksqnapcxz/spack-src/tests", checksumkind: CSK_MD5, checksum: "df663b9c0c4943a64ee8f8faf7c9eb40")
!27 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!28 = !{!29, !30, !31, !32, !33}
!29 = !DIEnumerator(name: "SRC_SINC_BEST_QUALITY", value: 0)
!30 = !DIEnumerator(name: "SRC_SINC_MEDIUM_QUALITY", value: 1)
!31 = !DIEnumerator(name: "SRC_SINC_FASTEST", value: 2)
!32 = !DIEnumerator(name: "SRC_ZERO_ORDER_HOLD", value: 3)
!33 = !DIEnumerator(name: "SRC_LINEAR", value: 4)
!34 = !{!21, !35}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!36 = !{!0, !7, !12, !14, !16, !37, !43, !48, !53, !58, !63, !68, !73, !75, !80, !85}
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "output", scope: !18, file: !2, line: 51, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 2097152, elements: !41)
!40 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!41 = !{!42}
!42 = !DISubrange(count: 65536)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 36)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !2, line: 83, type: !50, isLocal: true, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 17)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !55, isLocal: true, isDefinition: true)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 32)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !2, line: 90, type: !60, isLocal: true, isDefinition: true)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 33)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(scope: null, file: !2, line: 95, type: !65, isLocal: true, isDefinition: true)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 27)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(scope: null, file: !2, line: 96, type: !70, isLocal: true, isDefinition: true)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 25)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(scope: null, file: !2, line: 97, type: !65, isLocal: true, isDefinition: true)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(scope: null, file: !2, line: 142, type: !77, isLocal: true, isDefinition: true)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 440, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 55)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(scope: null, file: !2, line: 143, type: !82, isLocal: true, isDefinition: true)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 14)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(scope: null, file: !2, line: 147, type: !87, isLocal: true, isDefinition: true)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 3)
!90 = !{!91, !92, !93, !94, !95, !99, !115, !116}
!91 = !DILocalVariable(name: "converter", arg: 1, scope: !18, file: !2, line: 50, type: !21)
!92 = !DILocalVariable(name: "target_snr", arg: 2, scope: !18, file: !2, line: 50, type: !22)
!93 = !DILocalVariable(name: "sine_freq", scope: !18, file: !2, line: 52, type: !22)
!94 = !DILocalVariable(name: "snr", scope: !18, file: !2, line: 52, type: !22)
!95 = !DILocalVariable(name: "src_state", scope: !18, file: !2, line: 54, type: !96)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "SRC_STATE", file: !26, line: 23, baseType: !98)
!98 = !DICompositeType(tag: DW_TAG_structure_type, name: "SRC_STATE_tag", file: !26, line: 23, flags: DIFlagFwdDecl)
!99 = !DILocalVariable(name: "src_data", scope: !18, file: !2, line: 55, type: !100)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "SRC_DATA", file: !26, line: 36, baseType: !101)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !26, line: 26, size: 512, elements: !102)
!102 = !{!103, !106, !108, !110, !111, !112, !113, !114}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "data_in", scope: !101, file: !26, line: 27, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "data_out", scope: !101, file: !26, line: 28, baseType: !107, size: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "input_frames", scope: !101, file: !26, line: 30, baseType: !109, size: 64, offset: 128)
!109 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "output_frames", scope: !101, file: !26, line: 30, baseType: !109, size: 64, offset: 192)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "input_frames_used", scope: !101, file: !26, line: 31, baseType: !109, size: 64, offset: 256)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "output_frames_gen", scope: !101, file: !26, line: 31, baseType: !109, size: 64, offset: 320)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "end_of_input", scope: !101, file: !26, line: 33, baseType: !21, size: 32, offset: 384)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "src_ratio", scope: !101, file: !26, line: 35, baseType: !22, size: 64, offset: 448)
!115 = !DILocalVariable(name: "input_len", scope: !18, file: !2, line: 57, type: !21)
!116 = !DILocalVariable(name: "error", scope: !18, file: !2, line: 57, type: !21)
!117 = !{i32 7, !"Dwarf Version", i32 5}
!118 = !{i32 2, !"Debug Info Version", i32 3}
!119 = !{i32 1, !"wchar_size", i32 4}
!120 = !{i32 8, !"PIC Level", i32 2}
!121 = !{i32 7, !"PIE Level", i32 2}
!122 = !{i32 7, !"uwtable", i32 2}
!123 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!124 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 31, type: !125, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23)
!125 = !DISubroutineType(types: !126)
!126 = !{!21}
!127 = !DILocation(line: 33, column: 2, scope: !124)
!128 = !DILocation(line: 34, column: 2, scope: !124)
!129 = !DILocation(line: 35, column: 2, scope: !124)
!130 = !DILocation(line: 37, column: 2, scope: !124)
!131 = !DILocation(line: 38, column: 2, scope: !124)
!132 = !DILocation(line: 40, column: 2, scope: !124)
!133 = !DILocation(line: 41, column: 2, scope: !124)
!134 = !DILocation(line: 44, column: 2, scope: !124)
!135 = !DILocation(line: 46, column: 2, scope: !124)
!136 = !DISubprogram(name: "puts", scope: !137, file: !137, line: 661, type: !138, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!137 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!138 = !DISubroutineType(types: !139)
!139 = !{!21, !140}
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!142 = !DISubprogram(name: "printf", scope: !137, file: !137, line: 356, type: !143, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!143 = !DISubroutineType(types: !144)
!144 = !{!21, !145, null}
!145 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !140)
!146 = !{!147, !147, i64 0}
!147 = !{!"int", !148, i64 0}
!148 = !{!"omnipotent char", !149, i64 0}
!149 = !{!"Simple C/C++ TBAA"}
!150 = !DILocation(line: 50, column: 21, scope: !18)
!151 = !{!152, !152, i64 0}
!152 = !{!"double", !148, i64 0}
!153 = !DILocation(line: 50, column: 39, scope: !18)
!154 = !DILocation(line: 52, column: 2, scope: !18)
!155 = !DILocation(line: 52, column: 9, scope: !18)
!156 = !DILocation(line: 52, column: 20, scope: !18)
!157 = !DILocation(line: 54, column: 2, scope: !18)
!158 = !DILocation(line: 54, column: 13, scope: !18)
!159 = !DILocation(line: 55, column: 2, scope: !18)
!160 = !DILocation(line: 55, column: 11, scope: !18)
!161 = !DILocation(line: 57, column: 2, scope: !18)
!162 = !DILocation(line: 57, column: 6, scope: !18)
!163 = !DILocation(line: 57, column: 17, scope: !18)
!164 = !DILocation(line: 59, column: 2, scope: !18)
!165 = !DILocation(line: 61, column: 12, scope: !18)
!166 = !DILocation(line: 63, column: 12, scope: !18)
!167 = !DILocation(line: 64, column: 49, scope: !18)
!168 = !DILocation(line: 64, column: 2, scope: !18)
!169 = !DILocation(line: 67, column: 28, scope: !170)
!170 = distinct !DILexicalBlock(scope: !18, file: !2, line: 67, column: 6)
!171 = !DILocation(line: 67, column: 19, scope: !170)
!172 = !DILocation(line: 67, column: 17, scope: !170)
!173 = !{!174, !174, i64 0}
!174 = !{!"any pointer", !148, i64 0}
!175 = !DILocation(line: 67, column: 51, scope: !170)
!176 = !DILocation(line: 67, column: 6, scope: !18)
!177 = !DILocation(line: 68, column: 79, scope: !178)
!178 = distinct !DILexicalBlock(scope: !170, file: !2, line: 68, column: 2)
!179 = !DILocation(line: 68, column: 65, scope: !178)
!180 = !DILocation(line: 68, column: 4, scope: !178)
!181 = !DILocation(line: 69, column: 3, scope: !178)
!182 = !DILocation(line: 72, column: 11, scope: !18)
!183 = !DILocation(line: 72, column: 24, scope: !18)
!184 = !{!185, !147, i64 48}
!185 = !{!"", !174, i64 0, !174, i64 8, !186, i64 16, !186, i64 24, !186, i64 32, !186, i64 40, !147, i64 48, !152, i64 56}
!186 = !{!"long", !148, i64 0}
!187 = !DILocation(line: 74, column: 11, scope: !18)
!188 = !DILocation(line: 74, column: 19, scope: !18)
!189 = !{!185, !174, i64 0}
!190 = !DILocation(line: 75, column: 26, scope: !18)
!191 = !DILocation(line: 75, column: 11, scope: !18)
!192 = !DILocation(line: 75, column: 24, scope: !18)
!193 = !{!185, !186, i64 16}
!194 = !DILocation(line: 77, column: 11, scope: !18)
!195 = !DILocation(line: 77, column: 21, scope: !18)
!196 = !{!185, !152, i64 56}
!197 = !DILocation(line: 79, column: 11, scope: !18)
!198 = !DILocation(line: 79, column: 20, scope: !18)
!199 = !{!185, !174, i64 8}
!200 = !DILocation(line: 80, column: 11, scope: !18)
!201 = !DILocation(line: 80, column: 25, scope: !18)
!202 = !{!185, !186, i64 24}
!203 = !DILocation(line: 82, column: 30, scope: !204)
!204 = distinct !DILexicalBlock(scope: !18, file: !2, line: 82, column: 6)
!205 = !DILocation(line: 82, column: 56, scope: !204)
!206 = !DILocation(line: 82, column: 45, scope: !204)
!207 = !DILocation(line: 82, column: 15, scope: !204)
!208 = !DILocation(line: 82, column: 13, scope: !204)
!209 = !DILocation(line: 82, column: 6, scope: !18)
!210 = !DILocation(line: 83, column: 60, scope: !211)
!211 = distinct !DILexicalBlock(scope: !204, file: !2, line: 83, column: 2)
!212 = !DILocation(line: 83, column: 46, scope: !211)
!213 = !DILocation(line: 83, column: 4, scope: !211)
!214 = !DILocation(line: 84, column: 3, scope: !211)
!215 = !DILocation(line: 87, column: 28, scope: !216)
!216 = distinct !DILexicalBlock(scope: !18, file: !2, line: 87, column: 6)
!217 = !DILocation(line: 87, column: 15, scope: !216)
!218 = !DILocation(line: 87, column: 13, scope: !216)
!219 = !DILocation(line: 87, column: 6, scope: !18)
!220 = !DILocation(line: 88, column: 60, scope: !221)
!221 = distinct !DILexicalBlock(scope: !216, file: !2, line: 88, column: 2)
!222 = !DILocation(line: 88, column: 46, scope: !221)
!223 = !DILocation(line: 88, column: 4, scope: !221)
!224 = !DILocation(line: 89, column: 56, scope: !221)
!225 = !DILocation(line: 89, column: 3, scope: !221)
!226 = !DILocation(line: 90, column: 58, scope: !221)
!227 = !DILocation(line: 90, column: 3, scope: !221)
!228 = !DILocation(line: 91, column: 3, scope: !221)
!229 = !DILocation(line: 94, column: 15, scope: !230)
!230 = distinct !DILexicalBlock(scope: !18, file: !2, line: 94, column: 6)
!231 = !{!185, !186, i64 32}
!232 = !DILocation(line: 94, column: 36, scope: !230)
!233 = !DILocation(line: 94, column: 33, scope: !230)
!234 = !DILocation(line: 94, column: 6, scope: !18)
!235 = !DILocation(line: 95, column: 4, scope: !236)
!236 = distinct !DILexicalBlock(scope: !230, file: !2, line: 95, column: 2)
!237 = !DILocation(line: 96, column: 41, scope: !236)
!238 = !DILocation(line: 96, column: 3, scope: !236)
!239 = !DILocation(line: 97, column: 53, scope: !236)
!240 = !DILocation(line: 97, column: 3, scope: !236)
!241 = !DILocation(line: 98, column: 3, scope: !236)
!242 = !DILocation(line: 102, column: 2, scope: !18)
!243 = !DILocation(line: 103, column: 32, scope: !18)
!244 = !{!185, !186, i64 40}
!245 = !DILocation(line: 103, column: 23, scope: !18)
!246 = !DILocation(line: 103, column: 2, scope: !18)
!247 = !DILocation(line: 105, column: 26, scope: !248)
!248 = distinct !DILexicalBlock(scope: !18, file: !2, line: 105, column: 6)
!249 = !DILocation(line: 105, column: 15, scope: !248)
!250 = !DILocation(line: 105, column: 13, scope: !248)
!251 = !DILocation(line: 105, column: 6, scope: !18)
!252 = !DILocation(line: 106, column: 60, scope: !253)
!253 = distinct !DILexicalBlock(scope: !248, file: !2, line: 106, column: 2)
!254 = !DILocation(line: 106, column: 46, scope: !253)
!255 = !DILocation(line: 106, column: 4, scope: !253)
!256 = !DILocation(line: 107, column: 3, scope: !253)
!257 = !DILocation(line: 110, column: 11, scope: !18)
!258 = !DILocation(line: 110, column: 24, scope: !18)
!259 = !DILocation(line: 112, column: 11, scope: !18)
!260 = !DILocation(line: 112, column: 19, scope: !18)
!261 = !DILocation(line: 113, column: 47, scope: !18)
!262 = !DILocation(line: 113, column: 23, scope: !18)
!263 = !DILocation(line: 113, column: 36, scope: !18)
!264 = !DILocation(line: 113, column: 14, scope: !18)
!265 = !DILocation(line: 113, column: 12, scope: !18)
!266 = !DILocation(line: 115, column: 11, scope: !18)
!267 = !DILocation(line: 115, column: 20, scope: !18)
!268 = !DILocation(line: 116, column: 11, scope: !18)
!269 = !DILocation(line: 116, column: 25, scope: !18)
!270 = !DILocation(line: 118, column: 30, scope: !271)
!271 = distinct !DILexicalBlock(scope: !18, file: !2, line: 118, column: 6)
!272 = !DILocation(line: 118, column: 56, scope: !271)
!273 = !DILocation(line: 118, column: 45, scope: !271)
!274 = !DILocation(line: 118, column: 15, scope: !271)
!275 = !DILocation(line: 118, column: 13, scope: !271)
!276 = !DILocation(line: 118, column: 6, scope: !18)
!277 = !DILocation(line: 119, column: 60, scope: !278)
!278 = distinct !DILexicalBlock(scope: !271, file: !2, line: 119, column: 2)
!279 = !DILocation(line: 119, column: 46, scope: !278)
!280 = !DILocation(line: 119, column: 4, scope: !278)
!281 = !DILocation(line: 120, column: 3, scope: !278)
!282 = !DILocation(line: 123, column: 28, scope: !283)
!283 = distinct !DILexicalBlock(scope: !18, file: !2, line: 123, column: 6)
!284 = !DILocation(line: 123, column: 15, scope: !283)
!285 = !DILocation(line: 123, column: 13, scope: !283)
!286 = !DILocation(line: 123, column: 6, scope: !18)
!287 = !DILocation(line: 124, column: 60, scope: !288)
!288 = distinct !DILexicalBlock(scope: !283, file: !2, line: 124, column: 2)
!289 = !DILocation(line: 124, column: 46, scope: !288)
!290 = !DILocation(line: 124, column: 4, scope: !288)
!291 = !DILocation(line: 125, column: 56, scope: !288)
!292 = !DILocation(line: 125, column: 3, scope: !288)
!293 = !DILocation(line: 126, column: 58, scope: !288)
!294 = !DILocation(line: 126, column: 3, scope: !288)
!295 = !DILocation(line: 127, column: 3, scope: !288)
!296 = !DILocation(line: 130, column: 15, scope: !297)
!297 = distinct !DILexicalBlock(scope: !18, file: !2, line: 130, column: 6)
!298 = !DILocation(line: 130, column: 36, scope: !297)
!299 = !DILocation(line: 130, column: 33, scope: !297)
!300 = !DILocation(line: 130, column: 6, scope: !18)
!301 = !DILocation(line: 131, column: 4, scope: !302)
!302 = distinct !DILexicalBlock(scope: !297, file: !2, line: 131, column: 2)
!303 = !DILocation(line: 132, column: 41, scope: !302)
!304 = !DILocation(line: 132, column: 3, scope: !302)
!305 = !DILocation(line: 133, column: 53, scope: !302)
!306 = !DILocation(line: 133, column: 3, scope: !302)
!307 = !DILocation(line: 134, column: 3, scope: !302)
!308 = !DILocation(line: 137, column: 26, scope: !18)
!309 = !DILocation(line: 137, column: 14, scope: !18)
!310 = !DILocation(line: 137, column: 12, scope: !18)
!311 = !DILocation(line: 139, column: 40, scope: !18)
!312 = !DILocation(line: 139, column: 31, scope: !18)
!313 = !DILocation(line: 139, column: 8, scope: !18)
!314 = !DILocation(line: 139, column: 6, scope: !18)
!315 = !DILocation(line: 141, column: 6, scope: !316)
!316 = distinct !DILexicalBlock(scope: !18, file: !2, line: 141, column: 6)
!317 = !DILocation(line: 141, column: 19, scope: !316)
!318 = !DILocation(line: 141, column: 17, scope: !316)
!319 = !DILocation(line: 141, column: 6, scope: !18)
!320 = !DILocation(line: 142, column: 84, scope: !321)
!321 = distinct !DILexicalBlock(scope: !316, file: !2, line: 142, column: 2)
!322 = !DILocation(line: 142, column: 89, scope: !321)
!323 = !DILocation(line: 142, column: 4, scope: !321)
!324 = !DILocation(line: 143, column: 52, scope: !321)
!325 = !DILocation(line: 143, column: 43, scope: !321)
!326 = !DILocation(line: 143, column: 83, scope: !321)
!327 = !DILocation(line: 143, column: 74, scope: !321)
!328 = !DILocation(line: 143, column: 3, scope: !321)
!329 = !DILocation(line: 144, column: 3, scope: !321)
!330 = !DILocation(line: 147, column: 2, scope: !18)
!331 = !DILocation(line: 150, column: 1, scope: !18)
!332 = !DISubprogram(name: "gen_windowed_sines", scope: !333, file: !333, line: 15, type: !334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!333 = !DIFile(filename: "./util.h", directory: "/local-ssd/libsamplerate-7ognhrgyu53tdwtmng3bd4pksqnapcxz-build/aidengro/spack-stage-libsamplerate-0.1.9-7ognhrgyu53tdwtmng3bd4pksqnapcxz/spack-src/tests", checksumkind: CSK_MD5, checksum: "d60f5e92463fffe345baf27ff618503d")
!334 = !DISubroutineType(types: !335)
!335 = !{null, !21, !336, !22, !107, !21}
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!338 = !DISubprogram(name: "src_new", scope: !26, file: !26, line: 55, type: !339, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!339 = !DISubroutineType(types: !340)
!340 = !{!96, !21, !21, !341}
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!342 = !DISubprogram(name: "src_strerror", scope: !26, file: !26, line: 150, type: !343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!343 = !DISubroutineType(types: !344)
!344 = !{!140, !21}
!345 = !DISubprogram(name: "exit", scope: !346, file: !346, line: 624, type: !347, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!346 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!347 = !DISubroutineType(types: !348)
!348 = !{null, !21}
!349 = !DISubprogram(name: "src_set_ratio", scope: !26, file: !26, line: 116, type: !350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!350 = !DISubroutineType(types: !351)
!351 = !{!21, !96, !22}
!352 = !DISubprogram(name: "src_process", scope: !26, file: !26, line: 80, type: !353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!353 = !DISubroutineType(types: !354)
!354 = !{!21, !96, !355}
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!356 = !DISubprogram(name: "reverse_data", scope: !333, file: !333, line: 24, type: !357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !107, !21}
!359 = !DISubprogram(name: "src_reset", scope: !26, file: !26, line: 132, type: !360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!360 = !DISubroutineType(types: !361)
!361 = !{!21, !96}
!362 = !DISubprogram(name: "src_delete", scope: !26, file: !26, line: 73, type: !363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!363 = !DISubroutineType(types: !364)
!364 = !{!96, !96}
!365 = !DISubprogram(name: "calculate_snr", scope: !333, file: !333, line: 26, type: !366, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!366 = !DISubroutineType(types: !367)
!367 = !{!22, !107, !21, !21}
!368 = !DISubprogram(name: "save_oct_float", scope: !333, file: !333, line: 17, type: !369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !371, !107, !21, !107, !21}
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)

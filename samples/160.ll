; ModuleID = 'samples/160.bc'
source_filename = "quo-time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ompi_predefined_communicator_t = type opaque
%struct.ompi_predefined_datatype_t = type opaque
%struct.experiment_t = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.context_t = type { i32, i32, i8, ptr }

@.str = private unnamed_addr constant [5 x i8] c"init\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [34 x i8] c"### Starting QUO Timing Tests...\0A\00", align 1, !dbg !7
@stdout = external global ptr, align 8
@main.n_trials = internal constant i32 100, align 4, !dbg !12
@.str.2 = private unnamed_addr constant [11 x i8] c"QUO_create\00", align 1, !dbg !59
@.str.3 = private unnamed_addr constant [9 x i8] c"QUO_free\00", align 1, !dbg !64
@.str.4 = private unnamed_addr constant [9 x i8] c"QUO_npus\00", align 1, !dbg !69
@.str.5 = private unnamed_addr constant [17 x i8] c"QUO_qids_in_type\00", align 1, !dbg !71
@.str.6 = private unnamed_addr constant [14 x i8] c"QUO_bind_push\00", align 1, !dbg !76
@.str.7 = private unnamed_addr constant [13 x i8] c"QUO_bind_pop\00", align 1, !dbg !81
@.str.8 = private unnamed_addr constant [17 x i8] c"QUO_auto_distrib\00", align 1, !dbg !86
@.str.9 = private unnamed_addr constant [12 x i8] c"QUO_barrier\00", align 1, !dbg !88
@stderr = external global ptr, align 8
@.str.10 = private unnamed_addr constant [23 x i8] c"XXX %s failure in: %s\0A\00", align 1, !dbg !93
@.str.11 = private unnamed_addr constant [11 x i8] c"quo-time.c\00", align 1, !dbg !98
@ompi_mpi_comm_world = external global %struct.ompi_predefined_communicator_t, align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"### NPUS: %d\0A\00", align 1, !dbg !100
@.str.13 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1, !dbg !102
@.str.14 = private unnamed_addr constant [11 x i8] c"emit_stats\00", align 1, !dbg !107
@.str.15 = private unnamed_addr constant [12 x i8] c"%s failed!\0A\00", align 1, !dbg !109
@ompi_mpi_double = external global %struct.ompi_predefined_datatype_t, align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"NUMPE : %d\0A\00", align 1, !dbg !111
@.str.17 = private unnamed_addr constant [16 x i8] c"Test Name : %s\0A\00", align 1, !dbg !113
@.str.18 = private unnamed_addr constant [24 x i8] c"Number of Entries : %d\0A\00", align 1, !dbg !118
@.str.19 = private unnamed_addr constant [28 x i8] c"Average Time (us) : %.10lf\0A\00", align 1, !dbg !123
@.str.20 = private unnamed_addr constant [34 x i8] c"Standard Deviation (us) : %.10lf\0A\00", align 1, !dbg !128
@.str.21 = private unnamed_addr constant [39 x i8] c"Standard Error of Mean (us) : %.10lf\0A\0A\00", align 1, !dbg !130

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !14 {
entry:
  %retval = alloca i32, align 4
  %erc = alloca i32, align 4
  %bad_func = alloca ptr, align 8
  %context = alloca ptr, align 8
  %experiments = alloca [8 x %struct.experiment_t], align 16
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %erc) #7, !dbg !181
  tail call void @llvm.dbg.declare(metadata ptr %erc, metadata !136, metadata !DIExpression()), !dbg !182
  store i32 0, ptr %erc, align 4, !dbg !182, !tbaa !183
  call void @llvm.lifetime.start.p0(i64 8, ptr %bad_func) #7, !dbg !187
  tail call void @llvm.dbg.declare(metadata ptr %bad_func, metadata !137, metadata !DIExpression()), !dbg !188
  store ptr null, ptr %bad_func, align 8, !dbg !188, !tbaa !189
  call void @llvm.lifetime.start.p0(i64 8, ptr %context) #7, !dbg !191
  tail call void @llvm.dbg.declare(metadata ptr %context, metadata !139, metadata !DIExpression()), !dbg !192
  store ptr null, ptr %context, align 8, !dbg !192, !tbaa !189
  %call = call i32 @init(ptr noundef %context), !dbg !193
  %tobool = icmp ne i32 %call, 0, !dbg !193
  br i1 %tobool, label %if.then, label %if.end, !dbg !195

if.then:                                          ; preds = %entry
  store ptr @.str, ptr %bad_func, align 8, !dbg !196, !tbaa !189
  br label %out, !dbg !198

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %context, align 8, !dbg !199, !tbaa !189
  %rank = getelementptr inbounds %struct.context_t, ptr %0, i32 0, i32 0, !dbg !201
  %1 = load i32, ptr %rank, align 8, !dbg !201, !tbaa !202
  %cmp = icmp eq i32 0, %1, !dbg !205
  br i1 %cmp, label %if.then1, label %if.end4, !dbg !206

if.then1:                                         ; preds = %if.end
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.1), !dbg !207
  %2 = load ptr, ptr @stdout, align 8, !dbg !209, !tbaa !189
  %call3 = call i32 @fflush(ptr noundef %2), !dbg !210
  br label %if.end4, !dbg !211

if.end4:                                          ; preds = %if.then1, %if.end
  %3 = load ptr, ptr %context, align 8, !dbg !212, !tbaa !189
  call void @demo_emit_sync(ptr noundef %3), !dbg !213
  tail call void @llvm.dbg.declare(metadata ptr %experiments, metadata !153, metadata !DIExpression()), !dbg !214
  %arrayinit.begin = getelementptr inbounds [8 x %struct.experiment_t], ptr %experiments, i64 0, i64 0, !dbg !215
  %c = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.begin, i32 0, i32 0, !dbg !216
  %4 = load ptr, ptr %context, align 8, !dbg !217, !tbaa !189
  store ptr %4, ptr %c, align 8, !dbg !216, !tbaa !218
  %name = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.begin, i32 0, i32 1, !dbg !216
  store ptr @.str.2, ptr %name, align 8, !dbg !216, !tbaa !220
  %fun = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.begin, i32 0, i32 2, !dbg !216
  store ptr @qcreate, ptr %fun, align 8, !dbg !216, !tbaa !221
  %n_trials = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.begin, i32 0, i32 3, !dbg !216
  store i32 100, ptr %n_trials, align 8, !dbg !216, !tbaa !222
  %res_len = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.begin, i32 0, i32 4, !dbg !216
  store i32 0, ptr %res_len, align 4, !dbg !216, !tbaa !223
  %results = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.begin, i32 0, i32 5, !dbg !216
  store ptr null, ptr %results, align 8, !dbg !216, !tbaa !224
  %arrayinit.element = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.begin, i64 1, !dbg !215
  %c5 = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.element, i32 0, i32 0, !dbg !225
  %5 = load ptr, ptr %context, align 8, !dbg !226, !tbaa !189
  store ptr %5, ptr %c5, align 8, !dbg !225, !tbaa !218
  %name6 = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.element, i32 0, i32 1, !dbg !225
  store ptr @.str.3, ptr %name6, align 8, !dbg !225, !tbaa !220
  %fun7 = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.element, i32 0, i32 2, !dbg !225
  store ptr @qfree, ptr %fun7, align 8, !dbg !225, !tbaa !221
  %n_trials8 = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.element, i32 0, i32 3, !dbg !225
  store i32 100, ptr %n_trials8, align 8, !dbg !225, !tbaa !222
  %res_len9 = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.element, i32 0, i32 4, !dbg !225
  store i32 0, ptr %res_len9, align 4, !dbg !225, !tbaa !223
  %results10 = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.element, i32 0, i32 5, !dbg !225
  store ptr null, ptr %results10, align 8, !dbg !225, !tbaa !224
  %arrayinit.element11 = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.element, i64 1, !dbg !215
  %c12 = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.element11, i32 0, i32 0, !dbg !227
  %6 = load ptr, ptr %context, align 8, !dbg !228, !tbaa !189
  store ptr %6, ptr %c12, align 8, !dbg !227, !tbaa !218
  %name13 = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.element11, i32 0, i32 1, !dbg !227
  store ptr @.str.4, ptr %name13, align 8, !dbg !227, !tbaa !220
  %fun14 = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.element11, i32 0, i32 2, !dbg !227
  store ptr @qnpus, ptr %fun14, align 8, !dbg !227, !tbaa !221
  %n_trials15 = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.element11, i32 0, i32 3, !dbg !227
  store i32 100, ptr %n_trials15, align 8, !dbg !227, !tbaa !222
  %res_len16 = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.element11, i32 0, i32 4, !dbg !227
  store i32 0, ptr %res_len16, align 4, !dbg !227, !tbaa !223
  %results17 = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.element11, i32 0, i32 5, !dbg !227
  store ptr null, ptr %results17, align 8, !dbg !227, !tbaa !224
  %arrayinit.element18 = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.element11, i64 1, !dbg !215
  %c19 = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.element18, i32 0, i32 0, !dbg !229
  %7 = load ptr, ptr %context, align 8, !dbg !230, !tbaa !189
  store ptr %7, ptr %c19, align 8, !dbg !229, !tbaa !218
  %name20 = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.element18, i32 0, i32 1, !dbg !229
  store ptr @.str.5, ptr %name20, align 8, !dbg !229, !tbaa !220
  %fun21 = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.element18, i32 0, i32 2, !dbg !229
  store ptr @qquids_in_type, ptr %fun21, align 8, !dbg !229, !tbaa !221
  %n_trials22 = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.element18, i32 0, i32 3, !dbg !229
  store i32 100, ptr %n_trials22, align 8, !dbg !229, !tbaa !222
  %res_len23 = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.element18, i32 0, i32 4, !dbg !229
  store i32 0, ptr %res_len23, align 4, !dbg !229, !tbaa !223
  %results24 = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.element18, i32 0, i32 5, !dbg !229
  store ptr null, ptr %results24, align 8, !dbg !229, !tbaa !224
  %arrayinit.element25 = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.element18, i64 1, !dbg !215
  %c26 = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.element25, i32 0, i32 0, !dbg !231
  %8 = load ptr, ptr %context, align 8, !dbg !232, !tbaa !189
  store ptr %8, ptr %c26, align 8, !dbg !231, !tbaa !218
  %name27 = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.element25, i32 0, i32 1, !dbg !231
  store ptr @.str.6, ptr %name27, align 8, !dbg !231, !tbaa !220
  %fun28 = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.element25, i32 0, i32 2, !dbg !231
  store ptr @qbind_push, ptr %fun28, align 8, !dbg !231, !tbaa !221
  %n_trials29 = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.element25, i32 0, i32 3, !dbg !231
  store i32 100, ptr %n_trials29, align 8, !dbg !231, !tbaa !222
  %res_len30 = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.element25, i32 0, i32 4, !dbg !231
  store i32 0, ptr %res_len30, align 4, !dbg !231, !tbaa !223
  %results31 = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.element25, i32 0, i32 5, !dbg !231
  store ptr null, ptr %results31, align 8, !dbg !231, !tbaa !224
  %arrayinit.element32 = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.element25, i64 1, !dbg !215
  %c33 = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.element32, i32 0, i32 0, !dbg !233
  %9 = load ptr, ptr %context, align 8, !dbg !234, !tbaa !189
  store ptr %9, ptr %c33, align 8, !dbg !233, !tbaa !218
  %name34 = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.element32, i32 0, i32 1, !dbg !233
  store ptr @.str.7, ptr %name34, align 8, !dbg !233, !tbaa !220
  %fun35 = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.element32, i32 0, i32 2, !dbg !233
  store ptr @qbind_pop, ptr %fun35, align 8, !dbg !233, !tbaa !221
  %n_trials36 = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.element32, i32 0, i32 3, !dbg !233
  store i32 100, ptr %n_trials36, align 8, !dbg !233, !tbaa !222
  %res_len37 = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.element32, i32 0, i32 4, !dbg !233
  store i32 0, ptr %res_len37, align 4, !dbg !233, !tbaa !223
  %results38 = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.element32, i32 0, i32 5, !dbg !233
  store ptr null, ptr %results38, align 8, !dbg !233, !tbaa !224
  %arrayinit.element39 = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.element32, i64 1, !dbg !215
  %c40 = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.element39, i32 0, i32 0, !dbg !235
  %10 = load ptr, ptr %context, align 8, !dbg !236, !tbaa !189
  store ptr %10, ptr %c40, align 8, !dbg !235, !tbaa !218
  %name41 = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.element39, i32 0, i32 1, !dbg !235
  store ptr @.str.8, ptr %name41, align 8, !dbg !235, !tbaa !220
  %fun42 = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.element39, i32 0, i32 2, !dbg !235
  store ptr @qauto_distrib, ptr %fun42, align 8, !dbg !235, !tbaa !221
  %n_trials43 = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.element39, i32 0, i32 3, !dbg !235
  store i32 100, ptr %n_trials43, align 8, !dbg !235, !tbaa !222
  %res_len44 = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.element39, i32 0, i32 4, !dbg !235
  store i32 0, ptr %res_len44, align 4, !dbg !235, !tbaa !223
  %results45 = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.element39, i32 0, i32 5, !dbg !235
  store ptr null, ptr %results45, align 8, !dbg !235, !tbaa !224
  %arrayinit.element46 = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.element39, i64 1, !dbg !215
  %c47 = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.element46, i32 0, i32 0, !dbg !237
  %11 = load ptr, ptr %context, align 8, !dbg !238, !tbaa !189
  store ptr %11, ptr %c47, align 8, !dbg !237, !tbaa !218
  %name48 = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.element46, i32 0, i32 1, !dbg !237
  store ptr @.str.9, ptr %name48, align 8, !dbg !237, !tbaa !220
  %fun49 = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.element46, i32 0, i32 2, !dbg !237
  store ptr @qbarrier, ptr %fun49, align 8, !dbg !237, !tbaa !221
  %n_trials50 = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.element46, i32 0, i32 3, !dbg !237
  store i32 100, ptr %n_trials50, align 8, !dbg !237, !tbaa !222
  %res_len51 = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.element46, i32 0, i32 4, !dbg !237
  store i32 0, ptr %res_len51, align 4, !dbg !237, !tbaa !223
  %results52 = getelementptr inbounds %struct.experiment_t, ptr %arrayinit.element46, i32 0, i32 5, !dbg !237
  store ptr null, ptr %results52, align 8, !dbg !237, !tbaa !224
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !239
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !170, metadata !DIExpression()), !dbg !240
  store i32 0, ptr %i, align 4, !dbg !240, !tbaa !183
  br label %for.cond, !dbg !239

for.cond:                                         ; preds = %for.inc, %if.end4
  %12 = load i32, ptr %i, align 4, !dbg !241, !tbaa !183
  %conv = zext i32 %12 to i64, !dbg !241
  %cmp53 = icmp ult i64 %conv, 8, !dbg !243
  br i1 %cmp53, label %for.body, label %for.cond.cleanup, !dbg !244

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !245
  br label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, ptr %i, align 4, !dbg !246, !tbaa !183
  %idxprom = zext i32 %13 to i64, !dbg !248
  %arrayidx = getelementptr inbounds [8 x %struct.experiment_t], ptr %experiments, i64 0, i64 %idxprom, !dbg !248
  %call55 = call i32 @run_experiment(ptr noundef %arrayidx), !dbg !249
  br label %for.inc, !dbg !250

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4, !dbg !251, !tbaa !183
  %inc = add i32 %14, 1, !dbg !251
  store i32 %inc, ptr %i, align 4, !dbg !251, !tbaa !183
  br label %for.cond, !dbg !245, !llvm.loop !252

for.end:                                          ; preds = %for.cond.cleanup
  br label %out, !dbg !253

out:                                              ; preds = %for.end, %if.then
  tail call void @llvm.dbg.label(metadata !172), !dbg !255
  %15 = load ptr, ptr %bad_func, align 8, !dbg !256, !tbaa !189
  %cmp56 = icmp ne ptr null, %15, !dbg !258
  br i1 %cmp56, label %if.then58, label %if.end60, !dbg !259

if.then58:                                        ; preds = %out
  %16 = load ptr, ptr @stderr, align 8, !dbg !260, !tbaa !189
  %17 = load ptr, ptr %bad_func, align 8, !dbg !262, !tbaa !189
  %call59 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.10, ptr noundef @.str.11, ptr noundef %17), !dbg !263
  store i32 1, ptr %erc, align 4, !dbg !264, !tbaa !183
  br label %if.end60, !dbg !265

if.end60:                                         ; preds = %if.then58, %out
  %18 = load ptr, ptr %context, align 8, !dbg !266, !tbaa !189
  %call61 = call i32 @fini(ptr noundef %18), !dbg !267
  %19 = load i32, ptr %erc, align 4, !dbg !268, !tbaa !183
  call void @llvm.lifetime.end.p0(i64 8, ptr %context) #7, !dbg !269
  call void @llvm.lifetime.end.p0(i64 8, ptr %bad_func) #7, !dbg !269
  call void @llvm.lifetime.end.p0(i64 4, ptr %erc) #7, !dbg !269
  ret i32 %19, !dbg !270
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @init(ptr noundef %c) #0 !dbg !271 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca ptr, align 8
  %newc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %c, ptr %c.addr, align 8, !tbaa !189
  tail call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !276, metadata !DIExpression()), !dbg !279
  call void @llvm.lifetime.start.p0(i64 8, ptr %newc) #7, !dbg !280
  tail call void @llvm.dbg.declare(metadata ptr %newc, metadata !277, metadata !DIExpression()), !dbg !281
  store ptr null, ptr %newc, align 8, !dbg !281, !tbaa !189
  %call = call noalias ptr @calloc(i64 noundef 1, i64 noundef 24) #8, !dbg !282
  store ptr %call, ptr %newc, align 8, !dbg !284, !tbaa !189
  %cmp = icmp eq ptr null, %call, !dbg !285
  br i1 %cmp, label %if.then, label %if.end, !dbg !286

if.then:                                          ; preds = %entry
  br label %err, !dbg !287

if.end:                                           ; preds = %entry
  %call1 = call i32 @MPI_Init(ptr noundef null, ptr noundef null), !dbg !288
  %cmp2 = icmp ne i32 0, %call1, !dbg !290
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !291

if.then3:                                         ; preds = %if.end
  br label %err, !dbg !292

if.end4:                                          ; preds = %if.end
  %0 = load ptr, ptr %newc, align 8, !dbg !293, !tbaa !189
  %nranks = getelementptr inbounds %struct.context_t, ptr %0, i32 0, i32 1, !dbg !295
  %call5 = call i32 @MPI_Comm_size(ptr noundef @ompi_mpi_comm_world, ptr noundef %nranks), !dbg !296
  %cmp6 = icmp ne i32 0, %call5, !dbg !297
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !298

if.then7:                                         ; preds = %if.end4
  br label %err, !dbg !299

if.end8:                                          ; preds = %if.end4
  %1 = load ptr, ptr %newc, align 8, !dbg !300, !tbaa !189
  %rank = getelementptr inbounds %struct.context_t, ptr %1, i32 0, i32 0, !dbg !302
  %call9 = call i32 @MPI_Comm_rank(ptr noundef @ompi_mpi_comm_world, ptr noundef %rank), !dbg !303
  %cmp10 = icmp ne i32 0, %call9, !dbg !304
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !305

if.then11:                                        ; preds = %if.end8
  br label %err, !dbg !306

if.end12:                                         ; preds = %if.end8
  %2 = load ptr, ptr %newc, align 8, !dbg !307, !tbaa !189
  %quo = getelementptr inbounds %struct.context_t, ptr %2, i32 0, i32 3, !dbg !309
  %call13 = call i32 @QUO_create(ptr noundef %quo, ptr noundef @ompi_mpi_comm_world), !dbg !310
  %cmp14 = icmp ne i32 0, %call13, !dbg !311
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !312

if.then15:                                        ; preds = %if.end12
  br label %err, !dbg !313

if.end16:                                         ; preds = %if.end12
  %3 = load ptr, ptr %newc, align 8, !dbg !314, !tbaa !189
  %mpi_inited = getelementptr inbounds %struct.context_t, ptr %3, i32 0, i32 2, !dbg !315
  store i8 1, ptr %mpi_inited, align 8, !dbg !316, !tbaa !317
  %4 = load ptr, ptr %newc, align 8, !dbg !318, !tbaa !189
  %5 = load ptr, ptr %c.addr, align 8, !dbg !319, !tbaa !189
  store ptr %4, ptr %5, align 8, !dbg !320, !tbaa !189
  store i32 0, ptr %retval, align 4, !dbg !321
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !321

err:                                              ; preds = %if.then15, %if.then11, %if.then7, %if.then3, %if.then
  tail call void @llvm.dbg.label(metadata !278), !dbg !322
  %6 = load ptr, ptr %newc, align 8, !dbg !323, !tbaa !189
  %call17 = call i32 @fini(ptr noundef %6), !dbg !324
  store i32 1, ptr %retval, align 4, !dbg !325
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !325

cleanup:                                          ; preds = %err, %if.end16
  call void @llvm.lifetime.end.p0(i64 8, ptr %newc) #7, !dbg !326
  %7 = load i32, ptr %retval, align 4, !dbg !326
  ret i32 %7, !dbg !326
}

declare !dbg !327 i32 @printf(ptr noundef, ...) #2

declare !dbg !334 i32 @fflush(ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @demo_emit_sync(ptr noundef %c) #3 !dbg !396 {
entry:
  %c.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !189
  tail call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !402, metadata !DIExpression()), !dbg !403
  %call = call i32 @MPI_Barrier(ptr noundef @ompi_mpi_comm_world), !dbg !404
  %0 = load ptr, ptr %c.addr, align 8, !dbg !405, !tbaa !189
  %rank = getelementptr inbounds %struct.context_t, ptr %0, i32 0, i32 0, !dbg !406
  %1 = load i32, ptr %rank, align 8, !dbg !406, !tbaa !202
  %mul = mul nsw i32 %1, 1000, !dbg !407
  %call1 = call i32 @usleep(i32 noundef %mul), !dbg !408
  ret void, !dbg !409
}

; Function Attrs: nounwind uwtable
define internal i32 @qcreate(ptr noundef %c, i32 noundef %n_trials, ptr noundef %res) #0 !dbg !410 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca ptr, align 8
  %n_trials.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %i = alloca i32, align 4
  %start = alloca double, align 8
  %end = alloca double, align 8
  %i13 = alloca i32, align 4
  store ptr %c, ptr %c.addr, align 8, !tbaa !189
  tail call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !412, metadata !DIExpression()), !dbg !425
  store i32 %n_trials, ptr %n_trials.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %n_trials.addr, metadata !413, metadata !DIExpression()), !dbg !426
  store ptr %res, ptr %res.addr, align 8, !tbaa !189
  tail call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !414, metadata !DIExpression()), !dbg !427
  %0 = load ptr, ptr %c.addr, align 8, !dbg !428, !tbaa !189
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #7, !dbg !429
  tail call void @llvm.dbg.declare(metadata ptr %ctx, metadata !415, metadata !DIExpression()), !dbg !430
  %1 = load i32, ptr %n_trials.addr, align 4, !dbg !431, !tbaa !183
  %conv = sext i32 %1 to i64, !dbg !431
  %call = call noalias ptr @calloc(i64 noundef %conv, i64 noundef 8) #8, !dbg !432
  store ptr %call, ptr %ctx, align 8, !dbg !430, !tbaa !189
  %2 = load ptr, ptr %ctx, align 8, !dbg !433, !tbaa !189
  %tobool = icmp ne ptr %2, null, !dbg !433
  br i1 %tobool, label %if.end, label %if.then, !dbg !435

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !436
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup26, !dbg !436

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !437
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !417, metadata !DIExpression()), !dbg !438
  store i32 0, ptr %i, align 4, !dbg !438, !tbaa !183
  br label %for.cond, !dbg !437

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %i, align 4, !dbg !439, !tbaa !183
  %4 = load i32, ptr %n_trials.addr, align 4, !dbg !440, !tbaa !183
  %cmp = icmp slt i32 %3, %4, !dbg !441
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !442

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup11, !dbg !442

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #7, !dbg !443
  tail call void @llvm.dbg.declare(metadata ptr %start, metadata !419, metadata !DIExpression()), !dbg !444
  %call2 = call double @MPI_Wtime(), !dbg !445
  store double %call2, ptr %start, align 8, !dbg !444, !tbaa !446
  %5 = load ptr, ptr %ctx, align 8, !dbg !448, !tbaa !189
  %6 = load i32, ptr %i, align 4, !dbg !450, !tbaa !183
  %idxprom = sext i32 %6 to i64, !dbg !448
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom, !dbg !448
  %call3 = call i32 @QUO_create(ptr noundef %arrayidx, ptr noundef @ompi_mpi_comm_world), !dbg !451
  %cmp4 = icmp ne i32 0, %call3, !dbg !452
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !453

if.then6:                                         ; preds = %for.body
  store i32 1, ptr %retval, align 4, !dbg !454
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !454

if.end7:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #7, !dbg !455
  tail call void @llvm.dbg.declare(metadata ptr %end, metadata !422, metadata !DIExpression()), !dbg !456
  %call8 = call double @MPI_Wtime(), !dbg !457
  store double %call8, ptr %end, align 8, !dbg !456, !tbaa !446
  %7 = load double, ptr %end, align 8, !dbg !458, !tbaa !446
  %8 = load double, ptr %start, align 8, !dbg !459, !tbaa !446
  %sub = fsub double %7, %8, !dbg !460
  %9 = load ptr, ptr %res.addr, align 8, !dbg !461, !tbaa !189
  %10 = load i32, ptr %i, align 4, !dbg !462, !tbaa !183
  %idxprom9 = sext i32 %10 to i64, !dbg !461
  %arrayidx10 = getelementptr inbounds double, ptr %9, i64 %idxprom9, !dbg !461
  store double %sub, ptr %arrayidx10, align 8, !dbg !463, !tbaa !446
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #7, !dbg !464
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !464
  br label %cleanup, !dbg !464

cleanup:                                          ; preds = %if.end7, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #7, !dbg !464
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup11 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !465

for.inc:                                          ; preds = %cleanup.cont
  %11 = load i32, ptr %i, align 4, !dbg !466, !tbaa !183
  %inc = add nsw i32 %11, 1, !dbg !466
  store i32 %inc, ptr %i, align 4, !dbg !466, !tbaa !183
  br label %for.cond, !dbg !467, !llvm.loop !468

cleanup11:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !467
  %cleanup.dest12 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest12, label %cleanup26 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup11
  call void @llvm.lifetime.start.p0(i64 4, ptr %i13) #7, !dbg !470
  tail call void @llvm.dbg.declare(metadata ptr %i13, metadata !423, metadata !DIExpression()), !dbg !471
  store i32 0, ptr %i13, align 4, !dbg !471, !tbaa !183
  br label %for.cond14, !dbg !470

for.cond14:                                       ; preds = %for.inc22, %for.end
  %12 = load i32, ptr %i13, align 4, !dbg !472, !tbaa !183
  %13 = load i32, ptr %n_trials.addr, align 4, !dbg !474, !tbaa !183
  %cmp15 = icmp slt i32 %12, %13, !dbg !475
  br i1 %cmp15, label %for.body18, label %for.cond.cleanup17, !dbg !476

for.cond.cleanup17:                               ; preds = %for.cond14
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i13) #7, !dbg !477
  br label %for.end25

for.body18:                                       ; preds = %for.cond14
  %14 = load ptr, ptr %ctx, align 8, !dbg !478, !tbaa !189
  %15 = load i32, ptr %i13, align 4, !dbg !480, !tbaa !183
  %idxprom19 = sext i32 %15 to i64, !dbg !478
  %arrayidx20 = getelementptr inbounds ptr, ptr %14, i64 %idxprom19, !dbg !478
  %16 = load ptr, ptr %arrayidx20, align 8, !dbg !478, !tbaa !189
  %call21 = call i32 @QUO_free(ptr noundef %16), !dbg !481
  br label %for.inc22, !dbg !482

for.inc22:                                        ; preds = %for.body18
  %17 = load i32, ptr %i13, align 4, !dbg !483, !tbaa !183
  %inc23 = add nsw i32 %17, 1, !dbg !483
  store i32 %inc23, ptr %i13, align 4, !dbg !483, !tbaa !183
  br label %for.cond14, !dbg !477, !llvm.loop !484

for.end25:                                        ; preds = %for.cond.cleanup17
  store i32 0, ptr %retval, align 4, !dbg !486
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup26, !dbg !486

cleanup26:                                        ; preds = %for.end25, %cleanup11, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #7, !dbg !487
  %18 = load i32, ptr %retval, align 4, !dbg !487
  ret i32 %18, !dbg !487
}

; Function Attrs: nounwind uwtable
define internal i32 @qfree(ptr noundef %c, i32 noundef %n_trials, ptr noundef %res) #0 !dbg !488 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca ptr, align 8
  %n_trials.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %i = alloca i32, align 4
  %i7 = alloca i32, align 4
  %start = alloca double, align 8
  %end = alloca double, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !189
  tail call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !490, metadata !DIExpression()), !dbg !502
  store i32 %n_trials, ptr %n_trials.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %n_trials.addr, metadata !491, metadata !DIExpression()), !dbg !503
  store ptr %res, ptr %res.addr, align 8, !tbaa !189
  tail call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !492, metadata !DIExpression()), !dbg !504
  %0 = load ptr, ptr %c.addr, align 8, !dbg !505, !tbaa !189
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #7, !dbg !506
  tail call void @llvm.dbg.declare(metadata ptr %ctx, metadata !493, metadata !DIExpression()), !dbg !507
  %1 = load i32, ptr %n_trials.addr, align 4, !dbg !508, !tbaa !183
  %conv = sext i32 %1 to i64, !dbg !508
  %call = call noalias ptr @calloc(i64 noundef %conv, i64 noundef 8) #8, !dbg !509
  store ptr %call, ptr %ctx, align 8, !dbg !507, !tbaa !189
  %2 = load ptr, ptr %ctx, align 8, !dbg !510, !tbaa !189
  %tobool = icmp ne ptr %2, null, !dbg !510
  br i1 %tobool, label %if.end, label %if.then, !dbg !512

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !513
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup24, !dbg !513

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !514
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !494, metadata !DIExpression()), !dbg !515
  store i32 0, ptr %i, align 4, !dbg !515, !tbaa !183
  br label %for.cond, !dbg !514

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %i, align 4, !dbg !516, !tbaa !183
  %4 = load i32, ptr %n_trials.addr, align 4, !dbg !518, !tbaa !183
  %cmp = icmp slt i32 %3, %4, !dbg !519
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !520

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !520

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %ctx, align 8, !dbg !521, !tbaa !189
  %6 = load i32, ptr %i, align 4, !dbg !524, !tbaa !183
  %idxprom = sext i32 %6 to i64, !dbg !521
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom, !dbg !521
  %call2 = call i32 @QUO_create(ptr noundef %arrayidx, ptr noundef @ompi_mpi_comm_world), !dbg !525
  %cmp3 = icmp ne i32 0, %call2, !dbg !526
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !527

if.then5:                                         ; preds = %for.body
  store i32 1, ptr %retval, align 4, !dbg !528
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !528

if.end6:                                          ; preds = %for.body
  br label %for.inc, !dbg !529

for.inc:                                          ; preds = %if.end6
  %7 = load i32, ptr %i, align 4, !dbg !530, !tbaa !183
  %inc = add nsw i32 %7, 1, !dbg !530
  store i32 %inc, ptr %i, align 4, !dbg !530, !tbaa !183
  br label %for.cond, !dbg !531, !llvm.loop !532

cleanup:                                          ; preds = %if.then5, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !531
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup24 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup
  call void @llvm.lifetime.start.p0(i64 4, ptr %i7) #7, !dbg !534
  tail call void @llvm.dbg.declare(metadata ptr %i7, metadata !496, metadata !DIExpression()), !dbg !535
  store i32 0, ptr %i7, align 4, !dbg !535, !tbaa !183
  br label %for.cond8, !dbg !534

for.cond8:                                        ; preds = %for.inc20, %for.end
  %8 = load i32, ptr %i7, align 4, !dbg !536, !tbaa !183
  %9 = load i32, ptr %n_trials.addr, align 4, !dbg !537, !tbaa !183
  %cmp9 = icmp slt i32 %8, %9, !dbg !538
  br i1 %cmp9, label %for.body12, label %for.cond.cleanup11, !dbg !539

for.cond.cleanup11:                               ; preds = %for.cond8
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i7) #7, !dbg !540
  br label %for.end23

for.body12:                                       ; preds = %for.cond8
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #7, !dbg !541
  tail call void @llvm.dbg.declare(metadata ptr %start, metadata !498, metadata !DIExpression()), !dbg !542
  %call13 = call double @MPI_Wtime(), !dbg !543
  store double %call13, ptr %start, align 8, !dbg !542, !tbaa !446
  %10 = load ptr, ptr %ctx, align 8, !dbg !544, !tbaa !189
  %11 = load i32, ptr %i7, align 4, !dbg !545, !tbaa !183
  %idxprom14 = sext i32 %11 to i64, !dbg !544
  %arrayidx15 = getelementptr inbounds ptr, ptr %10, i64 %idxprom14, !dbg !544
  %12 = load ptr, ptr %arrayidx15, align 8, !dbg !544, !tbaa !189
  %call16 = call i32 @QUO_free(ptr noundef %12), !dbg !546
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #7, !dbg !547
  tail call void @llvm.dbg.declare(metadata ptr %end, metadata !501, metadata !DIExpression()), !dbg !548
  %call17 = call double @MPI_Wtime(), !dbg !549
  store double %call17, ptr %end, align 8, !dbg !548, !tbaa !446
  %13 = load double, ptr %end, align 8, !dbg !550, !tbaa !446
  %14 = load double, ptr %start, align 8, !dbg !551, !tbaa !446
  %sub = fsub double %13, %14, !dbg !552
  %15 = load ptr, ptr %res.addr, align 8, !dbg !553, !tbaa !189
  %16 = load i32, ptr %i7, align 4, !dbg !554, !tbaa !183
  %idxprom18 = sext i32 %16 to i64, !dbg !553
  %arrayidx19 = getelementptr inbounds double, ptr %15, i64 %idxprom18, !dbg !553
  store double %sub, ptr %arrayidx19, align 8, !dbg !555, !tbaa !446
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #7, !dbg !556
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #7, !dbg !556
  br label %for.inc20, !dbg !557

for.inc20:                                        ; preds = %for.body12
  %17 = load i32, ptr %i7, align 4, !dbg !558, !tbaa !183
  %inc21 = add nsw i32 %17, 1, !dbg !558
  store i32 %inc21, ptr %i7, align 4, !dbg !558, !tbaa !183
  br label %for.cond8, !dbg !540, !llvm.loop !559

for.end23:                                        ; preds = %for.cond.cleanup11
  store i32 0, ptr %retval, align 4, !dbg !561
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup24, !dbg !561

cleanup24:                                        ; preds = %for.end23, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #7, !dbg !562
  %18 = load i32, ptr %retval, align 4, !dbg !562
  ret i32 %18, !dbg !562
}

; Function Attrs: nounwind uwtable
define internal i32 @qnpus(ptr noundef %c, i32 noundef %n_trials, ptr noundef %res) #0 !dbg !563 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca ptr, align 8
  %n_trials.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %start = alloca double, align 8
  %end = alloca double, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !189
  tail call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !565, metadata !DIExpression()), !dbg !575
  store i32 %n_trials, ptr %n_trials.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %n_trials.addr, metadata !566, metadata !DIExpression()), !dbg !576
  store ptr %res, ptr %res.addr, align 8, !tbaa !189
  tail call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !567, metadata !DIExpression()), !dbg !577
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7, !dbg !578
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !568, metadata !DIExpression()), !dbg !579
  store i32 0, ptr %n, align 4, !dbg !579, !tbaa !183
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !580
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !569, metadata !DIExpression()), !dbg !581
  store i32 0, ptr %i, align 4, !dbg !581, !tbaa !183
  br label %for.cond, !dbg !580

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !582, !tbaa !183
  %1 = load i32, ptr %n_trials.addr, align 4, !dbg !583, !tbaa !183
  %cmp = icmp slt i32 %0, %1, !dbg !584
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !585

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup4, !dbg !585

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #7, !dbg !586
  tail call void @llvm.dbg.declare(metadata ptr %start, metadata !571, metadata !DIExpression()), !dbg !587
  %call = call double @MPI_Wtime(), !dbg !588
  store double %call, ptr %start, align 8, !dbg !587, !tbaa !446
  %2 = load ptr, ptr %c.addr, align 8, !dbg !589, !tbaa !189
  %quo = getelementptr inbounds %struct.context_t, ptr %2, i32 0, i32 3, !dbg !591
  %3 = load ptr, ptr %quo, align 8, !dbg !591, !tbaa !592
  %call1 = call i32 @QUO_npus(ptr noundef %3, ptr noundef %n), !dbg !593
  %cmp2 = icmp ne i32 0, %call1, !dbg !594
  br i1 %cmp2, label %if.then, label %if.end, !dbg !595

if.then:                                          ; preds = %for.body
  store i32 1, ptr %retval, align 4, !dbg !596
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !596

if.end:                                           ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #7, !dbg !597
  tail call void @llvm.dbg.declare(metadata ptr %end, metadata !574, metadata !DIExpression()), !dbg !598
  %call3 = call double @MPI_Wtime(), !dbg !599
  store double %call3, ptr %end, align 8, !dbg !598, !tbaa !446
  %4 = load double, ptr %end, align 8, !dbg !600, !tbaa !446
  %5 = load double, ptr %start, align 8, !dbg !601, !tbaa !446
  %sub = fsub double %4, %5, !dbg !602
  %6 = load ptr, ptr %res.addr, align 8, !dbg !603, !tbaa !189
  %7 = load i32, ptr %i, align 4, !dbg !604, !tbaa !183
  %idxprom = sext i32 %7 to i64, !dbg !603
  %arrayidx = getelementptr inbounds double, ptr %6, i64 %idxprom, !dbg !603
  store double %sub, ptr %arrayidx, align 8, !dbg !605, !tbaa !446
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #7, !dbg !606
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !606
  br label %cleanup, !dbg !606

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #7, !dbg !606
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup4 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !607

for.inc:                                          ; preds = %cleanup.cont
  %8 = load i32, ptr %i, align 4, !dbg !608, !tbaa !183
  %inc = add nsw i32 %8, 1, !dbg !608
  store i32 %inc, ptr %i, align 4, !dbg !608, !tbaa !183
  br label %for.cond, !dbg !609, !llvm.loop !610

cleanup4:                                         ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !609
  %cleanup.dest5 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest5, label %cleanup10 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup4
  %9 = load ptr, ptr %c.addr, align 8, !dbg !612, !tbaa !189
  %rank = getelementptr inbounds %struct.context_t, ptr %9, i32 0, i32 0, !dbg !614
  %10 = load i32, ptr %rank, align 8, !dbg !614, !tbaa !202
  %11 = load ptr, ptr %c.addr, align 8, !dbg !615, !tbaa !189
  %nranks = getelementptr inbounds %struct.context_t, ptr %11, i32 0, i32 1, !dbg !616
  %12 = load i32, ptr %nranks, align 4, !dbg !616, !tbaa !617
  %add = add nsw i32 %12, 1, !dbg !618
  %cmp6 = icmp eq i32 %10, %add, !dbg !619
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !620

if.then7:                                         ; preds = %for.end
  %13 = load i32, ptr %n, align 4, !dbg !621, !tbaa !183
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %13), !dbg !622
  br label %if.end9, !dbg !622

if.end9:                                          ; preds = %if.then7, %for.end
  store i32 0, ptr %retval, align 4, !dbg !623
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup10, !dbg !623

cleanup10:                                        ; preds = %if.end9, %cleanup4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7, !dbg !624
  %14 = load i32, ptr %retval, align 4, !dbg !624
  ret i32 %14, !dbg !624
}

; Function Attrs: nounwind uwtable
define internal i32 @qquids_in_type(ptr noundef %c, i32 noundef %n_trials, ptr noundef %res) #0 !dbg !625 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca ptr, align 8
  %n_trials.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %nq = alloca i32, align 4
  %qids = alloca ptr, align 8
  %start = alloca double, align 8
  %fs = alloca double, align 8
  %fe = alloca double, align 8
  %end = alloca double, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !189
  tail call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !627, metadata !DIExpression()), !dbg !642
  store i32 %n_trials, ptr %n_trials.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %n_trials.addr, metadata !628, metadata !DIExpression()), !dbg !643
  store ptr %res, ptr %res.addr, align 8, !tbaa !189
  tail call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !629, metadata !DIExpression()), !dbg !644
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7, !dbg !645
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !630, metadata !DIExpression()), !dbg !646
  store i32 0, ptr %n, align 4, !dbg !646, !tbaa !183
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !647
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !631, metadata !DIExpression()), !dbg !648
  store i32 0, ptr %i, align 4, !dbg !648, !tbaa !183
  br label %for.cond, !dbg !647

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !649, !tbaa !183
  %1 = load i32, ptr %n_trials.addr, align 4, !dbg !650, !tbaa !183
  %cmp = icmp slt i32 %0, %1, !dbg !651
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !652

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup10, !dbg !652

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %nq) #7, !dbg !653
  tail call void @llvm.dbg.declare(metadata ptr %nq, metadata !633, metadata !DIExpression()), !dbg !654
  store i32 0, ptr %nq, align 4, !dbg !654, !tbaa !183
  call void @llvm.lifetime.start.p0(i64 8, ptr %qids) #7, !dbg !655
  tail call void @llvm.dbg.declare(metadata ptr %qids, metadata !636, metadata !DIExpression()), !dbg !656
  store ptr null, ptr %qids, align 8, !dbg !656, !tbaa !189
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #7, !dbg !657
  tail call void @llvm.dbg.declare(metadata ptr %start, metadata !638, metadata !DIExpression()), !dbg !658
  %call = call double @MPI_Wtime(), !dbg !659
  store double %call, ptr %start, align 8, !dbg !658, !tbaa !446
  %2 = load ptr, ptr %c.addr, align 8, !dbg !660, !tbaa !189
  %quo = getelementptr inbounds %struct.context_t, ptr %2, i32 0, i32 3, !dbg !662
  %3 = load ptr, ptr %quo, align 8, !dbg !662, !tbaa !592
  %call1 = call i32 @QUO_qids_in_type(ptr noundef %3, i32 noundef 5, i32 noundef 0, ptr noundef %nq, ptr noundef %qids), !dbg !663
  %cmp2 = icmp ne i32 0, %call1, !dbg !664
  br i1 %cmp2, label %if.then, label %if.end, !dbg !665

if.then:                                          ; preds = %for.body
  store i32 1, ptr %retval, align 4, !dbg !666
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !666

if.end:                                           ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %fs) #7, !dbg !667
  tail call void @llvm.dbg.declare(metadata ptr %fs, metadata !639, metadata !DIExpression()), !dbg !668
  %call3 = call double @MPI_Wtime(), !dbg !669
  store double %call3, ptr %fs, align 8, !dbg !668, !tbaa !446
  %4 = load ptr, ptr %qids, align 8, !dbg !670, !tbaa !189
  call void @free(ptr noundef %4) #7, !dbg !671
  call void @llvm.lifetime.start.p0(i64 8, ptr %fe) #7, !dbg !672
  tail call void @llvm.dbg.declare(metadata ptr %fe, metadata !640, metadata !DIExpression()), !dbg !673
  %call4 = call double @MPI_Wtime(), !dbg !674
  store double %call4, ptr %fe, align 8, !dbg !673, !tbaa !446
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #7, !dbg !675
  tail call void @llvm.dbg.declare(metadata ptr %end, metadata !641, metadata !DIExpression()), !dbg !676
  %call5 = call double @MPI_Wtime(), !dbg !677
  store double %call5, ptr %end, align 8, !dbg !676, !tbaa !446
  %5 = load double, ptr %end, align 8, !dbg !678, !tbaa !446
  %6 = load double, ptr %start, align 8, !dbg !679, !tbaa !446
  %sub = fsub double %5, %6, !dbg !680
  %7 = load double, ptr %fe, align 8, !dbg !681, !tbaa !446
  %8 = load double, ptr %fs, align 8, !dbg !682, !tbaa !446
  %sub6 = fsub double %7, %8, !dbg !683
  %sub7 = fsub double %sub, %sub6, !dbg !684
  %9 = load ptr, ptr %res.addr, align 8, !dbg !685, !tbaa !189
  %10 = load i32, ptr %i, align 4, !dbg !686, !tbaa !183
  %idxprom = sext i32 %10 to i64, !dbg !685
  %arrayidx = getelementptr inbounds double, ptr %9, i64 %idxprom, !dbg !685
  store double %sub7, ptr %arrayidx, align 8, !dbg !687, !tbaa !446
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #7, !dbg !688
  call void @llvm.lifetime.end.p0(i64 8, ptr %fe) #7, !dbg !688
  call void @llvm.lifetime.end.p0(i64 8, ptr %fs) #7, !dbg !688
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !688
  br label %cleanup, !dbg !688

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #7, !dbg !688
  call void @llvm.lifetime.end.p0(i64 8, ptr %qids) #7, !dbg !688
  call void @llvm.lifetime.end.p0(i64 4, ptr %nq) #7, !dbg !688
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup10 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !689

for.inc:                                          ; preds = %cleanup.cont
  %11 = load i32, ptr %i, align 4, !dbg !690, !tbaa !183
  %inc = add nsw i32 %11, 1, !dbg !690
  store i32 %inc, ptr %i, align 4, !dbg !690, !tbaa !183
  br label %for.cond, !dbg !691, !llvm.loop !692

cleanup10:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !691
  %cleanup.dest11 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest11, label %cleanup16 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup10
  %12 = load ptr, ptr %c.addr, align 8, !dbg !694, !tbaa !189
  %rank = getelementptr inbounds %struct.context_t, ptr %12, i32 0, i32 0, !dbg !696
  %13 = load i32, ptr %rank, align 8, !dbg !696, !tbaa !202
  %14 = load ptr, ptr %c.addr, align 8, !dbg !697, !tbaa !189
  %nranks = getelementptr inbounds %struct.context_t, ptr %14, i32 0, i32 1, !dbg !698
  %15 = load i32, ptr %nranks, align 4, !dbg !698, !tbaa !617
  %add = add nsw i32 %15, 1, !dbg !699
  %cmp12 = icmp eq i32 %13, %add, !dbg !700
  br i1 %cmp12, label %if.then13, label %if.end15, !dbg !701

if.then13:                                        ; preds = %for.end
  %16 = load i32, ptr %n, align 4, !dbg !702, !tbaa !183
  %call14 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, i32 noundef %16), !dbg !703
  br label %if.end15, !dbg !703

if.end15:                                         ; preds = %if.then13, %for.end
  store i32 0, ptr %retval, align 4, !dbg !704
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup16, !dbg !704

cleanup16:                                        ; preds = %if.end15, %cleanup10
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7, !dbg !705
  %17 = load i32, ptr %retval, align 4, !dbg !705
  ret i32 %17, !dbg !705
}

; Function Attrs: nounwind uwtable
define internal i32 @qbind_push(ptr noundef %c, i32 noundef %n_trials, ptr noundef %res) #0 !dbg !706 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca ptr, align 8
  %n_trials.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %start = alloca double, align 8
  %end = alloca double, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !189
  tail call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !708, metadata !DIExpression()), !dbg !717
  store i32 %n_trials, ptr %n_trials.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %n_trials.addr, metadata !709, metadata !DIExpression()), !dbg !718
  store ptr %res, ptr %res.addr, align 8, !tbaa !189
  tail call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !710, metadata !DIExpression()), !dbg !719
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !720
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !711, metadata !DIExpression()), !dbg !721
  store i32 0, ptr %i, align 4, !dbg !721, !tbaa !183
  br label %for.cond, !dbg !720

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !722, !tbaa !183
  %1 = load i32, ptr %n_trials.addr, align 4, !dbg !723, !tbaa !183
  %cmp = icmp slt i32 %0, %1, !dbg !724
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !725

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup10, !dbg !725

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #7, !dbg !726
  tail call void @llvm.dbg.declare(metadata ptr %start, metadata !713, metadata !DIExpression()), !dbg !727
  %call = call double @MPI_Wtime(), !dbg !728
  store double %call, ptr %start, align 8, !dbg !727, !tbaa !446
  %2 = load ptr, ptr %c.addr, align 8, !dbg !729, !tbaa !189
  %quo = getelementptr inbounds %struct.context_t, ptr %2, i32 0, i32 3, !dbg !731
  %3 = load ptr, ptr %quo, align 8, !dbg !731, !tbaa !592
  %call1 = call i32 @QUO_bind_push(ptr noundef %3, i32 noundef 1, i32 noundef 0, i32 noundef -1), !dbg !732
  %cmp2 = icmp ne i32 0, %call1, !dbg !733
  br i1 %cmp2, label %if.then, label %if.end, !dbg !734

if.then:                                          ; preds = %for.body
  store i32 1, ptr %retval, align 4, !dbg !735
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup9, !dbg !735

if.end:                                           ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #7, !dbg !736
  tail call void @llvm.dbg.declare(metadata ptr %end, metadata !716, metadata !DIExpression()), !dbg !737
  %call3 = call double @MPI_Wtime(), !dbg !738
  store double %call3, ptr %end, align 8, !dbg !737, !tbaa !446
  %4 = load double, ptr %end, align 8, !dbg !739, !tbaa !446
  %5 = load double, ptr %start, align 8, !dbg !740, !tbaa !446
  %sub = fsub double %4, %5, !dbg !741
  %6 = load ptr, ptr %res.addr, align 8, !dbg !742, !tbaa !189
  %7 = load i32, ptr %i, align 4, !dbg !743, !tbaa !183
  %idxprom = sext i32 %7 to i64, !dbg !742
  %arrayidx = getelementptr inbounds double, ptr %6, i64 %idxprom, !dbg !742
  store double %sub, ptr %arrayidx, align 8, !dbg !744, !tbaa !446
  %8 = load ptr, ptr %c.addr, align 8, !dbg !745, !tbaa !189
  %quo4 = getelementptr inbounds %struct.context_t, ptr %8, i32 0, i32 3, !dbg !747
  %9 = load ptr, ptr %quo4, align 8, !dbg !747, !tbaa !592
  %call5 = call i32 @QUO_bind_pop(ptr noundef %9), !dbg !748
  %cmp6 = icmp ne i32 0, %call5, !dbg !749
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !750

if.then7:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !751
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !751

if.end8:                                          ; preds = %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !752
  br label %cleanup, !dbg !752

cleanup:                                          ; preds = %if.end8, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #7, !dbg !752
  br label %cleanup9

cleanup9:                                         ; preds = %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #7, !dbg !752
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup10 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup9
  br label %for.inc, !dbg !753

for.inc:                                          ; preds = %cleanup.cont
  %10 = load i32, ptr %i, align 4, !dbg !754, !tbaa !183
  %inc = add nsw i32 %10, 1, !dbg !754
  store i32 %inc, ptr %i, align 4, !dbg !754, !tbaa !183
  br label %for.cond, !dbg !755, !llvm.loop !756

cleanup10:                                        ; preds = %cleanup9, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !755
  %cleanup.dest11 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest11, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup10
  store i32 0, ptr %retval, align 4, !dbg !758
  br label %return, !dbg !758

return:                                           ; preds = %for.end, %cleanup10
  %11 = load i32, ptr %retval, align 4, !dbg !759
  ret i32 %11, !dbg !759

unreachable:                                      ; preds = %cleanup10
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @qbind_pop(ptr noundef %c, i32 noundef %n_trials, ptr noundef %res) #0 !dbg !760 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca ptr, align 8
  %n_trials.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %start = alloca double, align 8
  %end = alloca double, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !189
  tail call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !762, metadata !DIExpression()), !dbg !771
  store i32 %n_trials, ptr %n_trials.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %n_trials.addr, metadata !763, metadata !DIExpression()), !dbg !772
  store ptr %res, ptr %res.addr, align 8, !tbaa !189
  tail call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !764, metadata !DIExpression()), !dbg !773
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !774
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !765, metadata !DIExpression()), !dbg !775
  store i32 0, ptr %i, align 4, !dbg !775, !tbaa !183
  br label %for.cond, !dbg !774

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !776, !tbaa !183
  %1 = load i32, ptr %n_trials.addr, align 4, !dbg !777, !tbaa !183
  %cmp = icmp slt i32 %0, %1, !dbg !778
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !779

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup9, !dbg !779

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %c.addr, align 8, !dbg !780, !tbaa !189
  %quo = getelementptr inbounds %struct.context_t, ptr %2, i32 0, i32 3, !dbg !782
  %3 = load ptr, ptr %quo, align 8, !dbg !782, !tbaa !592
  %call = call i32 @QUO_bind_push(ptr noundef %3, i32 noundef 1, i32 noundef 0, i32 noundef -1), !dbg !783
  %cmp1 = icmp ne i32 0, %call, !dbg !784
  br i1 %cmp1, label %if.then, label %if.end, !dbg !785

if.then:                                          ; preds = %for.body
  store i32 1, ptr %retval, align 4, !dbg !786
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup9, !dbg !786

if.end:                                           ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #7, !dbg !787
  tail call void @llvm.dbg.declare(metadata ptr %start, metadata !767, metadata !DIExpression()), !dbg !788
  %call2 = call double @MPI_Wtime(), !dbg !789
  store double %call2, ptr %start, align 8, !dbg !788, !tbaa !446
  %4 = load ptr, ptr %c.addr, align 8, !dbg !790, !tbaa !189
  %quo3 = getelementptr inbounds %struct.context_t, ptr %4, i32 0, i32 3, !dbg !792
  %5 = load ptr, ptr %quo3, align 8, !dbg !792, !tbaa !592
  %call4 = call i32 @QUO_bind_pop(ptr noundef %5), !dbg !793
  %cmp5 = icmp ne i32 0, %call4, !dbg !794
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !795

if.then6:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !796
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !796

if.end7:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #7, !dbg !797
  tail call void @llvm.dbg.declare(metadata ptr %end, metadata !770, metadata !DIExpression()), !dbg !798
  %call8 = call double @MPI_Wtime(), !dbg !799
  store double %call8, ptr %end, align 8, !dbg !798, !tbaa !446
  %6 = load double, ptr %end, align 8, !dbg !800, !tbaa !446
  %7 = load double, ptr %start, align 8, !dbg !801, !tbaa !446
  %sub = fsub double %6, %7, !dbg !802
  %8 = load ptr, ptr %res.addr, align 8, !dbg !803, !tbaa !189
  %9 = load i32, ptr %i, align 4, !dbg !804, !tbaa !183
  %idxprom = sext i32 %9 to i64, !dbg !803
  %arrayidx = getelementptr inbounds double, ptr %8, i64 %idxprom, !dbg !803
  store double %sub, ptr %arrayidx, align 8, !dbg !805, !tbaa !446
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #7, !dbg !806
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !806
  br label %cleanup, !dbg !806

cleanup:                                          ; preds = %if.end7, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #7, !dbg !806
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup9 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !807

for.inc:                                          ; preds = %cleanup.cont
  %10 = load i32, ptr %i, align 4, !dbg !808, !tbaa !183
  %inc = add nsw i32 %10, 1, !dbg !808
  store i32 %inc, ptr %i, align 4, !dbg !808, !tbaa !183
  br label %for.cond, !dbg !809, !llvm.loop !810

cleanup9:                                         ; preds = %cleanup, %if.then, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !809
  %cleanup.dest10 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest10, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup9
  store i32 0, ptr %retval, align 4, !dbg !812
  br label %return, !dbg !812

return:                                           ; preds = %for.end, %cleanup9
  %11 = load i32, ptr %retval, align 4, !dbg !813
  ret i32 %11, !dbg !813

unreachable:                                      ; preds = %cleanup9
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @qauto_distrib(ptr noundef %c, i32 noundef %n_trials, ptr noundef %res) #0 !dbg !814 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca ptr, align 8
  %n_trials.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  %sel = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %start = alloca double, align 8
  %end = alloca double, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !189
  tail call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !816, metadata !DIExpression()), !dbg !826
  store i32 %n_trials, ptr %n_trials.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %n_trials.addr, metadata !817, metadata !DIExpression()), !dbg !827
  store ptr %res, ptr %res.addr, align 8, !tbaa !189
  tail call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !818, metadata !DIExpression()), !dbg !828
  call void @llvm.lifetime.start.p0(i64 4, ptr %sel) #7, !dbg !829
  tail call void @llvm.dbg.declare(metadata ptr %sel, metadata !819, metadata !DIExpression()), !dbg !830
  store i32 0, ptr %sel, align 4, !dbg !830, !tbaa !183
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !831
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !820, metadata !DIExpression()), !dbg !832
  store i32 0, ptr %i, align 4, !dbg !832, !tbaa !183
  br label %for.cond, !dbg !831

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !833, !tbaa !183
  %1 = load i32, ptr %n_trials.addr, align 4, !dbg !834, !tbaa !183
  %cmp = icmp slt i32 %0, %1, !dbg !835
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !836

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup4, !dbg !836

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #7, !dbg !837
  tail call void @llvm.dbg.declare(metadata ptr %start, metadata !822, metadata !DIExpression()), !dbg !838
  %call = call double @MPI_Wtime(), !dbg !839
  store double %call, ptr %start, align 8, !dbg !838, !tbaa !446
  %2 = load ptr, ptr %c.addr, align 8, !dbg !840, !tbaa !189
  %quo = getelementptr inbounds %struct.context_t, ptr %2, i32 0, i32 3, !dbg !842
  %3 = load ptr, ptr %quo, align 8, !dbg !842, !tbaa !592
  %4 = load ptr, ptr %c.addr, align 8, !dbg !843, !tbaa !189
  %nranks = getelementptr inbounds %struct.context_t, ptr %4, i32 0, i32 1, !dbg !844
  %5 = load i32, ptr %nranks, align 4, !dbg !844, !tbaa !617
  %call1 = call i32 @QUO_auto_distrib(ptr noundef %3, i32 noundef 5, i32 noundef %5, ptr noundef %sel), !dbg !845
  %cmp2 = icmp ne i32 0, %call1, !dbg !846
  br i1 %cmp2, label %if.then, label %if.end, !dbg !847

if.then:                                          ; preds = %for.body
  store i32 1, ptr %retval, align 4, !dbg !848
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !848

if.end:                                           ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #7, !dbg !849
  tail call void @llvm.dbg.declare(metadata ptr %end, metadata !825, metadata !DIExpression()), !dbg !850
  %call3 = call double @MPI_Wtime(), !dbg !851
  store double %call3, ptr %end, align 8, !dbg !850, !tbaa !446
  %6 = load double, ptr %end, align 8, !dbg !852, !tbaa !446
  %7 = load double, ptr %start, align 8, !dbg !853, !tbaa !446
  %sub = fsub double %6, %7, !dbg !854
  %8 = load ptr, ptr %res.addr, align 8, !dbg !855, !tbaa !189
  %9 = load i32, ptr %i, align 4, !dbg !856, !tbaa !183
  %idxprom = sext i32 %9 to i64, !dbg !855
  %arrayidx = getelementptr inbounds double, ptr %8, i64 %idxprom, !dbg !855
  store double %sub, ptr %arrayidx, align 8, !dbg !857, !tbaa !446
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #7, !dbg !858
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !858
  br label %cleanup, !dbg !858

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #7, !dbg !858
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup4 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !859

for.inc:                                          ; preds = %cleanup.cont
  %10 = load i32, ptr %i, align 4, !dbg !860, !tbaa !183
  %inc = add nsw i32 %10, 1, !dbg !860
  store i32 %inc, ptr %i, align 4, !dbg !860, !tbaa !183
  br label %for.cond, !dbg !861, !llvm.loop !862

cleanup4:                                         ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !861
  %cleanup.dest5 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest5, label %cleanup11 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup4
  %11 = load ptr, ptr %c.addr, align 8, !dbg !864, !tbaa !189
  %rank = getelementptr inbounds %struct.context_t, ptr %11, i32 0, i32 0, !dbg !866
  %12 = load i32, ptr %rank, align 8, !dbg !866, !tbaa !202
  %13 = load ptr, ptr %c.addr, align 8, !dbg !867, !tbaa !189
  %nranks6 = getelementptr inbounds %struct.context_t, ptr %13, i32 0, i32 1, !dbg !868
  %14 = load i32, ptr %nranks6, align 4, !dbg !868, !tbaa !617
  %add = add nsw i32 %14, 1, !dbg !869
  %cmp7 = icmp eq i32 %12, %add, !dbg !870
  br i1 %cmp7, label %if.then8, label %if.end10, !dbg !871

if.then8:                                         ; preds = %for.end
  %15 = load i32, ptr %sel, align 4, !dbg !872, !tbaa !183
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %15), !dbg !873
  br label %if.end10, !dbg !873

if.end10:                                         ; preds = %if.then8, %for.end
  store i32 0, ptr %retval, align 4, !dbg !874
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup11, !dbg !874

cleanup11:                                        ; preds = %if.end10, %cleanup4
  call void @llvm.lifetime.end.p0(i64 4, ptr %sel) #7, !dbg !875
  %16 = load i32, ptr %retval, align 4, !dbg !875
  ret i32 %16, !dbg !875
}

; Function Attrs: nounwind uwtable
define internal i32 @qbarrier(ptr noundef %c, i32 noundef %n_trials, ptr noundef %res) #0 !dbg !876 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca ptr, align 8
  %n_trials.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %start = alloca double, align 8
  %end = alloca double, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !189
  tail call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !878, metadata !DIExpression()), !dbg !887
  store i32 %n_trials, ptr %n_trials.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %n_trials.addr, metadata !879, metadata !DIExpression()), !dbg !888
  store ptr %res, ptr %res.addr, align 8, !tbaa !189
  tail call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !880, metadata !DIExpression()), !dbg !889
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !890
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !881, metadata !DIExpression()), !dbg !891
  store i32 0, ptr %i, align 4, !dbg !891, !tbaa !183
  br label %for.cond, !dbg !890

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !892, !tbaa !183
  %1 = load i32, ptr %n_trials.addr, align 4, !dbg !893, !tbaa !183
  %cmp = icmp slt i32 %0, %1, !dbg !894
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !895

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup4, !dbg !895

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #7, !dbg !896
  tail call void @llvm.dbg.declare(metadata ptr %start, metadata !883, metadata !DIExpression()), !dbg !897
  %call = call double @MPI_Wtime(), !dbg !898
  store double %call, ptr %start, align 8, !dbg !897, !tbaa !446
  %2 = load ptr, ptr %c.addr, align 8, !dbg !899, !tbaa !189
  %quo = getelementptr inbounds %struct.context_t, ptr %2, i32 0, i32 3, !dbg !901
  %3 = load ptr, ptr %quo, align 8, !dbg !901, !tbaa !592
  %call1 = call i32 @QUO_barrier(ptr noundef %3), !dbg !902
  %cmp2 = icmp ne i32 0, %call1, !dbg !903
  br i1 %cmp2, label %if.then, label %if.end, !dbg !904

if.then:                                          ; preds = %for.body
  store i32 1, ptr %retval, align 4, !dbg !905
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !905

if.end:                                           ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #7, !dbg !906
  tail call void @llvm.dbg.declare(metadata ptr %end, metadata !886, metadata !DIExpression()), !dbg !907
  %call3 = call double @MPI_Wtime(), !dbg !908
  store double %call3, ptr %end, align 8, !dbg !907, !tbaa !446
  %4 = load double, ptr %end, align 8, !dbg !909, !tbaa !446
  %5 = load double, ptr %start, align 8, !dbg !910, !tbaa !446
  %sub = fsub double %4, %5, !dbg !911
  %6 = load ptr, ptr %res.addr, align 8, !dbg !912, !tbaa !189
  %7 = load i32, ptr %i, align 4, !dbg !913, !tbaa !183
  %idxprom = sext i32 %7 to i64, !dbg !912
  %arrayidx = getelementptr inbounds double, ptr %6, i64 %idxprom, !dbg !912
  store double %sub, ptr %arrayidx, align 8, !dbg !914, !tbaa !446
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #7, !dbg !915
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !915
  br label %cleanup, !dbg !915

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #7, !dbg !915
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup4 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !916

for.inc:                                          ; preds = %cleanup.cont
  %8 = load i32, ptr %i, align 4, !dbg !917, !tbaa !183
  %inc = add nsw i32 %8, 1, !dbg !917
  store i32 %inc, ptr %i, align 4, !dbg !917, !tbaa !183
  br label %for.cond, !dbg !918, !llvm.loop !919

cleanup4:                                         ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !918
  %cleanup.dest5 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest5, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup4
  store i32 0, ptr %retval, align 4, !dbg !921
  br label %return, !dbg !921

return:                                           ; preds = %for.end, %cleanup4
  %9 = load i32, ptr %retval, align 4, !dbg !922
  ret i32 %9, !dbg !922

unreachable:                                      ; preds = %cleanup4
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @run_experiment(ptr noundef %e) #0 !dbg !923 {
entry:
  %retval = alloca i32, align 4
  %e.addr = alloca ptr, align 8
  %bad_func = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %e, ptr %e.addr, align 8, !tbaa !189
  tail call void @llvm.dbg.declare(metadata ptr %e.addr, metadata !928, metadata !DIExpression()), !dbg !931
  call void @llvm.lifetime.start.p0(i64 8, ptr %bad_func) #7, !dbg !932
  tail call void @llvm.dbg.declare(metadata ptr %bad_func, metadata !929, metadata !DIExpression()), !dbg !933
  store ptr null, ptr %bad_func, align 8, !dbg !933, !tbaa !189
  %0 = load ptr, ptr %e.addr, align 8, !dbg !934, !tbaa !189
  %c = getelementptr inbounds %struct.experiment_t, ptr %0, i32 0, i32 0, !dbg !936
  %1 = load ptr, ptr %c, align 8, !dbg !936, !tbaa !218
  %2 = load ptr, ptr %e.addr, align 8, !dbg !937, !tbaa !189
  %fun = getelementptr inbounds %struct.experiment_t, ptr %2, i32 0, i32 2, !dbg !938
  %3 = load ptr, ptr %fun, align 8, !dbg !938, !tbaa !221
  %4 = load ptr, ptr %e.addr, align 8, !dbg !939, !tbaa !189
  %n_trials = getelementptr inbounds %struct.experiment_t, ptr %4, i32 0, i32 3, !dbg !940
  %5 = load i32, ptr %n_trials, align 8, !dbg !940, !tbaa !222
  %6 = load ptr, ptr %e.addr, align 8, !dbg !941, !tbaa !189
  %res_len = getelementptr inbounds %struct.experiment_t, ptr %6, i32 0, i32 4, !dbg !942
  %7 = load ptr, ptr %e.addr, align 8, !dbg !943, !tbaa !189
  %results = getelementptr inbounds %struct.experiment_t, ptr %7, i32 0, i32 5, !dbg !944
  %call = call i32 @time_fun(ptr noundef %1, ptr noundef %3, i32 noundef %5, ptr noundef %res_len, ptr noundef %results), !dbg !945
  %tobool = icmp ne i32 %call, 0, !dbg !945
  br i1 %tobool, label %if.then, label %if.end, !dbg !946

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %e.addr, align 8, !dbg !947, !tbaa !189
  %name = getelementptr inbounds %struct.experiment_t, ptr %8, i32 0, i32 1, !dbg !949
  %9 = load ptr, ptr %name, align 8, !dbg !949, !tbaa !220
  store ptr %9, ptr %bad_func, align 8, !dbg !950, !tbaa !189
  br label %out, !dbg !951

if.end:                                           ; preds = %entry
  %10 = load ptr, ptr %e.addr, align 8, !dbg !952, !tbaa !189
  %c1 = getelementptr inbounds %struct.experiment_t, ptr %10, i32 0, i32 0, !dbg !954
  %11 = load ptr, ptr %c1, align 8, !dbg !954, !tbaa !218
  %12 = load ptr, ptr %e.addr, align 8, !dbg !955, !tbaa !189
  %name2 = getelementptr inbounds %struct.experiment_t, ptr %12, i32 0, i32 1, !dbg !956
  %13 = load ptr, ptr %name2, align 8, !dbg !956, !tbaa !220
  %14 = load ptr, ptr %e.addr, align 8, !dbg !957, !tbaa !189
  %res_len3 = getelementptr inbounds %struct.experiment_t, ptr %14, i32 0, i32 4, !dbg !958
  %15 = load i32, ptr %res_len3, align 4, !dbg !958, !tbaa !223
  %16 = load ptr, ptr %e.addr, align 8, !dbg !959, !tbaa !189
  %results4 = getelementptr inbounds %struct.experiment_t, ptr %16, i32 0, i32 5, !dbg !960
  %17 = load ptr, ptr %results4, align 8, !dbg !960, !tbaa !224
  %call5 = call i32 @emit_stats(ptr noundef %11, ptr noundef %13, i32 noundef %15, ptr noundef %17), !dbg !961
  %tobool6 = icmp ne i32 %call5, 0, !dbg !961
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !962

if.then7:                                         ; preds = %if.end
  store ptr @.str.14, ptr %bad_func, align 8, !dbg !963, !tbaa !189
  br label %out, !dbg !965

if.end8:                                          ; preds = %if.end
  %18 = load ptr, ptr %e.addr, align 8, !dbg !966, !tbaa !189
  %results9 = getelementptr inbounds %struct.experiment_t, ptr %18, i32 0, i32 5, !dbg !967
  %19 = load ptr, ptr %results9, align 8, !dbg !967, !tbaa !224
  call void @free(ptr noundef %19) #7, !dbg !968
  br label %out, !dbg !968

out:                                              ; preds = %if.end8, %if.then7, %if.then
  tail call void @llvm.dbg.label(metadata !930), !dbg !969
  %20 = load ptr, ptr %bad_func, align 8, !dbg !970, !tbaa !189
  %tobool10 = icmp ne ptr %20, null, !dbg !970
  br i1 %tobool10, label %if.then11, label %if.end13, !dbg !972

if.then11:                                        ; preds = %out
  %21 = load ptr, ptr @stderr, align 8, !dbg !973, !tbaa !189
  %22 = load ptr, ptr %bad_func, align 8, !dbg !975, !tbaa !189
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.15, ptr noundef %22), !dbg !976
  store i32 1, ptr %retval, align 4, !dbg !977
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !977

if.end13:                                         ; preds = %out
  store i32 0, ptr %retval, align 4, !dbg !978
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !978

cleanup:                                          ; preds = %if.end13, %if.then11
  call void @llvm.lifetime.end.p0(i64 8, ptr %bad_func) #7, !dbg !979
  %23 = load i32, ptr %retval, align 4, !dbg !979
  ret i32 %23, !dbg !979
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !980 i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind uwtable
define internal i32 @fini(ptr noundef %c) #0 !dbg !984 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca ptr, align 8
  %nerrs = alloca i32, align 4
  store ptr %c, ptr %c.addr, align 8, !tbaa !189
  tail call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !988, metadata !DIExpression()), !dbg !990
  %0 = load ptr, ptr %c.addr, align 8, !dbg !991, !tbaa !189
  %tobool = icmp ne ptr %0, null, !dbg !991
  br i1 %tobool, label %if.end, label %if.then, !dbg !993

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !994
  br label %return, !dbg !994

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %nerrs) #7, !dbg !995
  tail call void @llvm.dbg.declare(metadata ptr %nerrs, metadata !989, metadata !DIExpression()), !dbg !996
  store i32 0, ptr %nerrs, align 4, !dbg !996, !tbaa !183
  %1 = load ptr, ptr %c.addr, align 8, !dbg !997, !tbaa !189
  %quo = getelementptr inbounds %struct.context_t, ptr %1, i32 0, i32 3, !dbg !999
  %2 = load ptr, ptr %quo, align 8, !dbg !999, !tbaa !592
  %call = call i32 @QUO_free(ptr noundef %2), !dbg !1000
  %cmp = icmp ne i32 0, %call, !dbg !1001
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1002

if.then1:                                         ; preds = %if.end
  %3 = load i32, ptr %nerrs, align 4, !dbg !1003, !tbaa !183
  %inc = add nsw i32 %3, 1, !dbg !1003
  store i32 %inc, ptr %nerrs, align 4, !dbg !1003, !tbaa !183
  br label %if.end2, !dbg !1004

if.end2:                                          ; preds = %if.then1, %if.end
  %4 = load ptr, ptr %c.addr, align 8, !dbg !1005, !tbaa !189
  %mpi_inited = getelementptr inbounds %struct.context_t, ptr %4, i32 0, i32 2, !dbg !1007
  %5 = load i8, ptr %mpi_inited, align 8, !dbg !1007, !tbaa !317, !range !1008, !noundef !1009
  %tobool3 = trunc i8 %5 to i1, !dbg !1007
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !1010

if.then4:                                         ; preds = %if.end2
  %call5 = call i32 @MPI_Finalize(), !dbg !1011
  br label %if.end6, !dbg !1011

if.end6:                                          ; preds = %if.then4, %if.end2
  %6 = load ptr, ptr %c.addr, align 8, !dbg !1012, !tbaa !189
  call void @free(ptr noundef %6) #7, !dbg !1013
  %7 = load i32, ptr %nerrs, align 4, !dbg !1014, !tbaa !183
  %tobool7 = icmp ne i32 %7, 0, !dbg !1014
  %8 = zext i1 %tobool7 to i64, !dbg !1014
  %cond = select i1 %tobool7, i32 1, i32 0, !dbg !1014
  store i32 %cond, ptr %retval, align 4, !dbg !1015
  call void @llvm.lifetime.end.p0(i64 4, ptr %nerrs) #7, !dbg !1016
  br label %return

return:                                           ; preds = %if.end6, %if.then
  %9 = load i32, ptr %retval, align 4, !dbg !1016
  ret i32 %9, !dbg !1016
}

; Function Attrs: nounwind allocsize(0,1)
declare !dbg !1017 noalias ptr @calloc(i64 noundef, i64 noundef) #4

declare !dbg !1021 i32 @MPI_Init(ptr noundef, ptr noundef) #2

declare !dbg !1026 i32 @MPI_Comm_size(ptr noundef, ptr noundef) #2

declare !dbg !1029 i32 @MPI_Comm_rank(ptr noundef, ptr noundef) #2

declare !dbg !1030 i32 @QUO_create(ptr noundef, ptr noundef) #2

declare !dbg !1033 i32 @MPI_Barrier(ptr noundef) #2

declare !dbg !1036 i32 @usleep(i32 noundef) #2

declare !dbg !1041 double @MPI_Wtime() #2

declare !dbg !1044 i32 @QUO_free(ptr noundef) #2

declare !dbg !1047 i32 @QUO_npus(ptr noundef, ptr noundef) #2

declare !dbg !1050 i32 @QUO_qids_in_type(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare !dbg !1055 void @free(ptr noundef) #5

declare !dbg !1058 i32 @QUO_bind_push(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare !dbg !1062 i32 @QUO_bind_pop(ptr noundef) #2

declare !dbg !1063 i32 @QUO_auto_distrib(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

declare !dbg !1066 i32 @QUO_barrier(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @time_fun(ptr noundef %c, ptr noundef %fun, i32 noundef %n_trials, ptr noundef %out_res_len, ptr noundef %out_results) #0 !dbg !1067 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca ptr, align 8
  %fun.addr = alloca ptr, align 8
  %n_trials.addr = alloca i32, align 4
  %out_res_len.addr = alloca ptr, align 8
  %out_results.addr = alloca ptr, align 8
  %res = alloca ptr, align 8
  %res_len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %c, ptr %c.addr, align 8, !tbaa !189
  tail call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !1072, metadata !DIExpression()), !dbg !1079
  store ptr %fun, ptr %fun.addr, align 8, !tbaa !189
  tail call void @llvm.dbg.declare(metadata ptr %fun.addr, metadata !1073, metadata !DIExpression()), !dbg !1080
  store i32 %n_trials, ptr %n_trials.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %n_trials.addr, metadata !1074, metadata !DIExpression()), !dbg !1081
  store ptr %out_res_len, ptr %out_res_len.addr, align 8, !tbaa !189
  tail call void @llvm.dbg.declare(metadata ptr %out_res_len.addr, metadata !1075, metadata !DIExpression()), !dbg !1082
  store ptr %out_results, ptr %out_results.addr, align 8, !tbaa !189
  tail call void @llvm.dbg.declare(metadata ptr %out_results.addr, metadata !1076, metadata !DIExpression()), !dbg !1083
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #7, !dbg !1084
  tail call void @llvm.dbg.declare(metadata ptr %res, metadata !1077, metadata !DIExpression()), !dbg !1085
  store ptr null, ptr %res, align 8, !dbg !1085, !tbaa !189
  call void @llvm.lifetime.start.p0(i64 4, ptr %res_len) #7, !dbg !1086
  tail call void @llvm.dbg.declare(metadata ptr %res_len, metadata !1078, metadata !DIExpression()), !dbg !1087
  store i32 0, ptr %res_len, align 4, !dbg !1087, !tbaa !183
  %0 = load ptr, ptr %c.addr, align 8, !dbg !1088, !tbaa !189
  %rank = getelementptr inbounds %struct.context_t, ptr %0, i32 0, i32 0, !dbg !1090
  %1 = load i32, ptr %rank, align 8, !dbg !1090, !tbaa !202
  %cmp = icmp ne i32 %1, 0, !dbg !1091
  br i1 %cmp, label %if.then, label %if.else, !dbg !1092

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %n_trials.addr, align 4, !dbg !1093, !tbaa !183
  %3 = load ptr, ptr %out_res_len.addr, align 8, !dbg !1095, !tbaa !189
  store i32 %2, ptr %3, align 4, !dbg !1096, !tbaa !183
  %4 = load ptr, ptr %out_res_len.addr, align 8, !dbg !1097, !tbaa !189
  %5 = load i32, ptr %4, align 4, !dbg !1098, !tbaa !183
  store i32 %5, ptr %res_len, align 4, !dbg !1099, !tbaa !183
  %6 = load i32, ptr %res_len, align 4, !dbg !1100, !tbaa !183
  %conv = sext i32 %6 to i64, !dbg !1100
  %call = call noalias ptr @calloc(i64 noundef %conv, i64 noundef 8) #8, !dbg !1101
  store ptr %call, ptr %res, align 8, !dbg !1102, !tbaa !189
  br label %if.end, !dbg !1103

if.else:                                          ; preds = %entry
  %7 = load i32, ptr %n_trials.addr, align 4, !dbg !1104, !tbaa !183
  %8 = load ptr, ptr %c.addr, align 8, !dbg !1106, !tbaa !189
  %nranks = getelementptr inbounds %struct.context_t, ptr %8, i32 0, i32 1, !dbg !1107
  %9 = load i32, ptr %nranks, align 4, !dbg !1107, !tbaa !617
  %mul = mul nsw i32 %7, %9, !dbg !1108
  %10 = load ptr, ptr %out_res_len.addr, align 8, !dbg !1109, !tbaa !189
  store i32 %mul, ptr %10, align 4, !dbg !1110, !tbaa !183
  %11 = load ptr, ptr %out_res_len.addr, align 8, !dbg !1111, !tbaa !189
  %12 = load i32, ptr %11, align 4, !dbg !1112, !tbaa !183
  store i32 %12, ptr %res_len, align 4, !dbg !1113, !tbaa !183
  %13 = load i32, ptr %res_len, align 4, !dbg !1114, !tbaa !183
  %conv1 = sext i32 %13 to i64, !dbg !1114
  %call2 = call noalias ptr @calloc(i64 noundef %conv1, i64 noundef 8) #8, !dbg !1115
  store ptr %call2, ptr %res, align 8, !dbg !1116, !tbaa !189
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load ptr, ptr %res, align 8, !dbg !1117, !tbaa !189
  %tobool = icmp ne ptr %14, null, !dbg !1117
  br i1 %tobool, label %if.end4, label %if.then3, !dbg !1119

if.then3:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !1120
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1120

if.end4:                                          ; preds = %if.end
  %15 = load ptr, ptr %fun.addr, align 8, !dbg !1121, !tbaa !189
  %16 = load ptr, ptr %c.addr, align 8, !dbg !1123, !tbaa !189
  %17 = load i32, ptr %n_trials.addr, align 4, !dbg !1124, !tbaa !183
  %18 = load ptr, ptr %res, align 8, !dbg !1125, !tbaa !189
  %call5 = call i32 %15(ptr noundef %16, i32 noundef %17, ptr noundef %18), !dbg !1121
  %tobool6 = icmp ne i32 %call5, 0, !dbg !1121
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !1126

if.then7:                                         ; preds = %if.end4
  store i32 1, ptr %retval, align 4, !dbg !1127
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1127

if.end8:                                          ; preds = %if.end4
  %19 = load ptr, ptr %c.addr, align 8, !dbg !1128, !tbaa !189
  %rank9 = getelementptr inbounds %struct.context_t, ptr %19, i32 0, i32 0, !dbg !1130
  %20 = load i32, ptr %rank9, align 8, !dbg !1130, !tbaa !202
  %cmp10 = icmp eq i32 0, %20, !dbg !1131
  br i1 %cmp10, label %cond.true, label %cond.false, !dbg !1132

cond.true:                                        ; preds = %if.end8
  br label %cond.end, !dbg !1132

cond.false:                                       ; preds = %if.end8
  %21 = load ptr, ptr %res, align 8, !dbg !1133, !tbaa !189
  br label %cond.end, !dbg !1132

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ inttoptr (i64 1 to ptr), %cond.true ], [ %21, %cond.false ], !dbg !1132
  %22 = load i32, ptr %n_trials.addr, align 4, !dbg !1134, !tbaa !183
  %23 = load ptr, ptr %res, align 8, !dbg !1135, !tbaa !189
  %24 = load i32, ptr %n_trials.addr, align 4, !dbg !1136, !tbaa !183
  %call12 = call i32 @MPI_Gather(ptr noundef %cond, i32 noundef %22, ptr noundef @ompi_mpi_double, ptr noundef %23, i32 noundef %24, ptr noundef @ompi_mpi_double, i32 noundef 0, ptr noundef @ompi_mpi_comm_world), !dbg !1137
  %cmp13 = icmp ne i32 0, %call12, !dbg !1138
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !1139

if.then15:                                        ; preds = %cond.end
  store i32 1, ptr %retval, align 4, !dbg !1140
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1140

if.end16:                                         ; preds = %cond.end
  %25 = load ptr, ptr %res, align 8, !dbg !1142, !tbaa !189
  %26 = load ptr, ptr %out_results.addr, align 8, !dbg !1143, !tbaa !189
  store ptr %25, ptr %26, align 8, !dbg !1144, !tbaa !189
  store i32 0, ptr %retval, align 4, !dbg !1145
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1145

cleanup:                                          ; preds = %if.end16, %if.then15, %if.then7, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %res_len) #7, !dbg !1146
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #7, !dbg !1146
  %27 = load i32, ptr %retval, align 4, !dbg !1146
  ret i32 %27, !dbg !1146
}

; Function Attrs: nounwind uwtable
define internal i32 @emit_stats(ptr noundef %c, ptr noundef %name, i32 noundef %res_len, ptr noundef %results) #0 !dbg !1147 {
entry:
  %c.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %res_len.addr = alloca i32, align 4
  %results.addr = alloca ptr, align 8
  %tot = alloca double, align 8
  %i = alloca i32, align 4
  %ave = alloca double, align 8
  %a = alloca double, align 8
  %i2 = alloca i32, align 4
  %stddev = alloca double, align 8
  %sem = alloca double, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !189
  tail call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !1151, metadata !DIExpression()), !dbg !1165
  store ptr %name, ptr %name.addr, align 8, !tbaa !189
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1152, metadata !DIExpression()), !dbg !1166
  store i32 %res_len, ptr %res_len.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %res_len.addr, metadata !1153, metadata !DIExpression()), !dbg !1167
  store ptr %results, ptr %results.addr, align 8, !tbaa !189
  tail call void @llvm.dbg.declare(metadata ptr %results.addr, metadata !1154, metadata !DIExpression()), !dbg !1168
  %0 = load ptr, ptr %c.addr, align 8, !dbg !1169, !tbaa !189
  %rank = getelementptr inbounds %struct.context_t, ptr %0, i32 0, i32 0, !dbg !1171
  %1 = load i32, ptr %rank, align 8, !dbg !1171, !tbaa !202
  %cmp = icmp ne i32 %1, 0, !dbg !1172
  br i1 %cmp, label %if.then, label %if.end, !dbg !1173

if.then:                                          ; preds = %entry
  br label %out, !dbg !1174

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.declare(metadata ptr %tot, metadata !1155, metadata !DIExpression()), !dbg !1175
  store double 0.000000e+00, ptr %tot, align 8, !dbg !1175, !tbaa !446
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !1176
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1156, metadata !DIExpression()), !dbg !1177
  store i32 0, ptr %i, align 4, !dbg !1177, !tbaa !183
  br label %for.cond, !dbg !1176

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %i, align 4, !dbg !1178, !tbaa !183
  %3 = load i32, ptr %res_len.addr, align 4, !dbg !1180, !tbaa !183
  %cmp1 = icmp slt i32 %2, %3, !dbg !1181
  br i1 %cmp1, label %for.body, label %for.cond.cleanup, !dbg !1182

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !1183
  br label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %results.addr, align 8, !dbg !1184, !tbaa !189
  %5 = load i32, ptr %i, align 4, !dbg !1186, !tbaa !183
  %idxprom = sext i32 %5 to i64, !dbg !1184
  %arrayidx = getelementptr inbounds double, ptr %4, i64 %idxprom, !dbg !1184
  %6 = load double, ptr %arrayidx, align 8, !dbg !1184, !tbaa !446
  %7 = load double, ptr %tot, align 8, !dbg !1187, !tbaa !446
  %add = fadd double %7, %6, !dbg !1187
  store double %add, ptr %tot, align 8, !dbg !1187, !tbaa !446
  br label %for.inc, !dbg !1188

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4, !dbg !1189, !tbaa !183
  %inc = add nsw i32 %8, 1, !dbg !1189
  store i32 %inc, ptr %i, align 4, !dbg !1189, !tbaa !183
  br label %for.cond, !dbg !1183, !llvm.loop !1190

for.end:                                          ; preds = %for.cond.cleanup
  tail call void @llvm.dbg.declare(metadata ptr %ave, metadata !1158, metadata !DIExpression()), !dbg !1192
  %9 = load double, ptr %tot, align 8, !dbg !1193, !tbaa !446
  %10 = load i32, ptr %res_len.addr, align 4, !dbg !1194, !tbaa !183
  %conv = sitofp i32 %10 to double, !dbg !1195
  %div = fdiv double %9, %conv, !dbg !1196
  store double %div, ptr %ave, align 8, !dbg !1192, !tbaa !446
  tail call void @llvm.dbg.declare(metadata ptr %a, metadata !1159, metadata !DIExpression()), !dbg !1197
  store double 0.000000e+00, ptr %a, align 8, !dbg !1197, !tbaa !446
  call void @llvm.lifetime.start.p0(i64 4, ptr %i2) #7, !dbg !1198
  tail call void @llvm.dbg.declare(metadata ptr %i2, metadata !1160, metadata !DIExpression()), !dbg !1199
  store i32 0, ptr %i2, align 4, !dbg !1199, !tbaa !183
  br label %for.cond3, !dbg !1198

for.cond3:                                        ; preds = %for.inc13, %for.end
  %11 = load i32, ptr %i2, align 4, !dbg !1200, !tbaa !183
  %12 = load i32, ptr %res_len.addr, align 4, !dbg !1202, !tbaa !183
  %cmp4 = icmp slt i32 %11, %12, !dbg !1203
  br i1 %cmp4, label %for.body7, label %for.cond.cleanup6, !dbg !1204

for.cond.cleanup6:                                ; preds = %for.cond3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i2) #7, !dbg !1205
  br label %for.end15

for.body7:                                        ; preds = %for.cond3
  %13 = load ptr, ptr %results.addr, align 8, !dbg !1206, !tbaa !189
  %14 = load i32, ptr %i2, align 4, !dbg !1208, !tbaa !183
  %idxprom8 = sext i32 %14 to i64, !dbg !1206
  %arrayidx9 = getelementptr inbounds double, ptr %13, i64 %idxprom8, !dbg !1206
  %15 = load double, ptr %arrayidx9, align 8, !dbg !1206, !tbaa !446
  %16 = load double, ptr %ave, align 8, !dbg !1209, !tbaa !446
  %sub = fsub double %15, %16, !dbg !1210
  %conv10 = fptrunc double %sub to float, !dbg !1206
  %call = call float @powf(float noundef %conv10, float noundef 2.000000e+00) #7, !dbg !1211
  %conv11 = fpext float %call to double, !dbg !1211
  %17 = load double, ptr %a, align 8, !dbg !1212, !tbaa !446
  %add12 = fadd double %17, %conv11, !dbg !1212
  store double %add12, ptr %a, align 8, !dbg !1212, !tbaa !446
  br label %for.inc13, !dbg !1213

for.inc13:                                        ; preds = %for.body7
  %18 = load i32, ptr %i2, align 4, !dbg !1214, !tbaa !183
  %inc14 = add nsw i32 %18, 1, !dbg !1214
  store i32 %inc14, ptr %i2, align 4, !dbg !1214, !tbaa !183
  br label %for.cond3, !dbg !1205, !llvm.loop !1215

for.end15:                                        ; preds = %for.cond.cleanup6
  tail call void @llvm.dbg.declare(metadata ptr %stddev, metadata !1162, metadata !DIExpression()), !dbg !1217
  %19 = load double, ptr %a, align 8, !dbg !1218, !tbaa !446
  %20 = load i32, ptr %res_len.addr, align 4, !dbg !1219, !tbaa !183
  %sub16 = sub nsw i32 %20, 1, !dbg !1220
  %conv17 = sitofp i32 %sub16 to double, !dbg !1221
  %div18 = fdiv double %19, %conv17, !dbg !1222
  %conv19 = fpext double %div18 to x86_fp80, !dbg !1218
  %call20 = call x86_fp80 @sqrtl(x86_fp80 noundef %conv19) #7, !dbg !1223
  %conv21 = fptrunc x86_fp80 %call20 to double, !dbg !1223
  store double %conv21, ptr %stddev, align 8, !dbg !1217, !tbaa !446
  tail call void @llvm.dbg.declare(metadata ptr %sem, metadata !1163, metadata !DIExpression()), !dbg !1224
  %21 = load double, ptr %stddev, align 8, !dbg !1225, !tbaa !446
  %conv22 = fpext double %21 to x86_fp80, !dbg !1225
  %22 = load i32, ptr %res_len.addr, align 4, !dbg !1226, !tbaa !183
  %conv23 = sitofp i32 %22 to double, !dbg !1227
  %conv24 = fpext double %conv23 to x86_fp80, !dbg !1227
  %call25 = call x86_fp80 @sqrtl(x86_fp80 noundef %conv24) #7, !dbg !1228
  %div26 = fdiv x86_fp80 %conv22, %call25, !dbg !1229
  %conv27 = fptrunc x86_fp80 %div26 to double, !dbg !1225
  store double %conv27, ptr %sem, align 8, !dbg !1224, !tbaa !446
  %23 = load ptr, ptr %c.addr, align 8, !dbg !1230, !tbaa !189
  %nranks = getelementptr inbounds %struct.context_t, ptr %23, i32 0, i32 1, !dbg !1231
  %24 = load i32, ptr %nranks, align 4, !dbg !1231, !tbaa !617
  %call28 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, i32 noundef %24), !dbg !1232
  %25 = load ptr, ptr %name.addr, align 8, !dbg !1233, !tbaa !189
  %call29 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, ptr noundef %25), !dbg !1234
  %26 = load i32, ptr %res_len.addr, align 4, !dbg !1235, !tbaa !183
  %call30 = call i32 (ptr, ...) @printf(ptr noundef @.str.18, i32 noundef %26), !dbg !1236
  %27 = load double, ptr %ave, align 8, !dbg !1237, !tbaa !446
  %mul = fmul double %27, 1.000000e+06, !dbg !1238
  %call31 = call i32 (ptr, ...) @printf(ptr noundef @.str.19, double noundef %mul), !dbg !1239
  %28 = load double, ptr %stddev, align 8, !dbg !1240, !tbaa !446
  %mul32 = fmul double %28, 1.000000e+06, !dbg !1241
  %call33 = call i32 (ptr, ...) @printf(ptr noundef @.str.20, double noundef %mul32), !dbg !1242
  %29 = load double, ptr %sem, align 8, !dbg !1243, !tbaa !446
  %mul34 = fmul double %29, 1.000000e+06, !dbg !1244
  %call35 = call i32 (ptr, ...) @printf(ptr noundef @.str.21, double noundef %mul34), !dbg !1245
  br label %out, !dbg !1245

out:                                              ; preds = %for.end15, %if.then
  tail call void @llvm.dbg.label(metadata !1164), !dbg !1246
  %30 = load ptr, ptr %c.addr, align 8, !dbg !1247, !tbaa !189
  call void @demo_emit_sync(ptr noundef %30), !dbg !1248
  ret i32 0, !dbg !1249
}

declare !dbg !1250 i32 @MPI_Gather(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind
declare !dbg !1255 float @powf(float noundef, float noundef) #5

; Function Attrs: nounwind
declare !dbg !1260 x86_fp80 @sqrtl(x86_fp80 noundef) #5

declare !dbg !1264 i32 @MPI_Finalize() #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!18}
!llvm.module.flags = !{!174, !175, !176, !177, !178, !179}
!llvm.ident = !{!180}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 372, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "quo-time.c", directory: "/local-ssd/libquo-a5d64skrddtcir6td6wgkbqasktcbifa-build/aidengro/spack-stage-libquo-1.3.1-a5d64skrddtcir6td6wgkbqasktcbifa/spack-src/tests", checksumkind: CSK_MD5, checksum: "ca3bb7e6a8f43aae8bc399059e0c0bf0")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 5)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 377, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 34)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "n_trials", scope: !14, file: !2, line: 384, type: !173, isLocal: true, isDefinition: true)
!14 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 362, type: !15, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !135)
!15 = !DISubroutineType(types: !16)
!16 = !{!17}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, retainedTypes: !48, globals: !58, splitDebugInlining: false, nameTableKind: None)
!19 = !{!20, !36, !44}
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 42, baseType: !22, size: 32, elements: !23)
!21 = !DIFile(filename: "../src/quo.h", directory: "/local-ssd/libquo-a5d64skrddtcir6td6wgkbqasktcbifa-build/aidengro/spack-stage-libquo-1.3.1-a5d64skrddtcir6td6wgkbqasktcbifa/spack-src/tests", checksumkind: CSK_MD5, checksum: "ad0ed6e22dcda1eba5b0bbc9aef02ae9")
!22 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!23 = !{!24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35}
!24 = !DIEnumerator(name: "QUO_SUCCESS", value: 0)
!25 = !DIEnumerator(name: "QUO_SUCCESS_ALREADY_DONE", value: 1)
!26 = !DIEnumerator(name: "QUO_ERR", value: 2)
!27 = !DIEnumerator(name: "QUO_ERR_SYS", value: 3)
!28 = !DIEnumerator(name: "QUO_ERR_OOR", value: 4)
!29 = !DIEnumerator(name: "QUO_ERR_INVLD_ARG", value: 5)
!30 = !DIEnumerator(name: "QUO_ERR_CALL_BEFORE_INIT", value: 6)
!31 = !DIEnumerator(name: "QUO_ERR_TOPO", value: 7)
!32 = !DIEnumerator(name: "QUO_ERR_MPI", value: 8)
!33 = !DIEnumerator(name: "QUO_ERR_NOT_SUPPORTED", value: 9)
!34 = !DIEnumerator(name: "QUO_ERR_POP", value: 10)
!35 = !DIEnumerator(name: "QUO_ERR_NOT_FOUND", value: 11)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 70, baseType: !22, size: 32, elements: !37)
!37 = !{!38, !39, !40, !41, !42, !43}
!38 = !DIEnumerator(name: "QUO_OBJ_MACHINE", value: 0)
!39 = !DIEnumerator(name: "QUO_OBJ_NUMANODE", value: 1)
!40 = !DIEnumerator(name: "QUO_OBJ_PACKAGE", value: 2)
!41 = !DIEnumerator(name: "QUO_OBJ_SOCKET", value: 3)
!42 = !DIEnumerator(name: "QUO_OBJ_CORE", value: 4)
!43 = !DIEnumerator(name: "QUO_OBJ_PU", value: 5)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 86, baseType: !22, size: 32, elements: !45)
!45 = !{!46, !47}
!46 = !DIEnumerator(name: "QUO_BIND_PUSH_PROVIDED", value: 0)
!47 = !DIEnumerator(name: "QUO_BIND_PUSH_OBJ", value: 1)
!48 = !{!49, !50, !54, !57}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "MPI_Comm", file: !51, line: 423, baseType: !52)
!51 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_/linux-ubuntu22.04-zen2/clang-18.0.0/openmpi-4.1.6-bvv5l5ytngtnavftzxt3oz6yd5m7jgma/include/mpi.h", directory: "/local-ssd/libquo-a5d64skrddtcir6td6wgkbqasktcbifa-build", checksumkind: CSK_MD5, checksum: "ef8ce753e2d8fd77bef5dcb85e016739")
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DICompositeType(tag: DW_TAG_structure_type, name: "ompi_communicator_t", file: !51, line: 423, flags: DIFlagFwdDecl)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "MPI_Datatype", file: !51, line: 424, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DICompositeType(tag: DW_TAG_structure_type, name: "ompi_datatype_t", file: !51, line: 424, flags: DIFlagFwdDecl)
!57 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!58 = !{!0, !7, !12, !59, !64, !69, !71, !76, !81, !86, !88, !93, !98, !100, !102, !107, !109, !111, !113, !118, !123, !128, !130}
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !2, line: 388, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 11)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !2, line: 389, type: !66, isLocal: true, isDefinition: true)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 9)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !2, line: 390, type: !66, isLocal: true, isDefinition: true)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(scope: null, file: !2, line: 391, type: !73, isLocal: true, isDefinition: true)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 17)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(scope: null, file: !2, line: 392, type: !78, isLocal: true, isDefinition: true)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 14)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(scope: null, file: !2, line: 393, type: !83, isLocal: true, isDefinition: true)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 13)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(scope: null, file: !2, line: 394, type: !73, isLocal: true, isDefinition: true)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(scope: null, file: !2, line: 395, type: !90, isLocal: true, isDefinition: true)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 12)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(scope: null, file: !2, line: 403, type: !95, isLocal: true, isDefinition: true)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 23)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(scope: null, file: !2, line: 403, type: !61, isLocal: true, isDefinition: true)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(scope: null, file: !2, line: 160, type: !78, isLocal: true, isDefinition: true)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(scope: null, file: !2, line: 185, type: !104, isLocal: true, isDefinition: true)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 4)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(scope: null, file: !2, line: 348, type: !61, isLocal: true, isDefinition: true)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(scope: null, file: !2, line: 354, type: !90, isLocal: true, isDefinition: true)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(scope: null, file: !2, line: 328, type: !90, isLocal: true, isDefinition: true)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(scope: null, file: !2, line: 329, type: !115, isLocal: true, isDefinition: true)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 16)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(scope: null, file: !2, line: 330, type: !120, isLocal: true, isDefinition: true)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 24)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(scope: null, file: !2, line: 331, type: !125, isLocal: true, isDefinition: true)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 28)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(scope: null, file: !2, line: 332, type: !9, isLocal: true, isDefinition: true)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(scope: null, file: !2, line: 333, type: !132, isLocal: true, isDefinition: true)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 39)
!135 = !{!136, !137, !139, !153, !170, !172}
!136 = !DILocalVariable(name: "erc", scope: !14, file: !2, line: 364, type: !17)
!137 = !DILocalVariable(name: "bad_func", scope: !14, file: !2, line: 365, type: !138)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!139 = !DILocalVariable(name: "context", scope: !14, file: !2, line: 366, type: !140)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "context_t", file: !2, line: 33, baseType: !142)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "context_t", file: !2, line: 24, size: 192, elements: !143)
!143 = !{!144, !145, !146, !148}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "rank", scope: !142, file: !2, line: 26, baseType: !17, size: 32)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "nranks", scope: !142, file: !2, line: 28, baseType: !17, size: 32, offset: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "mpi_inited", scope: !142, file: !2, line: 30, baseType: !147, size: 8, offset: 64)
!147 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "quo", scope: !142, file: !2, line: 32, baseType: !149, size: 64, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUO_context", file: !21, line: 35, baseType: !150)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUO_t", file: !21, line: 33, baseType: !152)
!152 = !DICompositeType(tag: DW_TAG_structure_type, name: "QUO_t", file: !21, line: 31, flags: DIFlagFwdDecl)
!153 = !DILocalVariable(name: "experiments", scope: !14, file: !2, line: 386, type: !154)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 2560, elements: !168)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "experiment_t", file: !2, line: 42, baseType: !156)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "experiment_t", file: !2, line: 35, size: 320, elements: !157)
!157 = !{!158, !159, !160, !165, !166, !167}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !156, file: !2, line: 36, baseType: !140, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !156, file: !2, line: 37, baseType: !138, size: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !156, file: !2, line: 38, baseType: !161, size: 64, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{!17, !140, !17, !164}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "n_trials", scope: !156, file: !2, line: 39, baseType: !17, size: 32, offset: 192)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "res_len", scope: !156, file: !2, line: 40, baseType: !17, size: 32, offset: 224)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !156, file: !2, line: 41, baseType: !164, size: 64, offset: 256)
!168 = !{!169}
!169 = !DISubrange(count: 8)
!170 = !DILocalVariable(name: "i", scope: !171, file: !2, line: 398, type: !22)
!171 = distinct !DILexicalBlock(scope: !14, file: !2, line: 398, column: 5)
!172 = !DILabel(scope: !14, name: "out", file: !2, line: 401)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!174 = !{i32 7, !"Dwarf Version", i32 5}
!175 = !{i32 2, !"Debug Info Version", i32 3}
!176 = !{i32 1, !"wchar_size", i32 4}
!177 = !{i32 8, !"PIC Level", i32 2}
!178 = !{i32 7, !"PIE Level", i32 2}
!179 = !{i32 7, !"uwtable", i32 2}
!180 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!181 = !DILocation(line: 364, column: 5, scope: !14)
!182 = !DILocation(line: 364, column: 9, scope: !14)
!183 = !{!184, !184, i64 0}
!184 = !{!"int", !185, i64 0}
!185 = !{!"omnipotent char", !186, i64 0}
!186 = !{!"Simple C/C++ TBAA"}
!187 = !DILocation(line: 365, column: 5, scope: !14)
!188 = !DILocation(line: 365, column: 11, scope: !14)
!189 = !{!190, !190, i64 0}
!190 = !{!"any pointer", !185, i64 0}
!191 = !DILocation(line: 366, column: 5, scope: !14)
!192 = !DILocation(line: 366, column: 16, scope: !14)
!193 = !DILocation(line: 371, column: 9, scope: !194)
!194 = distinct !DILexicalBlock(scope: !14, file: !2, line: 371, column: 9)
!195 = !DILocation(line: 371, column: 9, scope: !14)
!196 = !DILocation(line: 372, column: 18, scope: !197)
!197 = distinct !DILexicalBlock(scope: !194, file: !2, line: 371, column: 25)
!198 = !DILocation(line: 373, column: 9, scope: !197)
!199 = !DILocation(line: 376, column: 14, scope: !200)
!200 = distinct !DILexicalBlock(scope: !14, file: !2, line: 376, column: 9)
!201 = !DILocation(line: 376, column: 23, scope: !200)
!202 = !{!203, !184, i64 0}
!203 = !{!"context_t", !184, i64 0, !184, i64 4, !204, i64 8, !190, i64 16}
!204 = !{!"_Bool", !185, i64 0}
!205 = !DILocation(line: 376, column: 11, scope: !200)
!206 = !DILocation(line: 376, column: 9, scope: !14)
!207 = !DILocation(line: 377, column: 9, scope: !208)
!208 = distinct !DILexicalBlock(scope: !200, file: !2, line: 376, column: 29)
!209 = !DILocation(line: 378, column: 16, scope: !208)
!210 = !DILocation(line: 378, column: 9, scope: !208)
!211 = !DILocation(line: 379, column: 5, scope: !208)
!212 = !DILocation(line: 380, column: 20, scope: !14)
!213 = !DILocation(line: 380, column: 5, scope: !14)
!214 = !DILocation(line: 386, column: 18, scope: !14)
!215 = !DILocation(line: 387, column: 5, scope: !14)
!216 = !DILocation(line: 388, column: 9, scope: !14)
!217 = !DILocation(line: 388, column: 10, scope: !14)
!218 = !{!219, !190, i64 0}
!219 = !{!"experiment_t", !190, i64 0, !190, i64 8, !190, i64 16, !184, i64 24, !184, i64 28, !190, i64 32}
!220 = !{!219, !190, i64 8}
!221 = !{!219, !190, i64 16}
!222 = !{!219, !184, i64 24}
!223 = !{!219, !184, i64 28}
!224 = !{!219, !190, i64 32}
!225 = !DILocation(line: 389, column: 9, scope: !14)
!226 = !DILocation(line: 389, column: 10, scope: !14)
!227 = !DILocation(line: 390, column: 9, scope: !14)
!228 = !DILocation(line: 390, column: 10, scope: !14)
!229 = !DILocation(line: 391, column: 9, scope: !14)
!230 = !DILocation(line: 391, column: 10, scope: !14)
!231 = !DILocation(line: 392, column: 9, scope: !14)
!232 = !DILocation(line: 392, column: 10, scope: !14)
!233 = !DILocation(line: 393, column: 9, scope: !14)
!234 = !DILocation(line: 393, column: 10, scope: !14)
!235 = !DILocation(line: 394, column: 9, scope: !14)
!236 = !DILocation(line: 394, column: 10, scope: !14)
!237 = !DILocation(line: 395, column: 9, scope: !14)
!238 = !DILocation(line: 395, column: 10, scope: !14)
!239 = !DILocation(line: 398, column: 10, scope: !171)
!240 = !DILocation(line: 398, column: 19, scope: !171)
!241 = !DILocation(line: 398, column: 26, scope: !242)
!242 = distinct !DILexicalBlock(scope: !171, file: !2, line: 398, column: 5)
!243 = !DILocation(line: 398, column: 28, scope: !242)
!244 = !DILocation(line: 398, column: 5, scope: !171)
!245 = !DILocation(line: 398, column: 5, scope: !242)
!246 = !DILocation(line: 399, column: 37, scope: !247)
!247 = distinct !DILexicalBlock(scope: !242, file: !2, line: 398, column: 77)
!248 = !DILocation(line: 399, column: 25, scope: !247)
!249 = !DILocation(line: 399, column: 9, scope: !247)
!250 = !DILocation(line: 400, column: 5, scope: !247)
!251 = !DILocation(line: 398, column: 72, scope: !242)
!252 = distinct !{!252, !244, !253, !254}
!253 = !DILocation(line: 400, column: 5, scope: !171)
!254 = !{!"llvm.loop.mustprogress"}
!255 = !DILocation(line: 401, column: 1, scope: !14)
!256 = !DILocation(line: 402, column: 17, scope: !257)
!257 = distinct !DILexicalBlock(scope: !14, file: !2, line: 402, column: 9)
!258 = !DILocation(line: 402, column: 14, scope: !257)
!259 = !DILocation(line: 402, column: 9, scope: !14)
!260 = !DILocation(line: 403, column: 17, scope: !261)
!261 = distinct !DILexicalBlock(scope: !257, file: !2, line: 402, column: 27)
!262 = !DILocation(line: 403, column: 62, scope: !261)
!263 = !DILocation(line: 403, column: 9, scope: !261)
!264 = !DILocation(line: 404, column: 13, scope: !261)
!265 = !DILocation(line: 405, column: 5, scope: !261)
!266 = !DILocation(line: 406, column: 16, scope: !14)
!267 = !DILocation(line: 406, column: 11, scope: !14)
!268 = !DILocation(line: 407, column: 12, scope: !14)
!269 = !DILocation(line: 408, column: 1, scope: !14)
!270 = !DILocation(line: 407, column: 5, scope: !14)
!271 = distinct !DISubprogram(name: "init", scope: !2, file: !2, line: 77, type: !272, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !275)
!272 = !DISubroutineType(types: !273)
!273 = !{!17, !274}
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!275 = !{!276, !277, !278}
!276 = !DILocalVariable(name: "c", arg: 1, scope: !271, file: !2, line: 77, type: !274)
!277 = !DILocalVariable(name: "newc", scope: !271, file: !2, line: 79, type: !140)
!278 = !DILabel(scope: !271, name: "err", file: !2, line: 95)
!279 = !DILocation(line: 77, column: 18, scope: !271)
!280 = !DILocation(line: 79, column: 5, scope: !271)
!281 = !DILocation(line: 79, column: 16, scope: !271)
!282 = !DILocation(line: 81, column: 25, scope: !283)
!283 = distinct !DILexicalBlock(scope: !271, file: !2, line: 81, column: 9)
!284 = !DILocation(line: 81, column: 23, scope: !283)
!285 = !DILocation(line: 81, column: 14, scope: !283)
!286 = !DILocation(line: 81, column: 9, scope: !271)
!287 = !DILocation(line: 81, column: 52, scope: !283)
!288 = !DILocation(line: 83, column: 24, scope: !289)
!289 = distinct !DILexicalBlock(scope: !271, file: !2, line: 83, column: 9)
!290 = !DILocation(line: 83, column: 21, scope: !289)
!291 = !DILocation(line: 83, column: 9, scope: !271)
!292 = !DILocation(line: 83, column: 46, scope: !289)
!293 = !DILocation(line: 85, column: 56, scope: !294)
!294 = distinct !DILexicalBlock(scope: !271, file: !2, line: 85, column: 9)
!295 = !DILocation(line: 85, column: 62, scope: !294)
!296 = !DILocation(line: 85, column: 24, scope: !294)
!297 = !DILocation(line: 85, column: 21, scope: !294)
!298 = !DILocation(line: 85, column: 9, scope: !271)
!299 = !DILocation(line: 85, column: 72, scope: !294)
!300 = !DILocation(line: 87, column: 56, scope: !301)
!301 = distinct !DILexicalBlock(scope: !271, file: !2, line: 87, column: 9)
!302 = !DILocation(line: 87, column: 62, scope: !301)
!303 = !DILocation(line: 87, column: 24, scope: !301)
!304 = !DILocation(line: 87, column: 21, scope: !301)
!305 = !DILocation(line: 87, column: 9, scope: !271)
!306 = !DILocation(line: 87, column: 70, scope: !301)
!307 = !DILocation(line: 91, column: 36, scope: !308)
!308 = distinct !DILexicalBlock(scope: !271, file: !2, line: 91, column: 9)
!309 = !DILocation(line: 91, column: 42, scope: !308)
!310 = !DILocation(line: 91, column: 24, scope: !308)
!311 = !DILocation(line: 91, column: 21, scope: !308)
!312 = !DILocation(line: 91, column: 9, scope: !271)
!313 = !DILocation(line: 91, column: 64, scope: !308)
!314 = !DILocation(line: 92, column: 5, scope: !271)
!315 = !DILocation(line: 92, column: 11, scope: !271)
!316 = !DILocation(line: 92, column: 22, scope: !271)
!317 = !{!203, !204, i64 8}
!318 = !DILocation(line: 93, column: 10, scope: !271)
!319 = !DILocation(line: 93, column: 6, scope: !271)
!320 = !DILocation(line: 93, column: 8, scope: !271)
!321 = !DILocation(line: 94, column: 5, scope: !271)
!322 = !DILocation(line: 95, column: 1, scope: !271)
!323 = !DILocation(line: 96, column: 16, scope: !271)
!324 = !DILocation(line: 96, column: 11, scope: !271)
!325 = !DILocation(line: 97, column: 5, scope: !271)
!326 = !DILocation(line: 98, column: 1, scope: !271)
!327 = !DISubprogram(name: "printf", scope: !328, file: !328, line: 356, type: !329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!328 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!329 = !DISubroutineType(types: !330)
!330 = !{!17, !331, null}
!331 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!334 = !DISubprogram(name: "fflush", scope: !328, file: !328, line: 230, type: !335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!335 = !DISubroutineType(types: !336)
!336 = !{!17, !337}
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !339, line: 7, baseType: !340)
!339 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !341, line: 49, size: 1728, elements: !342)
!341 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!342 = !{!343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !358, !360, !361, !362, !366, !368, !370, !374, !377, !379, !382, !385, !386, !387, !391, !392}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !340, file: !341, line: 51, baseType: !17, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !340, file: !341, line: 54, baseType: !138, size: 64, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !340, file: !341, line: 55, baseType: !138, size: 64, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !340, file: !341, line: 56, baseType: !138, size: 64, offset: 192)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !340, file: !341, line: 57, baseType: !138, size: 64, offset: 256)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !340, file: !341, line: 58, baseType: !138, size: 64, offset: 320)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !340, file: !341, line: 59, baseType: !138, size: 64, offset: 384)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !340, file: !341, line: 60, baseType: !138, size: 64, offset: 448)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !340, file: !341, line: 61, baseType: !138, size: 64, offset: 512)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !340, file: !341, line: 64, baseType: !138, size: 64, offset: 576)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !340, file: !341, line: 65, baseType: !138, size: 64, offset: 640)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !340, file: !341, line: 66, baseType: !138, size: 64, offset: 704)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !340, file: !341, line: 68, baseType: !356, size: 64, offset: 768)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !341, line: 36, flags: DIFlagFwdDecl)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !340, file: !341, line: 70, baseType: !359, size: 64, offset: 832)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !340, file: !341, line: 72, baseType: !17, size: 32, offset: 896)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !340, file: !341, line: 73, baseType: !17, size: 32, offset: 928)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !340, file: !341, line: 74, baseType: !363, size: 64, offset: 960)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !364, line: 152, baseType: !365)
!364 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!365 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !340, file: !341, line: 77, baseType: !367, size: 16, offset: 1024)
!367 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !340, file: !341, line: 78, baseType: !369, size: 8, offset: 1040)
!369 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !340, file: !341, line: 79, baseType: !371, size: 8, offset: 1048)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !372)
!372 = !{!373}
!373 = !DISubrange(count: 1)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !340, file: !341, line: 81, baseType: !375, size: 64, offset: 1088)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !341, line: 43, baseType: null)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !340, file: !341, line: 89, baseType: !378, size: 64, offset: 1152)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !364, line: 153, baseType: !365)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !340, file: !341, line: 91, baseType: !380, size: 64, offset: 1216)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !341, line: 37, flags: DIFlagFwdDecl)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !340, file: !341, line: 92, baseType: !383, size: 64, offset: 1280)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !341, line: 38, flags: DIFlagFwdDecl)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !340, file: !341, line: 93, baseType: !359, size: 64, offset: 1344)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !340, file: !341, line: 94, baseType: !49, size: 64, offset: 1408)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !340, file: !341, line: 95, baseType: !388, size: 64, offset: 1472)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !389, line: 70, baseType: !390)
!389 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!390 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !340, file: !341, line: 96, baseType: !17, size: 32, offset: 1536)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !340, file: !341, line: 98, baseType: !393, size: 160, offset: 1568)
!393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !394)
!394 = !{!395}
!395 = !DISubrange(count: 20)
!396 = distinct !DISubprogram(name: "demo_emit_sync", scope: !2, file: !2, line: 48, type: !397, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !401)
!397 = !DISubroutineType(types: !398)
!398 = !{null, !399}
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!401 = !{!402}
!402 = !DILocalVariable(name: "c", arg: 1, scope: !396, file: !2, line: 48, type: !399)
!403 = !DILocation(line: 48, column: 33, scope: !396)
!404 = !DILocation(line: 50, column: 5, scope: !396)
!405 = !DILocation(line: 51, column: 13, scope: !396)
!406 = !DILocation(line: 51, column: 16, scope: !396)
!407 = !DILocation(line: 51, column: 22, scope: !396)
!408 = !DILocation(line: 51, column: 5, scope: !396)
!409 = !DILocation(line: 52, column: 1, scope: !396)
!410 = distinct !DISubprogram(name: "qcreate", scope: !2, file: !2, line: 101, type: !162, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !411)
!411 = !{!412, !413, !414, !415, !417, !419, !422, !423}
!412 = !DILocalVariable(name: "c", arg: 1, scope: !410, file: !2, line: 102, type: !140)
!413 = !DILocalVariable(name: "n_trials", arg: 2, scope: !410, file: !2, line: 103, type: !17)
!414 = !DILocalVariable(name: "res", arg: 3, scope: !410, file: !2, line: 104, type: !164)
!415 = !DILocalVariable(name: "ctx", scope: !410, file: !2, line: 108, type: !416)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!417 = !DILocalVariable(name: "i", scope: !418, file: !2, line: 111, type: !17)
!418 = distinct !DILexicalBlock(scope: !410, file: !2, line: 111, column: 5)
!419 = !DILocalVariable(name: "start", scope: !420, file: !2, line: 112, type: !57)
!420 = distinct !DILexicalBlock(scope: !421, file: !2, line: 111, column: 40)
!421 = distinct !DILexicalBlock(scope: !418, file: !2, line: 111, column: 5)
!422 = !DILocalVariable(name: "end", scope: !420, file: !2, line: 114, type: !57)
!423 = !DILocalVariable(name: "i", scope: !424, file: !2, line: 117, type: !17)
!424 = distinct !DILexicalBlock(scope: !410, file: !2, line: 117, column: 5)
!425 = !DILocation(line: 102, column: 16, scope: !410)
!426 = !DILocation(line: 103, column: 9, scope: !410)
!427 = !DILocation(line: 104, column: 13, scope: !410)
!428 = !DILocation(line: 106, column: 11, scope: !410)
!429 = !DILocation(line: 108, column: 5, scope: !410)
!430 = !DILocation(line: 108, column: 18, scope: !410)
!431 = !DILocation(line: 108, column: 31, scope: !410)
!432 = !DILocation(line: 108, column: 24, scope: !410)
!433 = !DILocation(line: 109, column: 10, scope: !434)
!434 = distinct !DILexicalBlock(scope: !410, file: !2, line: 109, column: 9)
!435 = !DILocation(line: 109, column: 9, scope: !410)
!436 = !DILocation(line: 109, column: 15, scope: !434)
!437 = !DILocation(line: 111, column: 10, scope: !418)
!438 = !DILocation(line: 111, column: 14, scope: !418)
!439 = !DILocation(line: 111, column: 21, scope: !421)
!440 = !DILocation(line: 111, column: 25, scope: !421)
!441 = !DILocation(line: 111, column: 23, scope: !421)
!442 = !DILocation(line: 111, column: 5, scope: !418)
!443 = !DILocation(line: 112, column: 9, scope: !420)
!444 = !DILocation(line: 112, column: 16, scope: !420)
!445 = !DILocation(line: 112, column: 24, scope: !420)
!446 = !{!447, !447, i64 0}
!447 = !{!"double", !185, i64 0}
!448 = !DILocation(line: 113, column: 41, scope: !449)
!449 = distinct !DILexicalBlock(scope: !420, file: !2, line: 113, column: 13)
!450 = !DILocation(line: 113, column: 45, scope: !449)
!451 = !DILocation(line: 113, column: 28, scope: !449)
!452 = !DILocation(line: 113, column: 25, scope: !449)
!453 = !DILocation(line: 113, column: 13, scope: !420)
!454 = !DILocation(line: 113, column: 67, scope: !449)
!455 = !DILocation(line: 114, column: 9, scope: !420)
!456 = !DILocation(line: 114, column: 16, scope: !420)
!457 = !DILocation(line: 114, column: 22, scope: !420)
!458 = !DILocation(line: 115, column: 18, scope: !420)
!459 = !DILocation(line: 115, column: 24, scope: !420)
!460 = !DILocation(line: 115, column: 22, scope: !420)
!461 = !DILocation(line: 115, column: 9, scope: !420)
!462 = !DILocation(line: 115, column: 13, scope: !420)
!463 = !DILocation(line: 115, column: 16, scope: !420)
!464 = !DILocation(line: 116, column: 5, scope: !421)
!465 = !DILocation(line: 116, column: 5, scope: !420)
!466 = !DILocation(line: 111, column: 35, scope: !421)
!467 = !DILocation(line: 111, column: 5, scope: !421)
!468 = distinct !{!468, !442, !469, !254}
!469 = !DILocation(line: 116, column: 5, scope: !418)
!470 = !DILocation(line: 117, column: 10, scope: !424)
!471 = !DILocation(line: 117, column: 14, scope: !424)
!472 = !DILocation(line: 117, column: 21, scope: !473)
!473 = distinct !DILexicalBlock(scope: !424, file: !2, line: 117, column: 5)
!474 = !DILocation(line: 117, column: 25, scope: !473)
!475 = !DILocation(line: 117, column: 23, scope: !473)
!476 = !DILocation(line: 117, column: 5, scope: !424)
!477 = !DILocation(line: 117, column: 5, scope: !473)
!478 = !DILocation(line: 118, column: 18, scope: !479)
!479 = distinct !DILexicalBlock(scope: !473, file: !2, line: 117, column: 40)
!480 = !DILocation(line: 118, column: 22, scope: !479)
!481 = !DILocation(line: 118, column: 9, scope: !479)
!482 = !DILocation(line: 119, column: 5, scope: !479)
!483 = !DILocation(line: 117, column: 35, scope: !473)
!484 = distinct !{!484, !476, !485, !254}
!485 = !DILocation(line: 119, column: 5, scope: !424)
!486 = !DILocation(line: 120, column: 5, scope: !410)
!487 = !DILocation(line: 121, column: 1, scope: !410)
!488 = distinct !DISubprogram(name: "qfree", scope: !2, file: !2, line: 124, type: !162, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !489)
!489 = !{!490, !491, !492, !493, !494, !496, !498, !501}
!490 = !DILocalVariable(name: "c", arg: 1, scope: !488, file: !2, line: 125, type: !140)
!491 = !DILocalVariable(name: "n_trials", arg: 2, scope: !488, file: !2, line: 126, type: !17)
!492 = !DILocalVariable(name: "res", arg: 3, scope: !488, file: !2, line: 127, type: !164)
!493 = !DILocalVariable(name: "ctx", scope: !488, file: !2, line: 131, type: !416)
!494 = !DILocalVariable(name: "i", scope: !495, file: !2, line: 134, type: !17)
!495 = distinct !DILexicalBlock(scope: !488, file: !2, line: 134, column: 5)
!496 = !DILocalVariable(name: "i", scope: !497, file: !2, line: 137, type: !17)
!497 = distinct !DILexicalBlock(scope: !488, file: !2, line: 137, column: 5)
!498 = !DILocalVariable(name: "start", scope: !499, file: !2, line: 138, type: !57)
!499 = distinct !DILexicalBlock(scope: !500, file: !2, line: 137, column: 40)
!500 = distinct !DILexicalBlock(scope: !497, file: !2, line: 137, column: 5)
!501 = !DILocalVariable(name: "end", scope: !499, file: !2, line: 140, type: !57)
!502 = !DILocation(line: 125, column: 16, scope: !488)
!503 = !DILocation(line: 126, column: 9, scope: !488)
!504 = !DILocation(line: 127, column: 13, scope: !488)
!505 = !DILocation(line: 129, column: 11, scope: !488)
!506 = !DILocation(line: 131, column: 5, scope: !488)
!507 = !DILocation(line: 131, column: 18, scope: !488)
!508 = !DILocation(line: 131, column: 31, scope: !488)
!509 = !DILocation(line: 131, column: 24, scope: !488)
!510 = !DILocation(line: 132, column: 10, scope: !511)
!511 = distinct !DILexicalBlock(scope: !488, file: !2, line: 132, column: 9)
!512 = !DILocation(line: 132, column: 9, scope: !488)
!513 = !DILocation(line: 132, column: 15, scope: !511)
!514 = !DILocation(line: 134, column: 10, scope: !495)
!515 = !DILocation(line: 134, column: 14, scope: !495)
!516 = !DILocation(line: 134, column: 21, scope: !517)
!517 = distinct !DILexicalBlock(scope: !495, file: !2, line: 134, column: 5)
!518 = !DILocation(line: 134, column: 25, scope: !517)
!519 = !DILocation(line: 134, column: 23, scope: !517)
!520 = !DILocation(line: 134, column: 5, scope: !495)
!521 = !DILocation(line: 135, column: 41, scope: !522)
!522 = distinct !DILexicalBlock(scope: !523, file: !2, line: 135, column: 13)
!523 = distinct !DILexicalBlock(scope: !517, file: !2, line: 134, column: 40)
!524 = !DILocation(line: 135, column: 45, scope: !522)
!525 = !DILocation(line: 135, column: 28, scope: !522)
!526 = !DILocation(line: 135, column: 25, scope: !522)
!527 = !DILocation(line: 135, column: 13, scope: !523)
!528 = !DILocation(line: 135, column: 67, scope: !522)
!529 = !DILocation(line: 136, column: 5, scope: !523)
!530 = !DILocation(line: 134, column: 35, scope: !517)
!531 = !DILocation(line: 134, column: 5, scope: !517)
!532 = distinct !{!532, !520, !533, !254}
!533 = !DILocation(line: 136, column: 5, scope: !495)
!534 = !DILocation(line: 137, column: 10, scope: !497)
!535 = !DILocation(line: 137, column: 14, scope: !497)
!536 = !DILocation(line: 137, column: 21, scope: !500)
!537 = !DILocation(line: 137, column: 25, scope: !500)
!538 = !DILocation(line: 137, column: 23, scope: !500)
!539 = !DILocation(line: 137, column: 5, scope: !497)
!540 = !DILocation(line: 137, column: 5, scope: !500)
!541 = !DILocation(line: 138, column: 9, scope: !499)
!542 = !DILocation(line: 138, column: 16, scope: !499)
!543 = !DILocation(line: 138, column: 24, scope: !499)
!544 = !DILocation(line: 139, column: 18, scope: !499)
!545 = !DILocation(line: 139, column: 22, scope: !499)
!546 = !DILocation(line: 139, column: 9, scope: !499)
!547 = !DILocation(line: 140, column: 9, scope: !499)
!548 = !DILocation(line: 140, column: 16, scope: !499)
!549 = !DILocation(line: 140, column: 22, scope: !499)
!550 = !DILocation(line: 141, column: 18, scope: !499)
!551 = !DILocation(line: 141, column: 24, scope: !499)
!552 = !DILocation(line: 141, column: 22, scope: !499)
!553 = !DILocation(line: 141, column: 9, scope: !499)
!554 = !DILocation(line: 141, column: 13, scope: !499)
!555 = !DILocation(line: 141, column: 16, scope: !499)
!556 = !DILocation(line: 142, column: 5, scope: !500)
!557 = !DILocation(line: 142, column: 5, scope: !499)
!558 = !DILocation(line: 137, column: 35, scope: !500)
!559 = distinct !{!559, !539, !560, !254}
!560 = !DILocation(line: 142, column: 5, scope: !497)
!561 = !DILocation(line: 143, column: 5, scope: !488)
!562 = !DILocation(line: 144, column: 1, scope: !488)
!563 = distinct !DISubprogram(name: "qnpus", scope: !2, file: !2, line: 147, type: !162, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !564)
!564 = !{!565, !566, !567, !568, !569, !571, !574}
!565 = !DILocalVariable(name: "c", arg: 1, scope: !563, file: !2, line: 148, type: !140)
!566 = !DILocalVariable(name: "n_trials", arg: 2, scope: !563, file: !2, line: 149, type: !17)
!567 = !DILocalVariable(name: "res", arg: 3, scope: !563, file: !2, line: 150, type: !164)
!568 = !DILocalVariable(name: "n", scope: !563, file: !2, line: 152, type: !17)
!569 = !DILocalVariable(name: "i", scope: !570, file: !2, line: 153, type: !17)
!570 = distinct !DILexicalBlock(scope: !563, file: !2, line: 153, column: 5)
!571 = !DILocalVariable(name: "start", scope: !572, file: !2, line: 154, type: !57)
!572 = distinct !DILexicalBlock(scope: !573, file: !2, line: 153, column: 40)
!573 = distinct !DILexicalBlock(scope: !570, file: !2, line: 153, column: 5)
!574 = !DILocalVariable(name: "end", scope: !572, file: !2, line: 156, type: !57)
!575 = !DILocation(line: 148, column: 16, scope: !563)
!576 = !DILocation(line: 149, column: 9, scope: !563)
!577 = !DILocation(line: 150, column: 13, scope: !563)
!578 = !DILocation(line: 152, column: 5, scope: !563)
!579 = !DILocation(line: 152, column: 9, scope: !563)
!580 = !DILocation(line: 153, column: 10, scope: !570)
!581 = !DILocation(line: 153, column: 14, scope: !570)
!582 = !DILocation(line: 153, column: 21, scope: !573)
!583 = !DILocation(line: 153, column: 25, scope: !573)
!584 = !DILocation(line: 153, column: 23, scope: !573)
!585 = !DILocation(line: 153, column: 5, scope: !570)
!586 = !DILocation(line: 154, column: 9, scope: !572)
!587 = !DILocation(line: 154, column: 16, scope: !572)
!588 = !DILocation(line: 154, column: 24, scope: !572)
!589 = !DILocation(line: 155, column: 37, scope: !590)
!590 = distinct !DILexicalBlock(scope: !572, file: !2, line: 155, column: 13)
!591 = !DILocation(line: 155, column: 40, scope: !590)
!592 = !{!203, !190, i64 16}
!593 = !DILocation(line: 155, column: 28, scope: !590)
!594 = !DILocation(line: 155, column: 25, scope: !590)
!595 = !DILocation(line: 155, column: 13, scope: !572)
!596 = !DILocation(line: 155, column: 50, scope: !590)
!597 = !DILocation(line: 156, column: 9, scope: !572)
!598 = !DILocation(line: 156, column: 16, scope: !572)
!599 = !DILocation(line: 156, column: 22, scope: !572)
!600 = !DILocation(line: 157, column: 18, scope: !572)
!601 = !DILocation(line: 157, column: 24, scope: !572)
!602 = !DILocation(line: 157, column: 22, scope: !572)
!603 = !DILocation(line: 157, column: 9, scope: !572)
!604 = !DILocation(line: 157, column: 13, scope: !572)
!605 = !DILocation(line: 157, column: 16, scope: !572)
!606 = !DILocation(line: 158, column: 5, scope: !573)
!607 = !DILocation(line: 158, column: 5, scope: !572)
!608 = !DILocation(line: 153, column: 35, scope: !573)
!609 = !DILocation(line: 153, column: 5, scope: !573)
!610 = distinct !{!610, !585, !611, !254}
!611 = !DILocation(line: 158, column: 5, scope: !570)
!612 = !DILocation(line: 160, column: 9, scope: !613)
!613 = distinct !DILexicalBlock(scope: !563, file: !2, line: 160, column: 9)
!614 = !DILocation(line: 160, column: 12, scope: !613)
!615 = !DILocation(line: 160, column: 21, scope: !613)
!616 = !DILocation(line: 160, column: 24, scope: !613)
!617 = !{!203, !184, i64 4}
!618 = !DILocation(line: 160, column: 31, scope: !613)
!619 = !DILocation(line: 160, column: 17, scope: !613)
!620 = !DILocation(line: 160, column: 9, scope: !563)
!621 = !DILocation(line: 160, column: 62, scope: !613)
!622 = !DILocation(line: 160, column: 37, scope: !613)
!623 = !DILocation(line: 161, column: 5, scope: !563)
!624 = !DILocation(line: 162, column: 1, scope: !563)
!625 = distinct !DISubprogram(name: "qquids_in_type", scope: !2, file: !2, line: 165, type: !162, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !626)
!626 = !{!627, !628, !629, !630, !631, !633, !636, !638, !639, !640, !641}
!627 = !DILocalVariable(name: "c", arg: 1, scope: !625, file: !2, line: 166, type: !140)
!628 = !DILocalVariable(name: "n_trials", arg: 2, scope: !625, file: !2, line: 167, type: !17)
!629 = !DILocalVariable(name: "res", arg: 3, scope: !625, file: !2, line: 168, type: !164)
!630 = !DILocalVariable(name: "n", scope: !625, file: !2, line: 170, type: !17)
!631 = !DILocalVariable(name: "i", scope: !632, file: !2, line: 171, type: !17)
!632 = distinct !DILexicalBlock(scope: !625, file: !2, line: 171, column: 5)
!633 = !DILocalVariable(name: "nq", scope: !634, file: !2, line: 172, type: !17)
!634 = distinct !DILexicalBlock(scope: !635, file: !2, line: 171, column: 40)
!635 = distinct !DILexicalBlock(scope: !632, file: !2, line: 171, column: 5)
!636 = !DILocalVariable(name: "qids", scope: !634, file: !2, line: 173, type: !637)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!638 = !DILocalVariable(name: "start", scope: !634, file: !2, line: 174, type: !57)
!639 = !DILocalVariable(name: "fs", scope: !634, file: !2, line: 178, type: !57)
!640 = !DILocalVariable(name: "fe", scope: !634, file: !2, line: 180, type: !57)
!641 = !DILocalVariable(name: "end", scope: !634, file: !2, line: 181, type: !57)
!642 = !DILocation(line: 166, column: 16, scope: !625)
!643 = !DILocation(line: 167, column: 9, scope: !625)
!644 = !DILocation(line: 168, column: 13, scope: !625)
!645 = !DILocation(line: 170, column: 5, scope: !625)
!646 = !DILocation(line: 170, column: 9, scope: !625)
!647 = !DILocation(line: 171, column: 10, scope: !632)
!648 = !DILocation(line: 171, column: 14, scope: !632)
!649 = !DILocation(line: 171, column: 21, scope: !635)
!650 = !DILocation(line: 171, column: 25, scope: !635)
!651 = !DILocation(line: 171, column: 23, scope: !635)
!652 = !DILocation(line: 171, column: 5, scope: !632)
!653 = !DILocation(line: 172, column: 9, scope: !634)
!654 = !DILocation(line: 172, column: 13, scope: !634)
!655 = !DILocation(line: 173, column: 9, scope: !634)
!656 = !DILocation(line: 173, column: 14, scope: !634)
!657 = !DILocation(line: 174, column: 9, scope: !634)
!658 = !DILocation(line: 174, column: 16, scope: !634)
!659 = !DILocation(line: 174, column: 24, scope: !634)
!660 = !DILocation(line: 176, column: 32, scope: !661)
!661 = distinct !DILexicalBlock(scope: !634, file: !2, line: 175, column: 13)
!662 = !DILocation(line: 176, column: 35, scope: !661)
!663 = !DILocation(line: 175, column: 28, scope: !661)
!664 = !DILocation(line: 175, column: 25, scope: !661)
!665 = !DILocation(line: 175, column: 13, scope: !634)
!666 = !DILocation(line: 177, column: 45, scope: !661)
!667 = !DILocation(line: 178, column: 9, scope: !634)
!668 = !DILocation(line: 178, column: 16, scope: !634)
!669 = !DILocation(line: 178, column: 21, scope: !634)
!670 = !DILocation(line: 179, column: 14, scope: !634)
!671 = !DILocation(line: 179, column: 9, scope: !634)
!672 = !DILocation(line: 180, column: 9, scope: !634)
!673 = !DILocation(line: 180, column: 16, scope: !634)
!674 = !DILocation(line: 180, column: 21, scope: !634)
!675 = !DILocation(line: 181, column: 9, scope: !634)
!676 = !DILocation(line: 181, column: 16, scope: !634)
!677 = !DILocation(line: 181, column: 22, scope: !634)
!678 = !DILocation(line: 182, column: 19, scope: !634)
!679 = !DILocation(line: 182, column: 25, scope: !634)
!680 = !DILocation(line: 182, column: 23, scope: !634)
!681 = !DILocation(line: 182, column: 35, scope: !634)
!682 = !DILocation(line: 182, column: 40, scope: !634)
!683 = !DILocation(line: 182, column: 38, scope: !634)
!684 = !DILocation(line: 182, column: 32, scope: !634)
!685 = !DILocation(line: 182, column: 9, scope: !634)
!686 = !DILocation(line: 182, column: 13, scope: !634)
!687 = !DILocation(line: 182, column: 16, scope: !634)
!688 = !DILocation(line: 183, column: 5, scope: !635)
!689 = !DILocation(line: 183, column: 5, scope: !634)
!690 = !DILocation(line: 171, column: 35, scope: !635)
!691 = !DILocation(line: 171, column: 5, scope: !635)
!692 = distinct !{!692, !652, !693, !254}
!693 = !DILocation(line: 183, column: 5, scope: !632)
!694 = !DILocation(line: 185, column: 9, scope: !695)
!695 = distinct !DILexicalBlock(scope: !625, file: !2, line: 185, column: 9)
!696 = !DILocation(line: 185, column: 12, scope: !695)
!697 = !DILocation(line: 185, column: 21, scope: !695)
!698 = !DILocation(line: 185, column: 24, scope: !695)
!699 = !DILocation(line: 185, column: 31, scope: !695)
!700 = !DILocation(line: 185, column: 17, scope: !695)
!701 = !DILocation(line: 185, column: 9, scope: !625)
!702 = !DILocation(line: 185, column: 52, scope: !695)
!703 = !DILocation(line: 185, column: 37, scope: !695)
!704 = !DILocation(line: 186, column: 5, scope: !625)
!705 = !DILocation(line: 187, column: 1, scope: !625)
!706 = distinct !DISubprogram(name: "qbind_push", scope: !2, file: !2, line: 190, type: !162, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !707)
!707 = !{!708, !709, !710, !711, !713, !716}
!708 = !DILocalVariable(name: "c", arg: 1, scope: !706, file: !2, line: 191, type: !140)
!709 = !DILocalVariable(name: "n_trials", arg: 2, scope: !706, file: !2, line: 192, type: !17)
!710 = !DILocalVariable(name: "res", arg: 3, scope: !706, file: !2, line: 193, type: !164)
!711 = !DILocalVariable(name: "i", scope: !712, file: !2, line: 195, type: !17)
!712 = distinct !DILexicalBlock(scope: !706, file: !2, line: 195, column: 5)
!713 = !DILocalVariable(name: "start", scope: !714, file: !2, line: 196, type: !57)
!714 = distinct !DILexicalBlock(scope: !715, file: !2, line: 195, column: 40)
!715 = distinct !DILexicalBlock(scope: !712, file: !2, line: 195, column: 5)
!716 = !DILocalVariable(name: "end", scope: !714, file: !2, line: 200, type: !57)
!717 = !DILocation(line: 191, column: 16, scope: !706)
!718 = !DILocation(line: 192, column: 9, scope: !706)
!719 = !DILocation(line: 193, column: 13, scope: !706)
!720 = !DILocation(line: 195, column: 10, scope: !712)
!721 = !DILocation(line: 195, column: 14, scope: !712)
!722 = !DILocation(line: 195, column: 21, scope: !715)
!723 = !DILocation(line: 195, column: 25, scope: !715)
!724 = !DILocation(line: 195, column: 23, scope: !715)
!725 = !DILocation(line: 195, column: 5, scope: !712)
!726 = !DILocation(line: 196, column: 9, scope: !714)
!727 = !DILocation(line: 196, column: 16, scope: !714)
!728 = !DILocation(line: 196, column: 24, scope: !714)
!729 = !DILocation(line: 198, column: 32, scope: !730)
!730 = distinct !DILexicalBlock(scope: !714, file: !2, line: 197, column: 13)
!731 = !DILocation(line: 198, column: 35, scope: !730)
!732 = !DILocation(line: 197, column: 28, scope: !730)
!733 = !DILocation(line: 197, column: 25, scope: !730)
!734 = !DILocation(line: 197, column: 13, scope: !714)
!735 = !DILocation(line: 199, column: 54, scope: !730)
!736 = !DILocation(line: 200, column: 9, scope: !714)
!737 = !DILocation(line: 200, column: 16, scope: !714)
!738 = !DILocation(line: 200, column: 22, scope: !714)
!739 = !DILocation(line: 201, column: 18, scope: !714)
!740 = !DILocation(line: 201, column: 24, scope: !714)
!741 = !DILocation(line: 201, column: 22, scope: !714)
!742 = !DILocation(line: 201, column: 9, scope: !714)
!743 = !DILocation(line: 201, column: 13, scope: !714)
!744 = !DILocation(line: 201, column: 16, scope: !714)
!745 = !DILocation(line: 202, column: 41, scope: !746)
!746 = distinct !DILexicalBlock(scope: !714, file: !2, line: 202, column: 13)
!747 = !DILocation(line: 202, column: 44, scope: !746)
!748 = !DILocation(line: 202, column: 28, scope: !746)
!749 = !DILocation(line: 202, column: 25, scope: !746)
!750 = !DILocation(line: 202, column: 13, scope: !714)
!751 = !DILocation(line: 202, column: 50, scope: !746)
!752 = !DILocation(line: 203, column: 5, scope: !715)
!753 = !DILocation(line: 203, column: 5, scope: !714)
!754 = !DILocation(line: 195, column: 35, scope: !715)
!755 = !DILocation(line: 195, column: 5, scope: !715)
!756 = distinct !{!756, !725, !757, !254}
!757 = !DILocation(line: 203, column: 5, scope: !712)
!758 = !DILocation(line: 204, column: 5, scope: !706)
!759 = !DILocation(line: 205, column: 1, scope: !706)
!760 = distinct !DISubprogram(name: "qbind_pop", scope: !2, file: !2, line: 208, type: !162, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !761)
!761 = !{!762, !763, !764, !765, !767, !770}
!762 = !DILocalVariable(name: "c", arg: 1, scope: !760, file: !2, line: 209, type: !140)
!763 = !DILocalVariable(name: "n_trials", arg: 2, scope: !760, file: !2, line: 210, type: !17)
!764 = !DILocalVariable(name: "res", arg: 3, scope: !760, file: !2, line: 211, type: !164)
!765 = !DILocalVariable(name: "i", scope: !766, file: !2, line: 214, type: !17)
!766 = distinct !DILexicalBlock(scope: !760, file: !2, line: 214, column: 5)
!767 = !DILocalVariable(name: "start", scope: !768, file: !2, line: 218, type: !57)
!768 = distinct !DILexicalBlock(scope: !769, file: !2, line: 214, column: 40)
!769 = distinct !DILexicalBlock(scope: !766, file: !2, line: 214, column: 5)
!770 = !DILocalVariable(name: "end", scope: !768, file: !2, line: 220, type: !57)
!771 = !DILocation(line: 209, column: 16, scope: !760)
!772 = !DILocation(line: 210, column: 9, scope: !760)
!773 = !DILocation(line: 211, column: 13, scope: !760)
!774 = !DILocation(line: 214, column: 10, scope: !766)
!775 = !DILocation(line: 214, column: 14, scope: !766)
!776 = !DILocation(line: 214, column: 21, scope: !769)
!777 = !DILocation(line: 214, column: 25, scope: !769)
!778 = !DILocation(line: 214, column: 23, scope: !769)
!779 = !DILocation(line: 214, column: 5, scope: !766)
!780 = !DILocation(line: 216, column: 32, scope: !781)
!781 = distinct !DILexicalBlock(scope: !768, file: !2, line: 215, column: 13)
!782 = !DILocation(line: 216, column: 35, scope: !781)
!783 = !DILocation(line: 215, column: 28, scope: !781)
!784 = !DILocation(line: 215, column: 25, scope: !781)
!785 = !DILocation(line: 215, column: 13, scope: !768)
!786 = !DILocation(line: 217, column: 54, scope: !781)
!787 = !DILocation(line: 218, column: 9, scope: !768)
!788 = !DILocation(line: 218, column: 16, scope: !768)
!789 = !DILocation(line: 218, column: 24, scope: !768)
!790 = !DILocation(line: 219, column: 41, scope: !791)
!791 = distinct !DILexicalBlock(scope: !768, file: !2, line: 219, column: 13)
!792 = !DILocation(line: 219, column: 44, scope: !791)
!793 = !DILocation(line: 219, column: 28, scope: !791)
!794 = !DILocation(line: 219, column: 25, scope: !791)
!795 = !DILocation(line: 219, column: 13, scope: !768)
!796 = !DILocation(line: 219, column: 50, scope: !791)
!797 = !DILocation(line: 220, column: 9, scope: !768)
!798 = !DILocation(line: 220, column: 16, scope: !768)
!799 = !DILocation(line: 220, column: 22, scope: !768)
!800 = !DILocation(line: 221, column: 18, scope: !768)
!801 = !DILocation(line: 221, column: 24, scope: !768)
!802 = !DILocation(line: 221, column: 22, scope: !768)
!803 = !DILocation(line: 221, column: 9, scope: !768)
!804 = !DILocation(line: 221, column: 13, scope: !768)
!805 = !DILocation(line: 221, column: 16, scope: !768)
!806 = !DILocation(line: 222, column: 5, scope: !769)
!807 = !DILocation(line: 222, column: 5, scope: !768)
!808 = !DILocation(line: 214, column: 35, scope: !769)
!809 = !DILocation(line: 214, column: 5, scope: !769)
!810 = distinct !{!810, !779, !811, !254}
!811 = !DILocation(line: 222, column: 5, scope: !766)
!812 = !DILocation(line: 223, column: 5, scope: !760)
!813 = !DILocation(line: 224, column: 1, scope: !760)
!814 = distinct !DISubprogram(name: "qauto_distrib", scope: !2, file: !2, line: 227, type: !162, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !815)
!815 = !{!816, !817, !818, !819, !820, !822, !825}
!816 = !DILocalVariable(name: "c", arg: 1, scope: !814, file: !2, line: 228, type: !140)
!817 = !DILocalVariable(name: "n_trials", arg: 2, scope: !814, file: !2, line: 229, type: !17)
!818 = !DILocalVariable(name: "res", arg: 3, scope: !814, file: !2, line: 230, type: !164)
!819 = !DILocalVariable(name: "sel", scope: !814, file: !2, line: 233, type: !17)
!820 = !DILocalVariable(name: "i", scope: !821, file: !2, line: 234, type: !17)
!821 = distinct !DILexicalBlock(scope: !814, file: !2, line: 234, column: 5)
!822 = !DILocalVariable(name: "start", scope: !823, file: !2, line: 235, type: !57)
!823 = distinct !DILexicalBlock(scope: !824, file: !2, line: 234, column: 40)
!824 = distinct !DILexicalBlock(scope: !821, file: !2, line: 234, column: 5)
!825 = !DILocalVariable(name: "end", scope: !823, file: !2, line: 238, type: !57)
!826 = !DILocation(line: 228, column: 16, scope: !814)
!827 = !DILocation(line: 229, column: 9, scope: !814)
!828 = !DILocation(line: 230, column: 13, scope: !814)
!829 = !DILocation(line: 233, column: 5, scope: !814)
!830 = !DILocation(line: 233, column: 9, scope: !814)
!831 = !DILocation(line: 234, column: 10, scope: !821)
!832 = !DILocation(line: 234, column: 14, scope: !821)
!833 = !DILocation(line: 234, column: 21, scope: !824)
!834 = !DILocation(line: 234, column: 25, scope: !824)
!835 = !DILocation(line: 234, column: 23, scope: !824)
!836 = !DILocation(line: 234, column: 5, scope: !821)
!837 = !DILocation(line: 235, column: 9, scope: !823)
!838 = !DILocation(line: 235, column: 16, scope: !823)
!839 = !DILocation(line: 235, column: 24, scope: !823)
!840 = !DILocation(line: 236, column: 45, scope: !841)
!841 = distinct !DILexicalBlock(scope: !823, file: !2, line: 236, column: 13)
!842 = !DILocation(line: 236, column: 48, scope: !841)
!843 = !DILocation(line: 237, column: 45, scope: !841)
!844 = !DILocation(line: 237, column: 48, scope: !841)
!845 = !DILocation(line: 236, column: 28, scope: !841)
!846 = !DILocation(line: 236, column: 25, scope: !841)
!847 = !DILocation(line: 236, column: 13, scope: !823)
!848 = !DILocation(line: 237, column: 63, scope: !841)
!849 = !DILocation(line: 238, column: 9, scope: !823)
!850 = !DILocation(line: 238, column: 16, scope: !823)
!851 = !DILocation(line: 238, column: 22, scope: !823)
!852 = !DILocation(line: 239, column: 18, scope: !823)
!853 = !DILocation(line: 239, column: 24, scope: !823)
!854 = !DILocation(line: 239, column: 22, scope: !823)
!855 = !DILocation(line: 239, column: 9, scope: !823)
!856 = !DILocation(line: 239, column: 13, scope: !823)
!857 = !DILocation(line: 239, column: 16, scope: !823)
!858 = !DILocation(line: 240, column: 5, scope: !824)
!859 = !DILocation(line: 240, column: 5, scope: !823)
!860 = !DILocation(line: 234, column: 35, scope: !824)
!861 = !DILocation(line: 234, column: 5, scope: !824)
!862 = distinct !{!862, !836, !863, !254}
!863 = !DILocation(line: 240, column: 5, scope: !821)
!864 = !DILocation(line: 242, column: 9, scope: !865)
!865 = distinct !DILexicalBlock(scope: !814, file: !2, line: 242, column: 9)
!866 = !DILocation(line: 242, column: 12, scope: !865)
!867 = !DILocation(line: 242, column: 21, scope: !865)
!868 = !DILocation(line: 242, column: 24, scope: !865)
!869 = !DILocation(line: 242, column: 31, scope: !865)
!870 = !DILocation(line: 242, column: 17, scope: !865)
!871 = !DILocation(line: 242, column: 9, scope: !814)
!872 = !DILocation(line: 242, column: 62, scope: !865)
!873 = !DILocation(line: 242, column: 37, scope: !865)
!874 = !DILocation(line: 243, column: 5, scope: !814)
!875 = !DILocation(line: 244, column: 1, scope: !814)
!876 = distinct !DISubprogram(name: "qbarrier", scope: !2, file: !2, line: 247, type: !162, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !877)
!877 = !{!878, !879, !880, !881, !883, !886}
!878 = !DILocalVariable(name: "c", arg: 1, scope: !876, file: !2, line: 248, type: !140)
!879 = !DILocalVariable(name: "n_trials", arg: 2, scope: !876, file: !2, line: 249, type: !17)
!880 = !DILocalVariable(name: "res", arg: 3, scope: !876, file: !2, line: 250, type: !164)
!881 = !DILocalVariable(name: "i", scope: !882, file: !2, line: 252, type: !17)
!882 = distinct !DILexicalBlock(scope: !876, file: !2, line: 252, column: 5)
!883 = !DILocalVariable(name: "start", scope: !884, file: !2, line: 253, type: !57)
!884 = distinct !DILexicalBlock(scope: !885, file: !2, line: 252, column: 40)
!885 = distinct !DILexicalBlock(scope: !882, file: !2, line: 252, column: 5)
!886 = !DILocalVariable(name: "end", scope: !884, file: !2, line: 255, type: !57)
!887 = !DILocation(line: 248, column: 16, scope: !876)
!888 = !DILocation(line: 249, column: 9, scope: !876)
!889 = !DILocation(line: 250, column: 13, scope: !876)
!890 = !DILocation(line: 252, column: 10, scope: !882)
!891 = !DILocation(line: 252, column: 14, scope: !882)
!892 = !DILocation(line: 252, column: 21, scope: !885)
!893 = !DILocation(line: 252, column: 25, scope: !885)
!894 = !DILocation(line: 252, column: 23, scope: !885)
!895 = !DILocation(line: 252, column: 5, scope: !882)
!896 = !DILocation(line: 253, column: 9, scope: !884)
!897 = !DILocation(line: 253, column: 16, scope: !884)
!898 = !DILocation(line: 253, column: 24, scope: !884)
!899 = !DILocation(line: 254, column: 40, scope: !900)
!900 = distinct !DILexicalBlock(scope: !884, file: !2, line: 254, column: 13)
!901 = !DILocation(line: 254, column: 43, scope: !900)
!902 = !DILocation(line: 254, column: 28, scope: !900)
!903 = !DILocation(line: 254, column: 25, scope: !900)
!904 = !DILocation(line: 254, column: 13, scope: !884)
!905 = !DILocation(line: 254, column: 49, scope: !900)
!906 = !DILocation(line: 255, column: 9, scope: !884)
!907 = !DILocation(line: 255, column: 16, scope: !884)
!908 = !DILocation(line: 255, column: 22, scope: !884)
!909 = !DILocation(line: 256, column: 18, scope: !884)
!910 = !DILocation(line: 256, column: 24, scope: !884)
!911 = !DILocation(line: 256, column: 22, scope: !884)
!912 = !DILocation(line: 256, column: 9, scope: !884)
!913 = !DILocation(line: 256, column: 13, scope: !884)
!914 = !DILocation(line: 256, column: 16, scope: !884)
!915 = !DILocation(line: 257, column: 5, scope: !885)
!916 = !DILocation(line: 257, column: 5, scope: !884)
!917 = !DILocation(line: 252, column: 35, scope: !885)
!918 = !DILocation(line: 252, column: 5, scope: !885)
!919 = distinct !{!919, !895, !920, !254}
!920 = !DILocation(line: 257, column: 5, scope: !882)
!921 = !DILocation(line: 258, column: 5, scope: !876)
!922 = !DILocation(line: 259, column: 1, scope: !876)
!923 = distinct !DISubprogram(name: "run_experiment", scope: !2, file: !2, line: 341, type: !924, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !927)
!924 = !DISubroutineType(types: !925)
!925 = !{!17, !926}
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!927 = !{!928, !929, !930}
!928 = !DILocalVariable(name: "e", arg: 1, scope: !923, file: !2, line: 341, type: !926)
!929 = !DILocalVariable(name: "bad_func", scope: !923, file: !2, line: 342, type: !138)
!930 = !DILabel(scope: !923, name: "out", file: !2, line: 352)
!931 = !DILocation(line: 341, column: 30, scope: !923)
!932 = !DILocation(line: 342, column: 5, scope: !923)
!933 = !DILocation(line: 342, column: 11, scope: !923)
!934 = !DILocation(line: 343, column: 18, scope: !935)
!935 = distinct !DILexicalBlock(scope: !923, file: !2, line: 343, column: 9)
!936 = !DILocation(line: 343, column: 21, scope: !935)
!937 = !DILocation(line: 343, column: 24, scope: !935)
!938 = !DILocation(line: 343, column: 27, scope: !935)
!939 = !DILocation(line: 343, column: 32, scope: !935)
!940 = !DILocation(line: 343, column: 35, scope: !935)
!941 = !DILocation(line: 343, column: 47, scope: !935)
!942 = !DILocation(line: 343, column: 50, scope: !935)
!943 = !DILocation(line: 343, column: 62, scope: !935)
!944 = !DILocation(line: 343, column: 65, scope: !935)
!945 = !DILocation(line: 343, column: 9, scope: !935)
!946 = !DILocation(line: 343, column: 9, scope: !923)
!947 = !DILocation(line: 344, column: 20, scope: !948)
!948 = distinct !DILexicalBlock(scope: !935, file: !2, line: 343, column: 76)
!949 = !DILocation(line: 344, column: 23, scope: !948)
!950 = !DILocation(line: 344, column: 18, scope: !948)
!951 = !DILocation(line: 345, column: 9, scope: !948)
!952 = !DILocation(line: 347, column: 20, scope: !953)
!953 = distinct !DILexicalBlock(scope: !923, file: !2, line: 347, column: 9)
!954 = !DILocation(line: 347, column: 23, scope: !953)
!955 = !DILocation(line: 347, column: 26, scope: !953)
!956 = !DILocation(line: 347, column: 29, scope: !953)
!957 = !DILocation(line: 347, column: 35, scope: !953)
!958 = !DILocation(line: 347, column: 38, scope: !953)
!959 = !DILocation(line: 347, column: 47, scope: !953)
!960 = !DILocation(line: 347, column: 50, scope: !953)
!961 = !DILocation(line: 347, column: 9, scope: !953)
!962 = !DILocation(line: 347, column: 9, scope: !923)
!963 = !DILocation(line: 348, column: 18, scope: !964)
!964 = distinct !DILexicalBlock(scope: !953, file: !2, line: 347, column: 60)
!965 = !DILocation(line: 349, column: 9, scope: !964)
!966 = !DILocation(line: 351, column: 10, scope: !923)
!967 = !DILocation(line: 351, column: 13, scope: !923)
!968 = !DILocation(line: 351, column: 5, scope: !923)
!969 = !DILocation(line: 352, column: 1, scope: !923)
!970 = !DILocation(line: 353, column: 9, scope: !971)
!971 = distinct !DILexicalBlock(scope: !923, file: !2, line: 353, column: 9)
!972 = !DILocation(line: 353, column: 9, scope: !923)
!973 = !DILocation(line: 354, column: 17, scope: !974)
!974 = distinct !DILexicalBlock(scope: !971, file: !2, line: 353, column: 19)
!975 = !DILocation(line: 354, column: 41, scope: !974)
!976 = !DILocation(line: 354, column: 9, scope: !974)
!977 = !DILocation(line: 355, column: 9, scope: !974)
!978 = !DILocation(line: 357, column: 5, scope: !923)
!979 = !DILocation(line: 358, column: 1, scope: !923)
!980 = !DISubprogram(name: "fprintf", scope: !328, file: !328, line: 350, type: !981, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!981 = !DISubroutineType(types: !982)
!982 = !{!17, !983, !331, null}
!983 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !337)
!984 = distinct !DISubprogram(name: "fini", scope: !2, file: !2, line: 55, type: !985, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !987)
!985 = !DISubroutineType(types: !986)
!986 = !{!17, !140}
!987 = !{!988, !989}
!988 = !DILocalVariable(name: "c", arg: 1, scope: !984, file: !2, line: 55, type: !140)
!989 = !DILocalVariable(name: "nerrs", scope: !984, file: !2, line: 59, type: !17)
!990 = !DILocation(line: 55, column: 17, scope: !984)
!991 = !DILocation(line: 57, column: 10, scope: !992)
!992 = distinct !DILexicalBlock(scope: !984, file: !2, line: 57, column: 9)
!993 = !DILocation(line: 57, column: 9, scope: !984)
!994 = !DILocation(line: 57, column: 13, scope: !992)
!995 = !DILocation(line: 59, column: 5, scope: !984)
!996 = !DILocation(line: 59, column: 9, scope: !984)
!997 = !DILocation(line: 60, column: 33, scope: !998)
!998 = distinct !DILexicalBlock(scope: !984, file: !2, line: 60, column: 9)
!999 = !DILocation(line: 60, column: 36, scope: !998)
!1000 = !DILocation(line: 60, column: 24, scope: !998)
!1001 = !DILocation(line: 60, column: 21, scope: !998)
!1002 = !DILocation(line: 60, column: 9, scope: !984)
!1003 = !DILocation(line: 60, column: 47, scope: !998)
!1004 = !DILocation(line: 60, column: 42, scope: !998)
!1005 = !DILocation(line: 62, column: 9, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !984, file: !2, line: 62, column: 9)
!1007 = !DILocation(line: 62, column: 12, scope: !1006)
!1008 = !{i8 0, i8 2}
!1009 = !{}
!1010 = !DILocation(line: 62, column: 9, scope: !984)
!1011 = !DILocation(line: 62, column: 24, scope: !1006)
!1012 = !DILocation(line: 63, column: 10, scope: !984)
!1013 = !DILocation(line: 63, column: 5, scope: !984)
!1014 = !DILocation(line: 65, column: 13, scope: !984)
!1015 = !DILocation(line: 65, column: 5, scope: !984)
!1016 = !DILocation(line: 66, column: 1, scope: !984)
!1017 = !DISubprogram(name: "calloc", scope: !1018, file: !1018, line: 543, type: !1019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1018 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!49, !388, !388}
!1021 = !DISubprogram(name: "MPI_Init", scope: !51, file: !51, line: 1661, type: !1022, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!17, !637, !1024}
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!1026 = !DISubprogram(name: "MPI_Comm_size", scope: !51, file: !51, line: 1452, type: !1027, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!17, !50, !637}
!1029 = !DISubprogram(name: "MPI_Comm_rank", scope: !51, file: !51, line: 1445, type: !1027, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1030 = !DISubprogram(name: "QUO_create", scope: !21, file: !21, line: 136, type: !1031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!17, !416, !50}
!1033 = !DISubprogram(name: "MPI_Barrier", scope: !51, file: !51, line: 1367, type: !1034, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!17, !50}
!1036 = !DISubprogram(name: "usleep", scope: !1037, file: !1037, line: 480, type: !1038, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1037 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!17, !1040}
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "__useconds_t", file: !364, line: 161, baseType: !22)
!1041 = !DISubprogram(name: "MPI_Wtime", scope: !51, file: !51, line: 1978, type: !1042, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!57}
!1044 = !DISubprogram(name: "QUO_free", scope: !21, file: !21, line: 159, type: !1045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!17, !149}
!1047 = !DISubprogram(name: "QUO_npus", scope: !21, file: !21, line: 330, type: !1048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!17, !149, !637}
!1050 = !DISubprogram(name: "QUO_qids_in_type", scope: !21, file: !21, line: 282, type: !1051, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!17, !149, !1053, !17, !637, !1054}
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUO_obj_type_t", file: !21, line: 83, baseType: !36)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!1055 = !DISubprogram(name: "free", scope: !1018, file: !1018, line: 555, type: !1056, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{null, !49}
!1058 = !DISubprogram(name: "QUO_bind_push", scope: !21, file: !21, line: 479, type: !1059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!17, !149, !1061, !1053, !17}
!1061 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUO_bind_push_policy_t", file: !21, line: 91, baseType: !44)
!1062 = !DISubprogram(name: "QUO_bind_pop", scope: !21, file: !21, line: 505, type: !1045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1063 = !DISubprogram(name: "QUO_auto_distrib", scope: !21, file: !21, line: 573, type: !1064, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!17, !149, !1053, !17, !637}
!1066 = !DISubprogram(name: "QUO_barrier", scope: !21, file: !21, line: 533, type: !1045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1067 = distinct !DISubprogram(name: "time_fun", scope: !2, file: !2, line: 265, type: !1068, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !1071)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!17, !140, !161, !17, !637, !1070}
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!1071 = !{!1072, !1073, !1074, !1075, !1076, !1077, !1078}
!1072 = !DILocalVariable(name: "c", arg: 1, scope: !1067, file: !2, line: 266, type: !140)
!1073 = !DILocalVariable(name: "fun", arg: 2, scope: !1067, file: !2, line: 267, type: !161)
!1074 = !DILocalVariable(name: "n_trials", arg: 3, scope: !1067, file: !2, line: 268, type: !17)
!1075 = !DILocalVariable(name: "out_res_len", arg: 4, scope: !1067, file: !2, line: 269, type: !637)
!1076 = !DILocalVariable(name: "out_results", arg: 5, scope: !1067, file: !2, line: 270, type: !1070)
!1077 = !DILocalVariable(name: "res", scope: !1067, file: !2, line: 272, type: !164)
!1078 = !DILocalVariable(name: "res_len", scope: !1067, file: !2, line: 273, type: !17)
!1079 = !DILocation(line: 266, column: 16, scope: !1067)
!1080 = !DILocation(line: 267, column: 11, scope: !1067)
!1081 = !DILocation(line: 268, column: 9, scope: !1067)
!1082 = !DILocation(line: 269, column: 10, scope: !1067)
!1083 = !DILocation(line: 270, column: 14, scope: !1067)
!1084 = !DILocation(line: 272, column: 5, scope: !1067)
!1085 = !DILocation(line: 272, column: 13, scope: !1067)
!1086 = !DILocation(line: 273, column: 5, scope: !1067)
!1087 = !DILocation(line: 273, column: 9, scope: !1067)
!1088 = !DILocation(line: 274, column: 9, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1067, file: !2, line: 274, column: 9)
!1090 = !DILocation(line: 274, column: 12, scope: !1089)
!1091 = !DILocation(line: 274, column: 17, scope: !1089)
!1092 = !DILocation(line: 274, column: 9, scope: !1067)
!1093 = !DILocation(line: 275, column: 24, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1089, file: !2, line: 274, column: 23)
!1095 = !DILocation(line: 275, column: 10, scope: !1094)
!1096 = !DILocation(line: 275, column: 22, scope: !1094)
!1097 = !DILocation(line: 276, column: 20, scope: !1094)
!1098 = !DILocation(line: 276, column: 19, scope: !1094)
!1099 = !DILocation(line: 276, column: 17, scope: !1094)
!1100 = !DILocation(line: 277, column: 22, scope: !1094)
!1101 = !DILocation(line: 277, column: 15, scope: !1094)
!1102 = !DILocation(line: 277, column: 13, scope: !1094)
!1103 = !DILocation(line: 278, column: 5, scope: !1094)
!1104 = !DILocation(line: 280, column: 24, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1089, file: !2, line: 279, column: 10)
!1106 = !DILocation(line: 280, column: 35, scope: !1105)
!1107 = !DILocation(line: 280, column: 38, scope: !1105)
!1108 = !DILocation(line: 280, column: 33, scope: !1105)
!1109 = !DILocation(line: 280, column: 10, scope: !1105)
!1110 = !DILocation(line: 280, column: 22, scope: !1105)
!1111 = !DILocation(line: 281, column: 20, scope: !1105)
!1112 = !DILocation(line: 281, column: 19, scope: !1105)
!1113 = !DILocation(line: 281, column: 17, scope: !1105)
!1114 = !DILocation(line: 282, column: 22, scope: !1105)
!1115 = !DILocation(line: 282, column: 15, scope: !1105)
!1116 = !DILocation(line: 282, column: 13, scope: !1105)
!1117 = !DILocation(line: 284, column: 10, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1067, file: !2, line: 284, column: 9)
!1119 = !DILocation(line: 284, column: 9, scope: !1067)
!1120 = !DILocation(line: 284, column: 15, scope: !1118)
!1121 = !DILocation(line: 286, column: 9, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1067, file: !2, line: 286, column: 9)
!1123 = !DILocation(line: 286, column: 13, scope: !1122)
!1124 = !DILocation(line: 286, column: 16, scope: !1122)
!1125 = !DILocation(line: 286, column: 26, scope: !1122)
!1126 = !DILocation(line: 286, column: 9, scope: !1067)
!1127 = !DILocation(line: 286, column: 32, scope: !1122)
!1128 = !DILocation(line: 288, column: 40, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1067, file: !2, line: 288, column: 9)
!1130 = !DILocation(line: 288, column: 43, scope: !1129)
!1131 = !DILocation(line: 288, column: 37, scope: !1129)
!1132 = !DILocation(line: 288, column: 35, scope: !1129)
!1133 = !DILocation(line: 288, column: 65, scope: !1129)
!1134 = !DILocation(line: 289, column: 35, scope: !1129)
!1135 = !DILocation(line: 289, column: 57, scope: !1129)
!1136 = !DILocation(line: 289, column: 62, scope: !1129)
!1137 = !DILocation(line: 288, column: 24, scope: !1129)
!1138 = !DILocation(line: 288, column: 21, scope: !1129)
!1139 = !DILocation(line: 288, column: 9, scope: !1067)
!1140 = !DILocation(line: 291, column: 9, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1129, file: !2, line: 290, column: 67)
!1142 = !DILocation(line: 301, column: 20, scope: !1067)
!1143 = !DILocation(line: 301, column: 6, scope: !1067)
!1144 = !DILocation(line: 301, column: 18, scope: !1067)
!1145 = !DILocation(line: 302, column: 5, scope: !1067)
!1146 = !DILocation(line: 303, column: 1, scope: !1067)
!1147 = distinct !DISubprogram(name: "emit_stats", scope: !2, file: !2, line: 306, type: !1148, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !1150)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!17, !140, !138, !17, !164}
!1150 = !{!1151, !1152, !1153, !1154, !1155, !1156, !1158, !1159, !1160, !1162, !1163, !1164}
!1151 = !DILocalVariable(name: "c", arg: 1, scope: !1147, file: !2, line: 307, type: !140)
!1152 = !DILocalVariable(name: "name", arg: 2, scope: !1147, file: !2, line: 308, type: !138)
!1153 = !DILocalVariable(name: "res_len", arg: 3, scope: !1147, file: !2, line: 309, type: !17)
!1154 = !DILocalVariable(name: "results", arg: 4, scope: !1147, file: !2, line: 310, type: !164)
!1155 = !DILocalVariable(name: "tot", scope: !1147, file: !2, line: 314, type: !57)
!1156 = !DILocalVariable(name: "i", scope: !1157, file: !2, line: 315, type: !17)
!1157 = distinct !DILexicalBlock(scope: !1147, file: !2, line: 315, column: 5)
!1158 = !DILocalVariable(name: "ave", scope: !1147, file: !2, line: 318, type: !57)
!1159 = !DILocalVariable(name: "a", scope: !1147, file: !2, line: 320, type: !57)
!1160 = !DILocalVariable(name: "i", scope: !1161, file: !2, line: 321, type: !17)
!1161 = distinct !DILexicalBlock(scope: !1147, file: !2, line: 321, column: 5)
!1162 = !DILocalVariable(name: "stddev", scope: !1147, file: !2, line: 324, type: !57)
!1163 = !DILocalVariable(name: "sem", scope: !1147, file: !2, line: 326, type: !57)
!1164 = !DILabel(scope: !1147, name: "out", file: !2, line: 335)
!1165 = !DILocation(line: 307, column: 16, scope: !1147)
!1166 = !DILocation(line: 308, column: 11, scope: !1147)
!1167 = !DILocation(line: 309, column: 9, scope: !1147)
!1168 = !DILocation(line: 310, column: 13, scope: !1147)
!1169 = !DILocation(line: 312, column: 9, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1147, file: !2, line: 312, column: 9)
!1171 = !DILocation(line: 312, column: 12, scope: !1170)
!1172 = !DILocation(line: 312, column: 17, scope: !1170)
!1173 = !DILocation(line: 312, column: 9, scope: !1147)
!1174 = !DILocation(line: 312, column: 23, scope: !1170)
!1175 = !DILocation(line: 314, column: 12, scope: !1147)
!1176 = !DILocation(line: 315, column: 10, scope: !1157)
!1177 = !DILocation(line: 315, column: 14, scope: !1157)
!1178 = !DILocation(line: 315, column: 21, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1157, file: !2, line: 315, column: 5)
!1180 = !DILocation(line: 315, column: 25, scope: !1179)
!1181 = !DILocation(line: 315, column: 23, scope: !1179)
!1182 = !DILocation(line: 315, column: 5, scope: !1157)
!1183 = !DILocation(line: 315, column: 5, scope: !1179)
!1184 = !DILocation(line: 316, column: 16, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1179, file: !2, line: 315, column: 39)
!1186 = !DILocation(line: 316, column: 24, scope: !1185)
!1187 = !DILocation(line: 316, column: 13, scope: !1185)
!1188 = !DILocation(line: 317, column: 5, scope: !1185)
!1189 = !DILocation(line: 315, column: 34, scope: !1179)
!1190 = distinct !{!1190, !1182, !1191, !254}
!1191 = !DILocation(line: 317, column: 5, scope: !1157)
!1192 = !DILocation(line: 318, column: 12, scope: !1147)
!1193 = !DILocation(line: 318, column: 18, scope: !1147)
!1194 = !DILocation(line: 318, column: 32, scope: !1147)
!1195 = !DILocation(line: 318, column: 24, scope: !1147)
!1196 = !DILocation(line: 318, column: 22, scope: !1147)
!1197 = !DILocation(line: 320, column: 12, scope: !1147)
!1198 = !DILocation(line: 321, column: 10, scope: !1161)
!1199 = !DILocation(line: 321, column: 14, scope: !1161)
!1200 = !DILocation(line: 321, column: 21, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1161, file: !2, line: 321, column: 5)
!1202 = !DILocation(line: 321, column: 25, scope: !1201)
!1203 = !DILocation(line: 321, column: 23, scope: !1201)
!1204 = !DILocation(line: 321, column: 5, scope: !1161)
!1205 = !DILocation(line: 321, column: 5, scope: !1201)
!1206 = !DILocation(line: 322, column: 19, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1201, file: !2, line: 321, column: 39)
!1208 = !DILocation(line: 322, column: 27, scope: !1207)
!1209 = !DILocation(line: 322, column: 32, scope: !1207)
!1210 = !DILocation(line: 322, column: 30, scope: !1207)
!1211 = !DILocation(line: 322, column: 14, scope: !1207)
!1212 = !DILocation(line: 322, column: 11, scope: !1207)
!1213 = !DILocation(line: 323, column: 5, scope: !1207)
!1214 = !DILocation(line: 321, column: 34, scope: !1201)
!1215 = distinct !{!1215, !1204, !1216, !254}
!1216 = !DILocation(line: 323, column: 5, scope: !1161)
!1217 = !DILocation(line: 324, column: 12, scope: !1147)
!1218 = !DILocation(line: 324, column: 27, scope: !1147)
!1219 = !DILocation(line: 324, column: 32, scope: !1147)
!1220 = !DILocation(line: 324, column: 40, scope: !1147)
!1221 = !DILocation(line: 324, column: 31, scope: !1147)
!1222 = !DILocation(line: 324, column: 29, scope: !1147)
!1223 = !DILocation(line: 324, column: 21, scope: !1147)
!1224 = !DILocation(line: 326, column: 12, scope: !1147)
!1225 = !DILocation(line: 326, column: 18, scope: !1147)
!1226 = !DILocation(line: 326, column: 41, scope: !1147)
!1227 = !DILocation(line: 326, column: 33, scope: !1147)
!1228 = !DILocation(line: 326, column: 27, scope: !1147)
!1229 = !DILocation(line: 326, column: 25, scope: !1147)
!1230 = !DILocation(line: 328, column: 34, scope: !1147)
!1231 = !DILocation(line: 328, column: 37, scope: !1147)
!1232 = !DILocation(line: 328, column: 5, scope: !1147)
!1233 = !DILocation(line: 329, column: 38, scope: !1147)
!1234 = !DILocation(line: 329, column: 5, scope: !1147)
!1235 = !DILocation(line: 330, column: 46, scope: !1147)
!1236 = !DILocation(line: 330, column: 5, scope: !1147)
!1237 = !DILocation(line: 331, column: 46, scope: !1147)
!1238 = !DILocation(line: 331, column: 53, scope: !1147)
!1239 = !DILocation(line: 331, column: 5, scope: !1147)
!1240 = !DILocation(line: 332, column: 52, scope: !1147)
!1241 = !DILocation(line: 332, column: 59, scope: !1147)
!1242 = !DILocation(line: 332, column: 5, scope: !1147)
!1243 = !DILocation(line: 333, column: 56, scope: !1147)
!1244 = !DILocation(line: 333, column: 63, scope: !1147)
!1245 = !DILocation(line: 333, column: 5, scope: !1147)
!1246 = !DILocation(line: 335, column: 1, scope: !1147)
!1247 = !DILocation(line: 336, column: 20, scope: !1147)
!1248 = !DILocation(line: 336, column: 5, scope: !1147)
!1249 = !DILocation(line: 337, column: 5, scope: !1147)
!1250 = !DISubprogram(name: "MPI_Gather", scope: !51, file: !51, line: 1577, type: !1251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!17, !1253, !17, !54, !49, !17, !54, !17, !50}
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1255 = !DISubprogram(name: "powf", scope: !1256, file: !1256, line: 140, type: !1257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1256 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "8c6e2d0d2bda65bc5ba1ca02b65383b7")
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!1259, !1259, !1259}
!1259 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!1260 = !DISubprogram(name: "sqrtl", scope: !1256, file: !1256, line: 143, type: !1261, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!1263, !1263}
!1263 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!1264 = !DISubprogram(name: "MPI_Finalize", scope: !51, file: !51, line: 1574, type: !15, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)

; ModuleID = 'samples/311.bc'
source_filename = "/local-ssd/papyrus-h5krtsorvfa4m57nqc3nwybxivxj2kno-build/aidengro/spack-stage-papyrus-1.0.2-h5krtsorvfa4m57nqc3nwybxivxj2kno/spack-src/kv/tests/04_delete/test04_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ompi_predefined_communicator_t = type opaque

@.str = private unnamed_addr constant [7 x i8] c"GOOGLE\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"FACEBOOK\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"TWITTER\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"JUNGWONKIM\00", align 1
@k = dso_local global [4 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], align 16
@.str.4 = private unnamed_addr constant [19 x i8] c"https://google.com\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"https://facebook.com\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"https://twitter.com\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"http://jungwon.kim\00", align 1
@v = dso_local global [4 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], align 16
@stderr = external global ptr, align 8
@.str.8 = private unnamed_addr constant [46 x i8] c"FAILED:MPI_THREAD_MULTIPLE not supported[%d]\0A\00", align 1
@ompi_mpi_comm_world = external global %struct.ompi_predefined_communicator_t, align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"kv_repo\00", align 1
@rank = dso_local global i32 0, align 4
@size = dso_local global i32 0, align 4
@name = dso_local global [256 x i8] zeroinitializer, align 16
@ret = dso_local global i32 0, align 4
@left = dso_local global i32 0, align 4
@right = dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [22 x i8] c"[%s:%d] [%s] [%d/%d]\0A\00", align 1
@.str.11 = private unnamed_addr constant [171 x i8] c"/local-ssd/papyrus-h5krtsorvfa4m57nqc3nwybxivxj2kno-build/aidengro/spack-stage-papyrus-1.0.2-h5krtsorvfa4m57nqc3nwybxivxj2kno/spack-src/kv/tests/04_delete/test04_delete.c\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"TEST_DB\00", align 1
@db = dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [24 x i8] c"[%s:%d] FAILED:ret[%d]\0A\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"[%s:%d] db[%d]\0A\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"[%s:%d] PUT:rank[%d] key[%s] value[%s]\0A\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"[%s:%d] BARRIER:rank[%d]\0A\00", align 1
@.str.17 = private unnamed_addr constant [62 x i8] c"[%s:%d] GET:rank[%d] right[%d] key[%s] value[%s] vallen[%lu]\0A\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"[%s:%d] DELETE:rank[%d] left[%d] key[%s]\0A\00", align 1
@.str.19 = private unnamed_addr constant [52 x i8] c"[%s:%d] GET:rank[%d] key[%s] value[%s] vallen[%lu]\0A\00", align 1
@.str.20 = private unnamed_addr constant [55 x i8] c"[%s:%d] FAILED:rank[%d] key[%s] value[%s] vallen[%lu]\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %provided = alloca i32, align 4
  %val = alloca ptr, align 8
  %vallen = alloca i64, align 8
  %val107 = alloca ptr, align 8
  %vallen108 = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !5
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %provided) #4
  %call = call i32 @MPI_Init_thread(ptr noundef %argc.addr, ptr noundef %argv.addr, i32 noundef 3, ptr noundef %provided)
  %0 = load i32, ptr %provided, align 4, !tbaa !5
  %cmp = icmp ne i32 %0, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !tbaa !9
  %2 = load i32, ptr %provided, align 4, !tbaa !5
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.8, i32 noundef %2)
  %call2 = call i32 @MPI_Abort(ptr noundef @ompi_mpi_comm_world, i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr %provided) #4
  %call3 = call i32 @papyruskv_init(ptr noundef %argc.addr, ptr noundef %argv.addr, ptr noundef @.str.9)
  %call4 = call i32 @MPI_Comm_rank(ptr noundef @ompi_mpi_comm_world, ptr noundef @rank)
  %call5 = call i32 @MPI_Comm_size(ptr noundef @ompi_mpi_comm_world, ptr noundef @size)
  %call6 = call i32 @MPI_Get_processor_name(ptr noundef @name, ptr noundef @ret)
  %3 = load i32, ptr @rank, align 4, !tbaa !5
  %cmp7 = icmp eq i32 %3, 0
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %4 = load i32, ptr @size, align 4, !tbaa !5
  %sub = sub nsw i32 %4, 1
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %5 = load i32, ptr @rank, align 4, !tbaa !5
  %sub8 = sub nsw i32 %5, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %sub8, %cond.false ]
  store i32 %cond, ptr @left, align 4, !tbaa !5
  %6 = load i32, ptr @rank, align 4, !tbaa !5
  %7 = load i32, ptr @size, align 4, !tbaa !5
  %sub9 = sub nsw i32 %7, 1
  %cmp10 = icmp eq i32 %6, %sub9
  br i1 %cmp10, label %cond.true11, label %cond.false12

cond.true11:                                      ; preds = %cond.end
  br label %cond.end13

cond.false12:                                     ; preds = %cond.end
  %8 = load i32, ptr @rank, align 4, !tbaa !5
  %add = add nsw i32 %8, 1
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false12, %cond.true11
  %cond14 = phi i32 [ 0, %cond.true11 ], [ %add, %cond.false12 ]
  store i32 %cond14, ptr @right, align 4, !tbaa !5
  %9 = load i32, ptr @rank, align 4, !tbaa !5
  %10 = load i32, ptr @size, align 4, !tbaa !5
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, ptr noundef @.str.11, i32 noundef 28, ptr noundef @name, i32 noundef %9, i32 noundef %10)
  %call16 = call i32 @papyruskv_open(ptr noundef @.str.12, i32 noundef 14, ptr noundef null, ptr noundef @db)
  store i32 %call16, ptr @ret, align 4, !tbaa !5
  %11 = load i32, ptr @ret, align 4, !tbaa !5
  %cmp17 = icmp ne i32 %11, 0
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %cond.end13
  %12 = load i32, ptr @ret, align 4, !tbaa !5
  %call19 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, ptr noundef @.str.11, i32 noundef 31, i32 noundef %12)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %cond.end13
  %13 = load i32, ptr @db, align 4, !tbaa !5
  %call21 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, ptr noundef @.str.11, i32 noundef 32, i32 noundef %13)
  %14 = load i32, ptr @rank, align 4, !tbaa !5
  %conv = sext i32 %14 to i64
  %cmp22 = icmp ult i64 %conv, 4
  br i1 %cmp22, label %if.then24, label %if.end46

if.then24:                                        ; preds = %if.end20
  %15 = load i32, ptr @db, align 4, !tbaa !5
  %16 = load i32, ptr @rank, align 4, !tbaa !5
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr @k, i64 0, i64 %idxprom
  %17 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  %18 = load i32, ptr @rank, align 4, !tbaa !5
  %idxprom25 = sext i32 %18 to i64
  %arrayidx26 = getelementptr inbounds [4 x ptr], ptr @k, i64 0, i64 %idxprom25
  %19 = load ptr, ptr %arrayidx26, align 8, !tbaa !9
  %call27 = call i64 @strlen(ptr noundef %19) #5
  %add28 = add i64 %call27, 1
  %20 = load i32, ptr @rank, align 4, !tbaa !5
  %idxprom29 = sext i32 %20 to i64
  %arrayidx30 = getelementptr inbounds [4 x ptr], ptr @v, i64 0, i64 %idxprom29
  %21 = load ptr, ptr %arrayidx30, align 8, !tbaa !9
  %22 = load i32, ptr @rank, align 4, !tbaa !5
  %idxprom31 = sext i32 %22 to i64
  %arrayidx32 = getelementptr inbounds [4 x ptr], ptr @v, i64 0, i64 %idxprom31
  %23 = load ptr, ptr %arrayidx32, align 8, !tbaa !9
  %call33 = call i64 @strlen(ptr noundef %23) #5
  %add34 = add i64 %call33, 1
  %call35 = call i32 @papyruskv_put(i32 noundef %15, ptr noundef %17, i64 noundef %add28, ptr noundef %21, i64 noundef %add34)
  store i32 %call35, ptr @ret, align 4, !tbaa !5
  %24 = load i32, ptr @ret, align 4, !tbaa !5
  %cmp36 = icmp ne i32 %24, 0
  br i1 %cmp36, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.then24
  %25 = load i32, ptr @ret, align 4, !tbaa !5
  %call39 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, ptr noundef @.str.11, i32 noundef 36, i32 noundef %25)
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.then24
  %26 = load i32, ptr @rank, align 4, !tbaa !5
  %27 = load i32, ptr @rank, align 4, !tbaa !5
  %idxprom41 = sext i32 %27 to i64
  %arrayidx42 = getelementptr inbounds [4 x ptr], ptr @k, i64 0, i64 %idxprom41
  %28 = load ptr, ptr %arrayidx42, align 8, !tbaa !9
  %29 = load i32, ptr @rank, align 4, !tbaa !5
  %idxprom43 = sext i32 %29 to i64
  %arrayidx44 = getelementptr inbounds [4 x ptr], ptr @v, i64 0, i64 %idxprom43
  %30 = load ptr, ptr %arrayidx44, align 8, !tbaa !9
  %call45 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, ptr noundef @.str.11, i32 noundef 38, i32 noundef %26, ptr noundef %28, ptr noundef %30)
  br label %if.end46

if.end46:                                         ; preds = %if.end40, %if.end20
  %call47 = call i32 @MPI_Barrier(ptr noundef @ompi_mpi_comm_world)
  %31 = load i32, ptr @db, align 4, !tbaa !5
  %call48 = call i32 @papyruskv_barrier(i32 noundef %31, i32 noundef 2)
  store i32 %call48, ptr @ret, align 4, !tbaa !5
  %32 = load i32, ptr @ret, align 4, !tbaa !5
  %cmp49 = icmp ne i32 %32, 0
  br i1 %cmp49, label %if.then51, label %if.end53

if.then51:                                        ; preds = %if.end46
  %33 = load i32, ptr @ret, align 4, !tbaa !5
  %call52 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, ptr noundef @.str.11, i32 noundef 44, i32 noundef %33)
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.end46
  %34 = load i32, ptr @rank, align 4, !tbaa !5
  %call54 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, ptr noundef @.str.11, i32 noundef 45, i32 noundef %34)
  %35 = load i32, ptr @right, align 4, !tbaa !5
  %conv55 = sext i32 %35 to i64
  %cmp56 = icmp ult i64 %conv55, 4
  br i1 %cmp56, label %if.then58, label %if.end74

if.then58:                                        ; preds = %if.end53
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #4
  store ptr null, ptr %val, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %vallen) #4
  store i64 0, ptr %vallen, align 8, !tbaa !11
  %36 = load i32, ptr @db, align 4, !tbaa !5
  %37 = load i32, ptr @right, align 4, !tbaa !5
  %idxprom59 = sext i32 %37 to i64
  %arrayidx60 = getelementptr inbounds [4 x ptr], ptr @k, i64 0, i64 %idxprom59
  %38 = load ptr, ptr %arrayidx60, align 8, !tbaa !9
  %39 = load i32, ptr @right, align 4, !tbaa !5
  %idxprom61 = sext i32 %39 to i64
  %arrayidx62 = getelementptr inbounds [4 x ptr], ptr @k, i64 0, i64 %idxprom61
  %40 = load ptr, ptr %arrayidx62, align 8, !tbaa !9
  %call63 = call i64 @strlen(ptr noundef %40) #5
  %add64 = add i64 %call63, 1
  %call65 = call i32 @papyruskv_get(i32 noundef %36, ptr noundef %38, i64 noundef %add64, ptr noundef %val, ptr noundef %vallen)
  store i32 %call65, ptr @ret, align 4, !tbaa !5
  %41 = load i32, ptr @ret, align 4, !tbaa !5
  %cmp66 = icmp ne i32 %41, 0
  br i1 %cmp66, label %if.then68, label %if.end70

if.then68:                                        ; preds = %if.then58
  %42 = load i32, ptr @ret, align 4, !tbaa !5
  %call69 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, ptr noundef @.str.11, i32 noundef 51, i32 noundef %42)
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %if.then58
  %43 = load i32, ptr @rank, align 4, !tbaa !5
  %44 = load i32, ptr @right, align 4, !tbaa !5
  %45 = load i32, ptr @right, align 4, !tbaa !5
  %idxprom71 = sext i32 %45 to i64
  %arrayidx72 = getelementptr inbounds [4 x ptr], ptr @k, i64 0, i64 %idxprom71
  %46 = load ptr, ptr %arrayidx72, align 8, !tbaa !9
  %47 = load ptr, ptr %val, align 8, !tbaa !9
  %48 = load i64, ptr %vallen, align 8, !tbaa !11
  %call73 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, ptr noundef @.str.11, i32 noundef 53, i32 noundef %43, i32 noundef %44, ptr noundef %46, ptr noundef %47, i64 noundef %48)
  call void @llvm.lifetime.end.p0(i64 8, ptr %vallen) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #4
  br label %if.end74

if.end74:                                         ; preds = %if.end70, %if.end53
  %call75 = call i32 @MPI_Barrier(ptr noundef @ompi_mpi_comm_world)
  %49 = load i32, ptr @left, align 4, !tbaa !5
  %conv76 = sext i32 %49 to i64
  %cmp77 = icmp ult i64 %conv76, 4
  br i1 %cmp77, label %if.then79, label %if.end95

if.then79:                                        ; preds = %if.end74
  %50 = load i32, ptr @db, align 4, !tbaa !5
  %51 = load i32, ptr @left, align 4, !tbaa !5
  %idxprom80 = sext i32 %51 to i64
  %arrayidx81 = getelementptr inbounds [4 x ptr], ptr @k, i64 0, i64 %idxprom80
  %52 = load ptr, ptr %arrayidx81, align 8, !tbaa !9
  %53 = load i32, ptr @left, align 4, !tbaa !5
  %idxprom82 = sext i32 %53 to i64
  %arrayidx83 = getelementptr inbounds [4 x ptr], ptr @k, i64 0, i64 %idxprom82
  %54 = load ptr, ptr %arrayidx83, align 8, !tbaa !9
  %call84 = call i64 @strlen(ptr noundef %54) #5
  %add85 = add i64 %call84, 1
  %call86 = call i32 @papyruskv_delete(i32 noundef %50, ptr noundef %52, i64 noundef %add85)
  store i32 %call86, ptr @ret, align 4, !tbaa !5
  %55 = load i32, ptr @ret, align 4, !tbaa !5
  %cmp87 = icmp ne i32 %55, 0
  br i1 %cmp87, label %if.then89, label %if.end91

if.then89:                                        ; preds = %if.then79
  %56 = load i32, ptr @ret, align 4, !tbaa !5
  %call90 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, ptr noundef @.str.11, i32 noundef 60, i32 noundef %56)
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %if.then79
  %57 = load i32, ptr @rank, align 4, !tbaa !5
  %58 = load i32, ptr @left, align 4, !tbaa !5
  %59 = load i32, ptr @left, align 4, !tbaa !5
  %idxprom92 = sext i32 %59 to i64
  %arrayidx93 = getelementptr inbounds [4 x ptr], ptr @k, i64 0, i64 %idxprom92
  %60 = load ptr, ptr %arrayidx93, align 8, !tbaa !9
  %call94 = call i32 (ptr, ...) @printf(ptr noundef @.str.18, ptr noundef @.str.11, i32 noundef 61, i32 noundef %57, i32 noundef %58, ptr noundef %60)
  br label %if.end95

if.end95:                                         ; preds = %if.end91, %if.end74
  %61 = load i32, ptr @db, align 4, !tbaa !5
  %call96 = call i32 @papyruskv_barrier(i32 noundef %61, i32 noundef 2)
  store i32 %call96, ptr @ret, align 4, !tbaa !5
  %62 = load i32, ptr @ret, align 4, !tbaa !5
  %cmp97 = icmp ne i32 %62, 0
  br i1 %cmp97, label %if.then99, label %if.end101

if.then99:                                        ; preds = %if.end95
  %63 = load i32, ptr @ret, align 4, !tbaa !5
  %call100 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, ptr noundef @.str.11, i32 noundef 65, i32 noundef %63)
  br label %if.end101

if.end101:                                        ; preds = %if.then99, %if.end95
  %64 = load i32, ptr @rank, align 4, !tbaa !5
  %call102 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, ptr noundef @.str.11, i32 noundef 66, i32 noundef %64)
  %65 = load i32, ptr @rank, align 4, !tbaa !5
  %conv103 = sext i32 %65 to i64
  %cmp104 = icmp ult i64 %conv103, 4
  br i1 %cmp104, label %if.then106, label %if.end126

if.then106:                                       ; preds = %if.end101
  call void @llvm.lifetime.start.p0(i64 8, ptr %val107) #4
  store ptr null, ptr %val107, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %vallen108) #4
  store i64 0, ptr %vallen108, align 8, !tbaa !11
  %66 = load i32, ptr @db, align 4, !tbaa !5
  %67 = load i32, ptr @rank, align 4, !tbaa !5
  %idxprom109 = sext i32 %67 to i64
  %arrayidx110 = getelementptr inbounds [4 x ptr], ptr @k, i64 0, i64 %idxprom109
  %68 = load ptr, ptr %arrayidx110, align 8, !tbaa !9
  %69 = load i32, ptr @rank, align 4, !tbaa !5
  %idxprom111 = sext i32 %69 to i64
  %arrayidx112 = getelementptr inbounds [4 x ptr], ptr @k, i64 0, i64 %idxprom111
  %70 = load ptr, ptr %arrayidx112, align 8, !tbaa !9
  %call113 = call i64 @strlen(ptr noundef %70) #5
  %add114 = add i64 %call113, 1
  %call115 = call i32 @papyruskv_get(i32 noundef %66, ptr noundef %68, i64 noundef %add114, ptr noundef %val107, ptr noundef %vallen108)
  store i32 %call115, ptr @ret, align 4, !tbaa !5
  %71 = load i32, ptr @ret, align 4, !tbaa !5
  %cmp116 = icmp eq i32 %71, -1
  br i1 %cmp116, label %if.then118, label %if.else

if.then118:                                       ; preds = %if.then106
  %72 = load i32, ptr @rank, align 4, !tbaa !5
  %73 = load i32, ptr @rank, align 4, !tbaa !5
  %idxprom119 = sext i32 %73 to i64
  %arrayidx120 = getelementptr inbounds [4 x ptr], ptr @k, i64 0, i64 %idxprom119
  %74 = load ptr, ptr %arrayidx120, align 8, !tbaa !9
  %75 = load ptr, ptr %val107, align 8, !tbaa !9
  %76 = load i64, ptr %vallen108, align 8, !tbaa !11
  %call121 = call i32 (ptr, ...) @printf(ptr noundef @.str.19, ptr noundef @.str.11, i32 noundef 72, i32 noundef %72, ptr noundef %74, ptr noundef %75, i64 noundef %76)
  br label %if.end125

if.else:                                          ; preds = %if.then106
  %77 = load i32, ptr @rank, align 4, !tbaa !5
  %78 = load i32, ptr @rank, align 4, !tbaa !5
  %idxprom122 = sext i32 %78 to i64
  %arrayidx123 = getelementptr inbounds [4 x ptr], ptr @k, i64 0, i64 %idxprom122
  %79 = load ptr, ptr %arrayidx123, align 8, !tbaa !9
  %80 = load ptr, ptr %val107, align 8, !tbaa !9
  %81 = load i64, ptr %vallen108, align 8, !tbaa !11
  %call124 = call i32 (ptr, ...) @printf(ptr noundef @.str.20, ptr noundef @.str.11, i32 noundef 73, i32 noundef %77, ptr noundef %79, ptr noundef %80, i64 noundef %81)
  br label %if.end125

if.end125:                                        ; preds = %if.else, %if.then118
  call void @llvm.lifetime.end.p0(i64 8, ptr %vallen108) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %val107) #4
  br label %if.end126

if.end126:                                        ; preds = %if.end125, %if.end101
  %82 = load i32, ptr @db, align 4, !tbaa !5
  %call127 = call i32 @papyruskv_close(i32 noundef %82)
  store i32 %call127, ptr @ret, align 4, !tbaa !5
  %83 = load i32, ptr @ret, align 4, !tbaa !5
  %cmp128 = icmp ne i32 %83, 0
  br i1 %cmp128, label %if.then130, label %if.end132

if.then130:                                       ; preds = %if.end126
  %84 = load i32, ptr @ret, align 4, !tbaa !5
  %call131 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, ptr noundef @.str.11, i32 noundef 77, i32 noundef %84)
  br label %if.end132

if.end132:                                        ; preds = %if.then130, %if.end126
  %call133 = call i32 (...) @papyruskv_finalize()
  %call134 = call i32 @MPI_Finalize()
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @MPI_Init_thread(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare i32 @MPI_Abort(ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @papyruskv_init(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @MPI_Comm_rank(ptr noundef, ptr noundef) #2

declare i32 @MPI_Comm_size(ptr noundef, ptr noundef) #2

declare i32 @MPI_Get_processor_name(ptr noundef, ptr noundef) #2

declare i32 @printf(ptr noundef, ...) #2

declare i32 @papyruskv_open(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare i32 @papyruskv_put(i32 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

declare i32 @MPI_Barrier(ptr noundef) #2

declare i32 @papyruskv_barrier(i32 noundef, i32 noundef) #2

declare i32 @papyruskv_get(i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #2

declare i32 @papyruskv_delete(i32 noundef, ptr noundef, i64 noundef) #2

declare i32 @papyruskv_close(i32 noundef) #2

declare i32 @papyruskv_finalize(...) #2

declare i32 @MPI_Finalize() #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind willreturn memory(read) }

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

; ModuleID = 'samples/769.bc'
source_filename = "/local-ssd/globalarrays-4b7gqwvfr3rlpyzs4u6z5cjqyfeyij7v-build/aidengro/spack-stage-globalarrays-5.8.2-4b7gqwvfr3rlpyzs4u6z5cjqyfeyij7v/spack-src/tcgmsg/tcgmsg-mpi/collect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ompi_predefined_op_t = type opaque
%struct.ompi_predefined_datatype_t = type opaque

@igop_work = internal global [65536 x i64] zeroinitializer, align 16
@_tcg_initialized = external global i32, align 4
@.str = private unnamed_addr constant [4 x i8] c"abs\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@ompi_mpi_op_sum = external global %struct.ompi_predefined_op_t, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@ompi_mpi_op_prod = external global %struct.ompi_predefined_op_t, align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"absmax\00", align 1
@ompi_mpi_op_max = external global %struct.ompi_predefined_op_t, align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"absmin\00", align 1
@ompi_mpi_op_min = external global %struct.ompi_predefined_op_t, align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@ompi_mpi_op_bor = external global %struct.ompi_predefined_op_t, align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"land\00", align 1
@ompi_mpi_op_land = external global %struct.ompi_predefined_op_t, align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"lor\00", align 1
@ompi_mpi_op_lor = external global %struct.ompi_predefined_op_t, align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"band\00", align 1
@ompi_mpi_op_band = external global %struct.ompi_predefined_op_t, align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"bor\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"IGOP: unknown operation requested\00", align 1
@ompi_mpi_long = external global %struct.ompi_predefined_datatype_t, align 1
@TCGMSG_Comm = external global ptr, align 8
@tcgmsg_err_string = external global [336 x i8], align 16
@.str.17 = private unnamed_addr constant [21 x i8] c"IGOP: MPI_Allreduce:\00", align 1
@dgop_work = internal global [65536 x double] zeroinitializer, align 16
@.str.18 = private unnamed_addr constant [34 x i8] c"DGOP: unknown operation requested\00", align 1
@ompi_mpi_double = external global %struct.ompi_predefined_datatype_t, align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"DGOP: MPI_Allreduce:\00", align 1
@ompi_mpi_char = external global %struct.ompi_predefined_datatype_t, align 1

; Function Attrs: noinline nounwind optnone uwtable
define void @armci_tcgmsg_igop(ptr noundef %ptype, ptr noundef %x, ptr noundef %pn, ptr noundef %op, i32 noundef %oplen) #0 {
entry:
  %ptype.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %pn.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %oplen.addr = alloca i32, align 4
  %work = alloca ptr, align 8
  %nleft = alloca i64, align 8
  %buflen = alloca i64, align 8
  %nbuf = alloca i64, align 8
  %n = alloca i64, align 8
  %ierr = alloca i32, align 4
  %ndo = alloca i32, align 4
  %mop = alloca ptr, align 8
  %_tot_len = alloca i32, align 4
  %_len = alloca i32, align 4
  store ptr %ptype, ptr %ptype.addr, align 8
  store ptr %x, ptr %x.addr, align 8
  store ptr %pn, ptr %pn.addr, align 8
  store ptr %op, ptr %op.addr, align 8
  store i32 %oplen, ptr %oplen.addr, align 4
  store ptr @igop_work, ptr %work, align 8
  %0 = load ptr, ptr %pn.addr, align 8
  %1 = load i64, ptr %0, align 8
  store i64 %1, ptr %nleft, align 8
  %2 = load i64, ptr %nleft, align 8
  %cmp = icmp sle i64 %2, 65536
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i64, ptr %nleft, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %3, %cond.true ], [ 65536, %cond.false ]
  store i64 %cond, ptr %buflen, align 8
  %4 = load i64, ptr %nleft, align 8
  %sub = sub nsw i64 %4, 1
  %5 = load i64, ptr %buflen, align 8
  %div = sdiv i64 %sub, %5
  %add = add nsw i64 %div, 1
  store i64 %add, ptr %nbuf, align 8
  %6 = load i32, ptr @_tcg_initialized, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  call void (...) @armci_tcgmsg_pbeginf()
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %7 = load i64, ptr %nleft, align 8
  %sub1 = sub nsw i64 %7, 1
  %8 = load i64, ptr %nbuf, align 8
  %div2 = sdiv i64 %sub1, %8
  %add3 = add nsw i64 %div2, 1
  store i64 %add3, ptr %buflen, align 8
  %9 = load ptr, ptr %op.addr, align 8
  %call = call i32 @strncmp(ptr noundef %9, ptr noundef @.str, i64 noundef 3) #4
  %cmp4 = icmp eq i32 %call, 0
  br i1 %cmp4, label %if.then5, label %if.end16

if.then5:                                         ; preds = %if.end
  %10 = load ptr, ptr %pn.addr, align 8
  %11 = load i64, ptr %10, align 8
  store i64 %11, ptr %n, align 8
  br label %while.cond

while.cond:                                       ; preds = %cond.end13, %if.then5
  %12 = load i64, ptr %n, align 8
  %dec = add nsw i64 %12, -1
  store i64 %dec, ptr %n, align 8
  %tobool6 = icmp ne i64 %12, 0
  br i1 %tobool6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load ptr, ptr %x.addr, align 8
  %14 = load i64, ptr %n, align 8
  %arrayidx = getelementptr inbounds i64, ptr %13, i64 %14
  %15 = load i64, ptr %arrayidx, align 8
  %cmp7 = icmp sge i64 %15, 0
  br i1 %cmp7, label %cond.true8, label %cond.false10

cond.true8:                                       ; preds = %while.body
  %16 = load ptr, ptr %x.addr, align 8
  %17 = load i64, ptr %n, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %16, i64 %17
  %18 = load i64, ptr %arrayidx9, align 8
  br label %cond.end13

cond.false10:                                     ; preds = %while.body
  %19 = load ptr, ptr %x.addr, align 8
  %20 = load i64, ptr %n, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %19, i64 %20
  %21 = load i64, ptr %arrayidx11, align 8
  %sub12 = sub nsw i64 0, %21
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false10, %cond.true8
  %cond14 = phi i64 [ %18, %cond.true8 ], [ %sub12, %cond.false10 ]
  %22 = load ptr, ptr %x.addr, align 8
  %23 = load i64, ptr %n, align 8
  %arrayidx15 = getelementptr inbounds i64, ptr %22, i64 %23
  store i64 %cond14, ptr %arrayidx15, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  br label %if.end16

if.end16:                                         ; preds = %while.end, %if.end
  br label %while.cond17

while.cond17:                                     ; preds = %while.end117, %if.end16
  %24 = load i64, ptr %nleft, align 8
  %tobool18 = icmp ne i64 %24, 0
  br i1 %tobool18, label %while.body19, label %while.end122

while.body19:                                     ; preds = %while.cond17
  store i32 0, ptr %ierr, align 4
  %25 = load i64, ptr %nleft, align 8
  %26 = load i64, ptr %buflen, align 8
  %cmp20 = icmp sle i64 %25, %26
  br i1 %cmp20, label %cond.true21, label %cond.false22

cond.true21:                                      ; preds = %while.body19
  %27 = load i64, ptr %nleft, align 8
  br label %cond.end23

cond.false22:                                     ; preds = %while.body19
  %28 = load i64, ptr %buflen, align 8
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false22, %cond.true21
  %cond24 = phi i64 [ %27, %cond.true21 ], [ %28, %cond.false22 ]
  %conv = trunc i64 %cond24 to i32
  store i32 %conv, ptr %ndo, align 4
  %29 = load ptr, ptr %op.addr, align 8
  %call25 = call i32 @strncmp(ptr noundef %29, ptr noundef @.str.1, i64 noundef 1) #4
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then28, label %if.else

if.then28:                                        ; preds = %cond.end23
  store ptr @ompi_mpi_op_sum, ptr %mop, align 8
  br label %if.end100

if.else:                                          ; preds = %cond.end23
  %30 = load ptr, ptr %op.addr, align 8
  %call29 = call i32 @strncmp(ptr noundef %30, ptr noundef @.str.2, i64 noundef 1) #4
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.then32, label %if.else33

if.then32:                                        ; preds = %if.else
  store ptr @ompi_mpi_op_prod, ptr %mop, align 8
  br label %if.end99

if.else33:                                        ; preds = %if.else
  %31 = load ptr, ptr %op.addr, align 8
  %call34 = call i32 @strncmp(ptr noundef %31, ptr noundef @.str.3, i64 noundef 3) #4
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.then40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else33
  %32 = load ptr, ptr %op.addr, align 8
  %call37 = call i32 @strncmp(ptr noundef %32, ptr noundef @.str.4, i64 noundef 6) #4
  %cmp38 = icmp eq i32 %call37, 0
  br i1 %cmp38, label %if.then40, label %if.else41

if.then40:                                        ; preds = %lor.lhs.false, %if.else33
  store ptr @ompi_mpi_op_max, ptr %mop, align 8
  br label %if.end98

if.else41:                                        ; preds = %lor.lhs.false
  %33 = load ptr, ptr %op.addr, align 8
  %call42 = call i32 @strncmp(ptr noundef %33, ptr noundef @.str.5, i64 noundef 3) #4
  %cmp43 = icmp eq i32 %call42, 0
  br i1 %cmp43, label %if.then49, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %if.else41
  %34 = load ptr, ptr %op.addr, align 8
  %call46 = call i32 @strncmp(ptr noundef %34, ptr noundef @.str.6, i64 noundef 6) #4
  %cmp47 = icmp eq i32 %call46, 0
  br i1 %cmp47, label %if.then49, label %if.else50

if.then49:                                        ; preds = %lor.lhs.false45, %if.else41
  store ptr @ompi_mpi_op_min, ptr %mop, align 8
  br label %if.end97

if.else50:                                        ; preds = %lor.lhs.false45
  %35 = load ptr, ptr %op.addr, align 8
  %call51 = call i32 @strncmp(ptr noundef %35, ptr noundef @.str.7, i64 noundef 2) #4
  %cmp52 = icmp eq i32 %call51, 0
  br i1 %cmp52, label %if.then54, label %if.else55

if.then54:                                        ; preds = %if.else50
  store ptr @ompi_mpi_op_bor, ptr %mop, align 8
  br label %if.end96

if.else55:                                        ; preds = %if.else50
  %36 = load ptr, ptr %op.addr, align 8
  %call56 = call i32 @strncmp(ptr noundef %36, ptr noundef @.str.8, i64 noundef 2) #4
  %cmp57 = icmp eq i32 %call56, 0
  br i1 %cmp57, label %if.then63, label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %if.else55
  %37 = load ptr, ptr %op.addr, align 8
  %call60 = call i32 @strncmp(ptr noundef %37, ptr noundef @.str.9, i64 noundef 4) #4
  %cmp61 = icmp eq i32 %call60, 0
  br i1 %cmp61, label %if.then63, label %if.else64

if.then63:                                        ; preds = %lor.lhs.false59, %if.else55
  store ptr @ompi_mpi_op_land, ptr %mop, align 8
  br label %if.end95

if.else64:                                        ; preds = %lor.lhs.false59
  %38 = load ptr, ptr %op.addr, align 8
  %call65 = call i32 @strncmp(ptr noundef %38, ptr noundef @.str.10, i64 noundef 2) #4
  %cmp66 = icmp eq i32 %call65, 0
  br i1 %cmp66, label %if.then72, label %lor.lhs.false68

lor.lhs.false68:                                  ; preds = %if.else64
  %39 = load ptr, ptr %op.addr, align 8
  %call69 = call i32 @strncmp(ptr noundef %39, ptr noundef @.str.11, i64 noundef 3) #4
  %cmp70 = icmp eq i32 %call69, 0
  br i1 %cmp70, label %if.then72, label %if.else73

if.then72:                                        ; preds = %lor.lhs.false68, %if.else64
  store ptr @ompi_mpi_op_lor, ptr %mop, align 8
  br label %if.end94

if.else73:                                        ; preds = %lor.lhs.false68
  %40 = load ptr, ptr %op.addr, align 8
  %call74 = call i32 @strncmp(ptr noundef %40, ptr noundef @.str.12, i64 noundef 1) #4
  %cmp75 = icmp eq i32 %call74, 0
  br i1 %cmp75, label %if.then81, label %lor.lhs.false77

lor.lhs.false77:                                  ; preds = %if.else73
  %41 = load ptr, ptr %op.addr, align 8
  %call78 = call i32 @strncmp(ptr noundef %41, ptr noundef @.str.13, i64 noundef 4) #4
  %cmp79 = icmp eq i32 %call78, 0
  br i1 %cmp79, label %if.then81, label %if.else82

if.then81:                                        ; preds = %lor.lhs.false77, %if.else73
  store ptr @ompi_mpi_op_band, ptr %mop, align 8
  br label %if.end93

if.else82:                                        ; preds = %lor.lhs.false77
  %42 = load ptr, ptr %op.addr, align 8
  %call83 = call i32 @strncmp(ptr noundef %42, ptr noundef @.str.14, i64 noundef 1) #4
  %cmp84 = icmp eq i32 %call83, 0
  br i1 %cmp84, label %if.then90, label %lor.lhs.false86

lor.lhs.false86:                                  ; preds = %if.else82
  %43 = load ptr, ptr %op.addr, align 8
  %call87 = call i32 @strncmp(ptr noundef %43, ptr noundef @.str.15, i64 noundef 3) #4
  %cmp88 = icmp eq i32 %call87, 0
  br i1 %cmp88, label %if.then90, label %if.else91

if.then90:                                        ; preds = %lor.lhs.false86, %if.else82
  store ptr @ompi_mpi_op_bor, ptr %mop, align 8
  br label %if.end92

if.else91:                                        ; preds = %lor.lhs.false86
  %44 = load ptr, ptr %pn.addr, align 8
  %45 = load i64, ptr %44, align 8
  call void @Error(ptr noundef @.str.16, i64 noundef %45)
  br label %if.end92

if.end92:                                         ; preds = %if.else91, %if.then90
  br label %if.end93

if.end93:                                         ; preds = %if.end92, %if.then81
  br label %if.end94

if.end94:                                         ; preds = %if.end93, %if.then72
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %if.then63
  br label %if.end96

if.end96:                                         ; preds = %if.end95, %if.then54
  br label %if.end97

if.end97:                                         ; preds = %if.end96, %if.then49
  br label %if.end98

if.end98:                                         ; preds = %if.end97, %if.then40
  br label %if.end99

if.end99:                                         ; preds = %if.end98, %if.then32
  br label %if.end100

if.end100:                                        ; preds = %if.end99, %if.then28
  %46 = load ptr, ptr %x.addr, align 8
  %47 = load ptr, ptr %work, align 8
  %48 = load i32, ptr %ndo, align 4
  %49 = load ptr, ptr %mop, align 8
  %50 = load ptr, ptr @TCGMSG_Comm, align 8
  %call101 = call i32 @MPI_Allreduce(ptr noundef %46, ptr noundef %47, i32 noundef %48, ptr noundef @ompi_mpi_long, ptr noundef %49, ptr noundef %50)
  store i32 %call101, ptr %ierr, align 4
  %51 = load i32, ptr %ierr, align 4
  %cmp102 = icmp ne i32 %51, 0
  br i1 %cmp102, label %if.then104, label %if.end109

if.then104:                                       ; preds = %if.end100
  store i32 20, ptr %_len, align 4
  %52 = load i32, ptr %_len, align 4
  %conv105 = sext i32 %52 to i64
  %call106 = call ptr @strncpy(ptr noundef @tcgmsg_err_string, ptr noundef @.str.17, i64 noundef %conv105) #5
  %53 = load i32, ptr %ierr, align 4
  %54 = load i32, ptr %_len, align 4
  %idx.ext = sext i32 %54 to i64
  %add.ptr = getelementptr inbounds i8, ptr @tcgmsg_err_string, i64 %idx.ext
  %call107 = call i32 @MPI_Error_string(i32 noundef %53, ptr noundef %add.ptr, ptr noundef %_tot_len)
  %55 = load i32, ptr %ierr, align 4
  %conv108 = sext i32 %55 to i64
  call void @Error(ptr noundef @tcgmsg_err_string, i64 noundef %conv108)
  br label %if.end109

if.end109:                                        ; preds = %if.then104, %if.end100
  %56 = load i32, ptr %ndo, align 4
  %conv110 = sext i32 %56 to i64
  store i64 %conv110, ptr %n, align 8
  br label %while.cond111

while.cond111:                                    ; preds = %while.body114, %if.end109
  %57 = load i64, ptr %n, align 8
  %dec112 = add nsw i64 %57, -1
  store i64 %dec112, ptr %n, align 8
  %tobool113 = icmp ne i64 %57, 0
  br i1 %tobool113, label %while.body114, label %while.end117

while.body114:                                    ; preds = %while.cond111
  %58 = load ptr, ptr %work, align 8
  %59 = load i64, ptr %n, align 8
  %arrayidx115 = getelementptr inbounds i64, ptr %58, i64 %59
  %60 = load i64, ptr %arrayidx115, align 8
  %61 = load ptr, ptr %x.addr, align 8
  %62 = load i64, ptr %n, align 8
  %arrayidx116 = getelementptr inbounds i64, ptr %61, i64 %62
  store i64 %60, ptr %arrayidx116, align 8
  br label %while.cond111, !llvm.loop !7

while.end117:                                     ; preds = %while.cond111
  %63 = load i32, ptr %ndo, align 4
  %conv118 = sext i32 %63 to i64
  %64 = load i64, ptr %nleft, align 8
  %sub119 = sub nsw i64 %64, %conv118
  store i64 %sub119, ptr %nleft, align 8
  %65 = load i32, ptr %ndo, align 4
  %66 = load ptr, ptr %x.addr, align 8
  %idx.ext120 = sext i32 %65 to i64
  %add.ptr121 = getelementptr inbounds i64, ptr %66, i64 %idx.ext120
  store ptr %add.ptr121, ptr %x.addr, align 8
  br label %while.cond17, !llvm.loop !8

while.end122:                                     ; preds = %while.cond17
  ret void
}

declare void @armci_tcgmsg_pbeginf(...) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #2

declare void @Error(ptr noundef, i64 noundef) #1

declare i32 @MPI_Allreduce(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #3

declare i32 @MPI_Error_string(i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @armci_tcgmsg_dgop(ptr noundef %ptype, ptr noundef %x, ptr noundef %pn, ptr noundef %op, i32 noundef %oplen) #0 {
entry:
  %ptype.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %pn.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %oplen.addr = alloca i32, align 4
  %work = alloca ptr, align 8
  %nleft = alloca i64, align 8
  %buflen = alloca i64, align 8
  %nbuf = alloca i64, align 8
  %n = alloca i64, align 8
  %ierr = alloca i32, align 4
  %ndo = alloca i32, align 4
  %mop = alloca ptr, align 8
  %_tot_len = alloca i32, align 4
  %_len = alloca i32, align 4
  store ptr %ptype, ptr %ptype.addr, align 8
  store ptr %x, ptr %x.addr, align 8
  store ptr %pn, ptr %pn.addr, align 8
  store ptr %op, ptr %op.addr, align 8
  store i32 %oplen, ptr %oplen.addr, align 4
  store ptr @dgop_work, ptr %work, align 8
  %0 = load ptr, ptr %pn.addr, align 8
  %1 = load i64, ptr %0, align 8
  store i64 %1, ptr %nleft, align 8
  %2 = load i64, ptr %nleft, align 8
  %cmp = icmp sle i64 %2, 65536
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i64, ptr %nleft, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %3, %cond.true ], [ 65536, %cond.false ]
  store i64 %cond, ptr %buflen, align 8
  %4 = load i64, ptr %nleft, align 8
  %sub = sub nsw i64 %4, 1
  %5 = load i64, ptr %buflen, align 8
  %div = sdiv i64 %sub, %5
  %add = add nsw i64 %div, 1
  store i64 %add, ptr %nbuf, align 8
  %6 = load i64, ptr %nleft, align 8
  %sub1 = sub nsw i64 %6, 1
  %7 = load i64, ptr %nbuf, align 8
  %div2 = sdiv i64 %sub1, %7
  %add3 = add nsw i64 %div2, 1
  store i64 %add3, ptr %buflen, align 8
  %8 = load ptr, ptr %op.addr, align 8
  %call = call i32 @strncmp(ptr noundef %8, ptr noundef @.str, i64 noundef 3) #4
  %cmp4 = icmp eq i32 %call, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %9 = load ptr, ptr %pn.addr, align 8
  %10 = load i64, ptr %9, align 8
  store i64 %10, ptr %n, align 8
  br label %while.cond

while.cond:                                       ; preds = %cond.end10, %if.then
  %11 = load i64, ptr %n, align 8
  %dec = add nsw i64 %11, -1
  store i64 %dec, ptr %n, align 8
  %tobool = icmp ne i64 %11, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load ptr, ptr %x.addr, align 8
  %13 = load i64, ptr %n, align 8
  %arrayidx = getelementptr inbounds double, ptr %12, i64 %13
  %14 = load double, ptr %arrayidx, align 8
  %cmp5 = fcmp oge double %14, 0.000000e+00
  br i1 %cmp5, label %cond.true6, label %cond.false8

cond.true6:                                       ; preds = %while.body
  %15 = load ptr, ptr %x.addr, align 8
  %16 = load i64, ptr %n, align 8
  %arrayidx7 = getelementptr inbounds double, ptr %15, i64 %16
  %17 = load double, ptr %arrayidx7, align 8
  br label %cond.end10

cond.false8:                                      ; preds = %while.body
  %18 = load ptr, ptr %x.addr, align 8
  %19 = load i64, ptr %n, align 8
  %arrayidx9 = getelementptr inbounds double, ptr %18, i64 %19
  %20 = load double, ptr %arrayidx9, align 8
  %fneg = fneg double %20
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false8, %cond.true6
  %cond11 = phi double [ %17, %cond.true6 ], [ %fneg, %cond.false8 ]
  %21 = load ptr, ptr %x.addr, align 8
  %22 = load i64, ptr %n, align 8
  %arrayidx12 = getelementptr inbounds double, ptr %21, i64 %22
  store double %cond11, ptr %arrayidx12, align 8
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %cond.end
  br label %while.cond13

while.cond13:                                     ; preds = %while.end113, %if.end
  %23 = load i64, ptr %nleft, align 8
  %tobool14 = icmp ne i64 %23, 0
  br i1 %tobool14, label %while.body15, label %while.end118

while.body15:                                     ; preds = %while.cond13
  store i32 0, ptr %ierr, align 4
  %24 = load i64, ptr %nleft, align 8
  %25 = load i64, ptr %buflen, align 8
  %cmp16 = icmp sle i64 %24, %25
  br i1 %cmp16, label %cond.true17, label %cond.false18

cond.true17:                                      ; preds = %while.body15
  %26 = load i64, ptr %nleft, align 8
  br label %cond.end19

cond.false18:                                     ; preds = %while.body15
  %27 = load i64, ptr %buflen, align 8
  br label %cond.end19

cond.end19:                                       ; preds = %cond.false18, %cond.true17
  %cond20 = phi i64 [ %26, %cond.true17 ], [ %27, %cond.false18 ]
  %conv = trunc i64 %cond20 to i32
  store i32 %conv, ptr %ndo, align 4
  %28 = load ptr, ptr %op.addr, align 8
  %call21 = call i32 @strncmp(ptr noundef %28, ptr noundef @.str.1, i64 noundef 1) #4
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.then24, label %if.else

if.then24:                                        ; preds = %cond.end19
  store ptr @ompi_mpi_op_sum, ptr %mop, align 8
  br label %if.end96

if.else:                                          ; preds = %cond.end19
  %29 = load ptr, ptr %op.addr, align 8
  %call25 = call i32 @strncmp(ptr noundef %29, ptr noundef @.str.2, i64 noundef 1) #4
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then28, label %if.else29

if.then28:                                        ; preds = %if.else
  store ptr @ompi_mpi_op_prod, ptr %mop, align 8
  br label %if.end95

if.else29:                                        ; preds = %if.else
  %30 = load ptr, ptr %op.addr, align 8
  %call30 = call i32 @strncmp(ptr noundef %30, ptr noundef @.str.3, i64 noundef 3) #4
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %if.then36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else29
  %31 = load ptr, ptr %op.addr, align 8
  %call33 = call i32 @strncmp(ptr noundef %31, ptr noundef @.str.4, i64 noundef 6) #4
  %cmp34 = icmp eq i32 %call33, 0
  br i1 %cmp34, label %if.then36, label %if.else37

if.then36:                                        ; preds = %lor.lhs.false, %if.else29
  store ptr @ompi_mpi_op_max, ptr %mop, align 8
  br label %if.end94

if.else37:                                        ; preds = %lor.lhs.false
  %32 = load ptr, ptr %op.addr, align 8
  %call38 = call i32 @strncmp(ptr noundef %32, ptr noundef @.str.5, i64 noundef 3) #4
  %cmp39 = icmp eq i32 %call38, 0
  br i1 %cmp39, label %if.then45, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %if.else37
  %33 = load ptr, ptr %op.addr, align 8
  %call42 = call i32 @strncmp(ptr noundef %33, ptr noundef @.str.6, i64 noundef 6) #4
  %cmp43 = icmp eq i32 %call42, 0
  br i1 %cmp43, label %if.then45, label %if.else46

if.then45:                                        ; preds = %lor.lhs.false41, %if.else37
  store ptr @ompi_mpi_op_min, ptr %mop, align 8
  br label %if.end93

if.else46:                                        ; preds = %lor.lhs.false41
  %34 = load ptr, ptr %op.addr, align 8
  %call47 = call i32 @strncmp(ptr noundef %34, ptr noundef @.str.7, i64 noundef 2) #4
  %cmp48 = icmp eq i32 %call47, 0
  br i1 %cmp48, label %if.then50, label %if.else51

if.then50:                                        ; preds = %if.else46
  store ptr @ompi_mpi_op_bor, ptr %mop, align 8
  br label %if.end92

if.else51:                                        ; preds = %if.else46
  %35 = load ptr, ptr %op.addr, align 8
  %call52 = call i32 @strncmp(ptr noundef %35, ptr noundef @.str.8, i64 noundef 2) #4
  %cmp53 = icmp eq i32 %call52, 0
  br i1 %cmp53, label %if.then59, label %lor.lhs.false55

lor.lhs.false55:                                  ; preds = %if.else51
  %36 = load ptr, ptr %op.addr, align 8
  %call56 = call i32 @strncmp(ptr noundef %36, ptr noundef @.str.9, i64 noundef 4) #4
  %cmp57 = icmp eq i32 %call56, 0
  br i1 %cmp57, label %if.then59, label %if.else60

if.then59:                                        ; preds = %lor.lhs.false55, %if.else51
  store ptr @ompi_mpi_op_land, ptr %mop, align 8
  br label %if.end91

if.else60:                                        ; preds = %lor.lhs.false55
  %37 = load ptr, ptr %op.addr, align 8
  %call61 = call i32 @strncmp(ptr noundef %37, ptr noundef @.str.10, i64 noundef 2) #4
  %cmp62 = icmp eq i32 %call61, 0
  br i1 %cmp62, label %if.then68, label %lor.lhs.false64

lor.lhs.false64:                                  ; preds = %if.else60
  %38 = load ptr, ptr %op.addr, align 8
  %call65 = call i32 @strncmp(ptr noundef %38, ptr noundef @.str.11, i64 noundef 3) #4
  %cmp66 = icmp eq i32 %call65, 0
  br i1 %cmp66, label %if.then68, label %if.else69

if.then68:                                        ; preds = %lor.lhs.false64, %if.else60
  store ptr @ompi_mpi_op_lor, ptr %mop, align 8
  br label %if.end90

if.else69:                                        ; preds = %lor.lhs.false64
  %39 = load ptr, ptr %op.addr, align 8
  %call70 = call i32 @strncmp(ptr noundef %39, ptr noundef @.str.12, i64 noundef 1) #4
  %cmp71 = icmp eq i32 %call70, 0
  br i1 %cmp71, label %if.then77, label %lor.lhs.false73

lor.lhs.false73:                                  ; preds = %if.else69
  %40 = load ptr, ptr %op.addr, align 8
  %call74 = call i32 @strncmp(ptr noundef %40, ptr noundef @.str.13, i64 noundef 4) #4
  %cmp75 = icmp eq i32 %call74, 0
  br i1 %cmp75, label %if.then77, label %if.else78

if.then77:                                        ; preds = %lor.lhs.false73, %if.else69
  store ptr @ompi_mpi_op_band, ptr %mop, align 8
  br label %if.end89

if.else78:                                        ; preds = %lor.lhs.false73
  %41 = load ptr, ptr %op.addr, align 8
  %call79 = call i32 @strncmp(ptr noundef %41, ptr noundef @.str.14, i64 noundef 1) #4
  %cmp80 = icmp eq i32 %call79, 0
  br i1 %cmp80, label %if.then86, label %lor.lhs.false82

lor.lhs.false82:                                  ; preds = %if.else78
  %42 = load ptr, ptr %op.addr, align 8
  %call83 = call i32 @strncmp(ptr noundef %42, ptr noundef @.str.15, i64 noundef 3) #4
  %cmp84 = icmp eq i32 %call83, 0
  br i1 %cmp84, label %if.then86, label %if.else87

if.then86:                                        ; preds = %lor.lhs.false82, %if.else78
  store ptr @ompi_mpi_op_bor, ptr %mop, align 8
  br label %if.end88

if.else87:                                        ; preds = %lor.lhs.false82
  %43 = load ptr, ptr %pn.addr, align 8
  %44 = load i64, ptr %43, align 8
  call void @Error(ptr noundef @.str.18, i64 noundef %44)
  br label %if.end88

if.end88:                                         ; preds = %if.else87, %if.then86
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %if.then77
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %if.then68
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %if.then59
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %if.then50
  br label %if.end93

if.end93:                                         ; preds = %if.end92, %if.then45
  br label %if.end94

if.end94:                                         ; preds = %if.end93, %if.then36
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %if.then28
  br label %if.end96

if.end96:                                         ; preds = %if.end95, %if.then24
  %45 = load ptr, ptr %x.addr, align 8
  %46 = load ptr, ptr %work, align 8
  %47 = load i32, ptr %ndo, align 4
  %48 = load ptr, ptr %mop, align 8
  %49 = load ptr, ptr @TCGMSG_Comm, align 8
  %call97 = call i32 @MPI_Allreduce(ptr noundef %45, ptr noundef %46, i32 noundef %47, ptr noundef @ompi_mpi_double, ptr noundef %48, ptr noundef %49)
  store i32 %call97, ptr %ierr, align 4
  %50 = load i32, ptr %ierr, align 4
  %cmp98 = icmp ne i32 %50, 0
  br i1 %cmp98, label %if.then100, label %if.end105

if.then100:                                       ; preds = %if.end96
  store i32 20, ptr %_len, align 4
  %51 = load i32, ptr %_len, align 4
  %conv101 = sext i32 %51 to i64
  %call102 = call ptr @strncpy(ptr noundef @tcgmsg_err_string, ptr noundef @.str.19, i64 noundef %conv101) #5
  %52 = load i32, ptr %ierr, align 4
  %53 = load i32, ptr %_len, align 4
  %idx.ext = sext i32 %53 to i64
  %add.ptr = getelementptr inbounds i8, ptr @tcgmsg_err_string, i64 %idx.ext
  %call103 = call i32 @MPI_Error_string(i32 noundef %52, ptr noundef %add.ptr, ptr noundef %_tot_len)
  %54 = load i32, ptr %ierr, align 4
  %conv104 = sext i32 %54 to i64
  call void @Error(ptr noundef @tcgmsg_err_string, i64 noundef %conv104)
  br label %if.end105

if.end105:                                        ; preds = %if.then100, %if.end96
  %55 = load i32, ptr %ndo, align 4
  %conv106 = sext i32 %55 to i64
  store i64 %conv106, ptr %n, align 8
  br label %while.cond107

while.cond107:                                    ; preds = %while.body110, %if.end105
  %56 = load i64, ptr %n, align 8
  %dec108 = add nsw i64 %56, -1
  store i64 %dec108, ptr %n, align 8
  %tobool109 = icmp ne i64 %56, 0
  br i1 %tobool109, label %while.body110, label %while.end113

while.body110:                                    ; preds = %while.cond107
  %57 = load ptr, ptr %work, align 8
  %58 = load i64, ptr %n, align 8
  %arrayidx111 = getelementptr inbounds double, ptr %57, i64 %58
  %59 = load double, ptr %arrayidx111, align 8
  %60 = load ptr, ptr %x.addr, align 8
  %61 = load i64, ptr %n, align 8
  %arrayidx112 = getelementptr inbounds double, ptr %60, i64 %61
  store double %59, ptr %arrayidx112, align 8
  br label %while.cond107, !llvm.loop !10

while.end113:                                     ; preds = %while.cond107
  %62 = load i32, ptr %ndo, align 4
  %conv114 = sext i32 %62 to i64
  %63 = load i64, ptr %nleft, align 8
  %sub115 = sub nsw i64 %63, %conv114
  store i64 %sub115, ptr %nleft, align 8
  %64 = load i32, ptr %ndo, align 4
  %65 = load ptr, ptr %x.addr, align 8
  %idx.ext116 = sext i32 %64 to i64
  %add.ptr117 = getelementptr inbounds double, ptr %65, i64 %idx.ext116
  store ptr %add.ptr117, ptr %x.addr, align 8
  br label %while.cond13, !llvm.loop !11

while.end118:                                     ; preds = %while.cond13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @armci_tcgmsg_synch(ptr noundef %type) #0 {
entry:
  %type.addr = alloca ptr, align 8
  store ptr %type, ptr %type.addr, align 8
  %0 = load i32, ptr @_tcg_initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (...) @armci_tcgmsg_pbeginf()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr @TCGMSG_Comm, align 8
  %call = call i32 @MPI_Barrier(ptr noundef %1)
  ret void
}

declare i32 @MPI_Barrier(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @armci_tcgmsg_brdcst(ptr noundef %type, ptr noundef %buf, ptr noundef %lenbuf, ptr noundef %originator) #0 {
entry:
  %type.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %lenbuf.addr = alloca ptr, align 8
  %originator.addr = alloca ptr, align 8
  %count = alloca i32, align 4
  %root = alloca i32, align 4
  store ptr %type, ptr %type.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store ptr %lenbuf, ptr %lenbuf.addr, align 8
  store ptr %originator, ptr %originator.addr, align 8
  %0 = load ptr, ptr %lenbuf.addr, align 8
  %1 = load i64, ptr %0, align 8
  %conv = trunc i64 %1 to i32
  store i32 %conv, ptr %count, align 4
  %2 = load ptr, ptr %originator.addr, align 8
  %3 = load i64, ptr %2, align 8
  %conv1 = trunc i64 %3 to i32
  store i32 %conv1, ptr %root, align 4
  %4 = load ptr, ptr %buf.addr, align 8
  %5 = load i32, ptr %count, align 4
  %6 = load i32, ptr %root, align 4
  %7 = load ptr, ptr @TCGMSG_Comm, align 8
  %call = call i32 @MPI_Bcast(ptr noundef %4, i32 noundef %5, ptr noundef @ompi_mpi_char, i32 noundef %6, ptr noundef %7)
  ret void
}

declare i32 @MPI_Bcast(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}

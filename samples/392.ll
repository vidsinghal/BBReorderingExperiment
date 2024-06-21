; ModuleID = 'samples/392.bc'
source_filename = "/local-ssd/globalarrays-4b7gqwvfr3rlpyzs4u6z5cjqyfeyij7v-build/aidengro/spack-stage-globalarrays-5.8.2-4b7gqwvfr3rlpyzs4u6z5cjqyfeyij7v/spack-src/tcgmsg/tcgmsg-mpi/evlog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@evlog.logging = internal global i32 0, align 4
@evlog.error = internal global i32 0, align 4
@evlog.ncall = internal global i32 0, align 4
@evlog.buffer = internal global ptr null, align 8
@evlog.bufpt = internal global ptr null, align 8
@evlog.left = internal global i32 0, align 4
@evlog.file = internal global ptr null, align 8
@evlog.filename = internal global ptr @.str, align 8
@.str = private unnamed_addr constant [7 x i8] c"events\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c":BEGIN:%s\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c":TIME:%.2f\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c":END:%s\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c":EVENT:%s\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c":MSG_LEN:%d\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c":MSG_TO:%d\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c":MSG_FROM:%d\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c":MSG_TYPE:%d\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c":MSG_SYNC:%d\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c":STR_INT:%s:%d\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c":STR_DBL:%s:%g\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c":STR:%s\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define void @evlog(i32 noundef %farg_key, ...) #0 {
entry:
  %farg_key.addr = alloca i32, align 4
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %key = alloca i32, align 4
  %nchars = alloca i32, align 4
  %temp = alloca ptr, align 8
  %string = alloca ptr, align 8
  %integer = alloca i32, align 4
  %dbl = alloca double, align 8
  %valid = alloca i32, align 4
  store i32 %farg_key, ptr %farg_key.addr, align 4
  %0 = load i32, ptr @evlog.error, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  store i32 1, ptr @evlog.error, align 4
  br label %if.end428

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %1 = load i32, ptr @evlog.ncall, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then1, label %if.end13

if.then1:                                         ; preds = %if.end
  store i32 1, ptr @evlog.ncall, align 4
  %call = call noalias ptr @malloc(i64 noundef 262144) #6
  store ptr %call, ptr @evlog.buffer, align 8
  store ptr %call, ptr @evlog.bufpt, align 8
  %tobool2 = icmp ne ptr %call, null
  br i1 %tobool2, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.then1
  br label %do.body4

do.body4:                                         ; preds = %if.then3
  store i32 1, ptr @evlog.error, align 4
  br label %if.end428

do.end5:                                          ; No predecessors!
  br label %if.end6

if.end6:                                          ; preds = %do.end5, %if.then1
  store i32 262144, ptr @evlog.left, align 4
  %2 = load ptr, ptr @evlog.filename, align 8
  %call7 = call noalias ptr @fopen(ptr noundef %2, ptr noundef @.str.1)
  store ptr %call7, ptr @evlog.file, align 8
  %tobool8 = icmp ne ptr %call7, null
  br i1 %tobool8, label %if.end12, label %if.then9

if.then9:                                         ; preds = %if.end6
  br label %do.body10

do.body10:                                        ; preds = %if.then9
  store i32 1, ptr @evlog.error, align 4
  br label %if.end428

do.end11:                                         ; No predecessors!
  br label %if.end12

if.end12:                                         ; preds = %do.end11, %if.end6
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end
  %3 = load ptr, ptr @evlog.bufpt, align 8
  store ptr %3, ptr %temp, align 8
  store i32 0, ptr %valid, align 4
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %arraydecay)
  %4 = load i32, ptr %farg_key.addr, align 4
  store i32 %4, ptr %key, align 4
  br label %while.cond

while.cond:                                       ; preds = %vaarg.end394, %if.end13
  %5 = load i32, ptr %key, align 4
  %cmp14 = icmp ne i32 %5, 0
  br i1 %cmp14, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, ptr @evlog.logging, align 4
  %tobool15 = icmp ne i32 %6, 0
  br i1 %tobool15, label %if.end18, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %7 = load i32, ptr %key, align 4
  %cmp16 = icmp ne i32 %7, 12
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %land.lhs.true
  br label %if.end428

if.end18:                                         ; preds = %land.lhs.true, %while.body
  %8 = load i32, ptr %key, align 4
  switch i32 %8, label %sw.default [
    i32 12, label %sw.bb
    i32 13, label %sw.bb19
    i32 15, label %sw.bb20
    i32 1, label %sw.bb34
    i32 2, label %sw.bb60
    i32 3, label %sw.bb90
    i32 4, label %sw.bb120
    i32 5, label %sw.bb146
    i32 6, label %sw.bb172
    i32 7, label %sw.bb198
    i32 8, label %sw.bb224
    i32 9, label %sw.bb250
    i32 10, label %sw.bb288
    i32 11, label %sw.bb323
    i32 14, label %sw.bb349
  ]

sw.bb:                                            ; preds = %if.end18
  store i32 1, ptr @evlog.logging, align 4
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end18
  store i32 0, ptr @evlog.logging, align 4
  br label %done

sw.bb20:                                          ; preds = %if.end18
  %arraydecay21 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay21, i32 0, i32 0
  %gp_offset = load i32, ptr %gp_offset_p, align 16
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %sw.bb20
  %9 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay21, i32 0, i32 3
  %reg_save_area = load ptr, ptr %9, align 16
  %10 = getelementptr i8, ptr %reg_save_area, i32 %gp_offset
  %11 = add i32 %gp_offset, 8
  store i32 %11, ptr %gp_offset_p, align 16
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %sw.bb20
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay21, i32 0, i32 2
  %overflow_arg_area = load ptr, ptr %overflow_arg_area_p, align 8
  %overflow_arg_area.next = getelementptr i8, ptr %overflow_arg_area, i32 8
  store ptr %overflow_arg_area.next, ptr %overflow_arg_area_p, align 8
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi ptr [ %10, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %12 = load ptr, ptr %vaarg.addr, align 8
  %call22 = call noalias ptr @strdup(ptr noundef %12) #7
  store ptr %call22, ptr @evlog.filename, align 8
  %tobool23 = icmp ne ptr %call22, null
  br i1 %tobool23, label %if.end27, label %if.then24

if.then24:                                        ; preds = %vaarg.end
  br label %do.body25

do.body25:                                        ; preds = %if.then24
  store i32 1, ptr @evlog.error, align 4
  br label %if.end428

do.end26:                                         ; No predecessors!
  br label %if.end27

if.end27:                                         ; preds = %do.end26, %vaarg.end
  %13 = load ptr, ptr @evlog.filename, align 8
  %14 = load ptr, ptr @evlog.file, align 8
  %call28 = call ptr @freopen(ptr noundef %13, ptr noundef @.str.1, ptr noundef %14)
  store ptr %call28, ptr @evlog.file, align 8
  %tobool29 = icmp ne ptr %call28, null
  br i1 %tobool29, label %if.end33, label %if.then30

if.then30:                                        ; preds = %if.end27
  br label %do.body31

do.body31:                                        ; preds = %if.then30
  store i32 1, ptr @evlog.error, align 4
  br label %if.end428

do.end32:                                         ; No predecessors!
  br label %if.end33

if.end33:                                         ; preds = %do.end32, %if.end27
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end18
  store i32 1, ptr %valid, align 4
  br label %do.body35

do.body35:                                        ; preds = %sw.bb34
  %15 = load ptr, ptr @evlog.bufpt, align 8
  %arraydecay36 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p37 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay36, i32 0, i32 0
  %gp_offset38 = load i32, ptr %gp_offset_p37, align 16
  %fits_in_gp39 = icmp ule i32 %gp_offset38, 40
  br i1 %fits_in_gp39, label %vaarg.in_reg40, label %vaarg.in_mem42

vaarg.in_reg40:                                   ; preds = %do.body35
  %16 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay36, i32 0, i32 3
  %reg_save_area41 = load ptr, ptr %16, align 16
  %17 = getelementptr i8, ptr %reg_save_area41, i32 %gp_offset38
  %18 = add i32 %gp_offset38, 8
  store i32 %18, ptr %gp_offset_p37, align 16
  br label %vaarg.end46

vaarg.in_mem42:                                   ; preds = %do.body35
  %overflow_arg_area_p43 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay36, i32 0, i32 2
  %overflow_arg_area44 = load ptr, ptr %overflow_arg_area_p43, align 8
  %overflow_arg_area.next45 = getelementptr i8, ptr %overflow_arg_area44, i32 8
  store ptr %overflow_arg_area.next45, ptr %overflow_arg_area_p43, align 8
  br label %vaarg.end46

vaarg.end46:                                      ; preds = %vaarg.in_mem42, %vaarg.in_reg40
  %vaarg.addr47 = phi ptr [ %17, %vaarg.in_reg40 ], [ %overflow_arg_area44, %vaarg.in_mem42 ]
  %19 = load ptr, ptr %vaarg.addr47, align 8
  %call48 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %15, ptr noundef @.str.2, ptr noundef %19) #7
  %20 = load ptr, ptr @evlog.bufpt, align 8
  %call49 = call i64 @strlen(ptr noundef %20) #8
  %conv = trunc i64 %call49 to i32
  store i32 %conv, ptr %nchars, align 4
  %21 = load i32, ptr %nchars, align 4
  %22 = load ptr, ptr @evlog.bufpt, align 8
  %idx.ext = sext i32 %21 to i64
  %add.ptr = getelementptr inbounds i8, ptr %22, i64 %idx.ext
  store ptr %add.ptr, ptr @evlog.bufpt, align 8
  %23 = load i32, ptr %nchars, align 4
  %24 = load i32, ptr @evlog.left, align 4
  %sub = sub nsw i32 %24, %23
  store i32 %sub, ptr @evlog.left, align 4
  br label %do.end50

do.end50:                                         ; preds = %vaarg.end46
  br label %do.body51

do.body51:                                        ; preds = %do.end50
  %25 = load ptr, ptr @evlog.bufpt, align 8
  %call52 = call double @walltime()
  %call53 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %25, ptr noundef @.str.3, double noundef %call52) #7
  %26 = load ptr, ptr @evlog.bufpt, align 8
  %call54 = call i64 @strlen(ptr noundef %26) #8
  %conv55 = trunc i64 %call54 to i32
  store i32 %conv55, ptr %nchars, align 4
  %27 = load i32, ptr %nchars, align 4
  %28 = load ptr, ptr @evlog.bufpt, align 8
  %idx.ext56 = sext i32 %27 to i64
  %add.ptr57 = getelementptr inbounds i8, ptr %28, i64 %idx.ext56
  store ptr %add.ptr57, ptr @evlog.bufpt, align 8
  %29 = load i32, ptr %nchars, align 4
  %30 = load i32, ptr @evlog.left, align 4
  %sub58 = sub nsw i32 %30, %29
  store i32 %sub58, ptr @evlog.left, align 4
  br label %do.end59

do.end59:                                         ; preds = %do.body51
  br label %sw.epilog

sw.bb60:                                          ; preds = %if.end18
  store i32 1, ptr %valid, align 4
  br label %do.body61

do.body61:                                        ; preds = %sw.bb60
  %31 = load ptr, ptr @evlog.bufpt, align 8
  %arraydecay62 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p63 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay62, i32 0, i32 0
  %gp_offset64 = load i32, ptr %gp_offset_p63, align 16
  %fits_in_gp65 = icmp ule i32 %gp_offset64, 40
  br i1 %fits_in_gp65, label %vaarg.in_reg66, label %vaarg.in_mem68

vaarg.in_reg66:                                   ; preds = %do.body61
  %32 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay62, i32 0, i32 3
  %reg_save_area67 = load ptr, ptr %32, align 16
  %33 = getelementptr i8, ptr %reg_save_area67, i32 %gp_offset64
  %34 = add i32 %gp_offset64, 8
  store i32 %34, ptr %gp_offset_p63, align 16
  br label %vaarg.end72

vaarg.in_mem68:                                   ; preds = %do.body61
  %overflow_arg_area_p69 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay62, i32 0, i32 2
  %overflow_arg_area70 = load ptr, ptr %overflow_arg_area_p69, align 8
  %overflow_arg_area.next71 = getelementptr i8, ptr %overflow_arg_area70, i32 8
  store ptr %overflow_arg_area.next71, ptr %overflow_arg_area_p69, align 8
  br label %vaarg.end72

vaarg.end72:                                      ; preds = %vaarg.in_mem68, %vaarg.in_reg66
  %vaarg.addr73 = phi ptr [ %33, %vaarg.in_reg66 ], [ %overflow_arg_area70, %vaarg.in_mem68 ]
  %35 = load ptr, ptr %vaarg.addr73, align 8
  %call74 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %31, ptr noundef @.str.4, ptr noundef %35) #7
  %36 = load ptr, ptr @evlog.bufpt, align 8
  %call75 = call i64 @strlen(ptr noundef %36) #8
  %conv76 = trunc i64 %call75 to i32
  store i32 %conv76, ptr %nchars, align 4
  %37 = load i32, ptr %nchars, align 4
  %38 = load ptr, ptr @evlog.bufpt, align 8
  %idx.ext77 = sext i32 %37 to i64
  %add.ptr78 = getelementptr inbounds i8, ptr %38, i64 %idx.ext77
  store ptr %add.ptr78, ptr @evlog.bufpt, align 8
  %39 = load i32, ptr %nchars, align 4
  %40 = load i32, ptr @evlog.left, align 4
  %sub79 = sub nsw i32 %40, %39
  store i32 %sub79, ptr @evlog.left, align 4
  br label %do.end80

do.end80:                                         ; preds = %vaarg.end72
  br label %do.body81

do.body81:                                        ; preds = %do.end80
  %41 = load ptr, ptr @evlog.bufpt, align 8
  %call82 = call double @walltime()
  %call83 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %41, ptr noundef @.str.3, double noundef %call82) #7
  %42 = load ptr, ptr @evlog.bufpt, align 8
  %call84 = call i64 @strlen(ptr noundef %42) #8
  %conv85 = trunc i64 %call84 to i32
  store i32 %conv85, ptr %nchars, align 4
  %43 = load i32, ptr %nchars, align 4
  %44 = load ptr, ptr @evlog.bufpt, align 8
  %idx.ext86 = sext i32 %43 to i64
  %add.ptr87 = getelementptr inbounds i8, ptr %44, i64 %idx.ext86
  store ptr %add.ptr87, ptr @evlog.bufpt, align 8
  %45 = load i32, ptr %nchars, align 4
  %46 = load i32, ptr @evlog.left, align 4
  %sub88 = sub nsw i32 %46, %45
  store i32 %sub88, ptr @evlog.left, align 4
  br label %do.end89

do.end89:                                         ; preds = %do.body81
  br label %sw.epilog

sw.bb90:                                          ; preds = %if.end18
  store i32 1, ptr %valid, align 4
  br label %do.body91

do.body91:                                        ; preds = %sw.bb90
  %47 = load ptr, ptr @evlog.bufpt, align 8
  %arraydecay92 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p93 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay92, i32 0, i32 0
  %gp_offset94 = load i32, ptr %gp_offset_p93, align 16
  %fits_in_gp95 = icmp ule i32 %gp_offset94, 40
  br i1 %fits_in_gp95, label %vaarg.in_reg96, label %vaarg.in_mem98

vaarg.in_reg96:                                   ; preds = %do.body91
  %48 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay92, i32 0, i32 3
  %reg_save_area97 = load ptr, ptr %48, align 16
  %49 = getelementptr i8, ptr %reg_save_area97, i32 %gp_offset94
  %50 = add i32 %gp_offset94, 8
  store i32 %50, ptr %gp_offset_p93, align 16
  br label %vaarg.end102

vaarg.in_mem98:                                   ; preds = %do.body91
  %overflow_arg_area_p99 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay92, i32 0, i32 2
  %overflow_arg_area100 = load ptr, ptr %overflow_arg_area_p99, align 8
  %overflow_arg_area.next101 = getelementptr i8, ptr %overflow_arg_area100, i32 8
  store ptr %overflow_arg_area.next101, ptr %overflow_arg_area_p99, align 8
  br label %vaarg.end102

vaarg.end102:                                     ; preds = %vaarg.in_mem98, %vaarg.in_reg96
  %vaarg.addr103 = phi ptr [ %49, %vaarg.in_reg96 ], [ %overflow_arg_area100, %vaarg.in_mem98 ]
  %51 = load ptr, ptr %vaarg.addr103, align 8
  %call104 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %47, ptr noundef @.str.5, ptr noundef %51) #7
  %52 = load ptr, ptr @evlog.bufpt, align 8
  %call105 = call i64 @strlen(ptr noundef %52) #8
  %conv106 = trunc i64 %call105 to i32
  store i32 %conv106, ptr %nchars, align 4
  %53 = load i32, ptr %nchars, align 4
  %54 = load ptr, ptr @evlog.bufpt, align 8
  %idx.ext107 = sext i32 %53 to i64
  %add.ptr108 = getelementptr inbounds i8, ptr %54, i64 %idx.ext107
  store ptr %add.ptr108, ptr @evlog.bufpt, align 8
  %55 = load i32, ptr %nchars, align 4
  %56 = load i32, ptr @evlog.left, align 4
  %sub109 = sub nsw i32 %56, %55
  store i32 %sub109, ptr @evlog.left, align 4
  br label %do.end110

do.end110:                                        ; preds = %vaarg.end102
  br label %do.body111

do.body111:                                       ; preds = %do.end110
  %57 = load ptr, ptr @evlog.bufpt, align 8
  %call112 = call double @walltime()
  %call113 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %57, ptr noundef @.str.3, double noundef %call112) #7
  %58 = load ptr, ptr @evlog.bufpt, align 8
  %call114 = call i64 @strlen(ptr noundef %58) #8
  %conv115 = trunc i64 %call114 to i32
  store i32 %conv115, ptr %nchars, align 4
  %59 = load i32, ptr %nchars, align 4
  %60 = load ptr, ptr @evlog.bufpt, align 8
  %idx.ext116 = sext i32 %59 to i64
  %add.ptr117 = getelementptr inbounds i8, ptr %60, i64 %idx.ext116
  store ptr %add.ptr117, ptr @evlog.bufpt, align 8
  %61 = load i32, ptr %nchars, align 4
  %62 = load i32, ptr @evlog.left, align 4
  %sub118 = sub nsw i32 %62, %61
  store i32 %sub118, ptr @evlog.left, align 4
  br label %do.end119

do.end119:                                        ; preds = %do.body111
  br label %sw.epilog

sw.bb120:                                         ; preds = %if.end18
  %63 = load i32, ptr %valid, align 4
  %tobool121 = icmp ne i32 %63, 0
  br i1 %tobool121, label %if.end125, label %if.then122

if.then122:                                       ; preds = %sw.bb120
  br label %do.body123

do.body123:                                       ; preds = %if.then122
  store i32 1, ptr @evlog.error, align 4
  br label %if.end428

do.end124:                                        ; No predecessors!
  br label %if.end125

if.end125:                                        ; preds = %do.end124, %sw.bb120
  br label %do.body126

do.body126:                                       ; preds = %if.end125
  %64 = load ptr, ptr @evlog.bufpt, align 8
  %arraydecay127 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p128 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay127, i32 0, i32 0
  %gp_offset129 = load i32, ptr %gp_offset_p128, align 16
  %fits_in_gp130 = icmp ule i32 %gp_offset129, 40
  br i1 %fits_in_gp130, label %vaarg.in_reg131, label %vaarg.in_mem133

vaarg.in_reg131:                                  ; preds = %do.body126
  %65 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay127, i32 0, i32 3
  %reg_save_area132 = load ptr, ptr %65, align 16
  %66 = getelementptr i8, ptr %reg_save_area132, i32 %gp_offset129
  %67 = add i32 %gp_offset129, 8
  store i32 %67, ptr %gp_offset_p128, align 16
  br label %vaarg.end137

vaarg.in_mem133:                                  ; preds = %do.body126
  %overflow_arg_area_p134 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay127, i32 0, i32 2
  %overflow_arg_area135 = load ptr, ptr %overflow_arg_area_p134, align 8
  %overflow_arg_area.next136 = getelementptr i8, ptr %overflow_arg_area135, i32 8
  store ptr %overflow_arg_area.next136, ptr %overflow_arg_area_p134, align 8
  br label %vaarg.end137

vaarg.end137:                                     ; preds = %vaarg.in_mem133, %vaarg.in_reg131
  %vaarg.addr138 = phi ptr [ %66, %vaarg.in_reg131 ], [ %overflow_arg_area135, %vaarg.in_mem133 ]
  %68 = load i32, ptr %vaarg.addr138, align 4
  %call139 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %64, ptr noundef @.str.6, i32 noundef %68) #7
  %69 = load ptr, ptr @evlog.bufpt, align 8
  %call140 = call i64 @strlen(ptr noundef %69) #8
  %conv141 = trunc i64 %call140 to i32
  store i32 %conv141, ptr %nchars, align 4
  %70 = load i32, ptr %nchars, align 4
  %71 = load ptr, ptr @evlog.bufpt, align 8
  %idx.ext142 = sext i32 %70 to i64
  %add.ptr143 = getelementptr inbounds i8, ptr %71, i64 %idx.ext142
  store ptr %add.ptr143, ptr @evlog.bufpt, align 8
  %72 = load i32, ptr %nchars, align 4
  %73 = load i32, ptr @evlog.left, align 4
  %sub144 = sub nsw i32 %73, %72
  store i32 %sub144, ptr @evlog.left, align 4
  br label %do.end145

do.end145:                                        ; preds = %vaarg.end137
  br label %sw.epilog

sw.bb146:                                         ; preds = %if.end18
  %74 = load i32, ptr %valid, align 4
  %tobool147 = icmp ne i32 %74, 0
  br i1 %tobool147, label %if.end151, label %if.then148

if.then148:                                       ; preds = %sw.bb146
  br label %do.body149

do.body149:                                       ; preds = %if.then148
  store i32 1, ptr @evlog.error, align 4
  br label %if.end428

do.end150:                                        ; No predecessors!
  br label %if.end151

if.end151:                                        ; preds = %do.end150, %sw.bb146
  br label %do.body152

do.body152:                                       ; preds = %if.end151
  %75 = load ptr, ptr @evlog.bufpt, align 8
  %arraydecay153 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p154 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay153, i32 0, i32 0
  %gp_offset155 = load i32, ptr %gp_offset_p154, align 16
  %fits_in_gp156 = icmp ule i32 %gp_offset155, 40
  br i1 %fits_in_gp156, label %vaarg.in_reg157, label %vaarg.in_mem159

vaarg.in_reg157:                                  ; preds = %do.body152
  %76 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay153, i32 0, i32 3
  %reg_save_area158 = load ptr, ptr %76, align 16
  %77 = getelementptr i8, ptr %reg_save_area158, i32 %gp_offset155
  %78 = add i32 %gp_offset155, 8
  store i32 %78, ptr %gp_offset_p154, align 16
  br label %vaarg.end163

vaarg.in_mem159:                                  ; preds = %do.body152
  %overflow_arg_area_p160 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay153, i32 0, i32 2
  %overflow_arg_area161 = load ptr, ptr %overflow_arg_area_p160, align 8
  %overflow_arg_area.next162 = getelementptr i8, ptr %overflow_arg_area161, i32 8
  store ptr %overflow_arg_area.next162, ptr %overflow_arg_area_p160, align 8
  br label %vaarg.end163

vaarg.end163:                                     ; preds = %vaarg.in_mem159, %vaarg.in_reg157
  %vaarg.addr164 = phi ptr [ %77, %vaarg.in_reg157 ], [ %overflow_arg_area161, %vaarg.in_mem159 ]
  %79 = load i32, ptr %vaarg.addr164, align 4
  %call165 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %75, ptr noundef @.str.7, i32 noundef %79) #7
  %80 = load ptr, ptr @evlog.bufpt, align 8
  %call166 = call i64 @strlen(ptr noundef %80) #8
  %conv167 = trunc i64 %call166 to i32
  store i32 %conv167, ptr %nchars, align 4
  %81 = load i32, ptr %nchars, align 4
  %82 = load ptr, ptr @evlog.bufpt, align 8
  %idx.ext168 = sext i32 %81 to i64
  %add.ptr169 = getelementptr inbounds i8, ptr %82, i64 %idx.ext168
  store ptr %add.ptr169, ptr @evlog.bufpt, align 8
  %83 = load i32, ptr %nchars, align 4
  %84 = load i32, ptr @evlog.left, align 4
  %sub170 = sub nsw i32 %84, %83
  store i32 %sub170, ptr @evlog.left, align 4
  br label %do.end171

do.end171:                                        ; preds = %vaarg.end163
  br label %sw.epilog

sw.bb172:                                         ; preds = %if.end18
  %85 = load i32, ptr %valid, align 4
  %tobool173 = icmp ne i32 %85, 0
  br i1 %tobool173, label %if.end177, label %if.then174

if.then174:                                       ; preds = %sw.bb172
  br label %do.body175

do.body175:                                       ; preds = %if.then174
  store i32 1, ptr @evlog.error, align 4
  br label %if.end428

do.end176:                                        ; No predecessors!
  br label %if.end177

if.end177:                                        ; preds = %do.end176, %sw.bb172
  br label %do.body178

do.body178:                                       ; preds = %if.end177
  %86 = load ptr, ptr @evlog.bufpt, align 8
  %arraydecay179 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p180 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay179, i32 0, i32 0
  %gp_offset181 = load i32, ptr %gp_offset_p180, align 16
  %fits_in_gp182 = icmp ule i32 %gp_offset181, 40
  br i1 %fits_in_gp182, label %vaarg.in_reg183, label %vaarg.in_mem185

vaarg.in_reg183:                                  ; preds = %do.body178
  %87 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay179, i32 0, i32 3
  %reg_save_area184 = load ptr, ptr %87, align 16
  %88 = getelementptr i8, ptr %reg_save_area184, i32 %gp_offset181
  %89 = add i32 %gp_offset181, 8
  store i32 %89, ptr %gp_offset_p180, align 16
  br label %vaarg.end189

vaarg.in_mem185:                                  ; preds = %do.body178
  %overflow_arg_area_p186 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay179, i32 0, i32 2
  %overflow_arg_area187 = load ptr, ptr %overflow_arg_area_p186, align 8
  %overflow_arg_area.next188 = getelementptr i8, ptr %overflow_arg_area187, i32 8
  store ptr %overflow_arg_area.next188, ptr %overflow_arg_area_p186, align 8
  br label %vaarg.end189

vaarg.end189:                                     ; preds = %vaarg.in_mem185, %vaarg.in_reg183
  %vaarg.addr190 = phi ptr [ %88, %vaarg.in_reg183 ], [ %overflow_arg_area187, %vaarg.in_mem185 ]
  %90 = load i32, ptr %vaarg.addr190, align 4
  %call191 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %86, ptr noundef @.str.8, i32 noundef %90) #7
  %91 = load ptr, ptr @evlog.bufpt, align 8
  %call192 = call i64 @strlen(ptr noundef %91) #8
  %conv193 = trunc i64 %call192 to i32
  store i32 %conv193, ptr %nchars, align 4
  %92 = load i32, ptr %nchars, align 4
  %93 = load ptr, ptr @evlog.bufpt, align 8
  %idx.ext194 = sext i32 %92 to i64
  %add.ptr195 = getelementptr inbounds i8, ptr %93, i64 %idx.ext194
  store ptr %add.ptr195, ptr @evlog.bufpt, align 8
  %94 = load i32, ptr %nchars, align 4
  %95 = load i32, ptr @evlog.left, align 4
  %sub196 = sub nsw i32 %95, %94
  store i32 %sub196, ptr @evlog.left, align 4
  br label %do.end197

do.end197:                                        ; preds = %vaarg.end189
  br label %sw.epilog

sw.bb198:                                         ; preds = %if.end18
  %96 = load i32, ptr %valid, align 4
  %tobool199 = icmp ne i32 %96, 0
  br i1 %tobool199, label %if.end203, label %if.then200

if.then200:                                       ; preds = %sw.bb198
  br label %do.body201

do.body201:                                       ; preds = %if.then200
  store i32 1, ptr @evlog.error, align 4
  br label %if.end428

do.end202:                                        ; No predecessors!
  br label %if.end203

if.end203:                                        ; preds = %do.end202, %sw.bb198
  br label %do.body204

do.body204:                                       ; preds = %if.end203
  %97 = load ptr, ptr @evlog.bufpt, align 8
  %arraydecay205 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p206 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay205, i32 0, i32 0
  %gp_offset207 = load i32, ptr %gp_offset_p206, align 16
  %fits_in_gp208 = icmp ule i32 %gp_offset207, 40
  br i1 %fits_in_gp208, label %vaarg.in_reg209, label %vaarg.in_mem211

vaarg.in_reg209:                                  ; preds = %do.body204
  %98 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay205, i32 0, i32 3
  %reg_save_area210 = load ptr, ptr %98, align 16
  %99 = getelementptr i8, ptr %reg_save_area210, i32 %gp_offset207
  %100 = add i32 %gp_offset207, 8
  store i32 %100, ptr %gp_offset_p206, align 16
  br label %vaarg.end215

vaarg.in_mem211:                                  ; preds = %do.body204
  %overflow_arg_area_p212 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay205, i32 0, i32 2
  %overflow_arg_area213 = load ptr, ptr %overflow_arg_area_p212, align 8
  %overflow_arg_area.next214 = getelementptr i8, ptr %overflow_arg_area213, i32 8
  store ptr %overflow_arg_area.next214, ptr %overflow_arg_area_p212, align 8
  br label %vaarg.end215

vaarg.end215:                                     ; preds = %vaarg.in_mem211, %vaarg.in_reg209
  %vaarg.addr216 = phi ptr [ %99, %vaarg.in_reg209 ], [ %overflow_arg_area213, %vaarg.in_mem211 ]
  %101 = load i32, ptr %vaarg.addr216, align 4
  %call217 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %97, ptr noundef @.str.9, i32 noundef %101) #7
  %102 = load ptr, ptr @evlog.bufpt, align 8
  %call218 = call i64 @strlen(ptr noundef %102) #8
  %conv219 = trunc i64 %call218 to i32
  store i32 %conv219, ptr %nchars, align 4
  %103 = load i32, ptr %nchars, align 4
  %104 = load ptr, ptr @evlog.bufpt, align 8
  %idx.ext220 = sext i32 %103 to i64
  %add.ptr221 = getelementptr inbounds i8, ptr %104, i64 %idx.ext220
  store ptr %add.ptr221, ptr @evlog.bufpt, align 8
  %105 = load i32, ptr %nchars, align 4
  %106 = load i32, ptr @evlog.left, align 4
  %sub222 = sub nsw i32 %106, %105
  store i32 %sub222, ptr @evlog.left, align 4
  br label %do.end223

do.end223:                                        ; preds = %vaarg.end215
  br label %sw.epilog

sw.bb224:                                         ; preds = %if.end18
  %107 = load i32, ptr %valid, align 4
  %tobool225 = icmp ne i32 %107, 0
  br i1 %tobool225, label %if.end229, label %if.then226

if.then226:                                       ; preds = %sw.bb224
  br label %do.body227

do.body227:                                       ; preds = %if.then226
  store i32 1, ptr @evlog.error, align 4
  br label %if.end428

do.end228:                                        ; No predecessors!
  br label %if.end229

if.end229:                                        ; preds = %do.end228, %sw.bb224
  br label %do.body230

do.body230:                                       ; preds = %if.end229
  %108 = load ptr, ptr @evlog.bufpt, align 8
  %arraydecay231 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p232 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay231, i32 0, i32 0
  %gp_offset233 = load i32, ptr %gp_offset_p232, align 16
  %fits_in_gp234 = icmp ule i32 %gp_offset233, 40
  br i1 %fits_in_gp234, label %vaarg.in_reg235, label %vaarg.in_mem237

vaarg.in_reg235:                                  ; preds = %do.body230
  %109 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay231, i32 0, i32 3
  %reg_save_area236 = load ptr, ptr %109, align 16
  %110 = getelementptr i8, ptr %reg_save_area236, i32 %gp_offset233
  %111 = add i32 %gp_offset233, 8
  store i32 %111, ptr %gp_offset_p232, align 16
  br label %vaarg.end241

vaarg.in_mem237:                                  ; preds = %do.body230
  %overflow_arg_area_p238 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay231, i32 0, i32 2
  %overflow_arg_area239 = load ptr, ptr %overflow_arg_area_p238, align 8
  %overflow_arg_area.next240 = getelementptr i8, ptr %overflow_arg_area239, i32 8
  store ptr %overflow_arg_area.next240, ptr %overflow_arg_area_p238, align 8
  br label %vaarg.end241

vaarg.end241:                                     ; preds = %vaarg.in_mem237, %vaarg.in_reg235
  %vaarg.addr242 = phi ptr [ %110, %vaarg.in_reg235 ], [ %overflow_arg_area239, %vaarg.in_mem237 ]
  %112 = load i32, ptr %vaarg.addr242, align 4
  %call243 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %108, ptr noundef @.str.10, i32 noundef %112) #7
  %113 = load ptr, ptr @evlog.bufpt, align 8
  %call244 = call i64 @strlen(ptr noundef %113) #8
  %conv245 = trunc i64 %call244 to i32
  store i32 %conv245, ptr %nchars, align 4
  %114 = load i32, ptr %nchars, align 4
  %115 = load ptr, ptr @evlog.bufpt, align 8
  %idx.ext246 = sext i32 %114 to i64
  %add.ptr247 = getelementptr inbounds i8, ptr %115, i64 %idx.ext246
  store ptr %add.ptr247, ptr @evlog.bufpt, align 8
  %116 = load i32, ptr %nchars, align 4
  %117 = load i32, ptr @evlog.left, align 4
  %sub248 = sub nsw i32 %117, %116
  store i32 %sub248, ptr @evlog.left, align 4
  br label %do.end249

do.end249:                                        ; preds = %vaarg.end241
  br label %sw.epilog

sw.bb250:                                         ; preds = %if.end18
  %118 = load i32, ptr %valid, align 4
  %tobool251 = icmp ne i32 %118, 0
  br i1 %tobool251, label %if.end255, label %if.then252

if.then252:                                       ; preds = %sw.bb250
  br label %do.body253

do.body253:                                       ; preds = %if.then252
  store i32 1, ptr @evlog.error, align 4
  br label %if.end428

do.end254:                                        ; No predecessors!
  br label %if.end255

if.end255:                                        ; preds = %do.end254, %sw.bb250
  %arraydecay256 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p257 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay256, i32 0, i32 0
  %gp_offset258 = load i32, ptr %gp_offset_p257, align 16
  %fits_in_gp259 = icmp ule i32 %gp_offset258, 40
  br i1 %fits_in_gp259, label %vaarg.in_reg260, label %vaarg.in_mem262

vaarg.in_reg260:                                  ; preds = %if.end255
  %119 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay256, i32 0, i32 3
  %reg_save_area261 = load ptr, ptr %119, align 16
  %120 = getelementptr i8, ptr %reg_save_area261, i32 %gp_offset258
  %121 = add i32 %gp_offset258, 8
  store i32 %121, ptr %gp_offset_p257, align 16
  br label %vaarg.end266

vaarg.in_mem262:                                  ; preds = %if.end255
  %overflow_arg_area_p263 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay256, i32 0, i32 2
  %overflow_arg_area264 = load ptr, ptr %overflow_arg_area_p263, align 8
  %overflow_arg_area.next265 = getelementptr i8, ptr %overflow_arg_area264, i32 8
  store ptr %overflow_arg_area.next265, ptr %overflow_arg_area_p263, align 8
  br label %vaarg.end266

vaarg.end266:                                     ; preds = %vaarg.in_mem262, %vaarg.in_reg260
  %vaarg.addr267 = phi ptr [ %120, %vaarg.in_reg260 ], [ %overflow_arg_area264, %vaarg.in_mem262 ]
  %122 = load ptr, ptr %vaarg.addr267, align 8
  store ptr %122, ptr %string, align 8
  %arraydecay268 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p269 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay268, i32 0, i32 0
  %gp_offset270 = load i32, ptr %gp_offset_p269, align 16
  %fits_in_gp271 = icmp ule i32 %gp_offset270, 40
  br i1 %fits_in_gp271, label %vaarg.in_reg272, label %vaarg.in_mem274

vaarg.in_reg272:                                  ; preds = %vaarg.end266
  %123 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay268, i32 0, i32 3
  %reg_save_area273 = load ptr, ptr %123, align 16
  %124 = getelementptr i8, ptr %reg_save_area273, i32 %gp_offset270
  %125 = add i32 %gp_offset270, 8
  store i32 %125, ptr %gp_offset_p269, align 16
  br label %vaarg.end278

vaarg.in_mem274:                                  ; preds = %vaarg.end266
  %overflow_arg_area_p275 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay268, i32 0, i32 2
  %overflow_arg_area276 = load ptr, ptr %overflow_arg_area_p275, align 8
  %overflow_arg_area.next277 = getelementptr i8, ptr %overflow_arg_area276, i32 8
  store ptr %overflow_arg_area.next277, ptr %overflow_arg_area_p275, align 8
  br label %vaarg.end278

vaarg.end278:                                     ; preds = %vaarg.in_mem274, %vaarg.in_reg272
  %vaarg.addr279 = phi ptr [ %124, %vaarg.in_reg272 ], [ %overflow_arg_area276, %vaarg.in_mem274 ]
  %126 = load i32, ptr %vaarg.addr279, align 4
  store i32 %126, ptr %integer, align 4
  br label %do.body280

do.body280:                                       ; preds = %vaarg.end278
  %127 = load ptr, ptr @evlog.bufpt, align 8
  %128 = load ptr, ptr %string, align 8
  %129 = load i32, ptr %integer, align 4
  %call281 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %127, ptr noundef @.str.11, ptr noundef %128, i32 noundef %129) #7
  %130 = load ptr, ptr @evlog.bufpt, align 8
  %call282 = call i64 @strlen(ptr noundef %130) #8
  %conv283 = trunc i64 %call282 to i32
  store i32 %conv283, ptr %nchars, align 4
  %131 = load i32, ptr %nchars, align 4
  %132 = load ptr, ptr @evlog.bufpt, align 8
  %idx.ext284 = sext i32 %131 to i64
  %add.ptr285 = getelementptr inbounds i8, ptr %132, i64 %idx.ext284
  store ptr %add.ptr285, ptr @evlog.bufpt, align 8
  %133 = load i32, ptr %nchars, align 4
  %134 = load i32, ptr @evlog.left, align 4
  %sub286 = sub nsw i32 %134, %133
  store i32 %sub286, ptr @evlog.left, align 4
  br label %do.end287

do.end287:                                        ; preds = %do.body280
  br label %sw.epilog

sw.bb288:                                         ; preds = %if.end18
  %135 = load i32, ptr %valid, align 4
  %tobool289 = icmp ne i32 %135, 0
  br i1 %tobool289, label %if.end293, label %if.then290

if.then290:                                       ; preds = %sw.bb288
  br label %do.body291

do.body291:                                       ; preds = %if.then290
  store i32 1, ptr @evlog.error, align 4
  br label %if.end428

do.end292:                                        ; No predecessors!
  br label %if.end293

if.end293:                                        ; preds = %do.end292, %sw.bb288
  %arraydecay294 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p295 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay294, i32 0, i32 0
  %gp_offset296 = load i32, ptr %gp_offset_p295, align 16
  %fits_in_gp297 = icmp ule i32 %gp_offset296, 40
  br i1 %fits_in_gp297, label %vaarg.in_reg298, label %vaarg.in_mem300

vaarg.in_reg298:                                  ; preds = %if.end293
  %136 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay294, i32 0, i32 3
  %reg_save_area299 = load ptr, ptr %136, align 16
  %137 = getelementptr i8, ptr %reg_save_area299, i32 %gp_offset296
  %138 = add i32 %gp_offset296, 8
  store i32 %138, ptr %gp_offset_p295, align 16
  br label %vaarg.end304

vaarg.in_mem300:                                  ; preds = %if.end293
  %overflow_arg_area_p301 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay294, i32 0, i32 2
  %overflow_arg_area302 = load ptr, ptr %overflow_arg_area_p301, align 8
  %overflow_arg_area.next303 = getelementptr i8, ptr %overflow_arg_area302, i32 8
  store ptr %overflow_arg_area.next303, ptr %overflow_arg_area_p301, align 8
  br label %vaarg.end304

vaarg.end304:                                     ; preds = %vaarg.in_mem300, %vaarg.in_reg298
  %vaarg.addr305 = phi ptr [ %137, %vaarg.in_reg298 ], [ %overflow_arg_area302, %vaarg.in_mem300 ]
  %139 = load ptr, ptr %vaarg.addr305, align 8
  store ptr %139, ptr %string, align 8
  %arraydecay306 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %fp_offset_p = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay306, i32 0, i32 1
  %fp_offset = load i32, ptr %fp_offset_p, align 4
  %fits_in_fp = icmp ule i32 %fp_offset, 160
  br i1 %fits_in_fp, label %vaarg.in_reg307, label %vaarg.in_mem309

vaarg.in_reg307:                                  ; preds = %vaarg.end304
  %140 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay306, i32 0, i32 3
  %reg_save_area308 = load ptr, ptr %140, align 16
  %141 = getelementptr i8, ptr %reg_save_area308, i32 %fp_offset
  %142 = add i32 %fp_offset, 16
  store i32 %142, ptr %fp_offset_p, align 4
  br label %vaarg.end313

vaarg.in_mem309:                                  ; preds = %vaarg.end304
  %overflow_arg_area_p310 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay306, i32 0, i32 2
  %overflow_arg_area311 = load ptr, ptr %overflow_arg_area_p310, align 8
  %overflow_arg_area.next312 = getelementptr i8, ptr %overflow_arg_area311, i32 8
  store ptr %overflow_arg_area.next312, ptr %overflow_arg_area_p310, align 8
  br label %vaarg.end313

vaarg.end313:                                     ; preds = %vaarg.in_mem309, %vaarg.in_reg307
  %vaarg.addr314 = phi ptr [ %141, %vaarg.in_reg307 ], [ %overflow_arg_area311, %vaarg.in_mem309 ]
  %143 = load double, ptr %vaarg.addr314, align 8
  store double %143, ptr %dbl, align 8
  br label %do.body315

do.body315:                                       ; preds = %vaarg.end313
  %144 = load ptr, ptr @evlog.bufpt, align 8
  %145 = load ptr, ptr %string, align 8
  %146 = load double, ptr %dbl, align 8
  %call316 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %144, ptr noundef @.str.12, ptr noundef %145, double noundef %146) #7
  %147 = load ptr, ptr @evlog.bufpt, align 8
  %call317 = call i64 @strlen(ptr noundef %147) #8
  %conv318 = trunc i64 %call317 to i32
  store i32 %conv318, ptr %nchars, align 4
  %148 = load i32, ptr %nchars, align 4
  %149 = load ptr, ptr @evlog.bufpt, align 8
  %idx.ext319 = sext i32 %148 to i64
  %add.ptr320 = getelementptr inbounds i8, ptr %149, i64 %idx.ext319
  store ptr %add.ptr320, ptr @evlog.bufpt, align 8
  %150 = load i32, ptr %nchars, align 4
  %151 = load i32, ptr @evlog.left, align 4
  %sub321 = sub nsw i32 %151, %150
  store i32 %sub321, ptr @evlog.left, align 4
  br label %do.end322

do.end322:                                        ; preds = %do.body315
  br label %sw.epilog

sw.bb323:                                         ; preds = %if.end18
  %152 = load i32, ptr %valid, align 4
  %tobool324 = icmp ne i32 %152, 0
  br i1 %tobool324, label %if.end328, label %if.then325

if.then325:                                       ; preds = %sw.bb323
  br label %do.body326

do.body326:                                       ; preds = %if.then325
  store i32 1, ptr @evlog.error, align 4
  br label %if.end428

do.end327:                                        ; No predecessors!
  br label %if.end328

if.end328:                                        ; preds = %do.end327, %sw.bb323
  br label %do.body329

do.body329:                                       ; preds = %if.end328
  %153 = load ptr, ptr @evlog.bufpt, align 8
  %arraydecay330 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p331 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay330, i32 0, i32 0
  %gp_offset332 = load i32, ptr %gp_offset_p331, align 16
  %fits_in_gp333 = icmp ule i32 %gp_offset332, 40
  br i1 %fits_in_gp333, label %vaarg.in_reg334, label %vaarg.in_mem336

vaarg.in_reg334:                                  ; preds = %do.body329
  %154 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay330, i32 0, i32 3
  %reg_save_area335 = load ptr, ptr %154, align 16
  %155 = getelementptr i8, ptr %reg_save_area335, i32 %gp_offset332
  %156 = add i32 %gp_offset332, 8
  store i32 %156, ptr %gp_offset_p331, align 16
  br label %vaarg.end340

vaarg.in_mem336:                                  ; preds = %do.body329
  %overflow_arg_area_p337 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay330, i32 0, i32 2
  %overflow_arg_area338 = load ptr, ptr %overflow_arg_area_p337, align 8
  %overflow_arg_area.next339 = getelementptr i8, ptr %overflow_arg_area338, i32 8
  store ptr %overflow_arg_area.next339, ptr %overflow_arg_area_p337, align 8
  br label %vaarg.end340

vaarg.end340:                                     ; preds = %vaarg.in_mem336, %vaarg.in_reg334
  %vaarg.addr341 = phi ptr [ %155, %vaarg.in_reg334 ], [ %overflow_arg_area338, %vaarg.in_mem336 ]
  %157 = load ptr, ptr %vaarg.addr341, align 8
  %call342 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %153, ptr noundef @.str.13, ptr noundef %157) #7
  %158 = load ptr, ptr @evlog.bufpt, align 8
  %call343 = call i64 @strlen(ptr noundef %158) #8
  %conv344 = trunc i64 %call343 to i32
  store i32 %conv344, ptr %nchars, align 4
  %159 = load i32, ptr %nchars, align 4
  %160 = load ptr, ptr @evlog.bufpt, align 8
  %idx.ext345 = sext i32 %159 to i64
  %add.ptr346 = getelementptr inbounds i8, ptr %160, i64 %idx.ext345
  store ptr %add.ptr346, ptr @evlog.bufpt, align 8
  %161 = load i32, ptr %nchars, align 4
  %162 = load i32, ptr @evlog.left, align 4
  %sub347 = sub nsw i32 %162, %161
  store i32 %sub347, ptr @evlog.left, align 4
  br label %do.end348

do.end348:                                        ; preds = %vaarg.end340
  br label %sw.epilog

sw.bb349:                                         ; preds = %if.end18
  br label %do.body350

do.body350:                                       ; preds = %sw.bb349
  %163 = load ptr, ptr @evlog.buffer, align 8
  %164 = load ptr, ptr @evlog.file, align 8
  %call351 = call i32 @fputs(ptr noundef %163, ptr noundef %164)
  %165 = load ptr, ptr @evlog.file, align 8
  %call352 = call i32 @fflush(ptr noundef %165)
  %166 = load ptr, ptr @evlog.file, align 8
  %call353 = call i32 @ferror(ptr noundef %166) #7
  %tobool354 = icmp ne i32 %call353, 0
  br i1 %tobool354, label %if.then355, label %if.end358

if.then355:                                       ; preds = %do.body350
  br label %do.body356

do.body356:                                       ; preds = %if.then355
  store i32 1, ptr @evlog.error, align 4
  br label %if.end428

do.end357:                                        ; No predecessors!
  br label %if.end358

if.end358:                                        ; preds = %do.end357, %do.body350
  %167 = load ptr, ptr @evlog.buffer, align 8
  store ptr %167, ptr @evlog.bufpt, align 8
  store i32 262144, ptr @evlog.left, align 4
  br label %do.end359

do.end359:                                        ; preds = %if.end358
  %168 = load ptr, ptr %temp, align 8
  %169 = load ptr, ptr @evlog.bufpt, align 8
  %cmp360 = icmp ne ptr %168, %169
  br i1 %cmp360, label %if.then362, label %if.end371

if.then362:                                       ; preds = %do.end359
  br label %do.body363

do.body363:                                       ; preds = %if.then362
  %170 = load ptr, ptr @evlog.bufpt, align 8
  %call364 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %170, ptr noundef @.str.14) #7
  %171 = load ptr, ptr @evlog.bufpt, align 8
  %call365 = call i64 @strlen(ptr noundef %171) #8
  %conv366 = trunc i64 %call365 to i32
  store i32 %conv366, ptr %nchars, align 4
  %172 = load i32, ptr %nchars, align 4
  %173 = load ptr, ptr @evlog.bufpt, align 8
  %idx.ext367 = sext i32 %172 to i64
  %add.ptr368 = getelementptr inbounds i8, ptr %173, i64 %idx.ext367
  store ptr %add.ptr368, ptr @evlog.bufpt, align 8
  %174 = load i32, ptr %nchars, align 4
  %175 = load i32, ptr @evlog.left, align 4
  %sub369 = sub nsw i32 %175, %174
  store i32 %sub369, ptr @evlog.left, align 4
  br label %do.end370

do.end370:                                        ; preds = %do.body363
  %176 = load ptr, ptr @evlog.bufpt, align 8
  store ptr %176, ptr %temp, align 8
  br label %if.end371

if.end371:                                        ; preds = %do.end370, %do.end359
  br label %sw.epilog

sw.default:                                       ; preds = %if.end18
  br label %do.body372

do.body372:                                       ; preds = %sw.default
  %177 = load ptr, ptr @evlog.buffer, align 8
  %178 = load ptr, ptr @evlog.file, align 8
  %call373 = call i32 @fputs(ptr noundef %177, ptr noundef %178)
  %179 = load ptr, ptr @evlog.file, align 8
  %call374 = call i32 @fflush(ptr noundef %179)
  %180 = load ptr, ptr @evlog.file, align 8
  %call375 = call i32 @ferror(ptr noundef %180) #7
  %tobool376 = icmp ne i32 %call375, 0
  br i1 %tobool376, label %if.then377, label %if.end380

if.then377:                                       ; preds = %do.body372
  br label %do.body378

do.body378:                                       ; preds = %if.then377
  store i32 1, ptr @evlog.error, align 4
  br label %if.end428

do.end379:                                        ; No predecessors!
  br label %if.end380

if.end380:                                        ; preds = %do.end379, %do.body372
  %181 = load ptr, ptr @evlog.buffer, align 8
  store ptr %181, ptr @evlog.bufpt, align 8
  store i32 262144, ptr @evlog.left, align 4
  br label %do.end381

do.end381:                                        ; preds = %if.end380
  br label %do.body382

do.body382:                                       ; preds = %do.end381
  store i32 1, ptr @evlog.error, align 4
  br label %if.end428

do.end383:                                        ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end383, %if.end371, %do.end348, %do.end322, %do.end287, %do.end249, %do.end223, %do.end197, %do.end171, %do.end145, %do.end119, %do.end89, %do.end59, %if.end33, %sw.bb
  %arraydecay384 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p385 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay384, i32 0, i32 0
  %gp_offset386 = load i32, ptr %gp_offset_p385, align 16
  %fits_in_gp387 = icmp ule i32 %gp_offset386, 40
  br i1 %fits_in_gp387, label %vaarg.in_reg388, label %vaarg.in_mem390

vaarg.in_reg388:                                  ; preds = %sw.epilog
  %182 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay384, i32 0, i32 3
  %reg_save_area389 = load ptr, ptr %182, align 16
  %183 = getelementptr i8, ptr %reg_save_area389, i32 %gp_offset386
  %184 = add i32 %gp_offset386, 8
  store i32 %184, ptr %gp_offset_p385, align 16
  br label %vaarg.end394

vaarg.in_mem390:                                  ; preds = %sw.epilog
  %overflow_arg_area_p391 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay384, i32 0, i32 2
  %overflow_arg_area392 = load ptr, ptr %overflow_arg_area_p391, align 8
  %overflow_arg_area.next393 = getelementptr i8, ptr %overflow_arg_area392, i32 8
  store ptr %overflow_arg_area.next393, ptr %overflow_arg_area_p391, align 8
  br label %vaarg.end394

vaarg.end394:                                     ; preds = %vaarg.in_mem390, %vaarg.in_reg388
  %vaarg.addr395 = phi ptr [ %183, %vaarg.in_reg388 ], [ %overflow_arg_area392, %vaarg.in_mem390 ]
  %185 = load i32, ptr %vaarg.addr395, align 4
  store i32 %185, ptr %key, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  br label %done

done:                                             ; preds = %while.end, %sw.bb19
  %arraydecay396 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %arraydecay396)
  %186 = load ptr, ptr %temp, align 8
  %187 = load ptr, ptr @evlog.bufpt, align 8
  %cmp397 = icmp ne ptr %186, %187
  br i1 %cmp397, label %if.then399, label %if.end408

if.then399:                                       ; preds = %done
  br label %do.body400

do.body400:                                       ; preds = %if.then399
  %188 = load ptr, ptr @evlog.bufpt, align 8
  %call401 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %188, ptr noundef @.str.14) #7
  %189 = load ptr, ptr @evlog.bufpt, align 8
  %call402 = call i64 @strlen(ptr noundef %189) #8
  %conv403 = trunc i64 %call402 to i32
  store i32 %conv403, ptr %nchars, align 4
  %190 = load i32, ptr %nchars, align 4
  %191 = load ptr, ptr @evlog.bufpt, align 8
  %idx.ext404 = sext i32 %190 to i64
  %add.ptr405 = getelementptr inbounds i8, ptr %191, i64 %idx.ext404
  store ptr %add.ptr405, ptr @evlog.bufpt, align 8
  %192 = load i32, ptr %nchars, align 4
  %193 = load i32, ptr @evlog.left, align 4
  %sub406 = sub nsw i32 %193, %192
  store i32 %sub406, ptr @evlog.left, align 4
  br label %do.end407

do.end407:                                        ; preds = %do.body400
  %194 = load ptr, ptr @evlog.bufpt, align 8
  store ptr %194, ptr %temp, align 8
  br label %if.end408

if.end408:                                        ; preds = %do.end407, %done
  %195 = load i32, ptr @evlog.left, align 4
  %cmp409 = icmp sle i32 %195, 0
  br i1 %cmp409, label %if.then411, label %if.end414

if.then411:                                       ; preds = %if.end408
  br label %do.body412

do.body412:                                       ; preds = %if.then411
  store i32 1, ptr @evlog.error, align 4
  br label %if.end428

do.end413:                                        ; No predecessors!
  br label %if.end414

if.end414:                                        ; preds = %do.end413, %if.end408
  %196 = load i32, ptr @evlog.left, align 4
  %cmp415 = icmp slt i32 %196, 1000
  br i1 %cmp415, label %if.then417, label %if.end428

if.then417:                                       ; preds = %if.end414
  br label %do.body418

do.body418:                                       ; preds = %if.then417
  %197 = load ptr, ptr @evlog.buffer, align 8
  %198 = load ptr, ptr @evlog.file, align 8
  %call419 = call i32 @fputs(ptr noundef %197, ptr noundef %198)
  %199 = load ptr, ptr @evlog.file, align 8
  %call420 = call i32 @fflush(ptr noundef %199)
  %200 = load ptr, ptr @evlog.file, align 8
  %call421 = call i32 @ferror(ptr noundef %200) #7
  %tobool422 = icmp ne i32 %call421, 0
  br i1 %tobool422, label %if.then423, label %if.end426

if.then423:                                       ; preds = %do.body418
  br label %do.body424

do.body424:                                       ; preds = %if.then423
  store i32 1, ptr @evlog.error, align 4
  br label %if.end428

do.end425:                                        ; No predecessors!
  br label %if.end426

if.end426:                                        ; preds = %do.end425, %do.body418
  %201 = load ptr, ptr @evlog.buffer, align 8
  store ptr %201, ptr @evlog.bufpt, align 8
  store i32 262144, ptr @evlog.left, align 4
  br label %do.end427

do.end427:                                        ; preds = %if.end426
  br label %if.end428

if.end428:                                        ; preds = %do.body, %do.body4, %do.body10, %if.then17, %do.body25, %do.body31, %do.body123, %do.body149, %do.body175, %do.body201, %do.body227, %do.body253, %do.body291, %do.body326, %do.body356, %do.body378, %do.body382, %do.body412, %do.body424, %do.end427, %if.end414
  ret void
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #1

declare noalias ptr @fopen(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare noalias ptr @strdup(ptr noundef) #3

declare ptr @freopen(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @sprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #4

declare i32 @fputs(ptr noundef, ptr noundef) #2

declare i32 @fflush(ptr noundef) #2

; Function Attrs: nounwind
declare i32 @ferror(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal double @walltime() #0 {
entry:
  %call = call i64 (...) @armci_tcgmsg_mtime()
  %conv = sitofp i64 %call to double
  %mul = fmul double %conv, 1.000000e-02
  ret double %mul
}

declare i64 @armci_tcgmsg_mtime(...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #5

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind allocsize(0) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
